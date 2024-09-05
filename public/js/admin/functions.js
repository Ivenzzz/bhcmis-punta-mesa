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

            // Update the specific row in the table with the updated data
            document.querySelector(`#resident-table-body tr.main-row:nth-child(${index + 1}) td:nth-child(3)`).textContent = data.updated_resident.lastname;
            document.querySelector(`#resident-table-body tr.main-row:nth-child(${index + 1}) td:nth-child(4)`).textContent = data.updated_resident.firstname;
            document.querySelector(`#resident-table-body tr.main-row:nth-child(${index + 1}) td:nth-child(5)`).textContent = data.updated_resident.middlename;
            document.querySelector(`#resident-table-body tr.main-row:nth-child(${index + 1}) td:nth-child(6)`).textContent = data.updated_resident.age;
            document.querySelector(`#resident-table-body tr.main-row:nth-child(${index + 1}) td:nth-child(7)`).textContent = data.updated_resident.address_name;

            // Update the collapse content with the updated data
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(1) p:nth-child(2)`).textContent = `Date of Birth: ${data.updated_resident.date_of_birth}`;
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(1) p:nth-child(3)`).textContent = `Sex: ${data.updated_resident.sex}`;
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(1) p:nth-child(4)`).textContent = `Occupation: ${data.updated_resident.occupation}`;
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(1) p:nth-child(5)`).textContent = `Religion: ${data.updated_resident.religion}`;
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(1) p:nth-child(6)`).textContent = `Citizenship: ${data.updated_resident.citizenship}`;
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(1) p:nth-child(7)`).textContent = `Civil Status: ${data.updated_resident.civil_status}`;
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(1) p:nth-child(8)`).textContent = `Educational Attainment: ${data.updated_resident.educational_attainment}`;

            // Update Contact Information
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(2) p:nth-child(2)`).textContent = `Phone Number: ${data.updated_resident.phone_number}`;
            document.querySelector(`#collapseRow${index} .collapse-body .collapse-info:nth-child(2) p:nth-child(3)`).textContent = `Email: ${data.updated_resident.email}`;

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