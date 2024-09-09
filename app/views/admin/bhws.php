<?php
$title = 'Barangay Health Workers';

require './config/db_config.php';
require './app/models/get_bhws.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php require './app/views/globals/head.php'; ?>
    <link rel="stylesheet" href="./public/css/admin.css">
    <link rel="stylesheet" href="./public/css/admin-bhws.css">
</head>
<body id="body-pd">
    <?php require 'partials/top_navigation.php'; ?>
    <?php require 'partials/sidebar.php'; ?>
    
    <div class="height-100 main-content container">
        <div class="row">
            <?php if (!empty($bhw_data)): ?>
                <?php foreach ($bhw_data as $bhw): ?>
                    <div class="col-md-4 mb-4">
                        <div class="card text-center">
                            <img src="<?= !empty($bhw['profile_picture']) ? $bhw['profile_picture'] : './public/images/avatar-panda.png'; ?>" class="card-img-top rounded-circle mx-auto mt-3" alt="Profile Picture">
                            <div class="card-body">
                                <h5 class="card-title">
                                    <?= htmlspecialchars($bhw['firstname'] . ' ' . substr($bhw['middlename'], 0, 1) . '. ' . $bhw['lastname']); ?>
                                </h5>
                                <p class="card-text"><strong>Assigned Area:</strong> <?= htmlspecialchars($bhw['assigned_area_name']); ?></p>
                                
                                <!-- Edit and Delete Buttons -->
                                <div class="mt-3">
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#bhwModal<?= $bhw['bhw_id']; ?>">
                                        <i class='bx bx-info-circle'></i>
                                    </button>
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editBhwModal<?= $bhw['bhw_id']; ?>">
                                        <i class="bx bx-edit-alt"></i>
                                    </button>
                                    <button type="button" class="">
                                        <i class="bx bx-trash"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal for extra information -->
                    <div class="modal fade" id="bhwModal<?= $bhw['bhw_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="bhwModalLabel<?= $bhw['bhw_id']; ?>" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="bhwModalLabel<?= $bhw['bhw_id']; ?>">More Information about <?= htmlspecialchars($bhw['firstname'] . ' ' . $bhw['lastname']); ?></h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p><strong>Full Name:</strong> <?= htmlspecialchars($bhw['firstname'] . ' ' . $bhw['middlename'] . ' ' . $bhw['lastname']); ?></p>
                                    <p><strong>Age:</strong> <?= htmlspecialchars($bhw['age']); ?></p>
                                    <p><strong>Date of Birth:</strong> <?= htmlspecialchars($bhw['date_of_birth']); ?></p>
                                    <p><strong>Civil Status:</strong> <?= htmlspecialchars($bhw['civil_status']); ?></p>
                                    <p><strong>Educational Attainment:</strong> <?= htmlspecialchars($bhw['educational_attainment']); ?></p>
                                    <p><strong>Occupation:</strong> <?= htmlspecialchars($bhw['occupation']); ?></p>
                                    <p><strong>Religion:</strong> <?= htmlspecialchars($bhw['religion']); ?></p>
                                    <p><strong>Citizenship:</strong> <?= htmlspecialchars($bhw['citizenship']); ?></p>
                                    <p><strong>Phone Number:</strong> <?= htmlspecialchars($bhw['phone_number']); ?></p>
                                    <p><strong>Email:</strong> <?= htmlspecialchars($bhw['email']); ?></p>
                                    <p><strong>Phone Number:</strong> <?= htmlspecialchars($bhw['phone_number']); ?></p>
                                    
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Edit BHW Modal -->
                    <div class="modal fade" id="editBhwModal<?= $bhw['bhw_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="editBhwModalLabel<?= $bhw['bhw_id']; ?>" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editBhwModalLabel<?= $bhw['bhw_id']; ?>">Edit Information for <?= htmlspecialchars($bhw['firstname'] . ' ' . $bhw['lastname']); ?></h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="path_to_edit_handler.php" method="POST">
                                        <!-- Hidden fields to store IDs -->
                                        <input type="hidden" name="bhw_id" value="<?= $bhw['bhw_id']; ?>">
                                        <input type="hidden" name="account_id" value="<?= $bhw['account_id']; ?>">
                                        <input type="hidden" name="personal_info_id" value="<?= $bhw['personal_info_id']; ?>">
                                        
                                        <!-- Prefilled form fields -->
                                        <div class="mb-3">
                                            <label for="firstname" class="form-label">First Name</label>
                                            <input type="text" class="form-control" name="firstname" value="<?= htmlspecialchars($bhw['firstname']); ?>" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="middlename" class="form-label">Middle Name</label>
                                            <input type="text" class="form-control" name="middlename" value="<?= htmlspecialchars($bhw['middlename']); ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label for="lastname" class="form-label">Last Name</label>
                                            <input type="text" class="form-control" name="lastname" value="<?= htmlspecialchars($bhw['lastname']); ?>" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="assigned_area" class="form-label">Assigned Area</label>
                                            <input type="text" class="form-control" name="assigned_area" value="<?= htmlspecialchars($bhw['assigned_area_name']); ?>" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="phone_number" class="form-label">Phone Number</label>
                                            <input type="text" class="form-control" name="phone_number" value="<?= htmlspecialchars($bhw['phone_number']); ?>" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="email" class="form-label">Email</label>
                                            <input type="email" class="form-control" name="email" value="<?= htmlspecialchars($bhw['email']); ?>" required>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-success">Save Changes</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                <?php endforeach; ?>
            <?php else: ?>
                <p>No Barangay Health Workers found.</p>
            <?php endif; ?>
        </div>
    </div>

    <?php require './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/admin-bhws.js" type="module"></script>
</body>
</html>
