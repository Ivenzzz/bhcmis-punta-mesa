<?php

function getCurrentUser($conn) {
    // Check if the session variable is set
    if (isset($_SESSION['account_id'])) {
        $account_id = $_SESSION['account_id'];

        // Prepare the SQL statement
        $stmt = $conn->prepare("SELECT 
                                    account_id, 
                                    username, 
                                    role, 
                                    profile_picture, 
                                    isArchived 
                                FROM 
                                    accounts 
                                WHERE 
                                    account_id = ?");
        $stmt->bind_param("i", $account_id); // Bind the parameter as an integer

        // Execute the statement
        $stmt->execute();

        // Get the result
        $result = $stmt->get_result();

        // Fetch the current user data
        if ($result->num_rows > 0) {
            $currentUser = $result->fetch_assoc(); // Fetch the user data
        } else {
            // Handle case when no user is found
            $currentUser = null; // Or handle as needed
        }

        // Close the statement
        $stmt->close();
        return $currentUser; // Return the current user data
    } else {
        // Handle case when session variable is not set
        return null; // Or redirect to login, etc.
    }
}

?>