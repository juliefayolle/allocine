<?php
require_once(dirname(__FILE__) . '/checkConnect.php');
include_once(dirname(__FILE__) . '/templates/header.php');
?>
<p><a href="logout.php">Déconnexion</a></p>
</header>

<nav class="navbar">
  <ul>
    <li><a href="read.php">Liste film</a></li>
    <li><a href="create.php">Ajouter</a></li>
  </ul>
</nav>
<form class="ajouter" enctype="multipart/form-data" action="add.php" method="post">
  <label for="title">Titre : </label>
  <input id="title" type="text" name="title" placeholder="Titre du film">
  <label for="poster">Affiche du film : </label>
  <input id="poster" type="file" name="poster">
  <label for="year">Année : </label>
  <input id="year" type="number" name="year" placeholder="Année de sortie">
  <textarea id="editor" name="abstract" ></textarea>
  <script>
  CKEDITOR.replace( 'editor', {
    height: 100,
    width: 600,
  });

  </script>
<br>
  <input type="submit" name="ajouter" value="Ajouter">
</form>






<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
