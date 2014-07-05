-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-06-2014 a las 14:54:21
-- Versión del servidor: 5.5.23-log
-- Versión de PHP: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `blackfw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(600) DEFAULT NULL,
  `file` varchar(600) DEFAULT NULL,
  `client` varchar(600) DEFAULT NULL,
  `clicks` int(10) unsigned DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `title`, `file`, `client`, `clicks`, `views`, `enabled`, `date_created`, `date_modified`) VALUES
(1, '7 horas despues', '/Assets/uploads/banners/65.png', 'jugos del norte', 0, 0, 1, '2014-06-15 12:05:01', '2014-06-15 12:05:01'),
(2, 'Prueba de flash', '/Assets/uploads/banners/66.swf', 'Kiosco de la esquina', 0, 0, 1, '2014-06-15 12:40:41', '2014-06-15 12:40:41'),
(3, 'Partidos del mundial', '/Assets/uploads/banners/72.jpg', 'black', 0, 0, 1, '2014-06-16 10:39:40', '2014-06-16 10:39:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `black_entities`
--

DROP TABLE IF EXISTS `black_entities`;
CREATE TABLE IF NOT EXISTS `black_entities` (
`id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `properties` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
`id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `comments` text NOT NULL,
  `path` varchar(600) NOT NULL,
  `name` varchar(400) NOT NULL,
  `originalName` text,
  `type` varchar(20) NOT NULL,
  `forEntity` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `enabled` tinyint(4) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `title`, `comments`, `path`, `name`, `originalName`, `type`, `forEntity`, `date_created`, `date_modified`, `enabled`) VALUES
(3, '3.jpg', '', '/Assets/uploads/news/3.jpg', '3.jpg', '36ERm.jpg', 'image', NULL, '2014-06-08 23:01:53', '2014-06-08 23:01:53', 1),
(4, '4.jpg', '', '/Assets/uploads/news/4.jpg', '4.jpg', 'shutterstock_2432959.jpg', 'image', NULL, '2014-06-08 23:18:16', '2014-06-08 23:18:16', 1),
(5, '5.jpg', '', '/Assets/uploads/news/5.jpg', '5.jpg', 'shutterstock_7634536.jpg', 'image', NULL, '2014-06-08 23:20:16', '2014-06-08 23:20:16', 1),
(6, '6.jpg', '', '/Assets/uploads/news/6.jpg', '6.jpg', '6YzEs.jpg', 'image', NULL, '2014-06-08 23:25:09', '2014-06-08 23:25:09', 1),
(7, '7.jpg', '', '/Assets/uploads/news/7.jpg', '7.jpg', '8PHXo.jpg', 'image', NULL, '2014-06-08 23:25:18', '2014-06-08 23:25:18', 1),
(8, '8.jpg', '', '/Assets/uploads/news/8.jpg', '8.jpg', '6Oghc.jpg', 'image', NULL, '2014-06-08 23:28:40', '2014-06-08 23:28:40', 1),
(9, '9.jpg', '', '/Assets/uploads/news/9.jpg', '9.jpg', '8PHXo.jpg', 'image', NULL, '2014-06-08 23:29:05', '2014-06-08 23:29:05', 1),
(10, '10.jpg', '', '/Assets/uploads/news/10.jpg', '10.jpg', '1o7fw.jpg', 'image', NULL, '2014-06-08 23:30:00', '2014-06-08 23:30:00', 1),
(11, '11.png', '', '/Assets/uploads/news/11.png', '11.png', '6DnD4.png', 'image', NULL, '2014-06-08 23:30:44', '2014-06-08 23:30:44', 1),
(12, '12.gif', '', '/Assets/uploads/news/12.gif', '12.gif', '9ssCk.gif', 'image', NULL, '2014-06-08 23:32:12', '2014-06-13 23:32:39', 1),
(13, '13.png', '', '/Assets/uploads/news/13.png', '13.png', '6kICm.png', 'image', NULL, '2014-06-09 00:58:24', '2014-06-13 23:32:43', 1),
(14, '14.jpg', '', '/Assets/uploads/news/14.jpg', '14.jpg', '6YzEs.jpg', 'image', NULL, '2014-06-09 01:01:14', '2014-06-13 23:32:46', 1),
(15, '15.jpg', '', '/Assets/uploads/news/15.jpg', '15.jpg', '6mfaB.jpg', 'image', NULL, '2014-06-09 01:25:28', '2014-06-13 23:32:49', 1),
(16, '16.jpg', '', '/Assets/uploads/news/16.jpg', '16.jpg', '6YzEs.jpg', 'image', NULL, '2014-06-09 01:25:55', '2014-06-13 23:33:38', 1),
(17, '17.jpg', '', '/Assets/uploads/news/17.jpg', '17.jpg', '6Oghc.jpg', 'image', NULL, '2014-06-09 01:26:54', '2014-06-13 23:33:35', 1),
(18, '18.jpg', '', '/Assets/uploads/news/18.jpg', '18.jpg', '6mfaB.jpg', 'image', NULL, '2014-06-09 01:29:36', '2014-06-13 23:33:34', 1),
(19, '19.jpg', '', '/Assets/uploads/news/19.jpg', '19.jpg', '6mfaB.jpg', 'image', NULL, '2014-06-09 01:30:17', '2014-06-13 23:33:34', 1),
(20, '20.jpg', '', '/Assets/uploads/news/20.jpg', '20.jpg', '6YzEs.jpg', 'image', NULL, '2014-06-09 01:30:35', '2014-06-13 23:33:21', 1),
(21, '21.jpg', '', '/Assets/uploads/news/21.jpg', '21.jpg', '6YzEs.jpg', 'image', NULL, '2014-06-09 01:32:01', '2014-06-13 23:33:14', 1),
(22, '22.jpg', '', '/Assets/uploads/news/22.jpg', '22.jpg', '7KPFh.jpg', 'image', NULL, '2014-06-09 01:33:17', '2014-06-13 23:34:51', 1),
(23, '23.jpg', '', '/Assets/uploads/news/23.jpg', '23.jpg', '6Oghc.jpg', 'image', NULL, '2014-06-09 01:34:36', '2014-06-13 23:34:53', 1),
(24, '24.jpg', '', '/Assets/uploads/news/24.jpg', '24.jpg', '6Oghc.jpg', 'image', NULL, '2014-06-09 01:35:17', '2014-06-13 23:34:55', 1),
(25, '25.jpg', '', '/Assets/uploads/news/25.jpg', '25.jpg', '6mfaB.jpg', 'image', NULL, '2014-06-09 01:36:44', '2014-06-13 23:34:59', 1),
(26, '26.jpg', '', '/Assets/uploads/news/26.jpg', '26.jpg', '7KPFh.jpg', 'image', NULL, '2014-06-09 01:38:12', '2014-06-13 23:35:02', 1),
(27, '27.jpg', 'Una cosa lleva a la otra', '/Assets/uploads/news/27.jpg', '27.jpg', '6HDCc.jpg', 'image', NULL, '2014-06-09 01:40:49', '2014-06-13 23:35:04', 1),
(28, '28.jpg', '', '/Assets/uploads/news/28.jpg', '28.jpg', '7qN0F.jpg', 'image', NULL, '2014-06-09 01:47:04', '2014-06-13 23:35:08', 1),
(29, '29.png', '', '/Assets/uploads/news/29.png', '29.png', '6DnD4.png', 'image', NULL, '2014-06-09 01:48:07', '2014-06-13 23:35:11', 1),
(30, '30.jpg', '', '/Assets/uploads/news/30.jpg', '30.jpg', '6mfaB.jpg', 'image', NULL, '2014-06-09 01:49:01', '2014-06-13 23:35:15', 1),
(31, '31.jpg', '', '/Assets/uploads/news/31.jpg', '31.jpg', '6YzEs.jpg', 'image', NULL, '2014-06-09 01:49:32', '2014-06-13 22:09:37', 1),
(32, '32.jpg', '', '/Assets/uploads/news/32.jpg', '32.jpg', '6Oghc.jpg', 'image', NULL, '2014-06-09 01:52:27', '2014-06-13 23:34:25', 1),
(33, '33.jpg', '', '/Assets/uploads/news/33.jpg', '33.jpg', 'BPs4G.jpg', 'image', NULL, '2014-06-09 01:53:41', '2014-06-13 23:34:23', 1),
(34, '34.jpg', '', '/Assets/uploads/news/34.jpg', '34.jpg', '1o7fw.jpg', 'image', NULL, '2014-06-09 01:55:48', '2014-06-13 23:34:20', 1),
(35, '35.jpg', '', '/Assets/uploads/news/35.jpg', '35.jpg', '6mfaB.jpg', 'image', NULL, '2014-06-09 01:56:30', '2014-06-13 23:34:16', 1),
(36, '36.gif', '', '/Assets/uploads/news/36.gif', '36.gif', '9ssCk.gif', 'image', NULL, '2014-06-09 01:58:28', '2014-06-13 23:34:13', 1),
(37, '37.jpg', '', '/Assets/uploads/news/37.jpg', '37.jpg', '6Oghc.jpg', 'image', NULL, '2014-06-09 02:00:52', '2014-06-13 23:34:04', 1),
(38, '38.jpg', '', '/Assets/uploads/news/38.jpg', '38.jpg', '6mfaB.jpg', 'image', NULL, '2014-06-09 02:01:23', '2014-06-13 23:34:02', 1),
(39, '39.jpg', '', '/Assets/uploads/news/39.jpg', '39.jpg', '96ApY.jpg', 'image', NULL, '2014-06-09 02:04:12', '2014-06-13 23:32:10', 1),
(40, '40.png', '', '/Assets/uploads/news/40.png', '40.png', '6kICm.png', 'image', NULL, '2014-06-09 02:04:58', '2014-06-13 23:32:07', 1),
(41, '41.png', '', '/Assets/uploads/news/41.png', '41.png', 'Aur0f.png', 'image', NULL, '2014-06-09 02:09:03', '2014-06-13 23:32:06', 1),
(42, '42.jpg', '', '/Assets/uploads/news/42.jpg', '42.jpg', 'BPs4G.jpg', 'image', NULL, '2014-06-09 02:11:23', '2014-06-13 23:32:06', 1),
(43, '43.jpg', '', '/Assets/uploads/news/43.jpg', '43.jpg', 'fNFkG.jpg', 'image', NULL, '2014-06-09 17:56:01', '2014-06-13 23:31:52', 1),
(44, '44.jpg', '', '/Assets/uploads/news/44.jpg', '44.jpg', 'Atkou.jpg', 'image', NULL, '2014-06-09 18:14:12', '2014-06-13 23:37:10', 1),
(45, 'Esta imagen es de algo', 'SI, algo asi', '/Assets/uploads/news/45.jpg', '45.jpg', 'shutterstock_3235799.jpg', 'image', NULL, '2014-06-09 19:55:20', '2014-06-09 19:56:36', 1),
(46, '2.jpg', '', '/Assets/uploads/news/2.jpg', '2.jpg', '20140603_180618.jpg', 'image', NULL, '2014-06-11 00:37:39', '2014-06-13 23:35:49', 1),
(47, '2.jpg', '', '/Assets/uploads/news/2.jpg', '2.jpg', 'BimsR.jpg', 'image', NULL, '2014-06-11 11:12:03', '2014-06-13 23:35:53', 1),
(48, '48.jpg', '', '/Assets/uploads/news/48.jpg', '48.jpg', 'j4ON7.jpg', 'image', NULL, '2014-06-11 11:17:58', '2014-06-13 23:37:10', 1),
(49, '49.jpg', '', '/Assets/uploads/news/49.jpg', '49.jpg', 'biSXQ.jpg', 'image', NULL, '2014-06-11 11:21:42', '2014-06-13 23:37:10', 1),
(50, 'Erat neque convallis ligula', 'Suspendisse gravida, leo at iaculis sodales, erat neque convallis ligula, nec condimentum velit ante hendrerit tortor. Proin ut dui magna', '/Assets/uploads/news/50.jpg', '50.jpg', 'M6Iye.jpg', 'image', NULL, '2014-06-12 01:15:49', '2014-06-13 10:23:25', 1),
(51, 'Sed non diam enim. Integer tincidunt, velit ', 'Vivamus convallis, libero non tincidunt sollicitudin, erat est luctus ipsum, quis eleifend augue urna in sapien. Aliquam feugiat turpis ligula', '/Assets/uploads/news/51.jpg', '51.jpg', 'pB42b.jpg', 'image', NULL, '2014-06-12 01:18:27', '2014-06-13 10:23:06', 1),
(52, 'viverra nibh', 'ui vitae aliquam molestie, libero velit viverra nibh, sed elementum orci libero non leo. Suspendisse potenti. ', '/Assets/uploads/news/52.jpg', '52.jpg', 'V2Eiv.jpg', 'image', NULL, '2014-06-12 01:20:46', '2014-06-13 10:22:36', 1),
(53, 'Quisque facilisis dictum', 'Nunc et orci consectetur neque feugiat scelerisque vel at quam. Quisque facilisis dictum massa, a suscipit sapien iaculis vitae. Etiam mattis', '/Assets/uploads/news/53.jpg', '53.jpg', 'shutterstock_15085411.jpg', 'image', NULL, '2014-06-12 15:13:52', '2014-06-13 10:22:17', 1),
(54, 'Ajies', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum, nulla non semper accumsan, metus erat porttitor diam, nec dignissim orci turpis vel eros.', '/Assets/uploads/news/54.jpg', '54.jpg', 'shutterstock_2506356.jpg', 'image', NULL, '2014-06-12 17:11:39', '2014-06-13 10:21:22', 1),
(55, 'Jaque mate...', 'Hola que tal.. este texto es de prueba...', '/Assets/uploads/news/55.jpg', '55.jpg', 'shutterstock_853626.jpg', 'image', NULL, '2014-06-12 17:45:12', '2014-06-13 10:15:55', 1),
(56, '56.jpg', '', '/Assets/uploads/news/56.jpg', '56.jpg', 'shutterstock_17854477.jpg', 'unknown', NULL, '2014-06-14 00:25:22', '2014-06-14 00:25:22', 1),
(57, '57.jpg', '', '/Assets/uploads/news/57.jpg', '57.jpg', 'shutterstock_2432959.jpg', 'image', NULL, '2014-06-14 00:26:17', '2014-06-14 00:26:17', 1),
(58, '58.jpg', '', '/Assets/uploads/news/58.jpg', '58.jpg', 'shutterstock_2892778.jpg', 'image', NULL, '2014-06-14 00:33:14', '2014-06-14 00:33:14', 1),
(59, '59.jpg', '', '/Assets/uploads/news/59.jpg', '59.jpg', 'shutterstock_12040507.jpg', 'image', NULL, '2014-06-14 00:48:50', '2014-06-14 00:48:50', 1),
(60, '60.jpg', '', '/Assets/uploads/news/60.jpg', '60.jpg', 'shutterstock_17313070.jpg', 'image', NULL, '2014-06-14 01:20:36', '2014-06-14 01:20:36', 1),
(61, '61.jpg', '', '/Assets/uploads/news/61.jpg', '61.jpg', 'shutterstock_2599996.jpg', 'image', NULL, '2014-06-14 23:14:38', '2014-06-14 23:14:38', 1),
(62, '62.jpg', '', '/Assets/uploads/news/62.jpg', '62.jpg', 'DSCF8850.JPG', 'image', NULL, '2014-06-15 00:43:34', '2014-06-15 00:43:34', 1),
(63, '63.jpg', '', '/Assets/uploads/news/63.jpg', '63.jpg', 'DSCF8848.JPG', 'image', NULL, '2014-06-15 00:54:12', '2014-06-15 00:54:12', 1),
(64, '64.jpg', '', '/Assets/uploads/news/64.jpg', '64.jpg', 'DSCF8855.JPG', 'image', NULL, '2014-06-15 01:21:24', '2014-06-15 01:21:24', 1),
(65, '65.png', '', '/Assets/uploads/banners/65.png', '65.png', '7_hours_later.png', 'image', 'Banner', '2014-06-15 12:02:22', '2014-06-15 12:02:22', 1),
(66, '66.swf', '', '/Assets/uploads/banners/66.swf', '66.swf', 'example2.swf', 'flash', 'Banner', '2014-06-15 12:40:11', '2014-06-15 12:40:11', 1),
(67, '67.gif', '', '/Assets/uploads/news/67.gif', '67.gif', '01 - vtZWH.gif', 'image', 'News', '2014-06-16 00:04:20', '2014-06-16 00:04:20', 1),
(68, '68.jpg', '', '/Assets/uploads/news/68.jpg', '68.jpg', '4.jpg', 'image', 'News', '2014-06-16 00:05:29', '2014-06-16 00:05:29', 1),
(69, '69.jpg', '', '/Assets/uploads/news/69.jpg', '69.jpg', '123.jpg', 'image', 'News', '2014-06-16 00:07:06', '2014-06-16 00:07:06', 1),
(70, '70.jpg', '', '/Assets/uploads/news/70.jpg', '70.jpg', 'shutterstock_65725399.jpg', 'image', 'News', '2014-06-16 00:16:36', '2014-06-16 00:16:36', 1),
(71, '71.jpg', '', '/Assets/uploads/news/71.jpg', '71.jpg', 'shutterstock_18486571.jpg', 'image', 'News', '2014-06-16 00:17:05', '2014-06-16 00:17:05', 1),
(72, '72.jpg', '', '/Assets/uploads/banners/72.jpg', '72.jpg', '0011156634.jpg', 'image', 'Banner', '2014-06-16 10:39:24', '2014-06-16 10:39:24', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
`id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `images` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `enabled` tinyint(4) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `images`, `date_created`, `date_modified`, `enabled`) VALUES
(1, 'Fotos de minas', 'a:3:{i:0;s:5:"2.jpg";i:1;s:6:"25.jpg";i:2;s:6:"26.jpg";}', '2014-06-09 18:07:14', '2014-06-12 01:58:09', 1),
(2, 'fotos de memes', 'a:3:{i:0;s:6:"17.jpg";i:1;s:6:"25.jpg";i:2;s:6:"27.jpg";}', '2014-06-12 22:26:51', '2014-06-12 22:26:51', 1),
(3, 'Minas en bolas solamente....', 'a:4:{i:0;s:2:"52";i:1;s:2:"51";i:2;s:2:"50";i:3;s:2:"46";}', '2014-06-13 01:24:01', '2014-06-13 23:36:18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
`id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `parameters` text NOT NULL,
  `html` text NOT NULL,
  `pages` text,
  `placeholders` text NOT NULL COMMENT 'serialized',
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id`, `title`, `type`, `parameters`, `html`, `pages`, `placeholders`, `date_created`, `date_modified`, `enabled`) VALUES
(1, 'El chavo esta suelto', 'html', '', '<h1>ahosdhasoidha</h1>', '0', 'a:2:{i:0;s:10:"mainBanner";i:1;s:12:"bottomBanner";}', '2014-06-01 02:00:25', '2014-06-11 18:13:14', 0),
(2, 'JumboTron', 'html', '', '    <!-- Main jumbotron for a primary marketing message or call to action -->\r\n    <div class="jumbotron">\r\n      <div class="container">\r\n        <h1>HOLITAS, world!</h1>\r\n        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>\r\n        <p><a class="btn btn-primary btn-lg" role="button">Learn more »</a></p>\r\n      </div>\r\n    </div>', '0', 'a:1:{i:0;s:6:"footer";}', '2014-06-01 02:00:59', '2014-06-07 11:53:31', 1),
(3, 'Esto es el footer', 'html', '', 'ESTO VA AL FOOTERESTO VA AL FOOTERESTO VA AESTO VA AL FOOTERL FOOTER', '0', 'a:1:{i:0;s:6:"footer";}', '2014-06-07 10:57:16', '2014-06-07 15:35:04', 1),
(4, 'Galeria de prueba...', 'Gallery', '3', '', 'a:1:{i:0;s:4:"home";}', 'a:1:{i:0;s:22:"mainArticleRightBefore";}', '2014-06-11 19:02:52', '2014-06-16 10:45:39', 1),
(5, 'News Slider', 'NewsSlider', 'NewsSlider', '', 'a:1:{i:0;s:4:"home";}', 'a:1:{i:0;s:11:"mainArticle";}', '2014-06-14 20:41:20', '2014-06-14 23:15:09', 1),
(6, 'Banner Uno', 'Banner', '66', '', 'a:1:{i:0;s:4:"home";}', 'a:1:{i:0;s:21:"mainArticleRightAfter";}', '2014-06-15 12:06:50', '2014-06-15 12:46:45', 1),
(7, 'Banner En el medio', 'Banner', '72', '', 'a:1:{i:0;s:4:"home";}', 'a:1:{i:0;s:13:"beforeColumns";}', '2014-06-16 10:38:45', '2014-06-16 10:40:39', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `intro` text NOT NULL,
  `body` text NOT NULL,
  `section` varchar(30) NOT NULL,
  `image` varchar(700) NOT NULL,
  `images` text,
  `placeholder` varchar(30) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `body`, `section`, `image`, `images`, `placeholder`, `date_created`, `date_modified`, `enabled`) VALUES
