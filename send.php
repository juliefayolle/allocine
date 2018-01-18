<?php
require_once(dirname(__FILE__) . '/include/config.php');
require_once(dirname(__FILE__) . '/db.php');

$retour= mail('allocine@gmail.com', 'Contact alloCiné - ' . $_POST['subject'], $_POST['message'] . ' ' . $_POST['name'], 'From : $_POST["email"]' );
/*Syntaxe de la fonction mail() :
mail(chaîne email_destinataire, chaîne Sujet, chaîne corps_du_message, chaîne options);*/
if($retour) {
  ?>
  <script type="text/javascript">
    alert("Votre message a bien été envoyé !");
    window.location.href = "index.php";
  </script>
  <?php
} else {
  ?>
  <script type="text/javascript">
    alert("Votre message n'a pas pu être envoyé");
    window.location.href = "contact.php";
  </script>
  <?php
}
