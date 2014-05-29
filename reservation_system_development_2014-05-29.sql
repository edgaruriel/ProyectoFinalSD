# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.20)
# Database: reservation_system_development
# Generation Time: 2014-05-29 16:45:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ips
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ips`;

CREATE TABLE `ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ips` WRITE;
/*!40000 ALTER TABLE `ips` DISABLE KEYS */;

INSERT INTO `ips` (`id`, `ip`, `time`, `created_at`, `updated_at`)
VALUES
	(22,'192.168.43.106',21,'2014-05-14 22:09:30','2014-05-14 22:11:16'),
	(23,'192.168.43.13',39,'2014-05-14 22:09:30','2014-05-14 22:10:27'),
	(24,'127.0.0.1',15,'2014-05-14 22:09:31','2014-05-29 15:34:16'),
	(25,'192.168.43.107',42,'2014-05-14 22:09:43','2014-05-14 22:10:57'),
	(26,'192.168.43.14',30,'2014-05-14 22:10:31','2014-05-14 22:32:16'),
	(27,'192.168.43.108',36,'2014-05-14 22:11:51','2014-05-14 22:12:35'),
	(28,'192.168.43.109',24,'2014-05-14 22:13:31','2014-05-14 22:44:26'),
	(29,'127.0.0.2',0,'2014-05-14 22:20:52','2014-05-29 15:43:58'),
	(30,'127.0.0.3',18,'2014-05-14 22:27:40','2014-05-29 15:44:20'),
	(31,'192.168.43.15',24,'2014-05-14 22:32:27','2014-05-14 22:37:14'),
	(32,'127.0.0.4',30,'2014-05-14 22:34:00','2014-05-29 15:54:12'),
	(33,'127.0.0.5',15,'2014-05-28 21:10:42','2014-05-29 16:09:39'),
	(34,'127.0.0.6',24,'2014-05-29 14:37:29','2014-05-29 16:14:35'),
	(35,'127.0.0.7',3,'2014-05-29 15:13:29','2014-05-29 16:14:41'),
	(36,'127.0.0.8',15,'2014-05-29 15:17:34','2014-05-29 16:14:52'),
	(37,'192.168.230.44',54,'2014-05-29 15:48:57','2014-05-29 16:09:39'),
	(38,'192.168.230.212',18,'2014-05-29 16:09:05','2014-05-29 16:14:43'),
	(39,'192.168.230.227',54,'2014-05-29 16:09:16','2014-05-29 16:11:57'),
	(40,'192.168.230.45',3,'2014-05-29 16:09:45','2014-05-29 16:11:07'),
	(41,'192.168.229.34',24,'2014-05-29 16:10:26','2014-05-29 16:11:49'),
	(42,'192.168.230.46',27,'2014-05-29 16:11:25','2014-05-29 16:16:04'),
	(43,'192.168.230.228',45,'2014-05-29 16:12:01','2014-05-29 16:15:51'),
	(44,'192.168.229.35',3,'2014-05-29 16:12:12','2014-05-29 16:15:54'),
	(45,'127.0.0.9',30,'2014-05-29 16:15:00','2014-05-29 16:30:59');

/*!40000 ALTER TABLE `ips` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reservations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reservations`;

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `seat_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `number` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;

INSERT INTO `reservations` (`id`, `user_id`, `seat_id`, `created_at`, `updated_at`, `ip`, `number`)
VALUES
	(297,NULL,19,'2014-05-29 15:34:11','2014-05-29 15:34:17','127.0.0.1',297),
	(298,NULL,29,'2014-05-29 15:34:12','2014-05-29 15:34:17','127.0.0.1',297),
	(299,NULL,39,'2014-05-29 15:34:12','2014-05-29 15:34:17','127.0.0.1',297),
	(300,NULL,59,'2014-05-29 15:34:12','2014-05-29 15:34:17','127.0.0.1',297),
	(301,NULL,68,'2014-05-29 15:34:13','2014-05-29 15:34:17','127.0.0.1',297),
	(319,NULL,46,'2014-05-29 15:43:58','2014-05-29 15:44:01','127.0.0.2',319),
	(320,NULL,65,'2014-05-29 15:43:59','2014-05-29 15:44:01','127.0.0.2',319),
	(321,NULL,72,'2014-05-29 15:44:00','2014-05-29 15:44:01','127.0.0.2',319),
	(322,NULL,4,'2014-05-29 15:44:19','2014-05-29 15:44:20','127.0.0.3',322),
	(330,NULL,25,'2014-05-29 15:53:37','2014-05-29 15:54:14','127.0.0.4',330),
	(331,NULL,23,'2014-05-29 15:53:41','2014-05-29 15:54:14','127.0.0.4',330),
	(332,NULL,67,'2014-05-29 15:53:51','2014-05-29 15:54:14','127.0.0.4',330),
	(333,NULL,98,'2014-05-29 15:53:53','2014-05-29 15:54:14','127.0.0.4',330),
	(334,NULL,40,'2014-05-29 15:54:00','2014-05-29 15:54:14','127.0.0.4',330),
	(339,NULL,18,'2014-05-29 16:09:31','2014-05-29 16:09:39','127.0.0.5',339),
	(340,NULL,27,'2014-05-29 16:09:31','2014-05-29 16:09:42','192.168.230.44',340),
	(341,NULL,28,'2014-05-29 16:09:32','2014-05-29 16:09:39','127.0.0.5',339),
	(342,NULL,66,'2014-05-29 16:09:34','2014-05-29 16:09:42','192.168.230.44',340),
	(343,NULL,60,'2014-05-29 16:09:34','2014-05-29 16:09:39','127.0.0.5',339),
	(344,NULL,41,'2014-05-29 16:09:36','2014-05-29 16:09:42','192.168.230.44',340),
	(345,NULL,12,'2014-05-29 16:09:38','2014-05-29 16:09:42','192.168.230.44',340),
	(347,NULL,94,'2014-05-29 16:09:41','2014-05-29 16:09:42','192.168.230.44',340),
	(356,NULL,73,'2014-05-29 16:11:00','2014-05-29 16:11:58','192.168.229.34',356),
	(357,NULL,54,'2014-05-29 16:11:04','2014-05-29 16:11:07','192.168.230.45',357),
	(359,NULL,44,'2014-05-29 16:11:27','2014-05-29 16:11:58','192.168.229.34',356),
	(361,NULL,1,'2014-05-29 16:11:58','2014-05-29 16:12:01','192.168.230.227',361),
	(364,NULL,87,'2014-05-29 16:14:30','2014-05-29 16:14:35','127.0.0.6',364),
	(365,NULL,97,'2014-05-29 16:14:31','2014-05-29 16:14:35','127.0.0.6',364),
	(367,NULL,85,'2014-05-29 16:14:34','2014-05-29 16:14:35','127.0.0.6',364),
	(368,NULL,52,'2014-05-29 16:14:39','2014-05-29 16:14:44','127.0.0.7',368),
	(369,NULL,62,'2014-05-29 16:14:40','2014-05-29 16:14:44','127.0.0.7',368),
	(370,NULL,63,'2014-05-29 16:14:41','2014-05-29 16:14:44','127.0.0.7',368),
	(371,NULL,74,'2014-05-29 16:14:42','2014-05-29 16:14:44','127.0.0.7',368),
	(372,NULL,81,'2014-05-29 16:14:48','2014-05-29 16:14:55','127.0.0.8',372),
	(374,NULL,92,'2014-05-29 16:14:50','2014-05-29 16:14:55','127.0.0.8',372);

/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20140430164348'),
	('20140430170855'),
	('20140430171117'),
	('20140430204411'),
	('20140508003641');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table seats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seats`;

