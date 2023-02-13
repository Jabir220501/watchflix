<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="./assets/js/script.js" defer></script>

    <script src="https://kit.fontawesome.com/779df3ae2b.js" crossorigin="anonymous"></script>
</head>

<body>
    <div id="slideshow-container">
        <?php
        include 'includes/header/header.php';
        include 'includes/hero_slider/hero_slider.php';
        ?>
    </div>

    <main>
        <?php
        include 'includes/movie_sliders/popular_movies.php';
        include 'includes/movie_sliders/new_releases.php';
        include 'includes/movie_sliders/upcoming_movies.php';
        include 'includes/movie_sliders/latest_show.php';
        ?>
    </main>
    <?php
    include 'includes/footer/footer.php';
    ?>

</body>

</html>