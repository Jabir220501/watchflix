<?php
include '../database/connection.php';

if (isset($_POST["id"])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM `movie_video` WHERE id=$id";
    $result = mysqli_query($conn, $sql);
    header("location: ../auth/admin/movies.php/");
}
?>