<?php
require_once(dirname(__FILE__) . '/include/config.php');
include_once(dirname(__FILE__) . '/templates/header.php');
require_once(dirname(__FILE__) . '/db.php');

$results_per_page = 20;

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

<div class="container-fluid">
  <div class="page-header">
    <h3>Tous les films : </h3>
  </div>
  <div class="container">
    <ul class="liste-film">

      <?php
      while ($row = mysqli_fetch_array($result)) { ?>
      <li>
        <a href="readMovie.php?read=<?php echo $row['id']; ?>"><img src="<?php echo FOLDER_AFFICHES_URL . $row['poster'] ?>"  width='100px'></a>
        <h3><?php echo $row['title'];?></h3>
        <p><?php echo $row['released_date'];?></p>
      </li>
      <?php } ?>

          </ul>
        </div>
        <?php

        for($page=1; $page<=$number_of_pages; $page++) {
          echo '<a href="movies.php?page=' . $page . '"> ' . $page . ' </a>';
        }
         ?>
      </div>


<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
