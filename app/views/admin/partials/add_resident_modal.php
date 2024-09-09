<div class="modal fade" id="addResidentModal" tabindex="-1" aria-labelledby="addResidentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title gradient-text" id="addResidentModalLabel"><i class='bx bx-plus'></i> Add New Resident</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <form id="addResidentForm">
                    <div class="form-row">
                        <div class="mb-3 form-group flex-3">
                            <input type="text" class="form-control" id="addLastname" name="lastname" placeholder=" ">
                            <label for="addLastname" class="form-label">Lastname</label>
                        </div>
                        <div class="mb-3 form-group flex-3">
                            <input type="text" class="form-control" id="addFirstname" name="firstname" placeholder=" ">
                            <label for="addFirstname" class="form-label">Firstname</label>
                        </div>
                        <div class="mb-3 form-group flex-3">
                            <input type="text" class="form-control" id="addMiddlename" name="middlename" placeholder=" ">
                            <label for="addMiddlename" class="form-label">Middlename</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="mb-3 form-group flex-2">
                            <input type="date" class="form-control" id="addDateOfBirth" name="date_of_birth" placeholder=" ">
                            <label for="addDateOfBirth" class="form-label">Date of Birth</label>
                        </div>
                        <div class="mb-3 form-group flex-2">
                            <input type="text" class="form-control" id="addOccupation" name="occupation" placeholder=" ">
                            <label for="addOccupation" class="form-label">Occupation</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="mb-3 form-group flex-3">
                            <input type="tel" class="form-control" id="addPhoneNumber" name="phone_number" placeholder=" ">
                            <label for="addPhoneNumber" class="form-label">Phone Number(N/A if none)</label>
                        </div>
                        <div class="mb-3 form-group flex-3">
                            <input type="email" class="form-control" id="addEmail" name="email" placeholder=" ">
                            <label for="addEmail" class="form-label">Email(N/A if none)</label>
                        </div>
                        <div class="mb-3 form-group select-group flex-3">
                            <label for="addSex" class="form-label">Sex</label>
                            <div class="relative">
                                <select class="form-control" id="addSex" name="sex">
                                    <option value="" disabled selected>Select Sex</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                                <i class='bx bx-chevron-down' style="position: absolute; right: 10px; top: 60%; transform: translateY(-50%); pointer-events: none;"></i>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="mb-3 form-group select-group flex-1">
                            <label for="addAddressName" class="form-label">Address</label>
                            <select class="form-control" id="addAddressName" name="address_id">
                                <option value="" disabled selected>Select Address</option>
                                <?php foreach ($addresses as $address): ?>
                                    <option value="<?php echo $address['address_id']; ?>">
                                        <?php echo $address['address_name']; ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                            <i class='bx bx-chevron-down' style="position: absolute; right: 10px; top: 60%; transform: translateY(-50%); pointer-events: none;"></i>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="mb-3 form-group select-group flex-2">
                            <label for="addCivilStatus" class="form-label">Civil Status</label>
                            <div class="relative">
                                <select class="form-control" id="addCivilStatus" name="civil_status">
                                    <option value="" disabled selected>Select Civil Status</option>
                                    <option value="Single">Single</option>
                                    <option value="Married">Married</option>
                                    <option value="Widowed">Widowed</option>
                                    <option value="Legally Separated">Legally Separated</option>
                                </select>
                                <i class='bx bx-chevron-down' style="position: absolute; right: 10px; top: 60%; transform: translateY(-50%); pointer-events: none;"></i>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="mb-3 form-group select-group flex-2">
                            <label for="addEducation" class="form-label">Educational Attainment</label>
                            <div class="relative">
                                <select class="form-control" id="addEducation" name="educational_attainment">
                                    <option value="" disabled selected>Select Education Level</option>
                                    <option value="Elementary Graduate">Elementary Graduate</option>
                                    <option value="Elementary Undergraduate">Elementary Undergraduate</option>
                                    <option value="Highschool Graduate">Highschool Graduate</option>
                                    <option value="Highschool Undergraduate">Highschool Undergraduate</option>
                                    <option value="College Graduate">College Graduate</option>
                                    <option value="College Undergraduate">College Undergraduate</option>
                                </select>
                                <i class='bx bx-chevron-down' style="position: absolute; right: 10px; top: 60%; transform: translateY(-50%); pointer-events: none;"></i>
                            </div>
                        </div>

                        <div class="mb-3 form-group flex-2">
                            <input type="text" class="form-control" id="addReligion" name="religion" placeholder=" ">
                            <label for="addReligion" class="form-label">Religion</label>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="mb-3 form-group flex-2">
                            <input type="text" class="form-control" id="addCitizenship" name="citizenship" placeholder=" ">
                            <label for="addCitizenship" class="form-label">Citizenship</label>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="mb-3 form-group flex-2">
                            <input type="text" class="form-control" id="addUsername" name="username" placeholder=" ">
                            <label for="addUsername" class="form-label">Username</label>
                        </div>
                        <div class="mb-3 form-group flex-2">
                            <input type="text" class="form-control" id="addPassword" name="password" placeholder=" ">
                            <label for="addPassword" class="form-label">Password</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" form="addResidentForm">Add Resident</button>
            </div>
        </div>
    </div>
</div>
