export function setupTableRows() {
    document.addEventListener('DOMContentLoaded', function () {
        const rowsPerPageSelect = document.getElementById('rows-per-page');
        const searchInput = document.querySelector('.search');
        const tableBody = document.getElementById('resident-table-body');
        const paginationControls = document.querySelector('.pagination');
    
        let mainRows = Array.from(tableBody.querySelectorAll('tr.main-row'));
        let filteredRows = [...mainRows]; // Holds the currently filtered rows
        let currentPage = 1;
        let rowsPerPage = parseInt(rowsPerPageSelect.value);
    
        function paginateTable() {
            const totalRows = filteredRows.length;
            const totalPages = Math.ceil(totalRows / rowsPerPage);
            const startIndex = (currentPage - 1) * rowsPerPage;
            const endIndex = startIndex + rowsPerPage;
        
            // Show/Hide rows based on pagination
            mainRows.forEach(row => row.style.display = 'none'); // Hide all rows initially
        
            if (totalRows === 0) {
                // If there are no filtered rows, do not show 'No data found' message
                tableBody.innerHTML = ''; // Clear the table body
            } else {
                filteredRows.slice(startIndex, endIndex).forEach(row => {
                    row.style.display = ''; // Show the row
                    const collapseRow = row.nextElementSibling;
                    if (collapseRow && collapseRow.classList.contains('collapse-row')) {
                        collapseRow.style.display = ''; // Show collapsed row if any
                    }
                });
        
                // Update pagination controls
                paginationControls.innerHTML = '';
                paginationControls.appendChild(createPageItem('Previous', currentPage > 1 ? currentPage - 1 : null));
        
                for (let i = 1; i <= totalPages; i++) {
                    const pageItem = createPageItem(i, i);
                    // No need to remove 'active-page' from li anymore
                    paginationControls.appendChild(pageItem);
                }
        
                paginationControls.appendChild(createPageItem('Next', currentPage < totalPages ? currentPage + 1 : null));
            }
        }
        
        function createPageItem(text, page) {
            const li = document.createElement('li');
            li.className = 'page-item'; // Keep this as a base class for the item
            const a = document.createElement('a');
            a.className = 'page-link'; // Base class for the link
            a.href = '#';
            a.textContent = text;
        
            // Add active-page class to the link if it's the current page
            if (page === currentPage) {
                a.classList.add('active-page');
            }
        
            if (page !== null) {
                a.addEventListener('click', function (e) {
                    e.preventDefault();
                    currentPage = page;
                    paginateTable();
                });
            } else {
                li.classList.add('disabled');
            }
        
            li.appendChild(a);
            return li;
        }
        
        
    
        function filterRows() {
            const query = searchInput.value.toLowerCase();
            filteredRows = mainRows.filter(row => {
                const cells = row.querySelectorAll('td:not(:first-child):not(:nth-child(2))'); // Exclude checkbox and expand button cells
                return Array.from(cells).some(cell => cell.textContent.toLowerCase().includes(query));
            });
    
            currentPage = 1; // Reset to the first page whenever the search query changes
            paginateTable();
        }
    
        rowsPerPageSelect.addEventListener('change', function () {
            rowsPerPage = parseInt(rowsPerPageSelect.value);
            currentPage = 1;
            paginateTable();
        });
    
        searchInput.addEventListener('input', filterRows);
    
        // Initial pagination on page load
        paginateTable();
    });
}

export function sortResidents() {
    document.addEventListener('DOMContentLoaded', function () {
        const tableBody = document.getElementById('resident-table-body');
        const sortableHeaders = document.querySelectorAll('.sortable');
    
        sortableHeaders.forEach(header => {
            header.addEventListener('click', () => {
                const column = header.getAttribute('data-column');
                let order = header.getAttribute('data-order');
                const rows = Array.from(tableBody.querySelectorAll('tr.main-row'));
    
                // Toggle sort order
                order = order === 'asc' ? 'desc' : 'asc';
                header.setAttribute('data-order', order);
    
                // Sort rows
                rows.sort((a, b) => {
                    const aValue = a.cells[column === 'lastname' ? 2 : 3].textContent.trim().toLowerCase();
                    const bValue = b.cells[column === 'lastname' ? 2 : 3].textContent.trim().toLowerCase();
    
                    if (aValue < bValue) return order === 'asc' ? -1 : 1;
                    if (aValue > bValue) return order === 'asc' ? 1 : -1;
                    return 0;
                });
    
                // Clear existing rows and append sorted rows
                rows.forEach(row => tableBody.appendChild(row));
    
                // Reset sort icon colors
                sortableHeaders.forEach(th => th.querySelector('i').style.color = '');
    
                // Set color for the active sort icon
                const sortIcon = header.querySelector('i');
                sortIcon.style.color = order === 'asc' ? 'inherit' : '#0ea5e9';
            });
        });
    });    
}

