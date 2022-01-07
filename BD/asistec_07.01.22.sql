-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.31 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para mails
CREATE DATABASE IF NOT EXISTS `mails` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `mails`;

-- Volcando estructura para tabla mails.tm_productos
CREATE TABLE IF NOT EXISTS `tm_productos` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_nom` varchar(250) NOT NULL,
  `prod_precion` varchar(20) NOT NULL COMMENT 'Precio normal del producto',
  `prod_preciod` varchar(20) NOT NULL COMMENT 'Precio con descuento del producto',
  `prod_url` varchar(600) NOT NULL COMMENT 'Url del detalle del producto, para comprar el producto',
  `prod_img` varchar(600) NOT NULL COMMENT 'Url de la imagen del producto',
  `prod_cupon` varchar(20) NOT NULL,
  `prod_descrip` varchar(600) NOT NULL COMMENT 'Descripcion del producto',
  `fecha_crea` datetime DEFAULT NULL,
  `fecha_modi` datetime DEFAULT NULL,
  `fecha_elim` datetime DEFAULT NULL,
  `est` int(11) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla mails.tm_productos: 4 rows
/*!40000 ALTER TABLE `tm_productos` DISABLE KEYS */;
INSERT INTO `tm_productos` (`prod_id`, `prod_nom`, `prod_precion`, `prod_preciod`, `prod_url`, `prod_img`, `prod_cupon`, `prod_descrip`, `fecha_crea`, `fecha_modi`, `fecha_elim`, `est`) VALUES
	(1, 'Alimento Dogpro para perro adulto todos los tamanos sabor mix en bolsa de 20 kg', '4890', '4800', 'https://www.mercadolibre.com.ar/alimento-dogpro-para-perro-adulto-todos-los-tamanos-sabor-mix-en-bolsa-de-20kg/p/MLA10137982', 'https://ibb.co/bXXRZf8', '0', 'podrs cubrir las necesidades nutricionales y energéticas de tu perro. ', NULL, NULL, NULL, 0),
	(2, 'Peluche Perrita Lacey Chihuahua Mascota Barbie Interactivo', '5.799', '5000', 'https://articulo.mercadolibre.com.ar/MLA-1114218054-peluche-perrita-lacey-chihuahua-mascota-barbie-interactivo-_JM', 'https://ibb.co/m6hzk0j', '0', 'PERRITA DE PELUCHE LACEY DE 24CM INTERACTIVA CON SONIDO', NULL, NULL, NULL, 1),
	(3, 'Cepillo Doble Peine Madera Para Mascotas Dos En Uno Peq', '392', '380', 'https://articulo.mercadolibre.com.ar/MLA-847656763-cepillo-doble-peine-madera-para-mascotas-dos-en-uno-peq-_JM?searchVariation=53527699161', 'https://ibb.co/XCz9WpN', '0', 'Importancia de cepillar el pelo de tu mascota', NULL, NULL, NULL, 1),
	(4, 'fecha_elim', 'fecha_elim', 'fecha_elim', 'fecha_elim', 'fecha_elim', 'fecha_elim', 'fecha_elim', '2022-01-06 20:09:09', NULL, NULL, 1);
/*!40000 ALTER TABLE `tm_productos` ENABLE KEYS */;

-- Volcando estructura para tabla mails.tm_usuarios
CREATE TABLE IF NOT EXISTS `tm_usuarios` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nom` varchar(150) DEFAULT NULL,
  `usu_apep` varchar(150) DEFAULT NULL COMMENT 'Apellido paterno',
  `usu_apem` varchar(150) DEFAULT NULL COMMENT 'Apellido materno',
  `usu_correo` varchar(150) DEFAULT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `usu_pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`usu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla mails.tm_usuarios: 5 rows
/*!40000 ALTER TABLE `tm_usuarios` DISABLE KEYS */;
INSERT INTO `tm_usuarios` (`usu_id`, `usu_nom`, `usu_apep`, `usu_apem`, `usu_correo`, `fech_crea`, `fech_modi`, `fech_elim`, `est`, `rol_id`, `usu_pass`) VALUES
	(1, 'Juan', 'Chehin', 'Del monaco', 'chehinjuan@gmail.com', '2021-12-25 00:00:00', '2021-12-25 00:00:00', NULL, 1, 2, '123456'),
	(2, 'Jhon', 'Smith', '-', 'smith@example.com', NULL, NULL, NULL, 1, 1, '123456'),
	(3, 'Martin', 'Chehin', NULL, 'martin@example.coim', NULL, NULL, NULL, 0, 1, '123456'),
	(4, 'Jorge', 'Chajin', NULL, 'martin-chajin@hotmail.com', NULL, NULL, NULL, 1, 1, '123456'),
	(5, 'Diego', 'Maradona', 'Maradona', 'chehin238@gmail.com', '2022-01-07 11:00:00', '2022-01-07 11:00:00', NULL, 1, 1, '123456');
/*!40000 ALTER TABLE `tm_usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
