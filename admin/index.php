<?php include_once(dirname(__FILE__) . '/templates/header.php'); ?>
</header>
<div class="connect">
  <h2>Connexion :</h2>
  <form action="connect.php" method="POST">
    <label for="login">Login : </label>
      <input id="login" name="login" type="text">
    <br>
    <label for="password">Password : </label>
      <input id="password" name="password" type="password">
    <br>
    <input name="submit" type="submit">
  </form>
</div>


<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
