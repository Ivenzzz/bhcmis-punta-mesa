<?php if ($appointments && count($appointments) > 0): ?>
    <table class="table table-bordered text-center table-hover table-primary align-middle">
        <thead class="thead-dark">
            <tr>
                <th>Tracking Code</th>
                <th>Priority Number</th>
                <th>Scheduled Date</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($appointments as $appointment): ?>
                <tr>
                    <td><?= htmlspecialchars($appointment['tracking_code'] ?? 'N/A'); ?></td>
                    <td><?= htmlspecialchars($appointment['priority_number'] ?? 'N/A'); ?></td>
                    <td>
                        <?php
                        $date = new DateTime($appointment['con_sched_date'] ?? 'now'); // Default to now if null
                        echo $date->format('F j, Y | h:i A'); // Formats the date to 'March 15, 2023 | 12:00 PM'
                        ?>
                    </td>
                    <td><?= htmlspecialchars($appointment['status'] ?? 'Unknown'); ?></td>
                    <td>
                        <?php if ($appointment['status'] === 'Scheduled'): ?>
                            <button class="btn btn-danger btn-sm">Cancel Appointment</button>
                        <?php elseif ($appointment['status'] === 'Cancelled'): ?>
                            <button class="btn btn-secondary btn-sm" disabled>Cancelled</button>
                        <?php elseif ($appointment['status'] === 'Completed'): ?>
                            <button class="btn btn-success btn-sm" disabled>Completed</button>
                        <?php endif; ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php else: ?>
    <p>No appointments found.</p>
<?php endif; ?>