import { setupNavbar, initializePopover } from './navigations.js';
import { initializeSelectAllCheckbox } from './tableCheckboxes.js';
import { setupTableRows, sortResidents } from './residentTable.js';

setupNavbar();
initializePopover();
initializeSelectAllCheckbox();
setupTableRows();
sortResidents();