<?php

session_start();

require './config/db_config.php';
require './app/models/get_current_user.php';
require './app/models/get_resident_appointments.php';

$title = 'Residents Dashboard';
$user = getCurrentUser($conn);
$appointments = getResidentAppointmentsWithSchedule($conn);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include './app/views/globals/head.php'; ?>
    <link rel="stylesheet" href="./public/css/resident.css">
</head>
<body id="body-pd">
    <?php include 'partials/top_navigation.php'; ?>
    <?php include 'partials/sidebar.php'; ?>
    
    <div class="height-100 main-content">
        <div class="row shadow">
            <div class="col-md-12 px-5">
                <h4 class="my-4 text-center">My Appointments</h4>
                <div class="row mb-2">
                    <div class="col-md-12">
                        <div class="d-flex justify-content-end">
                        <button class="btn btn-sm btn-primary rounded-circle" data-bs-toggle="modal"        data-bs-target="#addAppointmentModal">
                            <i class="fa-solid fa-circle-plus"></i>
                        </button>

                        </div>
                    </div>
                </div>

                <?php require 'partials/appointments_table.php';?>
            </div>
        </div>

        <!-- Add Appointment Modal -->
        <div class="modal fade" id="addAppointmentModal" tabindex="-1" aria-labelledby="addAppointmentModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addAppointmentModalLabel">Add New Appointment</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="addAppointmentForm" method="POST" action="./app/controllers/residents/add_appointment.php">
                            <div class="mb-3">
                                <label for="schedule" class="form-label">Select Schedule</label>
                                <select class="form-select" id="schedule" name="schedule_id" required>
                                    <option value="">Choose a schedule</option>
                                    <?php
                                    // Fetch available schedules from the database
                                    $query_schedules = "SELECT * FROM consultation_schedules ORDER BY con_sched_date ASC";
                                    $result_schedules = $conn->query($query_schedules);

                                    if ($result_schedules->num_rows > 0) {
                                        while ($row = $result_schedules->fetch_assoc()) {
                                            $formatted_date = (new DateTime($row['con_sched_date']))->format('F j, Y | h:i A');
                                            echo "<option value=\"{$row['con_sched_id']}\">{$formatted_date}</option>";
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                            <input type="hidden" name="resident_id" value="<?= htmlspecialchars($user['resident_id']); ?>">
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add Appointment</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <?php include './app/views/globals/javascripts.php'; ?>
    <script src="./public/js/admin/logout.js"></script>
</body>
</html>
