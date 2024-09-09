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
            row.querySelector('td:nth-child(3)').textContent = data.updated_resident.lastname;
            row.querySelector('td:nth-child(4)').textContent = data.updated_resident.firstname;
            row.querySelector('td:nth-child(5)').textContent = data.updated_resident.middlename;
            row.querySelector('td:nth-child(6)').textContent = data.updated_resident.age;
            row.querySelector('td:nth-child(7)').textContent = data.updated_resident.address_name;

            // Update the collapse content with the updated data
            const collapseBody = document.querySelector(`#collapseRow${index} .collapse-body`);
            collapseBody.querySelector('.collapse-info:nth-child(1) p:nth-child(2)').textContent = `Date of Birth: ${data.updated_resident.date_of_birth}`;
            collapseBody.querySelector('.collapse-info:nth-child(1) p:nth-child(3)').textContent = `Sex: ${data.updated_resident.sex}`;
            collapseBody.querySelector('.collapse-info:nth-child(1) p:nth-child(4)').textContent = `Occupation: ${data.updated_resident.occupation}`;
            collapseBody.querySelector('.collapse-info:nth-child(1) p:nth-child(5)').textContent = `Religion: ${data.updated_resident.religion}`;
            collapseBody.querySelector('.collapse-info:nth-child(1) p:nth-child(6)').textContent = `Citizenship: ${data.updated_resident.citizenship}`;
            collapseBody.querySelector('.collapse-info:nth-child(1) p:nth-child(7)').textContent = `Civil Status: ${data.updated_resident.civil_status}`;
            collapseBody.querySelector('.collapse-info:nth-child(1) p:nth-child(8)').textContent = `Educational Attainment: ${data.updated_resident.educational_attainment}`;

            // Update Contact Information
            collapseBody.querySelector('.collapse-info:nth-child(2) p:nth-child(2)').textContent = `Phone Number: ${data.updated_resident.phone_number}`;
            collapseBody.querySelector('.collapse-info:nth-child(2) p:nth-child(3)').textContent = `Email: ${data.updated_resident.email}`;

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

