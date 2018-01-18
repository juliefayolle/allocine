<?php
require_once(dirname(__FILE__) .  '/../include/config.php');
require_once(dirname(__FILE__) . '/../db.php');
if (isset($_POST['update'])) {
	$id = $_POST['id'];
	$title = $_POST['title'];
	$year = $_POST['year'];
	$abstract = $_POST['abstract'];

	if (!empty($_FILES['poster'])) {

	  $file_name = $_FILES['poster']['name'];
	  $file_path = FOLDER_AFFICHES_SERVER . $file_name;

	  move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
	}


	$sql = "UPDATE movie
	SET title='$title', poster='$file_name', released_date='$year', abstract='$abstract', updated_date= CURRENT_TIME()
	WHERE id='$id'";

	if(mysqli_query($connection, $sql)) {
		?>
		<script type="text/javascript">
	  alert("Film modifié avec succes");
	  window.location.href = "read.php";
	  </script>
	  <?php
	} else {
		?>
		<script type="text/javascript">
	  alert("Votre requête n'a pas pu aboutir");
	  window.location.href = "read.php";
	  </script>
	  <?php }
		}
		?>
