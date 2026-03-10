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
-- Database: `figma_tometo_deliveryapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `discount_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `user_id`, `discount_id`, `item_id`, `quantity`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 56, 2, 1, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(2, 2, 5, 56, 2, 1, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(3, 3, NULL, 56, 2, 1, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(4, 4, 10, 56, 2, 1, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(5, 5, NULL, 56, 2, 1, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(6, 6, 6, 56, 2, 0, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(7, 7, NULL, 56, 2, 1, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(8, 8, NULL, 56, 2, 0, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(9, 9, 8, 56, 2, 0, 1, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(10, 10, 3, 56, 2, 1, 0, '2026-02-10 15:24:32', '2026-02-12 11:01:15'),
(11, 11, 2, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(12, 12, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(13, 13, 4, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(14, 14, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(15, 15, 7, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(16, 16, NULL, 56, 2, 0, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(17, 17, 9, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(18, 18, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(19, 19, 1, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(20, 20, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(21, 21, 5, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(22, 22, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(23, 23, 6, 56, 2, 0, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(24, 24, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(25, 25, 3, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(26, 6, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(27, 2, 8, 56, 2, 1, 1, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(28, 8, NULL, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(29, 19, 10, 56, 2, 1, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15'),
(30, 3, NULL, 56, 2, 0, 0, '2026-02-10 15:24:55', '2026-02-12 11:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_items`
--

CREATE TABLE `tbl_cart_items` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart_items`
--

INSERT INTO `tbl_cart_items` (`id`, `cart_id`, `item_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 56, 2, '2026-02-10 15:37:54', '2026-02-11 10:51:36'),
(2, 1, 6, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(3, 2, 4, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(4, 2, 11, 2, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(5, 3, 2, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(6, 3, 8, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(7, 4, 5, 2, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(8, 4, 12, 3, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(9, 5, 3, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(10, 5, 9, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(11, 6, 7, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(12, 6, 11, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(13, 7, 1, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(14, 7, 5, 2, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(15, 8, 4, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(16, 8, 12, 4, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(17, 9, 6, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(18, 9, 2, 2, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(19, 10, 8, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(20, 10, 3, 1, '2026-02-10 15:37:54', '2026-02-10 15:37:54'),
(21, 6, 13, 2, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(22, 6, 15, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(23, 7, 4, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(24, 7, 10, 2, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(25, 8, 6, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(26, 8, 14, 3, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(27, 9, 2, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(28, 9, 11, 2, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(29, 10, 8, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(30, 10, 16, 2, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(31, 11, 5, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(32, 11, 9, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(33, 12, 3, 2, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(34, 12, 17, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(35, 13, 7, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(36, 13, 12, 3, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(37, 14, 1, 2, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(38, 14, 18, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(39, 15, 6, 1, '2026-02-10 15:26:02', '2026-02-10 15:26:02'),
(40, 15, 4, 2, '2026-02-10 15:26:02', '2026-02-10 15:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'gujrati', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:59:38'),
(2, 'Punjabi', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(3, 'South Indian', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(4, 'Chinese', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(5, 'Italian', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(6, 'Fast Food', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(7, 'Pizza', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(8, 'Burgers', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(9, 'Desserts', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(10, 'Beverages', 1, 0, '2026-02-10 14:41:10', '2026-02-10 14:41:10'),
(11, 'main course', 1, 0, '2026-02-10 15:00:13', '2026-02-10 15:00:13'),
(12, 'Starter', 1, 0, '2026-02-10 15:00:20', '2026-02-10 15:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id` bigint(20) NOT NULL,
  `restorant_id` bigint(20) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `discount_type` enum('flat','percent') NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `min_order_amount` decimal(10,2) DEFAULT 0.00,
  `max_discount_amount` decimal(10,2) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id`, `restorant_id`, `coupon_code`, `discount_type`, `discount_value`, `min_order_amount`, `max_discount_amount`, `start_date`, `end_date`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'GUJ50', 'flat', 50.00, 199.00, NULL, '2026-02-01 00:00:00', '2026-12-31 23:59:59', 1, 0, '2026-02-10 15:12:17', '2026-02-10 15:12:17'),
(2, 1, 'THALI20', 'percent', 20.00, 299.00, 120.00, '2026-02-01 00:00:00', '2026-06-30 23:59:59', 1, 0, '2026-02-10 15:12:17', '2026-02-10 15:12:17'),
(3, 1, 'LUNCH30', 'percent', 30.00, 399.00, 150.00, '2026-02-10 11:00:00', '2026-12-31 15:00:00', 1, 0, '2026-02-10 15:12:17', '2026-02-10 15:12:17'),
(4, 2, 'PIZZA100', 'flat', 100.00, 499.00, NULL, '2026-02-05 00:00:00', '2026-12-31 23:59:59', 1, 0, '2026-02-10 15:12:17', '2026-02-10 15:12:17'),
(5, 2, 'CHEESE25', 'percent', 25.00, 399.00, 180.00, '2026-02-05 00:00:00', '2026-08-31 23:59:59', 1, 0, '2026-02-10 15:12:17', '2026-02-10 15:12:17'),
(6, 4, 'PUNJAB20', 'percent', 20.00, 349.00, 120.00, '2026-02-01 00:00:00', '2026-12-31 23:59:59', 1, 0, '2026-02-10 15:12:17', '2026-02-10 15:12:17'),
(7, 5, 'BURGER40', 'flat', 40.00, 249.00, NULL, '2026-02-01 00:00:00', '2026-10-31 00:00:00', 1, 0, '2026-02-10 15:14:28', '2026-02-10 15:14:28'),
(8, 6, 'NOODLE25', 'percent', 25.00, 349.00, 150.00, '2026-02-01 00:00:00', '2026-08-31 00:00:00', 1, 0, '2026-02-10 15:14:28', '2026-02-10 15:14:28'),
(9, 7, 'MEAL20', 'percent', 20.00, 299.00, 130.00, '2026-02-01 00:00:00', '2026-12-31 00:00:00', 1, 0, '2026-02-10 15:14:28', '2026-02-10 15:14:28'),
(10, 8, 'TACO35', 'flat', 35.00, 199.00, NULL, '2026-02-01 00:00:00', '2026-06-30 00:00:00', 1, 0, '2026-02-10 15:14:28', '2026-02-10 15:14:28'),
(11, 9, 'SWEET10', 'percent', 10.00, 149.00, 50.00, '2026-02-01 00:00:00', '2026-12-31 00:00:00', 1, 0, '2026-02-10 15:14:28', '2026-02-10 15:14:28'),
(12, 10, 'DINNER60', 'flat', 60.00, 399.00, NULL, '2026-02-01 00:00:00', '2026-12-31 00:00:00', 1, 0, '2026-02-10 15:14:28', '2026-02-10 15:14:28'),
(13, 1, 'PIZZQ10', 'percent', 10.00, 100.00, 200.00, '2026-02-11 12:14:32', '2026-02-11 12:14:32', 1, 0, '2026-02-11 17:48:07', '2026-02-11 17:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fevorites`
--

CREATE TABLE `tbl_fevorites` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `is_fevorite` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_image`
--

CREATE TABLE `tbl_item_image` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_item_image`
--

INSERT INTO `tbl_item_image` (`id`, `item_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'gujarati_thali_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(2, 1, 'gujarati_thali_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(3, 2, 'rajwadu_special_thali_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(4, 2, 'rajwadu_special_thali_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(5, 3, 'dal_baati_churma_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(6, 3, 'dal_baati_churma_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(7, 4, 'paneer_butter_masala_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(8, 4, 'paneer_butter_masala_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(9, 5, 'butter_naan_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(10, 5, 'butter_naan_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(11, 6, 'chicken_tikka_masala_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(12, 6, 'chicken_tikka_masala_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(13, 7, 'masala_dosa_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(14, 7, 'masala_dosa_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(15, 8, 'idli_sambhar_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(16, 8, 'idli_sambhar_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(17, 9, 'uttapam_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(18, 9, 'uttapam_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(19, 10, 'veg_hakka_noodles_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(20, 10, 'veg_hakka_noodles_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(21, 11, 'paneer_chilli_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(22, 11, 'paneer_chilli_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(23, 12, 'chicken_fried_rice_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(24, 12, 'chicken_fried_rice_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(25, 13, 'pasta_alfredo_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(26, 13, 'pasta_alfredo_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(27, 14, 'penne_arrabiata_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(28, 14, 'penne_arrabiata_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(29, 15, 'lasagna_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(30, 15, 'lasagna_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(31, 16, 'pav_bhaji_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(32, 16, 'pav_bhaji_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(33, 17, 'cheese_pav_bhaji_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(34, 17, 'cheese_pav_bhaji_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(35, 18, 'fried_chicken_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(36, 18, 'fried_chicken_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(37, 19, 'margherita_pizza_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(38, 19, 'margherita_pizza_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(39, 20, 'veg_supreme_pizza_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(40, 20, 'veg_supreme_pizza_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(41, 21, 'chicken_pepperoni_pizza_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(42, 21, 'chicken_pepperoni_pizza_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(43, 22, 'veg_whopper_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(44, 22, 'veg_whopper_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(45, 23, 'chicken_whopper_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(46, 23, 'chicken_whopper_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(47, 24, 'mc_aloo_tikki_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(48, 24, 'mc_aloo_tikki_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(49, 25, 'chocolate_brownie_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(50, 25, 'chocolate_brownie_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(51, 26, 'chocolate_truffle_cake_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(52, 26, 'chocolate_truffle_cake_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(53, 27, 'gulab_jamun_1.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(54, 27, 'gulab_jamun_2.jpg', '2026-02-10 14:49:06', '2026-02-10 14:49:06'),
(55, 51, 'khaman_dhokla_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:36:10'),
(56, 51, 'khaman_dhokla_2.jpg', '2026-02-10 15:06:50', '2026-02-11 10:37:17'),
(57, 52, 'patra_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:37:13'),
(58, 52, 'patra_2.jpg', '2026-02-10 15:06:50', '2026-02-11 10:37:09'),
(59, 53, 'cheese_corn_balls_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:37:23'),
(60, 53, 'cheese_corn_balls_2.jpg', '2026-02-10 15:06:50', '2026-02-11 10:37:29'),
(61, 53, 'cheese_corn_balls_3.jpg', '2026-02-10 15:06:50', '2026-02-11 10:37:50'),
(62, 54, 'paneer_tikka_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:37:41'),
(63, 4, 'paneer_tikka_2.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(64, 5, 'veg_spring_roll_1.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(65, 5, 'veg_spring_roll_2.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(66, 56, 'gujarati_thali_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:55:29'),
(67, 56, 'gujarati_thali_2.jpg', '2026-02-10 15:06:50', '2026-02-11 10:55:32'),
(68, 6, 'gujarati_thali_3.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(69, 57, 'dal_dhokli_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:55:38'),
(70, 57, 'dal_dhokli_2.jpg', '2026-02-10 15:06:50', '2026-02-11 10:55:43'),
(71, 58, 'paneer_butter_masala_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:55:48'),
(72, 58, 'paneer_butter_masala_2.jpg', '2026-02-10 15:06:50', '2026-02-11 10:55:53'),
(73, 8, 'paneer_butter_masala_3.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(74, 59, 'veg_handi_1.jpg', '2026-02-10 15:06:50', '2026-02-11 10:55:58'),
(75, 9, 'veg_handi_2.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(76, 10, 'sev_tameta_1.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(77, 10, 'sev_tameta_2.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(78, 11, 'jeera_rice_1.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(79, 11, 'jeera_rice_2.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(80, 12, 'butter_roti_1.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50'),
(81, 12, 'butter_roti_2.jpg', '2026-02-10 15:06:50', '2026-02-10 15:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_users`
--

CREATE TABLE `tbl_order_users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `subtotal` double(10,4) NOT NULL,
  `delivery_charges` int(11) NOT NULL,
  `coupenPrice` int(11) NOT NULL,
  `payment_mode` enum('CASH','GPAY','NETBANKING') NOT NULL,
  `driver_id` bigint(20) DEFAULT NULL,
  `order_status` enum('placed','confirmed','preparing','on_the_way','delivered','cancelled') DEFAULT 'placed',
  `total_amount` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_users`
--

INSERT INTO `tbl_order_users` (`id`, `user_id`, `cart_id`, `order_number`, `subtotal`, `delivery_charges`, `coupenPrice`, `payment_mode`, `driver_id`, `order_status`, `total_amount`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'ORD-20260115-001', 1020.0000, 20, 50, 'CASH', 1, 'delivered', 970.00, 1, 0, '2026-01-15 12:25:10', '2026-02-11 13:47:05'),
(2, 2, 2, 'ORD-20260118-002', 700.0000, 0, 175, 'GPAY', 2, 'delivered', 525.00, 1, 0, '2026-01-18 19:40:22', '2026-02-11 13:47:05'),
(3, 3, 3, 'ORD-20260122-003', 440.0000, 0, 0, 'NETBANKING', 3, 'delivered', 440.00, 1, 0, '2026-01-22 14:10:05', '2026-02-11 13:47:05'),
(4, 4, 4, 'ORD-20260125-004', 880.0000, 0, 35, 'CASH', 4, 'delivered', 845.00, 1, 0, '2026-01-25 13:00:44', '2026-02-11 13:47:05'),
(5, 5, 5, 'ORD-20260128-005', 400.0000, 0, 0, 'GPAY', 5, 'delivered', 400.00, 1, 0, '2026-01-28 20:15:11', '2026-02-11 13:47:05'),
(6, 6, 6, 'ORD-20260130-006', 1200.0000, 0, 240, 'NETBANKING', NULL, 'cancelled', 960.00, 1, 0, '2026-01-30 11:45:30', '2026-02-11 13:47:05'),
(7, 7, 7, 'ORD-20260201-007', 1080.0000, 0, 0, 'CASH', 6, 'delivered', 1080.00, 1, 0, '2026-02-01 18:20:10', '2026-02-11 13:47:05'),
(8, 8, 8, 'ORD-20260203-008', 2260.0000, 0, 0, 'GPAY', NULL, 'cancelled', 2260.00, 1, 0, '2026-02-03 09:30:00', '2026-02-11 13:47:05'),
(9, 9, 9, 'ORD-20260205-009', 1720.0000, 0, 430, 'NETBANKING', 7, 'delivered', 1290.00, 1, 0, '2026-02-05 21:10:55', '2026-02-11 13:47:05'),
(10, 10, 10, 'ORD-20260207-010', 840.0000, 0, 252, 'CASH', 8, 'placed', 588.00, 1, 0, '2026-02-07 13:35:25', '2026-02-11 13:47:05'),
(11, 11, 11, 'ORD-20260208-011', 240.0000, 0, 48, 'GPAY', 9, 'delivered', 192.00, 1, 0, '2026-02-08 14:10:12', '2026-02-11 13:47:05'),
(12, 12, 12, 'ORD-20260209-012', 690.0000, 0, 0, 'CASH', 10, 'delivered', 690.00, 1, 0, '2026-02-09 13:25:40', '2026-02-11 13:47:05'),
(13, 13, 13, 'ORD-20260210-013', 860.0000, 0, 100, 'NETBANKING', 1, 'delivered', 760.00, 1, 0, '2026-02-10 12:05:18', '2026-02-11 13:47:05'),
(14, 14, 14, 'ORD-20260211-014', 820.0000, 0, 0, 'GPAY', 2, 'delivered', 820.00, 1, 0, '2026-02-11 19:40:00', '2026-02-11 13:47:05'),
(15, 15, 15, 'ORD-20260212-015', 840.0000, 0, 40, 'CASH', 2, 'delivered', 800.00, 1, 0, '2026-02-12 18:15:22', '2026-02-11 13:47:05'),
(16, 16, 16, 'ORD-20260213-016', 0.0000, 0, 0, 'NETBANKING', NULL, 'cancelled', 355.00, 1, 0, '2026-02-13 11:30:05', '2026-02-13 11:45:20'),
(17, 17, 17, 'ORD-20260214-017', 0.0000, 0, 0, 'GPAY', 4, 'delivered', 480.00, 1, 0, '2026-02-14 20:10:50', '2026-02-10 17:29:33'),
(18, 18, 18, 'ORD-20260215-018', 0.0000, 0, 0, 'CASH', 5, 'delivered', 505.00, 1, 0, '2026-02-15 13:55:10', '2026-02-10 17:29:36'),
(19, 19, 19, 'ORD-20260216-019', 0.0000, 0, 0, 'NETBANKING', NULL, 'cancelled', 420.00, 1, 0, '2026-02-16 09:20:00', '2026-02-16 09:35:12'),
(20, 20, 20, 'ORD-20260217-020', 0.0000, 0, 0, 'GPAY', 6, 'delivered', 560.00, 1, 0, '2026-02-17 21:15:40', '2026-02-10 17:29:39'),
(21, 21, 21, 'ORD-20260218-021', 0.0000, 0, 0, 'CASH', 7, 'delivered', 445.00, 1, 0, '2026-02-18 12:45:30', '2026-02-10 17:29:44'),
(22, 22, 22, 'ORD-20260219-022', 0.0000, 0, 0, 'GPAY', 8, 'delivered', 590.00, 1, 0, '2026-02-19 19:05:55', '2026-02-10 17:29:46'),
(23, 23, 23, 'ORD-20260220-023', 0.0000, 0, 0, 'NETBANKING', 9, 'delivered', 470.00, 1, 0, '2026-02-20 14:25:18', '2026-02-10 17:29:50'),
(24, 24, 24, 'ORD-20260221-024', 0.0000, 0, 0, 'CASH', NULL, 'placed', 415.00, 1, 0, '2026-02-21 16:40:00', '2026-02-21 16:40:00'),
(25, 25, 25, 'ORD-20260222-025', 0.0000, 0, 0, 'GPAY', 10, 'delivered', 530.00, 1, 0, '2026-02-22 20:35:10', '2026-02-10 17:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `purpose` enum('login','register','forgot_password') NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `otp_expire_time` datetime NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `user_id`, `otp`, `purpose`, `is_verified`, `verified_at`, `otp_expire_time`, `created_at`) VALUES
(1, 1, '482913', 'login', 1, '2025-01-05 09:16:20', '2025-01-05 09:20:00', '2025-01-05 09:15:00'),
(2, 2, '739201', 'login', 1, '2025-01-06 10:21:10', '2025-01-06 10:25:00', '2025-01-06 10:20:00'),
(3, 3, '156902', 'login', 1, '2025-01-06 11:06:30', '2025-01-06 11:10:00', '2025-01-06 11:05:00'),
(4, 4, '884321', 'register', 1, '2025-01-07 12:02:00', '2025-01-07 12:05:00', '2025-01-07 12:00:00'),
(5, 5, '902114', 'register', 1, '2025-01-08 08:47:10', '2025-01-08 08:50:00', '2025-01-08 08:45:00'),
(6, 6, '331920', 'login', 0, NULL, '2025-01-08 09:35:00', '2025-01-08 09:30:00'),
(7, 7, '445812', 'login', 0, NULL, '2025-01-09 11:20:00', '2025-01-09 11:15:00'),
(8, 8, '770291', 'forgot_password', 1, '2025-01-10 13:22:10', '2025-01-10 13:25:00', '2025-01-10 13:20:00'),
(9, 9, '229144', 'forgot_password', 0, NULL, '2025-01-10 14:50:00', '2025-01-10 14:45:00'),
(10, 10, '112903', 'login', 0, NULL, '2025-01-11 15:35:00', '2025-01-11 15:30:00'),
(11, 10, '998201', 'login', 1, '2025-01-11 15:37:40', '2025-01-11 15:40:00', '2025-01-11 15:35:30'),
(12, 11, '554321', 'login', 1, '2025-01-12 10:12:00', '2025-01-12 10:15:00', '2025-01-12 10:10:00'),
(13, 12, '781209', 'login', 1, '2025-01-12 11:42:30', '2025-01-12 11:45:00', '2025-01-12 11:40:00'),
(14, 13, '440912', 'login', 1, '2025-01-13 12:22:20', '2025-01-13 12:25:00', '2025-01-13 12:20:00'),
(15, 14, '129034', 'login', 0, NULL, '2025-01-13 13:15:00', '2025-01-13 13:10:00'),
(16, 15, '673902', 'login', 1, '2025-01-14 14:02:10', '2025-01-14 14:05:00', '2025-01-14 14:00:00'),
(17, 16, '900112', 'register', 1, '2025-01-14 15:47:00', '2025-01-14 15:50:00', '2025-01-14 15:45:00'),
(18, 17, '772198', 'register', 1, '2025-01-15 09:22:00', '2025-01-15 09:25:00', '2025-01-15 09:20:00'),
(19, 18, '882903', 'register', 1, '2025-01-15 10:32:00', '2025-01-15 10:35:00', '2025-01-15 10:30:00'),
(20, 19, '330921', 'register', 0, NULL, '2025-01-16 11:15:00', '2025-01-16 11:10:00'),
(21, 20, '445900', 'forgot_password', 1, '2025-01-16 12:52:00', '2025-01-16 12:55:00', '2025-01-16 12:50:00'),
(22, 21, '908712', 'forgot_password', 1, '2025-01-17 09:02:00', '2025-01-17 09:05:00', '2025-01-17 09:00:00'),
(23, 22, '221144', 'forgot_password', 0, NULL, '2025-01-17 09:35:00', '2025-01-17 09:30:00'),
(24, 23, '667809', 'forgot_password', 1, '2025-01-18 10:02:00', '2025-01-18 10:05:00', '2025-01-18 10:00:00'),
(25, 24, '992001', 'forgot_password', 1, '2025-01-18 10:32:00', '2025-01-18 10:35:00', '2025-01-18 10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `restaurant_id` bigint(20) NOT NULL,
  `rating` decimal(2,1) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `user_id`, `restaurant_id`, `rating`, `review`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 4.8, 'Amazing authentic Gujarati food. Thali was rich and service was excellent.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(2, 5, 2, 4.5, 'Best street food experience late night. Loved the variety and taste.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(3, 7, 3, 4.6, 'Royal ambience and traditional flavors. Worth the price.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(4, 2, 4, 4.4, 'Very good Gujarati thali. Clean place and quick service.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(5, 8, 5, 4.2, 'Nice cafe vibe and decent food. Pasta was tasty.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(6, 4, 6, 4.3, 'Good quality food and consistent taste. Pizza was fresh.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(7, 6, 7, 4.1, 'Chinese food was flavorful but slightly oily.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(8, 9, 8, 4.7, 'Always my favorite place for snacks. Simple and delicious.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(9, 10, 9, 4.0, 'Great buffet options. Non-veg starters were good.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(10, 1, 10, 4.5, 'Premium Punjabi food with rich flavors. Highly recommended.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(11, 11, 11, 4.2, 'Good Italian options for vegetarians. Pasta was creamy.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(12, 12, 12, 4.6, 'Excellent south Indian food. Dosa was crispy and light.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(13, 13, 13, 4.3, 'Quick service and tasty fast food. Pav bhaji was great.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(14, 14, 14, 4.1, 'Pizza was good but delivery took a bit longer.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(15, 15, 15, 4.0, 'Burger was filling and tasty. Fries could be better.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(16, 16, 16, 4.4, 'Dominos quality never disappoints. Hot and fresh delivery.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(17, 17, 17, 4.2, 'Healthy sandwich options. Good for quick meals.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(18, 18, 18, 4.1, 'Good pizza variety. Crust was nice and cheesy.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(19, 19, 19, 3.9, 'Consistent taste but sometimes crowded.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(20, 20, 20, 4.0, 'Crispy chicken and good packaging.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(21, 21, 21, 4.3, 'Creative menu and good portion size.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(22, 22, 22, 4.5, 'Nice place to hang out with friends. Food and ambience both good.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(23, 23, 23, 4.2, 'Italian dishes were well prepared and tasty.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(24, 24, 24, 4.4, 'Loved the coffee and desserts. Cozy cafe.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08'),
(25, 25, 25, 4.1, 'Good coffee and quick service. Decent seating.', 1, 0, '2026-02-10 14:51:08', '2026-02-10 14:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_restaurant`
--

CREATE TABLE `tbl_restaurant` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `deliver_fees` enum('free','paid') NOT NULL,
  `km_wise_charges` decimal(6,2) NOT NULL,
  `is_open` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_restaurant`
--

INSERT INTO `tbl_restaurant` (`id`, `name`, `image`, `email`, `password`, `contact_number`, `open_time`, `close_time`, `latitude`, `longitude`, `deliver_fees`, `km_wise_charges`, `is_open`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Agashiye', 'restaurants/agashiye.jpg', 'agashiye@foodapp.com', '$2y$10$dummyhash01', '9876543210', '11:00:00', '23:00:00', '23.022505000000', '72.571362000000', 'paid', 20.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(2, 'Manek Chowk Street Food', 'restaurants/manek_chowk_street_food.jpg', 'manek@foodapp.com', '$2y$10$dummyhash02', '9876543211', '18:00:00', '02:00:00', '23.025793000000', '72.585022000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(3, 'Rajwadu', 'restaurants/rajwadu.jpg', 'rajwadu@foodapp.com', '$2y$10$dummyhash03', '9876543212', '12:00:00', '23:30:00', '23.002652000000', '72.595781000000', 'paid', 25.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(4, 'Gordhan Thal', 'restaurants/gordhan_thal.jpg', 'gordhan@foodapp.com', '$2y$10$dummyhash04', '9876543213', '11:00:00', '22:30:00', '23.012349000000', '72.511902000000', 'paid', 30.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(5, 'The Green House', 'restaurants/the_green_house.jpg', 'greenhouse@foodapp.com', '$2y$10$dummyhash05', '9876543214', '10:00:00', '23:00:00', '23.033863000000', '72.564276000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(6, 'Tomato’s', 'restaurants/tomato’s.jpg', 'tomatos@foodapp.com', '$2y$10$dummyhash06', '9876543215', '11:30:00', '23:00:00', '23.021623000000', '72.552115000000', 'paid', 15.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(7, 'Mirch Masala', 'restaurants/mirch_masala.jpg', 'mirch@foodapp.com', '$2y$10$dummyhash07', '9876543216', '12:00:00', '23:30:00', '23.036145000000', '72.561041000000', 'paid', 20.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(8, 'Swati Snacks', 'restaurants/swati_snacks.jpg', 'swati@foodapp.com', '$2y$10$dummyhash08', '9876543217', '08:00:00', '22:00:00', '23.010405000000', '72.560602000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(9, 'Barbeque Nation', 'restaurants/barbeque_nation.jpg', 'bbq@foodapp.com', '$2y$10$dummyhash09', '9876543218', '12:00:00', '23:00:00', '23.047817000000', '72.531199000000', 'paid', 35.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(10, 'Punjab Grill', 'restaurants/punjab_grill.jpg', 'punjab@foodapp.com', '$2y$10$dummyhash10', '9876543219', '12:30:00', '23:30:00', '23.067459000000', '72.498912000000', 'paid', 30.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(11, 'Little Italy', 'restaurants/little_italy.jpg', 'italy@foodapp.com', '$2y$10$dummyhash11', '9876543220', '11:00:00', '22:30:00', '23.026743000000', '72.527215000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(12, 'Sankalp', 'restaurants/sankalp.jpg', 'sankalp@foodapp.com', '$2y$10$dummyhash12', '9876543221', '07:00:00', '22:00:00', '23.052235000000', '72.556412000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(13, 'Honest', 'restaurants/honest.jpg', 'honest@foodapp.com', '$2y$10$dummyhash13', '9876543222', '08:00:00', '23:00:00', '23.052972000000', '72.658123000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(14, 'La Pino’z Pizza', 'restaurants/la_pino’z_pizza.jpg', 'lapinoz@foodapp.com', '$2y$10$dummyhash14', '9876543223', '11:00:00', '02:00:00', '23.039176000000', '72.468561000000', 'paid', 10.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(15, 'Burger King', 'restaurants/burger_king.jpg', 'bk@foodapp.com', '$2y$10$dummyhash15', '9876543224', '10:00:00', '01:00:00', '23.091245000000', '72.597458000000', 'paid', 15.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(16, 'Domino’s', 'restaurants/domino’s.jpg', 'dominos@foodapp.com', '$2y$10$dummyhash16', '9876543225', '10:00:00', '01:00:00', '23.111447000000', '72.584893000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(17, 'Subway', 'restaurants/subway.jpg', 'subway@foodapp.com', '$2y$10$dummyhash17', '9876543226', '09:00:00', '23:00:00', '23.070112000000', '72.516823000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(18, 'Pizza Hut', 'restaurants/pizza_hut.jpg', 'pizzahut@foodapp.com', '$2y$10$dummyhash18', '9876543227', '11:00:00', '23:59:00', '23.126610000000', '72.541700000000', 'paid', 20.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(19, 'McDonald’s', 'restaurants/mcdonald’s.jpg', 'mcd@foodapp.com', '$2y$10$dummyhash19', '9876543228', '09:00:00', '23:59:00', '22.986713000000', '72.599876000000', 'paid', 15.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(20, 'KFC', 'restaurants/kfc.jpg', 'kfc@foodapp.com', '$2y$10$dummyhash20', '9876543229', '10:00:00', '23:59:00', '23.017968000000', '72.467468000000', 'paid', 20.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(21, 'The Secret Kitchen', 'restaurants/the_secret_kitchen.jpg', 'secret@foodapp.com', '$2y$10$dummyhash21', '9876543230', '12:00:00', '23:00:00', '23.037349000000', '72.529144000000', 'paid', 25.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(22, 'Urban Chowk', 'restaurants/urban_chowk.jpg', 'urban@foodapp.com', '$2y$10$dummyhash22', '9876543231', '10:00:00', '00:00:00', '23.067459000000', '72.498912000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(23, 'Upper Crust', 'restaurants/upper_crust.jpg', 'upper@foodapp.com', '$2y$10$dummyhash23', '9876543232', '11:00:00', '23:00:00', '23.047817000000', '72.531199000000', 'paid', 30.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(24, 'Mocha Café', 'restaurants/mocha_café.jpg', 'mocha@foodapp.com', '$2y$10$dummyhash24', '9876543233', '09:00:00', '01:00:00', '23.021623000000', '72.552115000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(25, 'Café Coffee Day', 'restaurants/café_coffee_day.jpg', 'ccd@foodapp.com', '$2y$10$dummyhash25', '9876543234', '08:00:00', '23:00:00', '23.033863000000', '72.564276000000', 'free', 0.00, 1, 1, 0, '2026-02-10 14:40:54', '2026-02-10 18:56:08'),
(26, 'restorant1', 'restorant.img', 'restorant@gmail.com', 'restorant123', '9510447055', '33:22:22', '53:27:06', '23.021623000000', '72.552115000000', 'free', 4.00, 1, 1, 0, '2026-02-11 15:30:23', '2026-02-11 15:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_restaurant_items`
--

CREATE TABLE `tbl_restaurant_items` (
  `id` bigint(20) NOT NULL,
  `restaurant_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `preparation_time` int(11) DEFAULT 25,
  `is_veg` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_restaurant_items`
--

INSERT INTO `tbl_restaurant_items` (`id`, `restaurant_id`, `category_id`, `name`, `description`, `price`, `preparation_time`, `is_veg`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Gujarati Thali', 'Traditional unlimited Gujarati thali', 280.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(2, 3, 1, 'Rajwadu Special Thali', 'Authentic royal Gujarati platter', 320.00, 35, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(3, 4, 1, 'Dal Baati Churma', 'Classic Rajasthani-Gujarati combo', 240.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(4, 10, 2, 'Paneer Butter Masala', 'Creamy tomato based paneer curry', 260.00, 25, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(5, 10, 2, 'Butter Naan (2 pcs)', 'Soft butter naan breads', 80.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(6, 1, 2, 'Chicken Tikka Masala', 'Smoky chicken in rich gravy', 320.00, 30, 0, 1, 0, '2026-02-10 14:44:15', '2026-02-11 12:05:54'),
(7, 12, 3, 'Masala Dosa', 'Crispy dosa with spiced potato filling', 140.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(8, 12, 3, 'Idli Sambhar', 'Steamed idli with sambhar & chutney', 120.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(9, 17, 3, 'Uttapam', 'Thick dosa topped with veggies', 160.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(10, 7, 4, 'Veg Hakka Noodles', 'Stir fried noodles with vegetables', 190.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(11, 7, 4, 'Paneer Chilli', 'Crispy paneer in spicy sauce', 220.00, 25, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(12, 19, 4, 'Chicken Fried Rice', 'Wok tossed rice with chicken', 240.00, 25, 0, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(13, 11, 5, 'Pasta Alfredo', 'Creamy white sauce pasta', 260.00, 25, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(14, 23, 5, 'Penne Arrabiata', 'Spicy tomato based pasta', 240.00, 25, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(15, 5, 5, 'Lasagna', 'Cheesy layered Italian dish', 320.00, 35, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(16, 13, 6, 'Pav Bhaji', 'Mumbai style buttery pav bhaji', 180.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(17, 13, 6, 'Cheese Pav Bhaji', 'Extra cheese loaded pav bhaji', 210.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(18, 20, 6, 'Fried Chicken', 'Crispy fried chicken pieces', 260.00, 25, 0, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(19, 14, 7, 'Margherita Pizza', 'Classic cheese & tomato pizza', 220.00, 25, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(20, 18, 7, 'Veg Supreme Pizza', 'Loaded veggie pizza', 280.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(21, 18, 7, 'Chicken Pepperoni Pizza', 'Pepperoni with mozzarella cheese', 340.00, 30, 0, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(22, 15, 8, 'Veg Whopper', 'Signature veg burger', 180.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(23, 15, 8, 'Chicken Whopper', 'Grilled chicken burger', 220.00, 15, 0, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(24, 19, 8, 'McAloo Tikki', 'Popular Indian veg burger', 90.00, 10, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(25, 8, 9, 'Chocolate Brownie', 'Warm chocolate brownie', 140.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(26, 24, 9, 'Chocolate Truffle Cake', 'Rich chocolate layered cake', 180.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(27, 21, 9, 'Gulab Jamun', 'Soft milk dumplings in syrup', 110.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(28, 24, 10, 'Cold Coffee', 'Chilled coffee with ice cream', 120.00, 10, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(29, 25, 10, 'Cappuccino', 'Hot cappuccino coffee', 140.00, 10, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(30, 5, 10, 'Fresh Lime Soda', 'Refreshing lime soda', 90.00, 5, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(31, 2, 6, 'Butter Dabeli', 'Spicy kutchi dabeli', 60.00, 10, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(32, 2, 6, 'Cheese Dabeli', 'Cheese loaded dabeli', 80.00, 10, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(33, 6, 5, 'Wood Fired Pizza', 'Italian wood fired pizza', 310.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(34, 6, 5, 'Garlic Bread', 'Toasted garlic bread sticks', 140.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(35, 22, 6, 'Street Style Sandwich', 'Grilled veg sandwich', 130.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(36, 9, 2, 'Dal Makhani', 'Slow cooked black lentils', 240.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(37, 9, 2, 'Butter Roti', 'Whole wheat butter roti', 40.00, 10, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(38, 17, 3, 'Filter Coffee', 'Authentic south Indian coffee', 90.00, 5, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(39, 20, 6, 'Zinger Burger', 'Crispy chicken burger', 190.00, 15, 0, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(40, 21, 4, 'Veg Manchurian', 'Veg balls in tangy sauce', 200.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(41, 23, 5, 'Cheese Garlic Pasta', 'Cheesy garlic flavored pasta', 270.00, 25, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(42, 18, 7, 'Farmhouse Pizza', 'Veg pizza with fresh veggies', 290.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(43, 14, 7, 'Cheese Burst Pizza', 'Extra cheese stuffed crust', 310.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(44, 25, 10, 'Iced Latte', 'Cold milk coffee', 130.00, 10, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(45, 11, 5, 'Mushroom Risotto', 'Creamy Italian rice dish', 300.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(46, 3, 1, 'Bajra Rotla Meal', 'Traditional bajra rotla with sabzi', 220.00, 30, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(47, 4, 1, 'Kadhi Khichdi', 'Comfort Gujarati combo meal', 200.00, 25, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(48, 22, 9, 'Chocolate Waffle', 'Fresh waffle with chocolate', 160.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(49, 15, 8, 'Paneer Burger', 'Grilled paneer patty burger', 170.00, 15, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(50, 7, 4, 'Schezwan Noodles', 'Spicy schezwan style noodles', 210.00, 20, 1, 1, 0, '2026-02-10 14:44:15', '2026-02-10 14:44:15'),
(51, 1, 12, 'Khaman Dhokla', 'Soft and spongy steamed khaman served with green chutney.', 120.00, 15, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(52, 1, 12, 'Gujarati Patra', 'Colocasia leaves rolled with spiced gram flour, steamed and shallow fried.', 140.00, 20, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(53, 1, 12, 'Cheese Corn Balls', 'Crispy fried balls stuffed with cheese and sweet corn.', 180.00, 20, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(54, 1, 12, 'Paneer Tikka', 'Marinated paneer cubes grilled with capsicum and onion.', 220.00, 25, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(55, 1, 12, 'Veg Spring Roll', 'Crispy rolls stuffed with mixed vegetables and spices.', 160.00, 18, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(56, 1, 11, 'Gujarati Thali', 'Complete thali with roti, dal, kadhi, sabzi, rice and farsan.', 350.00, 30, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-11 12:08:15'),
(57, 1, 11, 'Dal Dhokli', 'Traditional Gujarati dal cooked with wheat dumplings.', 210.00, 25, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(58, 1, 11, 'Paneer Butter Masala', 'Creamy tomato-based gravy cooked with soft paneer cubes.', 260.00, 28, 1, 0, 0, '2026-02-10 15:04:06', '2026-02-11 17:01:43'),
(59, 1, 11, 'Veg Handi', 'Mixed vegetables cooked in rich cashew gravy.', 240.00, 30, 1, 0, 0, '2026-02-10 15:04:06', '2026-02-11 17:01:46'),
(60, 1, 11, 'Sev Tameta Nu Shaak', 'Classic Gujarati curry made with tomato and sev.', 190.00, 22, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(61, 1, 11, 'Jeera Rice', 'Steamed basmati rice tempered with cumin seeds.', 140.00, 15, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06'),
(62, 1, 11, 'Butter Tandoori Roti', 'Soft tandoori roti topped with butter.', 45.00, 10, 1, 1, 0, '2026-02-10 15:04:06', '2026-02-10 15:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_restaurant_order`
--

CREATE TABLE `tbl_restaurant_order` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_status` enum('pending','accepted','rejected','preparing','ready','picked_up','out_for_delivery','delivered','cancelled') NOT NULL,
  `restorant_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_restaurant_order`
--

INSERT INTO `tbl_restaurant_order` (`id`, `order_id`, `order_status`, `restorant_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'accepted', 1, 1, 0, '2026-01-15 12:27:10', '2026-02-11 16:36:40'),
(2, 1, 'preparing', 1, 1, 0, '2026-01-15 12:28:05', '2026-02-11 16:36:40'),
(3, 2, 'accepted', 10, 1, 0, '2026-01-18 19:42:30', '2026-02-11 16:36:40'),
(4, 2, 'accepted', 10, 1, 0, '2026-01-18 19:43:10', '2026-02-11 16:36:40'),
(5, 3, 'rejected', 3, 1, 0, '2026-01-22 14:12:00', '2026-02-11 16:36:40'),
(6, 3, 'picked_up', 3, 1, 0, '2026-01-22 14:13:20', '2026-02-11 16:36:40'),
(7, 4, 'accepted', 10, 1, 0, '2026-01-25 13:02:10', '2026-02-11 16:36:40'),
(8, 5, 'accepted', 4, 1, 0, '2026-01-28 20:17:45', '2026-02-11 16:36:40'),
(9, 5, 'out_for_delivery', 4, 1, 0, '2026-01-28 20:18:30', '2026-02-11 16:36:40'),
(10, 6, 'rejected', 12, 1, 0, '2026-01-30 11:47:10', '2026-02-11 16:36:40'),
(11, 7, 'accepted', 1, 1, 0, '2026-02-01 18:22:40', '2026-02-11 16:36:40'),
(12, 7, 'ready', 1, 1, 0, '2026-02-01 18:23:15', '2026-02-11 16:36:40'),
(13, 8, 'picked_up', 10, 1, 0, '2026-02-03 09:32:10', '2026-02-11 16:36:40'),
(14, 9, 'delivered', 1, 1, 0, '2026-02-05 21:12:20', '2026-02-11 16:36:40'),
(15, 9, 'cancelled', 1, 1, 0, '2026-02-05 21:13:05', '2026-02-11 16:36:40'),
(16, 10, 'accepted', 12, 1, 0, '2026-02-07 13:37:00', '2026-02-11 16:36:40'),
(17, 11, 'picked_up', 10, 1, 0, '2026-02-08 14:12:10', '2026-02-11 16:36:40'),
(18, 11, 'accepted', 10, 1, 0, '2026-02-08 14:13:00', '2026-02-11 16:36:40'),
(19, 12, 'out_for_delivery', 4, 1, 0, '2026-02-09 13:27:30', '2026-02-11 16:36:40'),
(20, 13, 'rejected', 12, 1, 0, '2026-02-10 12:07:00', '2026-02-11 16:36:40'),
(21, 13, 'accepted', 12, 1, 0, '2026-02-10 12:08:10', '2026-02-11 16:36:40'),
(22, 14, 'out_for_delivery', 6, 1, 0, '2026-02-11 19:42:25', '2026-02-11 16:39:43'),
(23, 15, 'delivered', 6, 1, 0, '2026-02-12 18:17:30', '2026-02-11 16:39:43'),
(24, 16, 'rejected', 6, 1, 0, '2026-02-13 11:32:00', '2026-02-11 16:39:43'),
(25, 17, 'accepted', 6, 1, 0, '2026-02-14 20:13:05', '2026-02-11 16:39:43'),
(26, 18, 'preparing', 6, 1, 0, '2026-02-15 13:57:40', '2026-02-11 16:39:43'),
(27, 19, 'out_for_delivery', 6, 1, 0, '2026-02-16 09:22:10', '2026-02-11 16:39:43'),
(28, 20, 'accepted', 8, 1, 0, '2026-02-17 21:17:55', '2026-02-11 16:40:25'),
(29, 21, 'accepted', 8, 1, 0, '2026-02-18 12:47:45', '2026-02-11 16:40:25'),
(30, 22, 'ready', 8, 1, 0, '2026-02-19 19:07:30', '2026-02-11 16:40:25'),
(31, 23, 'rejected', 8, 1, 0, '2026-02-20 14:27:10', '2026-02-11 16:40:25'),
(32, 24, 'accepted', 8, 1, 0, '2026-02-21 16:42:00', '2026-02-11 16:40:25'),
(33, 25, 'ready', 8, 1, 0, '2026-02-22 20:37:40', '2026-02-11 16:40:25'),
(34, 26, 'delivered', 8, 1, 0, '2026-02-23 13:12:15', '2026-02-11 16:40:25'),
(35, 27, 'rejected', 8, 1, 0, '2026-02-24 10:07:00', '2026-02-11 16:40:25'),
(36, 28, 'delivered', 8, 1, 0, '2026-02-25 21:47:50', '2026-02-11 16:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rider`
--

CREATE TABLE `tbl_rider` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rider`
--

INSERT INTO `tbl_rider` (`id`, `name`, `phone`, `vehicle_number`, `latitude`, `longitude`, `is_online`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Amit Patel', '9876543210', 'GJ01AB1234', '23.0225', '72.5714', 1, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(2, 'Rahul Shah', '9876543211', 'GJ01CD5678', '23.0300', '72.5800', 1, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(3, 'Suresh Mehta', '9876543212', 'GJ02EF9012', '23.0150', '72.5650', 0, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(4, 'Vikas Jain', '9876543213', 'GJ01GH3456', '23.0401', '72.5502', 1, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(5, 'Nikhil Verma', '9876543214', 'GJ03IJ7890', '23.0500', '72.6000', 0, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(6, 'Karan Solanki', '9876543215', 'GJ01KL1122', '23.0185', '72.5730', 1, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(7, 'Ravi Parmar', '9876543216', 'GJ02MN3344', '23.0280', '72.5850', 1, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(8, 'Deepak Chauhan', '9876543217', 'GJ01OP5566', '23.0333', '72.5600', 0, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(9, 'Ankit Joshi', '9876543218', 'GJ03QR7788', '23.0450', '72.5900', 1, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11'),
(10, 'Mohit Dave', '9876543219', 'GJ01ST9900', '23.0200', '72.5755', 1, 1, 0, '2026-02-10 15:28:11', '2026-02-10 15:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `social_id` varchar(100) DEFAULT NULL,
  `login_type` enum('mannual','google','apple') DEFAULT 'mannual',
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `status` enum('active','blocked','inactive') DEFAULT 'active',
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `mobile`, `password`, `social_id`, `login_type`, `latitude`, `longitude`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Rahul Mehta', 'rahul.mehta@gmail.com', '9876543210', '$2y$10$rahulhash', NULL, 'mannual', '23.033123456789', '72.561512345678', 'active', 0, '2025-01-05 09:15:00', '2025-01-05 09:15:00'),
(2, 'Amit Shah', 'amit.shah@gmail.com', '9876543211', NULL, 'GOOG12345', 'google', '23.035234567891', '72.564123456789', 'active', 0, '2025-01-06 10:20:00', '2025-01-06 10:20:00'),
(3, 'Neha Patel', 'neha.patel@gmail.com', '9876543212', '$2y$10$nehahash', NULL, 'mannual', '23.029812345678', '72.558212345678', 'active', 0, '2025-01-06 11:05:00', '2025-01-07 09:10:00'),
(4, 'Priya Desai', NULL, '9876543213', NULL, 'APL99821', 'apple', '23.041512345678', '72.572312345678', 'active', 0, '2025-01-07 12:00:00', '2025-01-07 12:00:00'),
(5, 'Karan Joshi', 'karan.joshi@gmail.com', '9876543214', '$2y$10$karanhash', NULL, 'mannual', '23.027612345678', '72.554912345678', 'inactive', 0, '2025-01-08 08:45:00', '2025-01-09 10:00:00'),
(6, 'Sneha Verma', 'sneha.verma@gmail.com', '9876543215', NULL, 'GOOG22334', 'google', '23.036712345678', '72.566512345678', 'active', 0, '2025-01-08 09:30:00', '2025-01-08 09:30:00'),
(7, 'Rohit Kumar', 'rohit.kumar@gmail.com', '9876543216', '$2y$10$rohithash', NULL, 'mannual', '23.032912345678', '72.560112345678', 'active', 0, '2025-01-09 11:15:00', '2025-01-09 11:15:00'),
(8, 'Anjali Singh', NULL, '9876543217', NULL, 'APL77112', 'apple', '23.044012345678', '72.574912345678', 'active', 0, '2025-01-10 13:20:00', '2025-01-10 13:20:00'),
(9, 'Vikas Malhotra', 'vikas.m@gmail.com', '9876543218', '$2y$10$vikashash', NULL, 'mannual', '23.025912345678', '72.552212345678', 'blocked', 0, '2025-01-10 14:45:00', '2025-01-11 09:00:00'),
(10, 'Pooja Nair', 'pooja.nair@gmail.com', '9876543219', NULL, 'GOOG99887', 'google', '23.037812345678', '72.567812345678', 'active', 0, '2025-01-11 15:30:00', '2025-01-11 15:30:00'),
(11, 'Arjun Rana', 'arjun.r@gmail.com', '9876543220', '$2y$10$arjunhash', NULL, 'mannual', '23.034512345678', '72.562312345678', 'active', 0, '2025-01-12 10:10:00', '2025-01-12 10:10:00'),
(12, 'Kriti Malhotra', 'kriti.m@gmail.com', '9876543221', NULL, 'GOOG33445', 'google', '23.038912345678', '72.569912345678', 'active', 0, '2025-01-12 11:40:00', '2025-01-12 11:40:00'),
(13, 'Nikhil Jain', 'nikhil.j@gmail.com', '9876543222', '$2y$10$nikhilhash', NULL, 'mannual', '23.031012345678', '72.559912345678', 'active', 0, '2025-01-13 12:20:00', '2025-01-13 12:20:00'),
(14, 'Simran Kaur', NULL, '9876543223', NULL, 'APL66554', 'apple', '23.042112345678', '72.571112345678', 'active', 0, '2025-01-13 13:10:00', '2025-01-13 13:10:00'),
(15, 'Mohit Aggarwal', 'mohit.a@gmail.com', '9876543224', '$2y$10$mohithash', NULL, 'mannual', '23.028712345678', '72.556712345678', 'active', 0, '2025-01-14 14:00:00', '2025-01-14 14:00:00'),
(16, 'Ayesha Khan', 'ayesha.k@gmail.com', '9876543225', NULL, 'GOOG77889', 'google', '23.039212345678', '72.568212345678', 'active', 0, '2025-01-14 15:45:00', '2025-01-14 15:45:00'),
(17, 'Suresh Iyer', 'suresh.i@gmail.com', '9876543226', '$2y$10$sureshhash', NULL, 'mannual', '23.026512345678', '72.553512345678', 'active', 0, '2025-01-15 09:20:00', '2025-01-15 09:20:00'),
(18, 'Ritika Arora', NULL, '9876543227', NULL, 'APL99876', 'apple', '23.043612345678', '72.573612345678', 'active', 0, '2025-01-15 10:30:00', '2025-01-15 10:30:00'),
(19, 'Manish Gupta', 'manish.g@gmail.com', '9876543228', '$2y$10$manishhash', NULL, 'mannual', '23.030312345678', '72.558712345678', 'inactive', 0, '2025-01-16 11:10:00', '2025-01-17 09:00:00'),
(20, 'Divya Sharma', 'divya.s@gmail.com', '9876543229', NULL, 'GOOG55443', 'google', '23.036412345678', '72.565412345678', 'active', 0, '2025-01-16 12:50:00', '2025-01-16 12:50:00'),
(21, 'User21', 'user21@gmail.com', '9876543230', '$2y$10$hash21', NULL, 'mannual', '23.031123456789', '72.559123456789', 'active', 0, '2025-01-17 09:00:00', '2025-01-17 09:00:00'),
(22, 'User22', NULL, '9876543231', NULL, 'GOOG22222', 'google', '23.034223456789', '72.562223456789', 'active', 0, '2025-01-17 09:30:00', '2025-01-17 09:30:00'),
(23, 'User23', 'user23@gmail.com', '9876543232', '$2y$10$hash23', NULL, 'mannual', '23.037323456789', '72.565323456789', 'active', 0, '2025-01-18 10:00:00', '2025-01-18 10:00:00'),
(24, 'User24', NULL, '9876543233', NULL, 'APL24444', 'apple', '23.040423456789', '72.568423456789', 'active', 0, '2025-01-18 10:30:00', '2025-01-18 10:30:00'),
(25, 'User25', 'user25@gmail.com', '9876543234', '$2y$10$hash25', NULL, 'mannual', '23.043523456789', '72.571523456789', 'active', 0, '2025-01-18 11:00:00', '2025-01-18 11:00:00'),
(26, 'sahil', 'sahilmansuri881.o@gmail.com', '9510447055', 'sahil@2107', NULL, 'mannual', '23.027612345678', '72.554912345678', 'active', 0, '2026-02-10 16:37:50', '2026-02-10 16:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_address`
--

CREATE TABLE `tbl_user_address` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `address_label` varchar(50) DEFAULT NULL,
  `location_type` enum('home','work','other') DEFAULT 'home',
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_address`
--

INSERT INTO `tbl_user_address` (`id`, `user_id`, `address`, `address_label`, `location_type`, `latitude`, `longitude`, `is_default`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Flat 302, Shree Residency, Ellisbridge, Ahmedabad, Gujarat 380006', 'Home', 'home', '23.022505000000', '72.571362000000', 1, 1, 0, '2025-01-05 09:20:00', '2025-01-05 09:20:00'),
(2, 1, 'Office 504, Navrangpura Business Center, Ahmedabad, Gujarat 380009', 'Office', 'work', '23.036145000000', '72.561041000000', 0, 1, 0, '2025-01-05 09:25:00', '2025-01-05 09:25:00'),
(3, 2, 'A-12, Shivalik Apartments, Satellite Road, Ahmedabad, Gujarat 380015', 'Home', 'home', '23.026743000000', '72.527215000000', 1, 1, 0, '2025-01-06 10:25:00', '2025-01-06 10:25:00'),
(4, 3, 'Row House 7, Vastrapur Lake Road, Ahmedabad, Gujarat 380015', 'Home', 'home', '23.037349000000', '72.529144000000', 1, 1, 0, '2025-01-06 11:10:00', '2025-01-06 11:10:00'),
(5, 3, 'Corporate Office, Prahlad Nagar, Ahmedabad, Gujarat 380015', 'Office', 'work', '23.013045000000', '72.505617000000', 0, 1, 0, '2025-01-06 11:15:00', '2025-01-06 11:15:00'),
(6, 4, 'Block C, South Bopal Residency, Ahmedabad, Gujarat 380058', 'Home', 'home', '23.017968000000', '72.467468000000', 1, 1, 0, '2025-01-07 12:05:00', '2025-01-07 12:05:00'),
(7, 5, 'House No 45, Ghodasar, Maninagar East, Ahmedabad, Gujarat 380008', 'Home', 'home', '23.006675000000', '72.605743000000', 1, 1, 0, '2025-01-08 08:50:00', '2025-01-08 08:50:00'),
(8, 6, 'Flat 1102, Adani Shantigram, Near Vaishnodevi Circle, Ahmedabad', 'Home', 'home', '23.126610000000', '72.541700000000', 1, 1, 0, '2025-01-08 09:35:00', '2025-01-08 09:35:00'),
(9, 7, 'B-9, Chandkheda Housing Society, Ahmedabad, Gujarat 382424', 'Home', 'home', '23.111447000000', '72.584893000000', 1, 1, 0, '2025-01-09 11:20:00', '2025-01-09 11:20:00'),
(10, 8, 'Penthouse 3A, Ambawadi Circle, Ahmedabad, Gujarat 380015', 'Home', 'home', '23.021623000000', '72.552115000000', 1, 1, 0, '2025-01-10 13:25:00', '2025-01-10 13:25:00'),
(11, 9, 'Shop 18, CG Road, Navrangpura, Ahmedabad, Gujarat 380009', 'Office', 'work', '23.033863000000', '72.564276000000', 1, 1, 0, '2025-01-10 14:50:00', '2025-01-10 14:50:00'),
(12, 10, 'Flat 702, Science City Road, Sola, Ahmedabad, Gujarat 380060', 'Home', 'home', '23.070112000000', '72.516823000000', 1, 1, 0, '2025-01-11 15:35:00', '2025-01-11 15:35:00'),
(13, 11, 'Villa 14, Thaltej Shilaj Road, Ahmedabad, Gujarat 380059', 'Home', 'home', '23.067459000000', '72.498912000000', 1, 1, 0, '2025-01-12 10:15:00', '2025-01-12 10:15:00'),
(14, 12, 'Flat 204, Naranpura Cross Road, Ahmedabad, Gujarat 380013', 'Home', 'home', '23.052235000000', '72.556412000000', 1, 1, 0, '2025-01-12 11:45:00', '2025-01-12 11:45:00'),
(15, 13, 'Bunglow 22, Paldi Gaam, Ahmedabad, Gujarat 380007', 'Home', 'home', '23.010405000000', '72.560602000000', 1, 1, 0, '2025-01-13 12:25:00', '2025-01-13 12:25:00'),
(16, 14, 'Flat 603, Nikol Naroda Road, Ahmedabad, Gujarat 382350', 'Home', 'home', '23.052972000000', '72.658123000000', 1, 1, 0, '2025-01-13 13:15:00', '2025-01-13 13:15:00'),
(17, 15, 'Row House 9, Bopal Ghuma Road, Ahmedabad, Gujarat 380058', 'Home', 'home', '23.039176000000', '72.468561000000', 1, 1, 0, '2025-01-14 14:05:00', '2025-01-14 14:05:00'),
(18, 16, 'Flat 1101, Motera Stadium Road, Ahmedabad, Gujarat 380005', 'Home', 'home', '23.091245000000', '72.597458000000', 1, 1, 0, '2025-01-14 15:50:00', '2025-01-14 15:50:00'),
(19, 17, 'House 88, Isanpur Vatva Road, Ahmedabad, Gujarat 382443', 'Home', 'home', '22.986713000000', '72.599876000000', 1, 1, 0, '2025-01-15 09:25:00', '2025-01-15 09:25:00'),
(20, 18, 'Flat 305, Drive In Road, Gurukul, Ahmedabad, Gujarat 380052', 'Home', 'home', '23.047817000000', '72.531199000000', 1, 1, 0, '2025-01-15 10:35:00', '2025-01-15 10:35:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`discount_id`),
  ADD KEY `discountfk` (`discount_id`);

--
-- Indexes for table `tbl_cart_items`
--
ALTER TABLE `tbl_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemsfk` (`item_id`),
  ADD KEY `cartitemsfk` (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_code` (`coupon_code`),
  ADD KEY `restorantid` (`restorant_id`);

--
-- Indexes for table `tbl_fevorites`
--
ALTER TABLE `tbl_fevorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indexes for table `tbl_item_image`
--
ALTER TABLE `tbl_item_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemimagefk` (`item_id`);

--
-- Indexes for table `tbl_order_users`
--
ALTER TABLE `tbl_order_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_number` (`order_number`),
  ADD KEY `userorderfk` (`user_id`),
  ADD KEY `cartorderfk` (`cart_id`),
  ADD KEY `driverorderfk` (`driver_id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otp` (`otp`),
  ADD KEY `userotp` (`user_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratingid1fk` (`restaurant_id`),
  ADD KEY `ratinguserfk` (`user_id`);

--
-- Indexes for table `tbl_restaurant`
--
ALTER TABLE `tbl_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbl_restaurant_items`
--
ALTER TABLE `tbl_restaurant_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`preparation_time`),
  ADD KEY `restourantid1fk` (`restaurant_id`),
  ADD KEY `categoryfk` (`category_id`);

--
-- Indexes for table `tbl_restaurant_order`
--
ALTER TABLE `tbl_restaurant_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restorantorderfk` (`order_id`),
  ADD KEY `restid2` (`restorant_id`);

--
-- Indexes for table `tbl_rider`
--
ALTER TABLE `tbl_rider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `vehicle_number` (`vehicle_number`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `email_2` (`email`),
  ADD KEY `latitude` (`latitude`),
  ADD KEY `longitude` (`longitude`);

--
-- Indexes for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `longitude` (`longitude`),
  ADD KEY `latitude` (`latitude`),
  ADD KEY `address` (`address`(768)),
  ADD KEY `useraddressfk` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_cart_items`
--
ALTER TABLE `tbl_cart_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_fevorites`
--
ALTER TABLE `tbl_fevorites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_item_image`
--
ALTER TABLE `tbl_item_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_order_users`
--
ALTER TABLE `tbl_order_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_restaurant`
--
ALTER TABLE `tbl_restaurant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_restaurant_items`
--
ALTER TABLE `tbl_restaurant_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_restaurant_order`
--
ALTER TABLE `tbl_restaurant_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_rider`
--
ALTER TABLE `tbl_rider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `discountfk` FOREIGN KEY (`discount_id`) REFERENCES `tbl_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usercartfk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_cart_items`
--
ALTER TABLE `tbl_cart_items`
  ADD CONSTRAINT `cartitemsfk` FOREIGN KEY (`cart_id`) REFERENCES `tbl_cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itemsfk` FOREIGN KEY (`item_id`) REFERENCES `tbl_restaurant_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD CONSTRAINT `restorantid` FOREIGN KEY (`restorant_id`) REFERENCES `tbl_restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_fevorites`
--
ALTER TABLE `tbl_fevorites`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_item_image`
--
ALTER TABLE `tbl_item_image`
  ADD CONSTRAINT `itemimagefk` FOREIGN KEY (`item_id`) REFERENCES `tbl_restaurant_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_users`
--
ALTER TABLE `tbl_order_users`
  ADD CONSTRAINT `cartorderfk` FOREIGN KEY (`cart_id`) REFERENCES `tbl_cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driverorderfk` FOREIGN KEY (`driver_id`) REFERENCES `tbl_rider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userorderfk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD CONSTRAINT `userotp` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD CONSTRAINT `ratingid1fk` FOREIGN KEY (`restaurant_id`) REFERENCES `tbl_restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratinguserfk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_restaurant_items`
--
ALTER TABLE `tbl_restaurant_items`
  ADD CONSTRAINT `categoryfk` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restourantid1fk` FOREIGN KEY (`restaurant_id`) REFERENCES `tbl_restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_restaurant_order`
--
ALTER TABLE `tbl_restaurant_order`
  ADD CONSTRAINT `restid2` FOREIGN KEY (`restorant_id`) REFERENCES `tbl_restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restorantorderfk` FOREIGN KEY (`order_id`) REFERENCES `tbl_restaurant_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  ADD CONSTRAINT `useraddressfk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
