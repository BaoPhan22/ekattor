-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 08:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meyzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_addons`
--

CREATE TABLE `meyzerschool_addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_assign_students`
--

CREATE TABLE `meyzerschool_assign_students` (
  `id` int(255) UNSIGNED NOT NULL,
  `school_id` int(255) DEFAULT NULL,
  `vehicle_id` int(255) DEFAULT NULL,
  `driver_id` int(255) DEFAULT NULL,
  `class_id` int(255) DEFAULT NULL,
  `student_id` int(255) DEFAULT NULL,
  `date_added` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_books`
--

CREATE TABLE `meyzerschool_books` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_book_issues`
--

CREATE TABLE `meyzerschool_book_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_ci_sessions`
--

CREATE TABLE `meyzerschool_ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_ci_sessions`
--

INSERT INTO `meyzerschool_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('glcg9q94429q06qel1ehrma7na3ft186', '::1', 1715312978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353331323937383b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('1p83eudnj6ku7258qmumq7sfbqpjki25', '::1', 1715313296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353331333239363b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('72eb3r01uooh6f02inthl9mqt4aq7u9o', '::1', 1715313532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353331333239363b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('q6ia3q32t8imfnpg5ogeogo5q7e8mi5v', '::1', 1715316863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353331363836333b6163746976655f7363686f6f6c5f69647c733a313a2231223b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b),
('u4pg5rch067jg3ecvjjh98g9thhr0n5h', '::1', 1715316799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353331363736373b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b666c6173685f6d6573736167657c733a31323a2257656c636f6d65206261636b223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('266cf1ddh6n06rlom7tshpeqm6qckmtc', '::1', 1715317204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353331373230343b6163746976655f7363686f6f6c5f69647c733a313a2231223b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b),
('l83pu2ua31iuanq824d0hl50nqmt881e', '::1', 1715321074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353332313037343b6163746976655f7363686f6f6c5f69647c733a313a2231223b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b),
('od13fih5iaqehopcqcj63uehor611i7s', '::1', 1715321341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731353332313037343b6163746976655f7363686f6f6c5f69647c733a313a2231223b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a343a2248696869223b757365725f747970657c733a31303a22737570657261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_classes`
--

CREATE TABLE `meyzerschool_classes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_classes`
--

INSERT INTO `meyzerschool_classes` (`id`, `name`, `school_id`) VALUES
(1, 'C1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_class_rooms`
--

CREATE TABLE `meyzerschool_class_rooms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_class_rooms`
--

INSERT INTO `meyzerschool_class_rooms` (`id`, `name`, `school_id`) VALUES
(1, 'R1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_common_settings`
--

CREATE TABLE `meyzerschool_common_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_common_settings`
--

INSERT INTO `meyzerschool_common_settings` (`id`, `type`, `description`) VALUES
(1, 'recaptcha_status', '0'),
(2, 'recaptcha_sitekey', 'enter-your-recaptcha-sitekey'),
(3, 'recaptcha_secretkey', 'enter-your-recaptcha-secretkey');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_currencies`
--

CREATE TABLE `meyzerschool_currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `paystack_supported` int(11) DEFAULT 0,
  `payumoney_supported` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `meyzerschool_currencies`
--

INSERT INTO `meyzerschool_currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `paystack_supported`, `payumoney_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1, 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1, 0, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1, 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1, 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1, 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1, 0, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1, 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1, 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1, 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0, 0, 1),
(11, 'Euro', 'EUR', '€', 1, 1, 0, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1, 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1, 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1, 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1, 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1, 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1, 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1, 0, 1),
(19, 'Pounds', 'GBP', '£', 1, 1, 0, 1),
(20, 'Dollars', 'BND', '$', 0, 1, 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1, 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1, 0, 1),
(23, 'Dollars', 'KYD', '$', 0, 1, 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1, 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1, 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1, 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1, 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1, 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0, 0, 1),
(30, 'Koruny', 'CZK', 'Kč', 1, 1, 0, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1, 0, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1, 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1, 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1, 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0, 0, 1),
(36, 'Pounds', 'FKP', '£', 0, 1, 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1, 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0, 0, 1),
(39, 'Pounds', 'GIP', '£', 0, 1, 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1, 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0, 0, 1),
(42, 'Dollars', 'GYD', '$', 0, 1, 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1, 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1, 0, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1, 0, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1, 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1, 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1, 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0, 0, 1),
(50, 'Pounds', 'IMP', '£', 0, 0, 0, 1),
(51, 'New Shekels', 'ILS', '₪', 1, 1, 0, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1, 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1, 0, 1),
(54, 'Pounds', 'JEP', '£', 0, 0, 0, 1),
(55, 'Tenge', 'KZT', 'лв', 0, 1, 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0, 0, 1),
(57, 'Won', 'KRW', '₩', 0, 1, 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1, 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1, 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0, 0, 1),
(61, 'Pounds', 'LBP', '£', 0, 1, 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1, 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1, 0, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0, 0, 1),
(65, 'Denars', 'MKD', 'ден', 0, 1, 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1, 0, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1, 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1, 0, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1, 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1, 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1, 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1, 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1, 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1, 0, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1, 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1, 1, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1, 0, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0, 0, 1),
(79, 'Rupees', 'PKR', '₨', 0, 1, 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1, 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1, 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1, 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1, 0, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1, 0, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1, 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1, 0, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1, 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1, 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1, 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1, 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1, 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1, 0, 1),
(93, 'Dollars', 'SBD', '$', 0, 1, 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1, 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1, 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1, 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1, 0, 1),
(98, 'Dollars', 'SRD', '$', 0, 1, 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0, 0, 1),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1, 0, 1),
(101, 'Baht', 'THB', '฿', 1, 1, 0, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1, 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1, 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0, 0, 1),
(105, 'Dollars', 'TVD', '$', 0, 0, 0, 1),
(106, 'Hryvnia', 'UAH', '₴', 0, 1, 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1, 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1, 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0, 0, 1),
(110, 'Dong', 'VND', '₫', 0, 1, 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1, 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0, 0, 1),
(113, 'Bangladesh', 'BDT', '৳', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_daily_attendances`
--

CREATE TABLE `meyzerschool_daily_attendances` (
  `id` int(11) NOT NULL,
  `timestamp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_daily_attendances`
--

INSERT INTO `meyzerschool_daily_attendances` (`id`, `timestamp`, `class_id`, `section_id`, `student_id`, `status`, `session_id`, `school_id`) VALUES
(1, '1715274000', 1, 1, 1, 1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_departments`
--

CREATE TABLE `meyzerschool_departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_departments`
--

INSERT INTO `meyzerschool_departments` (`id`, `name`, `school_id`) VALUES
(1, 'D1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_drivers`
--

CREATE TABLE `meyzerschool_drivers` (
  `id` int(255) UNSIGNED NOT NULL,
  `school_id` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `social_links` mediumtext DEFAULT NULL,
  `about` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_enrols`
--

CREATE TABLE `meyzerschool_enrols` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `meyzerschool_enrols`
--

INSERT INTO `meyzerschool_enrols` (`id`, `student_id`, `class_id`, `section_id`, `school_id`, `session`) VALUES
(1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_event_calendars`
--

CREATE TABLE `meyzerschool_event_calendars` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(10) DEFAULT NULL,
  `session` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_exams`
--

CREATE TABLE `meyzerschool_exams` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_expenses`
--

CREATE TABLE `meyzerschool_expenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_expense_categories`
--

CREATE TABLE `meyzerschool_expense_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_frontend_events`
--

CREATE TABLE `meyzerschool_frontend_events` (
  `frontend_events_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-inactive, 1-active',
  `school_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_frontend_gallery`
--

CREATE TABLE `meyzerschool_frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) NOT NULL DEFAULT 0 COMMENT '0-no 1-yes',
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_frontend_gallery_image`
--

CREATE TABLE `meyzerschool_frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_frontend_settings`
--

CREATE TABLE `meyzerschool_frontend_settings` (
  `id` int(11) NOT NULL,
  `about_us` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_conditions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_policy` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `copyright_text` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us_image` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage_note_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage_note_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_frontend_settings`
--

INSERT INTO `meyzerschool_frontend_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `social_links`, `copyright_text`, `about_us_image`, `slider_images`, `theme`, `homepage_note_title`, `homepage_note_description`, `website_title`) VALUES
(1, '&lt;h1&gt;About Our Schools&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school historys&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our schools&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Terms of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Privacy policy of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '[{\"facebook\":\"http:\\/\\/www.facebook.com\\/meyzer\",\"twitter\":\"http:\\/\\/www.twitter.com\\/meyzer\",\"linkedin\":\"http:\\/\\/www.linkedin.com\\/meyzer\",\"google\":\"http:\\/\\/www.google.com\\/meyzer\",\"youtube\":\"http:\\/\\/www.youtube.com\\/meyzer\",\"instagram\":\"http:\\/\\/www.instagram.com\\/meyzer\"}]', 'All the rights reserved to Meyzer', NULL, '[{\"title\":\"Education is the most powerful weapon\",\"description\":\"&quot;You can use education to change the world&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"slider1.jpg\"},{\"title\":\"Knowledge is power\",\"description\":\"&quot;Education is the premise of progress, in every society, in every family&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2.jpg\"},{\"title\":\"Have an aim in life, continuously acquire knowledge\",\"description\":\"&quot;Never stop fighting until you arrive at your destined place&quot; - &lt;i&gt;A.P.J. Abdul Kalam&lt;\\/i&gt;\",\"image\":\"1.jpg\"}]', 'ultimate', 'Welcome to Meyzer High School', 'Meyzer High School (NHS) is a public secondary school in Bellevue, Washington. It serves students in grades 9–12 in the southern part of the Bellevue School District, including the neighborhoods of Eastgate, Factoria, Newport Hills, Newport Shores, Somerset, The Summit, and Sunset. As of the 2014-2015 school year, the principal is Dion Yahoudy. The mascot is the Knight, and the school colors are scarlet and gold.', 'meyzer');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_grades`
--

CREATE TABLE `meyzerschool_grades` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_upto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_invoices`
--

CREATE TABLE `meyzerschool_invoices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL COMMENT 'This column is all about payment taking date'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_marks`
--

CREATE TABLE `meyzerschool_marks` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT 0,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_menus`
--

CREATE TABLE `meyzerschool_menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `displayed_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `superadmin_access` int(11) NOT NULL DEFAULT 0,
  `admin_access` int(11) NOT NULL DEFAULT 0,
  `teacher_access` int(11) NOT NULL DEFAULT 0,
  `parent_access` int(11) NOT NULL DEFAULT 0,
  `student_access` int(11) NOT NULL DEFAULT 0,
  `accountant_access` int(11) NOT NULL DEFAULT 0,
  `librarian_access` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL DEFAULT 0 COMMENT 'If the value is 1 that means its an addon.',
  `unique_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'It is mandatory for addons',
  `driver_access` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `meyzerschool_menus`
--

INSERT INTO `meyzerschool_menus` (`id`, `displayed_name`, `route_name`, `parent`, `icon`, `status`, `superadmin_access`, `admin_access`, `teacher_access`, `parent_access`, `student_access`, `accountant_access`, `librarian_access`, `sort_order`, `is_addon`, `unique_identifier`, `driver_access`) VALUES
(1, 'users', NULL, 0, 'dripicons-user', 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'users', NULL),
(2, 'admin', 'admin', 1, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 9, 0, 'admin', NULL),
(3, 'student', 'student', 1, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 10, 0, 'student', NULL),
(4, 'teacher', 'teacher', 1, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'teacher', NULL),
(5, 'parent', 'parent', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'parent', NULL),
(6, 'librarian', 'librarian', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'librarian', NULL),
(7, 'accountant', 'accountant', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'accountant', NULL),
(8, 'driver', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 80, 0, 'driver', NULL),
(9, 'academic', NULL, 0, 'dripicons-store', 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'academic', NULL),
(10, 'class', 'manage_class', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'class', NULL),
(11, 'section', NULL, 9, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'section', NULL),
(12, 'class_room', 'class_room', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'class-room', NULL),
(13, 'syllabus', 'syllabus', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'syllabus', NULL),
(14, 'subject', 'subject', 9, NULL, 1, 1, 1, 1, 0, 1, 0, 0, 29, 0, 'subject', NULL),
(15, 'class_routine', 'routine', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'class-routine', NULL),
(16, 'daily_attendance', 'attendance', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'daily-attendance', NULL),
(17, 'noticeboard', NULL, 9, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'noticeboard', NULL),
(18, 'promotion', 'promotion', 19, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'promotion', NULL),
(19, 'exam', NULL, 0, 'dripicons-to-do', 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'exam', NULL),
(20, 'exam', 'exam', 19, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 20, 0, 'exam', NULL),
(21, 'grades', 'grade', 19, NULL, 1, 1, 1, 0, 1, 1, 0, 0, 30, 0, 'grades', NULL),
(22, 'marks', 'mark', 19, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'marks', NULL),
(23, 'tabulation_sheet', NULL, 19, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 40, 0, 'tabulation-sheet', NULL),
(24, 'accounting', NULL, 0, 'dripicons-suitcase', 1, 1, 1, 0, 1, 1, 1, 0, 40, 0, 'accounting', NULL),
(25, 'student_fee_manager', 'invoice', 24, NULL, 1, 1, 1, 0, 1, 1, 1, 0, 10, 0, 'student-fee-manager', NULL),
(26, 'student_fee_report', NULL, 24, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 20, 0, 'student-fee-report', NULL),
(27, 'expense_manager', 'expense', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 40, 0, 'expense-manager', NULL),
(28, 'back_office', NULL, 0, 'dripicons-archive', 1, 1, 1, 1, 1, 1, 0, 1, 50, 0, 'back-office', NULL),
(29, 'library', NULL, 28, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'library', NULL),
(30, 'transport', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'transport', NULL),
(31, 'hostel', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'hostel', NULL),
(32, 'school_website', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'school-website', NULL),
(33, 'settings', NULL, 0, 'dripicons-cutlery', 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'settings', NULL),
(34, 'system_settings', 'system_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 10, 0, 'system-settings', NULL),
(36, 'payment_settings', 'payment_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 20, 0, 'payment-settings', NULL),
(37, 'language_settings', 'language', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 30, 0, 'language-settings', NULL),
(38, 'session_manager', 'session_manager', 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'session-manager', NULL),
(39, 'department', 'department', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'department', NULL),
(40, 'admission', 'student/create', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 20, 0, 'admission', NULL),
(41, 'addon_manager', 'addon_manager', 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'addon-manager', NULL),
(43, 'event_calender', 'event_calendar', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 100, 0, 'event-calender', NULL),
(44, 'online_exam', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'online-exam', NULL),
(45, 'certificate', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 60, 0, 'certificate', NULL),
(46, 'teacher_permission', 'permission', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'teacher-permission', NULL),
(47, 'messaging', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'messaging', NULL),
(48, 'role_permission', 'role.index', 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 'role-permission', NULL),
(49, 'form_builder', NULL, 32, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'form-builder', NULL),
(50, 'book_list_manager', 'book', 29, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'book-list-manager', NULL),
(51, 'book_issue_report', 'book_issue', 29, NULL, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 'book-issue-report', NULL),
(52, 'room_manager', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'room-manager', NULL),
(53, 'student_report', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'student-report', NULL),
(55, 'expense_category', 'expense_category', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 30, 0, 'expense-category', NULL),
(56, 'SMTP_settings', 'smtp_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'smtp-settings', NULL),
(57, 'school_settings', 'school_settings', 33, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 12, 0, 'school-settings', NULL),
(58, 'about', 'about', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 51, 0, 'about', NULL),
(115, 'website_settings', 'website_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 11, 0, 'website-settings', NULL),
(116, 'noticeboard', 'noticeboard', 28, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'noticeboard', NULL),
(117, 'online_admission', 'online_admission', 0, 'dripicons-graduation', 1, 1, 1, 0, 0, 0, 0, 0, 9, 0, 'online_admission', NULL),
(118, 'transport', 'transport', 0, 'uil-bus', 1, 0, 1, 0, 0, 0, 0, 0, 9, 0, 'transport', 0),
(119, 'driver', 'driver', 118, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 9, 0, 'driver', 0),
(120, 'vehicle', 'vehicle', 118, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 9, 0, 'vehicle', 0),
(121, 'assign students', 'assign_student', 118, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 9, 0, 'assign_students', 0),
(122, 'trip', 'trip', 0, 'uil-bus', 1, 0, 0, 0, 0, 0, 0, 0, 9, 0, 'trip', 1),
(123, 'assigned_student', 'assigned_student', 0, 'uil-user-check', 1, 0, 0, 0, 0, 0, 0, 0, 9, 0, 'assigned_student', 1),
(124, 'trips', 'trips', 0, 'uil-bus', 1, 0, 0, 0, 1, 0, 0, 0, 9, 0, 'trips', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_noticeboard`
--

CREATE TABLE `meyzerschool_noticeboard` (
  `id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_on_website` int(11) DEFAULT 0,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `session` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_parents`
--

CREATE TABLE `meyzerschool_parents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_payment_settings`
--

CREATE TABLE `meyzerschool_payment_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_payment_settings`
--

INSERT INTO `meyzerschool_payment_settings` (`id`, `key`, `value`) VALUES
(12, 'stripe_settings', '[{\"stripe_active\":\"yes\",\"stripe_mode\":\"on\",\"stripe_test_secret_key\":\"1234\",\"stripe_test_public_key\":\"1234\",\"stripe_live_secret_key\":\"1234\",\"stripe_live_public_key\":\"1234\",\"stripe_currency\":\"USD\"}]'),
(17, 'paypal_settings', '[{\"paypal_active\":\"yes\",\"paypal_mode\":\"sandbox\",\"paypal_client_id_sandbox\":\"1234\",\"paypal_client_id_production\":\"1234\",\"paypal_currency\":\"USD\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_routines`
--

CREATE TABLE `meyzerschool_routines` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_minute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_minute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `teacher_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_routines`
--

INSERT INTO `meyzerschool_routines` (`id`, `class_id`, `section_id`, `subject_id`, `starting_hour`, `ending_hour`, `starting_minute`, `ending_minute`, `day`, `teacher_id`, `room_id`, `school_id`, `session_id`) VALUES
(1, '1', '1', '1', '9', '17', '0', '0', 'saturday', 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_schools`
--

CREATE TABLE `meyzerschool_schools` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_schools`
--

INSERT INTO `meyzerschool_schools` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Test', 'School Address', '+123123123123');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_sections`
--

CREATE TABLE `meyzerschool_sections` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_sections`
--

INSERT INTO `meyzerschool_sections` (`id`, `name`, `class_id`) VALUES
(1, 'A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_sessions`
--

CREATE TABLE `meyzerschool_sessions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_sessions`
--

INSERT INTO `meyzerschool_sessions` (`id`, `name`, `status`) VALUES
(1, '2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_settings`
--

CREATE TABLE `meyzerschool_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `system_title` varchar(255) DEFAULT NULL,
  `system_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `system_currency` varchar(255) DEFAULT NULL,
  `currency_position` varchar(255) DEFAULT NULL,
  `running_session` varchar(255) DEFAULT '',
  `language` varchar(255) DEFAULT NULL,
  `student_email_verification` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `footer_link` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `date_of_last_updated_attendance` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `youtube_api_key` varchar(255) DEFAULT NULL,
  `vimeo_api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meyzerschool_settings`
--

INSERT INTO `meyzerschool_settings` (`id`, `school_id`, `system_name`, `system_title`, `system_email`, `phone`, `address`, `purchase_code`, `system_currency`, `currency_position`, `running_session`, `language`, `student_email_verification`, `footer_text`, `footer_link`, `version`, `fax`, `date_of_last_updated_attendance`, `timezone`, `youtube_api_key`, `vimeo_api_key`) VALUES
(1, 1, 'Meyzer School', 'Meyzer School', 'biz@meyzergroup.com', '+65-6336 6629', '391B Orchard Road, #21-06, Ngee Ann City Tower B, Singapore 238874\r\n', '1234', 'USD', 'left', '1', 'english', NULL, 'By Meyzer School', 'MEYZER360', '7.6', '1234567890', '1715313454', 'Asia/Singapore', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_smtp_settings`
--

CREATE TABLE `meyzerschool_smtp_settings` (
  `id` int(11) NOT NULL,
  `mail_sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_secure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_set_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_debug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_show_error` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_crypto` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_smtp_settings`
--

INSERT INTO `meyzerschool_smtp_settings` (`id`, `mail_sender`, `smtp_protocol`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_secure`, `smtp_set_from`, `smtp_debug`, `smtp_show_error`, `smtp_crypto`) VALUES
(1, 'generic_smtp', 'smtp', 'localhost', 'admin@gmail.com', 'ss', '1025', '', '', NULL, 'yes', 'tsl');

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_students`
--

CREATE TABLE `meyzerschool_students` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_students`
--

INSERT INTO `meyzerschool_students` (`id`, `code`, `user_id`, `parent_id`, `session`, `school_id`) VALUES
(1, '2024-3916-7248', 2, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_subjects`
--

CREATE TABLE `meyzerschool_subjects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_subjects`
--

INSERT INTO `meyzerschool_subjects` (`id`, `name`, `class_id`, `school_id`, `session`) VALUES
(1, 'S1', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_syllabuses`
--

CREATE TABLE `meyzerschool_syllabuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_syllabuses`
--

INSERT INTO `meyzerschool_syllabuses` (`id`, `title`, `class_id`, `section_id`, `subject_id`, `file`, `session_id`, `school_id`) VALUES
(1, 'SA1', 1, 1, 1, 'e689d177eb98eab4951df982fe2a04c9.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_teachers`
--

CREATE TABLE `meyzerschool_teachers` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meyzerschool_teachers`
--

INSERT INTO `meyzerschool_teachers` (`id`, `user_id`, `department_id`, `designation`, `school_id`, `social_links`, `about`, `show_on_website`) VALUES
(1, 3, 1, '22', 1, '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_teacher_permissions`
--

CREATE TABLE `meyzerschool_teacher_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT 0,
  `assignment` int(11) DEFAULT 0,
  `attendance` int(11) DEFAULT 0,
  `online_exam` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_trips`
--

CREATE TABLE `meyzerschool_trips` (
  `id` int(255) UNSIGNED NOT NULL,
  `school_id` int(255) DEFAULT NULL,
  `vehicle_id` int(255) DEFAULT NULL,
  `driver_id` int(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT 1,
  `starting_point` varchar(255) DEFAULT NULL,
  `last_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_users`
--

CREATE TABLE `meyzerschool_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `authentication_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watch_history` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=deactive, 1= active, 3=new admission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meyzerschool_users`
--

INSERT INTO `meyzerschool_users` (`id`, `name`, `email`, `password`, `role`, `address`, `phone`, `remember_token`, `birthday`, `gender`, `blood_group`, `school_id`, `authentication_key`, `watch_history`, `status`) VALUES
(1, 'Hihi', 'admin@gmail.com', 'd3b65aebf95664a10c3ad19b1192632db4843601', 'superadmin', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '[]', 0),
(2, 'S1', 'admin1@gmail.com', 'c129b324aee662b04eccf68babba85851346dff9', 'student', NULL, NULL, NULL, NULL, 'Male', NULL, 1, NULL, '[]', 1),
(3, 'T1', 'admin2@gmail.com', 'c129b324aee662b04eccf68babba85851346dff9', 'teacher', '2', '22', NULL, NULL, 'Male', 'a+', 1, NULL, '[]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meyzerschool_vehicles`
--

CREATE TABLE `meyzerschool_vehicles` (
  `id` int(255) UNSIGNED NOT NULL,
  `school_id` int(255) DEFAULT NULL,
  `driver` int(255) DEFAULT NULL,
  `vh_num` varchar(255) DEFAULT NULL,
  `vh_model` varchar(255) DEFAULT NULL,
  `vh_chassis` varchar(255) DEFAULT NULL,
  `capacity` int(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meyzerschool_addons`
--
ALTER TABLE `meyzerschool_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_assign_students`
--
ALTER TABLE `meyzerschool_assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_books`
--
ALTER TABLE `meyzerschool_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_book_issues`
--
ALTER TABLE `meyzerschool_book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_classes`
--
ALTER TABLE `meyzerschool_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_class_rooms`
--
ALTER TABLE `meyzerschool_class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_common_settings`
--
ALTER TABLE `meyzerschool_common_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_currencies`
--
ALTER TABLE `meyzerschool_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_daily_attendances`
--
ALTER TABLE `meyzerschool_daily_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_departments`
--
ALTER TABLE `meyzerschool_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_drivers`
--
ALTER TABLE `meyzerschool_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_enrols`
--
ALTER TABLE `meyzerschool_enrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_event_calendars`
--
ALTER TABLE `meyzerschool_event_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_exams`
--
ALTER TABLE `meyzerschool_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_expenses`
--
ALTER TABLE `meyzerschool_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_expense_categories`
--
ALTER TABLE `meyzerschool_expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_frontend_events`
--
ALTER TABLE `meyzerschool_frontend_events`
  ADD PRIMARY KEY (`frontend_events_id`);

--
-- Indexes for table `meyzerschool_frontend_gallery`
--
ALTER TABLE `meyzerschool_frontend_gallery`
  ADD PRIMARY KEY (`frontend_gallery_id`);

--
-- Indexes for table `meyzerschool_frontend_gallery_image`
--
ALTER TABLE `meyzerschool_frontend_gallery_image`
  ADD PRIMARY KEY (`frontend_gallery_image_id`);

--
-- Indexes for table `meyzerschool_frontend_settings`
--
ALTER TABLE `meyzerschool_frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_grades`
--
ALTER TABLE `meyzerschool_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_invoices`
--
ALTER TABLE `meyzerschool_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_marks`
--
ALTER TABLE `meyzerschool_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_menus`
--
ALTER TABLE `meyzerschool_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_noticeboard`
--
ALTER TABLE `meyzerschool_noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_parents`
--
ALTER TABLE `meyzerschool_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_payment_settings`
--
ALTER TABLE `meyzerschool_payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_routines`
--
ALTER TABLE `meyzerschool_routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_schools`
--
ALTER TABLE `meyzerschool_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_sections`
--
ALTER TABLE `meyzerschool_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_sessions`
--
ALTER TABLE `meyzerschool_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `meyzerschool_settings`
--
ALTER TABLE `meyzerschool_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_smtp_settings`
--
ALTER TABLE `meyzerschool_smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_students`
--
ALTER TABLE `meyzerschool_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_subjects`
--
ALTER TABLE `meyzerschool_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_syllabuses`
--
ALTER TABLE `meyzerschool_syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_teachers`
--
ALTER TABLE `meyzerschool_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_teacher_permissions`
--
ALTER TABLE `meyzerschool_teacher_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_trips`
--
ALTER TABLE `meyzerschool_trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_users`
--
ALTER TABLE `meyzerschool_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyzerschool_vehicles`
--
ALTER TABLE `meyzerschool_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meyzerschool_addons`
--
ALTER TABLE `meyzerschool_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_assign_students`
--
ALTER TABLE `meyzerschool_assign_students`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_books`
--
ALTER TABLE `meyzerschool_books`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_book_issues`
--
ALTER TABLE `meyzerschool_book_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_classes`
--
ALTER TABLE `meyzerschool_classes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_class_rooms`
--
ALTER TABLE `meyzerschool_class_rooms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_common_settings`
--
ALTER TABLE `meyzerschool_common_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meyzerschool_currencies`
--
ALTER TABLE `meyzerschool_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `meyzerschool_daily_attendances`
--
ALTER TABLE `meyzerschool_daily_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_departments`
--
ALTER TABLE `meyzerschool_departments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_drivers`
--
ALTER TABLE `meyzerschool_drivers`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_enrols`
--
ALTER TABLE `meyzerschool_enrols`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_event_calendars`
--
ALTER TABLE `meyzerschool_event_calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_exams`
--
ALTER TABLE `meyzerschool_exams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_expenses`
--
ALTER TABLE `meyzerschool_expenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_expense_categories`
--
ALTER TABLE `meyzerschool_expense_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_frontend_events`
--
ALTER TABLE `meyzerschool_frontend_events`
  MODIFY `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_frontend_gallery`
--
ALTER TABLE `meyzerschool_frontend_gallery`
  MODIFY `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_frontend_gallery_image`
--
ALTER TABLE `meyzerschool_frontend_gallery_image`
  MODIFY `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_frontend_settings`
--
ALTER TABLE `meyzerschool_frontend_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_grades`
--
ALTER TABLE `meyzerschool_grades`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_invoices`
--
ALTER TABLE `meyzerschool_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_marks`
--
ALTER TABLE `meyzerschool_marks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_menus`
--
ALTER TABLE `meyzerschool_menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `meyzerschool_noticeboard`
--
ALTER TABLE `meyzerschool_noticeboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_parents`
--
ALTER TABLE `meyzerschool_parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_payment_settings`
--
ALTER TABLE `meyzerschool_payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `meyzerschool_routines`
--
ALTER TABLE `meyzerschool_routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_schools`
--
ALTER TABLE `meyzerschool_schools`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_sections`
--
ALTER TABLE `meyzerschool_sections`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_sessions`
--
ALTER TABLE `meyzerschool_sessions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_settings`
--
ALTER TABLE `meyzerschool_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_smtp_settings`
--
ALTER TABLE `meyzerschool_smtp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_students`
--
ALTER TABLE `meyzerschool_students`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_subjects`
--
ALTER TABLE `meyzerschool_subjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_syllabuses`
--
ALTER TABLE `meyzerschool_syllabuses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_teachers`
--
ALTER TABLE `meyzerschool_teachers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meyzerschool_teacher_permissions`
--
ALTER TABLE `meyzerschool_teacher_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_trips`
--
ALTER TABLE `meyzerschool_trips`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meyzerschool_users`
--
ALTER TABLE `meyzerschool_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meyzerschool_vehicles`
--
ALTER TABLE `meyzerschool_vehicles`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
