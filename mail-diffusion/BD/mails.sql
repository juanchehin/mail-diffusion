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
	(3, 'Martin', 'Chehin', NULL, NULL, NULL, NULL, NULL, 1, 1, '123456'),
	(4, 'Jorge', 'Chajin', NULL, 'martin-chajin@hotmail.com', NULL, NULL, NULL, 1, 1, '123456'),
	(16, NULL, NULL, NULL, 'tes3@test.com', '2021-12-27 09:48:24', NULL, NULL, 1, 1, '123456');
/*!40000 ALTER TABLE `tm_usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
