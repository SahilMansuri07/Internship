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
-- Database: `figma_pizzahut`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `delivery_type` enum('free','paid') DEFAULT NULL,
  `km_wise_charges` decimal(10,2) DEFAULT NULL,
  `lat` varchar(64) DEFAULT NULL,
  `log` varchar(64) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `email`, `password`, `delivery_type`, `km_wise_charges`, `lat`, `log`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'adminpo', 'free', 0.00, '23.104212685831037', '72.54978514165812', 1, 0, '2020-02-12 14:24:12', '2023-02-23 14:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) NOT NULL,
  `itemvariants_id` bigint(20) DEFAULT NULL,
  `itemoffers_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `user_id`, `item_id`, `itemvariants_id`, `itemoffers_id`, `price`, `quantity`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, 199.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 1, 6, 12, NULL, 60.00, 2, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 2, 2, 4, NULL, 450.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 2, 7, 14, NULL, 99.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 1, 4, 8, NULL, 599.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 2, 10, 19, NULL, 349.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 1, 5, 10, NULL, 149.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 2, 1, 2, NULL, 350.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 1, 9, 18, NULL, 249.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 2, 10, 20, NULL, 520.00, 1, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `customizeitem_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id`, `cart_id`, `customizeitem_id`, `price`, `quantity`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 60.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 3, 7, 99.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 5, 15, 80.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 6, 11, 50.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 8, 1, 60.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 10, 7, 99.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 1, 3, 40.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 3, 4, 40.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 5, 9, 25.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 8, 10, 40.00, 1, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `name`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Veg', 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'Non-Veg', 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'Beverages', 1, 0, '2026-02-17 15:16:25', NULL),
(4, 'Sides', 1, 0, '2026-02-17 15:16:25', NULL),
(5, 'Desserts', 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredients_item`
--

