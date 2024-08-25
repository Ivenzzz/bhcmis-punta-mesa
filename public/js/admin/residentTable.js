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




