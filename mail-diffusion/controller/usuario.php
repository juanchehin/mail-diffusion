<?php
    /* Llamando a cadena de Conexion */
    require_once("../config/conexion.php");
    /* Llamando a la clase */
    require_once("../models/usuario.php");
    /* Inicializando Clase */
    $usuario = new Usuario();

    require_once("../models/email.php");
    $email = new Email();

    /* Opcion de solicitud de controller */
    switch($_GET["op"]){
        /* Servicio para Guardar Correo Electronico */
        case "guardarcorreo":
            $datos = $usuario->get_correo($_POST["usu_correo"]);            
            // Validacion para unicidad de correo electronico
            if($datos==1){
                $usuario->insert_correo($_POST["usu_correo"]);
                echo 1;
            }else{
                echo 2;
            }
            break;

        case "emailBienvenida":
            $email->email_bienvenida($_POST["usu_correo"]);
            break;
    }
?>