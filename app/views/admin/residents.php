<?php

$title = 'Residents';

include './app/models/get_residents.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include './app/views/globals/head.php'; ?>
    <link rel="stylesheet" href="./public/css/admin.css">
</head>
<body id="body-pd">
    <?php include 'partials/top_navigation.php'; ?>
    <?php include 'partials/sidebar.php'; ?>
    <div class="height-100 main-content">
        <div class="toolbar">
            <input type="search" placeholder="Search" class="search">
            <button><i class='bx bx-trash'></i></button>
            <button><i class='bx bx-plus-circle'></i></button>
        </div>
        <table class="table table-sm table-dark text-center">
            <thead>
                <tr>
                    <th><input type="checkbox" id="select-all"></th>
                    <th></th>
                    <th>Lastname</th>
                    <th>Firstname</th>
                    <th>Middlename</th>
                    <th>Age</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="resident-table-body">
                <?php foreach ($residents_data as $index => $resident): ?>
                    <tr class="main-row">
                        <td><input type="checkbox" class="row-checkbox"></td>
                        <td>
                            <button class="toggle-btn" data-bs-toggle="collapse" aria-expanded="true" aria-controls="collapse" data-bs-target="#collapseRow<?php echo $index; ?>">
                                <i class='bx bx-plus-circle'></i>
                            </button>
                        </td>
                        <td><?php echo htmlspecialchars($resident['lastname']); ?></td>
                        <td><?php echo htmlspecialchars($resident['firstname']); ?></td>
                        <td><?php echo htmlspecialchars($resident['middlename']); ?></td>
                        <td><?php echo htmlspecialchars($resident['age']); ?></td>
                        <td><?php echo htmlspecialchars($resident['address_name']); ?></td>
                        <td><button class="btn btn-edit"><i class='bx bx-edit-alt'></i></button></td>
                    </tr>
                    <tr class="collapse-row collapse" id="collapseRow<?php echo $index; ?>">
                        <td colspan="8" class="p-0">
                            <div class="p-3 collapse-body">
                                <div class="collapse-info">
                                    <h5>Personal Information</h5>
                                    <p>Date of Birth: <?php echo $resident['date_of_birth'] ? htmlspecialchars($resident['date_of_birth']) : 'N/A'; ?></p>
                                    <p>Sex: <?php echo $resident['sex'] ? htmlspecialchars($resident['sex']) : 'N/A'; ?></p>
                                    <p>Civil Status: <?php echo $resident['civil_status'] ? htmlspecialchars($resident['civil_status']) : 'N/A'; ?></p>
                                    <p>Educational Attainment: <?php echo $resident['educational_attainment'] ? htmlspecialchars($resident['educational_attainment']) : 'N/A'; ?></p>
                                    <p>Occupation: <?php echo $resident['occupation'] ? htmlspecialchars($resident['occupation']) : 'N/A'; ?></p>
                                    <p>Religion: <?php echo $resident['religion'] ? htmlspecialchars($resident['religion']) : 'N/A'; ?></p>
                                    <p>Citizenship: <?php echo $resident['citizenship'] ? htmlspecialchars($resident['citizenship']) : 'N/A'; ?></p>
                                    <p>Account Username: <?php echo $resident['username'] ? htmlspecialchars($resident['username']) : 'N/A'; ?></p>
                                </div>
                                <div class="collapse-info">
                                    <h5>Contact Information</h5>
                                    <p>Phone Number: <?php echo $resident['phone_number'] ? htmlspecialchars($resident['phone_number']) : 'N/A'; ?></p>
                                    <p>Email: <?php echo $resident['email'] ? htmlspecialchars($resident['email']) : 'N/A'; ?></p>
                                </div>
                                <div class="collapse-info">
                                    <h5>Health Information</h5>
                                    <p>Height: <?php echo $resident['height_cm'] ? htmlspecialchars($resident['height_cm']).'cm' : 'N/A'; ?></p>
                                    <p>Weight: <?php echo $resident['weight_kg'] ? htmlspecialchars($resident['weight_kg']).'kg' : 'N/A'; ?></p>
                                    <p>Blood Type: <?php echo $resident['blood_type'] ? htmlspecialchars($resident['blood_type']) : 'N/A'; ?></p>
                                    <p>Latest Blood Pressure: <?php echo $resident['blood_pressure'] ? htmlspecialchars($resident['blood_pressure']) : 'N/A'; ?></p>
                                    <p>Latest Cholesterol Level: <?php echo $resident['cholesterol_level'] ? htmlspecialchars($resident['cholesterol_level']) : 'N/A'; ?></p>
                                </div>

                            </div>
                        </td>
                    </tr>

                <?php endforeach; ?>
            </tbody>
        </table>

        <div class="pagination-details d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center rows-page">
                <label for="rows-per-page" class="me-2">Show</label>
                <select id="rows-per-page" class="form-select form-select-sm me-2" style="width: auto;">
                    <option value="10">10</option>
                    <option value="20">20</option>
                    <option value="50">50</option>
                </select>

                <label>rows</label>
            </div>
            <nav>
                <ul class="pagination pagination-sm mb-0">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <?php include './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/residentRowModifier.js"></script>
</body>
</html>
