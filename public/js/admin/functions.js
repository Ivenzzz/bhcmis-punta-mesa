function submitEditForm(event, index) {
    event.preventDefault();

    const form = document.getElementById(`editResidentPersonalForm${index}`);
    const formData = new FormData(form);

    fetch('./app/controllers/admin-residents/update_residents.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            const modal = bootstrap.Modal.getInstance(document.getElementById(`editResidentPersonalModal${index}`));
            modal.hide();

            // Get all visible main rows
            const rows = Array.from(document.querySelectorAll('#resident-table-body tr.main-row'));
            const row = rows[index]; // Use the index directly since it's passed correctly

            // Update the specific row in the table with the updated data
            row.querySelector('td:nth-child(2)').textContent = data.updated_resident.lastname;
            row.querySelector('td:nth-child(3)').textContent = data.updated_resident.firstname;
            row.querySelector('td:nth-child(4)').textContent = data.updated_resident.middlename;
            row.querySelector('td:nth-child(5)').textContent = data.updated_resident.age;
            row.querySelector('td:nth-child(6)').textContent = data.updated_resident.address_name;

            Swal.fire({
                title: 'Success!',
                text: 'Resident updated successfully!',
                icon: 'success',
                confirmButtonText: 'OK'
            });
        } else {
            Swal.fire({
                title: 'Error!',
                text: 'Failed to update resident information.',
                icon: 'error',
                confirmButtonText: 'OK'
            });
        }
    })
    .catch(error => {
        console.error('Error:', error);
        Swal.fire({
            title: 'Error!',
            text: 'An error occurred while updating resident information.',
            icon: 'error',
            confirmButtonText: 'OK'
        });
    });
}

