<?php
include '../database/connection.php';

if (
    isset($_POST['email']) &&
    isset($_POST['password'])
) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sqlA = "SELECT * FROM `users` WHERE `email`='$email' AND `password`='$password' AND `usertype`='admin'";
    $resultA = mysqli_query($conn, $sqlA);

    $sql = "SELECT * FROM `users` WHERE `email`='$email' AND `password`='$password'";
    $result = mysqli_query($conn, $sql);
    
    $name = "SELECT `id` FROM `users` WHERE `name`";

    if (mysqli_num_rows($resultA) > 0) {
        header('location: ../auth/admin/dashboard.php/');
    } elseif (mysqli_num_rows($result) > 0) {
        header('location: ../auth/dashboard/home.php');
    } else {
        header("location: ../auth/login?msg=Error: Email and password does not match, try again.");
    }
}
?>