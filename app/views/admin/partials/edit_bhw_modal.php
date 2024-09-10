<!-- Edit BHW Modal -->
<div class="modal fade" id="editBhwModal<?= $bhw['bhw_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="editBhwModalLabel<?= $bhw['bhw_id']; ?>" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBhwModalLabel<?= $bhw['bhw_id']; ?>">Edit Information for <?= htmlspecialchars($bhw['firstname'] . ' ' . $bhw['lastname']); ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="./app/controllers/admin-bhw/update_bhw.php" method="POST">
                    <input type="hidden" name="bhw_id" value="<?= $bhw['bhw_id']; ?>">
                    <input type="hidden" name="account_id" value="<?= $bhw['account_id']; ?>">
                    <input type="hidden" name="personal_info_id" value="<?= $bhw['personal_info_id']; ?>">
                    
                    <!-- BHW Information: Name, Assigned Area, etc. -->
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="firstname" class="form-label">First Name</label>
                            <input type="text" class="form-control" name="firstname" value="<?= htmlspecialchars($bhw['firstname']); ?>" required>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="lastname" class="form-label">Last Name</label>
                            <input type="text" class="form-control" name="lastname" value="<?= htmlspecialchars($bhw['lastname']); ?>" required>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="middlename" class="form-label">Middle Name</label>
                            <input type="text" class="form-control" name="middlename" value="<?= htmlspecialchars($bhw['middlename']); ?>">
                        </div>
                    </div>

                    <!-- Additional information -->
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="assigned_area" class="form-label">Assigned Area</label>
                            <select name="assigned_area" class="form-select" required>
                                <option value="" disabled>Select assigned area</option>
                                <?php foreach ($addresses as $address): ?>
                                    <option value="<?= $address['address_id']; ?>" <?= $address['address_id'] == $bhw['assigned_area'] ? 'selected' : ''; ?>>
                                        <?= htmlspecialchars($address['address_name']); ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <!-- Contact Information -->
                        <div class="col-md-6 mb-3">
                            <label for="phone_number" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" name="phone_number" value="<?= htmlspecialchars($bhw['phone_number']); ?>" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" value="<?= htmlspecialchars($bhw['email']); ?>" required>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>