export function spinRefreshButton() {
    document.addEventListener('DOMContentLoaded', function() {
        const refreshButton = document.querySelector('.left-toolbar button');

        refreshButton.addEventListener('click', function() {
            this.classList.add('spin-animation');
            setTimeout(() => {
                this.classList.remove('spin-animation');
                location.reload();
            }, 500);
        });
    });
}

export function setupEntries() {
    document.addEventListener('DOMContentLoaded', function () {
        const rowsPerPageSelect = document.getElementById('rows-per-page');
        const rowDescription = document.getElementById('row-description');
        const residentTableBody = document.getElementById('resident-table-body');
        const totalEntries = residentTableBody.getElementsByTagName('tr').length;
    
        function updateRowDescription() {
            const rowsPerPage = parseInt(rowsPerPageSelect.value);
            const startEntry = 1;
            const endEntry = Math.min(rowsPerPage, totalEntries);
            rowDescription.innerHTML = `Showing ${startEntry}-${endEntry} of ${totalEntries} entries`;
        }
    
        // Initial load
        updateRowDescription();
    
        // Update on rows per page change
        rowsPerPageSelect.addEventListener('change', updateRowDescription);
    });
}

export function toggleCollapseButton() {
    document.addEventListener('DOMContentLoaded', function () {
        const toggleButtons = document.querySelectorAll('.toggle-btn');
    
        toggleButtons.forEach(button => {
            const collapseRowId = button.getAttribute('data-bs-target');
            const collapseRow = document.querySelector(collapseRowId);
            const icon = button.querySelector('i');
    
            // Event listener for when the collapse completes showing
            collapseRow.addEventListener('shown.bs.collapse', function () {
                icon.classList.replace('bx-plus-circle', 'bx-minus-circle');
            });
    
            // Event listener for when the collapse completes hiding
            collapseRow.addEventListener('hidden.bs.collapse', function () {
                icon.classList.replace('bx-minus-circle', 'bx-plus-circle');
            });
        });
    });    
}

export function deleteResidents() {
    document.addEventListener('DOMContentLoaded', () => {
        const deleteButton = document.querySelector('.bx-trash'); // Delete button
        const rowCheckboxes = document.querySelectorAll('.row-checkbox'); // Individual checkboxes

        // Function to gather checked residents' IDs
        const getSelectedResidents = () => {
            const selectedResidents = [];
            rowCheckboxes.forEach((checkbox) => {
                if (checkbox.checked) {
                    const residentId = checkbox.closest('tr').dataset.residentId;
                    selectedResidents.push(residentId);
                }
            });
            return selectedResidents;
        };

        // Function to archive selected residents
        const archiveResidents = (selectedResidents) => {
            if (selectedResidents.length > 0) {
                fetch('./app/controllers/admin-residents/delete_residents.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({
                        'resident_ids': selectedResidents
                    })
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        // Remove archived rows from the DOM
                        selectedResidents.forEach(residentId => {
                            const row = document.querySelector(`tr[data-resident-id="${residentId}"]`);
                            if (row) row.remove();
                        });
                        // Show success message with number of archived residents
                        Swal.fire({
                            title: 'Success',
                            text: `Successfully deleted ${selectedResidents.length} resident(s).`,
                            icon: 'success'
                        });
                    } else {
                        Swal.fire('Error', 'Error deleting residents', 'error');
                    }
                })
                .catch(error => Swal.fire('Error', 'An error occurred: ' + error, 'error'));
            } else {
                Swal.fire('Error', 'Please select residents to delete.', 'error');
            }
        };

        // Add event listener to the delete button
        deleteButton.addEventListener('click', () => {
            const selectedResidents = getSelectedResidents();

            if (selectedResidents.length > 0) {
                // Show confirmation modal using SweetAlert2
                Swal.fire({
                    title: 'Are you sure?',
                    text: 'You are about to delete the selected residents.',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, delete them!',
                    cancelButtonText: 'No, cancel',
                }).then((result) => {
                    if (result.isConfirmed) {
                        // Proceed with archiving residents
                        archiveResidents(selectedResidents);
                    }
                });
            } else {
                Swal.fire('Error', 'Please select residents to delete.', 'error');
            }
        });
    });
}

