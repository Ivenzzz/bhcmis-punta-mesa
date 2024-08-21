<?php

include '../../config/db_config.php';

$sql = "SELECT address_id, address_name, address_type FROM address";
$result = mysqli_query($conn, $sql);

$addresses = [];

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $addresses[] = $row;
    }
}

mysqli_close($conn);
echo json_encode($addresses);
?>

