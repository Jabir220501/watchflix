<?php
include '../database/connection.php';
if (
    isset($_POST["series_name"]) &&
    isset($_POST["series_description"]) &&
    isset($_POST["series_rating"]) &&
    isset($_POST["series_poster"])
) {
    $id = $_POST["id"];
    $series_name = $conn->real_escape_string($_POST["series_name"]);
    $series_desc = $conn->real_escape_string($_POST["series_description"]);
    $series_ID = $_POST["series_id"];
    $series_upcoming = $_POST["series_upcoming"];
    $series_status = $_POST["series_status"];
    $series_genre = $_POST["series_genre"];
    $series_actor_Id = $_POST["series_actor_id"];
    $series_director_Id = $_POST["series_director_id"];
    $series_rating = $_POST["series_rating"];
    $series_backdrop = $_POST["series_backdrop"];
    $series_poster = $_POST["series_poster"];

    $sql = "UPDATE `series` SET `series_genres`='$series_genre',`upcoming`='$series_upcoming',`series_name`='$series_name',`series_info`='$series_desc', `series_poster`='$series_poster',`series_backdrop`='$series_backdrop',`tmdb_id`=' $series_ID',`rating`='$series_rating' WHERE $id";
    $result = mysqli_query($conn, $sql);

    header('location: ../auth/admin/series.php/');
} else {
    header('location: ../auth/admin/add-series.php?msg=Fill in the empty fields or Fill an TMDb Movie ID');
}
?>