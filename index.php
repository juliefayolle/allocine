<?php
require_once(dirname(__FILE__) . '/include/config.php');
include_once(dirname(__FILE__) . '/templates/header.php');
?>
<div class="container-fluid">
  <div class="page-header">
    <h3>Derniers films ajoutés : </h3>
  </div>
  <div class="container">
    <ul class="dernier-film">
      <?php
      require_once(dirname(__FILE__) . '/db.php');
      $results = mysqli_query($connection, "SELECT * FROM movie ORDER BY created_date DESC LIMIT 0,4");
      while ($row = mysqli_fetch_array($results)) { ?>
      <li>
        <a href="readMovie.php?read=<?php echo $row['id']; ?>"><img src="<?php echo FOLDER_AFFICHES_URL . $row['poster'] ?>"  width='200px'></a>
        <h3><?php echo $row['title'];?></h3>
        <p><?php echo $row['released_date'];?></p>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>

<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
