<div id="user">
    <?php
    session_start();
    
    if (isset($_SESSION["signedIn"])) {
        if ($_SESSION["signedIn"] == true) {
            echo "<img src='https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png' alt='pic'>
            <span>{$_SESSION["name"]}</span>
            <div class='auth_buttons'>
                <button id='logoutBtn'><a href='./handlers/logout.php'>Logout</a></button>
                </div
            ";
        } else {
            echo '<div class="auth_buttons">
                <button><a href="./auth/login">Login</a></button>
                <button id="signup"><a href="./auth/signup">Sign Up</a></button>
            </div>';
        }
    } else {
        echo '<div class="auth_buttons">
                <button><a href="./auth/login">Login</a></button>
                <button id="signup"><a href="./auth/signup">Sign Up</a></button>
            </div>';
    }
    ?>
</div>
