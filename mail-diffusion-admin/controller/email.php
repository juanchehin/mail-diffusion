<?php
require_once("../models/email.php");
$email = new Email();

$file = fopen("../logs/log.log", "w");
 
        fwrite($file, print_r("pasa email controlle 1 r"));
 
        fclose($file);

switch ($_GET["op"]) {
    case "enviarCorreo":
        $file = fopen("../logs/log.log", "w");
 
        fwrite($file, "pasa email controller");
 
        fclose($file);

        $email->enviar_correo();
        break;
}
?>
