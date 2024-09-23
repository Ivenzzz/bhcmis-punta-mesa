<?php

session_start();

require './config/db_config.php';
require './app/models/get_current_user.php';

$title = 'Midwife Dashboard';
$user = getCurrentUser($conn);

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
    
    <div class="height-100 main-content">
        <h1>Midwife Page</h1>
    </div>


    <?php include './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/logout.js"></script>
</body>
</html>
