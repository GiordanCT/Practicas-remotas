-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2022 a las 17:35:38
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registros1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_admi`
--

CREATE TABLE `cuenta_admi` (
  `id_admi` int(3) NOT NULL,
  `user` int(25) NOT NULL,
  `pass` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_prov`
--

CREATE TABLE `cuenta_prov` (
  `id_cliente` int(3) NOT NULL,
  `user` int(25) NOT NULL,
  `pass` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuenta_prov`
--

INSERT INTO `cuenta_prov` (`id_cliente`, `user`, `pass`) VALUES
(1, 1, 123456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_cuenta`
--

CREATE TABLE `datos_cuenta` (
  `ciclo` date NOT NULL,
  `duracion` datetime(6) NOT NULL,
  `recordatorio` datetime(6) NOT NULL,
  `moneda` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visualizar_pagos`
--

CREATE TABLE `visualizar_pagos` (
  `estadisticas` int(30) NOT NULL,
  `subtotal` int(30) NOT NULL,
  `monto_final` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta_admi`
--
ALTER TABLE `cuenta_admi`
  ADD PRIMARY KEY (`id_admi`);

--
-- Indices de la tabla `cuenta_prov`
--
ALTER TABLE `cuenta_prov`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuenta_admi`
--
ALTER TABLE `cuenta_admi`
  MODIFY `id_admi` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuenta_prov`
--
ALTER TABLE `cuenta_prov`
  MODIFY `id_cliente` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
