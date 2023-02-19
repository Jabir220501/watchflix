<!DOCTYPE html>
<html lang="en">
<?php
include '../../database/connection.php';

$id = $_POST["id"];
$sql = "SELECT * FROM `movie_video` WHERE id = $id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
?>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Movie</title>
    <link rel="stylesheet" href="../../../assets/css/dashboard.css">
    <script src="../../../assets/js/dashboard.js" defer></script>

    <script src="https://kit.fontawesome.com/779df3ae2b.js" crossorigin="anonymous"></script>
    <!-- JQUERY -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"
        integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>

<body>
    <div id="topbar">
        <div id="topbar__wrapper">
            <div id="topbar__logo">
                <?php include '../../includes/dashboard/topbar/logo.php' ?>
            </div>

            <div id="name_panel">
                <h2>Update Movie</h2>
            </div>

            <div id="dashboard__profile">
                <?php include '../../includes/dashboard/topbar/profile.php' ?>
            </div>
        </div>
    </div>
    <?php
    include '../../includes/dashboard/sidebar.php';
    ?>
    <div class="content">
        <div id="add_movie_container">
            <div id="movie_fields">
                <form action="../../../handlers/update.php" method="POST" id="movie__form">
                    <div id="movie__section_form" class="field_section">
                        <h2>Movie Info</h2>
                        <div class="input_movie_info movie_name">
                            <label for="movie_name">Movie Name</label>
                            <input type="text" name="movie_name" value="<?php echo $row['video_title'] ?>" id="movie__name_input" required>
                        </div>
                        <div class="input_movie_info movie_description">
                            <label for="movie_description">Description</label>
                            <textarea name="movie_description" id="movie_description"cols="30" rows="10"
                                required><?php echo $row['video_description'];?></textarea>
                        </div>
                        <div class="input_movie_info movie_id">
                            <label for="movie_id">Movie ID</label>
                            <input type="text" name="movie_id" value="<?php echo $row['tmdb_id'];?>" id="movie_id">
                        </div>
                        <div class="input_movie_info imdb_movie_id">
                            <label for="imdb_movie_id">IMDb Movie ID</label>
                            <input type="text" name="imdb_movie_id" value="<?php echo $row['imdb_id'];?>" id="imdb_movie_id">
                        </div>
                        <div class="input_movie_info movie_upcoming">
                            <label for="movie_upcoming">Upcoming</label>
                            <select name="movie_upcoming" id="movie_upcoming">
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                        <div class="input_movie_info movie_status">
                            <label for="movie_status">Status</label>
                            <select name="movie_status" id="movie_status">
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <div class="input_movie_info movie_genre">
                            <label for="movie_genre">Genre</label>
                            <input type="text" name="movie_genre" value="<?php echo $row['video_title'];?>" id="movie_genre">
                        </div>
                        <div class="input_movie_info movie_actor_id">
                            <label for="movie_actor_id">Actor ID</label>
                            <input type="text" name="movie_actor_id" value="<?php echo $row['movie_genre_id'];?>" id="movie_actor_id">
                        </div>
                        <div class="input_movie_info movie_director_id">
                            <label for="movie_director_id">Director ID</label>
                            <input type="text" name="movie_director_id" value="<?php echo $row['director_id'];?>" id="movie_director_id">
                        </div>
                        <div class="input_movie_info movie_rating">
                            <label for="movie_rating">Rating</label>
                            <input type="text" name="movie_rating" value="<?php echo $row['rating'];?>" id="movie_rating" required>
                        </div>
                    </div>
                    <div id="movie_poster-backdrop-video_fields" class="field_section">
                        <h2>Poster, Thumbnail & Video</h2>
                        <div class="input_movie_info movie_backdrop">
                            <label for="movie_backdrop">Movie Backdrop</label>
                            <input type="text" name="movie_backdrop" value="<?php echo $row['video_backdrop'];?>" id="movie_backdrop">
                        </div>
                        <div class="input_movie_info movie_poster">
                            <label for="movie_poster">Movie Poster</label>
                            <input type="text" name="movie_poster" value="<?php echo $row['video_poster'];?>" id="movie_poster" required>
                        </div>
                        <div class="input_movie_info movie_trailer">
                            <label for="movie_trailer">Trailer URL</label>
                            <input type="text" name="movie_trailer" id="movie_trailer">
                        </div>
                        <div class="input_movie_info movie_video">
                            <label for="movie_video">Video File</label>
                            <input type="file" name="movie_video" id="movie_video">
                        </div>
                        <div id="submitBtn">
                            <input type="submit" name="submit" value="Update" id="SubmitBTN">
                            <input type="hidden" name="id" value="<?php echo $row['id'];?>" id="SubmitBTN">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>