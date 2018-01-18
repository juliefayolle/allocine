<?php
require_once(dirname(__FILE__) . '/../db.php');
if (isset($_GET['del'])) {
	$id = $_GET['del'];
	mysqli_query($connection, "DELETE FROM movie WHERE id=$id");
	header('location: read.php');
}
