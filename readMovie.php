<?php
require_once(dirname(__FILE__) . '/include/config.php');
include_once(dirname(__FILE__) . '/templates/header.php');
require_once(dirname(__FILE__) . '/db.php');
if (isset($_GET['read'])) {
    $id = $_GET['read'];
    $read = true;
    $record = mysqli_query($connection, "SELECT * FROM movie WHERE id=$id");


    if (count($record) == 1 ) {
      $n = mysqli_fetch_array($record);
      $title = $n['title'];
      $poster = $n['poster'];
      $released_date = $n['released_date'];
      $abstract = $n['abstract'];
    }
  }
  ?>
<div class="container-fluid">
  <div class="page-header">
    <h3><?php echo $title;?></h3>
  </div>

    <div class="left">
      <img src="<?php echo FOLDER_AFFICHES_URL . $poster ?>" width='200px'>
      </div>
      <div class="right">
      <h3><?php echo $title?></h3>
      <p class="grey" ><?php echo $released_date;?></p>
      <p><?php echo $abstract;?></p>
    </div>



<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
