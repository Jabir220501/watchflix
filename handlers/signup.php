<?php
include '../database/connection.php';

if (
    isset($_POST['name']) &&
    isset($_POST['email']) &&
    isset($_POST['password'])
) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE email='$email'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        header("location: ../auth/signup?msg=Error: Email is already in use.");
    } else {
        $sql = "INSERT INTO `users`(`name`, `email`, `password`)
        VALUES ('$name','$email','$password')";

        $result = mysqli_query($conn, $sql);

        session_start();
        $_SESSION["signedIn"] = true;
        $_SESSION["name"] = $name;
        $_SESSION["email"] = $email;

        header('location: ../');
        exit();
    }
}
?>