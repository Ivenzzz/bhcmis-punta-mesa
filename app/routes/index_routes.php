<?php

// Get the URL and resident_id from the query parameters
$url = isset($_GET['url']) ? $_GET['url'] : '';
$resident_id = isset($_GET['resident_id']) ? intval($_GET['resident_id']) : null;
$sched_id = isset($_GET['sched_id']) ? intval($_GET['sched_id']) : null;

switch ($url) { 
    
    case '':
        require 'app/views/index/index.php';
        break;

    case 'admin':
        require 'app/views/admin/index.php';
        break;

    case 'admin-residents':
        if ($resident_id) {
            require 'app/views/admin/resident_details.php';
        } else {
            require 'app/views/admin/residents.php'; 
        }
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

    case 'admin-medical_conditions':
        if ($resident_id) {
            require 'app/views/admin/resident_medical_conditions.php';
        } else {
            require 'app/views/globals/error.php';
        }
        break;

    case 'population-breakdown':
        require 'app/views/admin/population_breakdown.php';
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

    case 'midwife-appointments':
        if ($sched_id) {
            require 'app/views/midwife/appointment_list.php';
        } else {
            require 'app/views/midwife/appointments.php';
        }
        break;

    case 'midwife/print_prenatal':
        require 'app/views/midwife/print_prenatal_record.php';
        break;

    case 'bhw':
        require 'app/views/bhw/index.php';
        break;

    case 'r-appointments':
        require 'app/views/resident/index.php';
        break;

    default:
        require 'app/views/globals/error.php';
        break;
}

?>
