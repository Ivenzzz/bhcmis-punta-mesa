<?php

session_start();

$title = 'Residents';

require './config/db_config.php';
require './app/models/get_residents.php';
require './app/models/get_addresses.php';
require './app/models/get_current_user.php';

$user = getCurrentUser($conn);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php require './app/views/globals/head.php'; ?>
    <link rel="stylesheet" href="./public/css/admin-residents.css">
</head>
<body id="body-pd">
    <?php require 'partials/top_navigation.php'; ?>
    <?php require 'partials/sidebar.php'; ?>
    <div class="height-100 main-content">
        <div class="row">
            <div class="col-md-12">
                <div class="toolbar">
                    <div class="left-toolbar">
                        <button class="spinner"><i class='bx bx-refresh'></i></button>
                    </div>
                    <div class="right-toolbar">
                        <input type="search" placeholder="Search" class="search">
                        <button><i class='bx bx-trash'></i></button>
                        <button data-bs-toggle="modal" data-bs-target="#addResidentModal"><i class='bx bx-plus-circle'></i></button>
                    </div>
                </div>
                <table class="table text-center shadow">
                    <thead class="">
                        <tr>
                            <th><input type="checkbox" id="select-all" class=""></th>
                            <th class="sortable" data-column="lastname" data-order="desc">
                                Lastname <i class='bx bx-sort'></i>
                            </th>
                            <th class="sortable" data-column="firstname" data-order="desc">
                                Firstname <i class='bx bx-sort'></i>
                            </th>
                            <th>Middlename</th>
                            <th>Age</th>
                            <th>Address</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="resident-table-body">
                        <?php foreach ($residents_data as $index => $resident): ?>
                            <tr class="main-row" data-resident-id="<?php echo $resident['resident_id']; ?>">
                                <td><input type="checkbox" class="row-checkbox"></td>
                                <td><?php echo htmlspecialchars($resident['lastname']); ?></td>
                                <td><?php echo htmlspecialchars($resident['firstname']); ?></td>
                                <td><?php echo htmlspecialchars($resident['middlename']); ?></td>
                                <td><?php echo htmlspecialchars($resident['age']); ?></td>
                                <td><?php echo htmlspecialchars($resident['address_name']); ?></td>
                                <td>
                                    <button class="btn btn-view" onclick="redirectToResidentPage(<?php echo $resident['resident_id']; ?>)">
                                        <i class='bx bx-info-circle'></i>
                                    </button>
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
        </div>
    </div>

    <?php require 'partials/add_resident_modal.php'; ?>
    
    <?php require './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/admin.js" type="module"></script>
    <script src="./public/js/admin/functions.js"></script>
    <script src="./public/js/admin/logout.js"></script>
    <script>
        function redirectToResidentPage(residentId) {
            window.location.href = 'admin-residents?resident_id=' + residentId;
        }
    </script>
</body>
</html>
