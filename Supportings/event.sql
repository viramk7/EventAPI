-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.25-0ubuntu0.16.04.2 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for event
CREATE DATABASE IF NOT EXISTS `event` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `event`;

-- Dumping structure for table event.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.admins: ~0 rows (approximately)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
REPLACE INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$YY9E/89gp6KxYv/1Lm93R.c1RroixVXfQZiP55LDTwFIyYT/ZR12O', 'cJftqVrvC8xMqPZ91T7e1uCgYAF7t0ml6tlTDjEynmX5Zn9I3Ygt7zIhOtNk', '2019-01-16 07:45:19', '2019-01-16 07:45:19');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping structure for table event.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venue_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `custom_enty` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.events: ~34 rows (approximately)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
REPLACE INTO `events` (`id`, `venue_id`, `name`, `start_date`, `start_time`, `end_date`, `end_time`, `discription`, `cost`, `custom_enty`, `status`, `created_at`, `updated_at`) VALUES
	(1, 4, 'Winter Wine Tastinggggg', 'Oct 27, 2018', '05.00 PM', 'Oct 27, 2018', '7.00 PM', 'Join us for ourexclusive one time events', '100', '1', '1', '2019-01-17 10:52:46', '2019-01-17 10:52:46'),
	(2, 4, 'Winter Wine Tastinggggg', 'Oct 27, 2018', '05.00 PM', 'Oct 27, 2018', '7.00 PM', 'Join us for ourexclusive one time events', 'FREE', '1', '1', '2019-01-17 10:53:06', '2019-01-17 10:53:06'),
	(3, 4, 'Karnavati dinner and dance', 'Jan 17, 2023', '6.00 PM', 'Jan 17, 2019', '9.00 PM', 'this is the test event', 'FREE', '1', '1', '2019-01-17 10:55:08', '2019-01-17 10:55:08'),
	(4, 4, 'flower event', 'Jan 17, 2019', '6.00 PM', 'Jan 19, 2019', '9.00 PM', 'this is the test event', 'FREE', '1', '1', '2019-01-17 10:57:15', '2019-01-17 10:57:15'),
	(5, 4, 'test sdfsdf', 'Jan 17, 2019', '6.00 PM', 'Jan 18, 2019', '9.00 PM', 'sdfsdfdsf', 'FREE', '1', '1', '2019-01-17 11:02:15', '2019-01-17 11:02:15'),
	(6, 4, 'sdfds', '2019-01-17T11:03:09.769Z', '6.00 PM', '2019-01-18T11:03:11.000Z', '9.00 PM', 'dsfdsfdsf', 'FREE', '1', '1', '2019-01-17 11:03:49', '2019-01-17 11:03:49'),
	(7, 4, 'sadasdasd', '2019-01-17 04:43:32', '6.00 PM', '2019-01-18 04:43:35', '9.00 PM', 'asdasd asdas', 'FREE', '1', '1', '2019-01-17 11:13:59', '2019-01-17 11:13:59'),
	(8, 4, 'dsfdsfdsfsdf', 'Jan 19, 2023', '6.00 PM', 'Mar 19, 2019', '9.00 PM', 'sdfdsf', 'FREE', '1', '1', '2019-01-17 12:06:18', '2019-01-17 12:06:18'),
	(9, 4, 'sdfdsfsdfdsfsd', 'Jan 19, 2019', '21 : 59 pm', 'Jan 20, 2019', '16 : 59 pm', 'sdfs sdfsdfdsf', 'FREE', '1', '1', '2019-01-18 05:32:29', '2019-01-18 05:32:29'),
	(10, 4, 'sdfdsf', 'Jan 18, 2019', '11 : 13 am', 'Jan 18, 2019', '11 : 13 am', 'sdfdsfdsf', 'FREE', '1', '1', '2019-01-18 05:43:40', '2019-01-18 05:43:40'),
	(11, 4, 'dfsf', 'Jan 18, 2019', '04:49 pm', 'Jan 18, 2019', '04:49 pm', 'sfds', 'FREE', '1', '1', '2019-01-18 11:21:27', '2019-01-18 11:21:27'),
	(12, 4, 'test event name', 'Jan 18, 2019', '05:06 pm', 'Jan 18, 2019', '05:06 pm', 'dsfdsf', 'FREE', '1', '1', '2019-01-18 11:37:18', '2019-01-18 11:37:18'),
	(13, 4, 'xcv', 'Jan 18, 2019', '05:09 pm', 'Jan 18, 2019', '05:09 pm', 'xcvxvxcv', 'FREE', '1', '1', '2019-01-18 11:40:08', '2019-01-18 11:40:08'),
	(14, 4, 'sdfdsfds', 'Jan 21, 2019', '12:09 pm', 'Jan 21, 2019', '12:09 pm', 'sdfsdf', 'FREE', '1', '1', '2019-01-21 06:40:08', '2019-01-21 06:40:08'),
	(15, 18, 'music event with dance', 'Jan 22, 2019', '12:13 pm', 'Jan 22, 2019', '12:13 pm', 'this is the test description', 'FREE', '1', '1', '2019-01-21 06:44:23', '2019-01-21 06:44:23'),
	(16, 18, 'Flower show', 'Jan 21, 2019', '02:11 pm', 'Jan 23, 2019', '02:11 pm', 'this is the test description', 'FREE', '1', '1', '2019-01-21 06:45:42', '2019-01-21 06:45:42'),
	(17, 19, 'Annual painting competition', 'Jan 24, 2019', '12:48 pm', 'Feb 24, 2019', '12:48 pm', 'Annual painting competition with food and gifts. please joining asap.', 'FREE', '1', '1', '2019-01-21 07:41:29', '2019-01-21 07:41:29'),
	(18, 19, 'Weekly Cook Event', 'Jan 21, 2019', '12:48 pm', 'Jan 26, 2019', '12:48 pm', 'Please join us weekly cook event. we can give more prices with food.', 'FREE', '1', '0', '2019-01-21 07:43:06', '2019-01-21 07:43:06'),
	(19, 19, 'Book seminar at perish New York memory hall', 'Jan 21, 2019', '12:48 pm', 'Jan 21, 2019', '03:48 pm', 'Opening book seminar asap. join as and follow our facebook page', 'FREE', '1', '0', '2019-01-21 07:44:26', '2019-01-21 07:44:26'),
	(20, 19, 'Flowe show event', 'Jan 21, 2019', '01:21 pm', 'Jan 23, 2019', '01:21 pm', 'Annual flower show with more events', 'FREE', '1', '1', '2019-01-21 07:53:11', '2019-01-21 07:53:11'),
	(21, 19, 'Crazy Colour Event', 'Jan 21, 2019', '01:20 pm', 'Jan 24, 2023', '01:20 pm', 'Crazy colour event with multiple countries', 'FREE', '1', '1', '2019-01-21 07:55:26', '2019-01-21 07:55:26'),
	(22, 19, 'Candle dinner', 'Jan 21, 2019', '02:27 pm', 'Jan 22, 2019', '02:27 pm', 'Candle dinner with dancing event', 'FREE', '1', '1', '2019-01-21 08:59:55', '2019-01-21 08:59:55'),
	(23, 19, 'Fashion event', 'Jan 21, 2019', '03:17 pm', 'Jan 23, 2019', '03:17 pm', 'Fashion event organize by karnavati venue', 'FREE', '1', '1', '2019-01-21 09:48:16', '2019-01-21 09:48:16'),
	(24, 24, 'Paperpride', 'Dec 20, 2019', '02:00 pm', 'Jan 21, 2019', '05:35 pm', 'Glad to inform you this is one of the best workshop of paperpride', 'FREE', '1', '1', '2019-01-21 12:22:22', '2019-01-21 12:22:22'),
	(25, 19, 'Flower event', 'Jan 23, 2019', '07:46 pm', 'Jan 26, 2019', '10:43 pm', 'this is the test description', 'FREE', '1', '1', '2019-01-21 13:14:52', '2019-01-21 13:14:52'),
	(26, 19, 'heritage venue event', 'Jan 21, 2019', '06:43 pm', 'Jan 23, 2019', '06:45 pm', 'this is the test description', 'FREE', '1', '1', '2019-01-21 13:15:43', '2019-01-21 13:15:43'),
	(27, 36, 'PaperPride', 'Jan 22, 2019', '06:23 am', 'Jan 31, 2019', '06:23 am', 'Painting Event', 'FREE', '1', '1', '2019-01-22 06:26:34', '2019-01-22 06:26:34'),
	(28, 48, 'cakes venue', 'Jan 28, 2019', '11:59 am', 'Jan 28, 2019', '11:59 am', 'daddy', 'FREE', '1', '1', '2019-01-28 06:30:03', '2019-01-28 06:30:03'),
	(29, 18, 'Food event', 'Jan 28, 2019', '03:14 pm', 'Jan 28, 2019', '03:14 pm', 'sdfdsf', 'FREE', '1', '1', '2019-01-28 09:45:39', '2019-01-28 09:45:39'),
	(30, 53, 'nsnz', 'Jan 29, 2019', '01:30 pm', 'Jan 31, 2019', '06:30 am', 'nznz', 'FREE', '1', '1', '2019-01-29 08:00:41', '2019-01-29 08:00:41'),
	(31, 53, 'He', 'Jan 29, 2019', '06:35 pm', 'Jan 31, 2019', '06:35 am', 'Testr', 'FREE', '0', '1', '2019-01-29 09:07:06', '2019-01-29 09:07:06'),
	(32, 54, 'dfsdf', 'Jan 29, 2019', '04:23 pm', 'Jan 29, 2019', '04:23 pm', 'sdfsdf', 'FREE', '1', '1', '2019-01-29 10:55:09', '2019-01-29 10:55:09'),
	(33, 47, 'Brunch @ HotHouse', 'Feb 28, 2019', '12:30 pm', 'Feb 10, 2019', '03:30 pm', 'Brunch and catch up!', 'FREE', '0', '1', '2019-01-29 14:35:15', '2019-01-29 14:35:15'),
	(34, 55, 'painting evwnt', 'Jan 29, 2019', '09:33 pm', 'Jan 29, 2019', '09:33 pm', 'Kristen for your reply with remove the other hand and', 'FREE', '1', '1', '2019-01-29 16:07:46', '2019-01-29 16:07:46');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Dumping structure for table event.events_medias
