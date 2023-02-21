<!DOCTYPE html>
<html lang="en">
<?php
include '../../database/connection.php';

$id = $_POST["id"];
$sql = "SELECT * FROM `series` WHERE id = $id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
?>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Shows</title>
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
                <h2>Update Show</h2>
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
                <form action="../../../handlers/updateSeries.php" method="POST" id="movie__form">
                    <div id="movie__section_form" class="field_section">
                        <h2>Serie Info</h2>
                        <div class="input_movie_info movie_name">
                            <label for="series_name">Serie Name</label>
                            <input type="text" name="series_name" value="<?php echo $row['series_name'] ?>" id="series__name_input" required>
                        </div>
                        <div class="input_movie_info series_description">
                            <label for="series_description">Description</label>
                            <textarea name="series_description" id="series_description" cols="30" rows="10" required><?php echo $row['series_info'] ?></textarea>
                        </div>
                        <div class="input_movie_info movie_id">
                            <label for="series_id">Serie ID</label>
                            <input type="text" name="series_id" value="<?php echo $row['tmdb_id'] ?>" id="series_id">
                        </div>
                        <div class="input_movie_info movie_upcoming">
                            <label for="series_upcoming">Upcoming</label>
                            <select name="series_upcoming" id="series_upcoming">
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                        <div class="input_movie_info movie_status">
                            <label for="series_status">Status</label>
                            <select name="series_status" id="series_status">
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <div class="input_movie_info movie_genre">
                            <label for="series_genre">Genre</label>
                            <input type="text" name="series_genre" value="<?php echo $row['series_genres'] ?>" id="series_genre">
                        </div>
                        <div class="input_movie_info movie_actor_id">
                            <label for="series_actor_id">Actor ID</label>
                            <input type="text" name="series_actor_id" id="series_actor_id">
                        </div>
                        <div class="input_movie_info movie_director_id">
                            <label for="series_director_id">Director ID</label>
                            <input type="text" name="series_director_id" id="series_director_id">
                        </div>
                        <div class="input_movie_info movie_rating">
                            <label for="series_rating">Rating</label>
                            <input type="text" name="series_rating" value="<?php echo $row['rating'] ?>" id="series_rating" required>
                        </div>
                    </div>
                    <div id="movie_poster-backdrop-video_fields" class="field_section">
                        <h2>Poster, Thumbnail & Video</h2>
                        <div class="input_movie_info movie_backdrop">
                            <label for="series_backdrop">Movie Backdrop</label>
                            <input type="text" name="series_backdrop" value="<?php echo $row['series_backdrop'] ?>" id="series_backdrop">
                        </div>
                        <div class="input_movie_info movie_poster">
                            <label for="series_poster">Movie Poster</label>
                            <input type="text" name="series_poster" value="<?php echo $row['series_poster'] ?>"id="series_poster" required>
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