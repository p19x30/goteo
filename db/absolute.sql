-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-12-2011 a las 19:05:12
-- Versión del servidor: 5.1.49
-- Versión de PHP: 5.3.3-1ubuntu9.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `goteo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl`
--

DROP TABLE IF EXISTS `acl`;
CREATE TABLE `acl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` varchar(50) NOT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `role_FK` (`role_id`),
  KEY `user_FK` (`user_id`),
  KEY `node_FK` (`node_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1134 ;

--
-- Volcar la base de datos para la tabla `acl`
--

INSERT INTO `acl` VALUES(1, '*', '*', '*', '//', 1, '2011-05-18 16:45:40');
INSERT INTO `acl` VALUES(2, '*', '*', '*', '/image/*', 1, '2011-05-18 23:08:42');
INSERT INTO `acl` VALUES(3, '*', '*', '*', '/tpv/*', 1, '2011-05-31 20:55:42');
INSERT INTO `acl` VALUES(4, '*', '*', '*', '/admin/*', 0, '2011-05-18 16:45:40');
INSERT INTO `acl` VALUES(5, '*', '*', '*', '/project/*', 1, '2011-05-18 16:45:40');
INSERT INTO `acl` VALUES(6, '*', 'superadmin', '*', '/admin/*', 1, '2011-05-18 16:45:40');
INSERT INTO `acl` VALUES(7, '*', '*', '*', '/user/edit/*', 0, '2011-05-18 16:49:36');
INSERT INTO `acl` VALUES(8, '*', '*', '*', '/user/*', 1, '2011-05-18 20:59:54');
INSERT INTO `acl` VALUES(9, '*', '*', '*', 'user/logout', 1, '2011-05-18 21:15:02');
INSERT INTO `acl` VALUES(10, '*', '*', '*', '/search', 1, '2011-05-18 21:16:40');
INSERT INTO `acl` VALUES(11, '*', 'user', '*', '/project/create', 0, '2011-05-18 21:46:44');
INSERT INTO `acl` VALUES(12, '*', 'user', '*', '/dashboard/*', 1, '2011-05-18 21:48:43');
INSERT INTO `acl` VALUES(13, '*', 'public', '*', '/invest/*', 0, '2011-05-18 22:30:23');
INSERT INTO `acl` VALUES(14, '*', 'user', '*', '/message/*', 1, '2011-05-18 22:30:23');
INSERT INTO `acl` VALUES(15, '*', '*', '*', '/user/logout', 1, '2011-05-18 22:33:27');
INSERT INTO `acl` VALUES(16, '*', '*', '*', '/discover/*', 1, '2011-05-18 22:37:00');
INSERT INTO `acl` VALUES(17, '*', '*', '*', '/project/create', 0, '2011-05-18 22:38:22');
INSERT INTO `acl` VALUES(18, '*', '*', '*', '/project/edit/*', 0, '2011-05-18 22:38:22');
INSERT INTO `acl` VALUES(19, '*', '*', '*', '/project/raw/*', 0, '2011-05-18 22:39:37');
INSERT INTO `acl` VALUES(20, '*', 'root', '*', '/project/raw/*', 1, '2011-05-18 22:39:37');
INSERT INTO `acl` VALUES(21, '*', 'superadmin', '*', '/project/edit/*', 1, '2011-05-18 22:43:08');
INSERT INTO `acl` VALUES(22, '*', '*', '*', '/project/delete/*', 0, '2011-05-18 22:43:51');
INSERT INTO `acl` VALUES(23, '*', 'superadmin', '*', '/project/delete/*', 1, '2011-05-18 22:44:37');
INSERT INTO `acl` VALUES(24, '*', '*', '*', '/blog/*', 1, '2011-05-18 22:45:14');
INSERT INTO `acl` VALUES(25, '*', '*', '*', '/faq/*', 1, '2011-05-18 22:49:01');
INSERT INTO `acl` VALUES(26, '*', '*', '*', '/about/*', 1, '2011-05-18 22:49:01');
INSERT INTO `acl` VALUES(27, '*', 'superadmin', '*', '/user/edit/*', 1, '2011-05-18 22:56:56');
INSERT INTO `acl` VALUES(29, '*', 'user', '*', '/user/edit', 1, '2011-05-18 23:56:56');
INSERT INTO `acl` VALUES(30, '*', 'user', '*', '/message/edit/*', 0, '2011-05-19 00:45:29');
INSERT INTO `acl` VALUES(31, '*', 'user', '*', '/message/delete/*', 0, '2011-05-19 00:45:29');
INSERT INTO `acl` VALUES(32, '*', 'superadmin', '*', '/message/edit/*', 1, '2011-05-19 00:56:55');
INSERT INTO `acl` VALUES(33, '*', 'superadmin', '*', '/message/delete/*', 1, '2011-05-19 00:00:00');
INSERT INTO `acl` VALUES(34, '*', 'user', '*', '/invest/*', 1, '2011-05-19 00:56:32');
INSERT INTO `acl` VALUES(35, '*', 'public', '*', '/message/*', 0, '2011-05-19 00:56:32');
INSERT INTO `acl` VALUES(36, '*', 'public', '*', '/user/edit/*', 0, '2011-05-19 01:00:18');
INSERT INTO `acl` VALUES(37, '*', 'superadmin', '*', '/cron/*', 1, '2011-05-27 01:04:02');
INSERT INTO `acl` VALUES(38, '*', '*', '*', '/widget/*', 1, '2011-06-10 11:30:39');
INSERT INTO `acl` VALUES(39, '*', '*', '*', '/user/recover/*', 1, '2011-06-12 22:31:36');
INSERT INTO `acl` VALUES(40, '*', '*', '*', '/news/*', 1, '2011-06-19 13:36:34');
INSERT INTO `acl` VALUES(41, '*', 'user', '*', '/community/*', 1, '2011-06-19 13:49:36');
INSERT INTO `acl` VALUES(42, '*', '*', '*', '/ws/*', 1, '2011-06-20 23:18:15');
INSERT INTO `acl` VALUES(43, '*', 'checker', '*', '/review/*', 1, '2011-06-21 17:18:51');
INSERT INTO `acl` VALUES(44, '*', '*', '*', '/contact/*', 1, '2011-06-30 00:24:00');
INSERT INTO `acl` VALUES(45, '*', '*', '*', '/service/*', 1, '2011-07-13 17:26:04');
INSERT INTO `acl` VALUES(46, '*', 'user', '*', '/preview/*', 1, '2011-07-22 16:43:20');
INSERT INTO `acl` VALUES(47, '*', 'translator', '*', '/translate/*', 1, '2011-07-24 12:47:50');
INSERT INTO `acl` VALUES(48, '*', '*', '*', '/legal/*', 1, '2011-08-05 13:08:11');
INSERT INTO `acl` VALUES(49, '*', '*', '*', '/rss/*', 1, '2011-08-14 18:31:17');
INSERT INTO `acl` VALUES(50, '*', 'superadmin', '*', '/impersonate/*', 1, '2011-08-20 09:40:29');
INSERT INTO `acl` VALUES(51, '*', '*', '*', '/glossary/*', 1, '2011-08-25 15:37:45');
INSERT INTO `acl` VALUES(52, '*', 'user', 'paypal', '/paypal/*', 1, '2011-09-05 00:58:15');
INSERT INTO `acl` VALUES(53, '*', 'user', 'paypal', '/cron/*', 1, '2011-09-05 00:58:15');
INSERT INTO `acl` VALUES(54, '*', '*', '*', '/press/*', 1, '2011-09-06 10:04:34');
INSERT INTO `acl` VALUES(55, '*', '*', '*', '/project/view/*', 0, '2011-09-16 15:46:31');
INSERT INTO `acl` VALUES(56, '*', '*', '*', '/mail/*', 1, '2011-09-25 14:13:26');
INSERT INTO `acl` VALUES(57, '*', 'user', 'diegobus', '/admin/*', 1, '2011-11-22 16:15:19');
INSERT INTO `acl` VALUES(58, '*', '*', '*', '/json/*', 1, '2011-11-22 16:14:48');
INSERT INTO `acl` VALUES(59, '*', '*', '*', '/call/*', 1, '2011-05-18 16:45:40');
INSERT INTO `acl` VALUES(60, '*', '*', '*', '/call/create', 0, '2011-05-18 22:38:22');
INSERT INTO `acl` VALUES(61, '*', 'caller', '*', '/call/create', 1, '2011-05-18 21:46:44');
INSERT INTO `acl` VALUES(62, '*', 'superadmin', '*', '/call/create', 1, '2011-05-18 21:46:44');
INSERT INTO `acl` VALUES(63, '*', '*', '*', '/call/edit/*', 0, '2011-05-18 22:38:22');
INSERT INTO `acl` VALUES(64, '*', '*', '*', '/call/raw/*', 0, '2011-05-18 22:39:37');
INSERT INTO `acl` VALUES(65, '*', 'root', '*', '/call/raw/*', 1, '2011-05-18 22:39:37');
INSERT INTO `acl` VALUES(66, '*', 'superadmin', '*', '/call/edit/*', 1, '2011-05-18 22:43:08');
INSERT INTO `acl` VALUES(67, '*', '*', '*', '/wof/*', 1, '2011-12-14 22:16:15');
INSERT INTO `acl` VALUES(68, '*', '*', '*', '/call/delete/*', 0, '2011-05-18 22:43:51');
INSERT INTO `acl` VALUES(69, '*', 'superadmin', '*', '/call/delete/*', 1, '2011-05-18 22:44:37');
INSERT INTO `acl` VALUES(70, '*', '*', '*', '/call/view/*', 0, '2011-09-16 15:46:31');
INSERT INTO `acl` VALUES(509, '*', '*', '*', '/wof/*', 1, '2011-12-14 18:06:02');
INSERT INTO `acl` VALUES(1004, '*', 'user', 'olivier', '/project/edit/3d72d03458ebd5797cc5fc1c014fc894/', 1, '2011-07-04 19:30:42');
INSERT INTO `acl` VALUES(1005, '*', 'user', 'olivier', '/project/delete/3d72d03458ebd5797cc5fc1c014fc894/', 1, '2011-07-04 19:30:42');
INSERT INTO `acl` VALUES(1010, '*', 'user', 'tintangibles', '/project/edit/hkp/', 1, '2011-07-05 00:23:32');
INSERT INTO `acl` VALUES(1011, '*', 'user', 'tintangibles', '/project/delete/hkp/', 1, '2011-07-05 00:23:32');
INSERT INTO `acl` VALUES(1054, '*', 'user', 'susana', '/project/edit/ae02e5caf5a19567007c6cb06a8c9d95/', 1, '2011-07-15 16:14:51');
INSERT INTO `acl` VALUES(1055, '*', 'user', 'susana', '/project/delete/ae02e5caf5a19567007c6cb06a8c9d95/', 1, '2011-07-15 16:14:51');
INSERT INTO `acl` VALUES(1056, '*', 'user', 'olivier', '/project/edit/8c069c398c3e3114e681ccfafa4a3fe0/', 1, '2011-07-15 19:04:21');
INSERT INTO `acl` VALUES(1057, '*', 'user', 'olivier', '/project/delete/8c069c398c3e3114e681ccfafa4a3fe0/', 1, '2011-07-15 19:04:21');
INSERT INTO `acl` VALUES(1064, '*', 'user', 'kaime', '/project/edit/f1dd9c1678c62273e21b67bff6e8b47a/', 1, '2011-07-20 18:52:26');
INSERT INTO `acl` VALUES(1065, '*', 'user', 'kaime', '/project/delete/f1dd9c1678c62273e21b67bff6e8b47a/', 1, '2011-07-20 18:52:26');
INSERT INTO `acl` VALUES(1066, '*', 'user', 'root', '/project/edit/8851739335520c5eeea01cd745d0442d/', 1, '2011-07-21 10:33:28');
INSERT INTO `acl` VALUES(1067, '*', 'user', 'root', '/project/delete/8851739335520c5eeea01cd745d0442d/', 1, '2011-07-21 10:33:28');
INSERT INTO `acl` VALUES(1068, '*', 'user', 'root', '/project/edit/984990664ca1a1a98522b2640b0fc535/', 1, '2011-07-21 11:12:18');
INSERT INTO `acl` VALUES(1069, '*', 'user', 'root', '/project/delete/984990664ca1a1a98522b2640b0fc535/', 1, '2011-07-21 11:12:18');
INSERT INTO `acl` VALUES(1072, '*', 'user', 'root', '/project/edit/e4ae82c6a3497c04d2338fe63961c92c/', 1, '2011-07-25 16:43:05');
INSERT INTO `acl` VALUES(1073, '*', 'user', 'root', '/project/delete/e4ae82c6a3497c04d2338fe63961c92c/', 1, '2011-07-25 16:43:05');
INSERT INTO `acl` VALUES(1076, '*', 'user', 'demo', '/project/edit/tweetometro/', 1, '2011-07-26 11:27:37');
INSERT INTO `acl` VALUES(1077, '*', 'user', 'demo', '/project/delete/tweetometro/', 1, '2011-07-26 11:27:37');
INSERT INTO `acl` VALUES(1084, '*', 'user', 'demo', '/project/edit/tutorial-goteo/', 1, '2011-07-27 19:28:28');
INSERT INTO `acl` VALUES(1085, '*', 'user', 'demo', '/project/delete/tutorial-goteo/', 1, '2011-07-27 19:28:28');
INSERT INTO `acl` VALUES(1086, '*', 'user', 'acomunes', '/project/edit/move-commons/', 1, '2011-07-28 11:28:33');
INSERT INTO `acl` VALUES(1087, '*', 'user', 'acomunes', '/project/delete/move-commons/', 1, '2011-07-28 11:28:33');
INSERT INTO `acl` VALUES(1088, '*', 'user', 'ivan', '/project/edit/f63dab04c0b63cb02d4d1a85aa738ee3/', 1, '2011-07-31 12:48:23');
INSERT INTO `acl` VALUES(1089, '*', 'user', 'ivan', '/project/delete/f63dab04c0b63cb02d4d1a85aa738ee3/', 1, '2011-07-31 12:48:23');
INSERT INTO `acl` VALUES(1090, '*', 'user', 'fbalague', '/project/edit/9925d72d4b0a4b0733abaeaa3e187581/', 1, '2011-08-02 09:40:00');
INSERT INTO `acl` VALUES(1091, '*', 'user', 'fbalague', '/project/delete/9925d72d4b0a4b0733abaeaa3e187581/', 1, '2011-08-02 09:40:00');
INSERT INTO `acl` VALUES(1092, '*', 'user', 'itxaso', '/project/edit/mi-barrio/', 1, '2011-08-20 11:53:09');
INSERT INTO `acl` VALUES(1093, '*', 'user', 'itxaso', '/project/delete/mi-barrio/', 1, '2011-08-20 11:53:09');
INSERT INTO `acl` VALUES(1094, '*', 'user', 'diegobus', '/project/edit/fixie-per-tothom/', 1, '2011-08-27 20:42:56');
INSERT INTO `acl` VALUES(1095, '*', 'user', 'diegobus', '/project/delete/fixie-per-tothom/', 1, '2011-08-27 20:42:56');
INSERT INTO `acl` VALUES(1096, '*', 'user', 'paypal', '/project/edit/9ae51fb1ca2601e407969fa54cd47086/', 1, '2011-09-08 15:28:02');
INSERT INTO `acl` VALUES(1097, '*', 'user', 'paypal', '/project/delete/9ae51fb1ca2601e407969fa54cd47086/', 1, '2011-09-08 15:28:02');
INSERT INTO `acl` VALUES(1098, '*', 'user', 'diegobus', '/project/edit/dinou-publicacio-irregular/', 1, '2011-09-28 19:18:57');
INSERT INTO `acl` VALUES(1099, '*', 'user', 'diegobus', '/project/delete/dinou-publicacio-irregular/', 1, '2011-09-28 19:18:57');
INSERT INTO `acl` VALUES(1100, '*', 'user', 'goteo', '/project/edit/a9277be1c7e92eaa36ecae753231bfb1/', 1, '2011-10-11 16:08:08');
INSERT INTO `acl` VALUES(1101, '*', 'user', 'goteo', '/project/delete/a9277be1c7e92eaa36ecae753231bfb1/', 1, '2011-10-11 16:08:08');
INSERT INTO `acl` VALUES(1102, '*', 'user', 'olivier', '/project/edit/no-sleep-till-brooklyn/', 1, '2011-10-18 13:53:48');
INSERT INTO `acl` VALUES(1103, '*', 'user', 'olivier', '/project/delete/no-sleep-till-brooklyn/', 1, '2011-10-18 13:53:48');
INSERT INTO `acl` VALUES(1104, '*', 'user', 'esenabre', '/project/edit/pliegos/', 1, '2011-10-24 18:24:43');
INSERT INTO `acl` VALUES(1105, '*', 'user', 'esenabre', '/project/delete/pliegos/', 1, '2011-10-24 18:24:43');
INSERT INTO `acl` VALUES(1106, '*', 'user', 'goteo', '/project/edit/43b8c28144ad2a9687374e95ae9ac4d6/', 1, '2011-11-08 19:46:14');
INSERT INTO `acl` VALUES(1107, '*', 'user', 'goteo', '/project/delete/43b8c28144ad2a9687374e95ae9ac4d6/', 1, '2011-11-08 19:46:14');
INSERT INTO `acl` VALUES(1108, '*', 'user', 'root', '/project/edit/7cf75c8ccd8d64c053887165c6154b1d/', 1, '2011-12-07 09:19:51');
INSERT INTO `acl` VALUES(1109, '*', 'user', 'root', '/project/delete/7cf75c8ccd8d64c053887165c6154b1d/', 1, '2011-12-07 09:19:51');
INSERT INTO `acl` VALUES(1112, '*', 'caller', 'goteo', '/call/edit/call2arms/', 1, '2011-12-07 16:26:25');
INSERT INTO `acl` VALUES(1113, '*', 'caller', 'goteo', '/call/delete/call2arms/', 1, '2011-12-07 16:26:25');
INSERT INTO `acl` VALUES(1116, '*', 'caller', 'root', '/call/edit/demo/', 1, '2011-12-08 21:42:48');
INSERT INTO `acl` VALUES(1117, '*', 'caller', 'root', '/call/delete/demo/', 1, '2011-12-08 21:42:48');
INSERT INTO `acl` VALUES(1120, '*', 'caller', 'goteo', '/call/edit/test/', 1, '2011-12-14 22:03:29');
INSERT INTO `acl` VALUES(1121, '*', 'caller', 'goteo', '/call/delete/test/', 1, '2011-12-14 22:03:29');
INSERT INTO `acl` VALUES(1122, '*', 'caller', 'goteo', '/call/edit/gij/', 1, '2011-12-17 14:05:58');
INSERT INTO `acl` VALUES(1123, '*', 'caller', 'goteo', '/call/delete/gij/', 1, '2011-12-17 14:05:58');
INSERT INTO `acl` VALUES(1124, '*', 'user', 'goteo', '/project/edit/75a3d571ea3433f059c9196be05c3c8c/', 1, '2011-12-20 18:14:32');
INSERT INTO `acl` VALUES(1125, '*', 'user', 'goteo', '/project/delete/75a3d571ea3433f059c9196be05c3c8c/', 1, '2011-12-20 18:14:32');
INSERT INTO `acl` VALUES(1126, '*', 'user', 'goteo', '/project/edit/5aca87da1aff996c6fb7abaddc947ae0/', 1, '2011-12-22 15:20:59');
INSERT INTO `acl` VALUES(1127, '*', 'user', 'goteo', '/project/delete/5aca87da1aff996c6fb7abaddc947ae0/', 1, '2011-12-22 15:20:59');
INSERT INTO `acl` VALUES(1128, '*', 'user', 'olivier', '/project/edit/9660151effaa85fb8c806cac7672e00d/', 1, '2011-12-22 15:25:28');
INSERT INTO `acl` VALUES(1129, '*', 'user', 'olivier', '/project/delete/9660151effaa85fb8c806cac7672e00d/', 1, '2011-12-22 15:25:28');
INSERT INTO `acl` VALUES(1130, '*', 'user', 'esenabre', '/project/edit/cf5c3dbb1b78edda7ce637d071304220/', 1, '2011-12-22 15:35:30');
INSERT INTO `acl` VALUES(1131, '*', 'user', 'esenabre', '/project/delete/cf5c3dbb1b78edda7ce637d071304220/', 1, '2011-12-22 15:35:30');
INSERT INTO `acl` VALUES(1132, '*', 'caller', 'olivier', '/call/edit/test1/', 1, '2011-12-29 10:15:28');
INSERT INTO `acl` VALUES(1133, '*', 'caller', 'olivier', '/call/delete/test1/', 1, '2011-12-29 10:15:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT '1',
  `image` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_node` (`node`,`project`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Proyectos en banner superior' AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `banner`
--

INSERT INTO `banner` VALUES(1, 'goteo', 'fixie-per-tothom', 1, 133);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `owner` varchar(50) NOT NULL COMMENT 'la id del proyecto o nodo',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Blogs de nodo o proyecto' AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `blog`
--

INSERT INTO `blog` VALUES(1, 'node', 'goteo', 1);
INSERT INTO `blog` VALUES(5, 'project', 'goteo', 1);
INSERT INTO `blog` VALUES(6, 'project', 'fixie-per-tothom', 1);
INSERT INTO `blog` VALUES(7, 'project', 'dinou-publicacio-irregular', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `call`
--

DROP TABLE IF EXISTS `call`;
CREATE TABLE `call` (
  `id` varchar(50) NOT NULL,
  `name` tinytext,
  `subtitle` tinytext,
  `lang` varchar(2) NOT NULL DEFAULT 'es',
  `status` int(1) NOT NULL,
  `translate` int(1) NOT NULL DEFAULT '0',
  `owner` varchar(50) NOT NULL COMMENT 'entidad que convoca',
  `amount` int(6) DEFAULT NULL COMMENT 'presupuesto',
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `opened` date DEFAULT NULL,
  `until` date DEFAULT NULL,
  `published` date DEFAULT NULL,
  `success` date DEFAULT NULL,
  `closed` date DEFAULT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `contract_nif` varchar(10) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `phone` varchar(20) DEFAULT NULL COMMENT 'guardar sin espacios ni puntos',
  `contract_email` varchar(255) DEFAULT NULL,
  `address` tinytext,
  `zipcode` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `description` text,
  `whom` text,
  `apply` text,
  `legal` longtext,
  `dossier` tinytext,
  `call_location` varchar(256) DEFAULT NULL,
  `scope` int(1) DEFAULT NULL,
  `contract_entity` int(1) NOT NULL DEFAULT '0',
  `contract_birthdate` date DEFAULT NULL,
  `entity_office` varchar(255) DEFAULT NULL COMMENT 'Cargo del responsable',
  `entity_name` varchar(255) DEFAULT NULL,
  `entity_cif` varchar(10) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `post_address` tinytext,
  `secondary_address` int(11) NOT NULL DEFAULT '0',
  `post_zipcode` varchar(10) DEFAULT NULL,
  `post_location` varchar(255) DEFAULT NULL,
  `post_country` varchar(50) DEFAULT NULL,
  `days` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proyectos de la plataforma';

--
-- Volcar la base de datos para la tabla `call`
--

INSERT INTO `call` VALUES('call2arms', 'call2arms', 'Llamada a las armas de la revolución social media market managerssssssssssss!!!!!', 'es', 4, 0, 'goteo', 10000, NULL, '2011-12-17', '2011-12-22', '2011-12-21', '2011-12-23', NULL, NULL, 'Susana Noguero', 'G63306914', '654321987', 'jcanaves@goteo.org', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', '155', '153', 'Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña iatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem a', 'Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar iatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam', 'Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar iatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam', 'Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones iatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam', 'asdf asd fasdf asdf asdf asdf asdf asdf sdfa', 'Barcelona', NULL, 0, '0000-00-00', '', '', '', NULL, 0, NULL, NULL, NULL, -1);
INSERT INTO `call` VALUES('demo', 'Demo', 'Convocatoria demo', 'es', 1, 0, 'demo', 20000, NULL, '2011-12-08', '2011-12-14', NULL, '2011-12-14', NULL, NULL, 'Demo Goteo', '46649545W', '936924182', 'jcanaves@goteo.org', 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España', '175', '176', 'dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestia', 'dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestia', 'dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestia', 'dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestia', '', 'Barcelona', NULL, 0, '0000-00-00', '', '', '', NULL, 0, NULL, NULL, NULL, 1);
INSERT INTO `call` VALUES('gij', 'INNOVACIÓN SOCIAL EXTREMADURA', 'Frase de resumen Frase de re', 'es', 3, 0, 'iniciativa-joven', 30000, NULL, NULL, '2011-12-17', NULL, NULL, NULL, NULL, 'Iniciativa Joven', '', NULL, NULL, NULL, NULL, NULL, 'España', '155', '153', 'Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña Enunciado de la campaña ', 'Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar Quiénes pueden participar ', 'Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar Cómo se puede aplicar ', 'Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones Términos y condiciones ', '', 'Barcelona, Cataluña SP', NULL, 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, 25);
INSERT INTO `call` VALUES('test', 'Campaña de test', '', 'es', 1, 0, 'goteo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Susana Noguero', 'G63306914', '654321987', NULL, 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', NULL, NULL, '', '', '', '', '', 'Barcelona', NULL, 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `call` VALUES('test1', 'test1', NULL, 'es', 1, 0, 'olivier', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Olivier Schulbaum', 'G63306914', '667031530', NULL, 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palma de Mallorca', NULL, 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `call_category`
--

DROP TABLE IF EXISTS `call_category`;
CREATE TABLE `call_category` (
  `call` varchar(50) NOT NULL,
  `category` int(12) NOT NULL,
  UNIQUE KEY `call_category` (`call`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Categorias de las convocatorias';

--
-- Volcar la base de datos para la tabla `call_category`
--

INSERT INTO `call_category` VALUES('call2arms', 6);
INSERT INTO `call_category` VALUES('call2arms', 11);
INSERT INTO `call_category` VALUES('call2arms', 13);
INSERT INTO `call_category` VALUES('demo', 2);
INSERT INTO `call_category` VALUES('demo', 11);
INSERT INTO `call_category` VALUES('demo', 14);
INSERT INTO `call_category` VALUES('gij', 6);
INSERT INTO `call_category` VALUES('gij', 9);
INSERT INTO `call_category` VALUES('gij', 11);
INSERT INTO `call_category` VALUES('gij', 13);
INSERT INTO `call_category` VALUES('gij', 14);
INSERT INTO `call_category` VALUES('gij', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `call_icon`
--

DROP TABLE IF EXISTS `call_icon`;
CREATE TABLE `call_icon` (
  `call` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  UNIQUE KEY `call_icon` (`call`,`icon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos de retorno de las convocatorias';

--
-- Volcar la base de datos para la tabla `call_icon`
--

INSERT INTO `call_icon` VALUES('call2arms', 'code');
INSERT INTO `call_icon` VALUES('call2arms', 'design');
INSERT INTO `call_icon` VALUES('call2arms', 'file');
INSERT INTO `call_icon` VALUES('call2arms', 'manual');
INSERT INTO `call_icon` VALUES('call2arms', 'product');
INSERT INTO `call_icon` VALUES('demo', 'code');
INSERT INTO `call_icon` VALUES('demo', 'design');
INSERT INTO `call_icon` VALUES('demo', 'file');
INSERT INTO `call_icon` VALUES('demo', 'manual');
INSERT INTO `call_icon` VALUES('demo', 'money');
INSERT INTO `call_icon` VALUES('gij', 'code');
INSERT INTO `call_icon` VALUES('gij', 'design');
INSERT INTO `call_icon` VALUES('gij', 'file');
INSERT INTO `call_icon` VALUES('gij', 'manual');
INSERT INTO `call_icon` VALUES('gij', 'money');
INSERT INTO `call_icon` VALUES('gij', 'product');
INSERT INTO `call_icon` VALUES('gij', 'service');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `call_lang`
--

DROP TABLE IF EXISTS `call_lang`;
CREATE TABLE `call_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `description` text,
  `whom` text,
  `apply` text,
  `legal` longtext,
  `subtitle` text,
  `dossier` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `call_lang`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `call_project`
--

DROP TABLE IF EXISTS `call_project`;
CREATE TABLE `call_project` (
  `call` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  UNIQUE KEY `call_project` (`call`,`project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proyectos asignados a convocatorias';

--
-- Volcar la base de datos para la tabla `call_project`
--

INSERT INTO `call_project` VALUES('call2arms', 'dinou-publicacio-irregular');
INSERT INTO `call_project` VALUES('call2arms', 'fixie-per-tothom');
INSERT INTO `call_project` VALUES('call2arms', 'pliegos');
INSERT INTO `call_project` VALUES('call2arms', 'robocicla');
INSERT INTO `call_project` VALUES('call2arms', 'tweetometro');
INSERT INTO `call_project` VALUES('call2arms', 'urban-social-design-database');
INSERT INTO `call_project` VALUES('gij', '5aca87da1aff996c6fb7abaddc947ae0');
INSERT INTO `call_project` VALUES('gij', '9660151effaa85fb8c806cac7672e00d');
INSERT INTO `call_project` VALUES('gij', 'cf5c3dbb1b78edda7ce637d071304220');
INSERT INTO `call_project` VALUES('test', 'a9277be1c7e92eaa36ecae753231bfb1');
INSERT INTO `call_project` VALUES('test', 'archinhand-architecture-in-your-hand');
INSERT INTO `call_project` VALUES('test', 'dinou-publicacio-irregular');
INSERT INTO `call_project` VALUES('test', 'hkp');
INSERT INTO `call_project` VALUES('test', 'nodo-movil');
INSERT INTO `call_project` VALUES('test', 'pliegos');
INSERT INTO `call_project` VALUES('test', 'todojunto-letterpress');
INSERT INTO `call_project` VALUES('test', 'tutorial-goteo');
INSERT INTO `call_project` VALUES('test', 'tweetometro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign`
--

DROP TABLE IF EXISTS `campaign`;
CREATE TABLE `campaign` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `campaign`
--

INSERT INTO `campaign` VALUES(1, 'Campaña GIJ', 'Gabinete de iniciativa Joven');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `description` text,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Categorias de los proyectos' AUTO_INCREMENT=16 ;

--
-- Volcar la base de datos para la tabla `category`
--

INSERT INTO `category` VALUES(2, 'Social', 'Proyectos que promueven el cambio social, la resolución de problemas en las relaciones humanas y el fortalecimiento del pueblo para conseguir un mayor bienestar.', 1);
INSERT INTO `category` VALUES(6, 'Comunicativo', 'Proyectos con el objetivo de informar, denunciar, comunicar... Estarían en este bloque el periodismo ciudadano, documentales, blogs, programas de radio...', 1);
INSERT INTO `category` VALUES(7, 'Tecnológico', 'Software, hardware, herramientas... ', 2);
INSERT INTO `category` VALUES(9, 'Comercial', 'Proyectos que aspiran claramente a convertirse en una empresa. ', 1);
INSERT INTO `category` VALUES(10, 'Educátivo', 'Proyectos donde el objetivo primordial es la educación o la formación a otros. ', 1);
INSERT INTO `category` VALUES(11, 'Cultural', 'Proyectos con objetivos artísticos, culturales... ', 1);
INSERT INTO `category` VALUES(13, 'Ecológico', 'Proyectos relacionados con el cuidado del medio ambiente.\r\n', 7);
INSERT INTO `category` VALUES(14, 'Científico', 'Estudios de alguna materia, proyectos que buscan respuestas, soluciones, explicaciones nuevas.', 1);
INSERT INTO `category` VALUES(15, 'Chipiflaustico', 'sadf asdf a', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_lang`
--

DROP TABLE IF EXISTS `category_lang`;
CREATE TABLE `category_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `category_lang`
--

INSERT INTO `category_lang` VALUES(2, 'en', 'ENG Social', 'ENG Proyectos que promueven el cambio social, la resolución de problemas en las relaciones humanas y el fortalecimiento del pueblo para conseguir un mayor bienestar.');
INSERT INTO `category_lang` VALUES(6, 'en', 'ENG Comunicativo', 'ENG Proyectos con el objetivo de informar, denunciar, comunicar... Estarían en este bloque el periodismo ciudadano, documentales, blogs, programas de radio...');
INSERT INTO `category_lang` VALUES(7, 'en', 'ENG Tecnológico', 'ENG Software, hardware, herramientas... ');
INSERT INTO `category_lang` VALUES(9, 'en', 'ENG Comercial', 'Proyectos que aspiran claramente a convertirse en una empresa. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post` bigint(20) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `user` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Comentarios' AUTO_INCREMENT=18 ;

--
-- Volcar la base de datos para la tabla `comment`
--

INSERT INTO `comment` VALUES(12, 16, '2011-07-08 16:49:33', 'aqui debeíra haber una galería para poder publicar varias fotos ya que si quiero dar cuenta del proceso de construción de un objeto por ejemplo, necesitare publicar varias imagenes', 'diegobus');
INSERT INTO `comment` VALUES(13, 3, '2011-08-22 17:08:03', 'sdf dasdf asdf ', 'goteo');
INSERT INTO `comment` VALUES(14, 3, '2011-09-20 21:51:31', 'asdf asdf asdf ', 'goteo');
INSERT INTO `comment` VALUES(15, 3, '2011-09-20 21:52:28', 'asdf asdf asdf asdf asdf ', 'goteo');
INSERT INTO `comment` VALUES(16, 3, '2011-09-20 21:53:28', 'asdf asdf asdf asd', 'goteo');
INSERT INTO `comment` VALUES(17, 3, '2011-09-20 21:53:53', 'sdaf asdf asdf ', 'goteo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cost`
--

DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `cost` tinytext,
  `description` text,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(5) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `from` date DEFAULT NULL,
  `until` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Desglose de costes de proyectos' AUTO_INCREMENT=195 ;

--
-- Volcar la base de datos para la tabla `cost`
--

INSERT INTO `cost` VALUES(40, 'a565092b772c29abc1b92f999af2f2fb', 'Diseño de interface', 'Honorarios para el diseñador web', 'task', 1200, 0, '2011-07-04', '2011-08-07');
INSERT INTO `cost` VALUES(41, 'a565092b772c29abc1b92f999af2f2fb', 'Programación del nuevo administrador y maquetación CSS', 'Honorarios para el programador.', 'task', 3500, 1, '2011-06-20', '2011-08-31');
INSERT INTO `cost` VALUES(42, 'a565092b772c29abc1b92f999af2f2fb', 'Coordinación y análisis de la estructura', '', 'task', 2500, 1, '2011-06-01', '2011-09-11');
INSERT INTO `cost` VALUES(43, 'a565092b772c29abc1b92f999af2f2fb', 'Difusión de la herramienta', 'Honorarios de un community manager', 'task', 1000, NULL, '2011-08-29', '2011-10-09');
INSERT INTO `cost` VALUES(63, 'fixie-per-tothom', 'Nuevo coste', 'Descripción', 'task', 400, 1, '2011-07-21', '2011-08-05');
INSERT INTO `cost` VALUES(65, 'fixie-per-tothom', 'Nuevo coste', 'Descripción', 'task', 100, 0, '2011-08-05', '2011-08-19');
INSERT INTO `cost` VALUES(66, 'no-sleep-till-brooklyn', 'comprar semillas', 'comprar semillas', 'structure', 50, 1, '2011-05-12', '2011-05-19');
INSERT INTO `cost` VALUES(67, 'no-sleep-till-brooklyn', 'diseño web', 'diseño y colorines', 'task', 200, 0, '2011-05-12', '2011-05-19');
INSERT INTO `cost` VALUES(75, 'a565092b772c29abc1b92f999af2f2fb', 'Publicar el código bajo licencia libre', 'Honorarios destinados a documentar el código, empaquetarlo bien y publicarlo bajo una licencia libre', 'task', 1000, NULL, '2011-09-26', '2011-11-06');
INSERT INTO `cost` VALUES(80, 'pliegos', 'Nueva tarea', 'Necesito pilas', 'structure', 600, 0, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(87, 'no-sleep-till-brooklyn', 'Compra ordenadores', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam', 'material', 2000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(90, 'todojunto-letterpress', 'Materiales', 'Busqueda y compra de materiales (tiporafías, tintas, componedores, etc)', 'material', 800, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(91, 'todojunto-letterpress', 'Diseño', 'Diseño del manual/fanzine', 'task', 240, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(92, 'todojunto-letterpress', 'Manual', 'Producción del manual-fanzine (500 copias)', 'task', 600, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(93, 'todojunto-letterpress', 'Tratamiento materiales', 'Limpieza y organización del material adquirido', 'task', 300, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(94, 'oh-oh-fase-2', 'Hardware robot', 'Desarrollo nueva iteracion del hardware para el robot', 'task', 2500, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(95, 'oh-oh-fase-2', 'Software robot', 'Desarrollo libreria de software para control del robot', 'task', 1500, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(96, 'oh-oh-fase-2', 'Ejemplos', 'Creacion ejemplos para la libreria', 'task', 1000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(97, 'oh-oh-fase-2', 'Plantilla documentación', 'Creacion de un template de documentacion para publicar los ejemplos', 'task', 1000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(99, 'urban-social-design-database', 'web', 'modificar web archtlas.com', 'task', 300, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(100, 'urban-social-design-database', 'community manager', 'community manager', 'task', 1500, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(101, 'urban-social-design-database', 'programación widget', 'programación widget', 'task', 500, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(102, 'urban-social-design-database', 'gestión y administración', 'gestión y administración', 'task', 1500, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(103, 'urban-social-design-database', 'mantenimiento', 'mantenimiento', 'task', 700, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(104, 'urban-social-design-database', 'diseño grafico y/o audiovisual', 'diseño grafico y/o audiovisual', 'task', 500, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(105, 'archinhand-architecture-in-your-hand', 'Programación', 'Enlace de modulos, Desarrollo interfaz usuario para cargar contenidos, sistema', 'task', 1520, 0, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(106, 'archinhand-architecture-in-your-hand', 'Diseño', 'Pulir interfaz de la herramienta, testeo usabilidad, material grafico y audiovisual de comunicacion del proyecto', 'task', 1700, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(107, 'archinhand-architecture-in-your-hand', 'Gestión de contenidos', 'Permisos y licencias de uso, comisariado de contenidos fase beta', 'task', 1500, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(108, 'archinhand-architecture-in-your-hand', 'Plan de empresa', 'Plan de empresa', 'task', 600, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(109, 'mi-barrio', 'Creación web proyecto', 'Creación web proyecto', 'task', 6000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(110, 'mi-barrio', 'Lanzamiento', 'Lanzamiento y gestión convocatoria (selección participantes)', 'task', 3000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(111, 'mi-barrio', 'Talleres', 'Diseño y realización Talleres de formación', 'task', 5000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(112, 'mi-barrio', 'Grabanción', 'Grabaciones (labor de acompañamiento a los participantes)', 'task', 3000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(113, 'mi-barrio', 'Edición', 'Edición material grabado', 'task', 5000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(114, 'mi-barrio', 'Online', 'Alojamineto web y difusión online', 'task', 3000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(115, 'hkp', 'Guión pieza a/v', 'Guión pieza a/v', 'task', 600, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(116, 'hkp', 'Edición pieza a/v', 'Edición pieza a/v', 'task', 1800, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(117, 'hkp', 'Post-producción pieza a/v', 'Post-producción pieza a/v', 'task', 450, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(118, 'hkp', 'Estampación DVD (1500)', 'Estampación DVD (1500)', 'task', 1200, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(119, 'hkp', 'Entrevistas y nuevos registros de vídeo', 'Entrevistas y nuevos registros de vídeo', 'task', 1000, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(120, 'hkp', 'Edición nuevas cápsulas', 'Edición nuevas cápsulas', 'task', 800, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(121, 'hkp', 'Compilación y redactado textos libro', 'Compilación y redactado textos libro', 'task', 800, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(122, 'hkp', 'Ilustraciones', 'Ilustraciones', 'task', 500, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(123, 'hkp', 'Traducciones libro bilingüe castellano/catalán', 'Traducciones libro bilingüe castellano/catalán', 'task', 2500, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(124, 'hkp', 'Diseño y maquetación libro', 'Diseño y maquetación libro', 'task', 1300, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(125, 'hkp', 'Imprenta (tiraje 1500)', 'Imprenta (tiraje 1500)', 'task', 6500, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(126, 'hkp', 'Manipulación y retractilado pack libro+DVD', 'Manipulación y retractilado pack libro+DVD', 'task', 500, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(127, 'hkp', 'Envíos distribución pack', 'Envíos distribución pack', 'task', 400, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(128, 'hkp', 'Mantenimiento y mejoras wiki', 'Mantenimiento y mejoras wiki', 'task', 600, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(129, 'hkp', 'Tareas administrativas y de gestión', 'Tareas administrativas y de gestión', 'task', 500, 1, '2011-07-05', '2011-07-05');
INSERT INTO `cost` VALUES(130, 'move-commons', 'Plataforma', 'Continuar desarrollo de la plataforma MC (con subcategorías), maximizando usabilidad y con versión accesible', 'task', 3600, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(131, 'move-commons', 'Motor de búsquedas', 'Desarrollo del motor de búsquedas semánticas para MC', 'task', 2400, 0, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(132, 'move-commons', 'Diseño', 'Diseño de iconos, explicaciones gráficas, material visual explicativo', 'task', 1200, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(133, 'move-commons', 'Redacción', 'Redacción (en castellano e inglés) de textos divulgativos y HOWTOs documentados para cada categoría', 'task', 1200, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(134, 'nodo-movil', 'Material', 'compra de material para 1 Nodo Móvil', 'material', 350, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(135, 'nodo-movil', 'construcción', 'construcción del Nodo Móvil', 'task', 200, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(136, 'nodo-movil', 'configuración', 'configuración del firmware', 'task', 200, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(137, 'nodo-movil', 'Testing', 'pruebas testing 2 Nodos Móviles', 'task', 10, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(138, 'canal-alfa', 'Creación plataforma web', 'Creación plataforma web', 'task', 3200, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(139, 'robocicla', 'Guión', 'Linea editorial, guion e History Board', 'task', 1000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(140, 'robocicla', 'Ilustraciones', 'Ilustraciones', 'task', 400, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(141, 'robocicla', 'Diseño', 'Diseño gráfico y maquetación', 'task', 400, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(142, 'robocicla', 'Diseño packaging', 'Diseño packaging', 'task', 100, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(143, 'robocicla', 'Espacio Digital', 'Espacio Digital', 'task', 100, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(146, '3d72d03458ebd5797cc5fc1c014fc894', 'Nueva tarea', '', 'task', 300, 0, '2011-07-11', '2011-07-11');
INSERT INTO `cost` VALUES(151, 'dinou-publicacio-irregular', 'Impresión en rotativa', 'Impresión de 3000 unidades de la 2da. edición de DINOU', 'task', 600, 1, '2011-07-20', '2011-07-22');
INSERT INTO `cost` VALUES(152, 'dinou-publicacio-irregular', 'Transporte', 'Transporte de los periódicos a los diferentes puntos de distribución.', 'task', 60, 0, '2011-07-23', '2011-07-23');
INSERT INTO `cost` VALUES(153, 'dinou-publicacio-irregular', 'Envio por correo', 'Envio a diferentes paises donde será distribuido sin costo', 'task', 120, 1, '2011-07-28', '2011-07-28');
INSERT INTO `cost` VALUES(158, 'pliegos', 'Nueva tarea', '', 'task', 0, 1, '2011-07-18', '2011-07-18');
INSERT INTO `cost` VALUES(161, '8c069c398c3e3114e681ccfafa4a3fe0', 'Nueva tarea', '', 'task', 0, 0, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(162, '8c069c398c3e3114e681ccfafa4a3fe0', 'Nueva tarea', '', 'structure', 1000, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(173, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nueva tarea', 'Lorem ipsum', 'task', 1250, 1, '2011-08-20', '2011-09-22');
INSERT INTO `cost` VALUES(174, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nueva tarea 2', 'Dolor sit', 'material', 354, 0, '2011-08-30', '2011-10-13');
INSERT INTO `cost` VALUES(175, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nueva tarea', 'Conseq', 'structure', 400, 0, '2011-09-23', '2011-10-03');
INSERT INTO `cost` VALUES(176, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nueva tarea Más', 'Lorem Ipsum', 'task', 900, 1, '2011-09-12', '2011-09-18');
INSERT INTO `cost` VALUES(177, '8851739335520c5eeea01cd745d0442d', 'Nueva tarea', '', 'task', 0, 0, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(178, '8851739335520c5eeea01cd745d0442d', 'Nueva tarea', '', 'material', 0, 0, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(179, 'tweetometro', 'Diseño de interface ', 'Honorarios para el diseñador web', 'task', 1000, 0, '2011-10-22', '2011-11-05');
INSERT INTO `cost` VALUES(180, 'tweetometro', 'Programación del nuevo administrador y maquetación CSS ', 'Honorarios para el programador', 'task', 4100, 1, '2011-10-15', '2011-12-05');
INSERT INTO `cost` VALUES(181, 'tweetometro', 'Coordinación y análisis de la estructura ', 'Definición requerimientos, calendario, seguimiento, pruebas, etc.', 'task', 3000, 1, '2011-09-15', '2011-12-15');
INSERT INTO `cost` VALUES(182, 'tweetometro', 'Difusión de la herramienta ', 'Honorarios de difusión y community management', 'task', 1000, 0, '2011-12-07', '2012-01-07');
INSERT INTO `cost` VALUES(183, 'tweetometro', 'Publicar el código bajo licencia libre ', 'Honorarios destinados a documentar el código, empaquetarlo bien y publicarlo bajo una licencia libre', 'task', 800, 0, '2012-01-07', '2012-02-07');
INSERT INTO `cost` VALUES(184, 'goteo', 'Nueva tarea', '', 'task', 340, 1, '0000-00-00', '0000-00-00');
INSERT INTO `cost` VALUES(185, 'tutorial-goteo', 'Coste asociado a una tarea', 'Tareas donde invertir conocimientos y/o habilidades para desarrollar alguna parte del proyecto (desarrollo, diseño, coordinación, facilitación, etc). En este ejemplo sería un coste adicional para llevarlo a cabo.', 'task', 5000, 1, '2011-11-01', '2011-12-30');
INSERT INTO `cost` VALUES(186, 'tutorial-goteo', 'Coste asociado a una infraestructura', 'También podemos considerar y especificar una inversión en costes vinculada a un local, medio de transporte u otras infraestructuras básicas para llevar a cabo el proyecto. En este ejemplo sería un coste adicional para llevar a cabo el proyecto', 'structure', 1000, 0, '2011-11-01', '2011-11-15');
INSERT INTO `cost` VALUES(187, 'tutorial-goteo', 'Coste asociado a material', 'También podemos solicitar en préstamo o cesión materiales necesarios para el proyecto como herramientas, papelería, equipos informáticos, etc. En este ejemplo sería un coste adicional para llevar a cabo el proyecto.', 'material', 1000, 0, '2011-11-01', '2011-11-10');
INSERT INTO `cost` VALUES(188, 'f63dab04c0b63cb02d4d1a85aa738ee3', 'Nueva tarea', '', 'task', 0, 1, '2011-07-31', '2011-08-05');
INSERT INTO `cost` VALUES(189, 'goteo', 'Secunda', 'cds', 'material', 78, 0, '2011-08-24', '2011-08-24');
INSERT INTO `cost` VALUES(190, 'a9277be1c7e92eaa36ecae753231bfb1', 'Nueva tarea', '', 'task', 0, 1, '2011-10-16', '2012-07-14');
INSERT INTO `cost` VALUES(191, '43b8c28144ad2a9687374e95ae9ac4d6', 'Nueva tarea', NULL, 'task', NULL, 1, '2011-11-08', '2011-11-08');
INSERT INTO `cost` VALUES(194, '43b8c28144ad2a9687374e95ae9ac4d6', 'Nueva tarea', NULL, 'task', NULL, 1, '2011-11-08', '2011-11-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cost_lang`
--

DROP TABLE IF EXISTS `cost_lang`;
CREATE TABLE `cost_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `cost` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `cost_lang`
--

INSERT INTO `cost_lang` VALUES(66, 'ca', 'comprar llavors', 'comprar llavors');
INSERT INTO `cost_lang` VALUES(67, 'ca', 'cat cat cat cat cat diseño web', 'cat cat cat cat cat diseño y colorines');
INSERT INTO `cost_lang` VALUES(87, 'ca', 'cat cat cat cat Compra ordenadores', 'cat cat cat cat cat Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criteria`
--

DROP TABLE IF EXISTS `criteria`;
CREATE TABLE `criteria` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(50) NOT NULL DEFAULT 'node',
  `title` tinytext,
  `description` text,
  `order` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Criterios de puntuación' AUTO_INCREMENT=28 ;

--
-- Volcar la base de datos para la tabla `criteria`
--

INSERT INTO `criteria` VALUES(5, 'project', 'Es original', 'donde va esta descripción? donde esta el tool tip?\r\n\r\nHola, este tooltip ira en el formulario de revision', 1);
INSERT INTO `criteria` VALUES(6, 'project', 'Es eficaz en su estrategia de comunicación', '', 2);
INSERT INTO `criteria` VALUES(7, 'project', 'Aporta información suficiente del proyecto', '', 3);
INSERT INTO `criteria` VALUES(8, 'project', 'Aporta productos, servicios o valores “deseables” para la comunidad', '', 4);
INSERT INTO `criteria` VALUES(9, 'project', 'Es afín a la cultura abierta', '', 5);
INSERT INTO `criteria` VALUES(10, 'project', 'Puede crecer, es escalable', '', 6);
INSERT INTO `criteria` VALUES(11, 'project', 'Son coherentes los recursos solicitados con los objetivos y el tiempo de desarrollo', '', 7);
INSERT INTO `criteria` VALUES(12, 'project', 'Riesgo proporcional al grado de benficios (sociales, culturales y/o económicos)', '', 8);
INSERT INTO `criteria` VALUES(13, 'owner', 'Posee buena reputación en su sector', '', 1);
INSERT INTO `criteria` VALUES(14, 'owner', 'Ha trabajado con organizaciones y colectivos con buena reputación', '', 2);
INSERT INTO `criteria` VALUES(15, 'owner', 'Aporta información sobre experiencias anteriores (éxitos y fracasos)', '', 3);
INSERT INTO `criteria` VALUES(16, 'owner', 'Tiene capacidades para llevar a cabo el proyecto', '', 4);
INSERT INTO `criteria` VALUES(17, 'owner', 'Cuenta con un equipo formado', '', 5);
INSERT INTO `criteria` VALUES(18, 'owner', 'Cuenta con una comunidad de seguidores', '', 6);
INSERT INTO `criteria` VALUES(19, 'owner', 'Tiene visibilidad en la red', '', 7);
INSERT INTO `criteria` VALUES(20, 'reward', 'Es viable (su coste está incluido en la producción del proyecto)', '', 1);
INSERT INTO `criteria` VALUES(21, 'reward', 'Puede tener efectos positivos, transformadores (sociales, culturales, empresariales)', '', 2);
INSERT INTO `criteria` VALUES(22, 'reward', 'Aporta conocimiento nuevo, de difícil acceso o en proceso de desaparecer', '', 3);
INSERT INTO `criteria` VALUES(23, 'reward', 'Aporta oportunidades de generar economía alrededor', '', 4);
INSERT INTO `criteria` VALUES(24, 'reward', 'Da libertad en el uso de sus resultados (es reproductible)', '', 5);
INSERT INTO `criteria` VALUES(25, 'reward', 'Ofrece un retorno atractivo (por original, por útil, por inspirador... )', '', 6);
INSERT INTO `criteria` VALUES(26, 'reward', 'Cuenta con actualizaciones', '', 7);
INSERT INTO `criteria` VALUES(27, 'reward', 'Integra a la comunidad (a los seguidores, cofinanciadores, a un grupo social)', '', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criteria_lang`
--

DROP TABLE IF EXISTS `criteria_lang`;
CREATE TABLE `criteria_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `criteria_lang`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL DEFAULT 'node',
  `title` tinytext,
  `description` text,
  `order` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Preguntas frecuentes' AUTO_INCREMENT=109 ;

--
-- Volcar la base de datos para la tabla `faq`
--

INSERT INTO `faq` VALUES(2, 'goteo', 'investors', '¿Qué sistemas de pago ofrece Goteo? ¿Son seguros?', 'Tienes dos opciones para comprometer y hacer efectiva tu aportación al proyecto que quieras apoyar: mediante tarjeta de crédito, utilizando una pasarela de pago de Caja Laboral, del Grupo Cooperativo Mondragon, o a través del sistema de pago por internet Paypal. Ambas formas de pago son fáciles, rápidas de utilizar y totalmente seguras, usadas a diario por millones de usuarios en todo el mundo, y poseen todo tipo de medidas de seguridad para evitar robos de claves o suplantaciones de identidad. En ese sentido, ni la Fundación Goteo, ni los impulsores de proyectos tienen acceso a tus datos bancarios en ningún momento del proceso. ', 10);
INSERT INTO `faq` VALUES(3, 'goteo', 'node', '¿A quién se dirige y qué ofrece Goteo?', 'Goteo se dirige a ti. A personas individuales, organizaciones de la sociedad civil y entidades públicas y privadas de ámbitos diversos, cuyo nexo común es su interés en el desarrollo del procomún, el código abierto y/o el conocimiento libre. Goteo parte de los modelos actuales del crowdfunding para articularse como una red social -compuesta por agentes impulsores, financiadores y/o colaboradores-, de la cual pueda emerger una comunidad de comunidades (inicialmente en el estado español).\r\n\r\nComo miembro de la red puedes cumplir uno o varios roles, según el proyecto y en función del papel que juegues en cada caso. Goteo principalmente ofrece:\r\n\r\n    * A los agentes impulsores: Acceder a un nuevo modelo de financiación colectiva y colaboraciones distribuidas, dando visibilidad a tus proyectos, haciendo partícipe desde el principio a la comunidad potencial de los mismos.\r\n\r\n    * A los agentes cofinaciadores y colaboradores: Acceder a un amplio banco de proyectos, pensados, producidos y/o distribuidos desde una perspectiva libre y abierta, en los que contribuir mediante aportaciones monetarias u otras formas de colaboración, a cambio de retornos colectivos y recompensas individuales.', 3);
INSERT INTO `faq` VALUES(4, 'goteo', 'investors', '¿Qué es el retorno colectivo de la inversión?', 'Goteo persigue especialmente la rentabilidad social de las inversiones efectuadas a través de la plataforma, buscando la viabilidad de los proyectos para sus impulsores pero también el retorno colectivo para la comunidad (en paralelo a contraprestaciones individuales, que varían en función del proyecto y de las cantidades aportadas).\r\n\r\nEstos retornos colectivos pueden ser de muy diverso tipo, y se fundamentan en compartir conocimiento y dar acceso libre al código fuente, a productos o recursos, a formación a través de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.', 8);
INSERT INTO `faq` VALUES(5, 'goteo', 'node', '¿Cuáles son los puntos fuertes y diferenciales de Goteo?', 'En relación a otras plataformas de crowdfunding existentes, estos son los aspectos destacados de Goteo:\r\n\r\n    * Común, abierto y libre: Potenciamos proyectos que apuestan por el procomún, el código abierto y/o el conocimiento libre, poniendo por tanto el acento en la misión pública, favoreciendo la cultura libre y el desarrollo social. \r\n\r\n    * Licencias libres y/o abiertas: Los proyectos que quieran cofinanciarse con la ayuda de Goteo deben permitir a través de licencias, la copia, comunicación pública, distribución, modificación y/o explotación de parte o de la totalidad de cada creación.\r\n\r\n    * Dos rondas de cofinanciación en 40+40 días: Se establecen dos rondas de cofinanciación, de 40 días cada una. La primera, a “todo o nada”, ligada al presupuesto mínimo imprescindible; y la segunda a un importe óptimo, para realizar mejoras adicionales.\r\n\r\n    * Retornos colectivos: Goteo persigue la rentabilidad social de las inversiones, por eso su sistema de contraprestaciones se basa en retornos colectivos para el desarrollo de bienes comunes. Como algo complementario a las recompensas individuales, que ofrece al igual que el resto de plataformas de crowdfunding.\r\n\r\n    * Bolsa de inversión social: Gestionamos una bolsa de inversión social con aportaciones de entidades públicas y privadas, para la inversión co-responsable y con efecto multiplicador en proyectos que cuenten con el apoyo de la sociedad civil.\r\n\r\n    * Colaboración distribuida: En Goteo, además de aportaciones monetarias se puede colaborar mediante servicios, recursos materiales, infraestructuras o participando de determinadas microtareas necesarias para desarrollar los proyectos. \r\n\r\n    * Comunidad de nodos locales: Goteo es una comunidad de comunidades, una red de nodos locales independientes pero coordinados entre sí, que sirven para localizar lo digital, aportando proximidad y especificidad, multiplicando el impacto de Goteo en su contexto.', 5);
INSERT INTO `faq` VALUES(6, 'goteo', 'node', '¿Por qué hay que elegir entre licencias abiertas?', 'Para asegurar el retorno colectivo, los proyectos que quieran financiarse y desarrollarse con la ayuda de Goteo deben pensarse, producirse y/o distribuirse desde la ética de lo libre y abierto.\r\nDeben acogerse a alguna de las numerosas licencias existentes, con diferentes especificaciones y/o restricciones, que permiten explícitamente la copia, distribución y/o modificación de parte o de la totalidad de cada proyecto. Desde Goteo se propone y se asesora sobre una serie de licencias como son Creative Commons (CC), General Public Licence (GPL), GNU Affero General Public Licence (AGPLv3), Open Database (ODBC), Licencia Red Abierta Libre Neutral (XOLN) o Open Hardware Licence (OHL).', 10);
INSERT INTO `faq` VALUES(7, 'goteo', 'node', '¿Qué ofrece Goteo a los miembros de la comunidad?', 'Goteo parte de los modelos actuales del crowdfunding, para articularse como una red social de agentes de ámbitos diversos, cuyo nexo común es su implicación en el fortalecimiento del procomún. Una plataforma de la cual puedan emerger comunidades (formadas por personas individuales y entidades públicas o privadas, inicialmente en el ámbito de España) de agentes promotores-productores, financiadores y/o colaboradores. Cada miembro de la red puede cumplir uno o varios de estos roles según el momento y el proyecto, obteniendo una serie de beneficios y contraprestaciones específicas en función de lo que elija hacer.', 14);
INSERT INTO `faq` VALUES(8, 'goteo', 'project', '¿Cuál es la cantidad mínima o máxima que un proyecto puede tener como objetivo de financiación?', 'Aspiramos a financiar proyectos con presupuestos de cierta envergadura. Tentativamente (siempre puede haber excepciones) desde un importe mínimo de unos 3.000€ hasta 150.000€ como máximo.', 6);
INSERT INTO `faq` VALUES(9, 'goteo', 'project', '¿Quién puede obtener financiación para su proyecto en Goteo?', 'Desde Goteo y su red de comunidades se realiza una selección entre todos los proyectos que se inscriben en la plataforma. Esa selección se establece en función de la temática, tipología y procedencia del proyecto; de su pertinencia y carácter innovador o diferencial; de una estimación del retorno colectivo que genera; y también de la competencia o experiencia de sus promotores. Buscamos proyectos desarrollados por agentes creativos que superen encasillamientos temáticos convencionales, como la cultura o el ocio. Iniciativas con un alto componente de innovación, con un buen potencial de incidencia social y/o económica, con capacidad de crecimiento y reproducción y, especialmente, componentes abiertos que ayuden a fomentar el procomún. Para que así puedan generar valor en el sentido más amplio de la palabra.\r\n\r\nCualquier creador o emprendedor a través de Goteo puede:\r\n\r\n- publicar un proyecto para obtener financiación y colaboraciones;\r\n- acceder a herramientas específicas de “social media” y publicar contenidos para difundir su trabajo en Internet;\r\n- compartir conocimiento con la comunidad sobre el proceso de producción de su proyecto, aumentando su reputación online y un mayor número de seguidores y cofinanciadores potenciales;\r\n- beneficiarse del conocimiento y recomendaciones de otros usuarios para mejorar o contrastar la producción de su proyecto;\r\n- testear su proyecto en la fase inicial, y así comprobar el interés que despierta en el público o grupo de destinatarios potencial;\r\n-formar parte de una red social dinámica y generadora de cambios, con impacto local y difusión internacional;\r\n- recibir asesoramiento para mejorar la comunicación pública del proyecto y crear un retorno digital que quedará disponible en la plataforma después de su producción.', 2);
INSERT INTO `faq` VALUES(10, 'goteo', 'project', '¿Hay un tiempo máximo de financiación?', 'Una vez se publica un proyecto en Goteo, se abre un plazo de 40 días para que se pueda recaudar la cantidad fijada como mínimo para su realización (mediante aportaciones financieras de 5€ en adelante). Además en ese plazo se pueden establecer diferentes compromisos de colaboración según las competencias o los recursos requeridos por cada proyecto. \r\nEn determinados casos, para alcanzar la cantidad óptima establecida, se invertirá en los proyectos desde una bolsa de inversión social propia de Goteo (antes el proyecto deberá alcanzar un nivel mínimo de financiación por parte de los usuarios).', 7);
INSERT INTO `faq` VALUES(11, 'goteo', 'project', '¿Cual es la fase siguiente después de 40 días?', 'Una vez se obtiene la cantidad mínima fijada es posible abrir un segundo plazo, también de 40 días, donde el impulsor o impulsores del proyecto van aportando información en tiempo real sobre el desarrollo del mismo. En ese segundo plazo, todas las aportaciones financieras se hacen efectivas aunque no se llegue a alcanzar la cantidad óptima. \r\nA lo largo de toda esa fase resulta fundamental la comunicación y dinamización de los proyectos para atraer a potenciales financiadores y colaboradores. También para conectar a distintos agentes de la comunidad y reforzar el papel de Goteo como punto de encuentro en torno al procomún. Se trata de contar de un modo ágil los avances de cada proyecto; de moverlo con efectividad en las redes sociales; y de acercarlo así a la comunidad destinataria de la iniciativa y su ámbito de influencia.', 8);
INSERT INTO `faq` VALUES(12, 'goteo', 'project', 'Temo que plagien mi idea o proyecto, ¿qué hace Goteo para impedir eso?', 'Antes de nada debes considerar que el crowdfunding en general es un acto de difusión pública de ideas o proyectos en ciernes, que de ese modo se quieren llevar adelante con el apoyo de pequeñas aportaciones a través de Internet. Además, Goteo promueve el procomún, el código abierto y el conocimiento libre; la filosofía de que compartir al máximo lo que se crea no es incompatible con poder vivir de ello. Aspiramos a generar un polo de atracción sobre retornos colectivos que más que plagios supongan reutilización de cosas útiles, inspiración, aprendizaje y progreso compartido para el conjunto de la sociedad.\r\n\r\nPor tanto, si no puedes contar qué quieres hacer y/o no quieres compartir el cómo mediante retornos colectivos, a través de licencias libres o abiertas, tal vez la financiación mediante Goteo no sea tu mejor opción.', 6);
INSERT INTO `faq` VALUES(13, 'goteo', 'investors', '¿Cómo se puede ir más allá de lo económico para apoyar un proyecto?', 'En Goteo, además de aportaciones monetarias puedes aportar tu talento, contactos y otros recursos. Desde habilidades concretas que un proyecto necesita de terceros (traductores, testers, prescriptores), hasta préstamos de recursos materiales (transporte, equipos), pasando por infraestructuras (espacios, instalaciones).\r\n\r\nLas colaboraciones necesarias en cada momento aparecen en la página del proyecto. Desde ahí también puedes seguir todo el proceso de desarrollo y hacer comentarios, consultas, sugerencias y en general, establecer una conversación con el agente impulsor del proyecto.', 13);
INSERT INTO `faq` VALUES(14, 'goteo', 'investors', '¿Por qué dos rondas de 40 días?', 'Mientras que en el resto de plataformas de crowdfunding sólo hay periodo de recaudación por proyecto, en Goteo se establecen dos plazos para su financiación, de 40 días cada uno. En el primero las aportaciones económicas comprometidas sólo se hacen efectivas si se alcanza la cantidad mínima establecida. En el segundo, en el que el impulsor del proyecto debe aportar información en tiempo real sobre el proyecto, todas las aportaciones que se logre recaudar se hacen efectivas al final del plazo.\r\n\r\nEl principal motivo para plantear este sistema es que creemos que permite una visualización más clara de las necesidades mínimas para poner en marcha un proyecto, por un lado, y por otro optimizarlo, abrirlo a más gente y sobre todo trabajar en abierto informando de los avances con transparencia, algo que repercute directamente en obtener más visibilidad y apoyos.', 9);
INSERT INTO `faq` VALUES(16, 'goteo', 'investors', '¿Qué sucede si un proyecto NO logra la financiación mínima?', 'Si la suma de aportaciones económicas no llega en la 1ª ronda al mínimo establecido por el impulsor del proyecto, ninguno de los compromisos de cofinanciación se hacen efectivos y por tanto no se hará ningún movimiento en tu cuenta. El proyecto pasa a archivarse, para así dejar espacio y visibilidad a otro en la plataforma.', 5);
INSERT INTO `faq` VALUES(22, 'goteo', 'project', '¿Como se presentan los resultados y retornos de los proyectos?', 'Ésa es la fase final, que cierra el círculo del compromiso entre ambas partes (impulsor/es y cofinanciadores del proyecto), con la presentación pública online de los resultados del proyecto financiado, una vez se han hecho efectivos los retornos colectivos e individuales acordados. Es una fase que hay que cuidar especialmente, para mantener las relaciones de confianza dentro de la comunidad y que el fortalecimiento del procomún que nos proponemos sea efectivo, con posterioridad al paso del proyecto por Goteo.', 24);
INSERT INTO `faq` VALUES(23, 'goteo', 'node', '¿Quién impulsa todo esto?', 'El principal impulsor de Goteo es Platoniq, una organización internacional de productores culturales y desarrolladores de software, pionera en la producción y distribución de la cultura copyleft. Desde 2001, Platoniq lleva a cabo acciones y proyectos donde los usos sociales de las TIC y el trabajo en red son aplicados al fomento de la comunicación, la auto-formación y la organización ciudadana. Entre sus proyectos destacan: Burn Station, OpenServer, Banco Común de Conocimientos o S.O.S., todos ellos disponibles en la plataforma de metodologías libres YouCoop.\r\n\r\nDe cara a un funcionamiento de Goteo acorde con sus principios de apertura, neutralidad e independencia, se ha puesto en marcha la Fundación Goteo, entidad sin ánimo de lucro que integra a todos los agentes comprometidos con el desarrollo del proyecto y asegura un cumplimiento transparente y responsable de su misión. La Fundación Goteo, además de ser la responsable del desarrollo y mantenimiento de la plataforma, se encarga de gestionar una bolsa de inversión social público-privada, y también promueve un laboratorio de experimentación aplicada en torno al procomún, el código abierto y el conocimiento libre, en distintos ámbitos sociales, culturales y económicos.\r\nActualmente Platoniq lleva más de un año totalmente volcada en el desarrollo de Goteo, tras un estudio exhaustivo iniciado en 2009 sobre plataformas de crowdfunding a nivel internacional y un plan de viabilidad para llevar a la práctica las principales conclusiones y nociones de diseño derivados de dicho estudio. Para el desarrollo de Goteo, Platoniq cuenta con el apoyo de diversas entidades nacionales e internacionales, entre las que cabe destacar: EUTOKIA, Centro de Innovación Social de Bilbao (ColaBoraBora), Trànsit Projectes, Centro de Cultura Contemporánea de Barcelona (CCCBlab), Consell Nacional de la Cultura i de les Arts de Catalunya, Instituto de Cultura de Barcelona.\r\n\r\nDe cara a un funcionamiento del proyecto acorde con principios afines de abertura, neutralidad e independencia se ha puesto en marcha la Fundación Goteo, entidad sin ánimo de lucro que integra a todos los agentes comprometidos con el desarrollo del proyecto y asegura un funcionamiento transparente y responsable de su misión.\r\n\r\nActualmente Platoniq lleva más de un año totalmente volcada en el desarrollo de Goteo. Ha realizado un estudio exhaustivo sobre plataformas de crowdfunding a nivel internacional, un plan de viabilidad y ya está desarrollando el trabajo de programación de la plataforma.\r\n\r\nPara el desarrollo de Goteo, Platoniq cuenta con el apoyo de diversas entidades nacionales e internacionales, entre las que cabe destacar: \r\nEUTOKIA, Centro de Innovación Social de Bilbao (ColaBoraBora)\r\nTrànsit Projectes\r\nCCCB, Centro de Cultura Contemporánea de Barcelona (CCCBlab)\r\nConsell Nacional de la Cultura i de les Arts de Catalunya\r\nInstituto de Cultura de Barcelona\r\n\r\nDe cara a la puesta en marcha de Goteo se constituirá la Fundación Goteo, que integre a todos los agentes comprometidos con el desarrollo del proyecto y asegure un funcionamiento transparente y responsable.\r\n', 9);
INSERT INTO `faq` VALUES(24, 'goteo', 'investors', '¿Qué es la bolsa de inversión social?', 'Como complemento a las aportaciones individuales, estamos creando una bolsa de inversión social con aportaciones de instituciones públicas, empresas y otras entidades privadas, para fomentar la inversión co-responsable en proyectos que cuenten con el apoyo de la sociedad civil.\r\n\r\nEsta bolsa se nutre a partir de distintos tipos de compromisos anuales y a través de convocatorias temporales específicas (mediante fórmulas preestablecidas o a partir acuerdos ad hoc), lo que permite vincular las aportaciones de las entidades (de modo personalizado), a proyectos concretos, determinadas áreas temáticas, ámbitos geográficos, tipos de retornos y licencias, etc.\r\n\r\nLas entidades inversoras pueden, a través de esta bolsa, vehicular de un modo innovador parte de sus competencias y programas, así como sus políticas de compromiso y responsabilidad social. Además obtienen otras ventajas, como son: participar en la generación de formas de conocimiento colectivo y proyectos socialmente innovadores, cercanía e interlocución directa con comunidades emergentes, visibilidad y reconocimiento vinculado a proyectos relacionados con el procomún, etc.\r\n\r\nLa bolsa se administra de modo transparente y responsable desde la Fundación Goteo, lo que permite a las entidades que participan en la misma obtener importantes desgravaciones fiscales.', 12);
INSERT INTO `faq` VALUES(25, 'goteo', 'project', '¿Qué tipo de proyectos tienen cabida en Goteo?', 'Goteo es una plataforma en la que se pueden proponer proyectos de muy diverso tipo.\r\nIniciativas creativas e innovadoras cuyos fines sean de carácter social, cultural, científico, educativo, tecnológico o ecológico; que ayuden a construir comunidad a su alrededor y contribuyan al desarrollo del procomún, el código abierto y/o el conocimiento libre, para poder beneficiar así al mayor número posible de personas.\r\n\r\nProyectos con "ADN abierto": cultura libre, acción social, software y hardware libres, economía alternativa, arquitectura, gastronomía, investigación, permacultura, emprendizaje; que contribuyan al enriquecimiento de los bienes comúnes a partir de retornos colectivos, gracias a la utilización de licencias libres y/o abiertas (por ejemplo Creative Commons o GPL). Esto es, iniciativas que compartan información, conocimiento, procesos, resultados, responsabilidades, benéficos, contenidos digitales y/u otros recursos relacionados con la actividad para la que se busque cofinanciación.', 1);
INSERT INTO `faq` VALUES(26, 'goteo', 'node', '¿Por qué un importe mínimo y otro óptimo?', 'Ésa es otra de las diferencias con muchas de las plataformas y dinámicas de crowdfunding que hemos estudiado para diseñar Goteo. Creemos que se puede y se debe ir más lejos en la relación entre microfinanciadores e impulsores de proyectos, y que un sistema basado en la confianza y los resultados transparentes puede permitir rondas posteriores de financiación una vez se han logrado avances significativos en las creaciones.\r\nPor eso en Goteo se puede solicitar al principio el capital mínimo para llevar adelante la parte inicial o crítica de un proyecto, y una vez obtenido y en marcha el proceso de producción seguir recaudando fondos a medida que se comparten los avances con la comunidad, hasta así legar a un capital óptimo. Es un funcionamiento que nos parece lógico y posible, y queremos demostrarlo.   ', 4);
INSERT INTO `faq` VALUES(28, 'goteo', 'project', '¿Como gestionar las recompensas individuales?', 'A través del formulario de inscripción de proyectos podrás plantear y definir detalladamente los importes vinculados a cada recompensa, su tipología y cuántas unidades de cada tipo se ofrecen a los cofinanciadores.\r\nPosteriormente, cuando el proyecto haya obtenido su objetivo de financiación, desde el panel de control accederás a una serie de herramientas para gestionar los envíos y así entregar las recompensas prometidas.', 18);
INSERT INTO `faq` VALUES(30, 'goteo', 'node', '¿Por qué los proyectos abiertos tienen mas potencial?', 'Vale, esta FAQ es un poco retórica pero es que creemos firmemente que sí, que los proyectos abiertos tienen más potencial. Ahí van un par o tres de razones:\r\n\r\n- Porque tienen una misión más allá de los incentivos o recompensas individuales, aportando valor al sector en que se inscriben y posibilitando modelos innovadores.\r\n- Porque fomentan el aprendizaje y el emprendizaje de otros, permitiendo que se genere una economía alrededor (bajo las reglas de atribuir la autoría y que los derivados estén bajo la misma ética de lo abierto).\r\n- Porque construyen capital social, apoyándose y nutriendo redes de seguidores, prosumidores y divulgadores    que tienen más libertad para aportar y actuar como mejor les convenga.     ', 11);
INSERT INTO `faq` VALUES(31, 'goteo', 'project', '¿Qué tipo de proyectos NO se publican en Goteo?', 'Goteo no está orientado a ayudar en la financiación de proyectos cuya finalidad sea exclusivamente de lucro, ni tampoco a acoger procesos de venta de productos o servicios, ni campañas de sorteo, políticas o de recolección de fondos para iniciativas de beneficiencia.\r\n\r\nAl igual que la mayoría de plataformas de crowdfunding, tampoco es una herramienta para financiar ni impulsar proyectos relacionados con contenidos que puedan resultar inapropiados, delictivos o que atenten contra la dignidad de las personas.', 3);
INSERT INTO `faq` VALUES(32, 'goteo', 'investors', '¿Por qué invertir en los proyectos que se publican en Goteo?', 'Desde Goteo te invitamos a conocer proyectos que buscan cofinanciación y otras formas de colaboración para llevarse a cabo. Proyectos propuestos por agentes impulsores que quieren compartir de un modo libre y abierto el código fuente de lo que saben y lo que planean, generando así nuevas oportunidades para la mejora constante de la sociedad, en beneficio del bien común.\r\n\r\nAdemás, a través de Goteo puedes:\r\n\r\n    * Acceder a proyectos de diversa tipología, pensados, producidos y/o distribuidos desde una perspectiva libre y abierta.\r\n    * Apoyarlos mediante una aportación monetaria adaptada a tus posibilidades (a partir de 5 euros), pero también colaborando con habilidades o recursos concretos, o ayudando a difundir los proyectos que más te motiven.\r\n    * Beneficiarte del acceso a los retornos colectivos especificados en cada caso, además de otras posibles recompensas individuales.\r\n    * Formar parte de una red social especializada, con impacto local y difusión internacional, en la que pueden surgir numerosas sinergias y complementariedades.', 1);
INSERT INTO `faq` VALUES(33, 'goteo', 'node', '¿Qué es Goteo?', 'Goteo es una red social de financiación colectiva (aportaciones monetarias) y colaboración distribuida (servicios, infraestructuras, microtareas y otros recursos). Una plataforma para la inversión de “capital riego” en proyectos que contribuyan al desarrollo del procomún, el código abierto y/o el conocimiento libre. Una comunidad para apoyar el desarrollo autónomo de iniciativas creativas e innovadoras cuyos fines sean de carácter social, cultural, científico, educativo, tecnológico o ecológico, que generen nuevas oportunidades para la mejora constante de la sociedad.', 1);
INSERT INTO `faq` VALUES(34, 'goteo', 'node', '¿Cómo funciona la financiación de 40 + 40?', 'Cada proyecto tiene un objetivo de financiación mínima, establecido por su impulsor o impulsores, y 40 días para lograr alcanzarlo. Finalizado ese primer plazo, existen dos posibilidades:\r\n\r\nPosibilidad A: Que no se haya recaudado objetivo de financiación mínimo. En este caso no se puede llevar a cabo ningún tipo de transacción monetaria y los compromisos de aportación de los micromecenas quedan anulados. El proyecto tampoco puede seguir en campaña desde la plataforma y debe ceder su espacio de atención en Goteo a otro proyecto.\r\n\r\nPosibilidad B: Que se haya alcanzado o superado el mínimo del objetivo de financiación mínimo. En ese caso se realiza el cargo en tarjeta de los compromisos de aportación y el destinatario asignado recibe el dinero recaudado. A partir de ese momento se abre un segundo plazo, también de 40 días, donde el impulsor o impulsores del proyecto deben ir aportando información en tiempo real sobre el desarrollo del mismo. En este segundo plazo, todas las aportaciones financieras se hacen efectivas aunque no se llegara al nivel óptimo definido, y el creador recibe el dinero recaudado al final de una segunda ronda de 40 días.', 6);
INSERT INTO `faq` VALUES(35, 'goteo', 'project', '¿Qué pasa si un proyecto llega al nivel optímo de financiación antes de acabar el primer plazo de 40 días? ', 'En esos casos consideramos que el proyecto está captando suficientes apoyos económicos, y una vez finalizado el primer plazo de recaudación comenzará el siguiente con esa cantidad extra ya reflejada en su cuenta y a todos los efectos. Esto es, haciéndose efectiva (junto al resto de lo que sume) una vez finalice la segunda ronda de financiación.', 9);
INSERT INTO `faq` VALUES(36, 'goteo', 'project', '¿En qué beneficia a mi proyecto usar licencias abiertas?', 'Las licencias abiertas no sólo permiten preservar la autoría original y el control sobre los usos derivados que se pueden hacer de las obras, sino que representan un verdadero mecanismo de replicación y difusión online, al tratarse de una fuente cada vez más rica y diversa de bienes comunes, donde muchas personas acuden en busca de inspiración, talento y recursos de todo tipo (educativos, artísticos, documentales, etc). \r\nPor todo ello, y teniendo siempre en cuenta que Goteo garantiza precisamente la remuneración por el esfuerzo de ideación y creación de los proyectos (que en paralelo pueden tener sus propios mecanismos de sostenibilidad económica), compartimos la opinión cada vez más generalizada de que las licencias abiertas no es que perjudiquen, sino que sólo pueden beneficiar a los impulsores de los proyectos. Y al resto de la sociedad.          ', 23);
INSERT INTO `faq` VALUES(37, 'goteo', 'project', '¿Cual es el proceso de revisión de proyectos? ', 'Una vez dado de alta un proyecto en Goteo pasa por un proceso de revisión que determinará si finalmente se puede publicar o no para obtener financiación y apoyos. Dicha revisión la lleva a cabo el equipo de Goteo en estrecha colaboración con una comunidad de expertos de diferentes ámbitos. Si se considera necesario, durante ese proceso se lleva a cabo una labor de asesoramiento para la capacitación del proyecto. Bien sobre la manera más eficaz de comunicar la iniciativa a través Goteo o de otros medios; bien sobre cómo configurarla o adaptarla a la filosofía del procomún y la cultura de código abierto (tipos de licencias, contraprestaciones colectivas, nuevos productos y servicios, etc). No obstante, hay que tener en cuenta que el propio formulario de inscripción de proyectos funciona con un asistente contextual, que ya guía en ese momento respecto a muchas de las cuestiones básicas que luego se revisan.\r\n\r\nToda esta fase de selección y refinamiento de proyectos, especialmente en estos inicios de Goteo en que nos encontramos, es fundamental para que la plataforma se desarrolle como un ecosistema diverso; un espacio de oportunidad y no de competencia; donde los intereses y los recursos se sumen y no se solapen. En ese sentido es necesario ser conscientes, por parte de todos y todas, respecto a la capacidad inicial de promoción de proyectos en Goteo y de la masa crítica necesaria para que sea una apuesta sostenible en el tiempo.', 4);
INSERT INTO `faq` VALUES(38, 'goteo', 'project', '¿Puedo tener más de un proyecto en campaña en Goteo? ', 'El sistema lo permite y por tanto sí. No hemos querido cerrar esa opción, pero por norma general lo importante y efectivo es centrarse en un sólo proyecto. Piensa que además en Goteo cada proyecto dispone de dos rondas de cofinanciación de 40 días, y hay que apostar por ellas y trabajar duro en difundir y avanzar en cada una. Además, en esta primera etapa en beta de Goteo lo que valoramos es la diversidad, tanto de ideas como de personas y equipos impulsores, así que sólo aceptaremos más de un proyecto simultáneo en casos excepcionales.    ', 8);
INSERT INTO `faq` VALUES(39, 'goteo', 'project', '¿Qué son las recompensas individuales y como pensarlas? ', 'En goteo hay dos tipos de recompensas, las colectivas y las individuales. Las recompensas o retornos colectivos los explicamos en la FAQ de abajo. Las recompensas individuales son las que el impulsor o impulsores del proyecto ofrecen a sus cofinanciadores a cambio de su aportación económica. Dichas contraprestaciones, que deben variar en función de las diferentes sumas de dinero que el proyecto aspire a obtener, son muy importantes para lograr la participación del mayor número y variedad de cofinanciadores posible.\r\n\r\nEs importante hacerlas atractivas y exclusivas, y calibrarlas bien, prometiendo bienes o servicios que sea viable ofrecer a cambio y no hipotequen la capacidad de producción del proyecto. También hay que tener en cuenta los costes económicos que implican, para así poderlos incorporar al importe mínimo que se solicita para poder llevar a cabo el proyecto.\r\n\r\nOtro aspecto importante es plantear tanto donaciones de pequeña cuantía como de sumas grandes, y que dentro de esa escala haya unas pocas opciones pero que estén bien diferenciadas y escaladas. ', 12);
INSERT INTO `faq` VALUES(40, 'goteo', 'project', '¿Cuanto tarda Goteo en darme una respuesta?', 'Al margen de mensajes puntuales para asesorar si es necesario al proyecto, como se indica arriba, tanto si es afirmativamente como debiendo rechazarlo para su publicación en Goteo, la respuesta no debería tardar más de 10 días.', 5);
INSERT INTO `faq` VALUES(41, 'goteo', 'project', '¿Como recibo las aportaciones de mis cofinanciadores?  ', 'Los mecenas realizan sus compromisos de aportación mediante Paypal o tarjeta de crédito, utilizando una pasarela de pago de Caja Laboral, del Grupo Mondragon.  Cuando tu proyecto alcance el mínimo del objetivo de financiación recibirás una notificación y deberás proporcionarnos tus datos bancarios. \r\nCuando acabe el primer plazo de recaudación de 40 días, recibirás una transferencia por el importe recaudado hasta dicha fecha, descontando la comisión de Goteo (8%) y los gastos bancarios de la operación.  Después de la segunda ronda de financiación de 40 días recibirás el dinero correspondiente al importe óptimo que hayas alcanzado durante ese plazo.', 14);
INSERT INTO `faq` VALUES(42, 'goteo', 'project', '¿Se cobra algún tipo de comisión? ', 'Sí, cuando un proyecto logra recaudar los fondos que solicita, acaba el plazo de financiación y se hacen efectivas las aportaciones, por cada una de ellas el banco aplica una comisión de entre 1.30% y 1.40% en concepto procesamiento de pago por cada tarjeta. En el caso de las aportaciones hechas a través de Paypal, la comisión es del 3% por cada transacción que se haga efectiva finalmente. Estas comisiones se descuentan del importe total que obtiene el proyecto, y por tanto se deben tener en cuenta a la hora de calcular su objetivo de financiación. \r\n\r\nLa otra comisión que se aplica al importe total obtenido es un 8% del propio sistema de Goteo, en concepto de trámites de gestión y como una de sus fuentes de sostenibildad económica.', 15);
INSERT INTO `faq` VALUES(43, 'goteo', 'investors', '¿Hay algún tipo de protocolo para posibles estafas por parte del impulsor del proyecto?', 'Existe un contrato que suscriben el impulsor del proyecto y la Fundación Goteo, mediante el cual el primero se compromete, como único responsable, a llevar a cabo su proyecto en caso de que éste finalmente sea financiado, y hacer efectivos los compromisos colectivos e individuales que se hayan detallado y hecho públicos en la plataforma.\r\n\r\nEn caso de no cumplir estos compromisos, y tras agotar otras vías basadas en la relación de confianza y trato directo entre todos los agentes que implica Goteo, se podrán emprender acciones legales.', 16);
INSERT INTO `faq` VALUES(45, 'goteo', 'investors', '¿Cómo sé que el proyecto que he apoyado consigue o no la financiación?', 'Tanto si tu apoyo ha sido monetario como si has colaborado o participado activamente en la página del proyecto (en cualquiera de las dos rondas de cofinanciación), recibirás un correo electrónico para informarte sobre si el proyecto ha obtenido o no la financiación solicitada.\r\n\r\nEn caso positivo, como cofinanciador, recibirás otro correo electrónico confirmando que se ha realizado el cargo en tu tarjeta.  También, si lo deseas, recibirás por correo notificaciones sobre cualquier novedad o cambio relacionado con el proyecto que estás apoyando.', 8);
INSERT INTO `faq` VALUES(46, 'goteo', 'investors', 'Si hago una aportación, ¿a qué información sobre mí accede la persona impulsora del proyecto?', 'La persona o entidad que impulsa el proyecto que hayas cofinanciado sólo podrá saber tu nombre de usuario en Goteo, junto a la cantidad que has aportado y la recompensa individual que te corresponde a cambio.\r\n\r\nSi el proyecto alcanza el presupuesto mínimo, y por tanto se hace efectiva tu aportación, el impulsor tendrá acceso a los datos que hayas especificado para el envío de tu recompensa individual.\r\n\r\nPara otro tipo de comunicaciones, Goteo dispone de la posibilidad de enviarse mensajes directos entre impulsores y cofinanciadores, permitiendo que se establezcan relaciones de tú a tú hasta donde ambas partes consideren oportuno.', 11);
INSERT INTO `faq` VALUES(47, 'goteo', 'investors', '¿Cómo puedo ayudar a la difusión de un proyecto?', 'Ayudar a difundir un proyecto por Internet y entre tus contactos es un gran apoyo. De esta manera se puede lograr que éste tenga mayor repercusión, se comunique viralmente, reciba más atención y así obtenga el presupuesto requerido para salir adelante.\r\n\r\nPara ello, en la página de cada proyecto encontrarás un apartado que permite compartirlo en diferentes redes sociales, pegar su link directo donde quieras, incluso el código de un widget con un resumen visual de qué pretende esa iniciativa y cómo va su financiación, para ponerlo en tu blog, tu web, etc.', 14);
INSERT INTO `faq` VALUES(48, 'goteo', 'investors', '¿Cómo puedo participar en el proceso creativo de los proyectos?', 'Desde la plataforma de Goteo puedes consultar, sugerir y en general establecer una conversación con el impulsor del proyecto sobre sus necesidades financieras o llamadas a la colaboración. También puedes seguir y comentar el desarrollo de todo el proceso a través de las actualizaciones que hace en la página principal del proyecto. Y recibir por correo notificaciones sobre cualquier novedad o cambio relacionado con el proyecto que estás cofinanciando.', 15);
INSERT INTO `faq` VALUES(49, 'goteo', 'project', '¿Cómo puedo obtener la información de mis cofinanciadores?', 'Una vez lograda la financiación mínima para llevar adelante el proyecto, el panel de control del sistema muestra la información necesaria para ponerse en contacto con los usuarios que hayan realizado aportaciones.', 17);
INSERT INTO `faq` VALUES(50, 'goteo', 'project', '¿Debo publicar novedades sobre mi proyecto?', 'Deberías, sí. Las notificaciones regulares son una parte fundamental del proceso para lograr que el proyecto capte la atención y reciba apoyos. Debes tener un pequeño plan sobre qué cosas contar sobre ti o tu equipo, los orígenes y las virtudes del proyecto. Tal vez cosas que no has mencionado en el formulario, tal vez otra manera de explicarlas. La transparencia, dinamismo y empatía que apliques los 40 días de la primera fase de recaudación son fundamentales. La herramienta de goteo te permite hacerlo mediante mensajes, fotografías y vídeos, y también hacerlo llegar a diferentes canales y redes de Internet. ', 20);
INSERT INTO `faq` VALUES(51, 'goteo', 'nodes', '¿Cómo se articula la comunidad de Goteo sobre el territorio?', 'Goteo es una comunidad de comunidades. Un sistema distribuido de nodos locales que gestionan la plataforma digital de manera independiente pero coordinada con el resto. Agentes legitimados, conectados con grupos de interés, con un importante calado social, referentes en su ámbito de actuación (ciudades, comunidades autónomas, etc). Una red de nodos de confianza, que sirve para localizar lo digital, aportando proximidad y especificidad, multiplicando el impacto de Goteo en su contexto.', 1);
INSERT INTO `faq` VALUES(52, 'goteo', 'node', '¿Con qué apoyos cuenta Goteo?', 'Goteo cuenta con una importante red de apoyo, compuesta por agentes diversos y distribuida geográficamente, que nos ha acompañando desde los primeros pasos del proyecto. Agentes relacionados con el procomún, el software libre, la innovación cultural o el activismo digital. Pero ¡nunca son suficientes! Así que, si quieres sumarte, contáctanos.', 12);
INSERT INTO `faq` VALUES(53, 'goteo', 'project', '¿Como gestionar los retornos colectivos?', 'Dependiendo de la naturaleza del proyecto. Si es código, te aconsejamos repositorios como Github. Si se trata de documentos, puedes compartir los borradores y versiones alfas en algún wiki o servicio de publicación online, o subirlos mediante FTP a alguna dirección desde donde se puedan descargar. Si se trata de un vídeo, te aconsejamos Vimeo o Youtube para publicarlo y apuntar tus links allí. En general, a la hora de plantearte espacios de la red donde poder trabajar y alojar contenidos vinculados a tu proyecto, para que supongan un retorno colectivo, elige plataformas lo más accesibles y abiertas que sea posible, para así maximizar su difusión y coherencia con el procomún. Si se trata de retornos que en vez de digitales son físicos o digamos que offline, piensa en los espacios públicos y tarta de aplicar los mismos principios de abertura y accesibilidad.\r\n\r\nMás consejos: usa regularmente el tablón de llamadas a colaboración y publica nuevas necesidades una vez el proyecto esté en marcha. Piensa que entre tus cofinanciadores se encuentran verdaderos talentos y agentes dispuestos a acompañar el proyecto. Valora por igual gente que te apoya financieramente como la labor de colaboradores voluntarios. No pierdas nunca de vista la comunidad: ése es el motor de Goteo. ¡Cada gota cuenta! Un dolar puede ser carburante, una idea o apoyo puede ser petróleo :) Integra a los colaboradores en los procesos de crecimiento de los proyectos, en posibles retornos económicos no previstos inicialmente. Un cofinanciador puede llega a ser el difusor que te hacía falta.', 19);
INSERT INTO `faq` VALUES(55, 'goteo', 'project', '¿Qué son los retornos colectivos y como pensarlos? ', 'Se trata en cierto modo de la gran apuesta de Goteo: generar retornos colectivos y bienes comunes compaginables con las recompensas individuales, pero en comparación a éstas sean generadoras de cambios mucho mayores. Recompensas orientadas al procomún, que permitan la reutilización, recombinación, generación de nuevos usos y valores sobre lo ya hecho.  Si te cuesta ver cómo generar algún tipo de retorno colectivo en tu proyecto, la guía del formulario de alta te puede ayudar a pensar en ello. Si no te parece suficiente, hablemos.', 13);
INSERT INTO `faq` VALUES(56, 'goteo', 'project', '¿Las necesidades del proyecto pueden ser modificadas una vez en campaña?', 'Sí. Lo único que no se puede editar es la cifra total objetivo de la financiación y las recompensas que se han definido para cada volumen de aportación. En cambio, no sólo es posible sino muy recomendable actualizar la información del proyecto regularmente desde el panel de control, tanto en la fase de búsqueda de financiación como una vez obtenido el mínimo, y por lo tanto con la producción ya en marcha. El feedback hacia cofinanciadores y colaboradores resulta primordial a la hora de llegar a los objetivos óptimos de financiación en esa segunda ronda de financiación, para la que recomendamos planificar bien las posibles tareas y fases del proyecto.', 11);
INSERT INTO `faq` VALUES(57, 'goteo', 'project', '¿Qué herramientas tengo para administrar mi proyecto?', 'Cada creador, dispone de un dashboard o panel de control desde donde administrar la información pública de su proyecto, a modo de centro de operaciones para dinamizarlo y gestionarlo. Desde ahí se pueden publicar actualizaciones, añadir fotos y vídeos, clasificar las aportaciones de los cofinanciadores y gestionar los envíos de las recompensas individuales.\r\n\r\nEse panel de control también permite ver toda la información detallada sobre cómo evoluciona la recaudación y los apoyos recibidos, y posteriormente comunicarse con los usuarios que hayan cofinanciado el proyecto.', 16);
INSERT INTO `faq` VALUES(58, 'goteo', 'investors', '¿Quién puede apoyar proyectos en Goteo?', 'Cualquier ciudadano, empresa o institución puede:\r\n\r\n- conocer, opinar y establecer conversaciones en línea sobre los planes, acciones y progresos llevados a cabo por los impulsores de los proyectos;\r\n- apoyarlos mediante una microdonación o una microcolaboración, es decir, haciendo donaciones financieras (a partir de 5 euros) o colaborando según las competencias y los medios de cada uno;\r\n- beneficiarse del acceso a los retornos colectivos digitales (contenidos, cursos o asesorías por Internet, herramientas digitales de código abierto, etc) que el creador ha decidido ofrecer a la comunidad en las condiciones que establecen las licencias que ha elegido.', 2);
INSERT INTO `faq` VALUES(59, 'goteo', 'project', '¿Cual es el compromiso del creador con Goteo y los Cofinanciadores?', 'Después de que el proyecto haya sido aceptado por la comunidad de Goteo y haya conseguido su financiación mínima, se formaliza el contrato que aparece desde el primer momento en tu panel de control como impulsor el proyecto. En él te comprometes a llevar a cabo el proyecto y a dar acceso a los contenidos o servicios que hayas definido como retorno colectivo para la comunidad.\r\n\r\nEn el caso de las recompensas individuales, la relación sólo pone en juego el compromiso entre el creador y sus cofinanciadores.', 10);
INSERT INTO `faq` VALUES(62, 'goteo', 'node', 'Si Goteo defiende el código abierto ¿se va abrir la plataforma?  ', 'Absolutamente, nos aplicamos nuestra propia receta :) Goteo es una plataforma desarrollada íntegramente con software libre y se va a abrir de modo progresivo. Inicialmente mediante la posibilidad de generar un nodo alojado en Goteo, para que una comunidad local tenga un subdominio propio y capacidad para administrar y gestionar la cofinanciación de proyectos. Posteriormente, a partir de 2012 y cuando tengamos ya una versión estable bien testeada y la comunidad en torno a Goteo funcionando a buen rendimiento, liberaremos la totalidad del código fuente bajo licencia AGPL. De esta manera, quien quiera podrá instalar la plataforma de manera autónoma y adaptarla a sus propias necesidades. Así esperamos que más desarrolladores de software puedan contribuir a mejorar la herramienta, generar aplicaciones, etc.', 13);
INSERT INTO `faq` VALUES(64, 'goteo', 'project', '¿Puede un mismo proyecto estar en varias plataformas a la vez?', 'Creemos que sí, al menos por nuestra parte no hay problema :) De hecho, ya se han dado casos y precisamente lo permite la modularidad de muchos proyectos (que pueden tener productos o procesos derivados y complementarios, con potencial educativo, de investigación, lúdico, de márketing, de traspaso a otros soportes o formatos, etc). Para ello, lo más recomendable es estudiar otras plataformas y qué tipo de proyectos apoyan. Debes considerar un calendario y desglose del proyecto (por fases o subproductos), para que no se solapen dos campañas en dos plataformas diferentes, puesto que esto puede generar confusión y recelo entre los potenciales cofinanciadores.', 9);
INSERT INTO `faq` VALUES(65, 'goteo', 'nodes', '¿Quién y cómo se puede formar un nodo?', 'Puede formar un nodo local cualquier colectivo o entidad pública o privada en una localidad o área concreta (de momento sólo en el estado español) cuyos miembros compartan las ganas y tengan la capacidad operativa para atraer personas, proyectos y fuentes de financiación.\r\n\r\nTodo ello alrededor del procomún, el código abierto y el conocimiento libre, para potenciar el desarrollo social comunitario a través de nosotrosgestionar tanto la administración de la plataforma local de Goteo como la difusión de proyectos.\r\n\r\nPara poner en marcha un nodo local, el agente interesado en promoverlo debe:\r\n\r\n    * Realizar un pequeño estudio sobre el contexto local, en relación a agentes impulsores y cofinanciadores.\r\n    * Disponer de los fondos necesarios para el mantenimiento de los recursos humanos y tareas ligados a la gestión del nodo y para cubrir la parte correspondiente de la bolsa de inversión social.\r\n    * Establecer un período de familiarización con la plataforma y el funcionamiento del sistema.\r\n\r\nSi tienes interés por montar un nodo local de Goteo en tu zona, ponte en contacto con nosotros.', 2);
INSERT INTO `faq` VALUES(66, 'goteo', 'nodes', '¿Existen nodos temáticos?', 'No exactamente. A diferencia de los nodos, que aglutinan proyectos según grupos de personas e iniciativas de una zona geográfica, en Goteo los temas y ámbitos que tienen en común diferentes proyectos aglutinan detrás pequeñas comunidades virtuales especializadas. Esto es, expertos y personas apasionadas de un determinado tema que actúan desde cualquier ubicación geográfica como prescriptores, asesoran o difunden proyectos en fase de financiación vinculados con el arte, la tecnología, la educación, etc. ', 3);
INSERT INTO `faq` VALUES(67, 'goteo', 'nodes', '¿Qué ventajas y qué responsabilidades implica constituir un nodo de Goteo?', 'Montar y gestionar un nodo de Goteo supone una tarea intensa de dinamización y activación de oportunidades locales para aportar al procomún, generando cambios positivos tanto en la proximidad como en la distancia. En ese sentido, dota de visibilidad y reputación a las personas y/o organizaciones que lo impulsan. También implica tomar decisiones en el día a día de la gestión de Goteo, y respecto a los fondos que se recauden mediante la comisión de cada financiación obtenida por un proyecto, para lo que debe haber una mínima cohesión y criterios compartidos. Otro aspecto importante es estar en contacto periódico con el equipo impulsor de Goteo. ', 4);
INSERT INTO `faq` VALUES(68, 'goteo', 'nodes', '¿Hay algún nodo de Goteo cerca de donde estoy?', 'Si no lo hay debería haberlo! Pero ahora mismo estamos empezando y por tanto aún queda mucho por recorrer en ese sentido. De momento contamos con nodos que empiezan en Barcelona, Bilbao, Madrid y algún otro que se lo está pensando :)', 4);
INSERT INTO `faq` VALUES(69, 'goteo', 'sponsor', '¿Quién puede publicar proyectos en Goteo?', 'Puede utilizar Goteo cualquier persona u organización que busque financiación y colaboración para un proyecto pensado, producido y/o distribuido en base a parámetros libres y abiertos.\r\n\r\nSólo hay dos requisitos indispensables:\r\n\r\n   1. Ser mayor de 18 años (si no es así, el proyecto lo puede presentar tu tutor o representante legal).\r\n   2. Disponer de una cuenta bancaria en España (la limitación temporal al territorio español tiene que ver con aspectos técnicos, relacionados con el trámite de pago de la financiación obtenida).', 2);
INSERT INTO `faq` VALUES(70, 'goteo', 'node', '¿Qué es la financiación colectiva y cómo se plantea en Goteo?', 'La financiación colectiva o microfinanciación (en inglés crowdfunding) es una forma de cooperación entre muchas personas para reunir una suma de dinero con la que apoyar el desarrollo de una iniciativa concreta.\r\n\r\nGoteo es una nueva vía, basada en ese modelo, para impulsar proyectos de carácter libre y/o abierto de modo colaborativo. Una alternativa o complemento a la financiación derivada de la administración pública y/o de la empresa privada, reactivando el papel co-responsable de la sociedad civil. Para que personas y organizaciones pequeñas, con proyectos no-generalistas y con un acceso difícil a recursos, puedan llevar a cabo con éxito proyectos sostenibles y perdurables en el tiempo.', 2);
INSERT INTO `faq` VALUES(71, 'goteo', 'node', '¿Con qué otras tendencias y proyectos tiene que ver Goteo?', 'Goteo forma parte de una corriente internacional relacionada con fenómenos digitales y offline, como por ejemplo: el <a href="http://es.wikipedia.org/wiki/Crowdsourcing">crowdsourcing</a>, las redes peer-to-peer, los microcréditos, las monedas complementarias, la economía de la larga cola, las nuevas formas de economía solidaria, la cultura libre o los procesos de participación y sociabilización en un sentido amplio. Se basa en una remezcla de experiencias significativas en torno a plataformas de crowdfunding como Kickstarter o de micropagos como Flattr, iniciativas de apoyo a proyectos web como Mozilla Drumbeat, las licencias libres como Creative Commons o la economía distribuida en torno al open hardware.', 7);
INSERT INTO `faq` VALUES(72, 'goteo', 'node', ' ¡No entiendo toda esta jerga goteante! ¿Qué es eso del crowdfunding, el procomún, el código abierto?', 'Nuevas ideas, tendencias, maneras de pensar, de actuar, de vivir, requieren de nuevas palabras con las que llamar a las cosas, o bien de resignificar algunas ya existentes. Es cierto que requiere un esfuerzo, pero no olvides que el lenguaje y cómo lo utilizamos, también habla (además de los hechos), de quiénes somos y qué hacemos. \r\nPara ayudar en la comprensión de todo este vocabulario hemos preparado un glosario, que incluye los términos más utilizados y significativos relacionados con Goteo.', 8);
INSERT INTO `faq` VALUES(73, 'goteo', 'project', 'Bien social VS Bien común ¿En qué se diferencian?', 'En Goteo, éste es un matiz de vital importancia. Pese a que pueda haber proyectos de alto interés social (bien social), orientados a generar cambios positivos en lugares o comunidades concretas, Goteo no está orientado a iniciativas solidarias o sociales si estas no establecen claramente un retorno colectivo. Esto es, que asegure que el proyecto es transferible y reutilizable por otras personas o colectivos (bien común), según las libertades con que se rige el conocimiento libre, que habitualmente son reguladas mediante licencias libres y abiertas.', 2);
INSERT INTO `faq` VALUES(74, 'goteo', 'project', '¿Por qué usar licencias libres y/o abiertas?', 'Para asegurar que las iniciativas propuestas contribuyen a fortalecer el procomún, el código abierto y/o el conocimiento libre, los proyectos que quieran financiarse y desarrollarse con la ayuda de Goteo deben pensarse, producirse y/o distribuirse acogiéndose a alguna de las numerosas licencias libres y/o abiertas existentes. Licencias que propician el “rastro digital” de los proyectos con diferentes especificaciones y/o restricciones; permitiendo explícitamente la copia, comunicación pública, distribución, modificación y/o explotación de parte o de la totalidad de cada creación.\r\n\r\nLas licencias libres y/o abiertas no sólo permiten preservar la autoría original y el control sobre los usos derivados que se pueden hacer de las creaciones, sino que representan un verdadero mecanismo de replicación y difusión, apoyándose y nutriendo redes de seguidores, prosumidores y divulgadores. Una fuente cada vez más rica y diversa de bienes comunes, donde muchas personas acuden en busca de inspiración, talento y recursos de todo tipo (educativos, artísticos, documentales, etc).\r\n\r\nPor todo ello, y teniendo siempre en cuenta que Goteo garantiza precisamente la remuneración por el esfuerzo de ideación y creación de los proyectos (que en paralelo pueden tener sus propios mecanismos de sostenibilidad económica), compartimos la opinión cada vez más generalizada de que las licencias libres y/o abiertas no es que perjudiquen, sino que sólo pueden beneficiar a los proyectos y a las personas impulsoras de los mismos, y por ende a la sociedad en general.\r\n\r\nDesde Goteo se propone y se asesora sobre una serie de licencias como: Creative Commons (CC), General Public Licence (GPL), GNU Affero General Public Licence (AGPLv3), Open Database (ODBC), Licencia Red Abierta Libre Neutral (XOLN) o Open Hardware Licence (OHL). Puedes consultar el contenido de éstas y otras licencias en Creative Commons o Safe Creative', 4);
INSERT INTO `faq` VALUES(75, 'goteo', 'project', 'Todo esto suena muy bien, ¿pero cómo “abro” mi proyecto?', 'El mundo del conocimiento libre está lleno de posibilidades, pero no siempre es fácil encontrarlas y aplicarlas si no se está acostumbrado a trabajar con los parámetros de lo abierto. Teniendo esto en cuenta, Goteo dispone de un asistente que guía todo el proceso de alta de proyectos, explicando la importancia de las decisiones que debe tomar su impulsor a cada paso y qué tipo de información facilitar.\r\n\r\nSi no te parece suficiente, hablemos. Porque la misión de la Fundación Goteo es la divulgación, la promoción y la investigación aplicada en torno al procomún, el código abierto y el conocimiento libre, en distintos ámbitos sociales, culturales y económicos. Por eso, ofrecemos acompañamiento y asesoramiento especíalizado a las personas y entidades impulsoras, sobre cómo configurar o adaptar sus proyectos: tipos de licencias, retornos colectivos, nuevos productos y servicios derivados, etc. Este asesoramiento se realiza desde la Fundación Goteo y desde una comunidad de personas expertas y apasionadas de temáticas concretas.', 5);
INSERT INTO `faq` VALUES(76, 'goteo', 'project', '¿Puedo presentar un proyecto que tiene su efecto o comunidad fuera de España?', 'Por supuesto. La limitación temporal al territorio español tiene que ver sólo con aspectos técnicos, relacionados con el trámite de pago de la financiación obtenida. En ese sentido, el impulsor de la iniciativa que se dé de alta como tal en Goteo debe tener una cuenta bancaria en España, pero los proyectos pueden llevarse a cabo o tener impacto en cualquier otro territorio. Eso sí, en caso de propuestas similares, dado que la intención de Goteo es crecer reforzando lo local con proximidad geográfica, es posible que la decisión final a la hora de publicar o no el proyecto en la plataforma, pase actualmente por priorizar los proyectos más cercanos.', 7);
INSERT INTO `faq` VALUES(77, 'goteo', 'sponsor', '¿Por qué publicar mi proyecto en Goteo?', 'Publicar proyectos en Goteo posibilita acceder a un nuevo modelo de financiación colectiva y colaboraciones distribuidas, aprovechando las posibilidades de Internet. Te invitamos a hacer público tu proyecto y a compartirlo con una comunidad de gente a la que, como a ti, le interesan los proyectos libres y abiertos que ofrecen nuevas oportunidades para la mejora constante de la sociedad, en beneficio del bien común.\r\n\r\nAdemás, a través de Goteo puedes:\r\n\r\n    * Dar visibilidad a tus proyectos, haciendo partícipe desde el principio a la comunidad potencial de los mismos, apoyandote en su conocimiento y recomendaciones para contrastarlos y testearlos.\r\n    * Recibir asesoramiento para mejorar la comunicación pública de los proyectos: adaptándolos a la filosofía libre y abierta, o para plantear los retornos colectivos adecuados.\r\n    * Acceder a herramientas específicas de “social media” y publicar contenidos para difundir tu trabajo en Internet.\r\n    * Formar parte de una red social especializada, con impacto local y difusión internacional, en la que pueden surgir numerosas sinergias y complementariedades.', 1);
INSERT INTO `faq` VALUES(78, 'goteo', 'sponsor', '¿Cuáles son las fases para el desarrollo de un proyecto en Goteo?', 'El modelo de Goteo consiste en cuatro fases diferenciadas, por las que debe pasar cada proyecto:\r\n\r\n   1. Alta y descripción pormenorizada\r\n   2. Selección y, en caso de aceptación, revisión\r\n   3. Publicación y dos campañas de cofinanciación (40+40 días)\r\n   4. Difusión de resultados y retornos ', 3);
INSERT INTO `faq` VALUES(79, 'goteo', 'sponsor', '¿Cómo presento mi proyecto?', 'Lo primero que tienes que hacer es dar de alta tu proyecto, cumplimentando el formulario al que accederás desde la sección “Crear proyecto”. Se trata de que hagas una descripción lo más detallada posible del proyecto y sus fines, de ti o tu equipo como impulsores y de la financiación mínima y óptima, así como de las colaboraciones necesarias. También de las fases de trabajo, tareas y plazo de ejecución. No olvides tener en cuenta las tareas relacionadas con la gestión y producción específica de los retornos colectivos y las recompensas individuales que propongas.\r\n\r\nPara ayudarte en esta fase, Goteo dispone de un asistente que guía todo el proceso de alta de proyectos, explicando la importancia de las decisiones que debe tomar su impulsor a cada paso y el tipo de información a aportar.', 4);
INSERT INTO `faq` VALUES(80, 'goteo', 'sponsor', '¿Cómo determino el presupuesto del proyecto?', 'Debes hacer un presupuesto lo más detallado posible. Cuanta más transparencia, más confianza transmitirás a tus posibles cofinanciadores.\r\n\r\nA la hora de hacer el presupuesto, te recomendamos:\r\n\r\n    * Desglosa debidamente los honorarios (los tuyos y los de otras personas que colaboren), gastos materiales, subcontrataciones, etc. Ten cuidado en la planificación presupuestaria, ya que la cantidad de dinero que solicites es de las pocas cosas que no se pueden modificar una vez haya comenzado la campaña de cofinanciación.\r\n    * Ten en cuenta los costes derivados de la gestión y producción de los retornos colectivos y las recompensas individuales (muchos proyectos de crowdfunding se complican por no haber contemplado bien esta cuestión).\r\n    * No olvides considerar las comisiones existentes: el 8% en concepto de prestación de servicios por parte de Goteo y una media del 2% por las transacciones económicas, ya sean a través del banco o de Paypal.', 5);
INSERT INTO `faq` VALUES(81, 'goteo', 'sponsor', '¿Por qué un presupuesto mínimo y otro óptimo?', 'Goteo segmenta la campaña de captación de un proyecto en dos rondas de cofinanciación de 40 días cada una. Por eso, a la hora de fijar el presupuesto, hay que dividirlo especificando un mínimo y un óptimo:\r\n\r\n    * El presupuesto mínimo tiene que ver con el capital necesario para desarrollar las tareas iniciales, críticas e imprescindibles para poner en marcha el proyecto.\r\n    * El presupuesto óptimo tiene que ver con tareas adicionales para la producción del proyecto, de sofisticación o mejora (aumentar la producción, traducir a otros idiomas, ofrecerlos en otros soportes, etc.).\r\n\r\nÉsa es otra de las diferencias con muchas de las plataformas y dinámicas de crowdfunding que hemos estudiado para diseñar Goteo. Creemos que se puede y se debe ir más lejos en la relación entre microfinanciadores e impulsores de proyectos, y que un sistema basado en la confianza y los resultados transparentes puede permitir rondas posteriores de financiación una vez se han logrado avances significativos en las creaciones.', 6);
INSERT INTO `faq` VALUES(82, 'goteo', 'sponsor', '¿Cuál es la cantidad mínima y máxima que se puede solicitar para un proyecto?', 'Estos límites son tentativos, ya que se irán fijando con la experiencia acumulada de Goteo (en todo caso, siempre puede haber excepciones).\r\n\r\n    * El importe mínimo de un proyecto para ser publicado en Goteo es de 3.000€. Para proyectos menores, entendemos por norma general que no es rentable un esfuerzo como el que supone mantener una campaña de captación de hasta 80 días. Y sobre todo, pensamos que por debajo de ese presupuesto, no se podrán dedicar los recursos suficientes para generar de manera sostenible los retornos colectivos de valor para la comunidad.\r\n\r\n    * No existe un límite máximo, pero el agente impulsor debe medir bien su capacidad de gestión y respuesta. Además, debemos ser realistas y entender que el proceso de cofinanciación a través de Goteo se irá desarrollando progresivamente, generando comunidad y un clima de confianza, que permita acometer cada vez proyectos mayores. ', 7);
INSERT INTO `faq` VALUES(83, 'goteo', 'sponsor', '¿Qué son los retornos colectivos?', 'Los retornos colectivos (como algo complementario a las recompensas individuales) son la gran apuesta de Goteo, que persigue la rentabilidad social de las inversiones efectuadas a través de la plataforma. Se trata del desarrollo de bienes comunes a través de la generación de recompensas orientadas al procomún, que permitan la reutilización, recombinación, obtención de nuevos usos y valores a partir de lo realizado. Buscando la viabilidad de los proyectos para sus impulsores pero también el mayor beneficio posible para la comunidad, con el objetivo de crear capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.\r\n\r\nLos retornos colectivos pueden ser muy diversos: compartir conocimiento y acceso libre al código fuente; recursos o servicios derivados; formación a través de manuales didácticos, talleres y/o asesorías por Internet; materiales en bruto, archivos y contenidos digitalizables (por ejemplo un patrón, un diseño, una metodología, un programa), que puedan copiarse, reutilizarse, remezclarse, etc. ', 8);
INSERT INTO `faq` VALUES(84, 'goteo', 'sponsor', '¿Cómo debo planificar y gestionar los retornos colectivos?', 'Abrir los proyectos, hacerlos accesibles, generar retornos colectivos útiles y de valor para la comunidad, supone un esfuerzo, recursos y tiempo extra. Por eso debes tenerlo en cuenta a la hora de planificar y presupuestar tu proyecto.\r\n\r\nLa manera de formalizar los retornos colectivos depende de la naturaleza de cada proyecto. Si es código, te aconsejamos repositorios como Github. Si se trata de documentos, puedes compartir los borradores y versiones alfas en algún wiki o servicio de publicación online, o subirlos mediante FTP a alguna dirección desde donde se puedan descargar. Si se trata de un vídeo, te aconsejamos Vimeo o Youtube para publicarlo.\r\n\r\nEn general, a la hora de plantearte espacios de la red donde poder trabajar y alojar contenidos vinculados a tu proyecto, elige plataformas lo más accesibles y abiertas posible, para así maximizar su difusión y coherencia con el procomún. Si en vez de retornos digitales (online) son físicos (offline), piensa en espacios públicos y trata de aplicar los mismos principios de apertura y accesibilidad.', 9);
INSERT INTO `faq` VALUES(85, 'goteo', 'sponsor', '¿Qué son las recompensas individuales?', 'Las recompensas individuales son las contraprestaciones personales que los agentes impulsores de los proyectos pueden ofrecer (o no, en Goteo no son obligatorias) a las personas cofinanciadoras a cambio de su aportación monetaria. Pueden llegar a ser muy importantes para lograr la participación del mayor número y variedad de cofinanciadores posible.\r\n\r\nEstas recompensas pueden ser tangibles (un objeto relacionado con el proyecto, una publicación, una camiseta) o bien intangibles (aparición en los créditos y otros espacios de especial visibilidad en el proyecto, acceso premium o anticipado a contenidos, servicios específicos adaptados, participación en la producción, pases privados, invitaciones a fiestas y presentaciones, una participación en la propiedad del proyecto y sus posibles beneficios).\r\n\r\nDeben resultar atractivas, exclusivas y originales, planteando distintas posibilidades tanto para pequeños cofinanciadores como para aquellas personas o entidades que puedan hacer mayores aportaciones. Recomendamos no establecer demasiadas franjas o niveles de aportación y que estén bien diferenciadas y escaladas, para así facilitar la decisión de los cofinanciadores y cofinanciadoras. ', 10);
INSERT INTO `faq` VALUES(86, 'goteo', 'sponsor', '¿Cómo debo planificar y gestionar las recompensas individuales?', 'Las recompensas deben resultar atractivas para quienes cofinancian la iniciativa (acceso a algo exclusivo o en condiciones ventajosas, como se indica en la respuesta anterior) pero debes calibrarlas bien, prometiendo bienes o servicios que sea viable ofrecer sin hipotecar la capacidad de producción del proyecto. Es muy importante que tengas en cuenta los recursos y costes económicos que implica su producción, envío, etc., para así poderlos incorporar al importe mínimo que solicites para llevarlo todo a cabo.\r\n\r\nA través del formulario de inscripción de proyectos podrás plantear y definir detalladamente los importes vinculados a cada recompensa, su tipología y cuántas unidades de cada tipo se ofrecen a los cofinanciadores. Posteriormente, cuando el proyecto haya obtenido su objetivo de financiación, desde la plataforma tendrás acceso a una serie de herramientas para gestionar los envíos y hacer efectivas las recompensas individuales comprometidas.', 11);
INSERT INTO `faq` VALUES(87, 'goteo', 'sponsor', '¿Qué tipo de colaboraciones puedo solicitar?', 'En Goteo, además de aportaciones monetarias puedes solicitar colaboraciones adicionales para desarrollar tu proyecto. Desde habilidades concretas que un proyecto necesita de terceros (traductores, testers, prescriptores) hasta préstamos de recursos materiales (transporte, equipos), pasando por infraestructuras (espacios, instalaciones).\r\n\r\nLas colaboraciones se solicitan en el momento de dar de alta el proyecto, pero pueden irse cambiando y añadiendo nuevas a lo largo de todo el proceso de campaña. Piensa que entre tus cofinanciadores se encuentran verdaderos talentos y agentes dispuestos a acompañar el proyecto, así que valora por igual a la gente que te apoya financieramente como la labor de colaboradores voluntarios.\r\n\r\nNo pierdas nunca de vista la comunidad: ése es el motor de Goteo. ¡Cada gota cuenta! Intenta integrar a los colaboradores en los procesos de crecimiento de los proyectos, pensando en posibles retornos colectivos, recompensas individuales o incluso contra-prestaciones económicas que no hayas previsto inicialmente. ', 12);
INSERT INTO `faq` VALUES(88, 'goteo', 'sponsor', '¿Cómo es el proceso de selección y revisión de proyectos?', 'Una vez que has dado de alta tu proyecto, éste entra en un proceso de selección que tiene en cuenta todos los proyectos inscritos hasta ese momento en la plataforma. Dicha selección la lleva a cabo el equipo de Goteo en estrecha colaboración con una comunidad de expertos de diferentes ámbitos. El proceso tiene en cuenta los fines, temática, tipología y procedencia del proyecto; su pertinencia y carácter innovador o diferencial (es importante que el conjunto de proyectos publicados conformen un ecosistema lo más diverso posible); una estimación del retorno colectivo que genera; y también la competencia o experiencia del impulsor.\r\n\r\nSi se considera necesario, durante ese proceso se lleva a cabo una labor de revisión y asesoramiento para lograr la optimización del proyecto. Bien sobre la manera más eficaz de comunicar la iniciativa a través de Goteo o de otros medios (principalmente digitales); bien sobre cómo configurarla o adaptarla a la filosofía libre y abierta (tipos de licencias, productos y servicios derivados, etc); bien sobre cómo plantear los retornos colectivos adecuados.', 13);
INSERT INTO `faq` VALUES(89, 'goteo', 'sponsor', '¿Cuánto tarda la respuesta sobre si mi proyecto se publica o no?', 'Contactaremos contigo en el plazo máximo de una semana desde el alta del proyecto. Posteriormente, al margen de posibles mensajes para revisar y optimizar el proyecto, la respuesta sobre la publicación o no de tu proyecto en Goteo tardará como mucho otra semana (en total, un máximo de dos semanas).', 14);
INSERT INTO `faq` VALUES(90, 'goteo', 'sponsor', '¿Cómo se organizan los proyectos en Goteo?', 'Una vez realizada la selección, los proyectos se publican organizados según sus fines, en distintas categorías o secciones temáticas: social, cultural, científico, educativo, tecnológico o ecológico (un mismo proyecto puede perseguir varios fines y por tanto estar en varias de estas secciones).\r\n\r\nAgrupar proyectos según sus fines es una forma de saltarnos los límites disciplinares, para generar sinergias transversales; sumar conocimientos diversos para afrontar objetivos comunes; o atraer patrocinios y convocatorias específicas.\r\n\r\nEstas secciones temáticas cuentan con la complicidad, el compromiso y el asesoramiento de agentes expertos, personas que hacen las funciones de prescriptores, asesores o informadores entusiastas, y que conforman la red de conocimiento de Goteo.', 15);
INSERT INTO `faq` VALUES(91, 'goteo', 'sponsor', '¿Cómo funciona la campaña de cofinanciación en dos rondas (40+40)?', 'Mientras que en el resto de plataformas de crowdfunding, las campañas de captación de financiación sólo contemplan un periodo de recaudación por proyecto, en Goteo se establecen dos rondas de cofinanciación, de 40 días cada una (40+40).\r\n\r\n    1ª ronda: Está ligada al presupuesto que hayas establecido como mínimo: el capital necesario para desarrollar las tareas iniciales, críticas o imprescindibles para la puesta en marcha del proyecto. Se hace una captación de fondos a “todo o nada”, esto es, las aportaciones económicas comprometidas por los cofinanciadores sólo se hacen efectivas si se alcanza el presupuesto mínimo. Si no es así, no se lleva a cabo ningún tipo de transacción monetaria finalmente y los compromisos (tanto tuyos como impulsor, como de tus cofinanciadores) quedan anulados. \r\n\r\n    2ª ronda: Si se ha alcanzado o superado el presupuesto mínimo durante la 1ª ronda, entonces se pone en marcha una segunda, también de 40 días, ligada al presupuesto óptimo, que permita realizar el resto de tareas para la producción del proyecto y otras adicionales, de sofisticación o mejora. Esta segunda ronda sirve también para abrir el proyecto a más gente y sobre todo trabajar en abierto, en tiempo real, informando de los avances con transparencia, algo que repercute directamente en obtener más visibilidad y apoyos. En esta ronda, todas las aportaciones que se recaudan se hacen efectivas al final del plazo, se alcance o no el presupuesto óptimo. ', 16);
INSERT INTO `faq` VALUES(92, 'goteo', 'sponsor', '¿Qué pasa si mi proyecto no alcanza el presupuesto mínimo al finalizar la 1ª ronda?', 'Durante la 1ª ronda de Goteo se hace una captación de fondos a “todo o nada”, por lo que si no alcanzas el presupuesto mínimo en 40 días no se hacen efectivas las aportaciones monetarias comprometidas. El proyecto tampoco puede seguir en campaña en una 2ª ronda y debe ceder su espacio de atención en Goteo a otro proyecto.', 17);
INSERT INTO `faq` VALUES(93, 'goteo', 'sponsor', '¿Qué pasa si mi proyecto llega al presupuesto óptimo antes de finalizar la 1ª ronda?', '¡Ésa es muy buena señal! Significa que el proyecto está suscitando un gran interés y que hay mucha gente dispuesta a apoyarlo. En base a ese interés, aunque se haya alcanzado la financiación estimada como óptima se puede completar la 1ª ronda y comenzar la 2ª. Será interesante que si obtienes un nivel de financiación muy superior al presupuestado inicialmente, complementes los retornos colectivos que propusiste inicialmente, de manera equivalente a las posibilidades que te ofrezca la nueva financiación.', 18);
INSERT INTO `faq` VALUES(94, 'goteo', 'sponsor', '¿De qué herramientas dispongo para administrar mi proyecto?', 'Cada impulsor dispone de un panel de control a modo de centro de operaciones (MI DASHBOARD), desde donde administrar la información pública de su proyecto, dinamizarlo y gestionarlo. Desde ahí puedes publicar actualizaciones y añadir información complementaria (textos, fotos, vídeos, etc.), ver como evoluciona la recaudación y las aportaciones de tus cofinanciadores, y posteriormente hacer públicos los retornos colectivos y gestionar los envíos de recompensas individuales.', 19);
INSERT INTO `faq` VALUES(95, 'goteo', 'sponsor', '¿Puedo actualizar la información sobre el proyecto una vez iniciada la campaña de cofinanciación?', 'No sólo puedes, sino que deberías hacerlo. El éxito de tu campaña de cofinanciación en Goteo depende del interés y calidad del proyecto, pero también de tu capacidad para comunicarlo y dinamizarlo de modo efectivo, y así atraer a posibles personas cofinanciadoras y colaboradoras, llegando del modo más directo al público objetivo que pueda verse beneficiado por tu propuesta.\r\n\r\nLas actualizaciones regulares y una comunicación dinámica, transparente y empática, resultan muy convenientes para lograr que el proyecto capte la atención y reciba apoyos durante las dos rondas de 40 días.\r\n\r\nDebes tener un pequeño plan de dinamización, considerando qué información complementaria aportar sobre ti o tu equipo, sobre los orígenes y las virtudes del proyecto, sobre el proceso de producción, etc. Esta información se incorpora en la sección de “Novedades” mediante mensajes, artículos, fotografías, vídeos, etc.', 20);
INSERT INTO `faq` VALUES(96, 'goteo', 'sponsor', '¿Hay alguna información que no se pueda cambiar?', 'Lo único que no se puede cambiar una vez publicado el proyecto son los presupuestos objetivo de financiación (mínimo y óptimo) y los tipos de retornos y recompensas que hayas definido para cada franja de aportación. ', 21);
INSERT INTO `faq` VALUES(97, 'goteo', 'sponsor', '¿Cómo puedo dinamizar mi proyecto más allá de Goteo?', 'Gran parte del trabajo de dinamización de tu proyecto, durante el tiempo que permanezca en campaña, debes realizarlo ampliando tu campo de actuación de comunicación más allá de Goteo.\r\n\r\nEn ese sentido, además de que pongas en valor tus contactos y redes formales e informales, es fundamental la posibilidad que ofrecen las plataformas 2.0 y las redes sociales en Internet, tanto las más generalistas como otras más específicas.\r\n\r\nPara facilitarte este trabajo de dinamización del proyecto, desde Goteo te ofrecemos herramientas que permiten compartirlo en diferentes redes sociales, pegar su link directo donde quieras, incluso el código de un widget con un resumen visual de qué pretende tu iniciativa y cómo va su financiación, para así ponerlo en blogs, webs, etc.\r\n\r\nSi tu proyecto tiene una importante dimensión offline, vinculada a un ámbito geográfico determinado, piensa en fórmulas para dar visibilidad a tu campaña: presentaciones, repartir flyers, buscar visibilidad en los medios de comunicación locales, etc. ', 22);
INSERT INTO `faq` VALUES(98, 'goteo', 'sponsor', '¿Se cobra algún tipo de comisión?', 'Sí, en Goteo existen dos tipos de comisiones que debes tener en cuenta a la hora de fijar el presupuesto de tu proyecto, ya que se descuentan del importe total obtenido:\r\n\r\n    * Desde la Fundación Goteo, en concepto de prestación de servicios (espacio de publicación y herramientas de gestión en la plataforma, dinamización del proyecto, asesoría sobre la mejor forma presentar y comunicar tu proyecto o fijar retornos y recompensas, intermediación, etc.), cobramos una comisión del 8% sobre el total del dinero recaudado a lo largo de las dos rondas de 40 días.\r\n\r\n    * Por otra parte están las comisiones derivadas de las transacciones económicas. El banco aplica una comisión de entre 0.8% y 1.4% en concepto procesamiento de pago por cada aportación. En el caso de las aportaciones hechas a través de Paypal, la comisión es del 3% aproximadamente por cada transacción. \r\n\r\nEstas comisiones sólo se hacen efectivas en caso de que se consiga la financiación y las aportaciones lleven a cabo finamente. En caso contrario, publicar un proyecto en Goteo no supone ningún coste para su impulsor.', 23);
INSERT INTO `faq` VALUES(99, 'goteo', 'sponsor', '¿Cómo recibo las aportaciones de mis cofinanciadoras?', 'Las personas y entidades cofinanciadoras realizan sus compromisos de aportación mediante tarjeta de crédito, utilizando una pasarela de pago de Caja Laboral, del Grupo Mondragon o a través de Paypal. Cuando tu proyecto alcance el mínimo del objetivo de financiación, recibirás una notificación y deberás proporcionarnos tus datos bancarios.\r\n\r\nCuando acabe el primer plazo de recaudación de 40 días y si el proyecto ha llegado al minímo, recibirás una transferencia por el importe recaudado hasta dicha fecha. Después de la 2ª ronda de financiación de 40 días recibirás la suma que hayas alcanzado durante ese plazo. En ambos casos se descontará la comisión de Goteo (8%) y los costes de las transacciones.', 24);
INSERT INTO `faq` VALUES(100, 'goteo', 'sponsor', '¿Cómo puedo ponerme en contacto con los cofinanciadores y colaboradores de mi proyecto?', 'En general, el feedback en Goteo se realiza a través del apartado de “Novedades” de cada proyecto, donde puedes publicar actualizaciones y hacer llamadas de colaboración.\r\n\r\nLas colaboraciones se hacen efectivas directamente, sin la mediación de Goteo, por lo que el contacto se establecerá al principio desde la plataforma y a partir de ahí, de la forma que determinéis ambas partes.\r\n\r\nPara otro tipo de comunicaciones, Goteo dispone de la posibilidad de enviarse mensajes directos entre agentes impulsores y cofinanciadores, permitiendo que se establezcan relaciones de tú a tú hasta donde ambas partes consideren oportuno.', 25);
INSERT INTO `faq` VALUES(101, 'goteo', 'sponsor', '¿Cómo presento los resultados del proyecto y hago efectivos los retornos colectivos y las recompensas individuales?', 'Si el proceso de cofinanciación resulta positivo y obtienes al menos la cantidad mínima solicitada, recibirás el dinero obtenido y adquirirás un compromiso firme con tus cofinanciadoras y con la Fundación Goteo.\r\n\r\nDeberás llevar a cabo el proyecto según las especificaciones que hayas detallado; hacer públicos los resultados y los retornos colectivos (enlazándolos desde Goteo), y hacer efectivas las recompensas individuales en los plazos previstos (desde el panel de control tendrás acceso a los datos que cada cofinanciador haya especificado para recibirla).', 26);
INSERT INTO `faq` VALUES(102, 'goteo', 'sponsor', '¿Cuál es mi responsabilidad legal como impulsor del proyecto respecto a Goteo y mis cofinanciadores?', 'Al dar de alta tu proyecto en Goteo aceptas como paso imprescindible un contrato legal con la Fundación Goteo. En base a dicho contrato, tú eres la única persona responsable de hacer efectivos tus compromisos colectivos e individuales con las personas cofinanciadoras y con la Fundación Goteo.\r\n\r\nEn caso de no cumplir estos compromisos, y tras agotar otras vías basadas en la relación de confianza y trato directo entre todos los agentes que implica Goteo, se podrán emprender acciones legales.\r\n\r\nTen en cuenta que tú eres el más interesado en cumplir tus compromisos, en conservar tu reputación para en el futuro poder seguir optando a la cofinanciación de proyectos.\r\n', 27);
INSERT INTO `faq` VALUES(103, 'goteo', 'investors', '¿Cómo elijo qué proyecto me interesa apoyar?', 'En Goteo los proyectos se publican organizados según sus fines, en distintas categorías o secciones temáticas: social, cultural, científico, educativo, tecnológico, ecológico. Hay proyectos muy variados, de cultura libre, de arquitectura, de acción social, de software y hardware libre, de economía alternativa, de gastronomía, de investigación, de permacultura, de emprendizaje…\r\n\r\nTómate un rato para consultar con calma los proyectos en campaña y elegir el que más tenga que ver contigo por temática, proximidad geográfica, tipo de retornos y recompensas, etc. ¡Seguro que encuentras ése hecho a tu medida, del que puedes pasar a formar parte! (Si no es así, escríbenos y danos pistas sobre otro tipo de proyectos que deberíamos ayudar a promocionar, o plantea tú el tuyo).', 2);
INSERT INTO `faq` VALUES(104, 'goteo', 'investors', '¿Qué obtengo a cambio de mi apoyo?', 'Además de contribuir a que un proyecto que te interesa salga adelante, con tu contribución puedes obtener dos tipos de contraprestaciones, colectivas e individuales, que se especifican en la ficha de cada proyecto:\r\n\r\n    * Serás participe de los retornos colectivos que genere el proyecto, que son la gran apuesta diferencial de Goteo, pues perseguimos especialmente la rentabilidad social de las inversiones efectuadas a través de la plataforma. Bienes comunes que permitan la reutilización, recombinación, generación de nuevos usos y valores, a partir de lo ya realizado. Todo ello buscando la viabilidad de los proyectos para sus impulsores, pero también el mayor beneficio posible para la comunidad, con el objetivo de crear capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles. Estos retornos colectivos pueden ser: compartir conocimiento y acceso libre al código fuente; productos, recursos o servicios derivados; formación a través de manuales didácticos, talleres y/o asesorías por Internet; materiales en bruto, archivos y contenidos digitalizables (por ejemplo un patrón, un diseño, una metodología, un programa) que puedan copiarse, reutilizarse, remezclarse, etc. \r\n\r\n    * Puedes conseguir una recompensa individual, que puede variar dependiendo de la cantidad económica que aportes. Éstas tienen un carácter exclusivo y diferencial, y pueden ser tangibles (un objeto relacionado con el proyecto, una publicación, una camiseta) o bien intangibles (aparición en los créditos y otros espacios de especial visibilidad en el proyecto, acceso premium o anticipado a contenidos, servicios especificos adaptados, participación en la producción, pases privados, invitaciones a fiestas y presentaciones, una participación en la propiedad del proyecto y sus posibles beneficios). ', 3);
INSERT INTO `faq` VALUES(105, 'goteo', 'investors', '¿Cómo puedo contribuir a cofinanciar un proyecto?', 'Una vez que elijas un proyecto de los que están en campaña en Goteo, tienes que decidir el importe de tu aportación, según tus posibilidades, intereses, el tipo de contraprestación que quieras obtener, etc. La aportación mínima es de 5 euros.\r\n\r\nMientras que en el resto de plataformas de crowdfunding, las campañas de captación de financiación sólo contemplan un periodo de recaudación por proyecto, en Goteo se establecen dos rondas de cofinanciación, de 40 días cada una (40+40). Así, las aportaciones para cofinanciar un proyecto se pueden hacer en cualquiera de las dos rondas, a lo largo de un total de 80 días.\r\n\r\n    * 1ª ronda: Es la ronda de cofinanciación crítica, en la que se hace una captación de fondos a “todo o nada”, siendo necesario alcanzar el presupuesto que el impulsor haya marcado como mínimo para poder poner en marcha el proyecto. De no alcanzarse ese mínimo, el proyecto no obtendrá nada del dinero comprometido. Así que en esta ronda el dinero que comprometas sólo se extraerá de tu cuenta bancaria si el cómputo total obtenido entre todas las aportaciones alcanza el presupuesto mínimo al final de los 40 días.\r\n\r\n    * 2ª ronda: Si se ha alcanzado o superado el presupuesto mínimo durante la 1ª ronda de cofinanciación, entonces se pone en marcha la 2ª ronda, también de 40 días, ligada al presupuesto óptimo, que permita realizar el resto de tareas para la producción del proyecto y otras adicionales, de sofisticación o mejora. En esta ronda los proyectos van presentando sus avances en tiempo real y todas las aportaciones que haga un cofinanciador se hacen efectivas al final del plazo, se complete o no el presupuesto óptimo. Así que en esta ronda cualquier aportación que hagas se descontará directamente de tu cuenta bancaria.', 4);
INSERT INTO `faq` VALUES(106, 'goteo', 'investors', '¿Qué pasa si un proyecto consigue mucho más dinero que el presupuestado como óptimo?', 'Esto puede llegar a pasar si el proyecto suscita mucho interés entre las personas que lo cofinancian. En ese caso, además de asegurar el cumplimiento de las recompensas individuales el impulsor puede complementar los retornos colectivos propuestos inicialmente, de manera equivalente a las posibilidades que ofrezca la financiación obtenida.', 6);
INSERT INTO `faq` VALUES(107, 'goteo', 'investors', '¿Puedo hacer más de una aportación a un mismo proyecto? ¿Y cofinanciar más de un proyecto a la vez?', '¡Por supuesto! Puedes hacer tantas aportaciones a un mismo proyecto como quieras, a lo largo de los 80 días que puede permanecer en campaña. Sobre todo en la 1ª ronda, esto puede ser fundamental para que un proyecto que te interesa alcance el presupuesto que haya establecido como mínimo para ponerse en marcha y poder optar a la 2ª ronda.\r\n\r\nY sí, si puedes también te invitamos a cofinanciar a la vez proyectos distintos de entre todos los publicados en Goteo.\r\n', 7);
INSERT INTO `faq` VALUES(108, 'goteo', 'investors', 'Del dinero que aporto ¿llega todo al impulsor o impulsora del proyecto?', 'Del total del dinero que aportes, a la persona que lo impulsa le llega entre el 91,2% y el 89% de ese importe. Esto es debido a que se descuentan dos comisiones. Una desde la Fundación Goteo, del 8%, en concepto de prestación de servicios (espacio de publicación y herramientas de gestión en la plataforma, dinamización del proyecto, asesoría sobre la mejor forma presentar y comunicar un proyecto o fijar retornos y recompensas, intermediación, etc). Y otra derivada de las transacciones económicas, entre 0.8% y 1.4% que aplica el banco o el 3% que aplica Paypal.\r\n\r\nEstas comisiones se descuentan del dinero que se ingresa al impulsor y sólo se hacen efectivas en caso de que se consiga la financiación. En caso contrario, para el impulsor, publicar su proyecto en Goteo no supone ningún coste. ', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq_lang`
--

DROP TABLE IF EXISTS `faq_lang`;
CREATE TABLE `faq_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `faq_lang`
--

INSERT INTO `faq_lang` VALUES(2, 'en', 'ENG ¿Qué sistemas de pago ofrece Goteo? ¿Son seguros?', 'ENG Tienes dos opciones para hacer efectiva tu aportación al proyecto que quieres apoyar: mediante el sistema de pago por Internet Paypal o bien mediante tarjeta de crédito, utilizando una pasarela de pago de Caja Laboral, del Grupo Mondragon.  Ambas formas de pago son fáciles, rápidas de utilizar y totalmente seguras, usadas a diario por millones de usuarios en todo el mundo, y poseen todo tipo de medidas de seguridad para evitar robos de claves o suplantaciones de identidad. En ese sentido, Goteo tampoco tiene acceso a tus datos bancarios en ningún momento del proceso. ');
INSERT INTO `faq_lang` VALUES(33, 'en', 'ENG ¿Cómo es el “crowdfunding” o financiación colectiva mediante Goteo?', 'ENG Goteo es una red social de producción, microfinanciación y distribución de recursos para el sector creativo, centrado en el desarrollo de proyectos sociales, culturales, educativos, tecnológicos que contribuyan al fortalecimiento del procomún (esto es, de los bienes colectivos).\r\n\r\nLa reciente proliferación de plataformas de crowdfunding en el mundo, tras la irrupción de Kickstarter.com en 2009 desde Estados Unidos (por ejemplo en España de la mano de Verkami o Lánzanos, por citar dos de las más populares), podría devenir en cierta saturación y desconcierto, sobre todo si tenemos en cuenta que hay países con poca tradición en la financiación social de proyectos. Por eso, consideramos que es fundamental apostar por la diferenciación y la especialización. En Goteo partimos de la ecuación que nos parece más potente del crowdfunding: financiación colectiva para el beneficio colectivo.\r\n\r\nGoteo es una herramienta digital que facilita y combina la financiación colectiva (crowdfunding económico o de recursos) y las colaboraciones no dinerarias (por competencias y microtareas) entre los usuarios de la plataforma.\r\n\r\nLa estrategia de Goteo para potenciar el procomún se basa en reproducir la herramienta en ámbitos temáticos (sectores creativos) y geográficos (comunidades autónomas o ciudades de gran concentración), dando servicio a organizaciones públicas o privadas para que dinamicen su propia plataforma dentro de su sector y competencias.    ');
INSERT INTO `faq_lang` VALUES(33, 'eu', 'EUSK ¿Cómo es el “crowdfunding” o financiación colectiva mediante Goteo?', 'EUSK Goteo es una red social de producción, microfinanciación y distribución de recursos para el sector creativo, centrado en el desarrollo de proyectos sociales, culturales, educativos, tecnológicos que contribuyan al fortalecimiento del procomún (esto es, de los bienes colectivos).\r\n\r\nLa reciente proliferación de plataformas de crowdfunding en el mundo, tras la irrupción de Kickstarter.com en 2009 desde Estados Unidos (por ejemplo en España de la mano de Verkami o Lánzanos, por citar dos de las más populares), podría devenir en cierta saturación y desconcierto, sobre todo si tenemos en cuenta que hay países con poca tradición en la financiación social de proyectos. Por eso, consideramos que es fundamental apostar por la diferenciación y la especialización. En Goteo partimos de la ecuación que nos parece más potente del crowdfunding: financiación colectiva para el beneficio colectivo.\r\n\r\nGoteo es una herramienta digital que facilita y combina la financiación colectiva (crowdfunding económico o de recursos) y las colaboraciones no dinerarias (por competencias y microtareas) entre los usuarios de la plataforma.\r\n\r\nLa estrategia de Goteo para potenciar el procomún se basa en reproducir la herramienta en ámbitos temáticos (sectores creativos) y geográficos (comunidades autónomas o ciudades de gran concentración), dando servicio a organizaciones públicas o privadas para que dinamicen su propia plataforma dentro de su sector y competencias.    ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feed`
--

DROP TABLE IF EXISTS `feed`;
CREATE TABLE `feed` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `url` tinytext,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scope` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `html` text NOT NULL,
  `image` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `scope` (`scope`),
  KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log de eventos' AUTO_INCREMENT=377 ;

--
-- Volcar la base de datos para la tabla `feed`
--

INSERT INTO `feed` VALUES(1, 'Aporte manual', '/admin/invests/list', '2011-09-06 18:34:21', 'admin', 'money', 'MONEY Goteo ha aportado &euro; en nombre de Alejandro Hernández Renner', NULL);
INSERT INTO `feed` VALUES(2, 'Aporte manual', '/admin/invests/list', '2011-09-08 18:52:19', 'admin', 'money', 'MONEY Goteo ha aportado &euro; en nombre de Ana Morales', NULL);
INSERT INTO `feed` VALUES(3, 'Aporte manual', '/admin/invests/list', '2011-09-08 18:56:23', 'admin', 'money', 'MONEY Goteo ha aportado 100&euro; en nombre de Ana Morales', NULL);
INSERT INTO `feed` VALUES(4, 'Aporte manual', '/admin/invests/list', '2011-09-08 19:05:18', 'admin', 'admin', 'ADMIN <a href="/user/profile/goteo" class="blue">Goteo</a>\r\n                            ha aportado <span class="violet">120 &euro;</span>\r\n                                en nombre de <a href="/user/profile/amunoz" class="blue">Ascensión Muñoz Benítez</a>', NULL);
INSERT INTO `feed` VALUES(5, 'Aporte manual', '/admin/invests', '2011-09-08 19:11:10', 'admin', 'user', 'USER <a href="/user/profile/goteo" class="blue">Goteo</a>\r\n                                    ha aportado <span class="violet">400 &euro;</span>\r\n                            al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="blue">NO SLEEP ''TILL BROOKLYN</a>\r\n                            en nombre de <a href="/user/profile/carlaboserman" class="blue">Carla Boserman</a>', NULL);
INSERT INTO `feed` VALUES(6, 'Aporte manual', '/admin/invests', '2011-09-08 19:38:07', 'admin', 'system', 'SYSTEM <a href="/user/profile/goteo" class="blue">Goteo</a> ha aportado <span class="violet">120 &euro;</a> al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue">NO SLEEP ''TILL BROOKLYN</a> en nombre de <a href="/user/profile/acomunes" class="blue">Asociación comunes</a>', NULL);
INSERT INTO `feed` VALUES(7, 'Aporte manual', '/admin/invests', '2011-09-08 19:39:10', 'admin', 'project', 'PROJECT <a href="/user/profile/goteo" class="blue">Goteo</a> ha aportado <span class="violet">120 &euro;</span> al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue">NO SLEEP ''TILL BROOKLYN</a> en nombre de <a href="/user/profile/gnarros" class="blue">Germán Narros Lluch</a>', NULL);
INSERT INTO `feed` VALUES(8, 'Aporte manual', '/admin/invests', '2011-09-08 19:41:03', 'admin', 'node', 'NODE <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha aportado <span class="violet">300 &euro;</span> al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> en nombre de <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a>', NULL);
INSERT INTO `feed` VALUES(9, 'Aporte manual', '/admin/invests', '2011-09-12 18:06:02', 'admin', 'money', '<a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha aportado <span class="violet">50 &euro;</span> al proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> en nombre de <a href="/user/profile/asanz" class="blue" target="_blank">Ana Sánz Grados</a>', NULL);
INSERT INTO `feed` VALUES(10, 'Aporte PayPal', '/admin/invests', '2011-09-15 18:29:17', 'admin', 'money', '<a href="/user/profile/paypal" class="blue" target="_blank">Paypal Tester</a> ha aportado <span class="violet">100 &euro;</span> al proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> mediante PayPal', NULL);
INSERT INTO `feed` VALUES(11, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-09-15 18:29:48', 'admin', 'project', 'El proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">400 &euro; (100.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(12, 'Cargo ejecutado (cron)', '/admin/invests', '2011-09-15 18:29:56', 'admin', 'system', 'Se ha ejecutado el cargo a <a href="/user/profile/paypal" class="blue" target="_blank">Paypal Tester</a> por su aporte de <span class="violet">100 &euro;</span> mediante PayPal (id: <span class="grey">28</span>) al proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> del dia <span class="grey">15/09/2011</span>', NULL);
INSERT INTO `feed` VALUES(13, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-19 16:29:23', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">Revisión</span>', NULL);
INSERT INTO `feed` VALUES(14, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-19 16:30:36', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(15, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-19 16:35:38', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">Revisión</span>', NULL);
INSERT INTO `feed` VALUES(16, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-19 16:35:58', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a> al estado <span class="red">Revisión</span>', NULL);
INSERT INTO `feed` VALUES(17, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-19 16:36:04', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/pliegos" class="light-blue" target="_blank">PliegOS</a> al estado <span class="red">Revisión</span>', NULL);
INSERT INTO `feed` VALUES(18, 'valoración iniciada (admin)', '/admin/reviews', '2011-09-19 17:47:42', 'admin', 'admin', 'El revisor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Finalizado</span> la revisión de <a href="/project/mi-barrio" class="light-blue" target="_blank"></a>', NULL);
INSERT INTO `feed` VALUES(19, 'valoración iniciada (admin)', '/admin/reviews', '2011-09-19 17:49:02', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Iniciado</span> la valoración de <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(20, 'valoración finalizada (admin)', '/admin/reviews', '2011-09-19 17:50:43', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la valoración de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(21, 'valoración iniciada (admin)', '/admin/reviews', '2011-09-19 17:52:44', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Iniciado</span> la valoración de <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(22, 'valoración finalizada (admin)', '/admin/reviews', '2011-09-19 17:52:57', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la valoración de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(23, 'valoración finalizada (admin)', '/admin/reviews', '2011-09-19 17:54:48', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la valoración de <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(24, 'revisión cerrada (revisor)', '/review/reviews', '2011-09-19 18:02:38', 'admin', 'admin', 'El revisor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Finalizado</span> la revisión de <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a>', NULL);
INSERT INTO `feed` VALUES(25, 'asignar revision (admin)', '/admin/reviews', '2011-09-19 18:04:18', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la revisión de <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a>', NULL);
INSERT INTO `feed` VALUES(26, 'asignar revision (admin)', '/admin/reviews', '2011-09-19 18:04:20', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> la revisión de <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a>', NULL);
INSERT INTO `feed` VALUES(27, 'asignar revision (admin)', '/admin/reviews', '2011-09-19 18:04:32', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la revisión de <a href="/project/pliegos" class="light-blue" target="_blank">PliegOS</a>', NULL);
INSERT INTO `feed` VALUES(28, 'asignar revision (admin)', '/admin/reviews', '2011-09-19 18:04:36', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> la revisión de <a href="/project/pliegos" class="light-blue" target="_blank">PliegOS</a>', NULL);
INSERT INTO `feed` VALUES(29, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2011-09-20 19:19:57', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/3" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>"', NULL);
INSERT INTO `feed` VALUES(31, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-20 19:20:16', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(32, 'DINOU Publicació irregular', '/project/dinou-publicacio-irregular', '2011-09-20 19:20:16', 'public', 'projects', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tienes 40 dís para apoyar este proyecto', 119);
INSERT INTO `feed` VALUES(33, 'usuario abre hilo en mensajes de proyecto', '/admin/projects', '2011-09-20 19:21:29', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado un nuevo hilo en los <a href="/project/fixie-per-tothom/messages#message147" class="green" target="_blank">Mensajes</a> del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(34, 'Aporte PayPal', '/admin/invests', '2011-09-20 21:28:24', 'admin', 'money', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha aportado <span class="violet">100 &euro;</span> al proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> mediante PayPal', NULL);
INSERT INTO `feed` VALUES(35, 'Goteo', '/user/profile/goteo', '2011-09-20 21:28:24', 'public', 'community', 'Ha aportado <span class="violet">100 &euro;</span> al proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', 1);
INSERT INTO `feed` VALUES(36, 'usuario escribe comentario en blog/novedades', '/admin/projects', '2011-09-20 21:51:31', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment14" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(37, 'Goteo', '/user/profile/goteo', '2011-09-20 21:51:31', 'public', 'community', 'Ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment14" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', 1);
INSERT INTO `feed` VALUES(38, 'usuario escribe comentario en blog/novedades', '/admin/projects', '2011-09-20 21:52:28', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment15" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(39, 'Goteo', '/user/profile/goteo', '2011-09-20 21:52:28', 'public', 'community', 'Ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment15" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', 1);
INSERT INTO `feed` VALUES(40, 'usuario escribe comentario en blog/novedades', '/admin/projects', '2011-09-20 21:53:28', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment16" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(41, 'Goteo', '/user/profile/goteo', '2011-09-20 21:53:28', 'public', 'community', 'Ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment16" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', 119);
INSERT INTO `feed` VALUES(42, 'usuario escribe comentario en blog/novedades', '/admin/projects', '2011-09-20 21:53:53', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment17" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(43, 'Goteo', '/user/profile/goteo', '2011-09-20 21:53:53', 'public', 'community', 'Ha escrito un <span class="green">Comentario</span> en la entrada "<a href="/blog/3#comment17" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>" del blog de <a href="/blog//" class="grey" target="_blank">Goteo</a>', 1);
INSERT INTO `feed` VALUES(44, 'usuario abre hilo en mensajes de proyecto', '/admin/projects', '2011-09-20 22:00:26', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado un nuevo hilo en los <a href="/project/tweetometro/messages#message148" class="green" target="_blank">Mensajes</a> del proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a>', NULL);
INSERT INTO `feed` VALUES(45, 'modificacion de idea about (admin)', '/admin/info', '2011-09-21 10:00:54', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info3" class="red" target="_blank">Goteo se dirige a ti</a>"', NULL);
INSERT INTO `feed` VALUES(46, 'modificacion de idea about (admin)', '/admin/info', '2011-09-21 10:25:53', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info5" class="red" target="_blank">Una corriente internacional</a>"', NULL);
INSERT INTO `feed` VALUES(47, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-21 19:44:43', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(48, 'Goteo', '/project/goteo', '2011-09-21 19:44:43', 'public', 'projects', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tienes 40 dís para apoyar este proyecto', 138);
INSERT INTO `feed` VALUES(49, 'revisión cerrada (revisor)', '/review/reviews', '2011-09-22 18:22:44', 'admin', 'admin', 'El revisor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Finalizado</span> la revisión de <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a>', NULL);
INSERT INTO `feed` VALUES(50, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-09-22 19:01:07', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', NULL);
INSERT INTO `feed` VALUES(51, 'Goteo', '/user/profile/goteo', '2011-09-22 19:01:07', 'public', 'community', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', 1);
INSERT INTO `feed` VALUES(52, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-09-22 19:12:46', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', NULL);
INSERT INTO `feed` VALUES(53, 'Goteo', '/user/profile/goteo', '2011-09-22 19:12:46', 'public', 'community', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', 1);
INSERT INTO `feed` VALUES(54, 'modificacion de idea about (admin)', '/admin/info', '2011-09-22 19:13:56', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info3" class="red" target="_blank">Goteo se dirige a ti</a>"', NULL);
INSERT INTO `feed` VALUES(55, 'modificacion de idea about (admin)', '/admin/info', '2011-09-22 19:14:58', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info3" class="red" target="_blank">Goteo se dirige a ti</a>"', NULL);
INSERT INTO `feed` VALUES(56, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-23 16:20:54', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(57, 'Mi barrio', '/project/mi-barrio', '2011-09-23 16:20:54', 'public', 'projects', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tienes <span class="red">40 días</span> para apoyar este proyecto', NULL);
INSERT INTO `feed` VALUES(73, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2011-09-23 17:07:59', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/3" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>"', NULL);
INSERT INTO `feed` VALUES(74, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2011-09-23 17:09:12', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/3" class="grey" target="_blank">Goteo es una comunidad de comunidades</a>"', NULL);
INSERT INTO `feed` VALUES(75, 'Goteo es una comunidad de comunidades', '/blog/3', '2011-09-23 17:09:26', 'public', 'goteo', '<p>\r\n	Goteo es una comunidad de comunidades -cuyo nexo de uni&oacute;n es el inter&eacute;s por el fortalecimiento del procom&uacute;n-, que se articulan en torno a una plataforma digital en internet. Un sistema distribuido de comunidades locales</p>...', 140);
INSERT INTO `feed` VALUES(76, 'usuario pone una nueva colaboracion en su proyecto (dashboard)', '/admin/projects', '2011-09-24 18:34:20', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha publicado una nueva <span class="green">Colaboración</span> en el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/messages#message152" class="grey" target="_blank">Nueva colaboración</a>"', NULL);
INSERT INTO `feed` VALUES(77, 'Goteo', '/user/profile/goteo', '2011-09-24 18:37:00', 'public', 'community', 'Ha publicado una nueva <span class="green>Colaboración</span> en el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/messages#message152" class="grey" target="_blank">Nueva colaboración</a>"', 118);
INSERT INTO `feed` VALUES(78, 'usuario pone una nueva colaboracion en su proyecto (dashboard)', '/admin/projects', '2011-09-24 18:39:02', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha publicado una nueva <span class="green">Colaboración</span> en el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/messages#message153" class="grey" target="_blank">Nueva colaboración</a>"', NULL);
INSERT INTO `feed` VALUES(79, 'Goteo', '/user/profile/goteo', '2011-09-24 18:39:02', 'public', 'community', 'Ha publicado una nueva <span class="green>Colaboración</span> en el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/messages#message153" class="grey" target="_blank">Nueva colaboración</a>"', 118);
INSERT INTO `feed` VALUES(80, 'usuario abre hilo en mensajes de proyecto', '/admin/projects', '2011-09-25 08:39:45', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado un nuevo hilo en los <a href="/project/fixie-per-tothom/messages#message154" class="green" target="_blank">Mensajes</a> del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(81, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2011-09-28 08:12:44', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/25" class="grey" target="_blank">asdf asdf </a>"', NULL);
INSERT INTO `feed` VALUES(82, 'asdf asdf ', '/blog/25', '2011-09-28 08:12:44', 'public', 'goteo', '<p>\r\n	&nbsp;asdfa sdf</p>', NULL);
INSERT INTO `feed` VALUES(83, 'modificacion de página institucional (admin)', '/admin/pages', '2011-09-28 09:35:56', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Modificado</span> la página institucional <a href="/about/credits" class="red" target="_blank">Créditos</a>', NULL);
INSERT INTO `feed` VALUES(84, 'contenido traducido (traductor)', '/translate/post', '2011-09-28 11:08:08', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">25</span> de la tabla <span class="grey">post</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(85, 'usuario cambia las cuentas de su proyecto (dashboard)', '/admin/projects', '2011-09-28 15:37:14', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha modificado la cuenta bancaria/paypal del proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>"', NULL);
INSERT INTO `feed` VALUES(86, 'usuario cambia las cuentas de su proyecto (dashboard)', '/admin/projects', '2011-09-28 15:37:19', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha modificado la cuenta bancaria/paypal del proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>"', NULL);
INSERT INTO `feed` VALUES(87, 'usuario cambia las cuentas de su proyecto (dashboard)', '/admin/projects', '2011-09-28 15:37:48', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha modificado la cuenta bancaria/paypal del proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>"', NULL);
INSERT INTO `feed` VALUES(88, 'usuario cambia las cuentas de su proyecto (dashboard)', '/admin/projects', '2011-09-28 15:37:59', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha modificado la cuenta bancaria/paypal del proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>"', NULL);
INSERT INTO `feed` VALUES(89, 'proyecto sin cuenta paypal (cron)', '/admin/projects', '2011-09-28 16:13:58', 'admin', 'project', 'El proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> aun no ha puesto su <span class="red">cuenta PayPal</span> !!!', NULL);
INSERT INTO `feed` VALUES(90, 'proyecto sin cuenta paypal (cron)', '/admin/projects', '2011-09-28 16:13:58', 'admin', 'project', 'El proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> aun no ha puesto su <span class="red">cuenta PayPal</span> !!!', NULL);
INSERT INTO `feed` VALUES(91, 'proyecto sin cuenta paypal (cron)', '/admin/projects', '2011-09-28 16:13:58', 'admin', 'project', 'El proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a> aun no ha puesto su <span class="red">cuenta PayPal</span> !!!', NULL);
INSERT INTO `feed` VALUES(92, 'proyecto sin cuenta paypal (cron)', '/admin/projects', '2011-09-28 16:13:58', 'admin', 'project', 'El proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> aun no ha puesto su <span class="red">cuenta PayPal</span> !!!', NULL);
INSERT INTO `feed` VALUES(93, 'proyecto sin cuenta paypal (cron)', '/admin/projects', '2011-09-28 16:13:59', 'admin', 'project', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> aun no ha puesto su <span class="red">cuenta PayPal</span> !!!', NULL);
INSERT INTO `feed` VALUES(94, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-09-28 17:12:21', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(95, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-09-28 17:12:46', 'admin', 'project', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">7200 &euro; (101.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(96, 'Tweetometro', NULL, '2011-09-28 17:12:46', 'public', 'projects', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">7200 &euro; (101 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(97, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-09-28 17:14:56', 'admin', 'project', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">7200 &euro; (101.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(98, 'Tweetometro', NULL, '2011-09-28 17:14:56', 'public', 'projects', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">7200 &euro; (101 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(99, 'Cargo ejecutado (admin)', '/admin/invests', '2011-09-28 17:18:36', 'admin', 'system', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha fallado al ejecutar el cargo a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> por su aporte de <span class="violet">111 &euro;</span> mediante PayPal (id: <span class="grey">31</span>) al proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> del dia <span class="grey">20/09/2011</span>. <br />Se han dado los siguientes errores:  Internal Error [520002]', NULL);
INSERT INTO `feed` VALUES(100, 'Suplantación usuario (admin)', '/admin/users', '2011-09-28 19:18:38', 'admin', 'user', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Suplantado</span> al usuario <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a>', NULL);
INSERT INTO `feed` VALUES(101, 'modificacion de meritocracia (admin)', '/admin/worth', '2011-09-30 11:08:09', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Modificado</span> el nivel de meritocrácia <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(102, 'modificacion de meritocracia (admin)', '/admin/worth', '2011-09-30 11:08:20', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Modificado</span> el nivel de meritocrácia <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(103, 'Cargo cancelado (admin)', '/admin/invests', '2011-09-30 12:25:34', 'admin', 'system', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha cancelado aporte manual de <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> de <span class="violet">1000 &euro;</span> (id: <span class="grey">35</span>) al proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> del dia <span class="grey">30/09/2011</span>', NULL);
INSERT INTO `feed` VALUES(104, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-01 09:25:57', 'admin', 'user', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> ha <span class="red">Modificado las preferencias de notificación</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(105, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-01 09:27:17', 'admin', 'user', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> ha <span class="red">Modificado las preferencias de notificación</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(106, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-01 09:27:21', 'admin', 'user', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> ha <span class="red">Modificado las preferencias de notificación</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(107, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-01 09:28:02', 'admin', 'user', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> ha <span class="red">Modificado las preferencias de notificación</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(108, 'modificacion de idea about (admin)', '/admin/info', '2011-10-03 11:30:31', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info2" class="red" target="_blank">Financiación colectiva y colaboración distribuida</a>"', NULL);
INSERT INTO `feed` VALUES(109, 'modificacion de idea about (admin)', '/admin/info', '2011-10-03 11:30:36', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info2" class="red" target="_blank">Financiación colectiva y colaboración distribuida</a>"', NULL);
INSERT INTO `feed` VALUES(110, 'modificacion de idea about (admin)', '/admin/info', '2011-10-03 11:30:42', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info2" class="red" target="_blank">Financiación colectiva y colaboración distribuida</a>"', NULL);
INSERT INTO `feed` VALUES(111, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2011-10-03 11:38:55', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/25" class="grey" target="_blank">asdf asdf </a>"', NULL);
INSERT INTO `feed` VALUES(112, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2011-10-03 11:39:00', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/25" class="grey" target="_blank">asdf asdf </a>"', NULL);
INSERT INTO `feed` VALUES(113, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-03 12:16:55', 'admin', 'user', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Modificado las preferencias de notificación</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(114, 'Suplantación usuario (admin)', '/admin/users', '2011-10-03 16:21:56', 'admin', 'user', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Suplantado</span> al usuario <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a>', NULL);
INSERT INTO `feed` VALUES(115, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-10-03 16:22:23', 'admin', 'user', '<a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>, con el título "<a href="/project/fixie-per-tothom/updates/16" class="grey" target="_blank">Primera actualización desde el dashboard</a>"', NULL);
INSERT INTO `feed` VALUES(116, 'diegobus', '/user/profile/diegobus', '2011-10-03 16:22:23', 'public', 'projects', 'Ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>, con el título "<a href="/project/fixie-per-tothom/updates/16" class="grey" target="_blank">Primera actualización desde el dashboard</a>"', 104);
INSERT INTO `feed` VALUES(117, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-10-03 16:22:36', 'admin', 'user', '<a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>, con el título "<a href="/project/fixie-per-tothom/updates/16" class="grey" target="_blank">Primera actualización desde el dashboard</a>"', NULL);
INSERT INTO `feed` VALUES(118, 'diegobus', '/user/profile/diegobus', '2011-10-03 16:22:36', 'public', 'projects', 'Ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>, con el título "<a href="/project/fixie-per-tothom/updates/16" class="grey" target="_blank">Primera actualización desde el dashboard</a>"', 104);
INSERT INTO `feed` VALUES(119, 'nueva entrada blog Goteo (admin)', '/admin/blog', '2011-10-03 16:26:46', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> en el blog Goteo la entrada "<a href="/blog/25" class="grey" target="_blank">asdf asdf </a>"', NULL);
INSERT INTO `feed` VALUES(120, 'modificacion de idea about (admin)', '/admin/info', '2011-10-03 17:04:36', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info4" class="red" target="_blank">Fundación Goteo: apertura, neutralidad e independencia</a>"', NULL);
INSERT INTO `feed` VALUES(121, 'modificacion de idea about (admin)', '/admin/info', '2011-10-03 17:04:38', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Publicado</span> la Idea de fuerza "<a href="/about#info4" class="red" target="_blank">Fundación Goteo: apertura, neutralidad e independencia</a>"', NULL);
INSERT INTO `feed` VALUES(122, 'proyecto caducado sin exito (cron)', '/admin/projects', '2011-10-06 18:36:21', 'admin', 'project', 'El proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> ha <span class="red">caducado sin éxito</span> obteniendo <span class="violet">100 &euro; (25%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(123, 'Fixie per tothom', NULL, '2011-10-06 18:36:21', 'public', 'projects', 'El proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> ha <span class="red">caducado sin éxito</span> obteniendo <span class="violet">100 &euro; (25 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(124, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-10-06 18:37:48', 'admin', 'project', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(125, 'Tweetometro', NULL, '2011-10-06 18:37:48', 'public', 'projects', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(126, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-10-06 18:38:47', 'admin', 'project', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(127, 'Tweetometro', NULL, '2011-10-06 18:38:47', 'public', 'projects', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(128, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-10-06 18:41:34', 'admin', 'project', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(129, 'Tweetometro', NULL, '2011-10-06 18:41:34', 'public', 'projects', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(130, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-10-07 11:39:09', 'admin', 'project', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(131, 'Tweetometro', NULL, '2011-10-07 11:39:09', 'public', 'projects', 'El proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">8200 &euro; (115 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(132, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-09 22:10:22', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(133, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-09 22:10:26', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(134, 'Fixie per tothom', '/project/fixie-per-tothom', '2011-10-09 22:10:26', 'public', 'projects', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tienes 40 días para apoyar este proyecto', 14);
INSERT INTO `feed` VALUES(135, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-09 22:11:06', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(136, 'proyecto caducado sin exito (cron)', '/admin/projects', '2011-10-09 22:11:24', 'admin', 'project', 'El proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a> ha <span class="red">caducado sin éxito</span> obteniendo <span class="violet">0 &euro; (0%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(137, 'Goteo', NULL, '2011-10-09 22:11:24', 'public', 'projects', 'El proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a> ha <span class="red">caducado sin éxito</span> obteniendo <span class="violet">0 &euro; (0 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(138, 'Suplantación usuario (admin)', '/admin/users', '2011-10-10 19:35:53', 'admin', 'user', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Suplantado</span> al usuario <a href="/user/profile/demo" class="blue" target="_blank">Demo Goteo</a>', NULL);
INSERT INTO `feed` VALUES(139, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-10-10 20:07:44', 'admin', 'user', '<a href="/user/profile/demo" class="blue" target="_blank">Demo Goteo</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', NULL);
INSERT INTO `feed` VALUES(140, 'Demo Goteo', '/user/profile/demo', '2011-10-10 20:07:44', 'public', 'projects', 'Ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', 105);
INSERT INTO `feed` VALUES(141, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-10-10 20:07:52', 'admin', 'user', '<a href="/user/profile/demo" class="blue" target="_blank">Demo Goteo</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', NULL);
INSERT INTO `feed` VALUES(142, 'Demo Goteo', '/user/profile/demo', '2011-10-10 20:07:52', 'public', 'projects', 'Ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/goteo" class="light-blue" target="_blank">Goteo</a>, con el título "<a href="/project/goteo/updates/24" class="grey" target="_blank">asdf sadf </a>"', 105);
INSERT INTO `feed` VALUES(143, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-10 20:39:04', 'admin', 'user', '<a href="/user/profile/demo" class="blue" target="_blank">Demo Goteo</a> ha <span class="red">Modificado sus datos personales</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(144, 'usuario crea nuevo proyecto', 'admin/projects', '2011-10-11 16:08:08', 'admin', 'project', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado un nuevo proyecto, <a href="/project/a9277be1c7e92eaa36ecae753231bfb1" class="light-blue" target="_blank">Mi proyecto 3</a>', NULL);
INSERT INTO `feed` VALUES(145, 'proyecto próximo a finalizar ronda (cron)', '/admin/projects', '2011-10-14 12:15:09', 'admin', 'project', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(146, 'NO SLEEP ''TILL BROOKLYN', NULL, '2011-10-14 12:15:09', 'public', 'projects', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(147, 'proyecto próximo a finalizar ronda (cron)', '/admin/projects', '2011-10-14 12:17:10', 'admin', 'project', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(148, 'NO SLEEP ''TILL BROOKLYN', NULL, '2011-10-14 12:17:10', 'public', 'projects', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(149, 'proyecto próximo a finalizar ronda (cron)', '/admin/projects', '2011-10-14 12:30:09', 'admin', 'project', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(150, 'NO SLEEP ''TILL BROOKLYN', NULL, '2011-10-14 12:30:09', 'public', 'projects', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(151, 'proyecto próximo a finalizar ronda (cron)', '/admin/projects', '2011-10-14 12:31:58', 'admin', 'project', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(152, 'NO SLEEP ''TILL BROOKLYN', NULL, '2011-10-14 12:31:58', 'public', 'projects', 'Al proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> le faltan <span class="red">5 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(153, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:02:06', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(154, 'traducción finalizada (admin)', '/admin/translates', '2011-10-15 16:08:22', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(155, 'traducción finalizada (admin)', '/admin/translates', '2011-10-15 16:08:38', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(156, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:10:30', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(157, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:15:26', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(158, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:16:30', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(159, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:16:34', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(160, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:18:44', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(161, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:18:48', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(162, 'traducción finalizada (admin)', '/admin/translates', '2011-10-15 16:18:59', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(163, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:19:05', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a>', NULL);
INSERT INTO `feed` VALUES(164, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:19:13', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/canal-alfa" class="light-blue" target="_blank">Canal Alfa</a>', NULL);
INSERT INTO `feed` VALUES(165, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:19:21', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(166, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:19:33', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/canal-alfa" class="light-blue" target="_blank">Canal Alfa</a>', NULL);
INSERT INTO `feed` VALUES(167, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:19:44', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/2c667d6a62707f369bad654174116a1e" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a>', NULL);
INSERT INTO `feed` VALUES(168, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:20:24', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(169, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:20:45', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(170, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:30:57', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a>', NULL);
INSERT INTO `feed` VALUES(171, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-15 16:31:11', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a>', NULL);
INSERT INTO `feed` VALUES(172, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-15 16:35:25', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(173, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-17 10:12:23', 'admin', 'user', '<a href="/user/profile/paypal" class="blue" target="_blank">Paypal Tester</a> ha <span class="red">Modificado su información de perfil</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(174, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-17 10:12:26', 'admin', 'user', '<a href="/user/profile/paypal" class="blue" target="_blank">Paypal Tester</a> ha <span class="red">Modificado su información de perfil</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(175, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-17 10:12:29', 'admin', 'user', '<a href="/user/profile/paypal" class="blue" target="_blank">Paypal Tester</a> ha <span class="red">Modificado su información de perfil</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(176, 'usuario modifica sus preferencias (dashboard)', '/admin/users', '2011-10-17 10:12:32', 'admin', 'user', '<a href="/user/profile/paypal" class="blue" target="_blank">Paypal Tester</a> ha <span class="red">Modificado su información de perfil</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(177, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:55:14', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(178, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:55:18', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(179, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:55:23', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(180, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:55:24', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(181, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 09:55:29', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(182, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 09:55:36', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(183, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 09:55:41', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(184, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 09:56:53', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(185, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 09:58:00', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(186, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-18 09:58:07', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(187, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:59:11', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(188, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:59:14', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(189, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:59:18', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(190, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 09:59:25', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(191, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-18 09:59:32', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(192, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 09:59:36', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(193, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:59:43', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/itxaso" class="blue" target="_blank">Úbiqa, tecnología, ideas y comunicación</a> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(194, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:59:48', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/itxaso" class="blue" target="_blank">Úbiqa, tecnología, ideas y comunicación</a> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(195, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:59:52', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(196, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 09:59:56', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(197, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-18 10:00:33', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/itxaso" class="blue" target="_blank">Úbiqa, tecnología, ideas y comunicación</a> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(198, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-18 10:00:35', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(199, 'Desasignado traduccion (admin)', '/admin/reviews', '2011-10-18 10:00:36', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Desasignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a>', NULL);
INSERT INTO `feed` VALUES(200, 'traducción finalizada (admin)', '/admin/translates', '2011-10-18 10:00:38', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha dado por <span class="red">Finalizada</span> la traducción de <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(201, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-18 10:00:45', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(202, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-18 10:00:51', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> la traducción del proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(203, 'proyecto enviado a revision', '/admin/projects', '2011-10-18 13:49:44', 'admin', 'project', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> ha inscrito el proyecto <a href="/project/no-sleep-till-brooklyn" class="light-blue" target="_blank">NO SLEEP ''TILL BROOKLYN</a> para <span class="red">revisión</span>, el estado global de la información es del <span class="red">80%</span>', NULL);
INSERT INTO `feed` VALUES(204, 'Aporte manual', '/admin/invests', '2011-10-19 23:15:51', 'admin', 'money', '<a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha aportado <span class="violet">800 &euro;</span> al proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> en nombre de <a href="/user/profile/efoglia" class="blue" target="_blank">Efraín Foglia</a>', NULL);
INSERT INTO `feed` VALUES(205, 'nuevo proyecto destacado en portada (admin)', '/admin/promote', '2011-10-19 23:18:50', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <a href="/" class="red" target="_blank">Destacado en portada</a> el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a>', NULL);
INSERT INTO `feed` VALUES(206, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-19 23:29:17', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(207, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-19 23:30:20', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(208, 'proyecto supera primera ronda (cron)', '/admin/projects', '2011-10-19 23:30:23', 'admin', 'project', 'El proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">800 &euro; (111.00%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(209, 'DINOU Publicació irregular', NULL, '2011-10-19 23:30:23', 'public', 'projects', 'El proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> <span class="red">continua en campaña</span> en segunda ronda obteniendo <span class="violet">800 &euro; (111 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(210, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-19 23:30:48', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(211, 'proyecto supera segunda ronda (cron)', '/admin/projects', '2011-10-19 23:30:55', 'admin', 'project', 'El proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> ha sido <span class="red">financiado</span> obteniendo <span class="violet">800 &euro; (111%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(212, 'DINOU Publicació irregular', NULL, '2011-10-19 23:30:55', 'public', 'projects', 'Texto: feed-project_finish', NULL);
INSERT INTO `feed` VALUES(213, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-24 18:25:20', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/pliegos" class="light-blue" target="_blank">PliegOS</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(214, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-10-24 18:40:10', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/pliegos" class="light-blue" target="_blank">PliegOS</a> al estado <span class="red">Revisión</span>', NULL);
INSERT INTO `feed` VALUES(215, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-10-24 18:40:15', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/pliegos" class="light-blue" target="_blank">PliegOS</a>', NULL);
INSERT INTO `feed` VALUES(216, 'Asignado traduccion (admin)', '/admin/reviews', '2011-10-24 18:40:24', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> la traducción del proyecto <a href="/project/pliegos" class="light-blue" target="_blank">PliegOS</a>', NULL);
INSERT INTO `feed` VALUES(217, 'Suplantación usuario (admin)', '/admin/users', '2011-10-25 12:55:45', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Suplantado</span> al usuario <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a>', NULL);
INSERT INTO `feed` VALUES(218, 'usuario Modificado las preferencias de notificación (dashboard)', '/admin/users', '2011-10-25 14:55:03', 'admin', 'user', '<a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> ha <span class="red">Modificado las preferencias de notificación</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(219, 'usuario Modificado las preferencias de notificación (dashboard)', '/admin/users', '2011-10-25 14:56:43', 'admin', 'user', '<a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> ha <span class="red">Modificado las preferencias de notificación</span> desde su dashboard', NULL);
INSERT INTO `feed` VALUES(220, 'texto traducido (traductor)', '/translate/texts', '2011-11-01 14:22:18', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el texto <span class="grey">main-banner-header</span> al <span class="red">Català</span>', NULL);
INSERT INTO `feed` VALUES(221, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:43:52', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(222, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:44:06', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(223, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:44:13', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(224, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:44:22', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(225, 'DINOU Publicació irregular', '/project/dinou-publicacio-irregular', '2011-11-01 14:44:22', 'public', 'projects', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tienes 40 días para apoyar este proyecto', 83);
INSERT INTO `feed` VALUES(226, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:44:34', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(227, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:44:47', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(228, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:44:59', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(229, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 14:45:09', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(230, 'proyecto supera segunda ronda (cron)', '/admin/projects', '2011-11-01 14:45:50', 'admin', 'project', 'El proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> ha sido <span class="red">financiado</span> obteniendo <span class="violet">800 &euro; (111%) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(231, 'DINOU Publicació irregular', NULL, '2011-11-01 14:45:50', 'public', 'projects', 'El proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> ha <span class="red">completado la segunda ronda</span> obteniendo <span class="violet">800 &euro; (111 &#37;) de aportes sobre minimo</span>', NULL);
INSERT INTO `feed` VALUES(232, 'proyecto próximo a finalizar ronda (cron)', '/admin/projects', '2011-11-01 14:45:50', 'admin', 'project', 'Al proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a> le faltan <span class="red">1 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(233, 'Mi barrio', NULL, '2011-11-01 14:45:50', 'public', 'projects', 'Al proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a> le faltan <span class="red">1 días</span> para finalizar la 1ª ronda', NULL);
INSERT INTO `feed` VALUES(234, 'proyecto próximo a finalizar ronda (cron)', '/admin/projects', '2011-11-01 14:45:50', 'admin', 'project', 'Al proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> le faltan <span class="red">5 días</span> para finalizar la 2ª ronda', NULL);
INSERT INTO `feed` VALUES(235, 'Tweetometro', NULL, '2011-11-01 14:45:50', 'public', 'projects', 'Al proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> le faltan <span class="red">5 días</span> para finalizar la 2ª ronda', NULL);
INSERT INTO `feed` VALUES(236, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 19:13:02', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(237, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 19:14:16', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(238, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-01 19:14:30', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(239, 'contenido traducido (traductor)', '/translate/news', '2011-11-08 15:12:12', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">2</span> de la tabla <span class="grey">news</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(240, 'contenido traducido (traductor)', '/translate/category', '2011-11-08 15:13:31', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">2</span> de la tabla <span class="grey">category</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(241, 'contenido traducido (traductor)', '/translate/category', '2011-11-08 15:13:40', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">6</span> de la tabla <span class="grey">category</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(242, 'contenido traducido (traductor)', '/translate/category', '2011-11-08 15:13:46', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">7</span> de la tabla <span class="grey">category</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(243, 'contenido traducido (traductor)', '/translate/category', '2011-11-08 15:13:50', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">9</span> de la tabla <span class="grey">category</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(244, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-08 18:56:11', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(245, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-08 18:56:14', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(246, 'Fixie per tothom', '/project/fixie-per-tothom', '2011-11-08 18:56:14', 'public', 'projects', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tienes 40 días para apoyar este proyecto', 14);
INSERT INTO `feed` VALUES(247, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:19:29', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">code</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(248, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:19:36', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">design</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(249, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:19:42', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">file</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(250, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:19:48', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">manual</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(251, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:19:58', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">money</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(252, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:20:04', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">other</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(253, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:20:10', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">product</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(254, 'contenido traducido (traductor)', '/translate/icon', '2011-11-08 19:20:17', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">service</span> de la tabla <span class="grey">icon</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(255, 'usuario crea nuevo proyecto', 'admin/projects', '2011-11-08 19:46:14', 'admin', 'project', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado un nuevo proyecto, <a href="/project/43b8c28144ad2a9687374e95ae9ac4d6" class="light-blue" target="_blank">Mi proyecto 4</a>', NULL);
INSERT INTO `feed` VALUES(256, 'Suplantación usuario (admin)', '/admin/users', '2011-11-09 07:54:30', 'admin', 'user', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Suplantado</span> al usuario <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a>', NULL);
INSERT INTO `feed` VALUES(257, 'proyecto habilitado para traducirse (admin)', '/admin/translates', '2011-11-09 07:56:28', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Habilitado</span> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(258, 'Asignado traduccion (admin)', '/admin/reviews', '2011-11-09 07:56:49', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Asignado</span> a <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> la traducción del proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(259, 'contenido traducido (traductor)', '/translate/promote', '2011-11-09 08:00:07', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">13</span> de la tabla <span class="grey">promote</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(260, 'contenido traducido (traductor)', '/translate/promote', '2011-11-09 08:00:14', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">9</span> de la tabla <span class="grey">promote</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(261, 'contenido traducido (traductor)', '/translate/promote', '2011-11-09 08:00:20', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">10</span> de la tabla <span class="grey">promote</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(262, 'contenido traducido (traductor)', '/translate/license', '2011-11-09 08:04:32', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">gpl</span> de la tabla <span class="grey">license</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(263, 'contenido traducido (traductor)', '/translate/license', '2011-11-09 08:06:01', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">gpl</span> de la tabla <span class="grey">license</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(264, 'Operación sobre usuario (admin)', '/admin/users', '2011-11-09 08:07:55', 'admin', 'user', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Tocado la contraseña</span> del usuario <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a>', NULL);
INSERT INTO `feed` VALUES(265, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-11-09 08:37:54', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(266, 'contenido traducido (traductor)', '/translate/info', '2011-11-09 10:34:51', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">2</span> de la tabla <span class="grey">info</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(267, 'contenido traducido (traductor)', '/translate/info', '2011-11-09 10:34:57', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">3</span> de la tabla <span class="grey">info</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(268, 'contenido traducido (traductor)', '/translate/info', '2011-11-09 10:35:08', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">4</span> de la tabla <span class="grey">info</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(269, 'contenido traducido (traductor)', '/translate/info', '2011-11-09 10:35:15', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">5</span> de la tabla <span class="grey">info</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(270, 'contenido traducido (traductor)', '/translate/glossary', '2011-11-09 10:36:27', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">1</span> de la tabla <span class="grey">glossary</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(271, 'contenido traducido (traductor)', '/translate/glossary', '2011-11-09 10:36:34', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">2</span> de la tabla <span class="grey">glossary</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(272, 'contenido traducido (traductor)', '/translate/glossary', '2011-11-09 10:36:41', 'admin', 'admin', 'El traductor <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Traducido</span> el contenido del registro <span class="grey">3</span> de la tabla <span class="grey">glossary</span> al <span class="red">English</span>', NULL);
INSERT INTO `feed` VALUES(284, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-11-09 20:11:55', 'admin', 'user', '<a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>, con el título "<a href="/project/fixie-per-tothom/updates/17" class="grey" target="_blank">segunda publicación desde dashboard con video</a>"', NULL);
INSERT INTO `feed` VALUES(285, 'segunda publicación desde dashboard con video', '/project/fixie-per-tothom/updates/17', '2011-11-09 20:11:55', 'public', 'projects', '<a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', NULL);
INSERT INTO `feed` VALUES(286, 'usuario publica una novedad en su proyecto (dashboard)', '/admin/projects', '2011-11-09 20:13:23', 'admin', 'user', '<a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>, con el título "<a href="/project/fixie-per-tothom/updates/16" class="grey" target="_blank">Primera actualización desde el dashboard</a>"', NULL);
INSERT INTO `feed` VALUES(287, 'Primera actualización desde el dashboard', '/project/fixie-per-tothom/updates/16', '2011-11-09 20:13:23', 'public', 'projects', '<a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a> ha publicado un nuevo post en <span class="grey">Novedades</span> sobre el proyecto <a href="/project/fixie-per-tothom" class="light-blue" target="_blank">Fixie per tothom</a>', 68);
INSERT INTO `feed` VALUES(288, 'Suplantación usuario (admin)', '/admin/users', '2011-11-22 17:46:49', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Suplantado</span> al usuario <a href="/user/profile/diegobus" class="blue" target="_blank">diegobus</a>', NULL);
INSERT INTO `feed` VALUES(289, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-12-06 20:41:14', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado el proyecto <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(290, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-12-06 20:41:29', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado el proyecto <a href="/project/nodo-movil" class="light-blue" target="_blank">Nodo Móvil</a> al estado <span class="red">Revisión</span>', NULL);
INSERT INTO `feed` VALUES(291, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-12-06 20:41:51', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(292, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-12-06 20:42:18', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(293, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-12-06 20:42:38', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">tocado las fechas</span> del proyecto <span class="light-blue"></span>', NULL);
INSERT INTO `feed` VALUES(294, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-07 09:04:11', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Hecho convocador</span> al usuario <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a>', NULL);
INSERT INTO `feed` VALUES(295, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-07 09:04:23', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Hecho convocador</span> al usuario <a href="/user/profile/demo" class="blue" target="_blank">Demo Goteo</a>', NULL);
INSERT INTO `feed` VALUES(296, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-07 09:04:38', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Hecho convocador</span> al usuario <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(297, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-07 09:09:39', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Quitado de admin</span> al usuario <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(298, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-07 09:09:41', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Hecho admin</span> al usuario <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(299, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-07 09:09:45', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Quitado de admin</span> al usuario <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(300, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-07 09:09:49', 'admin', 'user', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha <span class="red">Hecho admin</span> al usuario <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(301, 'usuario crea nuevo proyecto', 'admin/projects', '2011-12-07 09:19:51', 'admin', 'project', '<a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha creado un nuevo proyecto, <a href="/project/7cf75c8ccd8d64c053887165c6154b1d" class="light-blue" target="_blank">Mi proyecto 4</a>', NULL);
INSERT INTO `feed` VALUES(302, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-07 11:08:12', 'admin', 'call', '<a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha creado una nueva convocatoria, <a href="convocatoria" class="" target="_blank">convocatoria</a>', NULL);
INSERT INTO `feed` VALUES(303, 'modificacion de página institucional (admin)', '/admin/pages', '2011-12-07 16:25:46', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Modificado</span> la página institucional <a href="/about/call" class="red" target="_blank">Condiciones convocatoria</a>', NULL);
INSERT INTO `feed` VALUES(304, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-07 16:26:25', 'admin', 'call', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado una nueva convocatoria, <a href="call2arms" class="" target="_blank">call2arms</a>', NULL);
INSERT INTO `feed` VALUES(305, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-07 20:04:58', 'admin', 'call', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado una nueva convocatoria, <a href="/call/pepetest" class="light-blue" target="_blank">Pepetest</a>', NULL);
INSERT INTO `feed` VALUES(306, 'proyecto enviado a revision', '/admin/projects', '2011-12-08 20:56:34', 'admin', 'project', '<span class="blue"></span> ha inscrito el proyecto <span class="light-blue"></span> para <span class="red">revisión</span>, el estado global de la información es del <span class="red">%</span>', NULL);
INSERT INTO `feed` VALUES(307, 'convocatoria enviada a revision', '/admin/calls', '2011-12-08 21:05:08', 'admin', 'project', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha completado la edición de la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a>, se dispone a <span class="red">asignar proyectos</span>', NULL);
INSERT INTO `feed` VALUES(308, 'convocatoria enviada a revision', '/admin/calls', '2011-12-08 21:10:14', 'admin', 'project', '<a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha completado la edición de la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a>, se dispone a <span class="red">asignar proyectos</span>', NULL);
INSERT INTO `feed` VALUES(309, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-08 21:42:48', 'admin', 'call', '<a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha creado una nueva convocatoria, <a href="/call/demo" class="light-blue" target="_blank">Demo</a>', NULL);
INSERT INTO `feed` VALUES(310, 'convocatoria enviada a revision', '/admin/calls', '2011-12-08 21:47:45', 'admin', 'project', '<a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha completado la edición de la convocatoria <a href="/call/demo" class="light-blue" target="_blank">Demo</a>, se dispone a <span class="red">asignar proyectos</span>', NULL);
INSERT INTO `feed` VALUES(311, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-09 10:07:37', 'admin', 'call', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado una nueva convocatoria, <a href="/call/aa" class="light-blue" target="_blank">aa</a>', NULL);
INSERT INTO `feed` VALUES(312, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-09 10:11:00', 'admin', 'call', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado una nueva convocatoria, <a href="/call/demo1" class="light-blue" target="_blank">demo</a>', NULL);
INSERT INTO `feed` VALUES(313, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-09 10:11:11', 'admin', 'call', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado una nueva convocatoria, <a href="/call/demo12" class="light-blue" target="_blank">demo</a>', NULL);
INSERT INTO `feed` VALUES(314, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:17:15', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminar la convocatoria <a href="/call/aa" class="light-blue" target="_blank">aa</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(315, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:17:39', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/aa" class="light-blue" target="_blank">aa</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(316, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:17:43', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminar la convocatoria <a href="/call/aa" class="light-blue" target="_blank">aa</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(317, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:18:22', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/aa" class="light-blue" target="_blank">aa</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(318, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:18:26', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminado la convocatoria <a href="/call/aa" class="light-blue" target="_blank">aa</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(319, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:18:39', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminado la convocatoria <a href="/call/demo1" class="light-blue" target="_blank">demo</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(320, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:18:43', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminado la convocatoria <a href="/call/demo12" class="light-blue" target="_blank">demo</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(321, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:18:49', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/pepetest" class="light-blue" target="_blank">Pepetest</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(322, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-09 10:18:53', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminado la convocatoria <a href="/call/pepetest" class="light-blue" target="_blank">Pepetest</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(323, 'Aporte reubicado', '/admin/invests', '2011-12-10 12:13:58', 'admin', 'money', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha aportado <span class="violet"> &euro;</span> al proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> en nombre de <a href="/user/profile/paypal" class="blue" target="_blank">Paypal Tester</a>', NULL);
INSERT INTO `feed` VALUES(324, 'Aporte reubicado', '/admin/invests', '2011-12-10 12:20:13', 'admin', 'money', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha aportado <span class="violet"> &euro;</span> al proyecto <a href="/project/tweetometro" class="light-blue" target="_blank">Tweetometro</a> en nombre de <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a>', NULL);
INSERT INTO `feed` VALUES(325, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-13 22:53:37', 'admin', 'call', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier Olivier Olivier Olivier Olivier Olivier Olivier Olivier Olivier Olivier Olivier Olivier</a> ha creado una nueva convocatoria, <a href="/call/2mq" class="light-blue" target="_blank">2mq</a>', NULL);
INSERT INTO `feed` VALUES(326, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 18:56:15', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(327, 'call2arms', '/call/call2arms', '2011-12-14 18:56:15', 'public', 'goteo', 'feed-new_call-published', 173);
INSERT INTO `feed` VALUES(328, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 18:58:02', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/2mq" class="light-blue" target="_blank">2mq</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(329, '2mq', '/call/2mq', '2011-12-14 18:58:02', 'public', 'goteo', 'feed-new_call-opened', NULL);
INSERT INTO `feed` VALUES(330, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 18:58:06', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/convocatoria" class="light-blue" target="_blank">convocatoria</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(331, 'convocatoria', '/call/convocatoria', '2011-12-14 18:58:06', 'public', 'goteo', 'feed-new_call-published', NULL);
INSERT INTO `feed` VALUES(332, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 19:01:55', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(333, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 19:02:01', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(334, 'call2arms', '/call/call2arms', '2011-12-14 19:02:01', 'public', 'goteo', 'feed-new_call-opened', 173);
INSERT INTO `feed` VALUES(335, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 19:04:09', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(336, 'call2arms', '/call/call2arms', '2011-12-14 19:04:09', 'public', 'goteo', 'feed-new_call-published', 173);
INSERT INTO `feed` VALUES(337, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 19:06:51', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(338, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 19:06:55', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(339, 'call2arms', '/call/call2arms', '2011-12-14 19:06:55', 'public', 'goteo', 'feed-new_call-opened', 173);
INSERT INTO `feed` VALUES(340, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 19:07:49', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/demo" class="light-blue" target="_blank">Demo</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(341, 'Demo', '/call/demo', '2011-12-14 19:10:37', 'public', 'goteo', 'feed-new_call-opened', 175);
INSERT INTO `feed` VALUES(342, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-14 19:11:59', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/demo" class="light-blue" target="_blank">Demo</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(343, 'Demo', '/call/demo', '2011-12-14 19:11:59', 'public', 'goteo', 'feed-new_call-published', 175);
INSERT INTO `feed` VALUES(344, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-14 22:03:29', 'admin', 'call', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado una nueva convocatoria, <a href="/call/test" class="light-blue" target="_blank">test</a>', NULL);
INSERT INTO `feed` VALUES(345, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-15 10:03:24', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/convocatoria" class="light-blue" target="_blank">convocatoria</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(346, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-15 10:03:28', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(347, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-15 10:03:30', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/2mq" class="light-blue" target="_blank">2mq</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(348, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-15 10:03:35', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/demo" class="light-blue" target="_blank">Demo</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(349, 'convocatoria enviada a revision', '/admin/calls', '2011-12-17 13:00:41', 'admin', 'project', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha completado la edición de la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a>, se dispone a <span class="red">asignar proyectos</span>', NULL);
INSERT INTO `feed` VALUES(350, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-12-17 13:02:12', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado el proyecto <a href="/project/dinou-publicacio-irregular" class="light-blue" target="_blank">DINOU Publicació irregular</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(351, 'DINOU Publicació irregular', '/project/dinou-publicacio-irregular', '2011-12-17 13:02:12', 'public', 'projects', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tenemos 40 días para apoyar este proyecto', 83);
INSERT INTO `feed` VALUES(352, 'Operación sobre usuario (admin)', '/admin/users', '2011-12-17 14:05:27', 'admin', 'user', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha <span class="red">Hecho convocador</span> al usuario <a href="/user/profile/iniciativa-joven" class="blue" target="_blank">Iniciativa Joven</a>', NULL);
INSERT INTO `feed` VALUES(353, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-17 14:05:58', 'admin', 'call', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado una nueva convocatoria, <a href="/call/gij" class="light-blue" target="_blank">gij</a>', NULL);
INSERT INTO `feed` VALUES(354, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-17 14:08:04', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminado la convocatoria <a href="/call/convocatoria" class="light-blue" target="_blank">convocatoria</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(355, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-17 14:08:12', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha eliminado la convocatoria <a href="/call/2mq" class="light-blue" target="_blank">2mq</a> <span class="red">Completamente</span>', NULL);
INSERT INTO `feed` VALUES(356, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-17 18:03:08', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/gij" class="light-blue" target="_blank">INNOVACIÓN SOCIAL EXTREMADURA</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(357, 'INNOVACIÓN SOCIAL EXTREMADURA', '/call/gij', '2011-12-17 18:03:08', 'public', 'goteo', '<span class="red">Nueva convocatoria en Goteo</span>, ya pudes aplicar tu proyecto', 155);
INSERT INTO `feed` VALUES(358, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-19 14:02:19', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(359, 'call2arms', '/call/call2arms', '2011-12-19 14:02:19', 'public', 'goteo', '<span class="red">Nueva convocatoria en Goteo</span>, ya pudes aplicar tu proyecto', 155);
INSERT INTO `feed` VALUES(360, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-19 14:15:10', 'admin', 'admin', 'El admin <a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(361, 'usuario crea nuevo proyecto', 'admin/projects', '2011-12-20 18:14:32', 'admin', 'project', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado un nuevo proyecto, <a href="/project/75a3d571ea3433f059c9196be05c3c8c" class="light-blue" target="_blank">Mi proyecto 5</a>', NULL);
INSERT INTO `feed` VALUES(362, 'Cambio estado/fechas de un proyecto desde el admin', '/admin/projects', '2011-12-21 19:01:32', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado el proyecto <a href="/project/mi-barrio" class="light-blue" target="_blank">Mi barrio</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(363, 'usuario crea nuevo proyecto', 'admin/projects', '2011-12-22 15:20:59', 'admin', 'project', '<a href="/user/profile/goteo" class="blue" target="_blank">Goteo</a> ha creado un nuevo proyecto, <a href="/project/5aca87da1aff996c6fb7abaddc947ae0" class="light-blue" target="_blank">Mi proyecto 6</a>', NULL);
INSERT INTO `feed` VALUES(364, 'nuevo proyecto asignado a convocatoria gij', 'admin/calls/gij/projects', '2011-12-22 15:20:59', 'admin', 'project', 'Nuevo proyecto <a href="/project/5aca87da1aff996c6fb7abaddc947ae0" class="light-blue" target="_blank">Mi proyecto 6</a> asignado automaticamente a la convocatoria <a href="/call/gij" class="light-blue" target="_blank">gij</a>', NULL);
INSERT INTO `feed` VALUES(365, 'usuario crea nuevo proyecto', 'admin/projects', '2011-12-22 15:25:28', 'admin', 'project', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> ha creado un nuevo proyecto, <a href="/project/9660151effaa85fb8c806cac7672e00d" class="light-blue" target="_blank">Mi proyecto 4</a>', NULL);
INSERT INTO `feed` VALUES(366, 'nuevo proyecto asignado a convocatoria gij', 'admin/calls/gij/projects', '2011-12-22 15:25:28', 'admin', 'project', 'Nuevo proyecto <a href="/project/9660151effaa85fb8c806cac7672e00d" class="light-blue" target="_blank">Mi proyecto 4</a> asignado automaticamente a la convocatoria <a href="/call/gij" class="light-blue" target="_blank">gij</a>', NULL);
INSERT INTO `feed` VALUES(367, 'usuario crea nuevo proyecto', 'admin/projects', '2011-12-22 15:35:30', 'admin', 'project', '<a href="/user/profile/esenabre" class="blue" target="_blank">esenabre</a> ha creado un nuevo proyecto, <a href="/project/cf5c3dbb1b78edda7ce637d071304220" class="light-blue" target="_blank">Mi proyecto 2</a>', NULL);
INSERT INTO `feed` VALUES(368, 'nuevo proyecto asignado a convocatoria gij', 'admin/calls/gij/projects', '2011-12-22 15:35:30', 'admin', 'project', 'Nuevo proyecto <a href="/project/cf5c3dbb1b78edda7ce637d071304220" class="light-blue" target="_blank">Mi proyecto 2</a> asignado automaticamente a la convocatoria <a href="/call/gij" class="light-blue" target="_blank">gij</a>', NULL);
INSERT INTO `feed` VALUES(369, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-22 18:52:29', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(370, 'call2arms', '/call/call2arms', '2011-12-22 18:52:29', 'public', 'goteo', '<span class="red">Nueva convocatoria en Goteo</span>, ya pudes aplicar tu proyecto', 155);
INSERT INTO `feed` VALUES(371, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-22 19:21:21', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Edición</span>', NULL);
INSERT INTO `feed` VALUES(372, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-22 19:21:27', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">Recepción de proyectos</span>', NULL);
INSERT INTO `feed` VALUES(373, 'call2arms', '/call/call2arms', '2011-12-22 19:21:27', 'public', 'goteo', '<span class="red">Nueva convocatoria en Goteo</span>, ya pudes aplicar tu proyecto', 155);
INSERT INTO `feed` VALUES(374, 'Gestion de una convocatoria desde el admin', '/admin/calls', '2011-12-23 11:11:24', 'admin', 'admin', 'El admin <a href="/user/profile/root" class="blue" target="_blank">Super administrador</a> ha pasado la convocatoria <a href="/call/call2arms" class="light-blue" target="_blank">call2arms</a> al estado <span class="red">en Campaña</span>', NULL);
INSERT INTO `feed` VALUES(375, 'call2arms', '/call/call2arms', '2011-12-23 11:11:24', 'public', 'goteo', '<span class="light-blue">Capital riego</span> disponible', 155);
INSERT INTO `feed` VALUES(376, 'usuario crea nueva convocatoria', 'admin/calls', '2011-12-29 10:15:28', 'admin', 'call', '<a href="/user/profile/olivier" class="blue" target="_blank">Olivier</a> ha creado una nueva convocatoria, <a href="/call/test1" class="light-blue" target="_blank">test1</a>', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glossary`
--

DROP TABLE IF EXISTS `glossary`;
CREATE TABLE `glossary` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext,
  `text` longtext COMMENT 'texto de la entrada',
  `media` tinytext,
  `legend` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Entradas para el glosario' AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `glossary`
--

INSERT INTO `glossary` VALUES(1, 'Capital riego', '<p>\r\n	El capital riego (como riesgo pero sin ese :) es la manera de llamar a nuestro particular m&eacute;todo de financiaci&oacute;n por goteo. Un proceso de captaci&oacute;n de recursos colectivos de forma distribuida, &ldquo;gota a gota&rdquo;, para la optimizaci&oacute;n de la inversi&oacute;n y su retorno en beneficio del mayor n&uacute;mero posible de personas.</p>\r\n', '', '');
INSERT INTO `glossary` VALUES(2, 'Caudal financiero ', 'En física e ingeniería, caudal es la cantidad-volumen de fluido que circula por unidad de tiempo en un determinado sistema o elemento (se mide en metros cúbicos por segundo, m³/s). En Goteo utilizamos el concepto “caudal financiero” para diferenciar los distintos niveles de inversión de los cofinanciadores a través de la plataforma (se mide otorgando entre 1 y 5 gotas, en base a los siguientes tramos de inversión acumulada: >5€, >250€, >1.000€, >3.000€ y >10.000€).', '', NULL);
INSERT INTO `glossary` VALUES(3, 'Código abierto (open source)', 'Con código abierto (open source), nos referimos al libre acceso, reproducción y distribución del código fuente  -la información y/o conocimiento digitalizable, ya sea en forma de un patrón, un diseño, una metodología, una programación, un manual didáctico, etc.-, de cualquier producto, servicio o actividad.\r\n\r\nEl código abierto (frente a modelos cerrados) facilita la replica, la reutilización, la recontextualización, la remezcla, en distintas comunidades conectadas en red; permite la acción viral y la producción de derivados del original para su adaptación y mejora exponencial (gracias a la colaboración distribuida); ejemplifica y hace operativo el deseo de accesibilidad y colaboración en torno a un proyecto común. \r\n', '', NULL);
INSERT INTO `glossary` VALUES(4, 'Conocimiento libre', 'El conocimiento es el atributo humano que nos ha hecho evolucionar como especie. No es un bien finito, sino que al contrario, se desarrolla cuanto más se usa; para lo que se requieren determinadas condiciones sociales que fomenten su generación, aprendizaje, interiorización, sistematización, transmisión y aplicación. \r\n\r\nEl conocimiento libre considera el conocimiento como un bien público, que beneficia el desarrollo igualitario de las personas, en tanto creadoras y portadoras del mismo. Por eso, frente a normativas restrictivas como la propiedad intelectual o las patentes, el conocimiento libre se rige por las siguientes libertades (debe disfrutar de al menos las libertades 0 y 2)\r\nLibertad 0: permite el acceso para ser adquirido y usado sin solicitar ningún permiso.\r\nLibertad 1: permite ser modificado de acuerdo a necesidades específicas.\r\nLibertad 2: permite ser compartido con los demás.\r\nLibertad 3: permite que las modificaciones y mejoras derivadas, se distribuyan, contribuyendo al beneficio colectivo.\r\n', '', NULL);
INSERT INTO `glossary` VALUES(5, 'Financiación colectiva (crowdfunding)', 'La <a href="http://www.youcoop.org/es/goteo/p/3/del-garaje-al-crowdfunding-innovacion-y-financiacion-en-red/" target="_blank">financiación colectiva</a> (del inglés crowdfunding), es una forma de cooperación entre muchas personas, por lo general a través de Internet, para reunir una suma de dinero para un fin común o apoyar los esfuerzos iniciados por otra persona, grupo u organización concreta. La financiación colectiva se enfoca a una gran variedad de propósitos: desde la paliación de los efectos de un desastre natural o el desarrollo de proyectos culturales, hasta la financiación de campañas políticas.', '', NULL);
INSERT INTO `glossary` VALUES(6, 'Licencias libres y/o abiertas ', 'En base a las cuatro libertades del conocimiento libre, existen numerosas licencias legales libres y/o abiertas con diferentes especificaciones y/o restricciones, permitiendo preservar la autoría a la vez que posibilitar explícitamente la copia, comunicación pública, distribución, modificación y/o explotación de parte o de la totalidad de cada creación. \r\n\r\nDesde Goteo se propone y se asesora sobre una serie de licencias como: Creative Commons (CC), General Public Licence (GPL), GNU Affero General Public Licence (AGPLv3), Open Database (ODBC), Licencia Red Abierta Libre Neutral (XOLN) o Open Hardware Licence (OHL). Puedes consultar el contenido de éstas y otras licencias en <a href="http://es.creativecommons.org/licencia/" target="_blank">Creative Commons</a>, <a href="http://www.gnu.org/licenses/licenses.es.html" target="_blank">Free Software Foundation</a> o <a href="http://es.safecreative.net/faqs/" target="_blank">Safe Creative</a>.', '', NULL);
INSERT INTO `glossary` VALUES(7, 'Nodo', '<p>\r\n	Un nodo es un lugar en el que confluyen parte de las conexiones de una red compuesta a su vez por nodos, que se interrelacionan de un modo centralizado, descentralizado o distribuido.</p>\r\n', '', '');
INSERT INTO `glossary` VALUES(8, 'Procomún (commons)', '<p>\r\n	El <a href="http://es.wikipedia.org/wiki/Bien_comunal" target="_blank">procom&uacute;n</a> (traducci&oacute;n al castellano del commons anglosaj&oacute;n), es la manera de producir y gestionar en comunidad, de manera p&uacute;blica y colectiva, bienes y recursos comunes, tangibles e intangibles, que nos pertenecen y pueden ser libremente utilizados por tod*s y entre tod*s deben ser ampliados y preservados. Un modelo de gobernanza co-responsable, basado en la comunidad, la confianza, la transparencia, el trabajo solidario, el intercambio entre iguales o el acceso universal. Los bienes y recursos comunes que conforman el procom&uacute;n, son aquellos que heredamos, creamos y re-creamos conjuntamente y que esperamos legar a las generaciones futuras. Una gran diversidad de bienes naturales, culturales o sociales, como por ejemplo: las semillas, Internet, el folclore, el agua potable, el genoma, el espacio p&uacute;blico, el conocimiento, etc. Bienes y recursos que muchas veces s&oacute;lo percibimos cuando est&aacute;n amenazados o en peligro de desaparici&oacute;n o privatizaci&oacute;n. Por ese motivo creemos, junto a mucha otra gente, que es importante fomentarlos y reforzarlos activamente, (re)descubriendo el procom&uacute;n en las posibilidades de Internet y lo digital pero tambi&eacute;n en el uso de nuevos lugares donde queremos vivir y trabajar; o en el vasto mundo de la educaci&oacute;n, donde tanto urge innovar; o en nuevos modos de producci&oacute;n y distribuci&oacute;n de alimentos ecol&oacute;gicos y la preservaci&oacute;n del medio ambiente en general; por citar s&oacute;lo algunas &aacute;reas de las muchas que se deben explorar. El concepto de procom&uacute;n, es un antiguo concepto jur&iacute;dico-filos&oacute;fico, que en los &uacute;ltimos a&ntilde;os ha vuelto a tomar impulso, vigencia y repercusi&oacute;n p&uacute;blica, gracias al desarrollo del conocimiento libre y el movimiento open source desde el software libre, a la proliferaci&oacute;n de licencias como Creative Commons, o al premio Nobel de Econom&iacute;a concedido a Elinor Ostrom en 2009, por sus aportaciones al gobierno de los bienes comunes.</p>\r\n', 'http://www.youtube.com/watch?v=YRh6SUnOW0A', 'iguales o el acceso universal. Los bienes y recursos comunes que conforman el procomún, son aquellos que heredamos, creamos y re-creamos conjuntamente y que esperamos legar a las generaciones futuras. Una gran diversidad de bienes naturales, culturales o');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glossary_image`
--

DROP TABLE IF EXISTS `glossary_image`;
CREATE TABLE `glossary_image` (
  `glossary` bigint(20) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`glossary`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `glossary_image`
--

INSERT INTO `glossary_image` VALUES(1, 143);
INSERT INTO `glossary_image` VALUES(1, 144);
INSERT INTO `glossary_image` VALUES(7, 149);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glossary_lang`
--

DROP TABLE IF EXISTS `glossary_lang`;
CREATE TABLE `glossary_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` longtext,
  `legend` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `glossary_lang`
--

INSERT INTO `glossary_lang` VALUES(1, 'en', 'ENG Capital riego', '<p>\r\n	ENG El capital riego (como riesgo pero sin ese :) es la manera de llamar a nuestro particular método de financiación por goteo. Un proceso de captación de recursos colectivos de forma distribuida, “gota a gota”, para la optimización de la inversión y su retorno en beneficio del mayor número posible de personas.</p>\r\n', '');
INSERT INTO `glossary_lang` VALUES(2, 'en', 'ENG Caudal financiero ', 'ENG En física e ingeniería, caudal es la cantidad-volumen de fluido que circula por unidad de tiempo en un determinado sistema o elemento (se mide en metros cúbicos por segundo, m³/s). En Goteo utilizamos el concepto “caudal financiero” para diferenciar los distintos niveles de inversión de los cofinanciadores a través de la plataforma (se mide otorgando entre 1 y 5 gotas, en base a los siguientes tramos de inversión acumulada: >5€, >250€, >1.000€, >3.000€ y >10.000€).', '');
INSERT INTO `glossary_lang` VALUES(3, 'en', 'ENG Código abierto (open source)', 'ENG Con código abierto (open source), nos referimos al libre acceso, reproducción y distribución del código fuente  -la información y/o conocimiento digitalizable, ya sea en forma de un patrón, un diseño, una metodología, una programación, un manual didáctico, etc.-, de cualquier producto, servicio o actividad.\r\n\r\nEl código abierto (frente a modelos cerrados) facilita la replica, la reutilización, la recontextualización, la remezcla, en distintas comunidades conectadas en red; permite la acción viral y la producción de derivados del original para su adaptación y mejora exponencial (gracias a la colaboración distribuida); ejemplifica y hace operativo el deseo de accesibilidad y colaboración en torno a un proyecto común. \r\n', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icon`
--

DROP TABLE IF EXISTS `icon`;
CREATE TABLE `icon` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` tinytext,
  `group` varchar(50) DEFAULT NULL COMMENT 'exclusivo para grupo',
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Iconos para retorno/recompensa';

--
-- Volcar la base de datos para la tabla `icon`
--

INSERT INTO `icon` VALUES('code', 'Código fuente', 'Por código fuente entendemos programas y software en general.', 'social', 0);
INSERT INTO `icon` VALUES('design', 'Diseño', 'Los diseños pueden ser de planos o patrones, esquemas, esbozos, diagramas de flujo, etc.', 'social', 0);
INSERT INTO `icon` VALUES('file', 'Archivos digitales', 'Los archivos digitales pueden ser de música, vídeo, documentos de texto, etc.', '', 0);
INSERT INTO `icon` VALUES('manual', 'Manuales', 'Documentos prácticos detallando pasos, materiales formativos, bussiness plans, “how tos”, recetas, etc.', 'social', 0);
INSERT INTO `icon` VALUES('money', 'Dinero', 'Retornos económicos proporcionales a la inversión realizada, que se deben detallar en cantidad pero también forma de pago.', 'individual', 50);
INSERT INTO `icon` VALUES('other', 'Otro', 'Sorpréndenos con esta nueva tipología, realmente nos interesa :) ', '', 99);
INSERT INTO `icon` VALUES('product', 'Producto', 'Los productos pueden ser los que se han producido, en edición limitada, o fragmentos o obras derivadas del original.', 'individual', 0);
INSERT INTO `icon` VALUES('service', 'Servicios', 'Acciones y/o sesiones durante tiempo determinado para satisfacer una necesidad individual o de grupo: una formación, una ayuda técnica, un asesoramiento, etc.', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icon_lang`
--

DROP TABLE IF EXISTS `icon_lang`;
CREATE TABLE `icon_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `icon_lang`
--

INSERT INTO `icon_lang` VALUES('code', 'ca', 'Codifont', 'Por código fuente entendemos programas y software en general.');
INSERT INTO `icon_lang` VALUES('code', 'en', 'ENG Código fuente', 'ENG Por código fuente entendemos programas y software en general.');
INSERT INTO `icon_lang` VALUES('design', 'en', 'ENG Diseño', 'ENG Los diseños pueden ser de planos o patrones, esquemas, esbozos, diagramas de flujo, etc.');
INSERT INTO `icon_lang` VALUES('file', 'en', 'ENG Archivos digitales', 'ENG Los archivos digitales pueden ser de música, vídeo, documentos de texto, etc.');
INSERT INTO `icon_lang` VALUES('manual', 'en', 'ENG Manuales', 'ENG Documentos prácticos detallando pasos, materiales formativos, bussiness plans, “how tos”, recetas, etc.');
INSERT INTO `icon_lang` VALUES('money', 'en', 'ENG Dinero', 'ENG Retornos económicos proporcionales a la inversión realizada, que se deben detallar en cantidad pero también forma de pago.');
INSERT INTO `icon_lang` VALUES('other', 'en', 'ENG Otro', 'ENG Sorpréndenos con esta nueva tipología, realmente nos interesa :) ');
INSERT INTO `icon_lang` VALUES('product', 'en', 'ENG Producto', 'ENG Los productos pueden ser los que se han producido, en edición limitada, o fragmentos o obras derivadas del original.');
INSERT INTO `icon_lang` VALUES('service', 'en', 'ENG Servicios', 'ENG Acciones y/o sesiones durante tiempo determinado para satisfacer una necesidad individual o de grupo: una formación, una ayuda técnica, un asesoramiento, etc.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icon_license`
--

DROP TABLE IF EXISTS `icon_license`;
CREATE TABLE `icon_license` (
  `icon` varchar(50) NOT NULL,
  `license` varchar(50) NOT NULL,
  UNIQUE KEY `icon` (`icon`,`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Licencias para cada icono, solo social';

--
-- Volcar la base de datos para la tabla `icon_license`
--

INSERT INTO `icon_license` VALUES('code', 'agpl');
INSERT INTO `icon_license` VALUES('code', 'apache');
INSERT INTO `icon_license` VALUES('code', 'balloon');
INSERT INTO `icon_license` VALUES('code', 'bsd');
INSERT INTO `icon_license` VALUES('code', 'gpl');
INSERT INTO `icon_license` VALUES('code', 'gpl2');
INSERT INTO `icon_license` VALUES('code', 'lgpl');
INSERT INTO `icon_license` VALUES('code', 'mit');
INSERT INTO `icon_license` VALUES('code', 'mpl');
INSERT INTO `icon_license` VALUES('code', 'odbl');
INSERT INTO `icon_license` VALUES('code', 'odcby');
INSERT INTO `icon_license` VALUES('code', 'oshw');
INSERT INTO `icon_license` VALUES('code', 'pd');
INSERT INTO `icon_license` VALUES('code', 'php');
INSERT INTO `icon_license` VALUES('code', 'tapr');
INSERT INTO `icon_license` VALUES('code', 'xoln');
INSERT INTO `icon_license` VALUES('design', 'balloon');
INSERT INTO `icon_license` VALUES('design', 'cc0');
INSERT INTO `icon_license` VALUES('design', 'ccby');
INSERT INTO `icon_license` VALUES('design', 'ccbync');
INSERT INTO `icon_license` VALUES('design', 'ccbyncnd');
INSERT INTO `icon_license` VALUES('design', 'ccbyncsa');
INSERT INTO `icon_license` VALUES('design', 'ccbynd');
INSERT INTO `icon_license` VALUES('design', 'ccbysa');
INSERT INTO `icon_license` VALUES('design', 'fal');
INSERT INTO `icon_license` VALUES('design', 'fdl');
INSERT INTO `icon_license` VALUES('design', 'gpl');
INSERT INTO `icon_license` VALUES('design', 'gpl2');
INSERT INTO `icon_license` VALUES('design', 'oshw');
INSERT INTO `icon_license` VALUES('design', 'pd');
INSERT INTO `icon_license` VALUES('design', 'tapr');
INSERT INTO `icon_license` VALUES('file', 'cc0');
INSERT INTO `icon_license` VALUES('file', 'ccby');
INSERT INTO `icon_license` VALUES('file', 'ccbync');
INSERT INTO `icon_license` VALUES('file', 'ccbyncnd');
INSERT INTO `icon_license` VALUES('file', 'ccbyncsa');
INSERT INTO `icon_license` VALUES('file', 'ccbynd');
INSERT INTO `icon_license` VALUES('file', 'ccbysa');
INSERT INTO `icon_license` VALUES('file', 'fal');
INSERT INTO `icon_license` VALUES('manual', 'cc0');
INSERT INTO `icon_license` VALUES('manual', 'ccby');
INSERT INTO `icon_license` VALUES('manual', 'ccbync');
INSERT INTO `icon_license` VALUES('manual', 'ccbyncnd');
INSERT INTO `icon_license` VALUES('manual', 'ccbyncsa');
INSERT INTO `icon_license` VALUES('manual', 'ccbynd');
INSERT INTO `icon_license` VALUES('manual', 'ccbysa');
INSERT INTO `icon_license` VALUES('manual', 'fal');
INSERT INTO `icon_license` VALUES('manual', 'fdl');
INSERT INTO `icon_license` VALUES('manual', 'freebsd');
INSERT INTO `icon_license` VALUES('manual', 'pd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- Volcar la base de datos para la tabla `image`
--

INSERT INTO `image` VALUES(1, 'avatar.png', 'image/png', 1469);
INSERT INTO `image` VALUES(4, 'avatar_centella.jpg', 'image/jpeg', 9840);
INSERT INTO `image` VALUES(8, 'bike2.jpg', 'image/jpeg', 40080);
INSERT INTO `image` VALUES(14, 'bike2.jpg', 'image/jpeg', 40080);
INSERT INTO `image` VALUES(15, 'movecommons.jpg', 'image/jpeg', 93203);
INSERT INTO `image` VALUES(21, 'tweetometro_yeswecamp.png', 'image/png', 505172);
INSERT INTO `image` VALUES(23, 'cyberspace2.jpg', 'image/jpeg', 212765);
INSERT INTO `image` VALUES(24, 'oli-estats3.jpg', 'image/jpeg', 375360);
INSERT INTO `image` VALUES(26, 'p1100340.jpg', 'image/jpeg', 626094);
INSERT INTO `image` VALUES(27, 'firefox_wallpaper.png', 'image/png', 77932);
INSERT INTO `image` VALUES(28, 'navigating.jpg', 'image/jpeg', 41218);
INSERT INTO `image` VALUES(29, 'imagen-1.png', 'image/png', 608094);
INSERT INTO `image` VALUES(30, '1660.gif', 'image/gif', 11237);
INSERT INTO `image` VALUES(33, 'tallergoteobilbao_33.jpg', 'image/jpeg', 377859);
INSERT INTO `image` VALUES(35, 'tallergoteobilbao_01.jpg', 'image/jpeg', 419726);
INSERT INTO `image` VALUES(38, 'logocccblab.png', 'image/png', 3531);
INSERT INTO `image` VALUES(39, 'conca.png', 'image/png', 8681);
INSERT INTO `image` VALUES(40, 'logo-concagris.png', 'image/png', 8889);
INSERT INTO `image` VALUES(44, 'julio-grande.jpg', 'image/jpeg', 535172);
INSERT INTO `image` VALUES(45, 'acampadaplano.jpg', 'image/jpeg', 122038);
INSERT INTO `image` VALUES(54, 'todojuntoletterpress14.jpg', 'image/jpeg', 24444);
INSERT INTO `image` VALUES(55, 'oh_oh.jpg', 'image/jpeg', 13517);
INSERT INTO `image` VALUES(56, 'urbansocialdd.jpg', 'image/jpeg', 25883);
INSERT INTO `image` VALUES(57, 'avatar.jpg', 'image/jpeg', 4037);
INSERT INTO `image` VALUES(58, 'mibarriologo.jpg', 'image/jpeg', 10758);
INSERT INTO `image` VALUES(59, 'idgrf_hkp-fff.png', 'image/png', 11050);
INSERT INTO `image` VALUES(60, 'mc-logo-300-white.png', 'image/png', 12627);
INSERT INTO `image` VALUES(61, 'logo_nodo_movil.png', 'image/png', 22842);
INSERT INTO `image` VALUES(62, 'canal_alpha.jpg', 'image/jpeg', 16826);
INSERT INTO `image` VALUES(63, 'banner_robocicla.jpg', 'image/jpeg', 103545);
INSERT INTO `image` VALUES(64, 'tweetometro_admin_00.png', 'image/png', 220753);
INSERT INTO `image` VALUES(65, 'tweetometro_zoom3.png', 'image/png', 112127);
INSERT INTO `image` VALUES(66, 'error1.png', 'image/png', 65129);
INSERT INTO `image` VALUES(67, 'p1100340.jpg', 'image/jpeg', 626094);
INSERT INTO `image` VALUES(68, 'p1100343.jpg', 'image/jpeg', 548168);
INSERT INTO `image` VALUES(69, 'goteo.png', 'image/png', 13969);
INSERT INTO `image` VALUES(70, 'schulbaum_bcc_sevilla.jpg', 'image/jpeg', 46783);
INSERT INTO `image` VALUES(79, 'goteo.png', 'image/png', 17009);
INSERT INTO `image` VALUES(81, 'huevo-frito-bcc.jpg', 'image/jpeg', 115960);
INSERT INTO `image` VALUES(83, '01dinou-02.jpg', 'image/jpeg', 210253);
INSERT INTO `image` VALUES(84, '01dinou-03.jpg', 'image/jpeg', 256820);
INSERT INTO `image` VALUES(85, '01dinou-05.jpg', 'image/jpeg', 189845);
INSERT INTO `image` VALUES(86, '19j_barcelona_dinou1-6404.jpg', 'image/jpeg', 377019);
INSERT INTO `image` VALUES(87, '19j_barcelona_dinou1-6444.jpg', 'image/jpeg', 410839);
INSERT INTO `image` VALUES(88, '19j_barcelona_dinou1-6687.jpg', 'image/jpeg', 430793);
INSERT INTO `image` VALUES(89, '19j_barcelona_dinou1-6944.jpg', 'image/jpeg', 316046);
INSERT INTO `image` VALUES(92, 'logogoteo_reasonably_small.png', 'image/png', 8859);
INSERT INTO `image` VALUES(93, 'beta_tester_like_bugs_tshirt-p235188780416292059tr', 'image/jpeg', 25733);
INSERT INTO `image` VALUES(94, 'betatester.png', 'image/png', 164865);
INSERT INTO `image` VALUES(95, 'ici_olivier_lift.jpg', 'image/jpeg', 140490);
INSERT INTO `image` VALUES(96, 'schulbaum_ars2008.jpg', 'image/jpeg', 50385);
INSERT INTO `image` VALUES(98, 'jj.jpg', 'image/jpeg', 22898);
INSERT INTO `image` VALUES(99, 'jaume.jpg', 'image/jpeg', 26500);
INSERT INTO `image` VALUES(100, 'jaume.jpg', 'image/jpeg', 26500);
INSERT INTO `image` VALUES(101, 'conca.png', 'image/png', 7814);
INSERT INTO `image` VALUES(102, 'cccb.png', 'image/png', 6261);
INSERT INTO `image` VALUES(103, 'icub.png', 'image/png', 7267);
INSERT INTO `image` VALUES(104, 'brecht.jpg', 'image/jpeg', 9449);
INSERT INTO `image` VALUES(105, 'liquidbank.256.jpg', 'image/jpeg', 26305);
INSERT INTO `image` VALUES(106, '580.png', 'image/png', 263572);
INSERT INTO `image` VALUES(107, '581.png', 'image/png', 271830);
INSERT INTO `image` VALUES(108, '582.png', 'image/png', 204131);
INSERT INTO `image` VALUES(109, 'ici_mg_6454.jpg', 'image/jpeg', 497525);
INSERT INTO `image` VALUES(110, 'ici_mg_6498.jpg', 'image/jpeg', 433379);
INSERT INTO `image` VALUES(111, 'ici_mg_6478.jpg', 'image/jpeg', 412494);
INSERT INTO `image` VALUES(112, 'ici_mg_6478.jpg', 'image/jpeg', 412494);
INSERT INTO `image` VALUES(113, 'ici_mg_6494.jpg', 'image/jpeg', 565616);
INSERT INTO `image` VALUES(115, 'demo_goteo_1000_a.png', 'image/png', 369001);
INSERT INTO `image` VALUES(116, 'demo_goteo_1000_b.png', 'image/png', 393250);
INSERT INTO `image` VALUES(117, 'ivan1.jpg', 'image/jpeg', 329290);
INSERT INTO `image` VALUES(118, 'logogoteo_reasonably_small.png', 'image/png', 8859);
INSERT INTO `image` VALUES(119, 'schulbaum-ars2008.jpg', 'image/jpeg', 269182);
INSERT INTO `image` VALUES(120, 'francesc.jpg', 'image/jpeg', 11454);
INSERT INTO `image` VALUES(125, 'al-sol.jpg', 'image/jpeg', 86621);
INSERT INTO `image` VALUES(126, 'julian.jpg', 'image/jpeg', 29004);
INSERT INTO `image` VALUES(127, 'etrigant.jpg', 'image/jpeg', 30101);
INSERT INTO `image` VALUES(128, 'banner2.jpg', 'image/jpeg', 18751);
INSERT INTO `image` VALUES(129, 'banner.jpg', 'image/jpeg', 11166);
INSERT INTO `image` VALUES(130, 'banner_1.jpg', 'image/jpeg', 11166);
INSERT INTO `image` VALUES(131, 'banner_3.jpg', 'image/jpeg', 18751);
INSERT INTO `image` VALUES(132, 'hina-matsuri.jpg', 'image/jpeg', 31370);
INSERT INTO `image` VALUES(133, 'banner.jpg', 'image/jpeg', 11166);
INSERT INTO `image` VALUES(134, 'speed-up.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(135, 'speed-up_1.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(136, 'speed-up_2.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(137, 'hina-matsuri.jpg', 'image/jpeg', 31370);
INSERT INTO `image` VALUES(138, 'speed-up.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(139, 'speed-up_1.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(140, 'hina-matsuri.jpg', 'image/jpeg', 31370);
INSERT INTO `image` VALUES(141, 'speed-up_2.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(142, 'hina-matsuri_1.jpg', 'image/jpeg', 31370);
INSERT INTO `image` VALUES(143, 'speed-up_3.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(144, 'hina-matsuri_2.jpg', 'image/jpeg', 31370);
INSERT INTO `image` VALUES(145, 'speed-up_4.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(146, 'hina-matsuri_3.jpg', 'image/jpeg', 31370);
INSERT INTO `image` VALUES(147, 'speed-up_5.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(148, 'speed-up_6.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(149, 'speed-up_7.jpg', 'image/jpeg', 36069);
INSERT INTO `image` VALUES(150, 'banner.jpg', 'image/jpeg', 11166);
INSERT INTO `image` VALUES(151, 'cyber-security.gif', 'image/gif', 95122);
INSERT INTO `image` VALUES(153, 'convocatorias-tmp.jpg', 'image/jpeg', 246667);
INSERT INTO `image` VALUES(155, 'logo-iniciativa_1.png', 'image/png', 11683);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `title` tinytext,
  `text` longtext COMMENT 'texto de la entrada',
  `media` tinytext,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '1',
  `legend` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Entradas about' AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `info`
--

INSERT INTO `info` VALUES(2, 'goteo', 'Financiación colectiva y colaboración distribuida', '<p>\r\n	Goteo es una plataforma de financiaci&oacute;n colectiva (aportaciones monetarias) y colaboraci&oacute;n distribuida (servicios, infraestructuras, microtareas y otros recursos). Una plataforma para la inversi&oacute;n de &ldquo;capital riego&rdquo; en proyectos que contribuyan al desarrollo del procom&uacute;n, el c&oacute;digo abierto y/o el conocimiento libre. Una comunidad para apoyar el desarrollo aut&oacute;nomo de iniciativas creativas e innovadoras cuyos fines sean de car&aacute;cter social, cultural, cient&iacute;fico, educativo, tecnol&oacute;gico o ecol&oacute;gico, que generen nuevas oportunidades para la mejora constante de la sociedad</p>\r\n', '', 1, 0, '');
INSERT INTO `info` VALUES(3, 'goteo', 'Goteo se dirige a ti', '<p>\r\n	Goteo se dirige a ti. A personas individuales, organizaciones de la sociedad civil y entidades p&uacute;blicas y privadas de &aacute;mbitos diversos, cuyo nexo com&uacute;n es su inter&eacute;s en el desarrollo del procom&uacute;n, el c&oacute;digo abierto y/o el conocimiento libre. Goteo parte de los modelos actuales del crowdfunding para articularse como una red social -compuesta por agentes impulsores, financiadores y/o colaboradores-, de la cual pueda emerger una comunidad de comunidades (inicialmente en el estado espa&ntilde;ol).<br />\r\n	<br />\r\n	Como miembro de la red puedes cumplir uno o varios roles, seg&uacute;n el proyecto y en funci&oacute;n del papel que juegues en cada caso. Goteo principalmente ofrece:<br />\r\n	<br />\r\n	<strong>* A los agentes impulsores</strong>: Acceder a un nuevo modelo de financiaci&oacute;n colectiva y colaboraciones distribuidas, dando visibilidad a tus proyectos, haciendo part&iacute;cipe desde el principio a la comunidad potencial de los mismos.<br />\r\n	<br />\r\n	<strong>* A los agentes cofinaciadores y colaboradores</strong>: Acceder a un amplio banco de proyectos, pensados, producidos y/o distribuidos desde una perspectiva libre y abierta, en los que contribuir mediante aportaciones monetarias u otras formas de colaboraci&oacute;n, a cambio de retornos colectivos y recompensas individuales.</p>\r\n', '', 1, 0, '');
INSERT INTO `info` VALUES(4, 'goteo', 'Fundación Goteo: apertura, neutralidad e independencia', '<p>\r\n	El principal impulsor de Goteo es Platoniq, una organizaci&oacute;n internacional de productores culturales y desarrolladores de software, pionera en la producci&oacute;n y distribuci&oacute;n de la cultura copyleft. Desde 2001, Platoniq lleva a cabo acciones y proyectos donde los usos sociales de las TIC y el trabajo en red son aplicados al fomento de la comunicaci&oacute;n, la auto-formaci&oacute;n y la organizaci&oacute;n ciudadana. Entre sus proyectos destacan: Burn Station, OpenServer, <a href="http://www.bancocomun.org/" target="_blank">Banco Com&uacute;n de Conocimientos</a> o S.O.S., todos ellos disponibles en la plataforma de metodolog&iacute;as libres <a href="http://www.youcoop.org/" target="_blank">YouCoop</a>.<br />\r\n	<br />\r\n	De cara a un funcionamiento de Goteo acorde con sus principios de apertura, neutralidad e independencia, se ha puesto en marcha la Fundaci&oacute;n Goteo, entidad sin &aacute;nimo de lucro que integra a todos los agentes comprometidos con el desarrollo del proyecto y asegura un cumplimiento transparente y responsable de su misi&oacute;n. La Fundaci&oacute;n Goteo, adem&aacute;s de ser la responsable del desarrollo y mantenimiento de la plataforma, se encarga de gestionar una bolsa de inversi&oacute;n social p&uacute;blico-privada, y tambi&eacute;n promueve un laboratorio de experimentaci&oacute;n aplicada en torno al procom&uacute;n, el c&oacute;digo abierto y el conocimiento libre, en distintos &aacute;mbitos sociales, culturales y econ&oacute;micos.</p>\r\n', '', 1, 0, '');
INSERT INTO `info` VALUES(5, 'goteo', 'Una corriente internacional', '<p>\r\n	Goteo forma parte de una corriente internacional relacionada con fen&oacute;menos digitales y offline, como por ejemplo: el <a href="http://es.wikipedia.org/wiki/Crowdsourcing" target="_blank">crowdsourcing</a>, las redes peer-to-peer, los microcr&eacute;ditos, las monedas complementarias, la econom&iacute;a de la <a href="http://es.wikipedia.org/wiki/Larga_cola" target="_blank">larga cola</a>, las nuevas formas de <a href="http://www.economiasolidaria.org/" target="_blank">econom&iacute;a solidaria</a>, la cultura libre o los procesos de participaci&oacute;n y sociabilizaci&oacute;n en un sentido amplio. Se basa en una remezcla de experiencias significativas en torno a plataformas de crowdfunding como Kickstarter o de micropagos como <a href="http://www.youcoop.org/es/goteo/p/6/flattr-torrent-de-micropagos/" target="_blank">Flattr</a>, iniciativas de apoyo a proyectos de web abierta como <a href="http://www.youcoop.org/es/goteo/p/4/drumbeat-como-modelo-de-apoyo-a-proyectos-web/" target="_blank">Mozilla Drumbeat</a>, las licencias abiertas como <a href="http://es.creativecommons.org/licencia/" target="_blank">Creative Commons</a> o la econom&iacute;a distribuida en torno al <a href="http://www.youcoop.org/es/goteo/p/7/financiacion-colectiva-para-proyectos-de-codigo-abierto-primer-capitulo-open-hardware/" target="_blank">open hardware</a>.</p>\r\n', 'http://vimeo.com/18390711', 1, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_image`
--

DROP TABLE IF EXISTS `info_image`;
CREATE TABLE `info_image` (
  `info` bigint(20) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`info`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `info_image`
--

INSERT INTO `info_image` VALUES(2, 141);
INSERT INTO `info_image` VALUES(2, 142);
INSERT INTO `info_image` VALUES(4, 148);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_lang`
--

DROP TABLE IF EXISTS `info_lang`;
CREATE TABLE `info_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` longtext,
  `legend` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `info_lang`
--

INSERT INTO `info_lang` VALUES(2, 'en', 'ENG Financiación colectiva y colaboración distribuida', '<p>\r\n	ENG Goteo es una plataforma de financiación colectiva (aportaciones monetarias) y colaboración distribuida (servicios, infraestructuras, microtareas y otros recursos). Una plataforma para la inversión de “capital riego” en proyectos que contribuyan al desarrollo del procomún, el código abierto y/o el conocimiento libre. Una comunidad para apoyar el desarrollo autónomo de iniciativas creativas e innovadoras cuyos fines sean de carácter social, cultural, científico, educativo, tecnológico o ecológico, que generen nuevas oportunidades para la mejora constante de la sociedad</p>\r\n', '');
INSERT INTO `info_lang` VALUES(3, 'en', 'ENG Goteo se dirige a ti', '<p>\r\n	ENG Goteo se dirige a ti. A personas individuales, organizaciones de la sociedad civil y entidades públicas y privadas de ámbitos diversos, cuyo nexo común es su interés en el desarrollo del procomún, el código abierto y/o el conocimiento libre. Goteo parte de los modelos actuales del crowdfunding para articularse como una red social -compuesta por agentes impulsores, financiadores y/o colaboradores-, de la cual pueda emerger una comunidad de comunidades (inicialmente en el estado español).<br />\r\n	<br />\r\n	Como miembro de la red puedes cumplir uno o varios roles, según el proyecto y en función del papel que juegues en cada caso. Goteo principalmente ofrece:<br />\r\n	<br />\r\n	<strong>* A los agentes impulsores</strong>: Acceder a un nuevo modelo de financiación colectiva y colaboraciones distribuidas, dando visibilidad a tus proyectos, haciendo partícipe desde el principio a la comunidad potencial de los mismos.<br />\r\n	<br />\r\n	<strong>* A los agentes cofinaciadores y colaboradores</strong>: Acceder a un amplio banco de proyectos, pensados, producidos y/o distribuidos desde una perspectiva libre y abierta, en los que contribuir mediante aportaciones monetarias u otras formas de colaboración, a cambio de retornos colectivos y recompensas individuales.</p>\r\n', '');
INSERT INTO `info_lang` VALUES(4, 'en', 'ENG Fundación Goteo: apertura, neutralidad e independencia', '<p>\r\n	ENG El principal impulsor de Goteo es Platoniq, una organización internacional de productores culturales y desarrolladores de software, pionera en la producción y distribución de la cultura copyleft. Desde 2001, Platoniq lleva a cabo acciones y proyectos donde los usos sociales de las TIC y el trabajo en red son aplicados al fomento de la comunicación, la auto-formación y la organización ciudadana. Entre sus proyectos destacan: Burn Station, OpenServer, <a href="http://www.bancocomun.org/" target="_blank">Banco Común de Conocimientos</a> o S.O.S., todos ellos disponibles en la plataforma de metodologías libres <a href="http://www.youcoop.org/" target="_blank">YouCoop</a>.<br />\r\n	<br />\r\n	De cara a un funcionamiento de Goteo acorde con sus principios de apertura, neutralidad e independencia, se ha puesto en marcha la Fundación Goteo, entidad sin ánimo de lucro que integra a todos los agentes comprometidos con el desarrollo del proyecto y asegura un cumplimiento transparente y responsable de su misión. La Fundación Goteo, además de ser la responsable del desarrollo y mantenimiento de la plataforma, se encarga de gestionar una bolsa de inversión social público-privada, y también promueve un laboratorio de experimentación aplicada en torno al procomún, el código abierto y el conocimiento libre, en distintos ámbitos sociales, culturales y económicos.</p>\r\n', '');
INSERT INTO `info_lang` VALUES(5, 'en', 'ENG Una corriente internacional', '<p>\r\n	ENG Goteo forma parte de una corriente internacional relacionada con fenómenos digitales y offline, como por ejemplo: el <a href="http://es.wikipedia.org/wiki/Crowdsourcing" target="_blank">crowdsourcing</a>, las redes peer-to-peer, los microcréditos, las monedas complementarias, la economía de la <a href="http://es.wikipedia.org/wiki/Larga_cola" target="_blank">larga cola</a>, las nuevas formas de <a href="http://www.economiasolidaria.org/" target="_blank">economía solidaria</a>, la cultura libre o los procesos de participación y sociabilización en un sentido amplio. Se basa en una remezcla de experiencias significativas en torno a plataformas de crowdfunding como Kickstarter o de micropagos como <a href="http://www.youcoop.org/es/goteo/p/6/flattr-torrent-de-micropagos/" target="_blank">Flattr</a>, iniciativas de apoyo a proyectos de web abierta como <a href="http://www.youcoop.org/es/goteo/p/4/drumbeat-como-modelo-de-apoyo-a-proyectos-web/" target="_blank">Mozilla Drumbeat</a>, las licencias abiertas como <a href="http://es.creativecommons.org/licencia/" target="_blank">Creative Commons</a> o la economía distribuida en torno al <a href="http://www.youcoop.org/es/goteo/p/7/financiacion-colectiva-para-proyectos-de-codigo-abierto-primer-capitulo-open-hardware/" target="_blank">open hardware</a>.</p>\r\n', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interest`
--

DROP TABLE IF EXISTS `interest`;
CREATE TABLE `interest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `description` text,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Intereses de los usuarios' AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `interest`
--

INSERT INTO `interest` VALUES(1, 'Educación', 'Educación', 1);
INSERT INTO `interest` VALUES(2, 'Economía solidaria', 'Economía solidaria', 1);
INSERT INTO `interest` VALUES(3, 'TICs', 'Tecnologías de Ia Información y Comunicación', 1);
INSERT INTO `interest` VALUES(4, 'Medio ambiente', 'Medio ambiente', 1);
INSERT INTO `interest` VALUES(5, 'Letras y editorial', 'Letras y editorial', 1);
INSERT INTO `interest` VALUES(6, 'Tecnologías', 'Tecnologías', 1);
INSERT INTO `interest` VALUES(7, 'Artes visuales y diseño', 'Hardware', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invest`
--

DROP TABLE IF EXISTS `invest`;
CREATE TABLE `invest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `account` varchar(256) NOT NULL,
  `amount` int(6) NOT NULL,
  `status` int(1) NOT NULL COMMENT '-1 en proceso, 0 pendiente, 1 cobrado, 2 devuelto, 3 pagado al proyecto',
  `anonymous` tinyint(1) DEFAULT NULL,
  `resign` tinyint(1) DEFAULT NULL,
  `invested` date DEFAULT NULL,
  `charged` date DEFAULT NULL,
  `returned` date DEFAULT NULL,
  `preapproval` varchar(256) DEFAULT NULL COMMENT 'PreapprovalKey',
  `payment` varchar(256) DEFAULT NULL COMMENT 'PayKey',
  `transaction` varchar(256) DEFAULT NULL COMMENT 'PaypalId',
  `method` varchar(20) NOT NULL COMMENT 'Metodo de pago',
  `admin` varchar(50) DEFAULT NULL COMMENT 'Admin que creó el aporte manual',
  `campaign` bigint(20) unsigned DEFAULT NULL COMMENT 'campaña de la que forma parte este dinero',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Aportes monetarios a proyectos' AUTO_INCREMENT=53 ;

--
-- Volcar la base de datos para la tabla `invest`
--

INSERT INTO `invest` VALUES(1, 'esenabre', 'fixie-per-tothom', 'pepo_1303727318_per@gmail.com', 150, 2, NULL, NULL, '2011-09-02', '2011-09-02', NULL, 'PA-7XV676539V278843W', 'AP-2V674912A1911720P', NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(2, 'olivier', 'fixie-per-tothom', 'pepe_1303727124_per@gmail.com', 150, 2, NULL, NULL, '2011-09-02', '2011-09-02', NULL, 'PA-9MN688422Y8346234', 'AP-0C298009AP220133F', NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(3, 'susana', 'fixie-per-tothom', 'pepa_1303727030_per@gmail.com', 150, 2, NULL, NULL, '2011-09-02', '2011-09-02', NULL, 'PA-4H732829MT459822L', 'AP-10N74081LY645472G', NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(4, 'goteo', 'fixie-per-tothom', 'goteo@doukeshi.org', 100, 2, 1, 1, '2011-09-02', '2011-09-02', NULL, NULL, NULL, NULL, 'cash', 'goteo', 1);
INSERT INTO `invest` VALUES(5, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 100, 2, NULL, NULL, '2011-09-04', '2011-09-04', NULL, 'PA-5M4170780W593223B', 'AP-08U004968J631631R', NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(6, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 100, 2, NULL, NULL, '2011-09-05', NULL, NULL, 'PA-06N2388046055531E', NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(7, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 300, 2, NULL, NULL, '2011-09-05', NULL, NULL, 'PA-3BT559150G429810L', NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(8, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 400, 2, NULL, NULL, '2011-09-05', '2011-09-05', NULL, 'PA-40562806L22299059', 'AP-9UX80099CF1597826', NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(9, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 400, 2, NULL, NULL, '2011-09-05', NULL, NULL, 'PA-94988676DY924501C', NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(10, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 100, 2, NULL, NULL, '2011-09-08', NULL, NULL, 'PA-78D62470FN745081M', NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(11, 'abenitez', '2c667d6a62707f369bad654174116a1e', 'albabenitez1983@gmail.com', 52, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(12, 'ahernandez', '2c667d6a62707f369bad654174116a1e', 'ahernandez@lossantos.org', 53, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(13, 'ahernandez', '2c667d6a62707f369bad654174116a1e', 'ahernandez@lossantos.org', 53, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(14, 'ahernandez', '2c667d6a62707f369bad654174116a1e', 'ahernandez@lossantos.org', 53, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(15, 'ahernandez', '2c667d6a62707f369bad654174116a1e', 'ahernandez@lossantos.org', 53, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(16, 'amorales', '2c667d6a62707f369bad654174116a1e', 'moralespartida@gmail.com', 60, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(17, 'amorales', '2c667d6a62707f369bad654174116a1e', 'moralespartida@gmail.com', 100, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(18, 'amunoz', '2c667d6a62707f369bad654174116a1e', 'chonmube@gmail.com', 120, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(19, 'carlaboserman', '2c667d6a62707f369bad654174116a1e', 'carlaboserman@gmail.com', 400, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(20, 'acomunes', '2c667d6a62707f369bad654174116a1e', 'comunes@ourproject.org', 120, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(21, 'gnarros', '2c667d6a62707f369bad654174116a1e', 'german@caceresentumano.com', 120, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(22, 'diegobus', '2c667d6a62707f369bad654174116a1e', 'diegobus@pelousse.com', 300, 1, NULL, 1, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(23, 'goteo', 'tweetometro', 'goteo@doukeshi.org', 100, 1, NULL, NULL, '2011-09-09', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(24, 'goteo', 'tweetometro', 'goteo@doukeshi.org', 100, 1, NULL, NULL, '2011-09-09', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(25, 'goteo', 'tweetometro', 'goteo@doukeshi.org', 2000, 5, NULL, NULL, '2011-09-09', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(26, 'root', 'fixie-per-tothom', 'goteo_root@doukeshi.org', 100, 2, NULL, NULL, '2011-09-12', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(27, 'asanz', 'fixie-per-tothom', 'asanzgr@hotmail.com', 50, 2, NULL, 1, '2011-09-12', '2011-09-12', NULL, NULL, NULL, NULL, 'cash', 'root', NULL);
INSERT INTO `invest` VALUES(28, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 100, 2, NULL, NULL, '2011-09-15', '2011-09-15', NULL, 'PA-2HC211919X882971A', 'AP-5LM007131S3030803', NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(29, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 300, 2, NULL, NULL, '2011-09-15', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(30, 'goteo', 'fixie-per-tothom', 'goteo@doukeshi.org', 100, 1, 1, NULL, '2011-09-20', NULL, NULL, 'PA-77V465081Y741603R', NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(31, 'goteo', 'tweetometro', 'goteo@doukeshi.org', 111, -1, NULL, 1, '2011-09-20', NULL, NULL, 'PA-4DL73947NC034900X', NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(32, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 100, -1, NULL, NULL, '2011-09-23', NULL, NULL, NULL, NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(33, 'paypal', 'fixie-per-tothom', 'paypal_1315159211_per@gmail.com', 100, -1, NULL, NULL, '2011-09-23', NULL, NULL, NULL, NULL, NULL, 'paypal', NULL, NULL);
INSERT INTO `invest` VALUES(34, 'paypal', 'tweetometro', 'paypal_1315159211_per@gmail.com', 5000, 5, NULL, NULL, '2011-09-23', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(35, 'goteo', 'tweetometro', 'goteo@doukeshi.org', 1000, 2, NULL, NULL, '2011-09-30', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(36, 'goteo', 'tweetometro', 'goteo@doukeshi.org', 1000, 1, NULL, NULL, '2011-09-30', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(37, 'goteo', '2c667d6a62707f369bad654174116a1e', 'goteo@doukeshi.org', 1, 0, NULL, NULL, '2011-10-14', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(38, 'olivier', 'fixie-per-tothom', 'pepe_1303727124_per@gmail.com', 1, 0, 1, 1, '2011-10-18', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(39, 'efoglia', 'dinou-publicacio-irregular', 'mexmafia@gmail.com', 800, 1, NULL, 1, '2011-10-19', '2011-10-19', NULL, NULL, NULL, NULL, 'cash', 'root', NULL);
INSERT INTO `invest` VALUES(40, 'olivier', 'tweetometro', '', 100, -1, NULL, NULL, '2011-10-24', NULL, NULL, '404569', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(41, 'olivier', 'tweetometro', '', 100, -1, NULL, NULL, '2011-10-24', NULL, NULL, '413678', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(42, 'olivier', 'tweetometro', '', 100, -1, NULL, NULL, '2011-10-24', NULL, NULL, '423451', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(43, 'olivier', 'tweetometro', '', 100, -1, NULL, NULL, '2011-10-24', NULL, NULL, '437432', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(44, 'olivier', 'tweetometro', '', 100, 1, NULL, NULL, '2011-10-24', NULL, NULL, '440363', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(45, 'olivier', 'tweetometro', '', 100, -1, NULL, NULL, '2011-10-24', NULL, NULL, '459217', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(46, 'olivier', 'tweetometro', '', 100, -1, NULL, NULL, '2011-10-24', NULL, NULL, '465668', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(47, 'olivier', 'tweetometro', '', 100, 2, NULL, NULL, '2011-10-24', NULL, NULL, '479351', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(48, 'olivier', 'tweetometro', '', 100, 2, NULL, NULL, '2011-10-24', NULL, NULL, '485685', NULL, NULL, 'tpv', NULL, NULL);
INSERT INTO `invest` VALUES(49, 'diegobus', 'tweetometro', '', 100, 0, NULL, NULL, '2011-11-09', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);
INSERT INTO `invest` VALUES(50, 'paypal', 'mi-barrio', '', 5000, 1, NULL, NULL, '2011-12-10', NULL, NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(51, 'goteo', 'mi-barrio', '', 2000, 1, NULL, NULL, '2011-12-10', NULL, NULL, NULL, NULL, NULL, 'cash', 'goteo', NULL);
INSERT INTO `invest` VALUES(52, 'olivier', 'fixie-per-tothom', '', 1, 0, NULL, NULL, '2011-12-30', NULL, NULL, NULL, NULL, NULL, 'cash', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invest_address`
--

DROP TABLE IF EXISTS `invest_address`;
CREATE TABLE `invest_address` (
  `invest` bigint(20) unsigned NOT NULL,
  `user` varchar(50) NOT NULL,
  `address` tinytext,
  `zipcode` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nif` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`invest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dirección de entrega de recompensa';

--
-- Volcar la base de datos para la tabla `invest_address`
--

INSERT INTO `invest_address` VALUES(1, 'esenabre', 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España', 'Enric Senabre Hidalgo', '46649545W');
INSERT INTO `invest_address` VALUES(2, 'olivier', '', '', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', '');
INSERT INTO `invest_address` VALUES(3, 'susana', '', '', '', '', '', '');
INSERT INTO `invest_address` VALUES(4, 'goteo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(5, 'paypal', '', '', '', '', '', '');
INSERT INTO `invest_address` VALUES(6, 'paypal', '', '', '', '', '', '');
INSERT INTO `invest_address` VALUES(7, 'paypal', '', '', '', '', '', '');
INSERT INTO `invest_address` VALUES(8, 'paypal', '', '', '', '', '', '');
INSERT INTO `invest_address` VALUES(9, 'paypal', '', '', '', '', '', '');
INSERT INTO `invest_address` VALUES(10, 'paypal', '', '', '', 'EspaÃ±a', 'Paypal Tester', '');
INSERT INTO `invest_address` VALUES(11, 'abenitez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(12, 'ahernandez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(13, 'ahernandez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(14, 'ahernandez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(15, 'ahernandez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(16, 'amorales', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(17, 'amorales', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(18, 'amunoz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(19, 'carlaboserman', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(20, 'acomunes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(21, 'gnarros', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(22, 'diegobus', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(23, 'goteo', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', 'Susana Noguero', 'G63306914');
INSERT INTO `invest_address` VALUES(24, 'goteo', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', 'Susana Noguero', 'G63306914');
INSERT INTO `invest_address` VALUES(25, 'goteo', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', 'Susana Noguero', 'G63306914');
INSERT INTO `invest_address` VALUES(26, 'root', '', '', '', 'EspaÃ±a', 'Super administrador', '');
INSERT INTO `invest_address` VALUES(27, 'asanz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(28, 'paypal', '', '', '', 'EspaÃ±a', 'Paypal Tester', '');
INSERT INTO `invest_address` VALUES(29, 'paypal', '', '', '', 'EspaÃ±a', 'Paypal Tester', '');
INSERT INTO `invest_address` VALUES(31, 'goteo', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', 'Susana Noguero', 'G63306914');
INSERT INTO `invest_address` VALUES(32, 'paypal', '', '', '', 'EspaÃ±a', 'Paypal Tester', '');
INSERT INTO `invest_address` VALUES(33, 'paypal', '', '', '', 'EspaÃ±a', 'Paypal Tester', '');
INSERT INTO `invest_address` VALUES(34, 'paypal', '', '', '', 'EspaÃ±a', 'Paypal Tester', '');
INSERT INTO `invest_address` VALUES(35, 'goteo', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', 'Susana Noguero', 'G63306914');
INSERT INTO `invest_address` VALUES(36, 'goteo', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', 'Susana Noguero', 'G63306914');
INSERT INTO `invest_address` VALUES(37, 'goteo', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', 'Susana Noguero', 'G63306914');
INSERT INTO `invest_address` VALUES(38, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(39, 'efoglia', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(40, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(41, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(42, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(43, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(44, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(45, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(46, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(47, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(48, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');
INSERT INTO `invest_address` VALUES(49, 'diegobus', 'c/ calle 98, 1º 2º', '08000', 'Barcelona', 'España', 'diego', 'x8562415k');
INSERT INTO `invest_address` VALUES(50, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(51, 'goteo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `invest_address` VALUES(52, 'olivier', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', 'Olivier Schulbaum', 'G63306914');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invest_reward`
--

DROP TABLE IF EXISTS `invest_reward`;
CREATE TABLE `invest_reward` (
  `invest` bigint(20) unsigned NOT NULL,
  `reward` bigint(20) unsigned NOT NULL,
  `fulfilled` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `invest` (`invest`,`reward`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Recompensas elegidas al aportar';

--
-- Volcar la base de datos para la tabla `invest_reward`
--

INSERT INTO `invest_reward` VALUES(1, 66, 0);
INSERT INTO `invest_reward` VALUES(1, 223, 0);
INSERT INTO `invest_reward` VALUES(2, 66, 0);
INSERT INTO `invest_reward` VALUES(2, 223, 0);
INSERT INTO `invest_reward` VALUES(3, 66, 0);
INSERT INTO `invest_reward` VALUES(3, 223, 0);
INSERT INTO `invest_reward` VALUES(9, 66, 0);
INSERT INTO `invest_reward` VALUES(9, 223, 0);
INSERT INTO `invest_reward` VALUES(23, 227, 0);
INSERT INTO `invest_reward` VALUES(24, 227, 0);
INSERT INTO `invest_reward` VALUES(25, 229, 0);
INSERT INTO `invest_reward` VALUES(30, 66, 0);
INSERT INTO `invest_reward` VALUES(35, 227, 0);
INSERT INTO `invest_reward` VALUES(35, 229, 0);
INSERT INTO `invest_reward` VALUES(36, 227, 0);
INSERT INTO `invest_reward` VALUES(36, 229, 0);
INSERT INTO `invest_reward` VALUES(39, 191, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lang`
--

DROP TABLE IF EXISTS `lang`;
CREATE TABLE `lang` (
  `id` varchar(2) NOT NULL COMMENT 'Código ISO-639',
  `name` varchar(20) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `short` varchar(10) DEFAULT NULL,
  `locale` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Idiomas';

--
-- Volcar la base de datos para la tabla `lang`
--

INSERT INTO `lang` VALUES('ca', 'Català', 1, 'CAT', 'ca_ES');
INSERT INTO `lang` VALUES('de', 'Deutsch', 1, 'DEUT', 'de_DE');
INSERT INTO `lang` VALUES('en', 'English', 1, 'ENG', 'en_GB');
INSERT INTO `lang` VALUES('es', 'Español', 1, 'ES', 'es_ES');
INSERT INTO `lang` VALUES('eu', 'Euskara', 1, 'EUSK', 'eu_ES');
INSERT INTO `lang` VALUES('fr', 'Français', 0, NULL, 'fr_FR');
INSERT INTO `lang` VALUES('gl', 'Galego', 0, NULL, 'gl_ES');
INSERT INTO `lang` VALUES('it', 'Italiano', 0, NULL, 'it_IT');
INSERT INTO `lang` VALUES('pt', 'Português', 0, NULL, 'pt_PT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `license`
--

DROP TABLE IF EXISTS `license`;
CREATE TABLE `license` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` tinytext,
  `group` varchar(50) DEFAULT NULL COMMENT 'grupo de restriccion de menor a mayor',
  `url` varchar(256) DEFAULT NULL,
  `order` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Licencias de distribucion';

--
-- Volcar la base de datos para la tabla `license`
--

INSERT INTO `license` VALUES('agpl', 'Affero General Public License', 'Licencia pública general de Affero para software libre que corra en servidores de red', '', 'http://www.affero.org/oagf.html', 2);
INSERT INTO `license` VALUES('apache', 'Apache License', 'Licencia Apache de software libre, que no exige que las obras derivadas se distribuyan usando la misma licencia ni como software libre', '', 'http://www.apache.org/licenses/LICENSE-2.0', 10);
INSERT INTO `license` VALUES('balloon', 'Balloon Open Hardware License', 'Licencia para hardware libre de los procesadores Balloon', '', 'http://balloonboard.org/licence.html', 20);
INSERT INTO `license` VALUES('bsd', 'Berkeley Software Distribution', 'Licencia de software libre permisiva, con pocas restricciones y que permite el uso del código fuente en software no libre', 'open', 'http://es.wikipedia.org/wiki/Licencia_BSD', 5);
INSERT INTO `license` VALUES('cc0', 'CC0 Universal (Dominio Público)', 'Obra dedicada al dominio público, mediante renuncia a todos los derechos de autoría sobre la misma', '', 'http://creativecommons.org/publicdomain/zero/1.0/deed.es', 25);
INSERT INTO `license` VALUES('ccby', 'CC - Reconocimiento', 'Licencia de bienes comunes creativos, con reconocimiento de autoría', 'open', 'http://creativecommons.org/licenses/by/2.0/deed.es_ES', 12);
INSERT INTO `license` VALUES('ccbync', 'CC - Reconocimiento - NoComercial', 'Licencia de bienes comunes creativos, con reconocimiento de autoría y sin que se pueda hacer uso comercial', '', 'http://creativecommons.org/licenses/by-nc/2.0/deed.es_ES', 13);
INSERT INTO `license` VALUES('ccbyncnd', 'CC - Reconocimiento - NoComercial - SinObraDerivada', 'Licencia de bienes comunes creativos, con reconocimiento de autoría, sin que se pueda hacer uso comercial ni otras obras derivadas', '', 'http://creativecommons.org/licenses/by-nc-nd/2.0/deed.es_ES', 15);
INSERT INTO `license` VALUES('ccbyncsa', 'CC - Reconocimiento - NoComercial - CompartirIgual', 'Licencia de bienes comunes creativos, con reconocimiento de autoría, sin que se pueda hacer uso comercial y a compartir en idénticas condiciones', '', 'http://creativecommons.org/licenses/by-nc-sa/3.0/deed.es_ES', 14);
INSERT INTO `license` VALUES('ccbynd', 'CC - Reconocimiento - SinObraDerivada', 'Licencia de bienes comunes creativos, con reconocimiento de autoría, sin que se puedan hacer obras derivadas ', '', 'http://creativecommons.org/licenses/by-nd/2.0/deed.es_ES', 17);
INSERT INTO `license` VALUES('ccbysa', 'CC - Reconocimiento - CompartirIgual', 'Licencia de bienes comunes creativos, con reconocimiento de autoría y a compartir en idénticas condiciones', 'open', 'http://creativecommons.org/licenses/by-sa/2.0/deed.es_ES', 16);
INSERT INTO `license` VALUES('fal', 'Free Art License', 'Licencia de arte libre', '', 'http://artlibre.org/licence/lal/es', 11);
INSERT INTO `license` VALUES('fdl', 'Free Documentation License ', 'Licencia de documentación libre de GNU, pudiendo ser ésta copiada, redistribuida, modificada e incluso vendida siempre y cuando se mantenga bajo los términos de esa misma licencia', 'open', 'http://www.gnu.org/copyleft/fdl.html', 4);
INSERT INTO `license` VALUES('freebsd', 'FreeBSD Documentation License', 'Licencia de documentación libre para el sistema operativo FreeBSD', 'open', 'http://www.freebsd.org/copyright/freebsd-doc-license.html', 6);
INSERT INTO `license` VALUES('gpl', 'General Public License', 'Licencia Pública General de GNU para la libre distribución, modificación y uso de software', 'open', 'http://www.gnu.org/licenses/gpl.html', 1);
INSERT INTO `license` VALUES('gpl2', 'General Public License (v.2)', 'Licencia Pública General de GNU para la libre distribución, modificación y uso de software', 'open', 'http://www.gnu.org/licenses/gpl-2.0.html', 1);
INSERT INTO `license` VALUES('lgpl', 'Lesser General Public License', 'Licencia Pública General Reducida de GNU, para software libre que puede ser utilizado por un programa no-GPL, que a su vez puede ser software libre o no', 'open', 'http://www.gnu.org/copyleft/lesser.html', 3);
INSERT INTO `license` VALUES('mit', 'MIT / X11 License', 'Licencia tanto para software libre como para software no libre, que permite no liberar los cambios realizados sobre el programa original', '', 'http://es.wikipedia.org/wiki/MIT_License', 8);
INSERT INTO `license` VALUES('mpl', 'Mozilla Public License', 'Licencia pública de Mozilla de software libre, que posibilita la reutilización no libre del software, sin restringir la reutilización del código ni el relicenciamiento bajo la misma licencia', '', 'http://www.mozilla.org/MPL/', 7);
INSERT INTO `license` VALUES('odbl', 'Open Database License ', 'Licencia de base de datos abierta, que permite compartir, modificar y utilizar bases de datos en idénticas condiciones', 'open', 'http://www.opendatacommons.org/licenses/odbl/', 22);
INSERT INTO `license` VALUES('odcby', 'Open Data Commons Attribution License', 'Licencia de datos abierta, que permite compartir, modificar y utilizar los datos en idénticas condiciones atribuyendo la fuente original', 'open', 'http://www.opendatacommons.org/licenses/by/', 23);
INSERT INTO `license` VALUES('oshw', 'TAPR Open Hardware License', 'Licencia para obras de hardware libre', 'open', 'http://www.tapr.org/OHL', 18);
INSERT INTO `license` VALUES('pd', 'Dominio público', 'La obra puede ser libremente reproducida, distribuida, transmitida, usada, modificada, editada u objeto de cualquier otra forma de explotación para el propósito que sea, comercial o no.', '', 'http://creativecommons.org/licenses/publicdomain/deed.es', 24);
INSERT INTO `license` VALUES('php', 'PHP License', 'Licencia bajo la que se publica el lenguaje de programación PHP', '', 'http://www.php.net/license/', 9);
INSERT INTO `license` VALUES('tapr', 'TAPR Noncommercial Hardware License', 'Licencia para obras de hardware libre con limitación en su comercialización ', '', 'http://www.tapr.org/NCL.html', 19);
INSERT INTO `license` VALUES('xoln', 'Procomún de la XOLN', 'Licencia de red abierta, libre y neutral, como acuerdo de interconexión entre iguales promovido por Guifi.net', 'open', 'http://guifi.net/es/ProcomunXOLN', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `license_lang`
--

DROP TABLE IF EXISTS `license_lang`;
CREATE TABLE `license_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` tinytext,
  `url` varchar(256) DEFAULT NULL,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `license_lang`
--

INSERT INTO `license_lang` VALUES('gpl', 'en', 'ENG General Public License', 'ENG Licencia Pública General de GNU para la libre distribución, modificación y uso de software', 'http://www.gnu.org/en/licenses/gpl.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` tinytext NOT NULL,
  `html` longtext NOT NULL,
  `template` int(20) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Contenido enviado por email para el -si no ves-' AUTO_INCREMENT=268 ;

--
-- Volcar la base de datos para la tabla `mail`
--

INSERT INTO `mail` VALUES(1, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>No has publicado novedades en tu proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 23, '2011-10-09 23:09:43');
INSERT INTO `mail` VALUES(2, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>No has dicho nada en tu proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 24, '2011-10-09 23:09:44');
INSERT INTO `mail` VALUES(3, 'itxaso@ubiqa.com', '<p>Hola <span class="message-highlight-red">Úbiqa, tecnología, ideas y comunicación</span>,</p>\r\n<p>No has publicado novedades en tu proyecto <span class="message-highlight-blue">Mi barrio</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 23, '2011-10-09 23:09:44');
INSERT INTO `mail` VALUES(4, 'itxaso@ubiqa.com', '<p>Hola <span class="message-highlight-red">Úbiqa, tecnología, ideas y comunicación</span>,</p>\r\n<p>No has dicho nada en tu proyecto <span class="message-highlight-blue">Mi barrio</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 24, '2011-10-09 23:09:44');
INSERT INTO `mail` VALUES(5, 'pepe_1303727124_per@gmail.com', '<p>Hola <span class="message-highlight-red">Olivier</span>,</p>\r\n<p>No has publicado novedades en tu proyecto <span class="message-highlight-blue">NO SLEEP ''TILL BROOKLYN</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 23, '2011-10-09 23:09:44');
INSERT INTO `mail` VALUES(6, 'pepe_1303727124_per@gmail.com', '<p>Hola <span class="message-highlight-red">Olivier</span>,</p>\r\n<p>No has dicho nada en tu proyecto <span class="message-highlight-blue">NO SLEEP ''TILL BROOKLYN</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 24, '2011-10-09 23:09:44');
INSERT INTO `mail` VALUES(7, 'mansalva@gmail.com', '<p>Hola <span class="message-highlight-red">Demo Goteo</span>,</p>\r\n<p>No has publicado novedades en tu proyecto <span class="message-highlight-blue">Tweetometro</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 23, '2011-10-09 23:09:44');
INSERT INTO `mail` VALUES(8, 'mansalva@gmail.com', '<p>Hola <span class="message-highlight-red">Demo Goteo</span>,</p>\r\n<p>No has dicho nada en tu proyecto <span class="message-highlight-blue">Tweetometro</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/updates">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 24, '2011-10-09 23:09:44');
INSERT INTO `mail` VALUES(9, 'mansalva@gmail.com', '<p>Hola <span class="message-highlight-red">Demo Goteo</span>, <p>\r\n<p>Éste es un mensaje enviado por <span class="message-highlight-red">Demo Goteo</span> desde Goteo:<p>\r\n<blockquote>sadfasdf asdf asfd asdf asdf </blockquote>\r\n<p>Para enviar un mensaje a <span class="message-highlight-red">Demo Goteo</span> pulsa <span class="message-highlight-blue"><a href="http://devgoteo.org/user/profile/demo/message">AQUÍ</a></span>.</p>\r\n<p>Te recordamos que puedes ver la gente con la que estás en contacto desde Goteo en tu perfil:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/profile/demo/sharemates">http://devgoteo.org/user/profile/demo/sharemates</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 4, '2011-10-10 19:52:52');
INSERT INTO `mail` VALUES(10, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>, <p>\r\n<p>Éste es un mensaje enviado por <span class="message-highlight-red">Goteo</span> desde Goteo:<p>\r\n<blockquote>sdf asd fadf </blockquote>\r\n<p>Para enviar un mensaje a <span class="message-highlight-red">Goteo</span> pulsa <span class="message-highlight-blue"><a href="http://devgoteo.org/user/profile/goteo/message">AQUÍ</a></span>.</p>\r\n<p>Te recordamos que puedes ver la gente con la que estás en contacto desde Goteo en tu perfil:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/profile/diegobus/sharemates">http://devgoteo.org/user/profile/diegobus/sharemates</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 4, '2011-10-11 11:56:01');
INSERT INTO `mail` VALUES(11, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>, <p>\r\n<p>Éste es un mensaje enviado por <span class="message-highlight-red">Goteo</span> desde Goteo:<p>\r\n<blockquote>sdaf asdf asdf </blockquote>\r\n<p>Para enviar un mensaje a <span class="message-highlight-red">Goteo</span> pulsa <span class="message-highlight-blue"><a href="http://devgoteo.org/user/profile/goteo/message">AQUÍ</a></span>.</p>\r\n<p>Te recordamos que puedes ver la gente con la que estás en contacto desde Goteo en tu perfil:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/profile/diegobus/sharemates">http://devgoteo.org/user/profile/diegobus/sharemates</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 4, '2011-10-11 11:58:28');
INSERT INTO `mail` VALUES(12, 'goteo@doukeshi.org', '<p>Hola <span class="message-highlight-red">Goteo</span>,</p>\r\n<p>Gracias por cofinanciar el proyecto <span class="message-highlight-blue">NO SLEEP ''TILL BROOKLYN</span> con 1 &euro;.</p>\r\n<p>Cuando termine la ronda se ejecutará el cargo en la cuenta especificada</p>\r\n<p>Has elegido las siguientes recompensas: </p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 10, '2011-10-14 19:30:35');
INSERT INTO `mail` VALUES(13, 'pepe_1303727124_per@gmail.com', '<p>Hola <span class="message-highlight-red">Olivier</span>,</p>\r\n<p>Gracias por cofinanciar el proyecto <span class="message-highlight-blue">Fixie per tothom</span> con 1 &euro;.</p>\r\n<p>Cuando termine la ronda se ejecutará el cargo en la cuenta especificada</p>\r\n<p>Has elegido las siguientes recompensas: </p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 10, '2011-10-18 13:00:19');
INSERT INTO `mail` VALUES(14, 'hola_goteo@doukeshi.org', '<p>Han enviado un nuevo proyecto a revisión</p><p>El nombre del proyecto es: <span class="message-highlight-blue">NO SLEEP ''TILL BROOKLYN</span> <br />y se puede ver en <span class="message-highlight-blue"><a href="http://devgoteo.org/project/no-sleep-till-brooklyn">http://devgoteo.org/project/no-sleep-till-brooklyn</a></span></p>', 0, '2011-10-18 13:49:44');
INSERT INTO `mail` VALUES(15, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>!</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha sido habilitado para ser traducido</p>\r\n<p>Puedes encontrarlo en tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/translates">http://devgoteo.org/dashboard/translates</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 26, '2011-10-18 19:00:56');
INSERT INTO `mail` VALUES(16, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>!</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha sido habilitado para ser traducido</p>\r\n<p>Puedes encontrarlo en tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/translates">http://devgoteo.org/dashboard/translates</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 26, '2011-10-18 19:02:07');
INSERT INTO `mail` VALUES(17, 'albabenitez1983@gmail.com', '<p>Hola <span class="message-highlight-red">Alba Benitez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>abenitez</strong> y tu contraseña es <strong>abenitez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(18, 'ahernandez@lossantos.org', '<p>Hola <span class="message-highlight-red">Alejandro Hernández Renner</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ahernandez</strong> y tu contraseña es <strong>ahernandez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(19, 'martinezrubioo@gmail.com', '<p>Hola <span class="message-highlight-red">Alfonso Martínez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>amartinez</strong> y tu contraseña es <strong>amartinez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(20, 'programaskreativos@gmail.com', '<p>Hola <span class="message-highlight-red">Ana  Ollero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aollero</strong> y tu contraseña es <strong>aollero</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(21, 'veyota79@hotmail.com', '<p>Hola <span class="message-highlight-red">Ana Ceballos</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aceballos</strong> y tu contraseña es <strong>aceballos</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(22, 'ana@dispuesta.net', '<p>Hola <span class="message-highlight-red">Ana Fdez Osorio</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>afernandez</strong> y tu contraseña es <strong>afernandez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(23, 'moralespartida@gmail.com', '<p>Hola <span class="message-highlight-red">Ana Morales</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>amorales</strong> y tu contraseña es <strong>amorales</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(24, 'asanzgr@hotmail.com', '<p>Hola <span class="message-highlight-red">Ana Sánz Grados</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>asanz</strong> y tu contraseña es <strong>asanz</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(25, 'ana.vigara@iniciativajoven.org', '<p>Hola <span class="message-highlight-red">Ana Vigara</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>avigara</strong> y tu contraseña es <strong>avigara</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(26, 'geopetro10@yahoo.es', '<p>Hola <span class="message-highlight-red">Andrés Ballesteros</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aballesteros</strong> y tu contraseña es <strong>aballesteros</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(27, 'anto@filosomatika.net', '<p>Hola <span class="message-highlight-red">Anto Recio</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>arecio</strong> y tu contraseña es <strong>arecio</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(28, 'antonia@riereta.net', '<p>Hola <span class="message-highlight-red">Antonia Folguera</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>afolguera</strong> y tu contraseña es <strong>afolguera</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(29, 'airiarte@landspain.com', '<p>Hola <span class="message-highlight-red">Arantza Iriarte</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>airiarte</strong> y tu contraseña es <strong>airiarte</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(30, 'chonmube@gmail.com', '<p>Hola <span class="message-highlight-red">Ascensión Muñoz Benítez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>amunoz</strong> y tu contraseña es <strong>amunoz</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(31, 'asier.gallastegi@gmail.com', '<p>Hola <span class="message-highlight-red">Asier Gallastegi</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>agallastegi</strong> y tu contraseña es <strong>agallastegi</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(32, 'crdelcorral@hotmail.com', '<p>Hola <span class="message-highlight-red">Avelino Ramos Casado</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aramos</strong> y tu contraseña es <strong>aramos</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(33, 'beatriz@iniciativajovn.org', '<p>Hola <span class="message-highlight-red">Beatriz Ramos</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>bramos</strong> y tu contraseña es <strong>bramos</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(34, 'betanialozano@yahoo.com', '<p>Hola <span class="message-highlight-red">Betania Lozano</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>blozano</strong> y tu contraseña es <strong>blozano</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:38');
INSERT INTO `mail` VALUES(35, 'blancasampayo@gmail.com', '<p>Hola <span class="message-highlight-red">Blanca Sampayo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>bsampayo</strong> y tu contraseña es <strong>bsampayo</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(36, 'candela.carrera@gmail.com', '<p>Hola <span class="message-highlight-red">Candela Carrera</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ccarrera</strong> y tu contraseña es <strong>ccarrera</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(37, 'carla.a.agon@gmail.com', '<p>Hola <span class="message-highlight-red">Carla A. Agon</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>caagon</strong> y tu contraseña es <strong>caagon</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(38, 'carlaboserman@gmail.com', '<p>Hola <span class="message-highlight-red">Carla Boserman</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>carlaboserman</strong> y tu contraseña es <strong>carlaboserman</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(39, 'carlos@carloscriado.es', '<p>Hola <span class="message-highlight-red">Carlos Criado</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ccriado</strong> y tu contraseña es <strong>ccriado</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(40, 'innovacion@energiaextremadura.org', '<p>Hola <span class="message-highlight-red">Carlos Piñero Medina</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>cpinero</strong> y tu contraseña es <strong>cpinero</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(41, 'cayetana109@gmail.com', '<p>Hola <span class="message-highlight-red">Cayetana Martinez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>cmartinez</strong> y tu contraseña es <strong>cmartinez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(42, 'patriciavergara83@hotmail.com', '<p>Hola <span class="message-highlight-red">Claudia Patricia Hernández</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>cphernandez</strong> y tu contraseña es <strong>cphernandez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(43, 'criera@transit.es', '<p>Hola <span class="message-highlight-red">Cristina Riera </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>criera</strong> y tu contraseña es <strong>criera</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(44, 'david.cabo@gmail.com', '<p>Hola <span class="message-highlight-red">David Cabo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>dcabo</strong> y tu contraseña es <strong>dcabo</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(45, 'dcuartielles@gmail.com', '<p>Hola <span class="message-highlight-red">David Cuartielles</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>dcuartielles</strong> y tu contraseña es <strong>dcuartielles</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(46, 'domenico@ecosistemaurbano.com', '<p>Hola <span class="message-highlight-red">Domenico Di Siena</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>domenico</strong> y tu contraseña es <strong>domenico</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(47, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>efoglia</strong> y tu contraseña es <strong>efoglia</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(48, 'elvirilay@hotmail.com', '<p>Hola <span class="message-highlight-red">Elvira López</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>elopez</strong> y tu contraseña es <strong>elopez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(49, 'emma.vandellos@esade.edu', '<p>Hola <span class="message-highlight-red">Emma Vandellós </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>evandellos</strong> y tu contraseña es <strong>evandellos</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(50, 'info@diseinugile.com', '<p>Hola <span class="message-highlight-red">Eneko Muruzabal</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>emuruzabal</strong> y tu contraseña es <strong>emuruzabal</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(51, 'portillo.esperanza@gmail.com', '<p>Hola <span class="message-highlight-red">Esperanza Portillo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>eportillo</strong> y tu contraseña es <strong>eportillo</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(52, 'orensbruli@gmail.com', '<p>Hola <span class="message-highlight-red">Esteban Martinena</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>emartinena</strong> y tu contraseña es <strong>emartinena</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(53, 'esther.monivas@gmail.com', '<p>Hola <span class="message-highlight-red">Esther Moñivas</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>emonivas</strong> y tu contraseña es <strong>emonivas</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(54, 'tusojos8@yahoo.com', '<p>Hola <span class="message-highlight-red">Ethel Baraona Pohl</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ebaraonap</strong> y tu contraseña es <strong>ebaraonap</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(55, 'eukenebarrenetxea@gmail.com', '<p>Hola <span class="message-highlight-red">Eukene Barrenetxea</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ebarrenetxea</strong> y tu contraseña es <strong>ebarrenetxea</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(56, 'eva.alija@gmail.com', '<p>Hola <span class="message-highlight-red">Eva Bai</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ebai</strong> y tu contraseña es <strong>ebai</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(57, 'fandres@virgen-del-mar.com', '<p>Hola <span class="message-highlight-red">Fernando Andres</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fandres</strong> y tu contraseña es <strong>fandres</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(58, 'flavia.frr@gmail.com', '<p>Hola <span class="message-highlight-red">Flavia Freitas</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ffreitas</strong> y tu contraseña es <strong>ffreitas</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(59, 'flaviocoddou@gmail.com', '<p>Hola <span class="message-highlight-red">Flavio Coddou</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fcoddou</strong> y tu contraseña es <strong>fcoddou</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(60, 'fc@ecosistemaurbano.com', '<p>Hola <span class="message-highlight-red">Francesco Cingolani</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fcingolani</strong> y tu contraseña es <strong>fcingolani</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:39');
INSERT INTO `mail` VALUES(61, 'francoingrassia@gmail.com', '<p>Hola <span class="message-highlight-red">Franco Ingrassia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fingrassia</strong> y tu contraseña es <strong>fingrassia</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(62, 'gabrielabossio@gmail.com', '<p>Hola <span class="message-highlight-red">Gabriela Bossio</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gbossio</strong> y tu contraseña es <strong>gbossio</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(63, 'info@gabrielapedranti.com', '<p>Hola <span class="message-highlight-red">Gabriela Pedranti</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gpedranti</strong> y tu contraseña es <strong>gpedranti</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(64, 'geraldo@servus.at', '<p>Hola <span class="message-highlight-red">Gerald Kogler y Marti Sanchez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>geraldo</strong> y tu contraseña es <strong>geraldo</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(65, 'gerardo@beusual.com', '<p>Hola <span class="message-highlight-red">Gerardo Bezanilla</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gbezanilla</strong> y tu contraseña es <strong>gbezanilla</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(66, 'german@caceresentumano.com', '<p>Hola <span class="message-highlight-red">Germán Narros Lluch</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gnarros</strong> y tu contraseña es <strong>gnarros</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(67, 'giselecultura@gmail.com', '<p>Hola <span class="message-highlight-red">Gisele Bento</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gbento</strong> y tu contraseña es <strong>gbento</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(68, 'helder_r_castro@hotmail.com', '<p>Hola <span class="message-highlight-red">Helder Castro</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>hcastro</strong> y tu contraseña es <strong>hcastro</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(69, 'ima_gina7@hotmail.com', '<p>Hola <span class="message-highlight-red">Imma Romero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>iromero</strong> y tu contraseña es <strong>iromero</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(70, 'ibartolome@ideable.net', '<p>Hola <span class="message-highlight-red">Iñaki Bartolomé</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ibartolome</strong> y tu contraseña es <strong>ibartolome</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(71, 'info@info-q.com', '<p>Hola <span class="message-highlight-red">info-q</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>infoq</strong> y tu contraseña es <strong>infoq</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(72, 'ibellosobueso@yahoo.es', '<p>Hola <span class="message-highlight-red">Isabel Belloso Bueno</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ibelloso</strong> y tu contraseña es <strong>ibelloso</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(73, 'javi@mataderomadrid.org', '<p>Hola <span class="message-highlight-red">Javi de Matadero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jmatadero</strong> y tu contraseña es <strong>jmatadero</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(74, 'pereztoril@gmail.com', '<p>Hola <span class="message-highlight-red">Javier Pérez-Toril Galán</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>pereztoril</strong> y tu contraseña es <strong>pereztoril</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(75, 'jessicaromero@gmail.com', '<p>Hola <span class="message-highlight-red">Jessica Romero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jromero</strong> y tu contraseña es <strong>jromero</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(76, 'interinofernandez@hotmail.com', '<p>Hola <span class="message-highlight-red">Jesús Fenández Perianes</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jfernandez</strong> y tu contraseña es <strong>jfernandez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(77, 'jcosta@eohonline.es', '<p>Hola <span class="message-highlight-red">Joaquin Costa</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jcosta</strong> y tu contraseña es <strong>jcosta</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(78, 'jmorquecho@gmail.com', '<p>Hola <span class="message-highlight-red">Jonatan Morquecho</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jmorquecho</strong> y tu contraseña es <strong>jmorquecho</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(79, 'espinajl@gmail.com', '<p>Hola <span class="message-highlight-red">José Luis Espina</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jlespina</strong> y tu contraseña es <strong>jlespina</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(80, 'juancarlos@identic.es', '<p>Hola <span class="message-highlight-red">Juan Carlos Lindo Sanguino</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jclindo</strong> y tu contraseña es <strong>jclindo</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(81, 'julia.morer@gmail.com', '<p>Hola <span class="message-highlight-red">Julia  Morer </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jmorer</strong> y tu contraseña es <strong>jmorer</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(82, 'nora_julian@hotmail.com', '<p>Hola <span class="message-highlight-red">Julián Nora</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jnora</strong> y tu contraseña es <strong>jnora</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(83, 'dinkha@hotmail.com', '<p>Hola <span class="message-highlight-red">Kenia Ventura</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>kventura</strong> y tu contraseña es <strong>kventura</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(84, 'lander.amorrortu@agla4D.com', '<p>Hola <span class="message-highlight-red">Lander Amorrortu</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lamorrortu</strong> y tu contraseña es <strong>lamorrortu</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(85, 'larsst@gmail.com ', '<p>Hola <span class="message-highlight-red">Lars Stalling</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lstalling</strong> y tu contraseña es <strong>lstalling</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(86, 'laura@medialab-prado.es', '<p>Hola <span class="message-highlight-red">Laura Fernández</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lfernandez</strong> y tu contraseña es <strong>lfernandez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:40');
INSERT INTO `mail` VALUES(87, 'foto@luciacarretero.com', '<p>Hola <span class="message-highlight-red">Lucía Carretero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lcarretero</strong> y tu contraseña es <strong>lcarretero</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(88, ' lernestomc@Yahoo.es', '<p>Hola <span class="message-highlight-red">Luis Ernesto Montero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lemontero</strong> y tu contraseña es <strong>lemontero</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(89, 'info@dinamik-ideas.com', '<p>Hola <span class="message-highlight-red">M. Ángel Manovell</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mamanovell</strong> y tu contraseña es <strong>mamanovell</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(90, 'magdaduran@yahoo.es', '<p>Hola <span class="message-highlight-red">Magdalena Duran</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mduran</strong> y tu contraseña es <strong>mduran</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(91, 'manuel.aban@gmail.com', '<p>Hola <span class="message-highlight-red">Manuel Ángel Abán</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>maaban</strong> y tu contraseña es <strong>maaban</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(92, 'mkekejih@cajamadrid.es', '<p>Hola <span class="message-highlight-red">Maral Kekejian </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mkekejian</strong> y tu contraseña es <strong>mkekejian</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(93, 'idensitat@idensitat.org', '<p>Hola <span class="message-highlight-red">Maral Mikirdistan</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mmikirdistan</strong> y tu contraseña es <strong>mmikirdistan</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(94, 'marcela.palma@fundacionciudadania.es', '<p>Hola <span class="message-highlight-red">Marcela Palma Barrera</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mpalma</strong> y tu contraseña es <strong>mpalma</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(95, 'mgoikolea@gmail.com', '<p>Hola <span class="message-highlight-red">Marta Goikolea</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mgoikolea</strong> y tu contraseña es <strong>mgoikolea</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(96, 'caoroneltapi@yahoo.es', '<p>Hola <span class="message-highlight-red">Marta Goñi</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mgoni</strong> y tu contraseña es <strong>mgoni</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(97, 'matxalendplarrea@hotmail.com', '<p>Hola <span class="message-highlight-red">Matxalen de Pedro</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mpedro</strong> y tu contraseña es <strong>mpedro</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(98, 'info@mercedespedroche.com', '<p>Hola <span class="message-highlight-red">Mercedes Pedroche</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mpedroche</strong> y tu contraseña es <strong>mpedroche</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(99, 'elmiguemende@gmail.com ', '<p>Hola <span class="message-highlight-red">Miguel Méndez Pérez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mmendez</strong> y tu contraseña es <strong>mmendez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(100, 'miquel.ramirez@gmail.com', '<p>Hola <span class="message-highlight-red">Miguel Ramírez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mramirez</strong> y tu contraseña es <strong>mramirez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(101, 'mikelraposo@gmail.com', '<p>Hola <span class="message-highlight-red">mikelraposo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mraposo</strong> y tu contraseña es <strong>mraposo</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(102, 'miriamgsanz@gmail.com', '<p>Hola <span class="message-highlight-red">Miriam García Sanz</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mgarcia</strong> y tu contraseña es <strong>mgarcia</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(103, 'msoms@lacajanegra.net', '<p>Hola <span class="message-highlight-red">Miriam Soms Trillo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>msoms</strong> y tu contraseña es <strong>msoms</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(104, 'cidriain@yahoo.es', '<p>Hola <span class="message-highlight-red">Monika Cidriain</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mcidriain</strong> y tu contraseña es <strong>mcidriain</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(105, 'nella.escala@gmail.com', '<p>Hola <span class="message-highlight-red">Nella Escala</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>nescala</strong> y tu contraseña es <strong>nescala</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(106, 'pilar.gonzalo@fulbrightmail.org', '<p>Hola <span class="message-highlight-red">Pilar Gonzalo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>pgonzalo</strong> y tu contraseña es <strong>pgonzalo</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(107, 'rparramon@acvic.org', '<p>Hola <span class="message-highlight-red">Ramon Parramon</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rparramon</strong> y tu contraseña es <strong>rparramon</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:41');
INSERT INTO `mail` VALUES(108, 'raul.casadogonzalez@gmail.com', '<p>Hola <span class="message-highlight-red">Raul Casado</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rcasado</strong> y tu contraseña es <strong>rcasado</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(109, 'ricardotorres2@telefonica.net', '<p>Hola <span class="message-highlight-red">Ricardo Torres</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rtorres</strong> y tu contraseña es <strong>rtorres</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(110, 'robers_alas@yahoo.es', '<p>Hola <span class="message-highlight-red">Roberto Salas</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rsalas</strong> y tu contraseña es <strong>rsalas</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(111, 'info@colaborabora.org', '<p>Hola <span class="message-highlight-red">Rosa Fernandez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rfernandez</strong> y tu contraseña es <strong>rfernandez</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(112, 'roswira@yahoo.es', '<p>Hola <span class="message-highlight-red">Roswitha Steckelbach</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rsteckelbach</strong> y tu contraseña es <strong>rsteckelbach</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(113, 'sara.tena@aupex.org', '<p>Hola <span class="message-highlight-red">Sara Tena Medina</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>stena</strong> y tu contraseña es <strong>stena</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(114, 'sinogales@gmail.com', '<p>Hola <span class="message-highlight-red">Silverio Nogales Pajuelo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>snogales</strong> y tu contraseña es <strong>snogales</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(115, 'soritxori@hotmail.com', '<p>Hola <span class="message-highlight-red">Soraia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>soritxori</strong> y tu contraseña es <strong>soritxori</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(116, 'soren@hablarenarte.com', '<p>Hola <span class="message-highlight-red">Sören Meschede</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>smeschede</strong> y tu contraseña es <strong>smeschede</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(117, 'stephanegrueso@gmail.com', '<p>Hola <span class="message-highlight-red">Stéphane Grueso</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>sgrueso</strong> y tu contraseña es <strong>sgrueso</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(118, 'dvd@enlloc.org', '<p>Hola <span class="message-highlight-red">Taller d''intangibles</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>tintangibles</strong> y tu contraseña es <strong>tintangibles</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(119, 'tbadtod@gmail.com', '<p>Hola <span class="message-highlight-red">Tere Badia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>tbadia</strong> y tu contraseña es <strong>tbadia</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(120, 'hola@todojunto.net', '<p>Hola <span class="message-highlight-red">Todojunto</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>todojunto</strong> y tu contraseña es <strong>todojunto</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(121, 'tguido@transit.es', '<p>Hola <span class="message-highlight-red">Tomás Guido</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>tguido</strong> y tu contraseña es <strong>tguido</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(122, 'itxaso@ubiqa.com', '<p>Hola <span class="message-highlight-red">Úbiqa, tecnología, ideas y comunicación</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>itxaso</strong> y tu contraseña es <strong>itxaso</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(123, 'vstabares@gmail.com', '<p>Hola <span class="message-highlight-red">Victor Santiago</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>vsantiago</strong> y tu contraseña es <strong>vsantiago</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(124, 'victortorrevaquero@yahoo.es', '<p>Hola <span class="message-highlight-red">Víctor Torre</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>vtorre</strong> y tu contraseña es <strong>vtorre</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(125, 'yolandariquel@hotmail.com', '<p>Hola <span class="message-highlight-red">Yolanda Riquelme </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>yriquelme</strong> y tu contraseña es <strong>yriquelme</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(126, 'info@zaramari.com', '<p>Hola <span class="message-highlight-red">Zaramari (Gorka, Maria)</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>zaramari</strong> y tu contraseña es <strong>zaramari</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-10-18 19:55:42');
INSERT INTO `mail` VALUES(127, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>enhorabuena! Tu proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha pasado a segunda ronda pero esto no se acaba aquí.</p>\r\n<p>Te recordamos que puedes encontrar el widget para publicitar tu proyecto en tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/widgets">Dashboard</a></span>.</p>\r\n<p>Mucha suerte !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 20, '2011-10-19 23:30:23');
INSERT INTO `mail` VALUES(128, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>,</p>\r\n<p>Gracias a tu aporte, el proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha pasado a segunda ronda!</p>\r\n<p>Pero esto no se ha acabado, aun puedes hacer algo más por el procomún.</p>\r\n<p>Te recordamos que puedes participar en la comunidad del proyecto en <span class="message-highlight-blue"><a href="http://devgoteo.org/project/dinou-publicacio-irregular">http://devgoteo.org/project/dinou-publicacio-irregular</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 15, '2011-10-19 23:30:23');
INSERT INTO `mail` VALUES(129, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha finalizado la segunda ronda.</p>\r\n<p>Te recordamos que puedes gestionar las recompensas a los cofinanciadores de tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/rewards">Dashboard</a></span>.</p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 22, '2011-10-19 23:30:55');
INSERT INTO `mail` VALUES(130, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>,</p>\r\n<p>Gracias a tu aporte, el proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha finalizado la segunda ronda con buena financiación!</p>\r\n<p>Te recordamos que puedes participar en la comunidad del proyecto en <span class="message-highlight-blue"><a href="http://devgoteo.org/project/dinou-publicacio-irregular">http://devgoteo.org/project/dinou-publicacio-irregular</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 16, '2011-10-19 23:30:55');
INSERT INTO `mail` VALUES(131, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha finalizado la segunda ronda.</p>\r\n<p>Te recordamos que puedes gestionar las recompensas a los cofinanciadores de tu proyecto desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/projects/rewards">Dashboard</a></span>.</p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 22, '2011-11-01 14:45:50');
INSERT INTO `mail` VALUES(132, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>,</p>\r\n<p>Gracias a tu aporte, el proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span> ha finalizado la segunda ronda con buena financiación!</p>\r\n<p>Te recordamos que puedes participar en la comunidad del proyecto en <span class="message-highlight-blue"><a href="http://devgoteo.org/project/dinou-publicacio-irregular">http://devgoteo.org/project/dinou-publicacio-irregular</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 16, '2011-11-01 14:45:50');
INSERT INTO `mail` VALUES(133, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Gracias por cofinanciar el proyecto <span class="message-highlight-blue">Tweetometro</span> con 100 &euro;.</p>\r\n<p>Cuando termine la ronda se ejecutará el cargo en la cuenta especificada</p>\r\n<p>Has elegido las siguientes recompensas: </p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 10, '2011-11-09 09:19:59');
INSERT INTO `mail` VALUES(134, 'albabenitez1983@gmail.com', '<p>Hola <span class="message-highlight-red">Alba Benitez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>abenitez</strong> y tu contraseña es <strong>albabenitez1983@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(135, 'ahernandez@lossantos.org', '<p>Hola <span class="message-highlight-red">Alejandro Hernández Renner</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ahernandez</strong> y tu contraseña es <strong>ahernandez@lossantos.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(136, 'martinezrubioo@gmail.com', '<p>Hola <span class="message-highlight-red">Alfonso Martínez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>amartinez</strong> y tu contraseña es <strong>martinezrubioo@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(137, 'programaskreativos@gmail.com', '<p>Hola <span class="message-highlight-red">Ana  Ollero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aollero</strong> y tu contraseña es <strong>programaskreativos@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(138, 'veyota79@hotmail.com', '<p>Hola <span class="message-highlight-red">Ana Ceballos</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aceballos</strong> y tu contraseña es <strong>veyota79@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(139, 'ana@dispuesta.net', '<p>Hola <span class="message-highlight-red">Ana Fdez Osorio</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>afernandez</strong> y tu contraseña es <strong>ana@dispuesta.net</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(140, 'moralespartida@gmail.com', '<p>Hola <span class="message-highlight-red">Ana Morales</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>amorales</strong> y tu contraseña es <strong>moralespartida@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(141, 'asanzgr@hotmail.com', '<p>Hola <span class="message-highlight-red">Ana Sánz Grados</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>asanz</strong> y tu contraseña es <strong>asanzgr@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(142, 'ana.vigara@iniciativajoven.org', '<p>Hola <span class="message-highlight-red">Ana Vigara</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>avigara</strong> y tu contraseña es <strong>ana.vigara@iniciativajoven.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(143, 'geopetro10@yahoo.es', '<p>Hola <span class="message-highlight-red">Andrés Ballesteros</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aballesteros</strong> y tu contraseña es <strong>geopetro10@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:48');
INSERT INTO `mail` VALUES(144, 'anto@filosomatika.net', '<p>Hola <span class="message-highlight-red">Anto Recio</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>arecio</strong> y tu contraseña es <strong>anto@filosomatika.net</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(145, 'antonia@riereta.net', '<p>Hola <span class="message-highlight-red">Antonia Folguera</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>afolguera</strong> y tu contraseña es <strong>antonia@riereta.net</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(146, 'airiarte@landspain.com', '<p>Hola <span class="message-highlight-red">Arantza Iriarte</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>airiarte</strong> y tu contraseña es <strong>airiarte@landspain.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(147, 'chonmube@gmail.com', '<p>Hola <span class="message-highlight-red">Ascensión Muñoz Benítez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>amunoz</strong> y tu contraseña es <strong>chonmube@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(148, 'asier.gallastegi@gmail.com', '<p>Hola <span class="message-highlight-red">Asier Gallastegi</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>agallastegi</strong> y tu contraseña es <strong>asier.gallastegi@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(149, 'crdelcorral@hotmail.com', '<p>Hola <span class="message-highlight-red">Avelino Ramos Casado</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>aramos</strong> y tu contraseña es <strong>crdelcorral@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(150, 'beatriz@iniciativajovn.org', '<p>Hola <span class="message-highlight-red">Beatriz Ramos</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>bramos</strong> y tu contraseña es <strong>beatriz@iniciativajovn.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(151, 'betanialozano@yahoo.com', '<p>Hola <span class="message-highlight-red">Betania Lozano</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>blozano</strong> y tu contraseña es <strong>betanialozano@yahoo.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(152, 'blancasampayo@gmail.com', '<p>Hola <span class="message-highlight-red">Blanca Sampayo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>bsampayo</strong> y tu contraseña es <strong>blancasampayo@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(153, 'candela.carrera@gmail.com', '<p>Hola <span class="message-highlight-red">Candela Carrera</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ccarrera</strong> y tu contraseña es <strong>candela.carrera@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(154, 'carla.a.agon@gmail.com', '<p>Hola <span class="message-highlight-red">Carla A. Agon</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>caagon</strong> y tu contraseña es <strong>carla.a.agon@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(155, 'carlaboserman@gmail.com', '<p>Hola <span class="message-highlight-red">Carla Boserman</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>carlaboserman</strong> y tu contraseña es <strong>carlaboserman@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(156, 'carlos@carloscriado.es', '<p>Hola <span class="message-highlight-red">Carlos Criado</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ccriado</strong> y tu contraseña es <strong>carlos@carloscriado.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(157, 'innovacion@energiaextremadura.org', '<p>Hola <span class="message-highlight-red">Carlos Piñero Medina</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>cpinero</strong> y tu contraseña es <strong>innovacion@energiaextremadura.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(158, 'cayetana109@gmail.com', '<p>Hola <span class="message-highlight-red">Cayetana Martinez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>cmartinez</strong> y tu contraseña es <strong>cayetana109@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(159, 'patriciavergara83@hotmail.com', '<p>Hola <span class="message-highlight-red">Claudia Patricia Hernández</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>cphernandez</strong> y tu contraseña es <strong>patriciavergara83@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(160, 'criera@transit.es', '<p>Hola <span class="message-highlight-red">Cristina Riera </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>criera</strong> y tu contraseña es <strong>criera@transit.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(161, 'david.cabo@gmail.com', '<p>Hola <span class="message-highlight-red">David Cabo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>dcabo</strong> y tu contraseña es <strong>david.cabo@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(162, 'dcuartielles@gmail.com', '<p>Hola <span class="message-highlight-red">David Cuartielles</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>dcuartielles</strong> y tu contraseña es <strong>dcuartielles@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(163, 'domenico@ecosistemaurbano.com', '<p>Hola <span class="message-highlight-red">Domenico Di Siena</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>domenico</strong> y tu contraseña es <strong>domenico@ecosistemaurbano.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(164, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>efoglia</strong> y tu contraseña es <strong>mexmafia@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(165, 'elvirilay@hotmail.com', '<p>Hola <span class="message-highlight-red">Elvira López</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>elopez</strong> y tu contraseña es <strong>elvirilay@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(166, 'emma.vandellos@esade.edu', '<p>Hola <span class="message-highlight-red">Emma Vandellós </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>evandellos</strong> y tu contraseña es <strong>emma.vandellos@esade.edu</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(167, 'info@diseinugile.com', '<p>Hola <span class="message-highlight-red">Eneko Muruzabal</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>emuruzabal</strong> y tu contraseña es <strong>info@diseinugile.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(168, 'portillo.esperanza@gmail.com', '<p>Hola <span class="message-highlight-red">Esperanza Portillo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>eportillo</strong> y tu contraseña es <strong>portillo.esperanza@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(169, 'orensbruli@gmail.com', '<p>Hola <span class="message-highlight-red">Esteban Martinena</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>emartinena</strong> y tu contraseña es <strong>orensbruli@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(170, 'esther.monivas@gmail.com', '<p>Hola <span class="message-highlight-red">Esther Moñivas</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>emonivas</strong> y tu contraseña es <strong>esther.monivas@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:49');
INSERT INTO `mail` VALUES(171, 'tusojos8@yahoo.com', '<p>Hola <span class="message-highlight-red">Ethel Baraona Pohl</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ebaraonap</strong> y tu contraseña es <strong>tusojos8@yahoo.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(172, 'eukenebarrenetxea@gmail.com', '<p>Hola <span class="message-highlight-red">Eukene Barrenetxea</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ebarrenetxea</strong> y tu contraseña es <strong>eukenebarrenetxea@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(173, 'eva.alija@gmail.com', '<p>Hola <span class="message-highlight-red">Eva Bai</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ebai</strong> y tu contraseña es <strong>eva.alija@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(174, 'fandres@virgen-del-mar.com', '<p>Hola <span class="message-highlight-red">Fernando Andres</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fandres</strong> y tu contraseña es <strong>fandres@virgen-del-mar.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(175, 'flavia.frr@gmail.com', '<p>Hola <span class="message-highlight-red">Flavia Freitas</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ffreitas</strong> y tu contraseña es <strong>flavia.frr@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(176, 'flaviocoddou@gmail.com', '<p>Hola <span class="message-highlight-red">Flavio Coddou</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fcoddou</strong> y tu contraseña es <strong>flaviocoddou@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(177, 'fc@ecosistemaurbano.com', '<p>Hola <span class="message-highlight-red">Francesco Cingolani</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fcingolani</strong> y tu contraseña es <strong>fc@ecosistemaurbano.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(178, 'francoingrassia@gmail.com', '<p>Hola <span class="message-highlight-red">Franco Ingrassia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>fingrassia</strong> y tu contraseña es <strong>francoingrassia@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(179, 'gabrielabossio@gmail.com', '<p>Hola <span class="message-highlight-red">Gabriela Bossio</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gbossio</strong> y tu contraseña es <strong>gabrielabossio@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(180, 'info@gabrielapedranti.com', '<p>Hola <span class="message-highlight-red">Gabriela Pedranti</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gpedranti</strong> y tu contraseña es <strong>info@gabrielapedranti.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(181, 'geraldo@servus.at', '<p>Hola <span class="message-highlight-red">Gerald Kogler y Marti Sanchez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>geraldo</strong> y tu contraseña es <strong>geraldo@servus.at</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(182, 'gerardo@beusual.com', '<p>Hola <span class="message-highlight-red">Gerardo Bezanilla</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gbezanilla</strong> y tu contraseña es <strong>gerardo@beusual.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(183, 'german@caceresentumano.com', '<p>Hola <span class="message-highlight-red">Germán Narros Lluch</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gnarros</strong> y tu contraseña es <strong>german@caceresentumano.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(184, 'giselecultura@gmail.com', '<p>Hola <span class="message-highlight-red">Gisele Bento</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>gbento</strong> y tu contraseña es <strong>giselecultura@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(185, 'helder_r_castro@hotmail.com', '<p>Hola <span class="message-highlight-red">Helder Castro</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>hcastro</strong> y tu contraseña es <strong>helder_r_castro@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(186, 'ima_gina7@hotmail.com', '<p>Hola <span class="message-highlight-red">Imma Romero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>iromero</strong> y tu contraseña es <strong>ima_gina7@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(187, 'ibartolome@ideable.net', '<p>Hola <span class="message-highlight-red">Iñaki Bartolomé</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ibartolome</strong> y tu contraseña es <strong>ibartolome@ideable.net</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(188, 'info@info-q.com', '<p>Hola <span class="message-highlight-red">info-q</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>infoq</strong> y tu contraseña es <strong>info@info-q.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(189, 'ibellosobueso@yahoo.es', '<p>Hola <span class="message-highlight-red">Isabel Belloso Bueno</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>ibelloso</strong> y tu contraseña es <strong>ibellosobueso@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(190, 'javi@mataderomadrid.org', '<p>Hola <span class="message-highlight-red">Javi de Matadero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jmatadero</strong> y tu contraseña es <strong>javi@mataderomadrid.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(191, 'pereztoril@gmail.com', '<p>Hola <span class="message-highlight-red">Javier Pérez-Toril Galán</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>pereztoril</strong> y tu contraseña es <strong>pereztoril@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(192, 'jessicaromero@gmail.com', '<p>Hola <span class="message-highlight-red">Jessica Romero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jromero</strong> y tu contraseña es <strong>jessicaromero@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(193, 'interinofernandez@hotmail.com', '<p>Hola <span class="message-highlight-red">Jesús Fenández Perianes</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jfernandez</strong> y tu contraseña es <strong>interinofernandez@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(194, 'jcosta@eohonline.es', '<p>Hola <span class="message-highlight-red">Joaquin Costa</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jcosta</strong> y tu contraseña es <strong>jcosta@eohonline.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(195, 'jmorquecho@gmail.com', '<p>Hola <span class="message-highlight-red">Jonatan Morquecho</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jmorquecho</strong> y tu contraseña es <strong>jmorquecho@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(196, 'espinajl@gmail.com', '<p>Hola <span class="message-highlight-red">José Luis Espina</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jlespina</strong> y tu contraseña es <strong>espinajl@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(197, 'juancarlos@identic.es', '<p>Hola <span class="message-highlight-red">Juan Carlos Lindo Sanguino</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jclindo</strong> y tu contraseña es <strong>juancarlos@identic.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(198, 'julia.morer@gmail.com', '<p>Hola <span class="message-highlight-red">Julia  Morer </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jmorer</strong> y tu contraseña es <strong>julia.morer@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:50');
INSERT INTO `mail` VALUES(199, 'nora_julian@hotmail.com', '<p>Hola <span class="message-highlight-red">Julián Nora</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>jnora</strong> y tu contraseña es <strong>nora_julian@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(200, 'dinkha@hotmail.com', '<p>Hola <span class="message-highlight-red">Kenia Ventura</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>kventura</strong> y tu contraseña es <strong>dinkha@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(201, 'lander.amorrortu@agla4D.com', '<p>Hola <span class="message-highlight-red">Lander Amorrortu</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lamorrortu</strong> y tu contraseña es <strong>lander.amorrortu@agla4D.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(202, 'larsst@gmail.com ', '<p>Hola <span class="message-highlight-red">Lars Stalling</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lstalling</strong> y tu contraseña es <strong>larsst@gmail.com </strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(203, 'laura@medialab-prado.es', '<p>Hola <span class="message-highlight-red">Laura Fernández</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lfernandez</strong> y tu contraseña es <strong>laura@medialab-prado.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(204, 'foto@luciacarretero.com', '<p>Hola <span class="message-highlight-red">Lucía Carretero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lcarretero</strong> y tu contraseña es <strong>foto@luciacarretero.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(205, ' lernestomc@Yahoo.es', '<p>Hola <span class="message-highlight-red">Luis Ernesto Montero</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>lemontero</strong> y tu contraseña es <strong> lernestomc@Yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(206, 'info@dinamik-ideas.com', '<p>Hola <span class="message-highlight-red">M. Ángel Manovell</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mamanovell</strong> y tu contraseña es <strong>info@dinamik-ideas.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(207, 'magdaduran@yahoo.es', '<p>Hola <span class="message-highlight-red">Magdalena Duran</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mduran</strong> y tu contraseña es <strong>magdaduran@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(208, 'manuel.aban@gmail.com', '<p>Hola <span class="message-highlight-red">Manuel Ángel Abán</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>maaban</strong> y tu contraseña es <strong>manuel.aban@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(209, 'mkekejih@cajamadrid.es', '<p>Hola <span class="message-highlight-red">Maral Kekejian </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mkekejian</strong> y tu contraseña es <strong>mkekejih@cajamadrid.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(210, 'idensitat@idensitat.org', '<p>Hola <span class="message-highlight-red">Maral Mikirdistan</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mmikirdistan</strong> y tu contraseña es <strong>idensitat@idensitat.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(211, 'marcela.palma@fundacionciudadania.es', '<p>Hola <span class="message-highlight-red">Marcela Palma Barrera</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mpalma</strong> y tu contraseña es <strong>marcela.palma@fundacionciudadania.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(212, 'mgoikolea@gmail.com', '<p>Hola <span class="message-highlight-red">Marta Goikolea</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mgoikolea</strong> y tu contraseña es <strong>mgoikolea@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(213, 'caoroneltapi@yahoo.es', '<p>Hola <span class="message-highlight-red">Marta Goñi</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mgoni</strong> y tu contraseña es <strong>caoroneltapi@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(214, 'matxalendplarrea@hotmail.com', '<p>Hola <span class="message-highlight-red">Matxalen de Pedro</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mpedro</strong> y tu contraseña es <strong>matxalendplarrea@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(215, 'info@mercedespedroche.com', '<p>Hola <span class="message-highlight-red">Mercedes Pedroche</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mpedroche</strong> y tu contraseña es <strong>info@mercedespedroche.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(216, 'elmiguemende@gmail.com ', '<p>Hola <span class="message-highlight-red">Miguel Méndez Pérez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mmendez</strong> y tu contraseña es <strong>elmiguemende@gmail.com </strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(217, 'miquel.ramirez@gmail.com', '<p>Hola <span class="message-highlight-red">Miguel Ramírez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mramirez</strong> y tu contraseña es <strong>miquel.ramirez@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(218, 'mikelraposo@gmail.com', '<p>Hola <span class="message-highlight-red">mikelraposo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mraposo</strong> y tu contraseña es <strong>mikelraposo@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(219, 'miriamgsanz@gmail.com', '<p>Hola <span class="message-highlight-red">Miriam García Sanz</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mgarcia</strong> y tu contraseña es <strong>miriamgsanz@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(220, 'msoms@lacajanegra.net', '<p>Hola <span class="message-highlight-red">Miriam Soms Trillo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>msoms</strong> y tu contraseña es <strong>msoms@lacajanegra.net</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(221, 'cidriain@yahoo.es', '<p>Hola <span class="message-highlight-red">Monika Cidriain</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>mcidriain</strong> y tu contraseña es <strong>cidriain@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(222, 'nella.escala@gmail.com', '<p>Hola <span class="message-highlight-red">Nella Escala</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>nescala</strong> y tu contraseña es <strong>nella.escala@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(223, 'pilar.gonzalo@fulbrightmail.org', '<p>Hola <span class="message-highlight-red">Pilar Gonzalo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>pgonzalo</strong> y tu contraseña es <strong>pilar.gonzalo@fulbrightmail.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(224, 'rparramon@acvic.org', '<p>Hola <span class="message-highlight-red">Ramon Parramon</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rparramon</strong> y tu contraseña es <strong>rparramon@acvic.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(225, 'raul.casadogonzalez@gmail.com', '<p>Hola <span class="message-highlight-red">Raul Casado</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rcasado</strong> y tu contraseña es <strong>raul.casadogonzalez@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(226, 'ricardotorres2@telefonica.net', '<p>Hola <span class="message-highlight-red">Ricardo Torres</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rtorres</strong> y tu contraseña es <strong>ricardotorres2@telefonica.net</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:51');
INSERT INTO `mail` VALUES(227, 'robers_alas@yahoo.es', '<p>Hola <span class="message-highlight-red">Roberto Salas</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rsalas</strong> y tu contraseña es <strong>robers_alas@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(228, 'info@colaborabora.org', '<p>Hola <span class="message-highlight-red">Rosa Fernandez</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rfernandez</strong> y tu contraseña es <strong>info@colaborabora.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(229, 'roswira@yahoo.es', '<p>Hola <span class="message-highlight-red">Roswitha Steckelbach</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>rsteckelbach</strong> y tu contraseña es <strong>roswira@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(230, 'sara.tena@aupex.org', '<p>Hola <span class="message-highlight-red">Sara Tena Medina</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>stena</strong> y tu contraseña es <strong>sara.tena@aupex.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(231, 'sinogales@gmail.com', '<p>Hola <span class="message-highlight-red">Silverio Nogales Pajuelo</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>snogales</strong> y tu contraseña es <strong>sinogales@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(232, 'soritxori@hotmail.com', '<p>Hola <span class="message-highlight-red">Soraia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>soritxori</strong> y tu contraseña es <strong>soritxori@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(233, 'soren@hablarenarte.com', '<p>Hola <span class="message-highlight-red">Sören Meschede</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>smeschede</strong> y tu contraseña es <strong>soren@hablarenarte.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(234, 'stephanegrueso@gmail.com', '<p>Hola <span class="message-highlight-red">Stéphane Grueso</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>sgrueso</strong> y tu contraseña es <strong>stephanegrueso@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(235, 'dvd@enlloc.org', '<p>Hola <span class="message-highlight-red">Taller d''intangibles</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>tintangibles</strong> y tu contraseña es <strong>dvd@enlloc.org</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(236, 'tbadtod@gmail.com', '<p>Hola <span class="message-highlight-red">Tere Badia</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>tbadia</strong> y tu contraseña es <strong>tbadtod@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(237, 'hola@todojunto.net', '<p>Hola <span class="message-highlight-red">Todojunto</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>todojunto</strong> y tu contraseña es <strong>hola@todojunto.net</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(238, 'tguido@transit.es', '<p>Hola <span class="message-highlight-red">Tomás Guido</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>tguido</strong> y tu contraseña es <strong>tguido@transit.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(239, 'itxaso@ubiqa.com', '<p>Hola <span class="message-highlight-red">Úbiqa, tecnología, ideas y comunicación</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>itxaso</strong> y tu contraseña es <strong>itxaso@ubiqa.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(240, 'vstabares@gmail.com', '<p>Hola <span class="message-highlight-red">Victor Santiago</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>vsantiago</strong> y tu contraseña es <strong>vstabares@gmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(241, 'victortorrevaquero@yahoo.es', '<p>Hola <span class="message-highlight-red">Víctor Torre</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>vtorre</strong> y tu contraseña es <strong>victortorrevaquero@yahoo.es</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(242, 'yolandariquel@hotmail.com', '<p>Hola <span class="message-highlight-red">Yolanda Riquelme </span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>yriquelme</strong> y tu contraseña es <strong>yolandariquel@hotmail.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(243, 'info@zaramari.com', '<p>Hola <span class="message-highlight-red">Zaramari (Gorka, Maria)</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>zaramari</strong> y tu contraseña es <strong>info@zaramari.com</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard/profile/access">http://devgoteo.org/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 27, '2011-11-09 16:53:52');
INSERT INTO `mail` VALUES(244, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Hemos recibido una solicitud para dar de baja tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/</a></p>\r\n<p>Para completar el proceso de baja accede el siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/leave/ODlkYTMwODhhMmJiNmRlNTBjNDBhMzdjMjg2NmI3ZjXCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==">http://devgoteo.org/user/leave/ODlkYTMwODhhMmJiNmRlNTBjNDBhMzdjMjg2NmI3ZjXCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>(En caso de que no hayas has solicitado esta baja, uhm... ignora este mensaje)</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 9, '2011-11-10 18:27:25');
INSERT INTO `mail` VALUES(245, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Hemos recibido una solicitud para dar de baja tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/</a></p>\r\n<p>Para completar el proceso de baja accede el siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/leave/YTIzNTI1OTg4ZjIxMDY5YTdlNTlhYjkxM2EzMDhkOGHCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==">http://devgoteo.org/user/leave/YTIzNTI1OTg4ZjIxMDY5YTdlNTlhYjkxM2EzMDhkOGHCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>(En caso de que no hayas has solicitado esta baja, uhm... ignora este mensaje)</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 9, '2011-11-10 18:28:55');
INSERT INTO `mail` VALUES(246, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Hemos recibido una solicitud para dar de baja tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/</a></p>\r\n<p>Para completar el proceso de baja accede el siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/leave/YWRhZDczMjU2NzI2YjVlZmM5OTM0ZTUzN2M1NmQyNDHCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==">http://devgoteo.org/user/leave/YWRhZDczMjU2NzI2YjVlZmM5OTM0ZTUzN2M1NmQyNDHCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>(En caso de que no hayas has solicitado esta baja, uhm... ignora este mensaje)</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 9, '2011-11-10 18:29:02');
INSERT INTO `mail` VALUES(247, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Hemos recibido una solicitud para dar de baja tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/</a></p>\r\n<p>Para completar el proceso de baja accede el siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/leave/NDg2NmIyZWVhZDgzNWFmZjhmMTMyZWU3NGViOTFlYWbCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==">http://devgoteo.org/user/leave/NDg2NmIyZWVhZDgzNWFmZjhmMTMyZWU3NGViOTFlYWbCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>(En caso de que no hayas has solicitado esta baja, uhm... ignora este mensaje)</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 9, '2011-11-10 18:29:06');
INSERT INTO `mail` VALUES(248, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Hemos recibido una solicitud para dar de baja tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/</a></p>\r\n<p>Para completar el proceso de baja accede el siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/leave/NjBiMDNhNTNkZTcwNjdlZDJjNDlkNjFmYmM4OWUzYzLCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==">http://devgoteo.org/user/leave/NjBiMDNhNTNkZTcwNjdlZDJjNDlkNjFmYmM4OWUzYzLCrGRpZWdvYnVzQHBlbG91c3NlLmNvbQ==</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>(En caso de que no hayas has solicitado esta baja, uhm... ignora este mensaje)</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 9, '2011-11-10 18:33:02');
INSERT INTO `mail` VALUES(249, 'geopetro10@yahoo.es', '<p>Hola <span class="message-highlight-red">Andrés Ballesteros</span>,</p>\r\n<p>Hemos recibido una petición para recuperar la contraseña de tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/.</a></p>\r\n<p>Para acceder a tu cuenta y cambiar la contraseña, debes introducir tu login como la contraseña actual, a través del siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/recover/ZjZjZDdmMDk3ZDQ1ZTE2OTljZjQ1ZWZlZWIzZTBkMDPCrGdlb3BldHJvMTBAeWFob28uZXM=">http://devgoteo.org/user/recover/ZjZjZDdmMDk3ZDQ1ZTE2OTljZjQ1ZWZlZWIzZTBkMDPCrGdlb3BldHJvMTBAeWFob28uZXM=</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>Recuerda que tu login es <strong>aballesteros</strong>, úsalo como contraseña actual para poder cambiarla a continuación.</p>\r\n<p>(En caso de que no hayas has solicitado este cambio de contraseña, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 6, '2011-11-11 09:14:47');
INSERT INTO `mail` VALUES(250, 'geopetro10@yahoo.es', '<p>Hola <span class="message-highlight-red">Andrés Ballesteros</span>,</p>\r\n<p>Hemos recibido una petición para recuperar la contraseña de tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/.</a></p>\r\n<p>Para acceder a tu cuenta y cambiar la contraseña, debes introducir tu login como la contraseña actual, a través del siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/recover/YzE3MTg2Zjg2ZmYwODU3ZDliOWU0NWYxNGI2MDY5MzbCrGdlb3BldHJvMTBAeWFob28uZXM=">http://devgoteo.org/user/recover/YzE3MTg2Zjg2ZmYwODU3ZDliOWU0NWYxNGI2MDY5MzbCrGdlb3BldHJvMTBAeWFob28uZXM=</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>Recuerda que tu login es <strong>aballesteros</strong>, úsalo como contraseña actual para poder cambiarla a continuación.</p>\r\n<p>(En caso de que no hayas has solicitado este cambio de contraseña, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 6, '2011-11-11 09:15:20');
INSERT INTO `mail` VALUES(251, 'geopetro10@yahoo.es', '<p>Hola <span class="message-highlight-red">Andrés Ballesteros</span>,</p>\r\n<p>Hemos recibido una petición para recuperar la contraseña de tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/.</a></p>\r\n<p>Para acceder a tu cuenta y cambiar la contraseña, debes introducir tu login como la contraseña actual, a través del siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/recover/NmIyZWI1ZDc0MzM5Y2ZkZmNmYzJjZTE5Njc1NjNjOTXCrGdlb3BldHJvMTBAeWFob28uZXM=">http://devgoteo.org/user/recover/NmIyZWI1ZDc0MzM5Y2ZkZmNmYzJjZTE5Njc1NjNjOTXCrGdlb3BldHJvMTBAeWFob28uZXM=</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>Recuerda que tu login es <strong>aballesteros</strong>, úsalo como contraseña actual para poder cambiarla a continuación.</p>\r\n<p>(En caso de que no hayas has solicitado este cambio de contraseña, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 6, '2011-11-11 09:15:22');
INSERT INTO `mail` VALUES(252, 'geopetro10@yahoo.es', '<p>Hola <span class="message-highlight-red">Andrés Ballesteros</span>,</p>\r\n<p>Hemos recibido una petición para recuperar la contraseña de tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/.</a></p>\r\n<p>Para acceder a tu cuenta y cambiar la contraseña, debes introducir tu login como la contraseña actual, a través del siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/recover/MzY4NTMyMGMxNTlkMTY5MmEwNjVkNWNkZDMzM2QzMmbCrGdlb3BldHJvMTBAeWFob28uZXM=">http://devgoteo.org/user/recover/MzY4NTMyMGMxNTlkMTY5MmEwNjVkNWNkZDMzM2QzMmbCrGdlb3BldHJvMTBAeWFob28uZXM=</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>Recuerda que tu login es <strong>aballesteros</strong>, úsalo como contraseña actual para poder cambiarla a continuación.</p>\r\n<p>(En caso de que no hayas has solicitado este cambio de contraseña, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 6, '2011-11-11 09:15:37');
INSERT INTO `mail` VALUES(253, 'asdf@asdfsdaf.asd', '<p>Hola <span class="message-highlight-red">asdfas</span>,</p>\r\n<p>Hemos recibido una petición para recuperar la contraseña de tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/.</a></p>\r\n<p>Para acceder a tu cuenta y cambiar la contraseña, debes introducir tu login como la contraseña actual, a través del siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/recover/NGMwMTBiMmYxODFkZWViNWYyYzk0OTEyZmE0NzAyOTHCrGFzZGZAYXNkZnNkYWYuYXNk">http://devgoteo.org/user/recover/NGMwMTBiMmYxODFkZWViNWYyYzk0OTEyZmE0NzAyOTHCrGFzZGZAYXNkZnNkYWYuYXNk</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>Recuerda que tu login es <strong>asdfas</strong>, úsalo como contraseña actual para poder cambiarla a continuación.</p>\r\n<p>(En caso de que no hayas has solicitado este cambio de contraseña, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 6, '2011-11-11 09:17:08');
INSERT INTO `mail` VALUES(254, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>,</p>\r\n<p>Éste es un mensaje enviado desde la plataforma Goteo por parte de quien impulsa el proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span>:</p>\r\n<blockquote>sdaf sda</blockquote>\r\n<p>Te recordamos que puedes acceder a la página de <span class="message-highlight-blue">DINOU Publicació irregular</span> en Goteo desde la siguiente URL: </p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/project/dinou-publicacio-irregular">http://devgoteo.org/project/dinou-publicacio-irregular</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 2, '2011-11-18 15:58:08');
INSERT INTO `mail` VALUES(255, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>,</p>\r\n<p>Éste es un mensaje enviado desde la plataforma Goteo por parte de quien impulsa el proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span>:</p>\r\n<blockquote>sdaf sda</blockquote>\r\n<p>Te recordamos que puedes acceder a la página de <span class="message-highlight-blue">DINOU Publicació irregular</span> en Goteo desde la siguiente URL: </p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/project/dinou-publicacio-irregular">http://devgoteo.org/project/dinou-publicacio-irregular</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 2, '2011-11-18 16:00:00');
INSERT INTO `mail` VALUES(256, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>,</p>\r\n<p>Éste es un mensaje enviado desde la plataforma Goteo por parte de quien impulsa el proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span>:</p>\r\n<blockquote>sdaf sda</blockquote>\r\n<p>Te recordamos que puedes acceder a la página de <span class="message-highlight-blue">DINOU Publicació irregular</span> en Goteo desde la siguiente URL: </p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/project/dinou-publicacio-irregular">http://devgoteo.org/project/dinou-publicacio-irregular</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 2, '2011-11-18 16:00:40');
INSERT INTO `mail` VALUES(257, 'mexmafia@gmail.com', '<p>Hola <span class="message-highlight-red">Efraín Foglia</span>,</p>\r\n<p>Éste es un mensaje enviado desde la plataforma Goteo por parte de quien impulsa el proyecto <span class="message-highlight-blue">DINOU Publicació irregular</span>:</p>\r\n<blockquote>asdf </blockquote>\r\n<p>Te recordamos que puedes acceder a la página de <span class="message-highlight-blue">DINOU Publicació irregular</span> en Goteo desde la siguiente URL: </p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/project/dinou-publicacio-irregular">http://devgoteo.org/project/dinou-publicacio-irregular</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 2, '2011-11-18 16:02:46');
INSERT INTO `mail` VALUES(258, 'goteo@doukeshi.org', '<br />asdf<br />', 11, '2011-12-06 21:24:36');
INSERT INTO `mail` VALUES(259, 'hola_goteo@doukeshi.org', '<p>Se ha finalizado la edicion de una nueva convocatoria</p><p>El nombre de la convocatoria es: <span class="message-highlight-blue">call2arms</span> <br />y se puede ver en <span class="message-highlight-blue"><a href="http://devgoteo.org/call/call2arms">http://devgoteo.org/call/call2arms</a></span></p>', 0, '2011-12-08 20:50:35');
INSERT INTO `mail` VALUES(260, 'hola_goteo@doukeshi.org', '<p>Se ha finalizado la edicion de la convocatoria <span class="message-highlight-blue">call2arms</span>, se puede ver en <span class="message-highlight-blue"><a href="http://devgoteo.org/call/call2arms">http://devgoteo.org/call/call2arms</a></span></p>', 0, '2011-12-08 20:56:33');
INSERT INTO `mail` VALUES(261, 'hola_goteo@doukeshi.org', '<p>Se ha finalizado la edicion de la convocatoria <span class="message-highlight-blue">call2arms</span>, se puede ver en <span class="message-highlight-blue"><a href="http://devgoteo.org/call/call2arms">http://devgoteo.org/call/call2arms</a></span></p>', 0, '2011-12-08 21:05:08');
INSERT INTO `mail` VALUES(262, 'hola_goteo@doukeshi.org', '<p>Se ha finalizado la edicion de la convocatoria <span class="message-highlight-blue">call2arms</span>, se puede ver en <span class="message-highlight-blue"><a href="http://devgoteo.org/call/call2arms">http://devgoteo.org/call/call2arms</a></span></p>', 0, '2011-12-08 21:10:14');
INSERT INTO `mail` VALUES(263, 'hola_goteo@doukeshi.org', '<p>Se ha finalizado la edicion de la convocatoria <span class="message-highlight-blue">Demo</span>, se puede ver en <span class="message-highlight-blue"><a href="http://devgoteo.org/call/demo">http://devgoteo.org/call/demo</a></span></p>', 0, '2011-12-08 21:47:45');
INSERT INTO `mail` VALUES(264, 'hola_goteo@doukeshi.org', '<p>Se ha finalizado la edicion de la convocatoria <span class="message-highlight-blue">call2arms</span>, se puede ver en <span class="message-highlight-blue"><a href="http://devgoteo.org/call/call2arms">http://devgoteo.org/call/call2arms</a></span></p>', 0, '2011-12-17 13:00:41');
INSERT INTO `mail` VALUES(265, 'gij@doukeshi.org', '<p>Hola <span class="message-highlight-red">Iniciativa Joven</span>!</p>\r\n<p>Gracias por registrarte en Goteo, tu cuenta ha sido creada con éxito :)</p>\r\n<p>Para confirmar tu dirección de correo electrónico y completar el registro, haz clic en el siguiente enlace (o cópialo en la barra de dirección del navegador):</p>\r\n<p><span class="message-highlight-blue"><a href="http://devgoteo.org/user/activate/cb552274f64aa39d2441fb0044d7705d">http://devgoteo.org/user/activate/cb552274f64aa39d2441fb0044d7705d</a></span></p>\r\n<p>Recuerda que tu login es <strong>iniciativa-joven</strong>. Una vez se active tu cuenta podrás acceder a http://goteo.org/ y comenzar a utilizar la plataforma para apoyar o proponer proyectos.</p>\r\n<p>(En caso de que no hayas has solicitado este registro, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 5, '2011-12-17 14:04:48');
INSERT INTO `mail` VALUES(266, 'pepe_1303727124_per@gmail.com', '<p>Hola <span class="message-highlight-red">Olivier</span>,</p>\r\n<p>Gracias por cofinanciar el proyecto <span class="message-highlight-blue">Fixie per tothom</span> con 1 &euro;.</p>\r\n<p>Cuando termine la ronda se ejecutará el cargo en la cuenta especificada</p>\r\n<p>Has elegido las siguientes recompensas: </p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 10, '2011-12-30 18:37:29');
INSERT INTO `mail` VALUES(267, 'diegobus@pelousse.com', '<p>Hola <span class="message-highlight-red">diegobus</span>,</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">Fixie per tothom</span> ha recibido un nuevo aporte de 1 de <span class="message-highlight-red">Olivier</span>. Puedes enviarle un mensaje desde esta pagina <a href="http://devgoteo.org/user/profile/olivier/message">http://devgoteo.org/user/profile/olivier/message</a></p>\r\n<p>Te recordamos que puedes comunicarte con tus cofinanciadres desde tu <span class="message-highlight-blue"><a href="http://devgoteo.org/dashboard">Dashboard</a></span>.</p>\r\n<p>Mucha suerte !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>', 29, '2011-12-30 18:37:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `thread` bigint(20) unsigned DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` text NOT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'No se puede modificar ni borrar',
  `closed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'No se puede responder',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Mensajes de usuarios en proyecto' AUTO_INCREMENT=159 ;

--
-- Volcar la base de datos para la tabla `message`
--

INSERT INTO `message` VALUES(27, 'diegobus', 'fe99373e968b0005e5c2406bc41a3528', NULL, '2011-06-01 12:21:22', 'Espacio taller: Donec ultrices libero in est tincidunt placerat tempor mi mattis. Vestibulum at aliquam lacus. Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. ', 0, 0);
INSERT INTO `message` VALUES(54, 'olivier', 'fe99373e968b0005e5c2406bc41a3528', NULL, '2011-06-19 14:23:43', 'tengo un taller', 0, 0);
INSERT INTO `message` VALUES(75, 'esenabre', 'pliegos', NULL, '2011-07-04 18:26:39', 'Pilas: Dejadmelas :)', 1, 0);
INSERT INTO `message` VALUES(76, 'olivier', '2c667d6a62707f369bad654174116a1e', 56, '2011-07-04 19:32:15', 'gracisa por ofrecerme tu furgo', 0, 0);
INSERT INTO `message` VALUES(77, 'olivier', '2c667d6a62707f369bad654174116a1e', 57, '2011-08-01 14:30:46', '¿tienes pinceles azules?', 0, 0);
INSERT INTO `message` VALUES(78, 'goteo', 'a565092b772c29abc1b92f999af2f2fb', NULL, '2011-08-01 14:30:46', 'Beta-testers y difusores: Son bienvenidas la ayuda de difusión para que mucha gente conozca la  herramienta y participe en las campañas. También se necesitá en determinados momentos hacer pruebas masivas para ver la resistencia de la aplicación. ', 1, 0);
INSERT INTO `message` VALUES(79, 'goteo', 'a565092b772c29abc1b92f999af2f2fb', NULL, '2011-08-01 14:30:46', 'Servidores: Aunque contamos con un servidor, dependiendo del numero de vistas y usuarios de la herramienta, necesitaremos patrocinadores para hacer más fácil el mantenimiento del proyecto y que pueda continuar siendo de uso gratuito.', 1, 0);
INSERT INTO `message` VALUES(80, 'carlaboserman', 'robocicla', NULL, '2011-07-05 19:16:05', 'Traductor: Traductor@ (ingles / portugues / italiano / frances / griego)', 1, 0);
INSERT INTO `message` VALUES(81, 'efoglia', 'nodo-movil', NULL, '2011-08-01 14:30:46', 'Desarrolladores: Desarrolladores de Exo.cat, grupo Manet. Expertos en streaming y telefonía móvil..', 1, 0);
INSERT INTO `message` VALUES(82, 'efoglia', 'nodo-movil', NULL, '2011-08-01 14:30:46', 'Espacio de trabajo: Sala de hackeo / trabajo / reunión. para 10 personas.', 1, 0);
INSERT INTO `message` VALUES(83, 'efoglia', 'nodo-movil', NULL, '2011-08-01 14:30:46', 'Espacio público: Espacio público (accesible para trabajar ).', 1, 0);
INSERT INTO `message` VALUES(87, 'domenico', 'urban-social-design-database', NULL, '2011-07-05 22:55:49', 'Viajero: estudiante becario para viajar por europa y dar a conocer el proyecto', 1, 0);
INSERT INTO `message` VALUES(88, 'domenico', 'urban-social-design-database', NULL, '2011-07-05 22:55:49', 'film maker: film maker', 1, 0);
INSERT INTO `message` VALUES(89, 'domenico', 'urban-social-design-database', NULL, '2011-07-05 22:55:49', 'espacio: plaza de trabajo en oficina compartida', 1, 0);
INSERT INTO `message` VALUES(90, 'domenico', 'urban-social-design-database', NULL, '2011-07-05 22:55:49', 'camara video: camara video', 1, 0);
INSERT INTO `message` VALUES(91, 'domenico', 'urban-social-design-database', NULL, '2011-07-05 22:55:49', 'hosting profesional: hosting profesional', 1, 0);
INSERT INTO `message` VALUES(101, 'acomunes', 'move-commons', NULL, '2011-08-01 14:30:46', 'Diseñador gráfico: Diseñador gráfico', 1, 0);
INSERT INTO `message` VALUES(102, 'acomunes', 'move-commons', NULL, '2011-08-01 14:30:46', 'Traductores a múltiples idiomas (20h/c): Traductores a múltiples idiomas (20h/c)', 1, 0);
INSERT INTO `message` VALUES(103, 'acomunes', 'move-commons', NULL, '2011-07-13 19:58:15', 'Testers: Colectivos', 1, 0);
INSERT INTO `message` VALUES(108, 'demo', 'tutorial-goteo', NULL, '2011-08-01 14:30:46', 'Colaboración en una tarea: Colaboración que requiera una habilidad para una tarea específica (traducciones, gestiones, difusión, etc), ya sea a distancia mediante ordenador o bien presencialmente.', 1, 0);
INSERT INTO `message` VALUES(109, 'demo', 'tutorial-goteo', NULL, '2011-08-01 14:30:46', 'Colaboración en un préstamo: Préstamo temporal de material necesario para el proyecto, o bien de cesión de infraestructuras o espacios por un periodo determinado. También puede implicar préstamos permanentes, o sea regalos :)', 1, 0);
INSERT INTO `message` VALUES(110, 'geraldo', 'canal-alfa', NULL, '2011-08-17 12:55:52', 'Programación extractor: Programación herramientas para la extración de videos', 1, 0);
INSERT INTO `message` VALUES(111, 'geraldo', 'canal-alfa', NULL, '2011-08-17 12:55:52', 'Investigación: Investigación de algoritmos para el reconocimiento automatizado del contenido de vídeos', 1, 0);
INSERT INTO `message` VALUES(112, 'geraldo', 'canal-alfa', NULL, '2011-08-17 12:55:52', 'Programación editor: Programación editor de vídeo online', 1, 0);
INSERT INTO `message` VALUES(113, 'goteo', 'tweetometro', NULL, '2011-08-24 01:35:11', 'Lastima', 0, 0);
INSERT INTO `message` VALUES(114, 'ebaraonap', 'archinhand-architecture-in-your-hand', NULL, '2011-08-24 03:10:28', 'Testers de la herramienta: Estudiantes de arquitectura', 1, 0);
INSERT INTO `message` VALUES(128, 'susana', 'fixie-per-tothom', NULL, '2011-09-02 20:36:22', '<iframe frameborder="0" height="480px" src="http://devgoteo.org/widget/project/fixie-per-tothom/invested/susana" width="250px" scrolling="no"></iframe>', 0, 0);
INSERT INTO `message` VALUES(137, 'olivier', '2c667d6a62707f369bad654174116a1e', NULL, '2011-09-09 15:58:17', 'pincel: pinceles', 1, 0);
INSERT INTO `message` VALUES(138, 'olivier', '2c667d6a62707f369bad654174116a1e', NULL, '2011-09-09 15:58:17', 'alguin q sepa escribir: redactar textos', 1, 0);
INSERT INTO `message` VALUES(139, 'olivier', '2c667d6a62707f369bad654174116a1e', NULL, '2011-09-09 15:58:17', 'nueva colab editada desde el dahboard proyecto BROOKLYN: a ver si se ve', 1, 0);
INSERT INTO `message` VALUES(140, 'olivier', '2c667d6a62707f369bad654174116a1e', NULL, '2011-09-09 15:58:17', 'ayuda para poner en marcha este ajax!!!: ayuda para poner en marcha este ajax!!!', 1, 0);
INSERT INTO `message` VALUES(141, 'olivier', '2c667d6a62707f369bad654174116a1e', NULL, '2011-09-09 15:58:17', 'Nueva tarea: una tarea guay', 1, 0);
INSERT INTO `message` VALUES(142, 'olivier', '2c667d6a62707f369bad654174116a1e', NULL, '2011-09-09 15:58:17', 'TAREA DESDE DASHBOAR: FUNCIONA', 1, 0);
INSERT INTO `message` VALUES(143, 'demo', 'tweetometro', NULL, '2011-09-09 17:44:04', 'Beta-testers y difusores : Son bienvenidas la ayuda de difusión para que mucha gente conozca la herramienta y participe en las campañas. También se necesitará en determinados momentos hacer pruebas masivas para ver la resistencia de la aplicación. ', 1, 0);
INSERT INTO `message` VALUES(144, 'demo', 'tweetometro', NULL, '2011-09-09 17:44:04', 'Servidores: Aunque contamos con un servidor, dependiendo del numero de vistas y usuarios de la herramienta, necesitaremos "patrocinadores" en espacio web para hacer más fácil el mantenimiento del proyecto y que pueda continuar siendo de uso gratuito.', 1, 0);
INSERT INTO `message` VALUES(147, 'goteo', 'fixie-per-tothom', NULL, '2011-09-20 19:21:29', 'Donec ultrices libero in est tincidunt placerat tempor mi mattis. Vestibulum at aliquam lacus. Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. ', 0, 0);
INSERT INTO `message` VALUES(148, 'goteo', 'tweetometro', NULL, '2011-09-20 22:00:26', 'df gsdfg sdf ', 0, 0);
INSERT INTO `message` VALUES(150, 'itxaso', 'mi-barrio', NULL, '2011-09-23 16:20:53', 'Diseñadores: Diseñadores web, espertos en redes sociales', 1, 0);
INSERT INTO `message` VALUES(151, 'itxaso', 'mi-barrio', NULL, '2011-09-23 16:20:54', 'Aulas para talleres: Aulas para talleres', 1, 0);
INSERT INTO `message` VALUES(152, 'goteo', 'goteo', NULL, '2011-10-10 19:58:55', 'Nueva colaboración: asdf asdf', 1, 0);
INSERT INTO `message` VALUES(153, 'goteo', 'goteo', NULL, '2011-09-24 18:39:03', 'Nueva colaboración: asdf asdf ', 1, 0);
INSERT INTO `message` VALUES(154, 'goteo', 'fixie-per-tothom', NULL, '2011-09-25 08:39:44', ' sadf asdf asdf ', 0, 0);
INSERT INTO `message` VALUES(157, 'diegobus', 'fixie-per-tothom', NULL, '2011-11-08 18:56:14', 'Espacio taller: Donec ultrices libero in est tincidunt placerat tempor mi mattis. Vestibulum at aliquam lacus. Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. ', 1, 0);
INSERT INTO `message` VALUES(158, 'diegobus', 'dinou-publicacio-irregular', NULL, '2011-12-17 13:02:12', 'Nueva colaboración: ', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_lang`
--

DROP TABLE IF EXISTS `message_lang`;
CREATE TABLE `message_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `message` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `message_lang`
--

INSERT INTO `message_lang` VALUES(137, 'ca', 'catcatcatcatcatcatcatcatcatcatcat: catcatcatcatcatcatcat');
INSERT INTO `message_lang` VALUES(138, 'ca', 'advsdvbasdb: basdbadsf sadfadsf ');
INSERT INTO `message_lang` VALUES(139, 'ca', 'CAT! nueva colab editada desde el dahboard proyecto BROOKLYN : CATT!! a ver si se ve a ver si se ve a ver si se ve ');
INSERT INTO `message_lang` VALUES(157, 'en', 'ENG Espacio taller: ENG Donec ultrices libero in est tincidunt placerat tempor mi mattis. Vestibulum at aliquam lacus. Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `description` text COMMENT 'Entradilla',
  `url` tinytext NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Noticias en la cabecera' AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `news`
--

INSERT INTO `news` VALUES(1, '"El crowdfunding como caballo de Troya del procomún". Post en CCCBlab', '¿Cómo crecer en un ecosistema de tanta competencia en la atención global, tantas plataformas de crowdfunding aspirando a captar fondos de los usuarios? Especializándose en un objetivo concreto: Goteo permite financiar exclusivamente proyectos que ofrezcan algún tipo de retorno colectivo. Que estén regidos total o parcialmente por licencias copyleft, como las de Creative Commons o similares, y por tanto que se pueda aprender sobre cómo han sido hechos y también remezclarlos, incorporarlos a un proceso o producto diferente.', 'http://t.co/BQESb7T', 2);
INSERT INTO `news` VALUES(2, 'asdf asdf asdf asdf asdf asdf ', 'asd fasdf asdf asdf asdf asdf as df asdf asdf asdf asdf a', 'http://goteo.org', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news_lang`
--

DROP TABLE IF EXISTS `news_lang`;
CREATE TABLE `news_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  `url` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `news_lang`
--

INSERT INTO `news_lang` VALUES(1, 'en', 'ENG "El crowdfunding como caballo de Troya del procomún". Post en CCCBlab', 'ENG ¿Cómo crecer en un ecosistema de tanta competencia en la atención global, tantas plataformas de crowdfunding aspirando a captar fondos de los usuarios? Especializándose en un objetivo concreto: Goteo permite financiar exclusivamente proyectos que ofrezcan algún tipo de retorno colectivo. Que estén regidos total o parcialmente por licencias copyleft, como las de Creative Commons o similares, y por tanto que se pueda aprender sobre cómo han sido hechos y también remezclarlos, incorporarlos a un proceso o producto diferente.', NULL);
INSERT INTO `news_lang` VALUES(2, 'en', 'ENG asdf asdf asdf asdf asdf asdf ', 'ENG asd fasdf asdf asdf asdf asdf as df asdf asdf asdf asdf a', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `node`
--

DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `id` varchar(50) NOT NULL,
  `name` varchar(256) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Nodos';

--
-- Volcar la base de datos para la tabla `node`
--

INSERT INTO `node` VALUES('goteo', 'Master node', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` varchar(50) NOT NULL,
  `name` tinytext NOT NULL,
  `description` text,
  `url` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Páginas institucionales';

--
-- Volcar la base de datos para la tabla `page`
--

INSERT INTO `page` VALUES('about', 'Sobre Goteo', 'Sobre Goteo', '/about');
INSERT INTO `page` VALUES('beta', 'Betatesteig', 'Uep idó!!! Testeig, que te pareig', '/about/beta');
INSERT INTO `page` VALUES('call', 'Condiciones convocatoria', 'Condiciones para crear convocatoria', '/about/call');
INSERT INTO `page` VALUES('campaign', 'Servicio Campañas', 'Descripción de servicio de campañas', '/service/campaign');
INSERT INTO `page` VALUES('community', 'Comunidad Goteo', 'Contenido seccion comunidad', '/community');
INSERT INTO `page` VALUES('consulting', 'Servicio Consultoría', 'Descripción de servicio de consultoría', '/service/consulting');
INSERT INTO `page` VALUES('contact', 'Contacto', 'Pagina de <span class="red">contacto</span>', '/contact');
INSERT INTO `page` VALUES('credits', 'Créditos', 'Créditos', '/about/credits');
INSERT INTO `page` VALUES('dashboard', 'Bienvenida', 'Texto de bienvenida en el dashboard', '/dashboard');
INSERT INTO `page` VALUES('howto', 'Instrucciones', 'Instrucciones para ser productor', '/about/howto');
INSERT INTO `page` VALUES('legal', 'Legales', 'Términos legales de Goteo', '/about/legal');
INSERT INTO `page` VALUES('news', 'Noticias', 'Pagina de noticias', '/news');
INSERT INTO `page` VALUES('press', 'Press kit', 'Kit de prensaaaa', '/press');
INSERT INTO `page` VALUES('privacy', 'Política de privacidad', 'Política de privacidad', '/legal/privacy');
INSERT INTO `page` VALUES('resources', 'Servicio Capital Riego', 'Capital Riego', '/service/resources');
INSERT INTO `page` VALUES('service', 'Servicios', 'General de servicios', '/service');
INSERT INTO `page` VALUES('team', 'Equipo', 'Sobre la gente detrás de Goteo', '/about/team');
INSERT INTO `page` VALUES('terms', 'Condiciones de uso', 'Condiciones de uso', '/legal/terms');
INSERT INTO `page` VALUES('workshop', 'Servicio Talleres', 'Descripción de servicio de talleres', '/service/workshop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_lang`
--

DROP TABLE IF EXISTS `page_lang`;
CREATE TABLE `page_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext NOT NULL,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `page_lang`
--

INSERT INTO `page_lang` VALUES('beta', 'ca', 'Betatesteig', 'Uep idó!!! Testeig, que te pareig');
INSERT INTO `page_lang` VALUES('community', 'en', 'Goteo community', 'Contenido seccion comunidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_node`
--

DROP TABLE IF EXISTS `page_node`;
CREATE TABLE `page_node` (
  `page` varchar(50) NOT NULL,
  `node` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `content` longtext,
  UNIQUE KEY `page` (`page`,`node`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contenidos de las paginas';

--
-- Volcar la base de datos para la tabla `page_node`
--

INSERT INTO `page_node` VALUES('about', 'goteo', 'es', '<p>\r\n	<span id="AMA22-1" style="font-weight: bold;">Qu&eacute; es Goteo</span></p>\r\n<p>\r\n	Existen cada vez m&aacute;s proyectos desarrollados por agentes creativos, que superan el &aacute;mbito convencional de la Cultura. Proyectos con un alto componente de innovaci&oacute;n, con un gran potencial de incidencia social y econ&oacute;mica, con capacidad de crecimiento y reproducci&oacute;n, para generar valor en el sentido m&aacute;s amplio de la palabra. Pero en el estado espa&ntilde;ol siguen faltando canales de comunicaci&oacute;n-relaci&oacute;n entre las personas creativas, los agentes sociales y culturales y posibles microdonantes e inversores. Seguimos supeditados a canales convencionales como la subvenci&oacute;n o el patrocinio, que necesitan ser repensados.<br />\r\n	Ese es el objetivo de GOTEO, constituirse en ese canal. Una plataforma en red, que ponga en relaci&oacute;n, de un modo eficiente y transparente, a diversos agentes p&uacute;blicos y privados con distintas funciones; que aglutine necesidades y posibles soluciones; y que facilite un cat&aacute;logo de fuentes de financiaci&oacute;n, infraestructuras y otros recursos.</p>\r\n');
INSERT INTO `page_node` VALUES('beta', 'goteo', 'ca', '<h3>\r\n	Explicaci&oacute;n</h3>\r\n<p>\r\n	Estamos en fase beta de testeo y los aportes son de prueba. Solamente usuarios betatesters pueden realizar aportes de prueba.</p>\r\n');
INSERT INTO `page_node` VALUES('beta', 'goteo', 'es', '<h3>\r\n	Explicaci&oacute;n</h3>\r\n<p>\r\n	Estamos en fase beta de testeo y los aportes son de prueba. Solamente usuarios betatesters pueden realizar aportes de prueba.</p>\r\n');
INSERT INTO `page_node` VALUES('call', 'goteo', 'es', '<h3>\r\n	4 condiciones y 2 requisitos para proponer un proyecto</h3>\r\n<p>\r\n	Goteo es una plataforma para apoyar proyectos de emprendedores, innovadores sociales y creativos que tengan entre sus objetivos, formato y/o resultado final, de forma total o significativa, alg&uacute;n tipo de retorno colectivo regido por una licencia libre o abierta (por ejemplo Creative Commons o GPL).</p>\r\n<p>\r\n	Esto es, proyectos con &quot;ADN abierto&quot; en los que se comparte informaci&oacute;n, conocimiento, contenidos digitales y/u otros recursos relacionados con la actividad para la que se busca financiaci&oacute;n.<br />\r\n	<br />\r\n	Goteo se gu&iacute;a por las siguientes condiciones y requisitos, que debes conocer si quieres proponer un proyecto para que opte a ser cofinanciado y recibir la ayuda de la comunidad de Goteo. Si necesitas m&aacute;s informaci&oacute;n sobre cualquiera de los siguientes puntos te recomendamos leer <a href="http://beta.goteo.org/faq#q25">nuestras FAQ</a>.</p>\r\n<p>\r\n	<strong>Condiciones</strong></p>\r\n<p>\r\n	<strong>1.</strong> Cuando mi proyecto ofrezca recompensas individuales a cambio de aportaciones econ&oacute;micas determinadas, deber&eacute; cumplir con el compromiso establecido con la plataforma y mis cofinanciadores en caso de obtener la financiaci&oacute;n m&iacute;nima solicitada.<br />\r\n	<br />\r\n	<strong>2</strong>. Deber&eacute; cumplir igualmente con el compromiso de publicar los retornos colectivos prometidos, enlaz&aacute;ndolos desde la plataforma Goteo bajo la licencia elegida en el momento de solicitar la financiaci&oacute;n, en cumplimiento de un contrato legal con la Fundaci&oacute;n Goteo.<br />\r\n	<br />\r\n	<strong>3.</strong> Solicitar&eacute; una cofinanciaci&oacute;n m&iacute;nima para llevar a cabo el proyecto y otra &oacute;ptima. La recaudaci&oacute;n de la cofinanciaci&oacute;n m&iacute;nima coincidir&aacute; con el inicio de la producci&oacute;n, sobre la que deber&eacute; ir informando peri&oacute;dicamente, lo que me permitir&aacute; emprender una segunda ronda de cofinanciaci&oacute;n hasta llegar a la financiaci&oacute;n &oacute;ptima. &nbsp;<br />\r\n	<br />\r\n	<strong>4</strong>. La finalidad del proyecto no es la venta encubierta de productos o servicios ya producidos, ni de financiar campa&ntilde;as de beneficencia, pol&iacute;ticas o de cualquier otro tipo, ni delictiva o para atentar contra la dignidad de las personas.</p>\r\n<p>\r\n	<strong>Requisitos</strong></p>\r\n<ul>\r\n	<li>\r\n		Soy mayor de 18 a&ntilde;os.</li>\r\n	<li>\r\n		Dispongo de una cuenta bancaria en Espa&ntilde;a.</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<form action="/call/create" method="post">\r\n<p><label>Ponga un identificador: (aparecerá en la url de su convocatoria)<br />\r\n<input type="text" name="name" value="" /></label></p>\r\n	<input class="checkbox" id="create_accept" name="confirm" type="checkbox" value="true" /> <label class="unselected" for="create_accept">He leido y entiendo las instrucciones para crear un proyecto en Goteo.</label><br />\r\n	<button class="disabled" disabled="disabled" id="create_continue" name="action" type="submit" value="continue">Continuar</button></form>\r\n<p>\r\n	&nbsp;</p>\r\n');
INSERT INTO `page_node` VALUES('community', 'goteo', 'en', '<p>\r\n	The Goteo community</p>\r\n');
INSERT INTO `page_node` VALUES('community', 'goteo', 'es', 'Contenido seccion comunidad');
INSERT INTO `page_node` VALUES('contact', 'goteo', 'es', '<p>\r\n	Texto explicativo en la p&aacute;gina de contacto. Se gestiona desde las p&aacute;ginas institucionales</p>\r\n');
INSERT INTO `page_node` VALUES('credits', 'goteo', 'es', '<p>\r\n	Desarrollado por <a href="http://onliners-web.com" target="_blank" title="Onliners Web Development">Onliners Web Development</a></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n\r\n<iframe src="http://blip.tv/play/hKxHgtHRewI.html" width="550" height="340" frameborder="0" allowfullscreen></iframe><embed type="application/x-shockwave-flash" src="http://a.blip.tv/api.swf#hKxHgtHRewI" style="display:none"></embed>');
INSERT INTO `page_node` VALUES('dashboard', 'goteo', 'ca', '<p>\r\n	Uep %USER_NAME%,<br />\r\n	benvingut al teu panell d&#39;usuari.</p>\r\n<p>\r\n	Desde aqu&iacute; podr&aacute;s administrar la informaci&oacute;n p&uacute;blica de tu perfil y de tu proyecto, a modo de centro de operaciones para dinamizarlo y gestionarlo. Se pueden publicar novedades sobre los avances del proyecto, a&ntilde;adir fotos y v&iacute;deos, clasificar las aportaciones de los cofinanciadores y gestionar los env&iacute;os de las recompensas individuales.<br />\r\n	<br />\r\n	Ese panel de control tambi&eacute;n permite ver toda la informaci&oacute;n detallada sobre c&oacute;mo evoluciona la recaudaci&oacute;n y los apoyos recibidos, y posteriormente comunicarse con los usuarios que hayan cofinanciado el proyecto.</p>\r\n');
INSERT INTO `page_node` VALUES('dashboard', 'goteo', 'es', '<p>\r\n	Hola %USER_NAME%,<br />\r\n	bienvenido a tu panel.</p>\r\n<p>\r\n	Desde aqu&iacute; podr&aacute;s administrar la informaci&oacute;n p&uacute;blica de tu perfil y de tu proyecto, a modo de centro de operaciones para dinamizarlo y gestionarlo. Se pueden publicar novedades sobre los avances del proyecto, a&ntilde;adir fotos y v&iacute;deos, clasificar las aportaciones de los cofinanciadores y gestionar los env&iacute;os de las recompensas individuales.<br />\r\n	<br />\r\n	Ese panel de control tambi&eacute;n permite ver toda la informaci&oacute;n detallada sobre c&oacute;mo evoluciona la recaudaci&oacute;n y los apoyos recibidos, y posteriormente comunicarse con los usuarios que hayan cofinanciado el proyecto.</p>\r\n');
INSERT INTO `page_node` VALUES('howto', 'goteo', 'es', '<h3>\r\n	4 condiciones y 2 requisitos para proponer un proyecto</h3>\r\n<p>\r\n	Goteo es una plataforma para apoyar proyectos de emprendedores, innovadores sociales y creativos que tengan entre sus objetivos, formato y/o resultado final, de forma total o significativa, alg&uacute;n tipo de retorno colectivo regido por una licencia libre o abierta (por ejemplo Creative Commons o GPL).</p>\r\n<p>\r\n	Esto es, proyectos con &quot;ADN abierto&quot; en los que se comparte informaci&oacute;n, conocimiento, contenidos digitales y/u otros recursos relacionados con la actividad para la que se busca financiaci&oacute;n.<br />\r\n	<br />\r\n	Goteo se gu&iacute;a por las siguientes condiciones y requisitos, que debes conocer si quieres proponer un proyecto para que opte a ser cofinanciado y recibir la ayuda de la comunidad de Goteo. Si necesitas m&aacute;s informaci&oacute;n sobre cualquiera de los siguientes puntos te recomendamos leer <a href="http://beta.goteo.org/faq#q25">nuestras FAQ</a>.</p>\r\n<p>\r\n	<strong>Condiciones</strong></p>\r\n<p>\r\n	<strong>1.</strong> Cuando mi proyecto ofrezca recompensas individuales a cambio de aportaciones econ&oacute;micas determinadas, deber&eacute; cumplir con el compromiso establecido con la plataforma y mis cofinanciadores en caso de obtener la financiaci&oacute;n m&iacute;nima solicitada.<br />\r\n	<br />\r\n	<strong>2</strong>. Deber&eacute; cumplir igualmente con el compromiso de publicar los retornos colectivos prometidos, enlaz&aacute;ndolos desde la plataforma Goteo bajo la licencia elegida en el momento de solicitar la financiaci&oacute;n, en cumplimiento de un contrato legal con la Fundaci&oacute;n Goteo.<br />\r\n	<br />\r\n	<strong>3.</strong> Solicitar&eacute; una cofinanciaci&oacute;n m&iacute;nima para llevar a cabo el proyecto y otra &oacute;ptima. La recaudaci&oacute;n de la cofinanciaci&oacute;n m&iacute;nima coincidir&aacute; con el inicio de la producci&oacute;n, sobre la que deber&eacute; ir informando peri&oacute;dicamente, lo que me permitir&aacute; emprender una segunda ronda de cofinanciaci&oacute;n hasta llegar a la financiaci&oacute;n &oacute;ptima. &nbsp;<br />\r\n	<br />\r\n	<strong>4</strong>. La finalidad del proyecto no es la venta encubierta de productos o servicios ya producidos, ni de financiar campa&ntilde;as de beneficencia, pol&iacute;ticas o de cualquier otro tipo, ni delictiva o para atentar contra la dignidad de las personas.</p>\r\n<p>\r\n	<strong>Requisitos</strong></p>\r\n<ul>\r\n	<li>\r\n		Soy mayor de 18 a&ntilde;os.</li>\r\n	<li>\r\n		Dispongo de una cuenta bancaria en Espa&ntilde;a.</li>\r\n</ul>\r\n<p>\r\n<form action="/project/create" method="post">\r\n<input class="checkbox" id="create_accept" name="confirm" type="checkbox" value="true" /> <label class="unselected" for="create_accept">He leido y entiendo las instrucciones para crear un proyecto en Goteo.</label><br />\r\n<button class="disabled" disabled="disabled" id="create_continue" name="action" type="submit" value="continue">Continuar</button>\r\n</form>\r\n</p>\r\n');
INSERT INTO `page_node` VALUES('press', 'goteo', 'es', '<p>\r\n	Kit de prensaaaa Kit de prensaaaa Kit de prensaaaa Kit de prensaaaa Kit de prensaaaa Kit de prensaaaa Kit de prensaaaa Kit de prensaaaa</p>\r\n');
INSERT INTO `page_node` VALUES('privacy', 'goteo', 'es', '<p>\r\n	Pol&iacute;tica de privacidad</p>\r\n');
INSERT INTO `page_node` VALUES('terms', 'goteo', 'es', '<p>\r\n	Condiciones de uso</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog` bigint(20) unsigned NOT NULL,
  `title` tinytext,
  `text` longtext COMMENT 'texto de la entrada',
  `media` tinytext,
  `image` int(10) DEFAULT NULL,
  `date` date NOT NULL COMMENT 'fehca de publicacion',
  `order` int(11) DEFAULT '1',
  `allow` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Permite comentarios',
  `home` tinyint(1) DEFAULT '0' COMMENT 'para los de portada',
  `footer` tinyint(1) DEFAULT '0' COMMENT 'Para los del footer',
  `publish` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Publicado',
  `legend` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Entradas para la portada' AUTO_INCREMENT=26 ;

--
-- Volcar la base de datos para la tabla `post`
--

INSERT INTO `post` VALUES(1, 1, '¿Porque goteo es diferente?', '<p>\r\n	Goteo se distingue principalmente de otras plataformas de financiaci&oacute;n colectiva por su apuesta diferencial y focalizada en proyectos de &ldquo;c&oacute;digo abierto&rdquo; en un sentido amplio. Esto es, que compartan conocimiento, procesos, resultado, responsabilidad o beneficio, desde la filosof&iacute;a del procom&uacute;n. Porque Goteo pone el acento en la esfera p&uacute;blica, apoyando proyectos que favorezcan el empoderamiento colectivo y el bien com&uacute;n. Es crowdfunding para gente que busque la rentabilidad social de las inversiones efectuadas, haciendo viables los proyectos para sus promotores pero tambi&eacute;n el retorno colectivo para la comunidad (en paralelo a contraprestaciones individuales). Estos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al c&oacute;digo fuente, a productos y recursos, a formaci&oacute;n a trav&eacute;s de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios econ&oacute;micamente sostenibles. Otra peculiaridad de Goteo es que permite recaudar fondos m&iacute;nimos, por un lado, para arrancar los proyectos, y por otro fondos &oacute;ptimos para fases posteriores, tal como explicamos un par de FAQs m&aacute;s arriba. Tambi&eacute;n el hecho de que pueda funcionar y ser administrada de manera aut&oacute;noma por nodos tem&aacute;ticos o geogr&aacute;ficos distribuidos geogr&aacute;ficamente, como detallamos otras FAQ m&aacute;s abajo. O que permita inversiones puntuales de entidades que deseen generar as&iacute; una especie de bote, a repartir seg&uacute;n el criterio de una comunidad de expertos entre proyectos de un nodo determinado. &iquest;M&aacute;s diferencias con otras plataformas? &Eacute;sta se aplica su propia receta y tambi&eacute;n est&aacute; disponible con su propia licencia copyleft, as&iacute; como su c&oacute;digo fuente (para quien prefiera descargarse la herramienta y adaptarla a sus necesidades de crowdfunding). Tambi&eacute;n estamos trabajando en otras especificaciones, como un panel de seguimiento detallado de fondos obtenidos, para aumentar la transparencia sobre d&oacute;nde acaba lo recaudado, o una tarifa plana para micromecenas compulsivos. Estos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al c&oacute;digo fuente, a productos y recursos, a formaci&oacute;n a trav&eacute;s de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios econ&oacute;micamente sostenibles.</p>\r\n', '', NULL, '2011-06-08', 1, 0, 0, 0, 1, '');
INSERT INTO `post` VALUES(3, 1, 'Goteo es una comunidad de comunidades', '<p>\r\n	Goteo es una comunidad de comunidades -cuyo nexo de uni&oacute;n es el inter&eacute;s por el fortalecimiento del procom&uacute;n-, que se articulan en torno a una plataforma digital en internet. Un sistema distribuido de comunidades locales y/o tem&aacute;ticas, especialistas, legitimadas, con un importante calado social, referentes en su &aacute;mbito de actuaci&oacute;n. Estas comunidades constituyen una red fundamental de nodos de confianza, que sirven para localizar lo digital, aportando proximidad y especificidad, multiplicando el efecto de la plataforma.</p>\r\n', '', NULL, '2011-08-10', 1, 1, 0, 0, 1, '');
INSERT INTO `post` VALUES(4, 1, 'Goteo. Codiseño con la comunidad', 'Texto pendiente sobre el papel de los talleres en el desarollo de Goteo', '', NULL, '2011-06-06', NULL, 0, 0, 0, 1, NULL);
INSERT INTO `post` VALUES(16, 6, 'Primera actualización desde el dashboard', 'aui viene el lorem ipsum famoso. Phasellus vulputate dolor sit amet nulla mollis quis ultricies ante lobortis. Fusce euismod hendrerit nunc vitae bibendum. Vestibulum a mauris non ipsum bibendum dignissim. Sed auctor ligula eget nunc laoreet consequat. Sed blandit faucibus fermentum. Morbi laoreet augue ut augue ullamcorper gravida tincidunt justo laoreet. Proin commodo, sem sit amet accumsan pharetra, felis magna pretium est, vitae dictum leo leo faucibus sem. Pellentesque malesuada condimentum lectus et placerat. Proin ullamcorper leo sed erat mattis dictum. Vestibulum consequat, neque vel ultrices lacinia, tortor nibh sodales quam, nec faucibus velit tortor id lacus. Integer posuere felis metus, ut tincidunt enim. Nulla mattis ante in justo aliquet cursus. Quisque commodo, tortor id porta sollicitudin, justo justo pharetra purus, sed consequat lectus enim sit amet lectus. Sed in ipsum eros, rutrum commodo dui. Nulla sem dolor, laoreet mollis hendrerit id, fermentum eget arcu.<br /><br />\r\n<br /><br />\r\nNulla vitae urna arcu. Integer ac lacus quis magna eleifend facilisis. Etiam vehicula condimentum odio id elementum. Nunc porta molestie viverra. Etiam eget justo leo. Vestibulum non urna a risus interdum malesuada in id velit. Etiam faucibus, sem vel convallis consequat, neque nunc consectetur elit, ut dapibus libero libero et mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nibh purus, id feugiat ante. Donec vel velit leo, ac cursus risus. Pellentesque feugiat dui sit amet libero sagittis id tincidunt nulla tincidunt. Etiam libero diam, vulputate sit amet viverra a, mattis eget diam. Pellentesque habitan', '', NULL, '2011-07-08', 1, 1, 0, 0, 1, '');
INSERT INTO `post` VALUES(17, 6, 'segunda publicación desde dashboard con video', 'Phasellus vulputate dolor sit amet nulla mollis quis ultricies ante lobortis. Fusce euismod hendrerit nunc vitae bibendum. Vestibulum a mauris non ipsum bibendum dignissim. Sed auctor ligula eget nunc laoreet consequat. Sed blandit faucibus fermentum. Morbi laoreet augue ut augue ullamcorper gravida tincidunt justo laoreet. Proin commodo, sem sit amet accumsan pharetra, felis magna pretium est, vitae dictum leo leo faucibus sem. Pellentesque malesuada condimentum lectus et placerat. Proin ullamcorper leo sed erat mattis dictum. Vestibulum consequat, neque vel ultrices lacinia, tortor nibh sodales quam, nec faucibus velit tortor id lacus. Integer posuere felis metus, ut tincidunt enim. Nulla mattis ante in justo aliquet cursus. Quisque commodo, tortor id porta sollicitudin, justo justo pharetra purus, sed consequat lectus enim sit amet lectus. Sed in ipsum eros, rutrum commodo dui. Nulla sem dolor, laoreet mollis hendrerit id, fermentum eget arcu.\r\n\r\nNulla vitae urna arcu. Integer ac lacus quis magna eleifend facilisis. Etiam vehicula condimentum odio id elementum. Nunc porta molestie viverra. Etiam eget justo leo. Vestibulum non urna a risus interdum malesuada in id velit. Etiam faucibus, sem vel convallis consequat, neque nunc consectetur elit, ut dapibus libero libero et mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nibh purus, id feugiat ante. Donec vel velit leo, ac cursus risus. Pellentesque feugiat dui sit amet libero sagittis id tincidunt nulla tincidunt. Etiam libero diam, vulputate sit amet viverra a, mattis eget diam. Pellentesque habitan', 'http://vimeo.com/26125187', NULL, '2011-07-08', 1, 1, 0, 0, 1, '');
INSERT INTO `post` VALUES(21, 1, 'El taller "Goteo, cultura de la financiación colectiva" sigue rodando', 'El taller "Goteo, cultura de la financiación colectiva (crowdfunding)" sigue rodando.\r\nEl taller Goteo ofrece información teórica sobre las diferentes tipologías de financiación colectiva, acercando de forma dinámica y atractiva al crowdfunding como estrategia de interés tanto para la financiación como para la difusión y generación de comunidad.\r\n\r\nPróxima parada: 24 de junio en Cáceres en el Centro de Conocimiento AldealabC3, edificio Embarcadero.\r\nCómo apuntarse: (plazas limitadas)\r\n609 519 493 (coordinadora Chon Muñoz)\r\n\r\nOrganiza:\r\nProyecto Fénix. Factoría de la Innovación/ Ayuntamiento de Cáceres / Concejalía de Innovación, Fomento y Desarrollo\r\nTecnológico.\r\n\r\nCon la colaboración del Gabinete del Iniciativa Joven de Extremadura.\r\n\r\nEl crowdfunding ha surgido muy recientemente en España y en pocos meses ha demostrado ser una eficaz alternativa de financiación de proyectos. Pero al mismo tiempo tiene efectos secundarios altamente interesantes para el ámbito cultural/social y de TICs, como la generación de comunidades de interés y la capacidad de generar expectativas de forma previa a la presentación final del proyecto.\r\n\r\nLa duración del taller es de cuatro horas, que se distribuyen en dos partes:\r\n\r\na) exposición del intensivo estudio realizado por Platoniq sobre diferentes tipologías de plataformas, diferenciando\r\nmicrofinanciación, financiación colectiva (crowdfunding) y préstamos p2p.\r\n\r\nb) parte práctica en la que se experimenta la financiación colectiva de una serie de proyectos reales. Esta parte práctica escenifica en modo "analógico" cómo funciona una plataforma de crowdfunding a través de dinámicas participativas.\r\n\r\nGracias a ellas es posible comprobar aspectos clave como pueden ser criterios de evaluación o cómo hacer atractivos proyectos. Para ello se han elaborado herramientas como barómetros de valoración de proyectos a partir de indicadores como el grado de innovación, nivel de proximidad, coherencia, etc., con los que interactuarán los participantes.\r\n\r\n-> Más sobre el taller:\r\n\r\nhttp://youcoop.org/es/goteo/p/5/goteo-workshop-cultura-de-la-microfinanciacion/\r\n\r\n-> Más sobre la cultura del crowdfunding en nuestro colaboratorio:\r\nYOUCOOP.ORG\r\n\r\nhttp://www.youcoop.org/goteo\r\n\r\n-> Más sobre contextos en los que ya se ha realizado el taller:\r\n\r\n1) CCCB. Barcelona:\r\n\r\nhttp://www.cccb.org/es/curs_o_conferencia-i_c_i_econom_a_distribuida-33719\r\n\r\nhttp://www.flickr.com/photos/cccb/sets/72157625471082121/\r\n\r\n2) MATADERO. Madrid:\r\n\r\nhttp://www.mataderomadrid.org/ficha/768/goteo-cultura-de-la-financiacion-colectiva.html\r\n\r\n3) DIA DE LA PERSONA EMPRENDEDORA. BILBAO:\r\n\r\nhttp://eutokia.org/2011/05/taller-goteo-platoniq-x-edicion-dia-de-la-persona-emprendedora-2011-05-05/\r\n\r\n4) ESCUELA DE VERANO DE LA RED DE TEATROS. ALMAGRO:\r\n\r\nhttp://www.redescueladeverano.es/2011/programa_de_cursos/ficha.php?id=55\r\n', '', NULL, '2011-07-26', 1, 0, 0, 0, 1, 'Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video Esta es la leyenda del video ');
INSERT INTO `post` VALUES(22, 1, 'Artesanía DIY y micro producciones: makers "tradicionales"', '<p>\r\n	Adem&aacute;s del Open Hardware, hay otra movimiento desde abajo hacia arriba (bottom-up) que crece aunque lentamente: el mundo del hazlo t&uacute; mismo, h&aacute;galo usted mismo o bricolaje, abreviado como HTM, HUM (Do-It-Yourself o DIY en Ingl&eacute;s) y de las micro empresas de dise&ntilde;o de moda y de productos de artesan&iacute;a. Hay muchas personas que dise&ntilde;an y producen productos hechos a mano, ropa, bolsos y accesorios; la mayor&iacute;a de ellos lo consideran como un pasatiempo, pero un n&uacute;mero creciente de personas est&aacute;n tratando de ganarse la vida a trav&eacute;s de &eacute;l, ya sea solos empezando como hobby (DIY) o en peque&ntilde;os grupos intentando montar peque&ntilde;as empresas de moda (micro producciones). No es una nueva tendencia en realidad: la cultura DIY se remonta a los a&ntilde;os 60 y 70, y la artesania ha existido siempre, aunque fue casi sustituida por las f&aacute;bricas y por la fabricaci&oacute;n a gran escala desde la Revoluci&oacute;n Industrial (por lo menos en la mayor&iacute;a de los pa&iacute;ses desarrollados). Aunque a primera vista el mundo de la Artesan&iacute;a DIY parece no estar muy relacionado con la cultura abierta, al menos tradicionalmente, est&aacute; cada vez m&aacute;s aprendiendo y adoptando herramientas y procesos de ella, incluyendo nuevas tecnolog&iacute;as como el hardware (como el proyecto de Open Hardware Lilypad Arduino,por ejemplo). Como Tim O&#39;Reilly inform&oacute; en el 2008, el movimiento Open Source pone de relieve c&oacute;mo las comunidades puedan compartir conocimientos y aprovecharlos y el mundo del DIY est&aacute; adoptando esta actitud ahora mismo. Seg&uacute;n &eacute;l, el movimiento Maker no abarca s&oacute;lo el DIY, sino que es la forma a trav&eacute;s de la cual la inform&aacute;tica (el computing) participa en el mundo f&iacute;sico en lugar de lo virtual, y esto ser&aacute; el gran negocio del ma&ntilde;ana. El Open Hardware, la Artesan&iacute;a DIY, las peque&ntilde;as empresas de moda, el Open Design convergen cada vez con mayor &eacute;xito en un mayor movimiento informal de Makers (o fabricadores), que consiste en todas las personas que aprenden a hacer y comparten este conocimiento en comunidades. Un n&uacute;mero cada vez mayor de documentales, libros, revistas, tutoriales, conferencias sobre la gesti&oacute;n de proyectos de Artesan&iacute;a DIY se ha hecho disponible desde hace algunos a&ntilde;os. Tal vez una de las razones del &eacute;xito de este movimiento es la recesi&oacute;n economica, que ha empujado la l&iacute;nea entre lo que se produce en casa y lo que se compra en las tiendas. De todos modos, la venta de consultor&iacute;a o de servicios de apoyo o de contenido es el primer modelo de negocio para la Artesan&iacute;a DIY. http://www.youtube.com/v/zH2HWPfwpOw?fs=1&amp;hl=it_IT La pirater&iacute;a como un modelo de negocio com&uacute;n para el dise&ntilde;o de moda Los modelos de negocio de dise&ntilde;o de moda suelen adoptar una forma secreta, que tiene una conexi&oacute;n directa con la cultura abierta y que pueden ser &uacute;tiles para la construcci&oacute;n de nuevos modelos de negocio para la Artesan&iacute;a DIY: la pirater&iacute;a. Al igual que las empresas Shanzai en China, en realidad hay una mayor innovaci&oacute;n y mayores ingresos econ&oacute;micos cuando todos los actores de un ecosistema de fabricaci&oacute;n colaboran y comparten conocimientos y proyectos, esto muestra que el Open Source y la pirater&iacute;a son de hecho un modelo de negocio viable. Kal Raustiala y Sprigman Christopher describieron la importancia de la copia en el dise&ntilde;o de los ecosistemas de moda muy bien en sus art&iacute;culo &quot;The Piracy Paradox: Innovation and Intellectual Property in Fashion Design&quot;: de hecho no hay protecci&oacute;n de derechos de autor o patentes en el dise&ntilde;o de moda, s&oacute;lo hay la protecci&oacute;n de las marcas. Esto significa que cualquier ropa o producto de moda puede ser copiado por completo, a excepci&oacute;n de la marca. La falta del derecho de autor en realidad acelera la creatividad y la innovaci&oacute;n: un efecto secundario de una cultura de la copia es un m&aacute;s r&aacute;pido establecer de las tendencias y la m&aacute;s r&aacute;pida obsolescencia inducida, dando lugar a m&aacute;s ventas e ingresos, y a m&aacute;s creatividad y innovaci&oacute;n (porque el ciclo de vida de un dise&ntilde;o de moda es cada vez m&aacute;s corto). V&eacute;ase por ejemplo todo el sector del fast fashion de marcas como Zara y H&amp;M, que se est&aacute;n beneficiando de esto, copiando famosos dise&ntilde;os de moda de alto nivel y fabric&aacute;ndolos a precios m&aacute;s bajos (para un mercado diferente que el de gama alta). Incluso Johanna Blakley en TEDxUSC 2010 explic&oacute; lo que todas las industrias creativas pueden aprender de la cultura libre de la moda (m&aacute;s informaci&oacute;n aqu&iacute;). Otros recursos son Sprigman El podcast de Chris y el informe de David Bollier y Racine Laurie. http://www.youtube.com/watch?v=zL2FOrx41N0&amp;feature=player_embedded Etsy y la larga cola de la artesan&iacute;a user-generated o generada por el usuario El mejor ejemplo que muestra las posibilidades de negocio del movimiento de Artesan&iacute;a DIY es Etsy,un mercado social en linea (o social commerce) concebido por Rob Kalin, junto con Chris Maguire y Schoppik Haim a principios de 2005. Tiene ahora m&aacute;s de 6,2 millones de miembros (400.000 de ellos son tambi&eacute;n vendedores) y ofrece actualmente a la venta 6.500.000 art&iacute;culos. Las ventas brutas iniciaron con $ 166.000 en 2005, fueron $ 180 600 000 en 2009 y en 2010 (hasta el septiembre) fueron de $ 206 millones. El 30 de enero 2008 se divulg&oacute; la noticia que Etsy hab&iacute;a casi alcanzado el equilibrio (break-even), y que hab&iacute;a recibido $ 27 millones en financiaci&oacute;n de Serie D. http://blip.tv/play/oF6Y%2B3MC La creaci&oacute;n de un mercado de la larga cola de Artesan&iacute;a DIY es el modelo de negocio principal de Etsy, que cobra un honorario de listado de 20 centavos por cada art&iacute;culo y obtene un 3,5% de cada venta, con un promedio de las ventas de $ 15 o $ 20. Etsy tambi&eacute;n tiene otro ingreso a trav&eacute;s de Showcase, el programa de publicidad que Etsy ha dise&ntilde;ado para sus vendedores. Con la compra de un anuncio de 24 horas en el Showcase, los vendedores de Etsy destacan sus productos en lugares de relieve del sitio para aumentar la fama de su tienda en Etsy y para aumentar las ventas. Los precios son de $ 15,00 para el Showcase principal y el Showcase Holiday, mientras que para los otros anuncios el precio es de $ 7,00. Por lo tanto, hay incluso dudas sobre si la actividad principal de Etsy es proporcionar un mercado para los productos hechos a mano o m&aacute;s bien sea un negocio de publicidad. Por otra parte, Etsy tiene su propio API y permite a los desarrolladores aprovechar los datos de la comunidad de Etsy, construyendo aplicaciones para web, escritorio y dispositivos m&oacute;viles. En 2007 se divulg&oacute; la noticia que Etsy estaba interesada en la ampliaci&oacute;n de los negocios no en l&iacute;nea: Etsy empez&oacute; a ofrecer talleres abiertos a artesanos locales y desea prestar servicios de apoyo, tales como asesoramiento empresarial y de peque&ntilde;os pr&eacute;stamos en futuro. Hay tambi&eacute;n algunas cr&iacute;ticas del modelo de negocio de Etsy, ya que parece que no represente realmente un modelo viable para los peque&ntilde;os fabricantes. S&oacute;lo el 4% de los vendedores de Etsy son hombres, el vendedor promedio es una mujer de 35 a&ntilde;os de edad y es a menudo una mujer casada con (o a punto de tener) ni&ntilde;os peque&ntilde;os, con ingresos m&aacute;s altos del promedio y una buena educaci&oacute;n. Lo m&aacute;s probable es que Etsy atraiga a las mujeres que esperan compaginar con &eacute;xito un trabajo significativo con la maternidad. Desafortunadamente, es muy dif&iacute;cil ganarse la vida s&oacute;lo con Etsy: muy pocos vendedores lo han hecho, y la comunidad lo confirma. De hecho, parece que Etsy ejerceza una presi&oacute;n a rebajar los precios, ya que todos los vendedores (que viven en diferentes ciudades y entonces con diferentes costes de vida) est&aacute;n en competencia directa y no se puede aumentar el volumen (que seria la respuesta habitual a estos problemas), porque los art&iacute;culos son artesanales y no producidos en serie. Megan Auman de craftmba.com sugiere que Etsy no debe considerarse s&oacute;lo como un mercado, sino como una de incubadora de empresas que acelera el desarrollo exitoso de negocios basados en Artesan&iacute;a DIY y Micro Producciones a trav&eacute;s de una serie de recursos de apoyo empresarial y servicios. Etsy ofrece bajar las barreras de ingreso al mercado, pero al crecer el negocio, se debe pensar en ir dejando Etsy y tener una tienda de comercio electr&oacute;nico diferente, un buen paso m&aacute;s para la construcci&oacute;n de una marca emergente (al igual que White Elephant vintage hizo,por ejemplo). Por otra parte, como hemos dicho antes, los precios en Etsy probablemente no aumentar&aacute;n debido a la fuerte competencia, y esta es otra raz&oacute;n para salir de Etsy, cuando las habilidades y las ventas de un vendedor mejoran. Threadless, crowdsourcing el dise&ntilde;o sin dejar de fabricar el producto Si bien Threadless no puede ser categorizado estrictamente como Artesan&iacute;a o DIY, tiene un modelo de negocio muy interesante que puede ser tomado como inspiraci&oacute;n: el &quot;crowdsourcing&quot; del dise&ntilde;o para luego fabricar los productos. http://www.youtube.com/v/9VKRbmnqXR4?fs=1&amp;hl=it_IT Threadless es una tienda de ropa en l&iacute;nea centrada en la comunidad fundada por Jake Nickell y Jacob DeHart, en el a&ntilde;o 2000 con tan s&oacute;lo $ 1,000. Ahora est&aacute; dirigido por la empresa skinnyCorp de Chicago. Los miembros de la comunidad Threadless envian sus dise&ntilde;os de camisetas en l&iacute;nea y estan sometidos a una votaci&oacute;n p&uacute;blica. Un peque&ntilde;o porcentaje de todos los proyectos presentados son seleccionados para la impresi&oacute;n y se venden a trav&eacute;s de una tienda en l&iacute;nea; los ganadores reciben un premio de $ 2,000 en efectivo, un certificado de regalo de 500 $ (que se puede cambiar por $ 200 en efectivo), as&iacute; como un bono adicional de $ 500 por cada reimpresi&oacute;n. Incluso hay dos tiendas fisicas de Threadless: Threadless y Threadless Kids en Chicago. Anders Sundelin se&ntilde;al&oacute; que la producci&oacute;n de una demanda predeterminada mantiene los costos bajos y los m&aacute;rgenes altos, y como que los miembros de la comunidad ya forman parte de la demanda y ayudan a co-crearla, Threadless nunca produce sin vender camisetas: esta es la raz&oacute;n por la cual genera m&aacute;s de $ 17.000.000 en ventas anuales con un margen de beneficio del 35% con una creciente comunidad. Por otra parte,Threadless tiene tambi&eacute;n un flujo de ingresos por suscripci&oacute;n a trav&eacute;s de el club 12 (una edici&oacute;n limitada t-shirt de 12 meses) y tiene tambi&eacute;n un programa de Street Team con miembros afiliados que ganan puntos para futuras compras gracias a sus referencias de venta o al entregar una foto de ellos con una camiseta de Threadless. Openwear: c&oacute;digo abierto y colaboraci&oacute;n para micro producciones Si la &quot;pirater&iacute;a&quot; (o por lo menos vamos a decir: el &quot;copiar&quot;) es una pr&aacute;ctica com&uacute;n en el mundo de la moda, y el &quot;crowdsourcing&quot; est&aacute; encontrando su lugar en el tambi&eacute;n, un dise&ntilde;o de moda abierto (Open Fashion Design) es el modelo de negocio consiguiente. Uno de los principales problemas del mundo del dise&ntilde;o de moda, artesanato, DIY o micro producciones, es que est&aacute; demasiado fragmentado y de consecuencia el n&uacute;mero de productos creados y vendidos por cada disenador es muy bajo: es necesario hacer que la comunidad sea m&aacute;s coherente y ayudar a todos los actores a ahorrar tiempo y dinero con una actividad com&uacute;n y colaborativa. Openwear.org, por ejemplo, es una nueva comunidad que ha creado algunos dise&ntilde;os de moda b&aacute;sicos y va a compartirlos con todos sus miembros, creando as&iacute; una marca de moda totalmente abierta. De esta manera, nadie de los dise&ntilde;adores tendr&aacute; que empezar de cero y se ahorrar&aacute;n tiempo y recursos para el dise&ntilde;o de ropa nueva. http://vimeo.com/user4899256 Stitch Tomorrow: Microcr&eacute;ditos para el Desarrollo a trav&eacute;s de dise&ntilde;o de moda Stitch Tomorrow es una iniciativa de microcr&eacute;ditos liderada por j&oacute;venes de Filipinas, con el fin de facilitar a los j&oacute;venes desfavorecidos del sudeste asi&aacute;tico con sesiones de verano para que sean capaces de crear sus propias l&iacute;neas de moda con ropa hecha de materiales reciclados. Stitch Tomorrow les ofrece la educaci&oacute;n (sobre moda y negocios), capital y recursos, dise&ntilde;o, servicios de consultor&iacute;a de marketing y administraci&oacute;n, la participaci&oacute;n de los clientes en el dise&ntilde;o y proceso de negocio. Una vez que estos dise&ntilde;adores de moda puedan trabajar de forma independiente, podr&aacute;n poco a poco devolver el dinero a Stitch Tomorrow y el inter&eacute;s se utilizar&aacute; para capacitar a otros adolescentes en el verano siguiente. http://www.youtube.com/v/TO-EXd4b2Y0?fs=1&amp;hl=en_US Sewing Cafes: lugares para la Artesan&iacute;a DIY y las micro producciones Al igual que los hackerspaces para el movimiento Open Hardware, el movimiento de Artesa&iacute;a DIY tambi&eacute;n tiene sus propios lugares de fabricaci&oacute;n, experimentaci&oacute;n, creaci&oacute;n de prototipos, aprendizaje y construcci&oacute;n de la comunidad: los Sewing Caf&eacute;s (Caf&eacute;s de costura). Por lo menos desde el a&ntilde;o 2006 en ciudades como Nueva York, Los &Aacute;ngeles y Boston (como Quilter&rsquo;s West en West Concordia), han nacido caf&eacute;s que alquilan por horas m&aacute;quinas de coser, y ahora se pueden encontrar en muchos pa&iacute;ses de Europa. Uno es el Sweat Shop en Par&iacute;s, donde los usuarios pueden comprar el acceso a una m&aacute;quina de coser Singer (&euro; 6.00 por hora), otro es el Linkle en Berl&iacute;n (&euro; 5.00 por hora). En el Reino Unido son algunos ejemplos Home Made London (&pound; 10.00 por hora), Make It Glasgow (&pound; 5.00 por una hora, &pound; 7.50 por dos o &pound; 10.00 por tres) y el Needlebugs Sewing Caf&eacute; en Manchester, con base en un espacio de arte con organizaci&oacute;n sin fines de lucro llamado Art Nexus Caf&eacute;. Hay incluso un sewing caf&eacute; en Melbourne, Australia (el Thread Den) y un Localizador de Sewing Cafes, aunque todav&iacute;a est&aacute; en construcci&oacute;n. Etsy incluso tiene un espacio de trabajo para su comunidad que proporciona equipos y materiales donados, donde los miembros se re&uacute;nen para hacer art&iacute;culos, tomar y dar talleres, y asistir a eventos especiales. Se trata de una oficina permanente llamada Etsy Labs en Nueva York. El equipo de soporte al cliente, marketing / relaciones p&uacute;blicas, y comunicaciones de la empresa est&aacute;n basados all&iacute;. Una lecci&oacute;n de la Artesan&iacute;a DIY: el microcr&eacute;dito como una herramienta para la creaci&oacute;n de redes colaborativas La necesidad de encontrar nuevos modelos de negocio se est&aacute; manifestando de un modo cada vez m&aacute;s urgente en el mundo de la Artesan&iacute;a DIY y de las micro producciones, ya que cada fabricante tiene su propio modelo de negocio y lucha por encontrar un equilibrio en su crecimiento (que adem&aacute;s es algo dif&iacute;cil de entender para ellos). Como Zoe Romano y Niessen Bertram de Openwear se&ntilde;alan en una entrevista (que pronto se publicar&aacute; en openp2pdesign.org), muchos fabricantes de DIY y artesanato a&uacute;n siguen el ritmo estacional de las colecciones, mientras que otros est&aacute;n experimentando modelos m&aacute;s flexibles. Algunas personas se dividen entre las diferentes actividades: son al mismo tiempo artesanos y maestros de artesan&iacute;a, o bien dise&ntilde;an y realizan su propia colecci&oacute;n, pero, al mismo tiempo, trabajan tambi&eacute;n para terceras partes en diferentes puntos de la cadena de producci&oacute;n. Uno de los mayores problemas del movimiento de Artesan&iacute;a DIY (especialmente en comparaci&oacute;n con las comunidades de Open Source y Open Hardware) es la extrema fragmentaci&oacute;n de la comunidad: en los proyectos abiertos las comunidades pueden ser peque&ntilde;as, pero definitivamente hay m&aacute;s gente colaborando junta en el mismo proyecto que en proyectos de Artesan&iacute;a DIY. Es m&aacute;s f&aacute;cil obtener ganancias con la larga cola del DIY que con un solo proyecto, y aqu&iacute; podr&iacute;amos utilizar el microcr&eacute;dito como una herramienta para la construcci&oacute;n de la comunidad y para la construcci&oacute;n y gesti&oacute;n de redes de colaboraci&oacute;n entre los diversos participantes. Por otra parte, seg&uacute;n lo informado por Zoe Romano y Bertram Niessen, la escena B2B del movimiento de Artesan&iacute;a DIY tiene un buen porcentaje de sus transacciones basadas en el trueque de bienes y servicios mientras que las transacciones con dinero son casi &uacute;nicamente para la venta de los productos finales. Debemos entonces considerar tambi&eacute;n este aspecto, y pensar en iniciativas de microcr&eacute;dito para adentro de la comunidad DIY y otras para iniciativas de microcr&eacute;dito para las relaciones con el exterior. Podr&iacute;a tratarse incluso de una sola iniciativa de microcr&eacute;dito, pero al final va a trabajar de una manera diferente dentro y fuera de la comunidad, y deber&iacute;amos utilizarla para crear un ecosistema de colaboraci&oacute;n m&aacute;s fuerte.</p>\r\n', 'http://www.youtube.com/watch?v=zH2HWPfwpOw', NULL, '2011-08-01', 1, 0, 0, 0, 1, '');
INSERT INTO `post` VALUES(23, 5, 'dsf asdf asdfa sd', 'asf sdf asdf dfasdf ', '', NULL, '2011-08-17', 1, 0, NULL, NULL, 1, NULL);
INSERT INTO `post` VALUES(24, 5, 'asdf sadf ', 'sad fasdf sdf', '', NULL, '2011-08-17', 1, 0, NULL, NULL, 1, '');
INSERT INTO `post` VALUES(25, 1, 'asdf asdf ', '<p>\r\n	&nbsp;asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf asdfa sdf</p>\r\n', '', NULL, '2011-09-28', 1, 1, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_copy`
--

DROP TABLE IF EXISTS `post_copy`;
CREATE TABLE `post_copy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog` bigint(20) unsigned NOT NULL,
  `title` tinytext,
  `text` longtext COMMENT 'texto de la entrada',
  `media` tinytext,
  `image` int(10) DEFAULT NULL,
  `date` date NOT NULL COMMENT 'fehca de publicacion',
  `order` int(11) DEFAULT '1',
  `allow` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Permite comentarios',
  `home` tinyint(1) DEFAULT '0' COMMENT 'para los de portada',
  `footer` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Para los del footer',
  `publish` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Publicado',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcar la base de datos para la tabla `post_copy`
--

INSERT INTO `post_copy` VALUES(1, 1, '¿Porque goteo es diferente?', 'Goteo se distingue principalmente de otras plataformas de financiación colectiva por su apuesta diferencial y focalizada en proyectos de ⤽código abierto⤝ en un sentido amplio. Esto es, que compartan conocimiento, procesos, resultado, responsabilidad o beneficio, desde la filosofía del procomún. Porque Goteo pone el acento en la esfera pública, apoyando proyectos que favorezcan el empoderamiento colectivo y el bien común.\r\n\r\nEs crowdfunding para gente que busque la rentabilidad social de las inversiones efectuadas, haciendo viables los proyectos para sus promotores pero también el retorno colectivo para la comunidad (en paralelo a contraprestaciones individuales). Estos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al código fuente, a productos y recursos, a formación a través de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.\r\n\r\nOtra peculiaridad de Goteo es que permite recaudar fondos mínimos, por un lado, para arrancar los proyectos, y por otro fondos óptimos para fases posteriores, tal como explicamos un par de FAQs más arriba. También el hecho de que pueda funcionar y ser administrada de manera autónoma por nodos temáticos o geográficos distribuidos geográficamente, como detallamos otras FAQ más abajo. O que permita inversiones puntuales de entidades que deseen generar así una especie de bote, a repartir según el criterio de una comunidad de expertos entre proyectos de un nodo determinado.\r\n\r\n¿Más diferencias con otras plataformas? ÿsta se aplica su propia receta y también está disponible con su propia licencia copyleft, así como su código fuente (para quien prefiera descargarse la herramienta y adaptarla a sus necesidades de crowdfunding). También estamos trabajando en otras especificaciones, como un panel de seguimiento detallado de fondos obtenidos, para aumentar la transparencia sobre dónde acaba lo recaudado, o una tarifa plana para micromecenas compulsivos.\r\n\r\nEstos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al código fuente, a productos y recursos, a formación a través de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.', 'http://vimeo.com/20597320', 0, '2011-06-08', 1, 1, 1, 1, 1);
INSERT INTO `post_copy` VALUES(3, 1, 'Goteo es una comunidad de comunidades', 'Goteo es una comunidad de comunidades -cuyo nexo de unión es el interés por el fortalecimiento del procomún-, que se articulan en torno a una plataforma digital en internet. Un sistema distribuido de comunidades locales y/o temáticas, especialistas, legitimadas, con un importante calado social, referentes en su ámbito de actuación. Estas comunidades constituyen una red fundamental de nodos de confianza, que sirven para localizar lo digital, aportando proximidad y especificidad, multiplicando el efecto de la plataforma.', '[slideshare id=8175922&doc=cbbhondartzan2-110601120109-phpapp01]', 0, '2011-06-06', 2, 0, 1, 0, 1);
INSERT INTO `post_copy` VALUES(4, 1, 'Goteo. Codiseño con la comunidad', 'Texto pendiente sobre el papel de los talleres en el desarollo de Goteo', '[slideshare id=8533502&doc=cbbhondartzan3-110707082157-phpapp02]', 33, '2011-06-06', 1, 0, 1, 0, 1);
INSERT INTO `post_copy` VALUES(16, 6, 'Primera actualización desde el dashboard', 'aui viene el lorem ipsum famoso. Phasellus vulputate dolor sit amet nulla mollis quis ultricies ante lobortis. Fusce euismod hendrerit nunc vitae bibendum. Vestibulum a mauris non ipsum bibendum dignissim. Sed auctor ligula eget nunc laoreet consequat. Sed blandit faucibus fermentum. Morbi laoreet augue ut augue ullamcorper gravida tincidunt justo laoreet. Proin commodo, sem sit amet accumsan pharetra, felis magna pretium est, vitae dictum leo leo faucibus sem. Pellentesque malesuada condimentum lectus et placerat. Proin ullamcorper leo sed erat mattis dictum. Vestibulum consequat, neque vel ultrices lacinia, tortor nibh sodales quam, nec faucibus velit tortor id lacus. Integer posuere felis metus, ut tincidunt enim. Nulla mattis ante in justo aliquet cursus. Quisque commodo, tortor id porta sollicitudin, justo justo pharetra purus, sed consequat lectus enim sit amet lectus. Sed in ipsum eros, rutrum commodo dui. Nulla sem dolor, laoreet mollis hendrerit id, fermentum eget arcu.<br /><br />\r\n<br /><br />\r\nNulla vitae urna arcu. Integer ac lacus quis magna eleifend facilisis. Etiam vehicula condimentum odio id elementum. Nunc porta molestie viverra. Etiam eget justo leo. Vestibulum non urna a risus interdum malesuada in id velit. Etiam faucibus, sem vel convallis consequat, neque nunc consectetur elit, ut dapibus libero libero et mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nibh purus, id feugiat ante. Donec vel velit leo, ac cursus risus. Pellentesque feugiat dui sit amet libero sagittis id tincidunt nulla tincidunt. Etiam libero diam, vulputate sit amet viverra a, mattis eget diam. Pellentesque habitan', '', 68, '2011-07-08', 1, 1, 0, 0, 1);
INSERT INTO `post_copy` VALUES(17, 6, 'segunda publicación desde dashboard con video', 'Phasellus vulputate dolor sit amet nulla mollis quis ultricies ante lobortis. Fusce euismod hendrerit nunc vitae bibendum. Vestibulum a mauris non ipsum bibendum dignissim. Sed auctor ligula eget nunc laoreet consequat. Sed blandit faucibus fermentum. Morbi laoreet augue ut augue ullamcorper gravida tincidunt justo laoreet. Proin commodo, sem sit amet accumsan pharetra, felis magna pretium est, vitae dictum leo leo faucibus sem. Pellentesque malesuada condimentum lectus et placerat. Proin ullamcorper leo sed erat mattis dictum. Vestibulum consequat, neque vel ultrices lacinia, tortor nibh sodales quam, nec faucibus velit tortor id lacus. Integer posuere felis metus, ut tincidunt enim. Nulla mattis ante in justo aliquet cursus. Quisque commodo, tortor id porta sollicitudin, justo justo pharetra purus, sed consequat lectus enim sit amet lectus. Sed in ipsum eros, rutrum commodo dui. Nulla sem dolor, laoreet mollis hendrerit id, fermentum eget arcu.\r\n\r\nNulla vitae urna arcu. Integer ac lacus quis magna eleifend facilisis. Etiam vehicula condimentum odio id elementum. Nunc porta molestie viverra. Etiam eget justo leo. Vestibulum non urna a risus interdum malesuada in id velit. Etiam faucibus, sem vel convallis consequat, neque nunc consectetur elit, ut dapibus libero libero et mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nibh purus, id feugiat ante. Donec vel velit leo, ac cursus risus. Pellentesque feugiat dui sit amet libero sagittis id tincidunt nulla tincidunt. Etiam libero diam, vulputate sit amet viverra a, mattis eget diam. Pellentesque habitan', 'http://vimeo.com/26125187', 0, '2011-07-08', 1, 1, 0, 0, 1);
INSERT INTO `post_copy` VALUES(21, 1, 'El taller "Goteo, cultura de la financiación colectiva" sigue rodando', 'El taller "Goteo, cultura de la financiación colectiva (crowdfunding)" sigue rodando.\r\nEl taller Goteo ofrece información teórica sobre las diferentes tipologías de financiación colectiva, acercando de forma dinámica y atractiva al crowdfunding como estrategia de interés tanto para la financiación como para la difusión y generación de comunidad.\r\n\r\nPróxima parada: 24 de junio en Cáceres en el Centro de Conocimiento AldealabC3, edificio Embarcadero.\r\nCómo apuntarse: (plazas limitadas)\r\n609 519 493 (coordinadora Chon Muñoz)\r\n\r\nOrganiza:\r\nProyecto Fénix. Factoría de la Innovación/ Ayuntamiento de Cáceres / Concejalía de Innovación, Fomento y Desarrollo\r\nTecnológico.\r\n\r\nCon la colaboración del Gabinete del Iniciativa Joven de Extremadura.\r\n\r\nEl crowdfunding ha surgido muy recientemente en España y en pocos meses ha demostrado ser una eficaz alternativa de financiación de proyectos. Pero al mismo tiempo tiene efectos secundarios altamente interesantes para el ámbito cultural/social y de TICs, como la generación de comunidades de interés y la capacidad de generar expectativas de forma previa a la presentación final del proyecto.\r\n\r\nLa duración del taller es de cuatro horas, que se distribuyen en dos partes:\r\n\r\na) exposición del intensivo estudio realizado por Platoniq sobre diferentes tipologías de plataformas, diferenciando\r\nmicrofinanciación, financiación colectiva (crowdfunding) y préstamos p2p.\r\n\r\nb) parte práctica en la que se experimenta la financiación colectiva de una serie de proyectos reales. Esta parte práctica escenifica en modo "analógico" cómo funciona una plataforma de crowdfunding a través de dinámicas participativas.\r\n\r\nGracias a ellas es posible comprobar aspectos clave como pueden ser criterios de evaluación o cómo hacer atractivos proyectos. Para ello se han elaborado herramientas como barómetros de valoración de proyectos a partir de indicadores como el grado de innovación, nivel de proximidad, coherencia, etc., con los que interactuarán los participantes.\r\n\r\n-> Más sobre el taller:\r\n\r\nhttp://youcoop.org/es/goteo/p/5/goteo-workshop-cultura-de-la-microfinanciacion/\r\n\r\n-> Más sobre la cultura del crowdfunding en nuestro colaboratorio:\r\nYOUCOOP.ORG\r\n\r\nhttp://www.youcoop.org/goteo\r\n\r\n-> Más sobre contextos en los que ya se ha realizado el taller:\r\n\r\n1) CCCB. Barcelona:\r\n\r\nhttp://www.cccb.org/es/curs_o_conferencia-i_c_i_econom_a_distribuida-33719\r\n\r\nhttp://www.flickr.com/photos/cccb/sets/72157625471082121/\r\n\r\n2) MATADERO. Madrid:\r\n\r\nhttp://www.mataderomadrid.org/ficha/768/goteo-cultura-de-la-financiacion-colectiva.html\r\n\r\n3) DIA DE LA PERSONA EMPRENDEDORA. BILBAO:\r\n\r\nhttp://eutokia.org/2011/05/taller-goteo-platoniq-x-edicion-dia-de-la-persona-emprendedora-2011-05-05/\r\n\r\n4) ESCUELA DE VERANO DE LA RED DE TEATROS. ALMAGRO:\r\n\r\nhttp://www.redescueladeverano.es/2011/programa_de_cursos/ficha.php?id=55\r\n', '', 113, '2011-07-26', 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_image`
--

DROP TABLE IF EXISTS `post_image`;
CREATE TABLE `post_image` (
  `post` bigint(20) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `post_image`
--

INSERT INTO `post_image` VALUES(1, 139);
INSERT INTO `post_image` VALUES(3, 140);
INSERT INTO `post_image` VALUES(4, 33);
INSERT INTO `post_image` VALUES(16, 68);
INSERT INTO `post_image` VALUES(16, 147);
INSERT INTO `post_image` VALUES(21, 113);
INSERT INTO `post_image` VALUES(24, 150);
INSERT INTO `post_image` VALUES(25, 145);
INSERT INTO `post_image` VALUES(25, 146);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_lang`
--

DROP TABLE IF EXISTS `post_lang`;
CREATE TABLE `post_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` longtext,
  `legend` text,
  `media` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `post_lang`
--

INSERT INTO `post_lang` VALUES(1, 'en', 'ENG ¿Porque goteo es diferente?', 'ENG Goteo se distingue principalmente de otras plataformas de financiación colectiva por su apuesta diferencial y focalizada en proyectos de “código abierto” en un sentido amplio. Esto es, que compartan conocimiento, procesos, resultado, responsabilidad o beneficio, desde la filosofía del procomún. Porque Goteo pone el acento en la esfera pública, apoyando proyectos que favorezcan el empoderamiento colectivo y el bien común.\r\n\r\nEs crowdfunding para gente que busque la rentabilidad social de las inversiones efectuadas, haciendo viables los proyectos para sus promotores pero también el retorno colectivo para la comunidad (en paralelo a contraprestaciones individuales). Estos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al código fuente, a productos y recursos, a formación a través de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.\r\n\r\nOtra peculiaridad de Goteo es que permite recaudar fondos mínimos, por un lado, para arrancar los proyectos, y por otro fondos óptimos para fases posteriores, tal como explicamos un par de FAQs más arriba. También el hecho de que pueda funcionar y ser administrada de manera autónoma por nodos temáticos o geográficos distribuidos geográficamente, como detallamos otras FAQ más abajo. O que permita inversiones puntuales de entidades que deseen generar así una especie de bote, a repartir según el criterio de una comunidad de expertos entre proyectos de un nodo determinado.\r\n\r\n¿Más diferencias con otras plataformas? Ésta se aplica su propia receta y también está disponible con su propia licencia copyleft, así como su código fuente (para quien prefiera descargarse la herramienta y adaptarla a sus necesidades de crowdfunding). También estamos trabajando en otras especificaciones, como un panel de seguimiento detallado de fondos obtenidos, para aumentar la transparencia sobre dónde acaba lo recaudado, o una tarifa plana para micromecenas compulsivos.\r\n\r\nEstos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al código fuente, a productos y recursos, a formación a través de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.', NULL, NULL);
INSERT INTO `post_lang` VALUES(1, 'eu', 'EUSK ¿Porque goteo es diferente?', 'EUSK Goteo se distingue principalmente de otras plataformas de financiación colectiva por su apuesta diferencial y focalizada en proyectos de “código abierto” en un sentido amplio. Esto es, que compartan conocimiento, procesos, resultado, responsabilidad o beneficio, desde la filosofía del procomún. Porque Goteo pone el acento en la esfera pública, apoyando proyectos que favorezcan el empoderamiento colectivo y el bien común.\r\n\r\nEs crowdfunding para gente que busque la rentabilidad social de las inversiones efectuadas, haciendo viables los proyectos para sus promotores pero también el retorno colectivo para la comunidad (en paralelo a contraprestaciones individuales). Estos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al código fuente, a productos y recursos, a formación a través de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.\r\n\r\nOtra peculiaridad de Goteo es que permite recaudar fondos mínimos, por un lado, para arrancar los proyectos, y por otro fondos óptimos para fases posteriores, tal como explicamos un par de FAQs más arriba. También el hecho de que pueda funcionar y ser administrada de manera autónoma por nodos temáticos o geográficos distribuidos geográficamente, como detallamos otras FAQ más abajo. O que permita inversiones puntuales de entidades que deseen generar así una especie de bote, a repartir según el criterio de una comunidad de expertos entre proyectos de un nodo determinado.\r\n\r\n¿Más diferencias con otras plataformas? Ésta se aplica su propia receta y también está disponible con su propia licencia copyleft, así como su código fuente (para quien prefiera descargarse la herramienta y adaptarla a sus necesidades de crowdfunding). También estamos trabajando en otras especificaciones, como un panel de seguimiento detallado de fondos obtenidos, para aumentar la transparencia sobre dónde acaba lo recaudado, o una tarifa plana para micromecenas compulsivos.\r\n\r\nEstos retornos colectivos pueden ser de muy diverso tipo y se fundamentan en compartir conocimiento y dar acceso libre al código fuente, a productos y recursos, a formación a través de manuales y/o talleres, a archivos y contenidos que puedan copiarse, reutilizarse y remezclarse, etc. Todo ello con el objetivo de crear comunidad, capital social y que otras personas puedan generar oportunidades derivadas, productos y servicios económicamente sostenibles.', NULL, NULL);
INSERT INTO `post_lang` VALUES(16, 'en', 'ENG Primera actualización desde el dashboard', 'ENG aui viene el lorem ipsum famoso. Phasellus vulputate dolor sit amet nulla mollis quis ultricies ante lobortis. Fusce euismod hendrerit nunc vitae bibendum. Vestibulum a mauris non ipsum bibendum dignissim. Sed auctor ligula eget nunc laoreet consequat. Sed blandit faucibus fermentum. Morbi laoreet augue ut augue ullamcorper gravida tincidunt justo laoreet. Proin commodo, sem sit amet accumsan pharetra, felis magna pretium est, vitae dictum leo leo faucibus sem. Pellentesque malesuada condimentum lectus et placerat. Proin ullamcorper leo sed erat mattis dictum. Vestibulum consequat, neque vel ultrices lacinia, tortor nibh sodales quam, nec faucibus velit tortor id lacus. Integer posuere felis metus, ut tincidunt enim. Nulla mattis ante in justo aliquet cursus. Quisque commodo, tortor id porta sollicitudin, justo justo pharetra purus, sed consequat lectus enim sit amet lectus. Sed in ipsum eros, rutrum commodo dui. Nulla sem dolor, laoreet mollis hendrerit id, fermentum eget arcu.<br /><br />\r\n<br /><br />\r\nNulla vitae urna arcu. Integer ac lacus quis magna eleifend facilisis. Etiam vehicula condimentum odio id elementum. Nunc porta molestie viverra. Etiam eget justo leo. Vestibulum non urna a risus interdum malesuada in id velit. Etiam faucibus, sem vel convallis consequat, neque nunc consectetur elit, ut dapibus libero libero et mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nibh purus, id feugiat ante. Donec vel velit leo, ac cursus risus. Pellentesque feugiat dui sit amet libero sagittis id tincidunt nulla tincidunt. Etiam libero diam, vulputate sit amet viverra a, mattis eget diam. Pellentesque habitan', 'ENG ', '');
INSERT INTO `post_lang` VALUES(17, 'ca', 'CAT CAT CAT CAT segunda publicación desde dashboard con video', 'CAT CAT CAT CAT CAT Phasellus vulputate dolor sit amet nulla mollis quis ultricies ante lobortis. Fusce euismod hendrerit nunc vitae bibendum. Vestibulum a mauris non ipsum bibendum dignissim. Sed auctor ligula eget nunc laoreet consequat. Sed blandit faucibus fermentum. Morbi laoreet augue ut augue ullamcorper gravida tincidunt justo laoreet. Proin commodo, sem sit amet accumsan pharetra, felis magna pretium est, vitae dictum leo leo faucibus sem. Pellentesque malesuada condimentum lectus et placerat. Proin ullamcorper leo sed erat mattis dictum. Vestibulum consequat, neque vel ultrices lacinia, tortor nibh sodales quam, nec faucibus velit tortor id lacus. Integer posuere felis metus, ut tincidunt enim. Nulla mattis ante in justo aliquet cursus. Quisque commodo, tortor id porta sollicitudin, justo justo pharetra purus, sed consequat lectus enim sit amet lectus. Sed in ipsum eros, rutrum commodo dui. Nulla sem dolor, laoreet mollis hendrerit id, fermentum eget arcu.\r\n\r\nNulla vitae urna arcu. Integer ac lacus quis magna eleifend facilisis. Etiam vehicula condimentum odio id elementum. Nunc porta molestie viverra. Etiam eget justo leo. Vestibulum non urna a risus interdum malesuada in id velit. Etiam faucibus, sem vel convallis consequat, neque nunc consectetur elit, ut dapibus libero libero et mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nibh purus, id feugiat ante. Donec vel velit leo, ac cursus risus. Pellentesque feugiat dui sit amet libero sagittis id tincidunt nulla tincidunt. Etiam libero diam, vulputate sit amet viverra a, mattis eget diam. Pellentesque habitan', 'CAT CAT CAT ', 'http://vimeo.com/26125187');
INSERT INTO `post_lang` VALUES(17, 'en', 'ENG segunda publicación desde dashboard con video', 'ENG Phasellus vulputate dolor sit amet nulla mollis quis ultricies ante lobortis. Fusce euismod hendrerit nunc vitae bibendum. Vestibulum a mauris non ipsum bibendum dignissim. Sed auctor ligula eget nunc laoreet consequat. Sed blandit faucibus fermentum. Morbi laoreet augue ut augue ullamcorper gravida tincidunt justo laoreet. Proin commodo, sem sit amet accumsan pharetra, felis magna pretium est, vitae dictum leo leo faucibus sem. Pellentesque malesuada condimentum lectus et placerat. Proin ullamcorper leo sed erat mattis dictum. Vestibulum consequat, neque vel ultrices lacinia, tortor nibh sodales quam, nec faucibus velit tortor id lacus. Integer posuere felis metus, ut tincidunt enim. Nulla mattis ante in justo aliquet cursus. Quisque commodo, tortor id porta sollicitudin, justo justo pharetra purus, sed consequat lectus enim sit amet lectus. Sed in ipsum eros, rutrum commodo dui. Nulla sem dolor, laoreet mollis hendrerit id, fermentum eget arcu.\r\n\r\nNulla vitae urna arcu. Integer ac lacus quis magna eleifend facilisis. Etiam vehicula condimentum odio id elementum. Nunc porta molestie viverra. Etiam eget justo leo. Vestibulum non urna a risus interdum malesuada in id velit. Etiam faucibus, sem vel convallis consequat, neque nunc consectetur elit, ut dapibus libero libero et mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nibh purus, id feugiat ante. Donec vel velit leo, ac cursus risus. Pellentesque feugiat dui sit amet libero sagittis id tincidunt nulla tincidunt. Etiam libero diam, vulputate sit amet viverra a, mattis eget diam. Pellentesque habitan', 'ENG ', 'http://vimeo.com/26125187');
INSERT INTO `post_lang` VALUES(25, 'en', 'asdf asdf ', '<p>englis asdf asdfd </p>\r\n', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag` (
  `post` bigint(20) unsigned NOT NULL,
  `tag` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`post`,`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tags de las entradas';

--
-- Volcar la base de datos para la tabla `post_tag`
--

INSERT INTO `post_tag` VALUES(1, 3);
INSERT INTO `post_tag` VALUES(1, 7);
INSERT INTO `post_tag` VALUES(1, 10);
INSERT INTO `post_tag` VALUES(2, 1);
INSERT INTO `post_tag` VALUES(2, 7);
INSERT INTO `post_tag` VALUES(3, 2);
INSERT INTO `post_tag` VALUES(3, 7);
INSERT INTO `post_tag` VALUES(3, 10);
INSERT INTO `post_tag` VALUES(4, 3);
INSERT INTO `post_tag` VALUES(4, 7);
INSERT INTO `post_tag` VALUES(4, 9);
INSERT INTO `post_tag` VALUES(15, 2);
INSERT INTO `post_tag` VALUES(15, 3);
INSERT INTO `post_tag` VALUES(15, 6);
INSERT INTO `post_tag` VALUES(18, 3);
INSERT INTO `post_tag` VALUES(21, 3);
INSERT INTO `post_tag` VALUES(21, 8);
INSERT INTO `post_tag` VALUES(21, 9);
INSERT INTO `post_tag` VALUES(22, 2);
INSERT INTO `post_tag` VALUES(22, 8);
INSERT INTO `post_tag` VALUES(22, 9);
INSERT INTO `post_tag` VALUES(22, 10);
INSERT INTO `post_tag` VALUES(34, 3);
INSERT INTO `post_tag` VALUES(34, 7);
INSERT INTO `post_tag` VALUES(34, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` varchar(50) NOT NULL,
  `name` tinytext,
  `subtitle` tinytext,
  `lang` varchar(2) NOT NULL DEFAULT 'es',
  `status` int(1) NOT NULL,
  `translate` int(1) NOT NULL DEFAULT '0',
  `progress` int(3) NOT NULL,
  `owner` varchar(50) NOT NULL COMMENT 'usuario que lo ha creado',
  `node` varchar(50) NOT NULL COMMENT 'nodo en el que se ha creado',
  `amount` int(6) DEFAULT NULL COMMENT 'acumulado actualmente',
  `days` int(3) NOT NULL DEFAULT '0' COMMENT 'Dias restantes',
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `published` date DEFAULT NULL,
  `success` date DEFAULT NULL,
  `closed` date DEFAULT NULL,
  `passed` date DEFAULT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `contract_nif` varchar(10) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `phone` varchar(20) DEFAULT NULL COMMENT 'guardar talcual',
  `contract_email` varchar(255) DEFAULT NULL,
  `address` tinytext,
  `zipcode` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `description` text,
  `motivation` text,
  `video` varchar(256) DEFAULT NULL,
  `video_usubs` int(1) NOT NULL DEFAULT '0',
  `about` text,
  `goal` text,
  `related` text,
  `category` varchar(50) DEFAULT NULL,
  `keywords` tinytext COMMENT 'Separadas por comas',
  `media` varchar(256) DEFAULT NULL,
  `media_usubs` int(1) NOT NULL DEFAULT '0',
  `currently` int(1) DEFAULT NULL,
  `project_location` varchar(256) DEFAULT NULL,
  `scope` int(1) DEFAULT NULL COMMENT 'Ambito de alcance',
  `resource` text,
  `comment` text COMMENT 'Comentario para los admin',
  `contract_entity` int(1) NOT NULL DEFAULT '0',
  `contract_birthdate` date DEFAULT NULL,
  `entity_office` varchar(255) DEFAULT NULL COMMENT 'Cargo del responsable',
  `entity_name` varchar(255) DEFAULT NULL,
  `entity_cif` varchar(10) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `post_address` tinytext,
  `secondary_address` int(11) NOT NULL DEFAULT '0',
  `post_zipcode` varchar(10) DEFAULT NULL,
  `post_location` varchar(255) DEFAULT NULL,
  `post_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proyectos de la plataforma';

--
-- Volcar la base de datos para la tabla `project`
--

INSERT INTO `project` VALUES('3d72d03458ebd5797cc5fc1c014fc894', 'Olivierada', NULL, 'es', 6, 0, 80, 'olivier', 'goteo', 0, 0, '2011-07-04', '2011-10-11', NULL, NULL, NULL, NULL, 'Olivier Schulbaum', 'G63306914', '667031530', 'proyecto_olivier@doukeshi.org', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', '', 'Es lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u \r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir ujhdjhdjudjddduheyyvvvvvvdtdyuddudhudhdhdyduyddddddddddddddddd que cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la red', 'Es lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u \r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir ujhdjhdjudjddduheyyvvvvvvdtdyuddudhudhdhdyduyddddddddddddddddd que cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la red', NULL, 0, 'Es lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u \r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir ujhdjhdjudjddduheyyvvvvvvdtdyuddudhudhdhdyduyddddddddddddddddd que cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la red', 'Es lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u \r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir ujhdjhdjudjddduheyyvvvvvvdtdyuddudhudhdhdyduyddddddddddddddddd que cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la red', 'Es lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u \r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir u\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir ujhdjhdjudjddduheyyvvvvvvdtdyuddudhudhdhdyduyddddddddddddddddd que cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la redque cuida la red', NULL, 'diseño, proyectos, base de datos, difusión, educación', 'http://www.youtube.com/watch?v=h5aRPhsPaWU', 0, 2, 'Palma de Mallorca', 4, '', '', 0, '1971-07-07', '', '', '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('43b8c28144ad2a9687374e95ae9ac4d6', 'Mi proyecto 4', NULL, 'es', 1, 0, 47, 'goteo', 'goteo', 0, 0, '2011-11-08', '2011-11-08', NULL, NULL, NULL, NULL, 'Susana Noguero', 'G63306914', '654321987', NULL, 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Barcelona', NULL, '', NULL, 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('5aca87da1aff996c6fb7abaddc947ae0', 'Mi proyecto 6', NULL, 'es', 1, 0, 31, 'goteo', 'goteo', 0, 0, '2011-12-22', NULL, NULL, NULL, NULL, NULL, 'Susana Noguero', 'G63306914', '654321987', NULL, 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Barcelona', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('75a3d571ea3433f059c9196be05c3c8c', 'Mi proyecto 5', '', 'es', 1, 0, 31, 'goteo', 'goteo', 0, 0, '2011-12-20', NULL, NULL, NULL, NULL, NULL, 'Susana Noguero', 'G63306914', '654321987', NULL, 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', '', '', '', '', 1, '', '', '', NULL, '', '', 1, NULL, 'Barcelona', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('7cf75c8ccd8d64c053887165c6154b1d', 'Mi proyecto 4', NULL, 'es', 1, 0, 15, 'root', 'goteo', 0, 0, '2011-12-07', NULL, NULL, NULL, NULL, NULL, 'Super administrador', '', '', NULL, '', '', '', 'EspaÃ±a', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('8851739335520c5eeea01cd745d0442d', 'Mi proyecto 1', NULL, 'es', 0, 0, 41, 'root', 'goteo', 0, 0, '2011-07-21', '2011-07-31', NULL, NULL, '2011-08-24', NULL, 'Super administrador', '', '', NULL, '', '', '', 'EspaÃ±a', '', '', '', NULL, 0, '', '', '', NULL, '', '', 0, 2, '', 3, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('8c069c398c3e3114e681ccfafa4a3fe0', 'Mi proyecto 3', NULL, 'es', 0, 0, 50, 'olivier', 'goteo', 0, 0, '2011-07-15', '2011-07-20', NULL, NULL, '2011-07-25', NULL, 'Olivier Schulbaum', '', '667031530', NULL, '', '', 'Palma de Mallorca', 'España', '', '', '', NULL, 0, '', '', '', NULL, '', '', 0, 0, 'Palma de Mallorca', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('9660151effaa85fb8c806cac7672e00d', 'Mi proyecto 4', '', 'es', 1, 0, 42, 'olivier', 'goteo', 0, 0, '2011-12-22', NULL, NULL, NULL, NULL, NULL, 'Olivier Schulbaum', 'G63306914', '667031530', '', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España', '', '', '', '', 0, '', '', '', NULL, '', '', 0, NULL, 'Palma de Mallorca', NULL, NULL, NULL, 0, '0000-00-00', '', '', '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('984990664ca1a1a98522b2640b0fc535', 'Mi proyecto 2', NULL, 'es', 0, 0, 16, 'root', 'goteo', 0, 0, '2011-07-21', NULL, NULL, NULL, '2011-07-25', NULL, 'Super administrador', '', '', NULL, '', '', '', 'EspaÃ±a', NULL, '', '', NULL, 0, '', '', '', NULL, '', NULL, 0, NULL, '', NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('9925d72d4b0a4b0733abaeaa3e187581', 'akoranga_Labs', 'metodología de formación p2p', 'es', 1, 0, 38, 'fbalague', 'goteo', 0, 0, '2011-08-02', '2011-11-14', NULL, NULL, NULL, NULL, 'Francesc Balagué', '46784299E', '655210167', '', 'Aribau, 64 entl. 1a', '08011', 'Barcelona', 'España', '', '', '', '', 0, '', '', '', NULL, '', '', 0, NULL, 'Barcelona', NULL, '', NULL, 1, '0000-00-00', '', '', '', '', 0, '', '', '');
INSERT INTO `project` VALUES('9ae51fb1ca2601e407969fa54cd47086', 'Proyecto de testeo', NULL, 'es', 1, 0, 27, 'paypal', 'goteo', 0, 0, '2011-09-08', '2011-09-08', NULL, NULL, NULL, NULL, 'Paypal Tester', '', '', '', '', '', '', 'EspaÃ±a', '', '', '', NULL, 0, '', '', '', NULL, '', '', 0, NULL, '', NULL, '', NULL, 0, '0000-00-00', '', '', '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('a565092b772c29abc1b92f999af2f2fb', 'Tweetometro', NULL, 'es', 0, 0, 58, 'goteo', 'goteo', 240, 0, '2011-07-03', '2011-07-27', '2011-07-05', NULL, '2011-07-27', NULL, '', '', '', NULL, '', '', '', '', '', 'Plataforma experimental de votación mediante tweets. En alfa! Una aplicación para llegar a acuerdos, tomar decisiones colectivamente o elegir la mejor idea presentada, mediante twitter y sms (en desarrollo).', '', NULL, 0, '', '', '', NULL, '', '', 0, 0, '', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('a9277be1c7e92eaa36ecae753231bfb1', 'Nombre proyecto 3', 'Subtítulo proyecto 3', 'en', 1, 0, 49, 'goteo', 'goteo', 0, 0, '2011-10-11', '2011-11-05', NULL, NULL, NULL, NULL, 'Susana Noguero', 'G63306914', '654321987', '', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', '', 'Este gráfico explica de un modo visual el nivel de datos que has introducido junto con una evaluación básica que hace el sistema. Para poder enviar el proyecto tienes que superar el 70%. Los criterios que hacen subir este "termómetro" tienen que ver con la información relevante que facilitas, los media, imágenes y links que introduces, si eliges una licencia más abierta que otra, la coherencia de tu presupuesto respecto a las tareas a desarrollar, etc. No pierdas de vista los tooltips de la derecha que guían durante todo el proceso.\r\n', 'Este gráfico explica de un modo visual el nivel de datos que has introducido junto con una evaluación básica que hace el sistema. Para poder enviar el proyecto tienes que superar el 70%. Los criterios que hacen subir este "termómetro" tienen que ver con la información relevante que facilitas, los media, imágenes y links que introduces, si eliges una licencia más abierta que otra, la coherencia de tu presupuesto respecto a las tareas a desarrollar, etc. No pierdas de vista los tooltips de la derecha que guían durante todo el proceso.', 'http://vimeo.com/26125187', 0, 'Este gráfico explica de un modo visual el nivel de datos que has introducido junto con una evaluación básica que hace el sistema. Para poder enviar el proyecto tienes que superar el 70%. Los criterios que hacen subir este "termómetro" tienen que ver con la información relevante que facilitas, los media, imágenes y links que introduces, si eliges una licencia más abierta que otra, la coherencia de tu presupuesto respecto a las tareas a desarrollar, etc. No pierdas de vista los tooltips de la derecha que guían durante todo el proceso.', 'Este gráfico explica de un modo visual el nivel de datos que has introducido junto con una evaluación básica que hace el sistema. Para poder enviar el proyecto tienes que superar el 70%. Los criterios que hacen subir este "termómetro" tienen que ver con la información relevante que facilitas, los media, imágenes y links que introduces, si eliges una licencia más abierta que otra, la coherencia de tu presupuesto respecto a las tareas a desarrollar, etc. No pierdas de vista los tooltips de la derecha que guían durante todo el proceso.', 'Este gráfico explica de un modo visual el nivel de datos que has introducido junto con una evaluación básica que hace el sistema. Para poder enviar el proyecto tienes que superar el 70%. Los criterios que hacen subir este "termómetro" tienen que ver con la información relevante que facilitas, los media, imágenes y links que introduces, si eliges una licencia más abierta que otra, la coherencia de tu presupuesto respecto a las tareas a desarrollar, etc. No pierdas de vista los tooltips de la derecha que guían durante todo el proceso.', NULL, '', 'http://vimeo.com/16201682', 0, NULL, 'Barcelona', NULL, '', NULL, 0, '0000-00-00', '', '', '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('ae02e5caf5a19567007c6cb06a8c9d95', 'Mi proyecto 1', NULL, 'es', 0, 0, 13, 'susana', 'goteo', 0, 0, '2011-07-15', NULL, NULL, NULL, '2011-07-25', NULL, 'Susana', '', '', NULL, '', '', '', 'EspaÃ±a', NULL, '', '', NULL, 0, '', '', '', NULL, '', NULL, 0, NULL, '', NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('archinhand-architecture-in-your-hand', 'ARCHINHAND | Architecture in your Hand', NULL, 'es', 1, 0, 50, 'ebaraonap', 'goteo', 50, 0, '2011-05-13', '2011-09-02', '2011-08-24', '0000-00-00', '2011-07-05', NULL, '', '', '', NULL, '', '', 'Barcelona', 'España', '', 'Archinhand es un proyecto editorial de difusión de contenidos sobre arquitectura y ciudad a través de dispositivos móviles.  \r\nLa subversión de las parcelas editoriales tradicionales, las nuevas formas de aprendizaje, la difusión de los límites entre espacio público y privado y la creciente implantación de dispositivos móviles, constituyen los puntos de partida del proyecto.', '', NULL, 0, 'Archinhand enfoca el aprendizaje de la ciudad y los espacios mediante la experiencia directa. La información sobre arquitectura y ciudad vista como servicio no como producto, en conexión con el espacio circundante. El aprendizaje guiado por la curiosidad y no por un curriculum académico.\r\n\r\nLos contenidos se canalizan en tres líneas básicas de información: blogs, ciudad y libros. La estructura del proyecto permite enlazar los contenidos de las tres líneas ampliando la experiencia a la vez que se adapta a la lógica de comunicación móvil.\r\n\r\nURL proyecto:www.archinhand.com\r\n\r\nSector al que va dirigido:Arquitectos, Estudiantes de arquitectura en paises emergentes, urbanistas, viajeros con intereses en arquitectura\r\n', '', 'ANTECEDENTES:\r\n\r\n-En fase inicial el proyecto "Archinhand" fue ganador en el Urbanlabs 09 del CitiLab <bit.ly/dC2CiE>\r\n\r\nPROMOTOR EDITORIAL:\r\n\r\ndpr-barcelona promotora del proyecto es una editorial sobre arquitectura y ciudad en constante innovación en la transmisión de contenidos al publico: www.dpr-barcelona.com/\r\n\r\nLos promotores editoriales, Ethel Baraona Pohl y César Reyes son arquitectos. Cuentan con:\r\n\r\n-Experiencia de 7 años en el mundo editorial de arquitectura. Contactos y gestión de contenidos para editoriales y revistas especializadas.\r\n\r\nEn dpr-barcelona el networking y las plataformas de trabajo colaborativo constituyen la forma de trabajo habitual, a modo de ejemplo pueden citarse:\r\n\r\n-Publicación del primer libro de arquitectura "sin papel" [Piel.Skin 2007] <skinarchitecture.com/ >\r\n-Coordinación del lanzamiento simultaneo en 5 ciudades de "Alguien Dijo Participar" el 11 Septiembre de 2009 <bit.ly/n12ll>\r\n-Red de Colaboraciones y contactos directos en los blogs de arquitectura mas relevantes a nivel mundial tanto por trafico de visitas como por calidad de contenidos.\r\n-Amplia Base de datos sobre proyectos y experiencias en arquitectura fruto de una extensa red 2.0 de contactos, colaboradores y despachos de arquitectura en los cinco continentes.\r\n-Coordinación y realización de experiencias académicas usando plataformas on line y presenciales en colaboración con equipos como Ecosistema Urbano y radarq <bit.ly/bPqEDi>\r\n\r\nPor su trabajo editorial en red y constante búsqueda de innovación han sido invitados a eventos como:\r\n\r\n-Postopolis, México DF <postopolis.org/>\r\n-Bookcamp - Kosmopolis, Barcelona <bit.ly/cfwmoQ>\r\n-Mercado Atlántico de Creación Contemporánea (MACC), Santiago de Compostela <bit.ly/aHOFMQ>\r\n-HOY sistemas de Trabajo, Madrid <bit.ly/a05QOg>\r\n-KAM Workshops, Atenas <bit.ly/9idEg5>\r\n-Eme3, Barcelona <bit.ly/bkwDfE>\r\n\r\nActividad académica como lecturers o asesores:\r\nUniversitat Politecnica de Catalunya, Universitat de Barcelona, Arquiredes Motril, Esarq-UIC, Calgary University, International Campus Ultzama\r\n\r\nPROMOTORES TECNOLOGICOS:\r\n\r\nClaimSoluciones es el socio tecnológico involucrado en el proyecto. Es un estudio de comunicación que utiliza la Estrategia y la Producción Visual como herramientas principales. Desarrollan proyectos de comunicación en Web, diseño gráfico, producción audiovisual, below media. Esta formado por Sergio Jiménez y Jakob Renpening', '', 'editorial, arquitectura, ciudad, AR, blogs', '', 0, 0, 'Barcelona', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('canal-alfa', 'Canal Alfa', NULL, 'es', 6, 0, 47, 'geraldo', 'goteo', 1400, 0, '2011-05-13', '2011-06-14', '2011-07-06', '0000-00-00', '2011-09-01', NULL, '', '', '', NULL, '', '', 'Barcelona', 'España', '', 'Canalalpha es un proyecto que quiere aplicar el concepto del sample al vídeo. Entendiendo sample como una unidad mínima musical, muy expandida en la música electrónica desde los años 90. El proyecto quiere llevar el equivalente del sample al vídeo más allá del conocido termino “loop”, aplicándolo a unidades que puedan tener independencia dentro del mismo vídeo gracias a un canal de transparencia. De esta manera, un vídeo se entiende como la composición de sus partes (al estilo de capas) que actúan como entidades independientes que pueden apagarse o encenderse, ir a una velocidad diferente hacia delante o hacia atrás, tener tamaños distintos (incluso variables durante la reproducción) e incluso posicionamientos no estándares dentro de la composición (warping).\r\n\r\nEl marco de acción del proyecto se compone de estos 3 ejes que se formalizan en un portal web hasta ahora inexistente:\r\n\r\n1. Una base de datos abierta y libre (CC) de samples de vídeo - incluyendo un canal de transparencia - que representen unidades básicas que puedan ser utilizadas para crear composiciones.\r\n\r\n2. Herramientas que permiten extraer objetos de vídeos para esta base de datos, incluyendo la posibilidad de extraer partes de los vídeos existentes en los portales de vídeo tales como youtube. Los métodos para la extracción de samples de vídeos ya existentes se basan en técnicas de visión por computador: substracción de fondo (background substraction), detección de movimiento, umbral de color, umbral de intensidad. La intención es ir mas allá del ya conocido chroma-key, tan usado en televisión.\r\n\r\n3. Una plataforma para obras creadas con samples de vídeos de la base de datos pública de canalalpha entendidos como poemas visuales animados, interactivos y sujetos a una narrativa cambiante.', '', NULL, 0, 'URL proyecto: www.canalalpha.net/\r\n\r\nSector al que va dirigido: artistas visuales', '', 'Gerald Kogler es especialista en diseño de sistemas interactivos y software libre. Desarrolla aplicaciones web y instalaciones interactivas de forma autónoma y dicta asignaturas de programación en diversas universidades de Barcelona. Forma parte de ZZZINC: zzzinc.net/\r\n\r\nProyectos destacados:\r\n- casastristes - Herramientas de visualización para una vivienda digna: casastristes.org/\r\n- Independent Robotic Community: mediainterventions.net/comunidad/\r\n- Museu de la Patum de Berga: museu.lapatum.cat/\r\n\r\nMarti Sanchez es investigador en inteligencia artificial en la Universidad Pompeu Fabra, departamento SPECS. Como artista de medios interactivos y audiovisuales colabora con KonicTheatr, compañía Sr. Serrano y Institut Fatima realizando numerosas instalaciones interactivas, una de ellas presentada en el centro ZKM y ganadora del premio ciudad de Barcelona (MurMuros de Konic Theatr).\r\n\r\nProyectos destacados:\r\n- Mixed Reality Robot Arena: www.youtube.com/watch?v=HDmjGJ9sqeI\r\n- Sr. Serrano // Contra.Natura: www.youtube.com/watch?v=3RNvxH5cKX0\r\n- Sr. Serrano // Artefact: www.youtube.com/watch?v=opMfQ-hbUD0', '', '', '', 0, 0, 'Barcelona', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('cf5c3dbb1b78edda7ce637d071304220', 'Mi proyecto 2', NULL, 'es', 1, 0, 38, 'esenabre', 'goteo', 0, 0, '2011-12-22', NULL, NULL, NULL, NULL, NULL, 'Enric Senabre Hidalgo', '46649545W', '932215515', NULL, 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Barcelona', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('dinou-publicacio-irregular', 'DINOU Publicació irregular', NULL, 'es', 3, 1, 85, 'diegobus', 'goteo', 800, 27, '2011-07-12', '2011-11-09', '2011-12-17', '2011-11-01', '0000-00-00', NULL, 'diego', 'x8562415k', '658125454', NULL, 'c/ calle 98, 1º 2º', '08000', 'Barcelona', 'España', '', 'La idea de esta publicación surge de forma espontánea el martes 31 de mayo de 2011, con ella intentamos compilar a manera de instantáneas una serie de frases recogidas mediante entrevistas realizadas en la acampada de la Plaza Catalunya de Barcelona y diversas fuentes en internet.\r\n\r\nEl espectro es amplio, lo naif convive con lo intelectual, lo político con lo emocional, hemos seleccionado una serie de ideas que volaban como esporas por el aire. Esta aglomeración de conceptos no es más que un intento por llevar al papel las ganas de cambiar aspectos fundamentales de la realidad actual.', 'La idea de esta publicación surge de forma espontánea el martes 31 de mayo de 2011, con ella intentamos compilar a manera de instantáneas una serie de frases recogidas mediante entrevistas realizadas en la acampada de la Plaza Catalunya de Barcelona y diversas fuentes en internet.', NULL, 0, 'La idea de esta publicación surge de forma espontánea el martes 31 de mayo de 2011, con ella intentamos compilar a manera de instantáneas una serie de frases recogidas mediante entrevistas realizadas en la acampada de la Plaza Catalunya de Barcelona y diversas fuentes en internet.', '', '', NULL, '', 'http://www.vimeo.com/25195643', 0, 3, 'Barcelona', 1, 'Costes de concepción diseño y maquetación ya están cubiertos.', '', 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('e4ae82c6a3497c04d2338fe63961c92c', 'Mi proyecto 3', NULL, 'es', 0, 0, 16, 'root', 'goteo', 0, 0, '2011-07-25', NULL, NULL, NULL, '2011-07-25', NULL, 'Super administrador', '', '', NULL, '', '', '', 'EspaÃ±a', NULL, '', '', NULL, 0, '', '', '', NULL, '', NULL, 0, NULL, '', NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('f1dd9c1678c62273e21b67bff6e8b47a', 'Mi proyecto 1', NULL, 'es', 0, 0, 59, 'kaime', 'goteo', 0, 0, '2011-07-20', '2011-07-20', NULL, NULL, '2011-07-25', NULL, 'Jaume Alemany', '43103776M', '666666666', NULL, 'Aquí', '07141', 'Marratxí (Pueblo)', 'España', '', '', 'ssss', NULL, 0, 'sss', 's', 's', NULL, 'ssss', 'sss', 0, 2, 'Marratxí (Pueblo)', 2, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('f63dab04c0b63cb02d4d1a85aa738ee3', 'Mi proyecto 1', NULL, 'es', 1, 0, 30, 'ivan', 'goteo', 0, 0, '2011-07-31', '2011-09-14', NULL, NULL, NULL, NULL, '', '', '', '', '', '', 'la garriga, barcelona', 'EspaÃ±a', '', '', '', NULL, 0, '', '', '', NULL, '', '', 0, NULL, 'la garriga, barcelona', NULL, '', '', 0, '0000-00-00', '', '', '', '', 1, '', '', '');
INSERT INTO `project` VALUES('fixie-per-tothom', 'Fixie per tothom', 'The ultimate self made cycle', 'es', 3, 1, 91, 'diegobus', 'goteo', 102, 28, '2011-05-10', '2011-11-22', '2011-11-08', '2011-09-04', '2011-10-06', NULL, 'diego', 'x8562415k', '658125454', NULL, 'c/ calle 98, 1º 2º', '08000', 'barcelona', 'España', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fringilla dolor quis elit cursus sit amet tincidunt elit ultrices. Mauris ultricies auctor velit vel tempor. Integer sollicitudin consequat ultrices. Fusce at ante sit amet augue dapibus mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam facilisis fermentum vestibulum. Mauris accumsan, ante nec aliquet porttitor, ipsum diam elementum elit, at volutpat nisl nibh in quam. Nunc aliquet arcu quis erat ultricies tristique. Nunc laoreet odio vitae quam porta tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur diam augue, lacinia in eleifend id, mollis facilisis sem. Pellentesque suscipit dolor id nisl elementum in blandit turpis tempus. Mauris nec libero dolor, sed volutpat eros. Morbi hendrerit, tellus consequat dictum interdum, massa tellus ornare ante, vitae venenatis ipsum mi viverra urna. Proin varius pulvinar lobortis. Integer luctus tellus vel elit adipiscing feugiat. In hac habitasse platea dictumst. Fusce porta eros molestie orci dignissim mollis. Cras volutpat, turpis a tempus commodo, sapien sem porttitor eros, vitae dapibus nisl ante ut nisi. Pellentesque gravida vehicula ipsum id bibendum. ', 'Pellentesque gravida vehicula ipsum id bibendum. ', '', 0, 'Proin varius pulvinar lobortis. Integer luctus tellus vel elit adipiscing feugiat. In hac habitasse platea dictumst. Fusce porta eros molestie orci dignissim mollis. Cras volutpat, turpis a tempus commodo, sapien sem porttitor eros, vitae dapibus nisl ante ut nisi. Pellentesque gravida vehicula ipsum id bibendum. ', 'Fusce at ante sit amet augue dapibus mattis. \r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. \r\n\r\nNullam facilisis fermentum vestibulum. Mauris accumsan, ante nec aliquet porttitor, ipsum diam elementum elit, at volutpat nisl nibh in quam. Nunc aliquet arcu quis erat ultricies tristique. Nunc laoreet odio vitae quam porta tincidunt.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur diam augue, lacinia in eleifend id, mollis facilisis sem. Pellentesque suscipit dolor id nisl elementum in blandit turpis tempus. Mauris nec libero dolor, sed volutpat eros. Morbi hendrerit, tellus consequat dictum interdum, massa tellus ornare ante, vitae venenatis ipsu.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fringilla dolor quis elit cursus sit amet tincidunt elit ultrices. Mauris ultricies auctor velit vel tempor. Integer sollicitudin consequat ultrices. Fusce at ante sit amet augue dapibus mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam facilisis fermentum vestibulum. Mauris accumsan, ante nec aliquet porttitor, ipsum diam elementum elit, at volutpat nisl nibh in quam. Nunc aliquet arcu quis erat ultricies tristique. Nunc laoreet odio vitae quam porta tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur diam augue, lacinia in eleifend id, mollis facilisis sem. Pellentesque suscipit dolor id nisl elementum in blandit turpis tempus. Mauris nec libero dolor, sed volutpat eros.', NULL, 'Nunc, tristique', 'http://vimeo.com/31832374', 0, 1, 'barcelona', 2, 'Nulla pellentesque mi at dolor accumsan accumsan. Praesent arcu nibh, sollicitudin eu fringilla fringilla, rhoncus et mi. Sed sed pretium ipsum. Vestibulum non velit nibh, non dignissim eros. Phasellus varius sodales accumsan.', '', 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('goteo', 'Goteo', NULL, 'es', 6, 0, 63, 'goteo', 'goteo', 340, 0, '2011-04-05', '2011-10-16', '2011-03-28', NULL, NULL, NULL, 'Susana Noguero', 'G63306914', '654321987', '', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España', '', 'sdaf asdf asdf asdf \r\nasdf asdf asdf asdf\r\n\r\na sdfasdf asdf asd f\r\n\r\n\r\n\r\na sdfasdf asdf asfd', 'sdaf aklñjklñasjdfas dlkjasdflo jdfklajsdf`poi asdjkldfj klñasdj flkja sdklñfj lkasj flkh aslñkdhfasdhf`+ha sdlf ñlaskdh flñashd fl lkj klasdfj lñkasjflkj as `dfop  lksdjaf lkñjas `lasj dlfj laksdjfàu dflkjas dlñkfj alsj dfñlj asodiuo`f m,dv v akljasd `j a´lsdfas `fhah´sflhFjjuioHJiohHIOHIOklnklda f asñdnf klasdh òh sndv ñxbcvñp ha`hfb webkash djkjkbsdñhjksdmd d sd sdnv  sda,k d daks ka f   d. njkasdnj a, msdnafkjh ,m nsdak k , , ,a sdh fjkahs df  am,db via b nbdbbsdbbkdv kdsbhjk', NULL, 0, 'Es lo prinme to coq eujasido lkj dasfufoqjwklf dn aklsn lasdpj wqf lknsdai oqlk laskdf òasi qlwken lkjhd foiahsdfklqwlñekfn lasdk foì lñkwefalsjdo`fu+aifqñlwek lñkwew eh  cd jklñh dasdjk jklash d fhalskdh jkl sdjkl ljkasb dklb sjkldb vklabs dkb skñdbfk.bs dkfpñksb dfklabsklñbsfkjbasjkbdfkjbaskljbdfjk', 'sadf asdf ', '', '', '', 'http://blip.tv/play/hKxHgtHRewI.html', 0, 0, '', 0, '', '', 0, '0000-00-00', '', '', '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('hkp', 'Hkp.', NULL, 'es', 1, 0, 53, 'tintangibles', 'goteo', 70, 0, '2011-05-13', '2011-07-31', '0000-00-00', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Barcelona', 'España', '', 'HKp es un proyecto audiovisual y editorial sobre los “hackers” de lo cotidiano. Documenta ejemplos de artefactos (objetos, herramientas, muebles, aparatos, máquinas, software, vehículos), a los que sus usuarios han dado un uso distinto del que tenían originariamente haciendo modificación o ensamblando partes de otros artefactos.\r\n\r\nToma el término hack del mundo del software que expresa un tipo de intervención que corrige o modifica el funcionamiento de un programa.\r\n\r\nHKp investiga en que medida esta manera de pensar y hacer tiene sus raíces en algo que forma parte de la naturaleza humana.\r\nUn propósito del proyecto es detectar y dar visibilidad a un tipo de creatividad que se produce en varios sectores: entorno rural, talleres, industria, hogares, hackers, prácticas artísticas, etc.\r\n\r\nRecomendamos ver algunos ejemplos de, como reciclar una cafetera para fundir plomo, llantas de coche como barbacoa, paraguas como falda impermeable, una rueda de bici como rueda para hilar, una estufa de leña a partir de un compresor de aire en el siguiente enlace:\r\nenlloc.net/hkp/w/index.php/Hacks', '', NULL, 0, 'URL proyecto:enlloc.net/hkp/w/\r\n\r\nSector al que va dirigido:un propósito del proyecto es detectar y dar visibilidad a un tipo de creatividad que se produce en varios sectores: entorno rural, talleres, indústria, hogares, hackers, hacktivistas, prácticas artísticas, ...', '', 'Desde el TAG se han impulsado proyectos como:\r\n\r\nGERMINADOR de propuestas de creación colectiva - germinador.net\r\nDesde 2005\r\n\r\nPLANTER software de creación colectiva - planter.germinador.net\r\nDesarrollo de Wikipool y Telps\r\nCon Pimpampum (Dani Julià y Anna Fuster) y Jaume Nualart\r\n2007\r\n\r\nHKp apropiación creativa de los usuarios - enlloc.net/hkp/w\r\nCon Joan Montserrat\r\nprimera fase 2009\r\n\r\nSopadepedres - enlloc.net/sopadepedres\r\nActividades en Maçart (2006) y con el IES A.Deulofeu (2008)\r\n\r\nDesde el colectivo desde 1996 se han realizado intervenciones urbanas (dreceres urbanes, xMataró, ciutats de cordill), instalaciones (AMC, Argila, Cajacabeza), talleres (net.art, deriva urbana, copyleft, creación colectiva) y proyectos de net.art como:\r\nTrencaclosques (2007) www.enlloc.org/trencaclosques\r\nCONSTITUCIÓN editar/discutir (2004-2007)\r\nA-PAM (DEL NAS) (2004) i APAMESNOSEMAPA (2007) - Premio CanariasMediafest 2004 www.enlloc.org/apamesnosemapa\r\nBalcons que diuen no a la guerra (2003)\r\nTol tol tol (1999) - Premio Barcelona Möbius 1999', '', 'apropiación tecnológica, hack, arte, wiki, editorial', 'http://vimeo.com/16201682', 0, 0, 'Barcelona', 2, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('mi-barrio', 'Mi barrio', NULL, 'es', 1, 0, 48, 'itxaso', 'goteo', 7000, 0, '2011-05-13', '2011-09-19', '2011-09-23', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Bilbao', 'España', '', 'Mi barrio propone, y supone, la creación de una serie de microdocumentales de construcción participativa por parte de los habitantes de los territorios en los que interviene, utilizando herramientas no invasivas y fáciles de utilizar; teléfonos móviles.\r\n\r\nMi barrio se constituye como un ejercicio documental participativo y plural que mapea la geografía nacional en busca de contenidos locales de interés general, fomentando la interacción social, la colaboración y la capacitación tecnológica\r\ny comunicativa de la ciudadanía.\r\n\r\nMi barrio presenta a los barrios y las periferias como entornos de innovación, investigación y cocreación que aprovecha el talento creativo, la diversidad sociocultural, la imaginación, la inventiva, e incluso los factores impredecibles, para reflejar las diferentes realidades que coexisten en los barrios y en las ciudades.', '', NULL, 0, 'Sector al que va dirigido:Diferentes tramos de edades, etnias, procedencias de un mismo barrio', '', 'Describe qué experiencia tienes (proyectos anteriores relevantes, organizaciones con o en las que has trabajado, si has dado clases ...). Añade la información que te parezcan relevantes sobre tus capacidades, tus puntos fuertes y cómo los has aplicado en otros proyectos tuyos o de otros (incluye links a ser posible):\r\n\r\nOtros proyectos en los que he participado:\r\n- Proyecto Habla es un ejercicio documental participativo y formativo. Se trata de un ”dinamizador social” que pretende fomentar el empoderamiento de las comunidades más desfavorecidas, potenciando la participación e implicación ciudadana en dichos territorios. Este proyecto se ha realizado en colaboración con la ONGD Anesvad y se ha desarrollado entre los meses de agosto y noviembre de 2010 en Perú y Banglades.\r\nMás info; www.ubiqa.com/seguimos-creyendo-que-es-posible%E2%80%A6-y-vamos-a-contarlo/\r\nwww.proyectohabla.org/, www.anesvad.tv/\r\n\r\n- Aldea DOC\r\nAldea DOC surge como respuesta a la petición de la Concejalía de Innovación y e-Gobierno del Ayuntamiento de Cáceres para la realización de un proyecto participativo sobre la situación del barrio de Aldea Moret de Cáceres.\r\nAldea DOC cartografía las anomalías, las zonas de transición del barrio Aldea Moret, donde la precariedad convive con prácticas de ilegales, para fomentar la participación y la implicación ciudadana en el actual proceso de reconversión de la zona.\r\nwww.ubiqa.com/aldea-doc/', '', 'construción colaborativa, documental, capacitación tecnológica, identidad, territorio', 'http://vimeo.com/12013746', 0, 0, '', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('move-commons', 'Move Commons', NULL, 'es', 1, 0, 55, 'acomunes', 'goteo', 95, 0, '2011-05-13', '2011-09-16', '2011-07-13', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Madrid', 'España', '', 'Move Commons consiste en una sencilla herramienta que permite que iniciativas, colectivos y ONGs puedan declarar los principios en los que se basan. Las características a las que atiende Move Commons para describir un proyecto son si éste es distribuido, si la participación de sus miembros es horizontal, si se trata de una inciativa sin ánimo de lucro y si el proyecto refuerza el procomún.\r\n\r\nExisten numerosas iniciativas promoviendo los bienes comunes en distintos campos. Sin embargo, sólo unas pocas han alcanzado masa crítica y pueden ser conocidas por una gran comunidad, mientras que la mayoría siguen marginadas e ignoradas. Move Commons (MC) es una herramienta que pretende potenciar la visibilidad y difusión de dichas iniciativas, "dibujando" la red de iniciativas y colectivos relacionados en cualquier lugar, facilitando el descubrimiento mutuo y el alcance de masa crítica en cada campo. Además, cualquier voluntario podrá comprender el enfoque del colectivo fácilmente y encontrar otros colectivos en su ciudad, de sus intereses, o de su campo en movecommons.org. Más implicaciones en movecommons.org/implications\r\n', '- Elige tu MC en movecommons.org/preview\r\n- Las implicaciones de MC movecommons.org/implications\r\n- El blog de MC movecommons.org/blog', NULL, 0, 'MC es una herramienta para iniciativas, colectivos, ONGs y movimientos sociales para que declaren los principios básicos a los que están comprometidos. Sigue la misma mecánica de Creative Commons al "etiquetar" los trabajos culturales, proporcionando un sistema de auto-etiquetado estandarizado, usable, bottom-up, para cada iniciativa, con 4 iconos y algunas keywords. Todo está apoyado por contenido semántico para permitir búsquedas del tipo «qué iniciativas existen en Beirut que sean horizontales, sin ánimo de lucro, usando Creative Commons y relacionadas con "educación alternativa" y "adolescentes"» (o otros principios, palabras clave o lugares). Los cuatro principios/iconos que cada iniciativa puede mostrar son: Con/Sin ánimo de lucro; Reproducible/Exclusiva; Horizontal/Jerárquica; Reforzando los Comunes / Otros objetivos (explicados en movecommons.org/preview/ ).\r\nURL proyecto:movecommons.org\r\n\r\nSector al que va dirigido:Colectivos, ONGs, movimientos sociales, cooperativas, activistas, voluntarios', 'MC, aún en un estado alfa de desarrollo, pretende proporcionar una plataforma libre donde múltiples extensiones puedan ser implementadas, como un recomendador de iniciativas similares, mapeo geográfico de iniciativas, estadísticas y gráficas sobre los datos abiertos, visualización de las redes de colectivos, widgets para la web, etc.', 'Desde el año 2002 el colectivo Comunes viene desarrollando diferentes iniciativas y proyectos relacionados con los bienes comunes. Comunes se centra en facilitar el trabajo de otras iniciativas y colectivos a través de herramientas y recursos web. Algunos de nuestros proyectos: 1) ourproject.org: servicios web libres para proyectos sociales, actualmente con más de 800 proyectos de muy diversos campos; 2) Kune, kune.ourproject.org plataforma de creación de proyectos libres, en fase de desarrollo; 3) movecommons.org: herramienta web aquí descrita; y otras citadas en la web del colectivo comunes.org', '', 'herramienta, web, colectivos, ongs, movimientos sociales, activismo, voluntariado, creative commons, web semántica, bienes comunes, procomún', '', 0, 0, 'Madrid', 0, '', '', 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('no-sleep-till-brooklyn', 'NO SLEEP ''TILL BROOKLYN', NULL, 'es', 2, 0, 80, 'olivier', 'goteo', 1485, 0, '2011-05-12', '2011-11-05', '2011-09-09', NULL, NULL, NULL, 'Johny Cash dsf sadf', 'G63306914', '+34 932 077 085', 'pepe_hernandez_fernandez@doukeshi.org', 'C/ Montalegre, 5', '08001', 'Barcelona', 'España', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', 'cyberpunk Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', NULL, 0, 'una canción de los beastie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', 'cyberpunk Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', 'un monton de gente', NULL, 'educación, copyleft, manchego', '', 0, 3, 'paris', 0, '', '', 1, '1977-09-15', 'CEO', 'DOUKESHI S.L.', 'G63306914', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('nodo-movil', 'Nodo Móvil', NULL, 'es', 2, 0, 52, 'efoglia', 'goteo', 255, 0, '2011-05-13', '2011-12-06', '2011-07-05', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Barcelona', 'España', '', 'Es una estación de transmisión libre, una infraestructura de telecomunicación inalámbrica móvil, que se puede usar en el entorno urbano y permite el mallado digital a través de redes ciudadanas. Cuenta con una capacidad de autonomía y configuración propia. Este Nodo Móvil puede construir una LAN (Local Area Network) en territorios irregulares, conectándose entre sí de forma independiente a las empresas de telecomunicación.\r\nSus aplicaciones son multidisciplinares: educación, activismo, arte, primeros auxilios, etc. ', '', NULL, 0, 'Este proyecto suma flexibilidad y propone posibilidades de interconexión con los dispositivos digitales que habitan las ciudades contemporáneas. El Nodo Móvil es un dispositivo de altas prestaciones, permite la transmisión de datos con un ancho de banda potente.\r\nEl Nodo Móvil incorpora movilidad a la red guifi.net, la extiende y provoca nuevas prácticas sociales en el entorno urbano mezclando espacio público físico y digital.\r\n\r\nURL proyecto:www.proyectoliquido.com/Mobile_Node.htm\r\n\r\nSector al que va dirigido:Aplicaciones multidisciplinares: educación, activismo, arte, primeros auxilios, etc.', 'Actualmente tenemos 1 Nodo Móvil en pruebas y nos interesa construir (con este financiamiento) un segundo NM.\r\nLo importante del proyecto es mejorar el diseño y su rendimiento, de esta forma se podrá duplicar más facilmente y las ciudadanas podrán acceder a esta tecnología a bajo costo con réditos sociales importantes.\r\nLo vital en este momento es tener recursos para seguirlo desarrollando.\r\nEl proyecto tiene varias fases de implementación. Se busca incorporar sistemas diversos de mallado como tecnología GPS, microcontroladores, Bluetooth, etc.\r\nLugares: El proyecto tiene su base en Barcelona en donde actualmente se diseña, pero su conectividad es posible en casi todo el territorio catalán en donde se encuentre un nodo de guifi.net. Los otros lugares citados en el mapa son posibilidades que ya cuentan con interlocutores interesados.', 'La filosofía detrás del proyecto es la promovida por guifi.net a través de los últimos 6 años. Actualmente esta red ciudadana interconecta más de 11,000 nodos totalmente gestionados por los usuarios. \r\n\r\nAcá hay una idea general:\r\n\r\nwww.efrainfoglia.net/', '', 'Open City, Xarxa Oberta, Movilidad, Espacio Público, Portabilidad.', 'http://www.youtube.com/watch?v=BOryyEv9qMA', 0, 0, 'Barcelona', 0, '', '', 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('oh-oh-fase-2', 'Oh_Oh fase 2', NULL, 'es', 1, 0, 50, 'dcuartielles', 'goteo', 70, 0, '2011-05-13', '2011-07-05', '0000-00-00', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Malm�', 'Suecia', '', 'Oh_Oh es una plataforma robótica de bajo coste para ser usada en educación en secundaria. El primer prototipo fue financiado por el CCEMX como parte del proyecto "La Maquila del Faro de Oriente", que consistió en la creación de actividades educativas basadas en el uso de hardware y software libre para chicos/as de edades comprendidas entre 10 y 18 anos. La creación de esta plataforma ha atraído el interés de otras personas interesadas en la robótica a nivel educativo por lo que me he dado cuenta que seria interesante dedicar algo mas de esfuerzo a concretar la plataforma a un nivel que sea sencilla de reproducir.\r\n\r\nLa idea de este proyecto es hacer una nueva interacción del diseño de hardware así como finalizar la revisión del software con el que se cuenta en la actualidad para poder ofrecerlo de forma libre a aquellos interesados en la realización de sus propios robots.', '', NULL, 0, 'URL del proyecto: http://code.google.com/p/arduino-compatible-robots/wiki/Oh_Oh\r\n\r\nSector al que va dirigido: sistema educativo, secundaria, profesores del area de tecnologia, centros de formacion profesional, clubes de tiempo libre', '', 'Anteriormente he hecho:\r\n\r\n- creador del proyecto (ahora empresa) de hardware libre www.arduino.cc\r\n- creador de la empresa www.1scale1.com, Malmo, Suecia\r\n- creador del estudio de diseño Aeswad, Malmo, Suecia webzone.k3.mah.se\r\n\r\nDoy clases en la Universidad de Malmo, Suecia, desde el 2001, soy director del laboratorio de prototipos de productos.', '', 'electronica, software, tutoriales, educacion, comunidad', '', 0, 3, 'Malmö, Suecia', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('pliegos', 'PliegOS', NULL, 'es', 2, 1, 80, 'esenabre', 'goteo', 0, 0, '2011-06-15', '2011-12-07', '2011-07-04', '0000-00-00', '0000-00-00', NULL, 'Enric Senabre Hidalgo', '46649545W', '932215515', NULL, 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. Pellentesque molestie mollis quam a iaculis. Nunc feugiat consectetur mauris quis blandit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed imperdiet scelerisque ante, eu rhoncus augue dictum eu. Sed imperdiet imperdiet semper. Maecenas in dolor dolor, quis ullamcorper velit. Duis ut ligula tellus, eget luctus arcu. Phasellus volutpat euismod tortor, et dignissim nulla consectetur euismod. Nulla pretium laoreet arcu, vitae consectetur nisi imperdiet a. Morbi arcu lorem, ornare condimentum pulvinar non, mattis sed tortor.\r\n\r\nVivamus sollicitudin urna ac massa iaculis consectetur. Etiam aliquet tempor quam ac tempor. Morbi dictum diam et lacus faucibus sodales. Phasellus commodo purus quam. Sed interdum luctus posuere. Suspendisse vehicula justo a mi commodo interdum. Nunc malesuada bibendum quam, id blandit dolor volutpat ut. In. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. Pellentesque molestie mollis quam a iaculis. Nunc feugiat consectetur mauris quis blandit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed imperdiet scelerisque ante, eu rhoncus augue dictum eu. Sed imperdiet imperdiet semper.', NULL, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. Pellentesque molestie mollis quam a iaculis. Nunc feugiat consectetur mauris quis blandit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed imperdiet scelerisque ante, eu rhoncus augue dictum eu. Sed imperdiet imperdiet semper.', '- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. \r\n- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. \r\n- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. \r\n- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac magna in odio congue suscipit. Ut arcu augue, tempus in facilisis eu, elementum ut risus. Pellentesque molestie mollis quam a iaculis. Nunc feugiat consectetur mauris quis blandit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed imperdiet scelerisque ante, eu rhoncus augue dictum eu. Sed imperdiet imperdiet semper.', NULL, 'salud, humor', 'http://www.youtube.com/watch?v=ab5pnqCF0Kc', 0, 4, 'Barcelona', 0, '', '', 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('robocicla', 'Robocicla', NULL, 'es', 1, 0, 50, 'carlaboserman', 'goteo', 145, 0, '2011-05-13', '2011-07-25', '2011-07-05', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Sevilla', 'España', '', 'Robocicla es una iniciativa Extremeña que mezcla arte, creatividad, reciclaje y tecnología.\r\nEs una herramienta pensada para que niñ@s, jóvenes, padres, madres y educador@s se diviertan y aprendan junt@s acerca del conocimiento y la cultura libres.\r\n\r\nA través de fichas de auto-construcción ilustradas, aprenderemos a confeccionar Robots usando tecnología reciclada.\r\nEstos Robots nos contarán cómo liberar, compartir y construir entre todos el conocimiento.\r\nEn www.robocicla.net podrás conocer experiencias de robociclaje y descargar todo el material didáctico para usarlo cuando quieras.\r\nEn los Robocicla_TALLERES aprenderemos\r\n1. Sobre la importancia de reciclar el material tecnológico, su impacto medioambiental en el mundo, y las posibilidades artísticas que nos ofrece el reciclaje.\r\n2. Desmontaje de Equipos, para separar lo que aún tiene vida útil, y lo que usaremos para construir nuestros robots. Papelera electrónica de reciclaje.\r\n3. Construiremos a Hackerina y conoceremos los principios de la Ética Hacker.\r\n4. Aprenderemos electrónica básica: incorporando leds, interruptores, y ventiladores a nuestros robots.\r\n5. Documentaremos el taller y seremos bloguers de Robocila.\r\n\r\nActualmente el equipo de robocicla trabaja en la elaboración de material didáctico para niñ@s, en forma de cuentojuegos ilustrados acerca de la historia de cada uno de los Robots, que serán publicados digital y analógicamente.\r\n\r\nNota: Mientras buscaba financiación colectiva, Robocicla empezo una gira de 20 talleres por todo el territorio extremeño promovida por el Consorcio IdenTic a través de la Red de Telecentros Extremeños', '', NULL, 0, 'URL proyecto:www.robocicla.net\r\n\r\nSector al que va dirigido:comunidad educativa, niñ@s de todas las edades, frikis, instituciones, comunidad software libre / cultura libre', '', 'Carla Boserman // Licenciada en Bellas artes entre Sevilla y Atenas en la especialidad de Diseño Gráfico y Grabado. Mi experiencia profesional tiene que ver con la gestión creativo-cultural de proyectos de arte colaborativo, con especial atención al enfoque pedagógico y terapéutico de los proyectos.\r\nDibujo, creo y enredo. Y sobre todo, me muevo.\r\nTrabajo en la elaboración de diarios viajes ilustrados, aprendo cerámica y empiezo a formarme en el campo del arte terapia. Enamorada de Extremadura, donde he vivido y trabajado en los últimos tiempos, he podido desarrollar el proyecto La Siberia Mail Art www.siberiapostal.net haciendo de mis dibujos una herramienta de puesta de valor de un territorio y sus gentes.\r\n\r\n+ Breve CV\r\n\r\n2007 Ilustraciones/Colaboración en el proyecto Tecnopaisajes. TCS 2 Extremadura.\r\n2007 Primer premio Creativa 07 Consejería de Innovación Ciencia y Empresa Junta de Andalucía para el desarrollo del\r\nproyecto Pista Digital plataforma itinerante para la cultura. www.pistadigital.org\r\n2007 Premio INICIARTE de la Junta de Andalucía para la realización del proyecto Larache se mueve Festival entre las\r\ndos orillas. Sevilla y Larache (Marruecos).\r\n2008+2009 Conceptualización, diseño y dinamización editorial del Proyecto Robinsones Urbanos, un espacio\r\nciudadano digital y una herramienta para pacientes con Trastorno Bipolar, que cuenta con el apoyo de Ciudadanía Digital,\r\nConsejería de Innovación de la Junta de Andalucía. robinsonesurbanos.org\r\n2008 Invitada al Simposium Nomadism: Art and New Technologies. Theatre de la Villette (Paris).\r\n2008 Ilustraciones y documentación para el Taller de reciclaje del agua: Aguas Mil, CALA. Alburquerque (Badajoz).\r\n2008 Exposición de Pinturas para el evento Senegal se Mueve de la ONG AEXCRAM (Mérida)\r\n2009 Diseño de Postal para la conservación del patrimonio de Canido (Pontevedra).\r\n2009 Diseño de la Exposición: Miradas Cruzadas Sobre el Patrimonio Marroquí. Sala Diagonal 3 (Sevilla).\r\n2010 Ponencia sobre el proyecto La Siberia mail art, Escuela de Arte de Mérida.\r\n2010 Ilustraciones para el libro : Historia del encaje de bolillos en Extremadura.\r\n2010 PROCESO DE CONSTRUCCIÓN COLECTIVA - The Coffee Break 2010 (Junta de Extremadura)\r\nwww.thecooffebreak.biz\r\n2010 Taller de Creaciones Fantásticas//Reciclando Tecnología – Festival NTX (Los Santos de Maimona, Badajoz)\r\nwww.festivalntx.com/ntx2010/\r\n2010 Beca a la Creación Joven para el proyecto Taller de Creaciones Fantásticas 2.0 Robocicla.net\r\nConsejería de los jóvenes y del deporte-Junta de Extremadura. www.robocicla.net\r\n2010 Diseño Packing para el documental - La Esquina del tiempo -Galizuela/Badajoz de Carla Alonso.', '', 'cultura libre, reciclaje, software libre, pedagogía, creacion', 'http://www.youtube.com/watch?v=XNVCetMiUsY', 0, 0, 'Sevilla', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('todojunto-letterpress', 'Todojunto Letterpress', NULL, 'es', 1, 0, 52, 'todojunto', 'goteo', 25, 0, '2011-05-13', '2011-08-25', '0000-00-00', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Barcelona', 'España', '', 'Todojunto cuenta actualmente con un taller de tipografía móvil que ha nacido de algunos elementos que hemos recuperado de una imprenta de barrio con la que trabajábamos en Barcelona. Todojunto Letterpress intenta poner en marcha un espacio para recuperar esta técnica de impresión, y utilizarlo como un espacio de aprendizaje y discusión sobre la tipografía en general, el diseño, y las técnicas de producción gráfica.\r\nBásicamente se nececitan mas juegos de tipografías de plomo y Madera, los muebles para guardarlas, y equipo que se pueda recuperar de otras imprentas que no lo usen mas. Hemos calculado que esta primera fase, para completar lo que ya tenemos en nuestro taller, necesita una inversión de 2000 euros, y horas de trabajo, en el proceso de clasificación, organización y limpieza de los materiales recuperados. Ofrecemos a cambio workshops, impresiones personalizadas para las personas hagan aportes económicos superiores a los 150€.\r\nTambién ofrecemos en retorno, una pequeña publicación con material pedagogico sobre la técnica, una especie de Manual/fanzine del taller de Todojunto letterpress.', '', NULL, 0, 'URL del proyecto: www.todojunto.net\r\n\r\nSector al que va dirigido: Impresores amateurs, Estudiantes de diseño y tipografía, Profesores, interesados en la producción gráfica, artistas, Barcelona', '', 'Tenemos una parte del taller de tipos móviles en funcionamiento desde hace aproximandamente 8 meses, tiempo en el que hemos experimentado con esta técnica, somos un estudio de comunicación gráfica, esta es la dirección de nuestro sitio web www.todojunto.net\r\n\r\ntambién venimos de proyectos independintes de ilustración, comunicación y proyectos culturales:\r\n\r\nwww.jstk.org (Andrea Gómez y Ricardo Duque)\r\nwww.miuk.ws (Tiago Pina)\r\nwww.andreagomez.info (Andrea Gómez)\r\n\r\ny estamos vinculados con el proyecto de La Fanzinoteca Ambulant: www.fanzinoteca.net', '', 'Impresión, grafica, técnica, tipografías móviles, recuperación', 'http://vimeo.com/17760187', 0, 1, 'Barcelona', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('tutorial-goteo', 'Tutorial Goteo', NULL, 'es', 5, 0, 77, 'demo', 'goteo', 2000, 0, '2011-07-26', '2011-08-27', '2011-07-27', NULL, NULL, NULL, 'Demo Goteo', '46649545W', '936924182', NULL, 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España', '', 'Aquí se debe describir el proyecto con un mínimo de 80 palabras (con menos marcará error), explicándolo de modo que sea fácil de entender para cualquier persona. También hay que darle un enfoque atractivo y social, resumiendo sus características básicas. \r\n\r\nAdemás es donde linkar un vídeo en que se presente brevemente, algo que consideramos muy importante para poder difundirlo y que llegue al máximo posible de personas.\r\n\r\nEs lo primero con lo que cualquier usuario de la red se encontrará, así que se debe cuidar la redacción y evitar las faltas de ortografía. \r\n\r\nHay campos obligatorios como incluir un vídeo o subir imágenes. Esto es así porque los consideramos imprescindibles para empezar con éxito una campaña de recaudación de fondos mediante Goteo.\r\n\r\nPara este apartado y el resto de secciones del formulario de Goteo es posible utilizar código HTML, especialmente para links a páginas web y puntualmente el uso de cursivas o negritas (pero sin abusar :)\r\n\r\nOtras secciones importantes dentro del formulario del proyecto, que se solicitan cuando éste se da de alta, son las categorías y palabras clave que permiten buscarlo en la plataforma, el estado de desarrollo en que se encuentra y el alcance geográfico previsto.', 'Aquí recomendamos explicar de modo resumido qué motivos o circunstancias han llevado a idear el proyecto. Así podrá conectar con más personas motivadas por ese mismo tipo de intereses, problemáticas o gustos.', NULL, 0, 'Aquí se debe describir brevemente el proyecto de modo conceptual, técnico o práctico. Por ejemplo detallando sus características de funcionamiento, o en qué partes consistirá. Debe ayudar a hacerse una idea sobre cómo será una vez acabado y todo lo que la gente podrá hacer con él.', 'Sección para enumerar las metas principales del proyecto, a corto y largo plazo, en todos los aspectos que se considere importante destacar. Se trata de otra oportunidad para contactar y conseguir el apoyo de gente que simpatice con esos objetivos.', 'Este apartado es muy importante para generar confianza en los cofinanciadores potenciales del proyecto, explicando la trayectoria y experiencia previa de la persona o grupo impulsor del proyecto. Qué experiencia tiene relacionada con la propuesta y con qué equipo de personas, recursos y/o infraestructuras cuenta.', NULL, 'Goteo', 'http://vimeo.com/26970224', 0, 1, 'Barcelona', 4, 'La herramienta también permite indicar si se cuenta con recursos adicionales, a parte de los que se solicitan, para llevar a cabo el proyecto: fuentes de financiación, recursos propios o bien ya se ha hecho acopio de materiales. Puede suponer un aliciente para los potenciales cofinanciadores del proyecto.', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('tweetometro', 'Tweetometro', NULL, 'es', 3, 0, 80, 'demo', 'goteo', 1400, 0, '2011-07-26', '2011-09-09', '2011-08-18', '0000-00-00', '2011-08-24', '2011-10-07', 'Demo Goteo', '46649545W', '936924182', NULL, 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España', '', 'Plataforma experimental de votación viral mediante tweets, actualmente en fase alfa. Una aplicación ágil y social para llegar a acuerdos, tomar decisiones colectivamente o elegir la mejor idea presentada. Al mismo tiempo sirve para activar y promover (micro)conversaciones focalizadas en temas concretos. \r\n\r\nSe trata de una aplicación ya en desarrollo pero que aún se puede optimizar para que generalice su uso. La queremos mejorar para que cualquiera la pueda utilizar, como software libre o servicio online, y que además funcione mediante SMS. \r\n\r\nEn una fase de pruebas con alta movilización social a través de Twitter con motivo del #15M, tras  20 días de participación abierta, tanto para emitir votos positivos como negativos sobre ocho propuestas planteadas, se recopilaron un total de 1.122 votos a través del hastag #tweetometro. De estos 1.045 han sido votos positivos y 77 negativos (estos últimos ponderando a la baja los porcentajes de las diferentes propuestas).', 'Tras testear la herramienta en una votación de proyectos tecnosociales en 2009 durante las jornadas <a href="http://www.urbanlabs.net/">UrbanLabs</a>, se abrió la posibilidad de seguir experimentando con ella para generar consenso y discusión en el contexto de las movilizaciones posteriores al #15M. Creemos que se demostró su utilidad pero también que necesita diferentes mejoras, y que así pueda utilizarla más gente.', NULL, 0, 'La plataforma de Tweetometro consiste en una interficie que muestra resultados en tiempo real de determinadas palabras clave o hashtags enviados desde Twitter. Permite comparar de manera estadística su evolución y por tanto que la popular red social se convierta en una herramienta de voto. Ofrece de momento dos tipos de visualización (termómetros y porcentajes) y un administrador básico.', 'Los objetivos actuales del proyecto son mejorar la interfície para incorporar cuentas de Twitter, ampliar los formatos de visualización, hacer más usable la página de administración, implementar la posibilidad de emitir votos por SMS y en definitiva hacer una buena herramienta de software libre fácil de usar por cualquiera. ', 'Platoniq es una organización internacional de productores culturales y desarrolladores de software, pionera en la producción y distribución de cultura copyleft. Desde el año 2001, llevamos desarrollando proyectos relacionados con la cultura libre y TICs. Hemos producido software libre como http://burnstation.net cuyo código está disponible en para las distribuciones de GNU/Linux Ubuntu y Debian. \r\nTambién hemos desarrollado entre otras plataformas que dan un servicio gratuito para la creación de canales de radio por Internet como http://open-server.org o de intercambio de conocimientos entre la ciudadanía http://bancocomun.org o un tablón de anuncios audiovisuales de ofertas y demandas http://eseoese.org. Reproducidos y utilizados por muchos colectivos y entidades ciudadanas de Europa y Latinoamérica especialmente. \r\nHemos obtenido reconocimiento internacional por nuestro trabajo con premios y menciones internacionales como en la Transmediales de Berlín, Transxitio de Mexico DF, Unesco Digital Arts Awards, etc. \r\nContamos con servidores propios y  una red de colaboradores programadores, diseñadores y creativos para el desarrollo de nuestros proyectos. \r\n\r\n\r\n\r\n', NULL, 'Twitter, consenso, ', 'http://www.youtube.com/watch?v=O69x4oyuLzI', 0, 3, 'Barcelona', 4, ' ', '', 0, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL);
INSERT INTO `project` VALUES('urban-social-design-database', 'Urban Social Design Database', NULL, 'es', 1, 0, 50, 'domenico', 'goteo', 115, 0, '2011-05-13', '2011-07-31', '2011-07-05', '0000-00-00', '0000-00-00', NULL, '', '', '', NULL, '', '', 'Madrid', 'España', '', 'Crear una base de datos digital de proyectos desarrollados por los estudiantes durante su carrera universitaria. Ofrecer un nuevo espacio de conexión y dialogo entre el mundo académico y la ciudadanía.\r\n\r\nTodo el material almacenado en la base de dados será de acceso público y distribuido con licencia del tipo Creative Commons.\r\n\r\nEl marco general del proyecto se basa sobre el concepto de Urban Social Design entendido como el diseño de ambientes, espacios y dinámicas con el fin de mejorar las relaciones sociales, generando las condiciones para la interacción y la auto-organización entre las personas y su medio ambiente. ', '', NULL, 0, 'URL proyecto: www.archtlas.com\r\n\r\nSector al que va dirigido: estudiantes, jóvenes profesionales, ciudadanos, activadores urbanos', '', 'El proyecto esta directamente asociado a una serie de cursos on-line que (temporalmente) llamamos Urban Social Design Institute (ecosistemaurbano.tv/tag/urban-social-design/).\r\n\r\nLa plataforma web que se quiere utilizar para el proyecto ya esta funcionando desde unos meses: www.archtlas.com\r\n\r\nEl principal promotor del proyecto es la agencia Ecosistema Urbano.\r\n\r\nEcosistema Urbano es una sociedad de profesionales que entienden la ciudad como fenómeno complejo, situándose en un punto intermedio entre arquitectura, ingeniería, urbanismo y sociología. Este ámbito de interés lo denominamos “sostenibilidad urbana creativa”, desde donde intentamos transformar la realidad contemporánea a través de innovación, creatividad y sobre todo acción.\r\n\r\nSus integrantes principales han sido formados entre distintas universidades europeas (Madrid, Londres, Bruselas, Roma, Paris) y proceden de entornos urbanos diversos. Ejercen la docencia como profesores visitantes, impartiendo talleres y conferencias en las principales escuelas e instituciones internacionales (Harvard, Yale, UCLA, Cornell, Iberoamericana, RIBA, Copenague, Munich, Paris, Milán, Shanghai…).Desde 2000, su trabajo ha sido premiado nacional e internacionalmente en más de 30 ocasiones.\r\n\r\nEn 2005 recibieron el European Acknowledgement Award otorgado por la Holcim Foundation for Sustainable Construction (Ginebra, 2005). En 2006, el premio de la Architectural Association and the Environments, Ecology and Sustainability Research Cluster (Londres, 2006). En 2007 fueron nominados para el premio europeo Mies Van Der Rohe Award “Arquitecto Europeo Emergente” y galardonados como oficina emergente con el premio “AR AWARD for emerging architecture” (London) entre 400 participantes de todo el mundo. En 2008 recibieron el primer premio GENERACIÓN PRÓXIMA de la Fundación Próxima Arquía y en 2009 el Silver Award Europe de la Holcim Foundation for Sustainable Construction entre más de 500 equipos, siendo más tarde nominados como finalistas a nivel mundial.\r\n\r\nEn los últimos años su trabajo se ha difundido en más de 90 medios de 30 países (prensa nacional e internacional, programas de televisión y publicaciones especializadas) y han sido expuestos en numerosas galerías, museos e instituciones (Bienal de Venecia, "Le Sommer Environnement" en París, Spazio FMG de Milán, Seul Design Olimpics, Louisiana Museum of Modern Art de Copenague, Boston Society of Architects, Matadero Madrid, Circulo de Bellas Artes de Madrid, COAM, COAC,...). En la actualidad exponen en el Design Museum de Londres dentro de la muestra "sustainable futures"y preparan una exposición monográfica sobre su trabajo en el Deutsches Architektur Zentrum de Berlin.\r\n\r\nActualmente el equipo está involucrado en proyectos I+D sobre el futuro urbano "ciudades eco-tecno-lógicas" Proyecto CETICA, financiado por el Ministerio Industria dentro del programa CENIT. En paralelo, desarrollan una labor de difusión a través de nuevas tecnologías de la información, donde han generado una plataforma de comunicación que crea redes sociales y gestiona canales de difusión en internet sobre sostenibilidad urbana creativa (www.ecosistemaurbano.org).\r\n\r\nEn la actualidad trabajan en propuestas de transformación urbana para diferentes ciudades y sus proyectos más recientes incluyen el diseño de un espacio público de experimentación interactivo para la Expo Universal de Shanghai 2010 y la propuesta urbana Plaza Ecópolis de Rivas en la periferia de Madrid.', '', 'diseño, proyectos, base de datos, difusión, educación', '', 0, 0, '', 0, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_account`
--

DROP TABLE IF EXISTS `project_account`;
CREATE TABLE `project_account` (
  `project` varchar(50) NOT NULL,
  `bank` tinytext,
  `paypal` tinytext,
  PRIMARY KEY (`project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cuentas bancarias de proyecto';

--
-- Volcar la base de datos para la tabla `project_account`
--

INSERT INTO `project_account` VALUES('2c667d6a62707f369bad654174116a1e', NULL, 'projec_1314918267_per@gmail.com');
INSERT INTO `project_account` VALUES('fixie-per-tothom', '0000-0000-00-00000000000', 'projec_1314918267_per@gmail.com');
INSERT INTO `project_account` VALUES('goteo', '1234-12034-11-1234567890', 'projec_1314918267_per@gmail.com');
INSERT INTO `project_account` VALUES('mi-barrio', NULL, 'projec_1314918267_per@gmail.com');
INSERT INTO `project_account` VALUES('tweetometro', NULL, 'projec_1314918267_per@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_category`
--

DROP TABLE IF EXISTS `project_category`;
CREATE TABLE `project_category` (
  `project` varchar(50) NOT NULL,
  `category` int(12) NOT NULL,
  UNIQUE KEY `project_category` (`project`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Categorias de los proyectos';

--
-- Volcar la base de datos para la tabla `project_category`
--

INSERT INTO `project_category` VALUES('3d72d03458ebd5797cc5fc1c014fc894', 7);
INSERT INTO `project_category` VALUES('3d72d03458ebd5797cc5fc1c014fc894', 10);
INSERT INTO `project_category` VALUES('3d72d03458ebd5797cc5fc1c014fc894', 14);
INSERT INTO `project_category` VALUES('3d72d03458ebd5797cc5fc1c014fc894', 15);
INSERT INTO `project_category` VALUES('8851739335520c5eeea01cd745d0442d', 6);
INSERT INTO `project_category` VALUES('a565092b772c29abc1b92f999af2f2fb', 6);
INSERT INTO `project_category` VALUES('archinhand-architecture-in-your-hand', 7);
INSERT INTO `project_category` VALUES('archinhand-architecture-in-your-hand', 10);
INSERT INTO `project_category` VALUES('dinou-publicacio-irregular', 2);
INSERT INTO `project_category` VALUES('dinou-publicacio-irregular', 6);
INSERT INTO `project_category` VALUES('f1dd9c1678c62273e21b67bff6e8b47a', 6);
INSERT INTO `project_category` VALUES('f1dd9c1678c62273e21b67bff6e8b47a', 9);
INSERT INTO `project_category` VALUES('f1dd9c1678c62273e21b67bff6e8b47a', 10);
INSERT INTO `project_category` VALUES('f1dd9c1678c62273e21b67bff6e8b47a', 11);
INSERT INTO `project_category` VALUES('f1dd9c1678c62273e21b67bff6e8b47a', 14);
INSERT INTO `project_category` VALUES('fixie-per-tothom', 6);
INSERT INTO `project_category` VALUES('move-commons', 2);
INSERT INTO `project_category` VALUES('move-commons', 7);
INSERT INTO `project_category` VALUES('no-sleep-till-brooklyn', 2);
INSERT INTO `project_category` VALUES('no-sleep-till-brooklyn', 7);
INSERT INTO `project_category` VALUES('no-sleep-till-brooklyn', 9);
INSERT INTO `project_category` VALUES('no-sleep-till-brooklyn', 14);
INSERT INTO `project_category` VALUES('oh-oh-fase-2', 7);
INSERT INTO `project_category` VALUES('oh-oh-fase-2', 10);
INSERT INTO `project_category` VALUES('pliegos', 6);
INSERT INTO `project_category` VALUES('pliegos', 11);
INSERT INTO `project_category` VALUES('pliegos', 13);
INSERT INTO `project_category` VALUES('robocicla', 7);
INSERT INTO `project_category` VALUES('robocicla', 10);
INSERT INTO `project_category` VALUES('robocicla', 11);
INSERT INTO `project_category` VALUES('tutorial-goteo', 6);
INSERT INTO `project_category` VALUES('tutorial-goteo', 10);
INSERT INTO `project_category` VALUES('tweetometro', 6);
INSERT INTO `project_category` VALUES('tweetometro', 7);
INSERT INTO `project_category` VALUES('urban-social-design-database', 7);
INSERT INTO `project_category` VALUES('urban-social-design-database', 10);
INSERT INTO `project_category` VALUES('urban-social-design-database', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_image`
--

DROP TABLE IF EXISTS `project_image`;
CREATE TABLE `project_image` (
  `project` varchar(50) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`project`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `project_image`
--

INSERT INTO `project_image` VALUES('3d72d03458ebd5797cc5fc1c014fc894', 151);
INSERT INTO `project_image` VALUES('a565092b772c29abc1b92f999af2f2fb', 21);
INSERT INTO `project_image` VALUES('a565092b772c29abc1b92f999af2f2fb', 64);
INSERT INTO `project_image` VALUES('a565092b772c29abc1b92f999af2f2fb', 65);
INSERT INTO `project_image` VALUES('archinhand-architecture-in-your-hand', 57);
INSERT INTO `project_image` VALUES('canal-alfa', 62);
INSERT INTO `project_image` VALUES('dinou-publicacio-irregular', 83);
INSERT INTO `project_image` VALUES('dinou-publicacio-irregular', 84);
INSERT INTO `project_image` VALUES('dinou-publicacio-irregular', 85);
INSERT INTO `project_image` VALUES('dinou-publicacio-irregular', 86);
INSERT INTO `project_image` VALUES('dinou-publicacio-irregular', 87);
INSERT INTO `project_image` VALUES('dinou-publicacio-irregular', 88);
INSERT INTO `project_image` VALUES('dinou-publicacio-irregular', 89);
INSERT INTO `project_image` VALUES('fixie-per-tothom', 14);
INSERT INTO `project_image` VALUES('goteo', 138);
INSERT INTO `project_image` VALUES('hkp', 59);
INSERT INTO `project_image` VALUES('mi-barrio', 58);
INSERT INTO `project_image` VALUES('move-commons', 60);
INSERT INTO `project_image` VALUES('no-sleep-till-brooklyn', 15);
INSERT INTO `project_image` VALUES('no-sleep-till-brooklyn', 66);
INSERT INTO `project_image` VALUES('nodo-movil', 61);
INSERT INTO `project_image` VALUES('oh-oh-fase-2', 55);
INSERT INTO `project_image` VALUES('pliegos', 28);
INSERT INTO `project_image` VALUES('robocicla', 63);
INSERT INTO `project_image` VALUES('todojunto-letterpress', 54);
INSERT INTO `project_image` VALUES('tutorial-goteo', 115);
INSERT INTO `project_image` VALUES('tutorial-goteo', 116);
INSERT INTO `project_image` VALUES('tweetometro', 106);
INSERT INTO `project_image` VALUES('tweetometro', 107);
INSERT INTO `project_image` VALUES('tweetometro', 108);
INSERT INTO `project_image` VALUES('urban-social-design-database', 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_lang`
--

DROP TABLE IF EXISTS `project_lang`;
CREATE TABLE `project_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `description` text,
  `motivation` text,
  `video` varchar(256) DEFAULT NULL,
  `about` text,
  `goal` text,
  `related` text,
  `keywords` tinytext,
  `media` varchar(255) DEFAULT NULL,
  `subtitle` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `project_lang`
--

INSERT INTO `project_lang` VALUES('2c667d6a62707f369bad654174116a1e', 'ca', 'cat cat cat cat cat cat cat cat cat Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', 'cat cat cat cat cat cat catcyberpunk Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', NULL, 'cat cat cat cat cat cat cat cat cat una canción de los beastie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', 'cat cat cat cat cat cat cat cat cat cyberpunk Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat fermentum risus in pulvinar. Nunc a pretium lorem. Morbi semper orci ac nisl mattis accumsan. Integer a metus lacus. Aenean sagittis mattis mi, id pulvinar lectus sagittis vitae. Etiam eget metus in lacus feugiat viverra. Vestibulum sed dui id tellus dictum hendrerit. Duis id lacus odio, nec viverra libero. Donec varius, felis ac rhoncus molestie, turpis nulla ullamcorper ligula, sit amet elementum justo tortor sit amet dui. Sed in ultrices arcu. Suspendisse potenti. Nulla vestibulum consequat nulla ac dictum. Nulla sagittis nibh eu arcu pulvinar luctus. Praesent a nibh ac risus sollicitudin auctor. ', 'cat cat cat cat cat cat cat cat cat un monton de gente', 'cat cat cat cat cat cat catcat cat cat cat cat cat cateducación, copyleft, manchego', 'http://www.youtube.com/watch?v=h5aRPhsPaWU', 'cat cat cat cat cat cat cat cat cat ');
INSERT INTO `project_lang` VALUES('fixie-per-tothom', 'en', 'ENG Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fringilla dolor quis elit cursus sit amet tincidunt elit ultrices. Mauris ultricies auctor velit vel tempor. Integer sollicitudin consequat ultrices. Fusce at ante sit amet augue dapibus mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam facilisis fermentum vestibulum. Mauris accumsan, ante nec aliquet porttitor, ipsum diam elementum elit, at volutpat nisl nibh in quam. Nunc aliquet arcu quis erat ultricies tristique. Nunc laoreet odio vitae quam porta tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur diam augue, lacinia in eleifend id, mollis facilisis sem. Pellentesque suscipit dolor id nisl elementum in blandit turpis tempus. Mauris nec libero dolor, sed volutpat eros. Morbi hendrerit, tellus consequat dictum interdum, massa tellus ornare ante, vitae venenatis ipsum mi viverra urna. Proin varius pulvinar lobortis. Integer luctus tellus vel elit adipiscing feugiat. In hac habitasse platea dictumst. Fusce porta eros molestie orci dignissim mollis. Cras volutpat, turpis a tempus commodo, sapien sem porttitor eros, vitae dapibus nisl ante ut nisi. Pellentesque gravida vehicula ipsum id bibendum. ', 'ENG Pellentesque gravida vehicula ipsum id bibendum. ', '', 'ENG Proin varius pulvinar lobortis. Integer luctus tellus vel elit adipiscing feugiat. In hac habitasse platea dictumst. Fusce porta eros molestie orci dignissim mollis. Cras volutpat, turpis a tempus commodo, sapien sem porttitor eros, vitae dapibus nisl ante ut nisi. Pellentesque gravida vehicula ipsum id bibendum. ', 'ENG Fusce at ante sit amet augue dapibus mattis. \r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. \r\n\r\nNullam facilisis fermentum vestibulum. Mauris accumsan, ante nec aliquet porttitor, ipsum diam elementum elit, at volutpat nisl nibh in quam. Nunc aliquet arcu quis erat ultricies tristique. Nunc laoreet odio vitae quam porta tincidunt.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur diam augue, lacinia in eleifend id, mollis facilisis sem. Pellentesque suscipit dolor id nisl elementum in blandit turpis tempus. Mauris nec libero dolor, sed volutpat eros. Morbi hendrerit, tellus consequat dictum interdum, massa tellus ornare ante, vitae venenatis ipsu.', 'ENG Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fringilla dolor quis elit cursus sit amet tincidunt elit ultrices. Mauris ultricies auctor velit vel tempor. Integer sollicitudin consequat ultrices. Fusce at ante sit amet augue dapibus mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam facilisis fermentum vestibulum. Mauris accumsan, ante nec aliquet porttitor, ipsum diam elementum elit, at volutpat nisl nibh in quam. Nunc aliquet arcu quis erat ultricies tristique. Nunc laoreet odio vitae quam porta tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur diam augue, lacinia in eleifend id, mollis facilisis sem. Pellentesque suscipit dolor id nisl elementum in blandit turpis tempus. Mauris nec libero dolor, sed volutpat eros.', 'Nunc, tristique', 'http://vimeo.com/31832374', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promote`
--

DROP TABLE IF EXISTS `promote`;
CREATE TABLE `promote` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `title` tinytext,
  `description` text,
  `order` smallint(5) unsigned NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_node` (`node`,`project`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Proyectos destacados' AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `promote`
--

INSERT INTO `promote` VALUES(9, 'goteo', 'tweetometro', 'Recompensas', 'superan el limite?', 2, 1);
INSERT INTO `promote` VALUES(10, 'goteo', 'dinou-publicacio-irregular', 'caducado', 'enportadfa', 3, 1);
INSERT INTO `promote` VALUES(13, 'goteo', 'fixie-per-tothom', 'Aportar a este', 'Hay que hacerlo llegar al mínimo en la primera ronda', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promote_lang`
--

DROP TABLE IF EXISTS `promote_lang`;
CREATE TABLE `promote_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `promote_lang`
--

INSERT INTO `promote_lang` VALUES(1, 'en', 'ENG Tutorial Goteo', 'ENG Proyecto piloto que explica cada campo necesario en un proyecto, con un vídeo tutorial.');
INSERT INTO `promote_lang` VALUES(2, 'en', 'ENG Demo proyecto', 'ENG Ejemplo detallado con todos los campos a tener en cuenta para proponer un proyecto en Goteo.');
INSERT INTO `promote_lang` VALUES(9, 'en', 'ENG Recompensas', 'ENG superan el limite?');
INSERT INTO `promote_lang` VALUES(10, 'en', 'ENG caducado', 'ENG enportadfa');
INSERT INTO `promote_lang` VALUES(13, 'en', 'ENG Aportar a este', 'ENG Hay que hacerlo llegar al mínimo en la primera ronda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purpose`
--

DROP TABLE IF EXISTS `purpose`;
CREATE TABLE `purpose` (
  `text` varchar(50) NOT NULL,
  `purpose` text NOT NULL,
  `html` tinyint(1) DEFAULT NULL COMMENT 'Si el texto lleva formato html',
  `group` varchar(50) NOT NULL DEFAULT 'general' COMMENT 'Agrupacion de uso',
  PRIMARY KEY (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Explicación del propósito de los textos';

--
-- Volcar la base de datos para la tabla `purpose`
--

INSERT INTO `purpose` VALUES('assign-call-failed', 'No se ha podido asignar', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('assign-call-success', 'Proyecto inscrito correctamente', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('blog-coments-header', 'Comentarios', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-comments', 'Comentarios', NULL, 'general');
INSERT INTO `purpose` VALUES('blog-comments_no_allowed', 'No se permiten comentarios en  esta entrada', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-comments_no_comments', 'No hay comentarios en esta entrada', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-main-header', 'Blog de Goteo', NULL, 'general');
INSERT INTO `purpose` VALUES('blog-no_comments', 'Sin comentarios', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-no_posts', 'No se ha publicado ninguna entrada ', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-send_comment-button', 'Enviar', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-send_comment-header', 'Escribe tu comentario', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-side-last_comments', 'Últimos comentarios', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-side-last_posts', 'Últimas entradas', NULL, 'blog');
INSERT INTO `purpose` VALUES('blog-side-tags', 'Categorías', NULL, 'blog');
INSERT INTO `purpose` VALUES('call-field-amount', 'Presupuesto', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-apply', 'Cómo se puede aplicar', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-call_location', 'Localización', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-categories', 'Categorías', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-days', 'Número de días de aplicación', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-description', 'Enunciado de la campaña', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-icons', 'Tipos de retorno', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-image', 'Imagen de fondo', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-legal', 'Términos y condiciones', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-logo', 'Logo de la campaña', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-name', 'Nombre de la campaña', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-field-whom', 'Quiénes pueden participar', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-form-ajax-info', 'El formulario de convocatoria se va grabando segun pases por cada campo', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-overview-main-header', 'Descripción', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-review-confirm_mail-fail', 'Ha fallado al enviar el mail de confirmación', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-review-confirm_mail-success', 'Te hemos enviado un mail de confirmación', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-review-request_mail-fail', 'Ha fallado al enviar el mail de petición de revisión', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-review-request_mail-success', 'Hemos recibido tu petición de revisión de convocatoria', NULL, 'call_form');
INSERT INTO `purpose` VALUES('call-splash-applied_projects-header', 'Proyectos inscritos', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-apply-button', 'Participar', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-campaign_title', 'Campaña', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-categories-header', 'Proyectos dentro de las categorías', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-dossier-link', 'Descarga el PDF con las bases', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-icons-header', 'Proyectos con retornos', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-invest_explain', 'Por cada (1&euro;) que das a un proyecto en www.goteo.org, <strong>%s</strong> aporta otro al proyecto que has apoyado. Los proyectos participantes han sido seleccionados por convocatoria abierta.', 1, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-legal-link', 'Términos y condiciones', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-location-header', 'Campaña solo para proyectos en:', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-more_info-button', 'Más info...', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-more_info-header', 'Más información', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-remain_budget-header', 'Queda por repartir', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-runing_projects-header', 'Proyectos en proceso', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-searching_projects', 'Se buscan proyectos!', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-see_projects-button', 'Ver proyectos seleccionados', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-selected_projects-header', 'Proyectos seleccionados', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-success_projects-header', 'Proyectos exitosos', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-valid_until-header', 'Convocatoria válida hasta:', NULL, 'call_public');
INSERT INTO `purpose` VALUES('call-splash-whole_budget-header', 'Presupuesto total de campaña', NULL, 'call_public');
INSERT INTO `purpose` VALUES('community-menu-activity', 'Actividad', NULL, 'menu');
INSERT INTO `purpose` VALUES('community-menu-main', 'Comunidad', NULL, 'menu');
INSERT INTO `purpose` VALUES('community-menu-sharemates', 'Compartiendo', NULL, 'menu');
INSERT INTO `purpose` VALUES('contact-email-field', 'Email', NULL, 'contact');
INSERT INTO `purpose` VALUES('contact-message-field', 'Mensaje', NULL, 'contact');
INSERT INTO `purpose` VALUES('contact-send_message-button', 'Enviar', NULL, 'contact');
INSERT INTO `purpose` VALUES('contact-send_message-header', 'Envíanos un mensaje', NULL, 'contact');
INSERT INTO `purpose` VALUES('contact-subject-field', 'Asunto', NULL, 'contact');
INSERT INTO `purpose` VALUES('cost-type-lend', 'Préstamo', NULL, 'costs');
INSERT INTO `purpose` VALUES('cost-type-material', 'Material', NULL, 'costs');
INSERT INTO `purpose` VALUES('cost-type-structure', 'Infraestructura', NULL, 'costs');
INSERT INTO `purpose` VALUES('cost-type-task', 'Tarea', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-amount', 'Valor', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-cost', 'Coste', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-dates', 'Fechas', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-date_from', 'Desde', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-date_until', 'Hasta', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-description', 'Descripción', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-required_cost', 'Este coste es', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-required_cost-no', 'Adicional', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-required_cost-yes', 'Imprescindible', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-resoure', 'Otros recursos', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-schedule', 'Agenda de trabajo', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-field-type', 'Tipo', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-fields-main-title', 'Desglose de costes', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-fields-metter-title', 'Visualización de costes', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-fields-resources-title', 'Recurso', NULL, 'costs');
INSERT INTO `purpose` VALUES('costs-main-header', 'Aspectos económicos', NULL, 'costs');
INSERT INTO `purpose` VALUES('criteria-owner-section-header', 'Respecto al creador/equipo', NULL, 'review');
INSERT INTO `purpose` VALUES('criteria-project-section-header', 'Respecto al proyecto', NULL, 'review');
INSERT INTO `purpose` VALUES('criteria-reward-section-header', 'Respecto al retorno', NULL, 'review');
INSERT INTO `purpose` VALUES('dashboard-call-delete_alert', 'Los datos de la convocatoria se van a eliminar completamente, seguimos?', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('dashboard-embed_code', 'CÓDIGO DIFUSIÓN SIMPLE', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-embed_code_investor', 'CÓDIGO CON IMAGEN DE COFINANCIADOR', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-header-main', 'Mi Dashboard', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-investors-mail-fail', 'Falló al enviar el mensaje a %s: %s', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-investors-mail-nowho', 'No se han encontrado destinatarios', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-investors-mail-sended', 'Mensaje enviado correctamente a %s: %s', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-investors-mail-sendto', 'Enviado a %s tus cofinanciadores:', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-investors-mail-text-required', 'Escribe el mensaje', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-activity', 'Mi actividad', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-activity-spread', 'Difusión', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-activity-summary', 'Resumen', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-activity-wall', 'Mi muro', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-admin_board', 'Administración', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-calls', 'Mis convocatorias', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('dashboard-menu-calls-assign_mode-off', 'Dejar de seleccionar proyectos ahora', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('dashboard-menu-calls-assign_mode-on', 'Ir a seleccionar proyectos', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('dashboard-menu-calls-preview', 'Página pública', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('dashboard-menu-calls-projects', 'Proyectos asignados', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('dashboard-menu-calls-summary', 'Resumen', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('dashboard-menu-main', 'Mi panel', NULL, 'menu');
INSERT INTO `purpose` VALUES('dashboard-menu-profile', 'Mi perfil', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-profile-access', 'Datos de acceso', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-profile-personal', 'Datos personales', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-profile-preferences', 'Preferencias', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-profile-profile', 'Editar perfil', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-profile-public', 'Perfil público', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects', 'Mis proyectos', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects-contract', 'Cuenta bancaria', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects-preview', 'Página pública', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects-rewards', 'Gestión cofinanciadores', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects-summary', 'Resumen', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects-supports', 'Colaboraciones', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects-updates', 'Novedades', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-projects-widgets', 'Widget', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-review_board', 'Revisión', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-translates', 'Mis Traducciones', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-menu-translate_board', 'Traducción', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-password-recover-advice', 'Asegúrate de reestablecer tu contraseña.', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-blog-fail', 'Contacta con nosotr*s', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-blog-inactive', 'Lo sentimos, la publicación de novedades en este proyecto está desactivada', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-blog-wrongstatus', 'Lo sentimos, aún no se pueden publicar novedades en este proyecto...', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-delete_alert', '¿Seguro que deseas eliminar absoluta y definitivamente este proyecto?', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-deleted', 'Entrada eliminada', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-delete_fail', 'Error al eliminar la entrada', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-fail', 'Ha habido algun problema al guardar los datos', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-inserted', 'Se ha añadido una nueva entrada', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-noblog', 'No se ha encontrado ningún blog para este proyecto', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-nopost', 'No se ha encontrado la entrada', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-postcorrupt', 'La entrada esta corrupta, contacta con nosotros', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('dashboard-project-updates-saved', 'La entrada se ha actualizado correctamente', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('discover-banner-header', 'Por categoría, lugar o retorno,<br /><span class="red">encuentra el proyecto</span> con el que más te identificas', 1, 'banners');
INSERT INTO `purpose` VALUES('discover-group-all-header', 'En campaña', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-group-archive-header', 'Archivados', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-group-call-header', 'Seleccionando proyectos para la convocatoria: ', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('discover-group-outdate-header', 'A punto de ser archivado', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-group-popular-header', 'Más populares', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-group-recent-header', 'Proyectos publicados recientemente', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-group-success-header', 'Exitosos', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-results-empty', 'No hemos encontrado ningún proyecto que cumpla los criterios de búsqueda', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-results-header', 'Resultado de búsqueda', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-button', 'Buscar', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-bycategory-all', 'TODAS', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-bycategory-header', 'Por categoría:', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-bycontent-header', 'Por contenido:', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-bylocation-all', 'TODOS', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-bylocation-header', 'Por lugar:', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-byreward-all', 'TODOS', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-byreward-header', 'Por retorno:', NULL, 'discover');
INSERT INTO `purpose` VALUES('discover-searcher-header', 'Busca un proyecto', NULL, 'discover');
INSERT INTO `purpose` VALUES('error-contact-email-empty', 'No has añadido tu email', NULL, 'contact');
INSERT INTO `purpose` VALUES('error-contact-email-invalid', 'El email que has escrito no es válido', NULL, 'general');
INSERT INTO `purpose` VALUES('error-contact-message-empty', 'No has escrito ningún mensaje', NULL, 'contact');
INSERT INTO `purpose` VALUES('error-contact-subject-empty', 'No has escrito el asunto', NULL, 'contact');
INSERT INTO `purpose` VALUES('error-image-name', 'Error en el nombre del archivo', NULL, 'general');
INSERT INTO `purpose` VALUES('error-image-size', 'Error en el tamaño del archivo', NULL, 'general');
INSERT INTO `purpose` VALUES('error-image-size-too-large', 'La imagen es demasiado grande', NULL, 'general');
INSERT INTO `purpose` VALUES('error-image-tmp', 'Error al cargar el archivo', NULL, 'general');
INSERT INTO `purpose` VALUES('error-image-type', 'Solo se permiten imágenes jpg, png y gif', NULL, 'general');
INSERT INTO `purpose` VALUES('error-image-type-not-allowed', 'Solo se permiten achivos de imagen tipo  .png  .jpg  .gif', NULL, 'general');
INSERT INTO `purpose` VALUES('error-register-email', 'La dirección de correo es obligatoria.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-register-email-confirm', 'La comprobación de email no coincide.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-register-email-exists', 'La dirección de correo facilitada corresponde a un usuario ya registrado.', NULL, 'general');
INSERT INTO `purpose` VALUES('error-register-invalid-password', 'La contraseña no es valida.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-register-password-confirm', 'La comprobación de contraseña no coincide.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-register-pasword', 'La contraseña no puede estar vacía.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-register-pasword-empty', 'No has puesto contraseña', NULL, 'general');
INSERT INTO `purpose` VALUES('error-register-short-password', 'La contraseña debe contener un mínimo de 8 caracteres.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-register-user-exists', 'Este nombre de usuario ya está registrado.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-register-userid', 'Es obligatorio escribir un nombre de acceso', NULL, 'login');
INSERT INTO `purpose` VALUES('error-register-username', 'El nombre público es obligatorio.', NULL, 'register');
INSERT INTO `purpose` VALUES('error-user-email-confirm', 'La confirmación de email no es igual que el email', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-email-empty', 'No puedes dejar el email vacio', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-email-exists', 'Ya hay un usuario registrado con este email', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-email-invalid', 'El email que has puesto no es válido', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-email-token-invalid', 'El código no es correcto', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-password-confirm', 'La confirmación de contraseña no es igual a la contraseña', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-password-empty', 'No has puesto la contraseña', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-password-invalid', 'La contraseña es demasiado corta, debe tener al menos 6 caracteres', NULL, 'general');
INSERT INTO `purpose` VALUES('error-user-wrong-password', 'La contraseña no es correcta', NULL, 'general');
INSERT INTO `purpose` VALUES('explain-project-progress', 'Este gráfico explica de un modo visual el nivel de datos que has introducido junto con una evaluación básica que hace el sistema. Para poder enviar el proyecto tienes que superar el 80%. Los criterios que hacen subir este "termómetro"  tienen que ver con la información relevante que facilitas, los media, imágenes y links que introduces, si eliges una licencia más abierta que otra, la coherencia de tu presupuesto respecto a las tareas a desarrollar, etc. No pierdas de vista los tooltips de la derecha que guían durante todo el proceso.', NULL, 'general');
INSERT INTO `purpose` VALUES('faq-ask-question', '¿No has podido resolver tu duda?\r\n Envía un mensaje con tu pregunta.', NULL, 'faq');
INSERT INTO `purpose` VALUES('faq-investors-section-header', 'Para cofinanciador@s', NULL, 'general');
INSERT INTO `purpose` VALUES('faq-main-section-header', 'Una aproximación a Goteo', NULL, 'faq');
INSERT INTO `purpose` VALUES('faq-nodes-section-header', 'Sobre nodos locales', NULL, 'faq');
INSERT INTO `purpose` VALUES('faq-project-section-header', 'Sobre los proyectos', NULL, 'faq');
INSERT INTO `purpose` VALUES('faq-sponsor-section-header', 'Para impulsor@s', NULL, 'general');
INSERT INTO `purpose` VALUES('fatal-error-call', 'La campaña que buscas no existe', NULL, 'call_public');
INSERT INTO `purpose` VALUES('fatal-error-project', 'Este proyecto que buscas... <span class="red">no existe</span>', 1, 'error');
INSERT INTO `purpose` VALUES('fatal-error-teapot', '<span class="greenblue">How embarassing...</span> unexpected Error occurred', 1, 'error');
INSERT INTO `purpose` VALUES('fatal-error-user', 'Este usuario que buscas... <span class="red">no existe</span>', 1, 'error');
INSERT INTO `purpose` VALUES('feed-blog-comment', 'Ha escrito un <span class="green">Comentario</span> en la entrada "%s" del blog de %s', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-head-community', 'Comunidad', NULL, 'community');
INSERT INTO `purpose` VALUES('feed-head-goteo', 'Goteo', NULL, 'community');
INSERT INTO `purpose` VALUES('feed-head-projects', 'Proyectos', NULL, 'community');
INSERT INTO `purpose` VALUES('feed-header', 'Actividad reciente', NULL, 'community');
INSERT INTO `purpose` VALUES('feed-invest', 'Ha aportado %s al proyecto %s', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-messages-new_thread', 'Ha abierto un tema en %s del proyecto %s', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-messages-response', 'Ha respondido en %s del proyecto %s', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-new_call', '<span class="red">Nueva convocatoria en Goteo</span>, ya pudes aplicar tu proyecto', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-new_call-opened', '<span class="red">Nueva convocatoria en Goteo</span>, ya pudes aplicar tu proyecto', 1, 'call_public');
INSERT INTO `purpose` VALUES('feed-new_call-published', '<span class="light-blue">Capital riego</span> disponible', 1, 'call_public');
INSERT INTO `purpose` VALUES('feed-new_project', '<span class="red">Nuevo proyecto en Goteo</span>, desde ahora tenemos 40 días para apoyar este proyecto', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-new_support', 'Ha publicado una nueva <span class="green">Colaboración</span> en el proyecto %s, con el título "%s"', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-new_update', '%s ha publicado un nuevo post en %s sobre el proyecto %s', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-new_user', 'Nuevo usuario en Goteo %s', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-project_fail', 'El proyecto %s ha sido <span class="red">archivado sin éxito</span> obteniendo <span class="violet">%s € (%s &#37;) de aportes sobre mínimo</span>', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-project_finish', 'El proyecto %s ha <span class="red">completado la segunda ronda</span> obteniendo <span class="violet">%s € (%s &#37;) de aportes sobre mínimo</span>', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-project_goon', 'El proyecto %s <span class="red">continúa en campaña</span> en segunda ronda obteniendo <span class="violet">%s € (%s &#37;) de aportes sobre mínimo</span>', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-project_runout', 'Al proyecto %s le faltan <span class="red">%s días</span> para finalizar la %sª ronda', 1, 'feed');
INSERT INTO `purpose` VALUES('feed-side-top_ten', 'Top ten cofinanciadores', NULL, 'community');
INSERT INTO `purpose` VALUES('feed-timeago', 'Hace %s', NULL, 'feed');
INSERT INTO `purpose` VALUES('feed-timeago-justnow', 'nada', NULL, 'feed');
INSERT INTO `purpose` VALUES('feed-timeago-periods', 'segundo-segundos_minuto-minutos_hora-horas_día-días_semana-semanas_mes-meses_año-años_década-décadas', NULL, 'feed');
INSERT INTO `purpose` VALUES('feed-timeago-published', 'Publicado hace %s', NULL, 'feed');
INSERT INTO `purpose` VALUES('feed-updates-comment', 'Ha escrito un <span class="green">Comentario</span> en la entrada "%s" en %s del proyecto %s', 1, 'feed');
INSERT INTO `purpose` VALUES('footer-header-categories', 'Categorías', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-header-projects', 'Proyectos', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-header-resources', 'Recursos', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-header-services', 'Servicios', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-header-social', 'Síguenos', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-header-sponsors', 'Apoyos institucionales', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-platoniq-iniciative', 'Una iniciativa de:', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-resources-glossary', 'Glosario', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-resources-press', 'Prensa', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-service-campaign', 'Campañas', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-service-consulting', 'Consultoría', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-service-resources', 'Capital riego', NULL, 'footer');
INSERT INTO `purpose` VALUES('footer-service-workshop', 'Talleres', NULL, 'footer');
INSERT INTO `purpose` VALUES('form-accept-button', 'Aceptar', NULL, 'form');
INSERT INTO `purpose` VALUES('form-add-button', 'Añadir', NULL, 'form');
INSERT INTO `purpose` VALUES('form-ajax-info', 'El formulario de proyecto se va grabando segun pases por cada campo', NULL, 'form');
INSERT INTO `purpose` VALUES('form-apply-button', 'Aplicar', NULL, 'form');
INSERT INTO `purpose` VALUES('form-call-status-title', 'Estado de la campaña', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('form-call_status-apply', 'Aplicación', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('form-call_status-edit', 'Edición', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('form-call_status-expired', 'Archivada', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('form-call_status-published', 'En marcha', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('form-call_status-review', 'En revisión', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('form-call_status-success', 'Completada', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('form-errors-info', 'Total: %s | En este paso: %s', NULL, 'form');
INSERT INTO `purpose` VALUES('form-errors-total', 'Hay %s errores en total', NULL, 'form');
INSERT INTO `purpose` VALUES('form-footer-errors_title', 'Errores', NULL, 'form');
INSERT INTO `purpose` VALUES('form-image_upload-button', 'Subir imagen', NULL, 'form');
INSERT INTO `purpose` VALUES('form-navigation_bar-header', 'Ir a', NULL, 'form');
INSERT INTO `purpose` VALUES('form-next-button', 'Siguiente', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project-info_status-title', 'Estado global de la información', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project-progress-title', 'Evaluación de datos', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project-status-title', 'Estado del proyecto', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-campaing', 'En campaña', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-cancel', 'Desechado', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-cancelled', 'Cancelado', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-edit', 'Editándose', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-expired', 'Archivado', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-fulfilled', 'Retorno cumplido', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-review', 'Pendiente de valoración', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_status-success', 'Financiado', NULL, 'form');
INSERT INTO `purpose` VALUES('form-project_waitfor-campaing', 'Difunde tu proyecto, ayuda a que consiga el máximo de aportaciones!', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('form-project_waitfor-cancel', 'Finalmente hemos desestimado la propuesta para publicarla en Goteo, te invitamos a intentarlo con otra idea o concepto.', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('form-project_waitfor-edit', 'Cuando lo tengas listo mándalo a revisión. Necesitas llegar a un mínimo de información sobre el proyecto en el formulario.', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('form-project_waitfor-expired', 'No lo conseguiste :( Trata de mejorarlo e intentalo de nuevo!', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('form-project_waitfor-fulfilled', 'Has cumplido con los retornos :) Gracias por tu participación!', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('form-project_waitfor-review', 'En breve nos podremos en contacto contigo respecto al proyecto, una vez se lleve a cabo el proceso de revisión. A continuación lo publicaremos o bien te sugeriremos cosas para mejorar su adecuación a Goteo.', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('form-project_waitfor-success', 'Has conseguido el mínimo o más en aportes de cofinanciación para el proyecto. Enseguida te contactaremos para hablar de dinero :)', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('form-remove-button', 'Quitar', NULL, 'form');
INSERT INTO `purpose` VALUES('form-self_review-button', 'Corregir', NULL, 'form');
INSERT INTO `purpose` VALUES('form-send_review-button', 'Enviar', NULL, 'form');
INSERT INTO `purpose` VALUES('form-upload-button', 'Enviar', NULL, 'form');
INSERT INTO `purpose` VALUES('guide-call-contract-information', 'Guia paso 2 de datos privados del convocador', NULL, 'call_form');
INSERT INTO `purpose` VALUES('guide-call-description', 'Guia paso 3 de descripción de la convocatoria', NULL, 'call_form');
INSERT INTO `purpose` VALUES('guide-call-preview', 'Guia paso previsualización', NULL, 'call_form');
INSERT INTO `purpose` VALUES('guide-call-user-information', 'Guia paso 1 de datos públicos del convocador', NULL, 'call_form');
INSERT INTO `purpose` VALUES('guide-dashboard-user-access', 'Desde aquí puedes modificar los datos con que accedes a tu cuenta de Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-dashboard-user-personal', 'Sólo debes cumplimentar estos datos si has creado un proyecto y quieres que sea cofinanciado y apoyado mediante Goteo.\r\n\r\nLa información de este apartado es necesaria para contactarte en caso de que obtengas la financiación requerida, y que así se pueda efectuar el ingreso.', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-dashboard-user-preferences', 'Marca ''Sí'' a las notificaciones automáticas que quieras bloquear.', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('guide-dashboard-user-profile', 'Tanto si quieres presentar un proyecto como incorporarte como cofinanciador/a, para formar parte de la comunidad de Goteo te recomendamos que pongas atención en tu texto de presentación, que añadas links relevantes sobre lo que haces y subas una imagen de perfil con la que te identifiques.', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('guide-project-comment', 'guide-project-comment', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-contract-information', '<strong>A partir de este paso sólo debes cumplimentar los datos si quieres que tu proyecto sea cofinanciado y apoyado mediante Goteo. </strong><br><br>La información de este apartado es necesaria para contactarte si obtienes la financiación requerida, y que así se pueda efectuar el ingreso. En el caso de entidades, se recomienda que quien represente a la organización pueda luego acreditarlo formalmente (por ejemplo a través de los estatutos o de un certificado del secretario con el visto bueno del presidente, en el caso de asociaciones).', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-costs', '<strong>En esta sección debes elaborar un pequeño presupuesto basado en los costes que calcules va a tener la realización del proyecto.</strong><br><br>\r\nDebes especificar según tareas, infraestructura o materiales. Intenta ser realista en los costes y explicar brevemente por qué necesitas cubrir cada uno de ellos. Ten en cuenta que por norma general, al menos un 80% del proyecto deberá ser realizado directamente por la persona o equipo que promueve el proyecto, y no subcontratado a terceros.<br><br>\r\n<strong>Muy importante</strong>: En Goteo diferenciamos entre costes imprescindibles y costes adicionales. Los primeros deben lograrse en su totalidad para poder obtener la financiación, mientras que los segundo se solicitan y obtienen directamente en una campaña posterior, una vez está en marcha el proyecto, para poder poder cubrir costes de optimización del mismo (difusión, diseño, alcance, más unidades, etc). Estos costes adicionales no pueden superar la mitad de los costes totales del proyecto.', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-description', '<strong>Éste es el apartado donde explicar con detalle los aspectos conceptuales del proyecto. </strong><br><br>Es lo primero con lo que cualquier usuario de la red se encontrará, así que cuida la redacción y evita las faltas de ortografía. Verás que hay campos obligatorios como incluir un vídeo o subir imágenes. Esto es así porque los consideramos imprescindibles para empezar con éxito una campaña de recaudación de fondos mediante Goteo.<br><br>\r\nTen en cuenta que lo más valorado en Goteo es: la información o conocimiento libre de interés general que tu proyecto aportará a la comunidad,  la originalidad, aspirar a resolver una demanda social,  el potencial para atraer a una comunidad amplia de personas interesadas, dejar claro que el equipo promotor posee las capacidades y experiencia para poder llevarlo a buen puerto. Así que no pierdas de vista informar sobre esos aspectos.', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-error-mandatories', 'Faltan campos obligatorios', NULL, 'preview');
INSERT INTO `purpose` VALUES('guide-project-preview', '<strong>Éste es un resumen de toda la información sobre el proyecto.</strong><br><br> Repasa los puntos de cada apartado para ver si puedes mejorar algo, o bien envía el proyecto para su valoración (mediante el botón "Enviar" de la parte de abajo) si ya están cumplimentados todos los campos obligatorios, para que así pueda ser valorado por el equipo y la comunidad de Goteo. Una vez lo envíes ya no se podrán introducir cambios. <br><br>Ten en cuenta que sólo podemos seleccionar unos cuantos proyectos al mes para garantizar la atención y la difusión de las propuestas que se hacen públicas. Próximamente recibirás un mensaje con toda la información, que te indicará los pasos a seguir y recomendaciones para que tu proyecto pueda alcanzar la meta propuesta. ', NULL, 'preview');
INSERT INTO `purpose` VALUES('guide-project-rewards', '<strong>En este apartado debes establecer qué ofrece el proyecto a cambio a sus cofinanciadores, y también sus retornos colectivos.</strong><br><br>\r\nAdemás de las recompensas individuales para cada importe de cofinanciación, aquí debes definir qué tipo de licencia asignar al proyecto, en función de su formato y/o del grado de abertura del mismo (o de alguna de sus partes). Esta parte es muy importante, ya que Goteo es una plataforma de crowdfunding para proyectos basados en la filosofía del código abierto y que fortalezcan el procomún.<br><br>\r\nEn caso de que además de una de las licencias aquí especificadas te interese adicionalmente registrar la propiedad intelectual de tu obra o idea, manteniendo su compatibilidad con los retornos colectivos, tenemos un acuerdo de colaboración con <a href="http://www.safecreative.org/" target="new">Safe Creative</a> mediante el cual puedes obtener una protección legal específica en condiciones muy ventajosas.', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-success-minprogress', 'Ha llegado al porcentaje mínimo', NULL, 'preview');
INSERT INTO `purpose` VALUES('guide-project-success-noerrors', 'Todos los campos obligatorios estan rellenados', NULL, 'preview');
INSERT INTO `purpose` VALUES('guide-project-success-okfinish', 'Puede enviar para revisión', NULL, 'preview');
INSERT INTO `purpose` VALUES('guide-project-support', 'guide-project-support', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-supports', '<strong>En este apartado puedes especificar qué otras ayudas, aparte de financiación, se necesitan para llevar a cabo el proyecto.</strong><br><br> Pueden ser tareas o acciones a cargo de otras personas (traducciones, gestiones, difusión, etc), o bien préstamos específicos (de material, transporte, hardware, etc).', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-updates', '<b>Es muy importante que los proyectos mantengan informados a sus cofinanciadores y el resto de personas potencialmente interesadas sobre cómo avanza su campaña. Desde este apartado puedes publicar mensajes de actualización sobre el proyecto, como una especie de blog público.</b>\r\n\r\nEn Goteo además, una vez se han logrado los fondos mínimos, para la segunda ronda de cofinanciación es crítico explicar regularmente cómo ha arrancado la producción, avances, problemas, etc que permitan la mayor transparencia posible y saber cómo evoluciona el inicio del proyecto, para así tratar de generar más interés y comunidad en torno al mismo.', NULL, 'general');
INSERT INTO `purpose` VALUES('guide-project-user-information', '<strong>En este apartado debes introducir los datos para la información pública de tu perfil de usuario. </strong><br><br>Tanto si quieres presentar un proyecto como incorporarte como cofinanciador/a, para formar parte de la comunidad de Goteo te recomendamos que pongas atención en tu texto de presentación, que añadas links relevantes sobre lo que haces y subas una imagen de perfil con la que te identifiques.', NULL, 'profile');
INSERT INTO `purpose` VALUES('guide-user-data', 'Texto guía en la edición de campos sensibles.', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('guide-user-register', 'Texto guía en el registro de un nuevo usuario.', NULL, 'register');
INSERT INTO `purpose` VALUES('header-about-side', 'Lo que nos mueve', NULL, 'general');
INSERT INTO `purpose` VALUES('home-posts-header', 'En nuestro blog', NULL, 'general');
INSERT INTO `purpose` VALUES('home-promotes-header', 'Destacados', NULL, 'home');
INSERT INTO `purpose` VALUES('image-upload-fail', 'Falló al subir la imagen.', NULL, 'bluead');
INSERT INTO `purpose` VALUES('invest-abitmore', 'Por %s más serías %s', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-address-address-field', 'Dirección:', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-address-country-field', 'País:', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-address-header', 'Dónde quieres recibir la recompensa (sólo en caso de envíos postales)', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-address-location-field', 'Ciudad:', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-address-name-field', 'Nombre:', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-address-nif-field', 'NIF / NIE:', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-address-zipcode-field', 'Código postal:', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-amount', 'Cantidad', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-amount-error', 'Tienes que poner el importe', NULL, 'bluead');
INSERT INTO `purpose` VALUES('invest-amount-tooltip', 'Introduce la cantidad con la que apoyarás al proyecto', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-anonymous', 'Quiero que mi aportación sea anónima', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-create-error', 'Ha habido algun problema al inicializar la transacción', NULL, 'bluead');
INSERT INTO `purpose` VALUES('invest-data-error', 'No se han recibido los datos necesarios', NULL, 'bluead');
INSERT INTO `purpose` VALUES('invest-donation-header', 'Introduce los datos fiscales para el donativo', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-individual-header', 'Puedes renunciar a recibir recompensas por tu aportación, o seleccionar las que igualen o estén por debajo del importe que hayas introducido.', NULL, 'general');
INSERT INTO `purpose` VALUES('invest-next_step', 'Paso siguiente', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-owner-error', 'Eres el autor del proyecto, no puedes aportar personalmente a tu propio proyecto.', NULL, 'bluead');
INSERT INTO `purpose` VALUES('invest-payment-email', 'Introduce tu cuenta de PayPal', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-payment_method-header', 'Elige el método de pago', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-paypal-error_fatal', 'Ha ocurrido un error fatal al conectar con PayPal. Se ha reportado la incidencia, disculpe las molestias.', NULL, 'bluead');
INSERT INTO `purpose` VALUES('invest-resign', 'Renuncio a una recompensa individual, solo quiero ayudar al proyecto', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-reward-none', 'Ya no se puede elegir', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-social-header', 'Con los retornos colectivos ganamos tod@s', NULL, 'invest');
INSERT INTO `purpose` VALUES('invest-tpv-error_fatal', 'Ha ocurrido un error fatal al conectar con el TPV. Se ha reportado la incidencia, disculpe las molestias.', NULL, 'bluead');
INSERT INTO `purpose` VALUES('leave-email-sended', 'Te hemos enviado un email para completar el proceso de baja. Verifica también la carpeta de correo no deseado o spam.', NULL, 'register');
INSERT INTO `purpose` VALUES('leave-process-completed', 'La cuenta se ha dado de baja correctamente', NULL, 'register');
INSERT INTO `purpose` VALUES('leave-process-fail', 'No hemos podido completar el proceso para darte de baja. Por favor, contáctanos a hola@goteo.org', NULL, 'register');
INSERT INTO `purpose` VALUES('leave-request-fail', 'No hemos encontrado ninguna cuenta con este email en nuestra base de datos para darla de baja', NULL, 'register');
INSERT INTO `purpose` VALUES('leave-token-incorrect', 'El código para completar el proceso de baja no es válido', NULL, 'register');
INSERT INTO `purpose` VALUES('login-access-button', 'Entrar', NULL, 'login');
INSERT INTO `purpose` VALUES('login-access-header', 'Usuario registrado', NULL, 'login');
INSERT INTO `purpose` VALUES('login-access-password-field', 'Contraseña', NULL, 'login');
INSERT INTO `purpose` VALUES('login-access-username-field', 'Nombre de acceso', NULL, 'login');
INSERT INTO `purpose` VALUES('login-banner-header', 'Accede a la comunidad goteo<br /><span class="greenblue">100% abierto</span>', 1, 'banners');
INSERT INTO `purpose` VALUES('login-fail', 'Error de acceso', NULL, 'login');
INSERT INTO `purpose` VALUES('login-leave-button', 'Dar de baja', NULL, 'login');
INSERT INTO `purpose` VALUES('login-leave-header', 'Cancelar la cuenta', NULL, 'login');
INSERT INTO `purpose` VALUES('login-leave-message', 'Déjanos un mensaje', NULL, 'login');
INSERT INTO `purpose` VALUES('login-oneclick-header', 'Accede con un solo click', NULL, 'login');
INSERT INTO `purpose` VALUES('login-recover-button', 'Recuperar', NULL, 'login');
INSERT INTO `purpose` VALUES('login-recover-email-field', 'Email de la cuenta', NULL, 'login');
INSERT INTO `purpose` VALUES('login-recover-header', 'Recuperar contraseña', NULL, 'login');
INSERT INTO `purpose` VALUES('login-recover-link', 'Recuperar contraseña', NULL, 'login');
INSERT INTO `purpose` VALUES('login-recover-username-field', 'Nombre de acceso', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-button', 'Registrar', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-conditions', 'Acepto las condiciones de uso de la plataforma, así­ como presto mi consentimiento para el tratamiento de mis datos personales. A tal efecto, el responsable del portal ha establecido una <a href="/legal/privacy" target="_blank">polí­tica de privacidad</a> donde se puede conocer la finalidad que se le darán a los datos suministrados a través del presente formulario, así­ como los derechos que asisten a la persona que suministra dichos datos.', 1, 'general');
INSERT INTO `purpose` VALUES('login-register-confirm-field', 'Confirmar email', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-confirm_password-field', 'Confirmar contraseña', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-email-field', 'Email', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-header', 'Nuevo usuario', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-password-field', 'Contraseña', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-password-minlength', 'Mínimo 6 carácteres', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-userid-field', 'Nombre de acceso', NULL, 'login');
INSERT INTO `purpose` VALUES('login-register-username-field', 'Nombre público', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-facebook', 'Accede con Facebook', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-google', 'Accede con Google', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-linkedin', 'Accede con LinkedIn', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-myopenid', 'Accede con myOpenid', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-openid', 'Otro servidor Open ID', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-openid-go', 'Ir', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-twitter', 'Accede con Twitter', NULL, 'login');
INSERT INTO `purpose` VALUES('login-signin-yahoo', 'Accede con Yahoo', NULL, 'login');
INSERT INTO `purpose` VALUES('mailer-baja', '¿No quieres recibir más comunicaciones de Goteo.org? Puedes darte de baja en este <a href="%s"> enlace</a>', 1, 'mailer');
INSERT INTO `purpose` VALUES('mailer-disclaimer', '* GOTEO es una plataforma digital para la microfinanciación, colaboración y distribución de recursos para el desarrollo de proyectos sociales, culturales, educativos, tecnológicos...  que contribuyan al fortalecimiento del procomún, el código abierto y/o el conocimiento libre.', NULL, 'mailer');
INSERT INTO `purpose` VALUES('mailer-sinoves', 'Si no puedes ver este mensaje utiliza este <a href="%s">enlace</a>', 1, 'mailer');
INSERT INTO `purpose` VALUES('main-banner-header', '<h2 class="message">Red social para <span class="greenblue">cofinanciar y colaborar con</span><br /> proyectos creativos que fomentan el procomún<br /> ¿Tienes un proyecto con <span class="greenblue">adn abierto</span>?</h2><a href="/contact" class="button banner-button">Contáctanos</a>', 1, 'banners');
INSERT INTO `purpose` VALUES('mandatory-call-field-amount', 'mandatory-call-field-amount', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-apply', 'mandatory-call-field-apply', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-category', 'mandatory-call-field-category', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-description', 'mandatory-call-field-description', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-icons', 'mandatory-call-field-icons', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-image', 'mandatory-call-field-image', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-legal', 'mandatory-call-field-legal', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-location', 'mandatory-call-field-location', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-logo', 'mandatory-call-field-logo', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-name', 'Es obligatorio ponerle un nombre a la convocatoria', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-subtitle', 'mandatory-call-field-subtitle', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-call-field-whom', 'mandatory-call-field-whom', NULL, 'call_form');
INSERT INTO `purpose` VALUES('mandatory-cost-field-amount', 'Es obligatorio asignar un importe a los costes', NULL, 'costs');
INSERT INTO `purpose` VALUES('mandatory-cost-field-description', 'Es obligatorio poner alguna descripción a los costes', NULL, 'costs');
INSERT INTO `purpose` VALUES('mandatory-cost-field-name', 'Es obligatorio ponerle un nombre al coste', NULL, 'costs');
INSERT INTO `purpose` VALUES('mandatory-cost-field-task_dates', 'Es obligatorio especificar las fechas aproximadas de la tarea', NULL, 'costs');
INSERT INTO `purpose` VALUES('mandatory-cost-field-type', 'Es obligatorio seleccionar el tipo de coste', NULL, 'general');
INSERT INTO `purpose` VALUES('mandatory-individual_reward-field-amount', 'Es obligatorio indicar el importe que permite obtener la recompensa', NULL, 'general');
INSERT INTO `purpose` VALUES('mandatory-individual_reward-field-description', 'Es obligatorio poner alguna descripción', NULL, 'rewards');
INSERT INTO `purpose` VALUES('mandatory-individual_reward-field-icon', 'Es obligatorio seleccionar el tipo de recompensa', NULL, 'rewards');
INSERT INTO `purpose` VALUES('mandatory-individual_reward-field-name', 'Es obligatorio poner la recompensa', NULL, 'rewards');
INSERT INTO `purpose` VALUES('mandatory-project-costs', 'Debe desglosarse en al menos dos costes.', NULL, 'general');
INSERT INTO `purpose` VALUES('mandatory-project-field-about', 'Es obligatorio explicar las características básicas del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-address', 'La dirección de la/el responsable del proyecto es obligatoria', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-category', 'Es obligatorio elegir al menos una categoria para el proyecto.', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-contract_birthdate', 'Es obligatorio poner la fecha de nacimiento del responsable del proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-contract_email', 'Es obligatorio poner el email de la/el responsable del proyecto.', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-contract_name', 'Es obligatorio poner el nombre de la/el responsable del proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-contract_nif', 'Es obligatorio poner el documento de identificación de la/el responsable del proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-country', 'El país de la/el responsable del proyecto es obligatorio', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-description', 'Es obligatorio resumir el proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-entity_cif', 'Es obligatorio poner el CIF de la entidad jurídica', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-entity_name', 'Es obligatorio poner el nombre de la organización', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-entity_office', 'Es obligatorio poner el cargo que tienes dentro la organización que vas a representar', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-goal', 'Es obligatorio explicar los objetivos en la descripción del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-image', 'Es obligatorio vincular una imagen como mínimo al proyecto. ', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-lang', 'Tienes que indicar el idioma del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-location', 'Es obligatorio poner el alcance potencial del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-media', 'Recomendamos poner un vídeo para mejorar la valoración del proyecto a la hora de decidir si publicarlo o no en Goteo.', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-motivation', 'Es obligatorio explicar la motivación en la descripción del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-name', 'Es obligatorio poner un nombre al proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-phone', 'El teléfono de la/el responsable del proyecto es obligatorio', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-related', 'Es obligatorio explicar en la descripción del proyecto la experiencia relacionada y/o el equipo con que se cuenta ', NULL, 'overview');
INSERT INTO `purpose` VALUES('mandatory-project-field-residence', 'Es obligatorio poner el lugar de residencia de la/el responsable del proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-field-resource', 'Es obligatorio especificar si cuentas con otros recursos o no', NULL, 'costs');
INSERT INTO `purpose` VALUES('mandatory-project-field-zipcode', 'El código postal de la/el responsable del proyecto es obligatorio', NULL, 'personal');
INSERT INTO `purpose` VALUES('mandatory-project-resource', 'Es obligatorio especificar si cuentas con otros recursos o no', NULL, 'costs');
INSERT INTO `purpose` VALUES('mandatory-project-total-costs', 'Es obligatorio especificar algún coste', NULL, 'costs');
INSERT INTO `purpose` VALUES('mandatory-register-field-email', 'Tienes que poner un email', NULL, 'general');
INSERT INTO `purpose` VALUES('mandatory-social_reward-field-description', 'Es obligatorio poner alguna descripción al retorno', NULL, 'rewards');
INSERT INTO `purpose` VALUES('mandatory-social_reward-field-icon', 'Es obligatorio seleccionar el tipo de retorno', NULL, 'rewards');
INSERT INTO `purpose` VALUES('mandatory-social_reward-field-name', 'Es obligatorio especificar el retorno', NULL, 'rewards');
INSERT INTO `purpose` VALUES('mandatory-support-field-description', 'Es obligatorio poner alguna descripción', NULL, 'supports');
INSERT INTO `purpose` VALUES('mandatory-support-field-name', 'Es obligatorio ponerle un nombre a la colaboración', NULL, 'supports');
INSERT INTO `purpose` VALUES('open-banner-header', '<div class="modpo-open">OPEN</div><div class="modpo-percent">100&#37; ABIERTO</div><div class="modpo-whyopen">%s</div>', 1, 'banners');
INSERT INTO `purpose` VALUES('overview-field-about', 'Características básicas', NULL, 'general');
INSERT INTO `purpose` VALUES('overview-field-categories', 'Categorías', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-currently', 'Estado actual', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-description', 'Breve descripción ', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-dossier', 'Url del PDF con la información completa', NULL, 'call_form');
INSERT INTO `purpose` VALUES('overview-field-goal', 'Objetivos de la campaña de crowdfunding', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-image_gallery', 'Imágenes actuales', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-image_upload', 'Subir una imagen', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-keywords', 'Palabras clave del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-lang', 'Idioma original', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-media', 'Vídeo de presentación', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-media_preview', 'Vista previa', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-motivation', 'Motivación y a quién va dirigido el proyecto', NULL, 'general');
INSERT INTO `purpose` VALUES('overview-field-name', 'Título del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-currently_avanzado', 'Avanzado', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-currently_finalizado', 'Finalizado', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-currently_inicial', 'Inicial', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-currently_medio', 'Medio', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-scope_global', 'Global', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-scope_local', 'Local', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-scope_nacional', 'Nacional', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-options-scope_regional', 'Regional', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-project_location', 'Ubicación', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-related', 'Experiencia previa y equipo', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-scope', 'Alcance del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-subtitle', 'Frase de resumen', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-usubs', 'Cargar con Universal subtitles', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-field-video', 'Vídeo adicional sobre motivación', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-fields-images-title', 'Imágenes del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('overview-main-header', 'Descripción del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('personal-field-address', 'Dirección', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_birthdate', 'Fecha de nacimiento', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_data', 'Datos del/la responsable del proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_email', 'Email vinculado al proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_entity', 'Promotor/a del proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_entity-entity', 'Persona jurídica (asociaciones, fundaciónes, empresas)', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_entity-person', 'Persona física', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_name', 'Nombre y apellidos', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-contract_nif', 'NIF / NIE', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-country', 'País', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-entity_cif', 'CIF de la entidad', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-entity_name', 'Denominación social (nombre) de la entidad', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-entity_office', 'Cargo en la organización', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-location', 'Localidad', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-main_address', 'Domicilio fiscal', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-phone', 'Teléfono', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-post_address', 'Domicilio postal', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-post_address-different', 'Diferente', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-post_address-same', 'Igual', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-field-zipcode', 'Código postal', NULL, 'personal');
INSERT INTO `purpose` VALUES('personal-main-header', 'Datos del promotor/a', NULL, 'personal');
INSERT INTO `purpose` VALUES('preview-main-header', 'Previsualización de datos', NULL, 'preview');
INSERT INTO `purpose` VALUES('preview-send-comment', 'Notas adicionales para el administrador', NULL, 'preview');
INSERT INTO `purpose` VALUES('profile-about-header', 'Sobre mí', NULL, 'general');
INSERT INTO `purpose` VALUES('profile-field-about', 'Cuéntanos algo sobre ti', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-avatar_current', 'Tu imagen actual', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-avatar_upload', 'Subir una imagen', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-contribution', 'Qué puedes aportar a Goteo', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-interests', 'Qué tipo de proyecto te motiva más', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-keywords', 'Temas que te interesan', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-location', 'Lugar de residencia habitual', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-name', 'Nombre de usuario/a', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-url', 'Url', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-field-websites', 'Mis páginas web', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-fields-image-title', 'Imagen de perfil', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-fields-social-title', 'Perfiles sociales', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-interests-header', 'Me interesan proyectos con fin...', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-invest_on-header', 'Proyectos que apoyo', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-invest_on-title', 'Cofinancia', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-keywords-header', 'Mis palabras clave', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-last_worth-title', 'Fecha', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-location-header', 'Mi ubicación', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-main-header', 'Datos de perfil', NULL, 'profile');
INSERT INTO `purpose` VALUES('profile-my_investors-header', 'Mis cofinanciadores', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-my_projects-header', 'Mis proyectos', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-my_worth-header', 'Mi caudal en goteo', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-name-header', 'Perfil de ', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-sharing_interests-header', 'Compartiendo intereses', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-social-header', 'Social', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-webs-header', 'Mis webs', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-widget-button', 'Ver perfil', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-widget-user-header', 'Usuario', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-worth-title', 'Aporta aquí:', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('profile-worthcracy-title', 'Posición', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('project-collaborations-supertitle', 'Necesidades no monetarias', NULL, 'project');
INSERT INTO `purpose` VALUES('project-collaborations-title', 'Se busca', NULL, 'project');
INSERT INTO `purpose` VALUES('project-form-header', 'Formulario', NULL, 'form');
INSERT INTO `purpose` VALUES('project-invest-closed', 'El proyecto ya no está en campaña', NULL, 'bluead');
INSERT INTO `purpose` VALUES('project-invest-continue', 'Elige el modo de pago', NULL, 'invest');
INSERT INTO `purpose` VALUES('project-invest-fail', 'Algo ha fallado, por favor inténtalo de nuevo', NULL, 'invest');
INSERT INTO `purpose` VALUES('project-invest-guest', 'Invitado (no olvides registrarte)', NULL, 'invest');
INSERT INTO `purpose` VALUES('project-invest-ok', 'Se ha tramitado tu aportación para cofinanciar este proyecto :)', NULL, 'invest');
INSERT INTO `purpose` VALUES('project-invest-start', 'Estás a un paso de ser cofinanciador/a de este proyecto', NULL, 'invest');
INSERT INTO `purpose` VALUES('project-invest-thanks_mail-fail', 'Ha habido algún error al enviar el mensaje de agradecimiento', NULL, 'bluead');
INSERT INTO `purpose` VALUES('project-invest-thanks_mail-success', 'Mensaje de agradecimiento enviado correctamente', NULL, 'bluead');
INSERT INTO `purpose` VALUES('project-invest-total', 'Total de aportaciones', NULL, 'general');
INSERT INTO `purpose` VALUES('project-menu-home', 'Proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-menu-messages', 'Mensajes', NULL, 'project');
INSERT INTO `purpose` VALUES('project-menu-needs', 'Necesidades', NULL, 'project');
INSERT INTO `purpose` VALUES('project-menu-supporters', 'Cofinanciadores', NULL, 'project');
INSERT INTO `purpose` VALUES('project-menu-updates', 'Novedades', NULL, 'project');
INSERT INTO `purpose` VALUES('project-messages-answer_it', 'Responder', NULL, 'project');
INSERT INTO `purpose` VALUES('project-messages-send_direct-header', 'Envía un mensaje al impulsor/a del proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-messages-send_message-button', 'Enviar', NULL, 'project');
INSERT INTO `purpose` VALUES('project-messages-send_message-header', 'Escribe tu mensaje', NULL, 'project');
INSERT INTO `purpose` VALUES('project-messages-send_message-your_answer', 'Escribe aquí tu respuesta', NULL, 'general');
INSERT INTO `purpose` VALUES('project-review-confirm_mail-fail', 'Ha habido algún error al enviar el mensaje de confirmación de recepción', NULL, 'bluead');
INSERT INTO `purpose` VALUES('project-review-confirm_mail-success', 'Mensaje de confirmación de recepción para revisión enviado correctamente', NULL, 'bluead');
INSERT INTO `purpose` VALUES('project-review-request_mail-fail', 'Ha habido algún error al enviar la solicitud de revisión', NULL, 'bluead');
INSERT INTO `purpose` VALUES('project-review-request_mail-success', 'Mensaje de solicitud de revisión enviado correctamente', NULL, 'bluead');
INSERT INTO `purpose` VALUES('project-rewards-header', 'Retorno', NULL, 'project');
INSERT INTO `purpose` VALUES('project-rewards-individual_reward-limited', 'Recompensa limitada', NULL, 'project');
INSERT INTO `purpose` VALUES('project-rewards-individual_reward-title', 'Recompensas individuales', NULL, 'project');
INSERT INTO `purpose` VALUES('project-rewards-individual_reward-units_left', 'Quedan <span class="left">%s</span> unidades', 1, 'project');
INSERT INTO `purpose` VALUES('project-rewards-social_reward-title', 'Retorno colectivo', NULL, 'project');
INSERT INTO `purpose` VALUES('project-rewards-supertitle', 'Qué ofrece a cambio', NULL, 'project');
INSERT INTO `purpose` VALUES('project-share-header', 'Comparte este proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-share-pre_header', 'Deja saber a tu red que', NULL, 'project');
INSERT INTO `purpose` VALUES('project-side-investors-header', 'Ya han aportado', NULL, 'project');
INSERT INTO `purpose` VALUES('project-spread-embed_code', 'Código Embed', NULL, 'project');
INSERT INTO `purpose` VALUES('project-spread-header', 'Difunde este proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-spread-pre_widget', 'Difunde este proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-spread-widget', 'Widget del proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-spread-widget_legend', 'Copia y pega el código en tu web o blog y ayuda a difundir este proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-spread-widget_title', 'publica el widget del proyecto', NULL, 'project');
INSERT INTO `purpose` VALUES('project-support-supertitle', 'Necesidades económicas', NULL, 'project');
INSERT INTO `purpose` VALUES('project-view-categories-title', 'Categorías', NULL, 'project');
INSERT INTO `purpose` VALUES('project-view-metter-days', 'Quedan', NULL, 'project');
INSERT INTO `purpose` VALUES('project-view-metter-got', 'Obtenido', NULL, 'project');
INSERT INTO `purpose` VALUES('project-view-metter-investment', 'Cofinanciación', NULL, 'project');
INSERT INTO `purpose` VALUES('project-view-metter-investors', 'Cofinanciadores', NULL, 'project');
INSERT INTO `purpose` VALUES('project-view-metter-minimum', 'Mínimo', NULL, 'project');
INSERT INTO `purpose` VALUES('project-view-metter-optimum', 'Óptimo', NULL, 'project');
INSERT INTO `purpose` VALUES('recover-email-sended', 'Te hemos enviado un email para reestablecer la contraseña de tu cuenta. Verifica también la carpeta de correo no deseado o spam.', NULL, 'register');
INSERT INTO `purpose` VALUES('recover-request-fail', 'No se puede recuperar la contraseña de ninguna cuenta con estos datos', NULL, 'register');
INSERT INTO `purpose` VALUES('recover-token-incorrect', 'El código de recuperación de contraseña no es válido', NULL, 'register');
INSERT INTO `purpose` VALUES('register-confirm_mail-fail', 'Ha habido algún error al enviar el mensaje de activación. Por favor, contáctanos a %s', NULL, 'bluead');
INSERT INTO `purpose` VALUES('register-confirm_mail-success', 'Mensaje de activación enviado correctamente', NULL, 'bluead');
INSERT INTO `purpose` VALUES('regular-admin_board', 'Panel admin', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-allsome', 'todos/algunos de', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-anonymous', 'Anónimo', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-ask', 'Preguntar', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-banner-metter', 'obtenido-de-quedan', NULL, 'banner');
INSERT INTO `purpose` VALUES('regular-by', 'Por:', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-call-assigned', 'Proyecto seleccionado', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('regular-call-assign_this', 'Seleccionar', NULL, 'call_dash');
INSERT INTO `purpose` VALUES('regular-collaborate', 'Colabora', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-community', 'Comunidad', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-create', 'Crea un proyecto', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-days', 'días', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-delete', 'Borrar', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-discover', 'Descubre proyectos', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-edit', 'Editar', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-facebook', 'Facebook', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-facebook-url', 'http://www.facebook.com/', NULL, 'url');
INSERT INTO `purpose` VALUES('regular-fail_mark', 'Archivado...', NULL, 'widget');
INSERT INTO `purpose` VALUES('regular-faq', 'Preguntas frecuentes', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-first', 'Primera', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-footer-contact', 'Contacto', NULL, 'footer');
INSERT INTO `purpose` VALUES('regular-footer-legal', 'Términos legales', NULL, 'footer');
INSERT INTO `purpose` VALUES('regular-footer-privacy', 'Política de privacidad', NULL, 'footer');
INSERT INTO `purpose` VALUES('regular-footer-terms', 'Condiciones de uso', NULL, 'footer');
INSERT INTO `purpose` VALUES('regular-google', 'Google+', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-google-url', 'https://plus.google.com/', NULL, 'url');
INSERT INTO `purpose` VALUES('regular-gotit_mark', 'Financiado!', NULL, 'widget');
INSERT INTO `purpose` VALUES('regular-go_up', 'Subir', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-header-about', 'Sobre Goteo', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-header-blog', 'Blog', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-header-faq', 'FAQ', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-header-glossary', 'Principios para una economía abierta', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-hello', 'Hola', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-home', 'Inicio', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-identica', 'Identi.ca', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-identica-url', 'http://identi.ca/', NULL, 'url');
INSERT INTO `purpose` VALUES('regular-im', 'Soy', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-invest', 'Aportar', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-investing', 'Aportando', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-invest_it', 'Cofinancia este proyecto', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-keepiton_mark', 'Mínimo conseguido! ', NULL, 'widget');
INSERT INTO `purpose` VALUES('regular-last', 'Última', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-license', 'Licencia', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-linkedin', 'LinkedIn', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-linkedin-url', 'http://es.linkedin.com/in/', NULL, 'url');
INSERT INTO `purpose` VALUES('regular-login', 'Accede', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-logout', 'Cerrar sesión', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-looks_for', 'busca:', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-main-header', 'Goteo.org', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-mandatory', 'Campo obligatorio!', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-media_legend', 'Leyenda', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-menu', 'Menú', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-message_fail', 'Ha habido algun error al enviar el mensaje', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-message_success', 'Mensaje enviado correctamente', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-months', 'meses', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-more_info', '+ info', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-news', 'Noticias:', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-new_project', 'Proyecto nuevo', NULL, 'project');
INSERT INTO `purpose` VALUES('regular-no', 'No', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-onrun_mark', 'En marcha!', NULL, 'widget');
INSERT INTO `purpose` VALUES('regular-preview', 'Previsualizar', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-projects', 'proyectos', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-published_no', 'Borrador', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-published_yes', 'Publicado', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-read_more', 'Leer más', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-review_board', 'Panel revisor', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-round', 'ª ronda', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-save', 'Guardar', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-search', 'Buscar', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-see_all', 'Ver todos', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-see_blog', 'Blog', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-see_details', 'Ver detalles', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-see_more', 'Ver más', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-send_message', 'Enviar mensaje', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-share-facebook', 'Goteo en Facebook', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-share-rss', 'RSS/BLOG', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-share-twitter', 'Síguenos en Twitter', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-share_this', 'Compartir en:', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-sorry', 'Lo sentimos', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-success_mark', 'Exitoso!', NULL, 'widget');
INSERT INTO `purpose` VALUES('regular-thanks', 'Gracias', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-total', 'Total', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-translate_board', 'Panel traductor', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-twitter', 'Twitter', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-twitter-url', 'http://twitter.com/#!/', NULL, 'url');
INSERT INTO `purpose` VALUES('regular-view_project', 'Ver proyecto', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-weeks', 'semanas', NULL, 'general');
INSERT INTO `purpose` VALUES('regular-yes', 'Sí', NULL, 'general');
INSERT INTO `purpose` VALUES('review-ajax-alert', 'Los criterios y los campos de evaluación / mejoras se guardan automáticamente al modificarse', NULL, 'bluead');
INSERT INTO `purpose` VALUES('review-closed-alert', 'Has dado por terminada esta revisión, no pueder realizar más cambios', NULL, 'bluead');
INSERT INTO `purpose` VALUES('rewards-field-individual_reward-amount', 'Importe financiado', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-individual_reward-description', 'Descripción', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-individual_reward-other', 'Especificar el tipo de recompensa', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-individual_reward-reward', 'Recompensa', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-individual_reward-type', 'Tipo de recompensa', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-individual_reward-units', 'Unidades', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-social_reward-description', 'Descripción', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-social_reward-license', 'Opciones de licencia', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-social_reward-other', 'Especificar el tipo de retorno', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-social_reward-reward', 'Retorno', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-field-social_reward-type', 'Tipo de retorno', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-fields-individual_reward-title', 'Recompensas individuales', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-fields-social_reward-title', 'Retornos colectivos', NULL, 'rewards');
INSERT INTO `purpose` VALUES('rewards-main-header', 'Retornos y recompensas', NULL, 'rewards');
INSERT INTO `purpose` VALUES('social-account-facebook', 'http://www.facebook.com/pages/Goteo/268491113192109', NULL, 'social');
INSERT INTO `purpose` VALUES('social-account-google', 'https://plus.google.com/b/116559557256583965659/', NULL, 'social');
INSERT INTO `purpose` VALUES('social-account-identica', 'http://identi.ca/goteofunding', NULL, 'social');
INSERT INTO `purpose` VALUES('social-account-linkedin', 'Página Goteo LinkedIn', NULL, 'social');
INSERT INTO `purpose` VALUES('social-account-twitter', 'http://twitter.com/goteofunding', NULL, 'social');
INSERT INTO `purpose` VALUES('step-1', 'Perfil', NULL, 'profile');
INSERT INTO `purpose` VALUES('step-2', 'Promotor/a', NULL, 'personal');
INSERT INTO `purpose` VALUES('step-3', 'Descripción', NULL, 'overview');
INSERT INTO `purpose` VALUES('step-4', 'Costes', NULL, 'costs');
INSERT INTO `purpose` VALUES('step-5', 'Retorno', NULL, 'rewards');
INSERT INTO `purpose` VALUES('step-6', 'Colaboraciones', NULL, 'supports');
INSERT INTO `purpose` VALUES('step-7', 'Previsualización', NULL, 'preview');
INSERT INTO `purpose` VALUES('step-costs', 'Paso 4: Proyecto / Costes', NULL, 'costs');
INSERT INTO `purpose` VALUES('step-overview', 'Paso 3: Descripción del proyecto', NULL, 'overview');
INSERT INTO `purpose` VALUES('step-preview', 'Proyecto / Previsualizaciíon', NULL, 'preview');
INSERT INTO `purpose` VALUES('step-rewards', 'Paso 5: Proyecto / Retornos', NULL, 'rewards');
INSERT INTO `purpose` VALUES('step-supports', 'Paso 6: Proyecto / Colaboraciones', NULL, 'supports');
INSERT INTO `purpose` VALUES('step-userPersonal', 'Paso 2: Datos personales', NULL, 'personal');
INSERT INTO `purpose` VALUES('step-userProfile', 'Paso 1: Usuario / Perfil', NULL, 'profile');
INSERT INTO `purpose` VALUES('supports-field-description', 'Descripción', NULL, 'supports');
INSERT INTO `purpose` VALUES('supports-field-support', 'Resumen', NULL, 'supports');
INSERT INTO `purpose` VALUES('supports-field-type', 'Tipo de ayuda', NULL, 'supports');
INSERT INTO `purpose` VALUES('supports-fields-support-title', 'Colaboraciones', NULL, 'supports');
INSERT INTO `purpose` VALUES('supports-main-header', 'Solicitud de colaboraciones', NULL, 'supports');
INSERT INTO `purpose` VALUES('tooltip-call-amount', 'tooltip-call-amount', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-apply', 'tooltip-call-apply', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-call_location', 'tooltip-call-call_location', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-category', 'tooltip-call-category', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-days', 'tooltip-call-days', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-description', 'tooltip-call-description', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-dossier', 'tooltip-call-dossier', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-icons', 'tooltip-call-icons', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-image', 'tooltip-call-image', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-legal', 'tooltip-call-legal', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-logo', 'tooltip-call-logo', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-name', 'tooltip-call-name', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-subtitle', 'tooltip-call-subtitle', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-call-whom', 'tooltip-call-whom', NULL, 'call_form');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-access_data', 'Estos son tus datos actuales de acceso. Lo único que no se puede cambiar es el login de usuario.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-change_email', 'Desde aquí puedes cambiar la dirección de correo electrónico en que recibes los mensajes de Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-change_password', 'Desde aquí puedes cambiar la contraseña con que accedes a Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-confirm_email', 'Confirma la nueva dirección de correo electrónico en que quieres recibir los mensajes de Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-confirm_password', 'Confirma la nueva contraseña con que quieres acceder a Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-new_email', 'Indica la nueva dirección de correo electrónico en que quieres recibir los mensajes de Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-new_password', 'Escribe la nueva contraseña con que quieres acceder a Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-dashboard-user-user_password', 'Escribe la contraseña actual con que accedes a Goteo.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-project-about', 'Describe brevemente el proyecto de modo conceptual, técnico o práctico. Por ejemplo detallando sus características de funcionamiento, o en qué partes consistirá. Piensa en cómo será una vez acabado y todo lo que la gente podrá hacer con él.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-category', 'Selecciona tantas categorías como creas necesario para describir el proyecto, basándote en todo lo que has descrito arriba. Mediante estas palabras clave lo podremos hacer llegar a diferentes usuarios de Goteo.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-comment', '¿Tienes dudas o comentarios para que las lea el administrador de Goteo? Éste es lugar para explicar alguna parte de lo que has escrito de la que no estás seguro,  para proponer mejoras, etc.', NULL, 'preview');
INSERT INTO `purpose` VALUES('tooltip-project-contract_birthdate', 'Indica la fecha de tu nacimiento. No se hará pública en ningún caso, nos interesa por temas estadísticos.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-contract_data', 'Ya sea como persona física o bien jurídica, es necesario que alguien figure como promotor/a del proyecto, y también para la interlocución con el equipo de Goteo. No tiene que coincidir necesariamente con el perfil de usuario del apartado anterior.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-contract_email', 'Dirección de correo electrónica principal asociada al proyecto. Aquí recibirás las notificaciones y mensajes del equipo de Goteo en relación al proyecto propuesto.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-contract_entity', 'Selecciona "Persona física" en el caso de que tú seas el/la promotor/a del proyecto y te representes a ti mismo/a. Si el promotor es un grupo es necesario para elegir la segunda opción que tenga un CIF propio, en ese caso elige "Persona jurídica". ', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-contract_name', 'Deben ser tu nombre y apellidos reales. Ten en cuenta que figurarás como responsable del proyecto.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-contract_nif', 'Tu número de NIF o NIE con cifras y letra.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-contract_surname', 'P2-Consejo-5  Consejo para rellenar el apellido del responsable del proyecto', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-cost-amount', 'Especifica el importe en euros de lo que consideras que implica este coste. No utilices puntos para las cifras de miles ok?', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-cost-cost', 'Introduce un título lo más descriptivo posible de este coste.', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-cost-dates', 'Indica entre qué fechas calculas que se va a llevar a cabo esa tarea o cubrir ese coste. Planifícalo empezando no antes de dos meses a partir de ahora, pues hay que considerar el plazo para revisar la propuesta, publicarla si es seleccionada y los 40 días de la primera financiación. No incluyas en este calendario la agenda de lo desarrollado anteriormente aunque es bueno que lo expliques en la descripción del proyecto. En la agenda sólo nos interesan las fases que quedan por hacer y buscan ser cofinanciadas.', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-cost-description', 'Explica brevemente en qué consiste este coste.', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-cost-required', 'Este punto es muy importante: en cada coste que introduzcas tienes que marcar si es imprescindible o bien adicional. Todos los costes marcados como imprescindibles se sumarán dando el valor del importe de financiación mínimo para el proyecto. La suma de los costes adicionales, en cambio, se podrá obtener durante la segunda ronda de financiación, después de haber obtenido los fondos imprescindibles.', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-cost-type', 'Aquí debes especificar el tipo de coste: vinculado a una tarea (algo que requiere la habilidad o conocimientos de alguien), la obtención de material (consumibles, materias primas) o bien infraestructura (espacios, equipos, mobiliario).', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-cost-type-material', 'Materiales necesarios para el proyecto como herramientas, papelería, equipos informáticos, etc.', NULL, 'types');
INSERT INTO `purpose` VALUES('tooltip-project-cost-type-structure', 'Inversión en costes vinculados a un local, medio de transporte u otras infraestructuras básicas para llevar a cabo el proyecto.  ', NULL, 'types');
INSERT INTO `purpose` VALUES('tooltip-project-cost-type-task', 'Tareas donde invertir conocimientos y/o habilidades para desarrollar alguna parte del proyecto.', NULL, 'types');
INSERT INTO `purpose` VALUES('tooltip-project-costs', 'Cuanto más precisión en el desglose mejor valorará Goteo la información general del proyecto. ', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-currently', 'Indica en qué fase se encuentra el proyecto actualmente respecto a su proceso de creación o ejecución.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-description', 'Describe el proyecto con un mínimo de 80 palabras (con menos marcará error). Explícalo de modo que sea fácil de entender para cualquier persona. Intenta darle un enfoque atractivo y social, resumiendo sus puntos fuertes como qué lo hace único, innovador o especial.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-entity_cif', 'Escribe el CIF (letra + número) de la organización.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-entity_name', 'Escribe el nombre de la organización tal como aparece en su CIF.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-entity_office', 'Escribe el cargo con el que representas a la organización (secretario/a, presidente/a, vocal...). ', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-goal', 'Enumera las metas principales del proyecto, a corto y largo plazo, en todos los aspectos que consideres importante destacar. Se trata de otra oportunidad para contactar y conseguir el apoyo de gente que simpatice con esos objetivos.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-image', 'Pueden ser esquemas, pantallazos, fotografías, ilustraciones, storyboards, etc. (su licencia de autoría debe ser compatible con la que selecciones en el apartado 5). Te recomendamos que sean diversas y de buena resolución. Puedes subir tantas como quieras!', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-image_upload', 'BORRAR', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-individual_reward-amount', 'Importe a cambio del cual se puede obtener este tipo de recompensa. ', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-individual_reward-description', 'Explica brevemente en qué consistirá la recompensa para quienes cofinancien con este importe el proyecto.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-individual_reward-icon-other', 'Especifica brevemente en qué consistirá este otro tipo de recompensa individual.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-individual_reward-reward', 'Intenta que el título sea lo más descriptivo posible. Recuerda que puedes añadir más recompensas a continuación.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-individual_reward-type', 'Selecciona el tipo de recompensa que el proyecto puede ofrecer a la gente que aporta esta cantidad.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-individual_reward-units', 'Cantidad limitada de ítems que se pueden ofrecer individualizadamente a cambio de ese importe. Calcula que la suma total de todas las recompensas individuales del proyecto se acerquen al presupuesto mínimo de financiación que has establecido. También la posibilidad de incorporar las recompensas previas a medida que suba el importe, puedes empezar diciendo "Todo lo anterior más..."  ', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-individual_rewards', 'Aquí debes especificar la recompensa para quien apoye el proyecto, vinculada a una cantidad de dinero concreta. Elige bien lo que ofreces, intenta que sean productos/servicios atractivos o ingeniosos pero que no generen gastos extra de producción. Si no hay más remedio que tener esos gastos extra, calcula lo que cuesta producir esa recompensa (tiempo, materiales, envíos, etc) y oferta un número limitado. Piensa que tendrás que cumplir con todos esos compromisos al final de la producción del proyecto. ', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-keywords', 'A medida que introduzcas texto el sistema te sugerirá palabras clave que ya han escrito otros usuarios. Estas categorías ayudan a vincular tu proyecto con personas afines.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-lang', 'Indica en qué idioma rellenas el formulario del proyecto.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-main_address', 'Dirección fiscal de la persona u organización (según proceda).', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-media', 'Copia y pega la dirección URL de un vídeo de presentación del proyecto, publicado previamente en Youtube o Vimeo. Esta parte es fundamental para atraer la atención de potenciales cofinanciadores y colaboradores, y cuanto más original sea mejor. Te recomendamos que tenga una duración de entre 2 y 4 minutos. ', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-motivation', 'Explica qué motivos o circunstancias te han llevado a idear el proyecto, así como las comunidades o usuarios a las que va destinado. Te ayudará a conectar con personas movidas por ese mismo tipo de intereses, problemáticas o gustos.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-name', 'Escribe un nombre para titular el proyecto. Cuanto más breve mejor, para hacerlo más descriptivo puedes ampliarlo en el siguiente apartado.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-nsupport', 'Consejo para rellenar una nueva colaboración', NULL, 'supports');
INSERT INTO `purpose` VALUES('tooltip-project-phone', 'Número de teléfono móvil o fijo, con su prefijo de marcado.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-post_address', 'Indica en caso necesario una dirección postal detallada.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-project-project_location', 'Indica el lugar donde se desarrollará el proyecto, en qué población o poblaciones se encuentra su impulsor o impulsores principales.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-related', 'Resume tu trayectoria o la del grupo impulsor del proyecto. ¿Qué experiencia tiene relacionada con la propuesta? ¿Con qué equipo de personas, recursos y/o infraestructuras cuenta? ', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-resource', 'Indica aquí si cuentas con recursos adicionales, aparte de los que solicitas, para llevar a cabo el proyecto: fuentes de financiación, recursos propios o bien ya has hecho acopio de materiales. Puede suponer un aliciente para los potenciales cofinanciadores del proyecto.', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-schedule', 'Visualización de cómo queda la agenda de producción de tu proyecto. Recuerda que sólo debes señalar las nuevas tareas a realizar, no las que ya se hayan efectuado.', NULL, 'general');
INSERT INTO `purpose` VALUES('tooltip-project-scope', 'Indica el impacto geográfico que aspira a tener el proyecto (cada categoría incluye la anterior). ', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-project-social_reward-description', 'Explica en brevemente el tipo de retorno colectivo que ofrecerá o permitirá el proyecto.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-social_reward-icon-other', 'Especifica brevemente en qué consistirá este otro tipo de retorno colectivo.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-social_reward-license', 'Aquí debes seleccionar una licencia de entre cada una del grupo que se muestran. Te recomendamos leerlas con calma antes de decidir, pero piensa que un aspecto importante para Goteo es que los proyectos dispongan de licencias lo más abiertas posible.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-social_reward-reward', 'Intenta que el título sea lo más descriptivo posible. Recuerda que puedes añadir más recompensas a continuación.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-social_reward-type', 'Especifica el tipo de retorno: ARCHIVOS DIGITALES como música, vídeo, documentos de texto, etc. CÓDIGO FUENTE de software informático. DISEÑOS de  planos o patrones. MANUALES en forma de kits, business plans, “how tos” o recetas. SERVICIOS como talleres, cursos, asesorías, acceso a websites, bases de datos online. ', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-social_rewards', 'Define el tipo de retorno o retornos del proyecto a los que se podrá acceder abiertamente, y la licencia que los debe regular. Si tienes dudas sobre qué opción escoger o lo que se adaptaría mejor a tu caso, <a href="http://www.goteo.org/contact" target="new">contáctanos</a> y te asesoraremos en este punto.', NULL, 'rewards');
INSERT INTO `purpose` VALUES('tooltip-project-subtitle', 'Define con una frase un subtítulo que acabe de explicar en qué consistirá la iniciativa, que permita hacerse una idea mínima de para qué sirve o en qué consiste. Aparecerá junto al título del proyecto.', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-support', 'Consejo para editar colaboraciones existentes', NULL, 'supports');
INSERT INTO `purpose` VALUES('tooltip-project-support-description', 'Explica brevemente en qué consiste la ayuda que necesita el proyecto, para facilitar que la gente la reconozca y se anime a colaborar. \r\n', NULL, 'supports');
INSERT INTO `purpose` VALUES('tooltip-project-support-support', 'Título descriptivo sobre la colaboración necesaria.', NULL, 'supports');
INSERT INTO `purpose` VALUES('tooltip-project-support-type', 'Selecciona si el proyecto necesita ayuda en tareas concretas  o bien préstamos (de material, infraestructura, etc).  ', NULL, 'supports');
INSERT INTO `purpose` VALUES('tooltip-project-support-type-lend', 'Préstamo temporal de material necesario para el proyecto, o bien de cesión de infraestructuras o espacios por un periodo determinado. También puede implicar préstamos permanentes, o sea regalos :)', NULL, 'types');
INSERT INTO `purpose` VALUES('tooltip-project-support-type-task', 'Colaboración que requiera una habilidad para una tarea específica, ya sea a distancia mediante ordenador o bien presencialmente.', NULL, 'types');
INSERT INTO `purpose` VALUES('tooltip-project-supports', 'En Goteo los proyectos pueden recibir otro tipo de ayudas además de aportaciones monetarias. Hay gente que a lo mejor no puede ayudar económicamente pero sí con su talento, tiempo, energía, etc.', NULL, 'supports');
INSERT INTO `purpose` VALUES('tooltip-project-totals', 'Este gráfico muestra la suma de costes imprescindibles (mínimos para realizar el proyecto) y la suma de costes secundarios (importe óptimo) para las dos rondas de financiación. La primera ronda es de 40 días, para conseguir el importe mínimo imprescindible. Sólo si se consigue ese volumen de financiación se puede optar a la segunda ronda, de 40 días más, para llegar al presupuesto óptimo. A diferencia de la primera, en la segunda ronda se obtiene todo lo recaudado (aunque no se haya llegado al mínimo). ', NULL, 'costs');
INSERT INTO `purpose` VALUES('tooltip-project-usubs', 'Marca la casilla si quieres cargar el video mediante Universal Subtitles', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-project-video', 'Considera aquí la posibilidad de publicar y enlazar un vídeo (en Youtube o Vimeo) donde expliques brevemente a la cámara el porqué de tu proyecto. Se trata de algo que pueda complementar el vídeo principal, con una persona que transmita su necesidad u originalidad, del modo más directo posible. Si te da corte hablar a la cámara, también puede ser alguna persona que conoces y sigue el proyecto o la idea y pueda hacer esta aportación como "fan". La empatía y necesidad de ver a alguien al otro lado del proyecto es muy importante para determinado tipo de cofinanciadores. ', NULL, 'overview');
INSERT INTO `purpose` VALUES('tooltip-updates-allow_comments', 'tooltip-updates-allow_comments', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-date', 'tooltip-updates-date', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-home', 'Texto tooltip-updates-home', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-image', 'tooltip-updates-image', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-image_upload', 'tooltip-updates-image_upload', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-media', 'tooltip-updates-media', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-tags', 'Texto tooltip-updates-tags', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-text', 'tooltip-updates-text', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-updates-title', 'tooltip-updates-title', NULL, 'project');
INSERT INTO `purpose` VALUES('tooltip-user-about', 'Como red social, Goteo pretende ayudar a difundir y financiar proyectos interesantes entre el máximo de gente posible. Para eso es importante la información que puedas compartir sobre tus habilidades o experiencia (profesional, académica, aficiones, etc).\r\n', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-avatar_upload', 'Texto tooltip subir imagen usuario', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-contribution', 'Explica brevemente tus habilidades o los ámbitos en que podrías ayudar a un proyecto (traduciendo, difundiendo, testeando, programando, enseñando, etc).', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-facebook', 'Esta red social puede ayudar a que difundas proyectos de Goteo que te interesan entre amigos y familiares.', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-google', 'La red social de Google+ es muy nueva pero también puedes indicar tu usuario si ya la usas :)', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-identica', 'Este canal puede ayudar a que difundas proyectos de Goteo entre la comunidad afín al software libre.', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-image', 'No es obligatorio que pongas una fotografía en tu perfil, pero ayuda a que los demás usuarios te identifiquen.', NULL, 'personal');
INSERT INTO `purpose` VALUES('tooltip-user-interests', 'Indica el tipo de proyectos que pueden conectar con tus intereses para cofinanciarlos y/o aportar con otros recursos, conocimientos o habilidades. Estas categorías son transversales, puedes seleccionar más de una.', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-keywords', 'A medida que introduzcas texto el sistema te sugerirá palabras clave que ya han escrito otros usuarios. Estas categorías ayudan a vincular tu perfil con otras personas y con proyectos concretos.', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-linkedin', 'Esta red social puede ayudar a que difundas proyectos de Goteo que te interesan entre contactos profesionales.', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-location', 'Este dato es importante para poderte vincular con un grupo local de Goteo.', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-name', 'Tu nombre o nickname dentro de Goteo. Lo puedes cambiar siempre que quieras (ojo: no es lo mismo que el login de acceso, que ya no se puede cambiar).', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-twitter', 'Esta red social puede ayudar a que difundas proyectos de Goteo de manera ágil y viral.', NULL, 'profile');
INSERT INTO `purpose` VALUES('tooltip-user-webs', 'Indica las direcciones URL de páginas personales o de otro tipo vinculadas a ti.', NULL, 'profile');
INSERT INTO `purpose` VALUES('translate-home-guide', 'Mensaje para el traductor', NULL, 'general');
INSERT INTO `purpose` VALUES('user-account-inactive', 'La cuenta está desactivada', NULL, 'general');
INSERT INTO `purpose` VALUES('user-activate-already-active', 'La cuenta de usuario ya esta activada', NULL, 'register');
INSERT INTO `purpose` VALUES('user-activate-fail', 'Error al activar la cuenta de usuario', NULL, 'general');
INSERT INTO `purpose` VALUES('user-activate-success', 'La cuenta de usuario se ha activado correctamente', NULL, 'register');
INSERT INTO `purpose` VALUES('user-changeemail-fail', 'Error al cambiar el email', NULL, 'general');
INSERT INTO `purpose` VALUES('user-changeemail-success', 'El email se ha cambiado con éxito ;)', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-changeemail-title', 'Cambiar email', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-changepass-confirm', 'Confirmar nueva contraseña', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-changepass-new', 'Nueva contraseña', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-changepass-old', 'Contraseña actual', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-changepass-title', 'Cambiar contraseña', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-email-change-sended', 'Te hemos enviado un email para que confirmes el cambio de dirección electrónica', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-login-required', 'Debes iniciar sesión para interactuar con la comunidad', NULL, 'bluead');
INSERT INTO `purpose` VALUES('user-login-required-access', 'Debes iniciar sessión o solicitar permisos para acceder a esa seccion', NULL, 'bluead');
INSERT INTO `purpose` VALUES('user-login-required-to_create', 'Debes iniciar sesión para crear un proyecto', NULL, 'bluead');
INSERT INTO `purpose` VALUES('user-login-required-to_invest', 'Debes iniciar sesión para cofinanciar un proyecto', NULL, 'bluead');
INSERT INTO `purpose` VALUES('user-login-required-to_message', 'Debes iniciar sesión para enviar mensajes', NULL, 'bluead');
INSERT INTO `purpose` VALUES('user-login-required-to_see', 'Debes iniciar sesión para ver esta página', NULL, 'bluead');
INSERT INTO `purpose` VALUES('user-login-required-to_see-supporters', 'Debes iniciar sesión para ver los cofinanciadores', NULL, 'bluead');
INSERT INTO `purpose` VALUES('user-message-send_personal-header', 'Envia un mensaje al usuario', NULL, 'public_profile');
INSERT INTO `purpose` VALUES('user-password-changed', 'Has cambiado tu contraseña', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-personal-saved', 'Datos personales actualizados', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-prefer-saved', 'Tus preferencias de notificación se han guardado correctmente', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-preferences-mailing', 'Bloquear el envio de newsletter', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-preferences-rounds', 'Bloquear notificaciones de progreso de los proyectos que apoyo', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-preferences-threads', 'Bloquear notificaciones de respuestas en los mensajes que yo inicio', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-preferences-updates', 'Bloquear notificaciones de Novedades en los proyectos que apoyo', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-profile-saved', 'Informacion de perfil actualizada', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('user-register-success', 'El usuario se ha registrado correctamente. A continuación recibirás un mensaje de correo para activarlo.', NULL, 'general');
INSERT INTO `purpose` VALUES('user-save-fail', 'Ha habido algun problema al guardar los datos', NULL, 'dashboard');
INSERT INTO `purpose` VALUES('validate-cost-field-dates', 'Debes indicar las fechas de inicio y final de este coste para poder valorar mejor el proyecto.', NULL, 'costs');
INSERT INTO `purpose` VALUES('validate-project-costs-any_error', 'Falta alguna información en el desglose de costes', NULL, 'costs');
INSERT INTO `purpose` VALUES('validate-project-field-about', 'La explicacion del proyecto es demasiado corta', NULL, 'overview');
INSERT INTO `purpose` VALUES('validate-project-field-costs', 'Recomendamos desglosar hasta 5 costes diferentes para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'costs');
INSERT INTO `purpose` VALUES('validate-project-field-currently', 'Indica el estado del proyecto para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'overview');
INSERT INTO `purpose` VALUES('validate-project-field-description', 'La descripcion del proyecto es demasiado corta', NULL, 'overview');
INSERT INTO `purpose` VALUES('validate-project-individual_rewards', 'Indicar hasta 5 recompensas individuales para mejorar la puntuación', NULL, 'rewards');
INSERT INTO `purpose` VALUES('validate-project-individual_rewards-any_error', 'Falta alguna información sobre recompensas individuales', NULL, 'rewards');
INSERT INTO `purpose` VALUES('validate-project-social_rewards', 'Es obligatorio indicar como mínimo un retorno colectivo ', NULL, 'general');
INSERT INTO `purpose` VALUES('validate-project-social_rewards-any_error', 'Falta alguna información sobre retornos colectivos', NULL, 'rewards');
INSERT INTO `purpose` VALUES('validate-project-total-costs', 'El coste óptimo no puede superar en más de un 50% al coste mínimo. O subes los costes imprescindibles o bajas los costes adicionales.\r\n', NULL, 'general');
INSERT INTO `purpose` VALUES('validate-project-userProfile-any_error', 'Hay algún error en la dirección URL introducida', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-project-userProfile-web', 'Es recomendable indicar alguna web', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-project-value-contract_email', 'La dirección de email no es correcta', NULL, 'register');
INSERT INTO `purpose` VALUES('validate-project-value-contract_nif', 'El NIF no es correcto.', NULL, 'personal');
INSERT INTO `purpose` VALUES('validate-project-value-description', 'La descripción del proyecto es demasiado corta	', NULL, 'overview');
INSERT INTO `purpose` VALUES('validate-project-value-entity_cif', 'El CIF no es válido', NULL, 'personal');
INSERT INTO `purpose` VALUES('validate-project-value-keywords', 'Indica un mínimo de 5 palabras clave del proyecto para mejorar la valoración del mismo de cara a determinar si publicarlo en Goteo.', NULL, 'overview');
INSERT INTO `purpose` VALUES('validate-project-value-phone', 'El formato de número de teléfono no es correcto.', NULL, 'personal');
INSERT INTO `purpose` VALUES('validate-register-value-email', 'El email introducido no es válido', NULL, 'register');
INSERT INTO `purpose` VALUES('validate-social_reward-license', 'Indicar una licencia para mejorar la puntuación', NULL, 'rewards');
INSERT INTO `purpose` VALUES('validate-user-field-about', 'Cuenta algo sobre ti, para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-avatar', 'Pon una imagen de perfil para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-contribution', 'Explica qué podrias aportar en Goteo para mejorar la valoración del proyecto de cara a determinar si publicarlo en la plataforma.', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-facebook', 'Pon tu cuenta de Facebook para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-interests', 'Selecciona algún interés para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-keywords', 'Indica hasta 5 palabras clave que te definan, para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-linkedin', 'El campo de LinkedIn no es válido', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-location', 'El lugar de residencia del usuario no es válido', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-name', 'Pon tu nombre completo para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-twitter', 'El usuario de Twitter no es válido', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-web', 'Debes poner la dirección (URL) de la web', NULL, 'profile');
INSERT INTO `purpose` VALUES('validate-user-field-webs', 'Pon tu página web para mejorar la valoración del proyecto de cara a determinar si publicarlo en Goteo.', NULL, 'profile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `to_checker` text,
  `to_owner` text,
  `score` int(2) NOT NULL DEFAULT '0',
  `max` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Revision para evaluacion de proyecto' AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `review`
--

INSERT INTO `review` VALUES(3, 'pliegos', 1, 'x', 'x', 0, 23);
INSERT INTO `review` VALUES(4, 'nodo-movil', 1, 'aqui iria el comentario del admin para el revisor. Esto es un text para ver si sfonciona. Asigno esta revisión a Enric, que la deberia ver en su dashboar en Panel de revisor', 'aqui iria el comentario del admin para el procuctor', 11, 23);
INSERT INTO `review` VALUES(5, 'dinou-publicacio-irregular', 0, '', '', 0, 23);
INSERT INTO `review` VALUES(8, 'mi-barrio', 0, 'dsfa sdf asdf asdf ', 'asdf asdf asdf asdf ', 0, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review_comment`
--

DROP TABLE IF EXISTS `review_comment`;
CREATE TABLE `review_comment` (
  `review` bigint(20) unsigned NOT NULL,
  `user` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `evaluation` text,
  `recommendation` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review`,`user`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comentarios de revision';

--
-- Volcar la base de datos para la tabla `review_comment`
--

INSERT INTO `review_comment` VALUES(4, 'goteo', 'owner', 's dfgsdfg sdfg sdfasklh lh  gp op\n\ndhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs \n\ndfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfg', 's dfgsdfg sdfg sdfasklh lh  gp op\n\ndhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs \n\ndfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfg', '2011-09-19 18:01:46');
INSERT INTO `review_comment` VALUES(4, 'goteo', 'project', 'huio ghjot u g lksdg fjkph jkog  hj hj', 'jog hjg ohjg pg kpg g jkdfg adrg a', '2011-09-19 18:01:41');
INSERT INTO `review_comment` VALUES(4, 'goteo', 'reward', 's dfgsdfg sdfg sdfasklh lh  gp op\n\ndhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs \n\ndfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfg', 's dfgsdfg sdfg sdfasklh lh  gp op\n\ndhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs \n\ndfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfgs dfgsdfg sdfg sdfasklh lh  gp opdhfg adfg', '2011-09-19 18:02:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review_score`
--

DROP TABLE IF EXISTS `review_score`;
CREATE TABLE `review_score` (
  `review` bigint(20) unsigned NOT NULL,
  `user` varchar(50) NOT NULL,
  `criteria` bigint(20) unsigned NOT NULL,
  `score` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`review`,`user`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Puntuacion por citerio';

--
-- Volcar la base de datos para la tabla `review_score`
--

INSERT INTO `review_score` VALUES(4, 'goteo', 6, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 8, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 10, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 11, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 13, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 16, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 18, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 20, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 22, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 24, 1);
INSERT INTO `review_score` VALUES(4, 'goteo', 26, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reward`
--

DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `reward` tinytext,
  `description` text,
  `type` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `other` tinytext COMMENT 'Otro tipo de recompensa',
  `license` varchar(50) DEFAULT NULL,
  `amount` int(5) DEFAULT NULL,
  `units` int(5) DEFAULT NULL,
  `fulsocial` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Retorno colectivo cumplido',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Retornos colectivos e individuales' AUTO_INCREMENT=242 ;

--
-- Volcar la base de datos para la tabla `reward`
--

INSERT INTO `reward` VALUES(57, 'a565092b772c29abc1b92f999af2f2fb', 'Acceso y utilización libre de la aplicación web', 'La aplicación será de libre uso. El usuario únicamente tendrá que registrarse para organizar campañas (numero limitado a 3). Para cada campaña se obtendrá automáticamente un espacio único en el servidor para la visualización ', 'social', 'file', '', 'ccbyncsa', 0, 0, 0);
INSERT INTO `reward` VALUES(59, 'a565092b772c29abc1b92f999af2f2fb', 'Asesoría para futuros administradores de la aplicación', 'Te asesoraremos en el uso de la aplicación respecto a la instrucciones, la parte de twitter, etc.', 'individual', 'money', '', '', 40, 75, 0);
INSERT INTO `reward` VALUES(64, 'fixie-per-tothom', '01 retorno colectivo', 'Phasellus varius sodales accumsan.', 'social', 'manual', NULL, 'ccbyncsa', NULL, NULL, 0);
INSERT INTO `reward` VALUES(65, 'fixie-per-tothom', '02 retorno colectivo', 'Nulla pellentesque mi at dolor accumsan accumsan. Praesent arcu nibh, sollicitudin eu fringilla fringilla, rhoncus et mi. Sed sed pretium ipsum. Vestibulum non velit nibh, non dignissim eros. Phasellus varius sodales accumsan.', 'social', 'code', NULL, 'gpl', NULL, NULL, 0);
INSERT INTO `reward` VALUES(66, 'fixie-per-tothom', '01 recompensa individual', 'Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. Praesent arcu nibh, sollicitudin eu fringilla fringilla, rhoncus et mi. Sed sed pretium ipsum. Vestibulum non velit nibh, non dig', 'individual', 'product', '', '', 20, 30, 0);
INSERT INTO `reward` VALUES(73, 'no-sleep-till-brooklyn', 'codigo GPL', 'código', 'social', 'other', '', NULL, 0, 0, 0);
INSERT INTO `reward` VALUES(82, 'no-sleep-till-brooklyn', 'Planos placa arduino', '50 placas al mejor postor', 'social', 'design', NULL, 'oshw', NULL, NULL, 0);
INSERT INTO `reward` VALUES(90, 'a565092b772c29abc1b92f999af2f2fb', 'El código de Twittometro', 'Estará disponible el código de la aplicación para poder usarlo y mejorarlo, siempre bajo el mismo tipo de licencia libre.', 'social', 'code', NULL, 'agpl', NULL, NULL, 0);
INSERT INTO `reward` VALUES(92, 'pliegos', 'Licencia CC', 'Ok lo que digo :)', 'social', 'design', NULL, 'gpl', NULL, NULL, 0);
INSERT INTO `reward` VALUES(95, 'pliegos', 'Premios!', 'Ole ole', 'individual', 'other', NULL, NULL, 10, 2, 0);
INSERT INTO `reward` VALUES(109, 'no-sleep-till-brooklyn', 'Patrones para hacer una camiseta', 'Patrones para hacer una camiseta', 'social', 'design', NULL, 'ccby', NULL, NULL, 0);
INSERT INTO `reward` VALUES(118, 'pliegos', 'Nueva recompensa individual', '', 'individual', 'money', NULL, NULL, 10, 0, 0);
INSERT INTO `reward` VALUES(122, 'todojunto-letterpress', 'Devuelvo en horas de formación o ayuda a otros proyectos', 'Workshops en el taller letterpress.  12 horas', 'social', 'other', '', '', 0, 0, 0);
INSERT INTO `reward` VALUES(125, 'todojunto-letterpress', 'Devuelvo en manuales (HOW TO)', 'Manual/fanzine explicando los fundamentos de la impresión con tipografías móviles.', 'social', 'manual', NULL, 'ccby', 0, 0, 0);
INSERT INTO `reward` VALUES(127, 'oh-oh-fase-2', 'Devuelvo en manuales (HOW TO)', 'Manual para replicar el robot, fabricarlo y comercializarlo, manuales para dar cursos con el', 'social', 'manual', NULL, 'ccby', 0, 0, 0);
INSERT INTO `reward` VALUES(131, 'oh-oh-fase-2', 'Devuelvo el dinero', 'Hacemos donaciones a otros proyectos de software y hardware libre', 'social', 'other', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(132, 'urban-social-design-database', 'Devuelvo en archivos digitales', 'Los proyectos almacenados serán de libre uso para todos.', 'social', 'file', NULL, 'ccbysa', 0, 0, 0);
INSERT INTO `reward` VALUES(133, 'archinhand-architecture-in-your-hand', 'Devuelvo el dinero', '10 % a otros proyectos de Goteo', 'social', 'other', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(134, 'archinhand-architecture-in-your-hand', 'Devuelvo el código fuente', 'Código fuente', 'social', 'code', NULL, 'ccbyncsa', 0, 0, 0);
INSERT INTO `reward` VALUES(135, 'archinhand-architecture-in-your-hand', 'Devuelvo en horas de formación o ayuda a otros proyectos', 'Devuelvo en horas de formación o ayuda a otros proyectos.  12 horas', 'social', 'service', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(136, 'mi-barrio', 'Devuelvo el código fuente', 'Manuales express de grabación, videos resultado del proyecto y documentación de los procesos', 'social', 'code', NULL, 'ccbysa', 0, 0, 0);
INSERT INTO `reward` VALUES(137, 'mi-barrio', 'Devuelvo en horas de formación o ayuda a otros proyectos', 'Talleres de formación ciudadana ', 'social', 'service', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(138, 'goteo', 'Prueba TAPR', '', 'social', 'file', NULL, 'tapr', 0, 0, 0);
INSERT INTO `reward` VALUES(139, 'goteo', 'Prueba OH', '', 'social', 'file', NULL, 'oshw', 0, 0, 0);
INSERT INTO `reward` VALUES(140, 'goteo', 'Prueba ODC', '', 'social', 'design', '', 'ccbysa', 0, 0, 0);
INSERT INTO `reward` VALUES(141, 'hkp', 'Devuelvo en productos', 'Libro HKp  1500 unidades', 'social', 'manual', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(142, 'hkp', 'Devuelvo en productos', 'DVD HKp  1500 unidades', 'social', 'file', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(143, 'hkp', 'Contenidos copyleft', 'todos los contenidos son copyleft o libres reutilizables, wiki es plataforma participativa puede usarse en talleres u otros proyectos', 'social', 'other', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(144, 'hkp', 'Libro + DVD', 'En caso de conseguir publicar el libro y el DVD (o uno de ellos) se podría enviar el pack a quienes hayan hecho contribuciones', 'individual', 'product', NULL, '', 15, 1500, 0);
INSERT INTO `reward` VALUES(145, 'move-commons', 'Devuelvo el código fuente   ', 'Material gráfico, código de plataforma+buscador (AGPL) y HOWTOs/categoría ', 'social', 'code', NULL, 'agpl', 0, 0, 0);
INSERT INTO `reward` VALUES(146, 'move-commons', 'Otros', 'Buscador de iniciativas y facilitar construcción de servicios sobre la plataforma', 'social', 'other', NULL, 'ccby', 0, 0, 0);
INSERT INTO `reward` VALUES(147, 'nodo-movil', 'Código fuente', 'Devuelvo el código fuente', 'social', 'code', NULL, 'xoln', 0, 0, 0);
INSERT INTO `reward` VALUES(148, 'nodo-movil', 'Formación', 'Devuelvo en horas de formación o ayuda a otros proyectos. 10 horas', 'social', 'service', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(149, 'canal-alfa', 'Devuelvo el código fuente ', 'La plataforma web y las aplicaciones creadas serán publicadas como GPL.', 'social', 'code', NULL, 'gpl', 0, 0, 0);
INSERT INTO `reward` VALUES(151, 'canal-alfa', 'Devuelvo en archivos digitales   ', 'Todo el contenido publicado por los usuarios formará parte de un archivo de dominio público.', 'social', 'file', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(152, 'robocicla', 'Nuevo retorno colectivo', 'Material Didáctico en Código Abierto , Asesoría y Herramientas pedagógicas en torno a la cultura libre para niñ@s', 'social', 'manual', NULL, 'ccbyncsa', 0, 0, 0);
INSERT INTO `reward` VALUES(153, 'no-sleep-till-brooklyn', 'CD', 'CD super calidad ﻿Duis pulvinar rhoncus ligula vel iaculis. Mauris porttitor ipsum ac libero interdum molestie. Fusce lacus mi, mattis at ultrices nec, cursus hendrerit lectus. Proin tempor lacus nec nisl vestibulum elementum. ', 'individual', 'product', NULL, '', 8, 0, 0);
INSERT INTO `reward` VALUES(155, '3d72d03458ebd5797cc5fc1c014fc894', 'cd', 'un super cd', 'individual', 'product', NULL, '', 10, 100, 0);
INSERT INTO `reward` VALUES(156, '3d72d03458ebd5797cc5fc1c014fc894', 'una camiseta', '100', 'individual', 'product', NULL, '', 10, 10, 0);
INSERT INTO `reward` VALUES(157, '3d72d03458ebd5797cc5fc1c014fc894', 'si no esta publicad la edición fonciona', '', 'individual', 'product', NULL, '', 10, 0, 0);
INSERT INTO `reward` VALUES(158, 'no-sleep-till-brooklyn', 'aqui hay un problema veras', 'aqui hay un problema veras', 'individual', 'other', '', '', 10, 0, 0);
INSERT INTO `reward` VALUES(160, '28c0caa840fc9c642160b1e2774667ff', '1', '', 'social', '', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(170, '3d72d03458ebd5797cc5fc1c014fc894', 'producto', 'dd', 'individual', 'product', NULL, '', 50, 5, 0);
INSERT INTO `reward` VALUES(171, '3d72d03458ebd5797cc5fc1c014fc894', 'Nuevo retorno colectivo', '', 'social', 'other', NULL, '', 0, 0, 0);
INSERT INTO `reward` VALUES(177, 'goteo', 'Nuevo retorno colectivo', '', 'social', 'code', '', 'php', 0, 0, 0);
INSERT INTO `reward` VALUES(178, 'goteo', 'Nuevo retorno colectivo', '', 'social', 'code', '', 'mpl', 0, 0, 0);
INSERT INTO `reward` VALUES(180, 'dinou-publicacio-irregular', 'Descarga PDF del periódico ', 'Descarga PDF del periódico para reproducción parcial o total', 'social', 'code', '', NULL, 0, 0, 0);
INSERT INTO `reward` VALUES(183, 'dinou-publicacio-irregular', '2 ediciones del periódico', 'Enviamos las 2 ediciones impresas', 'individual', 'product', '', '', 20, 200, 0);
INSERT INTO `reward` VALUES(191, 'dinou-publicacio-irregular', 'test', 'test', 'individual', 'service', '', '', 200, 3, 0);
INSERT INTO `reward` VALUES(192, '8c069c398c3e3114e681ccfafa4a3fe0', 'Nuevo retorno colectivo', '', 'social', 'file', '', 'ccbyncsa', 0, 0, 0);
INSERT INTO `reward` VALUES(198, '8c069c398c3e3114e681ccfafa4a3fe0', 'Nueva recompensa individual', '', 'individual', '', '', '', 0, 0, 0);
INSERT INTO `reward` VALUES(213, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nueva recompensa individual', 'Nueva recompensa individual', 'individual', 'file', '', '', 5, 0, 0);
INSERT INTO `reward` VALUES(214, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nueva recompensa individual', '', 'individual', 'file', '', '', 0, 0, 0);
INSERT INTO `reward` VALUES(215, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nuevo retorno colectivo', 'huh', 'social', 'code', '', 'lgpl', 0, 0, 0);
INSERT INTO `reward` VALUES(221, '8851739335520c5eeea01cd745d0442d', 'Nuevo retorno colectivo', '', 'social', 'design', '', 'oshw', 0, 0, 0);
INSERT INTO `reward` VALUES(222, '8851739335520c5eeea01cd745d0442d', 'Nueva recompensa individual', '', 'individual', 'other', '', '', 0, 0, 0);
INSERT INTO `reward` VALUES(223, 'fixie-per-tothom', 'Nueva recompensa individual', 'disco', 'individual', 'file', '', '', 100, 10, 0);
INSERT INTO `reward` VALUES(224, '95d51f5b90955d5370b7e7f8045e2368', 'Nuevo retorno colectivo', '', 'social', 'code', '', 'gpl', 0, 0, 0);
INSERT INTO `reward` VALUES(225, 'tweetometro', 'Acceso y utilización libre de la aplicación web', 'La aplicación será de libre uso. El usuario únicamente tendrá que registrarse para organizar campañas (numero limitado a 3). Para cada campaña se obtendrá automáticamente un espacio único en el servidor para la visualización.', 'social', 'service', '', '', 0, 0, 0);
INSERT INTO `reward` VALUES(226, 'tweetometro', 'El código de Twittometro', 'Estará disponible el código de la aplicación para poder usarlo y mejorarlo, siempre bajo el mismo tipo de licencia libre.', 'social', 'code', '', 'agpl', 0, 0, 0);
INSERT INTO `reward` VALUES(227, 'tweetometro', 'Asesoría para futuros administradores de la aplicación', 'Te asesoraremos presencialmente o por videoconferencia en el uso de la aplicación respecto a las instrucciones, la parte de Twitter, etc. para que puedas gestionar una cuenta instalada.', 'individual', 'service', '', '', 100, 4, 0);
INSERT INTO `reward` VALUES(229, 'tweetometro', 'Instalación premium para una campaña concreta', 'Ofrecemos una edición limitada de la recompensa anterior (asesoría de administración) más la instalación de diseño personalizado de un Tweetometro en base a los objetivos que tengas, listo para usarse. Alojado con URL propia y posibilida', 'individual', 'product', '', '', 1000, 2, 0);
INSERT INTO `reward` VALUES(230, 'tutorial-goteo', 'Un retorno colectivo (o más :)', 'Aquí se debe definir la licencia asignar al proyecto, en función de su formato y/o del grado de abertura del mismo (o de alguna de sus partes). Esta parte es muy importante, ya que Goteo es crowdfunding para proyectos que amplíen el procomún.', 'social', 'file', '', 'ccbyncsa', 0, 0, 0);
INSERT INTO `reward` VALUES(231, 'tutorial-goteo', 'Recompensa individual mínima', 'Aquí se debe especificar alguna recompensa para quien apoye el proyecto, vinculada a una cantidad de dinero concreta. Pueden ser archivos digitales, productos, servicios, incluso dinero. Deben ser productos/servicios atractivos o ingeniosos.', 'individual', 'product', '', '', 25, 40, 0);
INSERT INTO `reward` VALUES(232, 'goteo', 'Nuevo retorno colectivo', '', 'social', 'manual', NULL, 'freebsd', NULL, NULL, 0);
INSERT INTO `reward` VALUES(233, 'goteo', 'De 5', 'recompensa de 5\r\n', 'individual', 'product', NULL, NULL, 5, 100, 0);
INSERT INTO `reward` VALUES(234, 'goteo', 'De 10', 'Recompensa de 10 euros', 'individual', 'product', NULL, NULL, 10, 100, 0);
INSERT INTO `reward` VALUES(235, 'goteo', 'De 20', 'Recompensa de 20 euros', 'individual', 'product', NULL, NULL, 20, 20, 0);
INSERT INTO `reward` VALUES(237, '9ae51fb1ca2601e407969fa54cd47086', 'Nueva recompensa individual lkljasdoifu asdf josjo ijasdfkl io', ' jklsdj fñlj kl´`sdja ´f ñsld lfj shhklsdfa asdf dsfjk h dsfjkh sjkal fjk ahsjkdf hjkasd hjkf hkjas hdfjkh asjkdhfjkhsajkdhf kash ldkfh kjh  hf lhas dfjkh klhh kjsh akjsdf asuiy afui yaskjdfh sdf asdf   \r\n    ajkashduify api\r\n\r\nasd fash dfjklh jklh ñ\r\n lkj kljasd klñjflñkaj sdflñj klja sñdfjklñj klñjsdklsdf sdf lñkj sdñlajñdfj aslñkdjflñksjad  klj asjd fklñj\r\n', 'individual', 'money', 'sadf', NULL, 110, 5, 0);
INSERT INTO `reward` VALUES(238, 'pliegos', 'Nuevo retorno colectivo', '', 'social', 'code', NULL, 'gpl2', NULL, NULL, 0);
INSERT INTO `reward` VALUES(239, '43b8c28144ad2a9687374e95ae9ac4d6', 'Nuevo retorno colectivo', '', 'social', 'manual', NULL, NULL, NULL, NULL, 0);
INSERT INTO `reward` VALUES(240, '43b8c28144ad2a9687374e95ae9ac4d6', 'Nueva recompensa individual', NULL, 'individual', '', NULL, NULL, 0, 0, 0);
INSERT INTO `reward` VALUES(241, 'dinou-publicacio-irregular', 'Nueva recompensa individual', NULL, 'individual', '', NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reward_lang`
--

DROP TABLE IF EXISTS `reward_lang`;
CREATE TABLE `reward_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `reward` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `reward_lang`
--

INSERT INTO `reward_lang` VALUES(64, 'en', 'ENG 01 retorno colectivo', 'ENG Phasellus varius sodales accumsan.');
INSERT INTO `reward_lang` VALUES(65, 'en', 'ENG 02 retorno colectivo', 'ENG Nulla pellentesque mi at dolor accumsan accumsan. Praesent arcu nibh, sollicitudin eu fringilla fringilla, rhoncus et mi. Sed sed pretium ipsum. Vestibulum non velit nibh, non dignissim eros. Phasellus varius sodales accumsan.');
INSERT INTO `reward_lang` VALUES(66, 'en', 'ENG 01 recompensa individual', 'ENG Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. Praesent arcu nibh, sollicitudin eu fringilla fringilla, rhoncus et mi. Sed sed pretium ipsum. Vestibulum non velit nibh, non dig');
INSERT INTO `reward_lang` VALUES(73, 'ca', 'cat cat cat cat codigo GPL', 'cat cat cat cat código');
INSERT INTO `reward_lang` VALUES(82, 'ca', 'cat cat cat cat Planos placa arduino', 'cat cat cat cat cat 50 placas al mejor postor');
INSERT INTO `reward_lang` VALUES(109, 'ca', 'CAT CAT CAT CAT CAT Patrones', 'CAT CAT CAT CAT CAT Patrones para hacer una camiseta');
INSERT INTO `reward_lang` VALUES(153, 'ca', 'CD', 'cat cat cat cat cat CD super calidad ﻿Duis ');
INSERT INTO `reward_lang` VALUES(158, 'ca', 'No prloblem', 'No prloblemNo prloblemNo prloblemNo prloblemNo prloblemNo prloblem');
INSERT INTO `reward_lang` VALUES(223, 'en', 'ENG Nueva recompensa individual', 'ENG disco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `role`
--

INSERT INTO `role` VALUES('admin', 'Administrador');
INSERT INTO `role` VALUES('caller', 'Convocador');
INSERT INTO `role` VALUES('checker', 'Revisor de proyectos');
INSERT INTO `role` VALUES('root', 'ROOT');
INSERT INTO `role` VALUES('superadmin', 'Super administrador');
INSERT INTO `role` VALUES('translator', 'Traductor de contenidos');
INSERT INTO `role` VALUES('user', 'Usuario mediocre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE `sponsor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `url` tinytext,
  `image` int(10) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Patrocinadores' AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `sponsor`
--

INSERT INTO `sponsor` VALUES(1, 'CCCB', 'http://www.cccb.org/lab', 102, 2);
INSERT INTO `sponsor` VALUES(2, 'CONCA', 'http://www.conca.cat/', 101, 1);
INSERT INTO `sponsor` VALUES(3, 'ICUB', 'http://barcelonacultura.bcn.cat/', 103, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support`
--

DROP TABLE IF EXISTS `support`;
CREATE TABLE `support` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project` varchar(50) NOT NULL,
  `support` tinytext,
  `description` text,
  `type` varchar(50) DEFAULT NULL,
  `thread` bigint(20) unsigned DEFAULT NULL COMMENT 'De la tabla message',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Colaboraciones' AUTO_INCREMENT=109 ;

--
-- Volcar la base de datos para la tabla `support`
--

INSERT INTO `support` VALUES(19, 'a565092b772c29abc1b92f999af2f2fb', 'Beta-testers y difusores', 'Son bienvenidas la ayuda de difusión para que mucha gente conozca la  herramienta y participe en las campañas. También se necesitá en determinados momentos hacer pruebas masivas para ver la resistencia de la aplicación. ', 'lend', 78);
INSERT INTO `support` VALUES(20, 'a565092b772c29abc1b92f999af2f2fb', 'Servidores', 'Aunque contamos con un servidor, dependiendo del numero de vistas y usuarios de la herramienta, necesitaremos patrocinadores para hacer más fácil el mantenimiento del proyecto y que pueda continuar siendo de uso gratuito.', 'lend', 79);
INSERT INTO `support` VALUES(23, 'fixie-per-tothom', 'Espacio taller', 'Donec ultrices libero in est tincidunt placerat tempor mi mattis. Vestibulum at aliquam lacus. Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. ', 'lend', 157);
INSERT INTO `support` VALUES(28, 'no-sleep-till-brooklyn', '', 'pinceles', NULL, 137);
INSERT INTO `support` VALUES(29, 'no-sleep-till-brooklyn', '', '', NULL, 138);
INSERT INTO `support` VALUES(34, 'no-sleep-till-brooklyn', 'nueva colab editada desde el dahboard proyecto BROOKLYN', 'a ver si se ve', 'task', 139);
INSERT INTO `support` VALUES(38, 'pliegos', 'Pilas', 'Dejadmelas :)', 'lend', 75);
INSERT INTO `support` VALUES(43, 'no-sleep-till-brooklyn', 'ayuda para poner en marcha este ajax!!!', 'ayuda para poner en marcha este ajax!!!', 'task', 140);
INSERT INTO `support` VALUES(48, 'no-sleep-till-brooklyn', 'Nueva tarea', 'una tarea guay', 'task', 141);
INSERT INTO `support` VALUES(53, 'todojunto-letterpress', 'Furgoneta', 'Furgoneta o transporte para mover los materiales conseguidos. Para 4 horas más o menos.', 'lend', NULL);
INSERT INTO `support` VALUES(54, 'urban-social-design-database', 'Viajero', 'estudiante becario para viajar por europa y dar a conocer el proyecto', 'task', 87);
INSERT INTO `support` VALUES(55, 'urban-social-design-database', 'film maker', 'film maker', 'task', 88);
INSERT INTO `support` VALUES(56, 'urban-social-design-database', 'espacio', 'plaza de trabajo en oficina compartida', 'lend', 89);
INSERT INTO `support` VALUES(57, 'urban-social-design-database', 'camara video', 'camara video', 'lend', 90);
INSERT INTO `support` VALUES(58, 'urban-social-design-database', 'hosting profesional', 'hosting profesional', 'lend', 91);
INSERT INTO `support` VALUES(59, 'archinhand-architecture-in-your-hand', 'Testers de la herramienta', 'Estudiantes de arquitectura', 'task', 114);
INSERT INTO `support` VALUES(60, 'mi-barrio', 'Diseñadores', 'Diseñadores web, espertos en redes sociales', 'task', 150);
INSERT INTO `support` VALUES(61, 'mi-barrio', 'Aulas para talleres', 'Aulas para talleres', 'lend', 151);
INSERT INTO `support` VALUES(62, 'move-commons', 'Diseñador gráfico', 'Diseñador gráfico', 'task', 101);
INSERT INTO `support` VALUES(63, 'move-commons', 'Traductores a múltiples idiomas (20h/c)', 'Traductores a múltiples idiomas (20h/c)', 'task', 102);
INSERT INTO `support` VALUES(64, 'move-commons', 'Testers', 'Colectivos', 'task', 103);
INSERT INTO `support` VALUES(65, 'nodo-movil', 'Desarrolladores', 'Desarrolladores de Exo.cat, grupo Manet. Expertos en streaming y telefonía móvil..', 'task', 81);
INSERT INTO `support` VALUES(66, 'nodo-movil', 'Espacio de trabajo', 'Sala de hackeo / trabajo / reunión. para 10 personas.', 'lend', 82);
INSERT INTO `support` VALUES(67, 'nodo-movil', 'Espacio público', 'Espacio público (accesible para trabajar ).', 'lend', 83);
INSERT INTO `support` VALUES(68, 'canal-alfa', 'Programación extractor', 'Programación herramientas para la extración de videos', 'task', 110);
INSERT INTO `support` VALUES(69, 'canal-alfa', 'Investigación', 'Investigación de algoritmos para el reconocimiento automatizado del contenido de vídeos', 'task', 111);
INSERT INTO `support` VALUES(70, 'canal-alfa', 'Programación editor', 'Programación editor de vídeo online', 'task', 112);
INSERT INTO `support` VALUES(71, 'robocicla', 'Traductor', 'Traductor@ (ingles / portugues / italiano / frances / griego)', 'task', 80);
INSERT INTO `support` VALUES(72, 'no-sleep-till-brooklyn', 'TAREA DESDE DASHBOAR', 'FUNCIONA', 'task', 142);
INSERT INTO `support` VALUES(74, '3d72d03458ebd5797cc5fc1c014fc894', 'Nueva colaboración', '', 'lend', 0);
INSERT INTO `support` VALUES(75, 'dinou-publicacio-irregular', 'Nueva colaboración', '', 'task', 158);
INSERT INTO `support` VALUES(81, 'hkp', 'Nueva colaboración', '', 'task', 0);
INSERT INTO `support` VALUES(85, '8c069c398c3e3114e681ccfafa4a3fe0', 'Nueva colaboración', '', 'task', 0);
INSERT INTO `support` VALUES(86, '28c0caa840fc9c642160b1e2774667ff', 'Nueva colaboración', '', 'task', 0);
INSERT INTO `support` VALUES(97, 'f1dd9c1678c62273e21b67bff6e8b47a', 'Nueva colaboración', '', 'lend', 0);
INSERT INTO `support` VALUES(98, '8851739335520c5eeea01cd745d0442d', 'Nueva colaboración', '', 'task', 0);
INSERT INTO `support` VALUES(99, '8851739335520c5eeea01cd745d0442d', 'Nueva colaboración', '', 'lend', 0);
INSERT INTO `support` VALUES(101, 'tweetometro', 'Beta-testers y difusores ', 'Son bienvenidas la ayuda de difusión para que mucha gente conozca la herramienta y participe en las campañas. También se necesitará en determinados momentos hacer pruebas masivas para ver la resistencia de la aplicación. ', 'task', 143);
INSERT INTO `support` VALUES(102, 'tweetometro', 'Servidores', 'Aunque contamos con un servidor, dependiendo del numero de vistas y usuarios de la herramienta, necesitaremos "patrocinadores" en espacio web para hacer más fácil el mantenimiento del proyecto y que pueda continuar siendo de uso gratuito.', 'lend', 144);
INSERT INTO `support` VALUES(104, 'tutorial-goteo', 'Colaboración en una tarea', 'Colaboración que requiera una habilidad para una tarea específica (traducciones, gestiones, difusión, etc), ya sea a distancia mediante ordenador o bien presencialmente.', 'task', 108);
INSERT INTO `support` VALUES(105, 'tutorial-goteo', 'Colaboración en un préstamo', 'Préstamo temporal de material necesario para el proyecto, o bien de cesión de infraestructuras o espacios por un periodo determinado. También puede implicar préstamos permanentes, o sea regalos :)', 'lend', 109);
INSERT INTO `support` VALUES(106, 'goteo', 'Nueva colaboración', 'asdf asdf', 'task', 152);
INSERT INTO `support` VALUES(107, 'goteo', 'Nueva colaboración', 'asdf asdf ', 'task', 153);
INSERT INTO `support` VALUES(108, '43b8c28144ad2a9687374e95ae9ac4d6', 'Nueva colaboración', '', 'task', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support_lang`
--

DROP TABLE IF EXISTS `support_lang`;
CREATE TABLE `support_lang` (
  `id` int(20) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `support` tinytext,
  `description` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `support_lang`
--

INSERT INTO `support_lang` VALUES(23, 'en', 'ENG Espacio taller', 'ENG Donec ultrices libero in est tincidunt placerat tempor mi mattis. Vestibulum at aliquam lacus. Suspendisse condimentum metus vel arcu faucibus id volutpat arcu ultricies. Nulla pellentesque mi at dolor accumsan accumsan. ');
INSERT INTO `support_lang` VALUES(28, 'ca', 'catcatcatcatcatcatcatcatcatcatcat', 'catcatcatcatcatcatcat');
INSERT INTO `support_lang` VALUES(28, 'en', 'eng', 'engg');
INSERT INTO `support_lang` VALUES(29, 'ca', 'advsdvbasdb', 'basdbadsf sadfadsf ');
INSERT INTO `support_lang` VALUES(34, 'ca', 'CAT! nueva colab editada desde el dahboard proyecto BROOKLYN ', 'CATT!! a ver si se ve a ver si se ve a ver si se ve ');
INSERT INTO `support_lang` VALUES(34, 'en', 'ENG!! nueva colab editada desde el dahboard proyecto BROOKLYN ', 'ENGGG!!! a ver si se ve a ver si se ve a ver si se ve a ver si se ve a ver si se ve a ver si se ve a ver si se ve a ver si se ve a ver si se ve a ver si se ve a ver si se ve ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `blog` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tags de blogs (de nodo)' AUTO_INCREMENT=11 ;

--
-- Volcar la base de datos para la tabla `tag`
--

INSERT INTO `tag` VALUES(2, 'Proyectos', 1);
INSERT INTO `tag` VALUES(3, 'Goteo', 1);
INSERT INTO `tag` VALUES(7, 'Recursos', 1);
INSERT INTO `tag` VALUES(8, 'Casos de éxito', 1);
INSERT INTO `tag` VALUES(9, 'Convocatorías', 1);
INSERT INTO `tag` VALUES(10, 'Eventos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag_lang`
--

DROP TABLE IF EXISTS `tag_lang`;
CREATE TABLE `tag_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `tag_lang`
--

INSERT INTO `tag_lang` VALUES(10, 'ca', 'Esdeveniments');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template`
--

DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `purpose` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Plantillas emails automáticos' AUTO_INCREMENT=32 ;

--
-- Volcar la base de datos para la tabla `template`
--

INSERT INTO `template` VALUES(1, 'Mensaje de contacto', 'Plantilla para un mensaje de contacto desde Goteo', 'Contacto desde Goteo: %SUBJECT%', '<p>Hola <span class="message-highlight-red">%TONAME%</span>,</p>\r\n<p>Éste es un mensaje de contacto enviado por <span class="message-highlight-blue">%USEREMAIL%</span> desde Goteo.org:</p>\r\n<blockquote>%MESSAGE%</blockquote>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(2, 'Mensaje a los cofinanciadores', 'Plantilla del mensaje masivo a cofinanciadores desde dashboard - gestión de retornos', 'Mensaje del proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%NAME%</span>,</p>\r\n<p>Éste es un mensaje enviado desde la plataforma Goteo por parte de quien impulsa el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span>:</p>\r\n<blockquote>%MESSAGE%</blockquote>\r\n<p>Te recordamos que puedes acceder a la página de <span class="message-highlight-blue">%PROJECTNAME%</span> en Goteo desde la siguiente URL: </p>\r\n<p><span class="message-highlight-blue"><a href="%PROJECTURL%">%PROJECTURL%</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(3, 'Mensaje al autor', 'Plantilla del mensaje al autor después de aportar a su proyecto', 'Mensaje de un/a cofinanciador/a de %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%OWNERNAME%</span>!</p>\r\n<p>Éste es un mensaje enviado desde Goteo por <span class="message-highlight-red">%USERNAME%</span>:</p>\r\n<blockquote>%MESSAGE%</blockquote>\r\n<p>Para enviar un mensaje a <span class="message-highlight-red">%USERNAME%</span> pulsa <span class="message-highlight-blue"><a href="%RESPONSEURL%">AQUÍ</a></span>.</p>\r\n<p>Te recordamos que puedes ver quién cofinancia el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="%SITEURL%">%SITEURL%</a>/dashboard</span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(4, 'Mensaje entre usuarios', 'Mensaje de un usuario a otro desde la página de perfil del destinatario', 'Mensaje personal de %USERNAME% desde Goteo', '<p>Hola <span class="message-highlight-red">%TONAME%</span>, <p>\r\n<p>Éste es un mensaje enviado por <span class="message-highlight-red">%USERNAME%</span> desde Goteo:<p>\r\n<blockquote>%MESSAGE%</blockquote>\r\n<p>Para enviar un mensaje a <span class="message-highlight-red">%USERNAME%</span> pulsa <span class="message-highlight-blue"><a href="%RESPONSEURL%">AQUÍ</a></span>.</p>\r\n<p>Te recordamos que puedes ver la gente con la que estás en contacto desde Goteo en tu perfil:</p>\r\n<p><span class="message-highlight-blue"><a href="%PROFILEURL%">%PROFILEURL%</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(5, 'Confirmación de registro', 'Plantilla del mensaje de confirmación de registro', 'Confirmación de usuario en Goteo', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>!</p>\r\n<p>Gracias por registrarte en Goteo, tu cuenta ha sido creada con éxito :)</p>\r\n<p>Para confirmar tu dirección de correo electrónico y completar el registro, haz clic en el siguiente enlace (o cópialo en la barra de dirección del navegador):</p>\r\n<p><span class="message-highlight-blue"><a href="%ACTIVATEURL%">%ACTIVATEURL%</a></span></p>\r\n<p>Recuerda que tu login es <strong>%USERID%</strong>. Una vez se active tu cuenta podrás acceder a http://goteo.org/ y comenzar a utilizar la plataforma para apoyar o proponer proyectos.</p>\r\n<p>(En caso de que no hayas has solicitado este registro, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(6, 'Recuperar contraseña', 'Plantilla para el mensaje al solicitar la recuperación de cotnraseña', 'Petición de recuperación de contraseña en Goteo', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Hemos recibido una petición para recuperar la contraseña de tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/.</a></p>\r\n<p>Para acceder a tu cuenta y cambiar la contraseña, debes introducir tu login como la contraseña actual, a través del siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="%RECOVERURL%">%RECOVERURL%</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>Recuerda que tu login es <strong>%USERID%</strong>, úsalo como contraseña actual para poder cambiarla a continuación.</p>\r\n<p>(En caso de que no hayas has solicitado este cambio de contraseña, uhm... ignora este mensaje).</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(7, 'Cambio de email', 'Plantilla del mensaje al cambiar el email', 'Petición de cambio de email en Goteo', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Hemos recibido una petición para cambiar el email de tu cuenta de usuario en Goteo.org</p>\r\n<p>Para confirmar la propiedad de tu nueva dirección de correo electrónico, haz clic en el siguiente enlace (o cópialo en la barra de dirección del navegador):</p>\r\n<p><span class="message-highlight-blue"><a href="%CHANGEURL%">%CHANGEURL%</a></span></p>\r\n<p>Este proceso es necesario para confirmar la propiedad de la dirección de correo electrónico, así que no podrás operar con esta dirección hasta que la hayas confirmado.</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(8, 'Confirmacion de proyecto enviado', 'Mensaje al usuario cuando envia un proyecto a revisión desde el preview del formulario', 'El proyecto %PROJECTNAME% ha pasado a fase de valoración', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Hemos recibido la petición de revisar el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> para valorar su publicación y promoción mediante Goteo.</p>\r\n<p>En breve alguien del equipo se pondrá en contacto contigo al respecto</p>\r\n<p>Puedes encontrar más información sobre el proceso de revisión de proyectos en nuestras FAQ: <span class="message-highlight-blue"><a href="http://beta.goteo.org/faq#q88">http://beta.goteo.org/faq#q88</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(9, 'Darse de baja', 'Plantilla para el mensaje al solicitar la baja', 'Solicitud de baja en Goteo', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Hemos recibido una solicitud para dar de baja tu cuenta de usuario en <a href="http://goteo.org/">http://goteo.org/</a></p>\r\n<p>Para completar el proceso de baja accede el siguiente enlace:</p>\r\n<p><span class="message-highlight-blue"><a href="%URL%">%URL%</a></span></p>\r\n<p>Si no puedes hacer click, cópialo y pégalo en el navegador.</p>\r\n<p>(En caso de que no hayas has solicitado esta baja, uhm... ignora este mensaje)</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(10, 'Agradecimiento aporte', 'Mensaje al usuario después de realizar un proyecto', 'Gracias por cofinanciar el proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Gracias por cofinanciar el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> con %AMOUNT% &euro;.</p>\r\n<p>Cuando termine la ronda se ejecutará el cargo en la cuenta especificada</p>\r\n<p>Has elegido las siguientes recompensas: %REWARDS%</p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(11, 'Comunicación desde admin', 'Plantilla para un mensaje de comunicación enviado desde admin a los destinatarios seleccionados', 'El asunto lo pone el admin', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<blockquote>%CONTENT%</blockquote>\r\n<p>--<br />\r\nGoteo.org</p>');
INSERT INTO `template` VALUES(12, 'Mensaje al autor de un thread', 'Plantilla del mensaje al autor de un hilo de mensajes cuando hay una respuesta', 'Respuesta a tu mensaje en el proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%OWNERNAME%</span>!</p>\r\n<p><span class="message-highlight-red">%USERNAME%</span> ha respondido a tu mensaje en el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span></p>\r\n<blockquote>%MESSAGE%</blockquote>\r\n<p>Para enviar un mensaje privado a <span class="message-highlight-red">%USERNAME%</span> pulsa <span class="message-highlight-blue"><a href="%RESPONSEURL%">AQUÍ</a></span>.</p>\r\n<p>Puedes ver todos los mensajes en la página del proyecto <span class="message-highlight-blue"><a href="%PROJECTURL%">%PROJECTURL%</a></span>.</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(13, 'Aviso de 8 días para fallar', 'Mensaje al autor de un proyecto cuando este está proximo (8 dias) a fallar (no minimo)', 'Al proyecto %PROJECTNAME% le faltan 8 días para caducar', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>A tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> le faltan 8 días para caducar y aun no ha conseguido el mínimo.</p>\r\n<p>Deberías hacer más campaña para conseguir esos imprescindibles aportes.</p>\r\n<p>Te recordamos que puedes encontrar el widget para publicitar tu proyecto en tu <span class="message-highlight-blue"><a href="%WIDGETURL%">Dashboard</a></span></p>\r\n<p>Mucha suerte !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(14, 'Aviso de 1 día para fallar', 'Mensaje al autor de un proyecto cuando este está condenado a fallar', 'Al proyecto %PROJECTNAME% le falta 1 día para caducar', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>A tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> le falta 1 día para caducar y aun no ha conseguido el mínimo. Ha llegado al 70% y aun no está todo perdido.</p>\r\n<p>Deberías conseguir esos imprescindibles aportes urgentemente.</p>\r\n<p>Te recordamos que puedes encontrar el widget para publicitar tu proyecto en tu <span class="message-highlight-blue"><a href="%WIDGETURL%">Dashboard</a></span></p>\r\n<p>Mucha suerte !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(15, 'Agradecimiento cofinanciadores si supera primera', 'Mensaje a los cofinanciadores de un proyecto cuando este supera la primera ronda', 'El proyecto %PROJECTNAME% ha pasado a la segunda ronda', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Gracias a tu aporte, el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> ha pasado a segunda ronda!</p>\r\n<p>Pero esto no se ha acabado, aun puedes hacer algo más por el procomún.</p>\r\n<p>Te recordamos que puedes participar en la comunidad del proyecto en <span class="message-highlight-blue"><a href="%PROJECTURL%">%PROJECTURL%</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(16, 'Agradecimiento cofinanciadores final segunda', 'Mensaje a los cofinanciadores de un proyecto cuando este llega al final de la segunda ronda', 'El proyecto %PROJECTNAME% ha finalizado la segunda ronda', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Gracias a tu aporte, el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> ha finalizado la segunda ronda con buena financiación!</p>\r\n<p>Te recordamos que puedes participar en la comunidad del proyecto en <span class="message-highlight-blue"><a href="%PROJECTURL%">%PROJECTURL%</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(17, 'Aviso cofinanciadores proyecto fallido', 'Mensaje a los cofinanciadores de un proyecto cuando este caduca sin conseguir el mínimo', 'El proyecto %PROJECTNAME% ha caducado', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Pese a tu inestimable aporte, el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> no ha conseguido el mínimo y ha caducado.</p>\r\n<p>Puedes encontrar otros proyectos de similares características en <span class="message-highlight-blue"><a href="%DISCOVERURL%">%DISCOVERURL%</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(18, 'Aviso cofinanciadores novedade en proyecto', 'Mensaje a los cofinanciadores de un proyecto cuando se publica una novedad en este', 'El proyecto %PROJECTNAME% ha publicado novedades', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>El proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> que cofinancias ha publicado una novedad.</p>\r\n<p>Puedes verla en <span class="message-highlight-blue"><a href="%UPDATEURL%">%UPDATEURL%</a></span></p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(19, 'Recuerdo al autor a los 20 días', 'Mensaje al autor de un proyecto cuando este lleva 20 días de campaña', 'El proyecto %PROJECTNAME% lleva 20 días en campaña', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> lleva 20 días en campaña. Es un buen momento para hacer balance de lo conseguido y hacer un poco de publicidad.</p>\r\n<p>Te recordamos que puedes encontrar el widget para publicitar tu proyecto en tu <span class="message-highlight-blue"><a href="%WIDGETURL%">Dashboard</a></span>.</p>\r\n<p>Mucha suerte !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(20, 'Notificación al autor proyecto supera primera ronda', 'Mensaje al autor de un proyecto cuando este pasa a segunda ronda', 'El proyecto %PROJECTNAME% ha pasado a la segunda ronda', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>enhorabuena! Tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> ha pasado a segunda ronda pero esto no se acaba aquí.</p>\r\n<p>Te recordamos que puedes encontrar el widget para publicitar tu proyecto en tu <span class="message-highlight-blue"><a href="%WIDGETURL%">Dashboard</a></span>.</p>\r\n<p>Mucha suerte !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(21, 'Notificación al autor proyecto fallido', 'Mensaje al autor de un proyecto cuando este caduca sin conseguir el mínomo', 'El proyecto %PROJECTNAME% ha caducado', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>lo sentimos... tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> ha caducado sin conseguir el mínimo.</p>\r\n<p>Puedes consultar el resumen del proyecto en tu <span class="message-highlight-blue"><a href="%SUMMARYURL%">Dashboard</a></span>.</p>\r\n<p>Más suerte en la próxima !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(22, 'Notificación al autor proyecto fin segunda ronda', 'Mensaje al autor de un proyecto cuando este finaliza la segunda ronda', 'El proyecto %PROJECTNAME% ha finalizado la segunda ronda', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> ha finalizado la segunda ronda.</p>\r\n<p>Te recordamos que puedes gestionar las recompensas a los cofinanciadores de tu proyecto desde tu <span class="message-highlight-blue"><a href="%REWARDSURL%">Dashboard</a></span>.</p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(23, 'Recuerdo al autor proyecto sin novedades', 'Mensaje mensual al autor de un proyecto si no ha publicado novedades durante 3 meses', 'El proyecto %PROJECTNAME% sin novedades', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>No has publicado novedades en tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="%UPDATESURL%">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(24, 'Recuerdo al autor proyecto sin actividad', 'Mensaje bisemanal al autor de un proyecto si este no ha tenido actividad durante 3 meses', 'El proyecto %PROJECTNAME% sin actividad', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>No has dicho nada en tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> en los últimos 3 meses. Deberías mantenerte en contacto con tu comunidad.</p>\r\n<p>Te recordamos que puedes publicar novedades en tu proyecto desde tu <span class="message-highlight-blue"><a href="%UPDATESURL%">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(25, 'Recuerdo al autor proyecto financiado', 'Mensaje al autor de un proyecto después de 2 meses de haber sido financiado', 'El proyecto %PROJECTNAME% hace 2 meses que se financió', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Ya hace dos meses que tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> fue financiado. Deberías revisar los retornos y recompensas pendientes..</p>\r\n<p>Te recordamos que puedes estionar las recompensas desde tu <span class="message-highlight-blue"><a href="%REWARDSURL%">Dashboard</a></span>.</p>\r\n<p>Estamos en contacto !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(26, 'Informa al autor de proyecto listo para traducción', 'Plantilla del mensaje al autor al habilitar la traducción de su proyecto', 'Ya puedes traducir tu proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%OWNERNAME%</span>!</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> ha sido habilitado para ser traducido</p>\r\n<p>Puedes encontrarlo en tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="%SITEURL%/dashboard/translates">%SITEURL%/dashboard/translates</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(27, 'Aviso a los talleristas', 'Plantilla del mensaje a los usuarios que aun tienen su email como contraseña', 'Recordatorio de tu usuario en Goteo', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>!</p>\r\n<p>Por haber asistido a alguno de nuestros talleres ya estás registrado en goteo.</p>\r\n<p>Tu login es <strong>%USERID%</strong> y tu contraseña es <strong>%USEREMAIL%</strong>. Te  recomendamos que cambies tu contraseña desde tu panel de control:</p>\r\n<p><span class="message-highlight-blue"><a href="%SITEURL%/dashboard/profile/access">%SITEURL%/dashboard/profile/access</a></span></p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(28, 'Agradecimiento donativo', 'Mensaje al usuario aporta renunciando a la recompensa', 'Gracias por tu donativo al proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%USERNAME%</span>,</p>\r\n<p>Gracias por cofinanciar el proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> con %AMOUNT% &euro;.</p>\r\n<p>Como has renunciado a la recompensa, es un donativo fiscalmente desgrvable.</p>\r\n<p>Muchas gracias !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(29, 'Notificación de nuevo aporte al autor', 'Mensaje al autor de un proyecto cuando un nuevo aporte', 'Nuevo aporte al proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%OWNERNAME%</span>,</p>\r\n<p>Tu proyecto <span class="message-highlight-blue">%PROJECTNAME%</span> ha recibido un nuevo aporte de %AMOUNT% de <span class="message-highlight-red">%USERNAME%</span>. Puedes enviarle un mensaje desde esta pagina <a href="%MESSAGEURL%">%MESSAGEURL%</a></p>\r\n<p>Te recordamos que puedes comunicarte con tus cofinanciadres desde tu <span class="message-highlight-blue"><a href="%SITEURL%/dashboard">Dashboard</a></span>.</p>\r\n<p>Mucha suerte !</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(30, 'Notificacion nuevo thread', 'Mensaje al autor de un proyecto cuando se abre un nuevo hilo de mensajes', 'Nuevo hilo de mensajes en el proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%OWNERNAME%</span>!</p>\r\n<p><span class="message-highlight-red">%USERNAME%</span> ha iniciado un hilo en los mensajes del proyecto <span class="message-highlight-blue">%PROJECTNAME%</span></p>\r\n<blockquote>%MESSAGE%</blockquote>\r\n<p>Para enviar un mensaje privado a <span class="message-highlight-red">%USERNAME%</span> mediante en esta página <span class="message-highlight-blue"><a href="%RESPONSEURL%">%RESPONSEURL%</a></span>.</p>\r\n<p>Puedes ver el mensaje en la página del proyecto <span class="message-highlight-blue"><a href="%PROJECTURL%">%PROJECTURL%</a></span>.</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');
INSERT INTO `template` VALUES(31, 'Notificación comentario en novedades', 'Mensaje al autor de un proyecto cuando hay un comentario en las novedades', 'Nuevo comentario en las Novedades del proyecto %PROJECTNAME%', '<p>Hola <span class="message-highlight-red">%OWNERNAME%</span>!</p>\r\n<p><span class="message-highlight-red">%USERNAME%</span> ha hecho un comentario en las Novedades del proyecto <span class="message-highlight-blue">%PROJECTNAME%</span></p>\r\n<blockquote>%MESSAGE%</blockquote>\r\n<p>Para enviar un mensaje privado a <span class="message-highlight-red">%USERNAME%</span> con esta página <span class="message-highlight-blue"><a href="%RESPONSEURL%">%RESPONSEURL%</a></span>.</p>\r\n<p>Puedes ver todos los comentarios en la entrada de novedades <span class="message-highlight-blue"><a href="%PROJECTURL%">%PROJECTURL%</a></span>.</p>\r\n<p>--<br />\r\nThe Goteo Mailer</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template_lang`
--

DROP TABLE IF EXISTS `template_lang`;
CREATE TABLE `template_lang` (
  `id` bigint(20) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `title` tinytext,
  `text` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `template_lang`
--

INSERT INTO `template_lang` VALUES(1, 'ca', 'Contacto desde Goteo.org: %SUBJECT%', 'Mensaje de contacto desde Goteo.org enviado por %USEREMAIL%\r\n\r\n%MESSAGE%\r\n\r\n--\r\nThe Happy Goteo Mailer');
INSERT INTO `template_lang` VALUES(2, 'en', 'ENG Mensaje del proyecto que cofinancias: %PROJECTNAME%', 'ENG Hola <strong>%NAME%</strong>, este es un mensaje enviado desde Goteo por el productor del proyecto %PROJECTNAME%\r\n\r\n%MESSAGE%\r\n\r\nPuedes ver el proyecto en %PROJECTURL%\r\n\r\n--\r\nThe Happy Goteo Mailer');
INSERT INTO `template_lang` VALUES(2, 'eu', 'EUSK Mensaje del proyecto que cofinancias: %PROJECTNAME%', 'EUSK Hola <strong>%NAME%</strong>, este es un mensaje enviado desde Goteo por el productor del proyecto %PROJECTNAME%\r\n\r\n%MESSAGE%\r\n\r\nPuedes ver el proyecto en %PROJECTURL%\r\n\r\n--\r\nThe Happy Goteo Mailer');
INSERT INTO `template_lang` VALUES(7, 'ca', 'Petición de cambio de email en Goteo', 'Hola <strong>%USERNAME%</strong>,\r\n\r\nHemos recibido una petición para cambiar el email de tu cuenta de usuario en Goteo.org\r\nPara confirmar la propiedad de su nueva dirección de correo electrónico, clica en el siguiente enlace (o cópialo en la barra de dirección del navegador):\r\n\r\n%CHANGEURL%\r\n\r\nEste proceso es necesario para confirmar la propiedad de la dirección de correo electrónico - no podrás operar con esta dirección hasta que la hayas confirmado.\r\n\r\n--\r\nThe Happy Goteo Mailer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `text`
--

DROP TABLE IF EXISTS `text`;
CREATE TABLE `text` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'es',
  `text` text NOT NULL,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Textos multi-idioma';

--
-- Volcar la base de datos para la tabla `text`
--

INSERT INTO `text` VALUES('blog-coments-header', 'ca', 'Comentaris');
INSERT INTO `text` VALUES('blog-comments', 'ca', 'Comentaris');
INSERT INTO `text` VALUES('blog-comments_no_allowed', 'ca', 'No es permeten comentaris en aquesta entrada');
INSERT INTO `text` VALUES('blog-comments_no_comments', 'ca', 'No hi ha comentaris en aquesta entrada');
INSERT INTO `text` VALUES('blog-main-header', 'ca', 'Blog de Goteo');
INSERT INTO `text` VALUES('blog-no_comments', 'ca', 'Sense comentaris');
INSERT INTO `text` VALUES('blog-no_posts', 'ca', 'No s''ha publicat cap entrada d''actualització');
INSERT INTO `text` VALUES('blog-send_comment-button', 'ca', 'Enviar');
INSERT INTO `text` VALUES('blog-send_comment-header', 'ca', 'Escriu el teu comentari');
INSERT INTO `text` VALUES('blog-side-last_comments', 'ca', 'Darrers comentaris');
INSERT INTO `text` VALUES('blog-side-last_posts', 'ca', 'Darreres entrades');
INSERT INTO `text` VALUES('blog-side-tags', 'ca', 'Categories de projecte');
INSERT INTO `text` VALUES('contact-email-field', 'ca', 'Email');
INSERT INTO `text` VALUES('contact-message-field', 'ca', 'Missatge');
INSERT INTO `text` VALUES('contact-send_message-button', 'ca', 'Enviar');
INSERT INTO `text` VALUES('contact-send_message-header', 'ca', 'Envia''ns un missatge');
INSERT INTO `text` VALUES('contact-subject-field', 'ca', 'Tema');
INSERT INTO `text` VALUES('costs-field-cost', 'ca', 'Cost');
INSERT INTO `text` VALUES('costs-field-dates', 'ca', 'Dates');
INSERT INTO `text` VALUES('costs-field-date_from', 'ca', 'Des de');
INSERT INTO `text` VALUES('costs-field-date_until', 'ca', 'Fins');
INSERT INTO `text` VALUES('costs-field-description', 'ca', 'Descripció');
INSERT INTO `text` VALUES('costs-field-required_cost', 'ca', 'Aquest cost és');
INSERT INTO `text` VALUES('costs-field-required_cost-no', 'ca', 'Addicional');
INSERT INTO `text` VALUES('costs-field-resoure', 'ca', 'Altres recursos');
INSERT INTO `text` VALUES('costs-field-schedule', 'ca', 'Agenda de treball');
INSERT INTO `text` VALUES('costs-field-type', 'ca', 'Tipus');
INSERT INTO `text` VALUES('costs-fields-main-title', 'ca', 'Desglossament de costos');
INSERT INTO `text` VALUES('costs-fields-metter-title', 'ca', 'Visualització de costos');
INSERT INTO `text` VALUES('costs-fields-resources-title', 'ca', 'Recurs');
INSERT INTO `text` VALUES('costs-main-header', 'ca', 'Aspectes econòmics');
INSERT INTO `text` VALUES('criteria-owner-section-header', 'ca', 'Respecte al creador/equip');
INSERT INTO `text` VALUES('criteria-project-section-header', 'ca', 'Respecte al projecte');
INSERT INTO `text` VALUES('criteria-reward-section-header', 'ca', 'Respecte al retorn');
INSERT INTO `text` VALUES('dashboard-investors-mail-text-required', 'ca', 'Escriu el missatge');
INSERT INTO `text` VALUES('dashboard-menu-admin_board', 'ca', 'Administració');
INSERT INTO `text` VALUES('dashboard-menu-profile-access', 'ca', 'Dades d''accés');
INSERT INTO `text` VALUES('dashboard-menu-profile-personal', 'ca', 'Dades personals');
INSERT INTO `text` VALUES('dashboard-menu-profile-profile', 'ca', 'Editar perfil');
INSERT INTO `text` VALUES('dashboard-menu-projects-contract', 'ca', 'Contracte');
INSERT INTO `text` VALUES('dashboard-menu-projects-supports', 'ca', 'Col·laboracions ');
INSERT INTO `text` VALUES('dashboard-menu-projects-updates', 'ca', 'Actualitzacions');
INSERT INTO `text` VALUES('dashboard-project-blog-fail', 'ca', 'Contacta amb nosaltres');
INSERT INTO `text` VALUES('dashboard-project-blog-wrongstatus', 'ca', 'Ho sentim, encara no es poden publicar actualitzacions en aquest projecte');
INSERT INTO `text` VALUES('dashboard-project-updates-deleted', 'ca', 'Entada eliminada');
INSERT INTO `text` VALUES('dashboard-project-updates-delete_fail', 'ca', 'Error en eliminar l''entrada');
INSERT INTO `text` VALUES('discover-banner-header', 'ca', 'Per categoria, lloc o retorn,<br /><span class="red">troba el projecte</span> amb que més t''identifiques');
INSERT INTO `text` VALUES('discover-group-all-header', 'ca', 'En campanya');
INSERT INTO `text` VALUES('discover-group-outdate-header', 'ca', 'A punt de caducar');
INSERT INTO `text` VALUES('discover-group-popular-header', 'ca', 'Més populars');
INSERT INTO `text` VALUES('discover-group-recent-header', 'ca', 'Recents');
INSERT INTO `text` VALUES('discover-group-success-header', 'ca', 'Reeixits ');
INSERT INTO `text` VALUES('discover-results-empty', 'ca', 'No hem trobat cap projecte que compleixi els criteris de cerca');
INSERT INTO `text` VALUES('discover-results-header', 'ca', 'Resultat de la cerca');
INSERT INTO `text` VALUES('discover-searcher-button', 'ca', 'Cercar');
INSERT INTO `text` VALUES('discover-searcher-bycategory-all', 'ca', 'TOTES');
INSERT INTO `text` VALUES('discover-searcher-bycategory-header', 'ca', 'Per categoria:');
INSERT INTO `text` VALUES('discover-searcher-bycontent-header', 'ca', 'Per contingut:');
INSERT INTO `text` VALUES('discover-searcher-bylocation-all', 'ca', 'TOTS');
INSERT INTO `text` VALUES('discover-searcher-bylocation-header', 'ca', 'Per lloc:');
INSERT INTO `text` VALUES('discover-searcher-byreward-all', 'ca', 'TOTS');
INSERT INTO `text` VALUES('discover-searcher-byreward-header', 'ca', 'Per retorn:');
INSERT INTO `text` VALUES('discover-searcher-header', 'ca', 'Cerca un projecte');
INSERT INTO `text` VALUES('error-contact-email-empty', 'ca', 'No has escrit el teu correu electrònic');
INSERT INTO `text` VALUES('error-contact-email-invalid', 'ca', 'El correu electrònic que has escrit no és vàlid');
INSERT INTO `text` VALUES('error-contact-message-empty', 'ca', 'No has escrit cap missatge');
INSERT INTO `text` VALUES('error-contact-subject-empty', 'ca', 'No has escrit el tema del missatge');
INSERT INTO `text` VALUES('error-image-name', 'ca', 'Error en el nom de l''arxiu');
INSERT INTO `text` VALUES('error-image-size', 'ca', 'Error en la mida de l''arxiu');
INSERT INTO `text` VALUES('error-image-tmp', 'ca', 'Error en carregar l''arxiu');
INSERT INTO `text` VALUES('error-register-userid', 'ca', 'És obligatori posar un nom d''accés');
INSERT INTO `text` VALUES('error-register-username', 'ca', 'El nom públic és obligatori.');
INSERT INTO `text` VALUES('error-user-email-invalid', 'ca', 'L''email que has posat no és vàlid');
INSERT INTO `text` VALUES('error-user-email-token-invalid', 'ca', 'El codi no és correcte');
INSERT INTO `text` VALUES('faq-investors-section-header', 'ca', 'Per a cofinançadors/es');
INSERT INTO `text` VALUES('faq-main-section-header', 'ca', 'Una aproximació a Goteo');
INSERT INTO `text` VALUES('faq-nodes-section-header', 'ca', 'Sobre nodes locals');
INSERT INTO `text` VALUES('faq-project-section-header', 'ca', 'Sobre els projectes');
INSERT INTO `text` VALUES('faq-sponsor-section-header', 'ca', 'Per a impulsors/es');
INSERT INTO `text` VALUES('footer-header-categories', 'ca', 'Categories');
INSERT INTO `text` VALUES('footer-header-projects', 'ca', 'Projectes');
INSERT INTO `text` VALUES('footer-header-resources', 'ca', 'Recursos');
INSERT INTO `text` VALUES('footer-header-services', 'ca', 'Serveis');
INSERT INTO `text` VALUES('footer-header-social', 'ca', 'Segueix-nos');
INSERT INTO `text` VALUES('footer-header-sponsors', 'ca', 'Suports institucionals');
INSERT INTO `text` VALUES('footer-service-campaign', 'ca', 'Campanyes');
INSERT INTO `text` VALUES('footer-service-consulting', 'ca', 'Consultoria');
INSERT INTO `text` VALUES('footer-service-resources', 'ca', 'Capital reg');
INSERT INTO `text` VALUES('form-accept-button', 'ca', 'Acceptar');
INSERT INTO `text` VALUES('form-add-button', 'ca', 'Afegir');
INSERT INTO `text` VALUES('form-apply-button', 'ca', 'Aplicar');
INSERT INTO `text` VALUES('form-edit-button', 'ca', 'Editar');
INSERT INTO `text` VALUES('form-footer-errors_title', 'ca', 'Errors');
INSERT INTO `text` VALUES('form-navigation_bar-header', 'ca', 'Anar a');
INSERT INTO `text` VALUES('form-next-button', 'ca', 'Següent');
INSERT INTO `text` VALUES('form-project-info_status-title', 'ca', 'Estat global de la informació');
INSERT INTO `text` VALUES('form-project-status-title', 'ca', 'Estat del projecte');
INSERT INTO `text` VALUES('form-project_status-campaing', 'ca', 'En campanya');
INSERT INTO `text` VALUES('form-project_status-cancel', 'ca', 'Rebutjat');
INSERT INTO `text` VALUES('form-project_status-cancelled', 'ca', 'Cancel·lat');
INSERT INTO `text` VALUES('form-project_status-edit', 'ca', 'Editant-se');
INSERT INTO `text` VALUES('form-project_status-expired', 'ca', 'Caducat');
INSERT INTO `text` VALUES('form-project_status-fulfilled', 'ca', 'Retorn complert');
INSERT INTO `text` VALUES('form-project_status-review', 'ca', 'Pendent de valoració');
INSERT INTO `text` VALUES('form-project_status-success', 'ca', 'Finançat');
INSERT INTO `text` VALUES('form-project_waitfor-campaing', 'ca', 'Difon el teu projecte, ajuda a que aconsegueixi el màxim d''aportacions!');
INSERT INTO `text` VALUES('form-remove-button', 'ca', 'Llevar');
INSERT INTO `text` VALUES('form-self_review-button', 'ca', 'Corregir');
INSERT INTO `text` VALUES('form-send_review-button', 'ca', 'Enviar');
INSERT INTO `text` VALUES('form-upload-button', 'ca', 'Pujar');
INSERT INTO `text` VALUES('guide-dashboard-user-access', 'ca', 'Des d''aquí pots modificar les dades amb que accedeixes al teu compte de Goteo.');
INSERT INTO `text` VALUES('guide-project-contract-information', 'ca', '<b>A partir d''aquest pas només has d''emplenar les dades si vols que el teu projecte sigui cofinançat i recolzat mitjançant Goteo.</b>\r\n<br><br>\r\nLa informació d''aquest apartat és necessària per contactar-te en cas que obtinguis el finançament requerit, i que així es pugui efectuar l''ingrés.');
INSERT INTO `text` VALUES('guide-project-costs', 'ca', '<b>En aquesta secció has d''elaborar un petit pressupost basat en els costos que calculis tindrà la realització del projecte.</b><br>\r\n<br>\r\nHas d''especificar segons tasques, infraestructura o materials. Intenta ser realista en els costos i explicar breument per què necessites cobrir cadascun d''ells. Veuràs que diferenciem entre costos imprescindibles i costos addicionals, on els primers han de suposar més de la meitat del total a cofinançar.');
INSERT INTO `text` VALUES('home-posts-header', 'ca', 'Com funciona Goteo');
INSERT INTO `text` VALUES('home-promotes-header', 'ca', 'Destacats');
INSERT INTO `text` VALUES('invest-address-address-field', 'ca', 'Adreça:');
INSERT INTO `text` VALUES('invest-address-header', 'ca', 'On vols rebre la recompensa');
INSERT INTO `text` VALUES('invest-address-location-field', 'ca', 'Ciutat:');
INSERT INTO `text` VALUES('invest-address-zipcode-field', 'ca', 'Codi postal:');
INSERT INTO `text` VALUES('invest-amount', 'ca', 'Quantitat');
INSERT INTO `text` VALUES('invest-donation-header', 'ca', 'Introdueix les dades fiscals per al donatiu');
INSERT INTO `text` VALUES('invest-individual-header', 'ca', 'Pots renunciar a rebre recompenses per la teva aportació, o seleccionar les que igualin o estiguin per sota de l''import que hagis introduït.');
INSERT INTO `text` VALUES('invest-payment_method-header', 'ca', 'Escull el mètode de pagament');
INSERT INTO `text` VALUES('invest-social-header', 'ca', 'Amb els retorns col·lectius hi guanyem tots');
INSERT INTO `text` VALUES('login-access-button', 'ca', 'Entrar');
INSERT INTO `text` VALUES('login-access-header', 'ca', 'Usuari registrat');
INSERT INTO `text` VALUES('login-access-password-field', 'ca', 'Contrasenya');
INSERT INTO `text` VALUES('login-access-username-field', 'ca', 'Nom d''accés ');
INSERT INTO `text` VALUES('login-banner-header', 'ca', 'Accedeix a la comunitat Goteo<br /><span class="greenblue">100% obert</span>');
INSERT INTO `text` VALUES('login-fail', 'ca', 'Error d''accés');
INSERT INTO `text` VALUES('login-oneclick-header', 'ca', 'Accedeix amb només un clic');
INSERT INTO `text` VALUES('login-recover-button', 'ca', 'Recuperar');
INSERT INTO `text` VALUES('login-recover-email-field', 'ca', 'Email del compte');
INSERT INTO `text` VALUES('login-recover-header', 'ca', 'Recuperar contrasenya');
INSERT INTO `text` VALUES('login-recover-link', 'ca', 'Recuperar contrasenya ');
INSERT INTO `text` VALUES('login-recover-username-field', 'ca', 'Nom d''accés ');
INSERT INTO `text` VALUES('login-register-button', 'ca', 'Registrar');
INSERT INTO `text` VALUES('login-register-confirm-field', 'ca', 'Confirmar email');
INSERT INTO `text` VALUES('login-register-confirm_password-field', 'ca', 'Confirmar contrasenya  ');
INSERT INTO `text` VALUES('login-register-email-field', 'ca', 'Email');
INSERT INTO `text` VALUES('login-register-header', 'ca', 'Nou usuari');
INSERT INTO `text` VALUES('login-register-password-field', 'ca', 'Contrasenya');
INSERT INTO `text` VALUES('login-register-password-minlength', 'ca', 'Mínim 6 caràcters ');
INSERT INTO `text` VALUES('login-register-userid-field', 'ca', 'Nom d''accés ');
INSERT INTO `text` VALUES('login-register-username-field', 'ca', 'Nom públic  ');
INSERT INTO `text` VALUES('main-banner-header', 'ca', '<h2 class="message">Xarxa social per <span class="greenblue">cofinançar i col·laborar amb</span><br /> projectes creatius que fomentin els béns comuns<br /> Tens un projecte amb <span class="greenblue">ADN obert</span>?</h2><a href="/contact" class="button banner-button">Contacta''ns</a>');
INSERT INTO `text` VALUES('mandatory-cost-field-amount', 'ca', 'És obligatori assignar un import als costos');
INSERT INTO `text` VALUES('mandatory-cost-field-description', 'ca', 'És obligatori posar alguna descripció als costos');
INSERT INTO `text` VALUES('mandatory-cost-field-name', 'ca', 'És obligatori posar-li un nom al cost');
INSERT INTO `text` VALUES('mandatory-cost-field-task_dates', 'ca', 'És obligatori especificar les dates aproximades de la tasca');
INSERT INTO `text` VALUES('mandatory-cost-field-type', 'ca', 'És obligatori seleccionar el tipus de cost');
INSERT INTO `text` VALUES('mandatory-individual_reward-field-amount', 'ca', 'És obligatori indicar l''import que permet obtenir la recompensa');
INSERT INTO `text` VALUES('mandatory-individual_reward-field-description', 'ca', 'És obligatori posar alguna descripció');
INSERT INTO `text` VALUES('mandatory-individual_reward-field-icon', 'ca', 'És obligatori seleccionar el tipus de recompensa');
INSERT INTO `text` VALUES('mandatory-individual_reward-field-name', 'ca', 'És obligatori posar la recompensa');
INSERT INTO `text` VALUES('mandatory-project-costs', 'ca', 'Ha de desglossar-se com a mínim en dos costos.');
INSERT INTO `text` VALUES('mandatory-project-field-about', 'ca', 'És obligatori explicar les característiques bàsiques del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-category', 'ca', 'És obligatori triar almenys una categoria pel projecte.');
INSERT INTO `text` VALUES('mandatory-project-field-contract_birthdate', 'ca', 'És obligatori posar la data de naixement del responsable del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-contract_email', 'ca', 'És obligatori posar l''email del/la responsable del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-contract_name', 'ca', 'És obligatori posar el nom del/la responsable del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-contract_nif', 'ca', 'És obligatori posar el document d''identificació del/la responsable del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-country', 'ca', 'El país del/la responsable del projecte és obligatori');
INSERT INTO `text` VALUES('mandatory-project-field-description', 'ca', 'És obligatori resumir el projecte');
INSERT INTO `text` VALUES('mandatory-project-field-entity_cif', 'ca', 'És obligatori posar el CIF de l''entitat jurídica');
INSERT INTO `text` VALUES('mandatory-project-field-entity_name', 'ca', 'És obligatori posar el nom de l''organització');
INSERT INTO `text` VALUES('mandatory-project-field-entity_office', 'ca', 'És obligatori posar el càrrec que tens dins l''organització que representes');
INSERT INTO `text` VALUES('mandatory-project-field-goal', 'ca', 'És obligatori explicar els objectius en la descripció del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-image', 'ca', 'És obligatori vincular una imatge com a mínim al projecte');
INSERT INTO `text` VALUES('mandatory-project-field-location', 'ca', 'És obligatori posar l''abast potencial del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-motivation', 'ca', 'És obligatori explicar la motivació en la descripció del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-name', 'ca', 'És obligatori posar un nom al projecte');
INSERT INTO `text` VALUES('mandatory-project-field-phone', 'ca', 'El telèfon del/la responsable del projecte és obligatori');
INSERT INTO `text` VALUES('mandatory-project-field-related', 'ca', 'És obligatori explicar en la descripció del projecte l''experiència relacionada i/o l''equip amb que es compta  ');
INSERT INTO `text` VALUES('mandatory-project-field-residence', 'ca', 'És obligatori posar el lloc de residència del/la responsable del projecte');
INSERT INTO `text` VALUES('mandatory-project-field-resource', 'ca', 'És obligatori especificar si comptes amb altres recursos o no');
INSERT INTO `text` VALUES('mandatory-project-field-zipcode', 'ca', 'El codi postal del/la responsable del projecte és obligatori.');
INSERT INTO `text` VALUES('mandatory-project-resource', 'ca', 'És obligatori especificar si comptes amb altres recursos');
INSERT INTO `text` VALUES('mandatory-project-total-costs', 'ca', 'És obligatori especificar algun cost');
INSERT INTO `text` VALUES('mandatory-social_reward-field-description', 'ca', 'És obligatori posar alguna descripció al retorn');
INSERT INTO `text` VALUES('mandatory-social_reward-field-icon', 'ca', 'És obligatori seleccionar el tipus de retorn');
INSERT INTO `text` VALUES('mandatory-social_reward-field-name', 'ca', 'És obligatori especificar el retorn');
INSERT INTO `text` VALUES('mandatory-support-field-description', 'ca', 'És obligatori posar alguna descripció');
INSERT INTO `text` VALUES('mandatory-support-field-name', 'ca', 'És obligatori posar-li un nom a la col·laboració');
INSERT INTO `text` VALUES('open-banner-header', 'ca', '<div class="modpo-open">OPEN</div><div class="modpo-percent">100&#37; OBERT</div><div class="modpo-whyopen">%s</div>');
INSERT INTO `text` VALUES('overview-field-about', 'ca', 'Característiques bàsiques');
INSERT INTO `text` VALUES('overview-field-categories', 'ca', 'Categories');
INSERT INTO `text` VALUES('overview-field-currently', 'ca', 'Estat actual');
INSERT INTO `text` VALUES('overview-field-description', 'ca', 'Breu descripció');
INSERT INTO `text` VALUES('overview-field-options-currently_avanzado', 'ca', 'Avançat');
INSERT INTO `text` VALUES('overview-field-scope', 'ca', 'Abast del projecte');
INSERT INTO `text` VALUES('overview-main-header', 'ca', 'Descripció del projecte');
INSERT INTO `text` VALUES('personal-field-address', 'ca', 'Adreça');
INSERT INTO `text` VALUES('personal-field-contract_data', 'ca', 'Dades del/la responsable del projecte');
INSERT INTO `text` VALUES('personal-field-contract_email', 'ca', 'Email vinculat al projecte');
INSERT INTO `text` VALUES('personal-field-entity_cif', 'ca', 'CIF de l''entitat');
INSERT INTO `text` VALUES('personal-field-entity_name', 'ca', 'Denominació social (nom) de l''entitat');
INSERT INTO `text` VALUES('personal-field-entity_office', 'ca', 'Càrrec a l''organització');
INSERT INTO `text` VALUES('personal-field-main_address', 'ca', 'Domicili fiscal');
INSERT INTO `text` VALUES('personal-field-post_address', 'ca', 'Domicili postal');
INSERT INTO `text` VALUES('personal-field-post_address-different', 'ca', 'Diferent');
INSERT INTO `text` VALUES('personal-field-zipcode', 'ca', 'Codi postal');
INSERT INTO `text` VALUES('personal-main-header', 'ca', 'Dades personals');
INSERT INTO `text` VALUES('preview-main-header', 'ca', 'Previsualització de dades:');
INSERT INTO `text` VALUES('profile-about-header', 'ca', 'Sobre mi');
INSERT INTO `text` VALUES('profile-field-about', 'ca', 'Explica''ns alguna cosa sobre tu');
INSERT INTO `text` VALUES('profile-interests-header', 'ca', 'M''interessen projectes amb finalitat de tipus...');
INSERT INTO `text` VALUES('profile-invest_on-header', 'ca', 'Projectes que recolzo');
INSERT INTO `text` VALUES('profile-invest_on-title', 'ca', 'Cofinança');
INSERT INTO `text` VALUES('profile-keywords-header', 'ca', 'Les meves paraules clau');
INSERT INTO `text` VALUES('profile-location-header', 'ca', 'La meva ubicació');
INSERT INTO `text` VALUES('profile-main-header', 'ca', 'Dades de perfil');
INSERT INTO `text` VALUES('profile-my_investors-header', 'ca', 'Els meus cofinançadors');
INSERT INTO `text` VALUES('profile-my_projects-header', 'ca', 'Els meus projectes');
INSERT INTO `text` VALUES('profile-my_worth-header', 'ca', 'El meu cabal a Goteo');
INSERT INTO `text` VALUES('profile-name-header', 'ca', 'Perfil de ');
INSERT INTO `text` VALUES('profile-sharing_interests-header', 'ca', 'Compartint interessos');
INSERT INTO `text` VALUES('profile-social-header', 'ca', 'Social');
INSERT INTO `text` VALUES('profile-webs-header', 'ca', 'Les meves webs');
INSERT INTO `text` VALUES('profile-widget-button', 'ca', 'Veure perfil');
INSERT INTO `text` VALUES('profile-widget-user-header', 'ca', 'Usuari');
INSERT INTO `text` VALUES('profile-worth-title', 'ca', 'Aporta aquí:');
INSERT INTO `text` VALUES('project-collaborations-supertitle', 'ca', 'Necessitats no econòmiques');
INSERT INTO `text` VALUES('project-collaborations-title', 'ca', 'Cercant');
INSERT INTO `text` VALUES('project-form-header', 'ca', 'Formulari');
INSERT INTO `text` VALUES('project-invest-fail', 'ca', 'Quelcom ha fallat, si us plau prova-ho de nou ');
INSERT INTO `text` VALUES('project-invest-total', 'ca', 'Total d''aportacions');
INSERT INTO `text` VALUES('project-menu-home', 'ca', 'Projecte');
INSERT INTO `text` VALUES('project-menu-messages', 'ca', 'Missatges');
INSERT INTO `text` VALUES('project-menu-needs', 'ca', 'Necessitats');
INSERT INTO `text` VALUES('project-menu-supporters', 'ca', 'Cofinançadors ');
INSERT INTO `text` VALUES('project-menu-updates', 'ca', 'Novetats');
INSERT INTO `text` VALUES('project-messages-answer_it', 'ca', 'Respondre ');
INSERT INTO `text` VALUES('project-messages-send_direct-header', 'ca', 'Envia un missatge a l''impulsor/a del projecte');
INSERT INTO `text` VALUES('project-messages-send_message-button', 'ca', 'Enviar');
INSERT INTO `text` VALUES('project-messages-send_message-header', 'ca', 'Escriu el teu missatge');
INSERT INTO `text` VALUES('project-messages-send_message-your_answer', 'ca', 'Escriu aquí la teva resposta');
INSERT INTO `text` VALUES('project-rewards-header', 'ca', 'Retorn');
INSERT INTO `text` VALUES('project-rewards-individual_reward-limited', 'ca', 'Recompensa limitada');
INSERT INTO `text` VALUES('project-rewards-individual_reward-title', 'ca', 'Recompenses individuals');
INSERT INTO `text` VALUES('project-rewards-individual_reward-units_left', 'ca', 'Queden <span class="left">%s</span> unitats');
INSERT INTO `text` VALUES('project-rewards-social_reward-title', 'ca', 'Retorn col·lectiu ');
INSERT INTO `text` VALUES('project-rewards-supertitle', 'ca', 'Què ofereix a canvi');
INSERT INTO `text` VALUES('project-share-header', 'ca', 'Comparteix aquest projecte');
INSERT INTO `text` VALUES('project-side-investors-header', 'ca', 'Ja han aportat');
INSERT INTO `text` VALUES('project-spread-header', 'ca', 'Difon aquest projecte');
INSERT INTO `text` VALUES('project-spread-widget', 'ca', 'Widget del projecte');
INSERT INTO `text` VALUES('project-support-supertitle', 'ca', 'Necessitats econòmiques');
INSERT INTO `text` VALUES('project-view-categories-title', 'ca', 'Categories');
INSERT INTO `text` VALUES('project-view-metter-days', 'ca', 'Queden');
INSERT INTO `text` VALUES('project-view-metter-got', 'ca', 'Obtingut');
INSERT INTO `text` VALUES('project-view-metter-investment', 'ca', 'Cofinançament ');
INSERT INTO `text` VALUES('project-view-metter-investors', 'ca', 'Cofinançadors ');
INSERT INTO `text` VALUES('project-view-metter-minimum', 'ca', 'Mínim');
INSERT INTO `text` VALUES('project-view-metter-optimum', 'ca', 'Òptim  ');
INSERT INTO `text` VALUES('regular-admin_board', 'ca', 'Panell admin');
INSERT INTO `text` VALUES('regular-ask', 'ca', 'Preguntar');
INSERT INTO `text` VALUES('regular-collaborate', 'ca', 'Col·labora ');
INSERT INTO `text` VALUES('regular-community', 'ca', 'Comunitat');
INSERT INTO `text` VALUES('regular-create', 'ca', 'Crea un projecte');
INSERT INTO `text` VALUES('regular-days', 'ca', 'dies');
INSERT INTO `text` VALUES('regular-delete', 'ca', 'Esborrar');
INSERT INTO `text` VALUES('regular-discover', 'ca', 'Descobreix projectes');
INSERT INTO `text` VALUES('regular-edit', 'ca', 'Editar');
INSERT INTO `text` VALUES('regular-facebook', 'ca', 'Facebook');
INSERT INTO `text` VALUES('regular-facebook-url', 'ca', 'http://www.facebook.com/');
INSERT INTO `text` VALUES('regular-faq', 'ca', 'Preguntes freqüents ');
INSERT INTO `text` VALUES('regular-first', 'ca', 'Primera');
INSERT INTO `text` VALUES('regular-footer-contact', 'ca', 'Contacte');
INSERT INTO `text` VALUES('regular-footer-legal', 'ca', 'Termes legals');
INSERT INTO `text` VALUES('regular-footer-privacy', 'ca', 'Política de privacitat');
INSERT INTO `text` VALUES('regular-footer-terms', 'ca', 'Condicions d´us');
INSERT INTO `text` VALUES('regular-google', 'ca', 'Google+');
INSERT INTO `text` VALUES('regular-google-url', 'ca', 'https://plus.google.com/');
INSERT INTO `text` VALUES('regular-gotit_mark', 'ca', 'Finançat!');
INSERT INTO `text` VALUES('regular-go_up', 'ca', 'Pujar');
INSERT INTO `text` VALUES('regular-header-about', 'ca', 'Sobre Goteo');
INSERT INTO `text` VALUES('regular-header-blog', 'ca', 'Blog');
INSERT INTO `text` VALUES('regular-header-faq', 'ca', 'FAQ');
INSERT INTO `text` VALUES('regular-hello', 'ca', 'Hola');
INSERT INTO `text` VALUES('regular-home', 'ca', 'Inici');
INSERT INTO `text` VALUES('regular-identica', 'ca', 'Identi.ca');
INSERT INTO `text` VALUES('regular-identica-url', 'ca', 'http://identi.ca/');
INSERT INTO `text` VALUES('regular-im', 'ca', 'Sóc');
INSERT INTO `text` VALUES('regular-invest', 'ca', 'Aportar');
INSERT INTO `text` VALUES('regular-investing', 'ca', 'Aportant');
INSERT INTO `text` VALUES('regular-invest_it', 'ca', 'Cofinança el projecte');
INSERT INTO `text` VALUES('regular-keepiton', 'ca', 'Encara pots seguir aportant');
INSERT INTO `text` VALUES('regular-last', 'ca', 'Darrera');
INSERT INTO `text` VALUES('regular-license', 'ca', 'Llicència');
INSERT INTO `text` VALUES('regular-linkedin', 'ca', 'LinkedIn');
INSERT INTO `text` VALUES('regular-linkedin-url', 'ca', 'http://es.linkedin.com/in/');
INSERT INTO `text` VALUES('regular-login', 'ca', 'Accedeix');
INSERT INTO `text` VALUES('regular-logout', 'ca', 'Tancar sessió');
INSERT INTO `text` VALUES('regular-looks_for', 'ca', 'cerca:');
INSERT INTO `text` VALUES('regular-main-header', 'ca', 'Goteo.org');
INSERT INTO `text` VALUES('regular-mandatory', 'ca', 'Camp obligatori!');
INSERT INTO `text` VALUES('regular-menu', 'ca', 'Menú');
INSERT INTO `text` VALUES('regular-message_success', 'ca', 'Missatge enviat correctament');
INSERT INTO `text` VALUES('regular-months', 'ca', 'mesos ');
INSERT INTO `text` VALUES('regular-more_info', 'ca', '+ info');
INSERT INTO `text` VALUES('regular-news', 'ca', 'Notícies: ');
INSERT INTO `text` VALUES('regular-new_project', 'ca', 'Projecte nou');
INSERT INTO `text` VALUES('regular-onrun_mark', 'ca', 'En marxa!');
INSERT INTO `text` VALUES('regular-projects', 'ca', 'projectes');
INSERT INTO `text` VALUES('regular-read_more', 'ca', 'Llegir més');
INSERT INTO `text` VALUES('regular-review_board', 'ca', 'Panell revisor');
INSERT INTO `text` VALUES('regular-search', 'ca', 'Cercar');
INSERT INTO `text` VALUES('regular-see_all', 'ca', 'Veure tots');
INSERT INTO `text` VALUES('regular-see_blog', 'ca', 'Blog');
INSERT INTO `text` VALUES('regular-see_details', 'ca', 'Veure detalls');
INSERT INTO `text` VALUES('regular-see_more', 'ca', 'Veure més');
INSERT INTO `text` VALUES('regular-share-facebook', 'ca', 'Goteo al Facebook');
INSERT INTO `text` VALUES('regular-share-rss', 'ca', 'RSS/BLOG');
INSERT INTO `text` VALUES('regular-share-twitter', 'ca', 'Segueix-nos a Twitter');
INSERT INTO `text` VALUES('regular-share_this', 'ca', 'Compartir a:');
INSERT INTO `text` VALUES('regular-sorry', 'ca', 'Ho sentim');
INSERT INTO `text` VALUES('regular-success_mark', 'ca', 'Reeixit!');
INSERT INTO `text` VALUES('regular-thanks', 'ca', 'Gràcies');
INSERT INTO `text` VALUES('regular-total', 'ca', 'Total');
INSERT INTO `text` VALUES('regular-translate_board', 'ca', 'Panell traductor');
INSERT INTO `text` VALUES('regular-twitter', 'ca', 'Twitter');
INSERT INTO `text` VALUES('regular-twitter-url', 'ca', 'http://twitter.com/#!/');
INSERT INTO `text` VALUES('regular-view_project', 'ca', 'Projecte');
INSERT INTO `text` VALUES('regular-weeks', 'ca', 'setmanes');
INSERT INTO `text` VALUES('rewards-field-individual_reward-description', 'ca', 'Descripció');
INSERT INTO `text` VALUES('rewards-field-individual_reward-other', 'ca', 'Especifica el tipus de recompensa');
INSERT INTO `text` VALUES('rewards-field-social_reward-description', 'ca', 'Descripció');
INSERT INTO `text` VALUES('rewards-field-social_reward-other', 'ca', 'Especifica el tipus de retorn');
INSERT INTO `text` VALUES('rewards-main-header', 'ca', 'Retorns i recompenses');
INSERT INTO `text` VALUES('step-3', 'ca', 'Descripció');
INSERT INTO `text` VALUES('step-4', 'ca', 'Costos');
INSERT INTO `text` VALUES('step-6', 'ca', 'Col·laboracions');
INSERT INTO `text` VALUES('step-costs', 'ca', 'Pas 4: Projecte / Costos');
INSERT INTO `text` VALUES('supports-field-description', 'ca', 'Descripció');
INSERT INTO `text` VALUES('supports-fields-support-title', 'ca', 'Col·laboracions');
INSERT INTO `text` VALUES('supports-main-header', 'ca', 'Sol·licitud de col·laboracions');
INSERT INTO `text` VALUES('tooltip-dashboard-user-change_email', 'ca', 'Des d''aquí pots canviar l''adreça de correu electrònic on reps els missatges de Goteo.');
INSERT INTO `text` VALUES('tooltip-dashboard-user-change_password', 'ca', 'Des d''aquí pots canviar la contrasenya amb que accedeixes a Goteo.');
INSERT INTO `text` VALUES('tooltip-dashboard-user-confirm_email', 'ca', 'Confirma la nova adreça de correu electrònic on vols rebre els missatges de Goteo.');
INSERT INTO `text` VALUES('tooltip-dashboard-user-confirm_password', 'ca', 'Confirma la nova contrasenya amb que vols accedir a Goteo.');
INSERT INTO `text` VALUES('tooltip-dashboard-user-new_password', 'ca', 'Escriu la nova contrasenya amb que vols accedir a Goteo.');
INSERT INTO `text` VALUES('tooltip-dashboard-user-user_password', 'ca', 'Escriu la contrasenya actual amb que accedeixes a Goteo.');
INSERT INTO `text` VALUES('tooltip-project-contract_email', 'ca', 'Adreça de correu electrònic principal associada al projecte. Aquí rebràs les notificacions i missatges de l''equip de Goteo en relació al projecte proposat.');
INSERT INTO `text` VALUES('tooltip-project-contract_name', 'ca', 'Han de ser el teu nom i cognoms reals. Tingues en compte que figuraràs com a responsable del projecte.');
INSERT INTO `text` VALUES('tooltip-project-cost-amount', 'ca', 'Especifica l''import en euros del que consideres que implica aquest cost. No facis servir punts per a les xifres de milers ok?');
INSERT INTO `text` VALUES('tooltip-project-cost-cost', 'ca', 'Introdueix un títol el més descriptiu possible d''aquest cost.');
INSERT INTO `text` VALUES('tooltip-project-cost-dates', 'ca', 'Indica entre quines dates calcules que es durà a terme aquesta tasca o cobrir aquest cost. Planifica-ho començant no abans de dos mesos a partir d''ara, doncs cal considerar el termini per revisar la proposta, publicar-la si és seleccionada i els 40 dies del primer finançament.');
INSERT INTO `text` VALUES('tooltip-project-cost-required', 'ca', 'Aquest punt és molt important: en cada cost que introdueixis has de marcar si és imprescindible o bé addicional. Tots els costos marcats com a imprescindibles es sumaran donant el valor de l''import de finançament mínim per al projecte. La suma dels costos addicionals, en canvi, es podrà obtenir durant la segona ronda de finançament, després d''haver obtingut els fons imprescindibles.');
INSERT INTO `text` VALUES('tooltip-project-cost-type', 'ca', 'Aquí has d''especificar el tipus de cost: vinculat a una tasca (quelcom que requereix l''habilitat o coneixements d''algú), l''obtenció de material (consumibles, matèries primeres) o bé infraestructura (espais, equips, mobiliari).');
INSERT INTO `text` VALUES('tooltip-project-costs', 'ca', 'Com més precisió en el desglossament millor valorarà Goteo la informació general del projecte. ');
INSERT INTO `text` VALUES('tooltip-project-entity_cif', 'ca', 'Escriu el CIF (lletra + número) de l''organització.');
INSERT INTO `text` VALUES('tooltip-project-entity_name', 'ca', 'Escriu el nom de l''organització tal com apareix al seu CIF.');
INSERT INTO `text` VALUES('tooltip-project-entity_office', 'ca', 'Escriu el càrrec amb que representes l''organització (secretari/a, president/a, vocal...)');
INSERT INTO `text` VALUES('tooltip-project-image_upload', 'ca', 'ESBORRAR');
INSERT INTO `text` VALUES('tooltip-project-individual_reward-icon-other', 'ca', 'Especifica breument en què consistirà aquest altre tipus de recompensa individual.');
INSERT INTO `text` VALUES('tooltip-project-individual_reward-units', 'ca', 'Quantitat limitada d''ítems que es poden oferir individualitzadament a canvi d''aquest import. Calcula que la suma total de totes les recompenses individuals del projecte s''apropin al pressupost mínim de finançament que has establert. També la possibilitat d''incorporar les recompenses prèvies a mesura que augmenti l''import, pots començar dient "Tot lo anterior més..." ');
INSERT INTO `text` VALUES('tooltip-project-individual_rewards', 'ca', 'Aquí cal especificar la recompensa per qui recolzi el projecte, vinculada a una quantitat de diners concreta. Tria bé el que ofereixes, intenta que siguin productes/serveis atractius o enginyosos però que no generin despeses extra de producció. Si no hi ha més remei que tenir aquestes despeses extra, calcula el que costa produir aquesta recompensa (temps, materials, enviaments, etc) i ofereix un nombre limitat. Pensa que hauràs de complir amb tots aquests compromisos al final de la producció del projecte. ');
INSERT INTO `text` VALUES('tooltip-project-main_address', 'ca', 'Adreça fiscal de la persona o organització (segons pertoqui).');
INSERT INTO `text` VALUES('tooltip-project-name', 'ca', 'Escull un nom per al projecte (ni massa curt, ni massa llarg :) que permeti fer-se una idea mínima de per a què serveix o en què consisteix. Pensa que apareixerà a molts llocs de la web!');
INSERT INTO `text` VALUES('tooltip-project-resource', 'ca', 'Indica aquí si comptes amb recursos addicionals, a part dels quals sol·licites, per dur a terme el projecte: fonts de finançament, recursos propis o bé ja comptes amb materials. Pot suposar un al·licient per als potencials cofinançadors del projecte.');
INSERT INTO `text` VALUES('tooltip-project-scope', 'ca', 'Indica l''impacte geogràfic que aspira a tenir el projecte (cada categoria inclou l''anterior). ');
INSERT INTO `text` VALUES('tooltip-project-social_reward-icon-other', 'ca', 'Especifica breument en què consistirà aquest altre tipus de retorn col·lectiu.');
INSERT INTO `text` VALUES('tooltip-project-social_reward-license', 'ca', 'Aquí has de seleccionar una llicència d''entre cadascuna del grup que es mostren. Et recomanem llegir-les amb calma abans de decidir, però pensa que un aspecte important Goteo és que els projectes disposin de llicències el més obertes possible.');
INSERT INTO `text` VALUES('tooltip-project-social_reward-type', 'ca', 'Especifica el tipus de retorn: ARXIUS DIGITALS com a música, vídeo, documents de text, etc. CODI FONT de programari informàtic. DISSENYS de plànols o patrons. MANUALS en forma de kits, bussiness plans, "how tos" o receptes. SERVEIS com a tallers, cursos, assessories, accés a planes webs, bases de dades online. ');
INSERT INTO `text` VALUES('tooltip-project-social_rewards', 'ca', 'Defineix el tipus de retorn o retorns del projecte als quals es podrà accedir obertament, i la llicència que els ha de regular. ');
INSERT INTO `text` VALUES('tooltip-project-supports', 'ca', 'A Goteo els projectes poden rebre un altre tipus d''ajudes a més d''aportacions monetàries. Hi ha gent que potser no pugui ajudar econòmicament però sí amb el seu talent, temps, energia, etc.');
INSERT INTO `text` VALUES('tooltip-project-totals', 'ca', 'Aquest gràfic mostra la suma de costos imprescindibles (mínims per realitzar el projecte) i la suma de costos secundaris (import òptim) per a les dues rondes de finançament. La primera ronda és de 40 dies, per aconseguir l''import mínim imprescindible. Només si s''aconsegueix aquest volum de finançament es pot optar a la segona ronda, de 40 dies més, per arribar al pressupost òptim. A diferència de la primera, a la segona ronda s''obté tot el que s''ha recaptat (encara que no s''hagi arribat al mínim).');
INSERT INTO `text` VALUES('tooltip-user-facebook', 'ca', 'Aquesta xarxa social pot ajudar que difonguis projectes de Goteo que t''interessen entre amics i familiars.');
INSERT INTO `text` VALUES('tooltip-user-linkedin', 'ca', 'Aquesta xarxa social pot ajudar que difonguis projectes de Goteo que t''interessen entre contactes professionals.');
INSERT INTO `text` VALUES('tooltip-user-twitter', 'ca', 'Aquesta xarxa social pot ajudar que difonguis projectes de Goteo de manera àgil i viral.');
INSERT INTO `text` VALUES('translate-home-guide', 'ca', 'Message pour le traducteur');
INSERT INTO `text` VALUES('translate-home-guide', 'fr', 'Message pour le traducteur');
INSERT INTO `text` VALUES('user-activate-fail', 'ca', 'Error en activar el compte d''usuari');
INSERT INTO `text` VALUES('user-changeemail-fail', 'ca', 'Error en canviar l''email');
INSERT INTO `text` VALUES('user-changeemail-success', 'ca', 'L''email s''ha canviat correctament ;)');
INSERT INTO `text` VALUES('user-login-required', 'ca', 'Has d''iniciar sessió per poder fer comentaris, cofinançar i fer aportacions o bé crear un projecte.');
INSERT INTO `text` VALUES('user-message-send_personal-header', 'ca', 'Envia un missatge a un usuari');
INSERT INTO `text` VALUES('user-personal-saved', 'ca', 'Dades personals actualitzades ');
INSERT INTO `text` VALUES('user-register-success', 'ca', 'L''usuari s''ha registrat correctament. A continuació rebràs un missatge de correu per activar-lo.');
INSERT INTO `text` VALUES('validate-cost-field-dates', 'ca', 'Has d''indicar les dates d''inici i final d''aquest cost per poder valorar millor el projecte.');
INSERT INTO `text` VALUES('validate-project-field-costs', 'ca', 'Recomanem desglossar fins a 5 costos diferents per millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.');
INSERT INTO `text` VALUES('validate-project-social_rewards', 'ca', 'És obligatori indicar com a mínim un retorn col·lectiu');
INSERT INTO `text` VALUES('validate-project-total-costs', 'ca', 'El cost òptim no pot superar en més d''un 40% el cost mínim. Has de revisar el desglossament de costos.');
INSERT INTO `text` VALUES('validate-project-value-contract_email', 'ca', 'L''adreça d''email no és correcta');
INSERT INTO `text` VALUES('validate-project-value-contract_nif', 'ca', 'El NIF no és correcte.');
INSERT INTO `text` VALUES('validate-project-value-entity_cif', 'ca', 'El CIF no és vàlid');
INSERT INTO `text` VALUES('validate-project-value-phone', 'ca', 'El format de número de telèfon no és correcte.');
INSERT INTO `text` VALUES('validate-register-value-email', 'ca', 'L''email introduït no és vàlid');
INSERT INTO `text` VALUES('validate-user-field-about', 'ca', 'Explica alguna cosa sobre tu, per així millorar la valoració del projecte de cara a determinar si publicar-ho a Goteo.');
INSERT INTO `text` VALUES('validate-user-field-linkedin', 'ca', 'El camp de Linkedin no es vàlid ');
INSERT INTO `text` VALUES('validate-user-field-location', 'ca', 'El lloc de residència de l''usuari no és vàlid');
INSERT INTO `text` VALUES('validate-user-field-twitter', 'ca', 'L''usuari de Twitter no és vàlid');
INSERT INTO `text` VALUES('validate-user-field-web', 'ca', 'Has de posar l''adreça (URL) de la web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `about` text,
  `keywords` tinytext,
  `active` tinyint(1) NOT NULL,
  `avatar` int(11) DEFAULT NULL,
  `contribution` text,
  `twitter` tinytext,
  `facebook` tinytext,
  `google` tinytext,
  `identica` tinytext,
  `linkedin` tinytext,
  `worth` int(7) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` tinytext NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'No se ve publicamente',
  `confirmed` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `user`
--

INSERT INTO `user` VALUES('aballesteros', 'Andrés Ballesteros', 'Cáceres', 'geopetro10@yahoo.es', '975b5f25e95d2afd7c22b50342ddffc5edba89a1', 'Abvmedioambiente', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '3685320c159d1692a065d5cdd333d32f¬geopetro10@yahoo.es', 0, 1);
INSERT INTO `user` VALUES('abenitez', 'Alba Benitez', 'Cáceres', 'albabenitez1983@gmail.com', 'ccb39ea899a2dbc60867cfec2495ffcbfb2eb42d', 'Autónoma-Sector cultural', '', 1, 0, '', '', '', '', '', '', 2, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '25ac8112bfd7d55eb295f2e7f42c9a72¬albabenitez1983@gmail.com', 0, 1);
INSERT INTO `user` VALUES('aceballos', 'Ana Ceballos', 'Madrid', 'veyota79@hotmail.com', 'db5c3952834c9f1a64f4086e94afa40013dd3a5b', 'Gestor Cultural', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('acomunes', 'Asociación comunes', 'Madrid', 'comunes@ourproject.org', '4f9a95a11c313960c234b429e4822bbcc6725fcc', '', '', 1, 0, '', 'movecommons', '', '', '', '', 3, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '9886c568ed0a405d16b93c1a989df1d3¬comunes@ourproject.org', 0, 1);
INSERT INTO `user` VALUES('afernandez', 'Ana Fdez Osorio', 'Barcelona', 'ana@dispuesta.net', 'bc4b56d5b2fb0ddb27e4ba97ed8483c2b96b9b43', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('afolguera', 'Antonia Folguera', 'Barcelona', 'antonia@riereta.net', '232083fdb8d80ac58b79ab55b75d302e54b5038b', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '2bd4cc0ddd8c303b046977e3b6ca90bb¬antonia@riereta.net', 0, 1);
INSERT INTO `user` VALUES('agallastegi', 'Asier Gallastegi', 'Bilbao', 'asier.gallastegi@gmail.com', 'ddbc0e3ef9225b50a936adc43e833f238b13680d', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ahernandez', 'Alejandro Hernández Renner', 'Cáceres', 'ahernandez@lossantos.org', '79dd1d71cb13c723ac077e636c47d14720498b4c', 'Director Fundación Maimona', '', 1, 0, '', '', '', '', '', '', 3, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('airiarte', 'Arantza Iriarte', 'Bilbao', 'airiarte@landspain.com', '7d2da1a0e004ba1f56454288d22efe27f121de6c', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('amartinez', 'Alfonso Martínez', 'Barcelona', 'martinezrubioo@gmail.com', 'b9ee4c65c2de3f007eef8e0cd9e39d2ef49aa17b', '', '', 1, 0, '', '', '', '', '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('amorales', 'Ana Morales', 'Madrid', 'moralespartida@gmail.com', 'e8396d7fc730a83111aa251a80d44e4295d15d85', 'Trabajo en temas culturales', '', 1, 0, '', '', '', NULL, '', '', 3, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('amunoz', 'Ascensión Muñoz Benítez', 'Cáceres', 'chonmube@gmail.com', '18542a1914f496a4c66739483a45620edfc40a65', 'Autónoma-Gestora cultural', '', 1, 0, '', '', '', NULL, '', '', 3, '2011-07-05 01:54:33', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('aollero', 'Ana  Ollero', 'Cáceres', 'programaskreativos@gmail.com', 'a1d29ffc56898468565d89a267fa13b40d396278', 'Programas creativos', '', 1, 0, '', '', '', '', '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('aramos', 'Avelino Ramos Casado', 'Cáceres', 'crdelcorral@hotmail.com', '54a53a49e8c51e869cdc0f8f5513d48ec8e3e149', 'Sertumon', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('arecio', 'Anto Recio', 'Cáceres', 'anto@filosomatika.net', '31d6347ed7f1809654680fb6f1bb5bed2ab07408', 'Fundecyt', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('asanz', 'Ana Sánz Grados', 'Cáceres', 'asanzgr@hotmail.com', 'a32009cc0d01b5a96aced6cff6cf4be61e8fbd7c', 'Asociación de Mujeres Malvaluna', '', 1, 0, '', '', '', NULL, '', '', 2, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('asdf-asd', 'asdf asd', NULL, 'jcanaves_asdf@doukeshi.org', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-08-19 20:42:49', '2011-08-22 16:36:21', '87920af68c631cd344934b86c337b783', 1, 0);
INSERT INTO `user` VALUES('asdfas', 'asdfas', NULL, 'asdf@asdfsdaf.asd', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-11-11 09:16:52', '2011-12-21 22:45:02', '4c010b2f181deeb5f2c94912fa470291¬asdf@asdfsdaf.asd', 1, 1);
INSERT INTO `user` VALUES('avigara', 'Ana Vigara', 'Madrid', 'ana.vigara@iniciativajoven.org', 'b093c07f7a1c81bb216456e7cceb0520a632437f', 'Técnico de proyectos', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('blozano', 'Betania Lozano', 'Madrid', 'betanialozano@yahoo.com', '5ddcbe4a9c36ba3bd05ea0eb8d4f09ed422f5139', 'Gestora Cultura. Co-directora de la Muestra IN-SONORA', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('bramos', 'Beatriz Ramos', 'Madrid', 'beatriz@iniciativajovn.org', '7e6d5e13cc911119538fd2a00e5900e37df9a711', 'Técnico de proyectos', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('bsampayo', 'Blanca Sampayo', 'Madrid', 'blancasampayo@gmail.com', 'bf3d17a170f915f2f0df09f33ecdb8ec4883648d', 'Estoy haciendo un Master de Gestión Cultural, y un curso de Innovación Abierta en Gestión Cultural,', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('caagon', 'Carla A. Agon', 'Barcelona', 'carla.a.agon@gmail.com', '9fa69b1368644376888dd1d0b3e68db230f80c1d', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('carlaboserman', 'Carla Boserman', 'Sevilla', 'carlaboserman@gmail.com', 'df9b92ece4cebf81da2789d7a55d949fe1bb5a69', '', '', 1, 0, '', '', '', NULL, '', '', 3, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ccarrera', 'Candela Carrera', 'Barcelona', 'candela.carrera@gmail.com', 'dd7d71c995d705193cf659f5019eca491f7ad8ef', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ccriado', 'Carlos Criado', 'Cáceres', 'carlos@carloscriado.es', 'dfce3f8d5e9722b20d20fe9fca259927d37e6856', 'FotoExtremadura', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('cmartinez', 'Cayetana Martinez', 'Madrid', 'cayetana109@gmail.com', '21470b6c5d5fd7c86af61904cfa25095184b0693', 'gestión cultural. Trabajo con varias asociaciones culturales y de emprendedores y querría conocer más de estas nuevas formas de financiación y organización.', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('cphernandez', 'Claudia Patricia Hernández', 'Madrid', 'patriciavergara83@hotmail.com', '556be5beee418fda6e1601867ef3fd3395b80f7f', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('cpinero', 'Carlos Piñero Medina', 'Cáceres', 'innovacion@energiaextremadura.org', '2a22c481b606f2758f06762925c06e6cf4b5ca6e', 'Cluster de la Energía de Extremadura. Dpto. de I+D+i y formación. ', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-07-05 01:54:45', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('criera', 'Cristina Riera ', 'Barcelona', 'criera@transit.es', 'a37535b1bb821dbc5495ddd55ddd04b9b4f485ed', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('dcabo', 'David Cabo', 'Madrid', 'david.cabo@gmail.com', '2e0b97b278aaadfdda6c1c5963212f28c9e59796', 'Ayudando a ONG Pro Bono Publico', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('dcuartielles', 'David Cuartielles', 'Malmö', 'dcuartielles@gmail.com', 'bbd0e343e48cdc7dcfc5515641e9c6b32e4e03af', '', '', 1, 0, '', '', '', NULL, '', '', 0, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('demo', 'Demo Goteo', 'Barcelona', 'mansalva@gmail.com', 'fde58f16e55f6e2afa8994488d16e9417ab642e1', 'Usuario dummie de pruebas y ejemplos para Goteo', 'crowdfunding, cultura, arte, hacks', 1, 105, 'Ejemplos y demos de contenidos en general', 'http://twitter.com/goteofunding', '', '', 'http://identi.ca/goteofunding', '', 0, '2011-07-25 15:47:10', '2011-12-21 22:45:02', '9a828863d7e88aee80a25b2ad52d3428', 0, 1);
INSERT INTO `user` VALUES('diegobus', 'diegobus', 'Barcelona', 'diegobus@pelousse.com', '364c81afc83b9d5ae303ca7e73f284ed2729a2b8', 'test. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fringilla dolor quis elit cursus sit amet tincidunt elit ultrices. Mauris ultricies auctor velit vel tempor. Integer sollicitudin consequat ultrices. Fusce at ante sit amet augue dapibus mattis.', 'Política, diseño', 1, 104, 'Mauris fringilla dolor quis elit cursus sit amet tincidunt elit ultrices. Mauris ultricies auctor velit vel tempor. Integer sollicitudin consequat ultrices. Fusce at ante sit amet augue dapibus mattis.', 'http://twitter.com/#!/dinoupublicacio', 'http://facebook.com', '', 'http://identi.ca', '', 3, '2011-05-10 18:32:15', '2011-12-21 22:45:02', '60b03a53de7067ed2c49d61fbc89e3c2¬diegobus@pelousse.com', 0, 1);
INSERT INTO `user` VALUES('domenico', 'Domenico Di Siena', 'Madrid', 'domenico@ecosistemaurbano.com', 'af915aa406c73c1e7a22ace8e7417ce02e222679', '', '', 1, 0, '', 'urbsocialdesign', '', '', '', '', 0, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ebai', 'Eva Bai', 'Bilbao', 'eva.alija@gmail.com', '7bf8881c975d50142a8f44768fda76101f86aab5', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ebaraonap', 'Ethel Baraona Pohl', 'Barcelona', 'tusojos8@yahoo.com', '4483c14c633775292d0b9271cdec409a61387788', '', '', 1, 0, '', 'archinhand', '', '', '', '', 0, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ebarrenetxea', 'Eukene Barrenetxea', 'Bilbao', 'eukenebarrenetxea@gmail.com', '92afc493fbd0f74e207bf2fd60636f33edd11db3', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('efoglia', 'Efraín Foglia', 'Barcelona', 'mexmafia@gmail.com', '9f1b78537a645a62e8404b774b0b69b8529e90c6', '', '', 1, 0, '', 'EfrainFoglia', '', '', '', '', 4, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('elopez', 'Elvira López', 'Madrid', 'elvirilay@hotmail.com', '1d1d375939c74c8f755355f731c9eed3b4ee4297', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('emartinena', 'Esteban Martinena', 'Cáceres', 'orensbruli@gmail.com', 'f0175a18e42135b86232c00ab1db27acb6b224be', 'Fotógrafo Agencia EFE', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('emonivas', 'Esther Moñivas', 'Madrid', 'esther.monivas@gmail.com', '516d9ae4faac6f1425ef5fb0327d6bbb7948ea0b', 'Codirectora de la ONG Acción C', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-07-05 01:55:04', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('emuruzabal', 'Eneko Muruzabal', 'Bilbao', 'info@diseinugile.com', 'ccce002e3264bcfaf344858defd99e661d1943d6', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('eportillo', 'Esperanza Portillo', 'Madrid', 'portillo.esperanza@gmail.com', '549777e061b8dbadd683ca5293444f4095beaabf', 'Estudiante de master en gestión cultural', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('esenabre', 'esenabre', 'Barcelona', 'pepo_1303727318_per@gmail.com', 'c3ba6b8652c92a370728df123b14a1acf8517638', 'Livingg la vida loca', 'salud', 1, 27, 'Este campo va fuera', 'http://twitter.com/esenabre', 'http://www.facebook.com/esenabre', '', '', 'http://www.linkedin.com/in/esenabre', 0, '2011-09-02 18:12:40', '2011-12-21 22:45:02', '60109fe996530911ff113b9b1b55382f', 0, 1);
INSERT INTO `user` VALUES('evandellos', 'Emma Vandellós ', 'Barcelona', 'emma.vandellos@esade.edu', 'f4ba05222b034f22339c7fb0ef299b925f02dcc8', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('fandres', 'Fernando Andres', 'Santurtzi', 'fandres@virgen-del-mar.com', '7c37d99852bcd2ccce0a976f94d8035e79a463d5', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('fbalague', 'Francesc Balagué', 'Barcelona', 'fbalague@gmail.com', 'b0f76f462dcfaadc135dec520456f03b558a80c8', 'Maestro y psicopedagogo, doctor en multimedia educativa y investigador en el uso de las TIC aplicadas a la educación. A partir de mi gran afición por viajar, también estoy muy interesado en el viaje como forma de aprendizaje. La fotografía siempre me acompaña.', 'educación, desarrollo, formación, web2.0, p2p, ', 1, 120, 'Tengo alguna experiencia en la gestión de proyectos, en coordinación y dinamización de grupos online y offline, y en uso de herramientas de la web social.\r\n\r\nPuedo ayudar a traducir, difundir, testear y enseñar...', 'http://twitter.com/fbalague', 'https://www.facebook.com/fbalague', 'https://profiles.google.com/u/0/109018548498585760210', 'http://identi.ca/fbalague', 'http://es.linkedin.com/in/francescbalague', 0, '2011-08-02 08:22:49', '2011-12-21 22:45:02', '6d7049579e73fcb03f0b6c4262d4af0e', 0, 1);
INSERT INTO `user` VALUES('fcingolani', 'Francesco Cingolani', 'Madrid', 'fc@ecosistemaurbano.com', '2c6abab20f50218be59a8d2d62c100a9dc9d3a08', 'Arquitecto. Soy responsable de Urban Social Design Experience, un proyecto de networked learning promovido por la asociación Urban Social Design', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('fcoddou', 'Flavio Coddou', 'Barcelona', 'flaviocoddou@gmail.com', '3e61f6f52ca6136091ced69b745d79fd88e58f71', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ffreitas', 'Flavia Freitas', 'Barcelona', 'flavia.frr@gmail.com', '023434d501234549299f47c90b37249b8544b7b5', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('fingrassia', 'Franco Ingrassia', 'Rosario', 'francoingrassia@gmail.com', '3e990f6eee34056154296953598b61d10d9c55f3', 'Psicólogo. Involucrado en el proceso de constitución de un Laboratorio del Procomún en la ciudad de Rosario (Argentina)', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('gbento', 'Gisele Bento', 'Barcelona', 'giselecultura@gmail.com', '1d0bee13a33f3ce2fcc7b8c83596c903c9d5a42d', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('gbezanilla', 'Gerardo Bezanilla', 'Madrid', 'gerardo@beusual.com', 'bda58288e44e1011c2cf94ebe4582662f9876497', 'Diseñador, Editor, Agente Cultural', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('gbossio', 'Gabriela Bossio', 'Madrid', 'gabrielabossio@gmail.com', '9e832ab9a645262404ca0e44b6616aca990b5fec', 'Directora Creativa y Gestora cultural de La casa del Árbol', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('geraldo', 'Gerald Kogler y Marti Sanchez', 'Barcelona', 'geraldo@servus.at', '409bca035255a1d86114e2f2e74476375fdb11f4', '', '', 1, 0, '', '', '', '', '', '', 0, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 1, 1);
INSERT INTO `user` VALUES('gnarros', 'Germán Narros Lluch', 'Cáceres', 'german@caceresentumano.com', '5a6eb69bae6b03a73d6956552e21ea0ce515e878', 'caceresentumano.com', '', 1, 0, '', '', '', NULL, '', '', 3, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('goteo', 'Goteo', 'Barcelona', 'goteo@doukeshi.org', 'b57a92c9a6501f4542d670f2a13e98287fc596ca', 'Este perfil representa al equipo que administra la plataforma Goteo, desde el cual nos comunicamos con todos los usarios.', '', 1, 118, '', 'http://twitter.com/#!/goteofunding', '', '', 'http://identi.ca/goteofunding', '', 5, '2011-08-05 10:15:42', '2011-12-21 22:45:02', '8eefe6e871cebe24248cc47d4b23d152goteo@doukeshi.org', 0, 1);
INSERT INTO `user` VALUES('gpedranti', 'Gabriela Pedranti', 'Barcelona', 'info@gabrielapedranti.com', '1d2a5c9df4290c12a5f5962e3d9fda38c85c072d', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('hcastro', 'Helder Castro', 'Bilbao', 'helder_r_castro@hotmail.com', 'e10a36f30ce2a39a2e1998f9317ae06362a634c5', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ibartolome', 'Iñaki Bartolomé', 'Bilbao', 'ibartolome@ideable.net', '6940fc52c08a9e4695cd2c929cca05eefdd69c99', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ibelloso', 'Isabel Belloso Bueno', 'Cáceres', 'ibellosobueso@yahoo.es', '00aff3cc9ed53bd857a28d4f0e209e5fac70ca5d', 'Fundación Cáceres Capital', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('infoq', 'info-q', 'Bilbao', 'info@info-q.com', 'dddbd151b3e56407b313757a21dbf63b8559dc30', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('iniciativa-joven', 'Iniciativa Joven', '', 'gij@doukeshi.org', 'f882ffbbb216ba89f5d6299b955ea882d80cfda8', '', '', 0, NULL, '', '', '', '', '', '', NULL, '2011-12-17 14:04:47', '2011-12-17 14:06:18', 'cb552274f64aa39d2441fb0044d7705d', 0, 0);
INSERT INTO `user` VALUES('iromero', 'Imma Romero', 'Barcelona', 'ima_gina7@hotmail.com', 'ff5e6b74613597bfeaa59b91f9accc1d238cfefb', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('itxaso', 'Úbiqa, tecnología, ideas y comunicación', 'Bilbao', 'itxaso@ubiqa.com', '82d3d0eaff77053c18a71ff4725dd9ffc712cce3', '', '', 1, 0, '', 'ubiqarama', '', '', '', '', 0, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 1, 1);
INSERT INTO `user` VALUES('ivan', 'Ivan Vergés', 'la garriga, barcelona', 'ivan@microstudi.net', '052f55137ef0403ccb0a041b86c5f62ed6fc03db', '', 'music, teatre, circ, open source technologies', 1, 117, '', 'http://twitter.com/ivanverges', 'http://facebook.com/ivanverges', 'https://plus.google.com/105872229634982547278', 'http://identi.ca/ivanverges', '', 0, '2011-07-31 11:21:10', '2011-12-21 22:45:02', '5e681eadece1fe6c6da4b77d3eea43de', 0, 1);
INSERT INTO `user` VALUES('jcanaves', 'jcanaves', '', 'jcanaves@doukeshi.org', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '', 1, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '2011-07-26 19:31:51', '2011-12-21 22:45:02', '83b6d443706802b159868bddb0f82fcb¬jcanaves@doukeshi.org', 0, 1);
INSERT INTO `user` VALUES('jclindo', 'Juan Carlos Lindo Sanguino', 'Cáceres', 'juancarlos@identic.es', '1629be88c941712f3b027b1bccdae4dd338ea852', 'Consorcio Identic', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jcosta', 'Joaquin Costa', 'Bilbao', 'jcosta@eohonline.es', 'ccf5b869a0e1fd1b8f34c095cd7fe210bab8036a', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jfernandez', 'Jesús Fenández Perianes', 'Cáceres', 'interinofernandez@hotmail.com', 'e36b93e47ad4a17dbe34fa2a8a53e7d57a44670d', 'COlectivo PEriferias ', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jlespina', 'José Luis Espina', 'Barcelona', 'espinajl@gmail.com', '7bf9458b0c0549d310203f27c34f441ac074eb5a', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jmatadero', 'Javi de Matadero', 'Madrid', 'javi@mataderomadrid.org', 'cb218e4b9fbbb89ec5804ec32ca1067e3679b311', 'Matadero', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jmorer', 'Julia  Morer ', 'Madrid', 'julia.morer@gmail.com', '7b63000191f052ebb77324fe9940af29e9ad1765', 'Edición y Diseño de Proyectos Culturales', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jmorquecho', 'Jonatan Morquecho', 'Bilbao', 'jmorquecho@gmail.com', 'bcccd101cfae58fb3f4937f1cc1dd5c5f71db5eb', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jnora', 'Julián Nora', 'Madrid', 'nora_julian@hotmail.com', '2eda3d6278dc18275918ea9ef18c0bdfe1c22a47', 'Ing. Simulacion ', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('jromero', 'Jessica Romero', 'Madrid', 'jessicaromero@gmail.com', 'e3d79a6764ec0796ff75f8b5c9184cc7bac0d37a', 'Periodista y productora cultural', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('kaime', 'kaime', '', 'kaime@kaime.info', 'e04820372e7f2ebb2d76987433579219b11c2ba5', '', '', 1, 100, '', '', '', '', '', '', 0, '2011-07-20 15:00:26', '2011-12-21 22:45:02', '888fe62c210ad795dcf0da748b326e42', 0, 1);
INSERT INTO `user` VALUES('kventura', 'Kenia Ventura', 'Barcelona', 'dinkha@hotmail.com', '4e79b02993b50bddf2709ee5e764dfddc1c7661b', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('lamorrortu', 'Lander Amorrortu', 'Bilbao', 'lander.amorrortu@agla4D.com', '51dbe34a01e87ee7ec986c07b7ad315893f95a56', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('lcarretero', 'Lucía Carretero', 'Barcelona', 'foto@luciacarretero.com', '29afdee54be1bbdf89242d5eb3cacf0c11b680f3', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('lemontero', 'Luis Ernesto Montero', 'Cáceres', ' lernestomc@Yahoo.es', 'b0e4f357e65a33966d2089b1d899f4245f05ad25', 'Artista', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('lfernandez', 'Laura Fernández', 'Madrid', 'laura@medialab-prado.es', '6823d091412f0850015e9a0e4983b48063e7a813', 'Responsable de programa cultural en Medialab-Prado', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('lstalling', 'Lars Stalling', 'Barcelona', 'larsst@gmail.com ', 'dbe4f8a3757235145f8ed0fde23e433fe5650872', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('maaban', 'Manuel Ángel Abán', 'Madrid', 'manuel.aban@gmail.com', 'd068342a85c48d2f95ea7661b2b0a5e77c56dc5c', 'Codirector de una ONG ', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mamanovell', 'M. Ángel Manovell', 'Bilbao', 'info@dinamik-ideas.com', '6a151226b509f2fa7c3207ee17ee21f41bec0198', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mcidriain', 'Monika Cidriain', 'San Sebastián', 'cidriain@yahoo.es', '934a3519f310edf49a5dfb10a752a72aa8e0600e', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mduran', 'Magdalena Duran', 'Barcelona', 'magdaduran@yahoo.es', '5d5d2e7dfde93f13cc12abdacc10d7f2083f1c39', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mgarcia', 'Miriam García Sanz', 'Madrid', 'miriamgsanz@gmail.com', 'b982ca393b19498409bc749abefc585e14dc149f', 'Gestora cultural', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mgoikolea', 'Marta Goikolea', 'Bilbao', 'mgoikolea@gmail.com', 'e4f15436b31af59798f0e0fe6eafa544e8f4f575', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mgoni', 'Marta Goñi', 'Bilbao', 'caoroneltapi@yahoo.es', 'c3bf14f58a8005742e7ef31c0549a6f8fce3f154', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-07-05 01:55:30', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mkekejian', 'Maral Kekejian ', 'Madrid', 'mkekejih@cajamadrid.es', '6bab1571a22fa60c8022a6dfcf397f97b0743279', 'Artes Escénicas LCE', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mmendez', 'Miguel Méndez Pérez', 'Cáceres', 'elmiguemende@gmail.com ', '127d53ca624ad91c26a7ffa17aff20bdb644e235', 'Técnico AUPEX+gestor cultural+animador 2.0', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mmikirdistan', 'Maral Mikirdistan', 'Barcelona', 'idensitat@idensitat.org', 'c63a6cb1c60e71b3a9f0d90a02ee392ff1a779ce', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mpalma', 'Marcela Palma Barrera', 'Cáceres', 'marcela.palma@fundacionciudadania.es', 'c6f3a28e89b2b5f6e6f191eb533676f6cea595bf', 'Fundación Ciudadanía', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mpedro', 'Matxalen de Pedro', 'Bilbao', 'matxalendplarrea@hotmail.com', '2b83df476cffcf3f7a1085cba5cc54c3d2a136b8', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mpedroche', 'Mercedes Pedroche', 'Madrid', 'info@mercedespedroche.com', '570d6dc480ffbe1388e1bedce96e5a0e57e502b8', 'Coreógrafa, bailarina', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mramirez', 'Miguel Ramírez', 'Barcelona', 'miquel.ramirez@gmail.com', 'f223dbfb37ae5507cdb7ced8d338e05a686bf25a', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('mraposo', 'mikelraposo', 'Bilbao', 'mikelraposo@gmail.com', 'ac65d55fbb459e454d3e4c623f3d85b6ed111484', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('msoms', 'Miriam Soms Trillo', 'Cáceres', 'msoms@lacajanegra.net', 'bae498009ce55c4bed9b1111748a53e97ad5a8ae', 'La Caja Negra', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('nescala', 'Nella Escala', 'Barcelona', 'nella.escala@gmail.com', '4ee7c6e03aaa371e7f3ee8dcaedd0d1f23a374da', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('olivier', 'Olivier', 'Palma de Mallorca', 'pepe_1303727124_per@gmail.com', '77cccf0d7a72ee0036f6f1a239d5c47ee8799014', 'Cofundador de Platoniq, organización catalana de innovadores sociales y desarrolladores de software', 'crowdfunding, copyleft, educación, innovación_social', 1, 119, '', 'platoniq', 'http://www.facebook.com/olivier.schulbaum', 'https://plus.google.com/116589329737135075630/', 'http://identi.ca/platoniq', 'http://www.linkedin.com/profile/view?id=98955103&locale=es_ES&trk=tab_pro', 3, '2011-12-28 17:58:08', '2011-12-28 17:58:08', 'bde8aad344ca0a7b6558a7b35b229f90', 0, 1);
INSERT INTO `user` VALUES('paypal', 'Paypal Tester', 'aqui', 'paypal_1315159211_per@gmail.com', 'ab4d8d2a5f480a137067da17100271cd176607a1', 'Paypal Tester', 'paypal', 1, NULL, 'Paypal Tester', '', '', '', '', '', 5, '2011-10-17 10:13:50', '2011-12-21 22:45:02', 'c8812fc2560e9e5c786a4e2a64db5a15', 0, 1);
INSERT INTO `user` VALUES('pepe', 'pepe', NULL, 'jcanaves_pepe@doukeshi.org', '99aefe56ac584d2f3f087ff987b63522b3b31e11', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-08-12 13:14:34', '2011-08-22 16:31:34', '8eec522ae23c0ea4049f62a1495e95d7', 1, 0);
INSERT INTO `user` VALUES('pereztoril', 'Javier Pérez-Toril Galán', 'Cáceres', 'pereztoril@gmail.com', '4fca9db1555c0fcec59343a2ae8c60055510cdae', 'Empresa Jptsolutions', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('pgonzalo', 'Pilar Gonzalo', 'Madrid', 'pilar.gonzalo@fulbrightmail.org', '2675dc74abf73a42520c10bcfad2cdca66a6f1c0', 'Museo Reina Sofía', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('rcasado', 'Raul Casado', 'Barcelona', 'raul.casadogonzalez@gmail.com', '060d5b91ab484ba5bbd937c3cf23bd864ccba3d0', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('rfernandez', 'Rosa Fernandez', 'Bilbao', 'info@colaborabora.org', '2a35b80f14ace4402da74188d325ecacb1f19496', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('ricardo-amaste', 'ricardo_amaste', '', 'ricardo@amaste.com', '2a79a112f89107cd6ff1eb81695e6ff88a3fe368', '', '', 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-26 20:04:00', '2011-12-21 22:45:02', '46c49eb03871ba254b6ee3f04e9049c7', 0, 1);
INSERT INTO `user` VALUES('root', 'Super administrador', '', 'goteo_root@doukeshi.org', 'f64dd0d8c9276d87c6d0ae24c5d12571c62ecf16', '', '', 1, 91, '', '', '', '', '', '', 0, '2011-09-01 19:17:43', '2011-12-21 22:45:02', '61aa85ea9169c68babfa5b8bdb44097bjulian_1302552287_per@gmail.com', 1, 1);
INSERT INTO `user` VALUES('rparramon', 'Ramon Parramon', 'Barcelona', 'rparramon@acvic.org', '98de9c0d4367d83c6b18bac6e0010972261aa094', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('rsalas', 'Roberto Salas', 'Madrid', 'robers_alas@yahoo.es', '86a131eb71ceceddb26bc889895cf24ef96602e1', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('rsteckelbach', 'Roswitha Steckelbach', 'Bilbao', 'roswira@yahoo.es', '18e4cfb2ef66c87404fee367d4126a72c653db23', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('rtorres', 'Ricardo Torres', 'Bilbao', 'ricardotorres2@telefonica.net', '55f237586f9bef5fa246fafe308ebdecf7aac227', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('sgrueso', 'Stéphane Grueso', 'Madrid', 'stephanegrueso@gmail.com', '2364b268a16831f859c5d17b7eda329fd39700a9', 'Cineasta documental', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('smeschede', 'Sören Meschede', 'Madrid', 'soren@hablarenarte.com', '0b63ad3f4d744a320cf437f1ffecb4c24a74f74f', 'Gestor Cultural', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('snogales', 'Silverio Nogales Pajuelo', 'Cáceres', 'sinogales@gmail.com', 'fa72c318a30d73163c9f63a240577ed0fb9afa7e', 'Gerente Ciudad de la Salud', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('soritxori', 'Soraia', 'Bilbao', 'soritxori@hotmail.com', '75042acd59a7e20f0c2b6213a5f86aaccce992f3', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('stena', 'Sara Tena Medina', 'Cáceres', 'sara.tena@aupex.org', 'e0be7b9f868042ae4e89136b9a84996597ba5b44', 'Asociación de Universidades Populares de Extremadura', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('susana', 'Susana', '', 'pepa_1303727030_per@gmail.com', 'f925d420627f3db470e17fc2a289a4dd103722f2', '', '', 1, NULL, '', NULL, NULL, NULL, NULL, NULL, 3, '2011-09-02 20:31:55', '2011-12-21 22:45:02', 'a99f8a7e5095f0227d26d569fbf962a3', 0, 1);
INSERT INTO `user` VALUES('tbadia', 'Tere Badia', 'Barcelona', 'tbadtod@gmail.com', '770b0c2422f238ff6662d2411900c6e57f130e22', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('tguido', 'Tomás Guido', 'Madrid', 'tguido@transit.es', '325dce990aec945b7d843814911ae7811670dbee', 'Coordino la oficina en Madrid la empresa Trànsit Projectes. www.transit.es', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('tintangibles', 'Taller d''intangibles', 'Barcelona', 'dvd@enlloc.org', '43d79ce4a41095a5adf6d315a989ee8a349c168b', '', '', 1, 0, '', 'HKpWiki', '', '', '', '', 0, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('todojunto', 'Todojunto', 'Barcelona', 'hola@todojunto.net', '9da21b8b0a1ef24359212199b4335534a805acb7', '', '', 1, 0, '', '', '', '', '', '', 0, '0000-00-00 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('vsantiago', 'Victor Santiago', 'Cáceres', 'vstabares@gmail.com', '62ff5323c5bb06d521efb2f1f185389728d715a2', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('vtorre', 'Víctor Torre', 'Madrid', 'victortorrevaquero@yahoo.es', '09723c5bf0daf4c5c5b127ba269edc841327238c', 'Coordinador Teatro Sol y Tierra', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('yriquelme', 'Yolanda Riquelme ', 'Madrid', 'yolandariquel@hotmail.com', 'add40e3392132f436c194831fa81de1dd3b62962', '', '', 1, 0, '', '', '', NULL, '', '', 1, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);
INSERT INTO `user` VALUES('zaramari', 'Zaramari (Gorka, Maria)', 'Bilbao', 'info@zaramari.com', 'd21582038b6f6288e2f089b21c93e550dc038bd1', '', '', 1, 0, '', '', '', NULL, '', '', 0, '2011-05-04 00:00:00', '2011-12-21 22:45:02', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_image`
--

DROP TABLE IF EXISTS `user_image`;
CREATE TABLE `user_image` (
  `user` varchar(50) NOT NULL,
  `image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `user_image`
--

INSERT INTO `user_image` VALUES('demo', 105);
INSERT INTO `user_image` VALUES('diegobus', 8);
INSERT INTO `user_image` VALUES('diegobus', 104);
INSERT INTO `user_image` VALUES('esenabre', 27);
INSERT INTO `user_image` VALUES('fbalague', 120);
INSERT INTO `user_image` VALUES('goteo', 69);
INSERT INTO `user_image` VALUES('goteo', 118);
INSERT INTO `user_image` VALUES('ivan', 117);
INSERT INTO `user_image` VALUES('kaime', 98);
INSERT INTO `user_image` VALUES('kaime', 99);
INSERT INTO `user_image` VALUES('kaime', 100);
INSERT INTO `user_image` VALUES('olivier', 70);
INSERT INTO `user_image` VALUES('olivier', 95);
INSERT INTO `user_image` VALUES('olivier', 96);
INSERT INTO `user_image` VALUES('olivier', 119);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_interest`
--

DROP TABLE IF EXISTS `user_interest`;
CREATE TABLE `user_interest` (
  `user` varchar(50) NOT NULL,
  `interest` int(12) NOT NULL,
  UNIQUE KEY `user_interest` (`user`,`interest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Intereses de los usuarios';

--
-- Volcar la base de datos para la tabla `user_interest`
--

INSERT INTO `user_interest` VALUES('abenitez', 2);
INSERT INTO `user_interest` VALUES('abenitez', 6);
INSERT INTO `user_interest` VALUES('abenitez', 7);
INSERT INTO `user_interest` VALUES('abenitez', 9);
INSERT INTO `user_interest` VALUES('abenitez', 10);
INSERT INTO `user_interest` VALUES('abenitez', 11);
INSERT INTO `user_interest` VALUES('abenitez', 13);
INSERT INTO `user_interest` VALUES('abenitez', 14);
INSERT INTO `user_interest` VALUES('abenitez', 15);
INSERT INTO `user_interest` VALUES('ahernandez', 2);
INSERT INTO `user_interest` VALUES('ahernandez', 6);
INSERT INTO `user_interest` VALUES('ahernandez', 7);
INSERT INTO `user_interest` VALUES('ahernandez', 9);
INSERT INTO `user_interest` VALUES('ahernandez', 10);
INSERT INTO `user_interest` VALUES('ahernandez', 11);
INSERT INTO `user_interest` VALUES('ahernandez', 13);
INSERT INTO `user_interest` VALUES('ahernandez', 14);
INSERT INTO `user_interest` VALUES('ahernandez', 15);
INSERT INTO `user_interest` VALUES('amartinez', 2);
INSERT INTO `user_interest` VALUES('amartinez', 6);
INSERT INTO `user_interest` VALUES('amartinez', 7);
INSERT INTO `user_interest` VALUES('amartinez', 9);
INSERT INTO `user_interest` VALUES('amartinez', 10);
INSERT INTO `user_interest` VALUES('amartinez', 11);
INSERT INTO `user_interest` VALUES('amartinez', 13);
INSERT INTO `user_interest` VALUES('amartinez', 14);
INSERT INTO `user_interest` VALUES('amartinez', 15);
INSERT INTO `user_interest` VALUES('aollero', 2);
INSERT INTO `user_interest` VALUES('aollero', 6);
INSERT INTO `user_interest` VALUES('aollero', 7);
INSERT INTO `user_interest` VALUES('aollero', 9);
INSERT INTO `user_interest` VALUES('aollero', 10);
INSERT INTO `user_interest` VALUES('aollero', 11);
INSERT INTO `user_interest` VALUES('aollero', 13);
INSERT INTO `user_interest` VALUES('aollero', 14);
INSERT INTO `user_interest` VALUES('aollero', 15);
INSERT INTO `user_interest` VALUES('demo', 2);
INSERT INTO `user_interest` VALUES('demo', 6);
INSERT INTO `user_interest` VALUES('demo', 7);
INSERT INTO `user_interest` VALUES('diegobus', 6);
INSERT INTO `user_interest` VALUES('diegobus', 14);
INSERT INTO `user_interest` VALUES('esenabre', 7);
INSERT INTO `user_interest` VALUES('fbalague', 2);
INSERT INTO `user_interest` VALUES('fbalague', 6);
INSERT INTO `user_interest` VALUES('fbalague', 7);
INSERT INTO `user_interest` VALUES('fbalague', 10);
INSERT INTO `user_interest` VALUES('geraldo', 2);
INSERT INTO `user_interest` VALUES('geraldo', 6);
INSERT INTO `user_interest` VALUES('geraldo', 7);
INSERT INTO `user_interest` VALUES('geraldo', 9);
INSERT INTO `user_interest` VALUES('geraldo', 10);
INSERT INTO `user_interest` VALUES('geraldo', 11);
INSERT INTO `user_interest` VALUES('geraldo', 13);
INSERT INTO `user_interest` VALUES('geraldo', 14);
INSERT INTO `user_interest` VALUES('geraldo', 15);
INSERT INTO `user_interest` VALUES('itxaso', 2);
INSERT INTO `user_interest` VALUES('itxaso', 6);
INSERT INTO `user_interest` VALUES('itxaso', 7);
INSERT INTO `user_interest` VALUES('itxaso', 9);
INSERT INTO `user_interest` VALUES('itxaso', 10);
INSERT INTO `user_interest` VALUES('itxaso', 11);
INSERT INTO `user_interest` VALUES('itxaso', 13);
INSERT INTO `user_interest` VALUES('itxaso', 14);
INSERT INTO `user_interest` VALUES('itxaso', 15);
INSERT INTO `user_interest` VALUES('ivan', 2);
INSERT INTO `user_interest` VALUES('ivan', 7);
INSERT INTO `user_interest` VALUES('ivan', 11);
INSERT INTO `user_interest` VALUES('ivan', 13);
INSERT INTO `user_interest` VALUES('ivan', 14);
INSERT INTO `user_interest` VALUES('olivier', 2);
INSERT INTO `user_interest` VALUES('olivier', 9);
INSERT INTO `user_interest` VALUES('olivier', 10);
INSERT INTO `user_interest` VALUES('olivier', 13);
INSERT INTO `user_interest` VALUES('root', 2);
INSERT INTO `user_interest` VALUES('root', 6);
INSERT INTO `user_interest` VALUES('root', 7);
INSERT INTO `user_interest` VALUES('root', 9);
INSERT INTO `user_interest` VALUES('root', 10);
INSERT INTO `user_interest` VALUES('root', 11);
INSERT INTO `user_interest` VALUES('root', 13);
INSERT INTO `user_interest` VALUES('root', 14);
INSERT INTO `user_interest` VALUES('root', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_lang`
--

DROP TABLE IF EXISTS `user_lang`;
CREATE TABLE `user_lang` (
  `id` varchar(50) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `about` text,
  `keywords` tinytext,
  `contribution` text,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `user_lang`
--

INSERT INTO `user_lang` VALUES('diegobus', 'en', 'ENG', 'ENG', 'ENG');
INSERT INTO `user_lang` VALUES('olivier', 'ca', 'CAT CAT CAT Cofundador de Platoniq, organización catalana de innovadores sociales y desarrolladores de softwareas', 'CAT CAT crowdfunding, copyleft, educación, innovación_socialas', 'CAT CAT CAT CAT as');
INSERT INTO `user_lang` VALUES('olivier', 'de', 'DOTCH! Cofundador de Platoniq, organización catalana de innovadores sociales y desarrolladores de software', 'DOTCH! crowdfunding, copyleft, educación, innovación_social', 'DOTCH! ');
INSERT INTO `user_lang` VALUES('paypal', 'ca', 'CAT CAT CAT Paypal Tester', 'CAT CAT CAT paypal', 'CAT CAT CAT Paypal Tester');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_login`
--

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `user` varchar(50) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `oauth_token` text NOT NULL,
  `oauth_token_secret` varchar(255) NOT NULL,
  PRIMARY KEY (`user`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `user_login`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_personal`
--

DROP TABLE IF EXISTS `user_personal`;
CREATE TABLE `user_personal` (
  `user` varchar(50) NOT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `contract_surname` varchar(255) DEFAULT NULL,
  `contract_nif` varchar(10) DEFAULT NULL COMMENT 'Guardar sin espacios ni puntos ni guiones',
  `contract_email` varchar(256) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL COMMENT 'guardar sin espacios ni puntos',
  `address` tinytext,
  `zipcode` varchar(10) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datos personales de usuario';

--
-- Volcar la base de datos para la tabla `user_personal`
--

INSERT INTO `user_personal` VALUES('acomunes', '', '', '', NULL, '', '', '', 'Madrid', 'España');
INSERT INTO `user_personal` VALUES('dcuartielles', '', '', '', NULL, '', '', '', 'Malm�', 'Suecia');
INSERT INTO `user_personal` VALUES('demo', 'Demo Goteo', NULL, '46649545W', NULL, '936924182', 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('diegobus', 'diego', NULL, 'x8562415k', NULL, '658125454', 'c/ calle 98, 1º 2º', '08000', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('domenico', '', '', '', NULL, '', '', '', 'Madrid', 'España');
INSERT INTO `user_personal` VALUES('ebaraonap', '', '', '', NULL, '', '', '', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('efoglia', '', '', '', NULL, '', '', '', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('esenabre', 'Enric Senabre Hidalgo', '', '46649545W', NULL, '932215515', 'Moscou 16, 1º 1ª', '08005', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('fbalague', 'Francesc Balagué', NULL, '46784299E', NULL, '655210167', 'Aribau, 64 entl. 1a', '08011', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('geraldo', '', '', '', NULL, '', '', '', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('goteo', 'Susana Noguero', NULL, 'G63306914', NULL, '654321987', 'C/ Montealegre, 5', '8001', 'Barcelona', 'España');
INSERT INTO `user_personal` VALUES('itxaso', '', '', '', NULL, '', '', '', 'Bilbao', 'España');
INSERT INTO `user_personal` VALUES('ivan', '', NULL, '', NULL, '', '', '', 'la garriga, barcelona', 'EspaÃ±a');
INSERT INTO `user_personal` VALUES('kaime', 'Jaume Alemany', '', '43103776M', NULL, '666666666', 'Aquí', '07141', 'Marratxí (Pueblo)', 'España');
INSERT INTO `user_personal` VALUES('olivier', 'Olivier Schulbaum', NULL, 'G63306914', NULL, '667031530', 'C/ Patata, 1', '00000', 'Palma de Mallorca', 'España');
INSERT INTO `user_personal` VALUES('paypal', 'Paypal Tester', NULL, '', NULL, '', '', '', '', 'EspaÃ±a');
INSERT INTO `user_personal` VALUES('root', 'Super administrador', NULL, '', NULL, '', '', '', '', 'EspaÃ±a');
INSERT INTO `user_personal` VALUES('susana', NULL, NULL, NULL, NULL, NULL, '', '', '', '');
INSERT INTO `user_personal` VALUES('tintangibles', '', '', '', NULL, '', '', '', 'Barcelona', 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_prefer`
--

DROP TABLE IF EXISTS `user_prefer`;
CREATE TABLE `user_prefer` (
  `user` varchar(50) NOT NULL,
  `updates` int(1) NOT NULL DEFAULT '0',
  `threads` int(1) NOT NULL DEFAULT '0',
  `rounds` int(1) NOT NULL DEFAULT '0',
  `mailing` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preferencias de notificación de usuario';

--
-- Volcar la base de datos para la tabla `user_prefer`
--

INSERT INTO `user_prefer` VALUES('esenabre', 1, 1, 1, 1);
INSERT INTO `user_prefer` VALUES('goteo', 1, 1, 1, 1);
INSERT INTO `user_prefer` VALUES('olivier', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_review`
--

DROP TABLE IF EXISTS `user_review`;
CREATE TABLE `user_review` (
  `user` varchar(50) NOT NULL,
  `review` bigint(20) unsigned NOT NULL,
  `ready` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ha terminado con la revision',
  PRIMARY KEY (`user`,`review`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Asignacion de revision a usuario';

--
-- Volcar la base de datos para la tabla `user_review`
--

INSERT INTO `user_review` VALUES('esenabre', 3, 0);
INSERT INTO `user_review` VALUES('goteo', 3, 0);
INSERT INTO `user_review` VALUES('goteo', 4, 1);
INSERT INTO `user_review` VALUES('olivier', 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` varchar(50) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  `node_id` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_FK` (`user_id`),
  KEY `role_FK` (`role_id`),
  KEY `node_FK` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `user_role`
--

INSERT INTO `user_role` VALUES('demo', 'caller', '');
INSERT INTO `user_role` VALUES('esenabre', 'checker', '');
INSERT INTO `user_role` VALUES('esenabre', 'translator', '');
INSERT INTO `user_role` VALUES('goteo', 'admin', '');
INSERT INTO `user_role` VALUES('goteo', 'caller', '');
INSERT INTO `user_role` VALUES('goteo', 'translator', '');
INSERT INTO `user_role` VALUES('iniciativa-joven', 'caller', '');
INSERT INTO `user_role` VALUES('olivier', 'checker', '');
INSERT INTO `user_role` VALUES('root', 'caller', '');
INSERT INTO `user_role` VALUES('', 'user', '*');
INSERT INTO `user_role` VALUES('aballesteros', 'user', '*');
INSERT INTO `user_role` VALUES('abenitez', 'user', '*');
INSERT INTO `user_role` VALUES('aceballos', 'user', '*');
INSERT INTO `user_role` VALUES('acomunes', 'user', '*');
INSERT INTO `user_role` VALUES('aeacaaoa', 'user', '*');
INSERT INTO `user_role` VALUES('afernandez', 'user', '*');
INSERT INTO `user_role` VALUES('afolguera', 'user', '*');
INSERT INTO `user_role` VALUES('agallastegi', 'user', '*');
INSERT INTO `user_role` VALUES('ahernandez', 'user', '*');
INSERT INTO `user_role` VALUES('airiarte', 'user', '*');
INSERT INTO `user_role` VALUES('aiueo', 'user', '*');
INSERT INTO `user_role` VALUES('amartinez', 'user', '*');
INSERT INTO `user_role` VALUES('amorales', 'user', '*');
INSERT INTO `user_role` VALUES('amuñoz', 'user', '*');
INSERT INTO `user_role` VALUES('aollero', 'user', '*');
INSERT INTO `user_role` VALUES('aramos', 'user', '*');
INSERT INTO `user_role` VALUES('arecio', 'user', '*');
INSERT INTO `user_role` VALUES('asanz', 'user', '*');
INSERT INTO `user_role` VALUES('asdf-asd', 'user', '*');
INSERT INTO `user_role` VALUES('avigara', 'user', '*');
INSERT INTO `user_role` VALUES('blozano', 'user', '*');
INSERT INTO `user_role` VALUES('bramos', 'user', '*');
INSERT INTO `user_role` VALUES('bsampayo', 'user', '*');
INSERT INTO `user_role` VALUES('caagon', 'user', '*');
INSERT INTO `user_role` VALUES('carlaboserman', 'user', '*');
INSERT INTO `user_role` VALUES('ccarrera', 'user', '*');
INSERT INTO `user_role` VALUES('ccriado', 'user', '*');
INSERT INTO `user_role` VALUES('cmartinez', 'user', '*');
INSERT INTO `user_role` VALUES('cphernandez', 'user', '*');
INSERT INTO `user_role` VALUES('cpiñero', 'user', '*');
INSERT INTO `user_role` VALUES('criera', 'user', '*');
INSERT INTO `user_role` VALUES('dcabo', 'user', '*');
INSERT INTO `user_role` VALUES('dcuartielles', 'user', '*');
INSERT INTO `user_role` VALUES('demo', 'user', '*');
INSERT INTO `user_role` VALUES('diegobus', 'user', '*');
INSERT INTO `user_role` VALUES('domenico', 'user', '*');
INSERT INTO `user_role` VALUES('ebai', 'user', '*');
INSERT INTO `user_role` VALUES('ebaraonap', 'user', '*');
INSERT INTO `user_role` VALUES('ebarrenetxea', 'user', '*');
INSERT INTO `user_role` VALUES('efoglia', 'user', '*');
INSERT INTO `user_role` VALUES('elopez', 'user', '*');
INSERT INTO `user_role` VALUES('emartinena', 'user', '*');
INSERT INTO `user_role` VALUES('emoñivas', 'user', '*');
INSERT INTO `user_role` VALUES('emuruzabal', 'user', '*');
INSERT INTO `user_role` VALUES('eportillo', 'user', '*');
INSERT INTO `user_role` VALUES('esenabre', 'user', '*');
INSERT INTO `user_role` VALUES('evandellos', 'user', '*');
INSERT INTO `user_role` VALUES('fandres', 'user', '*');
INSERT INTO `user_role` VALUES('fbalague', 'user', '*');
INSERT INTO `user_role` VALUES('fcingolani', 'user', '*');
INSERT INTO `user_role` VALUES('fcoddou', 'user', '*');
INSERT INTO `user_role` VALUES('ffreitas', 'user', '*');
INSERT INTO `user_role` VALUES('fingrassia', 'user', '*');
INSERT INTO `user_role` VALUES('gbento', 'user', '*');
INSERT INTO `user_role` VALUES('gbezanilla', 'user', '*');
INSERT INTO `user_role` VALUES('gbossio', 'user', '*');
INSERT INTO `user_role` VALUES('geraldo', 'user', '*');
INSERT INTO `user_role` VALUES('gnarros', 'user', '*');
INSERT INTO `user_role` VALUES('goteo', 'checker', '*');
INSERT INTO `user_role` VALUES('goteo', 'superadmin', '*');
INSERT INTO `user_role` VALUES('goteo', 'user', '*');
INSERT INTO `user_role` VALUES('gpedranti', 'user', '*');
INSERT INTO `user_role` VALUES('hcastro', 'user', '*');
INSERT INTO `user_role` VALUES('ibartolome', 'user', '*');
INSERT INTO `user_role` VALUES('ibelloso', 'user', '*');
INSERT INTO `user_role` VALUES('infoq', 'user', '*');
INSERT INTO `user_role` VALUES('iniciativa-joven', 'user', '*');
INSERT INTO `user_role` VALUES('iromero', 'user', '*');
INSERT INTO `user_role` VALUES('itxaso', 'user', '*');
INSERT INTO `user_role` VALUES('ivan', 'user', '*');
INSERT INTO `user_role` VALUES('jcanaves', 'user', '*');
INSERT INTO `user_role` VALUES('jclindo', 'user', '*');
INSERT INTO `user_role` VALUES('jcosta', 'user', '*');
INSERT INTO `user_role` VALUES('jfernandez', 'user', '*');
INSERT INTO `user_role` VALUES('jlespina', 'user', '*');
INSERT INTO `user_role` VALUES('jmatadero', 'user', '*');
INSERT INTO `user_role` VALUES('jmorer', 'user', '*');
INSERT INTO `user_role` VALUES('jmorquecho', 'user', '*');
INSERT INTO `user_role` VALUES('jnora', 'user', '*');
INSERT INTO `user_role` VALUES('jromero', 'user', '*');
INSERT INTO `user_role` VALUES('juliaen-caenaves', 'user', '*');
INSERT INTO `user_role` VALUES('julian-canaves', 'user', '*');
INSERT INTO `user_role` VALUES('julin-cnaves', 'user', '*');
INSERT INTO `user_role` VALUES('julinen-cnenaves', 'user', '*');
INSERT INTO `user_role` VALUES('kaime', 'user', '*');
INSERT INTO `user_role` VALUES('kventura', 'user', '*');
INSERT INTO `user_role` VALUES('lamorrortu', 'user', '*');
INSERT INTO `user_role` VALUES('lcarretero', 'user', '*');
INSERT INTO `user_role` VALUES('lemontero', 'user', '*');
INSERT INTO `user_role` VALUES('lfernandez', 'user', '*');
INSERT INTO `user_role` VALUES('lstalling', 'user', '*');
INSERT INTO `user_role` VALUES('maaban', 'user', '*');
INSERT INTO `user_role` VALUES('mamanovell', 'user', '*');
INSERT INTO `user_role` VALUES('mcidriain', 'user', '*');
INSERT INTO `user_role` VALUES('mduran', 'user', '*');
INSERT INTO `user_role` VALUES('mgarcia', 'user', '*');
INSERT INTO `user_role` VALUES('mgoikolea', 'user', '*');
INSERT INTO `user_role` VALUES('mgoñi', 'user', '*');
INSERT INTO `user_role` VALUES('mkekejian', 'user', '*');
INSERT INTO `user_role` VALUES('mmendez', 'user', '*');
INSERT INTO `user_role` VALUES('mmikirdistan', 'user', '*');
INSERT INTO `user_role` VALUES('mpalma', 'user', '*');
INSERT INTO `user_role` VALUES('mpedro', 'user', '*');
INSERT INTO `user_role` VALUES('mpedroche', 'user', '*');
INSERT INTO `user_role` VALUES('mramirez', 'user', '*');
INSERT INTO `user_role` VALUES('mraposo', 'user', '*');
INSERT INTO `user_role` VALUES('msoms', 'user', '*');
INSERT INTO `user_role` VALUES('nescala', 'user', '*');
INSERT INTO `user_role` VALUES('olivier', 'caller', '*');
INSERT INTO `user_role` VALUES('olivier', 'user', '*');
INSERT INTO `user_role` VALUES('paypal', 'user', '*');
INSERT INTO `user_role` VALUES('pepe', 'user', '*');
INSERT INTO `user_role` VALUES('pereztoril', 'user', '*');
INSERT INTO `user_role` VALUES('pgonzalo', 'user', '*');
INSERT INTO `user_role` VALUES('rcasado', 'user', '*');
INSERT INTO `user_role` VALUES('rfernandez', 'user', '*');
INSERT INTO `user_role` VALUES('ricardo-amaste', 'user', '*');
INSERT INTO `user_role` VALUES('root', 'admin', '*');
INSERT INTO `user_role` VALUES('root', 'checker', '*');
INSERT INTO `user_role` VALUES('root', 'root', '*');
INSERT INTO `user_role` VALUES('root', 'superadmin', '*');
INSERT INTO `user_role` VALUES('root', 'translator', '*');
INSERT INTO `user_role` VALUES('root', 'user', '*');
INSERT INTO `user_role` VALUES('rparramon', 'user', '*');
INSERT INTO `user_role` VALUES('rsalas', 'user', '*');
INSERT INTO `user_role` VALUES('rsteckelbach', 'user', '*');
INSERT INTO `user_role` VALUES('rtorres', 'user', '*');
INSERT INTO `user_role` VALUES('sgrueso', 'user', '*');
INSERT INTO `user_role` VALUES('smeschede', 'user', '*');
INSERT INTO `user_role` VALUES('snogales', 'user', '*');
INSERT INTO `user_role` VALUES('soritxori', 'user', '*');
INSERT INTO `user_role` VALUES('stena', 'user', '*');
INSERT INTO `user_role` VALUES('susana', 'user', '*');
INSERT INTO `user_role` VALUES('tbadia', 'user', '*');
INSERT INTO `user_role` VALUES('tguido', 'user', '*');
INSERT INTO `user_role` VALUES('tintangibles', 'user', '*');
INSERT INTO `user_role` VALUES('todojunto', 'user', '*');
INSERT INTO `user_role` VALUES('vsantiago', 'user', '*');
INSERT INTO `user_role` VALUES('vtorre', 'user', '*');
INSERT INTO `user_role` VALUES('yriquelme', 'user', '*');
INSERT INTO `user_role` VALUES('zaramari', 'user', '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_translate`
--

DROP TABLE IF EXISTS `user_translate`;
CREATE TABLE `user_translate` (
  `user` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL,
  `ready` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ha terminado con la traduccion',
  PRIMARY KEY (`user`,`project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Asignacion de traduccion a usuario';

--
-- Volcar la base de datos para la tabla `user_translate`
--

INSERT INTO `user_translate` VALUES('diegobus', 'fixie-per-tothom', 0);
INSERT INTO `user_translate` VALUES('efoglia', 'nodo-movil', 0);
INSERT INTO `user_translate` VALUES('esenabre', 'canal-alfa', 0);
INSERT INTO `user_translate` VALUES('esenabre', 'nodo-movil', 0);
INSERT INTO `user_translate` VALUES('esenabre', 'pliegos', 0);
INSERT INTO `user_translate` VALUES('geraldo', 'canal-alfa', 0);
INSERT INTO `user_translate` VALUES('goteo', '2c667d6a62707f369bad654174116a1e', 0);
INSERT INTO `user_translate` VALUES('goteo', 'dinou-publicacio-irregular', 0);
INSERT INTO `user_translate` VALUES('olivier', '2c667d6a62707f369bad654174116a1e', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_web`
--

DROP TABLE IF EXISTS `user_web`;
CREATE TABLE `user_web` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `url` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Webs de los usuarios' AUTO_INCREMENT=43 ;

--
-- Volcar la base de datos para la tabla `user_web`
--

INSERT INTO `user_web` VALUES(1, 'todojunto', 'www.todojunto.net');
INSERT INTO `user_web` VALUES(3, 'domenico', 'www.archtlas.com');
INSERT INTO `user_web` VALUES(4, 'ebaraonap', 'http://www.archinhand.com/');
INSERT INTO `user_web` VALUES(5, 'geraldo', 'http://www.canalalpha.net/');
INSERT INTO `user_web` VALUES(6, 'carlaboserman', 'http://www.robocicla.net');
INSERT INTO `user_web` VALUES(7, 'acomunes', 'http://movecommons.org');
INSERT INTO `user_web` VALUES(8, 'efoglia', 'http://www.proyectoliquido.com/Mobile_Node.htm');
INSERT INTO `user_web` VALUES(9, 'tintangibles', 'http://enlloc.net/hkp/w/');
INSERT INTO `user_web` VALUES(22, 'goteo', 'http://www.youcoop.org');
INSERT INTO `user_web` VALUES(25, 'olivier', 'http://www.youcoop.org/');
INSERT INTO `user_web` VALUES(27, 'esenabre', 'http://www.estigmergia.net/wiki/Especial:CambiosRecientes');
INSERT INTO `user_web` VALUES(30, 'diegobus', 'http://www.pelousse.com');
INSERT INTO `user_web` VALUES(34, 'root', 'http://');
INSERT INTO `user_web` VALUES(35, 'demo', 'http://tweetometro.org');
INSERT INTO `user_web` VALUES(36, 'demo', 'http://burnstation.net');
INSERT INTO `user_web` VALUES(37, 'demo', 'http://open-server.org');
INSERT INTO `user_web` VALUES(38, 'ivan', 'http://microstudi.net');
INSERT INTO `user_web` VALUES(39, 'fbalague', 'http://www.akoranga.org');
INSERT INTO `user_web` VALUES(41, 'paypal', 'http://asdf.com');
INSERT INTO `user_web` VALUES(42, 'iniciativa-joven', 'http://www.iniciativajoven.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `worthcracy`
--

DROP TABLE IF EXISTS `worthcracy`;
CREATE TABLE `worthcracy` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `amount` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Niveles de meritocracia' AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `worthcracy`
--

INSERT INTO `worthcracy` VALUES(1, 'Fanboy', 25);
INSERT INTO `worthcracy` VALUES(2, 'Patrocinador', 50);
INSERT INTO `worthcracy` VALUES(3, 'Apostador', 100);
INSERT INTO `worthcracy` VALUES(4, 'Abonado', 500);
INSERT INTO `worthcracy` VALUES(5, 'Visionario', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `worthcracy_lang`
--

DROP TABLE IF EXISTS `worthcracy_lang`;
CREATE TABLE `worthcracy_lang` (
  `id` int(2) unsigned NOT NULL,
  `lang` varchar(2) NOT NULL,
  `name` tinytext NOT NULL,
  UNIQUE KEY `id_lang` (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `worthcracy_lang`
--

INSERT INTO `worthcracy_lang` VALUES(1, 'en', 'Fanboy');
INSERT INTO `worthcracy_lang` VALUES(2, 'en', 'Sponsor');
INSERT INTO `worthcracy_lang` VALUES(3, 'en', 'Better');
INSERT INTO `worthcracy_lang` VALUES(4, 'en', 'Addict');
INSERT INTO `worthcracy_lang` VALUES(5, 'en', 'Guru');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__interest`
--

DROP TABLE IF EXISTS `__interest`;
CREATE TABLE `__interest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `description` text,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Intereses de los usuarios' AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `__interest`
--

INSERT INTO `__interest` VALUES(1, 'EducaciÃ³n', 'EducaciÃ³n', 5);
INSERT INTO `__interest` VALUES(2, 'EconomÃ­a solidaria', 'EconomÃ­a solidaria', 7);
INSERT INTO `__interest` VALUES(3, 'Empresa abierta', 'Empresa abierta', 1);
INSERT INTO `__interest` VALUES(4, 'FormaciÃ³n tÃ©cnica', 'FormaciÃ³n tÃ©cnica', 4);
INSERT INTO `__interest` VALUES(5, 'Desarrollo', 'Desarrollo', 6);
INSERT INTO `__interest` VALUES(6, 'Software', 'Software', 2);
INSERT INTO `__interest` VALUES(7, 'Hardware', 'Hardware', 3);
