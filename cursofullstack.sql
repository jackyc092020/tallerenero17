-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2020 a las 18:02:14
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bictia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursofullstack`
--

CREATE TABLE `cursofullstack` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(50) NOT NULL,
  `profesion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tecno1_fav` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tecno2_fav` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tecno3_fav` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cursofullstack`
--

INSERT INTO `cursofullstack` (`id`, `nombre`, `apellido`, `telefono`, `profesion`, `tecno1_fav`, `tecno2_fav`, `tecno3_fav`) VALUES
(1, 'sofia', 'gonzalez', 23454323, 'diseño', 'html', 'css', ''),
(2, 'carlos', 'nieto', 4565456, 'diseño', 'js', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursofullstack`
--
ALTER TABLE `cursofullstack`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursofullstack`
--
ALTER TABLE `cursofullstack`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
