-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2026 a las 14:57:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sneaker_tier_list`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `zapato_id` int(11) NOT NULL,
  `puntuacion` tinyint(4) NOT NULL CHECK (`puntuacion` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `encuesta_id`, `zapato_id`, `puntuacion`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, '2026-10-28 13:42:25', '2026-10-28 13:42:25'),
(2, 1, 2, 4, '2026-10-28 13:42:26', '2026-10-28 13:42:26'),
(3, 1, 3, 4, '2026-10-28 13:42:28', '2026-10-28 13:42:28'),
(4, 1, 4, 3, '2026-10-28 13:42:29', '2026-10-28 13:42:29'),
(5, 1, 5, 4, '2026-10-28 13:42:30', '2026-10-28 13:42:30'),
(6, 1, 6, 4, '2026-10-28 13:42:30', '2026-10-28 13:42:30'),
(7, 1, 7, 4, '2026-10-28 13:42:32', '2026-10-28 13:42:32'),
(8, 1, 8, 3, '2026-10-28 13:42:32', '2026-10-28 13:42:32'),
(9, 1, 9, 4, '2026-10-28 13:42:33', '2026-10-28 13:42:33'),
(10, 1, 10, 5, '2026-10-28 13:42:34', '2026-10-28 13:42:34'),
(11, 1, 11, 3, '2026-10-28 13:42:34', '2026-10-28 13:42:34'),
(12, 1, 12, 2, '2026-10-28 13:42:35', '2026-10-28 13:42:35'),
(13, 1, 13, 3, '2026-10-28 13:42:36', '2026-10-28 13:42:36'),
(14, 1, 14, 4, '2026-10-28 13:42:38', '2026-10-28 13:42:38'),
(15, 1, 15, 4, '2026-10-28 13:42:38', '2026-10-28 13:42:38'),
(16, 1, 16, 4, '2026-10-28 13:42:39', '2026-10-28 13:42:39'),
(17, 1, 17, 4, '2026-10-28 13:42:40', '2026-10-28 13:42:40'),
(18, 1, 18, 3, '2026-10-28 13:42:41', '2026-10-28 13:42:41'),
(19, 1, 19, 3, '2026-10-28 13:42:41', '2026-10-28 13:42:41'),
(20, 1, 20, 3, '2026-10-28 13:42:42', '2026-10-28 13:42:42'),
(21, 2, 1, 4, '2026-10-28 13:47:43', '2026-10-28 13:47:43'),
(22, 2, 2, 3, '2026-10-28 13:52:42', '2026-10-28 13:52:42'),
(23, 2, 3, 4, '2026-10-28 13:52:43', '2026-10-28 13:52:43'),
(24, 2, 4, 3, '2026-10-28 13:52:45', '2026-10-28 13:52:45'),
(25, 2, 5, 4, '2026-10-28 13:52:46', '2026-10-28 13:52:46'),
(26, 2, 6, 5, '2026-10-28 13:52:47', '2026-10-28 13:52:47'),
(27, 2, 7, 3, '2026-10-28 13:52:48', '2026-10-28 13:52:48'),
(28, 2, 8, 4, '2026-10-28 13:52:49', '2026-10-28 13:52:49'),
(29, 2, 9, 3, '2026-10-28 13:52:50', '2026-10-28 13:52:50'),
(30, 2, 10, 4, '2026-10-28 13:52:51', '2026-10-28 13:52:51'),
(31, 2, 11, 5, '2026-10-28 13:52:51', '2026-10-28 13:52:51'),
(32, 2, 12, 4, '2026-10-28 13:52:52', '2026-10-28 13:52:52'),
(33, 2, 13, 5, '2026-10-28 13:52:52', '2026-10-28 13:52:52'),
(34, 2, 14, 3, '2026-10-28 13:52:53', '2026-10-28 13:52:53'),
(35, 2, 15, 5, '2026-10-28 13:52:54', '2026-10-28 13:52:54'),
(36, 2, 16, 4, '2026-10-28 13:52:55', '2026-10-28 13:52:55'),
(37, 2, 17, 4, '2026-10-28 13:52:56', '2026-10-28 13:52:56'),
(38, 2, 18, 3, '2026-10-28 13:52:57', '2026-10-28 13:52:57'),
(39, 2, 19, 4, '2026-10-28 13:52:57', '2026-10-28 13:52:57'),
(40, 2, 20, 3, '2026-10-28 13:52:58', '2026-10-28 13:52:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` enum('en_progreso','finalizada') DEFAULT 'en_progreso',
  `fecha_inicio` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_finalizacion` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id`, `usuario_id`, `estado`, `fecha_inicio`, `fecha_finalizacion`) VALUES
(1, 1, 'finalizada', '2026-10-28 13:42:20', '2026-10-28 13:42:42'),
(2, 2, 'finalizada', '2026-10-28 13:44:24', '2026-10-28 13:52:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `created_at`) VALUES
(1, 'Dilan', '2026-10-28 13:42:20'),
(2, 'antonio', '2026-10-28 13:44:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zapatos`
--

CREATE TABLE `zapatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zapatos`
--

INSERT INTO `zapatos` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'nike air force 1', 'clasico urbano versatil', '1_nike_af1.jpg'),
(2, 'air jordan 1', 'modelo legendario', '2_jordan_1.jpg'),
(3, 'adidas samba', 'zapatilla retro', '3_adidas_samba.jpg'),
(4, 'converse chuck taylor all star', 'clasico de lona', '4_converse_chuck.jpg'),
(5, 'adidas stan smith', 'diseno minimalista', '5_adidas_stan.jpg'),
(6, 'nike dunk low', 'silueta de baloncesto', '6_nike_dunk.jpg'),
(7, 'new balance 550', 'diseno retro', '7_nb_550.jpg'),
(8, 'adidas superstar', 'puntera de goma', '8_adidas_superstar.jpg'),
(9, 'nike air max 90', 'unidad air visible', '9_nike_am90.jpg'),
(10, 'vans old skool', 'clasico del skate', '10_vans_oldskool.jpg'),
(11, 'new balance 990', 'modelo premium', '11_nb_990.jpg'),
(12, 'adidas yeezy boost 350 v2', 'tecnologia boost', '12_yeezy_350.jpg'),
(13, 'puma suede', 'clasico de gamuza', '13_puma_suede.jpg'),
(14, 'new balance 574', 'silueta versatil', '14_nb_574.jpg'),
(15, 'nike cortez', 'modelo clasico', '15_nike_cortez.jpg'),
(16, 'air jordan 4', 'mallas laterales', '16_jordan_4.jpg'),
(17, 'adidas gazelle', 'zapatilla de gamuza', '17_adidas_gazelle.jpg'),
(18, 'new balance 9060', 'diseno voluminoso', '18_nb_9060.jpg'),
(19, 'reebok classic leather', 'silueta de cuero', '19_reebok_classic.jpg'),
(20, 'hoka clifton', 'zapatilla de running', '20_hoka_clifton.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_calificacion` (`encuesta_id`,`zapato_id`),
  ADD KEY `zapato_id` (`zapato_id`);

--
-- Indices de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `zapatos`
--
ALTER TABLE `zapatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `zapatos`
--
ALTER TABLE `zapatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`zapato_id`) REFERENCES `zapatos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD CONSTRAINT `encuestas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
