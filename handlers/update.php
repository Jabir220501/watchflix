<?php
include '../database/connection.php';
if (
    isset($_POST["movie_name"]) &&
    isset($_POST["movie_description"]) &&
    isset($_POST["movie_rating"]) &&
    isset($_POST["movie_poster"])
) {
    $id = $_POST["id"];
    $movie_name = $conn->real_escape_string($_POST["movie_name"]);
    $movie_desc = $conn->real_escape_string($_POST["movie_description"]);
    $movie_ID = $_POST["movie_id"];
    $imdb_movie_ID = $_POST["imdb_movie_id"];
    $movie_upcoming = $_POST["movie_upcoming"];
    $movie_status = $_POST["movie_status"];
    $movie_genre = $_POST["movie_genre"];
    $movie_actor_Id = $_POST["movie_actor_id"];
    $movie_director_Id = $_POST["movie_director_id"];
    $movie_rating = $_POST["movie_rating"];
    $movie_backdrop = $_POST["movie_backdrop"];
    $movie_poster = $_POST["movie_poster"];
    $trailer_URL = $_POST["movie_trailer"];
    $video_File = $_POST["movie_video"];

    $sql = "UPDATE `movie_video` SET `tmdb_id`='$movie_ID',`imdb_id`='$imdb_movie_ID',`movie_genre_id`='$movie_genre',`upcoming`='$movie_upcoming',`video_title`='$movie_name',`video_description`='$movie_desc',`video_poster`='$movie_poster',`video_backdrop`='$movie_backdrop',`actor_id`='$movie_actor_Id',`director_id`='$movie_director_Id',`rating`='$movie_rating' WHERE id=$id";
    $result = mysqli_query($conn, $sql);

    header('location: ../auth/admin/movies.php/');
} else {
    header('location: ../auth/admin/add-movie.php?msg=Fill in the empty fields or Fill an TMDb Movie ID');
}
?>