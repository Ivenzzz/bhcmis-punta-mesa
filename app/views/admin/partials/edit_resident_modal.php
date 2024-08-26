<div class="modal fade" id="editResidentModal<?php echo $index; ?>" tabindex="-1" aria-labelledby="editResidentModalLabel<?php echo $index; ?>" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title gradient-text" id="editResidentModalLabel<?php echo $index; ?>"><i class='bx bx-edit'></i> Edit Resident</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <form id="editResidentForm<?php echo $index; ?>">
                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper">
                            <input type="text" class="form-control" id="editLastname<?php echo $index; ?>" name="lastname" value="<?php echo $resident['lastname']?>" placeholder=" ">
                            <label for="editLastname<?php echo $index; ?>" class="form-label">Lastname</label>
                        </div>
                        <div class="mb-3 entry-wrapper">
                            <input type="text" class="form-control" id="editFirstname<?php echo $index; ?>" name="firstname" value="<?php echo $resident['firstname']?>" placeholder=" ">
                            <label for="editFirstname<?php echo $index; ?>" class="form-label">Firstname</label>
                        </div>
                        <div class="mb-3 entry-wrapper">
                            <input type="text" class="form-control" id="editMiddlename<?php echo $index; ?>" name="middlename" value="<?php echo $resident['middlename']?>" placeholder=" ">
                            <label for="editMiddlename<?php echo $index; ?>" class="form-label">Middlename</label>
                        </div>
                    </div>
                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper">
                            <input type="number" class="form-control" id="editAge<?php echo $index; ?>" name="age" value="<?php echo $resident['age']?>" min="0" max="120" placeholder=" ">
                            <label for="editAge<?php echo $index; ?>" class="form-label">Age</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" form="editResidentForm<?php echo $index; ?>">Save changes</button>
            </div>
        </div>
    </div>
</div>