CREATE TABLE IF NOT EXISTS `events_medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `events_id` int(11) NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileurl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.events_medias: ~34 rows (approximately)
/*!40000 ALTER TABLE `events_medias` DISABLE KEYS */;
REPLACE INTO `events_medias` (`id`, `events_id`, `filename`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
	(5, 1, 'mDNQtooil35rqglPmBTb.jpg', 'http://eventapp.dynv6.net/eventsmedia/mDNQtooil35rqglPmBTb.jpg', '1', '2019-01-17 10:52:46', '2019-01-17 10:52:46'),
	(6, 2, 'l27haXYnLckgqIlcGNGQ.jpg', 'http://eventapp.dynv6.net/eventsmedia/l27haXYnLckgqIlcGNGQ.jpg', '1', '2019-01-17 10:53:06', '2019-01-17 10:53:06'),
	(7, 3, 'qfJLtWcK1TdMBeL9haai.jpg', 'http://eventapp.dynv6.net/eventsmedia/qfJLtWcK1TdMBeL9haai.jpg', '1', '2019-01-17 10:55:08', '2019-01-17 10:55:08'),
	(8, 4, 'yb2c3orklsHxqiZ4XbRI.jpg', 'http://eventapp.dynv6.net/eventsmedia/yb2c3orklsHxqiZ4XbRI.jpg', '1', '2019-01-17 10:57:15', '2019-01-17 10:57:15'),
	(9, 5, 'bda9juhA5BDh5wi0eDkr.jpg', 'http://eventapp.dynv6.net/eventsmedia/bda9juhA5BDh5wi0eDkr.jpg', '1', '2019-01-17 11:02:15', '2019-01-17 11:02:15'),
	(10, 6, '4KIproN6qApP4VDZDKtO.jpg', 'http://eventapp.dynv6.net/eventsmedia/4KIproN6qApP4VDZDKtO.jpg', '1', '2019-01-17 11:03:49', '2019-01-17 11:03:49'),
	(11, 7, 'O327Mj7Vu6g9dcAPNX2i.jpg', 'http://eventapp.dynv6.net/eventsmedia/O327Mj7Vu6g9dcAPNX2i.jpg', '1', '2019-01-17 11:13:59', '2019-01-17 11:13:59'),
	(12, 8, '2b68oYebtyQIfLvMTrXP.jpg', 'http://eventapp.dynv6.net/eventsmedia/2b68oYebtyQIfLvMTrXP.jpg', '1', '2019-01-17 12:06:18', '2019-01-17 12:06:18'),
	(13, 9, '6LbLebvDQgH0v3zp9frm.jpg', 'http://eventapp.dynv6.net/eventsmedia/6LbLebvDQgH0v3zp9frm.jpg', '1', '2019-01-18 05:32:29', '2019-01-18 05:32:29'),
	(14, 10, 'R6rMvJe3ES54lGxcHOp9.jpg', 'http://eventapp.dynv6.net/eventsmedia/R6rMvJe3ES54lGxcHOp9.jpg', '1', '2019-01-18 05:43:41', '2019-01-18 05:43:41'),
	(15, 11, 'SxobBbsNKvHq1S5Thbjr.jpg', 'http://eventapp.dynv6.net/eventsmedia/SxobBbsNKvHq1S5Thbjr.jpg', '1', '2019-01-18 11:21:27', '2019-01-18 11:21:27'),
	(16, 12, 'RzXRatXno1tf1ArlSLm2.jpg', 'http://eventapp.dynv6.net/eventsmedia/RzXRatXno1tf1ArlSLm2.jpg', '1', '2019-01-18 11:37:18', '2019-01-18 11:37:18'),
	(17, 13, 'lfUojEpUJeTlUYpW5BaF.jpg', 'http://eventapp.dynv6.net/eventsmedia/lfUojEpUJeTlUYpW5BaF.jpg', '1', '2019-01-18 11:40:08', '2019-01-18 11:40:08'),
	(18, 14, 'Nk9KtuKBRfESRXRUPnCT.jpg', 'http://eventapp.dynv6.net/eventsmedia/Nk9KtuKBRfESRXRUPnCT.jpg', '1', '2019-01-21 06:40:08', '2019-01-21 06:40:08'),
	(19, 15, 'fVSFxyglN7b7wkYsDfRC.jpg', 'http://eventapp.dynv6.net/eventsmedia/fVSFxyglN7b7wkYsDfRC.jpg', '1', '2019-01-21 06:44:23', '2019-01-21 06:44:23'),
	(20, 16, 'aPwNMuB4Ti95TMv8WkRZ.jpg', 'http://eventapp.dynv6.net/eventsmedia/aPwNMuB4Ti95TMv8WkRZ.jpg', '1', '2019-01-21 06:45:42', '2019-01-21 06:45:42'),
	(21, 17, 'S1WiekL6AgXtgV3rEQ8E.jpg', 'http://eventapp.dynv6.net/eventsmedia/S1WiekL6AgXtgV3rEQ8E.jpg', '1', '2019-01-21 07:41:29', '2019-01-21 07:41:29'),
	(22, 18, 'JfQcL6oGhCSYf1UmYiiE.jpg', 'http://eventapp.dynv6.net/eventsmedia/JfQcL6oGhCSYf1UmYiiE.jpg', '0', '2019-01-21 07:43:06', '2019-01-21 07:43:06'),
	(23, 19, '1flpPlm7fp7mGlRCZcH7.jpg', 'http://eventapp.dynv6.net/eventsmedia/1flpPlm7fp7mGlRCZcH7.jpg', '0', '2019-01-21 07:44:26', '2019-01-21 07:44:26'),
	(24, 20, 'c7EvBdwu9H7NQquNjLAi.jpg', 'http://eventapp.dynv6.net/eventsmedia/c7EvBdwu9H7NQquNjLAi.jpg', '1', '2019-01-21 07:53:11', '2019-01-21 07:53:11'),
	(25, 21, 'MavlUIQ44C3lXeyhXhda.jpg', 'http://eventapp.dynv6.net/eventsmedia/MavlUIQ44C3lXeyhXhda.jpg', '1', '2019-01-21 07:55:26', '2019-01-21 07:55:26'),
	(26, 22, 'LgdIx8lJZSSS1swsVJPb.jpg', 'http://eventapp.dynv6.net/eventsmedia/LgdIx8lJZSSS1swsVJPb.jpg', '1', '2019-01-21 08:59:55', '2019-01-21 08:59:55'),
	(27, 23, 'w062bdNm1RqX2UtAGBwk.jpg', 'http://eventapp.dynv6.net/eventsmedia/w062bdNm1RqX2UtAGBwk.jpg', '1', '2019-01-21 09:48:16', '2019-01-21 09:48:16'),
	(28, 24, '2qWgDlbQJ205j3qfi45Q.jpg', 'http://eventapp.dynv6.net/eventsmedia/2qWgDlbQJ205j3qfi45Q.jpg', '1', '2019-01-21 12:22:22', '2019-01-21 12:22:22'),
	(29, 25, '1Fc4ZlQ59gTTpoCtXKY5.jpg', 'http://eventapp.dynv6.net/eventsmedia/1Fc4ZlQ59gTTpoCtXKY5.jpg', '1', '2019-01-21 13:14:52', '2019-01-21 13:14:52'),
	(30, 26, 'svUDhKjV5CEI51Ony1fx.jpg', 'http://eventapp.dynv6.net/eventsmedia/svUDhKjV5CEI51Ony1fx.jpg', '1', '2019-01-21 13:15:43', '2019-01-21 13:15:43'),
	(31, 27, 'OYRfauaNXmZ25UOjTGNL.jpg', 'http://eventapp.dynv6.net/eventsmedia/OYRfauaNXmZ25UOjTGNL.jpg', '1', '2019-01-22 06:26:34', '2019-01-22 06:26:34'),
	(32, 28, 'j8vJBI5mvvX2YrDWKHeF.jpg', 'http://eventapp.dynv6.net/eventsmedia/j8vJBI5mvvX2YrDWKHeF.jpg', '1', '2019-01-28 06:30:03', '2019-01-28 06:30:03'),
	(33, 29, 'dfGn55RbyDeNUUZmuf0I.jpg', 'http://eventapp.dynv6.net/eventsmedia/dfGn55RbyDeNUUZmuf0I.jpg', '1', '2019-01-28 09:45:39', '2019-01-28 09:45:39'),
	(34, 30, '6qWqnRg8lOA9GjnotBFE.jpg', 'http://eventapp.dynv6.net/eventsmedia/6qWqnRg8lOA9GjnotBFE.jpg', '1', '2019-01-29 08:00:41', '2019-01-29 08:00:41'),
	(35, 31, 'JB8LJChKR7WR30g3B8FW.jpg', 'http://eventapp.dynv6.net/eventsmedia/JB8LJChKR7WR30g3B8FW.jpg', '1', '2019-01-29 09:07:06', '2019-01-29 09:07:06'),
	(36, 32, 'NP0dOGzFPAJSzRqCI8vI.jpg', 'http://eventapp.dynv6.net/eventsmedia/NP0dOGzFPAJSzRqCI8vI.jpg', '1', '2019-01-29 10:55:09', '2019-01-29 10:55:09'),
	(37, 33, 'VKPjKMRA4ZBhRVdKRfJd.jpg', 'http://eventapp.dynv6.net/eventsmedia/VKPjKMRA4ZBhRVdKRfJd.jpg', '1', '2019-01-29 14:35:15', '2019-01-29 14:35:15'),
	(38, 34, 'WPjQsJC4E5Ymo6GTupjr.jpg', 'http://eventapp.dynv6.net/eventsmedia/WPjQsJC4E5Ymo6GTupjr.jpg', '1', '2019-01-29 16:07:46', '2019-01-29 16:07:46');
/*!40000 ALTER TABLE `events_medias` ENABLE KEYS */;

-- Dumping structure for table event.guestbooked_events
CREATE TABLE IF NOT EXISTS `guestbooked_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guest_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_guest` int(11) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_request` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `event_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.guestbooked_events: ~3 rows (approximately)
/*!40000 ALTER TABLE `guestbooked_events` DISABLE KEYS */;
REPLACE INTO `guestbooked_events` (`id`, `guest_id`, `venue_id`, `phone`, `event_name`, `start_date`, `start_time`, `duration`, `expected_guest`, `description`, `special_request`, `capacity`, `event_status`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, '9898989898', 'Kite Festival', 'Jan16, 2019', '09.00 AM', '05.00 PM', 12, 'Kite Festival River Front', 'Keep Clean All Areas', 'Full capacity', 'Requested', '1', '2019-01-18 13:56:56', '2019-01-21 05:44:38'),
	(2, 1, 4, '9898989898', 'Kite Festival', 'Jan16, 2019', '09.00 AM', '05.00 PM', 12, 'Kite Festival River Front', 'Keep Clean All Areas', 'Available', 'Requested', '1', '2019-01-18 13:58:42', '2019-01-18 13:58:42'),
	(3, 1, 4, '9898989898', 'Kite Festival', 'Jan16, 2019', '09.00 AM', '05.00 PM', 12, 'Kite Festival River Front', 'Keep Clean All Areas', 'Available', 'Requested', '1', '2019-01-18 13:59:13', '2019-01-18 13:59:13');
/*!40000 ALTER TABLE `guestbooked_events` ENABLE KEYS */;

-- Dumping structure for table event.guestbooked_events_medias
CREATE TABLE IF NOT EXISTS `guestbooked_events_medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `events_id` int(11) NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileurl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.guestbooked_events_medias: ~0 rows (approximately)
/*!40000 ALTER TABLE `guestbooked_events_medias` DISABLE KEYS */;
REPLACE INTO `guestbooked_events_medias` (`id`, `events_id`, `filename`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
	(1, 3, 'mhSUyr4vSyyEzyAKm2Wq.jpg', 'http://eventapp.dynv6.net/guestbookevents_media/mhSUyr4vSyyEzyAKm2Wq.jpg', '1', '2019-01-18 13:59:13', '2019-01-18 13:59:13');
/*!40000 ALTER TABLE `guestbooked_events_medias` ENABLE KEYS */;

-- Dumping structure for table event.guest_events_invited_peoples
CREATE TABLE IF NOT EXISTS `guest_events_invited_peoples` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.guest_events_invited_peoples: ~0 rows (approximately)
/*!40000 ALTER TABLE `guest_events_invited_peoples` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_events_invited_peoples` ENABLE KEYS */;

-- Dumping structure for table event.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.migrations: ~35 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_01_07_095914_create_venue_hours_table', 1),
	(9, '2019_01_07_105515_create_venue_profiles_table', 1),
	(10, '2019_01_07_121140_create_venue_types_table', 1),
	(11, '2019_01_07_121545_create_venue_entertainment_table', 1),
	(12, '2019_01_07_121607_create_venue_music_table', 1),
	(13, '2019_01_07_125211_create_admins_table', 1),
	(14, '2019_01_08_044725_add_column_user_type_to_users_table', 1),
	(15, '2019_01_09_075230_alter_venue_hours_add_column_is_selected', 1),
	(16, '2019_01_10_072820_create_venue_medias_table', 1),
	(17, '2019_01_10_104137_add_capacitystatus_to_venue_profile', 2),
	(18, '2019_01_16_065104_create_events_table', 3),
	(19, '2019_01_16_072559_create_events_table', 4),
	(20, '2019_01_16_100014_create_events_medias', 4),
	(21, '2019_01_17_103140_alter_events_cost', 5),
	(22, '2019_01_17_110628_create_events_pending_requests', 6),
	(23, '2019_01_18_055117_alter_event_pending_request', 7),
	(24, '2019_01_18_120206_create_guestbooked_events_medias', 8),
	(25, '2019_01_18_120408_create_guestbooked_events_table', 8),
	(26, '2019_01_18_130748_create_guest_events_invited_peoples', 8),
	(27, '2019_01_21_051241_alter_add_capacity_guestbooked_events_table', 9),
	(28, '2019_01_21_074105_alter_events_add_status', 10),
	(29, '2019_01_21_085954_alter_venue_profile_add_status', 11),
	(30, '2019_01_21_090603_alter_users_add_status', 12),
	(31, '2019_01_24_061240_create_venue_promos_medias_table', 13),
	(32, '2019_01_24_062136_create_venue_promos_table', 13),
	(33, '2019_01_24_072624_create_venue_promos_hours_table', 13),
	(34, '2019_01_24_093635_create_venues_promos_hours_table', 14),
	(35, '2019_01_24_100911_create_venue_promos_hours_table', 15),
	(36, '2019_01_24_100931_create_venue_promos_medias_table', 15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table event.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.oauth_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table event.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table event.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.oauth_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table event.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table event.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table event.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.password_resets: ~4 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
REPLACE INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('haresh.r@iqlance.com', '$2y$10$4iUoeXjp2OwJG5CMXvGlyOAxMTUhqkPQzLM/t9lYnGYaHrU.MGCBO', '2019-01-10 13:31:44'),
	('shah8289.msc@gmail.com', '$2y$10$b.6QknyaAHW5.AicnE/eDuhUquTVGaCyPC6BDRVeSlfqKhm5bPMwy', '2019-01-10 13:37:59'),
	('hareshrathod7474@gmail.com', '$2y$10$e7.e0ixvlzJD5bwJeODDO.Qhb1VzB03GUc9hPsYQZTsmrh0bfP2Bq', '2019-01-10 15:31:58'),
	('devendra.vnnovate@gmail.com', '$2y$10$njXZdfBUbhmgKysgbIlCw.ZMcpmjUXw7/yKt40l98Er4fasuGgWWy', '2019-01-11 09:56:03');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table event.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.users: ~55 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '2', 'SonamShah', 'shah8289.msc@gmail.com', NULL, '$2y$10$k.H6M.cRwGgNM/.Fc5yiyOflSczY48dEKwYFtpl02PU1Ag1n6j29W', '1', NULL, '2019-01-10 10:05:27', '2019-01-10 10:05:27'),
	(2, '2', 'SonamShah1', 'devendra.vnnovate@gmail.com', NULL, '$2y$10$19WXZkH1EQTmz4sFzraByOuaDMXbLrCoM4pzmsyfcgD2Z4rn.rIp2', '1', '18VVyXAjB5mu04CzxuJixpawtQoskp7ON3Wr9frOJqxEEP4It18lZy1u9m5z', '2019-01-10 12:07:11', '2019-01-21 05:47:42'),
	(3, '2', 'test', 'hareshrathod7474@gmail.com', NULL, '$2y$10$rBlqb8t1zgdJWQvWONsOje3vvySl5fazj8CQUArzMgyFjovAfZHjC', '1', NULL, '2019-01-10 13:04:45', '2019-01-10 13:04:45'),
	(4, '2', 'test', 'haresh.r@iqlance.com', NULL, '$2y$10$enGPPerZppxGB8frlhQq5uJNLowk.ZAErALy2BR.5AA6vySl3jk2C', '1', NULL, '2019-01-10 13:17:47', '2019-01-10 13:17:47'),
	(5, '2', 'test', 'chitra@iqlance.com', NULL, '$2y$10$MSXOpD3Rojwwy5d.T6H0tuW5/ma0upv5plmm9OpByq.g3I0yxDbae', '1', NULL, '2019-01-10 13:34:46', '2019-01-10 13:34:46'),
	(6, '2', 'dsf', 'chitra@gmail.com', NULL, '$2y$10$qRxLcreNcp4r/OMgkPjZLOuHcvbLHXqNK/wcUviGk6Yb3J42bjYSi', '1', 'pgTcRTP9HSqrDQKQf2wO8lxF6vXu3rwyAZR3FWCGwByMgRsCb9ZGbgcHwxls', '2019-01-10 13:36:01', '2019-01-10 13:53:27'),
	(7, '2', 'haresh.rr', 'haresh.rr@iqlance.com', NULL, '$2y$10$Px3cgnO5jnlB6dKZG8TxpuF/WHdnfdNy57B/ULV4YYelDwvc0YOpG', '1', NULL, '2019-01-10 15:07:44', '2019-01-10 15:07:44'),
	(8, '2', 'Herryiqlance', 'hareshiqlance123@gmail.com', NULL, '$2y$10$HKdo6oRMaQ/rm7JeYHXzRusc7jrMReW9jzY5VrR58hrxqIYpfZJuG', '1', NULL, '2019-01-10 15:35:34', '2019-01-10 15:35:34'),
	(9, '2', 'test', 'testt@gmail.com', NULL, '$2y$10$BmA9DRNge8sKinTjbU/Mcua2HxhMCshO56s6pQ4orBB9VieGfGRnC', '1', NULL, '2019-01-10 15:41:09', '2019-01-10 15:41:09'),
	(10, '2', 'test', 'testtt@gmail.com', NULL, '$2y$10$2u9bI.Lvupw2ceCQ5XyJfeSxqK9ADNvbuqMrYWxbg.1mQ4WlZAzGW', '1', NULL, '2019-01-10 15:42:56', '2019-01-10 15:42:56'),
	(11, '2', 'chitra', 'chitra.nandpal@gmail.com', NULL, '$2y$10$cEh3QZVbKa9wUAXF8GwWxuv1xVL7rlEs9D2TfPKWm5IKfQijaA1tG', '1', NULL, '2019-01-11 13:37:27', '2019-01-11 13:37:27'),
	(12, '2', 'Chitra nandpal', 'nandpal.chitra@gmail.com', NULL, '$2y$10$RTOewUYro8AtKk8BcSyVju66dJvaIDnb4.mRy9spAGgtKn.qKsdxK', '1', NULL, '2019-01-17 07:43:56', '2019-01-17 07:43:56'),
	(13, '2', 'dev', 'dev@gmail.com', NULL, '$2y$10$O6PN.Csbyu1uInlLP3wH0ep7hWtsw9yAQyIqh8EhVektMzt0aDmfK', '1', NULL, '2019-01-18 06:04:08', '2019-01-18 06:04:08'),
	(14, '2', 'sdf', 'test78@gmail.com', NULL, '$2y$10$KEZ43HeyI7UHufOQJFXWq.lg5SpQLFctkNIIoW3xVMEoM59SGkjN2', '1', NULL, '2019-01-18 06:07:14', '2019-01-18 06:07:14'),
	(15, '2', 'asd', 'test79@gmail.com', NULL, '$2y$10$0gi46jGojT4z5wywpFH4h.hCW3VgFkaR2RUx1.zK8rDtdyS7952Nu', '1', NULL, '2019-01-18 06:09:00', '2019-01-18 06:09:00'),
	(16, '2', 'yes df', 'test66@gmail.com', NULL, '$2y$10$2hVMXrYaDWBDp9QAyvX2Lu/od0A4F8IEx/qw/CTFIDHUyVwci1dBC', '1', NULL, '2019-01-18 13:34:53', '2019-01-18 13:34:53'),
	(17, '2', 'dfds', 'test98@gmail.com', NULL, '$2y$10$ls4XpGEF9a.ZObn3chmKd.eltwsc.siZ./qs30Q4L.WdkvbQqdiwS', '1', NULL, '2019-01-18 13:35:29', '2019-01-18 13:35:29'),
	(18, '2', 'herry', 'herry@gmail.com', NULL, '$2y$10$y5jRApwqIGsQWvXOdteWi.Bv8V1M.eXaM3m98AMk6G2R/.dtiYVE2', '1', NULL, '2019-01-21 06:41:49', '2019-01-21 06:41:49'),
	(19, '2', 'herry7474', 'herry7474@gmail.com', NULL, '$2y$10$TeaqQvx9ReCa7OoyBsY1BeXs5HMs58KSRAMjgRMwiTuwKrs1eqqb6', '1', NULL, '2019-01-21 07:36:00', '2019-01-21 07:36:00'),
	(20, '2', 'test', 'test7878@gmail.com', NULL, '$2y$10$kr1qzbIZTYxRo/cAqYvp8u4.1yEN/O5PIoIOTaRc.WbSyhZhRU.1.', '1', NULL, '2019-01-21 09:38:56', '2019-01-21 09:38:56'),
	(21, '2', 'test', 'testttt@gmail.com', NULL, '$2y$10$WjJKtjHNQ88q2ap6MzSf0ONv8SkE5jLn5F1L3TqdswPF28cjy/6ZK', '1', NULL, '2019-01-21 10:56:45', '2019-01-21 10:56:45'),
	(22, '2', 'test', 'testtttt@gmail.com', NULL, '$2y$10$CXb60XI/5WpQGP2KT34amuaAyj4f8v0HPusCKqCACcFfOtyVl15/m', '1', NULL, '2019-01-21 11:19:38', '2019-01-21 11:19:38'),
	(23, '2', 'Ekta', 'ekta.patel@gmail.com', NULL, '$2y$10$Ng.hhEsqtyqrD8Ze/HvZ..NzrqbUwlxRAZ0xH3RwHAt3e6tCmdanG', '1', NULL, '2019-01-21 11:53:21', '2019-01-21 11:53:21'),
	(24, '2', 'Bansi Patel', 'bansipatel@gmail.com', NULL, '$2y$10$3fpEJeJ1Z2WvUxtDbzRueuydcqPZNLypch6OPo3f9BRqyoJmc/cLy', '1', NULL, '2019-01-21 12:15:35', '2019-01-21 12:15:35'),
	(25, '2', 'helloworld', 'helloworld@gmail.com', NULL, '$2y$10$CC4nGsFR.d5JIjoSAf/oN.Re/T1fvEo5CblZT2omN0sdcdSq9yhmu', '1', NULL, '2019-01-21 12:27:28', '2019-01-21 12:27:28'),
	(26, '2', 'Khushi', 'Khushi@gmail.com', NULL, '$2y$10$VfwkZLUNQ4cIGCXWKEWqmO1pLm0ZSEqzgNxDjJyNyrTQbyf3w9bSe', '1', NULL, '2019-01-22 05:15:39', '2019-01-22 05:15:39'),
	(27, '2', 'Mishu', 'Mishu@gmail.com', NULL, '$2y$10$A/KHwRKj8lCnlk1w/5x.VOQGy6ebtKxUBzQ20Z8do9OkqXrbI2INO', '1', NULL, '2019-01-22 05:18:17', '2019-01-22 05:18:17'),
	(28, '2', 'sss', 'sa@gmail.com', NULL, '$2y$10$8v8MOjEBR9sdsnjgZqC0l.IMtud/skRNLLr4tYBYZAYlw4xipnG3.', '1', NULL, '2019-01-22 05:20:53', '2019-01-22 05:20:53'),
	(29, '2', 'v', 'vp@gmail.com', NULL, '$2y$10$rC/XePJ6HpCuBYaYSHrVOuSWk2Pwq/RHA/n7gIW.LB.TuVvG7JmsG', '1', NULL, '2019-01-22 05:56:56', '2019-01-22 05:56:56'),
	(30, '2', 'vikas', 'vikasbharda@gmail.com', NULL, '$2y$10$1WMmMDtJr35a.KeiU6RJRu6XJkhNGYjG3xSh33nQmIAQJodCiAhpK', '1', NULL, '2019-01-22 06:00:07', '2019-01-22 06:00:07'),
	(31, '2', 'helly', 'helly@gmail.com', NULL, '$2y$10$4AioRA4wNxAGqYgP9kbWlONGkEv7Xk9Qx2g16dLi0M6dYOgyq3wLO', '1', NULL, '2019-01-22 06:07:06', '2019-01-22 06:07:06'),
	(32, '2', 'vv', 'v@gmail.com', NULL, '$2y$10$H79h71UJsZedujzRUkxGOu1HB9kLlwIKIhKKgNia/BQMpIQm9MRMW', '1', NULL, '2019-01-22 06:10:06', '2019-01-22 06:10:06'),
	(33, '2', 'sikha', 'sikha@gmail.com', NULL, '$2y$10$ffIxDxSo0oXUcKvkZcPXheGdMTm92M.p6aZOC3Odc/go6lOfJfEBm', '1', NULL, '2019-01-22 06:12:23', '2019-01-22 06:12:23'),
	(34, '2', 'mira', 'mira@gmail.com', NULL, '$2y$10$YoXH.ckFBRTpngz8Ch6U4u5qWMZmq8P9px7NpcZXdBPyG2P4K7C9q', '1', NULL, '2019-01-22 06:19:11', '2019-01-22 06:19:11'),
	(35, '2', 'mira', 'mira1@gmail.com', NULL, '$2y$10$Q54A2WeEqdMtth2xwS9dsOrkGl/OtoTNI/1sXhK3xJNyyymVDowk6', '1', NULL, '2019-01-22 06:19:32', '2019-01-22 06:19:32'),
	(36, '2', 'ram', 'ram@gmail.com', NULL, '$2y$10$ZQtDnuVsGh1Qrc9JBzl/hOKfoqaXdqubItVQBvOCyJgWFjW1c3uaG', '1', NULL, '2019-01-22 06:24:15', '2019-01-22 06:24:15'),
	(37, '1', 'Nik', 'nik@gmail.com', NULL, '$2y$10$JJbSgLtK89qH67mh6vAOjO.8mvjoGqHeN1XxH6U0qC76z1hsIybOi', '1', NULL, '2019-01-22 06:49:51', '2019-01-22 06:49:51'),
	(38, '1', 'sia', 'sia@gmail.com', NULL, '$2y$10$uPpJvGqvCZice3NFP3GpROZLyUlDtohNUgvNH70dL0siIC1s1ymlq', '1', NULL, '2019-01-22 06:51:33', '2019-01-22 06:51:33'),
	(39, '1', 'Sah', 'Sha@gmail.com', NULL, '$2y$10$0bbg5zDdnxAgk0ajxvuTCOtaLJoh5ts48kLC4kCVJIzz8X6.mNJy.', '1', NULL, '2019-01-22 06:53:02', '2019-01-22 06:53:02'),
	(40, '1', 'Milli', 'Milli@gmail.com', NULL, '$2y$10$oOOZqMjrzhw4Oaq9i/ItOeyG4wCpRvUIJNoVhkUJkIDEUe.28QLH2', '1', NULL, '2019-01-22 06:54:47', '2019-01-22 06:54:47'),
	(41, '1', 'vishal', 'vishal@gmail.com', NULL, '$2y$10$/aBH4bn/cXY8A9vrhTv8feRdRu0bXViDlEi.3ne8q5wBrwKSrARo2', '1', NULL, '2019-01-22 06:57:45', '2019-01-22 06:57:45'),
	(42, '1', 'Kimal', 'Kimal@gmail.com', NULL, '$2y$10$GpHP4NGED47n7TlizRlW2ebyvdLH9ZlXZO2oBEtbFNhyTdyVoM/ea', '1', NULL, '2019-01-22 11:45:58', '2019-01-22 11:45:58'),
	(43, '1', 'mahera', 'mahera@gmail.com', NULL, '$2y$10$mmIekYPxDruM.d6FTiJznuSjLojuxq2JkK4ajxE5C/uLFoRgb602e', '1', NULL, '2019-01-22 12:26:15', '2019-01-22 12:26:15'),
	(44, '1', 'mahera', 'mahera2w@gmail.com', NULL, '$2y$10$ih1jzJ6j/Hwc7l87cyu8buOvytCI/iNTOnNL6gENi7mkC/PEUVn4i', '1', NULL, '2019-01-22 12:31:13', '2019-01-22 12:31:13'),
	(46, '2', 'raj', 'raj@gmail.com', NULL, '$2y$10$jemVMADfVQLhioFSTR4r7OjVu3VnliF6VLrEdtIy.50SysRfWzDK2', '1', NULL, '2019-01-23 09:09:40', '2019-01-23 09:09:40'),
	(47, '2', 'Kimberly', 'kimberly@thevenueglobal.com', NULL, '$2y$10$9PeqKh5obwWbeWCgluAKTeFJ7fVHVefiCrof0AehPxNvCsbAp2Jhm', '1', NULL, '2019-01-23 15:33:17', '2019-01-23 15:33:17'),
	(48, '2', 'test', 'test89@gmail.com', NULL, '$2y$10$P.kEF2ZI.NDBmlOKhuAjKOOJMlC.DwUpEFcZX0kLcrnJaaq7.H346', '1', NULL, '2019-01-28 06:23:20', '2019-01-28 06:23:20'),
	(49, '2', 'herry', 'herry74@gmail.com', NULL, '$2y$10$O5ZyOwdfLQNldEHOwcBfzO446Dx/ESQKOkagsXtkIANlIhnvSEVkS', '1', NULL, '2019-01-28 09:35:01', '2019-01-28 09:35:01'),
	(50, '2', 'herry', 'herry75@gmail.com', NULL, '$2y$10$gGniOLXCn7hm3/hFhZWUreRWvg5U8oXpRXA4.4up/FFmjLoFhVjlO', '1', NULL, '2019-01-28 09:35:15', '2019-01-28 09:35:15'),
	(51, '2', 'test', 'herry79@gmail.com', NULL, '$2y$10$7l9ckUZuUS.g/tb3DyDf8Ofzj4oYyI3Vwlqr3bjIqgJ3DduBBTdTi', '1', NULL, '2019-01-28 10:12:18', '2019-01-28 10:12:18'),
	(52, '2', 'herry', 'herry1@gmail.com', NULL, '$2y$10$dmotTYw/Pdi4wds6//twoOuPlmRby7O552rJxFHQO9xU7eS5zyj3S', '1', NULL, '2019-01-29 07:05:16', '2019-01-29 07:05:16'),
	(53, '2', 'Missha', 'misha@gmail.com', NULL, '$2y$10$uoBLHk52/GW.41zQlngb9u/VRjxknwBAUQWIkCpJ6DjiTOsLbazOO', '1', NULL, '2019-01-29 07:14:52', '2019-01-29 07:14:52'),
	(54, '2', 'herry2', 'herry2@gmail.com', NULL, '$2y$10$5QW2z5NvRqXaUgE7mkYTvuTAGTzGTu7CQCqhCjudz9TcnBYZK/Bva', '1', NULL, '2019-01-29 10:53:35', '2019-01-29 10:53:35'),
	(55, '2', 'herry', 'herry747474@gmail.com', NULL, '$2y$10$VsdU3b6j/HhmNqTQ5UFDNO/60dNfSGhJJ6oU.UgwQys7BqB1UkFCG', '1', NULL, '2019-01-29 16:04:44', '2019-01-29 16:04:44'),
	(56, '2', 'herry', 'herry74747474@gmail.com', NULL, '$2y$10$15bDxhY2xpK94iBtrzqboea3g2GIrwbVvuTU1xfDo3Trxzk/yYXnm', '1', NULL, '2019-01-29 16:13:02', '2019-01-29 16:13:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table event.venue_entertainment
CREATE TABLE IF NOT EXISTS `venue_entertainment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entertain_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_entertainment: ~5 rows (approximately)
/*!40000 ALTER TABLE `venue_entertainment` DISABLE KEYS */;
REPLACE INTO `venue_entertainment` (`id`, `entertain_name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Intimate(quiet)', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(2, 'Background Music', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(3, 'Live DJ', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(4, 'Live Entertainment', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(5, 'Adult', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00');
/*!40000 ALTER TABLE `venue_entertainment` ENABLE KEYS */;

-- Dumping structure for table event.venue_hours
CREATE TABLE IF NOT EXISTS `venue_hours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venue_id` int(11) NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_selected` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = closed, 1 = open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_hours: ~154 rows (approximately)
/*!40000 ALTER TABLE `venue_hours` DISABLE KEYS */;
REPLACE INTO `venue_hours` (`id`, `venue_id`, `day`, `start_time`, `end_time`, `is_selected`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-10 10:07:34', '2019-01-10 10:07:34'),
	(2, 1, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:07:34', '2019-01-10 10:07:34'),
	(3, 1, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-10 10:07:34', '2019-01-10 10:07:34'),
	(4, 1, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:07:34', '2019-01-10 10:07:34'),
	(5, 1, 'Friday', '6.00 PM', '3.00 AM', '1', '2019-01-10 10:07:34', '2019-01-10 10:07:34'),
	(6, 1, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:07:34', '2019-01-10 10:07:34'),
	(7, 1, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:07:34', '2019-01-10 10:07:34'),
	(8, 2, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(9, 2, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(10, 2, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(11, 2, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(12, 2, 'Friday', '6.00 PM', '3.00 AM', '1', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(13, 2, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(14, 2, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(15, 3, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(16, 3, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(17, 3, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(18, 3, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(19, 3, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(20, 3, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(21, 3, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(22, 4, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:27:14', '2019-01-10 13:27:14'),
	(23, 4, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:27:14', '2019-01-10 13:27:14'),
	(24, 4, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:27:14', '2019-01-10 13:27:14'),
	(25, 4, 'Thursday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:27:14', '2019-01-10 13:27:14'),
	(26, 4, 'Friday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:27:14', '2019-01-10 13:27:14'),
	(27, 4, 'Saturday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:27:14', '2019-01-10 13:27:14'),
	(28, 4, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:27:14', '2019-01-10 13:27:14'),
	(29, 6, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(30, 6, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(31, 6, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(32, 6, 'Thursday', '6.00 PM', '3.00 AM', '1', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(33, 6, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(34, 6, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(35, 6, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(36, 7, 'Monday', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(37, 7, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(38, 7, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(39, 7, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(40, 7, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(41, 7, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(42, 7, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(43, 8, 'Monday', '03:00 AM', '03:00 PM', '1', '2019-01-10 15:37:01', '2019-01-10 15:37:01'),
	(44, 8, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:37:01', '2019-01-10 15:37:01'),
	(45, 8, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-10 15:37:01', '2019-01-10 15:37:01'),
	(46, 8, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:37:01', '2019-01-10 15:37:01'),
	(47, 8, 'Friday', '6.00 PM', '3.00 AM', '1', '2019-01-10 15:37:01', '2019-01-10 15:37:01'),
	(48, 8, 'Saturday', '6.00 PM', '3.00 AM', '1', '2019-01-10 15:37:01', '2019-01-10 15:37:01'),
	(49, 8, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-10 15:37:01', '2019-01-10 15:37:01'),
	(50, 12, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(51, 12, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(52, 12, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(53, 12, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(54, 12, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(55, 12, 'Saturday', '6.00 PM', '3.00 AM', '1', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(56, 12, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(57, 15, 'Monday', '11 : 38 am', '02 : 38 pm', '1', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(58, 15, 'Tuesday ', '11 : 38 am', '09 : 38 am', '1', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(59, 15, 'Wednesday', '05 : 38 pm', '06 : 38 pm', '1', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(60, 15, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(61, 15, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(62, 15, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(63, 15, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(64, 18, 'Monday', '02:11 pm', '06:11 pm', '1', '2019-01-21 06:43:08', '2019-01-21 06:43:08'),
	(65, 18, 'Tuesday ', '02:11 am', '04:11 am', '1', '2019-01-21 06:43:08', '2019-01-21 06:43:08'),
	(66, 18, 'Wednesday', '09:11 pm', '12:11 am', '1', '2019-01-21 06:43:08', '2019-01-21 06:43:08'),
	(67, 18, 'Thursday', '6.00 PM', '3.00 AM', '1', '2019-01-21 06:43:08', '2019-01-21 06:43:08'),
	(68, 18, 'Friday', '6.00 PM', '3.00 AM', '1', '2019-01-21 06:43:08', '2019-01-21 06:43:08'),
	(69, 18, 'Saturday', '6.00 PM', '3.00 AM', '1', '2019-01-21 06:43:08', '2019-01-21 06:43:08'),
	(70, 18, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-21 06:43:08', '2019-01-21 06:43:08'),
	(71, 19, 'Monday', '01:05 pm', '03:05 pm', '1', '2019-01-21 07:38:57', '2019-01-21 07:38:57'),
	(72, 19, 'Tuesday ', '04:05 pm', '06:05 pm', '1', '2019-01-21 07:38:57', '2019-01-21 07:38:57'),
	(73, 19, 'Wednesday', '07:05 pm', '08:05 pm', '1', '2019-01-21 07:38:57', '2019-01-21 07:38:57'),
	(74, 19, 'Thursday', '10:05 pm', '11:05 pm', '1', '2019-01-21 07:38:57', '2019-01-21 07:38:57'),
	(75, 19, 'Friday', '6.00 PM', '3.00 AM', '1', '2019-01-21 07:38:57', '2019-01-21 07:38:57'),
	(76, 19, 'Saturday', '6.00 PM', '3.00 AM', '1', '2019-01-21 07:38:57', '2019-01-21 07:38:57'),
	(77, 19, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-21 07:38:57', '2019-01-21 07:38:57'),
	(78, 21, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(79, 21, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(80, 21, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(81, 21, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(82, 21, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(83, 21, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(84, 21, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(85, 24, 'Monday', '6.00 PM', '3.00 AM', '0', '2019-01-21 12:17:47', '2019-01-21 12:17:47'),
	(86, 24, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-21 12:17:47', '2019-01-21 12:17:47'),
	(87, 24, 'Wednesday', '6.00 PM', '3.00 AM', '0', '2019-01-21 12:17:47', '2019-01-21 12:17:47'),
	(88, 24, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-21 12:17:47', '2019-01-21 12:17:47'),
	(89, 24, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-21 12:17:47', '2019-01-21 12:17:47'),
	(90, 24, 'Saturday', '6.00 PM', '3.00 AM', '1', '2019-01-21 12:17:47', '2019-01-21 12:17:47'),
	(91, 24, 'Sunday', '6.00 PM', '3.00 AM', '1', '2019-01-21 12:17:47', '2019-01-21 12:17:47'),
	(92, 36, 'Monday', '6.00 PM', '3.00 AM', '0', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(93, 36, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(94, 36, 'Wednesday', '6.00 PM', '3.00 AM', '0', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(95, 36, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(96, 36, 'Friday', '06:23 am', '03:23 am', '1', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(97, 36, 'Saturday', '06:23 am', '04:23 am', '1', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(98, 36, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(99, 47, 'Monday', '6.00 PM', '3.00 AM', '0', '2019-01-23 15:38:34', '2019-01-23 15:38:34'),
	(100, 47, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-23 15:38:34', '2019-01-23 15:38:34'),
	(101, 47, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-23 15:38:34', '2019-01-23 15:38:34'),
	(102, 47, 'Thursday', '01:30 pm', '3.00 AM', '1', '2019-01-23 15:38:34', '2019-01-23 15:38:34'),
	(103, 47, 'Friday', '6.00 PM', '3.00 AM', '1', '2019-01-23 15:38:34', '2019-01-23 15:38:34'),
	(104, 47, 'Saturday', '6.00 PM', '3.00 AM', '1', '2019-01-23 15:38:34', '2019-01-23 15:38:34'),
	(105, 47, 'Sunday', '6.00 PM', '3.00 AM', '1', '2019-01-23 15:38:34', '2019-01-23 15:38:34'),
	(106, 48, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-28 06:25:36', '2019-01-28 06:25:36'),
	(107, 48, 'Tuesday ', '11:52 am', '3.00 AM', '1', '2019-01-28 06:25:36', '2019-01-28 06:25:36'),
	(108, 48, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-28 06:25:36', '2019-01-28 06:25:36'),
	(109, 48, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-28 06:25:36', '2019-01-28 06:25:36'),
	(110, 48, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-28 06:25:36', '2019-01-28 06:25:36'),
	(111, 48, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-28 06:25:36', '2019-01-28 06:25:36'),
	(112, 48, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-28 06:25:36', '2019-01-28 06:25:36'),
	(113, 50, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(114, 50, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(115, 50, 'Wednesday', '6.00 PM', '3.00 AM', '0', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(116, 50, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(117, 50, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(118, 50, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(119, 50, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(120, 51, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(121, 51, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(122, 51, 'Wednesday', '6.00 PM', '3.00 AM', '0', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(123, 51, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(124, 51, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(125, 51, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(126, 51, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(127, 53, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(128, 53, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(129, 53, 'Wednesday', '6.00 PM', '3.00 AM', '0', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(130, 53, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(131, 53, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(132, 53, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(133, 53, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(134, 54, 'Monday', '6.00 PM', '3.00 AM', '0', '2019-01-29 10:54:16', '2019-01-29 10:54:16'),
	(135, 54, 'Tuesday ', '6.00 PM', '3.00 AM', '0', '2019-01-29 10:54:16', '2019-01-29 10:54:16'),
	(136, 54, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-29 10:54:16', '2019-01-29 10:54:16'),
	(137, 54, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-29 10:54:16', '2019-01-29 10:54:16'),
	(138, 54, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-29 10:54:16', '2019-01-29 10:54:16'),
	(139, 54, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-29 10:54:16', '2019-01-29 10:54:16'),
	(140, 54, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-29 10:54:16', '2019-01-29 10:54:16'),
	(141, 55, 'Monday', '12:55 pm', '12:33 pm', '1', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(142, 55, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(143, 55, 'Wednesday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(144, 55, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(145, 55, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(146, 55, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(147, 55, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(148, 56, 'Monday', '6.00 PM', '3.00 AM', '1', '2019-01-29 16:14:35', '2019-01-29 16:14:35'),
	(149, 56, 'Tuesday ', '6.00 PM', '3.00 AM', '1', '2019-01-29 16:14:35', '2019-01-29 16:14:35'),
	(150, 56, 'Wednesday', '6.00 PM', '3.00 AM', '1', '2019-01-29 16:14:35', '2019-01-29 16:14:35'),
	(151, 56, 'Thursday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:14:35', '2019-01-29 16:14:35'),
	(152, 56, 'Friday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:14:35', '2019-01-29 16:14:35'),
	(153, 56, 'Saturday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:14:35', '2019-01-29 16:14:35'),
	(154, 56, 'Sunday', '6.00 PM', '3.00 AM', '0', '2019-01-29 16:14:35', '2019-01-29 16:14:35');
/*!40000 ALTER TABLE `venue_hours` ENABLE KEYS */;

-- Dumping structure for table event.venue_medias
CREATE TABLE IF NOT EXISTS `venue_medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venue_id` int(11) NOT NULL,
  `media_type` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileurl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_medias: ~47 rows (approximately)
/*!40000 ALTER TABLE `venue_medias` DISABLE KEYS */;
REPLACE INTO `venue_medias` (`id`, `venue_id`, `media_type`, `filename`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
	(1, 3, '1', 'h7TEUlYDGAMv3PMgRMYb.jpg', 'http://eventapp.dynv6.net/venuemedia/h7TEUlYDGAMv3PMgRMYb.jpg', '1', '2019-01-10 13:05:55', '2019-01-10 13:05:55'),
	(2, 3, '1', 'YMvrILG1yZ7KC0uSbKS1.jpg', 'http://eventapp.dynv6.net/venuemedia/YMvrILG1yZ7KC0uSbKS1.jpg', '1', '2019-01-10 13:06:07', '2019-01-10 13:06:07'),
	(3, 3, '2', 'MdXHCSksaCZ0F5NaDaNk.jpg', 'http://eventapp.dynv6.net/venuemedia/MdXHCSksaCZ0F5NaDaNk.jpg', '1', '2019-01-10 13:06:24', '2019-01-10 13:06:24'),
	(4, 3, '2', 'By9j39Wz84EXd5rfdl02.jpg', 'http://eventapp.dynv6.net/venuemedia/By9j39Wz84EXd5rfdl02.jpg', '1', '2019-01-10 13:06:34', '2019-01-10 13:06:34'),
	(5, 4, '1', 'PX0fBQVODWau3y2b6u3X.jpg', 'http://eventapp.dynv6.net/venuemedia/PX0fBQVODWau3y2b6u3X.jpg', '1', '2019-01-10 13:27:32', '2019-01-10 13:27:32'),
	(6, 4, '1', 'hB20RXqTIdRtIqDPvgwZ.jpg', 'http://eventapp.dynv6.net/venuemedia/hB20RXqTIdRtIqDPvgwZ.jpg', '1', '2019-01-10 13:28:06', '2019-01-10 13:28:06'),
	(7, 4, '1', 'DgXjx20LWp6kuurVJHHk.jpg', 'http://eventapp.dynv6.net/venuemedia/DgXjx20LWp6kuurVJHHk.jpg', '1', '2019-01-10 13:29:00', '2019-01-10 13:29:00'),
	(8, 4, '1', '215S8HnGYBAZDTsFobzu.jpg', 'http://eventapp.dynv6.net/venuemedia/215S8HnGYBAZDTsFobzu.jpg', '1', '2019-01-10 13:29:16', '2019-01-10 13:29:16'),
	(9, 4, '1', 'LuwhBi4Pu6OwuCJZ1Itm.jpg', 'http://eventapp.dynv6.net/venuemedia/LuwhBi4Pu6OwuCJZ1Itm.jpg', '1', '2019-01-10 13:29:40', '2019-01-10 13:29:40'),
	(10, 4, '2', 'X2xxX6RvroqjLzs6u4Ev.jpg', 'http://eventapp.dynv6.net/venuemedia/X2xxX6RvroqjLzs6u4Ev.jpg', '1', '2019-01-10 13:30:19', '2019-01-10 13:30:19'),
	(11, 6, '1', 'pvfydqvpkariPPntB8UR.jpg', 'http://eventapp.dynv6.net/venuemedia/pvfydqvpkariPPntB8UR.jpg', '1', '2019-01-10 13:37:29', '2019-01-10 13:37:29'),
	(12, 6, '1', 'X0xgsCzedFTx9iq0Dm42.jpg', 'http://eventapp.dynv6.net/venuemedia/X0xgsCzedFTx9iq0Dm42.jpg', '1', '2019-01-10 13:37:47', '2019-01-10 13:37:47'),
	(13, 7, '1', 'EAlX96ZnatgFbJE6c3NF.jpg', 'http://eventapp.dynv6.net/venuemedia/EAlX96ZnatgFbJE6c3NF.jpg', '1', '2019-01-10 15:09:01', '2019-01-10 15:09:01'),
	(14, 7, '1', '3Iu9997GdPKkbKzjIwpA.jpg', 'http://eventapp.dynv6.net/venuemedia/3Iu9997GdPKkbKzjIwpA.jpg', '1', '2019-01-10 15:09:03', '2019-01-10 15:09:03'),
	(15, 7, '2', 'n1MA6zNu2RpOzvVJLM7d.jpg', 'http://eventapp.dynv6.net/venuemedia/n1MA6zNu2RpOzvVJLM7d.jpg', '1', '2019-01-10 15:09:06', '2019-01-10 15:09:06'),
	(16, 7, '2', 'Xe7POh1FKsRf91If0TAc.jpg', 'http://eventapp.dynv6.net/venuemedia/Xe7POh1FKsRf91If0TAc.jpg', '1', '2019-01-10 15:09:08', '2019-01-10 15:09:08'),
	(17, 8, '1', 'nUI17EoxYhTqk4MaUBqm.jpg', 'http://eventapp.dynv6.net/venuemedia/nUI17EoxYhTqk4MaUBqm.jpg', '1', '2019-01-10 15:37:11', '2019-01-10 15:37:11'),
	(18, 8, '1', 'K14iuAn6dwP8cJ7TmiKL.jpg', 'http://eventapp.dynv6.net/venuemedia/K14iuAn6dwP8cJ7TmiKL.jpg', '1', '2019-01-10 15:37:22', '2019-01-10 15:37:22'),
	(19, 8, '2', 'wJpXNQp50RChkZ4saTkp.jpg', 'http://eventapp.dynv6.net/venuemedia/wJpXNQp50RChkZ4saTkp.jpg', '1', '2019-01-10 15:37:30', '2019-01-10 15:37:30'),
	(20, 12, '1', '7EY5nfGVgDBHihRAuaap.jpg', 'http://eventapp.dynv6.net/venuemedia/7EY5nfGVgDBHihRAuaap.jpg', '1', '2019-01-17 07:48:38', '2019-01-17 07:48:38'),
	(21, 15, '1', 'ZgyWcRue3SE98Ab3TEzf.jpg', 'http://eventapp.dynv6.net/venuemedia/ZgyWcRue3SE98Ab3TEzf.jpg', '1', '2019-01-18 06:10:42', '2019-01-18 06:10:42'),
	(22, 15, '2', 'NGhe6ZT5lTGgAuO5H2Wa.jpg', 'http://eventapp.dynv6.net/venuemedia/NGhe6ZT5lTGgAuO5H2Wa.jpg', '1', '2019-01-18 06:10:44', '2019-01-18 06:10:44'),
	(23, 18, '1', 'DdmfAGtyOB2HPQcH8ZWn.jpg', 'http://eventapp.dynv6.net/venuemedia/DdmfAGtyOB2HPQcH8ZWn.jpg', '1', '2019-01-21 06:43:11', '2019-01-21 06:43:11'),
	(24, 18, '1', 'YnoGplu7uf0dmL6Qold0.jpg', 'http://eventapp.dynv6.net/venuemedia/YnoGplu7uf0dmL6Qold0.jpg', '1', '2019-01-21 06:43:15', '2019-01-21 06:43:15'),
	(25, 19, '1', '3wteMxY6KVaNrgrOQz2L.jpg', 'http://eventapp.dynv6.net/venuemedia/3wteMxY6KVaNrgrOQz2L.jpg', '1', '2019-01-21 07:38:58', '2019-01-21 07:38:58'),
	(26, 19, '1', 'VaBea8hHVu6Og2WuEyND.jpg', 'http://eventapp.dynv6.net/venuemedia/VaBea8hHVu6Og2WuEyND.jpg', '1', '2019-01-21 07:39:01', '2019-01-21 07:39:01'),
	(27, 19, '1', 'Mry7zNjStsVhzOzxMG0e.jpg', 'http://eventapp.dynv6.net/venuemedia/Mry7zNjStsVhzOzxMG0e.jpg', '1', '2019-01-21 07:39:04', '2019-01-21 07:39:04'),
	(28, 19, '1', 'jMgz5AFd4Ol1oFPolxey.jpg', 'http://eventapp.dynv6.net/venuemedia/jMgz5AFd4Ol1oFPolxey.jpg', '1', '2019-01-21 07:39:06', '2019-01-21 07:39:06'),
	(29, 21, '1', 'CPwPnlngAVhHk8ApXnxF.jpg', 'http://eventapp.dynv6.net/venuemedia/CPwPnlngAVhHk8ApXnxF.jpg', '1', '2019-01-21 10:57:15', '2019-01-21 10:57:15'),
	(30, 21, '2', 'N4TKg8uJiH8cWCynrqin.jpg', 'http://eventapp.dynv6.net/venuemedia/N4TKg8uJiH8cWCynrqin.jpg', '1', '2019-01-21 10:57:17', '2019-01-21 10:57:17'),
	(31, 24, '1', 'xQitRv6TEPsIGGFnANQ0.jpg', 'http://eventapp.dynv6.net/venuemedia/xQitRv6TEPsIGGFnANQ0.jpg', '1', '2019-01-21 12:17:50', '2019-01-21 12:17:50'),
	(32, 24, '2', 'YJHOOXKXFnfdQ4orQdXF.jpg', 'http://eventapp.dynv6.net/venuemedia/YJHOOXKXFnfdQ4orQdXF.jpg', '1', '2019-01-21 12:17:53', '2019-01-21 12:17:53'),
	(33, 36, '1', 'sJjpEJnW3DgUO1aLYw24.jpg', 'http://eventapp.dynv6.net/venuemedia/sJjpEJnW3DgUO1aLYw24.jpg', '1', '2019-01-22 06:25:34', '2019-01-22 06:25:34'),
	(34, 36, '2', 'k1siKwMIMSHzAFA40wky.jpg', 'http://eventapp.dynv6.net/venuemedia/k1siKwMIMSHzAFA40wky.jpg', '1', '2019-01-22 06:25:36', '2019-01-22 06:25:36'),
	(35, 48, '1', 'K7ACNAo98tnmOTCIC4XF.jpg', 'http://eventapp.dynv6.net/venuemedia/K7ACNAo98tnmOTCIC4XF.jpg', '1', '2019-01-28 06:25:40', '2019-01-28 06:25:40'),
	(36, 48, '2', 'W5riei6D01mi9GbLHqxD.jpg', 'http://eventapp.dynv6.net/venuemedia/W5riei6D01mi9GbLHqxD.jpg', '1', '2019-01-28 06:25:46', '2019-01-28 06:25:46'),
	(37, 51, '1', '1u6CGO5RZTlO2ToGUNoX.jpg', 'http://eventapp.dynv6.net/venuemedia/1u6CGO5RZTlO2ToGUNoX.jpg', '1', '2019-01-28 10:13:23', '2019-01-28 10:13:23'),
	(38, 51, '2', 'koIZmHXILaRRCiqUTpZm.jpg', 'http://eventapp.dynv6.net/venuemedia/koIZmHXILaRRCiqUTpZm.jpg', '1', '2019-01-28 10:13:29', '2019-01-28 10:13:29'),
	(39, 53, '1', 'mz0qPutO2403K9uKSj9c.jpg', 'http://eventapp.dynv6.net/venuemedia/mz0qPutO2403K9uKSj9c.jpg', '1', '2019-01-29 07:46:33', '2019-01-29 07:46:33'),
	(40, 53, '2', '0YV3jisc0ErY5ndqbFHA.jpg', 'http://eventapp.dynv6.net/venuemedia/0YV3jisc0ErY5ndqbFHA.jpg', '1', '2019-01-29 07:46:34', '2019-01-29 07:46:34'),
	(41, 53, '2', '2Araxp2FdTunBMe8atsI.jpg', 'http://eventapp.dynv6.net/venuemedia/2Araxp2FdTunBMe8atsI.jpg', '1', '2019-01-29 07:46:36', '2019-01-29 07:46:36'),
	(42, 54, '1', 'npxLYj0fdzl0ZW3fAaVK.jpg', 'http://eventapp.dynv6.net/venuemedia/npxLYj0fdzl0ZW3fAaVK.jpg', '1', '2019-01-29 10:54:17', '2019-01-29 10:54:17'),
	(43, 54, '2', 'fQA7Zxbs0igow951WHoo.jpg', 'http://eventapp.dynv6.net/venuemedia/fQA7Zxbs0igow951WHoo.jpg', '1', '2019-01-29 10:54:20', '2019-01-29 10:54:20'),
	(44, 55, '1', 'uVDoHjkrokToHWEcuoLi.jpg', 'http://eventapp.dynv6.net/venuemedia/uVDoHjkrokToHWEcuoLi.jpg', '1', '2019-01-29 16:06:29', '2019-01-29 16:06:29'),
	(45, 55, '2', 'dUFRnZE5NgF3WdrJuokQ.jpg', 'http://eventapp.dynv6.net/venuemedia/dUFRnZE5NgF3WdrJuokQ.jpg', '1', '2019-01-29 16:06:31', '2019-01-29 16:06:31'),
	(46, 56, '1', 'B5QyBnkilaoSk8PoX0yc.jpg', 'http://eventapp.dynv6.net/venuemedia/B5QyBnkilaoSk8PoX0yc.jpg', '1', '2019-01-29 16:14:36', '2019-01-29 16:14:36'),
	(47, 56, '2', 'MIFfGhut0GvKAFsWIwPP.jpg', 'http://eventapp.dynv6.net/venuemedia/MIFfGhut0GvKAFsWIwPP.jpg', '1', '2019-01-29 16:14:37', '2019-01-29 16:14:37');
/*!40000 ALTER TABLE `venue_medias` ENABLE KEYS */;

-- Dumping structure for table event.venue_music
CREATE TABLE IF NOT EXISTS `venue_music` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `music_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_music: ~13 rows (approximately)
/*!40000 ALTER TABLE `venue_music` DISABLE KEYS */;
REPLACE INTO `venue_music` (`id`, `music_name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'All Genres', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(2, 'Ambient Music', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(3, 'Afrobeats', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(4, 'Blues', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(5, 'Classical', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(6, 'Country', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(7, 'Electronic', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(8, 'House', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(9, 'Jazz', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(10, 'Mixtures of New Releases & Classics', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(11, 'Pop', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(12, 'Reggae', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(13, 'Rhythm & Blues', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00');
/*!40000 ALTER TABLE `venue_music` ENABLE KEYS */;

-- Dumping structure for table event.venue_profiles
CREATE TABLE IF NOT EXISTS `venue_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venue_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dress_code` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `capacity` bigint(20) DEFAULT NULL,
  `capacitystatus` enum('Available','Almost at capacity','Full capacity') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `parking` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entertainments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music_genres` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_profiles: ~22 rows (approximately)
/*!40000 ALTER TABLE `venue_profiles` DISABLE KEYS */;
REPLACE INTO `venue_profiles` (`id`, `venue_id`, `name`, `description`, `phone`, `dress_code`, `capacity`, `capacitystatus`, `parking`, `payment_type`, `venue_type`, `entertainments`, `music_genres`, `address`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Venue test by sonam', 'desc 1', '98988989', '1', 300, 'Almost at capacity', 'Public,Vallet', 'cash,creditcard', '1,2', '1,3', '1,2', 'test add', 13.05871070, 80.27570630, '1', '2019-01-10 10:07:34', '2019-01-10 12:11:53'),
	(2, 2, 'Venue test for vikas', 'desc 1', '98988989', '1', 300, 'Available', 'Public,Vallet', 'cash,creditcard', '1,2', '1,3', '1,2', 'test add', 13.05871070, 80.27570630, '1', '2019-01-10 10:50:04', '2019-01-10 10:50:04'),
	(3, 3, 'venue name', 'dfsdf sdf dsf a', '6565556', '0', 177, 'Available', 'Street,Public', 'Credit Card,Dabit Card', '1,5,6', '2,3', '1,2,3,4,10', 'Karnataka, India', 15.31727750, 75.71388840, '1', '2019-01-10 13:05:43', '2019-01-10 13:05:43'),
	(4, 4, 'Torento Park Avenue Street venue', 'this is the test avenue venue', '9898989332', '0', 148, 'Full capacity', 'Street,Public', 'Cash,Credit Card', '1,5', '1,2,3,4', '1,3,4,5,6', 'Toronto Premium Outlets, Steeles Avenue, Hornby, ON, Canada', 43.57559250, -79.83037460, '1', '2019-01-10 13:27:14', '2019-01-21 05:14:31'),
	(5, 6, 'dsf', 'sdfdsf', 'sdfsd', '0', 111, 'Available', 'Street,Vallet', 'Cash,Credit Card', '1,2', '1', '9', 'Mondeal Heights, Ramdev Nagar, Ahmedabad, Gujarat, India', 23.02305320, 72.50676710, '1', '2019-01-10 13:36:49', '2019-01-10 13:36:49'),
	(6, 7, 'Haresh', 'Venue app', '8200865039', '0', 517, 'Available', 'Public', 'Credit Card', '1,6', '4', '6', 'Mumbai, Maharashtra, India', 19.07598370, 72.87765590, '1', '2019-01-10 15:08:59', '2019-01-10 15:08:59'),
	(7, 8, 'torento park venue', 'hello I just want to check on you today I am', '908886558', '0', 207, 'Almost at capacity', 'Street,Public', 'Cash,Credit Card', '1,2,3', '1,3,5', '1,4', 'Toronto, ON, Canada', 43.65322600, -79.38318430, '1', '2019-01-10 15:37:01', '2019-01-10 15:38:02'),
	(8, 12, 'Chitra', 'accc', '8200595036', '0', 721, 'Available', 'Public', 'Credit Card', '2', '', '', 'prahladnagar', 0.00000000, 0.00000000, '1', '2019-01-17 07:48:37', '2019-01-17 07:48:37'),
	(9, 15, 'sdfdsfdsf', 'sdfsdf sdfsdf', '89889898989', '0', 164, 'Available', 'Street,Public', 'Cash,Credit Card', '1', '1', '1', 'Tretower, Crickhowell, UK', 51.88494400, -3.18250300, '1', '2019-01-18 06:10:39', '2019-01-18 06:10:39'),
	(10, 18, 'karnavati venue', 'this is the test venue desc', '9065899658', '0', 780, 'Full capacity', 'Street,Public,Vallet', 'Cash,Credit Card,Dabit Card', '1,3,6', '3,5', '3,4', 'Toronto, ON, Canada', 43.65322600, -79.38318430, '1', '2019-01-21 06:43:08', '2019-01-29 09:42:45'),
	(11, 19, 'Perish Jon avenue', 'Paris jone ven was my day to come here and great to buy food and great fun fun great game great app game app fun fun', '9856454246', '0', 721, 'Full capacity', 'Street,Public,Vallet', 'Cash,Credit Card,Dabit Card', '1,2,3', '1,2', '1,4,8', 'Toronto Premium Outlets, Steeles Avenue, Hornby, ON, Canada', 43.57559250, -79.83037460, '1', '2019-01-21 07:38:57', '2019-01-24 06:52:45'),
	(12, 21, 'dfgd', 'dfgdfgdf', 'gdfgdfg', '0', 64, 'Available', 'Street', 'Cash', '6', '', '', 'dfdf', 0.00000000, 0.00000000, '1', '2019-01-21 10:57:14', '2019-01-21 10:57:14'),
	(13, 24, 'The Project Cafe', 'This is a Painting Wirkshop', '9898101220', '0', 349, 'Full capacity', 'Street', 'Cash', '2', '2', '5', 'Hi-Tech Pipes Ltd.', 23.02305320, 72.50676710, '1', '2019-01-21 12:17:47', '2019-01-21 12:20:38'),
	(14, 36, 'aaaa', 'dasdsa', '985623565', '0', 494, 'Available', 'Public', 'Dabit Card', '2', '1', '8,12', 'aa', 0.00000000, 0.00000000, '1', '2019-01-22 06:25:33', '2019-01-22 06:25:33'),
	(15, 47, 'The Venue Global', 'Instant marketing to save your business!', '6478942007', '0', 513, 'Available', 'Public', 'Cash', '1,3', '2,3', '3,12,13', '150 East Liberty Street', 0.00000000, 0.00000000, '1', '2019-01-23 15:38:34', '2019-01-23 15:45:35'),
	(16, 48, 'dad Assad’s', 'asdasdasdasd', 'asdasdasdasd', '0', 293, 'Almost at capacity', 'Street,Public,Vallet', 'Cash,Credit Card,Dabit Card', '1,2', '', '', 'Mondeor, Johannesburg South, South Africa', -26.27472060, 28.00397000, '1', '2019-01-28 06:25:36', '2019-01-28 06:28:00'),
	(17, 50, 'df', 'sdfsdf', 'sd', '0', 152, 'Available', 'Street', 'Cash', '1', '5', '5', 'Kavadiguda, Hyderabad, Telangana, India', 17.41712460, 78.49064040, '1', '2019-01-28 09:37:10', '2019-01-28 09:37:10'),
	(18, 51, 'sdf', 'sdf', 'sdfsdf', '0', 218, 'Available', 'Street', 'Cash', '1', '3', '9', 'sdf', 0.00000000, 0.00000000, '1', '2019-01-28 10:13:20', '2019-01-28 10:13:20'),
	(19, 53, 'nn', 'nn', '989', '0', 683, 'Available', 'Street', 'Dabit Card', '1', '1', '9', 'bb', 0.00000000, 0.00000000, '1', '2019-01-29 07:46:31', '2019-01-29 07:46:31'),
	(20, 54, 'xcv', 'were were', 'ewrerewr', '0', 180, 'Full capacity', 'Street', 'Cash', '1', '3', '1', 'Mondeal Heights, Ramdev Nagar, Ahmedabad, Gujarat, India', 23.02305320, 72.50676710, '1', '2019-01-29 10:54:16', '2019-01-29 10:54:41'),
	(21, 55, 'karnavati club', 'hermeneutic the following user ID and it is addressed and', '988999959595', '0', 718, 'Available', 'Street,Public', 'Cash,Credit Card', '1,3', '5', '4', 'Mondeal Heights, Ramdev Nagar, Ahmedabad, Gujarat, India', 23.02305320, 72.50676710, '1', '2019-01-29 16:06:27', '2019-01-29 16:06:27'),
	(22, 56, 'Mondeal heights events', 'Anna a good one is 8888383883', '989499494', '0', 338, 'Available', 'Street,Public', 'Cash,Credit Card', '1,2,3', '5', '5,6', 'Mondeal Heights, Ramdev Nagar, Ahmedabad, Gujarat, India', 23.02305320, 72.50676710, '1', '2019-01-29 16:14:35', '2019-01-29 16:14:35');
/*!40000 ALTER TABLE `venue_profiles` ENABLE KEYS */;

-- Dumping structure for table event.venue_promos
CREATE TABLE IF NOT EXISTS `venue_promos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venue_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_promos: ~15 rows (approximately)
/*!40000 ALTER TABLE `venue_promos` DISABLE KEYS */;
REPLACE INTO `venue_promos` (`id`, `venue_id`, `name`, `start_date`, `start_time`, `end_date`, `end_time`, `description`, `status`, `created_at`, `updated_at`) VALUES
	(16, 1, 'First Promos', 'Oct 27, 2018', '05.00 PM', 'Oct 28, 2018', '07.00 PM', 'Test Promos for first venue', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(17, 1, 'TestPromos', 'Oct 27, 2018', '05.00 PM', 'Oct 28, 2018', '07.00 PM', 'Test Promos for first venue', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(18, 18, 'Bye one get one free', 'Jan 24, 2019', '04:11 pm', 'Jan 24, 2019', '04:11 pm', 'Bye one get one free', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(19, 1, 'Second Promos', 'Oct 27, 2018', '05.00 PM', 'Oct 28, 2018', '07.00 PM', 'Test Promos for first venue', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(20, 1, 'Second Promos', 'Oct 27, 2018', '05.00 PM', 'Oct 28, 2018', '07.00 PM', 'Test Promos for first venue', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(21, 1, 'Second Promos', 'Oct 27, 2018', '05.00 PM', 'Oct 28, 2019', '07.00 PM', 'Test Promos for first venue', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(22, 18, 'Get 30% cash back using Amazon Pay', 'Jan 24, 2019', '06:00 pm', 'Feb 28, 2019', '06:00 pm', 'Use above code and get 30% discount by pay Amazon Pay. Offer is valid till Feb 2019', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(23, 18, 'Get 25% Discount using MasterCard', 'Jan 24, 2019', '06:00 pm', 'Jan 26, 2019', '06:00 pm', 'Get 25% discount using Master card', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(24, 18, 'Free dinner coupon', 'Jan 24, 2019', '06:07 pm', 'Apr 24, 2019', '06:07 pm', 'Free dinner coupon', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(25, 48, 'bye one get one free', 'Jan 28, 2019', '12:02 pm', 'Jan 28, 2019', '12:02 pm', 'dfsdfds', '1', '2019-01-28 06:32:41', '2019-01-28 06:32:41'),
	(26, 18, 'By Two Get one free', 'Jan 28, 2019', '03:14 pm', 'Jan 28, 2019', '03:14 pm', 'sdf', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(27, 53, 'nznzn', 'Jan 29, 2019', '01:30 pm', 'Jan 31, 2019', '04:30 am', 'nxnx', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(28, 18, 'Bye Two Food one Free', 'Jan 29, 2019', '04:27 pm', 'Jan 31, 2020', '04:27 pm', 'Bye any two food item you will get one free', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(29, 18, 'bye two get one free', 'Jan 29, 2019', '07:15 pm', 'Jan 29, 2020', '05:15 pm', 'but two get one free', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(30, 55, 'byeone get one free', 'Jan 29, 2019', '09:33 pm', 'Jan 29, 2019', '09:33 pm', 'tree in a different than a week of the', '1', '2019-01-29 16:09:06', '2019-01-29 16:09:06');
/*!40000 ALTER TABLE `venue_promos` ENABLE KEYS */;

-- Dumping structure for table event.venue_promos_hours
CREATE TABLE IF NOT EXISTS `venue_promos_hours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venue_promos_id` int(11) NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_selected` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = closed, 1 = open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_promos_hours: ~105 rows (approximately)
/*!40000 ALTER TABLE `venue_promos_hours` DISABLE KEYS */;
REPLACE INTO `venue_promos_hours` (`id`, `venue_promos_id`, `day`, `is_selected`, `created_at`, `updated_at`) VALUES
	(1, 16, 'Monday', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(2, 16, 'Tuesday ', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(3, 16, 'Wednesday', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(4, 16, 'Thursday', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(5, 16, 'Friday', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(6, 16, 'Saturday', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(7, 16, 'Sunday', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(8, 17, 'Monday', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(9, 17, 'Tuesday ', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(10, 17, 'Wednesday', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(11, 17, 'Thursday', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(12, 17, 'Friday', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(13, 17, 'Saturday', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(14, 17, 'Sunday', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(15, 18, 'Monday', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(16, 18, 'Tuesday ', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(17, 18, 'Wednesday', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(18, 18, 'Thursday', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(19, 18, 'Friday', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(20, 18, 'Saturday', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(21, 18, 'Sunday', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(22, 19, 'Monday', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(23, 19, 'Tuesday ', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(24, 19, 'Wednesday', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(25, 19, 'Thursday', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(26, 19, 'Friday', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(27, 19, 'Saturday', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(28, 19, 'Sunday', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(29, 20, 'Monday', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(30, 20, 'Tuesday ', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(31, 20, 'Wednesday', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(32, 20, 'Thursday', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(33, 20, 'Friday', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(34, 20, 'Saturday', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(35, 20, 'Sunday', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(36, 21, 'Monday', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(37, 21, 'Tuesday ', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(38, 21, 'Wednesday', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(39, 21, 'Thursday', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(40, 21, 'Friday', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(41, 21, 'Saturday', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(42, 21, 'Sunday', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(43, 22, 'Monday', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(44, 22, 'Tuesday ', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(45, 22, 'Wednesday', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(46, 22, 'Thursday', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(47, 22, 'Friday', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(48, 22, 'Saturday', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(49, 22, 'Sunday', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(50, 23, 'Monday', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(51, 23, 'Tuesday ', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(52, 23, 'Wednesday', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(53, 23, 'Thursday', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(54, 23, 'Friday', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(55, 23, 'Saturday', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(56, 23, 'Sunday', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(57, 24, 'Monday', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(58, 24, 'Tuesday ', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(59, 24, 'Wednesday', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(60, 24, 'Thursday', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(61, 24, 'Friday', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(62, 24, 'Saturday', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(63, 24, 'Sunday', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(64, 25, 'Monday', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(65, 25, 'Tuesday ', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(66, 25, 'Wednesday', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(67, 25, 'Thursday', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(68, 25, 'Friday', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(69, 25, 'Saturday', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(70, 25, 'Sunday', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(71, 26, 'Monday', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(72, 26, 'Tuesday ', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(73, 26, 'Wednesday', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(74, 26, 'Thursday', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(75, 26, 'Friday', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(76, 26, 'Saturday', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(77, 26, 'Sunday', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(78, 27, 'Monday', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(79, 27, 'Tuesday ', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(80, 27, 'Wednesday', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(81, 27, 'Thursday', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(82, 27, 'Friday', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(83, 27, 'Saturday', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(84, 27, 'Sunday', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(85, 28, 'Monday', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(86, 28, 'Tuesday ', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(87, 28, 'Wednesday', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(88, 28, 'Thursday', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(89, 28, 'Friday', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(90, 28, 'Saturday', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(91, 28, 'Sunday', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(92, 29, 'Monday', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(93, 29, 'Tuesday ', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(94, 29, 'Wednesday', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(95, 29, 'Thursday', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(96, 29, 'Friday', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(97, 29, 'Saturday', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(98, 29, 'Sunday', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(99, 30, 'Monday', '1', '2019-01-29 16:09:06', '2019-01-29 16:09:06'),
	(100, 30, 'Tuesday ', '1', '2019-01-29 16:09:06', '2019-01-29 16:09:06'),
	(101, 30, 'Wednesday', '0', '2019-01-29 16:09:06', '2019-01-29 16:09:06'),
	(102, 30, 'Thursday', '0', '2019-01-29 16:09:06', '2019-01-29 16:09:06'),
	(103, 30, 'Friday', '0', '2019-01-29 16:09:06', '2019-01-29 16:09:06'),
	(104, 30, 'Saturday', '1', '2019-01-29 16:09:06', '2019-01-29 16:09:06'),
	(105, 30, 'Sunday', '1', '2019-01-29 16:09:06', '2019-01-29 16:09:06');
/*!40000 ALTER TABLE `venue_promos_hours` ENABLE KEYS */;

-- Dumping structure for table event.venue_promos_medias
CREATE TABLE IF NOT EXISTS `venue_promos_medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venue_promos_id` int(11) NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileurl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_promos_medias: ~15 rows (approximately)
/*!40000 ALTER TABLE `venue_promos_medias` DISABLE KEYS */;
REPLACE INTO `venue_promos_medias` (`id`, `venue_promos_id`, `filename`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
	(1, 16, 'Ioh1L4OWSZycirzf980u.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/Ioh1L4OWSZycirzf980u.jpg', '1', '2019-01-24 10:21:01', '2019-01-24 10:21:01'),
	(2, 17, 'rBbLnV3LYwAX7UO7q7JC.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/rBbLnV3LYwAX7UO7q7JC.jpg', '1', '2019-01-24 10:21:19', '2019-01-24 10:21:19'),
	(3, 18, 'Z40c5pThrwz084dvaQpS.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/Z40c5pThrwz084dvaQpS.jpg', '1', '2019-01-24 10:43:06', '2019-01-24 10:43:06'),
	(4, 19, 'C4iKvkyJQFAb1f7W2GVK.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/C4iKvkyJQFAb1f7W2GVK.jpg', '1', '2019-01-24 11:10:17', '2019-01-24 11:10:17'),
	(5, 20, 'VpkOB5HBPUe212fWOpiq.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/VpkOB5HBPUe212fWOpiq.jpg', '1', '2019-01-24 11:19:25', '2019-01-24 11:19:25'),
	(6, 21, '74mXNAN52hiRYeMez3fr.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/74mXNAN52hiRYeMez3fr.jpg', '1', '2019-01-24 11:19:27', '2019-01-24 11:19:27'),
	(7, 22, 'h1NyrdLxnpVagZijrKcC.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/h1NyrdLxnpVagZijrKcC.jpg', '1', '2019-01-24 12:32:27', '2019-01-24 12:32:27'),
	(8, 23, 'o1PfcX7gMveC8bK0nDn9.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/o1PfcX7gMveC8bK0nDn9.jpg', '1', '2019-01-24 12:35:48', '2019-01-24 12:35:48'),
	(9, 24, 'JwBfOAwqxbTdfG10mSyY.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/JwBfOAwqxbTdfG10mSyY.jpg', '1', '2019-01-24 12:39:25', '2019-01-24 12:39:25'),
	(10, 25, 'z3lekQpWTLYOmRN0kafZ.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/z3lekQpWTLYOmRN0kafZ.jpg', '1', '2019-01-28 06:32:42', '2019-01-28 06:32:42'),
	(11, 26, '0z5C9AiK5Mk2QAw7iQHe.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/0z5C9AiK5Mk2QAw7iQHe.jpg', '1', '2019-01-28 09:46:27', '2019-01-28 09:46:27'),
	(12, 27, 'uB1sOTYyQKs2vv354j3D.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/uB1sOTYyQKs2vv354j3D.jpg', '1', '2019-01-29 08:01:39', '2019-01-29 08:01:39'),
	(13, 28, 'OkzBybcHjDV3FxovNaSc.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/OkzBybcHjDV3FxovNaSc.jpg', '1', '2019-01-29 11:00:05', '2019-01-29 11:00:05'),
	(14, 29, 'henyHfnoEJoAxqFjGiP1.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/henyHfnoEJoAxqFjGiP1.jpg', '1', '2019-01-29 11:46:26', '2019-01-29 11:46:26'),
	(15, 30, 'VS2Y8a6exXeACGAZLk3z.jpg', 'http://eventapp.dynv6.net/venuepromosmedia/VS2Y8a6exXeACGAZLk3z.jpg', '1', '2019-01-29 16:09:06', '2019-01-29 16:09:06');
/*!40000 ALTER TABLE `venue_promos_medias` ENABLE KEYS */;

-- Dumping structure for table event.venue_types
CREATE TABLE IF NOT EXISTS `venue_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table event.venue_types: ~6 rows (approximately)
/*!40000 ALTER TABLE `venue_types` DISABLE KEYS */;
REPLACE INTO `venue_types` (`id`, `type_name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Bar', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(2, 'Cafe', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(3, 'Club', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(4, 'Event', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(5, 'Restaurant', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00'),
	(6, 'Lounge', '1', '2018-12-31 18:30:00', '2019-01-01 18:30:00');
/*!40000 ALTER TABLE `venue_types` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
