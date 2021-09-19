-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 19-09-2021 a las 19:57:36
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_sistemaderemuneraciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_afp`
--

DROP TABLE IF EXISTS `t_afp`;
CREATE TABLE IF NOT EXISTS `t_afp` (
  `idAfp` int(11) NOT NULL AUTO_INCREMENT,
  `nombreAFP` varchar(15) NOT NULL,
  `descuentoAfp` float NOT NULL,
  PRIMARY KEY (`idAfp`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_afp`
--

INSERT INTO `t_afp` (`idAfp`, `nombreAFP`, `descuentoAfp`) VALUES
(3, 'Capital', 11.44),
(4, 'Cuprum', 11.44),
(5, 'Habitat', 11.27),
(6, 'PlanVital', 11.16),
(7, 'ProVida', 11.45),
(8, 'Modelo', 10.77),
(9, 'Uno', 10.69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_archivos`
--

DROP TABLE IF EXISTS `t_archivos`;
CREATE TABLE IF NOT EXISTS `t_archivos` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) DEFAULT NULL,
  `archivo` varchar(150) NOT NULL,
  `responsable` varchar(12) NOT NULL,
  PRIMARY KEY (`id_documento`),
  KEY `FK_t_archivos_t_trabajador` (`responsable`(2)) USING BTREE,
  KEY `responsable` (`responsable`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_archivos`
--

INSERT INTO `t_archivos` (`id_documento`, `titulo`, `archivo`, `responsable`) VALUES
(31, 'liquidacion', 'doc (1).pdf', '18.769.858-8'),
(32, 'liquidacion enero ', 'liquidacion170342887.pdf', '17.034.288-7'),
(33, 'VACIONES', 'VacacionesTrabajador.doc', '11.714.291-7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_asigfamiliar`
--

DROP TABLE IF EXISTS `t_asigfamiliar`;
CREATE TABLE IF NOT EXISTS `t_asigfamiliar` (
  `idAsigFa` int(11) NOT NULL AUTO_INCREMENT,
  `tramo` varchar(20) NOT NULL,
  `requisitoRenta` int(11) NOT NULL,
  `montoAf` int(11) NOT NULL,
  PRIMARY KEY (`idAsigFa`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_asigfamiliar`
--

INSERT INTO `t_asigfamiliar` (`idAsigFa`, `tramo`, `requisitoRenta`, `montoAf`) VALUES
(1, 'Tramo A', 342346, 13401),
(2, 'Tramo B', 500033, 8224),
(3, 'Tramo C', 779882, 2599),
(4, 'Tramo D', 779882, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_banco`
--

DROP TABLE IF EXISTS `t_banco`;
CREATE TABLE IF NOT EXISTS `t_banco` (
  `idBanco` int(11) NOT NULL AUTO_INCREMENT,
  `nombreBanco` varchar(30) NOT NULL,
  PRIMARY KEY (`idBanco`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_banco`
--

INSERT INTO `t_banco` (`idBanco`, `nombreBanco`) VALUES
(1, 'Banco de Chile'),
(2, 'Banco Internacional'),
(3, 'Scotiabank Chile'),
(4, 'Banco de Credito e Inversiones'),
(5, 'Banco BICE'),
(6, 'HSBC Bank'),
(7, 'Banco Santander-Chile'),
(8, 'Itaú Corpbanca'),
(9, 'Banco Security'),
(10, 'Banco Falabella'),
(11, 'Banco Ripley'),
(12, 'Banco Consorcio'),
(13, 'Scotiabank Azul'),
(14, 'Banco BTG Pactual Chile'),
(15, 'Banco Estado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_cajadecompesacion`
--

DROP TABLE IF EXISTS `t_cajadecompesacion`;
CREATE TABLE IF NOT EXISTS `t_cajadecompesacion` (
  `idCdc` int(11) NOT NULL,
  `NombreCdc` varchar(50) NOT NULL,
  PRIMARY KEY (`idCdc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_cajadecompesacion`
--

INSERT INTO `t_cajadecompesacion` (`idCdc`, `NombreCdc`) VALUES
(4, 'CCAF Los Héroes'),
(3, 'CCAF La Araucana'),
(2, 'CCAF Los Andes'),
(1, 'Sin caja de Compesación'),
(5, 'CCAF 18 de Septiembre'),
(6, 'CCAF Gabriela Mistral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_comuna`
--

DROP TABLE IF EXISTS `t_comuna`;
CREATE TABLE IF NOT EXISTS `t_comuna` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_comuna_t_provincia` (`id_provincia`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_comuna`
--

INSERT INTO `t_comuna` (`id`, `nombre`, `id_provincia`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'General Lagos', 2),
(4, 'Putre', 2),
(5, 'Alto Hospicio', 3),
(6, 'Iquique', 3),
(7, 'Camiña', 4),
(8, 'Colchane', 4),
(9, 'Huara', 4),
(10, 'Pica', 4),
(11, 'Pozo Almonte', 4),
(12, 'Tocopilla', 5),
(13, 'María Elena', 5),
(14, 'Calama', 6),
(15, 'Ollague', 6),
(16, 'San Pedro de Atacama', 6),
(17, 'Antofagasta', 7),
(18, 'Mejillones', 7),
(19, 'Sierra Gorda', 7),
(20, 'Taltal', 7),
(21, 'Chañaral', 8),
(22, 'Diego de Almagro', 8),
(23, 'Copiapó', 9),
(24, 'Caldera', 9),
(25, 'Tierra Amarilla', 9),
(26, 'Vallenar', 10),
(27, 'Alto del Carmen', 10),
(28, 'Freirina', 10),
(29, 'Huasco', 10),
(30, 'La Serena', 11),
(31, 'Coquimbo', 11),
(32, 'Andacollo', 11),
(33, 'La Higuera', 11),
(34, 'Paihuano', 11),
(35, 'Vicuña', 11),
(36, 'Ovalle', 12),
(37, 'Combarbalá', 12),
(38, 'Monte Patria', 12),
(39, 'Punitaqui', 12),
(40, 'Río Hurtado', 12),
(41, 'Illapel', 13),
(42, 'Canela', 13),
(43, 'Los Vilos', 13),
(44, 'Salamanca', 13),
(45, 'La Ligua', 14),
(46, 'Cabildo', 14),
(47, 'Zapallar', 14),
(48, 'Papudo', 14),
(49, 'Petorca', 14),
(50, 'Los Andes', 15),
(51, 'San Esteban', 15),
(52, 'Calle Larga', 15),
(53, 'Rinconada', 15),
(54, 'San Felipe', 16),
(55, 'Llaillay', 16),
(56, 'Putaendo', 16),
(57, 'Santa María', 16),
(58, 'Catemu', 16),
(59, 'Panquehue', 16),
(60, 'Quillota', 17),
(61, 'La Cruz', 17),
(62, 'La Calera', 17),
(63, 'Nogales', 17),
(64, 'Hijuelas', 17),
(65, 'Valparaíso', 18),
(66, 'Viña del Mar', 18),
(67, 'Concón', 18),
(68, 'Quintero', 18),
(69, 'Puchuncaví', 18),
(70, 'Casablanca', 18),
(71, 'Juan Fernández', 18),
(72, 'San Antonio', 19),
(73, 'Cartagena', 19),
(74, 'El Tabo', 19),
(75, 'El Quisco', 19),
(76, 'Algarrobo', 19),
(77, 'Santo Domingo', 19),
(78, 'Isla de Pascua', 20),
(79, 'Quilpué', 21),
(80, 'Limache', 21),
(81, 'Olmué', 21),
(82, 'Villa Alemana', 21),
(83, 'Colina', 22),
(84, 'Lampa', 22),
(85, 'Tiltil', 22),
(86, 'Santiago', 23),
(87, 'Vitacura', 23),
(88, 'San Ramón', 23),
(89, 'San Miguel', 23),
(90, 'San Joaquín', 23),
(91, 'Renca', 23),
(92, 'Recoleta', 23),
(93, 'Quinta Normal', 23),
(94, 'Quilicura', 23),
(95, 'Pudahuel', 23),
(96, 'Providencia', 23),
(97, 'Peñalolén', 23),
(98, 'Pedro Aguirre Cerda', 23),
(99, 'Ñuñoa', 23),
(100, 'Maipú', 23),
(101, 'Macul', 23),
(102, 'Lo Prado', 23),
(103, 'Lo Espejo', 23),
(104, 'Lo Barnechea', 23),
(105, 'Las Condes', 23),
(106, 'La Reina', 23),
(107, 'La Pintana', 23),
(108, 'La Granja', 23),
(109, 'La Florida', 23),
(110, 'La Cisterna', 23),
(111, 'Independencia', 23),
(112, 'Huechuraba', 23),
(113, 'Estación Central', 23),
(114, 'El Bosque', 23),
(115, 'Conchalí', 23),
(116, 'Cerro Navia', 23),
(117, 'Cerrillos', 23),
(118, 'Puente Alto', 24),
(119, 'San José de Maipo', 24),
(120, 'Pirque', 24),
(121, 'San Bernardo', 25),
(122, 'Buin', 25),
(123, 'Paine', 25),
(124, 'Calera de Tango', 25),
(125, 'Melipilla', 26),
(126, 'Alhué', 26),
(127, 'Curacaví', 26),
(128, 'María Pinto', 26),
(129, 'San Pedro', 26),
(130, 'Isla de Maipo', 27),
(131, 'El Monte', 27),
(132, 'Padre Hurtado', 27),
(133, 'Peñaflor', 27),
(134, 'Talagante', 27),
(135, 'Codegua', 28),
(136, 'Coínco', 28),
(137, 'Coltauco', 28),
(138, 'Doñihue', 28),
(139, 'Graneros', 28),
(140, 'Las Cabras', 28),
(141, 'Machalí', 28),
(142, 'Malloa', 28),
(143, 'Mostazal', 28),
(144, 'Olivar', 28),
(145, 'Peumo', 28),
(146, 'Pichidegua', 28),
(147, 'Quinta de Tilcoco', 28),
(148, 'Rancagua', 28),
(149, 'Rengo', 28),
(150, 'Requínoa', 28),
(151, 'San Vicente de Tagua Tagua', 28),
(152, 'Chépica', 29),
(153, 'Chimbarongo', 29),
(154, 'Lolol', 29),
(155, 'Nancagua', 29),
(156, 'Palmilla', 29),
(157, 'Peralillo', 29),
(158, 'Placilla', 29),
(159, 'Pumanque', 29),
(160, 'San Fernando', 29),
(161, 'Santa Cruz', 29),
(162, 'La Estrella', 30),
(163, 'Litueche', 30),
(164, 'Marchigüe', 30),
(165, 'Navidad', 30),
(166, 'Paredones', 30),
(167, 'Pichilemu', 30),
(168, 'Curicó', 31),
(169, 'Hualañé', 31),
(170, 'Licantén', 31),
(171, 'Molina', 31),
(172, 'Rauco', 31),
(173, 'Romeral', 31),
(174, 'Sagrada Familia', 31),
(175, 'Teno', 31),
(176, 'Vichuquén', 31),
(177, 'Talca', 32),
(178, 'San Clemente', 32),
(179, 'Pelarco', 32),
(180, 'Pencahue', 32),
(181, 'Maule', 32),
(182, 'San Rafael', 32),
(183, 'Curepto', 33),
(184, 'Constitución', 32),
(185, 'Empedrado', 32),
(186, 'Río Claro', 32),
(187, 'Linares', 33),
(188, 'San Javier', 33),
(189, 'Parral', 33),
(190, 'Villa Alegre', 33),
(191, 'Longaví', 33),
(192, 'Colbún', 33),
(193, 'Retiro', 33),
(194, 'Yerbas Buenas', 33),
(195, 'Cauquenes', 34),
(196, 'Chanco', 34),
(197, 'Pelluhue', 34),
(198, 'Bulnes', 35),
(199, 'Chillán', 35),
(200, 'Chillán Viejo', 35),
(201, 'El Carmen', 35),
(202, 'Pemuco', 35),
(203, 'Pinto', 35),
(204, 'Quillón', 35),
(205, 'San Ignacio', 35),
(206, 'Yungay', 35),
(207, 'Cobquecura', 36),
(208, 'Coelemu', 36),
(209, 'Ninhue', 36),
(210, 'Portezuelo', 36),
(211, 'Quirihue', 36),
(212, 'Ránquil', 36),
(213, 'Treguaco', 36),
(214, 'San Carlos', 37),
(215, 'Coihueco', 37),
(216, 'San Nicolás', 37),
(217, 'Ñiquén', 37),
(218, 'San Fabián', 37),
(219, 'Alto Biobío', 38),
(220, 'Antuco', 38),
(221, 'Cabrero', 38),
(222, 'Laja', 38),
(223, 'Los Ángeles', 38),
(224, 'Mulchén', 38),
(225, 'Nacimiento', 38),
(226, 'Negrete', 38),
(227, 'Quilaco', 38),
(228, 'Quilleco', 38),
(229, 'San Rosendo', 38),
(230, 'Santa Bárbara', 38),
(231, 'Tucapel', 38),
(232, 'Yumbel', 38),
(233, 'Concepción', 39),
(234, 'Coronel', 39),
(235, 'Chiguayante', 39),
(236, 'Florida', 39),
(237, 'Hualpén', 39),
(238, 'Hualqui', 39),
(239, 'Lota', 39),
(240, 'Penco', 39),
(241, 'San Pedro de La Paz', 39),
(242, 'Santa Juana', 39),
(243, 'Talcahuano', 39),
(244, 'Tomé', 39),
(245, 'Arauco', 40),
(246, 'Cañete', 40),
(247, 'Contulmo', 40),
(248, 'Curanilahue', 40),
(249, 'Lebu', 40),
(250, 'Los Álamos', 40),
(251, 'Tirúa', 40),
(252, 'Angol', 41),
(253, 'Collipulli', 41),
(254, 'Curacautín', 41),
(255, 'Ercilla', 41),
(256, 'Lonquimay', 41),
(257, 'Los Sauces', 41),
(258, 'Lumaco', 41),
(259, 'Purén', 41),
(260, 'Renaico', 41),
(261, 'Traiguén', 41),
(262, 'Victoria', 41),
(263, 'Temuco', 42),
(264, 'Carahue', 42),
(265, 'Cholchol', 42),
(266, 'Cunco', 42),
(267, 'Curarrehue', 42),
(268, 'Freire', 42),
(269, 'Galvarino', 42),
(270, 'Gorbea', 42),
(271, 'Lautaro', 42),
(272, 'Loncoche', 42),
(273, 'Melipeuco', 42),
(274, 'Nueva Imperial', 42),
(275, 'Padre Las Casas', 42),
(276, 'Perquenco', 42),
(277, 'Pitrufquén', 42),
(278, 'Pucón', 42),
(279, 'Saavedra', 42),
(280, 'Teodoro Schmidt', 42),
(281, 'Toltén', 42),
(282, 'Vilcún', 42),
(283, 'Villarrica', 42),
(284, 'Valdivia', 43),
(285, 'Corral', 43),
(286, 'Lanco', 43),
(287, 'Los Lagos', 43),
(288, 'Máfil', 43),
(289, 'Mariquina', 43),
(290, 'Paillaco', 43),
(291, 'Panguipulli', 43),
(292, 'La Unión', 44),
(293, 'Futrono', 44),
(294, 'Lago Ranco', 44),
(295, 'Río Bueno', 44),
(297, 'Osorno', 45),
(298, 'Puerto Octay', 45),
(299, 'Purranque', 45),
(300, 'Puyehue', 45),
(301, 'Río Negro', 45),
(302, 'San Juan de la Costa', 45),
(303, 'San Pablo', 45),
(304, 'Calbuco', 46),
(305, 'Cochamó', 46),
(306, 'Fresia', 46),
(307, 'Frutillar', 46),
(308, 'Llanquihue', 46),
(309, 'Los Muermos', 46),
(310, 'Maullín', 46),
(311, 'Puerto Montt', 46),
(312, 'Puerto Varas', 46),
(313, 'Ancud', 47),
(314, 'Castro', 47),
(315, 'Chonchi', 47),
(316, 'Curaco de Vélez', 47),
(317, 'Dalcahue', 47),
(318, 'Puqueldón', 47),
(319, 'Queilén', 47),
(320, 'Quellón', 47),
(321, 'Quemchi', 47),
(322, 'Quinchao', 47),
(323, 'Chaitén', 48),
(324, 'Futaleufú', 48),
(325, 'Hualaihué', 48),
(326, 'Palena', 48),
(327, 'Lago Verde', 49),
(328, 'Coihaique', 49),
(329, 'Aysén', 50),
(330, 'Cisnes', 50),
(331, 'Guaitecas', 50),
(332, 'Río Ibáñez', 51),
(333, 'Chile Chico', 51),
(334, 'Cochrane', 52),
(335, 'O\'Higgins', 52),
(336, 'Tortel', 52),
(337, 'Natales', 53),
(338, 'Torres del Paine', 53),
(339, 'Laguna Blanca', 54),
(340, 'Punta Arenas', 54),
(341, 'Río Verde', 54),
(342, 'San Gregorio', 54),
(343, 'Porvenir', 55),
(344, 'Primavera', 55),
(345, 'Timaukel', 55),
(346, 'Cabo de Hornos', 56),
(347, 'Antártica', 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_comunatrabajador`
--

DROP TABLE IF EXISTS `t_comunatrabajador`;
CREATE TABLE IF NOT EXISTS `t_comunatrabajador` (
  `idComunaT` int(11) NOT NULL AUTO_INCREMENT,
  `nombreComunaT` varchar(64) DEFAULT NULL,
  `idProvinciaT` int(11) DEFAULT NULL,
  PRIMARY KEY (`idComunaT`),
  KEY `FK_t_comunatrabajador_t_provinciatrabajador` (`idProvinciaT`)
) ENGINE=MyISAM AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_comunatrabajador`
--

INSERT INTO `t_comunatrabajador` (`idComunaT`, `nombreComunaT`, `idProvinciaT`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'General Lagos', 2),
(4, 'Putre', 2),
(5, 'Alto Hospicio', 3),
(6, 'Iquique', 3),
(7, 'Camiña', 4),
(8, 'Colchane', 4),
(9, 'Huara', 4),
(10, 'Pica', 4),
(11, 'Pozo Almonte', 4),
(12, 'Tocopilla', 5),
(13, 'María Elena', 5),
(14, 'Calama', 6),
(15, 'Ollague', 6),
(16, 'San Pedro de Atacama', 6),
(17, 'Antofagasta', 7),
(18, 'Mejillones', 7),
(19, 'Sierra Gorda', 7),
(20, 'Taltal', 7),
(21, 'Chañaral', 8),
(22, 'Diego de Almagro', 8),
(23, 'Copiapó', 9),
(24, 'Caldera', 9),
(25, 'Tierra Amarilla', 9),
(26, 'Vallenar', 10),
(27, 'Alto del Carmen', 10),
(28, 'Freirina', 10),
(29, 'Huasco', 10),
(30, 'La Serena', 11),
(31, 'Coquimbo', 11),
(32, 'Andacollo', 11),
(33, 'La Higuera', 11),
(34, 'Paihuano', 11),
(35, 'Vicuña', 11),
(36, 'Ovalle', 12),
(37, 'Combarbalá', 12),
(38, 'Monte Patria', 12),
(39, 'Punitaqui', 12),
(40, 'Río Hurtado', 12),
(41, 'Illapel', 13),
(42, 'Canela', 13),
(43, 'Los Vilos', 13),
(44, 'Salamanca', 13),
(45, 'La Ligua', 14),
(46, 'Cabildo', 14),
(47, 'Zapallar', 14),
(48, 'Papudo', 14),
(49, 'Petorca', 14),
(50, 'Los Andes', 15),
(51, 'San Esteban', 15),
(52, 'Calle Larga', 15),
(53, 'Rinconada', 15),
(54, 'San Felipe', 16),
(55, 'Llaillay', 16),
(56, 'Putaendo', 16),
(57, 'Santa María', 16),
(58, 'Catemu', 16),
(59, 'Panquehue', 16),
(60, 'Quillota', 17),
(61, 'La Cruz', 17),
(62, 'La Calera', 17),
(63, 'Nogales', 17),
(64, 'Hijuelas', 17),
(65, 'Valparaíso', 18),
(66, 'Viña del Mar', 18),
(67, 'Concón', 18),
(68, 'Quintero', 18),
(69, 'Puchuncaví', 18),
(70, 'Casablanca', 18),
(71, 'Juan Fernández', 18),
(72, 'San Antonio', 19),
(73, 'Cartagena', 19),
(74, 'El Tabo', 19),
(75, 'El Quisco', 19),
(76, 'Algarrobo', 19),
(77, 'Santo Domingo', 19),
(78, 'Isla de Pascua', 20),
(79, 'Quilpué', 21),
(80, 'Limache', 21),
(81, 'Olmué', 21),
(82, 'Villa Alemana', 21),
(83, 'Colina', 22),
(84, 'Lampa', 22),
(85, 'Tiltil', 22),
(86, 'Santiago', 23),
(87, 'Vitacura', 23),
(88, 'San Ramón', 23),
(89, 'San Miguel', 23),
(90, 'San Joaquín', 23),
(91, 'Renca', 23),
(92, 'Recoleta', 23),
(93, 'Quinta Normal', 23),
(94, 'Quilicura', 23),
(95, 'Pudahuel', 23),
(96, 'Providencia', 23),
(97, 'Peñalolén', 23),
(98, 'Pedro Aguirre Cerda', 23),
(99, 'Ñuñoa', 23),
(100, 'Maipú', 23),
(101, 'Macul', 23),
(102, 'Lo Prado', 23),
(103, 'Lo Espejo', 23),
(104, 'Lo Barnechea', 23),
(105, 'Las Condes', 23),
(106, 'La Reina', 23),
(107, 'La Pintana', 23),
(108, 'La Granja', 23),
(109, 'La Florida', 23),
(110, 'La Cisterna', 23),
(111, 'Independencia', 23),
(112, 'Huechuraba', 23),
(113, 'Estación Central', 23),
(114, 'El Bosque', 23),
(115, 'Conchalí', 23),
(116, 'Cerro Navia', 23),
(117, 'Cerrillos', 23),
(118, 'Puente Alto', 24),
(119, 'San José de Maipo', 24),
(120, 'Pirque', 24),
(121, 'San Bernardo', 25),
(122, 'Buin', 25),
(123, 'Paine', 25),
(124, 'Calera de Tango', 25),
(125, 'Melipilla', 26),
(126, 'Alhué', 26),
(127, 'Curacaví', 26),
(128, 'María Pinto', 26),
(129, 'San Pedro', 26),
(130, 'Isla de Maipo', 27),
(131, 'El Monte', 27),
(132, 'Padre Hurtado', 27),
(133, 'Peñaflor', 27),
(134, 'Talagante', 27),
(135, 'Codegua', 28),
(136, 'Coínco', 28),
(137, 'Coltauco', 28),
(138, 'Doñihue', 28),
(139, 'Graneros', 28),
(140, 'Las Cabras', 28),
(141, 'Machalí', 28),
(142, 'Malloa', 28),
(143, 'Mostazal', 28),
(144, 'Olivar', 28),
(145, 'Peumo', 28),
(146, 'Pichidegua', 28),
(147, 'Quinta de Tilcoco', 28),
(148, 'Rancagua', 28),
(149, 'Rengo', 28),
(150, 'Requínoa', 28),
(151, 'San Vicente de Tagua Tagua', 28),
(152, 'Chépica', 29),
(153, 'Chimbarongo', 29),
(154, 'Lolol', 29),
(155, 'Nancagua', 29),
(156, 'Palmilla', 29),
(157, 'Peralillo', 29),
(158, 'Placilla', 29),
(159, 'Pumanque', 29),
(160, 'San Fernando', 29),
(161, 'Santa Cruz', 29),
(162, 'La Estrella', 30),
(163, 'Litueche', 30),
(164, 'Marchigüe', 30),
(165, 'Navidad', 30),
(166, 'Paredones', 30),
(167, 'Pichilemu', 30),
(168, 'Curicó', 31),
(169, 'Hualañé', 31),
(170, 'Licantén', 31),
(171, 'Molina', 31),
(172, 'Rauco', 31),
(173, 'Romeral', 31),
(174, 'Sagrada Familia', 31),
(175, 'Teno', 31),
(176, 'Vichuquén', 31),
(177, 'Talca', 32),
(178, 'San Clemente', 32),
(179, 'Pelarco', 32),
(180, 'Pencahue', 32),
(181, 'Maule', 32),
(182, 'San Rafael', 32),
(183, 'Curepto', 33),
(184, 'Constitución', 32),
(185, 'Empedrado', 32),
(186, 'Río Claro', 32),
(187, 'Linares', 33),
(188, 'San Javier', 33),
(189, 'Parral', 33),
(190, 'Villa Alegre', 33),
(191, 'Longaví', 33),
(192, 'Colbún', 33),
(193, 'Retiro', 33),
(194, 'Yerbas Buenas', 33),
(195, 'Cauquenes', 34),
(196, 'Chanco', 34),
(197, 'Pelluhue', 34),
(198, 'Bulnes', 35),
(199, 'Chillán', 35),
(200, 'Chillán Viejo', 35),
(201, 'El Carmen', 35),
(202, 'Pemuco', 35),
(203, 'Pinto', 35),
(204, 'Quillón', 35),
(205, 'San Ignacio', 35),
(206, 'Yungay', 35),
(207, 'Cobquecura', 36),
(208, 'Coelemu', 36),
(209, 'Ninhue', 36),
(210, 'Portezuelo', 36),
(211, 'Quirihue', 36),
(212, 'Ránquil', 36),
(213, 'Treguaco', 36),
(214, 'San Carlos', 37),
(215, 'Coihueco', 37),
(216, 'San Nicolás', 37),
(217, 'Ñiquén', 37),
(218, 'San Fabián', 37),
(219, 'Alto Biobío', 38),
(220, 'Antuco', 38),
(221, 'Cabrero', 38),
(222, 'Laja', 38),
(223, 'Los Ángeles', 38),
(224, 'Mulchén', 38),
(225, 'Nacimiento', 38),
(226, 'Negrete', 38),
(227, 'Quilaco', 38),
(228, 'Quilleco', 38),
(229, 'San Rosendo', 38),
(230, 'Santa Bárbara', 38),
(231, 'Tucapel', 38),
(232, 'Yumbel', 38),
(233, 'Concepción', 39),
(234, 'Coronel', 39),
(235, 'Chiguayante', 39),
(236, 'Florida', 39),
(237, 'Hualpén', 39),
(238, 'Hualqui', 39),
(239, 'Lota', 39),
(240, 'Penco', 39),
(241, 'San Pedro de La Paz', 39),
(242, 'Santa Juana', 39),
(243, 'Talcahuano', 39),
(244, 'Tomé', 39),
(245, 'Arauco', 40),
(246, 'Cañete', 40),
(247, 'Contulmo', 40),
(248, 'Curanilahue', 40),
(249, 'Lebu', 40),
(250, 'Los Álamos', 40),
(251, 'Tirúa', 40),
(252, 'Angol', 41),
(253, 'Collipulli', 41),
(254, 'Curacautín', 41),
(255, 'Ercilla', 41),
(256, 'Lonquimay', 41),
(257, 'Los Sauces', 41),
(258, 'Lumaco', 41),
(259, 'Purén', 41),
(260, 'Renaico', 41),
(261, 'Traiguén', 41),
(262, 'Victoria', 41),
(263, 'Temuco', 42),
(264, 'Carahue', 42),
(265, 'Cholchol', 42),
(266, 'Cunco', 42),
(267, 'Curarrehue', 42),
(268, 'Freire', 42),
(269, 'Galvarino', 42),
(270, 'Gorbea', 42),
(271, 'Lautaro', 42),
(272, 'Loncoche', 42),
(273, 'Melipeuco', 42),
(274, 'Nueva Imperial', 42),
(275, 'Padre Las Casas', 42),
(276, 'Perquenco', 42),
(277, 'Pitrufquén', 42),
(278, 'Pucón', 42),
(279, 'Saavedra', 42),
(280, 'Teodoro Schmidt', 42),
(281, 'Toltén', 42),
(282, 'Vilcún', 42),
(283, 'Villarrica', 42),
(284, 'Valdivia', 43),
(285, 'Corral', 43),
(286, 'Lanco', 43),
(287, 'Los Lagos', 43),
(288, 'Máfil', 43),
(289, 'Mariquina', 43),
(290, 'Paillaco', 43),
(291, 'Panguipulli', 43),
(292, 'La Unión', 44),
(293, 'Futrono', 44),
(294, 'Lago Ranco', 44),
(295, 'Río Bueno', 44),
(297, 'Osorno', 45),
(298, 'Puerto Octay', 45),
(299, 'Purranque', 45),
(300, 'Puyehue', 45),
(301, 'Río Negro', 45),
(302, 'San Juan de la Costa', 45),
(303, 'San Pablo', 45),
(304, 'Calbuco', 46),
(305, 'Cochamó', 46),
(306, 'Fresia', 46),
(307, 'Frutillar', 46),
(308, 'Llanquihue', 46),
(309, 'Los Muermos', 46),
(310, 'Maullín', 46),
(311, 'Puerto Montt', 46),
(312, 'Puerto Varas', 46),
(313, 'Ancud', 47),
(314, 'Castro', 47),
(315, 'Chonchi', 47),
(316, 'Curaco de Vélez', 47),
(317, 'Dalcahue', 47),
(318, 'Puqueldón', 47),
(319, 'Queilén', 47),
(320, 'Quellón', 47),
(321, 'Quemchi', 47),
(322, 'Quinchao', 47),
(323, 'Chaitén', 48),
(324, 'Futaleufú', 48),
(325, 'Hualaihué', 48),
(326, 'Palena', 48),
(327, 'Lago Verde', 49),
(328, 'Coihaique', 49),
(329, 'Aysén', 50),
(330, 'Cisnes', 50),
(331, 'Guaitecas', 50),
(332, 'Río Ibáñez', 51),
(333, 'Chile Chico', 51),
(334, 'Cochrane', 52),
(335, 'O\'Higgins', 52),
(336, 'Tortel', 52),
(337, 'Natales', 53),
(338, 'Torres del Paine', 53),
(339, 'Laguna Blanca', 54),
(340, 'Punta Arenas', 54),
(341, 'Río Verde', 54),
(342, 'San Gregorio', 54),
(343, 'Porvenir', 55),
(344, 'Primavera', 55),
(345, 'Timaukel', 55),
(346, 'Cabo de Hornos', 56),
(347, 'Antártica', 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_contrato`
--

DROP TABLE IF EXISTS `t_contrato`;
CREATE TABLE IF NOT EXISTS `t_contrato` (
  `contrato` int(11) NOT NULL AUTO_INCREMENT,
  `tipoDeContrato` varchar(30) NOT NULL,
  `fechaInicioContrato` date NOT NULL,
  `fechaDeFinContrato` date NOT NULL,
  `sueldoBase` int(11) NOT NULL,
  `anticipo` int(11) NOT NULL,
  `cargo` varchar(64) NOT NULL,
  `horasSemanales` varchar(15) NOT NULL,
  `tipoJornarda` varchar(30) NOT NULL,
  `inicioLaboral` varchar(15) NOT NULL,
  `finLaboral` varchar(15) NOT NULL,
  `inicioHorario` time NOT NULL,
  `finDeHorario` time NOT NULL,
  `movilizacion` int(11) NOT NULL,
  `colacion` int(11) NOT NULL,
  `otrosbonos` int(11) NOT NULL,
  `rut_trabajador` varchar(12) NOT NULL,
  `rutEmpresa` varchar(12) NOT NULL,
  PRIMARY KEY (`contrato`),
  KEY `FK_t_contrato_t_trabajador` (`rut_trabajador`),
  KEY `FK_t_contrato` (`rutEmpresa`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_contrato`
--

INSERT INTO `t_contrato` (`contrato`, `tipoDeContrato`, `fechaInicioContrato`, `fechaDeFinContrato`, `sueldoBase`, `anticipo`, `cargo`, `horasSemanales`, `tipoJornarda`, `inicioLaboral`, `finLaboral`, `inicioHorario`, `finDeHorario`, `movilizacion`, `colacion`, `otrosbonos`, `rut_trabajador`, `rutEmpresa`) VALUES
(19, 'Obra o Faena', '2021-01-15', '2021-01-20', 320500, 150000, 'operario', '45', 'Diurno', 'Lunes', 'Viernes', '08:00:00', '16:00:00', 20000, 20000, 0, '8.582.216-0', '78.562.412-6'),
(30, 'Plazo Fijo', '2021-02-13', '2021-03-13', 450000, 150000, 'COMPUTACION', '45', 'Diurno', 'Lunes', 'Viernes', '08:00:00', '16:00:00', 10000, 10000, 5000, '18.769.858-8', '78.562.412-6'),
(31, 'Plazo Fijo', '2021-12-02', '2099-12-02', 320500, 50000, 'operario', '45', 'Diurno', 'Lunes', 'Sabado', '11:00:00', '20:00:00', 10000, 10000, 5000, '17.034.288-7', '61.714.291-8'),
(32, 'Plazo Fijo', '2021-01-16', '2099-01-16', 320500, 15000, 'operario', '45', 'Diurno', 'Lunes', 'Sabado', '11:00:00', '20:00:00', 1000, 10000, 5000, '11.714.291-7', '69.507.100-0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_empresa`
--

DROP TABLE IF EXISTS `t_empresa`;
CREATE TABLE IF NOT EXISTS `t_empresa` (
  `rutEmpresa` varchar(12) NOT NULL,
  `nombreEmpresa` varchar(64) NOT NULL,
  `giroEmpresa` varchar(64) NOT NULL,
  `telefonoEmpresa` varchar(20) NOT NULL,
  `emailEmpresa` varchar(64) NOT NULL,
  `direccionEmpresa` varchar(64) NOT NULL,
  `rutRepresentante` varchar(12) NOT NULL,
  `representanteEmp` varchar(64) NOT NULL,
  `nacionalidadRep` varchar(64) NOT NULL,
  `idRegionE` int(11) NOT NULL,
  `idProvinciaE` int(11) NOT NULL,
  `idComunaE` int(11) NOT NULL,
  `idMutual` int(11) NOT NULL,
  `idCdc` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`rutEmpresa`),
  KEY `FK_t_empresa_t_regionempresa` (`idRegionE`),
  KEY `FK_t_empresa_t_provinciaempresa` (`idProvinciaE`),
  KEY `FK_t_empresa_t_mutual` (`idMutual`),
  KEY `FK_t_empresa_t_cajadecompesacion` (`idCdc`),
  KEY `FK_t_empresa` (`idComunaE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_empresa`
--

INSERT INTO `t_empresa` (`rutEmpresa`, `nombreEmpresa`, `giroEmpresa`, `telefonoEmpresa`, `emailEmpresa`, `direccionEmpresa`, `rutRepresentante`, `representanteEmp`, `nacionalidadRep`, `idRegionE`, `idProvinciaE`, `idComunaE`, `idMutual`, `idCdc`, `idUsuario`) VALUES
('61.714.291-8', 'conen.lt', 'algodon', '+56969234158', 'CONENlt@gmal.com', 'fiz del sur n 1080', '19.326.485-8', 'flavio rodrigo', 'CHILENO', 13, 44, 293, 1, 1, 3),
('78.562.412-6', 'Ruiz.LT', 'Manufactureras', '978456321', 'ruizlt@gmail.comn', 'Los Nardor N 326', '19.659.845-9', 'Ruiz Rodrigo hernades', 'Chileno', 13, 43, 285, 1, 4, 1),
('69.507.100-0', 'RODRIGO.lt', 'algodon', '+56969234158', 'rodrigoLT@gmail', 'tresiunto del sur n 1235', '11.714.291-7', 'Ruiz Rodrigo hernades', 'CHILENO', 14, 46, 311, 1, 1, 4),
('18769858-8', 'tuy', 'yopp', '85367891', 'tuy@gmail.com', 'ty n 245', '18769858-8', 'toper', 'veneca', 2, 4, 7, 2, 3, 78);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_isapresalud`
--

DROP TABLE IF EXISTS `t_isapresalud`;
CREATE TABLE IF NOT EXISTS `t_isapresalud` (
  `idIsapreSalud` int(11) NOT NULL AUTO_INCREMENT,
  `nombreIsapreSalud` varchar(50) NOT NULL,
  `descuentoSalud` float NOT NULL,
  PRIMARY KEY (`idIsapreSalud`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_isapresalud`
--

INSERT INTO `t_isapresalud` (`idIsapreSalud`, `nombreIsapreSalud`, `descuentoSalud`) VALUES
(1, ' Banmédica', 0),
(2, 'Consalud', 0),
(3, 'Colmena', 0),
(4, 'CruzBlanca', 0),
(5, 'Nueva Masvida', 0),
(6, 'Vida Tres', 0),
(7, 'Fonasa', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_liquidacionsueldo`
--

DROP TABLE IF EXISTS `t_liquidacionsueldo`;
CREATE TABLE IF NOT EXISTS `t_liquidacionsueldo` (
  `idLs` int(11) NOT NULL AUTO_INCREMENT,
  `mesEnCurso` varchar(10) NOT NULL,
  `anoEnCurso` int(11) NOT NULL,
  `diasTrabajados` int(11) NOT NULL,
  `asigFa` int(11) NOT NULL,
  `saludUf` int(11) NOT NULL,
  `saludPesos` int(11) NOT NULL,
  `rutTrabajador` varchar(12) NOT NULL,
  PRIMARY KEY (`idLs`),
  KEY `FK_t_liquidacionsueldo_t_trabajador` (`rutTrabajador`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_liquidacionsueldo`
--

INSERT INTO `t_liquidacionsueldo` (`idLs`, `mesEnCurso`, `anoEnCurso`, `diasTrabajados`, `asigFa`, `saludUf`, `saludPesos`, `rutTrabajador`) VALUES
(1, 'Enero', 2021, 28, 1, 0, 0, '8.582.216-0'),
(4, 'Enero', 2021, 30, 0, 0, 0, '18.769.858-8'),
(5, 'Febrero', 2021, 29, 0, 0, 0, '18.769.858-8'),
(6, 'Enero', 2021, 29, 0, 3, 0, '17.034.288-7'),
(7, 'Enero', 2021, 28, 1, 2, 0, '11.714.291-7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_mutual`
--

DROP TABLE IF EXISTS `t_mutual`;
CREATE TABLE IF NOT EXISTS `t_mutual` (
  `idMutual` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMutual` varchar(50) NOT NULL,
  PRIMARY KEY (`idMutual`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_mutual`
--

INSERT INTO `t_mutual` (`idMutual`, `nombreMutual`) VALUES
(1, 'ACHS'),
(2, 'IST'),
(3, 'ISL'),
(4, 'MUSEG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_nacionalidad`
--

DROP TABLE IF EXISTS `t_nacionalidad`;
CREATE TABLE IF NOT EXISTS `t_nacionalidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_nacionalidad`
--

INSERT INTO `t_nacionalidad` (`id`, `nombre`) VALUES
(1, 'AFGANA'),
(2, 'ALBANESA'),
(3, 'ALEMANA'),
(4, 'ANDORRANA'),
(5, 'ANGOLEÑA'),
(6, 'ANTIGUANA'),
(7, 'SAUDÍ'),
(8, 'ARGELINA'),
(9, 'ARGENTINA'),
(10, 'ARMENIA'),
(11, 'ARUBEÑA'),
(12, 'AUSTRALIANA'),
(13, 'AUSTRIACA'),
(14, 'AZERBAIYANA'),
(15, 'BAHAMEÑA'),
(16, 'BANGLADESÍ'),
(17, 'BARBADENSE'),
(18, 'BAREINÍ'),
(19, 'BELGA'),
(20, 'BELICEÑA'),
(21, 'BENINÉSA'),
(22, 'BIELORRUSA'),
(23, 'BIRMANA'),
(24, 'BOLIVIANA'),
(25, 'BOSNIA'),
(26, 'BOTSUANA'),
(27, 'BRASILEÑA'),
(28, 'BRUNEANA'),
(29, 'BÚLGARA'),
(30, 'BURKINÉS'),
(31, 'BURUNDÉSA'),
(32, 'BUTANÉSA'),
(33, 'CABOVERDIANA'),
(34, 'CAMBOYANA'),
(35, 'CAMERUNESA'),
(36, 'CANADIENSE'),
(37, 'CATARÍ'),
(38, 'CHADIANA'),
(39, 'CHILENA'),
(40, 'CHINA'),
(41, 'CHIPRIOTA'),
(42, 'VATICANA'),
(43, 'COLOMBIANA'),
(44, 'COMORENSE'),
(45, 'NORCOREANA'),
(46, 'SURCOREANA'),
(47, 'MARFILEÑA'),
(48, 'COSTARRICENSE'),
(49, 'CROATA'),
(50, 'CUBANA'),
(51, 'DANÉSA'),
(52, 'DOMINIQUÉS'),
(53, 'ECUATORIANA'),
(54, 'EGIPCIA'),
(55, 'SALVADOREÑA'),
(56, 'EMIRATÍ'),
(57, 'ERITREA'),
(58, 'ESLOVACA'),
(59, 'ESLOVENA'),
(60, 'ESPAÑOLA'),
(61, 'ESTADOUNIDENSE'),
(62, 'ESTONIA'),
(63, 'ETÍOPE'),
(64, 'FILIPINA'),
(65, 'FINLANDÉSA'),
(66, 'FIYIANA'),
(67, 'FRANCÉSA'),
(68, 'GABONÉSA'),
(69, 'GAMBIANA'),
(70, 'GEORGIANA'),
(71, 'GIBRALTAREÑA'),
(72, 'GHANÉSA'),
(73, 'GRANADINA'),
(74, 'GRIEGA'),
(75, 'GROENLANDÉSA'),
(76, 'GUATEMALTECA'),
(77, 'ECUATOGUINEANA'),
(78, 'GUINEANA'),
(79, 'GUINEANA'),
(80, 'GUYANESA'),
(81, 'HAITIANA'),
(82, 'HONDUREÑA'),
(83, 'HÚNGARA'),
(84, 'HINDÚ'),
(85, 'INDONESIA'),
(86, 'IRAQUÍ'),
(87, 'IRANÍ'),
(88, 'IRLANDÉSA'),
(89, 'ISLANDÉSA'),
(90, 'COOKIANA'),
(91, 'MARSHALÉSA'),
(92, 'SALOMONENSE'),
(93, 'ISRAELÍ'),
(94, 'ITALIANA'),
(95, 'JAMAIQUINA'),
(96, 'JAPONÉSA'),
(97, 'JORDANA'),
(98, 'KAZAJA'),
(99, 'KENIATA'),
(100, 'KIRGUISA'),
(101, 'KIRIBATIANA'),
(102, 'KUWAITÍ'),
(103, 'LAOSIANA'),
(104, 'LESOTENSE'),
(105, 'LETÓNA'),
(106, 'LIBANÉSA'),
(107, 'LIBERIANA'),
(108, 'LIBIA'),
(109, 'LIECHTENSTEINIANA'),
(110, 'LITUANA'),
(111, 'LUXEMBURGUÉSA'),
(112, 'MALGACHE'),
(113, 'MALASIA'),
(114, 'MALAUÍ'),
(115, 'MALDIVA'),
(116, 'MALIENSE'),
(117, 'MALTÉSA'),
(118, 'MARROQUÍ'),
(119, 'MARTINIQUÉS'),
(120, 'MAURICIANA'),
(121, 'MAURITANA'),
(122, 'MEXICANA'),
(123, 'MICRONESIA'),
(124, 'MOLDAVA'),
(125, 'MONEGASCA'),
(126, 'MONGOLA'),
(127, 'MONTENEGRINA'),
(128, 'MOZAMBIQUEÑA'),
(129, 'NAMIBIA'),
(130, 'NAURUANA'),
(131, 'NEPALÍ'),
(132, 'NICARAGÜENSE'),
(133, 'NIGERINA'),
(134, 'NIGERIANA'),
(135, 'NORUEGA'),
(136, 'NEOZELANDÉSA'),
(137, 'OMANÍ'),
(138, 'NEERLANDÉSA'),
(139, 'PAKISTANÍ'),
(140, 'PALAUANA'),
(141, 'PALESTINA'),
(142, 'PANAMEÑA'),
(143, 'PAPÚ'),
(144, 'PARAGUAYA'),
(145, 'PERUANA'),
(146, 'POLACA'),
(147, 'PORTUGUÉSA'),
(148, 'PUERTORRIQUEÑA'),
(149, 'BRITÁNICA'),
(150, 'CENTROAFRICANA'),
(151, 'CHECA'),
(152, 'MACEDONIA'),
(153, 'CONGOLEÑA'),
(154, 'CONGOLEÑA'),
(155, 'DOMINICANA'),
(156, 'SUDAFRICANA'),
(157, 'RUANDÉSA'),
(158, 'RUMANA'),
(159, 'RUSA'),
(160, 'SAMOANA'),
(161, 'CRISTOBALEÑA'),
(162, 'SANMARINENSE'),
(163, 'SANVICENTINA'),
(164, 'SANTALUCENSE'),
(165, 'SANTOTOMENSE'),
(166, 'SENEGALÉSA'),
(167, 'SERBIA'),
(168, 'SEYCHELLENSE'),
(169, 'SIERRALEONÉSA'),
(170, 'SINGAPURENSE'),
(171, 'SIRIA'),
(172, 'SOMALÍ'),
(173, 'CEILANÉSA'),
(174, 'SUAZI'),
(175, 'SURSUDANÉSA'),
(176, 'SUDANÉSA'),
(177, 'SUECA'),
(178, 'SUIZA'),
(179, 'SURINAMESA'),
(180, 'TAILANDÉSA'),
(181, 'TANZANA'),
(182, 'TAYIKA'),
(183, 'TIMORENSE'),
(184, 'TOGOLÉSA'),
(185, 'TONGANA'),
(186, 'TRINITENSE'),
(187, 'TUNECINA'),
(188, 'TURCOMANA'),
(189, 'TURCA'),
(190, 'TUVALUANA'),
(191, 'UCRANIANA'),
(192, 'UGANDÉSA'),
(193, 'URUGUAYA'),
(194, 'UZBEKA'),
(195, 'VANUATUENSE'),
(196, 'VENEZOLANA'),
(197, 'VIETNAMITA'),
(198, 'YEMENÍ'),
(199, 'YIBUTIANA'),
(200, 'ZAMBIANA'),
(201, 'ZIMBABUENSE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_parametro`
--

DROP TABLE IF EXISTS `t_parametro`;
CREATE TABLE IF NOT EXISTS `t_parametro` (
  `idParametro` int(11) NOT NULL AUTO_INCREMENT,
  `fechaParametro` date NOT NULL,
  `uf` float NOT NULL,
  `utm` float NOT NULL,
  PRIMARY KEY (`idParametro`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_parametro`
--

INSERT INTO `t_parametro` (`idParametro`, `fechaParametro`, `uf`, `utm`) VALUES
(1, '2021-01-01', 29123.7, 50978);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_provincia`
--

DROP TABLE IF EXISTS `t_provincia`;
CREATE TABLE IF NOT EXISTS `t_provincia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `id_region` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_provincia_t_region` (`id_region`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_provincia`
--

INSERT INTO `t_provincia` (`id`, `nombre`, `id_region`) VALUES
(1, 'Arica', 1),
(2, 'Parinacota', 1),
(3, 'Iquique', 2),
(4, 'El Tamarugal', 2),
(5, 'Tocopilla', 3),
(6, 'El Loa', 3),
(7, 'Antofagasta', 3),
(8, 'Chañaral', 4),
(9, 'Copiapó', 4),
(10, 'Huasco', 4),
(11, 'Elqui', 5),
(12, 'Limarí', 5),
(13, 'Choapa', 5),
(14, 'Petorca', 6),
(15, 'Los Andes', 6),
(16, 'San Felipe de Aconcagua', 6),
(17, 'Quillota', 6),
(18, 'Valparaiso', 6),
(19, 'San Antonio', 6),
(20, 'Isla de Pascua', 6),
(21, 'Marga Marga', 6),
(22, 'Chacabuco', 7),
(23, 'Santiago', 7),
(24, 'Cordillera', 7),
(25, 'Maipo', 7),
(26, 'Melipilla', 7),
(27, 'Talagante', 7),
(28, 'Cachapoal', 8),
(29, 'Colchagua', 8),
(30, 'Cardenal Caro', 8),
(31, 'Curicó', 9),
(32, 'Talca', 9),
(33, 'Linares', 9),
(34, 'Cauquenes', 9),
(35, 'Diguillín', 10),
(36, 'Itata', 10),
(37, 'Punilla', 10),
(38, 'Bio Bío', 11),
(39, 'Concepción', 11),
(40, 'Arauco', 11),
(41, 'Malleco', 12),
(42, 'Cautín', 12),
(43, 'Valdivia', 13),
(44, 'Ranco', 13),
(45, 'Osorno', 14),
(46, 'Llanquihue', 14),
(47, 'Chiloé', 14),
(48, 'Palena', 14),
(49, 'Coyhaique', 15),
(50, 'Aysén', 15),
(51, 'General Carrera', 15),
(52, 'Capitán Prat', 15),
(53, 'Última Esperanza', 16),
(54, 'Magallanes', 16),
(55, 'Tierra del Fuego', 16),
(56, 'Antártica Chilena', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_provinciatrabajador`
--

DROP TABLE IF EXISTS `t_provinciatrabajador`;
CREATE TABLE IF NOT EXISTS `t_provinciatrabajador` (
  `idProvinciaT` int(11) NOT NULL AUTO_INCREMENT,
  `nombreProvinciaT` varchar(64) DEFAULT NULL,
  `idRegionT` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProvinciaT`),
  KEY `FK_t_provinciatrabajador_t_regiontrabajador` (`idRegionT`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_provinciatrabajador`
--

INSERT INTO `t_provinciatrabajador` (`idProvinciaT`, `nombreProvinciaT`, `idRegionT`) VALUES
(1, 'Arica', 1),
(2, 'Parinacota', 1),
(3, 'Iquique', 2),
(4, 'El Tamarugal', 2),
(5, 'Tocopilla', 3),
(6, 'El Loa', 3),
(7, 'Antofagasta', 3),
(8, 'Chañaral', 4),
(9, 'Copiapó', 4),
(10, 'Huasco', 4),
(11, 'Elqui', 5),
(12, 'Limarí', 5),
(13, 'Choapa', 5),
(14, 'Petorca', 6),
(15, 'Los Andes', 6),
(16, 'San Felipe de Aconcagua', 6),
(17, 'Quillota', 6),
(18, 'Valparaiso', 6),
(19, 'San Antonio', 6),
(20, 'Isla de Pascua', 6),
(21, 'Marga Marga', 6),
(22, 'Chacabuco', 7),
(23, 'Santiago', 7),
(24, 'Cordillera', 7),
(25, 'Maipo', 7),
(26, 'Melipilla', 7),
(27, 'Talagante', 7),
(28, 'Cachapoal', 8),
(29, 'Colchagua', 8),
(30, 'Cardenal Caro', 8),
(31, 'Curicó', 9),
(32, 'Talca', 9),
(33, 'Linares', 9),
(34, 'Cauquenes', 9),
(35, 'Diguillín', 10),
(36, 'Itata', 10),
(37, 'Punilla', 10),
(38, 'Bio Bío', 11),
(39, 'Concepción', 11),
(40, 'Arauco', 11),
(41, 'Malleco', 12),
(42, 'Cautín', 12),
(43, 'Valdivia', 13),
(44, 'Ranco', 13),
(45, 'Osorno', 14),
(46, 'Llanquihue', 14),
(47, 'Chiloé', 14),
(48, 'Palena', 14),
(49, 'Coyhaique', 15),
(50, 'Aysén', 15),
(51, 'General Carrera', 15),
(52, 'Capitán Prat', 15),
(53, 'Última Esperanza', 16),
(54, 'Magallanes', 16),
(55, 'Tierra del Fuego', 16),
(56, 'Antártica Chilena', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_region`
--

DROP TABLE IF EXISTS `t_region`;
CREATE TABLE IF NOT EXISTS `t_region` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_region`
--

INSERT INTO `t_region` (`id`, `nombre`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaiso'),
(7, 'Metropolitana de Santiago'),
(8, 'Libertador General Bernardo O\'Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'La Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén del General Carlos Ibáñez del Campo'),
(16, 'Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_regiontrabajador`
--

DROP TABLE IF EXISTS `t_regiontrabajador`;
CREATE TABLE IF NOT EXISTS `t_regiontrabajador` (
  `idRegionT` int(11) NOT NULL AUTO_INCREMENT,
  `nombreRegionT` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`idRegionT`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_regiontrabajador`
--

INSERT INTO `t_regiontrabajador` (`idRegionT`, `nombreRegionT`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaiso'),
(7, 'Metropolitana de Santiago'),
(8, 'Libertador General Bernardo O\'Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'La Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén del General Carlos Ibáñez del Campo'),
(16, 'Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_trabajador`
--

DROP TABLE IF EXISTS `t_trabajador`;
CREATE TABLE IF NOT EXISTS `t_trabajador` (
  `rut` varchar(12) NOT NULL,
  `nombres` varchar(64) NOT NULL,
  `aPaterno` varchar(64) NOT NULL,
  `aMaterno` varchar(64) NOT NULL,
  `nacionalidadTrab` varchar(64) NOT NULL,
  `edadTrabajador` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `estadoCivil` varchar(30) NOT NULL,
  `fechaDeNacimiento` date NOT NULL,
  `nivelEstudio` varchar(50) NOT NULL,
  `profesion` varchar(50) NOT NULL,
  `licenciaDeConducion` varchar(40) NOT NULL,
  `direccionTrabajador` varchar(64) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `formasDePago` varchar(45) NOT NULL,
  `cuenta` varchar(50) NOT NULL,
  `idRegionT` int(11) NOT NULL,
  `idProvinciaT` int(11) NOT NULL,
  `idComunaT` int(11) NOT NULL,
  `idAfp` int(11) NOT NULL,
  `idIsapreSalud` int(11) NOT NULL,
  `idBanco` int(11) NOT NULL,
  PRIMARY KEY (`rut`),
  KEY `FK_t_trabajador_t_regiontrabajador` (`idRegionT`),
  KEY `FK_t_trabajador_t_provinciatrabajador` (`idProvinciaT`),
  KEY `FK_t_trabajador_t_comunatrabajador` (`idComunaT`),
  KEY `FK_t_trabajador` (`idAfp`),
  KEY `FK_t_trabajador_t_isapresalud` (`idIsapreSalud`),
  KEY `FK_t_trabajador_t_banco` (`idBanco`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_trabajador`
--

INSERT INTO `t_trabajador` (`rut`, `nombres`, `aPaterno`, `aMaterno`, `nacionalidadTrab`, `edadTrabajador`, `email`, `sexo`, `estadoCivil`, `fechaDeNacimiento`, `nivelEstudio`, `profesion`, `licenciaDeConducion`, `direccionTrabajador`, `telefono`, `formasDePago`, `cuenta`, `idRegionT`, `idProvinciaT`, `idComunaT`, `idAfp`, `idIsapreSalud`, `idBanco`) VALUES
('8.582.216-0', 'JUAN ENQUES', 'MUÑOS', 'VELASQUES', 'chileno', 35, 'rkprogramacion@gmail.com', 'Masculino', 'Casado/a', '1965-02-05', 'Universitario', 'adminstradora', 'tipo A', 'los cardos N 4569', '76027560', 'Abono Cuenta corriente ', '45693131 ', 2, 4, 10, 8, 7, 4),
('18.769.858-8', 'YONATHAN FERNANDO', 'IGOR', 'SANCHEZ', 'chileno', 25, 'historia524@gmail.com', 'Masculino', 'Soltero/a', '1995-02-20', 'Tecnico', 'INFORMATICO', 'Sin licencia', 'los cardos N 4569', '76027560', 'Abono Cuenta vista ', '18769858 ', 14, 46, 311, 3, 7, 1),
('17.034.288-7', 'juan pedro', 'velasques', 'juaquin', 'chileno', 50, 'nidenscorporation@gmail.com', 'Masculino', 'Viudo/a', '1956-02-20', 'Universitario', 'INFORMATICO', 'tipo B', 'los cardos N 4156', '76027560', 'Abono Cuenta vista ', '45693131 ', 2, 1, 1, 3, 1, 15),
('11.714.291-7', 'PRUEBA TEST', 'PRUEBA', 'PRUEBA', 'chileno', 25, 'omegasparkling@gmail.com', 'Masculino', 'Soltero/a', '1995-02-25', 'Universitario', 'INFORMATICO', 'tipo B', 'los cardos N 4156', '+56989562341', 'Abono Cuenta corriente ', '45693131 ', 14, 46, 311, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuarios`
--

DROP TABLE IF EXISTS `t_usuarios`;
CREATE TABLE IF NOT EXISTS `t_usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) NOT NULL,
  `password` varchar(50) NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `t_usuarios` (`idUsuario`, `user`, `password`, `rol`) VALUES
(1, 'User', 'User', 'personal'),
(2, 'Admin', 'Admin', 'admin'),
(3, 'Felipe Muños', 'personal456', 'personal'),
(4, 'RODRIGO RUIZ', 'PERSONAL789', 'personal'),
(78, 'Camila', 'User', 'personal'),
(86, 'u', 'u', 'personal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
