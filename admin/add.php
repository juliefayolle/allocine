
<?php
require_once(dirname(__FILE__) .  '/../include/config.php');
require_once(dirname(__FILE__) . '/../db.php');


$title = $_POST['title'];
$year = $_POST['year'];
$abstract = $_POST['abstract'];

if (!empty($_FILES['poster'])) {

  $file_name = $_FILES['poster']['name'];
  $file_path = FOLDER_AFFICHES_SERVER . $file_name;

  move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
}

$sql = "INSERT INTO `movie` (`title`, `poster`, `abstract`, `released_date`)
VALUES ('$title', '$file_name', '$abstract', '$year')";


if(mysqli_query($connection, $sql)){
  ?>
  <script type="text/javascript">
  alert("Film ajouté avec succes");
  window.location.href = "read.php";
  </script>
  <?php
} else {
  ?>
  <script type="text/javascript">
  alert("Votre requête n'a pas pu aboutir");
  window.location.href = "create.php";
  </script>
  <?php } ?>
