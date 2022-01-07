<?php
require('class.phpmailer.php');
include("class.smtp.php");

// include '../.env.php';
include("../.env.php");
// echo $email;

$gCorreo= $email;
$gContrasena=$pass;

class Email extends PHPMailer{


    public function email_bienvenida($usu_correo){
        $this->IsSMTP();
        $this->Host = 'smtp.gmail.com.com';
        $this->Port = 587;
        $this->SMTPAuth = true;
        $this->Username = $this->gCorreo;
        $this->Password = $this->gContrasena;
        $this->From = $this->gCorreo;
        $this->FromName = "Bienvenido";
        $this->CharSet = 'UTF8';
        $this->addAddress($usu_correo);
        $this->WordWrap = 50;
        $this->IsHTML(true);
        $this->Subject = "Bienvenido";
        $cuerpo = file_get_contents('../public/template_welcome.html');
        $this->Body = $cuerpo;
        $this->AltBody = strip_tags("Descuentos");
        return $this->Send();
    }
}
?>