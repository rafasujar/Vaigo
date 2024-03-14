-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2024 a las 12:40:27
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
-- Base de datos: `vaigo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `ID` int(11) NOT NULL,
  `ID_PAIS` int(11) NOT NULL,
  `CIUDAD` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`ID`, `ID_PAIS`, `CIUDAD`) VALUES
(1, 1, 'sevilla'),
(2, 1, 'malaga'),
(3, 1, 'cordoba'),
(4, 1, 'granada'),
(5, 1, 'almeria'),
(6, 1, 'cadiz'),
(7, 1, 'jaen'),
(8, 1, 'huelva'),
(9, 2, 'huesca'),
(10, 2, 'teruel'),
(11, 2, 'zaragoza'),
(12, 3, 'asturias'),
(13, 5, 'canarias'),
(14, 6, 'cantabria'),
(15, 8, 'albacete'),
(16, 8, 'ciudad-real'),
(17, 8, 'cuenca'),
(18, 8, 'guadalajara'),
(19, 8, 'toledo'),
(20, 7, 'avila'),
(21, 7, 'burgos'),
(22, 7, 'leon'),
(23, 7, 'palencia'),
(24, 7, 'salamanca'),
(25, 7, 'segovia'),
(26, 7, 'soria'),
(27, 7, 'valladolid'),
(28, 7, 'zamora'),
(29, 9, 'tarragona'),
(30, 9, 'barcelona'),
(31, 9, 'lerida'),
(32, 9, 'girona'),
(33, 17, 'alicante'),
(34, 17, 'castellon'),
(35, 17, 'valencia'),
(36, 10, 'badajoz'),
(37, 10, 'caceres'),
(38, 11, 'coruña'),
(39, 11, 'lugo'),
(40, 11, 'ourense'),
(41, 11, 'pontevedra'),
(42, 4, 'baleares'),
(43, 16, 'rioja'),
(44, 12, 'madrid'),
(45, 13, 'murcia'),
(46, 14, 'navarra'),
(47, 15, 'alava'),
(48, 15, 'vizcalla'),
(49, 15, 'guipuzcoa'),
(51, 18, 'ceuta'),
(52, 19, 'meilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excursion`
--

