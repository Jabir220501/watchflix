<!DOCTYPE html>
<html lang="en">
<?php
include '../../database/connection.php';
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
                <h2>Add Show</h2>
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
            <div id="import_fetch">
                <div id="back_btn">
                    <span>Back</span>
                </div>
                <div id="import_fetch_fields">
                    <label>Import From TMDB</label>
                    <div id="input_fetch">
                        <input type="text" placeholder="Enter TMDB Serie ID" id="fetch_input" class="series_fetch_input" value="">
                        <button id="fetch_button" class="series_fetch_button">Fetch</button>
                    </div>
                </div>

            </div>

            <div id="movie_fields">
                <hr>
                <form action="../../../handlers/addserie.php" method="POST" id="movie__form">
                    <div id="movie__section_form" class="field_section">
                        <h2>Serie Info</h2>
                        <div class="input_movie_info movie_name">
                            <label for="series_name">Serie Name</label>
                            <input type="text" name="series_name" id="series__name_input" required>
                        </div>
                        <div class="input_movie_info movie_description">
                            <label for="series_description">Description</label>
                            <textarea name="series_description" id="series_description" cols="30" rows="10" required></textarea>
                        </div>
                        <div class="input_movie_info movie_id">
                            <label for="series_id">Serie ID</label>
                            <input type="text" name="series_id" id="series_id">
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
                            <input type="text" name="series_genre" id="series_genre">
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
                            <input type="text" name="series_rating" id="series_rating" required>
                        </div>
                    </div>
                    <div id="movie_poster-backdrop-video_fields" class="field_section">
                        <h2>Poster, Thumbnail & Video</h2>
                        <div class="input_movie_info movie_backdrop">
                            <label for="series_backdrop">Movie Backdrop</label>
                            <input type="text" name="series_backdrop" id="series_backdrop">
                        </div>
                        <div class="input_movie_info movie_poster">
                            <label for="series_poster">Movie Poster</label>
                            <input type="text" name="series_poster" id="series_poster" required>
                        </div>
                        <div id="submitBtn">
                            <input type="submit" name="submit" value="Save" id="SubmitBTN">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>