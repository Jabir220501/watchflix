<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
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
                <h2>Dashboard</h2>
            </div>

            <div id="dashboard__profile">
                <?php include '../../includes/dashboard/topbar/profile.php' ?>
            </div>
        </div>
    </div>

    <?php include '../../includes/dashboard/sidebar.php';?>

    <div class="content">
        <h1>Work in Progress...</h1>
    </div>
</body>

</html>