CREATE TABLE `excursion` (
  `ID` int(11) NOT NULL,
  `ID_CIUDAD` int(11) NOT NULL,
  `TIPO` varchar(30) DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `FEC_INICIO` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DURACION` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `excursion`
--

INSERT INTO `excursion` (`ID`, `ID_CIUDAD`, `TIPO`, `PRECIO`, `NOMBRE`, `FEC_INICIO`, `DURACION`) VALUES
(1, 1, 'visita-catedral', 23.5, 'visita catedral sevilla', '2024-01-29 10:45:27', '2024-04-22 23:00:00'),
(2, 1, 'kayak', 29.95, 'kayaking en sevilla', '2024-03-20 08:45:00', '2024-03-20 10:15:00'),
(3, 1, 'visita-alcaraz', 10.95, 'visita real alcaraz sevilla', '2024-01-29 15:00:00', '2024-01-29 17:00:00'),
(4, 2, 'puenting', 25, 'puenting malaga', '2024-05-13 07:30:00', '2024-05-13 08:00:00'),
(5, 2, 'visita-castillo', 32.95, 'visita castillo gibralfaro', '2024-03-02 16:00:00', '2024-03-02 18:00:00'),
(6, 2, 'visita-catedral', 30, 'visita catedral malaga', '2024-01-29 11:00:55', '0000-00-00 00:00:00'),
(7, 3, 'visita-juderia', 12.49, 'visita juderia cordoba', '2024-01-29 11:02:18', '0000-00-00 00:00:00'),
(8, 3, 'visita-centro-historico', 10.3, 'visita centro historico antigu', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(9, 3, 'escalada', 40, 'escalada espiel cordoba ', '2024-01-29 11:54:10', '0000-00-00 00:00:00'),
(10, 4, 'visita-alambra', 22.5, 'visita alambra granada', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(11, 4, 'visita-albayzin', 29.49, 'visita albayzin granada', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(12, 4, 'barranquismo', 35, 'barranquismo lentegui granada', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(13, 5, 'rappel', 20, 'rappel abrucena almeria', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(14, 5, 'visita-cabo.gata', 15.49, 'visita cabo gata almeria', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(15, 5, 'visita-alcazaba', 34.99, 'visita conjunto alcazaba almer', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(16, 6, 'visita-catedral', 28.5, 'visita catedral cadiz ', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(17, 6, 'senderismo', 35.5, 'senderismo benamahoma cadiz', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(18, 6, 'visita-playa-victoria', 10.2, 'visita playa victoria cadiz', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(19, 7, 'escalada-cerro-golondrina', 45.6, 'escalada cedro golondrina jaen', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(20, 7, 'visita-catedral', 20.7, 'visita catedral jaen', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(21, 7, 'senderismo-sierra-cazorla', 50, 'senderismo sierra cazorla jaen', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(22, 8, 'visita-muelle-tinto', 23.99, 'visita muelle tinto ', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(23, 8, 'visita-plaza-monjas', 30, 'visita plaza monjas huelva', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(24, 8, 'paracaidismo', 120, 'paracaidismo aeronave la julia', '2024-01-29 11:24:47', '0000-00-00 00:00:00'),
(25, 9, 'visita-parque', 23.5, 'visita parque ordesa huesca', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(26, 9, 'visita-muralla', 30.7, 'visita muralla finestres huesc', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(27, 9, 'senderismo selva', 22.8, 'senderismo selva oza huesca', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(28, 10, 'visita-museo', 45, 'visita museo minero teruel', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(29, 10, 'visita-catedral', 12.5, 'visita catedral amantes teruel', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(30, 10, 'senderismo', 10.5, 'senderismo ruta parrizal becei', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(31, 11, 'visita-basilica', 34.9, 'visita basilica zaragoza', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(32, 11, 'visita-plaza', 32.9, 'visita plaza seo lavador zarag', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(33, 11, 'senderismo', 34.7, 'senderismo ruta hoz seca zarag', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(34, 12, 'visita-museo', 35, 'visita museo molinos asturias', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(35, 12, 'canoa', 30, 'canoa lago ccovadonga asturias', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(36, 12, 'visita iglesia', 12, 'visita iglesia santa maria nar', '2024-01-29 12:05:00', '0000-00-00 00:00:00'),
(38, 42, 'buceo', 70, 'buceo islas baleares', '2024-01-29 12:31:25', '0000-00-00 00:00:00'),
(39, 42, 'visita-alcudia', 23, 'visita alcudia old town balear', '2024-01-29 12:31:38', '0000-00-00 00:00:00'),
(40, 42, 'visita-castillo', 34, 'visita castillo bellver balear', '2024-01-29 12:31:47', '0000-00-00 00:00:00'),
(41, 13, 'visita-volcan', 70, 'visita volcan teide canarias', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(42, 13, 'apnea', 23, 'apnea islas canarias', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(43, 13, 'senderismo', 45, 'senderismo timanfaya islas can', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(44, 14, 'visita-gaudi', 23, 'visita capricho gaudi cantabri', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(45, 14, 'visita palacio', 65, 'visita palacio magdalena canta', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(46, 14, 'visita-cabo', 10, 'visita cabo mayor cantabria', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(47, 20, 'vista-catedral', 12, 'visita catedral avila', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(48, 20, 'fotografia', 69.99, 'fotografia muralla avila', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(49, 20, 'vista-postes', 45, 'visita postes avila', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(50, 21, 'senderismo-cartuja', 25, 'senderismo cartuja miraflores ', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(51, 21, 'visita-catedral', 15, 'visita catedral burgos', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(52, 21, 'visita-monasterio', 23, 'visita monasterio huelgas burg', '2024-01-29 12:41:46', '0000-00-00 00:00:00'),
(53, 22, 'visita-catedral', 12.49, 'visita catedral basilica leon', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(54, 22, 'visita-templo', 15, 'visita templo expiatorio leon', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(55, 22, 'senderismo-arco', 10, 'sederismo arco leon ', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(56, 23, 'senderismo-pantano', 23, 'senderismo pantanos palencia', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(57, 23, 'visita-monumento', 6, 'visita cristo otero palencia', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(58, 23, 'visita-catedral', 12, 'vista catedral palencia', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(59, 24, 'visita-monumento', 10, 'visita leronimus salamanca', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(60, 24, 'visita-plaza', 5, 'visita plaza mayor salamanca', '2024-01-31 09:25:25', '0000-00-00 00:00:00'),
(61, 24, 'rafting', 23.5, 'rafting cciudad rodrigo salama', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(62, 25, 'visita-monumento', 7, 'visita alcaraz segobia', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(63, 25, 'visita-aqueducto', 7, 'visita aqueducto segobia', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(64, 25, 'senderismo-parque', 22, 'senderismo parque natural hoce', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(65, 26, 'buceo-laguna', 20, 'buceo laguna negra soria', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(66, 26, 'senderismo-fuentona', 15, 'senderismo fuentona soria', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(67, 26, 'visita-cañon', 14, 'visita cañon rio lobos soria', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(68, 27, 'visita-iglesia', 8, 'visita santa maria antigua val', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(69, 27, 'paseo-globo', 30, 'paseo globo ciudad valladolid', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(70, 27, 'visita-plaza', 5, 'visita plaza mayor valladolid', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(71, 28, 'visita-iglesia', 12, 'visita iglesia santa maria nue', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(72, 28, 'senderismo-parque', 17, 'senderismo parque sanabria zam', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(73, 28, 'visita-catedral', 12, 'vista catedral de zamora', '2024-01-31 09:38:03', '0000-00-00 00:00:00'),
(74, 15, 'senderismo-rio', 15, 'senderismo nacimiento rio mund', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(75, 15, 'visita-bodegas', 23, 'visita bodegas aldonza albacet', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(76, 15, 'paseo', 3, 'paseo pasaje lodares albacete', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(77, 16, 'safari-parque', 45, 'safari parque cabañeros ciudad', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(78, 16, 'visita-parque', 4, 'visita parque gasset ciudad re', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(79, 16, 'visita.iglesia', 12, 'visita iglesia san pedro ciuda', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(80, 17, 'paseo', 2, 'paseo puente san pablo cuenca', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(81, 17, 'visita-catedral', 13, 'vissita catedral cuenca ', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(82, 17, 'visita-ciudad', 35, 'visita ciudad amurallada cuenc', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(83, 18, 'vista-campo', 23, 'visita campo lavanda guadalaja', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(84, 18, 'senderismo-campo', 12, 'senderismo campo atienza guada', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(85, 18, 'montañismo-campillo', 34, 'montañismo campillo de ranas g', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(86, 19, 'mirador', 12, 'mirador valle toledo', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(87, 19, 'visita-monumento', 23, 'visita monumento primada toled', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(88, 19, 'visita-monasterio', 25, 'visita monasterio san juan de ', '2024-01-31 09:52:14', '0000-00-00 00:00:00'),
(89, 30, 'visita-palacio', 12.49, 'visita palacio musica barcelon', '2024-01-31 09:56:14', '0000-00-00 00:00:00'),
(90, 30, 'visita-basilica', 23, 'visita basilica sagrada famili', '2024-01-31 09:56:14', '0000-00-00 00:00:00'),
(91, 30, 'visita-parque', 30, 'visita parque guell barcelona', '2024-01-31 09:56:14', '0000-00-00 00:00:00'),
(92, 32, 'visita-baños', 14, 'visita baños arabes girona', '2024-01-31 09:56:14', '0000-00-00 00:00:00'),
(93, 32, 'visita-catedral', 12, 'visita catedral girona', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(94, 32, 'paseo-muralla', 30, 'paseo muralla girona', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(95, 31, 'visita-castillo', 32, 'visita castillo templario', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(96, 31, 'visita-catedral', 12, 'visita catedral seu vella leri', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(97, 31, 'paso-parque', 3, 'paseo parque mitjana lerida', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(98, 29, 'visita-anfiteatro', 12, 'visita anfiteatro tarraco tarr', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(99, 29, 'visita-circo', 23, 'visita circo romano tarragona', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(100, 29, 'visita-catedral', 13, 'visita catedral tarragona', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(101, 36, 'senderismo-alcazaba', 23, 'senderismo alcazabar badajoz', '2024-01-31 10:41:08', '0000-00-00 00:00:00'),
(102, 36, 'visita-monumento', 10, 'visita puertas palmas badajoz', '2024-01-31 12:33:01', '0000-00-00 00:00:00'),
(103, 36, 'visita-plaza', 3, 'visita plaza alta badajoz', '2024-01-31 12:33:01', '0000-00-00 00:00:00'),
(104, 37, 'visita-monumento', 4, 'visita monumento arco estrella', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(105, 37, 'visita-plaza', 3, 'visita plaza mayor caceres', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(106, 37, 'visita-torre', 20, 'visita torre bujaco caceres', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(107, 38, 'senderismo-monte', 5, 'senderismo monte san pedro cor', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(108, 38, 'visita-plaza', 3, 'visita plaza maria coruña', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(109, 38, 'montañismo', 25, 'montañismo torre hercules coru', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(110, 39, 'vissita-monumento', 20, 'visita monumento murallas roma', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(111, 39, 'visita-museo', 15, 'visita museo provincial lugo', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(112, 39, 'visita-catedral', 10, 'visita catedral lugo', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(113, 40, 'turismo-ruta', 10, 'turismo ruta puentes romanos o', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(114, 40, 'visita-plaza', 3, 'visita plaza mayor ourense', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(115, 40, 'visita catedral', 8, 'visita catedral san martin our', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(116, 41, 'visita poblado', 20, 'visita poblado heroes combarro', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(117, 41, 'senderismo-monumento', 20, 'senderismo monumento castro sa', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(118, 41, 'visita-iglesia', 12, 'visita iglesia virgen peregrin', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(119, 44, 'vistar-monumento', 4, 'visitar monumento gran via mad', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(120, 44, 'visitar-palacio', 30, 'visitar palacio real madrid', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(121, 44, 'visitar-plaza', 3, 'visitar plaza mayor madrid', '2024-01-31 12:48:53', '0000-00-00 00:00:00'),
(122, 45, 'visita-casino', 13, 'visita casino murcia', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(123, 45, 'senderismo-ruta', 5, 'senderismo ruta murcia', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(124, 45, 'visita-casino', 20, 'visita casino murcia', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(125, 46, 'senderismo', 10, 'selva irati navarra', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(126, 46, 'visita-palacio', 23, 'visita palacio olite fitero na', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(127, 46, 'visita-poblado', 12, 'visita poblado ujue navarra', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(128, 47, 'visita-bodega', 20, 'visita bodega baigorri alava', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(129, 47, 'visita-catedral', 21, 'visita catedral santa maria al', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(130, 47, 'visita-museo', 20, 'visita museo bellas artes alav', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(131, 48, 'puenting', 45, 'puenting puente colgante vizca', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(132, 48, 'visita-poblado', 5, 'visita poblado casco antiguo v', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(133, 48, 'visita-plaza', 5, 'visita plaza nueva vizcalla', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(134, 49, 'visita-poblado', 5, 'visita poblado hordarribia gui', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(135, 49, 'visita-monumento', 9, 'visita monumento peine viento ', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(136, 49, 'senderismo', 10, 'senderismo monte urgull guipuz', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(137, 43, 'visita-monasterio', 20, 'visita monasterio yuso rioja', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(138, 43, 'visita-plaza', 3, 'visita plaza mercado logrono r', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(139, 43, 'visita-poblado', 4, 'visita poblado ezcaray rioja', '2024-02-01 08:07:29', '0000-00-00 00:00:00'),
(140, 33, 'visita-paseo', 5, 'visita paseo explanada alicant', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(141, 33, 'visita-puerto', 10, 'visita puerto alicante', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(142, 33, 'visita-monumento', 19, 'visita monumento plaza luceros', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(143, 34, 'baño-termal', 14, 'baños termales montanejos cast', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(144, 34, 'visita-poblado', 5, 'visita poblado casco antiguo c', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(145, 34, 'visita-murallas', 20, 'visita murallas morella castel', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(146, 35, 'visita-ciudad', 20, 'visita ciudad artes ciencias v', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(147, 35, 'visita-monumento', 30, 'visita monumento lonja valenci', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(148, 35, 'visita-catedral', 20, 'visita catedral miguelete vale', '2024-02-01 08:15:45', '0000-00-00 00:00:00'),
(149, 51, 'visita-monumento', 22.9, 'visita casa dragones ceuta', '2024-02-16 11:08:20', '0000-00-00 00:00:00'),
(150, 51, 'visita-muralla', 34.89, 'visita murallas reales ceuta', '2024-02-16 11:08:20', '0000-00-00 00:00:00'),
(151, 51, 'visita-parque', 10.7, 'visita parque maritimo ceuta', '2024-02-16 11:08:20', '0000-00-00 00:00:00'),
(152, 52, 'visita-poblado', 2.8, 'visita melilla la vieja', '2024-02-16 11:08:20', '0000-00-00 00:00:00'),
(153, 52, 'visita-parque', 3.9, 'vista parque hernandez melilla', '2024-02-16 11:08:20', '0000-00-00 00:00:00'),
(154, 52, 'visita-monumento', 5.78, 'visita triangulo de oro melill', '2024-02-16 11:08:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialviajes`
--

CREATE TABLE `historialviajes` (
  `ID` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_VIAJE` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `NUMPERSONAS` int(11) DEFAULT NULL,
  `Precio_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_itinerario`
--

CREATE TABLE `historial_itinerario` (
  `id` int(11) NOT NULL,
  `Id_historial_viajes` int(11) NOT NULL,
  `id_itnerario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `ID_CIUDAD` int(11) NOT NULL,
  `ID_TIPOHOTEL` int(11) NOT NULL,
  `PRECIO` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`ID`, `NOMBRE`, `ID_CIUDAD`, `ID_TIPOHOTEL`, `PRECIO`) VALUES
(1, 'silken al-andalus palace', 1, 1, 70.47),
(2, 'lukanda hospec', 1, 3, 85),
(3, 'hotel con curro', 2, 1, 79),
(4, 'terraza del limonar', 2, 4, 21.6),
(5, 'hotel cordoba center', 3, 1, 67.5),
(6, 'plaza de las tendillas', 3, 6, 23),
(7, 'hotel saray', 4, 1, 70),
(8, 'camping reina isabel', 4, 7, 32.7),
(9, 'barcelo cabo de gata', 5, 1, 81),
(10, 'san miguel playa almeria', 5, 10, 85.5),
(11, 'hotel francia y paris ', 6, 1, 68),
(12, 'hostal casa nautilus', 6, 3, 45),
(13, 'hotel condestable iranzo', 7, 1, 75),
(14, 'cabaña garrote gordo', 7, 7, 75.45),
(15, 'exe tartessos', 8, 1, 70.66),
(16, 'apartamentos centro paseo mari', 8, 6, 95),
(17, 'pura vida pirineos', 9, 1, 55),
(18, 'hotel la casueña', 9, 9, 100),
(19, 'el mudayyan', 10, 1, 35),
(20, 'apartamento alcaraz', 10, 8, 70.2),
(21, 'silken reino de aragon', 11, 1, 75),
(22, 'sabinas el pilar', 11, 2, 72),
(23, 'parador de corias ', 12, 1, 73.95),
(24, 'camping cudillero', 12, 7, 70.4),
(25, 'sands beach resort', 13, 10, 27),
(26, 'hotel el tejar', 13, 1, 79),
(27, 'sercotel bahia suites ', 14, 1, 53.55),
(28, 'le petit boutique ', 14, 9, 55),
(29, 'parador de albacete', 15, 1, 65.45),
(30, 'villa rossi', 15, 6, 35),
(31, 'hotel santa cecilia', 16, 1, 75.3),
(32, 'vallehermoso', 16, 4, 69.5),
(33, 'hotel victoria', 17, 1, 51),
(34, 'camping caravaning cuenca ', 17, 7, 70),
(35, 'casa rural don rosendo', 18, 8, 33),
(36, 'hotel pax guadalajara', 18, 1, 81.67),
(37, 'eurostars toledo', 19, 1, 59),
(38, 'apartamento el pozo amargo ', 19, 6, 44.1),
(39, 'palacio de los velada ', 20, 1, 55.8),
(40, 'casa rural la tenada', 20, 2, 100),
(41, 'crisol puerta de burgos ', 21, 1, 50),
(42, 'camping fuentes blancas', 21, 7, 54),
(43, 'hotel real colegiatas san isid', 22, 1, 65),
(44, 'palacio real hostel', 22, 10, 19),
(45, 'hotel don rodrigo', 23, 1, 69),
(46, 'alda palencia catedral', 23, 6, 57),
(47, 'gran hotel corona sol', 24, 1, 40.5),
(48, 'hospedium plaza mayor salamanc', 24, 4, 55),
(49, 'exe casa de los linajes ', 25, 1, 60),
(50, 'el silencio boutique room', 25, 9, 63.83),
(51, 'hotel alda ciudad de soria', 26, 1, 42.75),
(52, 'camping fuente de la teja', 26, 7, 22),
(53, 'hotel mozart', 27, 1, 65),
(54, 'ferrari suites', 27, 6, 74.61),
(55, 'ares hotel ', 28, 1, 61.75),
(56, 'casa marta', 28, 5, 53),
(57, 'imperial tarraco 4', 29, 1, 94),
(58, 'villa garden', 29, 3, 158),
(59, 'barcelo sants ', 30, 1, 103.9),
(60, 'Jardinets De Gràcia by The 5ve', 30, 6, 141.5),
(61, 'hotel estamariu', 31, 1, 77.56),
(62, 'casa vacacional camarasa ', 31, 2, 55),
(68, 'hotel nord 1901', 32, 1, 101.64),
(69, 'bypillow the bloom', 32, 1, 45.66),
(70, 'port alicante ', 33, 10, 68.92),
(71, 'les monges palace ', 33, 9, 58),
(72, 'intur castellon', 34, 1, 60),
(73, 'iberflat apartamentos trinidad', 34, 6, 63),
(74, 'ilunion aqua 4', 35, 1, 84),
(75, 'camping playa tropicana', 35, 7, 21.5),
(76, 'hotel badajoz center', 36, 1, 77),
(77, 'pension galicia', 36, 2, 35),
(78, 'gran hotel don manuel', 37, 1, 70),
(79, 'apartamentos turisticos majma', 37, 6, 49),
(80, 'hotel riazor ', 38, 1, 69),
(81, 'albergue cerceda', 38, 4, 95),
(82, 'hotel torre de nuñez', 39, 1, 48),
(83, 'sanforo apt', 39, 3, 40),
(84, 'carris cardenal quevedo', 40, 1, 70),
(85, 'a casiña casa rural ', 41, 8, 63),
(86, 'gran sagitario', 42, 1, 100),
(87, 'hostal rosell boutique', 42, 3, 56.75),
(88, 'hotel plaza de la paz', 43, 1, 65),
(89, 'hostal lobrega', 43, 3, 51),
(90, 'ilunion alcala norte', 44, 1, 87.72),
(91, 'moral aapartamentos malasaña', 44, 6, 108),
(92, 'hotel nelva ', 45, 1, 67.5),
(93, 'puerto de mazarron', 45, 2, 37),
(94, 'hotel ciudadela pamplona', 46, 1, 57.92),
(95, 'camping etxarri', 46, 7, 53.8),
(96, 'nirea hotel', 47, 1, 70),
(97, 'kora green city ', 47, 6, 69),
(98, 'catalonia gran via', 48, 1, 90),
(99, 'casa rural vizcalla ', 48, 8, 53),
(100, 'hotel tres rayes san sebastian', 49, 1, 55.48),
(101, 'hotel villa katalina by intur', 49, 1, 63);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerario`
--

CREATE TABLE `itinerario` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Cometario` varchar(255) DEFAULT NULL,
  `puntuacion` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itinerario`
--

INSERT INTO `itinerario` (`ID`, `Nombre`, `Cometario`, `puntuacion`) VALUES
(1, 'itinerario para Málaga', NULL, 4.8),
(2, 'itinerario para Almería', NULL, 4.9),
(3, 'itinerario para Cádiz', NULL, 3.9),
(4, 'itinerario para Córdoba', NULL, 4.5),
(5, 'itinerario para Granada', NULL, 5),
(6, 'itinerario para Huelva', NULL, 4.56),
(7, 'itinerario para Jaén', NULL, 3.76),
(8, 'itinerario para Sevilla', 'Alberto: Me encanta Sevilla, VIVA ESPAÑA\r\n', 4.89),
(9, 'itinerario para Huesca', NULL, 4.5),
(10, 'itinerario para Teruel', NULL, 5),
(11, 'itinerario para Zaragoza', NULL, 4.6),
(12, 'itinerario para Ávila', NULL, 3.9),
(13, 'itinerario para Burgos', NULL, 4.7),
(14, 'itinerario para León', NULL, 3.5),
(15, 'itinerario para Palencia', NULL, 4.1),
(16, 'itinerario para Salamanca', NULL, 4.1),
(17, 'itinerario para Segovia', NULL, 4.9),
(18, 'itinerario para Soria', NULL, 4.57),
(19, 'itinerario para Valladolid', NULL, 3.5),
(20, 'itinerario para Zamora', NULL, 2.1),
(21, 'itinerario para Albacete', NULL, 4.7),
(22, 'itinerario para ciudad real', NULL, 3.9),
(23, 'itinerario para cuenca', NULL, 3.9),
(24, 'itinerario para Guadalajara', NULL, 3.6),
(25, 'itinerario para Toledo', NULL, 4.32),
(26, 'itinerario para Barcelona', NULL, 4.2),
(27, 'itinerario para Girona', NULL, 4.5),
(28, 'itinerario para Lérida', NULL, 5),
(29, 'itinerario para Tarragona', NULL, 3.5),
(30, 'itinerario para Ceuta', NULL, 2.1),
(31, 'itinerario para Cantabria', NULL, 4.6),
(32, 'itinerario para Madrid', NULL, 5),
(33, 'itinerario para Navarra', NULL, 4.8),
(34, 'itinerario para Alicante', NULL, 4.1),
(35, 'itinerario para Castellón', NULL, 4.6),
(36, 'itinerario para Valencia', NULL, 5),
(37, 'itinerario para Badajoz', NULL, 3.6),
(38, 'itinerario para Caceres', NULL, 4.9),
(39, 'itinerario para a Coruña', NULL, 3.8),
(40, 'itinerario para Lugo', NULL, 4.5),
(41, 'itinerario para Ourense', NULL, 4.1),
(42, 'itinerario para Pontevedra', NULL, 4.3),
(43, 'itinerario para islas baleares', NULL, 5),
(44, 'itinerario para islas canarias', NULL, 5),
(45, 'itinerario para la rioja', NULL, 3.1),
(46, 'itinerario para Melilla', NULL, 2),
(47, 'itinerario para Álava', NULL, 4.5),
(48, 'itinerario para Guipúzcoa', NULL, 3.1),
(49, 'itinerario para Vizcaya', NULL, 3.6),
(50, 'itinerario para Asturias', NULL, 4.9),
(51, 'itinerario para Murcia', NULL, 3.8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerario_excursiones`
--

CREATE TABLE `itinerario_excursiones` (
  `id` int(11) NOT NULL,
  `Id_itinerario` int(11) NOT NULL,
  `id_excursion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itinerario_excursiones`
--

INSERT INTO `itinerario_excursiones` (`id`, `Id_itinerario`, `id_excursion`) VALUES
(1, 1, 6),
(2, 1, 4),
(3, 2, 13),
(4, 2, 14),
(5, 3, 16),
(6, 3, 17),
(7, 3, 18),
(8, 2, 15),
(9, 1, 5),
(10, 4, 7),
(11, 4, 8),
(12, 4, 9),
(13, 5, 10),
(14, 5, 11),
(15, 5, 12),
(16, 6, 23),
(17, 6, 24),
(18, 6, 22),
(19, 7, 19),
(20, 7, 20),
(21, 7, 21),
(22, 8, 1),
(23, 8, 2),
(24, 8, 3),
(25, 9, 25),
(26, 9, 26),
(27, 9, 27),
(28, 10, 28),
(29, 10, 29),
(30, 10, 30),
(31, 11, 31),
(32, 11, 32),
(33, 11, 33),
(34, 12, 47),
(35, 12, 48),
(36, 12, 49),
(37, 13, 50),
(38, 13, 51),
(39, 13, 52),
(40, 14, 53),
(41, 14, 54),
(42, 14, 55),
(43, 15, 56),
(44, 15, 57),
(45, 15, 58),
(46, 16, 59),
(47, 16, 60),
(48, 16, 61),
(49, 17, 62),
(50, 17, 63),
(51, 17, 64),
(52, 18, 65),
(53, 18, 66),
(54, 18, 67),
(55, 19, 68),
(56, 19, 69),
(57, 19, 70),
(58, 20, 71),
(59, 20, 72),
(60, 20, 73),
(61, 21, 74),
(62, 21, 75),
(63, 21, 76),
(64, 22, 77),
(65, 22, 78),
(66, 22, 79),
(67, 23, 80),
(68, 23, 81),
(69, 23, 82),
(70, 24, 83),
(71, 24, 84),
(72, 24, 85),
(73, 25, 86),
(74, 25, 87),
(75, 25, 88),
(76, 26, 89),
(77, 27, 90),
(78, 27, 91),
(79, 28, 95),
(80, 28, 96),
(81, 28, 97),
(82, 29, 98),
(83, 29, 99),
(84, 29, 100),
(85, 31, 44),
(86, 31, 45),
(87, 31, 46),
(88, 32, 119),
(89, 32, 120),
(90, 32, 121),
(91, 33, 125),
(92, 33, 126),
(93, 33, 127),
(94, 34, 140),
(95, 34, 141),
(96, 34, 142),
(97, 35, 143),
(98, 35, 144),
(99, 35, 145),
(100, 36, 146),
(101, 36, 147),
(102, 36, 148),
(103, 37, 101),
(104, 37, 102),
(105, 37, 103),
(106, 38, 104),
(107, 38, 105),
(108, 38, 106),
(109, 39, 107),
(110, 39, 108),
(111, 39, 109),
(112, 40, 110),
(113, 40, 111),
(114, 40, 112),
(115, 41, 113),
(116, 41, 114),
(117, 41, 115),
(118, 42, 116),
(119, 42, 117),
(120, 42, 118),
(121, 43, 38),
(122, 43, 39),
(123, 43, 40),
(124, 44, 41),
(125, 44, 42),
(126, 44, 43),
(127, 45, 137),
(128, 45, 138),
(129, 45, 139),
(130, 47, 128),
(131, 47, 129),
(132, 47, 130),
(133, 48, 134),
(134, 48, 135),
(135, 48, 136),
(136, 49, 131),
(137, 49, 132),
(138, 49, 133),
(139, 50, 34),
(140, 50, 35),
(141, 50, 36),
(142, 51, 122),
(143, 51, 123),
(144, 51, 124),
(145, 30, 149),
(146, 30, 150),
(147, 30, 151),
(148, 46, 152),
(149, 46, 153),
(150, 46, 154);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `ID` int(11) NOT NULL,
  `PAIS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`ID`, `PAIS`) VALUES
(1, 'Andalucía'),
(2, 'Aragón'),
(3, 'Asturias'),
(4, 'Islas Baleares'),
(5, 'Canarias'),
(6, 'Cantabria'),
(7, 'Castilla y León'),
(8, 'Castilla-La Mancha'),
(9, 'Cataluña'),
(10, 'Extremadura'),
(11, 'Galicia'),
(12, 'Madrid'),
(13, 'Murcia'),
(14, 'Navarra'),
(15, 'País Vasco'),
(16, 'La Rioja'),
(17, 'Comunidad Valenciana'),
(18, 'ceuta'),
(19, 'melilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terreno`
--

CREATE TABLE `terreno` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `terreno`
--

INSERT INTO `terreno` (`ID`, `TIPO`) VALUES
(1, 'llanura'),
(2, 'meseta'),
(3, 'montañoso-pie'),
(4, 'montañoso-ladera'),
(5, 'montañoso-cima'),
(6, 'montañoso-valle'),
(7, 'sierra'),
(8, 'cordillera'),
(9, 'depresion'),
(10, 'colina'),
(11, 'golfo'),
(12, 'bahia'),
(13, 'cala'),
(14, 'archipielago'),
(15, 'cabo'),
(16, 'isla'),
(17, 'peninsula'),
(18, 'desierto'),
(19, 'bosque'),
(20, 'volcanica'),
(21, 'costa '),
(22, 'urbano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohotel`
--

CREATE TABLE `tipohotel` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipohotel`
--

INSERT INTO `tipohotel` (`ID`, `TIPO`) VALUES
(1, 'hotel'),
(2, 'casa'),
(3, 'hostal'),
(4, 'albergue'),
(5, 'casa-huespedes'),
(6, 'apartamento'),
(7, 'camping'),
(8, 'alojamiento-rural'),
(9, 'alojamiento-boutique'),
(10, 'alojamiento-resort');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(30) DEFAULT NULL,
  `PRECIO` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`ID`, `TIPO`, `PRECIO`) VALUES
(1, 'tranvia', 1.6),
(2, 'autobus', 1.79),
(3, 'uber', 20.5),
(4, 'taxi', 22),
(5, 'avion', 40.49),
(6, 'tren', 20),
(7, 'metro', 3.4),
(8, 'barco', 46.89);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `CORREO` varchar(30) NOT NULL,
  `IMGPERFIL` varchar(200) DEFAULT NULL,
  `PASSWORD` varchar(10) NOT NULL,
  `ROL` char(1) DEFAULT NULL CHECK (`ROL` in ('A','O')),
  `FREGISTRO` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `username`, `CORREO`, `IMGPERFIL`, `PASSWORD`, `ROL`, `FREGISTRO`) VALUES
(1, 'asdawd', 'asds@gmail.com', NULL, '1234A', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `ID` int(11) NOT NULL,
  `ID_CIUDAD` int(11) NOT NULL,
  `IDA` date NOT NULL,
  `VUELTA` date NOT NULL,
  `ID_TERRENO` int(11) NOT NULL,
  `ID_TRANSPORTE` int(11) NOT NULL,
  `PUNTUACION` double DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `planes` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`ID`, `ID_CIUDAD`, `IDA`, `VUELTA`, `ID_TERRENO`, `ID_TRANSPORTE`, `PUNTUACION`, `descripcion`, `planes`) VALUES
(0, 47, '2024-02-14', '2024-02-15', 14, 2, 0, 'asd', ''),
(1, 1, '2024-02-14', '2024-02-15', 22, 2, NULL, 'Viaje a Sevilla e en un terreno urbano y como medio de transporte autobuses de la empresa EMT', 't'),
(2, 1, '0000-00-00', '0000-00-00', 22, 4, NULL, 'Viaje a Sevilla  en un terreno urbano y como medio de transporte taxis de la empresa radio taxi giralda', 't'),
(3, 2, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Málaga en autobús de la empresa EMT para visitar el centro urbano', 't'),
(4, 2, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Málaga en avión con la compañía iberia para visitar el centro urbano', 't'),
(5, 3, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Córdoba en tren de la compañía Renfe para visitar el centro urbano', 'f'),
(6, 3, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Córdoba en autobus de la compañía EMT para visitar el centro urbano', 'f'),
(7, 4, '0000-00-00', '0000-00-00', 5, 2, NULL, 'viaje a Granada en autobús de la compañía EMT para visitar el mirador de san Nicolás en la cima de una montaña ', 't'),
(8, 4, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Granada en autobús de la compañía EMT para visitar el centro urbano', 't'),
(9, 5, '0000-00-00', '0000-00-00', 15, 5, NULL, 'viaje a Almería en avión de la compañía iberia para visitar el cabo de gata', 't'),
(10, 5, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Almería en autobús de la compañía EMT para visitar el centro urbano', 't'),
(11, 6, '0000-00-00', '0000-00-00', 21, 2, NULL, 'viaje a Cádiz en autobús de la compañía EMT para visitar la costa de la playa victoria', 't'),
(12, 6, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Cádiz en autobús de la compañía EMT para visitar el centro urbano ', 't'),
(13, 7, '0000-00-00', '0000-00-00', 7, 5, NULL, 'viaje a Jaén en avión de la compañía iberia para visitar Serra Cazorla ', 't'),
(14, 7, '0000-00-00', '0000-00-00', 3, 2, NULL, 'viaje a Jaén en autobús de la compañía EMT para visitar el rio Borosa', 't'),
(15, 8, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Huelva en autobús de la compañía EMT para visitar el centro urbano', 't'),
(16, 8, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Huelva en autobús de la compañía EMT para visitar el centro urbano', 't'),
(17, 9, '0000-00-00', '0000-00-00', 5, 2, NULL, 'viaje a Huesca en autobús de la compañía EMT para visitar el terreno montañoso de las murallas Finestres ', 't'),
(18, 9, '0000-00-00', '0000-00-00', 19, 5, NULL, 'viaje a Huesca en avión de la compañía iberia para visitar el bosque de Oza ', 't'),
(19, 10, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Teruel en autobús de la compañía EMT para visitar el centro urbano', 'f'),
(20, 10, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Teruel en autobús de la compañía EMT para visitar el centro urbano', 't'),
(21, 11, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Zaragoza en autobús de la compañía EMT para visitar el centro urbano', 't'),
(22, 11, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Zaragoza en avión de la compañía iberia para visitar el centro urbano', 't'),
(23, 12, '0000-00-00', '0000-00-00', 3, 5, NULL, 'viaje a Asturias en avión de la compañía iberia para visitar el lago Covadonga', 't'),
(24, 12, '0000-00-00', '0000-00-00', 19, 2, NULL, 'viaje a Asturias en autobús de la compañía EMT para visitar el museo de los molinos', 't'),
(25, 13, '0000-00-00', '0000-00-00', 18, 5, NULL, 'viaje a islas Canarias en avión de la compañía iberia para visitar el desierto Maspalomas', 't'),
(26, 13, '0000-00-00', '0000-00-00', 20, 8, NULL, 'viaje a islas Canarias en barco de la compañía Naviera para visitar el volcán Teide', 't'),
(27, 14, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Cantabria en autobús de la compañía EMT para visitar el centro urbano', 't'),
(28, 14, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Cantabria en autobús de la compañía EMT para visitar el centro urbano', 't'),
(29, 15, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Albacete en autobús de la compañía EMT para visitar el centro urbano', 't'),
(30, 15, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Albacete en autobús de la compañía EMT para visitar el centro urbano', 't'),
(31, 16, '0000-00-00', '0000-00-00', 6, 2, NULL, 'viaje a ciudad real en autobús de la compañía EMT para visitar el parque cabañeros un valle montañoso', 't'),
(32, 16, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a ciudad real en autobús de la compañía EMT para visitar el centro urbano', 't'),
(33, 17, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Cuenca en autobús de la compañía EMT para visitar el centro urbano', 't'),
(34, 17, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Cuenca en autobús de la compañía EMT para visitar el centro urbano', 'f'),
(35, 23, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Palencia en autobús de la compañía EMT para visitar el centro urbano', 'f'),
(36, 18, '0000-00-00', '0000-00-00', 6, 5, NULL, 'viaje a Guadalajara en avión de la compañía iberia para visitar el campo de lavanda', 't'),
(37, 18, '0000-00-00', '0000-00-00', 5, 2, NULL, 'viaje a Guadalajara en autobús de la compañía EMT para visitar el pueblo Atienza situado en la cima de una montaña', 't'),
(38, 19, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Toledo en autobús de la compañía EMT para visitar el centro urbano', 't'),
(39, 19, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Toledo en avión de la compañía iberia para visitar el centro urbano', 't'),
(40, 20, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Ávila en autobús de la compañía EMT para visitar el centro urbano', 't'),
(41, 20, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Toledo en autobús de la compañía EMT para visitar el centro urbano', 't'),
(42, 21, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Burgos en autobús de la compañía EMT para visitar el centro urbano', 't'),
(43, 22, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a León en autobús de la compañía EMT para visitar el centro urbano', 't'),
(44, 22, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a León en avión de la compañía iberia para visitar el centro urbano', 't'),
(45, 21, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Burgos en avión de la compañía iberia para visitar el centro urbano', 't'),
(64, 23, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Palencia en autobús de la compañía EMT para visitar el centro urbano', 't'),
(65, 24, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Salamanca en autobús de la compañía EMT para visitar el centro urbano', 't'),
(66, 24, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Salamanca en autobús de la compañía EMT para visitar el centro urbano', 't'),
(67, 25, '0000-00-00', '0000-00-00', 5, 2, NULL, 'viaje a Segovia a en autobús de la compañía EMT para visitar la catedral situada en la cima de una montaña', 't'),
(68, 25, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Segovia en avión de la compañía iberia para visitar el centro urbano', 't'),
(69, 26, '0000-00-00', '0000-00-00', 10, 2, NULL, 'viaje a Soria en autobús de la compañía EMT para visitar el cañón del rio lobo', 't'),
(70, 26, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Soria en avión de la compañía iberia para visitar el centro urbano', 't'),
(71, 27, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Valladolid en autobús de la compañía EMT para visitar el centro urbano', 't'),
(72, 27, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Valladolid en autobús de la compañía EMT para visitar el centro urbano', 't'),
(73, 28, '0000-00-00', '0000-00-00', 19, 5, NULL, 'viaje a Zamora en avión de la compañía iberia para visitar el parque Sanabria situado en un bosque frondoso', 't'),
(74, 28, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Zamora en autobús de la compañía EMT para visitar el centro urbano', 't'),
(75, 29, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Tarragona en autobús de la compañía EMT para visitar el centro urbano', 't'),
(76, 29, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Tarragona en autobús de la compañía EMT para visitar el centro urbano', 't'),
(77, 30, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Barcelona en autobús de la compañía EMT para visitar el centro urbano', 't'),
(78, 30, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Barcelona en tren de la compañía Renfe para visitar el centro urbano', 't'),
(79, 31, '0000-00-00', '0000-00-00', 19, 6, NULL, 'viaje a Lérida en tren de la compañía Renfe para visitar el parque mitja de Lérida ', 't'),
(80, 31, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Lérida en autobús de la compañía EMT para visitar el centro urbano', 't'),
(81, 32, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Girona en autobús de la compañía EMT para visitar el centro urbano', 't'),
(82, 32, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Girona en tren de la compañía Renfe para visitar el centro urbano', 't'),
(83, 33, '0000-00-00', '0000-00-00', 21, 2, NULL, 'viaje a Alicante en autobús de la compañía EMT para visitar la playa de luceros', 't'),
(84, 33, '0000-00-00', '0000-00-00', 21, 6, NULL, 'viaje a Alicante en tren de la compañía Renfe para visitar el puerto de Alicante', 't'),
(85, 34, '0000-00-00', '0000-00-00', 4, 2, NULL, 'viaje a Castellón en autobús de la compañía EMT para visitar las aguas termales de Montanejos', 't'),
(86, 34, '0000-00-00', '0000-00-00', 7, 6, NULL, 'viaje a Castellón en tren de la compañía Renfe para visitar las murallas de Morella', 't'),
(87, 35, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Valencia en autobús de la compañía EMT para visitar la ciudad de las  artes y las ciencias', 't'),
(88, 35, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Valencia en tren de la compañía Renfe para visitar la lonja', 'v'),
(89, 36, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Badajoz en tren de la compañía Renfe para visitar la plaza alta ', 't'),
(90, 36, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Badajoz en autobús de la compañía EMT para visitar la plaza alta ', 't'),
(91, 37, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Cáceres en tren de la compañía Renfe para visitar el centro urbano', 't'),
(92, 37, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Cáceres en tren de la compañía Renfe para visitar el centro urbano', 't'),
(93, 38, '0000-00-00', '0000-00-00', 6, 2, NULL, 'viaje a A Coruña en autobús de la compañía EMT para visitar el monte san pedro', 'f'),
(94, 38, '0000-00-00', '0000-00-00', 5, 5, NULL, 'viaje a A Coruña en avión de la compañía iberia para visitar el monte san pedro', 't'),
(95, 39, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Lugo en avión de la compañía iberia para visitar el centro urbano', 't'),
(96, 39, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Lugo en autobús de la compañía EMT para visitar el centro urbano', 't'),
(97, 40, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Ourense en autobús de la compañía EMT para visitar el centro urbano', 't'),
(98, 40, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Ourense en avión de la compañía iberia para visitar el centro urbano', 't'),
(99, 41, '0000-00-00', '0000-00-00', 21, 5, NULL, 'viaje a Pontevedra en avión de la compañía iberia para visitar la costa del pueblo héroes Combarro', 'f'),
(100, 41, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Pontevedra en tren de la compañía Renfe para visitar el centro urbano', 'f'),
(101, 42, '0000-00-00', '0000-00-00', 21, 5, NULL, 'viaje a las islas Baleares en avión de la compañía iberia para visitar la catedral situada en la costa', 't'),
(102, 42, '0000-00-00', '0000-00-00', 21, 8, NULL, 'viaje a las islas baleares en barco de la compañía Naviera para visitar el castillo de Bellver', 't'),
(103, 43, '0000-00-00', '0000-00-00', 4, 2, NULL, 'viaje a la Rioja en autobús de la compañía EMT para visitar el monasterio Yuso', 't'),
(104, 43, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a la Rioja en tren de la compañía Renfe para visitar el centro urbano', 't'),
(105, 44, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Madrid en tren de la compañía Renfe para visitar el centro urbano', 't'),
(106, 44, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Madrid en autobús de la compañía EMT para visitar el centro urbano', 't'),
(107, 45, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Murcia en autobús de la compañía EMT para visitar el centro urbano', 't'),
(108, 45, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Madrid en avion de la compañía iberia para visitar el centro urbano', 't'),
(109, 46, '0000-00-00', '0000-00-00', 19, 5, NULL, 'viaje a Navarra en avión de la compañía iberia para visitar la selva Irati', 't'),
(110, 46, '0000-00-00', '0000-00-00', 5, 6, NULL, 'viaje a Navarra en tren de la compañía Renfe para visitar el pueblo Ujue ', 't'),
(111, 47, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Álava en avión de la compañía iberia para visitar el centro urbano', 't'),
(112, 47, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Álava en autobús de la compañía EMT para visitar el centro urbano', 't'),
(113, 48, '0000-00-00', '0000-00-00', 22, 2, NULL, 'viaje a Vizcaya en autobús de la compañía EMT para visitar el centro urbano', 't'),
(114, 48, '0000-00-00', '0000-00-00', 22, 6, NULL, 'viaje a Vizcaya en tren de la compañía Renfe para visitar el centro urbano', 't'),
(115, 49, '0000-00-00', '0000-00-00', 21, 2, NULL, 'viaje a Guipúzcoa en autobús de la compañía EMT para visitar la costa del monumento peine de viento', 't'),
(116, 49, '0000-00-00', '0000-00-00', 11, 5, NULL, 'viaje a Guipúzcoa en avión de la compañía iberia para visitar el monte Urgull', 'f'),
(117, 52, '0000-00-00', '0000-00-00', 21, 5, NULL, 'viaje a melilla en avión con la compañía iberia a ver melilla la vieja ', 't'),
(118, 52, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a melilla en avión con la compañía iberia a ver el triangulo de oro ', 't'),
(119, 51, '0000-00-00', '0000-00-00', 21, 5, NULL, 'viaje a Ceuta en avión con la compañía iberia a ver el parque marítimo', 't'),
(120, 51, '0000-00-00', '0000-00-00', 22, 5, NULL, 'viaje a Ceuta en avión con la compañía iberia a ver la casa de los dragones ', 't'),
(121, 47, '2024-02-14', '2024-02-15', 12, 5, NULL, 'wde', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajesimagenes`
--

CREATE TABLE `viajesimagenes` (
  `ID` int(11) NOT NULL,
  `id_viajes` int(11) NOT NULL,
  `URL` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viajesimagenes`
--

INSERT INTO `viajesimagenes` (`ID`, `id_viajes`, `URL`) VALUES
(1, 9, 'img/viajes/andalucia/almeria/cabo-gata-almeria.webp'),
(2, 10, 'img/viajes/andalucia/almeria/conjunto-alcazaba-almeria.jpg'),
(3, 0, 'img/viajes/andalucia/almeria/minihollywood-almeria.jpg'),
(4, 12, 'img/viajes/andalucia/cadiz/catedral-cadiz.jpg'),
(5, 11, 'img/viajes/andalucia/cadiz/playa-victoria-cadiz.jpg'),
(6, 0, 'img/viajes/andalucia/cadiz/torre-tavira-cadiz.avif'),
(7, 5, 'img/viajes/andalucia/cordoba/centro-historico-cordoba.jpg'),
(8, 6, 'img/viajes/andalucia/cordoba/juderia.cordoba.jpg'),
(9, 0, 'img/viajes/andalucia/cordoba/mezquita-cordoba.avif'),
(10, 0, 'img/viajes/andalucia/granada/alambra-granada.jpg'),
(11, 8, 'img/viajes/andalucia/granada/albayzin-granada.jpg'),
(12, 7, 'img/viajes/andalucia/granada/mirador-de-san-nicolas_granada.jpg'),
(13, 15, 'img/viajes/andalucia/huelva/barrio-obrero-huelva-jpg'),
(14, 16, 'img/viajes/andalucia/huelva/muelle-tinto-huelva.jpg'),
(15, 0, 'img/viajes/andalucia/huelva/plaza-monjas-huelva.jpg'),
(16, 0, 'img/viajes/andalucia/jaen/catedral-jaen-webp'),
(17, 14, 'img/viajes/andalucia/jaen/rio-borosa-jaen.jpg'),
(18, 13, 'img/viajes/andalucia/jaen/sierra-cazorla-jaen.jpg'),
(19, 3, 'img/viajes/andalucia/malaga/alcazaba-malaga.webp'),
(20, 4, 'img/viajes/andalucia/malaga/castillo-gibralfaro-malaga.jpg'),
(21, 0, 'img/viajes/andalucia/malaga/catedral-malaga.jpg'),
(22, 1, 'img/viajes/andalucia/sevilla/catedral-sevilla.jpg'),
(23, 2, 'img/viajes/andalucia/sevilla/plaza-españa-sevilla.webp'),
(24, 0, 'img/viajes/andalucia/sevilla/real-alcaraz-sevilla.jpg'),
(25, 17, 'img/viajes/aragon/huesca/muralla-finestres-huesca.jpeg'),
(26, 0, 'img/viajes/aragon/huesca/parque-ordesa-huesca.jpg'),
(27, 18, 'img/viajes/aragon/huesca/selva-oza-huesca.jpeg'),
(28, 19, 'img/viajes/aragon/teruel/amantes-teruel.jpeg'),
(29, 20, 'img/viajes/aragon/teruel/museo-minero-teruel.webp'),
(30, 0, 'img/viajes/aragon/teruel/parrizal-teruel.webp'),
(31, 21, 'img/viajes/aragon/zaragoza/aljaferia-zaragoza.jpg'),
(32, 22, 'img/viajes/aragon/zaragoza/basilica-pilar-zaragoza.jpg'),
(33, 0, 'img/viajes/aragon/zaragoza/seo-salvador-zaragoza.jpg'),
(34, 40, 'img/viajes/castilla-leon/avila/catedral-avila.jpg'),
(35, 41, 'img/viajes/castilla-leon/avila/murallas-avila.jpg'),
(36, 0, 'img/viajes/castilla-leon/avila/postes-avila.jpg'),
(37, 42, 'img/viajes/castilla-leon/burgos/Cartuja-Miraflores-burgos.webp'),
(38, 43, 'img/viajes/castilla-leon/burgos/catedral-burgos.webp'),
(39, 0, 'img/viajes/castilla-leon/burgos/monasterio-de-las-huelgas-burgos.jpg'),
(40, 43, 'img/viajes/castilla-leon/leon/arco-leon.jpg'),
(41, 44, 'img/viajes/castilla-leon/leon/catedral-basilica-leon.jpg'),
(43, 0, 'img/viajes/castilla-leon/leon/templo-expiatorio-leon.jpg'),
(44, 35, 'img/viajes/castilla-leon/palencia/catedral-palencia.webp'),
(45, 64, 'img/viajes/castilla-leon/palencia/cristo-otero-palencia.jpg'),
(46, 0, 'img/viajes/castilla-leon/palencia/ruta-pantanos-palencia.jpg'),
(47, 65, 'img/viajes/castilla-leon/salamanca/catedral-vieja-salamanca.webp'),
(48, 66, 'img/viajes/castilla-leon/salamanca/leronimus-salamanca.jpeg'),
(49, 0, 'img/viajes/castilla-leon/salamanca/plaza-mayor-de-salamanca.jpg'),
(50, 0, 'img/viajes/castilla-leon/segovia/alcaraz-segovia.jpg'),
(51, 68, 'img/viajes/castilla-leon/segovia/Aqueduct-de-Segovia.jpg'),
(52, 67, 'img/viajes/castilla-leon/segovia/catedral-Segovia.jpg'),
(53, 69, 'img/viajes/castilla-leon/soria/cañon-rio-lobo-soria.jpeg'),
(54, 70, 'img/viajes/castilla-leon/soria/fuentona-soria.jpeg'),
(55, 0, 'img/viajes/castilla-leon/soria/laguna-negra-soria.jpg'),
(56, 71, 'img/viajes/castilla-leon/valladolid/iglesia-san-pablo-valladolid.webp'),
(57, 72, 'img/viajes/castilla-leon/valladolid/plaza-mayor-valladolid.webp'),
(58, 0, 'img/viajes/castilla-leon/valladolid/santa-maria-antgua-valladolid.jpg'),
(59, 0, 'img/viajes/castilla-leon/zamora/catedral-de-zamora.jpg'),
(60, 74, 'img/viajes/castilla-leon/zamora/iglesia-santa-maria-la-nueva-zamora.jpg'),
(61, 73, 'img/viajes/castilla-leon/zamora/parque-sanabria-zamora.jpg'),
(62, 29, 'img/viajes/castilla-mancha/albacete/bodegas-aldonza-albacete.jpg'),
(63, 0, 'img/viajes/castilla-mancha/albacete/nacimiento-rio-mundo-zamora.jpg'),
(64, 30, 'img/viajes/castilla-mancha/albacete/pasaje-lodares-zamora.jpg'),
(65, 31, 'img/viajes/castilla-mancha/ciudad-real/parque-cabañeros-ciudad-real.jpg'),
(66, 32, 'img/viajes/castilla-mancha/ciudad-real/parque-gasset-ciudad-real.jpg'),
(67, 0, 'img/viajes/castilla-mancha/ciudad-real/san-pedro-ciudad-real.jpg'),
(68, 33, 'img/viajes/castilla-mancha/cuenca/catedral-cuenca.jpg'),
(69, 34, 'img/viajes/castilla-mancha/cuenca/ciudad-amurallada-cuenca.jpg'),
(70, 0, 'img/viajes/castilla-mancha/cuenca/puente-san-pablo-cuenca.jpg'),
(71, 37, 'img/viajes/castilla-mancha/guadalajara/atienza-guadalajara.jpg'),
(72, 0, 'img/viajes/castilla-mancha/guadalajara/campillo-de-ranas-guadalajara.jpg'),
(73, 36, 'img/viajes/castilla-mancha/guadalajara/campos-lavanda-guadalajara.jpg'),
(74, 39, 'img/viajes/castilla-mancha/toledo/mirador-valle-toledo.jpg'),
(75, 40, 'img/viajes/castilla-mancha/toledo/primada-toledo.jpg'),
(76, 0, 'img/viajes/castilla-mancha/toledo/san-juan-de-los-reyes-toledo.jpg'),
(77, 77, 'img/viajes/cataluña/barcelona/basilica-sagrada-familia-barcelona.webp'),
(78, 78, 'img/viajes/cataluña/barcelona/palau-musica-barcelona.jpg'),
(79, 0, 'img/viajes/cataluña/barcelona/parque-guell-barcelona.jpg'),
(80, 81, 'img/viajes/cataluña/girona/baños-arabes.girona.jpg'),
(81, 82, 'img/viajes/cataluña/girona/catedral-girona.jpg'),
(82, 0, 'img/viajes/cataluña/girona/paseo-muralla-girona.jpg'),
(83, 80, 'img/viajes/cataluña/lerida/castillo-templario-lerida.png'),
(84, 79, 'img/viajes/cataluña/lerida/parque-mitjana-lerida.jpg'),
(85, 0, 'img/viajes/cataluña/lerida/seu-vella-lerida.jpg'),
(86, 75, 'img/viajes/cataluña/tarragona/anfiteatro-tarraco-tarragona.jpg'),
(87, 76, 'img/viajes/cataluña/tarragona/catedral-tarragona.jpg'),
(88, 0, 'img/viajes/cataluña/tarragona/circo-romano-tarragona.avif'),
(89, 0, 'img/viajes/ceuta-c/ceuta/casa-dragones-ceuta.jpg'),
(90, 0, 'img/viajes/ceuta-c/ceuta/Las-murallas-Reales-de-Ceuta.jpg'),
(91, 0, 'img/viajes/ceuta-c/ceuta/parque-maritimo-ceuta.jpg'),
(92, 0, 'img/viajes/comunidad-cantabria/cantabria/el-capricho-de-gaudi-cantabria.jpg'),
(93, 27, 'img/viajes/comunidad-cantabria/cantabria/palacio-magdalena-cantabria.webp'),
(94, 28, 'img/viajes/comunidad-cantabria/cantabria/parque-de-cabo-mayor-cantabria.jpg'),
(95, 0, 'img/viajes/comunidad-madrid/madrid/gran-via-madrid.jpeg'),
(96, 105, 'img/viajes/comunidad-madrid/madrid/palacio-real-madrid-jpg'),
(97, 106, 'img/viajes/comunidad-madrid/madrid/plaza-mayor-madrid.jpg'),
(98, 0, 'img/viajes/comunidad-navarra/navarra/palacio-olite-fitero-navarra.jpg'),
(99, 109, 'img/viajes/comunidad-navarra/navarra/selva-irati-navarra.jpg'),
(100, 110, 'img/viajes/comunidad-navarra/navarra/ujue-navarra.jpg'),
(101, 0, 'img/viajes/comunidad-valenciana/alicante/explanada-alicante.jpg'),
(102, 83, 'img/viajes/comunidad-valenciana/alicante/plaza-luceros-alicante.jpg'),
(103, 84, 'img/viajes/comunidad-valenciana/alicante/puerto-alicante.jpg'),
(104, 85, 'img/viajes/comunidad-valenciana/castellon/aguas-termales-montanejos-castellon.webp'),
(105, 0, 'img/viajes/comunidad-valenciana/castellon/casco-antiguo-peñiscola-castellon.jpg'),
(106, 86, 'img/viajes/comunidad-valenciana/castellon/murallas-morella-castellon.jpg'),
(107, 87, 'img/viajes/comunidad-valenciana/valencia/aciudad-artes-ciencias-valencia.avif'),
(108, 88, 'img/viajes/comunidad-valenciana/valencia/lonja-valencia.jpg'),
(109, 0, 'img/viajes/comunidad-valenciana/valencia/miguelete-catedral-valencia.jpg'),
(110, 70, 'img/viajes/extremadura/badajoz/alcazaba-badajoz.webp'),
(111, 89, 'img/viajes/extremadura/badajoz/plaza-alta-badajoz.jpg'),
(112, 0, 'img/viajes/extremadura/badajoz/puerta-palmas-badajoz.jpg'),
(113, 91, 'img/viajes/extremadura/caceres/arco-estrella-caceres.jpg'),
(114, 92, 'img/viajes/extremadura/caceres/plaza-mayor-caceres.jpg'),
(115, 0, 'img/viajes/extremadura/caceres/torre-bujaco-caceres.jpg'),
(116, 93, 'img/viajes/galicia/coruña/monte-san-pedro-coruña.jpg'),
(117, 0, 'img/viajes/galicia/coruña/plaza-maria-pita-coruña.png'),
(118, 94, 'img/viajes/galicia/coruña/Torre-de-Hercules-coruña.jpg'),
(119, 95, 'img/viajes/galicia/lugo/catedral-lugo.webp'),
(120, 96, 'img/viajes/galicia/lugo/las-murallas-romanas-lugo.jpg'),
(121, 0, 'img/viajes/galicia/lugo/museoprovinciallugo.jpg'),
(122, 97, 'img/viajes/galicia/ourense/catedral-san-martin-ourense.webp'),
(123, 98, 'img/viajes/galicia/ourense/plaza-mayor-ourense.jpg'),
(124, 0, 'img/viajes/galicia/ourense/puente-romano.jpg'),
(125, 0, 'img/viajes/galicia/pontevedra/castro-santa-tegra-pontevedra.jpg'),
(126, 99, 'img/viajes/galicia/pontevedra/heroes-ccombarro-pontevedra.webp'),
(127, 100, 'img/viajes/galicia/pontevedra/iglesia-virgen-peregrina-pontevedra.jpg'),
(128, 0, 'img/viajes/islas-baleares/baleares/alcudia-old-town-baleares.jpg'),
(129, 102, 'img/viajes/islas-baleares/baleares/bellver-castle-baleares.jpg'),
(130, 101, 'img/viajes/islas-baleares/baleares/catedral-mallorca-baleares.avif'),
(131, 25, 'img/viajes/islas-canarias/canarias/playa-maspaloma-canarias.avif'),
(132, 0, 'img/viajes/islas-canarias/canarias/timanfaya-canarias.jpg'),
(133, 26, 'img/viajes/islas-canarias/canarias/volvan-teide-canarias.webp'),
(134, 104, 'img/viajes/la-rioja/rioja/ezcaray-la-rioja.webp'),
(135, 103, 'img/viajes/la-rioja/rioja/monasterio-yuso-la-rioja'),
(136, 0, 'img/viajes/la-rioja/rioja/plaza-del-mercado-logroño-la-rioja.webp'),
(137, 0, 'img/viajes/melilla-c/melilla/melilla_la_vieja.webp'),
(138, 0, 'img/viajes/melilla-c/melilla/parque-hernandez-melilla.jpg'),
(139, 0, 'img/viajes/melilla-c/melilla/triangulo-de-oro-melilla.jpg'),
(140, 111, 'img/viajes/pais-vasco/alava/bodega-baigorri-alava.jpg'),
(141, 112, 'img/viajes/pais-vasco/alava/bodega-solar-alava'),
(142, 0, 'img/viajes/pais-vasco/alava/catedral-santa-maria-alava.jpg'),
(143, 0, 'img/viajes/pais-vasco/guipuzcoa/hordarribia-guipuzcoa.webp'),
(144, 116, 'img/viajes/pais-vasco/guipuzcoa/monte-urgull-guipuzcoa.webp'),
(145, 115, 'img/viajes/pais-vasco/guipuzcoa/peine-viento-guipuzcoa.jpg'),
(146, 113, 'img/viajes/pais-vasco/vizcalla/casco-viejo-vizcaya.jpg'),
(147, 0, 'img/viajes/pais-vasco/vizcalla/plaza-nueva-vizcaya.jpg'),
(148, 114, 'img/viajes/pais-vasco/vizcalla/puente-colgante-vizcaya.jpg'),
(149, 23, 'img/viajes/principado-asturias/asturias/lago-covadonga-asturias.jpg'),
(150, 24, 'img/viajes/principado-asturias/asturias/museo-molinos-mazonovo-asturias.jpg'),
(151, 0, 'img/viajes/principado-asturias/asturias/santa-maria-naranco-asturias.jpg'),
(152, 107, 'img/viajes/region-murcia/murcia/casino-murcia.jpg'),
(153, 108, 'img/viajes/region-murcia/murcia/catedral-santa-maria-murcia.jpg'),
(154, 0, 'img/viajes/region-murcia/murcia/plaza-cardenal.murcia.jpg'),
(155, 117, 'img/viajes/Melilla-c/melilla/melilla_la_vieja.webp'),
(156, 0, 'img/viajes/Melilla-c/melilla/parque-hernandez-malilla.jpg'),
(157, 118, 'img/viajes/Melilla-c/melilla/triangulo-de-oro-melilla.jpg'),
(158, 120, 'img/viajes/ceuta-c/ceuta/casa-dragones-ceuta.jpg'),
(159, 0, 'img/viajes/ceuta-c/ceuta/Las-murallas-Reales-de-Ceuta6.jpg'),
(160, 119, 'img/viajes/ceuta-c/ceuta/parque-maritimo-ceuta.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `excursion`
--
ALTER TABLE `excursion`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_CIUDAD` (`ID_CIUDAD`);

--
-- Indices de la tabla `historialviajes`
--
ALTER TABLE `historialviajes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HISTORIALVIAJES_ibfk_1` (`ID_USUARIO`),
  ADD KEY `HISTORIALVIAJES_ibfk_2` (`ID_VIAJE`),
  ADD KEY `HISTORIALVIAJES_ibfk_3` (`id_hotel`);

--
-- Indices de la tabla `historial_itinerario`
--
ALTER TABLE `historial_itinerario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lbk_1` (`Id_historial_viajes`),
  ADD KEY `ibfk_2` (`id_itnerario`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_TIPOHOTEL` (`ID_TIPOHOTEL`),
  ADD KEY `ID_CIUDAD` (`ID_CIUDAD`);

--
-- Indices de la tabla `itinerario`
--
ALTER TABLE `itinerario`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `itinerario_excursiones`
--
ALTER TABLE `itinerario_excursiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Itenrario_excursion_lsbk1` (`id_excursion`),
  ADD KEY `Itenrario_excursion_lsbk2` (`Id_itinerario`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `terreno`
--
ALTER TABLE `terreno`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipohotel`
--
ALTER TABLE `tipohotel`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_CIUDAD` (`ID_CIUDAD`),
  ADD KEY `ID_TERRENO` (`ID_TERRENO`),
  ADD KEY `ID_TRANSPORTE` (`ID_TRANSPORTE`);

--
-- Indices de la tabla `viajesimagenes`
--
ALTER TABLE `viajesimagenes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dfss` (`id_viajes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `excursion`
--
ALTER TABLE `excursion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT de la tabla `historialviajes`
--
ALTER TABLE `historialviajes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_itinerario`
--
ALTER TABLE `historial_itinerario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `itinerario`
--
ALTER TABLE `itinerario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `itinerario_excursiones`
--
ALTER TABLE `itinerario_excursiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `terreno`
--
ALTER TABLE `terreno`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tipohotel`
--
ALTER TABLE `tipohotel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `transporte`
--
ALTER TABLE `transporte`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `viajesimagenes`
--
ALTER TABLE `viajesimagenes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `CIUDADES_ibfk_1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID`);

--
-- Filtros para la tabla `excursion`
--
ALTER TABLE `excursion`
  ADD CONSTRAINT `EXCURSION_ibfk_2` FOREIGN KEY (`ID_CIUDAD`) REFERENCES `ciudades` (`ID`);

--
-- Filtros para la tabla `historialviajes`
--
ALTER TABLE `historialviajes`
  ADD CONSTRAINT `HISTORIALVIAJES_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `HISTORIALVIAJES_ibfk_2` FOREIGN KEY (`ID_VIAJE`) REFERENCES `viajes` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `HISTORIALVIAJES_ibfk_3` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`ID`);

--
-- Filtros para la tabla `historial_itinerario`
--
ALTER TABLE `historial_itinerario`
  ADD CONSTRAINT `ibfk_2` FOREIGN KEY (`id_itnerario`) REFERENCES `itinerario` (`ID`),
  ADD CONSTRAINT `lbk_1` FOREIGN KEY (`Id_historial_viajes`) REFERENCES `historialviajes` (`ID`);

--
-- Filtros para la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `HOTEL_ibfk_1` FOREIGN KEY (`ID_TIPOHOTEL`) REFERENCES `tipohotel` (`ID`),
  ADD CONSTRAINT `HOTEL_ibfk_3` FOREIGN KEY (`ID_CIUDAD`) REFERENCES `ciudades` (`ID`);

--
-- Filtros para la tabla `itinerario_excursiones`
--
ALTER TABLE `itinerario_excursiones`
  ADD CONSTRAINT `Itenrario_excursion_lsbk1` FOREIGN KEY (`id_excursion`) REFERENCES `excursion` (`ID`),
  ADD CONSTRAINT `Itenrario_excursion_lsbk2` FOREIGN KEY (`Id_itinerario`) REFERENCES `itinerario` (`ID`);

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `VIAJES_ibfk_2` FOREIGN KEY (`ID_CIUDAD`) REFERENCES `ciudades` (`ID`),
  ADD CONSTRAINT `VIAJES_ibfk_3` FOREIGN KEY (`ID_TERRENO`) REFERENCES `terreno` (`ID`),
  ADD CONSTRAINT `VIAJES_ibfk_6` FOREIGN KEY (`ID_TRANSPORTE`) REFERENCES `transporte` (`ID`);

--
-- Filtros para la tabla `viajesimagenes`
--
ALTER TABLE `viajesimagenes`
  ADD CONSTRAINT `dfss` FOREIGN KEY (`id_viajes`) REFERENCES `viajes` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
