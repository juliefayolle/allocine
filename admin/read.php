<?php
require_once(dirname(__FILE__) . '/include/config.php');
include_once(dirname(__FILE__) . '/templates/header.php');
require_once(dirname(__FILE__) . '/../db.php');

$results_per_page = 5;

$sql = "SELECT * FROM movie ORDER BY UPPER(title) ASC";
$result = mysqli_query($connection, $sql);
$number_of_results = mysqli_num_rows($result);


$number_of_pages = ceil($number_of_results/$results_per_page);

if (!isset($_GET['page'])) {
  $page = 1;
} else {
  $page = $_GET['page'];
}

$this_page_first_result = ($page-1)*$results_per_page;

$sql = "SELECT * FROM movie ORDER BY UPPER(title) ASC LIMIT " . $this_page_first_result . ',' . $results_per_page;
$result = mysqli_query($connection, $sql);
?>

<p><a href="logout.php">Déconnexion</a></p>
</header>

<nav class="navbar">
  <ul>
    <li><a href="read.php">Liste film</a></li>
    <li><a href="create.php">Ajouter</a></li>
  </ul>
</nav>

<div class="container-fluid">
  <div class="page-header">
    <h3>Liste des films : </h3>
  </div>
<table class="table">
  <thead>
    <tr>
      <th width="15%" height="40px">Titre</th>
      <th width="15%">Affiche</th>
      <th width="15%">Année de sortie</th>
      <th width="45%">Synopsis</th>
      <th width="10%">Action</th>

    </tr>
  </thead>
  <tbody>
    <?php

while($row = mysqli_fetch_array($result)) {?>
  <tr>
  <th class="align-center" ><?php echo $row['title'];?></th>
  <td class="align-center" >
    <img src="<?php echo FOLDER_AFFICHES_URL . $row['poster'] ?>"  width='100px'>
  </td>
  <td class="align-center" ><?php echo $row['released_date'];?></td>
  <td><?php echo $row['abstract'];?></td>
  <td  class="icon">
    <a href="edit.php?edit=<?php echo $row['id']; ?>">
      <i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
    </a>
    <a href="delete.php?del=<?php echo $row['id']; ?>">
      <i class="fa fa-trash-o fa-2x" aria-hidden="true"></i>
    </a>
  </td>

  </tr>
<?php } ?>
</tbody>
</table>
<?php

for($page=1; $page<=$number_of_pages; $page++) {
  echo '<a href="read.php?page=' . $page . '"> ' . $page . ' </a>';
}
 ?>

<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
