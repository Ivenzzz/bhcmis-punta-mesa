<?php
session_start();
include '../../config/db_config.php';
include '../models/get_account_by_username.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $result = getAccountByUsername($conn, $username);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        
        if (password_verify($password, $user['password'])) {
            $_SESSION['username'] = $username;
            $_SESSION['account_id'] = $user['account_id'];
            $_SESSION['role'] = $user['role'];
            $_SESSION['logged_in'] = true;

            if (isset($_POST['remember'])) {
                setcookie('username', $username, time() + (86400 * 30), "/"); // 30 days
                setcookie('password', $password, time() + (86400 * 30), "/"); // 30 days
            }
            
            $response = ['status' => 'success', 'role' => $user['role']];
            echo json_encode($response);
        } else {
            $response = ['status' => 'error', 'message' => 'Invalid username or password.'];
            echo json_encode($response);
        }
    } else {
        $response = ['status' => 'error', 'message' => 'No user found with that username.'];
        echo json_encode($response);
    }
} else {
    http_response_code(405);
    echo json_encode(['status' => 'error', 'message' => 'Method not allowed.']);
}
?>
