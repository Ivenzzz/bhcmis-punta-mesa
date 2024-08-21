document.addEventListener('DOMContentLoaded', function () {
    const rowsPerPageSelect = document.getElementById('rows-per-page');
    const tableBody = document.getElementById('resident-table-body');
    
    // Select only the main rows, skipping the collapsible rows
    const mainRows = Array.from(tableBody.querySelectorAll('tr.main-row'));

    let currentPage = 1;

    // Ensure the default value in the dropdown is set to 10
    rowsPerPageSelect.value = '10';

    function paginateTable(rowsPerPage) {
        const startIndex = (currentPage - 1) * rowsPerPage;
        const endIndex = startIndex + rowsPerPage;

        mainRows.forEach((row, index) => {
            const collapseRow = row.nextElementSibling;

            if (index >= startIndex && index < endIndex) {
                row.style.display = '';  // Show main row
                if (collapseRow && collapseRow.classList.contains('collapse-row')) {
                    collapseRow.style.display = ''; // Show collapsed row if any
                }
            } else {
                row.style.display = 'none';  // Hide main row
                if (collapseRow && collapseRow.classList.contains('collapse-row')) {
                    collapseRow.style.display = 'none'; // Hide collapsed row if any
                }
            }
        });
    }

    rowsPerPageSelect.addEventListener('change', function () {
        currentPage = 1; // Reset to the first page whenever rows per page is changed
        paginateTable(parseInt(rowsPerPageSelect.value));
    });

    // Initial pagination on page load
    paginateTable(parseInt(rowsPerPageSelect.value));
});
