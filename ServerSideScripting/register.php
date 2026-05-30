<?php
// Database config
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "register_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Only allow POST requests
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get and validate input
    // $name = trim($_POST['name']);
    // $email = trim($_POST['email']);
   $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm = $_POST['confirm_password'];

    // Check password match
    if ($password !== $confirm) {
        die("Passwords do not match");
    }

    // Hash password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert (NOT SAFE)
    $sql = "INSERT INTO users (name, email, password)
            VALUES ('$name', '$email', '$hashed_password')";

    if ($conn->query($sql)) {
        echo "Registered successfully!";
    } else {
        echo "Error: " . $conn->error;
    }
}

$conn->close();
?>