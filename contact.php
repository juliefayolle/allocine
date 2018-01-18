<?php include_once(dirname(__FILE__) . '/templates/header.php'); ?>

 <fieldset class="contact">
  <form action="send.php" method="post">
    <label for="name">Nom, prénom : </label>
      <input id="name" type="text" name="name" placeholder="Ex : Jean Dupont"><br>
    <label for="email">Email : </label>
      <input id="email" type="email" name="email" placeholder="Ex : jean.dupont@gmail.com"><br>
    <label for="subject">Sujet : </label>
      <input id="subject" type="text" name="subject" placeholder="Ex : Films"><br>
    <label for="message">Message : </label>
    <textarea id="message" name="message" placeholder="Message..."></textarea><br>
    <input class="envoyer" type="submit" name="envoyer" value="Envoyer message" width="100px">
  </form>
</fieldset>

<?php include_once(dirname(__FILE__) . '/templates/footer.php'); ?>
