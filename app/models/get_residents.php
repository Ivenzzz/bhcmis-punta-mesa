<?php

function getResidentsData($conn) {
    $sql = "SELECT
                r.resident_id,
                pi.lastname,
                pi.firstname,
                pi.middlename,
                pi.date_of_birth,
                TIMESTAMPDIFF(YEAR, pi.date_of_birth, CURDATE()) AS age,
                pi.occupation,
                pi.phone_number,
                pi.email,
                pi.sex,
                a.address_name,
                a.address_id,
                a.address_type,
                hi.height_cm,
                hi.weight_kg,
                hi.blood_type,
                hi.blood_pressure,
                hi.cholesterol_level,
                hi.created_at AS health_info_created_at,
                ac.username,
                ac.role,
                ac.profile_picture,
                GROUP_CONCAT(DISTINCT mc.condition_name ORDER BY mc.condition_name ASC SEPARATOR ', ') AS medical_conditions
            FROM 
                residents r
            JOIN 
                personal_information pi ON r.personal_info_id = pi.personal_info_id
            JOIN 
                address a ON pi.address_id = a.address_id
            LEFT JOIN 
                health_information hi ON r.resident_id = hi.resident_id
            JOIN 
                accounts ac ON r.account_id = ac.account_id
            LEFT JOIN 
                residents_medical_condition rmc ON r.resident_id = rmc.resident_id
            LEFT JOIN 
                medical_conditions mc ON rmc.medical_conditions_id = mc.medical_conditions_id
            GROUP BY 
                r.resident_id";

    $result = mysqli_query($conn, $sql);
    $residents_data = [];

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $residents_data[] = $row;
        }
    }

    return $residents_data;
}

$residents_data = getResidentsData($conn);
?>


