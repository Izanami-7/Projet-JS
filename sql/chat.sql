-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2022 at 04:52 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `heure` datetime(6) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `heure`, `auteur`, `contenu`) VALUES
(1, '2022-03-17 09:57:30.000000', 'tata', 'cc'),
(2, '2022-03-17 09:58:00.000000', 'tbtb', 'shalut'),
(3, '2022-03-17 19:29:48.436727', 'iza', 'test'),
(34, '2022-03-31 13:55:22.214081', 'toto', 'cc'),
(35, '2022-03-31 14:09:25.133349', 'djhebde', 'dednej'),
(5, '2022-03-17 19:35:16.062945', 'izanami', 'test ultime'),
(6, '2022-03-17 19:37:55.360256', 'izanami', 'ddeded'),
(7, '2022-03-17 19:38:33.362949', 'izanami', 'dededed'),
(8, '2022-03-17 19:38:38.545369', 'izanami', 'dededed'),
(9, '2022-03-17 19:52:48.498692', 'ded', 'dezdze'),
(10, '2022-03-17 19:52:52.609122', 'zaeaze', 'aedaed'),
(47, '2022-03-31 16:26:48.677292', 'izanami', 'cc'),
(12, '2022-03-17 19:53:01.485264', 'adadaed', 'adaedaed'),
(13, '2022-03-17 19:53:06.905779', 'adazdeadaed', 'adaedaed'),
(36, '2022-03-31 14:21:41.215321', 'user1', 'cc'),
(15, '2022-03-17 19:54:21.449406', 'de', 'dede'),
(16, '2022-03-31 10:50:43.160606', 'izanami', 'delknze'),
(17, '2022-03-31 10:59:13.643733', 'oifj', 'zeiudheziudhzeiudzeui'),
(31, '2022-03-31 11:53:23.203157', 'izanami', 'dededed'),
(32, '2022-03-31 13:26:42.745657', 'cc', 'cc'),
(33, '2022-03-31 13:46:43.879144', 'izanami', 'deded'),
(37, '2022-03-31 14:21:51.917909', 'user2', 'salut toi'),
(38, '2022-03-31 14:26:49.150528', 'de', 'ded'),
(39, '2022-03-31 14:28:54.749362', 'ffr', 'dede'),
(40, '2022-03-31 14:35:46.686492', 'dede', 'dede'),
(41, '2022-03-31 14:42:41.517677', 'zdzadd', 'eded'),
(42, '2022-03-31 14:45:10.816935', 'dede', 'dede'),
(43, '2022-03-31 14:45:22.172787', 'izanami', 'dede'),
(44, '2022-03-31 14:47:23.441574', 'izanami', 'test1'),
(45, '2022-03-31 14:52:49.745227', 'izanami', 'jhbcujzebczebd'),
(46, '2022-03-31 14:53:00.684622', 'izanami', 'efhiebrf'),
(48, '2022-03-31 17:10:00.200735', 'izanami', 'de'),
(49, '2022-03-31 17:10:06.368471', 'izanami', 'de'),
(50, '2022-03-31 17:11:06.652695', 'izanami', 'fr'),
(51, '2022-03-31 17:13:00.788892', 'izanami', 'de'),
(52, '2022-03-31 17:18:50.354353', 'izanami', 'ert'),
(53, '2022-03-31 18:10:35.971850', 'izanami', 'de'),
(54, '2022-03-31 18:10:46.744090', 'izanami', 'de'),
(55, '2022-03-31 18:24:10.204908', 'izanami', 'azerty'),
(56, '2022-03-31 18:24:11.986744', 'izanami', 'azerty'),
(57, '2022-03-31 18:24:13.626299', 'izanami', 'azerty'),
(83, '2022-03-31 18:26:33.947699', 'izanami', 'de'),
(84, '2022-03-31 18:27:23.742530', 'izanami', 'kaks'),
(85, '2022-03-31 18:30:02.660521', 'izanami', 'aze'),
(86, '2022-03-31 18:31:57.027740', 'izanami', 'de'),
(87, '2022-03-31 18:40:50.748578', 'toto', 'cc'),
(88, '2022-03-31 18:42:39.693031', 'toto', 'ab'),
(89, '2022-03-31 18:46:19.020681', 'toto', 'ty'),
(90, '2022-03-31 18:49:27.491675', 'toto', 'ui'),
(91, '2022-03-31 18:54:02.513966', 'toto', 'salut'),
(92, '2022-03-31 18:54:17.856513', 'toto', 'top1'),
(93, '2022-03-31 20:28:41.406119', 'izanami', 'aqs'),
(94, '2022-03-31 20:28:56.742766', 'izanami', ''),
(95, '2022-03-31 20:29:01.356566', 'izanami', ''),
(96, '2022-03-31 20:29:41.702092', 'izanami', ''),
(97, '2022-03-31 20:29:46.394983', 'izanami', ''),
(98, '2022-03-31 20:29:54.687914', 'izanami', ''),
(99, '2022-03-31 20:47:42.820767', 'izanami', ''),
(100, '2022-03-31 20:51:58.815580', 'izanami', 'de'),
(101, '2022-03-31 20:52:02.855920', 'izanami', ''),
(102, '2022-03-31 20:52:04.889989', 'izanami', ''),
(103, '2022-03-31 20:52:10.260815', 'izanami', ''),
(104, '2022-03-31 20:52:39.586600', 'izanami', ''),
(105, '2022-03-31 21:12:59.174243', 'izanami', ''),
(106, '2022-03-31 21:29:34.351968', 'izanami', ''),
(107, '2022-03-31 22:02:10.857208', 'izanami', 'de'),
(108, '2022-03-31 22:10:28.911060', 'izanami', 'aziz'),
(109, '2022-03-31 22:11:15.452459', 'izanami', 'dede'),
(110, '2022-03-31 22:14:30.273965', 'izanami', 'cc'),
(111, '2022-03-31 22:15:18.645153', 'izanami', 'djend'),
(112, '2022-03-31 22:16:27.632911', 'izanami', 'sz'),
(113, '2022-03-31 22:38:20.780525', 'izanami', 'salut'),
(114, '2022-03-31 22:38:29.931609', 'izanami', 'cc'),
(115, '2022-03-31 22:38:49.904813', 'toto', 'salut toi'),
(116, '2022-03-31 22:39:02.748986', 'toto', 'yooo'),
(117, '2022-03-31 22:39:15.362947', 'toto', 'cc'),
(118, '2022-03-31 22:39:18.739588', 'izanami', 'toto'),
(119, '2022-03-31 22:44:59.331680', 'toto', 'salut izanami'),
(120, '2022-03-31 22:45:14.388043', 'izanami', 'salut toto'),
(121, '2022-03-31 23:08:24.452043', 'toto', 'Ã§a va ?'),
(122, '2022-03-31 23:26:54.137815', 'toto', 'oui et toi'),
(123, '2022-04-01 02:22:06.824156', 'izanami', 'ca va merci'),
(124, '2022-04-01 02:22:49.941019', 'toto', 'tfq ?'),
(125, '2022-04-01 02:23:07.661744', 'toto', '?'),
(126, '2022-04-01 02:23:31.711180', 'izanami', 'rien de spÃ©cial et toi'),
(127, '2022-04-01 11:34:30.016819', 'toto', 'cc'),
(128, '2022-04-01 11:42:15.359087', 'izanami', 'hey re'),
(129, '2022-04-01 11:42:43.268150', 'toto', 'Ã§a bosse Java ?'),
(130, '2022-04-01 14:35:49.638080', 'toto', 'de'),
(131, '2022-04-01 14:36:43.590454', 'izanami', 'cc'),
(132, '2022-04-01 14:38:02.606035', 'izanami', 'OUEee'),
(133, '2022-04-01 14:39:08.034290', 'izanami', 'cc'),
(134, '2022-04-01 14:42:30.126480', 'toto', 'cc'),
(135, '2022-04-01 14:43:38.279367', 'toto', 'cc'),
(136, '2022-04-01 14:44:07.374450', 'izanami', 'bien ou bien'),
(137, '2022-04-01 14:49:48.189279', 'izanami', 'cva et toi'),
(138, '2022-04-01 14:50:58.067061', 'izanami', 'cva et toi'),
(139, '2022-04-01 14:57:19.018553', 'izanami', 'cva merci'),
(140, '2022-04-01 15:00:40.370621', 'toto', 'de'),
(141, '2022-04-01 15:05:04.124839', 'izanami', 'bon Ã§a dit quoi la'),
(142, '2022-04-01 15:05:16.050926', 'toto', 'rien de spÃ©cial et toi'),
(143, '2022-04-01 15:14:20.044382', 'izanami', 'okok'),
(144, '2022-04-01 17:23:06.152166', 'izanami', 'de'),
(145, '2022-04-01 17:23:39.992879', 'izanami', 'ka'),
(146, '2022-04-01 18:05:55.553566', 'toto', 'quoi ?'),
(147, '2022-04-01 18:06:17.245070', 'izanami', '?'),
(148, '2022-04-01 18:08:38.570575', 'toto', 'oui ?'),
(149, '2022-04-01 18:08:50.915918', 'izanami', 'yo boi cva ou quoi ?'),
(150, '2022-04-01 18:09:00.780835', 'toto', 'cva et toi boi ?'),
(151, '2022-04-01 18:11:53.060394', 'izanami', 'Ã§a va merci'),
(152, '2022-04-01 18:12:04.203702', 'izanami', 'okkk'),
(153, '2022-04-01 18:12:13.948255', 'toto', 'reeeee dsl');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
