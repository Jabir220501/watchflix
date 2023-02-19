<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actor</title>
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="./assets/js/script.js" defer></script>
</head>

<body>
    <?php
    include 'includes/header/header.php';
    ?>
    <div id="actor">
        <div id="actor-img_personal_info">
            <img src="https://www.themoviedb.org/t/p/w300_and_h450_bestv2/blKKsHlJIL9PmUQZB8f3YmMBW5Y.jpg" alt="">
            <h2 class="actor_name phone_actor_name">Sam Worthington</h2>
            <div id="personal_info">
                <h2>Personal Info</h2>
                <div id="personal_info_info">
                    <div class="personal_info_row known_for">
                        <h4>Known For</h4>
                        <span>Acting</span>
                    </div>
                    <div class="personal_info_row known_credits">
                        <h4>Known Credits</h4>
                        <span>65</span>
                    </div>
                    <div class="personal_info_row gender">
                        <h4>Gender</h4>
                        <span>Male</span>
                    </div>
                    <div class="personal_info_row birthday">
                        <h4>Birthday</h4>
                        <span>1976-08-02</span>
                    </div>
                    <div class="personal_info_row place_of_birth">
                        <h4>Place of Birth</h4>
                        <span>Godalming, Surrey, Engeland, UK</span>
                    </div>
                    <div class="personal_info_row also_known_as">
                        <h4>Also Known As</h4>
                        <span>Samuel Henry John "Sam" Worthington</span>
                    </div>
                </div>
            </div>
        </div>
        <div id="biography__most_viewer">
            <h2 class="actor_name desktop_actor_name">Sam Worthington</h2>
            <div id="actor_biography">
                <h2>Biography</h2>
                <p>Samuel Henry John Worthington (born 2 August 1976) is a British-Australian actor. He is best known
                    for playing Jake Sully in Avatar, Marcus Wright in Terminator Salvation, and Perseus in Clash of the
                    Titans and its sequel Wrath of the Titans. He later took more dramatic roles, appearing in The Debt
                    (2010), Everest (2015), Hacksaw Ridge (2016), The Shack (2017), Manhunt: Unabomber (2017), and
                    Fractured (2019).</p>
            </div>
            <?php
            include 'includes/movie_sliders/upcoming_movies.php';
            ?>
        </div>
    </div>
    <?php
    include 'includes/footer/footer.php';
    ?>
</body>

</html>