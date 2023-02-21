<?php
include '../database/connection.php';

if (isset($_POST["id"])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM `series` WHERE id=$id";
    $result = mysqli_query($conn, $sql);
    header("location: ../auth/admin/series.php/");
}
?>