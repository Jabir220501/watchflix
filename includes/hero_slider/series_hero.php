<?php
include './database/connection.php';
?>

<div id="slideshow">
    <div class="movie">
        <?php
        if (isset($_GET["series"])) {
            $GET_SERIES_ID = $_GET["series"];
            $sql = "SELECT * FROM `series` WHERE `tmdb_id` = '$GET_SERIES_ID'";
            $result = mysqli_query($conn, $sql);
            $img = "https://image.tmdb.org/t/p/original/";
            while ($row = $result->fetch_assoc()) {
                $series_backdrop = $row["series_backdrop"];
                $series_poster = $row["series_poster"];
                $series_genre = $row["series_genres"];
                $series_rating = $row["rating"]/2;
                $series_name = $row["series_name"];
                $series_desc = $row["series_info"];

                ?>
                <img src="<?php echo $img . $series_backdrop ?>" alt="">
                <div class="info">
                    <div id="genre">
                        <span>
                            <?php echo $series_genre ?>
                        </span>
                    </div>
                    <div id="rate">
                        <?php
                        for ($x = 0; $x < $series_rating; $x++) {
                            echo '<svg width="14" height="13" viewBox="0 0 14 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6.99998 2.61358L7.95838 5.36525L8.13368 5.86856H8.66665H11.5206L9.3106 7.62811L8.91738 7.9412L9.05748 8.42391L9.86844 11.2179L7.41982 9.56375L6.99998 9.28012L6.58014 9.56375L4.13152 11.2179L4.94248 8.42391L5.08258 7.9412L4.68936 7.62811L2.47939 5.86856H5.33331H5.86628L6.04158 5.36525L6.99998 2.61358Z" fill="white" stroke="white" stroke-width="1.5"/>
                            </svg>
                            ';
                        }
                        ?>
                    </div>
                    <h2>
                        <?php echo $series_name ?>
                    </h2>
                    <p>
                        <?php echo $series_desc ?>
                    </p>
                    <?php
                    include 'includes/cta_button.php';
                    ?>
                </div>

            </div>
            <div id="overlay"></div>
            <div id="overlay-right"></div>
        </div>
        <div id="backdrop_glass_reflection">
            <img src="<?php echo $img . $series_backdrop ?>" alt="">
            <div id="backdrop_glass_reflection_overlay"></div>
        </div>
        <?php
            }
        }
        ?>