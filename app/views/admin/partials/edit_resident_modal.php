<div class="modal fade" id="editResidentModal<?php echo $index; ?>" tabindex="-1" aria-labelledby="editResidentModalLabel<?php echo $index; ?>" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title gradient-text" id="editResidentModalLabel<?php echo $index; ?>"><i class='bx bx-edit'></i> Edit Resident</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <form id="editResidentForm<?php echo $index; ?>">
                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper flex-3">
                            <input type="text" class="form-control" id="editLastname<?php echo $index; ?>" name="lastname" value="<?php echo $resident['lastname']?>" placeholder=" ">
                            <label for="editLastname<?php echo $index; ?>" class="form-label">Lastname</label>
                        </div>
                        <div class="mb-3 entry-wrapper flex-3">
                            <input type="text" class="form-control" id="editFirstname<?php echo $index; ?>" name="firstname" value="<?php echo $resident['firstname']?>" placeholder=" ">
                            <label for="editFirstname<?php echo $index; ?>" class="form-label">Firstname</label>
                        </div>
                        <div class="mb-3 entry-wrapper flex-3">
                            <input type="text" class="form-control" id="editMiddlename<?php echo $index; ?>" name="middlename" value="<?php echo $resident['middlename']?>" placeholder=" ">
                            <label for="editMiddlename<?php echo $index; ?>" class="form-label">Middlename</label>
                        </div>
                    </div>
                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper flex-2">
                            <input type="date" class="form-control" id="editDateOfBirth<?php echo $index; ?>" name="date_of_birth" value="<?php echo $resident['date_of_birth']?>" placeholder=" ">
                            <label for="editDateOfBirth<?php echo $index; ?>" class="form-label">Date of Birth</label>
                        </div>
                        <div class="mb-3 entry-wrapper flex-2">
                            <input type="text" class="form-control" id="editOccupation<?php echo $index; ?>" name="occupation" value="<?php echo $resident['occupation']?>" placeholder=" ">
                            <label for="editOccupation<?php echo $index; ?>" class="form-label">Occupation</label>
                        </div>
                    </div>
                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper flex-3">
                            <input type="tel" class="form-control" id="editPhoneNumber<?php echo $index; ?>" name="phone_number" value="<?php echo $resident['phone_number']?>" placeholder=" ">
                            <label for="editPhoneNumber<?php echo $index; ?>" class="form-label">Phone Number</label>
                        </div>
                        <div class="mb-3 entry-wrapper flex-3">
                            <input type="email" class="form-control" id="editEmail<?php echo $index; ?>" name="email" value="<?php echo $resident['email']?>" placeholder=" ">
                            <label for="editEmail<?php echo $index; ?>" class="form-label">Email</label>
                        </div>
                        <div class="mb-3 select-wrapper flex-3">
                            <label for="editSex<?php echo $index; ?>" class="form-label">Sex</label>
                            <div class="relative">
                                <select class="form-control" id="editSex<?php echo $index; ?>" name="sex">
                                    <option value="Male" <?php echo $resident['sex'] == 'Male' ? 'selected' : ''; ?>>Male</option>
                                    <option value="Female" <?php echo $resident['sex'] == 'Female' ? 'selected' : ''; ?>>Female</option>
                                </select>
                                <i class='bx bx-chevron-down' style="position: absolute; right: 10px; top: 60%; transform: translateY(-50%); pointer-events: none;"></i>
                            </div>
                        </div>
                    </div>

                    <div class="entry-flex">
                        <div class="mb-3 select-wrapper flex-1">
                            <label for="editAddressName<?php echo $index; ?>" class="form-label">Address</label>
                            <select class="form-control" id="editAddressName<?php echo $index; ?>" name="address_name">
                                <option value="" disabled selected>Select Address</option>
                                <?php foreach ($addresses as $address): ?>
                                    <option value="<?php echo $address['address_id']; ?>" 
                                        <?php echo (isset($resident['address_id']) && $resident['address_id'] == $address['address_id']) ? 'selected' : ''; ?>>
                                        <?php echo $address['address_name']; ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                            <i class='bx bx-chevron-down' style="position: absolute; right: 10px; top: 60%; transform: translateY(-50%); pointer-events: none;"></i>
                        </div>
                    </div>

                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper">
                            <input type="number" step="0.01" class="form-control" id="editHeight<?php echo $index; ?>" name="height_cm" value="<?php echo $resident['height_cm']?>" placeholder=" ">
                            <label for="editHeight<?php echo $index; ?>" class="form-label">Height (cm)</label>
                        </div>
                        <div class="mb-3 entry-wrapper">
                            <input type="number" step="0.01" class="form-control" id="editWeight<?php echo $index; ?>" name="weight_kg" value="<?php echo $resident['weight_kg']?>" placeholder=" ">
                            <label for="editWeight<?php echo $index; ?>" class="form-label">Weight (kg)</label>
                        </div>
                    </div>
                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper">
                            <input type="text" class="form-control" id="editBloodType<?php echo $index; ?>" name="blood_type" value="<?php echo $resident['blood_type']?>" placeholder=" ">
                            <label for="editBloodType<?php echo $index; ?>" class="form-label">Blood Type</label>
                        </div>
                        <div class="mb-3 entry-wrapper">
                            <input type="text" class="form-control" id="editBloodPressure<?php echo $index; ?>" name="blood_pressure" value="<?php echo $resident['blood_pressure']?>" placeholder=" ">
                            <label for="editBloodPressure<?php echo $index; ?>" class="form-label">Blood Pressure</label>
                        </div>
                        <div class="mb-3 entry-wrapper">
                            <input type="text" class="form-control" id="editCholesterolLevel<?php echo $index; ?>" name="cholesterol_level" value="<?php echo $resident['cholesterol_level']?>" placeholder=" ">
                            <label for="editCholesterolLevel<?php echo $index; ?>" class="form-label">Cholesterol Level</label>
                        </div>
                    </div>
                    <div class="entry-flex">
                        <div class="mb-3 entry-wrapper flex-1">
                            <input type="text" class="form-control" id="editUsername<?php echo $index; ?>" name="username" value="<?php echo $resident['username']?>" placeholder=" ">
                            <label for="editUsername<?php echo $index; ?>" class="form-label">Username</label>
                        </div>
                    </div>
                    <div class="mb-3 entry-wrapper">
                        <label for="editMedicalConditions<?php echo $index; ?>" class="form-label blue-label">Medical Conditions</label>
                        <textarea class="form-control" id="editMedicalConditions<?php echo $index; ?>" name="medical_conditions" rows="3" placeholder=" "><?php echo $resident['medical_conditions']?></textarea>
                    </div>
                    <div class="mb-3 entry-wrapper">
                        <label for="editProfilePicture<?php echo $index; ?>" class="form-label blue-label">Profile Picture</label>
                        <input type="file" class="form-control" id="editProfilePicture<?php echo $index; ?>" name="profile_picture">
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