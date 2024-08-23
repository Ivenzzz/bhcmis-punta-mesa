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
