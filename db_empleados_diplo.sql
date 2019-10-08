-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2019 a las 22:04:45
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_empleados_diplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`codigo`, `nombre`) VALUES
(1, 'Técnico'),
(2, 'Profesional'),
(3, 'Director'),
(4, 'Asistente'),
(5, 'Gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos_empleado`
--

CREATE TABLE `cargos_empleado` (
  `cargo` int(10) UNSIGNED NOT NULL,
  `empleado` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargos_empleado`
--

INSERT INTO `cargos_empleado` (`cargo`, `empleado`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`codigo`, `nombre`) VALUES
(1, 'Compras'),
(2, 'Marketing'),
(3, 'Innovación'),
(4, 'Talento humano'),
(5, 'Sostenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dptos_empleado`
--

CREATE TABLE `dptos_empleado` (
  `departamento` int(10) UNSIGNED NOT NULL,
  `empleado` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dptos_empleado`
--

INSERT INTO `dptos_empleado` (`departamento`, `empleado`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `edad` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombres`, `apellidos`, `telefono`, `direccion`, `edad`) VALUES
(1, 'Juan Alberto', 'Pérez Rengifo', '31234567', 'direccion', 23),
(2, 'Luis Albeiro', 'Arango', '1235612', 'direccion', 98),
(3, 'Leidy Johana', 'Berrío Alzate', '4325617', 'direccion', 43),
(4, 'Laura Tatiana', 'Agudelo ', '8716253', 'direccion', 31),
(5, 'Carlos Arturo', 'Gómez Lopera', '2341516', 'direccion', 18),
(6, 'Maria Carolina', 'Jimenez', '1234123', 'direccion', 20),
(7, 'Pedro Pablo', 'Gutierrez', '1912844', 'direccion', 23),
(8, 'Alejandra ', 'Gamboa Zuluaga', '7236452', 'direccion', 26),
(9, 'Juan Jose', 'Aristizabal', '16253446', 'direccion', 35),
(10, 'Paulina', 'Rubio', '3425645', 'direccion', 49);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `placa` varchar(6) NOT NULL,
  `empleado` int(10) UNSIGNED NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`placa`, `empleado`, `marca`, `modelo`) VALUES
('ABC123', 3, 'Mazda', 2009),
('CUC', 2, 'Renault', 2014),
('CUC456', 7, 'Volkswagen', 2018),
('POP432', 10, 'Audi', 2006),
('PUV321', 4, 'Renault', 2015);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `cargos_empleado`
--
ALTER TABLE `cargos_empleado`
  ADD KEY `Table_05_FKIndex1` (`cargo`),
  ADD KEY `Table_05_FKIndex2` (`empleado`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `dptos_empleado`
--
ALTER TABLE `dptos_empleado`
  ADD KEY `dptos_empleado_FKIndex1` (`departamento`),
  ADD KEY `dptos_empleado_FKIndex2` (`empleado`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `vehiculos_FKIndex1` (`empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cargos_empleado`
--
ALTER TABLE `cargos_empleado`
  ADD CONSTRAINT `cargos_empleado_ibfk_1` FOREIGN KEY (`cargo`) REFERENCES `cargos` (`codigo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cargos_empleado_ibfk_2` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dptos_empleado`
--
ALTER TABLE `dptos_empleado`
  ADD CONSTRAINT `dptos_empleado_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`codigo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `dptos_empleado_ibfk_2` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
