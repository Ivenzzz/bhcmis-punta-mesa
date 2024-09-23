<?php

session_start();

require './config/db_config.php';
require './app/models/get_current_user.php';
require './app/models/get_prenatals.php';
require './app/models/get_pregnant_residents.php';

$title = 'Prenatals';
$user = getCurrentUser($conn);
$prenatalsData = getAllPrenatals($conn); 
$pregnantResidents = getPregnantResidents($conn);

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
            <div class="col-md-5">
                <form method="POST" action="">
                    <div class="form-group">
                        <label for="pregnancy_id">Select Resident</label>
                        <select name="pregnancy_id" id="pregnancy_id" class="form-control" required>
                            <option value="">-- Select Pregnant Resident --</option>
                            <?php foreach ($pregnantResidents as $resident): ?>
                                <option value="<?= $resident['pregnancy_id'] ?>">
                                    <?= htmlspecialchars($resident['firstname'] . ' ' . $resident['middlename'] . ' ' . $resident['lastname']) ?> (Due: <?= htmlspecialchars($resident['expected_due_date']) ?>)
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="visit_date">Visit Date</label>
                        <input type="date" name="visit_date" id="visit_date" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="weight">Weight (kg)</label>
                        <input type="number" step="0.01" name="weight" id="weight" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="blood_pressure">Blood Pressure</label>
                        <input type="text" name="blood_pressure" id="blood_pressure" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="heart_lungs_condition">Heart & Lungs Condition</label>
                        <input type="text" name="heart_lungs_condition" id="heart_lungs_condition" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="abdominal_exam">Abdominal Exam</label>
                        <input type="text" name="abdominal_exam" id="abdominal_exam" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="complete_blood_count">Complete Blood Count</label>
                        <input type="text" name="complete_blood_count" id="complete_blood_count" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="fetal_heart_rate">Fetal Heart Rate</label>
                        <input type="text" name="fetal_heart_rate" id="fetal_heart_rate" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="fundal_height">Fundal Height</label>
                        <input type="text" name="fundal_height" id="fundal_height" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="fetal_movement">Fetal Movement</label>
                        <input type="text" name="fetal_movement" id="fetal_movement" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="checkup_notes">Checkup Notes</label>
                        <textarea name="checkup_notes" id="checkup_notes" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="refer_to">Refer To</label>
                        <input type="text" name="refer_to" id="refer_to" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Add Prenatal Record</button>
                </form>
            </div>
            <div class="col-md-7">
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
                                    <td>
                                        <?php 
                                            $date = new DateTime($prenatal['sched_date']);
                                            echo htmlspecialchars($date->format('F j, Y | h:i A'));
                                        ?>
                                    </td>                                    
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
