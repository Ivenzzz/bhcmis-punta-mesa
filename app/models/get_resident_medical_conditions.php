<?php
// Function to retrieve all medical conditions along with prescriptions for a specific resident
function getResidentMedicalConditions($conn, $resident_id) {
    // Prepare the SQL query to retrieve medical conditions and medicines for the resident
    $sql = "
        SELECT mc.condition_name, rmc.rmc_id, rmc.diagnosed_date, 
               GROUP_CONCAT(DISTINCT m.name SEPARATOR ', ') AS medicines
        FROM residents_medical_condition rmc
        INNER JOIN medical_conditions mc ON rmc.medical_conditions_id = mc.medical_conditions_id
        LEFT JOIN conditions_prescriptions cp ON cp.resident_condition_id = rmc.rmc_id
        LEFT JOIN medicines m ON cp.medicine_id = m.medicine_id
        WHERE rmc.resident_id = ?
        GROUP BY rmc.rmc_id
        ORDER BY rmc.diagnosed_date";

    // Prepare the statement
    $stmt = $conn->prepare($sql);

    // Bind the parameter
    $stmt->bind_param("i", $resident_id);

    // Execute the query
    $stmt->execute();

    // Get the result
    $result = $stmt->get_result();

    // Fetch all rows as an associative array
    $medical_conditions = $result->fetch_all(MYSQLI_ASSOC);

    // Return the medical conditions data
    return $medical_conditions;
}


?>
