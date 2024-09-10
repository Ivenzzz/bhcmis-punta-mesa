import { initializePopover } from './navigations.js';

initializePopover();
handleAlerts();

// Named function to handle URL parameters and alerts
function handleAlerts() {
    // Function to get URL parameters
    function getUrlParameter(name) {
        name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
        var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
        var results = regex.exec(location.search);
        return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
    }

    // Function to clear URL parameters without reloading the page
    function clearUrlParameters() {
        const url = new URL(window.location);
        url.searchParams.delete('update_success');
        url.searchParams.delete('error');
        window.history.replaceState({}, document.title, url.pathname);
    }

    // Function to check for success or error parameters and show corresponding alerts
    function checkAlerts() {
        var updateSuccess = getUrlParameter('update_success');
        var errorType = getUrlParameter('error');

        if (updateSuccess === 'true') {
            // Show success modal
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: 'BHW information updated successfully.',
                confirmButtonText: 'OK'
            }).then(() => {
                // Clear URL parameters after the success alert is closed
                clearUrlParameters();
            });
        }

        if (errorType) {
            let errorMessage = '';

            // Set error message based on the error type
            switch (errorType) {
                case 'assigned_area_taken':
                    errorMessage = 'The selected area is already assigned to another Barangay Health Worker.';
                    break;
                case 'bhw_area_update_failed':
                    errorMessage = 'Error updating BHW area.';
                    break;
                case 'personal_info_update_failed':
                    errorMessage = 'Error updating personal information.';
                    break;
                default:
                    errorMessage = 'An unknown error occurred.';
            }

            // Show error modal
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: errorMessage,
                confirmButtonText: 'OK'
            }).then(() => {
                // Clear URL parameters after the error alert is closed
                clearUrlParameters();
            });
        }
    }

    // Run the checkAlerts function
    checkAlerts();
}

async function confirmDelete(bhwId) {
    const result = await Swal.fire({
        title: 'Are you sure?',
        text: 'You won’t be able to revert this!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Yes, delete it!'
    });

    if (result.isConfirmed) {
        // Call the delete function
        deleteBHW(bhwId);
    }
}

async function deleteBHW(bhwId) {
    try {
        const response = await fetch('./app/controllers/admin-bhw/delete_bhw.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ bhw_id: bhwId }),
        });

        if (response.ok) {
            const data = await response.json();
            if (data.success) {
                // Remove the card from the DOM
                document.querySelector(`#bhw-card-${bhwId}`).remove();
                Swal.fire('Deleted!', 'The BHW has been deleted.', 'success');
            } else {
                Swal.fire('Error!', data.message, 'error');
            }
        } else {
            Swal.fire('Error!', 'Failed to delete the BHW.', 'error');
        }
    } catch (error) {
        console.error('Error:', error);
        Swal.fire('Error!', 'An unexpected error occurred.', 'error');
    }
}