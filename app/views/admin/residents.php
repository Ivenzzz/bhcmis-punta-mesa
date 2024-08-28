<?php

$title = 'Residents';

require './config/db_config.php';
require './app/models/get_residents.php';
require './app/models/get_addresses.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php require './app/views/globals/head.php'; ?>
    <link rel="stylesheet" href="./public/css/admin.css">
</head>
<body id="body-pd">
    <?php require 'partials/top_navigation.php'; ?>
    <?php require 'partials/sidebar.php'; ?>
    <div class="height-100 main-content">
        <div class="toolbar">
            <div class="left-toolbar">
                <button class="spinner"><i class='bx bx-refresh'></i></button>
            </div>
            <div class="right-toolbar">
                <input type="search" placeholder="Search" class="search">
                <button><i class='bx bx-trash'></i></button>
                <button><i class='bx bx-plus-circle'></i></button>
            </div>
        </div>
        <table class="table table-sm table-dark text-center">
            <thead class="sticky-top bg-dark">
                <tr>
                    <th><input type="checkbox" id="select-all"></th>
                    <th></th>
                    <th class="sortable" data-column="lastname" data-order="desc">
                        Lastname <i class='bx bx-sort'></i>
                    </th>
                    <th class="sortable" data-column="firstname" data-order="desc">
                        Firstname <i class='bx bx-sort'></i>
                    </th>
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
                        <td>
                            <button class="btn btn-edit" data-bs-toggle="modal" data-bs-target="#editResidentModal<?php echo $index; ?>">
                                <i class='bx bx-edit-alt'></i>
                            </button>
                        </td>
                    </tr>
                    <tr class="collapse-row collapse" id="collapseRow<?php echo $index; ?>">
                        <td colspan="8" class="p-0">
                            <div class="p-3 collapse-body">
                                <div class="collapse-info">
                                    <h5>Personal Information</h5>
                                    <p>Date of Birth: 
                                        <?php 
                                            echo $resident['date_of_birth'] 
                                                ? htmlspecialchars(date('F j, Y', strtotime($resident['date_of_birth']))) 
                                                : 'N/A'; 
                                        ?>
                                    </p>
                                    <p>Sex: <?php echo $resident['sex'] ? htmlspecialchars(ucfirst($resident['sex'])) : 'N/A'; ?></p>
                                    <p>Occupation: <?php echo $resident['occupation'] ? htmlspecialchars($resident['occupation']) : 'N/A'; ?></p>
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

                    <?php require 'partials/edit_resident_modal.php'; ?>

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
                <div id="row-description" class="row-description">
            </div>
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

    <?php require './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/admin.js" type="module"></script>
</body>
</html>
