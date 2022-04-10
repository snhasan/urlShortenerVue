-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 09:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urlshortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `shortendurls`
--

CREATE TABLE `shortendurls` (
  `Id` int(11) NOT NULL,
  `mainlink` text COLLATE utf8mb4_unicode_ci,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shortendurls`
--

INSERT INTO `shortendurls` (`Id`, `mainlink`, `hash`, `created_at`, `updated_at`) VALUES
(51, 'https://developers.google.com/safe-browsing', 'W9R6QI', '2022-04-09 09:54:51', '2022-04-09 09:54:51'),
(52, 'https://developers.google.com/safe-browsing', 'W1pdrs', '2022-04-09 09:54:55', '2022-04-09 09:54:55'),
(53, 'https://developers.google.com/safe-browsing', 'q3WC6y', '2022-04-09 09:56:06', '2022-04-09 09:56:06'),
(54, 'https://developers.google.com/safe-browsing', 'K60B83', '2022-04-09 09:56:43', '2022-04-09 09:56:43'),
(55, 'https://developers.google.com/safe-browsing', 'S8fn1g', '2022-04-09 09:56:48', '2022-04-09 09:56:48'),
(56, 'https://developers.google.com/safe-browsing', 'e3IAzQ', '2022-04-09 09:57:04', '2022-04-09 09:57:04'),
(57, 'https://developers.google.com/safe-browsing', 'Z3BSkw', '2022-04-09 09:57:45', '2022-04-09 09:57:45'),
(58, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'A6g9sE', '2022-04-09 09:57:57', '2022-04-09 09:57:57'),
(59, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'B0Dc8q', '2022-04-09 09:58:56', '2022-04-09 09:58:56'),
(60, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'N8X5IG', '2022-04-09 09:59:34', '2022-04-09 09:59:34'),
(61, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'y04hcb', '2022-04-09 09:59:36', '2022-04-09 09:59:36'),
(62, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'S2JdeK', '2022-04-09 09:59:40', '2022-04-09 09:59:40'),
(63, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'F4E6OE', '2022-04-09 10:00:32', '2022-04-09 10:00:32'),
(64, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'y8pjdM', '2022-04-09 10:01:18', '2022-04-09 10:01:18'),
(65, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'G1ZRap', '2022-04-09 10:01:23', '2022-04-09 10:01:23'),
(66, 'https://developers.google.com/safe-browsing/v4/lookup-api', 'H5OHMQ', '2022-04-09 10:01:44', '2022-04-09 10:01:44'),
(67, 'https://mycolor.space/gradient?ori=to+right+top&hex=%231159C4&hex2=%230D1BA6&sub=1', 'J79S4j', '2022-04-09 13:00:01', '2022-04-09 13:00:02'),
(68, 'https://mycolor.space/gradient?ori=to+right+top&hex=%231159C4&hex2=%230D1BA6&sub=1', 'P215Oj', '2022-04-09 13:05:48', '2022-04-09 13:05:48'),
(69, 'https://mycolor.space/gradient?ori=to+right+top&hex=%231159C4&hex2=%230D1BA6&sub=1', 'z0VP7l', '2022-04-09 13:05:54', '2022-04-09 13:05:54'),
(70, 'https://www.joshwcomeau.com/gradient-generator/', 't9E8hG', '2022-04-09 13:09:05', '2022-04-09 13:09:05'),
(71, 'https://www.joshwcomeau.com/gradient-generator/', 'a7tUAn', '2022-04-09 13:09:35', '2022-04-09 13:09:35'),
(72, 'https://www.joshwcomeau.com/gradient-generator/', 'a57KXj', '2022-04-09 13:09:41', '2022-04-09 13:09:41'),
(73, 'https://www.joshwcomeau.com/gradient-generator/', 'U1MW6L', '2022-04-09 13:10:24', '2022-04-09 13:10:24'),
(74, 'https://www.youtube.com/watch?v=g5DTIiFAiSk', 'I7byad', '2022-04-09 13:13:43', '2022-04-09 13:13:43'),
(75, 'https://www.youtube.com/watch?v=cUzihD4JBQU', 'e2Vgc5', '2022-04-09 13:20:39', '2022-04-09 13:20:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shortendurls`
--
ALTER TABLE `shortendurls`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shortendurls`
--
ALTER TABLE `shortendurls`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
