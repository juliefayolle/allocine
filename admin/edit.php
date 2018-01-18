<?php
require_once(dirname(__FILE__) . '/checkConnect.php');
include_once(dirname(__FILE__) . '/templates/header.php'); ?>
<p><a href="logout.php">Déconnexion</a></p>
</header>
<?php require_once(dirname(__FILE__) . '/../db.php');
if (isset($_GET['edit'])) {
		$id = $_GET['edit'];
		$update = true;
		$record = mysqli_query($connection, "SELECT * FROM movie WHERE id=$id");

		if (count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$title = $n['title'];
			$poster = $n['poster'];
      $released_date = $n['released_date'];
      $abstract = $n['abstract'];
		}
	}?>

<nav class="navbar">
  <ul>
    <li><a href="read.php">Liste film</a></li>
    <li><a href="create.php">Ajouter</a></li>
  </ul>
</nav>
<form class="ajouter"enctype="multipart/form-data"  action="update.php" method="post">
  <label for="title">Titre : </label>
  <input id="title" type="text" name="title" value="<?php echo $title;?>">
  <label for="poster">Affiche du film : </label>
  <input id="poster" type="file" name="poster" value="<?php echo $poster;?>">
  <label for="year">Année : </label>
  <input id="year" type="number" name="year" value="<?php echo $released_date;?>">
	<textarea id="editor" name="abstract" ><?php echo $abstract;?></textarea>
  <script>
  CKEDITOR.replace( 'editor', {
    height: 100,
    width: 600,
  });

  </script>
	<br>
	<input type="hidden" name="id" value="<?php echo $id; ?>">
  <input type="submit" name="update" value="Modifier">
</form>






<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
