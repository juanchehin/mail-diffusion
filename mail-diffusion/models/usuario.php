<?php
    class Usuario extends Conectar {
        /* Insertar Correo Electronico en la Base de datos */
        public function insert_correo($usu_correo) { 
                    // fclose($file);

            $conectar = parent::conexion();
            parent::set_names();
            // $sql="insert into tm_usuarios (usu_correo,rol_id,fech_crea,est) values (?,1,now(),1)";
            $sql="insert into tm_usuarios(usu_correo,fech_crea,est) values ($usu_correo,now(),1)";
            $sql=$conectar->prepare($sql);
            // $sql->bindValue(1, $usu_correo);
            $sql->execute();
        }

        public function get_correo($usu_correo) {

            $conectar = parent::conexion();
            parent::set_names();

            $sql="select * from tm_usuarios where usu_correo=$usu_correo";

            $result = $conectar->prepare($sql); 
            $result->execute(); 
            $number_of_rows = $result->fetchColumn();

            $file = fopen("../logs/log.log", "w");
            fwrite($file, "count es : ");

            // fwrite($file, $stmt->num_rows);
            file_put_contents('../logs/log.log', print_r($number_of_rows, true));
 
            fclose($file);

            // $sql=$conectar->prepare($sql);
            // $sql->bindValue(1, $usu_correo);
            // $sql->execute();
            // $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);

           

            if($sql != 1){
                $resultado = 1;
            }else{
                $resultado = 2;
            }

            return $resultado;
        }
    }
?>