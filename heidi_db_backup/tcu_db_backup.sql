-- --------------------------------------------------------
-- Host:                         frwahxxknm9kwy6c.cbetxkdyhwsb.us-east-1.rds.amazonaws.com
-- Server version:               8.0.23 - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table ltsjycgkw6sicvum.annoucement_categories
CREATE TABLE IF NOT EXISTS `annoucement_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.annoucement_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `annoucement_categories` DISABLE KEYS */;
INSERT INTO `annoucement_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Birthday', 'Birthday', '2022-03-25 11:39:52', '2022-03-25 11:39:52'),
	(2, 'Prayer', 'Prayer', '2022-03-25 11:40:18', '2022-03-25 11:40:18'),
	(3, 'Mother\'s Day', 'Mother\'s Day', '2022-03-26 05:58:31', '2022-03-26 05:58:31'),
	(4, 'Child Dedication', 'Child Dedication', '2022-04-03 11:00:11', '2022-04-03 11:00:11');
/*!40000 ALTER TABLE `annoucement_categories` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.announcements
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `annouce_cat_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.announcements: ~4 rows (approximately)
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` (`id`, `user_id`, `annouce_cat_id`, `title`, `message`, `image`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Qui quas ullam aliqu', 'Pariatur Irure ipsa', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_280,w_519/fbyrbf2tje47fvoz7ue5.png', '2022-03-25 16:15:39', '2022-03-25 16:15:39'),
	(2, 1, 1, 'Quidem labore non ni', 'Nobis velit ullamco', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_385,w_626/bby4pmxs6erjuyfn8tif.png', '2022-03-25 19:27:43', '2022-03-25 19:27:43'),
	(3, 1, 3, 'Et aliqua In Nam te', 'Ea accusamus laborum', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_667,w_1200/s8ttfpinjddz5t8qx9ry.png', '2022-03-26 05:58:53', '2022-03-26 05:58:53'),
	(4, 1, 1, 'Temporibus libero te', 'Sapiente voluptas fu', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_580,w_648/wytzj8ggywhbwl4e7k8d.png', '2022-03-26 13:01:11', '2022-03-26 13:01:11');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.galleries
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `gallery_cat_id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.galleries: ~6 rows (approximately)
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` (`id`, `user_id`, `gallery_cat_id`, `image_name`, `image`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Mother\'s day', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_3000,w_4496/gm5acvzihqts5ojofr3z.png', '2022-03-29 20:57:13', '2022-03-29 20:57:13'),
	(2, 1, 2, '2021 TCU Week', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/jan5xom9wawhsynosxac.png', '2022-03-30 11:38:23', '2022-03-30 12:02:30'),
	(3, 1, 2, '2021 TCU Week', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/j4zwwmn36cbvmhmcnm69.png', '2022-03-30 11:38:25', '2022-04-03 10:34:51'),
	(4, 1, 2, '2021 TCU Week', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/eqmjlecnprt4f6vupcnd.png', '2022-03-30 12:07:27', NULL),
	(5, 1, 2, '2021 TCU Week', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/qmtddumrosxsshcrslp6.png', '2022-03-30 12:07:27', NULL),
	(6, 1, 2, '2021 TCU Week', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/xmayrtlpguhjirmymtlb.png', '2022-03-30 12:07:28', NULL);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.gallery_categories
CREATE TABLE IF NOT EXISTS `gallery_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.gallery_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `gallery_categories` DISABLE KEYS */;
INSERT INTO `gallery_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Mid Week Service', 'Mid Week Service', '2022-03-25 15:34:29', '2022-03-25 15:34:29'),
	(2, '2021 TCU Week', '2021 TCU Week', '2022-03-30 11:37:41', '2022-03-30 11:37:41');
/*!40000 ALTER TABLE `gallery_categories` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname_next_of_kin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname_next_of_kin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_next_of_kin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relate_next_of_kin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_next_of_kin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_next_of_kin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_of_specialization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maiden_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resident_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subunit_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobbies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.members: ~0 rows (approximately)
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.migrations: ~29 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_10_13_141007_create_members_table', 1),
	(6, '2021_10_20_040051_create_subunits_table', 1),
	(7, '2021_10_20_144053_create_skills_table', 1),
	(8, '2021_10_22_021226_create_postings_table', 1),
	(9, '2021_10_25_125943_create_studio_related_skills_table', 1),
	(10, '2021_12_19_180255_add_columns_to_users_table', 1),
	(11, '2021_12_19_181630_create_user_details_table', 1),
	(12, '2021_12_19_201435_add_coulmns_to_postings_table', 1),
	(13, '2021_12_19_205644_create_bans_table', 1),
	(14, '2021_12_19_205854_create_suspensions_table', 1),
	(15, '2021_12_19_210831_create_announcements_table', 1),
	(16, '2021_12_19_211524_create_annoucement_categories_table', 1),
	(17, '2021_12_19_212028_create_units_table', 1),
	(18, '2021_12_25_080556_add_colunm_to_user_details_table', 1),
	(19, '2022_01_11_144638_add_column_to_announcements_table', 1),
	(20, '2022_01_18_104500_add_columns_to_postings_table', 1),
	(21, '2022_01_20_141014_add_columns_to_announcements_table', 1),
	(22, '2022_01_21_003405_add_two_columns_to_users_table', 1),
	(23, '2022_01_21_112026_create_track_postings_table', 1),
	(24, '2022_02_25_023159_add_is_terminate_column_to_postings_table', 1),
	(25, '2022_02_25_024804_add_date_terminated_to_track_postings_table', 1),
	(26, '2022_03_01_142559_create_gallery_categories_table', 1),
	(27, '2022_03_01_142850_create_galleries_table', 1),
	(28, '2022_03_08_231147_rename_column_suspension_id_in_users_table', 1),
	(29, '2022_03_15_155515_create_sliders_table', 1),
	(30, '2022_03_26_222326_add_column_surname_to_user_details_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.postings
CREATE TABLE IF NOT EXISTS `postings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `unit_id` bigint unsigned DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `subunit_id` bigint unsigned DEFAULT NULL,
  `posting_status` int DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_terminated` int DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `date_terminated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_duration` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.postings: ~6 rows (approximately)
/*!40000 ALTER TABLE `postings` DISABLE KEYS */;
INSERT INTO `postings` (`id`, `user_id`, `unit_id`, `member_id`, `subunit_id`, `posting_status`, `duration`, `is_terminated`, `reason`, `date_terminated`, `check_duration`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 2, 1, 3, '0 months, 12 days', NULL, NULL, NULL, NULL, '2022-03-28', '2022-04-09', '2022-03-28 20:50:24', '2022-03-28 20:50:24'),
	(2, 1, NULL, 3, 2, 2, '0 months, 11 days', NULL, NULL, NULL, NULL, '2022-03-29', '2022-04-09', '2022-03-29 15:43:39', '2022-03-29 15:43:39'),
	(3, 1, NULL, 8, 4, 3, '1 months, 4 days', NULL, NULL, NULL, NULL, '2022-04-03', '2022-05-07', '2022-04-03 01:17:23', '2022-04-03 01:17:23'),
	(4, 1, NULL, 7, 2, 3, '0 months, 28 days', NULL, NULL, NULL, NULL, '2022-04-03', '2022-05-01', '2022-04-03 10:48:46', '2022-04-03 10:48:46'),
	(5, 1, NULL, 10, 1, 4, '0 months, 24 days', NULL, NULL, NULL, NULL, '2022-04-06', '2022-04-30', '2022-04-06 22:14:59', '2022-04-06 22:14:59'),
	(6, 1, NULL, 12, 2, 3, '1 months, 0 days', NULL, NULL, NULL, NULL, '2022-05-04', '2022-06-04', '2022-05-04 12:41:40', '2022-05-04 12:41:40'),
	(7, 1, NULL, 13, 3, 3, '1 months, 0 days', NULL, NULL, NULL, NULL, '2022-05-10', '2022-06-10', '2022-05-10 13:03:23', '2022-05-10 13:03:23');
/*!40000 ALTER TABLE `postings` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.skills: ~0 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.sliders: ~5 rows (approximately)
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` (`id`, `user_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
	(7, 1, 'Winner Chapel D/Line', 'Winner Chapel D/Line Main Auditorium', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/dtdbp1gezhdcsmukssst.png', '2022-03-26 05:11:15', '2022-03-30 13:15:32'),
	(9, 1, 'TCU Members', 'TCU Members that God has helped', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/nkn0igwqx3vplc5j8iii.png', '2022-03-26 13:16:52', '2022-03-30 13:04:10'),
	(11, 1, 'TCU Week Empowerment', 'TCU Week Empowerment goes to a dedicated and committed member', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_3000,w_4496/tzumfadenswmslmud44i.png', '2022-03-26 15:03:05', '2022-03-30 13:01:59'),
	(14, 1, '2021 TCU Week', 'Cross Section of TCU Member at 2021 TCU Week', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_800,w_1200/r8knr7nuzdzfcvbaw1ao.png', '2022-03-29 20:32:15', '2022-03-30 13:00:11');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.studio_related_skills
CREATE TABLE IF NOT EXISTS `studio_related_skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL,
  `skill_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.studio_related_skills: ~0 rows (approximately)
/*!40000 ALTER TABLE `studio_related_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `studio_related_skills` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.subunits
CREATE TABLE IF NOT EXISTS `subunits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.subunits: ~4 rows (approximately)
/*!40000 ALTER TABLE `subunits` DISABLE KEYS */;
INSERT INTO `subunits` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Cable', 'This unit oversees everything that has to do with cabling and making sure that all television and speakers are on working fine during service', '2022-01-11 04:28:47', '2022-01-11 04:28:47'),
	(2, 'Camera', 'This Subunit make sure they feed the console subunit with good visual for broadcasting during service', '2022-03-29 21:06:14', '2022-01-11 04:29:28'),
	(3, 'Console', 'This Subunit are responsible for give out a final visual and audio output during the service for smooth broadcasting.', '2022-01-11 04:29:53', '2022-01-11 04:29:53'),
	(4, 'Production/Sales', 'These Units are responsible for duplicating for recording both audio, MP3 and DVD messages and as well the sales of it at the dismissal of each service.', '2022-01-11 04:29:53', '2022-01-11 04:29:53');
/*!40000 ALTER TABLE `subunits` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.suspensions
CREATE TABLE IF NOT EXISTS `suspensions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `susp_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.suspensions: ~0 rows (approximately)
/*!40000 ALTER TABLE `suspensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspensions` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.track_postings
CREATE TABLE IF NOT EXISTS `track_postings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `member_id` bigint unsigned NOT NULL,
  `subunit_id` bigint unsigned NOT NULL,
  `posting_status` bigint unsigned NOT NULL,
  `unit_id` bigint unsigned DEFAULT NULL,
  `start_date` int NOT NULL,
  `expired_at` int NOT NULL,
  `duration` int DEFAULT NULL,
  `is_terminated` int DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_terminated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.track_postings: ~0 rows (approximately)
/*!40000 ALTER TABLE `track_postings` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_postings` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.units
CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.units: ~0 rows (approximately)
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
/*!40000 ALTER TABLE `units` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subunit_id` int DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_posted` int DEFAULT '0',
  `post_count` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `subunit_id`, `username`, `name`, `email`, `email_verified_at`, `gender`, `password`, `remember_token`, `banned_id`, `status`, `role`, `badge`, `is_posted`, `post_count`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'admin93', 'admin', 'admin@admin.com', NULL, 'male', '$2y$10$8h1.dgxNb0eYZUw0CEeFAuknTbO6mjx6Y3D2bAIahCEjVKWtPeZ6C', NULL, 0, 0, '1', '0', 0, NULL, NULL, '2022-02-09 03:03:47', '2022-02-09 14:32:48'),
	(11, NULL, 'Victor1128', 'Ngah Victor Ogbonna', 'vikngah@gmail.com', NULL, 'male', '$2y$10$gn4U8POlc7.rTo7X0tr/zO4lQJgSM38ZNkfCxFmkTTdOb42st/OjC', NULL, NULL, NULL, '3', NULL, 0, NULL, NULL, '2022-04-03 11:02:40', '2022-04-03 11:02:40'),
	(12, NULL, 'Godwin2192', 'Tombrown Godwin S', 'godwintombrown@gmail.com', NULL, 'male', '$2y$10$g1/XsjCKvlpumycxW14YjuQuWG.GYChiVHwebNZDF.MR/iky8nkhS', NULL, NULL, 4, '4', NULL, 1, 1, NULL, '2022-04-07 21:31:01', '2022-05-04 12:41:40'),
	(13, NULL, 'David3640', 'Ezekiel David Udo', 'david@gmail.com', NULL, 'male', '$2y$10$z./mJ6rok1dn.hjBVtujnuoy94pEVp/VBvHhqDJ2wwV1BzQsNjuD.', NULL, NULL, 4, '4', NULL, 1, 1, NULL, '2022-05-10 12:58:26', '2022-05-10 13:03:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table ltsjycgkw6sicvum.user_details
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `posting_id` bigint unsigned DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname_next_of_kin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname_next_of_kin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_next_of_kin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relate_next_of_kin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_next_of_kin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_next_of_kin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_of_specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maiden_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resident_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `born_again` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `church_join_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_join_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `water_baptism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holyghost_baptism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wofbi_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tither` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homecell_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobbies` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_details_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ltsjycgkw6sicvum.user_details: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`id`, `user_id`, `created_by`, `posting_id`, `surname`, `firstname`, `lastname`, `gender`, `email`, `work_phone`, `home_phone`, `dob`, `pob`, `passport`, `marital_status`, `fname_next_of_kin`, `lname_next_of_kin`, `phone_next_of_kin`, `relate_next_of_kin`, `gender_next_of_kin`, `address_next_of_kin`, `employment_status`, `profession`, `area_of_specialization`, `nationality`, `state_origin`, `lga`, `town`, `maiden_name`, `resident_address`, `category`, `born_again`, `church_join_date`, `unit_join_date`, `membership_class`, `water_baptism`, `holyghost_baptism`, `wofbi_id`, `tither`, `homecell_id`, `hobbies`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(10, 11, 1, NULL, 'Ngah', 'Victor', 'Ogbonna', 'male', 'vikngah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-03 11:02:40', '2022-04-03 11:02:40'),
	(11, 12, 1, NULL, 'Tombrown', 'Godwin', 'S', 'male', 'godwintombrown@gmail.com', '08069071539', '09041580877', '1992-01-06', 'Benin City', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_239,w_214/xfjggcoauu70xfqctzw3.png', 'single', 'Joy', 'Tombrown', '07042602440', 'Sister', 'female', 'No 4 Wali Street, Okporo Road, Rumudara, PH', 'Entreprenuer', 'Programmer', 'Software Development', 'Nigerian', 'Akwa Ibom', 'Oruk Anam', 'Ikot Akam Ibesit', 'Inanang', 'No 4 Wali Street, Okporo Road, Rumudara, PH', NULL, 'Yes', '2009-09-20', '2009-11-22', 'Yes', 'Yes', 'Yes', '1', 'Yes', 'Yes', 'Travelling', NULL, '2022-04-07 21:31:01', '2022-04-08 05:14:49'),
	(12, 13, 1, NULL, 'Ezekiel', 'David', 'Udo', 'male', 'david@gmail.com', '07061320912', '08124320932', '1997-06-17', 'Uyo', 'http://res.cloudinary.com/djgffdhhu/image/upload/c_fit,h_360,w_360/xjc9yy20hglz4tmojtgh.png', 'single', 'Bree Miles', 'Martha Jones', '+1 (526) 356-7024', 'Doloremque dolore es', 'female', 'Similique id simili', 'Omnis quia consequat', 'Quasi natus id repre', 'Eos expedita id mo', 'Mollitia obcaecati n', 'Quas sit nemo culpa', 'Rerum unde sed quisq', 'Ut dolor eum omnis u', 'Kiona Le', 'Natus pariatur Sed', NULL, 'Ex aut delectus mol', '1993-01-07', '1974-10-25', 'Est est tempore lau', 'Nihil ab sit non et', 'Et quod rerum possim', '2', 'Cumque rerum dolorem', 'Molestiae et dolore', 'Eaque ut minus bland', NULL, '2022-05-10 12:58:26', '2022-05-10 13:01:10');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
