<?php
// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get and sanitize inputs
    $username = trim($_POST["username"] ?? "");
    $password = trim($_POST["password"] ?? "");

    // Validation
    if (empty($username)) {
        echo "Username cannot be empty";
        exit;
    }

    if (strlen($username) < 4) {
        echo "Username must be at least 4 characters";
        exit;
    }

    if (empty($password)) {
        echo "Password cannot be empty";
        exit;
    }

    if (strlen($password) < 6) {
        echo "Password must be at least 6 characters";
        exit;
    }

    // If validation passes
    echo "Login successful (server-side validation passed)";
}
?>