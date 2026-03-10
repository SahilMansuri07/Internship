-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 05:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `figma_socialmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block`
--

CREATE TABLE `tbl_block` (
  `id` bigint(20) NOT NULL,
  `blocker_user_id` bigint(20) NOT NULL,
  `blocked_user_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_block`
--

INSERT INTO `tbl_block` (`id`, `blocker_user_id`, `blocked_user_id`, `created_at`, `is_active`) VALUES
(1, 1, 5, '2025-01-12 09:30:00', 1),
(2, 2, 7, '2025-01-13 10:15:00', 1),
(3, 3, 12, '2025-01-14 11:45:00', 1),
(4, 4, 9, '2025-01-15 14:20:00', 1),
(5, 6, 3, '2025-01-16 16:05:00', 1),
(6, 8, 14, '2025-01-17 18:40:00', 1),
(7, 10, 2, '2025-01-18 20:10:00', 1),
(8, 11, 6, '2025-01-19 08:50:00', 1),
(9, 13, 4, '2025-01-20 12:30:00', 1),
(10, 15, 1, '2025-01-21 17:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_collection`
--

CREATE TABLE `tbl_collection` (
  `id` bigint(20) NOT NULL,
  `collection_name` varchar(128) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_collection`
--

INSERT INTO `tbl_collection` (`id`, `collection_name`, `is_active`, `is_delete`) VALUES
(1, 'Travel Memories', 1, 0),
(2, 'Food Diaries', 1, 0),
(3, 'Fitness Journey', 1, 0),
(4, 'Daily Motivation', 1, 0),
(5, 'Nature & Landscapes', 1, 0),
(6, 'Street Photography', 1, 0),
(7, 'Family Moments', 1, 0),
(8, 'Friends & Fun', 1, 0),
(9, 'Work & Projects', 1, 0),
(10, 'Art & Creativity', 1, 0),
(11, 'Music & Events', 1, 0),
(12, 'Fashion Looks', 1, 0),
(13, 'Weekend Vibes', 1, 0),
(14, 'Saved Tutorials', 1, 0),
(15, 'Inspiration Board', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment_like`
--

CREATE TABLE `tbl_comment_like` (
  `id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_like` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comment_like`
--

INSERT INTO `tbl_comment_like` (`id`, `comment_id`, `user_id`, `is_like`, `created_at`) VALUES
(1, 1, 2, 1, '2026-02-07 15:59:28'),
(2, 1, 3, 1, '2026-02-07 15:59:28'),
(3, 1, 4, 1, '2026-02-07 15:59:28'),
(4, 2, 1, 1, '2026-02-07 15:59:28'),
(5, 2, 5, 1, '2026-02-07 15:59:28'),
(6, 2, 6, 1, '2026-02-07 15:59:28'),
(7, 3, 2, 1, '2026-02-07 15:59:28'),
(8, 3, 7, 1, '2026-02-07 15:59:28'),
(9, 4, 8, 1, '2026-02-07 15:59:28'),
(10, 5, 9, 1, '2026-02-07 15:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment_reply`
--

CREATE TABLE `tbl_comment_reply` (
  `id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `reply_text` text NOT NULL,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comment_reply`
--

INSERT INTO `tbl_comment_reply` (`id`, `comment_id`, `user_id`, `reply_text`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Totally agree with this comment 👍', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(2, 1, 6, 'Nice explanation, thanks!', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(3, 2, 3, 'I had the same doubt earlier', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(4, 2, 4, 'This makes sense now', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(5, 3, 1, 'Well said 👏', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(6, 3, 8, 'Good point, never thought about it', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(7, 4, 2, 'Can you explain a bit more?', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(8, 4, 9, 'Thanks for sharing this', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(9, 5, 7, 'This helped me a lot', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59'),
(10, 5, 10, 'Interesting perspective', 0, '2026-02-07 15:59:59', '2026-02-07 15:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_follows`
--

CREATE TABLE `tbl_follows` (
  `id` bigint(20) NOT NULL,
  `sender_user_id` bigint(20) NOT NULL,
  `reciver_user_id` bigint(20) NOT NULL,
  `status` enum('pending','accepted','rejected','blocked') NOT NULL,
  `sending_date` datetime DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `is_favorites` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_follows`
--

INSERT INTO `tbl_follows` (`id`, `sender_user_id`, `reciver_user_id`, `status`, `sending_date`, `is_active`, `is_delete`, `is_favorites`) VALUES
(1, 2, 1, 'accepted', '2025-01-05 10:30:00', 1, 0, 0),
(2, 3, 1, 'accepted', '2025-01-05 11:00:00', 1, 0, 0),
(3, 4, 2, 'accepted', '2025-01-06 09:45:00', 1, 0, 0),
(4, 5, 3, 'accepted', '2025-01-06 10:20:00', 1, 0, 1),
(6, 7, 5, 'accepted', '2025-01-07 12:10:00', 1, 0, 0),
(7, 8, 6, 'accepted', '2025-01-08 09:30:00', 1, 0, 1),
(8, 9, 7, 'accepted', '2025-01-08 10:45:00', 1, 0, 0),
(9, 10, 8, 'accepted', '2025-01-09 14:20:00', 1, 0, 0),
(10, 11, 9, 'accepted', '2025-01-09 15:00:00', 1, 0, 1),
(11, 12, 10, 'accepted', '2025-01-10 10:10:00', 1, 0, 0),
(12, 13, 11, 'accepted', '2025-01-10 11:35:00', 1, 0, 0),
(13, 14, 12, 'accepted', '2025-01-11 09:25:00', 1, 0, 1),
(14, 15, 13, 'accepted', '2025-01-11 10:40:00', 1, 0, 0),
(15, 16, 14, 'accepted', '2025-01-12 12:00:00', 1, 0, 0),
(16, 17, 15, 'accepted', '2025-01-12 13:15:00', 1, 0, 1),
(17, 18, 16, 'accepted', '2025-01-13 09:50:00', 1, 0, 0),
(18, 19, 17, 'accepted', '2025-01-13 10:30:00', 1, 0, 0),
(19, 20, 18, 'accepted', '2025-01-14 14:10:00', 1, 0, 1),
(20, 21, 19, 'accepted', '2025-01-14 15:25:00', 1, 0, 0),
(21, 22, 20, 'accepted', '2025-01-15 09:45:00', 1, 0, 0),
(22, 23, 21, 'accepted', '2025-01-15 10:20:00', 1, 0, 1),
(23, 24, 22, 'accepted', '2025-01-16 11:00:00', 1, 0, 0),
(24, 25, 23, 'accepted', '2025-01-16 12:35:00', 1, 0, 0),
(25, 26, 24, 'accepted', '2025-01-17 09:30:00', 1, 0, 1),
(26, 27, 25, 'accepted', '2025-01-17 10:45:00', 1, 0, 0),
(27, 28, 26, 'accepted', '2025-01-18 14:20:00', 1, 0, 0),
(28, 29, 27, 'accepted', '2025-01-18 15:00:00', 1, 0, 1),
(29, 30, 28, 'accepted', '2025-01-19 09:10:00', 1, 0, 0),
(30, 31, 29, 'accepted', '2025-01-19 10:25:00', 1, 0, 0),
(31, 32, 30, 'accepted', '2025-01-20 11:15:00', 1, 0, 1),
(32, 33, 31, 'accepted', '2025-01-20 12:40:00', 1, 0, 0),
(33, 34, 32, 'accepted', '2025-01-21 09:35:00', 1, 0, 0),
(34, 35, 33, 'accepted', '2025-01-21 10:50:00', 1, 0, 1),
(35, 36, 34, 'accepted', '2025-01-22 14:10:00', 1, 0, 0),
(36, 37, 35, 'accepted', '2025-01-22 15:25:00', 1, 0, 0),
(37, 38, 36, 'accepted', '2025-01-23 09:45:00', 1, 0, 1),
(38, 4, 37, 'accepted', '2025-01-23 10:30:00', 1, 0, 0),
(39, 40, 38, 'accepted', '2025-01-24 14:20:00', 1, 0, 0),
(40, 41, 39, 'accepted', '2025-01-24 15:00:00', 1, 0, 1),
(41, 42, 40, 'accepted', '2025-01-25 09:10:00', 1, 0, 0),
(42, 43, 41, 'accepted', '2025-01-25 10:25:00', 1, 0, 0),
(43, 44, 42, 'accepted', '2025-01-26 11:15:00', 1, 0, 1),
(44, 45, 43, 'accepted', '2025-01-26 12:40:00', 1, 0, 0),
(45, 46, 44, 'accepted', '2025-01-27 09:35:00', 1, 0, 0),
(46, 4, 45, 'accepted', '2025-01-27 10:50:00', 1, 0, 1),
(47, 48, 46, 'accepted', '2025-01-28 14:10:00', 1, 0, 0),
(48, 49, 47, 'accepted', '2025-01-28 15:25:00', 1, 0, 0),
(49, 50, 48, 'accepted', '2025-01-29 09:45:00', 1, 0, 1),
(50, 51, 49, 'accepted', '2025-01-29 10:30:00', 1, 0, 0),
(51, 4, 50, 'accepted', '2025-01-30 14:20:00', 1, 0, 0),
(52, 53, 51, 'accepted', '2025-01-30 15:00:00', 1, 0, 1),
(53, 54, 52, 'accepted', '2025-01-31 09:10:00', 1, 0, 0),
(54, 55, 53, 'accepted', '2025-01-31 10:25:00', 1, 0, 0),
(55, 56, 54, 'accepted', '2025-02-01 11:15:00', 1, 0, 1),
(56, 51, 55, 'accepted', '2025-02-01 12:40:00', 1, 0, 0),
(57, 50, 56, 'accepted', '2025-02-02 09:35:00', 1, 0, 0),
(58, 12, 45, 'accepted', '2025-02-02 10:50:00', 1, 0, 1),
(59, 45, 10, 'accepted', '2025-02-03 14:10:00', 1, 0, 0),
(60, 3, 20, 'pending', '2025-02-03 15:25:00', 1, 0, 0),
(61, 4, 21, 'pending', '2025-02-04 09:45:00', 1, 0, 0),
(62, 5, 22, 'pending', '2025-02-04 10:30:00', 1, 0, 0),
(63, 6, 23, 'pending', '2025-02-05 14:20:00', 1, 0, 0),
(64, 7, 24, 'pending', '2025-02-05 15:00:00', 1, 0, 0),
(65, 8, 25, 'pending', '2025-02-06 09:10:00', 1, 0, 0),
(66, 9, 26, 'pending', '2025-02-06 10:25:00', 1, 0, 0),
(67, 10, 27, 'pending', '2025-02-07 11:15:00', 1, 0, 0),
(68, 11, 28, 'pending', '2025-02-07 12:40:00', 1, 0, 0),
(69, 12, 29, 'pending', '2025-02-08 09:35:00', 1, 0, 0),
(70, 13, 30, 'pending', '2025-02-08 10:50:00', 1, 0, 0),
(71, 14, 31, 'pending', '2025-02-09 14:10:00', 1, 0, 0),
(72, 15, 32, 'pending', '2025-02-09 15:25:00', 1, 0, 0),
(74, 17, 34, 'pending', '2025-02-10 10:30:00', 1, 0, 0),
(75, 18, 35, 'pending', '2025-02-11 14:20:00', 1, 0, 0),
(76, 19, 36, 'pending', '2025-02-11 15:00:00', 1, 0, 0),
(77, 20, 37, 'pending', '2025-02-12 09:10:00', 1, 0, 0),
(78, 21, 38, 'pending', '2025-02-12 10:25:00', 1, 0, 0),
(79, 22, 39, 'pending', '2025-02-13 11:15:00', 1, 0, 0),
(80, 23, 40, 'pending', '2025-02-13 12:40:00', 1, 0, 0),
(81, 24, 41, 'pending', '2025-02-14 09:35:00', 1, 0, 0),
(82, 25, 42, 'pending', '2025-02-14 10:50:00', 1, 0, 0),
(83, 26, 43, 'pending', '2025-02-15 14:10:00', 1, 0, 0),
(84, 27, 44, 'pending', '2025-02-15 15:25:00', 1, 0, 0),
(85, 28, 45, 'rejected', '2025-02-16 09:45:00', 0, 0, 0),
(86, 29, 46, 'rejected', '2025-02-16 10:30:00', 0, 0, 0),
(87, 30, 47, 'rejected', '2025-02-17 14:20:00', 0, 0, 0),
(88, 31, 48, 'rejected', '2025-02-17 15:00:00', 0, 0, 0),
(89, 32, 49, 'rejected', '2025-02-18 09:10:00', 0, 0, 0),
(90, 33, 50, 'rejected', '2025-02-18 10:25:00', 0, 0, 0),
(91, 34, 51, 'rejected', '2025-02-19 11:15:00', 0, 0, 0),
(92, 35, 52, 'rejected', '2025-02-19 12:40:00', 0, 0, 0),
(93, 36, 53, 'rejected', '2025-02-20 09:35:00', 0, 0, 0),
(94, 37, 54, 'rejected', '2025-02-20 10:50:00', 0, 0, 0),
(95, 38, 55, 'rejected', '2025-02-21 14:10:00', 0, 0, 0),
(96, 39, 56, 'rejected', '2025-02-21 15:25:00', 0, 0, 0),
(97, 40, 10, 'rejected', '2025-02-22 09:45:00', 0, 0, 0),
(98, 41, 45, 'rejected', '2025-02-22 10:30:00', 0, 0, 0),
(99, 42, 38, 'rejected', '2025-02-23 14:20:00', 0, 0, 0),
(100, 1, 2, 'accepted', '2025-02-24 09:10:00', 1, 0, 1),
(101, 2, 3, 'accepted', '2025-02-24 09:20:00', 1, 0, 1),
(102, 3, 4, 'accepted', '2025-02-24 09:30:00', 1, 0, 0),
(103, 4, 5, 'accepted', '2025-02-24 09:40:00', 1, 0, 1),
(104, 5, 6, 'accepted', '2025-02-24 09:50:00', 1, 0, 0),
(105, 6, 7, 'accepted', '2025-02-24 10:00:00', 1, 0, 0),
(106, 7, 8, 'accepted', '2025-02-24 10:10:00', 1, 0, 1),
(107, 8, 9, 'accepted', '2025-02-24 10:20:00', 1, 0, 0),
(108, 9, 10, 'accepted', '2025-02-24 10:30:00', 1, 0, 0),
(109, 10, 11, 'accepted', '2025-02-24 10:40:00', 1, 0, 1),
(110, 11, 12, 'accepted', '2025-02-24 10:50:00', 1, 0, 0),
(111, 12, 13, 'accepted', '2025-02-24 11:00:00', 1, 0, 0),
(112, 13, 14, 'accepted', '2025-02-24 11:10:00', 1, 0, 1),
(113, 14, 15, 'accepted', '2025-02-24 11:20:00', 1, 0, 0),
(114, 15, 16, 'accepted', '2025-02-24 11:30:00', 1, 0, 0),
(115, 16, 17, 'accepted', '2025-02-24 11:40:00', 1, 0, 1),
(116, 17, 18, 'accepted', '2025-02-24 11:50:00', 1, 0, 0),
(117, 18, 19, 'accepted', '2025-02-24 12:00:00', 1, 0, 0),
(118, 19, 20, 'accepted', '2025-02-24 12:10:00', 1, 0, 1),
(119, 20, 21, 'accepted', '2025-02-24 12:20:00', 1, 0, 0),
(120, 21, 22, 'accepted', '2025-02-24 12:30:00', 1, 0, 0),
(121, 22, 23, 'accepted', '2025-02-24 12:40:00', 1, 0, 1),
(122, 23, 24, 'accepted', '2025-02-24 12:50:00', 1, 0, 0),
(123, 24, 25, 'accepted', '2025-02-24 13:00:00', 1, 0, 0),
(124, 25, 26, 'accepted', '2025-02-24 13:10:00', 1, 0, 1),
(125, 26, 27, 'accepted', '2025-02-24 13:20:00', 1, 0, 0),
(126, 27, 28, 'accepted', '2025-02-24 13:30:00', 1, 0, 0),
(127, 28, 29, 'accepted', '2025-02-24 13:40:00', 1, 0, 1),
(128, 29, 30, 'accepted', '2025-02-24 13:50:00', 1, 0, 0),
(129, 30, 31, 'accepted', '2025-02-24 14:00:00', 1, 0, 0),
(130, 31, 32, 'accepted', '2025-02-24 14:10:00', 1, 0, 1),
(131, 32, 33, 'accepted', '2025-02-24 14:20:00', 1, 0, 0),
(132, 33, 34, 'accepted', '2025-02-24 14:30:00', 1, 0, 0),
(133, 34, 35, 'accepted', '2025-02-24 14:40:00', 1, 0, 1),
(134, 35, 36, 'accepted', '2025-02-24 14:50:00', 1, 0, 0),
(135, 36, 37, 'accepted', '2025-02-24 15:00:00', 1, 0, 0),
(136, 37, 38, 'accepted', '2025-02-24 15:10:00', 1, 0, 1),
(137, 38, 39, 'accepted', '2025-02-24 15:20:00', 1, 0, 0),
(138, 39, 40, 'accepted', '2025-02-24 15:30:00', 1, 0, 0),
(139, 40, 41, 'accepted', '2025-02-24 15:40:00', 1, 0, 1),
(140, 41, 4, 'accepted', '2025-02-24 15:50:00', 1, 0, 0),
(141, 42, 43, 'accepted', '2025-02-24 16:00:00', 1, 0, 0),
(142, 43, 44, 'accepted', '2025-02-24 16:10:00', 1, 0, 1),
(143, 44, 45, 'accepted', '2025-02-24 16:20:00', 1, 0, 0),
(144, 45, 46, 'accepted', '2025-02-24 16:30:00', 1, 0, 0),
(145, 46, 47, 'accepted', '2025-02-24 16:40:00', 1, 0, 1),
(146, 47, 48, 'accepted', '2025-02-24 16:50:00', 1, 0, 0),
(147, 48, 49, 'accepted', '2025-02-24 17:00:00', 1, 0, 0),
(148, 49, 50, 'accepted', '2025-02-24 17:10:00', 1, 0, 1),
(149, 50, 51, 'accepted', '2025-02-24 17:20:00', 1, 0, 0),
(150, 51, 52, 'accepted', '2025-02-24 17:30:00', 1, 0, 0),
(151, 52, 53, 'accepted', '2025-02-24 17:40:00', 1, 0, 1),
(152, 53, 54, 'accepted', '2025-02-24 17:50:00', 1, 0, 0),
(153, 54, 55, 'accepted', '2025-02-24 18:00:00', 1, 0, 0),
(154, 55, 4, 'accepted', '2025-02-24 18:10:00', 1, 0, 1),
(155, 56, 50, 'accepted', '2025-02-24 18:20:00', 1, 0, 0),
(156, 26, 23, 'accepted', '2025-02-24 18:30:00', 1, 0, 0),
(157, 16, 33, 'accepted', '2025-02-24 18:40:00', 1, 0, 1),
(158, 35, 45, 'accepted', '2025-02-24 18:50:00', 1, 0, 0),
(159, 20, 1, 'accepted', '2025-02-24 19:00:00', 1, 0, 0),
(160, 2, 15, 'pending', '2025-02-25 09:10:00', 1, 0, 1),
(161, 3, 16, 'pending', '2025-02-25 09:20:00', 1, 0, 0),
(162, 4, 17, 'pending', '2025-02-25 09:30:00', 1, 0, 0),
(163, 54, 18, 'pending', '2025-02-25 09:40:00', 1, 0, 0),
(164, 6, 19, 'pending', '2025-02-25 09:50:00', 1, 0, 0),
(165, 7, 20, 'pending', '2025-02-25 10:00:00', 1, 0, 0),
(166, 8, 21, 'pending', '2025-02-25 10:10:00', 1, 0, 0),
(167, 9, 22, 'pending', '2025-02-25 10:20:00', 1, 0, 0),
(168, 10, 23, 'pending', '2025-02-25 10:30:00', 1, 0, 0),
(171, 5, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(172, 4, 6, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(173, 6, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(174, 4, 7, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(175, 7, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(176, 4, 8, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(177, 8, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(178, 4, 9, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(179, 9, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(180, 4, 10, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(181, 10, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(182, 4, 11, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(183, 11, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(184, 4, 12, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(185, 12, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(186, 4, 13, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(187, 13, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(188, 4, 14, 'accepted', '2026-02-09 13:37:15', 1, 0, 0),
(189, 14, 4, 'accepted', '2026-02-09 13:37:15', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hase`
--

CREATE TABLE `tbl_hase` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_hase`
--

INSERT INTO `tbl_hase` (`id`, `name`) VALUES
(1, '#travel'),
(2, '#foodie'),
(3, '#fitness'),
(4, '#motivation'),
(5, '#nature'),
(6, '#photography'),
(7, '#instagood'),
(8, '#love'),
(9, '#friends'),
(10, '#family'),
(11, '#weekendvibes'),
(12, '#worklife'),
(13, '#startup'),
(14, '#business'),
(15, '#music'),
(16, '#art'),
(17, '#fashion'),
(18, '#healthylifestyle'),
(19, '#gym'),
(20, '#selfcare'),
(21, '#explore'),
(22, '#memories'),
(23, '#dailyinspiration'),
(24, '#creative'),
(25, '#lifestyle');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` bigint(20) NOT NULL,
  `sender_user_id` bigint(20) NOT NULL,
  `reciver_user_id` bigint(20) NOT NULL,
  `notification_type` enum('like','comment','follow') NOT NULL,
  `notify_id` bigint(20) NOT NULL,
  `notification_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `sender_user_id`, `reciver_user_id`, `notification_type`, `notify_id`, `notification_time`) VALUES
(1, 2, 1, 'follow', 10, '2025-01-12 10:20:00'),
(2, 3, 1, 'follow', 20, '2025-01-12 10:25:00'),
(3, 5, 2, 'follow', 30, '2025-01-13 11:10:00'),
(4, 6, 3, 'follow', 40, '2025-01-13 11:15:00'),
(5, 8, 4, 'follow', 50, '2025-01-14 14:30:00'),
(6, 9, 5, 'follow', 60, '2025-01-14 14:35:00'),
(7, 11, 6, 'follow', 70, '2025-01-15 09:40:00'),
(8, 12, 7, 'follow', 80, '2025-01-15 09:45:00'),
(9, 14, 8, 'follow', 90, '2025-01-16 16:10:00'),
(10, 15, 9, 'like', 100, '2025-01-16 16:15:00'),
(11, 4, 1, 'like', 110, '2025-01-12 10:45:00'),
(12, 7, 2, 'like', 120, '2025-01-13 12:00:00'),
(13, 9, 3, 'like', 130, '2025-01-13 12:20:00'),
(14, 10, 4, 'like', 140, '2025-01-14 15:00:00'),
(15, 12, 5, 'like', 150, '2025-01-14 15:30:00'),
(16, 13, 6, 'like', 160, '2025-01-15 10:10:00'),
(17, 15, 7, 'like', 170, '2025-01-15 10:25:00'),
(18, 16, 8, 'like', 180, '2025-01-16 17:00:00'),
(19, 18, 9, 'like', 190, '2025-01-16 17:20:00'),
(20, 19, 10, 'like', 200, '2025-01-17 18:00:00'),
(21, 3, 1, 'comment', 210, '2025-01-11 09:10:00'),
(22, 4, 2, 'comment', 220, '2025-01-11 09:20:00'),
(23, 6, 3, 'comment', 230, '2025-01-12 08:50:00'),
(24, 7, 4, 'comment', 240, '2025-01-12 09:00:00'),
(25, 9, 5, 'comment', 250, '2025-01-13 07:40:00'),
(26, 10, 6, 'comment', 260, '2025-01-13 07:55:00'),
(27, 12, 7, 'comment', 270, '2025-01-14 08:10:00'),
(28, 14, 8, 'comment', 280, '2025-01-14 08:25:00'),
(29, 15, 9, 'comment', 290, '2025-01-15 06:50:00'),
(30, 16, 10, 'comment', 300, '2025-01-15 07:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(64) DEFAULT NULL,
  `long` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `like_count` bigint(20) DEFAULT 0,
  `comment_count` bigint(20) DEFAULT 0,
  `share_count` bigint(20) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `user_id`, `location`, `lat`, `long`, `description`, `like_count`, `comment_count`, `share_count`, `is_active`, `is_delete`, `created_at`) VALUES
(1, 1, 'Ahmedabad, Gujarat', '23.11437955686291', '72.55458628525457', 'Morning vibes 🌅', 5, 2, 0, 1, 0, '2025-01-10 08:30:00'),
(2, 2, 'Ahmedabad, Gujarat', '23.11548263914572', '72.55629481736294', 'Coffee first ☕', 5, 2, 0, 1, 0, '2025-01-10 09:10:00'),
(3, 3, 'Ahmedabad, Gujarat', '23.11384596238475', '72.55384729183745', 'Workout done 💪', 5, 2, 0, 1, 0, '2025-01-11 06:45:00'),
(4, 4, 'Ahmedabad, Gujarat', '23.11672938475628', '72.55719384756283', 'Food hunting 🍔', 5, 2, 0, 1, 0, '2025-01-11 13:20:00'),
(5, 5, 'Ahmedabad, Gujarat', '23.11293847562938', '72.55293847562938', 'Startup grind 🚀', 5, 2, 0, 1, 0, '2025-01-12 10:00:00'),
(6, 6, 'Ahmedabad, Gujarat', '23.11738475628374', '72.55837465738294', 'Peaceful evening ✨', 5, 2, 0, 1, 0, '2025-01-12 18:40:00'),
(7, 7, 'Ahmedabad, Gujarat', '23.11493847562837', '72.55483746572839', 'Cricket love 🏏', 5, 2, 0, 1, 0, '2025-01-13 16:00:00'),
(8, 8, 'Ahmedabad, Gujarat', '23.11583746572839', '72.55683746572839', 'Private moments 🔒', 5, 2, 0, 1, 0, '2025-01-13 20:10:00'),
(9, 9, 'Ahmedabad, Gujarat', '23.11372839475628', '72.55372839475628', 'Captured 📸', 5, 2, 0, 1, 0, '2025-01-14 11:25:00'),
(10, 10, 'Ahmedabad, Gujarat', '23.11628374658293', '72.55738294756283', 'Nature walk 🌿', 5, 2, 0, 1, 0, '2025-01-14 07:55:00'),
(11, 11, 'Ahmedabad, Gujarat', '23.11473928574638', '72.55473928574638', 'Music therapy 🎧', 5, 2, 0, 1, 0, '2025-01-15 21:10:00'),
(12, 12, 'Ahmedabad, Gujarat', '23.11529384756283', '72.55529384756283', 'Dance vibes 💃', 5, 2, 0, 1, 0, '2025-01-15 17:00:00'),
(13, 13, 'Ahmedabad, Gujarat', '23.11394857263849', '72.55394857263849', 'Car detailing 🚗', 5, 2, 0, 1, 0, '2025-01-16 12:30:00'),
(14, 14, 'Ahmedabad, Gujarat', '23.11694857263849', '72.55694857263849', 'Market watch 📈', 5, 2, 0, 1, 0, '2025-01-16 09:45:00'),
(15, 15, 'Ahmedabad, Gujarat', '23.11458294756283', '72.55458294756283', 'Blog shoot 📷', 5, 2, 0, 1, 0, '2025-01-17 14:15:00'),
(16, 16, 'Ahmedabad, Gujarat', '23.11584756283947', '72.55584756283947', 'Design mood 🎨', 5, 2, 0, 1, 0, '2025-01-17 19:30:00'),
(17, 17, 'Ahmedabad, Gujarat', '23.11384756283947', '72.55384756283947', 'Family time ❤️', 5, 2, 0, 1, 0, '2025-01-18 20:00:00'),
(18, 18, 'Ahmedabad, Gujarat', '23.11729485726384', '72.55729485726384', 'Travel planning 🌍', 5, 2, 0, 1, 0, '2025-01-18 10:20:00'),
(19, 19, 'Ahmedabad, Gujarat', '23.11484756283947', '72.55484756283947', 'Makeup look 💄', 5, 2, 0, 1, 0, '2025-01-19 16:40:00'),
(20, 20, 'Ahmedabad, Gujarat', '23.11538475628394', '72.55538475628394', 'Business mindset 💼', 5, 2, 0, 1, 0, '2025-01-19 11:05:00'),
(21, 21, 'Ahmedabad, Gujarat', '23.11345678901234', '72.55345678901234', 'Motivation 💯', 0, 1, 0, 1, 0, '2025-01-20 08:00:00'),
(22, 22, 'Ahmedabad, Gujarat', '23.11456789012345', '72.55456789012345', 'Positive energy ✨', 0, 1, 0, 1, 0, '2025-01-20 09:15:00'),
(23, 23, 'Ahmedabad, Gujarat', '23.11567890123456', '72.55567890123456', 'Minimal vibes', 0, 1, 0, 1, 0, '2025-01-21 10:30:00'),
(24, 24, 'Ahmedabad, Gujarat', '23.11678901234567', '72.55678901234567', 'Book & coffee ☕', 0, 1, 0, 1, 0, '2025-01-21 18:00:00'),
(25, 25, 'Ahmedabad, Gujarat', '23.11789012345678', '72.55789012345678', 'Startup diary 🚀', 0, 1, 0, 1, 0, '2025-01-22 11:45:00'),
(26, 26, 'Ahmedabad, Gujarat', '23.11437955686291', '72.55458628525457', 'Morning jog 🏃', 0, 1, 0, 1, 0, '2025-01-22 06:30:00'),
(27, 27, 'Ahmedabad, Gujarat', '23.11537955686291', '72.55558628525457', 'City lights 🌃', 0, 1, 0, 1, 0, '2025-01-23 19:20:00'),
(28, 28, 'Ahmedabad, Gujarat', '23.11637955686291', '72.55658628525457', 'Ride time 🏍️', 0, 1, 0, 1, 0, '2025-01-23 17:10:00'),
(29, 29, 'Ahmedabad, Gujarat', '23.11737955686291', '72.55758628525457', 'Focus mode', 0, 1, 0, 1, 0, '2025-01-24 09:00:00'),
(30, 30, 'Ahmedabad, Gujarat', '23.11837955686291', '72.55858628525457', 'Weekend chill 😎', 0, 1, 9, 1, 0, '2025-01-24 21:00:00'),
(31, 31, 'Ahmedabad, Gujarat', '23.11937955686291', '72.55958628525457', 'Learning daily', 0, 0, 9, 1, 0, '2025-01-25 10:00:00'),
(32, 32, 'Ahmedabad, Gujarat', '23.12037955686291', '72.56058628525457', 'Art mood 🎭', 0, 0, 9, 1, 0, '2025-01-25 16:00:00'),
(33, 33, 'Ahmedabad, Gujarat', '23.12137955686291', '72.56158628525457', 'Fitness check', 0, 0, 9, 1, 0, '2025-01-26 07:30:00'),
(34, 34, 'Ahmedabad, Gujarat', '23.12237955686291', '72.56258628525457', 'Healthy habits 🥗', 0, 0, 9, 1, 0, '2025-01-26 12:45:00'),
(35, 35, 'Ahmedabad, Gujarat', '23.12337955686291', '72.56358628525457', 'Peaceful mind 🧘', 0, 0, 9, 1, 0, '2025-01-27 18:10:00'),
(36, 36, 'Ahmedabad, Gujarat', '23.12437955686291', '72.56458628525457', 'Night vibes 🌙', 0, 0, 9, 1, 0, '2025-01-27 22:00:00'),
(37, 37, 'Ahmedabad, Gujarat', '23.12537955686291', '72.56558628525457', 'Growth mindset', 0, 0, 9, 1, 0, '2025-01-28 09:20:00'),
(38, 38, 'Ahmedabad, Gujarat', '23.12637955686291', '72.56658628525457', 'Nature love 🌳', 0, 0, 9, 1, 0, '2025-01-28 15:30:00'),
(39, 39, 'Ahmedabad, Gujarat', '23.12737955686291', '72.56758628525457', 'Silent hustle', 0, 0, 9, 1, 0, '2025-01-29 10:00:00'),
(40, 40, 'Ahmedabad, Gujarat', '23.12837955686291', '72.56858628525457', 'Mindfulness 🧠', 0, 0, 9, 1, 0, '2025-01-29 19:00:00'),
(41, 41, 'Ahmedabad, Gujarat', '23.12937955686291', '72.56958628525457', 'Early start 🌄', 0, 0, 9, 1, 0, '2025-01-30 06:15:00'),
(42, 42, 'Ahmedabad, Gujarat', '23.13037955686291', '72.57058628525457', 'Focus & flow', 0, 0, 9, 1, 0, '2025-01-30 11:00:00'),
(43, 43, 'Ahmedabad, Gujarat', '23.13137955686291', '72.57158628525457', 'Street clicks 📸', 0, 0, 9, 1, 0, '2025-01-31 17:45:00'),
(44, 44, 'Ahmedabad, Gujarat', '23.13237955686291', '72.57258628525457', 'Creative zone', 0, 0, 9, 1, 0, '2025-01-31 20:30:00'),
(45, 45, 'Ahmedabad, Gujarat', '23.13337955686291', '72.57358628525457', 'Weekend plans', 0, 0, 9, 1, 0, '2025-02-01 14:00:00'),
(46, 46, 'Ahmedabad, Gujarat', '23.13437955686291', '72.57458628525457', 'Self care 💆', 0, 0, 9, 1, 0, '2025-02-01 18:20:00'),
(47, 47, 'Ahmedabad, Gujarat', '23.13537955686291', '72.57558628525457', 'Daily routine', 0, 0, 9, 1, 0, '2025-02-02 08:30:00'),
(48, 48, 'Ahmedabad, Gujarat', '23.13637955686291', '72.57658628525457', 'Healthy food 🥑', 0, 0, 9, 1, 0, '2025-02-02 13:10:00'),
(49, 49, 'Ahmedabad, Gujarat', '23.13737955686291', '72.57758628525457', 'Goals ahead 🎯', 0, 0, 9, 1, 0, '2025-02-03 09:00:00'),
(50, 50, 'Ahmedabad, Gujarat', '23.13837955686291', '72.57858628525457', 'Stay consistent', 0, 0, 9, 1, 0, '2025-02-03 19:40:00'),
(51, 51, 'Ahmedabad, Gujarat', '23.13937955686291', '72.57958628525457', 'Small wins', 0, 0, 0, 1, 0, '2025-02-04 10:20:00'),
(52, 52, 'Ahmedabad, Gujarat', '23.14037955686291', '72.58058628525457', 'Productive day', 0, 0, 0, 1, 0, '2025-02-04 15:00:00'),
(53, 53, 'Ahmedabad, Gujarat', '23.14137955686291', '72.58158628525457', 'Mind & body', 0, 0, 0, 1, 0, '2025-02-05 07:45:00'),
(54, 54, 'Ahmedabad, Gujarat', '23.14237955686291', '72.58258628525457', 'Creative spark', 0, 0, 0, 1, 0, '2025-02-05 17:30:00'),
(55, 55, 'Ahmedabad, Gujarat', '23.14337955686291', '72.58358628525457', 'Balance life', 0, 0, 0, 1, 0, '2025-02-06 20:00:00'),
(58, 2, 'Ahmedabad, Gujarat', '23.14637955686291', '72.58658628525457', 'Move forward', 0, 0, 0, 1, 0, '2025-02-07 18:15:00'),
(59, 2, 'Ahmedabad, Gujarat', '23.14737955686291', '72.58758628525457', 'Calm energy', 0, 0, 0, 1, 0, '2025-02-08 08:50:00'),
(64, 2, 'Ahmedabad', '23.11537955686291', '72.55558628525457', 'Coffee vibes', 0, 0, 0, 1, 0, '2025-01-10 08:00:00'),
(65, 2, 'Ahmedabad', '23.11558912345678', '72.55578912345678', 'Creative mood 🎨', 0, 0, 0, 1, 0, '2025-01-11 14:30:00'),
(66, 2, 'Ahmedabad', '23.11579998765432', '72.55599998765432', 'Late night thoughts', 0, 0, 0, 1, 0, '2025-01-12 22:10:00'),
(70, 4, 'Ahmedabad', '23.11737955686291', '72.55758628525457', 'Street food 🍔', 0, 0, 0, 1, 0, '2025-01-10 13:15:00'),
(71, 4, 'Ahmedabad', '23.11758912345678', '72.55778912345678', 'Food photography 📸', 0, 0, 0, 1, 0, '2025-01-11 15:45:00'),
(72, 4, 'Ahmedabad', '23.11779998765432', '72.55799998765432', 'Dinner scenes', 0, 0, 0, 1, 0, '2025-01-12 21:00:00'),
(73, 5, 'Ahmedabad', '23.11837955686291', '72.55858628525457', 'Startup life 🚀', 0, 0, 0, 1, 0, '2025-01-10 10:30:00'),
(74, 5, 'Ahmedabad', '23.11858912345678', '72.55878912345678', 'Pitch prep', 0, 0, 0, 1, 0, '2025-01-11 11:45:00'),
(75, 5, 'Ahmedabad', '23.11879998765432', '72.55899998765432', 'Work late', 0, 0, 0, 1, 0, '2025-01-12 23:10:00'),
(76, 51, 'Ahmedabad', '23.13937955686291', '72.57958628525457', 'Fresh start', 0, 0, 0, 1, 0, '2025-02-01 08:15:00'),
(77, 51, 'Ahmedabad', '23.13958912345678', '72.57978912345678', 'Learning mode', 0, 0, 0, 1, 0, '2025-02-02 19:00:00'),
(78, 52, 'Ahmedabad', '23.14037955686291', '72.58058628525457', 'Productive day', 0, 0, 0, 1, 0, '2025-02-01 09:45:00'),
(79, 52, 'Ahmedabad', '23.14058912345678', '72.58078912345678', 'Evening calm', 0, 0, 0, 1, 0, '2025-02-02 20:10:00'),
(80, 53, 'Ahmedabad', '23.14137955686291', '72.58158628525457', 'Mind & body', 0, 0, 0, 1, 0, '2025-02-03 07:30:00'),
(81, 53, 'Ahmedabad', '23.14158912345678', '72.58178912345678', 'Healthy habits', 0, 0, 0, 1, 0, '2025-02-03 18:20:00'),
(82, 54, 'Ahmedabad', '23.14237955686291', '72.58258628525457', 'Creative spark', 0, 0, 0, 1, 0, '2025-02-04 11:00:00'),
(83, 54, 'Ahmedabad', '23.14258912345678', '72.58278912345678', 'New ideas 💡', 0, 0, 0, 1, 0, '2025-02-04 21:15:00'),
(84, 55, 'Ahmedabad', '23.14337955686291', '72.58358628525457', 'Balance life', 0, 0, 0, 1, 0, '2025-02-05 10:10:00'),
(85, 55, 'Ahmedabad', '23.14358912345678', '72.58378912345678', 'Slow down', 0, 0, 0, 1, 0, '2025-02-05 20:45:00'),
(86, 4, 'Ahmedabad', '23.14437955686291', '72.58458628525457', 'Progress daily', 0, 0, 0, 1, 0, '2025-02-06 08:00:00'),
(87, 5, 'Ahmedabad', '23.14458912345678', '72.58478912345678', 'Focus zone', 0, 0, 0, 1, 0, '2025-02-06 18:30:00'),
(88, 6, 'Ahmedabad', '23.14537955686291', '72.58558628525457', 'Think positive', 0, 0, 0, 1, 0, '2025-02-07 09:30:00'),
(89, 7, 'Ahmedabad', '23.14558912345678', '72.58578912345678', 'Evening walk', 0, 0, 0, 1, 0, '2025-02-07 19:15:00'),
(90, 7, 'Ahmedabad', '23.14637955686291', '72.58658628525457', 'Move forward', 0, 0, 0, 1, 0, '2025-02-08 07:45:00'),
(91, 8, 'Ahmedabad', '23.14658912345678', '72.58678912345678', 'Daily routine', 0, 0, 0, 1, 0, '2025-02-08 20:00:00'),
(92, 8, 'Ahmedabad', '23.14737955686291', '72.58758628525457', 'Calm energy', 0, 0, 0, 1, 0, '2025-02-09 08:30:00'),
(93, 9, 'Ahmedabad', '23.14758912345678', '72.58778912345678', 'Quiet night', 0, 0, 0, 1, 0, '2025-02-09 22:10:00'),
(94, 9, 'Ahmedabad', '23.14837955686291', '72.58858628525457', 'Next chapter 🚀', 0, 0, 0, 1, 0, '2025-02-10 10:00:00'),
(95, 1, 'Ahmedabad', '23.14858912345678', '72.58878912345678', 'Stay consistent', 0, 0, 0, 1, 0, '2025-02-10 21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postcomment`
--

CREATE TABLE `tbl_postcomment` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `show_user_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `is_commented` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_postcomment`
--

INSERT INTO `tbl_postcomment` (`id`, `post_id`, `show_user_id`, `description`, `is_commented`, `created_at`, `is_delete`) VALUES
(1, 1, 3, 'Nice post 👌', 1, '2025-01-12 10:15:00', 0),
(2, 1, 7, 'Loved this 🔥', 1, '2025-01-12 10:25:00', 0),
(3, 2, 4, 'Great click 📸', 1, '2025-01-13 09:40:00', 0),
(4, 2, 9, 'Amazing vibes', 1, '2025-01-13 09:55:00', 0),
(5, 3, 2, 'Motivating 💪', 1, '2025-01-13 11:10:00', 0),
(6, 3, 8, 'Keep going!', 1, '2025-01-13 11:25:00', 0),
(7, 4, 5, 'Looks tasty 😋', 1, '2025-01-14 14:05:00', 0),
(8, 4, 11, 'Yummy!', 1, '2025-01-14 14:15:00', 0),
(9, 5, 6, 'Inspirational 🚀', 1, '2025-01-14 16:30:00', 0),
(10, 5, 12, 'Well said', 1, '2025-01-14 16:45:00', 0),
(11, 6, 4, 'Peaceful shot ✨', 1, '2025-01-15 18:10:00', 0),
(12, 6, 13, 'Very calm', 1, '2025-01-15 18:20:00', 0),
(13, 7, 9, 'Cricket love 🏏', 1, '2025-01-16 17:05:00', 0),
(14, 7, 15, 'Great game!', 1, '2025-01-16 17:15:00', 0),
(15, 8, 3, 'Nice capture', 1, '2025-01-16 20:40:00', 0),
(16, 8, 16, 'Looks cool', 1, '2025-01-16 20:50:00', 0),
(17, 9, 10, 'Awesome pic 🔥', 1, '2025-01-17 11:35:00', 0),
(18, 9, 17, 'Love this!', 1, '2025-01-17 11:50:00', 0),
(19, 10, 6, 'Nature is peace 🌿', 1, '2025-01-17 08:20:00', 0),
(20, 10, 18, 'Beautiful!', 1, '2025-01-17 08:35:00', 0),
(21, 11, 7, 'Music heals 🎧', 1, '2025-01-18 21:15:00', 0),
(22, 11, 19, 'True that', 1, '2025-01-18 21:25:00', 0),
(23, 12, 8, 'Nice moves 💃', 1, '2025-01-18 17:40:00', 0),
(24, 12, 20, 'So energetic!', 1, '2025-01-18 17:55:00', 0),
(25, 13, 9, 'Car looks clean 🚗', 1, '2025-01-19 12:50:00', 0),
(26, 13, 21, 'Nice detailing', 1, '2025-01-19 13:00:00', 0),
(27, 14, 10, 'Interesting view', 1, '2025-01-19 09:20:00', 0),
(28, 14, 22, 'Good insight', 1, '2025-01-19 09:35:00', 0),
(29, 15, 11, 'Cool shoot 📷', 1, '2025-01-20 14:30:00', 0),
(30, 15, 23, 'Nice angle', 1, '2025-01-20 14:45:00', 0),
(31, 16, 12, 'Creative 🎨', 1, '2025-01-20 19:40:00', 0),
(32, 16, 24, 'Love colors', 1, '2025-01-20 19:55:00', 0),
(33, 17, 13, 'Family first ❤️', 1, '2025-01-21 20:10:00', 0),
(34, 17, 25, 'So wholesome', 1, '2025-01-21 20:25:00', 0),
(35, 18, 14, 'Travel goals 🌍', 1, '2025-01-22 10:35:00', 0),
(36, 18, 26, 'Can’t wait!', 1, '2025-01-22 10:50:00', 0),
(37, 19, 15, 'Makeup on point 💄', 1, '2025-01-22 16:45:00', 0),
(38, 19, 27, 'Looks great!', 1, '2025-01-22 17:00:00', 0),
(39, 20, 16, 'Business mindset 💼', 1, '2025-01-23 11:10:00', 0),
(40, 20, 28, 'Very inspiring', 1, '2025-01-23 11:25:00', 0),
(41, 21, 17, 'Motivation 💯', 1, '2025-01-24 08:20:00', 0),
(42, 22, 18, 'Positive vibes ✨', 1, '2025-01-24 09:10:00', 0),
(43, 23, 19, 'Minimal & clean', 1, '2025-01-25 10:45:00', 0),
(44, 24, 20, 'Coffee time ☕', 1, '2025-01-25 18:15:00', 0),
(45, 25, 21, 'Startup life 🚀', 1, '2025-01-26 11:30:00', 0),
(46, 26, 22, 'Morning jog 🏃', 1, '2025-01-26 06:45:00', 0),
(47, 27, 23, 'City looks great 🌃', 1, '2025-01-27 19:30:00', 0),
(48, 28, 24, 'Ride safe 🏍️', 1, '2025-01-27 17:20:00', 0),
(49, 29, 25, 'Focused 👍', 1, '2025-01-28 09:15:00', 0),
(50, 30, 26, 'Weekend fun 😎', 1, '2025-01-28 21:40:00', 0);

--
-- Triggers `tbl_postcomment`
--
DELIMITER $$
CREATE TRIGGER `insert_comment_trigger` AFTER INSERT ON `tbl_postcomment` FOR EACH ROW IF NEW.is_commented = 1 THEN
        UPDATE tbl_post
        SET comment_count = comment_count + 1
        WHERE id = NEW.post_id;
    END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_comment_count` BEFORE UPDATE ON `tbl_postcomment` FOR EACH ROW IF OLD.is_commented = 1 AND NEW.is_commented = 0 THEN
        UPDATE tbl_post
        SET comment_count = comment_count - 1
        WHERE id = OLD.post_id;
    ELSEIF OLD.is_commented = 0 AND NEW.is_commented = 1 THEN
        UPDATE tbl_post
        SET comment_count = comment_count + 1
        WHERE id = OLD.post_id;
    END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postlike`
--

CREATE TABLE `tbl_postlike` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `show_user_id` bigint(20) NOT NULL,
  `is_liked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_postlike`
--

INSERT INTO `tbl_postlike` (`id`, `post_id`, `show_user_id`, `is_liked`) VALUES
(1, 1, 2, 1),
(2, 1, 3, 1),
(3, 1, 4, 1),
(4, 1, 5, 1),
(5, 1, 6, 1),
(6, 2, 1, 1),
(7, 2, 3, 1),
(8, 2, 4, 1),
(9, 2, 7, 1),
(10, 2, 8, 1),
(11, 3, 2, 1),
(12, 3, 5, 1),
(13, 3, 6, 1),
(14, 3, 9, 1),
(15, 3, 10, 1),
(16, 4, 1, 1),
(17, 4, 3, 1),
(18, 4, 7, 1),
(19, 4, 11, 1),
(20, 4, 12, 1),
(21, 5, 4, 1),
(22, 5, 6, 1),
(23, 5, 8, 1),
(24, 5, 13, 1),
(25, 5, 14, 1),
(26, 6, 2, 1),
(27, 6, 5, 1),
(28, 6, 9, 1),
(29, 6, 15, 1),
(30, 6, 16, 1),
(31, 7, 3, 1),
(32, 7, 6, 1),
(33, 7, 10, 1),
(34, 7, 17, 1),
(35, 7, 18, 1),
(36, 8, 1, 1),
(37, 8, 4, 1),
(38, 8, 7, 1),
(39, 8, 19, 1),
(40, 8, 20, 1),
(41, 9, 2, 1),
(42, 9, 5, 1),
(43, 9, 8, 1),
(44, 9, 21, 1),
(45, 9, 22, 1),
(46, 10, 3, 1),
(47, 10, 6, 1),
(48, 10, 9, 1),
(49, 10, 23, 1),
(50, 10, 24, 1),
(51, 11, 4, 1),
(52, 11, 7, 1),
(53, 11, 10, 1),
(54, 11, 25, 1),
(55, 11, 26, 1),
(56, 12, 5, 1),
(57, 12, 8, 1),
(58, 12, 11, 1),
(59, 12, 27, 1),
(60, 12, 28, 1),
(61, 13, 6, 1),
(62, 13, 9, 1),
(63, 13, 12, 1),
(64, 13, 29, 1),
(65, 13, 30, 1),
(66, 14, 7, 1),
(67, 14, 10, 1),
(68, 14, 13, 1),
(69, 14, 31, 1),
(70, 14, 32, 1),
(71, 15, 8, 1),
(72, 15, 11, 1),
(73, 15, 14, 1),
(74, 15, 33, 1),
(75, 15, 34, 1),
(76, 16, 9, 1),
(77, 16, 12, 1),
(78, 16, 15, 1),
(79, 16, 35, 1),
(80, 16, 36, 1),
(81, 17, 10, 1),
(82, 17, 13, 1),
(83, 17, 16, 1),
(84, 17, 37, 1),
(85, 17, 38, 1),
(86, 18, 11, 1),
(87, 18, 14, 1),
(88, 18, 17, 1),
(89, 18, 39, 1),
(90, 18, 40, 1),
(91, 19, 12, 1),
(92, 19, 15, 1),
(93, 19, 18, 1),
(94, 19, 41, 1),
(95, 19, 42, 1),
(96, 20, 13, 1),
(97, 20, 16, 1),
(98, 20, 19, 1),
(99, 20, 43, 1),
(100, 20, 44, 1),
(101, 1, 10, 0);

--
-- Triggers `tbl_postlike`
--
DELIMITER $$
CREATE TRIGGER `post_like_countrer` AFTER INSERT ON `tbl_postlike` FOR EACH ROW IF NEW.is_liked = 1 THEN
        UPDATE tbl_post
        SET like_count = like_count + 1
        WHERE id = NEW.post_id;
    END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_like` BEFORE UPDATE ON `tbl_postlike` FOR EACH ROW IF OLD.is_liked = 1 AND NEW.is_liked = 0 THEN
        UPDATE tbl_post
        SET like_count = like_count - 1
        WHERE id = OLD.post_id;
    ELSEIF OLD.is_liked = 0 AND NEW.is_liked = 1 THEN
        UPDATE tbl_post
        SET like_count = like_count + 1
        WHERE id = OLD.post_id;
    END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postmedia`
--

CREATE TABLE `tbl_postmedia` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `media_type` enum('picture','video') NOT NULL,
  `media_url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_postmedia`
--

INSERT INTO `tbl_postmedia` (`id`, `post_id`, `media_type`, `media_url`) VALUES
(1, 1, 'picture', 'post/1/img_1.jpg'),
(2, 1, 'picture', 'post/1/img_2.jpg'),
(3, 2, 'picture', 'post/2/img_1.jpg'),
(4, 2, 'video', 'post/2/video_1.mp4'),
(5, 3, 'picture', 'post/3/img_1.jpg'),
(6, 3, 'picture', 'post/3/img_2.jpg'),
(7, 4, 'picture', 'post/4/img_1.jpg'),
(8, 4, 'video', 'post/4/video_1.mp4'),
(9, 5, 'picture', 'post/5/img_1.jpg'),
(10, 5, 'picture', 'post/5/img_2.jpg'),
(11, 6, 'picture', 'post/6/img_1.jpg'),
(12, 6, 'video', 'post/6/video_1.mp4'),
(13, 7, 'picture', 'post/7/img_1.jpg'),
(14, 7, 'picture', 'post/7/img_2.jpg'),
(15, 8, 'picture', 'post/8/img_1.jpg'),
(16, 8, 'video', 'post/8/video_1.mp4'),
(17, 9, 'picture', 'post/9/img_1.jpg'),
(18, 9, 'picture', 'post/9/img_2.jpg'),
(19, 10, 'picture', 'post/10/img_1.jpg'),
(20, 10, 'video', 'post/10/video_1.mp4'),
(21, 11, 'picture', 'post/11/img_1.jpg'),
(22, 11, 'picture', 'post/11/img_2.jpg'),
(23, 12, 'picture', 'post/12/img_1.jpg'),
(24, 12, 'video', 'post/12/video_1.mp4'),
(25, 13, 'picture', 'post/13/img_1.jpg'),
(26, 13, 'picture', 'post/13/img_2.jpg'),
(27, 14, 'picture', 'post/14/img_1.jpg'),
(28, 14, 'video', 'post/14/video_1.mp4'),
(29, 15, 'picture', 'post/15/img_1.jpg'),
(30, 15, 'picture', 'post/15/img_2.jpg'),
(31, 16, 'picture', 'post/16/img_1.jpg'),
(32, 16, 'video', 'post/16/video_1.mp4'),
(33, 17, 'picture', 'post/17/img_1.jpg'),
(34, 17, 'picture', 'post/17/img_2.jpg'),
(35, 18, 'picture', 'post/18/img_1.jpg'),
(36, 18, 'video', 'post/18/video_1.mp4'),
(37, 19, 'picture', 'post/19/img_1.jpg'),
(38, 19, 'picture', 'post/19/img_2.jpg'),
(39, 20, 'picture', 'post/20/img_1.jpg'),
(40, 20, 'video', 'post/20/video_1.mp4'),
(41, 76, 'picture', 'post/76/img_1.jpg'),
(42, 76, 'picture', 'post/76/img_2.jpg'),
(43, 76, 'video', 'post/76/video_1.mp4'),
(44, 76, 'picture', 'post/76/img_3.jpg'),
(45, 77, 'picture', 'post/77/img_1.jpg'),
(46, 77, 'picture', 'post/77/img_2.jpg'),
(47, 77, 'video', 'post/77/video_1.mp4'),
(48, 77, 'picture', 'post/77/img_3.jpg'),
(49, 78, 'picture', 'post/78/img_1.jpg'),
(50, 78, 'picture', 'post/78/img_2.jpg'),
(51, 78, 'video', 'post/78/video_1.mp4'),
(52, 78, 'picture', 'post/78/img_3.jpg'),
(53, 79, 'picture', 'post/79/img_1.jpg'),
(54, 79, 'picture', 'post/79/img_2.jpg'),
(55, 79, 'video', 'post/79/video_1.mp4'),
(56, 79, 'picture', 'post/79/img_3.jpg'),
(57, 80, 'picture', 'post/80/img_1.jpg'),
(58, 80, 'picture', 'post/80/img_2.jpg'),
(59, 80, 'video', 'post/80/video_1.mp4'),
(60, 80, 'picture', 'post/80/img_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postshare`
--

CREATE TABLE `tbl_postshare` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `sender_user_id` bigint(20) NOT NULL,
  `reciver_user_id` bigint(20) NOT NULL,
  `is_shared` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_postshare`
--

INSERT INTO `tbl_postshare` (`id`, `post_id`, `sender_user_id`, `reciver_user_id`, `is_shared`) VALUES
(1, 30, 1, 2, 1),
(2, 30, 3, 4, 1),
(3, 30, 5, 6, 1),
(4, 31, 2, 5, 1),
(5, 31, 4, 7, 1),
(6, 31, 6, 8, 1),
(7, 32, 3, 6, 1),
(8, 32, 7, 9, 1),
(9, 32, 10, 11, 1),
(10, 33, 4, 8, 1),
(11, 33, 9, 12, 1),
(12, 33, 13, 14, 1),
(13, 34, 5, 10, 1),
(14, 34, 11, 15, 1),
(15, 34, 16, 17, 1),
(16, 35, 6, 12, 1),
(17, 35, 14, 18, 1),
(18, 35, 19, 20, 1),
(19, 36, 7, 13, 1),
(20, 36, 15, 21, 1),
(21, 36, 22, 23, 1),
(22, 37, 8, 14, 1),
(23, 37, 16, 24, 1),
(24, 37, 25, 26, 1),
(25, 38, 9, 15, 1),
(26, 38, 17, 27, 1),
(27, 38, 28, 29, 1),
(28, 39, 10, 16, 1),
(29, 39, 18, 30, 1),
(30, 39, 31, 32, 1),
(31, 40, 11, 17, 1),
(32, 40, 19, 33, 1),
(33, 40, 34, 35, 1),
(34, 41, 12, 18, 1),
(35, 41, 20, 36, 1),
(36, 41, 37, 38, 1),
(37, 42, 13, 19, 1),
(38, 42, 21, 39, 1),
(39, 42, 40, 41, 1),
(40, 43, 14, 20, 1),
(41, 43, 22, 42, 1),
(42, 43, 43, 44, 1),
(43, 44, 15, 21, 1),
(44, 44, 23, 45, 1),
(45, 44, 46, 47, 1),
(46, 45, 16, 22, 1),
(47, 45, 24, 48, 1),
(48, 45, 49, 50, 1),
(49, 46, 17, 23, 1),
(50, 46, 25, 51, 1),
(51, 46, 52, 53, 1),
(52, 47, 18, 24, 1),
(53, 47, 26, 54, 1),
(54, 47, 55, 56, 1),
(55, 48, 19, 25, 1),
(56, 48, 27, 57, 1),
(57, 48, 58, 59, 1),
(58, 49, 20, 26, 1),
(59, 49, 28, 60, 1),
(60, 49, 30, 31, 1),
(61, 50, 21, 27, 1),
(62, 50, 29, 32, 1),
(63, 50, 33, 34, 1);

--
-- Triggers `tbl_postshare`
--
DELIMITER $$
CREATE TRIGGER `share_insert_counter` AFTER INSERT ON `tbl_postshare` FOR EACH ROW IF NEW.is_shared = 1 THEN
        UPDATE tbl_post
        SET share_count = share_count + 1
        WHERE id = NEW.post_id;
    END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_share` BEFORE UPDATE ON `tbl_postshare` FOR EACH ROW IF OLD.is_shared = 1 AND NEW.is_shared = 0 THEN
        UPDATE tbl_post
        SET share_count = share_count - 1
        WHERE id = OLD.post_id;
    ELSEIF OLD.is_shared = 0 AND NEW.is_shared = 1 THEN
        UPDATE tbl_post
        SET share_count = share_count + 1
        WHERE id = OLD.post_id;
    END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postview`
--

CREATE TABLE `tbl_postview` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `show_user_id` bigint(20) NOT NULL,
  `is_watched` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_postview`
--

INSERT INTO `tbl_postview` (`id`, `post_id`, `show_user_id`, `is_watched`) VALUES
(1, 1, 2, 1),
(2, 1, 3, 1),
(3, 1, 4, 1),
(4, 1, 5, 1),
(5, 2, 6, 1),
(6, 2, 7, 1),
(7, 2, 8, 1),
(8, 2, 9, 1),
(9, 3, 10, 1),
(10, 3, 11, 1),
(11, 3, 12, 1),
(12, 3, 13, 1),
(13, 4, 14, 1),
(14, 4, 15, 1),
(15, 4, 16, 1),
(16, 4, 17, 1),
(17, 5, 18, 1),
(18, 5, 19, 1),
(19, 5, 20, 1),
(20, 5, 21, 1),
(21, 6, 22, 1),
(22, 6, 23, 1),
(23, 6, 24, 1),
(24, 6, 25, 1),
(25, 7, 26, 1),
(26, 7, 27, 1),
(27, 7, 28, 1),
(28, 7, 29, 1),
(29, 8, 30, 1),
(30, 8, 31, 1),
(31, 8, 32, 1),
(32, 8, 33, 1),
(33, 9, 34, 1),
(34, 9, 35, 1),
(35, 9, 36, 1),
(36, 9, 37, 1),
(37, 10, 38, 1),
(38, 10, 39, 1),
(39, 10, 40, 1),
(40, 10, 41, 1),
(41, 11, 42, 1),
(42, 11, 43, 1),
(43, 11, 44, 1),
(44, 11, 45, 1),
(45, 12, 46, 1),
(46, 12, 47, 1),
(47, 12, 48, 1),
(48, 12, 49, 1),
(49, 13, 50, 1),
(50, 13, 51, 1),
(51, 13, 52, 1),
(52, 13, 53, 1),
(53, 14, 54, 1),
(54, 14, 55, 1),
(55, 14, 56, 1),
(56, 14, 57, 1),
(57, 15, 58, 1),
(58, 15, 59, 1),
(59, 15, 60, 1),
(60, 15, 1, 1),
(61, 16, 2, 1),
(62, 16, 3, 1),
(63, 16, 4, 1),
(64, 16, 5, 1),
(65, 17, 6, 1),
(66, 17, 7, 1),
(67, 17, 8, 1),
(68, 17, 9, 1),
(69, 18, 10, 1),
(70, 18, 11, 1),
(71, 18, 12, 1),
(72, 18, 13, 1),
(73, 19, 14, 1),
(74, 19, 15, 1),
(75, 19, 16, 1),
(76, 19, 17, 1),
(77, 20, 18, 1),
(78, 20, 19, 1),
(79, 20, 20, 1),
(80, 20, 21, 1),
(81, 30, 22, 1),
(82, 30, 23, 1),
(83, 30, 24, 1),
(84, 30, 25, 1),
(85, 31, 26, 1),
(86, 31, 27, 1),
(87, 31, 28, 1),
(88, 31, 29, 1),
(89, 32, 30, 1),
(90, 32, 31, 1),
(91, 32, 32, 1),
(92, 32, 33, 1),
(93, 33, 34, 1),
(94, 33, 35, 1),
(95, 33, 36, 1),
(96, 33, 37, 1),
(97, 34, 38, 1),
(98, 34, 39, 1),
(99, 34, 40, 1),
(100, 34, 41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_tagged_user`
--

CREATE TABLE `tbl_post_tagged_user` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tagged_user_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_post_tagged_user`
--

INSERT INTO `tbl_post_tagged_user` (`id`, `post_id`, `tagged_user_id`, `created_at`) VALUES
(1, 1, 3, '2025-01-12 10:20:00'),
(2, 1, 5, '2025-01-12 10:21:00'),
(3, 1, 7, '2025-01-12 10:22:00'),
(4, 2, 4, '2025-01-13 09:45:00'),
(5, 2, 6, '2025-01-13 09:46:00'),
(6, 3, 8, '2025-01-13 11:30:00'),
(7, 3, 9, '2025-01-13 11:31:00'),
(8, 3, 10, '2025-01-13 11:32:00'),
(9, 4, 11, '2025-01-14 14:20:00'),
(10, 4, 12, '2025-01-14 14:21:00'),
(11, 5, 13, '2025-01-14 16:50:00'),
(12, 5, 14, '2025-01-14 16:51:00'),
(13, 5, 15, '2025-01-14 16:52:00'),
(14, 6, 16, '2025-01-15 18:30:00'),
(15, 6, 17, '2025-01-15 18:31:00'),
(16, 7, 18, '2025-01-16 17:25:00'),
(17, 7, 19, '2025-01-16 17:26:00'),
(18, 7, 20, '2025-01-16 17:27:00'),
(19, 8, 21, '2025-01-16 20:55:00'),
(20, 8, 22, '2025-01-16 20:56:00'),
(21, 9, 23, '2025-01-17 12:00:00'),
(22, 9, 24, '2025-01-17 12:01:00'),
(23, 9, 25, '2025-01-17 12:02:00'),
(24, 10, 26, '2025-01-17 08:40:00'),
(25, 10, 27, '2025-01-17 08:41:00'),
(26, 30, 28, '2025-01-24 21:05:00'),
(27, 30, 29, '2025-01-24 21:06:00'),
(28, 30, 30, '2025-01-24 21:07:00'),
(29, 31, 31, '2025-01-25 10:15:00'),
(30, 31, 32, '2025-01-25 10:16:00'),
(31, 32, 33, '2025-01-25 16:20:00'),
(32, 32, 34, '2025-01-25 16:21:00'),
(33, 32, 35, '2025-01-25 16:22:00'),
(34, 33, 36, '2025-01-26 09:30:00'),
(35, 33, 37, '2025-01-26 09:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report`
--

CREATE TABLE `tbl_report` (
  `id` bigint(20) NOT NULL,
  `reporter_user_id` bigint(20) NOT NULL,
  `reported_user_id` bigint(20) NOT NULL,
  `reason` enum('Spam','hatespeech','harresment','false Infromation','intellectual Property') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','reviewed','resolved') DEFAULT 'pending',
  `reported_at` datetime DEFAULT current_timestamp(),
  `reviewed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_report`
--

INSERT INTO `tbl_report` (`id`, `reporter_user_id`, `reported_user_id`, `reason`, `description`, `status`, `reported_at`, `reviewed_at`) VALUES
(1, 2, 7, 'Spam', 'Repeated promotional messages', 'pending', '2025-01-10 09:20:00', NULL),
(2, 5, 12, 'hatespeech', 'Offensive language in comments', 'reviewed', '2025-01-11 14:45:00', '2025-01-12 10:30:00'),
(3, 8, 3, 'harresment', 'Continuous unwanted messages', 'resolved', '2025-01-12 18:10:00', '2025-01-13 11:00:00'),
(4, 10, 15, 'false Infromation', 'Misleading health related post', 'reviewed', '2025-01-13 09:35:00', '2025-01-14 16:20:00'),
(5, 14, 6, 'intellectual Property', 'Reposted content without credit', 'pending', '2025-01-14 21:00:00', NULL),
(6, 18, 9, 'Spam', 'Bot-like activity detected', 'resolved', '2025-01-15 08:50:00', '2025-01-16 12:15:00'),
(7, 20, 4, 'harresment', 'Personal attacks in DMs', 'reviewed', '2025-01-16 13:40:00', '2025-01-17 09:25:00'),
(8, 22, 11, 'false Infromation', 'Fake giveaway post', 'pending', '2025-01-17 17:55:00', NULL),
(9, 25, 19, 'hatespeech', 'Discriminatory remarks', 'resolved', '2025-01-18 10:10:00', '2025-01-19 15:45:00'),
(10, 30, 21, 'intellectual Property', 'Copied artwork without permission', 'reviewed', '2025-01-19 19:30:00', '2025-01-20 11:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_save`
--

CREATE TABLE `tbl_save` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `collection_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_saved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_save`
--

INSERT INTO `tbl_save` (`id`, `post_id`, `collection_id`, `user_id`, `is_saved`) VALUES
(1, 1, 1, 1, 1),
(2, 5, 1, 1, 1),
(3, 9, 2, 1, 1),
(4, 12, 2, 1, 1),
(5, 18, 3, 1, 1),
(6, 2, 2, 2, 1),
(7, 6, 2, 2, 1),
(8, 10, 2, 2, 1),
(9, 15, 2, 2, 1),
(10, 22, 2, 2, 1),
(11, 3, 3, 3, 1),
(12, 7, 3, 3, 1),
(13, 11, 3, 3, 1),
(14, 16, 3, 3, 1),
(15, 25, 3, 3, 1),
(16, 4, 4, 4, 1),
(17, 8, 4, 4, 1),
(18, 14, 4, 4, 1),
(19, 19, 4, 4, 1),
(20, 27, 4, 4, 1),
(21, 5, 5, 5, 1),
(22, 9, 5, 5, 1),
(23, 20, 5, 5, 1),
(24, 28, 5, 5, 1),
(25, 30, 5, 5, 1),
(26, 6, 6, 6, 1),
(27, 10, 6, 6, 1),
(28, 17, 6, 6, 1),
(29, 29, 6, 6, 1),
(30, 33, 6, 6, 1),
(31, 7, 7, 7, 1),
(32, 13, 7, 7, 1),
(33, 18, 7, 7, 1),
(34, 31, 7, 7, 1),
(35, 35, 7, 7, 1),
(36, 8, 8, 8, 1),
(37, 16, 8, 8, 1),
(38, 21, 8, 8, 1),
(39, 34, 8, 8, 1),
(40, 38, 8, 8, 1),
(41, 9, 9, 9, 1),
(42, 17, 9, 9, 1),
(43, 24, 9, 9, 1),
(44, 36, 9, 9, 1),
(45, 40, 9, 9, 1),
(46, 10, 10, 10, 1),
(47, 18, 10, 10, 1),
(48, 26, 10, 10, 1),
(49, 37, 10, 10, 1),
(50, 42, 10, 10, 1),
(51, 45, 11, 11, 1),
(52, 46, 12, 12, 1),
(53, 47, 13, 13, 1),
(54, 48, 14, 14, 1),
(55, 49, 15, 15, 1),
(56, 50, 1, 16, 1),
(57, 51, 2, 17, 1),
(58, 52, 3, 18, 1),
(59, 53, 4, 19, 1),
(60, 54, 5, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_story`
--

CREATE TABLE `tbl_story` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `story_url` varchar(255) NOT NULL,
  `story_type` enum('picture','video') NOT NULL,
  `expired_date` datetime NOT NULL,
  `story_view_count` bigint(20) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_story`
--

INSERT INTO `tbl_story` (`id`, `user_id`, `story_url`, `story_type`, `expired_date`, `story_view_count`, `created_at`) VALUES
(1, 1, 'story/1/img_1.jpg', 'picture', '2025-02-05 10:15:00', 3, '2025-02-04 10:15:00'),
(2, 1, 'story/2/img_1.jpg', 'picture', '2025-02-06 09:30:00', 3, '2025-02-05 09:30:00'),
(3, 2, 'story/3/img_1.jpg', 'picture', '2025-02-05 14:00:00', 3, '2025-02-04 14:00:00'),
(4, 3, 'story/4/img_1.jpg', 'picture', '2025-02-05 18:45:00', 3, '2025-02-04 18:45:00'),
(5, 3, 'story/5/img_1.jpg', 'picture', '2025-02-06 08:10:00', 3, '2025-02-05 08:10:00'),
(6, 4, 'story/6/img_1.jpg', 'picture', '2025-02-05 21:20:00', 3, '2025-02-04 21:20:00'),
(7, 5, 'story/7/img_1.jpg', 'picture', '2025-02-06 07:00:00', 3, '2025-02-05 07:00:00'),
(8, 6, 'story/8/img_1.jpg', 'video', '2025-02-06 11:00:00', 3, '2025-02-05 11:00:00'),
(9, 6, 'story/9/img_1.jpg', 'picture', '2025-02-07 08:45:00', 3, '2025-02-06 08:45:00'),
(10, 7, 'story/10/img_1.jpg', 'video', '2025-02-06 13:30:00', 3, '2025-02-05 13:30:00'),
(11, 8, 'story/11/img_1.jpg', 'picture', '2025-02-06 16:10:00', 3, '2025-02-05 16:10:00'),
(12, 8, 'story/12/img_1.jpg', 'picture', '2025-02-07 09:50:00', 3, '2025-02-06 09:50:00'),
(13, 9, 'story/13/img_1.jpg', 'picture', '2025-02-06 20:25:00', 4, '2025-02-05 20:25:00'),
(14, 10, 'story/14/img_1.jpg', 'picture', '2025-02-07 07:15:00', 4, '2025-02-06 07:15:00'),
(15, 10, 'story/15/img_1.jpg', 'picture', '2025-02-08 06:40:00', 4, '2025-02-07 06:40:00'),
(16, 11, 'story/16/img_1.jpg', 'picture', '2025-02-07 12:00:00', 4, '2025-02-06 12:00:00'),
(17, 12, 'story/17/img_1.jpg', 'picture', '2025-02-07 15:35:00', 0, '2025-02-06 15:35:00'),
(18, 12, 'story/18/img_1.jpg', 'picture', '2025-02-08 10:20:00', 0, '2025-02-07 10:20:00'),
(19, 13, 'story/19/img_1.jpg', 'picture', '2025-02-07 19:45:00', 0, '2025-02-06 19:45:00'),
(20, 14, 'story/20/img_1.jpg', 'picture', '2025-02-08 08:30:00', 0, '2025-02-07 08:30:00'),
(21, 15, '', '', '2025-02-08 14:10:00', 0, '2025-02-07 14:10:00'),
(22, 15, '', '', '2025-02-09 09:55:00', 0, '2025-02-08 09:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storymedia`
--

CREATE TABLE `tbl_storymedia` (
  `id` bigint(20) NOT NULL,
  `story_id` bigint(20) NOT NULL,
  `media_type` enum('picture','video') NOT NULL,
  `media_url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_storymedia`
--

INSERT INTO `tbl_storymedia` (`id`, `story_id`, `media_type`, `media_url`) VALUES
(1, 1, 'picture', 'story/1/img_1.jpg'),
(2, 2, 'picture', 'story/2/img_1.jpg'),
(3, 2, 'picture', 'story/2/img_2.jpg'),
(4, 3, 'picture', 'story/3/img_1.jpg'),
(5, 4, 'picture', 'story/4/img_1.jpg'),
(6, 4, 'video', 'story/4/video_1.mp4'),
(7, 5, 'picture', 'story/5/img_1.jpg'),
(8, 6, 'picture', 'story/6/img_1.jpg'),
(9, 6, 'picture', 'story/6/img_2.jpg'),
(10, 7, 'picture', 'story/7/img_1.jpg'),
(11, 8, 'picture', 'story/8/img_1.jpg'),
(12, 8, 'video', 'story/8/video_1.mp4'),
(13, 9, 'picture', 'story/9/img_1.jpg'),
(14, 10, 'picture', 'story/10/img_1.jpg'),
(15, 10, 'picture', 'story/10/img_2.jpg'),
(16, 11, 'picture', 'story/11/img_1.jpg'),
(17, 12, 'picture', 'story/12/img_1.jpg'),
(18, 12, 'video', 'story/12/video_1.mp4'),
(19, 13, 'picture', 'story/13/img_1.jpg'),
(20, 14, 'picture', 'story/14/img_1.jpg'),
(21, 15, 'picture', 'story/15/img_1.jpg'),
(22, 15, 'picture', 'story/15/img_2.jpg'),
(23, 16, 'picture', 'story/16/img_1.jpg'),
(24, 17, 'picture', 'story/17/img_1.jpg'),
(25, 17, 'video', 'story/17/video_1.mp4'),
(26, 18, 'picture', 'story/18/img_1.jpg'),
(27, 19, 'picture', 'story/19/img_1.jpg'),
(28, 20, 'picture', 'story/20/img_1.jpg'),
(29, 20, 'picture', 'story/20/img_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storyview`
--

CREATE TABLE `tbl_storyview` (
  `id` bigint(20) NOT NULL,
  `story_id` bigint(20) NOT NULL,
  `show_user_id` bigint(20) NOT NULL,
  `is_watched` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_storyview`
--

INSERT INTO `tbl_storyview` (`id`, `story_id`, `show_user_id`, `is_watched`) VALUES
(1, 1, 2, 1),
(2, 1, 3, 1),
(3, 1, 4, 1),
(4, 2, 5, 1),
(5, 2, 6, 1),
(6, 2, 7, 1),
(7, 3, 8, 1),
(8, 3, 9, 1),
(9, 3, 10, 1),
(10, 4, 11, 1),
(11, 4, 12, 1),
(12, 4, 13, 1),
(13, 5, 14, 1),
(14, 5, 15, 1),
(15, 5, 16, 1),
(16, 6, 17, 1),
(17, 6, 18, 1),
(18, 6, 19, 1),
(19, 7, 20, 1),
(20, 7, 21, 1),
(21, 7, 22, 1),
(22, 8, 23, 1),
(23, 8, 24, 1),
(24, 8, 25, 1),
(25, 9, 26, 1),
(26, 9, 27, 1),
(27, 9, 28, 1),
(28, 10, 29, 1),
(29, 10, 30, 1),
(30, 10, 31, 1),
(31, 11, 32, 1),
(32, 11, 33, 1),
(33, 11, 34, 1),
(34, 12, 35, 1),
(35, 12, 36, 1),
(36, 12, 37, 1),
(37, 13, 38, 1),
(38, 13, 39, 1),
(39, 13, 40, 1),
(40, 13, 41, 1),
(41, 14, 42, 1),
(42, 14, 43, 1),
(43, 14, 44, 1),
(44, 14, 45, 1),
(45, 15, 46, 1),
(46, 15, 47, 1),
(47, 15, 48, 1),
(48, 15, 49, 1),
(49, 16, 50, 1),
(50, 16, 51, 1),
(51, 16, 52, 1),
(52, 16, 53, 1);

--
-- Triggers `tbl_storyview`
--
DELIMITER $$
CREATE TRIGGER `story_count` AFTER INSERT ON `tbl_storyview` FOR EACH ROW IF NEW.is_watched = 1 THEN
        UPDATE tbl_story
        SET story_view_count = story_view_count + 1
        WHERE id = NEW.story_id;
    END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `account_type` enum('public','private') NOT NULL,
  `social_id` text NOT NULL,
  `fullname` varchar(24) NOT NULL,
  `username` varchar(24) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `contry_code` varchar(16) NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `long` varchar(32) DEFAULT NULL,
  `login_type` enum('manual','facebook') NOT NULL,
  `verify_throght` varchar(256) DEFAULT NULL,
  `is_verify_otp` tinyint(1) DEFAULT 0,
  `profile_pic` varchar(256) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `is_step` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `account_type`, `social_id`, `fullname`, `username`, `email`, `password`, `contry_code`, `lat`, `long`, `login_type`, `verify_throght`, `is_verify_otp`, `profile_pic`, `bio`, `is_step`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, '', '', 'Rahul Sharma', 'rahul_s', 'rahul1@gmail.com', 'pass@123', '+91', '23.022505', '72.571365', 'manual', 'rahul1@gmail.com', 0, 'profile.jpg', NULL, 1, 1, 0, '2025-01-05 09:10:00', '2026-02-07 14:43:58'),
(2, '', 'FB_30002', 'Priya Patel', 'priya_p', 'priya1@gmail.com', 'pass@123', '+91', '23.024100', '72.573200', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-05 10:00:00', '2026-02-06 18:26:44'),
(3, '', '', 'Amit Verma', 'amit_v', 'amit1@gmail.com', 'pass@123', '+91', '23.026300', '72.575100', 'manual', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-06 09:30:00', '2026-02-06 18:26:44'),
(4, '', 'FB_30004', 'Sneha Iyer', 'sneha_i', 'sneha1@gmail.com', 'pass@123', '+91', '23.028450', '72.577000', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-06 11:15:00', '2026-02-06 18:26:44'),
(5, '', '', 'Kunal Mehta', 'kunal_m', 'kunal1@gmail.com', 'pass@123', '+91', '23.030600', '72.578900', 'manual', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-07 08:45:00', '2026-02-06 18:26:44'),
(6, '', 'FB_30006', 'Neha Gupta', 'neha_g', 'neha1@gmail.com', 'pass@123', '+91', '23.032800', '72.580800', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-07 12:20:00', '2026-02-06 18:26:44'),
(7, '', '', 'Rohit Singh', 'rohit_s', 'rohit1@gmail.com', 'pass@123', '+91', '23.034950', '72.582700', 'manual', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-08 09:00:00', '2026-02-06 18:26:44'),
(8, '', 'FB_30008', 'Anjali Desai', 'anjali_d', 'anjali1@gmail.com', 'pass@123', '+91', '23.037100', '72.584600', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-08 13:10:00', '2026-02-06 18:26:44'),
(9, '', '', 'Suresh Kumar', 'suresh_k', 'suresh1@gmail.com', 'pass@123', '+91', '23.039250', '72.586500', 'manual', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-09 10:40:00', '2026-02-06 18:26:44'),
(10, '', 'FB_30010', 'Pooja Nair', 'pooja_n', 'pooja1@gmail.com', 'pass@123', '+91', '23.041400', '72.588400', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-09 15:25:00', '2026-02-06 18:26:44'),
(11, '', '', 'Vikas Joshi', 'vikas_j', 'vikas@gmail.com', 'pass@123', '+91', '23.043550', '72.590300', 'manual', 'mobile', 1, NULL, NULL, 2, 1, 0, '2025-01-10 09:10:00', '2026-02-06 18:26:44'),
(12, '', 'FB_30012', 'Riya Malhotra', 'riya_m', 'riya@gmail.com', 'pass@123', '+91', '23.045700', '72.592200', 'facebook', 'riya@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-10 11:30:00', '2026-02-07 14:43:58'),
(13, '', '', 'Arjun Khanna', 'arjun_k', 'arjun@gmail.com', 'pass@123', '+91', '23.047850', '72.594100', 'manual', 'arjun@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-11 08:55:00', '2026-02-07 14:43:58'),
(14, '', 'FB_30014', 'Mehul Shah', 'mehul_s', 'mehul@gmail.com', 'pass@123', '+91', '23.050000', '72.596000', 'facebook', 'mobile', 1, NULL, NULL, 2, 1, 0, '2025-01-11 14:10:00', '2026-02-06 18:26:44'),
(15, '', '', 'Isha Jain', 'isha_j', 'isha@gmail.com', 'pass@123', '+91', '23.052150', '72.597900', 'manual', 'isha@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-12 10:00:00', '2026-02-07 14:43:58'),
(16, '', 'FB_30016', 'Nikhil Rao', 'nikhil_r', 'nikhil@gmail.com', 'pass@123', '+91', '23.054300', '72.599800', 'facebook', 'nikhil@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-12 15:00:00', '2026-02-07 14:43:58'),
(17, '', '', 'Simran Kaur', 'simran_k', 'simran@gmail.com', 'pass@123', '+91', '23.056450', '72.601700', 'manual', 'mobile', 1, NULL, NULL, 2, 1, 0, '2025-01-13 09:25:00', '2026-02-06 18:26:44'),
(18, '', 'FB_30018', 'Aditya Mishra', 'aditya_m', 'aditya@gmail.com', 'pass@123', '+91', '23.058600', '72.603600', 'facebook', 'aditya@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-13 13:40:00', '2026-02-07 14:43:58'),
(19, '', '', 'Kriti Saxena', 'kriti_s', 'kriti@gmail.com', 'pass@123', '+91', '23.060750', '72.605500', 'manual', 'kriti@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-14 10:15:00', '2026-02-07 14:43:58'),
(20, '', 'FB_30020', 'Manish Agarwal', 'manish_a', 'manish@gmail.com', 'pass@123', '+91', '23.062900', '72.607400', 'facebook', 'mobile', 1, NULL, NULL, 2, 1, 0, '2025-01-14 16:20:00', '2026-02-06 18:26:44'),
(21, 'public', '', 'Pankaj Yadav', 'pankaj_y', 'pankaj@gmail.com', 'pass@123', '+91', '23.021100', '72.569200', 'manual', 'pankaj@gmail.com', 1, 'profile/pankaj.jpg', 'Motivation daily 💯', 3, 1, 0, '2025-01-15 09:00:00', '2026-02-07 14:43:58'),
(22, 'private', 'FB_30022', 'Divya Bansal', 'divya_b', 'divya@gmail.com', 'pass@123', '+91', '23.023250', '72.571100', 'facebook', 'divya@gmail.com', 1, 'profile/divya.jpg', 'Positive vibes ✨', 3, 1, 0, '2025-01-15 11:30:00', '2026-02-07 14:43:58'),
(23, 'public', '', 'Harsh Pandey', 'harsh_p', 'harsh@gmail.com', 'pass@123', '+91', '23.025400', '72.573000', 'manual', 'mobile', 1, 'profile/harsh.jpg', 'Minimal life', 3, 1, 0, '2025-01-16 08:50:00', '2026-02-06 18:26:44'),
(24, 'private', 'FB_30024', 'Naina Kapoor', 'naina_k', 'naina@gmail.com', 'pass@123', '+91', '23.027550', '72.574900', 'facebook', 'naina@gmail.com', 1, 'profile/naina.jpg', 'Books & coffee ☕', 3, 1, 0, '2025-01-16 14:10:00', '2026-02-07 14:43:58'),
(25, 'public', '', 'Siddharth Roy', 'sid_r', 'sid@gmail.com', 'pass@123', '+91', '23.029700', '72.576800', 'manual', 'sid@gmail.com', 1, 'profile/sid.jpg', 'Life is simple', 3, 1, 0, '2025-01-17 09:20:00', '2026-02-07 14:43:58'),
(26, 'public', 'FB_30026', 'Aakash Trivedi', 'aakash_t', 'aakash@gmail.com', 'pass@123', '+91', '23.031850', '72.578700', 'facebook', 'aakash@gmail.com', 1, 'profile/aakash.jpg', 'Digital creator', 3, 1, 0, '2025-01-17 13:00:00', '2026-02-07 14:43:58'),
(27, 'private', '', 'Bhavya Joshi', 'bhavya_j', 'bhavya@gmail.com', 'pass@123', '+91', '23.034000', '72.580600', 'manual', 'mobile', 1, 'profile/bhavya.jpg', 'Low-key life', 3, 1, 0, '2025-01-18 10:00:00', '2026-02-06 18:26:44'),
(28, 'public', 'FB_30028', 'Chirag Rana', 'chirag_r', 'chirag@gmail.com', 'pass@123', '+91', '23.036150', '72.582500', 'facebook', 'chirag@gmail.com', 1, 'profile/chirag.jpg', 'Bike rides 🏍️', 3, 1, 0, '2025-01-18 15:10:00', '2026-02-07 14:43:58'),
(29, 'public', '', 'Darshan Solanki', 'darshan_s', 'darshan@gmail.com', 'pass@123', '+91', '23.038300', '72.584400', 'manual', 'darshan@gmail.com', 1, 'profile/darshan.jpg', 'Fitness & food', 3, 1, 0, '2025-01-19 09:30:00', '2026-02-07 14:43:58'),
(30, 'private', 'FB_30030', 'Esha Kapoor', 'esha_k', 'esha@gmail.com', 'pass@123', '+91', '23.040450', '72.586300', 'facebook', 'mobile', 1, 'profile/esha.jpg', 'Family & peace 🌸', 3, 1, 0, '2025-01-19 14:00:00', '2026-02-06 18:26:44'),
(31, '', '', 'Rohit Malviya', 'rohit_m', 'rohitm@gmail.com', 'pass@123', '+91', '23.042600', '72.588200', 'manual', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-20 09:10:00', '2026-02-06 18:26:44'),
(32, '', 'FB_40002', 'Kavita Sharma', 'kavita_s', 'kavita@gmail.com', 'pass@123', '+91', '23.044750', '72.590100', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-20 10:20:00', '2026-02-06 18:26:44'),
(33, '', '', 'Yogesh Patel', 'yogesh_p', 'yogesh@gmail.com', 'pass@123', '+91', '23.046900', '72.592000', 'manual', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-21 08:40:00', '2026-02-06 18:26:44'),
(34, '', 'FB_40004', 'Monika Jain', 'monika_j', 'monika@gmail.com', 'pass@123', '+91', '23.049050', '72.593900', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-21 12:10:00', '2026-02-06 18:26:44'),
(35, '', '', 'Sanjay Verma', 'sanjay_v', 'sanjay@gmail.com', 'pass@123', '+91', '23.051200', '72.595800', 'manual', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-22 09:00:00', '2026-02-06 18:26:44'),
(36, '', 'FB_40006', 'Rupal Mehta', 'rupal_m', 'rupal@gmail.com', 'pass@123', '+91', '23.053350', '72.597700', 'facebook', NULL, 0, NULL, NULL, 1, 1, 0, '2025-01-22 14:35:00', '2026-02-06 18:26:44'),
(37, '', '', 'Nilesh Shah', 'nilesh_s', 'nilesh@gmail.com', 'pass@123', '+91', '23.055500', '72.599600', 'manual', 'nilesh@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-23 09:20:00', '2026-02-07 14:43:58'),
(38, '', 'FB_40008', 'Payal Desai', 'payal_d', 'payal@gmail.com', 'pass@123', '+91', '23.057650', '72.601500', 'facebook', 'mobile', 1, NULL, NULL, 2, 1, 0, '2025-01-23 11:50:00', '2026-02-06 18:26:44'),
(39, '', '', 'Akash Pandya', 'akash_p', 'akash@gmail.com', 'pass@123', '+91', '23.059800', '72.603400', 'manual', 'akash@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-24 08:30:00', '2026-02-07 14:43:58'),
(40, '', 'FB_40010', 'Priti Kulkarni', 'priti_k', 'priti@gmail.com', 'pass@123', '+91', '23.061950', '72.605300', 'facebook', 'priti@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-24 13:10:00', '2026-02-07 14:43:58'),
(41, '', '', 'Hemant Joshi', 'hemant_j', 'hemant@gmail.com', 'pass@123', '+91', '23.064100', '72.607200', 'manual', 'mobile', 1, NULL, NULL, 2, 1, 0, '2025-01-25 09:00:00', '2026-02-06 18:26:44'),
(42, '', 'FB_40012', 'Reema Arora', 'reema_a', 'reema@gmail.com', 'pass@123', '+91', '23.066250', '72.609100', 'facebook', 'reema@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-25 15:45:00', '2026-02-07 14:43:58'),
(43, '', '', 'Alok Mishra', 'alok_m', 'alok@gmail.com', 'pass@123', '+91', '23.068400', '72.611000', 'manual', 'alok@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-26 10:10:00', '2026-02-07 14:43:58'),
(44, '', 'FB_40014', 'Shilpa Nair', 'shilpa_n', 'shilpa@gmail.com', 'pass@123', '+91', '23.070550', '72.612900', 'facebook', 'mobile', 1, NULL, NULL, 2, 1, 0, '2025-01-26 14:00:00', '2026-02-06 18:26:44'),
(45, '', '', 'Vijay Rathod', 'vijay_r', 'vijay@gmail.com', 'pass@123', '+91', '23.072700', '72.614800', 'manual', 'vijay@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-27 09:30:00', '2026-02-07 14:43:58'),
(46, '', 'FB_40016', 'Snehal Joshi', 'snehal_j', 'snehal@gmail.com', 'pass@123', '+91', '23.074850', '72.616700', 'facebook', 'snehal@gmail.com', 1, NULL, NULL, 2, 1, 0, '2025-01-27 12:45:00', '2026-02-07 14:43:58'),
(47, 'public', '', 'Ramesh Kulkarni', 'ramesh_k', 'ramesh@gmail.com', 'pass@123', '+91', '23.077000', '72.618600', 'manual', 'ramesh@gmail.com', 1, 'profile/ramesh.jpg', 'Daily discipline', 3, 1, 0, '2025-01-28 09:00:00', '2026-02-07 14:43:58'),
(48, 'private', 'FB_40018', 'Anita Verma', 'anita_v', 'anita@gmail.com', 'pass@123', '+91', '23.079150', '72.620500', 'facebook', 'anita@gmail.com', 1, 'profile/anita.jpg', 'Balanced life', 3, 1, 0, '2025-01-28 11:20:00', '2026-02-07 14:43:58'),
(49, 'public', '', 'Kishan Patel', 'kishan_p', 'kishan@gmail.com', 'pass@123', '+91', '23.081300', '72.622400', 'manual', 'mobile', 1, 'profile/kishan.jpg', 'Farm & fitness', 3, 1, 0, '2025-01-29 08:45:00', '2026-02-06 18:26:44'),
(50, 'private', 'FB_40020', 'Meena Iyer', 'meena_i', 'meena@gmail.com', 'pass@123', '+91', '23.083450', '72.624300', 'facebook', 'meena@gmail.com', 1, 'profile/meena.jpg', 'Art & calm', 3, 1, 0, '2025-01-29 14:00:00', '2026-02-07 14:43:58'),
(51, 'public', '', 'Sagar Joshi', 'sagar_j', 'sagar@gmail.com', 'pass@123', '+91', '23.085600', '72.626200', 'manual', 'sagar@gmail.com', 1, 'profile/sagar.jpg', 'Hustle daily', 3, 1, 0, '2025-01-30 09:10:00', '2026-02-07 14:43:58'),
(52, 'public', 'FB_40022', 'Tina Shah', 'tina_s', 'tina@gmail.com', 'pass@123', '+91', '23.087750', '72.628100', 'facebook', 'mobile', 1, 'profile/tina.jpg', 'Wellness coach', 3, 1, 0, '2025-01-30 13:40:00', '2026-02-06 18:26:44'),
(53, 'private', '', 'Uday Chavan', 'uday_c', 'uday@gmail.com', 'pass@123', '+91', '23.089900', '72.630000', 'manual', 'uday@gmail.com', 1, 'profile/uday.jpg', 'Silent growth', 3, 1, 0, '2025-01-31 09:30:00', '2026-02-07 14:43:58'),
(54, 'public', 'FB_40024', 'Vandana Rao', 'vandana_r', 'vandana@gmail.com', 'pass@123', '+91', '23.092050', '72.631900', 'facebook', 'vandana@gmail.com', 1, 'profile/vandana.jpg', 'Healthy habits', 3, 1, 0, '2025-01-31 12:10:00', '2026-02-07 14:43:58'),
(55, 'private', '', 'Yatin Mehra', 'yatin_m', 'yatin@gmail.com', 'pass@123', '+91', '23.094200', '72.633800', 'manual', 'mobile', 1, 'profile/yatin.jpg', 'Simple & strong', 3, 1, 0, '2025-02-01 09:00:00', '2026-02-06 18:26:44'),
(56, 'public', 'FB_40026', 'Zeenat Khan', 'zeenat_k', 'zeenat@gmail.com', 'pass@123', '+91', '23.096350', '72.635700', 'facebook', 'zeenat@gmail.com', 1, 'profile/zeenat.jpg', 'Creative soul', 3, 1, 0, '2025-02-01 14:20:00', '2026-02-07 14:43:58'),
(57, 'public', 'SOC_1001_XYZ', 'Amit Sharma', 'amit_sharma', 'amit.sharma@gmail.com', '$2y$10$X1aBcDshashedpass001', '+91', '23.098500', '72.637600', 'manual', 'amit.sharma@gmail.com', 1, 'uploads/profile/amit.jpg', 'Tech enthusiast | Love photography', 3, 1, 0, '2026-02-06 17:36:23', '2026-02-07 14:43:58'),
(58, 'private', 'FB_23991_AAA', 'Neha Patel', 'neha_patel', 'neha.patel@gmail.com', '$2y$10$X1aBcDshashedpass002', '+91', '23.100650', '72.639500', 'facebook', 'facebook', 1, 'uploads/profile/neha.jpg', 'Travel | Food | Coffee', 3, 1, 0, '2026-02-06 17:36:23', '2026-02-06 18:26:44'),
(59, 'public', 'SOC_1002_QWE', 'Rahul Mehta', 'rahul_mehta', 'rahul.mehta@gmail.com', '$2y$10$X1aBcDshashedpass003', '+91', '23.102800', '72.641400', 'manual', 'mobile', 0, NULL, 'Startup hustler 🚀', 2, 1, 0, '2026-02-06 17:36:23', '2026-02-06 18:26:44'),
(60, 'public', 'FB_88321_ZZZ', 'Sara Khan', 'sara_khan', 'sara.khan@gmail.com', '$2y$10$X1aBcDshashedpass004', '+971', '23.104950', '72.643300', 'facebook', 'facebook', 1, 'uploads/profile/sara.png', 'Fashion | Lifestyle | Blogger', 3, 1, 0, '2026-02-06 17:36:23', '2026-02-06 18:26:44'),
(61, 'private', 'SOC_1003_LMN', 'Arjun Verma', 'arjun_verma', 'arjun.verma@gmail.com', '$2y$10$X1aBcDshashedpass005', '+91', NULL, NULL, 'manual', 'arjun.verma@gmail.com', 0, NULL, 'Gym | Discipline | Growth', 1, 1, 0, '2026-02-06 17:36:23', '2026-02-07 14:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userhase`
--

CREATE TABLE `tbl_userhase` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `hase_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_userhase`
--

INSERT INTO `tbl_userhase` (`id`, `post_id`, `hase_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 11),
(12, 6, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 16),
(17, 9, 17),
(18, 9, 18),
(19, 10, 19),
(20, 10, 20),
(21, 11, 21),
(22, 11, 22),
(23, 12, 23),
(24, 12, 24),
(25, 13, 25),
(26, 30, 1),
(27, 30, 5),
(28, 30, 9),
(29, 31, 2),
(30, 31, 6),
(31, 32, 3),
(32, 32, 7),
(33, 33, 4),
(34, 33, 8),
(35, 34, 10),
(36, 35, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_otp`
--

CREATE TABLE `tbl_user_otp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `otp` int(11) NOT NULL,
  `expired_date` datetime NOT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user_otp`
--

INSERT INTO `tbl_user_otp` (`id`, `user_id`, `otp`, `expired_date`, `is_used`, `created_at`) VALUES
(1, 1, 4821, '2025-01-05 09:15:00', 1, '2025-01-05 09:10:00'),
(2, 2, 7392, '2025-01-05 10:05:00', 1, '2025-01-05 10:00:00'),
(3, 3, 6154, '2025-01-06 09:35:00', 0, '2025-01-06 09:30:00'),
(4, 4, 9281, '2025-01-06 11:20:00', 1, '2025-01-06 11:15:00'),
(5, 5, 3049, '2025-01-07 08:50:00', 1, '2025-01-07 08:45:00'),
(6, 6, 7712, '2025-01-07 12:25:00', 0, '2025-01-07 12:20:00'),
(7, 7, 5568, '2025-01-08 09:05:00', 1, '2025-01-08 09:00:00'),
(8, 8, 8823, '2025-01-08 13:15:00', 1, '2025-01-08 13:10:00'),
(9, 9, 4910, '2025-01-09 10:45:00', 0, '2025-01-09 10:40:00'),
(10, 10, 6372, '2025-01-09 15:30:00', 1, '2025-01-09 15:25:00'),
(11, 11, 5149, '2025-01-10 09:15:00', 1, '2025-01-10 09:10:00'),
(12, 12, 9031, '2025-01-10 11:35:00', 1, '2025-01-10 11:30:00'),
(13, 13, 7284, '2025-01-11 09:00:00', 0, '2025-01-11 08:55:00'),
(14, 14, 6652, '2025-01-11 14:15:00', 1, '2025-01-11 14:10:00'),
(15, 15, 3901, '2025-01-12 10:05:00', 1, '2025-01-12 10:00:00'),
(16, 16, 8427, '2025-01-12 15:05:00', 0, '2025-01-12 15:00:00'),
(17, 17, 2194, '2025-01-13 09:30:00', 1, '2025-01-13 09:25:00'),
(18, 18, 7763, '2025-01-13 13:45:00', 1, '2025-01-13 13:40:00'),
(19, 19, 5580, '2025-01-14 10:20:00', 0, '2025-01-14 10:15:00'),
(20, 20, 9016, '2025-01-14 16:25:00', 1, '2025-01-14 16:20:00'),
(21, 21, 4820, '2025-01-15 09:05:00', 1, '2025-01-15 09:00:00'),
(22, 22, 7361, '2025-01-15 11:35:00', 1, '2025-01-15 11:30:00'),
(23, 23, 6194, '2025-01-16 08:55:00', 0, '2025-01-16 08:50:00'),
(24, 24, 8502, '2025-01-16 14:15:00', 1, '2025-01-16 14:10:00'),
(25, 25, 4938, '2025-01-17 09:25:00', 1, '2025-01-17 09:20:00'),
(26, 26, 7624, '2025-01-17 13:05:00', 0, '2025-01-17 13:00:00'),
(27, 27, 3081, '2025-01-18 10:05:00', 1, '2025-01-18 10:00:00'),
(28, 28, 9147, '2025-01-18 15:15:00', 1, '2025-01-18 15:10:00'),
(29, 29, 5703, '2025-01-19 09:35:00', 0, '2025-01-19 09:30:00'),
(30, 30, 6812, '2025-01-19 14:05:00', 1, '2025-01-19 14:00:00'),
(31, 31, 4379, '2025-01-20 09:15:00', 1, '2025-01-20 09:10:00'),
(32, 32, 7026, '2025-01-20 10:25:00', 1, '2025-01-20 10:20:00'),
(33, 33, 5190, '2025-01-21 08:45:00', 0, '2025-01-21 08:40:00'),
(34, 34, 8901, '2025-01-21 12:15:00', 1, '2025-01-21 12:10:00'),
(35, 35, 3742, '2025-01-22 09:05:00', 1, '2025-01-22 09:00:00'),
(36, 36, 6185, '2025-01-22 14:40:00', 0, '2025-01-22 14:35:00'),
(37, 37, 9516, '2025-01-23 09:25:00', 1, '2025-01-23 09:20:00'),
(38, 38, 7048, '2025-01-23 11:55:00', 1, '2025-01-23 11:50:00'),
(39, 39, 5861, '2025-01-24 08:35:00', 0, '2025-01-24 08:30:00'),
(40, 40, 8307, '2025-01-24 13:15:00', 1, '2025-01-24 13:10:00'),
(41, 41, 4928, '2025-01-25 09:05:00', 1, '2025-01-25 09:00:00'),
(42, 42, 7719, '2025-01-25 15:50:00', 0, '2025-01-25 15:45:00'),
(43, 43, 6403, '2025-01-26 10:15:00', 1, '2025-01-26 10:10:00'),
(44, 44, 9182, '2025-01-26 14:05:00', 1, '2025-01-26 14:00:00'),
(45, 45, 3574, '2025-01-27 09:35:00', 0, '2025-01-27 09:30:00'),
(46, 46, 8069, '2025-01-27 12:50:00', 1, '2025-01-27 12:45:00'),
(47, 47, 5238, '2025-01-28 09:05:00', 1, '2025-01-28 09:00:00'),
(48, 48, 7641, '2025-01-28 11:25:00', 1, '2025-01-28 11:20:00'),
(49, 49, 6910, '2025-01-29 08:50:00', 0, '2025-01-29 08:45:00'),
(50, 50, 8453, '2025-01-29 14:05:00', 1, '2025-01-29 14:00:00'),
(51, 51, 5027, '2025-01-30 09:15:00', 1, '2025-01-30 09:10:00'),
(52, 52, 7748, '2025-01-30 13:45:00', 1, '2025-01-30 13:40:00'),
(53, 53, 6819, '2025-01-31 09:35:00', 0, '2025-01-31 09:30:00'),
(54, 54, 9360, '2025-01-31 12:15:00', 1, '2025-01-31 12:10:00'),
(55, 55, 4182, '2025-02-01 09:05:00', 1, '2025-02-01 09:00:00'),
(56, 56, 7053, '2025-02-01 14:25:00', 0, '2025-02-01 14:20:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_block`
--
ALTER TABLE `tbl_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blocker_user_id` (`blocker_user_id`,`blocked_user_id`),
  ADD KEY `uidfk` (`blocked_user_id`);

--
-- Indexes for table `tbl_collection`
--
ALTER TABLE `tbl_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_name` (`collection_name`);

--
-- Indexes for table `tbl_comment_like`
--
ALTER TABLE `tbl_comment_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_like_comment` (`comment_id`),
  ADD KEY `fk_comment_like_user` (`user_id`);

--
-- Indexes for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_comment_id` (`comment_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `tbl_follows`
--
ALTER TABLE `tbl_follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sender_user_id` (`sender_user_id`,`reciver_user_id`),
  ADD KEY `uid3fk` (`reciver_user_id`);

--
-- Indexes for table `tbl_hase`
--
ALTER TABLE `tbl_hase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(250));

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`sender_user_id`),
  ADD KEY `user1_id_fk` (`reciver_user_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location` (`location`),
  ADD KEY `user_id_fk_post` (`user_id`);

--
-- Indexes for table `tbl_postcomment`
--
ALTER TABLE `tbl_postcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id_com` (`post_id`),
  ADD KEY `user_id_fk_comm` (`show_user_id`);

--
-- Indexes for table `tbl_postlike`
--
ALTER TABLE `tbl_postlike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_fkk` (`post_id`),
  ADD KEY `user_fkk` (`show_user_id`);

--
-- Indexes for table `tbl_postmedia`
--
ALTER TABLE `tbl_postmedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_post_fk` (`post_id`);

--
-- Indexes for table `tbl_postshare`
--
ALTER TABLE `tbl_postshare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `share_id` (`post_id`),
  ADD KEY `sendershare` (`sender_user_id`),
  ADD KEY `recivershare` (`reciver_user_id`);

--
-- Indexes for table `tbl_postview`
--
ALTER TABLE `tbl_postview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viewspost` (`post_id`),
  ADD KEY `showuser` (`show_user_id`);

--
-- Indexes for table `tbl_post_tagged_user`
--
ALTER TABLE `tbl_post_tagged_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggeduser` (`tagged_user_id`),
  ADD KEY `taggedpost` (`post_id`);

--
-- Indexes for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reportsender` (`reporter_user_id`),
  ADD KEY `reportreciver` (`reported_user_id`);

--
-- Indexes for table `tbl_save`
--
ALTER TABLE `tbl_save`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection1` (`collection_id`),
  ADD KEY `postsave` (`post_id`),
  ADD KEY `usersave` (`user_id`);

--
-- Indexes for table `tbl_story`
--
ALTER TABLE `tbl_story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userstory` (`user_id`);

--
-- Indexes for table `tbl_storymedia`
--
ALTER TABLE `tbl_storymedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storymedia` (`story_id`);

--
-- Indexes for table `tbl_storyview`
--
ALTER TABLE `tbl_storyview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storyview` (`story_id`),
  ADD KEY `userviewid` (`show_user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`(250));

--
-- Indexes for table `tbl_userhase`
--
ALTER TABLE `tbl_userhase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posthash` (`post_id`),
  ADD KEY `hashuser` (`hase_id`);

--
-- Indexes for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_otp` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_block`
--
ALTER TABLE `tbl_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_collection`
--
ALTER TABLE `tbl_collection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_comment_like`
--
ALTER TABLE `tbl_comment_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_follows`
--
ALTER TABLE `tbl_follows`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `tbl_hase`
--
ALTER TABLE `tbl_hase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_postcomment`
--
ALTER TABLE `tbl_postcomment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_postlike`
--
ALTER TABLE `tbl_postlike`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_postmedia`
--
ALTER TABLE `tbl_postmedia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_postshare`
--
ALTER TABLE `tbl_postshare`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_postview`
--
ALTER TABLE `tbl_postview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_post_tagged_user`
--
ALTER TABLE `tbl_post_tagged_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_report`
--
ALTER TABLE `tbl_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_save`
--
ALTER TABLE `tbl_save`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_story`
--
ALTER TABLE `tbl_story`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_storymedia`
--
ALTER TABLE `tbl_storymedia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_storyview`
--
ALTER TABLE `tbl_storyview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_userhase`
--
ALTER TABLE `tbl_userhase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_block`
--
ALTER TABLE `tbl_block`
  ADD CONSTRAINT `uid1fk` FOREIGN KEY (`blocker_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uidfk` FOREIGN KEY (`blocked_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_comment_like`
--
ALTER TABLE `tbl_comment_like`
  ADD CONSTRAINT `fk_comment_like_comment` FOREIGN KEY (`comment_id`) REFERENCES `tbl_postcomment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comment_like_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  ADD CONSTRAINT `fk_comment_reply_comment` FOREIGN KEY (`comment_id`) REFERENCES `tbl_postcomment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comment_reply_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_follows`
--
ALTER TABLE `tbl_follows`
  ADD CONSTRAINT `uid3fk` FOREIGN KEY (`reciver_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uid4fk` FOREIGN KEY (`sender_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD CONSTRAINT `user1_id_fk` FOREIGN KEY (`reciver_user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`sender_user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `user_id_fk_post` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_postcomment`
--
ALTER TABLE `tbl_postcomment`
  ADD CONSTRAINT `post_id_com` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`),
  ADD CONSTRAINT `user_id_fk_comm` FOREIGN KEY (`show_user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_postmedia`
--
ALTER TABLE `tbl_postmedia`
  ADD CONSTRAINT `media_post_fk` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`);

--
-- Constraints for table `tbl_postshare`
--
ALTER TABLE `tbl_postshare`
  ADD CONSTRAINT `recivershare` FOREIGN KEY (`reciver_user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `sendershare` FOREIGN KEY (`sender_user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `share_id` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`);

--
-- Constraints for table `tbl_postview`
--
ALTER TABLE `tbl_postview`
  ADD CONSTRAINT `showuser` FOREIGN KEY (`show_user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `viewspost` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`);

--
-- Constraints for table `tbl_post_tagged_user`
--
ALTER TABLE `tbl_post_tagged_user`
  ADD CONSTRAINT `taggedpost` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`),
  ADD CONSTRAINT `taggeduser` FOREIGN KEY (`tagged_user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD CONSTRAINT `reportreciver` FOREIGN KEY (`reported_user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `reportsender` FOREIGN KEY (`reporter_user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_save`
--
ALTER TABLE `tbl_save`
  ADD CONSTRAINT `collection1` FOREIGN KEY (`collection_id`) REFERENCES `tbl_collection` (`id`),
  ADD CONSTRAINT `postsave` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`),
  ADD CONSTRAINT `usersave` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_story`
--
ALTER TABLE `tbl_story`
  ADD CONSTRAINT `userstory` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_storymedia`
--
ALTER TABLE `tbl_storymedia`
  ADD CONSTRAINT `storymedia` FOREIGN KEY (`story_id`) REFERENCES `tbl_story` (`id`);

--
-- Constraints for table `tbl_storyview`
--
ALTER TABLE `tbl_storyview`
  ADD CONSTRAINT `storyview` FOREIGN KEY (`story_id`) REFERENCES `tbl_story` (`id`),
  ADD CONSTRAINT `userviewid` FOREIGN KEY (`show_user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_userhase`
--
ALTER TABLE `tbl_userhase`
  ADD CONSTRAINT `hashuser` FOREIGN KEY (`hase_id`) REFERENCES `tbl_hase` (`id`),
  ADD CONSTRAINT `posthash` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`);

--
-- Constraints for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  ADD CONSTRAINT `user_otp` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
