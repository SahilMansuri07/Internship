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
-- Database: `figma_stylemou`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Fashion', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(2, 'Street Style', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(3, 'Formal', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(4, 'Casual', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(5, 'Sports Wear', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(6, 'Traditional', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(7, 'Lifestyle', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(8, 'Photography', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(9, 'Fitness', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12'),
(10, 'Winter Collection', 1, 0, '2026-03-07 10:47:12', '2026-03-07 10:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coin`
--

CREATE TABLE `tbl_coin` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `coin` int(8) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coin`
--

INSERT INTO `tbl_coin` (`id`, `user_id`, `post_id`, `coin`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 2, 1, 0, '2026-03-07 10:51:24', '2026-03-07 10:51:24'),
(2, 6, 2, 2, 1, 0, '2026-03-07 10:51:24', '2026-03-07 10:51:24'),
(3, 9, 3, 2, 1, 0, '2026-03-07 10:51:24', '2026-03-07 10:51:24'),
(4, 5, 1, 2, 1, 0, '2026-03-07 10:51:24', '2026-03-07 10:51:24'),
(5, 3, 16, 2, 1, 0, '2026-03-07 10:51:24', '2026-03-07 10:51:24'),
(6, 8, 16, 5, 1, 0, '2026-03-07 10:51:24', '2026-03-07 10:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `comment_text` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `user_id`, `post_id`, `comment_text`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'The red dress is definitely 1st place! It pops.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(2, 3, 1, 'Love the glitter on the 3rd one, very chic.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(3, 8, 1, 'Where did you get the 2nd one from? Need it!', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(4, 4, 2, 'Navy blue is the way to go for interviews.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(5, 9, 2, 'The tan suit looks a bit too casual for me.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(6, 5, 3, 'Blue sneakers always win. No contest.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(7, 6, 3, 'The white ones are a classic choice.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(8, 1, 5, 'Ahmedabad has such great spots for shoots!', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(9, 10, 5, 'Looking sharp, man. Great fit.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(10, 12, 11, 'That transition was so smooth! Teach me.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(11, 15, 11, 'Red really is your color. Great video.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(12, 8, 16, 'Hard to pick, all 4 finalists look amazing.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11'),
(13, 20, 16, 'Finalist 1 has the most unique look for the brand.', 1, 0, '2026-03-07 10:52:11', '2026-03-07 10:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_us`
--

CREATE TABLE `tbl_contact_us` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `description` varchar(256) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact_us`
--

INSERT INTO `tbl_contact_us` (`id`, `fullname`, `email`, `subject`, `description`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Rahul Patel', 'rahul@gmail.com', 'App Issue', 'I am unable to upload my video reel.', 1, 0, '2026-03-07 10:55:55', '2026-03-07 10:55:55'),
(2, 'Neha Shah', 'neha@gmail.com', 'Suggestion', 'Please add a \"Vintage\" fashion category.', 1, 0, '2026-03-07 10:55:55', '2026-03-07 10:55:55'),
(3, 'Bhautik Thummar', 'bhautik.t@gmail.com', 'Coin System', 'How can I earn more TSM coins besides ranking?', 1, 0, '2026-03-07 10:55:55', '2026-03-07 10:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_follow`
--

CREATE TABLE `tbl_follow` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `followed_user_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_follow`
--

INSERT INTO `tbl_follow` (`id`, `user_id`, `followed_user_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(2, 8, 2, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(3, 8, 6, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(4, 1, 3, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(5, 1, 10, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(6, 6, 8, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(7, 6, 4, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(8, 9, 8, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(9, 9, 1, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(10, 2, 1, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57'),
(11, 1, 2, 1, 0, '2026-03-07 10:53:57', '2026-03-07 10:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `user_id`, `name`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Charmi\'s Fashion Circle', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(2, 2, 'Street Style Legends', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(3, 3, 'UI/UX Design Hub', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(4, 4, 'Formal Wear Elite', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(5, 5, 'Aryan\'s Summer Vibe', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(6, 6, 'Bhautik\'s Tech & Style', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(7, 8, 'Jay\'s Admin Hub', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(8, 9, 'Ahmedabad Fashion Net', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(9, 10, 'Modeling & Glamour', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35'),
(10, 1, 'Weekend Party Squad', 1, 0, '2026-03-07 10:47:35', '2026-03-07 10:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mou_blog`
--

CREATE TABLE `tbl_mou_blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `media` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mou_blog`
--

INSERT INTO `tbl_mou_blog` (`id`, `title`, `description`, `media`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Summer Fashion Tips 2026', 'Discover the best lightweight outfits and breathable fabrics for the upcoming summer season in Ahmedabad.', 'blog_summer.jpg', 1, 0, '2026-03-07 10:57:23', '2026-03-07 10:57:23'),
(2, 'Mastering Winter Layers', 'How to stay warm without losing your style. A guide to layering jackets, scarves, and boots.', 'blog_winter.jpg', 1, 0, '2026-03-07 10:57:23', '2026-03-07 10:57:23'),
(3, 'Street Style: The 2026 Essentials', 'From oversized hoodies to vintage sneakers, see what is trending in the street style circles this month.', 'blog_street.jpg', 1, 0, '2026-03-07 10:57:23', '2026-03-07 10:57:23'),
(4, 'The Perfect Interview Look', 'First impressions matter. Here is a breakdown of the best formal suits and accessories for your next big career move.', 'blog_formal.jpg', 1, 0, '2026-03-07 10:57:23', '2026-03-07 10:57:23'),
(5, 'Accessories That Pop', 'Sometimes it is the small things that count. Learn how to pair watches and jewelry with any outfit.', 'blog_accessories.jpg', 1, 0, '2026-03-07 10:57:23', '2026-03-07 10:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` bigint(20) NOT NULL,
  `mobile_email` varchar(32) NOT NULL,
  `otp_through` enum('signup','forget-password') NOT NULL,
  `otp_code` char(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expire_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `mobile_email`, `otp_through`, `otp_code`, `created_at`, `expire_at`) VALUES
(1, 'bhautik.t@gmail.com', 'forget-password', '7651', '2026-03-07 11:00:36', '2026-03-07 11:05:45'),
(2, 'jay@gmail.com', 'signup', '1234', '2026-03-07 11:00:40', '2026-03-07 10:05:45'),
(3, '9510447055', 'signup', '8899', '2026-03-07 11:00:31', '2026-03-07 11:05:45'),
(4, 'charmi@example.com', 'forget-password', '5521', '2026-03-07 11:00:43', '2026-03-07 11:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_type` enum('compair','post','videos') NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `visibility` enum('public','group') NOT NULL,
  `expire_time` int(4) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `user_id`, `post_type`, `category_id`, `description`, `visibility`, `expire_time`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'compair', 1, 'Which one is look sexy dress for Weekend party.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(2, 6, 'compair', 3, 'Help me pick the best formal suit for my interview!', 'public', 720, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(3, 8, 'compair', 2, 'Sneaker battle: Which colorway wins?', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(4, 3, 'compair', 5, 'Best winter jacket style for this season?', 'public', 2880, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(5, 2, 'post', 2, 'Walking through the streets of Ahmedabad in style.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(6, 4, 'post', 3, 'Official look for the product launch.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(7, 9, 'post', 4, 'Sunday brunch vibes with the squad.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(8, 12, 'post', 1, 'New collection drop is finally here!', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(9, 15, 'post', 5, 'Cozy winters are the best winters.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(10, 20, 'post', 1, 'Simple, elegant, and timeless.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(11, 1, 'videos', 1, 'Quick transition from casual to party wear!', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(12, 5, 'videos', 2, 'Street style stroll. Rate the fit!', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(13, 14, 'videos', 1, 'Modeling my favorite 4 looks of the week.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(14, 18, 'videos', 4, 'Weekend getaway vlog & outfits.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(15, 6, 'post', 1, 'Exclusive preview for the Tech & Style circle.', 'group', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(16, 10, 'compair', 1, 'Comparing the 4 finalists for our next campaign.', 'group', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(17, 8, 'post', 3, 'Admin update: New community rules coming soon.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(18, 1, 'videos', 1, 'Bloopers from the party shoot!', 'group', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(19, 2, 'post', 2, 'Throwback to the first street meetup.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10'),
(20, 4, 'compair', 3, 'Left vs Right: Office wear edition.', 'public', 1440, 1, 0, '2026-03-07 10:48:10', '2026-03-07 10:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_group`
--

CREATE TABLE `tbl_post_group` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_group`
--

INSERT INTO `tbl_post_group` (`id`, `post_id`, `group_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, '2026-03-07 11:02:36', '2026-03-07 11:02:36'),
(2, 5, 2, 1, 0, '2026-03-07 11:02:36', '2026-03-07 11:02:36'),
(3, 15, 6, 1, 0, '2026-03-07 11:02:36', '2026-03-07 11:02:36'),
(4, 16, 7, 1, 0, '2026-03-07 11:02:36', '2026-03-07 11:02:36'),
(5, 18, 10, 1, 0, '2026-03-07 11:02:36', '2026-03-07 11:02:36'),
(6, 9, 1, 1, 0, '2026-03-07 11:02:36', '2026-03-07 11:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_media`
--

CREATE TABLE `tbl_post_media` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `media` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_media`
--

INSERT INTO `tbl_post_media` (`id`, `post_id`, `media`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'party_1.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(2, 1, 'party_2.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(3, 1, 'party_3.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(4, 1, 'party_4.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(5, 2, 'suit_navy.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(6, 2, 'suit_black.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(7, 2, 'suit_grey.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(8, 2, 'suit_tan.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(9, 3, 'sneaker_red.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(10, 3, 'sneaker_blue.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(11, 3, 'sneaker_green.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(12, 3, 'sneaker_white.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(13, 4, 'jacket_puffer.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(14, 4, 'jacket_denim.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(15, 4, 'jacket_leather.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(16, 4, 'jacket_trench.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(17, 5, 'ahmedabad_street.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(18, 6, 'launch_event.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(19, 7, 'brunch_table.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(20, 8, 'new_collection_banner.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(21, 9, 'winter_aesthetic.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(22, 10, 'timeless_portrait.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(23, 11, 'transition_video.mp4', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(24, 12, 'stroll_clip.mp4', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(25, 13, 'modeling_montage.mp4', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(26, 14, 'vlog_highlights.mp4', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(27, 15, 'tech_style_exclusive.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(28, 16, 'finalist_1.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(29, 16, 'finalist_2.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(30, 16, 'finalist_3.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(31, 16, 'finalist_4.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(32, 17, 'admin_update_bg.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(33, 18, 'bloopers_reel.mp4', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(34, 19, 'meetup_throwback.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(35, 20, 'office_wear_left.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33'),
(36, 20, 'office_wear_right.jpg', 1, 0, '2026-03-07 10:49:33', '2026-03-07 10:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ranking`
--

CREATE TABLE `tbl_ranking` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `media_id` bigint(20) NOT NULL,
  `rank` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ranking`
--

INSERT INTO `tbl_ranking` (`id`, `user_id`, `media_id`, `rank`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(2, 8, 2, 2, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(3, 8, 3, 3, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(4, 8, 4, 4, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(5, 6, 5, 2, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(6, 6, 6, 1, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(7, 6, 7, 4, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(8, 6, 8, 3, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(9, 9, 9, 3, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(10, 9, 10, 1, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(11, 9, 11, 2, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(12, 9, 12, 4, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(13, 5, 1, 2, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(14, 5, 2, 1, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(15, 5, 3, 4, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(16, 5, 4, 3, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(17, 3, 28, 1, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(18, 3, 29, 3, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(19, 3, 30, 2, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06'),
(20, 3, 31, 4, 1, 0, '2026-03-07 10:50:06', '2026-03-07 10:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `user_id`, `post_id`, `rating`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 5, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(2, 6, 1, 4, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(3, 9, 1, 5, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(4, 1, 5, 4, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(5, 3, 5, 5, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(6, 10, 11, 5, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(7, 4, 11, 3, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(8, 2, 16, 5, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(9, 5, 16, 4, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24'),
(10, 18, 16, 5, 1, 0, '2026-03-07 10:54:24', '2026-03-07 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report_post`
--

CREATE TABLE `tbl_report_post` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_report_post`
--

INSERT INTO `tbl_report_post` (`id`, `user_id`, `post_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 1, 0, '2026-03-07 11:03:30', '2026-03-07 11:03:30'),
(2, 6, 8, 1, 0, '2026-03-07 11:03:30', '2026-03-07 11:03:30'),
(3, 8, 16, 1, 0, '2026-03-07 11:03:30', '2026-03-07 11:03:30'),
(4, 9, 11, 1, 0, '2026-03-07 11:03:30', '2026-03-07 11:03:30'),
(5, 5, 1, 1, 0, '2026-03-07 11:03:30', '2026-03-07 11:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report_user`
--

CREATE TABLE `tbl_report_user` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `report_user_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_report_user`
--

INSERT INTO `tbl_report_user` (`id`, `user_id`, `report_user_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 8, 10, 1, 0, '2026-03-07 11:04:29', '2026-03-07 11:04:29'),
(2, 6, 13, 1, 0, '2026-03-07 11:04:29', '2026-03-07 11:04:29'),
(3, 3, 5, 1, 0, '2026-03-07 11:04:29', '2026-03-07 11:04:29'),
(4, 1, 17, 1, 0, '2026-03-07 11:04:29', '2026-03-07 11:04:29'),
(5, 9, 20, 1, 0, '2026-03-07 11:04:29', '2026-03-07 11:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saved_post`
--

CREATE TABLE `tbl_saved_post` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_saved_post`
--

INSERT INTO `tbl_saved_post` (`id`, `user_id`, `post_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(2, 8, 5, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(3, 8, 11, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(4, 1, 2, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(5, 1, 16, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(6, 6, 6, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(7, 6, 15, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(8, 9, 1, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(9, 9, 3, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19'),
(10, 9, 20, 1, 0, '2026-03-07 10:55:19', '2026-03-07 10:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `full_name` varchar(32) DEFAULT NULL,
  `email` varchar(32) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `mobile` varchar(16) NOT NULL,
  `password` varchar(128) NOT NULL,
  `bio` varchar(128) DEFAULT NULL,
  `profile_pic` varchar(64) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(32) DEFAULT NULL,
  `step` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `full_name`, `email`, `birth_date`, `mobile`, `password`, `bio`, `profile_pic`, `is_verified`, `language`, `step`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'charmi_v', 'Charmi Vasoya', 'charmi@example.com', '1998-05-12', '9876500001', 'pass123', 'Fashion & Lifestyle Blogger', 'charmi.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(2, 'bansi_p', 'Bansi Patel', 'bansi@example.com', '1999-11-20', '9876500002', 'pass123', 'Obsessed with Street Style', 'bansi.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(3, 'hanisha_s', 'Hanisha Shah', 'hanisha@example.com', '2000-01-15', '9876500003', 'pass123', 'Designer & Trendsetter', 'hanisha.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(4, 'purvil_m', 'Purvil Mistry', 'purvil@example.com', '1997-08-30', '9876500004', 'pass123', 'Formal Wear Enthusiast', 'purvil.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(5, 'aryan_k', 'Aryan Khan', 'aryan@example.com', '2001-03-22', '9876500005', 'pass123', 'Just here for the vibes', 'aryan.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(6, 'bhautik_t', 'Bhautik Thummar', 'bhautik.t@gmail.com', '1998-05-10', '9876543210', 'bhautik4', 'Fashion lover & Techie', 'bhautik.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(7, 'mahipal_s', 'Mahipal Singh', 'mahipal@example.com', '1995-12-05', '9876500007', 'pass123', 'Travel & Style', 'mahipal.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(8, 'jay_mange', 'Jay Mange', 'jay@gmail.com', '1996-07-18', '9876500008', 'jay123', 'Admin and Stylist', 'jay.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(9, 'darsh_p', 'Darsh Parikh', 'darsh@gmail.com', '2004-03-24', '9510447055', 'darsh123', 'New to the fashion world', 'darsh.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(10, 'sahil20030', 'Sahil Mansuri', 'sahil@gmail.com', '1994-09-12', '9876500010', 'pass123', 'fashion lover', 'neha.jpg', 0, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-09 05:38:36'),
(11, 'rahul_p', 'Rahul Patel', 'rahul@gmail.com', '1992-04-25', '9876500011', 'pass123', 'Street photography', 'rahul.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(12, 'priya_m', 'Priya Mehta', 'priya@example.com', '2000-10-10', '9876500012', 'pass123', 'Traditional Look Enthusiast', 'priya.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(13, 'amit_d', 'Amit Das', 'amit@example.com', '1989-02-14', '9876500013', 'pass123', 'Casual wear expert', 'amit.jpg', 0, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(14, 'sneha_s', 'Sneha Singh', 'sneha@example.com', '1996-12-25', '9876500014', 'pass123', 'Vlogger | Fashion', 'sneha.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(15, 'kunal_h', 'Kunal Hegde', 'kunal@example.com', '1993-06-19', '9876500015', 'pass123', 'Keep it simple', 'kunal.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(16, 'pooja_l', 'Pooja Luthra', 'pooja@example.com', '1997-05-17', '9876500016', 'pass123', 'Chic and Elegant', 'pooja.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(17, 'arjun_w', 'Arjun Wadhwa', 'arjun@example.com', '1988-11-11', '9876500017', 'pass123', 'Menswear Specialist', 'arjun.jpg', 0, 'English', 1, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:58:34'),
(18, 'isha_f', 'Isha Fazal', 'isha@example.com', '1995-09-02', '9876500018', 'pass123', 'Designer from Kerala', 'isha.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(19, 'deepak_y', 'Deepak Yadav', 'deepak@example.com', '1991-03-03', '9876500019', 'pass123', 'Minimalist Style', 'deepak.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23'),
(20, 'simran_k', 'Simran Kaur', 'simran@example.com', '1993-04-04', '9876500020', 'pass123', 'Slaying every day', 'simran.jpg', 1, 'English', 2, 1, 0, '2026-03-07 10:45:23', '2026-03-07 10:45:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coin`
--
ALTER TABLE `tbl_coin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_coin_user` (`user_id`),
  ADD KEY `fk_coin_post` (`post_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_user` (`user_id`),
  ADD KEY `fk_comment_post` (`post_id`);

--
-- Indexes for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_follow`
--
ALTER TABLE `tbl_follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_follow_user` (`user_id`),
  ADD KEY `fk_follow_followeduser` (`followed_user_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `tbl_mou_blog`
--
ALTER TABLE `tbl_mou_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_user` (`user_id`),
  ADD KEY `fk_post_category` (`category_id`);

--
-- Indexes for table `tbl_post_group`
--
ALTER TABLE `tbl_post_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_id` (`post_id`),
  ADD KEY `fk_group_id` (`group_id`);

--
-- Indexes for table `tbl_post_media`
--
ALTER TABLE `tbl_post_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_postmedia_post` (`post_id`);

--
-- Indexes for table `tbl_ranking`
--
ALTER TABLE `tbl_ranking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ranking_user` (`user_id`),
  ADD KEY `fk_ranking_media` (`media_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_user` (`user_id`),
  ADD KEY `fk_rating_post` (`post_id`);

--
-- Indexes for table `tbl_report_post`
--
ALTER TABLE `tbl_report_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reportpost_user` (`user_id`),
  ADD KEY `fk_reportpost_post` (`post_id`);

--
-- Indexes for table `tbl_report_user`
--
ALTER TABLE `tbl_report_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid_FK` (`user_id`),
  ADD KEY `reported_user_id` (`report_user_id`);

--
-- Indexes for table `tbl_saved_post`
--
ALTER TABLE `tbl_saved_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_savedpost_user` (`user_id`),
  ADD KEY `fk_savedpost_post` (`post_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_coin`
--
ALTER TABLE `tbl_coin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
