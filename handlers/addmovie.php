<?php
include '../database/connection.php';
if (
    isset($_POST["movie_name"]) &&
    isset($_POST["movie_description"]) &&
    isset($_POST["movie_rating"]) &&
    isset($_POST["movie_poster"])
) {
    $movie_name = $conn -> real_escape_string($_POST["movie_name"]) ;
    $movie_desc = $conn -> real_escape_string($_POST["movie_description"]);
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

    $sql = "INSERT INTO `movie_video`(`tmdb_id`, `imdb_id`, `movie_genre_id`, `upcoming`, `video_title`, `video_description`, `video_poster`, `video_backdrop`, `actor_id`, `director_id`, `rating`, `status`)
    VALUES ('$movie_ID','$imdb_movie_ID','$movie_genre','$movie_upcoming','$movie_name','$movie_desc','$movie_poster','$movie_backdrop','$movie_actor_Id','$movie_director_Id','$movie_rating','$movie_status')";
    $result = mysqli_query($conn, $sql);
    
    header('location: ../auth/admin/movies.php/');
}else{
    header('location: ../auth/admin/add-movie.php?msg=Fill in the empty fields or Fill an TMDb Movie ID');
}
?>