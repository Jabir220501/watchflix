<!DOCTYPE html>
<html lang="en">
<?php
include '../../database/connection.php';
?>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users</title>
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
                <h2>All Users</h2>
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
        <div class="container">
            <button class="add_movie"><a href="../add-movie.php/">Add User</a></button>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>User Type</th>
                    <th>User Image</th>
                    <th class="operation">Operations</th>
                </tr>
                <?php
                $sql = "SELECT * FROM `users`";
                $result = mysqli_query($conn, $sql);
                $img = "https://image.tmdb.org/t/p/original/";

                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>
                    <td>" . $row['id'] . "</td>
                    <td>" . $row['name'] . "</td>
                    <td>" . $row['email'] . "</td>
                    <td>" . $row['usertype'] . "</td>
                    <td>" . $row['user_image'] . "</td>
                    <td id='operation'>
                        <form action='../update-movie.php/' method='post' class='operations_form'> 
                            <input type='hidden' value ='" . $row['id'] . "' name='id'></input>
                            <input type='submit' name='submit' value='Update' class='update'></input>
                        </form>
                        <form action='../../../handlers/delete.php' method='post' class='operations_form'> 
                            <input type='hidden' value ='" . $row['id'] . "' name='id'></input>
                            <input type='submit' name='submit' value='Delete' class='delete'></input>
                        </form>
                    </td>
                </tr>";
                }
                ?>
            </table>
        </div>
    </div>
</body>

</html>