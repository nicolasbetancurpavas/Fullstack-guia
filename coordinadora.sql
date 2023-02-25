-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2023 a las 22:08:30
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coordinadora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_guia`
--

CREATE TABLE `datos_guia` (
  `id_guia` bigint(11) NOT NULL,
  `id_remitente` int(10) NOT NULL,
  `id_destinatario` int(10) NOT NULL,
  `nit_cliente` int(11) NOT NULL,
  `div_aliado` int(2) NOT NULL,
  `razon_social` varchar(35) NOT NULL,
  `poblacion_destino` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_guia`
--

INSERT INTO `datos_guia` (`id_guia`, `id_remitente`, `id_destinatario`, `nit_cliente`, `div_aliado`, `razon_social`, `poblacion_destino`) VALUES
(14128485512, 1004, 2004, 13543457, 2, 'Empresa Aliada ', 'P'),
(48624485512, 1002, 2002, 13543457, 2, 'Empresa Aliada ', 'P'),
(58128485512, 1003, 2003, 44552211, 123123, 'Empresa Aliada ', 'D'),
(87624485512, 1001, 2001, 44552211, 2, 'Empresa Aliada ', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinatario`
--

CREATE TABLE `destinatario` (
  `id_guia` bigint(11) NOT NULL,
  `id_destinatario` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `equipo` int(2) NOT NULL,
  `ciudad` varchar(25) NOT NULL,
  `lat` int(4) NOT NULL,
  `lgn` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `destinatario`
--

INSERT INTO `destinatario` (`id_guia`, `id_destinatario`, `nombre`, `telefono`, `direccion`, `equipo`, `ciudad`, `lat`, `lgn`) VALUES
(87624485512, 2001, 'carlos teves', '(333) 333', 'calle 55c #4', 31, 'medellin', 0, 1112),
(48624485512, 2002, 'patricia pavas', '12233', 'calle 12 #19', 25, 'pereira', 111, 111),
(58128485512, 2003, 'cristiano ronaldo', '(333) 333', 'calle -lorem', 22, 'medellin', 12312, 12312),
(14128485512, 2004, 'jan carls snider', '44-55-66', 'calle 12 #19', 23, 'pereira', 111, 222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitente`
--

CREATE TABLE `remitente` (
  `id_guia` bigint(11) NOT NULL,
  `id_remitente` int(10) NOT NULL,
  `nit` int(19) NOT NULL,
  `divv` int(2) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(22) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `equipo` int(2) NOT NULL,
  `ciudad` varchar(22) NOT NULL,
  `lag` varchar(4) NOT NULL,
  `lng` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `remitente`
--

INSERT INTO `remitente` (`id_guia`, `id_remitente`, `nit`, `divv`, `nombre`, `telefono`, `direccion`, `equipo`, `ciudad`, `lag`, `lng`) VALUES
(14128485512, 1004, 12321311, 2, 'patricia pavas', '44-55-66', 'calle 12', 23, 'pereira', 'xzz', 'xxx'),
(48624485512, 1002, 12321311, 2, 'juan carlos hernandez', '203-221-1', 'calle 12 #19', 23, 'pereira', 'xzz', 'aa'),
(58128485512, 1003, 901234567, 12, 'Laura Sanchez', '(333) 333', 'calle juan', 18, 'medellin', 'xxx', 'xxxx'),
(87624485512, 1001, 901234567, 12, 'Nicolas Betancur Pavas', '1232133-1231', 'calle -lorem', 31, 'Bogota', 'xxx', 'xxx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id_guia` bigint(11) NOT NULL,
  `id_unidades` int(10) NOT NULL,
  `estado_tracking` varchar(25) NOT NULL,
  `codigo_tracking` varchar(25) NOT NULL,
  `etiqueta_1d` varchar(30) NOT NULL,
  `etiqueta_2d` varchar(30) NOT NULL,
  `referencia` varchar(25) NOT NULL,
  `fecha_recogida` varchar(25) NOT NULL,
  `fecha_entrega` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id_guia`, `id_unidades`, `estado_tracking`, `codigo_tracking`, `etiqueta_1d`, `etiqueta_2d`, `referencia`, `fecha_recogida`, `fecha_entrega`) VALUES
(87624485512, 3001, 'entregado', '3001', ' ETD123456 ', 'TB451234', '123124341a', '  2023-02-18 08:00:00', '2023-02-20 10:00:00'),
(48624485512, 3002, '   En tránsito  ', '3002', ' ETD21137', ' ETD21137', 'q24adsa1212xcasc', '2023-02-20 10:00:00', '2023-02-16 09:30:00'),
(58128485512, 3003, 'entregado', '3003', ' ETD123456 ', ' ETD234567', '123124341a', '  2023-02-18 08:00:00', '2023-02-20 10:00:00'),
(14128485512, 3004, 'En tránsito  ', '3004', ' ETD21137', ' ETD21137', 'xxxxx', 'xxxxx', 'xxxxxxxxx');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_guia`
--
ALTER TABLE `datos_guia`
  ADD PRIMARY KEY (`id_guia`),
  ADD KEY `id_remitente` (`id_remitente`),
  ADD KEY `id_destinatario` (`id_destinatario`);

--
-- Indices de la tabla `destinatario`
--
ALTER TABLE `destinatario`
  ADD PRIMARY KEY (`id_destinatario`),
  ADD KEY `id_guia` (`id_guia`);

--
-- Indices de la tabla `remitente`
--
ALTER TABLE `remitente`
  ADD PRIMARY KEY (`id_guia`),
  ADD KEY `id_remitente` (`id_remitente`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD KEY `id_guia` (`id_guia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_guia`
--
ALTER TABLE `datos_guia`
  ADD CONSTRAINT `datos_guia_ibfk_1` FOREIGN KEY (`id_destinatario`) REFERENCES `destinatario` (`id_destinatario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_guia_ibfk_2` FOREIGN KEY (`id_remitente`) REFERENCES `remitente` (`id_remitente`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `destinatario`
--
ALTER TABLE `destinatario`
  ADD CONSTRAINT `destinatario_ibfk_1` FOREIGN KEY (`id_guia`) REFERENCES `datos_guia` (`id_guia`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `remitente`
--
ALTER TABLE `remitente`
  ADD CONSTRAINT `remitente_ibfk_1` FOREIGN KEY (`id_guia`) REFERENCES `datos_guia` (`id_guia`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `unidades_ibfk_1` FOREIGN KEY (`id_guia`) REFERENCES `datos_guia` (`id_guia`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
