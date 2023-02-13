<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
    <div id="login__wrapper">
        <form class="login" method="post" action="../handlers/login.php">
            <h1 class="login__title">Sign In</h1>
            <div class="login__group">
                <input class="login__group__input" type="text" name="email" required placeholder="Email" />
            </div>
            <div class="login__group">
                <input class="login__group__input" type="password" name="password" required placeholder="Password" />
            </div>
            <?php
            if (isset($_GET["msg"])) {
                ?>
                <span style="color: red; font-size: 15px;">
                    <?php echo $_GET["msg"] ?>
                </span>
                <?php
            }
            ?>
            <button class="login__sign-in" type="submit">Sign In</button>
            <div class="login__secondary-cta"><a class="login__secondary-cta__text" href="#">Forgot Password</a><a
                    class="login__secondary-cta__text login__secondary-cta__text--need-help" href="signup">Sign Up</a>
            </div>
        </form>
    </div>
</body>

</html>