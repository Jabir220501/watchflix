<?php
include './database/connection.php'
    ?>

<div class="row upcoming-movie">
    <div class="label">
        <span class="movie_type"><a href="#">Upcoming Movies</a></span>
        <span>&#10095;</span>
    </div>
    <div class="main_movie">
        <?php
        $sql = "SELECT * FROM `movie_video`";
        $result = mysqli_query($conn, $sql);
        $img = "https://image.tmdb.org/t/p/original/";

        while ($row = mysqli_fetch_assoc($result)) {
            if ($row["upcoming"] == "yes") {
                $movie_poster = $row["video_poster"];
                $movie_genre = $row["movie_genre_id"];
                $movie_rating = $row["rating"];
                $movie_name = $row["video_title"];

                ?>
                <div class="movie_item">
                    <img src="<?php echo $img . $movie_poster ?>" alt="">
                    <div class="info_film">
                        <div class="genre">
                            <span>
                                <?php echo $movie_genre ?>
                            </span>
                        </div>
                        <div id="rate">
                            <?php
                            for ($x = 0; $x < $movie_rating; $x++) {
                                echo '<svg width="14" height="13" viewBox="0 0 14 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6.99998 2.61358L7.95838 5.36525L8.13368 5.86856H8.66665H11.5206L9.3106 7.62811L8.91738 7.9412L9.05748 8.42391L9.86844 11.2179L7.41982 9.56375L6.99998 9.28012L6.58014 9.56375L4.13152 11.2179L4.94248 8.42391L5.08258 7.9412L4.68936 7.62811L2.47939 5.86856H5.33331H5.86628L6.04158 5.36525L6.99998 2.61358Z" fill="white" stroke="white" stroke-width="1.5"/>
                            </svg>';
                            }
                            ;
                            </div>
                <h3>
                    <?php echo $movie_name ?>
                </h3>
                <div class="hover_watch">
                    <span class="movie_type"><a href="#">Watch Now</a></span>
                    <span>&#10095;</span>
                </div>
            </div>
            <div class="overlay-film_scroll"></div>
        </div>
            }
        }
        ?>
                
    </div>
</div>