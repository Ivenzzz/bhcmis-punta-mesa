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
    case 'midwife':
        require 'app/views/midwife/index.php';
        break;
    case 'midwife-medicines':
        require 'app/views/midwife/inventory_medicines.php';
        break;
    case 'midwife-prenatals':
        require 'app/views/midwife/prenatals.php';
        break;
    case 'midwife/print_prenatal':
        require 'app/views/midwife/print_prenatal_record.php';
        break;
    case 'bhw':
        require 'app/views/bhw/index.php';
        break;
    case 'resident':
        require 'app/views/resident/index.php';
        break;
    default:
        require 'app/views/globals/error.php';
        break;
}

?>