(1, 'Narcotráfico: ex jefe de la policía de Santa Fe irá a juicio oral acusado de encubrir criminales', 'La Sala IV de la Cámara Federal de Casación Penal rechazó un recurso de queja presentado por la defensa. Investigan, también, si Hugo Tognoli había montado una red de comercialización de droga', 'La Sala IV de la Cámara Federal de Casación Penal rechazó un recurso de queja planteado por el ex jefe de la Policía de Santa Fe, Hugo Tognoli, imputado en una causa por presunto encubrimiento agravado, y ratificó su procesamiento, publicó el Centro de Información Judicial.\r\n\r\nLas actuaciones del juicio fueron elevadas en mayo pasado por el juez federal Francisco Miño, quien consideró válidos los argumentos del fiscal Walter Rodríguez.\r\n\r\nAdemás de la causa por supuesto encubrimiento agravado, Tognoli será juzgado por las amenazas a Norma Castaño, titular de la ONG Madres Solidarias.\r\n\r\nLos jueces Gustavo Hornos, Juan Carlos Gemignani y Mariano Hernán Borinsky resolvieron no hacer lugar al recurso de queja interpuesto por la defensa del ex titular de la Dirección General de Prevención y Control de Adicciones de la Provincia.\r\n\r\nLa Cámara Federal de Apelaciones de Rosario confirmó el procesamiento de Tognoli por el delito de encubrimiento agravado en concurso real con el de amenazas coactivas.\r\n\r\nAl ex jefe se lo investiga por haber prestado auxilio al "Tuerto" Mendoza, presuntamente vinculado a una red narco, al permitirle obtener una filmación policial que utilizó para amedrentar a Norma Castaño.\r\n\r\nLa sentencia de la Cámara de Casación penal fue firmada el pasado 4 de junio y ratifica el procesamiento que el 23 de diciembre pasado confirmó la Cámara Federal.\r\n\r\nLa Justicia Federal de Rosario investiga también si el ex comisario formaba parte de una empresa criminal conjunta, que contaba con la participación de al menos dos de sus subordinados, para la comercialización de drogas.', 'policiales', '/Assets/uploads/news/53.jpg', NULL, 'columnOne', '2014-06-07 01:31:21', '2014-06-12 15:14:08', 1),
(2, 'Venezuela: opositora María Corina Machado denunció que recibió amenazas de muerte', '"Dicen que atacarán a mi familia", alertó la ex diputada, acusada de "golpista" por el oficialismo', 'La líder opositora venezolana María Corina Machado afirmó este viernes que se presentará en la Fiscalía el próximo día 16 para "dar la cara" y declarar por su presunta implicación en un plan para asesinar al jefe de Estado, Nicolás Maduro, al tiempo que denunció que ha recibido amenazas de muerte.\r\n\r\n"Siempre he dado la cara y no dejaré está lucha hasta vencer, por lo tanto voy a acudir el lunes 16 de junio a la Fiscalía General de la República", declaró Machado a los periodistas durante una asamblea de ciudadanos en el este de Caracas.\r\n\r\nMachado fue citada, junto a otros políticos opositores, a comparecer ante la Fiscalía en calidad de testigo, tras ser acusada de un presunto delito "contra la independencia y la seguridad de la nación", así como de asociación para delinquir, previsto en la Ley contra la Delincuencia Organizada y Financiamiento al Terrorismo.\r\n\r\nCon esta acusación "quieren nuevamente aniquilarme física y moralmente", agregó.', 'nacionales', '/Assets/uploads/news/39.jpg', '/Assets/uploads/news/38.jpg', 'columnThree', '2014-06-07 02:32:20', '2014-06-09 02:04:41', 1),
(3, 'Muerte en la Ceamse: la Policía Federal inició un sumario interno por posible negligencia', 'Un suboficial habría mantenido un diálogo con Paula Adriana Giménez pero no le tomó los datos', 'Luego de que el secretario de Seguridad, Sergio Berni, ordenara revisar las cámaras de video de la zona de Retiro –donde empleados de la empresa Cliba dijeron haber visto "con vida" en un contenedor a Giménez, la mujer que apareció muerta en la planta III de la Cemase–, un suboficial de la Policía Federal admitió que encontró a una mujer en una situación similar a la descripta.\r\n\r\nSegún relató el agente, ante su consulta, la mujer le dijo que se había "peleado" con su familia. Y agregó: "Ya me voy a arreglar".\r\n\r\nVoceros del Ministerio de Seguridad dijeron a la agencia Télam que el efectivo reconoció ante sus superiores que ni siquiera la identificó. La familia de la joven, que padecía esquizofrenia, había denunciado su desaparición el 16 de mayo, después de que se ausentara del hotel donde paraban en el barrio de Once.\r\n\r\nEl agente se presentará a declarar ante el fiscal porteño que instruye la causa, Jorge Ballestero.\r\n\r\nEl jefe de la Policía Federal, comisario general Román Di Santo, ordenó a la superintendencia de Asuntos Internos de la fuerza que inicie un sumario interno para establecer si hubo algún tipo de negligencia en el accionar de este efectivo.', 'policiales', '/Assets/uploads/news/44.jpg', NULL, 'columnTwo', '2014-06-07 02:33:24', '2014-06-09 18:14:25', 1),
(4, 'El manual que puede cambiar el rumbo de la política en Uruguay', 'Luis Alberto Lacalle Pou se distingue de sus rivales. Lo logró con éxito en las elecciones internas, y ahora repetirá su fórmula ante su contrincante directo por la presidencia: Tabaré. Las claves del joven candidato', '"No voy a hablar mal nunca del otro candidato", eso es lo que repite como un karma Luis Alberto Lacalle Pou, el joven líder del Partido Nacional que sorprendió en las pasadas elecciones internas de su partido a Jorge Larrañaga, quien ahora se encamina a ser su compañero de fórmula.\r\n\r\nEsta semana, en diálogo con InfobaeTV, Lacalle Pou sorprendió con una declaración poco común, coherente con su "karma": "Trato de hablar de las cosas buenas de mi presidente y no de las malas, aunque tenga varias", señaló. "Me alegra que mi presidente sea reconocido en el extranjero", dijo el diputado cuyo padre también fue presidente de Uruguay entre 1990 y 1995. ¿Repetirá otra generación de Lacalle?\r\n\r\nSU PADRE FUE PRESIDENTE ENTRE 1990 Y 1995. ¿REPETIRÁ OTRA GENERACIÓN DE LACALLE?\r\nSin embargo, la manera en que el candidato -por otra parte, el que más votos acumuló en las internas teniendo en cuenta a los demás participantes de los otros partidos- se desenvolvió durante su campaña, no fue improvisada, sino producto de un amplio estudio.\r\n\r\nComo señala el diario El Observador, Lacalle Pou siguió un meticuloso plan programático, del cual no se despegó un minuto. Nunca cuestionó a su rival y compañero de partido, Larrañaga. Nunca criticó al presidente de la república, José Mujica. Y siempre fue "por la positiva", es decir, trató de mantener un mensaje de optimismo y propuestas para distinguirse de los demás.', 'politica', '/Assets/uploads/news/60.jpg', NULL, 'columnOne', '2014-06-07 12:28:38', '2014-06-14 01:23:53', 1),
(5, 'Operadores logísticos advierten "situación complicada" por alta inflación y paritarias', 'Desde la Cedol alertaron sobre la situación límite que atraviesa el sector. Apuntaron al aumento de costos y las negociaciones paritarias. Dicen que no están en condiciones de afrontar un 40% de ajuste como piden gremios', 'Desde la Cámara Empresaria de Operadores Logísticos (Cedl) advirtieron que sólo los combustibles llevan acumulados un incremento de más de 30% en el año, la mano de obra impacta con un aumento de 6% en los primeros cinco meses y hay que sumarle que durante el transcurso de junio se cerrarán las paritarias por encima del 30 por ciento.\r\n\r\nRubén Elías, director de Cedol señaló que "la situación está complicada desde finales del año pasado" y que los aumentos salariales que deberán afrontar "no dejan de ser un golpe duro".\r\n\r\n"Se está pidiendo un 40% de ajuste más un 20% para los choferes de larga distancia; vislumbramos claros problemas, nosotros no estamos en condiciones de dar ese aumento", afirmó.\r\n\r\nSegún alertaron los operadores logísticos el origen del problema que atraviesa el sector "es la inflación". "Cuesta recuperar el valor de los precios acordados en su momentos, estamos discutiendo precios todos los meses", con el propósito de que los precios de sus tarifas no pierdan valor, aseguró Elías en el programa Mundo Bulat, por Radio El Mundo.', 'nacionales', '/Assets/uploads/news/52.jpg', NULL, 'columnOne', '2014-06-07 13:00:53', '2014-06-12 01:20:49', 1),
(6, 'Caso Ciccone: la Asociación de Magistrados repudió las críticas de Boudou al juez Lijo', '"Por su investidura, tiene el deber de respetar la labor de la Justicia", aseguró Luis María Cabral, presidente de la entidad. En diálogo con Infobae opinó que la estrategia del vicepresidente es "farandulizar el proceso" y convertirlo en una causa mediática. El lunes Boudou enfrentará al juez en los tribunales', 'La Asociación de Magistrados repudió las declaraciones del vicepresidente Amado Boudou, luego de que el funcionario arremetiera contra el juez federal Ariel Lijo, quien lo citó a indagatoria el próximo lunes en el marco de la causa que investiga el salvataje de la ex Ciccone Calcográfica.\r\n\r\n"Como imputado tiene derecho pero como vicepresidente de un país está obligado a respetar determinados límites que tiene por su investidura", aseguró Luis María Cabral, presidente de la institución.\r\n\r\nEl jueves, durante el programa oficialista 6-7-8, Boudou señaló que "el juez Lijo se va al Mundial", por eso lo convocaba ahora a declarar. Cabral criticó la manera de expresarse del funcionario. "La descalificación no puede ser cursada por la vía de la farandulización y mucho menos pretender resolver mediáticamente esta cuestión".\r\n\r\nDesde la entidad que nuclea a los magistrados señalaron a Infobae la imperiosa necesidad de que los funcionarios públicos respeten la tarea de la Justicia. "Descalificar de manera personal al juez es una forma artera que debe ser desechada para alguien que ejerce un cargo en el Poder Ejecutivo", sentenció.\r\n\r\nCabral también cuestionó el pedido de Boudou para que sea transmitida en vivo la indagatoria. "Sabe que está prohibida", aseguró. El Código Procesal Penal establece en su artículo 204 que el sumario -es decir, las actuaciones del expediente- son públicas solamente para las partes y sus defensores, quienes las podrán examinar luego de la declaración indagatoria. En cambio, la investigación "siempre será secreto para los extraños (personas que no forman parte del proceso penal en cuestión)".\r\n\r\nAl ser consultado sobre el llamado a indagatoria del vicepresidente y su presencia el próximo lunes en los tribunales de Comodoro Py, Cabral señaló: "Lo importante acá es que se continúe el proceso como se debe y no se insista con la mediatización y la chicana".', 'politica', '/Assets/uploads/news/67.gif', NULL, 'columnTwo', '2014-06-07 13:02:02', '2014-06-16 00:04:24', 1),
(7, 'El juez Ariel Lijo rechazó la transmisión por TV de la declaración indagatoria de Boudou', 'Finalmente la Justicia rechazó el pedido del vicepresidente de que la declaración del próximo lunes sea transmitida en directo. Citó los artículos del Código Procesal que prevén que el proceso de instrucción es secreto', 'El caso Ciccone todos los días depara una novedad judicial. Este viernes, el juez federal Ariel Lijo respondió el pedido del vicepresidente para hacer pública su declaración indagatoria. El funcionario pretendía la transmisión en vivo de su encuentro con el magistrado, previsto para el próximo lunes a las 11.\r\n\r\n&#34;Respecto a la solicitud de que se permita la televisación en vivo de la declaración indagatoria, y en virtud a las previsiones del artículo 204 del Código Procesal Penal de la Nación y de los artículos 16 y 18 de la Constitución Nacional, no ha lugar&#34;, contestó Lijo en una resolución que fue publicada por el Centro de Información Judicial (CIJ).', 'politica', '', NULL, 'columnThree', '2014-06-07 13:02:46', '2014-06-07 13:02:46', 1),
(8, 'Holdouts: kirchneristas y varios opositores viajan a EEUU para respaldar la posición argentina', 'Una delegación integrada por diputados y senadores K, del Frente Renovador, del PRO y de UNEN volará mañana a los Estados Unidos. El objetivo es reunirse con sus pares norteamericanos para convencerlos de que apoyen al país en el juicio con los tenedores de bonos que no entraron en el canje', 'Un grupo de legisladores oficialistas y opositores viajará este domingo a Estados Unidos, donde mostrarán su respaldo a la posición argentina en el juicio que enfrenta el país con los holdouts.\r\n\r\nEste jueves se definirá si la Corte Suprema norteamericana toma el caso, lo rechaza o le pide una opinión al gobierno de Barack Obama.\r\n\r\nLa comitiva parlamentaria partirá este domingo y la intención de los legisladores es mantener reuniones con pares estadounidenses para explicarles la necesidad de respaldar la reestructuración de la deuda que realizó la Argentina en 2005.\r\n\r\nLa representación legislativa estará encabezada por el titular provisional del Senado, Gerardo Zamora, y por el presidente de la Cámara de Diputados, Julián Domínguez.\r\n\r\nLa delegación estará conformada por los jefes de los bloques de diputados y del Senado del oficialismo, Juliana Di Tullio y Miguel Ángel Pichetto, los titulares de la comisiones de Presupuesto, Roberto Feletti; de Relaciones Exteriores, Guillermo Carmona; y de Finanzas, Carlos Heller, y sus pares Omar Perotti, Eric Cacalgno y José Uñac.\r\n\r\nTambién forman parte de la comitiva el presidente de la comisión de Asuntos Constitucionales, Marcelo Fuentes, y Adolfo Rodríguez Saá.', 'politica', '/Assets/uploads/news/2.jpg', NULL, 'middleBottom', '2014-06-07 15:43:12', '2014-06-12 17:46:00', 1),
(9, 'Dos argentinos regalarán pelotas a niños de las favelas durante el Mundial', 'Con su ONG Revolución Pelota, Federico Pería y Matías Perrone recorrieron América Latina promoviendo la recuperación y el desarrollo de potreros. Los jóvenes hablaron con Infobae antes de irse a Brasil y compartieron su visión del fútbol como herramienta del cambio social', '"Fue en el año 2010, cuando pasadas las doce de la noche estábamos en una plaza de un barrio de Colombia, y de la nada aparecieron más de 30 chicos con arcos y una pelota", recuerda Federico Pería.\r\n\r\nAl compartir aquel momento, Federico y Matías tuvieron la convicción de que "la cancha de fútbol es un espacio de transformación donde los chicos aprenden, entre otras cosas, a vivir".\r\n\r\n"Esto debería pasar en todos los barrios de Latinoamérica. De ahí surgió la idea de un viaje en camioneta por todo el continente", explicaron a Infobae.\r\n\r\nTres años después, el sueño de estos dos jóvenes criados en la Provincia de Buenos Aires se convirtió en una realidad. Bajo el nombre de Revolución Pelota, repartieron más de 70 balones en diferentes potreros de Argentina, Bolivia, Perú, Ecuador y Chile.\r\n\r\n-Al llegar a los distintos lugares, ¿en qué medida pudieron comprobar lo necesario de su acción?\r\n\r\n-Enseguida nos íbamos dando cuenta de lo importante que es para los chicos que no tienen nada que alguien les regale una pelota. Algo tan básico y tan simple pero que a veces ni siquiera eso tienen.\r\n\r\n-Los más chicos tienen derecho a jugar y a estudiar pero muchas veces no tienen esa suerte, por las diferentes cosas que pasan en sus vidas.\r\n\r\n-¿Qué tipo de cambio permitió Revolución Pelota?\r\n\r\n-Muchas veces generás un cambio chiquito con una simple acción. Creemos que muchos cambios pequeños producen un cambio grande pero somos muy conscientes que tampoco estamos salvando al mundo ni mucho menos.\r\n\r\n-Hoy estamos ayudando a reconstruir un potrero en Villa Tesei y armando diferentes proyectos en Jujuy, Escobar y Buenos Aires, donde tratamos de generar un cambio social y un impacto en la comunidad a través del deporte.', 'nacionales', '/Assets/uploads/news/68.jpg', NULL, 'middleBottom', '2014-06-07 16:53:50', '2014-06-16 00:05:31', 1),
(10, 'La CEO de General Motors asegura que "no hay margen para bajar los precios" de los autos', 'Isela Constantini aseguró que no quieren "más suspensiones, pero tampoco queremos perder más plata de la que venimos perdiendo"', 'L CEO de General Motors Isela Constantini dijo que no hay "margen para bajar los precios" de los automóviles y afirmó que el Gobierno "tiene que evaluar" qué herramientas quiere usar y cómo aplicarlas para reactivar el sector.\r\n\r\n"Queremos vender más autos, no queremos tener suspensiones, pero tampoco queremos perder más plata de la que venimos perdiendo. Cada terminal tiene que ver dónde le aprieta más", expresó en una entrevista publicada hoy por el diario Perfil.\r\n\r\nConstantini sostuvo que "no tenemos márgenes para reducir precios en producción local. No sé cómo lo vamos a resolver. Hemos mandado una propuesta al Gobierno desde ADEFA, pero tenemos que ver qué decide hacer el Gobierno".\r\n\r\n"Herramientas siempre hay. El Gobierno tiene que evaluar qué herramientas quiere usar y como aplicarlas", expresó.\r\n\r\nEn ese sentido, manifestó que "se habló de un plan de financiación, era lo que el Gobierno venía hablando con nosostros" y afirmó que "no sabemos como vamos a avanzar. Hay muchas expectativas".\r\n\r\n"Se está hablando demasiado de qué va a pasar con los precios y los impuestos, y eso lo que termina haciendo es desacelerar la demanda de autos", expresó.', 'nacionales', '/Assets/uploads/news/57.jpg', NULL, 'mainArticle', '2014-06-07 16:59:07', '2014-06-14 00:26:35', 1),
(11, 'Secuestran un cargamento de 3 toneladas de marihuana en la Autopista Rosario-Santa Fe', 'La Policía Metropolitana incautó la droga tras tirotearse con los custodios del camión. Hay tres personas detenidas y más órdenes de captura. Allanamientos en Capital y el Conurbano', 'Tras una investigación de más de seis meses de duración, la Policía Metropolitana logró incautar un cargamento de tres mil kilos de marihuana y detener a parte de una banda de narcotraficantes de origen paraguayo, que vendían esa droga en la ciudad de Buenos Aires y el conurbano bonaerense.\r\n\r\nEl operativo se llevó a cabo esta mañana tras un procedimiento en el kilómetro 141 de la autopista Rosario Santa Fe, donde efectivos de la fuerza capitalina se tirotearon con los custodios del camión, quienes viajaban a bordo de un Volkswagen Surán. Tras el enfrentamiento, los custodios lograron fugarse, mientras que el conductor del camión fue detenido.\r\n\r\nSegún contó el comisario Enrique Villarroel, quien pertenece al Departamento de Investigaciones de la Policía Metropolitana, los teléfonos celulares de quienes viajaban a bordo del Surán habían sido intervenidos. Y, según se pudo establecer por las escuchas, los ocupantes del vehículo sabían que eran perseguidos por la policía.\r\n\r\nEn diálogo con el canal Todo Noticias, el uniformado comentó que los involucrados son "personas de nacionalidad paraguaya que ingresaban ilegalmente estupefacientes que iban a comercializarse en distintos barrios de la Capital Federal y en la provincia de Buenos Aires" y que fueron detectadas a través de llamadas telefónicas.\r\n\r\nLa investigación incluyó una serie de allanamientos en la Capital Federal, donde al menos tres personas fueron detenidas en el barrio de Almagro. Según indicó esta mañana el comisario, "todo se inició con una investigación conjunta con el Juzgado Federal número 9", a cargo de Luis Rodríguez. .\r\n\r\n"Se hizo un seguimiento desde Entre Ríos a un camión 608 Mercedes Benz que estaba cargado con marihuana. Al momento de la intercepción, los custodios del vehículo agredieron a la policía con armas y luego se dieron a la fuga. Hasta el momento hay cerca de los 3000 kilos de marihuana incautados", reveló.', 'policiales', '/Assets/uploads/news/58.jpg', NULL, 'mainBannerRight', '2014-06-07 17:00:57', '2014-06-14 00:33:18', 1),
(12, 'En 30 días, se iniciará el proceso de licitación de la obra del gasoducto', 'En el acto de la rúbrica del contrato de obra de la línea de 500 kilovoltios que unirá Ituzaingó (Corrientes) con Puerto Bastiani (Chaco), encabezado por el gobernador Juan Carlos Bacileff Ivanoff, se realizó además el anuncio de la obra del gasoducto cuyo proceso de licitación se realizará en unos 30 días.', 'Tras la alocución de los presentes, fue el jefe de Gabinete de Ministros de la Nación, Jorge Capitanich quien manifestó que el propio ministro de Planificación Federal Julio De Vido, instó a hacer público que “la cuestión asociada a la licitación del tramo final del gasoducto Nea-Noa, que cierra todo el sistema de Salta, Formosa, Chaco y Santa Fe, y que incluye la red troncal y las secundarias, conjuntamente con la ingeniería de obra para los tramos para las provincias de Misiones y Corrientes”.\r\n\r\nCon esta licitación, más las obras que ya se han licitado, y el inicio de ejecución de otras, será una inversión equivalente a 15.000 millones de pesos con la generación de 10.000 empleos directos e indirectos durante la ejecución de la obra. Es una obra extraordinaria para Chaco y la región.\r\n\r\nA modo de síntesis, Capitanich recordó que siempre hablaban con el ex presidente Néstor Kirchner y la Presidenta Cristina Fernández de Kirchner sobre las obras estratégicas para la el Chaco y la región. Así, recordó “la hidrovía Paraná-Paraguay hasta la confluencia del Paraguay que ha sido concluida, con la perspectiva de la extensión del contrato para el dragado, balizamiento y señalización del riacho de Barranqueras; el electroducto NEA-NOA que está totalmente concluido y en funcionamiento pleno; y ahora el gasoducto que es una obra clave, que uno siempre tuvo las expectativas de hacerlo”.\r\n\r\nEl Jefe de Gabinetes aseguró que la partida presupuestaria para la obra ya está. “De manera que el financiamiento y flujo está asegurado y previsto. Estas obras, según lo señalan los especialistas, se hacen rápido, seguramente para 2015, tendremos el gasoducto listo con la red secundaria”, manifestó.\r\n\r\nA su vez también señaló que se tiene el financiamiento con la Corporación Andina de Fomento (CAF), organismo “con el que se trabaja de una manera extraordinariamente positiva, porque son muy proclives a obras de infraestructura. Tenemos una ejecución prevista de 500 millones de dólares netos de desembolso en el transcurso de este año, que seguramente podremos ampliarla a 700”.\r\n\r\nEn ese contexto, destacó que con la presencia del presidente de la CAF, Enrique García, pueda venir en julio para suscribir convenios pendientes. Están interesados en un financiamiento complementario para las obras de todo el sistema industrial y comercial del puerto de Barranqueras.\r\n\r\nCapitanich mencionó la obra de extensión de fibra óptica de 51.000 kilómetros en Argentina, de los cuales 30.000 ya están ejecutados. En Chaco estará totalmente construido en el próximo trimestre, “e inclusive se está estableciendo un mecanismo de ampliación para hacer una última milla, con los cuales estamos aprobando un proyecto de inversión”. Señaló además que en el Chaco, “tiende a acelerarse la obra de la autovía de la ruta Nicolás Avellaneda en 2014 y 2015 para la finalizaciò0n del tramo de 42,5 kilómetros”.\r\n\r\n“Son obras que se llevan a cabo por la decisión política de la Presidenta de la Nación, Cristina Fernández de Kirchner”, señaló Capitanich y dijo que “la Presidenta tiene una profunda convicción de trabajar junto a las provincias argentinas para cumplir las metas de gobierno. No es sólo un tema de convicción sino un deber de la república ejecutar estas obras que mejoran la calidad de vida de los argentinos”.', 'nacionales', '/Assets/uploads/news/71.jpg', NULL, 'columnThree', '2014-06-07 17:02:20', '2014-06-16 00:17:09', 1),
(13, 'La guerrilla paraguaya del EPP lleva 70 días sin liberar a un rehén de 16 años', 'Arlan Fick está secuestrado desde el 2 de abril. Sólo 8 días después su familia pagó 550 mil dólares de rescate. Las autoridades no tienen rastros del menor', 'Arlan Fick fue secuestrado el pasado 2 de abril por el grupo guerrillero Ejército del Pueblo Paraguayo (EPP). Desde entonces el adolescente no fue liberado, aunque el 10 de abril se realizó el pago de 500 mil dólares por su liberación, más otros 50 mil en concepto de víveres para comunidades humildes de la zona norte. Así, Arlan lleva 70 días en cautiverio y las autoridades no encuentran respuesta al incumplimiento del acuerdo por parte de la organización.\r\n\r\nSegún consigna el periódico ABC, de Paraguay, el manual del EPP señala en una sección que se refiere el cobro del rescate: "Una vez cerrado el trato hay que proceder a cobrar. Traten de cobrar de una vez, deben ponerse duros. Con quien paga se cumple, sin vueltas, que entiendan eso... ".\r\n\r\nNo obstante, en los últimos dos meses, desde el pago del rescate, apenas se cumplió la primera parte de ese fragmento del manual, referida al cobro. La segunda, sobre la entrega de la víctima, todavía no fue cumplida.', 'nacionales', '/Assets/uploads/news/48.jpg', NULL, 'middleBottom', '2014-06-11 11:12:20', '2014-06-11 11:18:01', 1),
(14, 'El &#34;gol tecno&#34; y las cinco innovaciones del Mundial de Brasil', 'Además del sistema que le avisará a los árbitros si se convirtió un gol o no, los equipos tendrán a disposición una serie de dispositivos hasta ahora inéditas en las Copas del Mundo', 'El principal atractivo tecnológico en el Mundial Brasil 2014 será el sistema para comprobar electrónicamente si el balón cruza la línea de gol, pero no será la única innovación que afectará al campeonato más importante de selecciones nacionales.\r\n\r\nHay cinco nuevas tecnologías que ayudarán a jugadores, árbitros y aficionados durante la competición que empieza el jueves en San Pablo, cuando la selección brasileña se enfrente a Croacia en el estadio Arena Corinthians (20.00 GMT):\r\n\r\nAerosol evanescente\r\nCon el fin de evitar que los hombres de la barrera se adelanten durante el saque de una falta, los árbitros llevarán pequeños aerosoles con espuma evanescente. Un invento argentino que ya ganó terreno en Sudamérica y fue aprobado para la Copa del Mundo.', 'nacionales', '/Assets/uploads/news/49.jpg', NULL, 'middleBottom', '2014-06-11 11:21:53', '2014-06-11 11:21:53', 1),
(15, 'Día clave para la Argentina: la corte de EEUU define si trata el litigio con los holdouts', 'El máximo tribunal norteamericano se reunirá en privado hoy para determinar cómo responder a la apelación argentina por la decisión de un tribunal inferior que ordenó al país pagar más de 1.300 millones de dólares', 'Tribunales federales inferiores de Estados Unidos también ordenaron a la Argentina pagar esa cantidad, más intereses, a holdouts que compraron parte de la deuda impagada cuando la economía argentina se desplomó en 2001 y 2002 y acudieron a los tribunales en busca del pago completo.\r\n\r\nLos tenedores de 92% de la deuda acordaron en las reestructuraciones de deuda de 2005 y 2010 aceptar bonos de menor valor a cambio de pagos regulares.\r\n\r\nNo se prevé que los magistrados emitan una opinión hasta la próxima semana. El tribunal puede pedir información al gobierno federal o enviar el caso de vuelta a la corte federal de apelaciones de Nueva York en busca de más información sobre cómo interpretar leyes estatales norteamericanas. Aunque es muy poco probable, la Corte también puede tomar el caso o declinar escucharlo.\r\n\r\nArgentina advirtió que si la obligan a pagar esa deuda tendría que caer en una nueva mora. Pero algunos analistas disputan ese argumento y dicen que la Argentina puede hacer frente a los pagos a pesar de sus problemas económicos.\r\n\r\n&#34;Yo creo que Argentina puede mantener su solvencia si la Corte Suprema favorece a los acreedores y tiene que pagar. Desde el punto de vista macroeconómico, la capacidad de pago existe&#34;, dijo Alberto Ramos, analista especializado en Argentina de Goldman Sachs.\r\n\r\n&#34;Si las autoridades (argentinas) pudieran solucionar el asunto de los acreedores que quedan, se beneficiaría de un mayor acceso a recursos financieros más convencionales y estables tanto en el país como en el extranjero&#34;, agregó Ramos.', 'nacionales', '/Assets/uploads/news/50.jpg', NULL, 'columnTwo', '2014-06-12 01:16:21', '2014-06-12 01:16:21', 1),
(16, 'Rige una alerta por tormentas fuertes y granizo para la Ciudad', 'El Servicio Meteorológico prevé desde la madrugada abundante caída de agua, acompañada de ráfagas y caída de granizo. El fenómeno abarca además zonas de Buenos Aires, Santa Fe y Entre Ríos. Qué precauciones se deben tomar', 'El SMN emitió una alerta para el centro y este de Buenos Aires, sur de Entre Ríos, sur de Santa Fe, la Ciudad de Buenos Aires y La Plata, que rige hasta las 4 de la madrugada de hoy.\r\n\r\nEl organismo espera que comiencen a desarrollarse sobre el centro de Buenos Aires &#34;áreas de lluvias y tormentas, algunas localmente fuertes, que darán lugar en forma localizada a abundante caída de agua con valores que podrían superar los 80 milímetros&#34;.\r\n\r\nAdemás, las tormentas estarían acompañadas de &#34;ráfagas y caída de granizo&#34;.\r\n\r\nEl área de mal tiempo se extenderá luego a toda la zona de cobertura, mejorando hacia el final del jueves.\r\n\r\nRecomendaciones de la Ciudad\r\nComo es habitual, el gobierno porteño emitió una serie de consejos para que los vecinos se mantengan a salvo.\r\n\r\nLa Ciudad pidió no tirar basura en la calle y no circular por calles anegadas ni colocar macetas ni sillas de plástico. También aconsejó retirar las colocadas en ventanas o balcones que, por acción del viento, puedan ser arrastradas al vacío.\r\n\r\nLo mismo sugirió con tendederos y demás elementos, incluidos chapas, ladrillos y tirantes en obras en construcción.\r\n\r\nLa Ciudad hizo especial énfasis en no sacar residuos en caso de lluvias muy intensas para evitar que se tapen los sumideros.\r\n\r\nAdemás, recordó que no es conveniente trasladarse por zonas arboladas en caso de vientos fuertes o lluvias debido a la posible caída de ramas. Eso incluye el dejar autos debajo de árboles.', 'policiales', '/Assets/uploads/news/51.jpg', NULL, 'columnTwo', '2014-06-12 01:18:40', '2014-06-12 01:18:40', 1),
(17, 'Neymar hizo reaccionar a Brasil, que ahora empata con Croacia en el inicio del Mundial', 'Con un gol de Marcelo en contra, el combinado europeo se había puesto en ventaja, pero el delantero del Barcelona igualó para el "Scratch". Se juega en el Arena Corinthians de San Pablo en la apertura del Grupo A', 'La expectativa llegó a su fin cuando Brasil y Croacia inauguraron el inicio de la vigésima edición de la Copa del Mundo. Por el Grupo A, el pentacampeón y anfitrión del certamen abrió la cita ante el elenco europeo, que tuvo la notoria ausencia de Mario Mandzsukic.\r\n\r\nMás allá de las intenciones del conjunto de Luiz Felipe Scolari, el que generó la primera ocasión de peligro fue el combinado conducido por Niko Kovac. Una proyección de Ivan Perišić y un cabezazo de Ivica Olić amenazaron con enmudecer al Arena Corinthians de San Pablo.\r\n\r\nJustamente, el croata más incisivo del encuentro envió un punzante buscapié que sorprendió a Marcelo. La escasa reacción del lateral del Real Madrid hizo que la conquista enmudezca a los 65.000 espectadores que colmaron el estadio.', 'deportes', '/Assets/uploads/news/55.jpg', NULL, 'mainArticle', '2014-06-12 17:45:31', '2014-06-13 10:34:57', 1),
(18, 'Empleadas del fiscal Campagnoli denunciaron una campaña sucia ', 'En una carta, una treintena de mujeres que trabajaron con el funcionario que será enjuiciado tras investigar a Lázaro Báez desestimaron las versiones que lo asociaban a tratos misóginos', 'Más de 30 empleadas que trabajaron con José María Campagnoli en diferentes etapas de su carrera en los tribunales respaldaron con sus firmas al fiscal ante las acusaciones sobre presuntos destratos a las mujeres que surgieron en los últimos días. En una carta, desmintieron las denuncias de las que se hizo eco un matutino porteño y que circulan en redes sociales y volantes en momentos en que se desarrolla el jury en su contra.\r\n\r\n&#34;Sentimos necesario manifestarle por este medio nuestro enérgico repudio a lo que entendemos que integra una campaña iniciada como consecuencia del resultado de su comprometido trabajo investigativo&#34;, dice el mensaje dirigido al fiscal.\r\n\r\nEl colectivo aseguró que Campagnoli &#34;siempre tuvo un trato igualitario&#34; con ellas &#34;con respecto del resto de los empleados&#34; hombres. &#34;Recordamos como nota saliente el compañerismo y el desarrollo de lazos de afecto o amistad que trascendieron las relaciones laborales&#34;, añadieron.\r\n\r\nTambién afirmaron que &#34;fue respetuoso y gentil, colaborando con el desarrollo de las aptitudes, promoviendo y acompañando las opciones laborales que se presentaron&#34;. Destacaron, además, que a gran parte de ellas las promovió para cargos jerárquicos.\r\n\r\nLas mujeres terminaron la misiva deseando que el fiscal &#34;mantenga la fortaleza de siempre&#34; y con la aclaración de su consentimiento a que la nota tome estado público.\r\n\r\nEl proceso de enjuiciamiento que enfrenta el funcionario a instancias de la Procuración a cargo de Alejandra Gils Carbó motivó una convocatoria de agrupaciones y activistas de redes sociales para marchar el 18 a la sede del Ministerio Público, en Avenida de Mayo 760, bajo los lemas &#34;Basta de impunidad&#34; y &#34;Todos con Campagnoli&#34;.', 'politica', '/Assets/uploads/news/59.jpg', NULL, 'columnOne', '2014-06-14 00:49:07', '2014-06-14 00:49:07', 1),
(19, 'Las razones que tiene Irán para ayudar a Irak contra el avance de los grupos yihadistas', 'El presidente Hasan Rohani, con vínculos con el gobierno chiíta, ofreció asistencia ante la avanzada de Estado Islámico de Irak y el Levante. Los insurgentes ya rodean la ciudad de Bagdad', 'El presidente iraní Hasan Rohani dijo este sábado que está listo para prestar asistencia a Irak en su lucha contra los insurgentes sunitas de Estado Islámico de Irak y el Levante (EIIL), y descartó haber enviado tropas hasta el momento.\r\n\r\nSegún la cadena BBC Mundo, la posible colaboración responde a los estrechos lazos que unen a Irán con el gobierno iraquí, que llegó al poder después del derrocamiento del sunita Saddam Hussein. En efecto, ambos gobiernos pertenecen a la etnia chiíta.\r\n\r\n&#34;Si el gobierno de Irak nos solicita ayuda, podríamos proveer cualquier asistencia que la nación iraquí quisiera de nosotros en la lucha contra el terrorismo&#34;, aseguró Rohani durante una conferencia de prensa durante la conmemoración su primer año de mandato.\r\n\r\nIrak es un vecino y aliado crucial. Irán ha trabajado arduamente durante los últimos diez años para asegurar un gobierno pro Teherán en Bagdad. Cualquier amenaza al estatus quo sería un serio golpe a esos esfuerzos.\r\n\r\nSegún la BBC, hay informes creíbles que el máximo comandante de las fuerzas Quds de Irán, general Qassem Suleimani, se encuentra en Bagdad, ayudando a fortalecer las defensas de la capital y de la norteña ciudad sagrada de Samarra, y organizando y coordinando las milicias chiítas iraquíes que son leales a Irán.', 'politica', '/Assets/uploads/news/61.jpg', NULL, 'NewsSlider', '2014-06-14 23:14:52', '2014-06-14 23:14:52', 1),
(20, 'Chaco: más de 3.000 personas autoevacuadas por la crecida del río Paraná', 'Una gran cantidad de familias decidieron dejar sus hogares y son asistidas por las autoridades En Corrientes, unas 15 familias fueron desplazadas. En Santa Fe, el caudal creció menos, pero sigue la emergencia', 'En Chaco, Corrientes y Santa Fe se prevé que el nivel de crecida del río Paraná sea menor a la estimada a partir de la creciente del río Iguazú, por lo que la situación comienza a ser &#34;controlada&#34;. Sin embargo, en Chaco, más de 3.000 personas decidieron autoevacuarse y ya son asistidas. El gobernador interino chaqueño, Juan Carlos Bacileff Ivanoff, recorrió la zona afectada y afirmó que &#34;está garantizada la asistencia del gobierno provincial mientras dure la creciente, y una vez que pase el fenómeno vamos a iniciar la reconstrucción de lo afectado&#34;.\r\n\r\nLa mayoría de las personas autoevacuadas pertenecen a la municipalidad de Puerto Vilelas, a donde 345 familias se movilizaron desde diversos lugares de la costa sobre el riacho Barranqueras hasta el terraplén del cordón de defensa contra las inundaciones, la Escuela Primaria 417, el Centro Integrador Comunitario, entre otros predios.\r\n\r\nEn la zona de Antequeras hay 31 familias a la vera la ruta que lleva a la ciudad de Resistencia, adonde debieron trasladarse por el avance el río, mientras que en la isla de ese nombre son 53 las familias que decidieron quedarse allí, todavía sin ser afectadas, en las partes más altas del lugar.\r\n\r\nEn la ciudad de Corrientes ya suman más de 15 las familias evacuadas por la creciente del Paraná. Los equipos municipales trabajan en la contención a las familias afectadas, que fueron reubicadas en los centros de evacuación.\r\n\r\nLas evacuaciones se produjeron en los barrios La Tosquera, Quinta Ferré, y Santa Marta. El Intendente, Fabián Ríos, informó que &#34;la última información del INA (Instituto Nacional del Agua) mejoró la perspectiva, el pico se espera para el día lunes y estará en los 7.70 metros, por debajo de los 8 metros previstos originalmente; ojalá que esta proyección en caída se mantenga, así las familias tienen menos inconvenientes&#34;.\r\n\r\nEn Corrientes el pico llegará a las localidades de Itatí y Paso de la Patria con niveles menores a los previstos y, debido a las acciones preventivas de los municipios, la situación está &#34;controlada&#34;. El intendente de Itatí, Roger Terán, destacó que se realizó una tarea de &#34;evacuación preventiva&#34; de 45 familias por los niveles del río. Entre las tres localidades correntinas son 112 las familas que fueron alejadas de sus hogares por las acciones realizadas por los estados municipales.\r\n\r\nEn tanto, la crecida del río Paraná podría no alcanzar alturas superiores a los seis metros frente a la costa de la ciudad de Santa Fe. &#34;Esta nueva proyección cambia el impacto que puede tener la crecida en las zonas vulnerables&#34;, sostuvo el ministro de la Producción de la provincia, Carlos Fascendini, y destacó que se mantiene &#34;el plan de la construcción de módulos para los evacuados&#34;.\r\n\r\nEl diputado nacional correntino por el radicalismo, Gustavo Valdés, presentó un proyecto de ley para que se declare zona de desastre a las provincias afectadas por la creciente del río Paraná. Sería por el término de 180 días prorrogables por el Poder Ejecutivo Nacional.\r\n\r\nAsimismo requirió que la administración Central disponga una asignación especial de 500 millones de pesos destinada a brindar asistencia material inmediata a la población de las provincias de Corrientes, Misiones, Entre Ríos y Santa Fe.', 'nacionales', '/Assets/uploads/news/62.jpg', NULL, 'NewsSlider', '2014-06-15 00:43:38', '2014-06-15 00:43:38', 1),
(21, 'El Gobierno acusa a laboratorios por subas injustificadas en los precios de los medicamentos', 'Envió citaciones a cientos de empresas como forma de presión. Les endilga haber quebrado el acuerdo convenido en febrero. En mayo, el alza fue del 4%', 'Bajo la siempre presente amenaza de sanciones, el Ministerio de Economía avanzó en los últimos días contra los laboratorios por incrementar unilateralmente los precios de los remedios.\r\n\r\nA través de la Comisión Nacional de Defensa de la Competencia, la cartera de Axel Kicillof citó a cada uno de los laboratorios a una serie de audiencias en las que se les preguntó sobre el proceso de formación de precios. Según informa el diario La Nación, se les entregó un cuestionario que apunta a conocer si las empresas definieron aumentaron los medicamentos en el último mes, y si lo hicieron en connivencia con sus competidores.\r\n\r\nCon estas interpelaciones, el Gobierno busca esmerilar el margen de acción de las empresas del sector, las cuales desde que arrancó la devaluación a fines del año pasado lograron evadir en reiteradas oportunidades los controles del Ejecutivo.\r\n\r\nSegún consta en en el registro de las audiencias, el Palacio de Hacienda encontró que de los 45 laboratorios líderes- como Bayer, Roemmers, Boehringer Ingelheim, Pfizer, entre otros-, 40 incrementaron sus precios un 4% entre el 9 y 26 de mayo.\r\n\r\nEl dato pone de manifiesto que la tendencia alcista en el rubro no cesó, pese a que el Gobierno acordó en febrero retrotraer los precios al 31 de diciembre de 2013, para aplicar en marzo una suba del 4% en correspondencia a la variación de la que está sujeto &#34;componente importado&#34;. Antes, los incrementos oscilaban entre el 10 y el 50 por ciento, según denuncias de asociaciones que defienden a los consumidores.\r\n\r\nPero ese convenio de palabra finalmente no resultó efectivo para contener al lobby farmacéutico. En los primeros tres meses de este año, los precios de los remedios ya habían registrado subas de hasta el 20 por ciento, según pudo detectar Infobae en una nota previa. El alza se volvió a repetir el mes pasado, de acuerdo a los datos revelados por el Indec.\r\n\r\n&#34;En el rubro medicamentos, se ha observado una variación [de precios] bastante importante durante este mes de mayo. Lo digo con bastante insatisfacción porque hay un acuerdo con los principales productores de medicamentos, los laboratorios, que implica que no podían&#34;, protestó el viernes Kicillof en el marco de la presentación del IPCNu.\r\n\r\n&#34;Es un acuerdo voluntario, creo que no firmado, pero hecho con los principales referentes del sector. Y ese acuerdo fue incumplido, no con el Gobierno, sino con la gente&#34;, fustigó el ministro, quien aclaró que junto a la secretaría de Comercio Interior, que conduce Augusto Costa, &#34;no vamos a permitir abusos en un rubro tan sensible como el de los medicamentos&#34;.\r\n\r\nLas acusaciones entre las autoridades y las empresas son cruzadas. Desde el Ejecutivo califican que el consumidor está a merced (&#34;cautivo&#34;) de los laboratorios, ya que muchos de los fármacos no se pueden sustituir por otros productos. Así, no existe competencia y un ancla de referencia como ocurre en otros rubros de Precios Cuidados.\r\n\r\nEl sector privado, en cambio, asegura que no alcanzó el acuerdo de febrero, que carecía de fecha de vencimiento. Desde abril, los empresarios pidieron reuniones al Gobierno para volver a revisar los precios de los remedios de venta bajo receta. Como los encuentros jamás ocurrieron, se atrevieron a aplicar los aumentos de hecho, sin autorización previa.\r\n\r\nLos cuestionarios de Defensa de la Competencia recolectan información sensible sobre el mercado, como los costos de producción, las cadenas de valor de los laboratorios, la facturación y ganancias de cada empresa, distribución, descuentos y promociones de los medicamentos, entre otros aspectos. Como &#34;la información es poder&#34;, el requerimiento alimentó todo tipo de especulaciones sobre lo que hará el Gobierno con esos datos. Las versiones que circularon apuntan desde sanciones a las compañías, hasta la fijación unilateral de un esquema de precios.', 'deportes', '/Assets/uploads/news/63.jpg', NULL, 'NewsSlider', '2014-06-15 00:54:26', '2014-06-15 00:54:26', 1),
(22, 'Las inmobiliarias prevén que el mercado comenzará a recuperarse a fines de 2015', 'El presidente de la Cámara Inmobiliaria Argentina (CIA), Roberto Arévalo, pronosticó que a comienzos de 2016 se verá un repunte del &#34;desastre&#34; generado por el cepo al dólar', 'El presidente de la Cámara Inmobiliaria Argentina (CIA), Roberto Arévalo, presentó un nuevo índice de la entidad para medir la variación de precios de alquileres y ventas, y pronosticó que en la segunda mitad de 2015 o a comienzos de 2016 se recuperará el mercado.\r\n\r\nSegún Arévalo, el cepo cambiario significó un antes y después, pero el mercado estaba profundamente afectado desde antes, ya que el costo de un departamento de dos ambiente promedio es igual a 120 sueldos (diez años), mientras que a comienzos de la década de 1990 equivalía a 40 salarios. El valor de las propiedades se multiplicó por 20 desde 2001, mientras que el dólar oficial aumentó 8 veces, el dólar libre 11,5 veces, el costo de vida 9 veces y los salarios, 10.\r\n\r\nEl Colegio de Escribanos porteño (que contabiliza las escrituras mes a mes) reveló que en el primer cuatrimestre de 2014 se realizaron 8.930 operaciones, la cantidad más baja de la última década.\r\n\r\nEl vicepresidente de esa entidad, Armando Pepe, argumentó que esto se da porque &#34;falta crédito&#34;, y adelantó que las señales de repunte las envían las constructoras que empezaron a buscar terrenos para construir después de dos años de no hacerlo.\r\n\r\nSegún Pepe, después de las elecciones Primarias de agosto de 2015 comenzará a volver la certidumbre, ya que seguramente se aclarará el destino político y económico del país.\r\n\r\nLas constructoras ya están preparadas, y empezaron a comprar terrenos ya que los trámites de aprobación llevan entre 6 y 8 meses. Esto establecería que recién a fines de 2015 o principios de 2016 volverían las edificaciones.\r\n\r\nDatos del Gobierno porteño revelaron que los permisos para edificar cayeron un 58% en 2013, año en el que se registraron 713.188 metros cuadrados, casi un millón menos que los 1.705.137 de 2012. Fue el indicador más bajo desde 2003. Para Arévalo, de la CIA, esto está relacionado con que el 85% de las ventas son de departamentos usados.\r\n\r\nEsta situación preocupa a los constructores ya que antes de la baja en actividad, la cadena de producción y comercialización de inmuebles involucraba en la Ciudad a unas 20.000 empresas, aportaba u$s11.500 millones por año (14% del PBI) y generaba 130 mil empleos (el 8,2% del trabajo registrado privado).\r\n\r\nLa falta de crédito\r\n\r\nMario Gómez, economista y experto inmobiliario, argumentó que la poca oferta de préstamos hipotecarios genera que miles de porteños que no pueden comprar terminen con un alquiler. En la década del &#39;90, este tipo de créditos alcanzaba el 4% del PBI, en 2001 ese porcentaje subió a 6%, y en 2010 cayó al 1%.\r\n\r\nGómez explicó que hace 20 años, el 26% de las compras recibía aportes de créditos, pero que en la actualidad apenas el 6%. También comentó que los préstamos solían cubrir hasta el 80% de la operación, y ahora sólo el 35% en promedio. El último relevamiento realizado por el Colegio de Escribanos de la Ciudad reveló que, en promedio, una propiedad escriturada en abril de 2014 costó $747.109. Es decir, que una persona que quiere comprar necesita tener más de $260.000 ahorrados.\r\n\r\nPor otro lado, se informó que para conseguir un préstamo que financie el 70% de una vivienda es necesario contar con un salario promedio de $20.000, casi el triple que el sueldo promedio de la Ciudad, que es de $8.200.\r\n\r\n&#34;Que la actividad inmobiliaria haya caído como lo hizo significa que hay u$s3.500 millones que duermen en cajas de seguridad en vez de ser volcados a la economía de la Ciudad&#34;, afirmó Marcelo Satulovsky, un arquitecto que dirigió la creación del nuevo índice CIA.\r\n\r\nSatulovsky aseguró que hubo un &#34;antes y después&#34; del cepo cambiario implementado en octubre de 2011 para contener la fuga de divisas que generó una pérdida de reservas del Banco Central.', 'sociedad', '/Assets/uploads/news/64.jpg', NULL, 'NewsSlider', '2014-06-15 01:21:38', '2014-06-15 01:21:38', 1);
INSERT INTO `news` (`id`, `title`, `intro`, `body`, `section`, `image`, `images`, `placeholder`, `date_created`, `date_modified`, `enabled`) VALUES
(23, 'Argentina sufrió ante Bosnia, pero logró un valioso triunfo en su debut en el Mundial', 'La Selección se impuso 2-1 con un tanto en contra de Kolasinac Sead a los dos minutos y un golazo de Lionel Messi tras combinar con Higuaín. En el desarrollo del partido y por las graves fallas defensivas, Sabella hizo tres cambios de esquema. El ingreso de Fernando Gago fue clave para equilibrar las líneas', 'Argentina venció 2 a 1 a Bosnia en la apertura del Grupo F del Mundial Brasil 2014 en un partido en el que la Selección mostró dos caras: fue un equipo dubitativo y temeroso en el primer tiempo en el que no se sintió cómodo con el esquema 5-3-2 con el que salió al campo de juego, y otro más sincronizado y creído de su superioridad en el complemento, a partir de los cambios clave que hizo Alejandro Sabella.\r\n\r\nEl equipo nacional tardó apenas dos minutos en abrir el marcador ante Bosnia en el mítico estadio Maracaná mediante una jugada que comenzó con un tras un tiro libre ejecutado por Lionel Messi sobre el costado izquierdo, la pelota fue desviada en el área por Marcos Rojo y el mediocampista bosnio Kolasinac Sead se la llevó por delante para vencer su propia valla y poner en ventaja a la Selección de Alejandro Sabella.\r\n\r\nAl contrario de lo que se suponía, el gol no despertó el caudal de la Argentino sino que fue Bosnia el equipo que tomó el control del partido y puso en serio riesgo el triunfo parcial por las graves fallas en defensa y la falta de control en el mediocampo que ocuparon inicialmente Maxi Rodríguez, Javier Mascherano y Ángel Di María.\r\n\r\nEl equipo conducido por Safet Susic pudo llegar al empate con jugadas en la que expuso las desatenciones defensivas que engrandecieron la figura del arquero Sergio Romero, protagonista en el primer tiempo de una atajada clave.\r\n\r\nLos europeos tuvieron tres opciones claras para marcar en el primer tiempo pero fallaron en la definición. Argentina evidenció su desorden en la última línea y el entrenador tomó nota de tales problemas, al punto de que en el entretiempo hizo cambios que resultaron clave para el desarrollo del encuentro.', 'deportes', '/Assets/uploads/news/69.jpg', NULL, 'columnThree', '2014-06-16 00:07:09', '2014-06-18 14:52:40', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
`id` int(11) NOT NULL,
  `title` varchar(600) DEFAULT NULL,
  `link` varchar(600) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`, `date_created`, `date_modified`) VALUES
(1, 'Justin Bieber - Beauty And A Beat ft. Nicki Minaj [[[PROBANDO]]]', 'https://www.youtube.com/watch?v=Ys7-6_t7OEQ&index=3&list=RD4oYp3AQqG1U', '0000-00-00 00:00:00', '2014-06-01 00:35:46'),
(2, 'APRENDIENDO A DERIVAR DESDE CERO', 'https://www.youtube.com/watch?v=KFxryrwKm0c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Sarasa', 'https://www.youtube.com/watch?v=BX518lEPis8', '0000-00-00 00:00:00', '2014-06-01 00:38:14'),
(5, 'Sarasa', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Demi Lovato - Here We Go Again', 'https://www.youtube.com/watch?v=OMHHUsQRmvo', '0000-00-00 00:00:00', '2014-06-01 00:45:32'),
(7, 'Sarasasssssssss', NULL, '2014-05-19 23:58:12', '2014-05-19 23:58:12'),
(8, 'El chavo esta suelto', 'https://www.youtube.com/watch?v=he3DJLXbebI&index=11&list=RD4oYp3AQqG1U', '2014-05-20 00:01:07', '2014-05-20 00:01:07'),
(9, 'El chavo esta suelto', 'https://www.youtube.com/watch?v=he3DJLXbebI&index=11&list=RD4oYp3AQqG1U', '2014-05-20 00:04:30', '2014-05-20 00:04:30'),
(10, 'El chavo esta suelto', 'https://www.youtube.com/watch?v=he3DJLXbebI&index=11&list=RD4oYp3AQqG1U', '2014-05-20 00:05:37', '2014-06-01 17:04:14'),
(11, 'El chavo esta suelto', 'https://www.youtube.com/watch?v=he3DJLXbebI&index=11&list=RD4oYp3AQqG1U', '2014-05-20 00:05:52', '2014-05-20 00:05:52'),
(12, 'El chavo esta suelto', 'https://www.youtube.com/watch?v=he3DJLXbebI&index=11&list=RD4oYp3AQqG1U', '2014-05-20 00:06:08', '2014-05-20 00:06:08'),
(13, NULL, NULL, '2014-05-21 08:32:17', '2014-05-21 08:32:17'),
(17, 'a aaaaaaaaaaaa', '', '2014-06-01 01:45:05', '2014-06-01 01:45:05'),
(18, 'Justin Bieber - Beauty And A Beat ft. Nicki Minaj [[[PROBANDO]]]sssssssssssssss', 'https://www.youtube.com/watch?v=Ys7-6_t7OEQ&index=3&list=RD4oYp3AQqG1U', '2014-06-01 01:48:29', '2014-06-11 00:25:06'),
(19, 'Justin Bieber - Beauty And A Beat ft. Nicki Minaj [[[PROBANDO]]]', 'https://www.youtube.com/watch?v=Ys7-6_t7OEQ&index=3&list=RD4oYp3AQqG1U', '2014-06-01 01:48:37', '2014-06-01 01:48:37'),
(20, 'Justin Bieber - Beauty And A Beat ft. Nicki Minaj [[[PROBANDO]]]', 'https://www.youtube.com/watch?v=Ys7-6_t7OEQ&index=3&list=RD4oYp3AQqG1U', '2014-06-01 01:51:14', '2014-06-01 01:51:14'),
(21, 'Vanessa Hudgens Say Ok Music Video (Official with Zac Efron)', 'https://www.youtube.com/watch?v=F5VvvVxuKko', '2014-06-01 01:57:47', '2014-06-01 01:57:47'),
(22, 'Video de gatitos', 'https://www.youtube.com/watch?v=he3DJLXbebI&index=11&list=RD4oYp3AQqG1U', '2014-06-01 17:04:43', '2014-06-01 17:04:43'),
(23, 'probando...', '1234', '2014-06-11 00:17:28', '2014-06-11 00:17:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
 ADD PRIMARY KEY (`id`), ADD KEY `enabled` (`enabled`);

--
-- Indices de la tabla `black_entities`
--
ALTER TABLE `black_entities`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`id`), ADD KEY `enabled` (`enabled`), ADD KEY `type` (`type`), ADD KEY `forEntity` (`forEntity`);

--
-- Indices de la tabla `galleries`
--
ALTER TABLE `galleries`
 ADD PRIMARY KEY (`id`), ADD KEY `enabled` (`enabled`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
 ADD PRIMARY KEY (`id`), ADD KEY `enabled` (`enabled`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`), ADD KEY `section` (`section`), ADD KEY `placeholder` (`placeholder`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `black_entities`
--
ALTER TABLE `black_entities`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de la tabla `galleries`
--
ALTER TABLE `galleries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
