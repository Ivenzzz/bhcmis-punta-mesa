<?php
session_start();
require './config/db_config.php';
require './app/models/get_prenatals.php';

$title = 'Print Prenatal Records';
$prenatalsData = getAllPrenatals($conn); // Fetch all prenatals data for printing
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= $title ?></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
    <style>
        @media print {
            .no-print {
                display: none;
            }
            body {
                -webkit-print-color-adjust: exact;
            }
        }
        .table th, .table td {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mt-5">Prenatal Records</h1>
        <p class="text-center">Generated on: <?= date('F j, Y') ?></p>
        <hr>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Tracking Code</th>
                    <th>Name</th>
                    <th>Visit Date</th>
                    <th>Due Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($prenatalsData)): ?>
                    <?php foreach ($prenatalsData as $prenatal): ?>
                        <tr>
                            <td><?= htmlspecialchars($prenatal['tracking_code']) ?></td>
                            <td><?= htmlspecialchars($prenatal['firstname'] . ' ' . $prenatal['middlename'] . ' ' . $prenatal['lastname']) ?></td>
                            <td>
                                <?php 
                                    $date = new DateTime($prenatal['sched_date']);
                                    echo htmlspecialchars($date->format('F j, Y | h:i A'));
                                ?>
                            </td>                                    
                            <td><?= htmlspecialchars($prenatal['expected_due_date']) ?></td>
                            <td><?= htmlspecialchars($prenatal['pregnancy_status']) ?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="5" class="text-center">No prenatal records found.</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
        <div class="text-center">
            <button class="btn btn-primary no-print" onclick="window.print()">Print this page</button>
        </div>
    </div>
</body>
</html>
