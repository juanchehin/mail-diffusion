<?php
require_once("../models/email.php");
$email = new Email();

switch ($_GET["op"]) {
    case "enviarCorreo":

        $email->enviar_correo();
        break;
}
?>