CREATE TABLE `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `reserved` tinyint(1) DEFAULT NULL,
  `prereserved` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;

INSERT INTO `seats` (`id`, `row`, `number`, `reserved`, `prereserved`, `created_at`, `updated_at`)
VALUES
	(1,'A',1,1,0,'2014-04-30 16:49:03','2014-05-29 16:12:01'),
	(2,'A',2,0,0,'2014-04-30 16:49:03','2014-05-14 22:28:41'),
	(3,'A',3,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(4,'A',4,1,0,'2014-04-30 16:49:03','2014-05-29 15:44:20'),
	(5,'A',5,0,0,'2014-04-30 16:49:03','2014-05-29 15:32:59'),
	(6,'A',6,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(7,'A',7,0,0,'2014-04-30 16:49:03','2014-05-29 15:47:03'),
	(8,'A',8,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(9,'A',9,0,0,'2014-04-30 16:49:03','2014-05-08 00:11:57'),
	(10,'A',10,0,0,'2014-04-30 16:49:03','2014-05-29 14:44:40'),
	(11,'B',1,0,0,'2014-04-30 16:49:03','2014-05-29 16:09:24'),
	(12,'B',2,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:42'),
	(13,'B',3,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(14,'B',4,0,0,'2014-04-30 16:49:03','2014-05-29 15:44:35'),
	(15,'B',5,0,0,'2014-04-30 16:49:03','2014-05-29 15:41:29'),
	(16,'B',6,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(17,'B',7,0,0,'2014-04-30 16:49:03','2014-05-29 15:47:03'),
	(18,'B',8,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:39'),
	(19,'B',9,1,0,'2014-04-30 16:49:03','2014-05-29 15:34:17'),
	(20,'B',10,0,0,'2014-04-30 16:49:03','2014-05-14 22:04:39'),
	(21,'C',1,0,0,'2014-04-30 16:49:03','2014-05-14 22:12:59'),
	(22,'C',2,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(23,'C',3,1,0,'2014-04-30 16:49:03','2014-05-29 15:54:14'),
	(24,'C',4,0,0,'2014-04-30 16:49:03','2014-05-08 00:10:21'),
	(25,'C',5,1,0,'2014-04-30 16:49:03','2014-05-29 15:54:14'),
	(26,'C',6,0,0,'2014-04-30 16:49:03','2014-05-29 15:35:08'),
	(27,'C',7,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:42'),
	(28,'C',8,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:39'),
	(29,'C',9,1,0,'2014-04-30 16:49:03','2014-05-29 15:34:17'),
	(30,'C',10,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(31,'D',1,0,0,'2014-04-30 16:49:03','2014-05-29 16:09:22'),
	(32,'D',2,0,0,'2014-04-30 16:49:03','2014-05-29 15:31:47'),
	(33,'D',3,0,0,'2014-04-30 16:49:03','2014-05-29 15:32:59'),
	(34,'D',4,0,0,'2014-04-30 16:49:03','2014-05-29 16:10:58'),
	(35,'D',5,0,0,'2014-04-30 16:49:03','2014-05-29 16:15:41'),
	(36,'D',6,0,0,'2014-04-30 16:49:03','2014-05-29 16:10:16'),
	(37,'D',7,0,0,'2014-04-30 16:49:03','2014-05-29 15:53:36'),
	(38,'D',8,0,0,'2014-04-30 16:49:03','2014-05-14 22:36:04'),
	(39,'D',9,1,0,'2014-04-30 16:49:03','2014-05-29 15:34:17'),
	(40,'D',10,1,0,'2014-04-30 16:49:03','2014-05-29 15:54:14'),
	(41,'E',1,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:42'),
	(42,'E',2,0,0,'2014-04-30 16:49:03','2014-05-29 16:12:49'),
	(43,'E',3,0,0,'2014-04-30 16:49:03','2014-05-29 16:12:49'),
	(44,'E',4,1,0,'2014-04-30 16:49:03','2014-05-29 16:11:58'),
	(45,'E',5,0,0,'2014-04-30 16:49:03','2014-05-29 15:42:02'),
	(46,'E',6,1,0,'2014-04-30 16:49:03','2014-05-29 15:44:01'),
	(47,'E',7,0,0,'2014-04-30 16:49:03','2014-05-29 15:47:03'),
	(48,'E',8,0,0,'2014-04-30 16:49:03','2014-05-29 16:15:41'),
	(49,'E',9,0,0,'2014-04-30 16:49:03','2014-05-29 14:51:07'),
	(50,'E',10,0,0,'2014-04-30 16:49:03','2014-05-29 15:14:31'),
	(51,'F',1,0,0,'2014-04-30 16:49:03','2014-05-29 16:09:21'),
	(52,'F',2,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:44'),
	(53,'F',3,0,0,'2014-04-30 16:49:03','2014-05-29 16:09:20'),
	(54,'F',4,1,0,'2014-04-30 16:49:03','2014-05-29 16:11:07'),
	(55,'F',5,0,0,'2014-04-30 16:49:03','2014-05-29 15:41:29'),
	(56,'F',6,0,0,'2014-04-30 16:49:03','2014-05-29 16:16:01'),
	(57,'F',7,0,0,'2014-04-30 16:49:03','2014-05-29 16:10:58'),
	(58,'F',8,0,0,'2014-04-30 16:49:03','2014-05-29 16:10:56'),
	(59,'F',9,1,0,'2014-04-30 16:49:03','2014-05-29 15:34:17'),
	(60,'F',10,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:39'),
	(61,'G',1,0,0,'2014-04-30 16:49:03','2014-05-28 21:27:44'),
	(62,'G',2,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:44'),
	(63,'G',3,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:44'),
	(64,'G',4,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(65,'G',5,1,0,'2014-04-30 16:49:03','2014-05-29 15:44:01'),
	(66,'G',6,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:42'),
	(67,'G',7,1,0,'2014-04-30 16:49:03','2014-05-29 15:54:14'),
	(68,'G',8,1,0,'2014-04-30 16:49:03','2014-05-29 15:34:17'),
	(69,'G',9,0,0,'2014-04-30 16:49:03','2014-05-29 16:10:57'),
	(70,'G',10,0,0,'2014-04-30 16:49:03','2014-05-29 16:11:00'),
	(71,'H',1,0,0,'2014-04-30 16:49:03','2014-05-29 16:14:59'),
	(72,'H',2,1,0,'2014-04-30 16:49:03','2014-05-29 15:44:01'),
	(73,'H',3,1,0,'2014-04-30 16:49:03','2014-05-29 16:11:58'),
	(74,'H',4,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:44'),
	(75,'H',5,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(76,'H',6,0,0,'2014-04-30 16:49:03','2014-05-29 15:42:36'),
	(77,'H',7,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(78,'H',8,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(79,'H',9,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(80,'H',10,0,0,'2014-04-30 16:49:03','2014-05-14 22:04:39'),
	(81,'I',1,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:55'),
	(82,'I',2,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(83,'I',3,0,0,'2014-04-30 16:49:03','2014-04-30 16:49:03'),
	(84,'I',4,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(85,'I',5,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:35'),
	(86,'I',6,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(87,'I',7,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:35'),
	(88,'I',8,0,0,'2014-04-30 16:49:03','2014-05-08 00:49:52'),
	(89,'I',9,0,0,'2014-04-30 16:49:03','2014-05-14 22:04:39'),
	(90,'I',10,0,0,'2014-04-30 16:49:03','2014-05-14 22:04:39'),
	(91,'J',1,0,0,'2014-04-30 16:49:03','2014-05-29 15:19:16'),
	(92,'J',2,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:55'),
	(93,'J',3,0,0,'2014-04-30 16:49:03','2014-05-29 16:14:57'),
	(94,'J',4,1,0,'2014-04-30 16:49:03','2014-05-29 16:09:42'),
	(95,'J',5,0,0,'2014-04-30 16:49:03','2014-05-14 22:04:39'),
	(96,'J',6,0,0,'2014-04-30 16:49:03','2014-05-28 21:27:18'),
	(97,'J',7,1,0,'2014-04-30 16:49:03','2014-05-29 16:14:35'),
	(98,'J',8,1,0,'2014-04-30 16:49:03','2014-05-29 15:54:14'),
	(99,'J',9,0,0,'2014-04-30 16:49:03','2014-05-29 16:16:01'),
	(100,'J',10,0,0,'2014-04-30 16:49:03','2014-05-29 16:16:01');

/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;