<?php
    require_once("../../config/conexion.php");
    if (isset($_SESSION["usu_id"])){
?>

<!doctype html>
<html lang="es">
    <head>
        <?php require_once("../html/main-head.php") ?>

        <title>Mantenimiento producto</title>
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
                <h1>Mantenimiento de producto</h1>

                <ol class="breadcrumb">
                    <li class="item"><a href="../home/"><i class='bx bx-home-alt'></i></a></li>

                    <li class="item">Mantenimiento de producto</li>
                </ol>
            </div>
            <!-- End Breadcrumb Area -->

            <div class="card mb-30">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h3>Listado de Producto</h3>
                    <br>
                    <button onClick="nuevo()" class="btn btn-outline-primary" id="btnnuevo">Nuevo</button>
                </div>

                <div class="card-body">
                    <table id="producto_data" class="table display responsive nowrap">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Dscto</th>
                                <th>Cupon</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>

            <div class="flex-grow-1"></div>

            <?php require_once("mntmantenimiento.php")?>

            <!-- Start Footer End -->
            <?php require_once("../html/footer.php") ?>
            <!-- End Footer End -->

        </div>
        <!-- End Main Content Wrapper Area -->
        

        <!-- Vendors Min JS -->
        <?php require_once("../html/main-js.php") ?>
        <script type="text/javascript" src="mntproducto.js"></script>
    </body>
</html>

<?php
    }else{
        header("Location:".Conectar::ruta()."../../index.php");
    }
?>