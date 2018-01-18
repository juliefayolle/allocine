<?php
session_start();
require_once(dirname(__FILE__) . '/../db.php');


if (isset($_POST['login']) and isset($_POST['password'])){

$login = $_POST['login'];
$salt = "mDp159753";
$password = md5($_POST['password'].$salt);

$query = "SELECT * FROM `user` WHERE login ='$login' and password='$password'";

$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$count = mysqli_num_rows($result);

  if ($count == 1) {
  $_SESSION['login'] = $login;
  header('Location: read.php');

  } else {
   ?>
   <script type="text/javascript">
   alert("Login ou mot de passe incorrect");
   window.location.href = "index.php";
   </script>
   <?php
  }
}

?>