export function addResidents() {
    document.getElementById('addResidentForm').addEventListener('submit', async (event) => {
        event.preventDefault();

        const formData = new FormData(document.getElementById('addResidentForm'));

        try {
            const response = await fetch('./app/controllers/admin-residents/add_residents.php', {
                method: 'POST',
                body: formData,
            });

            const result = await response.json();

            if (result.success) {
                // Get the modal instance correctly
                const addResidentModal = bootstrap.Modal.getInstance(document.getElementById('addResidentModal'));
                addResidentModal.hide(); // Close the modal

                // Wait until the modal is fully hidden before showing SweetAlert2
                document.getElementById('addResidentModal').addEventListener('hidden.bs.modal', function () {
                    Swal.fire({
                        icon: 'success',
                        title: 'Resident added!',
                        text: result.message,
                    });
                });

                // Update the resident table with the new data
                addResidentToTable(result.resident); // Pass the resident data from the server
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: result.message,
                });
            }
        } catch (error) {
            console.error('Error:', error);
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'An unexpected error occurred.',
            });
        }
    });

    function addResidentToTable(resident) {
        const tableBody = document.getElementById('resident-table-body');
        const newIndex = tableBody.rows.length; 

        // Create the main row
        const mainRow = document.createElement('tr');
        mainRow.className = 'main-row';
        mainRow.setAttribute('data-resident-id', resident.personal_info_id); 

        mainRow.innerHTML = `
            <td><input type="checkbox" class="row-checkbox"></td>
            <td>
                <button class="toggle-btn" data-bs-toggle="collapse" aria-expanded="true" aria-controls="collapse" data-bs-target="#collapseRowNew${newIndex}">
                    <i class='bx bx-plus-circle'></i>
                </button>
            </td>
            <td>${resident.lastname}</td>
            <td>${resident.firstname}</td>
            <td>${resident.middlename}</td>
            <td>${resident.age}</td> 
            <td>${resident.address_name}</td> 
            <td>
                <button class="btn btn-edit" data-bs-toggle="modal" data-bs-target="#editResidentPersonalModal${newIndex}">
                    <i class='bx bx-edit-alt'></i>
                </button>
            </td>
        `;

        // Create the collapse row
        const collapseRow = document.createElement('tr');
        collapseRow.className = 'collapse-row collapse';
        collapseRow.id = `collapseRowNew${newIndex}`;

        collapseRow.innerHTML = `
            <td colspan="8" class="p-0">
                <div class="p-3 collapse-body">
                    <div class="collapse-info">
                        <h5>Personal Information</h5>
                        <p>Date of Birth: ${resident.date_of_birth || 'N/A'}</p>
                        <p>Sex: ${resident.sex || 'N/A'}</p>
                        <p>Occupation: ${resident.occupation || 'N/A'}</p>
                        <p>Religion: ${resident.religion || 'N/A'}</p>
                        <p>Citizenship: ${resident.citizenship || 'N/A'}</p>
                        <p>Civil Status: ${resident.civil_status || 'N/A'}</p>
                        <p>Educational Attainment: ${resident.educational_attainment || 'N/A'}</p>
                        <p>Account Username: ${resident.username || 'N/A'}</p>
                    </div>
                    <div class="collapse-info">
                        <h5>Contact Information</h5>
                        <p>Phone Number: ${resident.phone_number || 'N/A'}</p>
                        <p>Email: ${resident.email || 'N/A'}</p>
                    </div>
                    <div class="collapse-info">
                        <h5>Health Information</h5>
                        <p>Height: ${resident.height || 'N/A'}</p>
                        <p>Weight: ${resident.weight || 'N/A'}</p>
                        <p>Blood Type: ${resident.blood_type || 'N/A'}</p>
                        <p>Blood Pressure: ${resident.blood_pressure || 'N/A'}</p>
                        <p>Cholesterol Level: ${resident.cholesterol_level || 'N/A'}</p>
                    </div>
                </div>
            </td>
        `;

        tableBody.prepend(collapseRow); // Add the collapse row first
        tableBody.prepend(mainRow); // Add the main row above it
    }
}







