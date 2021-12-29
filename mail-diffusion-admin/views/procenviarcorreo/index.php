<?php
    require_once("../../config/conexion.php");
    if (isset($_SESSION["usu_id"])){
?>

<!doctype html>
<html lang="zxx">
    <head>
        <?php require_once("../html/main-head.php") ?>

        <title>Enviar correos</title>
    </head>

    <body>

        <!-- Start Sidemenu Area -->
        <?php require_once("../html/main-menu.php") ?>
        <!-- End Sidemenu Area -->

        <!-- Start Main Content Wrapper Area -->
        <div class="main-content d-flex flex-column">

            <!-- Top Navbar Area -->
            <?php require_once("../html/main-navbar.php") ?>
            <!-- End Top Navbar Area -->
            
            <!-- Breadcrumb Area -->
            <div class="breadcrumb-area">
                <h1>Enviar correos</h1>

                <ol class="breadcrumb">
                    <li class="item"><a href="../home/"><i class='bx bx-home-alt'></i></a></li>

                    <li class="item">Enviar correos</li>
                </ol>
            </div>
            <!-- End Breadcrumb Area -->

            <div class="flex-grow-1"></div>

            <!-- Start Footer End -->
            <?php require_once("../html/footer.php") ?>
            <!-- End Footer End -->

        </div>
        <!-- End Main Content Wrapper Area -->
        

        <!-- Vendors Min JS -->
        <?php require_once("../html/main-js.php") ?>
        <script text="type/javascript" src="procenviarcorreo.js"></script>
    </body>
</html>

<?php
    }else{
        header("Location:".Conectar::ruta()."../../index.php");
    }
?>