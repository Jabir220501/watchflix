<div id="slideshow">
    <div class="movie">
        <img src="https://image.tmdb.org/t/p/original//s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg" alt="">
        <div class="info">
            <div id="genre">
                <span>Science Fiction</span>
            </div>
            <div id="rate">
                <?php
                $rate = 5;
                for ($x = 0; $x < $rate; $x++) {
                    echo '<svg width="14" height="13" viewBox="0 0 14 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6.99998 2.61358L7.95838 5.36525L8.13368 5.86856H8.66665H11.5206L9.3106 7.62811L8.91738 7.9412L9.05748 8.42391L9.86844 11.2179L7.41982 9.56375L6.99998 9.28012L6.58014 9.56375L4.13152 11.2179L4.94248 8.42391L5.08258 7.9412L4.68936 7.62811L2.47939 5.86856H5.33331H5.86628L6.04158 5.36525L6.99998 2.61358Z" fill="white" stroke="white" stroke-width="1.5"/>
                            </svg>
                            ';
                }
                ?>
            </div>
            <h2>Godzilla vs. Kong</h2>
            <p>In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on
                a collision course that will see the two most powerful forces of nature on the planet collide in
                a spectacular battle for the ages.
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
    <img src="https://image.tmdb.org/t/p/original//s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg" alt="">
    <div id="backdrop_glass_reflection_overlay"></div>
</div>