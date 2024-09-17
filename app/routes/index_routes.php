<?php

$url = isset($_GET['url']) ? $_GET['url'] : '';

switch ($url) { 
    case '':
        require 'app/views/index/index.php';
        break;
    case 'admin':
        require 'app/views/admin/index.php';
        break;
    case 'admin-residents':
        require 'app/views/admin/residents.php';
        break;
    case 'admin-bhws':
        require 'app/views/admin/bhws.php';
        break;
    case 'admin-midwife':
        require 'app/views/admin/midwife.php';
        break;
    case 'admin-events':
        require 'app/views/admin/events.php';
        break;
    case 'bhw-dashboard':
        require 'app/views/bhw/dashboard.php';
        break;
    case 'resident-dashboard':
        require 'app/views/resident/index.php';
        break;
    default:
        require 'app/views/globals/error.php';
        break;
}

?>



