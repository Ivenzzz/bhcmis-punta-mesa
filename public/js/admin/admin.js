import { initializePopover } from './navigations.js';
import { initializeSelectAllCheckbox } from './tableCheckboxes.js';
import * as residentTable from './residentTable.js';

initializePopover();
initializeSelectAllCheckbox();
residentTable.setupTableRows();
residentTable.sortResidents();
residentTable.spinRefreshButton();
residentTable.setupEntries();
residentTable.toggleCollapseButton();
residentTable.deleteResidents();

