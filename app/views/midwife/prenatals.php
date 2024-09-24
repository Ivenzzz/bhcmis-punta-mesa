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
            <div class="col-md-4 prenatal-form">
                <form method="POST" action="">
                    <div class="form-group mb-3">
                        <label for="pregnancy_id">Select Resident</label>
                        <input type="text" id="resident_search" class="form-control form-control-sm" placeholder="Search Pregnant Resident" data-bs-toggle="modal" data-bs-target="#residentModal" readonly>
                        <input type="hidden" name="pregnancy_id" id="pregnancy_id" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="visit_date">Visit Date</label>
                        <input type="date" name="visit_date" id="visit_date" class="form-control form-control-sm" value="<?= date('Y-m-d') ?>" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="weight">Patient's Weight (kg)</label>
                        <input type="number" step="0.01" name="weight" id="weight" class="form-control form-control-sm">
                    </div>
                    <div class="form-group mb-3">
                        <label for="blood_pressure">Blood Pressure</label>
                        <input type="text" name="blood_pressure" id="blood_pressure" class="form-control form-control-sm">
                    </div>
                    <div class="form-group mb-3">
                        <label for="heart_lungs_condition">Heart & Lungs Condition</label>
                        <select name="heart_lungs_condition" id="heart_lungs_condition" class="form-control form-control-sm">
                            <option value="">Select Condition</option>
                            <option value="Healthy">Healthy</option>
                            <option value="Mild Issue">Mild Issue</option>
                            <option value="Moderate Issue">Moderate Issue</option>
                            <option value="Severe Issue">Severe Issue</option>
                            <option value="Asthma">Asthma</option>
                            <option value="COPD">Chronic Obstructive Pulmonary Disease (COPD)</option>
                            <option value="Heart Disease">Heart Disease</option>
                            <option value="Hypertension">Hypertension</option>
                            <option value="Arrhythmia">Arrhythmia</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>

                    <div class="form-group mb-3">
                        <label for="abdominal_exam">Abdominal Exam</label>
                        <input type="text" name="abdominal_exam" id="abdominal_exam" class="form-control form-control-sm">
                    </div>
                    <div class="form-group mb-3">
                        <label for="fetal_heart_rate">Fetal Heart Rate</label>
                        <input type="text" name="fetal_heart_rate" id="fetal_heart_rate" class="form-control form-control-sm">
                    </div>
                    <div class="form-group mb-3">
                        <label for="fundal_height">Fundal Height</label>
                        <input type="text" name="fundal_height" id="fundal_height" class="form-control form-control-sm">
                    </div>
                    <div class="form-group mb-3">
                        <label for="fetal_movement">Fetal Movement</label>
                        <input type="text" name="fetal_movement" id="fetal_movement" class="form-control form-control-sm">
                    </div>
                    <div class="form-group mb-3">
                        <label for="checkup_notes">Checkup Notes</label>
                        <textarea name="checkup_notes" id="checkup_notes" class="form-control form-control-sm"></textarea>
                    </div>
                    <div class="form-group mb-3">
                        <label for="refer_to">Refer To <small>(Specify facilities in municipality)</small></label>
                        <input type="text" name="refer_to" id="refer_to" class="form-control form-control-sm">
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary btn-sm">Add Prenatal Record</button>
                    </div>
                </form>
            </div>
            <div class="col-md-8 prenatal-table">
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
                                        <button class="btn btn-sm print-btn" onclick="window.open('midwife/print_prenatal', '_blank');"><i class="fa-solid fa-print"></i></button>
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

    <!-- Modal -->
    <div class="modal fade" id="residentModal" tabindex="-1" aria-labelledby="residentModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="residentModalLabel">Select Pregnant Resident</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" id="searchResident" class="form-control mb-3" placeholder="Search...">
                    <ul class="list-group" id="residentList">
                        <?php foreach ($pregnantResidents as $resident): ?>
                            <li class="list-group-item resident-item" data-id="<?= $resident['pregnancy_id'] ?>">
                                <?= htmlspecialchars($resident['firstname'] . ' ' . $resident['middlename'] . ' ' . $resident['lastname']) ?>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
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
    <script>
        document.getElementById('searchResident').addEventListener('input', function() {
            const filter = this.value.toLowerCase();
            const items = document.querySelectorAll('.resident-item');

            items.forEach(item => {
                const text = item.textContent.toLowerCase();
                item.style.display = text.includes(filter) ? '' : 'none';
            });
        });

        document.querySelectorAll('.resident-item').forEach(item => {
            item.addEventListener('click', function() {
                document.getElementById('pregnancy_id').value = this.getAttribute('data-id');
                document.getElementById('resident_search').value = this.textContent;
                var modal = bootstrap.Modal.getInstance(document.getElementById('residentModal'));
                modal.hide();
            });
        });
    </script>

</body>
</html>