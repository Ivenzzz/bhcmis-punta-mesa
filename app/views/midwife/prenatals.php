<?php

session_start();

require './config/db_config.php';
require './app/models/get_current_user.php';
require './app/models/get_prenatals.php';

$title = 'Prenatals';
$user = getCurrentUser($conn);
$prenatalsData = getAllPrenatals($conn); // This retrieves prenatal data from the database

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include './app/views/globals/head.php'; ?>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="./public/css/midwife-prenatals.css">
</head>
<body>
    <?php include 'partials/top_navigation.php'; ?>
    <?php include 'partials/sidebar.php'; ?>

    <div class="container-fluid height-100 main-content">
        <div class="row">
            <div class="col-md-12">
                <table id="prenatalsTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Tracking Code</th>
                            <th>Name</th>
                            <th>Visit Date</th>
                            <th>Due Date</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($prenatalsData)): ?>
                            <?php foreach ($prenatalsData as $prenatal): ?>
                                <tr>
                                    <td><?= htmlspecialchars($prenatal['tracking_code']) ?></td>
                                    <td><?= htmlspecialchars($prenatal['firstname'] . ' ' . $prenatal['middlename'] . ' ' . $prenatal['lastname']) ?></td>
                                    <td><?= htmlspecialchars($prenatal['visit_date']) ?></td>
                                    <td><?= htmlspecialchars($prenatal['expected_due_date']) ?></td>
                                    <td><?= htmlspecialchars($prenatal['pregnancy_status']) ?></td>
                                    <td>
                                        <button class="btn btn-sm view-btn"><i class="fa-solid fa-eye"></i></button>
                                        <button class="btn btn-sm edit-btn"><i class="fa-solid fa-pencil-alt"></i></button>
                                        <button class="btn btn-sm delete-btn"><i class="fa-solid fa-trash"></i></button>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <tr>
                                <td colspan="6" class="text-center">No prenatal records found.</td>
                            </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <?php include './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/logout.js"></script>
    <script>
        $(document).ready(function() {
            $('#prenatalsTable').DataTable({
                "ordering": false
            });
        });
    </script>
</body>
</html>
