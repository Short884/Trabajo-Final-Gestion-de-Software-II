-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-11-2025 a las 20:13:10
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estudio-myc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente-expediente`
--

DROP TABLE IF EXISTS `cliente-expediente`;
CREATE TABLE IF NOT EXISTS `cliente-expediente` (
  `idCliente` varchar(5) NOT NULL,
  `idExpediente` varchar(5) NOT NULL,
  `demandante` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cliente-expediente`
--

INSERT INTO `cliente-expediente` (`idCliente`, `idExpediente`, `demandante`) VALUES
('1', '3', 'Afectado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipoPersona` varchar(55) DEFAULT NULL,
  `tipoDni` varchar(25) DEFAULT NULL,
  `apellidoRsocial` varchar(255) DEFAULT NULL,
  `nombres` varchar(55) DEFAULT NULL,
  `domicilio` varchar(55) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `localidad` varchar(55) DEFAULT NULL,
  `cpostal` varchar(55) DEFAULT NULL,
  `fNacimiento` varchar(50) DEFAULT NULL,
  `fAlta` varchar(50) DEFAULT NULL,
  `fBaja` varchar(50) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `tipoPersona`, `tipoDni`, `apellidoRsocial`, `nombres`, `domicilio`, `telefono`, `email`, `localidad`, `cpostal`, `fNacimiento`, `fAlta`, `fBaja`, `imagen`, `usuario`, `password`) VALUES
(1, 'Persona Fisica', '4444444', 'Belgrano', 'Juan Manuel', 'Las Rosas 4545', '341 4254521', 'belgrano12@gmail', 'San Lorenzo', 'S2200', '00/00/00', '28/10/2024', NULL, NULL, 'manuelbelgrano', '123456'),
(2, 'Persona Fisica', '54545444', 'Perez', 'Julian', 'San Fernando 4545', '3415418563', 'julian123@hotmail.com', 'Rosario', 'S2200', '12/01/99', '28/10/2024', NULL, 'cliente-1.jpg', NULL, NULL),
(3, 'Persona Fisica', '33100555', 'Gonzales', 'Mateo', 'Dr. Ghio', '341 4255555', 'mateo897@gmail.com', 'San Lorenzo', 'S2200', '24/08/2000', '28/10/2024', NULL, 'cliente-2', NULL, NULL),
(4, 'Persona Fisica', '25000125', 'Fernandez', 'Julieta', 'Av. San Martin 256', '3414589855', 'julieta78@hotmail.com', 'San Lorenzo ', 'S2200', '12/11/1998', '28/10/2024', NULL, 'cliente-3', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes`
--

DROP TABLE IF EXISTS `expedientes`;
CREATE TABLE IF NOT EXISTS `expedientes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipoExpediente` varchar(100) DEFAULT NULL,
  `nroExpediente` varchar(55) DEFAULT NULL,
  `juzgado` varchar(75) DEFAULT NULL,
  `caratura` varchar(75) DEFAULT NULL,
  `fInicio` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tipoJuicio` varchar(55) DEFAULT NULL,
  `aCargoDe` varchar(25) DEFAULT NULL,
  `fFin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fBaja` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `expedientes`
--

INSERT INTO `expedientes` (`id`, `tipoExpediente`, `nroExpediente`, `juzgado`, `caratura`, `fInicio`, `tipoJuicio`, `aCargoDe`, `fFin`, `estado`, `fBaja`) VALUES
(1, 'Judicial', '0001', '2', 'Caso nuevo', '2024-06-12', 'Politico', 'San Martin', '2024-11-28', 'Activo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juzgado`
--

DROP TABLE IF EXISTS `juzgado`;
CREATE TABLE IF NOT EXISTS `juzgado` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nroJuzgado` varchar(55) DEFAULT NULL,
  `nombreJuzgado` varchar(255) DEFAULT NULL,
  `juezTram` varchar(50) DEFAULT NULL,
  `secretario` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `juzgado`
--

INSERT INTO `juzgado` (`id`, `nroJuzgado`, `nombreJuzgado`, `juezTram`, `secretario`, `telefono`) VALUES
(2, '0001', 'San Lorenzo', 'San Martin', 'Jose ', '34762551441'),
(4, '0002', 'Arroyo Seco', 'Ricardo Flores', 'Paula Terarquini', '3489 0321 4567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','abogado') NOT NULL DEFAULT 'abogado',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `rol`) VALUES
(1, 'Administrador Sistema', 'admin@myc.com', 'admin123', 'admin'),
(2, 'Dr. Juan Perez', 'juan@myc.com', 'abogado123', 'abogado'),
(3, 'Prof. Walter Lauxmann', 'walterlauxmann@institutocedec.com', '123456', 'abogado');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