CREATE TABLE `tbl_ingredients_item` (
  `id` bigint(20) NOT NULL,
  `itemtype_id` bigint(20) DEFAULT NULL,
  `customizetype_id` bigint(20) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_ingredients_item`
--

INSERT INTO `tbl_ingredients_item` (`id`, `itemtype_id`, `customizetype_id`, `name`, `image_url`, `price`, `is_available`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mozzarella', NULL, 60.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 1, 1, 'Cheddar', NULL, 70.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 1, 2, 'Olives', NULL, 40.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 1, 2, 'Jalapenos', NULL, 40.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 1, 2, 'Onion', NULL, 30.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 1, 2, 'Capsicum', NULL, 30.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 1, 3, 'Cheese Burst', NULL, 99.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 1, 3, 'Thin Crust', NULL, 50.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 1, 5, 'Cheesy Dip', NULL, 25.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 1, 5, 'Jalapeno Dip', NULL, 25.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(11, 1, 2, 'Paneer', NULL, 50.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(12, 1, 2, 'Mushroom', NULL, 45.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(13, 1, 4, 'Peri Peri', NULL, 20.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(14, 1, 4, 'BBQ Sauce', NULL, 20.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(15, 1, 8, 'Grilled Chicken', NULL, 80.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(16, 1, 8, 'Chicken Keema', NULL, 70.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(17, 1, 2, 'Sweet Corn', NULL, 35.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(18, 1, 2, 'Tomato', NULL, 25.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(19, 1, 2, 'Red Paprika', NULL, 40.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(20, 1, 2, 'Pineapple', NULL, 50.00, 1, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredients_type`
--

CREATE TABLE `tbl_ingredients_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_ingredients_type`
--

INSERT INTO `tbl_ingredients_type` (`id`, `name`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Extra Cheese', 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'Toppings', 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'Crust', 1, 0, '2026-02-17 15:16:25', NULL),
(4, 'Sauce', 1, 0, '2026-02-17 15:16:25', NULL),
(5, 'Dips', 1, 0, '2026-02-17 15:16:25', NULL),
(6, 'Spice', 1, 0, '2026-02-17 15:16:25', NULL),
(7, 'Veggie Mix', 1, 0, '2026-02-17 15:16:25', NULL),
(8, 'Meat Mix', 1, 0, '2026-02-17 15:16:25', NULL),
(9, 'Packaging', 1, 0, '2026-02-17 15:16:25', NULL),
(10, 'Ice Level', 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_image`
--

CREATE TABLE `tbl_item_image` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `media_url` varchar(256) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_item_image`
--

INSERT INTO `tbl_item_image` (`id`, `item_id`, `media_url`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'img1.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(2, 2, 'img2.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(3, 3, 'img3.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(4, 4, 'img4.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(5, 5, 'img5.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(6, 6, 'img6.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(7, 7, 'img7.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(8, 8, 'img8.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(9, 9, 'img9.jpg', 1, 0, '2026-02-17 15:16:25', NULL),
(10, 10, 'img10.jpg', 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_offers`
--

CREATE TABLE `tbl_item_offers` (
  `id` bigint(20) NOT NULL,
  `offer_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `max_order` decimal(10,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_item_offers`
--

INSERT INTO `tbl_item_offers` (`id`, `offer_id`, `item_id`, `max_order`, `start_date`, `end_date`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(2, 2, 2, 2.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(3, 3, 4, 1.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(4, 5, 9, 1.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(5, 6, 3, 5.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(6, 7, 10, 1.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(7, 8, 5, 2.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(8, 1, 8, 1.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(9, 2, 7, 3.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL),
(10, 10, 6, 10.00, '2024-01-01 00:00:00', '2024-12-31 00:00:00', 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_types`
--

CREATE TABLE `tbl_item_types` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_item_types`
--

INSERT INTO `tbl_item_types` (`id`, `name`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'Drink', 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'Snack', 1, 0, '2026-02-17 15:16:25', NULL),
(4, 'Cake', 1, 0, '2026-02-17 15:16:25', NULL),
(5, 'Bread', 1, 0, '2026-02-17 15:16:25', NULL),
(6, 'Wrap', 1, 0, '2026-02-17 15:16:25', NULL),
(7, 'Salad', 1, 0, '2026-02-17 15:16:25', NULL),
(8, 'Combo', 1, 0, '2026-02-17 15:16:25', NULL),
(9, 'Pasta Box', 1, 0, '2026-02-17 15:16:25', NULL),
(10, 'Wings', 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_variants`
--

CREATE TABLE `tbl_item_variants` (
  `id` bigint(20) NOT NULL,
  `variant_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_item_variants`
--

INSERT INTO `tbl_item_variants` (`id`, `variant_id`, `item_id`, `price`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 199.00, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 2, 1, 350.00, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 1, 2, 299.00, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 2, 2, 450.00, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 3, 2, 600.00, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 1, 3, 499.00, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 2, 3, 699.00, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 1, 4, 599.00, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 2, 4, 850.00, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 1, 5, 149.00, 1, 0, '2026-02-17 15:16:25', NULL),
(11, 2, 5, 199.00, 1, 0, '2026-02-17 15:16:25', NULL),
(12, 1, 6, 60.00, 1, 0, '2026-02-17 15:16:25', NULL),
(13, 2, 6, 90.00, 1, 0, '2026-02-17 15:16:25', NULL),
(14, 1, 7, 99.00, 1, 0, '2026-02-17 15:16:25', NULL),
(15, 2, 7, 150.00, 1, 0, '2026-02-17 15:16:25', NULL),
(16, 1, 8, 179.00, 1, 0, '2026-02-17 15:16:25', NULL),
(17, 2, 8, 280.00, 1, 0, '2026-02-17 15:16:25', NULL),
(18, 1, 9, 249.00, 1, 0, '2026-02-17 15:16:25', NULL),
(19, 1, 10, 349.00, 1, 0, '2026-02-17 15:16:25', NULL),
(20, 2, 10, 520.00, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`id`, `name`, `value`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'WELCOME50', 50.00, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'PIZZA20', 20.00, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'WEEKEND', 100.00, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 'FREEBIE', 0.00, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 'MEALDEAL', 150.00, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 'PARTY10', 10.00, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 'LUNCH', 40.00, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 'NIGHTOWL', 60.00, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 'BOGO', 0.00, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 'SAVE5', 5.00, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL,
  `order_number` varchar(128) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `address_id` bigint(20) NOT NULL,
  `offeritem_id` bigint(20) DEFAULT NULL,
  `status` enum('op','p','b','dr','d') DEFAULT NULL COMMENT 'op=orderplaced      p=preparing   b=baking     dr=driver     d=delivered',
  `payment_mode` enum('o','n','c') DEFAULT NULL COMMENT '0 = online      n=netbanking       c=cod',
  `tax_value` decimal(10,2) DEFAULT NULL,
  `final_price` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `order_number`, `user_id`, `address_id`, `offeritem_id`, `status`, `payment_mode`, `tax_value`, `final_price`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'ORD01', 1, 1, NULL, 'd', 'o', 10.00, 450.00, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'ORD02', 1, 1, NULL, 'd', 'c', 15.00, 600.00, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'ORD03', 2, 2, NULL, 'd', 'n', 8.00, 300.00, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 'ORD04', 2, 2, NULL, 'd', 'o', 12.00, 500.00, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 'ORD05', 1, 1, NULL, 'p', 'c', 20.00, 800.00, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 'ORD06', 2, 2, NULL, 'd', 'o', 5.00, 200.00, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 'ORD07', 1, 1, NULL, 'b', 'n', 10.00, 400.00, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 'ORD08', 2, 2, NULL, 'dr', 'c', 14.00, 550.00, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 'ORD09', 1, 1, NULL, 'd', 'o', 9.00, 380.00, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 'ORD10', 2, 2, NULL, 'd', 'n', 11.00, 420.00, 1, 0, '2026-02-17 15:16:25', NULL),
(11, 'ORD11', 1, 1, 1, 'd', 'o', 5.00, 555.00, 1, 0, '2026-02-17 18:25:15', '2026-02-17 18:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `itemvariants_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `order_id`, `itemvariants_id`, `price`, `quantity`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 199.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 1, 12, 60.00, 2, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 2, 4, 450.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 3, 11, 199.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 4, 7, 699.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 5, 8, 599.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 5, 13, 90.00, 2, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 6, 14, 99.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 7, 19, 349.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 8, 2, 350.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(11, 9, 15, 150.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(12, 10, 3, 299.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(13, 1, 5, 600.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(14, 2, 10, 149.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(15, 3, 1, 199.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(16, 4, 18, 249.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(17, 5, 20, 520.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(18, 6, 12, 60.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(19, 7, 1, 199.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(20, 8, 5, 600.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(21, 11, 2, 350.00, 1, 1, 0, '2026-02-17 18:27:33', '2026-02-17 18:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_extra`
--

CREATE TABLE `tbl_order_extra` (
  `id` bigint(20) NOT NULL,
  `orderdetail_id` bigint(20) DEFAULT NULL,
  `customizeitem_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_extra`
--

INSERT INTO `tbl_order_extra` (`id`, `orderdetail_id`, `customizeitem_id`, `price`, `quantity`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 60.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(2, 1, 3, 40.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(3, 3, 7, 99.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(4, 5, 15, 80.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(5, 6, 1, 60.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(6, 9, 8, 50.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(7, 10, 1, 60.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(8, 12, 7, 99.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(9, 13, 2, 70.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(10, 15, 3, 40.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(11, 1, 5, 30.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(12, 3, 6, 30.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(13, 5, 9, 25.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(14, 6, 10, 25.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(15, 9, 11, 50.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(16, 10, 12, 45.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(17, 12, 13, 20.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(18, 13, 14, 20.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(19, 15, 15, 80.00, 1, 1, 0, '2026-02-17 15:16:26', NULL),
(20, 17, 16, 70.00, 1, 1, 0, '2026-02-17 15:16:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` bigint(20) NOT NULL,
  `itemtypes_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `kcal` varchar(16) DEFAULT NULL,
  `preparation_time` time DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `current_price` decimal(10,2) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `itemtypes_id`, `category_id`, `name`, `description`, `kcal`, `preparation_time`, `price`, `current_price`, `is_available`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Margherita', 'Classic Cheese', '250', NULL, 199.00, 199.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 1, 1, 'Farmhouse', 'Mixed Veggies', '300', NULL, 299.00, 299.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 1, 2, 'Pepperoni', 'Spicy Pork Pepperoni', '400', NULL, 499.00, 499.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 1, 2, 'Chicken Dominator', 'Heavy Chicken Toppings', '450', NULL, 599.00, 599.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 5, 4, 'Garlic Bread', 'Stuffed with corn', '200', NULL, 149.00, 149.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 2, 3, 'Pepsi', '500ml Cold Drink', '150', NULL, 60.00, 60.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 4, 5, 'Choco Lava', 'Molten Chocolate', '350', NULL, 99.00, 99.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 9, 1, 'White Pasta', 'Creamy Mushroom', '400', NULL, 179.00, 179.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 10, 2, 'BBQ Wings', '6 Pcs Wings', '500', NULL, 249.00, 249.00, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 1, 1, 'Peppy Paneer', 'Paneer and Capsicum', '320', NULL, 349.00, 349.00, 1, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `rating_value` decimal(2,1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `item_id`, `user_id`, `rating_value`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5.0, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 2, 2, 4.0, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 3, 1, 4.5, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 4, 2, 3.5, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 5, 1, 5.0, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 6, 2, 4.0, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 7, 1, 4.5, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 8, 2, 4.0, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 9, 1, 3.0, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 10, 2, 5.0, 1, 0, '2026-02-17 15:16:25', NULL),
(11, 7, 1, 5.0, 1, 0, '2026-02-17 19:18:28', '2026-02-17 19:18:28'),
(12, 9, 1, 4.0, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rider`
--

CREATE TABLE `tbl_rider` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `mobile_no` varchar(16) DEFAULT NULL,
  `vehicle_no` varchar(128) DEFAULT NULL,
  `profile_pic` varchar(256) DEFAULT NULL,
  `lat` varchar(16) DEFAULT NULL,
  `log` varchar(16) DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_rider`
--

INSERT INTO `tbl_rider` (`id`, `name`, `mobile_no`, `vehicle_no`, `profile_pic`, `lat`, `log`, `is_online`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Mike', '90001', 'V-001', NULL, '23.022505500000', '72.571400000000', 1, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'John', '90002', 'V-002', NULL, '23.045612300000', '72.582500000000', 1, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'Sam', '90003', 'V-003', NULL, '23.089023400000', '72.593600000000', 1, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 'Will', '90004', 'V-004', NULL, '23.123456700000', '72.604700000000', 1, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 'Dave', '90005', 'V-005', NULL, '23.567890100000', '72.615800000000', 0, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 'Alex', '90006', 'V-006', NULL, '23.901234500000', '72.626900000000', 1, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 'Pete', '90007', 'V-007', NULL, '23.234567800000', '72.637000000000', 1, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 'Ryan', '90008', 'V-008', NULL, '23.678901200000', '72.648100000000', 0, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 'Toby', '90009', 'V-009', NULL, '23.011223300000', '72.659200000000', 1, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 'Leo', '90010', 'V-010', NULL, '23.445566700000', '72.660300000000', 1, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riderorder`
--

CREATE TABLE `tbl_riderorder` (
  `id` bigint(20) NOT NULL,
  `rider_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `status` enum('delivered','cancelled') DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `payment_mode` enum('c','n','o') NOT NULL,
  `tips_amount` decimal(10,2) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_riderorder`
--

INSERT INTO `tbl_riderorder` (`id`, `rider_id`, `order_id`, `status`, `price`, `payment_mode`, `tips_amount`, `rating`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'delivered', 50.00, 'o', 10.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 2, 2, 'delivered', 50.00, 'c', 0.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 3, 3, 'delivered', 50.00, 'n', 20.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 4, 4, 'delivered', 50.00, 'o', 5.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 5, 5, 'cancelled', 0.00, 'c', 0.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 1, 6, NULL, 50.00, 'o', 10.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 7, 7, 'delivered', 50.00, 'n', 15.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 8, 8, 'delivered', 50.00, 'o', 0.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 9, 9, 'delivered', 50.00, 'c', 10.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 10, 10, 'delivered', 50.00, 'n', 20.00, NULL, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riderotp`
--

CREATE TABLE `tbl_riderotp` (
  `id` bigint(20) NOT NULL,
  `riderorder_id` bigint(20) DEFAULT NULL,
  `otp` bigint(20) DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_riderotp`
--

INSERT INTO `tbl_riderotp` (`id`, `riderorder_id`, `otp`, `expire_time`, `is_verified`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1234, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 2, 2345, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 3, 3456, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 4, 4567, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 5, 5678, NULL, 0, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 6, 6789, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 7, 7890, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 8, 8901, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 9, 9012, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 10, 1122, NULL, 1, 1, 0, '2026-02-17 15:16:25', NULL),
(11, 6, 8596, NULL, 1, 1, 0, '2026-02-17 18:38:33', '2026-02-17 18:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `id` bigint(20) NOT NULL,
  `tax_type` varchar(128) DEFAULT NULL,
  `tax_value` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`id`, `tax_type`, `tax_value`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'GST', 5.00, 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'VAT', 12.00, 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'Service Tax', 2.50, 1, 0, '2026-02-17 15:16:25', NULL),
(4, 'Cess', 1.00, 1, 0, '2026-02-17 15:16:25', NULL),
(5, 'Delivery Tax', 2.00, 1, 0, '2026-02-17 15:16:25', NULL),
(6, 'Luxury Tax', 10.00, 1, 0, '2026-02-17 15:16:25', NULL),
(7, 'Local Tax', 3.00, 1, 0, '2026-02-17 15:16:25', NULL),
(8, 'State Tax', 4.50, 1, 0, '2026-02-17 15:16:25', NULL),
(9, 'Central Tax', 4.50, 1, 0, '2026-02-17 15:16:25', NULL),
(10, 'Misc Tax', 0.50, 1, 0, '2026-02-17 15:16:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `social_id` varchar(256) DEFAULT NULL,
  `login_type` enum('m','a','f','g') DEFAULT NULL COMMENT 'm=manual\r\na=apple\r\nf=facebook\r\ng=google\r\n',
  `lat` varchar(64) DEFAULT NULL,
  `log` varchar(64) DEFAULT NULL,
  `status` enum('active','inactive','blocked') DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `social_id`, `login_type`, `lat`, `log`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'purvil', 'pm@7485', 'pm#52', NULL, 'm', '23.114221026878077', '72.54040895878074', 'active', 0, '2025-02-14 14:30:17', '2026-02-17 14:31:32'),
(2, 'raj', 'raj@gmail.com', 'rajpp', 'appl_id_9988776655\r\n', 'a', '23.10249029191431', '72.54348883704768', 'active', 0, '2026-01-15 14:32:20', NULL),
(3, 'sahil', 'sahil@gmail.com', 'sahil...', NULL, 'm', '23.022505500000', '72.571400000000', 'active', 0, '2026-02-17 15:34:02', '2026-02-17 15:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_useraddress`
--

CREATE TABLE `tbl_useraddress` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address_label` varchar(64) DEFAULT NULL,
  `location_type` enum('w','h','o') DEFAULT NULL COMMENT 'w=work\r\nh=home\r\no=others',
  `lat` varchar(64) DEFAULT NULL,
  `log` varchar(64) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_useraddress`
--

INSERT INTO `tbl_useraddress` (`id`, `user_id`, `address`, `address_label`, `location_type`, `lat`, `log`, `is_default`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'vastrapur', 'home', 'h', '23.04007047917185', '72.53136397724994', 1, 1, 0, '2026-02-17 14:37:20', '2026-02-17 14:37:20'),
(2, 2, 'work', 'first work', 'w', '23.04007047917185', '72.53136397724994', 1, 1, 0, '2026-02-17 14:37:30', '2026-02-17 14:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_variants`
--

CREATE TABLE `tbl_variants` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_variants`
--

INSERT INTO `tbl_variants` (`id`, `name`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Regular', 1, 0, '2026-02-17 15:16:25', NULL),
(2, 'Medium', 1, 0, '2026-02-17 15:16:25', NULL),
(3, 'Large', 1, 0, '2026-02-17 15:16:25', NULL),
(4, '6-inch', 1, 0, '2026-02-17 15:16:25', NULL),
(5, '9-inch', 1, 0, '2026-02-17 15:16:25', NULL),
(6, '12-inch', 1, 0, '2026-02-17 15:16:25', NULL),
(7, 'Single Serv', 1, 0, '2026-02-17 15:16:25', NULL),
(8, 'Double Serv', 1, 0, '2026-02-17 15:16:25', NULL),
(9, 'Glass', 1, 0, '2026-02-17 15:16:25', NULL),
(10, 'Bottle', 1, 0, '2026-02-17 15:16:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_user` (`user_id`),
  ADD KEY `fk_cart_variant` (`itemvariants_id`),
  ADD KEY `fk_cart_offer` (`itemoffers_id`),
  ADD KEY `iiiiiii` (`item_id`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cartextra_cart` (`cart_id`),
  ADD KEY `fk_cartextra_cust` (`customizeitem_id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredients_item`
--
ALTER TABLE `tbl_ingredients_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_custitem_type` (`itemtype_id`),
  ADD KEY `fk_custitem_group` (`customizetype_id`);

--
-- Indexes for table `tbl_ingredients_type`
--
ALTER TABLE `tbl_ingredients_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item_image`
--
ALTER TABLE `tbl_item_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_itemimage_item` (`item_id`);

--
-- Indexes for table `tbl_item_offers`
--
ALTER TABLE `tbl_item_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_itemoffers_offer` (`offer_id`),
  ADD KEY `fk_itemoffers_item` (`item_id`);

--
-- Indexes for table `tbl_item_types`
--
ALTER TABLE `tbl_item_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item_variants`
--
ALTER TABLE `tbl_item_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_itemvariants_variant` (`variant_id`),
  ADD KEY `fk_itemvariants_item` (`item_id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_user` (`user_id`),
  ADD KEY `addres` (`address_id`);

--
-- Indexes for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderdetails_order` (`order_id`),
  ADD KEY `fk_orderdetails_variant` (`itemvariants_id`);

--
-- Indexes for table `tbl_order_extra`
--
ALTER TABLE `tbl_order_extra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderextra_detail` (`orderdetail_id`),
  ADD KEY `fk_orderextra_cust` (`customizeitem_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_items_type` (`itemtypes_id`),
  ADD KEY `fk_items_category` (`category_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_item` (`item_id`),
  ADD KEY `fk_rating_user` (`user_id`);

--
-- Indexes for table `tbl_rider`
--
ALTER TABLE `tbl_rider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_riderorder`
--
ALTER TABLE `tbl_riderorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_riderorder_rider` (`rider_id`),
  ADD KEY `fk_riderorder_main` (`order_id`);

--
-- Indexes for table `tbl_riderotp`
--
ALTER TABLE `tbl_riderotp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_riderotp_order` (`riderorder_id`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `password` (`password`),
  ADD KEY `lat` (`lat`),
  ADD KEY `log` (`log`),
  ADD KEY `social_id` (`social_id`);

--
-- Indexes for table `tbl_useraddress`
--
ALTER TABLE `tbl_useraddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_useraddress_user` (`user_id`);

--
-- Indexes for table `tbl_variants`
--
ALTER TABLE `tbl_variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_ingredients_item`
--
ALTER TABLE `tbl_ingredients_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_ingredients_type`
--
ALTER TABLE `tbl_ingredients_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_item_image`
--
ALTER TABLE `tbl_item_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_item_offers`
--
ALTER TABLE `tbl_item_offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_item_types`
--
ALTER TABLE `tbl_item_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_item_variants`
--
ALTER TABLE `tbl_item_variants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_order_extra`
--
ALTER TABLE `tbl_order_extra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_rider`
--
ALTER TABLE `tbl_rider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_riderorder`
--
ALTER TABLE `tbl_riderorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_riderotp`
--
ALTER TABLE `tbl_riderotp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_useraddress`
--
ALTER TABLE `tbl_useraddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_variants`
--
ALTER TABLE `tbl_variants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `fk_cart_offer` FOREIGN KEY (`itemoffers_id`) REFERENCES `tbl_item_offers` (`id`),
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_cart_variant` FOREIGN KEY (`itemvariants_id`) REFERENCES `tbl_item_variants` (`id`),
  ADD CONSTRAINT `iiiiiii` FOREIGN KEY (`item_id`) REFERENCES `tbl_products` (`id`);

--
-- Constraints for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD CONSTRAINT `fk_cartextra_cart` FOREIGN KEY (`cart_id`) REFERENCES `tbl_cart` (`id`),
  ADD CONSTRAINT `fk_cartextra_cust` FOREIGN KEY (`customizeitem_id`) REFERENCES `tbl_ingredients_item` (`id`);

--
-- Constraints for table `tbl_ingredients_item`
--
ALTER TABLE `tbl_ingredients_item`
  ADD CONSTRAINT `fk_custitem_group` FOREIGN KEY (`customizetype_id`) REFERENCES `tbl_ingredients_type` (`id`),
  ADD CONSTRAINT `fk_custitem_type` FOREIGN KEY (`itemtype_id`) REFERENCES `tbl_item_types` (`id`);

--
-- Constraints for table `tbl_item_image`
--
ALTER TABLE `tbl_item_image`
  ADD CONSTRAINT `fk_itemimage_item` FOREIGN KEY (`item_id`) REFERENCES `tbl_products` (`id`);

--
-- Constraints for table `tbl_item_offers`
--
ALTER TABLE `tbl_item_offers`
  ADD CONSTRAINT `fk_itemoffers_item` FOREIGN KEY (`item_id`) REFERENCES `tbl_products` (`id`),
  ADD CONSTRAINT `fk_itemoffers_offer` FOREIGN KEY (`offer_id`) REFERENCES `tbl_offers` (`id`);

--
-- Constraints for table `tbl_item_variants`
--
ALTER TABLE `tbl_item_variants`
  ADD CONSTRAINT `fk_itemvariants_item` FOREIGN KEY (`item_id`) REFERENCES `tbl_products` (`id`),
  ADD CONSTRAINT `fk_itemvariants_variant` FOREIGN KEY (`variant_id`) REFERENCES `tbl_variants` (`id`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `addres` FOREIGN KEY (`address_id`) REFERENCES `tbl_useraddress` (`id`),
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD CONSTRAINT `fk_orderdetails_order` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`),
  ADD CONSTRAINT `fk_orderdetails_variant` FOREIGN KEY (`itemvariants_id`) REFERENCES `tbl_item_variants` (`id`);

--
-- Constraints for table `tbl_order_extra`
--
ALTER TABLE `tbl_order_extra`
  ADD CONSTRAINT `fk_orderextra_cust` FOREIGN KEY (`customizeitem_id`) REFERENCES `tbl_ingredients_item` (`id`),
  ADD CONSTRAINT `fk_orderextra_detail` FOREIGN KEY (`orderdetail_id`) REFERENCES `tbl_orderdetails` (`id`);

--
-- Constraints for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `fk_items_category` FOREIGN KEY (`category_id`) REFERENCES `tbl_categories` (`id`),
  ADD CONSTRAINT `fk_items_type` FOREIGN KEY (`itemtypes_id`) REFERENCES `tbl_item_types` (`id`);

--
-- Constraints for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD CONSTRAINT `fk_rating_item` FOREIGN KEY (`item_id`) REFERENCES `tbl_products` (`id`),
  ADD CONSTRAINT `fk_rating_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_riderorder`
--
ALTER TABLE `tbl_riderorder`
  ADD CONSTRAINT `fk_riderorder_main` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`),
  ADD CONSTRAINT `fk_riderorder_rider` FOREIGN KEY (`rider_id`) REFERENCES `tbl_rider` (`id`);

--
-- Constraints for table `tbl_riderotp`
--
ALTER TABLE `tbl_riderotp`
  ADD CONSTRAINT `fk_riderotp_order` FOREIGN KEY (`riderorder_id`) REFERENCES `tbl_riderorder` (`id`);

--
-- Constraints for table `tbl_useraddress`
--
ALTER TABLE `tbl_useraddress`
  ADD CONSTRAINT `fk_useraddress_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
