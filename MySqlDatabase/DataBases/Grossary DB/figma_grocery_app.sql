-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 05:32 AM
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
-- Database: `figma_grocery_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actors`
--

CREATE TABLE `tbl_actors` (
  `id` bigint(20) NOT NULL,
  `actor_name` varchar(64) NOT NULL,
  `actor_details` text NOT NULL,
  `actor_pic` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actor_movies`
--

CREATE TABLE `tbl_actor_movies` (
  `id` bigint(20) NOT NULL,
  `actors_id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `item_unit_id` bigint(20) NOT NULL,
  `discount_id` bigint(20) DEFAULT NULL,
  `item_quantity` bigint(20) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `user_id`, `vendor_id`, `item_unit_id`, `discount_id`, `item_quantity`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(2, 1, 4, 8, 10, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-13 10:16:19'),
(3, 2, 2, 4, NULL, 3, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(4, 2, 2, 2, 2, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(5, 3, 4, 1, 4, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(6, 3, 4, 5, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(7, 4, 6, 5, 5, 4, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(8, 4, 6, 2, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(9, 5, 8, 2, 6, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(10, 5, 8, 5, NULL, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(11, 6, 7, 2, NULL, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(12, 6, 7, 2, 8, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(13, 7, 5, 1, NULL, 3, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(14, 8, 9, 2, 9, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(15, 9, 9, 3, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(16, 10, 3, 2, 3, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(17, 11, 10, 5, NULL, 5, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(18, 12, 2, 4, NULL, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(19, 1, 1, 4, NULL, 1, 0, 0, '2026-02-12 13:57:40', '2026-02-13 10:15:34'),
(20, 13, 1, 1, 1, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(21, 14, 6, 1, NULL, 1, 0, 1, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(22, 15, 2, 3, NULL, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(23, 16, 4, 1, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(24, 17, 1, 3, NULL, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(25, 18, 5, 1, NULL, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(26, 19, 9, 2, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(27, 20, 8, 2, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(28, 21, 6, 2, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(29, 22, 6, 2, NULL, 1, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40'),
(30, 23, 6, 5, 5, 2, 1, 0, '2026-02-12 13:57:40', '2026-02-12 13:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Groceries & Staples'),
(2, 'Dairy & Bakery'),
(3, 'Organic & Health'),
(4, 'Fresh Fruits'),
(5, 'Fresh Vegetables'),
(6, 'Snacks & Instant Food'),
(7, 'Meat & Seafood'),
(8, 'Bakery & Cakes'),
(9, 'Household & Personal Care'),
(10, 'Pooja Needs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `discount_type` enum('flat','per') NOT NULL,
  `discount_value` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id`, `item_id`, `discount_type`, `discount_value`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'per', 10, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(2, 8, 'flat', 20, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(3, 12, 'per', 5, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(4, 17, 'per', 15, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(5, 27, 'flat', 5, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(6, 36, 'per', 20, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(7, 21, 'per', 50, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(8, 33, 'flat', 100, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(9, 44, 'per', 10, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03'),
(10, 2, 'per', 5, 1, 0, '2026-02-12 13:52:03', '2026-02-12 13:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items_available_units`
--

CREATE TABLE `tbl_items_available_units` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `unit_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_items_available_units`
--

INSERT INTO `tbl_items_available_units` (`id`, `product_id`, `unit_id`, `price`, `in_stock`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 120.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(2, 1, 1, 550.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(3, 2, 1, 160.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(4, 3, 3, 145.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(5, 3, 3, 700.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(6, 4, 1, 25.00, 0, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:40:34'),
(7, 5, 1, 48.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(8, 6, 1, 420.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(9, 7, 4, 33.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(10, 7, 3, 64.00, 0, 0, 0, '2026-02-12 14:37:48', '2026-02-12 14:40:50'),
(11, 8, 2, 58.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(12, 9, 2, 95.00, 0, 0, 0, '2026-02-12 14:37:48', '2026-02-12 14:40:53'),
(13, 10, 2, 35.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(14, 11, 5, 160.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(15, 53, 4, 310.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(16, 12, 2, 290.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(17, 13, 2, 350.00, 0, 0, 0, '2026-02-12 14:37:48', '2026-02-12 14:40:46'),
(18, 14, 3, 450.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(19, 15, 2, 180.00, 1, 0, 0, '2026-02-12 14:37:48', '2026-02-12 14:40:41'),
(20, 16, 3, 320.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(21, 17, 1, 800.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(22, 18, 5, 60.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(23, 19, 1, 280.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(24, 20, 1, 190.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(25, 21, 2, 90.00, 0, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(26, 22, 1, 30.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(27, 23, 1, 45.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(28, 24, 1, 40.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(29, 25, 5, 15.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(30, 26, 2, 35.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(31, 27, 5, 60.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(32, 28, 1, 120.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(33, 29, 4, 105.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(34, 30, 2, 220.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(35, 31, 1, 195.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(36, 54, 2, 250.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(37, 55, 2, 280.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(38, 32, 2, 240.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(39, 33, 2, 450.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(40, 34, 5, 84.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(41, 35, 1, 320.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(42, 36, 2, 450.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(43, 37, 2, 55.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(44, 38, 2, 120.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(45, 39, 5, 35.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(46, 40, 5, 80.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(47, 41, 3, 180.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(48, 42, 2, 45.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(49, 43, 2, 95.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(50, 44, 2, 280.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(51, 45, 2, 160.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(52, 46, 5, 50.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(53, 47, 5, 30.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(54, 48, 2, 70.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(55, 49, 5, 250.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(56, 50, 2, 40.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(57, 51, 2, 65.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48'),
(58, 52, 2, 85.00, 1, 1, 0, '2026-02-12 14:37:48', '2026-02-12 14:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_number` varchar(128) NOT NULL,
  `rider_id` bigint(20) DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `delivery_fees` decimal(10,2) DEFAULT 0.00,
  `taxes` decimal(10,2) DEFAULT 0.00,
  `final_price` decimal(10,2) NOT NULL,
  `payment_mode` enum('cash','upi','card') NOT NULL,
  `status` enum('confirm','rejected') DEFAULT 'confirm',
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `user_id`, `order_number`, `rider_id`, `subtotal`, `delivery_fees`, `taxes`, `final_price`, `payment_mode`, `status`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORD-20260212-1001', 1, 1142.00, 40.00, 57.10, 1239.10, 'upi', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(2, 2, 'ORD-20260212-1002', 2, 137.00, 20.00, 10.00, 167.00, 'cash', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(3, 3, 'ORD-20260212-1003', 4, 1420.00, 50.00, 71.00, 1541.00, 'card', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(4, 4, 'ORD-20260212-1004', 5, 440.00, 30.00, 22.00, 492.00, 'upi', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(5, 5, 'ORD-20260212-1005', 7, 390.00, 25.00, 19.50, 434.50, 'cash', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(6, 6, 'ORD-20260212-1006', 10, 830.00, 45.00, 41.50, 916.50, 'upi', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(7, 7, 'ORD-20260212-1007', NULL, 90.00, 20.00, 4.50, 114.50, 'cash', 'rejected', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(8, 8, 'ORD-20260212-1008', 1, 252.00, 15.00, 12.60, 279.60, 'upi', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(9, 9, 'ORD-20260212-1009', 2, 180.00, 20.00, 9.00, 209.00, 'card', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(10, 10, 'ORD-20260212-1010', 4, 275.50, 35.00, 13.78, 324.28, 'upi', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(11, 11, 'ORD-20260212-1011', 5, 250.00, 15.00, 12.50, 277.50, 'cash', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(12, 12, 'ORD-20260212-1012', 7, 620.00, 40.00, 31.00, 691.00, 'upi', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(13, 15, 'ORD-20260212-1013', 10, 66.00, 15.00, 3.30, 84.30, 'cash', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(14, 16, 'ORD-20260212-1014', 1, 280.00, 25.00, 14.00, 319.00, 'card', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16'),
(15, 17, 'ORD-20260212-1015', 2, 290.00, 20.00, 14.50, 324.50, 'upi', 'confirm', 1, 0, '2026-02-12 13:58:16', '2026-02-12 13:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `item_unit_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`id`, `order_id`, `vendor_id`, `item_unit_id`, `quantity`, `price`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, 550.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(2, 1, 1, 1, 1, 160.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(3, 2, 2, 4, 3, 33.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(4, 2, 2, 2, 1, 58.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(5, 3, 4, 1, 2, 800.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(6, 3, 4, 5, 1, 60.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(7, 4, 6, 5, 4, 60.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(8, 4, 6, 2, 1, 220.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(9, 5, 8, 2, 1, 450.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(10, 5, 8, 5, 2, 35.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(11, 6, 7, 2, 2, 240.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(12, 6, 7, 2, 1, 450.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(13, 7, 4, 1, 1, 90.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(14, 8, 9, 2, 1, 280.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(15, 10, 3, 2, 1, 290.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26'),
(16, 12, 2, 4, 2, 310.00, 1, 0, '2026-02-12 13:58:26', '2026-02-12 13:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `calories` varchar(32) DEFAULT '0 kcal',
  `carbs` varchar(32) DEFAULT '0 g',
  `protein` varchar(32) DEFAULT '0 g',
  `label` varchar(32) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `name`, `category_id`, `description`, `calories`, `carbs`, `protein`, `label`, `vendor_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Basmati Rice 5kg', 1, 'Premium long-grain aged basmati rice.', '350 kcal', '78g', '7g', 'Best Seller', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(2, 'Toor Dal 1kg', 1, 'Unpolished high-protein pigeon peas.', '340 kcal', '59g', '22g', 'Daily Essential', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(3, 'Sunflower Oil 1L', 1, 'Refined healthy cooking oil.', '0 kcal', '0 g', '0 g', 'Popular', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(4, 'Iodized Salt 1kg', 1, 'Pure vacuum evaporated salt.', '0 kcal', '0 g', '0 g', 'Essential', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(5, 'Sugar 1kg', 1, 'Refined white small grain sugar.', '0 kcal', '0 g', '0 g', 'New', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(6, 'Wheat Flour 10kg', 1, 'Chakki fresh atta with bran.', '364 kcal', '76g', '10g', 'Discount', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(7, 'Amul Gold Milk 500ml', 2, 'Full cream fresh milk.', '60 kcal', '4.7g', '3.2g', 'Fresh', 2, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(8, 'Amul Butter 100g', 2, 'Pasteurized salted butter.', '717 kcal', '0.1g', '0.9g', 'Classic', 2, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(9, 'Paneer 200g', 2, 'Fresh malai paneer block.', '265 kcal', '1.2g', '18g', 'High Protein', 2, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(10, 'Curd 400g', 2, 'Thick and creamy set curd.', '0 kcal', '0 g', '0 g', 'Probiotic', 2, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(11, 'Cheese Slices 10pcs', 2, 'Processed cheese slices.', '0 kcal', '0 g', '0 g', 'Kids Choice', 2, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(12, 'Organic Honey 250g', 3, 'Raw forest honey, no additives.', '0 kcal', '0 g', '0 g', 'Organic', 3, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(13, 'Quinoa 500g', 3, 'Premium white gluten-free quinoa.', '0 kcal', '0 g', '0 g', 'Superfood', 3, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(14, 'Apple Cider Vinegar', 3, 'With the mother, unfiltered.', '0 kcal', '0 g', '0 g', 'Health', 3, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(15, 'Chia Seeds 200g', 3, 'Rich in Omega-3 organic seeds.', '0 kcal', '0 g', '0 g', 'Trending', 3, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(16, 'Cold Pressed Coconut Oil', 3, 'Pure edible coconut oil.', '0 kcal', '0 g', '0 g', 'Premium', 3, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(17, 'Alphonso Mango 1kg', 4, 'Ratnagiri king of mangoes.', '60 kcal', '15g', '0.8g', 'Seasonal', 4, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(18, 'Banana 1 Dozen', 4, 'Fresh ripe Robusta bananas.', '89 kcal', '23g', '1.1g', 'Energy', 4, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(19, 'Green Apple 1kg', 4, 'Crispy imported green apples.', '0 kcal', '0 g', '0 g', 'Imported', 4, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(20, 'Pomegranate 1kg', 4, 'Bhagwa variety sweet arils.', '0 kcal', '0 g', '0 g', 'Fresh', 4, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(21, 'Grapes 500g', 4, 'Seedless black sweet grapes.', '0 kcal', '0 g', '0 g', 'Limited', 4, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(22, 'Potato 1kg', 5, 'Fresh Deesa potatoes.', '77 kcal', '17g', '2g', 'Daily', 5, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(23, 'Onion 1kg', 5, 'Nashik pink onions.', '0 kcal', '0 g', '0 g', 'Daily', 5, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(24, 'Tomato 1kg', 5, 'Farm fresh red tomatoes.', '0 kcal', '0 g', '0 g', 'Fresh', 5, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(25, 'Spinach Bunch', 5, 'Hydropnic clean spinach.', '0 kcal', '0 g', '0 g', 'Leafy', 5, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(26, 'Lady Finger 500g', 5, 'Tender green okra.', '0 kcal', '0 g', '0 g', 'Local', 5, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(27, 'Maggi Noodles 4pk', 6, 'Instant masala noodles.', '450 kcal', '60g', '8g', 'Quick Fix', 6, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(28, 'Ketchup 1kg', 6, 'Sweet and tangy tomato ketchup.', '0 kcal', '0 g', '0 g', 'Combo', 6, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(29, 'Dishwash Liquid 500ml', 6, 'Lemon fresh grease cleaner.', '0 kcal', '0 g', '0 g', 'Utility', 6, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(30, 'Peanut Butter 350g', 6, 'Creamy roasted peanut butter.', '0 kcal', '0 g', '0 g', 'Healthy', 6, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(31, 'Oats 1kg', 6, 'Rolled oats for breakfast.', '0 kcal', '0 g', '0 g', 'Fitness', 6, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(32, 'Chicken Breast 500g', 7, 'Skinless boneless chicken.', '165 kcal', '0g', '31g', 'Lean', 7, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(33, 'Mutton Curry Cut 500g', 7, 'Fresh tender goat meat.', '0 kcal', '0 g', '0 g', 'Fresh', 7, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(34, 'Eggs 12pcs', 7, 'Farm fresh white eggs.', '155 kcal', '1.1g', '13g', 'Protein', 7, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(35, 'Fish Rohu 1kg', 7, 'Fresh water Rohu fish cut.', '0 kcal', '0 g', '0 g', 'Seafood', 7, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(36, 'Chocolate Cake 500g', 8, 'Eggless dark chocolate truffle.', '350 kcal', '55g', '4g', 'Celebration', 8, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(37, 'Brown Bread 400g', 8, 'Whole wheat high fiber bread.', '250 kcal', '45g', '13g', 'Breakfast', 8, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(38, 'Butter Cookies 200g', 8, 'Handmade buttery biscuits.', '0 kcal', '0 g', '0 g', 'Snack', 8, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(39, 'Paneer Puff', 8, 'Crispy puff with paneer filling.', '0 kcal', '0 g', '0 g', 'Hot', 8, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(40, 'Red Velvet Cupcake', 8, 'Cream cheese frosting cupcake.', '0 kcal', '0 g', '0 g', 'Sweet', 8, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(41, 'Floor Cleaner 1L', 9, 'Disinfectant floral cleaner.', '0 kcal', '0 g', '0 g', 'Cleaning', 9, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(42, 'Bath Soap 100g', 9, 'Moisturizing almond soap.', '0 kcal', '0 g', '0 g', 'Personal Care', 9, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(43, 'Toothpaste 150g', 9, 'Herbal cavity protection.', '0 kcal', '0 g', '0 g', 'Essential', 9, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(44, 'Tea Powder 500g', 9, 'Strong CTC Assam tea.', '0 kcal', '0 g', '0 g', 'Refresh', 9, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(45, 'Coffee 50g', 9, 'Instant freeze-dried coffee.', '0 kcal', '0 g', '0 g', 'Premium', 9, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(46, 'Incense Sticks 1pk', 10, 'Sandalwood fragrance sticks.', '0 kcal', '0 g', '0 g', 'Ritual', 10, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(47, 'Cotton Wicks 100pcs', 10, 'Round handmade cotton wicks.', '0 kcal', '0 g', '0 g', 'Ritual', 10, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(48, 'Camphor 50g', 10, 'Pure bhimseni camphor.', '0 kcal', '0 g', '0 g', 'Pure', 10, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(49, 'Brass Diya', 10, 'Antique finish small brass diya.', '0 kcal', '0 g', '0 g', 'Decor', 10, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(50, 'Kumkum 100g', 10, 'Natural red turmeric powder.', '0 kcal', '0 g', '0 g', 'Ritual', 10, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(51, 'Turmeric Powder 200g', 1, 'High curcumin organic haldi.', '0 kcal', '0 g', '0 g', 'Spices', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(52, 'Chilli Powder 200g', 1, 'Spicy Reshampatti chilli.', '0 kcal', '0 g', '0 g', 'Spices', 1, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30'),
(53, 'Ghee 500ml', 2, 'Pure cow ghee bilona method.', '880 kcal', '0g', '0g', 'Dairy', 2, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(54, 'Almonds 250g', 6, 'Premium Californian almonds.', '588 kcal', '20g', '21g', 'Dry Fruits', 6, 1, 0, '2026-02-12 13:47:30', '2026-02-12 19:06:18'),
(55, 'Cashews 250g', 6, 'Crunchy W320 grade cashews.', '0 kcal', '0 g', '0 g', 'Dry Fruits', 6, 1, 0, '2026-02-12 13:47:30', '2026-02-12 13:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_favorite`
--

CREATE TABLE `tbl_product_favorite` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_fevorite` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_favorite`
--

INSERT INTO `tbl_product_favorite` (`id`, `product_id`, `user_id`, `is_fevorite`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2026-02-13 11:39:39', '2026-02-13 11:39:39'),
(2, 1, 1, 1, '2026-02-13 11:39:51', '2026-02-13 11:39:51'),
(3, 2, 16, 1, '2026-02-13 11:40:09', '2026-02-13 11:40:09'),
(4, 1, 6, 1, '2026-02-13 11:40:22', '2026-02-13 11:40:22'),
(5, 1, 1, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(6, 2, 1, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(7, 51, 1, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(8, 7, 2, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(9, 8, 2, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(10, 11, 2, 0, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(11, 12, 3, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(12, 13, 3, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(13, 36, 5, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(14, 40, 5, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(15, 17, 10, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(16, 18, 10, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(17, 32, 15, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(18, 34, 15, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(19, 46, 20, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(20, 49, 20, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(21, 22, 25, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(22, 24, 25, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(23, 54, 30, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20'),
(24, 55, 30, 1, '2026-02-13 11:42:20', '2026-02-13 11:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_images`
--

CREATE TABLE `tbl_product_images` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `media_url` varchar(256) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_images`
--

INSERT INTO `tbl_product_images` (`id`, `product_id`, `media_url`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'rice_front.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(2, 1, 'rice_back.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(3, 2, 'toor_dal.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(4, 3, 'sunflower_oil.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(5, 4, 'salt_pack.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(6, 5, 'sugar_white.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(7, 6, 'wheat_flour_10kg.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(8, 7, 'amul_gold_500.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(9, 8, 'amul_butter_100.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(10, 9, 'paneer_fresh.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(11, 10, 'curd_cup.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(12, 11, 'cheese_slices.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(13, 12, 'honey_jar.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(14, 12, 'honey_nutrition.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(15, 13, 'quinoa_white.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(16, 14, 'acv_bottle.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(17, 15, 'chia_seeds.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(18, 16, 'coconut_oil.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(19, 17, 'alphonso_mango.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(20, 18, 'banana_dozen.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(21, 19, 'green_apple.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(22, 20, 'pomegranate.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(23, 21, 'grapes_black.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(24, 22, 'potato_local.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(25, 23, 'onion_pink.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(26, 24, 'tomato_farm.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(27, 25, 'spinach_fresh.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(28, 26, 'okra_ladyfinger.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(29, 27, 'maggi_noodles.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(30, 28, 'ketchup_bottle.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(31, 29, 'dishwash_liquid.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(32, 30, 'peanut_butter.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(33, 31, 'oats_classic.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(34, 32, 'chicken_breast.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(35, 33, 'mutton_curry.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(36, 34, 'eggs_tray.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(37, 35, 'rohu_fish.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(38, 36, 'choc_cake.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(39, 37, 'brown_bread.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(40, 38, 'butter_cookies.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(41, 39, 'paneer_puff.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(42, 40, 'cupcake_red_velvet.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(43, 41, 'floor_cleaner.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(44, 42, 'bath_soap.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(45, 43, 'toothpaste_tube.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(46, 44, 'tea_powder.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(47, 45, 'coffee_jar.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(48, 46, 'incense_sticks.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(49, 47, 'cotton_wicks.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(50, 48, 'camphor_pure.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(51, 49, 'brass_diya.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(52, 50, 'kumkum_box.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(53, 51, 'turmeric_powder.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(54, 52, 'chilli_powder.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(55, 53, 'ghee_tin.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(56, 54, 'almonds_pouch.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02'),
(57, 55, 'cashews_pouch.jpg', 1, 0, '2026-02-12 13:49:02', '2026-02-12 13:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_unit`
--

CREATE TABLE `tbl_product_unit` (
  `id` bigint(20) NOT NULL,
  `unit_type` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_unit`
--

INSERT INTO `tbl_product_unit` (`id`, `unit_type`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, '1 kg\n', 1, 0, '2026-02-12 14:42:25', '2026-02-12 14:43:37'),
(2, '500gm', 1, 0, '2026-02-12 14:42:25', '2026-02-12 14:43:42'),
(3, '1 l\r\n', 1, 0, '2026-02-12 14:44:18', '2026-02-12 14:44:18'),
(4, '500ml\r\n', 1, 0, '2026-02-12 14:44:18', '2026-02-12 14:44:18'),
(5, '1', 1, 0, '2026-02-12 14:44:26', '2026-02-12 14:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `user_id`, `item_id`, `rating`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4.5, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(2, 2, 1, 5.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(3, 15, 2, 4.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(4, 22, 51, 4.8, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(5, 3, 7, 5.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(6, 4, 7, 4.2, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(7, 16, 8, 4.9, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(8, 25, 53, 4.7, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(9, 5, 12, 3.5, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(10, 6, 17, 5.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(11, 18, 17, 4.5, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(12, 29, 13, 4.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(13, 7, 22, 4.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(14, 8, 24, 3.5, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(15, 20, 23, 4.2, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(16, 9, 27, 4.5, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(17, 10, 27, 4.8, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(18, 11, 30, 4.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(19, 21, 54, 5.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(20, 13, 32, 4.9, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(21, 14, 36, 5.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(22, 27, 36, 4.6, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(23, 30, 33, 4.3, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(24, 17, 43, 3.8, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(25, 19, 41, 4.1, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(26, 26, 46, 5.0, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07'),
(27, 1, 49, 4.5, 1, 0, '2026-02-12 13:57:07', '2026-02-12 13:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rider`
--

CREATE TABLE `tbl_rider` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `vehicle_no` varchar(64) DEFAULT NULL,
  `lat` varchar(64) DEFAULT NULL,
  `long` varchar(64) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rider`
--

INSERT INTO `tbl_rider` (`id`, `name`, `phone`, `vehicle_no`, `lat`, `long`, `is_available`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Rahul Parmar', '9898123456', 'GJ-01-AB-1234', '23.03381512345678', '72.54674212345678', 1, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(2, 'Sameer Khan', '9725098765', 'GJ-01-CD-5678', '23.02250511223344', '72.57136299887766', 1, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(3, 'Vijay Zala', '9426011223', 'GJ-01-XY-9012', '23.01200055443322', '72.51000011223344', 0, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(4, 'Amit Prajapati', '8141155667', 'GJ-01-ZZ-3456', '23.05112233445566', '72.53445566778899', 1, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(5, 'Suresh Vaghela', '9099877665', 'GJ-01-BK-7890', '23.07665544332211', '72.50112233445566', 1, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(6, 'Deepak Solanki', '9924433221', 'GJ-01-RQ-4321', '23.01998877665544', '72.59223344556677', 0, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(7, 'Manish Thakor', '9712355443', 'GJ-01-MM-1111', '23.02110099887766', '72.61445566778899', 1, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(8, 'Arjun Mori', '7567800991', 'GJ-01-PT-2222', '23.08554433221100', '72.54887766554433', 1, 0, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(9, 'Vikram Gohel', '9824066554', 'GJ-01-LK-3333', '23.06443322110099', '72.56223344556677', 0, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39'),
(10, 'Hardik Makwana', '9408822334', 'GJ-01-HJ-4444', '23.02887766554433', '72.57998877665544', 1, 1, 0, '2026-02-12 13:52:39', '2026-02-12 13:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit_category`
--

CREATE TABLE `tbl_unit_category` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `unit_item_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_unit_category`
--

INSERT INTO `tbl_unit_category` (`id`, `category_id`, `unit_item_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(2, 1, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(3, 1, 3, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(4, 2, 4, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(5, 2, 3, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(6, 2, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(7, 2, 5, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(8, 3, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(9, 3, 4, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(10, 4, 1, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(11, 4, 5, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(12, 5, 1, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(13, 5, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(14, 5, 5, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(15, 6, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(16, 6, 5, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(17, 7, 1, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(18, 7, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(19, 8, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(20, 8, 5, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(21, 9, 4, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(22, 9, 3, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(23, 9, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(24, 9, 5, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(25, 10, 5, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(26, 10, 2, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16'),
(27, 10, 4, 1, 0, '2026-02-12 16:31:16', '2026-02-12 16:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `login_type` enum('s','f','g') NOT NULL COMMENT 'S : Simple , F : facebook , G : Google\r\n',
  `social_id` varchar(256) NOT NULL,
  `contry_code` varchar(8) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `profile_pic` varchar(128) NOT NULL,
  `city` varchar(64) NOT NULL,
  `pincode` varchar(64) NOT NULL,
  `latitude` varchar(64) NOT NULL,
  `longitude` varchar(64) NOT NULL,
  `user_address` text NOT NULL,
  `status` enum('active','inactive','blocked','deleted') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `password`, `login_type`, `social_id`, `contry_code`, `phone`, `profile_pic`, `city`, `pincode`, `latitude`, `longitude`, `user_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', 'hash_pw_1', 'g', 'GOOG123456789', '+91', '9876543210', 'user1.jpg', 'Ahmedabad', '380001', '23.02250512345678', '72.57136212345678', '402, Shivalik Residency, Near IIM Ahmedabad, Vastrapur', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(2, 'Isha Patel', 'isha.patel@yahoo.com', 'hash_pw_2', 's', '', '+91', '9825012345', 'user2.jpg', 'Ahmedabad', '380009', '23.03330011223344', '72.55550099887766', 'Flat 12, Sahjanand Apartments, Near Stadium Cross Road, Navrangpura', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(3, 'Rohan Mehta', 'rohan.m88@fb.com', 'hash_pw_3', 'f', 'FB_99887766', '+91', '9712345678', 'user3.jpg', 'Ahmedabad', '380015', '23.01200055443322', '72.51000011223344', 'B-304, Titanium Heights, Near Prahlad Nagar Garden, Corporate Road', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(4, 'Ananya Iyer', 'ananya.iyer@live.com', 'hash_pw_4', 'g', 'GOOG55667788', '+91', '9900112233', 'user4.jpg', 'Ahmedabad', '380054', '23.05112233445566', '72.53445566778899', '7, Gokul Row House, Near Memnagar Fire Station, Drive-in Road', 'inactive', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(5, 'Vihaan Shah', 'v_shah_ahmed@gmail.com', 'hash_pw_5', 's', '', '+91', '9426055443', 'user5.jpg', 'Ahmedabad', '380006', '23.02558877665544', '72.58332211009988', 'Plot 45, Green Valley, Shilaj Cross Road', 'blocked', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(6, 'Sai Reddy', 'sai.reddy@gmail.com', 'hash_pw_6', 'g', 'GOOG99112233', '+91', '9173322110', 'user6.jpg', 'Ahmedabad', '380013', '23.04889900112233', '72.52776655443322', '101, Rivera Antilia, Corporate Road, Makarba', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(7, 'Myra Gupta', 'myra_g@outlook.com', 'hash_pw_7', 's', '', '+91', '8141122334', 'user7.jpg', 'Ahmedabad', '380058', '23.07665544332211', '72.50112233445566', 'A-12, Sun Step Tower, Near Sola Bhagwat Vidhyapith, SG Highway', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(8, 'Kabir Joshi', 'joshi.kabir@fb.com', 'hash_pw_8', 'f', 'FB_11223344', '+91', '7567890123', 'user8.jpg', 'Ahmedabad', '380007', '23.01998877665544', '72.59223344556677', 'Shop 5, Heritage Plaza, Opp. Azad Society, Ambawadi', 'inactive', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(9, 'Diya Trivedi', 'diya_t@gmail.com', 'hash_pw_9', 'g', 'GOOG44332211', '+91', '9099887766', 'user9.jpg', 'Ahmedabad', '380024', '23.02110099887766', '72.61445566778899', '22, Nilkanth Society, Near L.G. Corner, Maninagar', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(10, 'Arjun Varma', 'arjun.v@protonmail.com', 'hash_pw_10', 's', '', '+91', '9824055667', 'user10.jpg', 'Ahmedabad', '380061', '23.08554433221100', '72.54887766554433', '', 'blocked', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(11, 'Sana Khan', 'sana.k@gmail.com', 'hash_pw_11', 'g', 'GOOG11559900', '+91', '9725011223', 'user11.jpg', 'Ahmedabad', '380052', '23.06443322110099', '72.56223344556677', '4th Floor, Venus Atlantis, Near Prahlad Nagar Garden', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(12, 'Aryan Dave', 'dave_aryan@yahoo.com', 'hash_pw_12', 's', '', '+91', '9924455332', 'user12.jpg', 'Ahmedabad', '380001', '23.02887766554433', '72.57998877665544', '15, Krishna Kunj Society, Near Sardar Patel Colony, Naranpura', 'inactive', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(13, 'Kiara Malhotra', 'kiara.m@fb.com', 'hash_pw_13', 'f', 'FB_55443322', '+91', '8866554433', 'user13.jpg', 'Ahmedabad', '380015', '23.01554433221100', '72.51556677889900', 'B-901, Mondeal Heights, Near Wide Angle Cinema, S.G. Highway', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(14, 'Reyansh Gill', 'reyansh_gill@gmail.com', 'hash_pw_14', 'g', 'GOOG66778811', '+91', '9408877665', 'user14.jpg', 'Ahmedabad', '380005', '23.03112233445566', '72.58998877665544', 'Flat 102, Shanti Sadan, Near Ellis Bridge', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(15, 'Zoya Mirza', 'zoya.mirza@live.com', 'hash_pw_15', 's', '', '+91', '9723344556', 'user15.jpg', 'Ahmedabad', '380022', '23.00112233445566', '72.60223344556677', 'Block 4, Radhe Shyam Society, Bopal Main Road', 'active', '2026-02-12 13:39:30', '2026-02-13 11:05:55'),
(16, 'Advait Rao', 'advait.rao@gmail.com', 'hash_pw_16', 'g', 'GOOG88776655', '+91', '9106677889', 'user16.jpg', 'Ahmedabad', '380019', '23.04223344556677', '72.52998877665544', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(17, 'Pari Parekh', 'pari.p@fb.com', 'hash_pw_17', 'f', 'FB_22334455', '+91', '9898012345', 'user17.jpg', 'Ahmedabad', '380008', '23.01665544332211', '72.59556677889900', '', 'inactive', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(18, 'Ishaan Choudhury', 'ishaan.c@gmail.com', 'hash_pw_18', 's', '', '+91', '9978866554', 'user18.jpg', 'Ahmedabad', '380051', '23.05776655443322', '72.53112233445566', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(19, 'Tara Deshmukh', 'tara.d@yahoo.com', 'hash_pw_19', 'g', 'GOOG44556677', '+91', '8758844332', 'user19.jpg', 'Ahmedabad', '380060', '23.08223344556677', '72.54112233445566', '', 'blocked', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(20, 'Dev Bansal', 'dev.bansal@gmail.com', 'hash_pw_20', 's', '', '+91', '7043322115', 'user20.jpg', 'Ahmedabad', '380002', '23.02445566778899', '72.57445566778899', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(21, 'Meher Vohra', 'meher.v@fb.com', 'hash_pw_21', 'f', 'FB_00112233', '+91', '9662233445', 'user21.jpg', 'Ahmedabad', '380014', '23.03778899001122', '72.51887766554433', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(22, 'Ritvik Sen', 'ritvik.sen@gmail.com', 'hash_pw_22', 'g', 'GOOG77665544', '+91', '9537788990', 'user22.jpg', 'Ahmedabad', '380059', '23.07998877665544', '72.50887766554433', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(23, 'Kyra Jain', 'kyra.jain@live.com', 'hash_pw_23', 's', '', '+91', '9016655443', 'user23.jpg', 'Ahmedabad', '380004', '23.03554433221100', '72.58554433221100', '', 'inactive', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(24, 'Ranbir Kapoor', 'ranbir.k@gmail.com', 'hash_pw_24', 'g', 'GOOG33445566', '+91', '9427788991', 'user24.jpg', 'Ahmedabad', '380010', '23.03998877665544', '72.56998877665544', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(25, 'Siya Waghmare', 'siya.w@yahoo.com', 'hash_pw_25', 's', '', '+91', '9904455667', 'user25.jpg', 'Ahmedabad', '380021', '23.01334455667788', '72.60554433221100', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(26, 'Karan Singh', 'karan.s@fb.com', 'hash_pw_26', 'f', 'FB_77889900', '+91', '9714455668', 'user26.jpg', 'Ahmedabad', '380011', '23.04556677889900', '72.55112233445566', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(27, 'Naira Goenka', 'naira.g@gmail.com', 'hash_pw_27', 'g', 'GOOG22334455', '+91', '8128877665', 'user27.jpg', 'Ahmedabad', '380012', '23.04667788990011', '72.54667788990011', '', 'blocked', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(28, 'Shaurya Birla', 'shaurya.b@live.com', 'hash_pw_28', 's', '', '+91', '9898877664', 'user28.jpg', 'Ahmedabad', '380016', '23.01778899001122', '72.52554433221100', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(29, 'Amara Sheikh', 'amara.s@gmail.com', 'hash_pw_29', 'g', 'GOOG00998877', '+91', '9327755443', 'user29.jpg', 'Ahmedabad', '380018', '23.04332211009988', '72.53665544332211', '', 'active', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(30, 'Daksh Negi', 'daksh.negi@yahoo.com', 'hash_pw_30', 's', '', '+91', '9601122334', 'user30.jpg', 'Ahmedabad', '380026', '23.01112233445566', '72.61112233445566', '', 'inactive', '2026-02-12 13:39:30', '2026-02-12 13:39:30'),
(31, 'sahil mansuri', 'sahil@gmail.com', 'sahil123@pass', 's', '', '+91', '9510447055', 'profile.jpg', 'Ahmedabad', '380001', '23.05776655443322', '72.53112233445566', '', 'active', '2026-02-12 16:57:16', '2026-02-12 17:05:03'),
(32, 'sahil mansuri', 'sahil@gmail.com', 'sahil123@pass', 's', '', '+91', '9510447055', 'profile.jpg', 'Ahmedabad', '380001', '23.05776655443322', '72.53112233445566', '', 'active', '2026-02-12 16:59:43', '2026-02-12 17:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_address`
--

CREATE TABLE `tbl_user_address` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(64) NOT NULL,
  `longitude` varchar(64) NOT NULL,
  `location_type` enum('home','work','other') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_address`
--

INSERT INTO `tbl_user_address` (`id`, `user_id`, `address`, `latitude`, `longitude`, `location_type`, `is_active`, `is_delete`) VALUES
(1, 1, '402, Shivalik Residency, Near IIM Ahmedabad, Vastrapur', '23.03381512345678', '72.54674212345678', 'home', 1, 0),
(2, 2, 'Flat 12, Sahjanand Apartments, Near Stadium Cross Road, Navrangpura', '23.03920011223344', '72.56120099887766', 'home', 1, 0),
(3, 3, 'B-304, Titanium Heights, Near Prahlad Nagar Garden, Corporate Road', '23.00890055443322', '72.50110011223344', 'home', 1, 0),
(4, 4, '7, Gokul Row House, Near Memnagar Fire Station, Drive-in Road', '23.05112233445566', '72.53445566778899', 'home', 0, 0),
(5, 5, 'Plot 45, Green Valley, Shilaj Cross Road', '23.04558877665544', '72.48332211009988', 'other', 1, 0),
(6, 6, '101, Rivera Antilia, Corporate Road, Makarba', '23.04889900112233', '72.52776655443322', 'home', 1, 0),
(7, 7, 'A-12, Sun Step Tower, Near Sola Bhagwat Vidhyapith, SG Highway', '23.07665544332211', '72.50112233445566', 'home', 1, 0),
(8, 8, 'Shop 5, Heritage Plaza, Opp. Azad Society, Ambawadi', '23.01998877665544', '72.59223344556677', 'work', 1, 0),
(9, 9, '22, Nilkanth Society, Near L.G. Corner, Maninagar', '23.02110099887766', '72.61445566778899', 'home', 1, 0),
(10, 10, 'Block C, Satyam Corporate Square, Science City Road', '23.08554433221100', '72.54887766554433', 'other', 0, 1),
(11, 11, '4th Floor, Venus Atlantis, Near Prahlad Nagar Garden', '23.06443322110099', '72.56223344556677', 'work', 1, 0),
(12, 12, '15, Krishna Kunj Society, Near Sardar Patel Colony, Naranpura', '23.02887766554433', '72.57998877665544', 'home', 1, 0),
(13, 13, 'B-901, Mondeal Heights, Near Wide Angle Cinema, S.G. Highway', '23.01554433221100', '72.51556677889900', 'home', 1, 0),
(14, 14, 'Flat 102, Shanti Sadan, Near Ellis Bridge', '23.03112233445566', '72.58998877665544', 'other', 1, 0),
(15, 15, 'Block 4, Radhe Shyam Society, Bopal Main Road', '23.00112233445566', '72.60223344556677', 'home', 1, 0),
(16, 16, '88, Silver Oak Bunglows, Near Gota Cross Road', '23.04223344556677', '72.52998877665544', 'home', 1, 0),
(17, 17, 'A/4, Madhuram Complex, Near Keshav Baug, Shivranjani', '23.01665544332211', '72.59556677889900', 'work', 1, 0),
(18, 18, '2nd Floor, Zodiac Square, Opposite Gurudwara, Thaltej', '23.05776655443322', '72.53112233445566', 'home', 1, 0),
(19, 19, 'House No 12, Santosh Nagar, Near Chandkheda Railway Station', '23.08223344556677', '72.54112233445566', 'home', 1, 0),
(20, 20, '405, Kalasagar Shopping Hub, Near Sattadhar Cross Road, Ghatlodiya', '23.02445566778899', '72.57445566778899', 'home', 1, 0),
(21, 21, 'Plot 10, Shrinand Nagar Part-2, Vejalpur', '23.03778899001122', '72.51887766554433', 'home', 1, 0),
(22, 22, 'C-501, Godrej Garden City, Near Nirma University, SG Highway', '23.07998877665544', '72.50887766554433', 'home', 1, 0),
(23, 23, '67, Maruti Villa, Near Iscon Cross Road', '23.03554433221100', '72.58554433221100', 'other', 1, 0),
(24, 24, '302, Arista Business Hub, Near Sindhu Bhavan Road', '23.03998877665544', '72.56998877665544', 'work', 1, 0),
(25, 25, 'Block G, Swaminarayan Park, Narol - Vatva Road', '23.01334455667788', '72.60554433221100', 'home', 1, 0),
(26, 26, '14, Dev Castle, Near Khokhara Circle, Maninagar East', '23.04556677889900', '72.55112233445566', 'home', 1, 0),
(27, 27, 'Flat 5, Rosewood Estate, Near Jodhpur Cross Road, Satellite', '23.04667788990011', '72.54667788990011', 'home', 1, 0),
(28, 28, 'A-202, Ganesh Meridian, Near Sola Bridge, S.G. Highway', '23.01778899001122', '72.52554433221100', 'work', 1, 0),
(29, 29, 'House 44, Shaktidhara Society, Near Nikol Gam Road', '23.04332211009988', '72.53665544332211', 'home', 1, 0),
(30, 30, 'Plot 8, Pushpak Bunglows, Near New C.G. Road, Chandkheda', '23.01112233445566', '72.61112233445566', 'home', 1, 0),
(31, 1, 'Office 702, Westgate Business Bay, S.G. Highway', '23.02150512345678', '72.51136212345678', 'work', 1, 0),
(32, 3, 'Shop 14, Alpha One Mall, Vastrapur', '23.04100055443322', '72.54200011223344', 'work', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `shop_name` varchar(128) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(64) NOT NULL,
  `longitude` varchar(64) NOT NULL,
  `astimated_delivery` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `open_time` datetime NOT NULL,
  `close_time` datetime NOT NULL,
  `discount` enum('free','paid','percentage') NOT NULL,
  `km_wise_charges` int(16) NOT NULL,
  `discount_amount` varchar(64) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id`, `name`, `email`, `password`, `shop_name`, `address`, `latitude`, `longitude`, `astimated_delivery`, `image`, `open_time`, `close_time`, `discount`, `km_wise_charges`, `discount_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rajesh Bhai', 'rajesh.grocery@gmail.com', 'vendor_pw_1', 'Shreeji Grocery & Mart', 'Shop 4, Gala Magnus, South Bopal, Ahmedabad', '23.03381512345678', '72.54674212345678', '30-45 mins', 'vendor1.jpg', '2026-02-12 08:00:00', '2026-02-12 22:00:00', 'percentage', 15, '10%', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(2, 'Amit Shah', 'amit.dairy@gmail.com', 'vendor_pw_2', 'Amul Parlour & Dairy', 'GF-12, Titanium City Center, Prahlad Nagar', '23.01120011223344', '72.51250099887766', '15-20 mins', 'vendor2.jpg', '2026-02-12 06:00:00', '2026-02-12 21:00:00', 'free', 10, '0', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(3, 'Meera Patel', 'meera.organic@yahoo.com', 'vendor_pw_3', 'Pure Nature Organics', 'Block A, Sindhu Bhavan Road, Bodakdev', '23.04112233445566', '72.53445566778899', '40-60 mins', 'vendor3.jpg', '2026-02-12 10:00:00', '2026-02-12 20:00:00', 'paid', 20, '50', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(4, 'Vikram Rathod', 'vikram.fruits@gmail.com', 'vendor_pw_4', 'Fresh & Juicy Fruits', 'Main Market, Maninagar East, Ahmedabad', '22.99558877665544', '72.61332211009988', '25-35 mins', 'vendor4.jpg', '2026-02-12 07:00:00', '2026-02-12 21:30:00', 'percentage', 12, '15%', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(5, 'Suresh Gadhvi', 'suresh.veggies@live.com', 'vendor_pw_5', 'Khedut Haat Vegetables', 'Near Gota Cross Road, New SG Highway', '23.07889900112233', '72.52776655443322', '20-30 mins', 'vendor5.jpg', '2026-02-12 06:30:00', '2026-02-12 13:00:00', 'free', 8, '0', 'inactive', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(6, 'Sneha Gupta', 'sneha.super@gmail.com', 'vendor_pw_6', 'Daily Needs Superstore', 'Shop 102, Iscon Emporio, Satellite', '23.02665544332211', '72.50112233445566', '30-40 mins', 'vendor6.jpg', '2026-02-12 09:00:00', '2026-02-12 23:00:00', 'percentage', 15, '5%', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(7, 'Abdul Sheikh', 'abdul.meat@gmail.com', 'vendor_pw_7', 'City Fresh Mutton & Chicken', 'Mirzapur Road, Near Old City, Ahmedabad', '23.01998877665544', '72.59223344556677', '45-55 mins', 'vendor7.jpg', '2026-02-12 08:00:00', '2026-02-12 20:00:00', 'paid', 25, '30', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(8, 'Pooja Sharma', 'pooja.bakery@yahoo.com', 'vendor_pw_8', 'The Cake & Bake Shop', 'Near CG Road, Navrangpura, Ahmedabad', '23.03110099887766', '72.56445566778899', '20-25 mins', 'vendor8.jpg', '2026-02-12 10:00:00', '2026-02-12 22:30:00', 'percentage', 10, '20%', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(9, 'Deepak Jha', 'deepak.general@gmail.com', 'vendor_pw_9', 'Deepak General Store', 'Vastrapur Gam, Opposite Lake, Ahmedabad', '23.03554433221100', '72.54887766554433', '15-25 mins', 'vendor9.jpg', '2026-02-12 07:30:00', '2026-02-12 22:00:00', 'free', 5, '0', 'active', '2026-02-12 13:46:06', '2026-02-12 17:30:52'),
(10, 'Sunita Varma', 'sunita.pooja@gmail.com', 'vendor_pw_10', 'Divine Pooja Samagri', 'Near Iskcon Temple, SG Highway', '23.02443322110099', '72.50223344556677', '30-50 mins', 'vendor10.jpg', '2026-02-12 09:00:00', '2026-02-12 19:00:00', 'paid', 18, '20', 'inactive', '2026-02-12 13:46:06', '2026-02-12 17:30:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_actors`
--
ALTER TABLE `tbl_actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_actor_movies`
--
ALTER TABLE `tbl_actor_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_user` (`user_id`),
  ADD KEY `fk_cart_vendor` (`vendor_id`),
  ADD KEY `fk_cart_unit` (`item_unit_id`),
  ADD KEY `fk_discount_id` (`discount_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_id` (`item_id`);

--
-- Indexes for table `tbl_items_available_units`
--
ALTER TABLE `tbl_items_available_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_available_product` (`product_id`),
  ADD KEY `fk_available_unit` (`unit_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_rider_id` (`rider_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_details_order` (`order_id`),
  ADD KEY `fk_details_vendor` (`vendor_id`),
  ADD KEY `fk_details_unit` (`item_unit_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_product_vendor` (`vendor_id`);

--
-- Indexes for table `tbl_product_favorite`
--
ALTER TABLE `tbl_product_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_image_product` (`product_id`);

--
-- Indexes for table `tbl_product_unit`
--
ALTER TABLE `tbl_product_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_user` (`user_id`),
  ADD KEY `fk_rating_item` (`item_id`);

--
-- Indexes for table `tbl_rider`
--
ALTER TABLE `tbl_rider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_unit_category`
--
ALTER TABLE `tbl_unit_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bridge_category` (`category_id`),
  ADD KEY `fk_bridge_unit` (`unit_item_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_address_user` (`user_id`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_actors`
--
ALTER TABLE `tbl_actors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_actor_movies`
--
ALTER TABLE `tbl_actor_movies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_items_available_units`
--
ALTER TABLE `tbl_items_available_units`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_product_favorite`
--
ALTER TABLE `tbl_product_favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_product_unit`
--
ALTER TABLE `tbl_product_unit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_rider`
--
ALTER TABLE `tbl_rider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_unit_category`
--
ALTER TABLE `tbl_unit_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `fk_cart_unit` FOREIGN KEY (`item_unit_id`) REFERENCES `tbl_items_available_units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `tbl_vendor` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_discount_id` FOREIGN KEY (`discount_id`) REFERENCES `tbl_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`item_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_items_available_units`
--
ALTER TABLE `tbl_items_available_units`
  ADD CONSTRAINT `fk_available_product` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_available_unit` FOREIGN KEY (`unit_id`) REFERENCES `tbl_product_unit` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_rider_id` FOREIGN KEY (`rider_id`) REFERENCES `tbl_rider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `fk_details_order` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_details_unit` FOREIGN KEY (`item_unit_id`) REFERENCES `tbl_items_available_units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_details_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `tbl_vendor` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `tbl_vendor` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_product_favorite`
--
ALTER TABLE `tbl_product_favorite`
  ADD CONSTRAINT `fk_favorite_product` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_favorite_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  ADD CONSTRAINT `fk_image_product` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD CONSTRAINT `fk_rating_item` FOREIGN KEY (`item_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rating_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_unit_category`
--
ALTER TABLE `tbl_unit_category`
  ADD CONSTRAINT `fk_bridge_category` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_bridge_unit` FOREIGN KEY (`unit_item_id`) REFERENCES `tbl_product_unit` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  ADD CONSTRAINT `fk_address_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
