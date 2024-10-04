<?php

session_start();

require './config/db_config.php';
require './app/models/get_current_midwife.php';
require './app/models/get_midwife_analytics.php';

$title = 'Appointments List';
$user = getCurrentMidwife($conn);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include './app/views/globals/head.php'; ?>
    <link rel="stylesheet" href="./public/css/midwife.css">
</head>
<body id="body-pd">
    <?php include 'partials/top_navigation.php'; ?>
    <?php include 'partials/sidebar.php'; ?>
    
    <div class="container-fluid height-100 main-content">

        <div class="row mb-4">
            <div class="col-md-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="midwife">Home</a></li>
                        <li class="breadcrumb-item"><a href="midwife-appointments">Appointments</a></li>
                        <li class="breadcrumb-item" aria-current="page">List for </li>
                    </ol>
                </nav>
            </div>
        </div>

        <div class="row mb-4">
            <div class="col-md-12">

            </div>
        </div>
        
    </div>


    <?php include './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/logout.js"></script>
</body>
</html>
