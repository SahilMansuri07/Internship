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
-- Database: `figma_busbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aminities`
--

CREATE TABLE `tbl_aminities` (
  `id` bigint(20) NOT NULL,
  `name` varchar(36) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_aminities`
--

INSERT INTO `tbl_aminities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'WIFI', '2026-02-17 14:40:36', '2026-02-17 14:40:36'),
(2, 'FAN', '2026-02-17 14:40:36', '2026-02-17 14:40:36'),
(3, 'AC', '2026-02-17 14:40:36', '2026-02-17 14:40:36'),
(4, 'NON/AC', '2026-02-17 14:40:36', '2026-02-17 14:40:36'),
(5, 'ChargingPoints', '2026-02-17 14:41:01', '2026-02-17 14:41:01'),
(6, 'PA', '2026-02-17 14:41:01', '2026-02-17 14:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_details`
--

CREATE TABLE `tbl_booking_details` (
  `id` bigint(20) NOT NULL,
  `seat_id` bigint(20) NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `source_p_id` bigint(20) NOT NULL,
  `destination_p_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking_details`
--

INSERT INTO `tbl_booking_details` (`id`, `seat_id`, `booking_id`, `source_p_id`, `destination_p_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 11, 5227.20, '2026-02-17 19:25:16', '2026-02-18 12:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `bus_number` varchar(64) NOT NULL,
  `latitude` varchar(16) NOT NULL,
  `longitude` varchar(16) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`id`, `name`, `driver_id`, `bus_number`, `latitude`, `longitude`, `vendor_id`, `capacity`, `created_at`, `update_at`) VALUES
(1, 'Rajdhani Express', 2, 'GJ01AB1234', '23.022505000000', '72.571362000000', 1, 40, '2026-02-17 14:38:53', '2026-02-17 14:38:53'),
(2, 'Gujarat Travels Volvo', 3, 'GJ01CD5678', '23.025812345678', '72.580945612345', 2, 45, '2026-02-17 14:38:53', '2026-02-17 14:38:53'),
(3, 'Shree Hari Sleeper', 4, 'GJ18EF4321', '23.030456789012', '72.590123456789', 1, 36, '2026-02-17 14:38:53', '2026-02-17 14:38:53'),
(4, 'Mahadev Travels AC', 5, 'GJ01GH8765', '23.018934567890', '72.550987654321', 2, 50, '2026-02-17 14:38:53', '2026-02-17 14:51:45'),
(5, 'Patel Express', 6, 'GJ27IJ1111', '23.040112233445', '72.600556677889', 2, 42, '2026-02-17 14:38:53', '2026-02-17 14:38:53'),
(6, 'Navkar Non-AC', 7, 'GJ01KL2222', '23.035667788990', '72.565443322110', 1, 38, '2026-02-17 14:38:53', '2026-02-17 14:51:48'),
(7, 'Somnath Luxury Coach', 8, 'GJ05MN3333', '23.015998877665', '72.530112244668', 2, 44, '2026-02-17 14:38:53', '2026-02-17 14:51:51'),
(8, 'Dwarka Sleeper Deluxe', 9, 'GJ01OP4444', '23.028776655443', '72.575889900112', 1, 34, '2026-02-17 14:38:53', '2026-02-17 14:51:54'),
(9, 'Kutch Express', 10, 'GJ12QR5555', '23.020334455667', '72.560778899001', 1, 48, '2026-02-17 14:38:53', '2026-02-17 14:51:58'),
(10, 'Surat Ahmedabad Intercity', 11, 'GJ01ST6666', '23.026445566778', '72.585334455667', 2, 46, '2026-02-17 14:38:53', '2026-02-17 14:51:56'),
(11, 'Surat Ahmedabad Intercity', 1, 'GJ01ST6666', '23.0376883121221', '72.5504632099424', 1, 41, '2026-02-18 11:38:47', '2026-02-18 11:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_aminities`
--

CREATE TABLE `tbl_bus_aminities` (
  `id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `aminities_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bus_aminities`
--

INSERT INTO `tbl_bus_aminities` (`id`, `bus_id`, `aminities_id`, `created_at`) VALUES
(1, 1, 1, '2026-02-17 14:44:16'),
(2, 1, 2, '2026-02-17 14:44:16'),
(3, 4, 3, '2026-02-17 14:44:16'),
(4, 1, 4, '2026-02-17 14:44:16'),
(5, 8, 1, '2026-02-17 14:44:16'),
(6, 8, 2, '2026-02-17 14:44:16'),
(7, 8, 3, '2026-02-17 14:44:16'),
(8, 8, 4, '2026-02-17 14:44:16'),
(9, 9, 2, '2026-02-17 14:44:16'),
(10, 9, 4, '2026-02-17 14:44:16'),
(11, 9, 3, '2026-02-17 14:44:16'),
(12, 4, 1, '2026-02-17 14:44:16'),
(13, 4, 4, '2026-02-17 14:44:16'),
(14, 5, 1, '2026-02-17 14:44:16'),
(15, 5, 2, '2026-02-17 14:44:56'),
(16, 5, 5, '2026-02-17 14:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_fair`
--

CREATE TABLE `tbl_bus_fair` (
  `id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `source_p_id` bigint(20) NOT NULL,
  `destination_p_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `km_wise_charges` int(11) NOT NULL,
  `has_stop` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bus_fair`
--

INSERT INTO `tbl_bus_fair` (`id`, `bus_id`, `source_p_id`, `destination_p_id`, `price`, `km_wise_charges`, `has_stop`, `is_active`, `is_delete`, `created_at`, `update_at`) VALUES
(1, 1, 1, 11, 1485.00, 15, 1, 1, 0, '2026-02-17 17:44:53', '2026-02-17 18:52:59'),
(2, 8, 1, 11, 1820.00, 20, 1, 1, 0, '2026-02-17 17:44:53', '2026-02-17 18:53:38'),
(3, 9, 1, 11, 2100.00, 19, 1, 1, 0, '2026-02-17 17:45:16', '2026-02-17 18:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_images`
--

CREATE TABLE `tbl_bus_images` (
  `id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `image_url` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bus_images`
--

INSERT INTO `tbl_bus_images` (`id`, `bus_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'bus1.jpg', '2026-02-17 14:46:12', '2026-02-17 14:46:12'),
(2, 1, 'bus2.jpg', '2026-02-17 14:46:12', '2026-02-17 14:46:12'),
(3, 2, 'bus3.jpg', '2026-02-17 14:46:12', '2026-02-17 14:46:12'),
(4, 2, 'bus4.jpg', '2026-02-17 14:46:12', '2026-02-17 14:46:12'),
(5, 3, 'bus5.jpg', '2026-02-17 14:46:12', '2026-02-17 14:46:12'),
(6, 3, 'bus6.jpg', '2026-02-17 14:46:12', '2026-02-17 14:46:12'),
(7, 11, 'image11.jpg', '2026-02-18 11:41:29', '2026-02-18 11:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id` bigint(20) NOT NULL,
  `coupen_code` varchar(36) NOT NULL,
  `amount_type` enum('percentage','flat') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id`, `coupen_code`, `amount_type`, `amount`, `is_active`, `is_delete`, `created_at`, `update_at`) VALUES
(1, 'DISCOUNT123', 'flat', 120.00, 1, 0, '2026-02-17 19:30:53', '2026-02-17 19:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_platform`
--

CREATE TABLE `tbl_platform` (
  `id` bigint(20) NOT NULL,
  `name` varchar(36) NOT NULL,
  `city` varchar(36) NOT NULL,
  `latitude` varchar(16) NOT NULL,
  `longitude` varchar(16) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_platform`
--

INSERT INTO `tbl_platform` (`id`, `name`, `city`, `latitude`, `longitude`, `is_active`, `is_delete`, `created_at`, `update_at`) VALUES
(1, 'Geeta Mandir Bus Stand', 'Ahmedabad', '23.014500000000', '72.600700000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(2, 'Paldi Bus Stop', 'Ahmedabad', '23.012900000000', '72.562600000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(3, 'Naroda Patiya', 'Ahmedabad', '23.070800000000', '72.650400000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(4, 'Satellite Bus Stop', 'Ahmedabad', '23.027300000000', '72.510200000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(5, 'CTM Cross Road', 'Ahmedabad', '23.003800000000', '72.636900000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(6, 'Ranip Bus Stand', 'Ahmedabad', '23.083200000000', '72.572800000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(7, 'Iskcon Circle', 'Ahmedabad', '23.027000000000', '72.504000000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(8, 'Kalupur Railway Station', 'Ahmedabad', '23.026400000000', '72.601900000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(9, 'Sarkhej Bus Stop', 'Ahmedabad', '22.982600000000', '72.501100000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(10, 'Vastral Bus Stand', 'Ahmedabad', '23.004900000000', '72.653200000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(11, 'Central Bus Stand', 'Vadodara', '22.307200000000', '73.181200000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(12, 'Makarpura Bus Stop', 'Vadodara', '22.273900000000', '73.180400000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(13, 'GSRTC Bus Stand', 'Surat', '21.170200000000', '72.831100000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(14, 'Adajan Bus Stop', 'Surat', '21.204900000000', '72.789500000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(15, 'Rajkot Central Bus Stand', 'Rajkot', '22.303900000000', '70.802200000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(16, 'Bhavnagar Bus Terminal', 'Bhavnagar', '21.764500000000', '72.151900000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(17, 'Junagadh Bus Stand', 'Junagadh', '21.522200000000', '70.457900000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(18, 'Anand Bus Depot', 'Anand', '22.564500000000', '72.928900000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(19, 'Nadiad Bus Station', 'Nadiad', '22.693900000000', '72.861700000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19'),
(20, 'Mehsana Bus Stand', 'Mehsana', '23.588000000000', '72.369300000000', 1, 0, '2026-02-17 15:19:19', '2026-02-17 15:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `reviews` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `user_id`, `bus_id`, `rating`, `reviews`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4.5, 'VERY GOOD', 1, 0, '2026-02-17 15:55:04', '2026-02-17 15:55:04'),
(2, 4, 1, 3.5, 'NICE STAFF', 1, 0, '2026-02-17 15:55:04', '2026-02-17 15:55:04'),
(3, 1, 2, 2.0, 'BAD MANAGEMENT', 1, 0, '2026-02-17 15:55:04', '2026-02-17 15:55:04'),
(4, 5, 1, 4.0, 'VERY GOOD ', 1, 0, '2026-02-17 15:55:04', '2026-02-17 15:55:04'),
(5, 2, 2, 5.0, 'FIVE STAR', 1, 0, '2026-02-17 15:55:04', '2026-02-17 15:55:04'),
(6, 5, 2, 4.3, 'VERY GOOD', 1, 0, '2026-02-17 15:55:04', '2026-02-17 15:55:04'),
(7, 1, 3, 4.5, 'VERY GOOD', 1, 0, '2026-02-17 15:57:25', '2026-02-17 15:57:25'),
(8, 4, 4, 3.5, 'NICE STAFF', 1, 0, '2026-02-17 15:57:25', '2026-02-17 15:57:25'),
(9, 1, 3, 2.0, 'BAD MANAGEMENT', 1, 0, '2026-02-17 15:57:25', '2026-02-17 15:57:25'),
(10, 5, 4, 4.0, 'VERY GOOD ', 1, 0, '2026-02-17 15:57:25', '2026-02-17 15:57:25'),
(11, 2, 3, 5.0, 'FIVE STAR', 1, 0, '2026-02-17 15:57:25', '2026-02-17 15:57:25'),
(12, 5, 4, 4.3, 'VERY GOOD', 1, 0, '2026-02-17 15:57:25', '2026-02-17 15:57:25'),
(13, 1, 3, 4.5, 'VERY GOOD', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(14, 4, 4, 3.5, 'NICE STAFF', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(15, 1, 3, 2.0, 'BAD MANAGEMENT', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(16, 5, 4, 4.0, 'VERY GOOD ', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(17, 2, 3, 5.0, 'FIVE STAR', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(18, 5, 4, 4.3, 'VERY GOOD', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(19, 5, 5, 3.2, 'VERY GOOD', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(20, 5, 4, 4.1, 'VERY GOOD', 1, 0, '2026-02-17 15:57:34', '2026-02-17 15:57:34'),
(21, 1, 8, 4.5, 'VERY GOOD', 1, 0, '2026-02-17 17:04:30', '2026-02-17 17:04:30'),
(22, 4, 8, 3.5, 'NICE STAFF', 1, 0, '2026-02-17 17:04:30', '2026-02-17 17:04:30'),
(23, 1, 8, 2.0, 'BAD MANAGEMENT', 1, 0, '2026-02-17 17:04:30', '2026-02-17 17:04:30'),
(24, 5, 9, 4.0, 'VERY GOOD ', 1, 0, '2026-02-17 17:04:30', '2026-02-17 17:04:30'),
(25, 2, 9, 5.0, 'FIVE STAR', 1, 0, '2026-02-17 17:04:30', '2026-02-17 17:04:30'),
(26, 5, 9, 4.3, 'VERY GOOD', 1, 0, '2026-02-17 17:04:30', '2026-02-17 17:04:30'),
(27, 5, 9, 3.2, 'VERY GOOD', 1, 0, '2026-02-17 17:04:30', '2026-02-17 17:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routes`
--

CREATE TABLE `tbl_routes` (
  `id` bigint(20) NOT NULL,
  `source_p_id` bigint(20) NOT NULL,
  `destination_p_id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `departure_date` datetime NOT NULL,
  `arrival_date` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_routes`
--

INSERT INTO `tbl_routes` (`id`, `source_p_id`, `destination_p_id`, `bus_id`, `departure_date`, `arrival_date`, `status`, `created_at`, `update_at`) VALUES
(1, 1, 11, 1, '2026-02-20 08:00:00', '2026-02-20 10:30:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(2, 2, 13, 2, '2026-02-20 07:30:00', '2026-02-20 12:00:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(3, 3, 15, 3, '2026-02-20 09:00:00', '2026-02-20 13:30:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(4, 4, 16, 4, '2026-02-20 06:45:00', '2026-02-20 11:15:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(5, 5, 17, 5, '2026-02-20 10:00:00', '2026-02-20 16:30:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(6, 6, 18, 6, '2026-02-20 14:00:00', '2026-02-20 16:00:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(7, 7, 19, 7, '2026-02-20 15:30:00', '2026-02-20 17:00:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(8, 1, 11, 8, '2026-02-20 11:00:00', '2026-02-20 13:00:00', 'active', '2026-02-17 15:19:45', '2026-02-17 16:59:03'),
(9, 1, 11, 9, '2026-02-20 18:00:00', '2026-02-20 22:30:00', 'active', '2026-02-17 15:19:45', '2026-02-17 16:59:27'),
(10, 11, 2, 10, '2026-02-20 19:00:00', '2026-02-20 21:30:00', 'active', '2026-02-17 15:19:45', '2026-02-17 15:19:45'),
(11, 2, 9, 2, '2026-02-18 07:10:00', '2026-02-18 07:10:00', 'active', '2026-02-18 11:40:24', '2026-02-18 11:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_search_bus`
--

CREATE TABLE `tbl_search_bus` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `source_p_id` bigint(20) NOT NULL,
  `destination_p_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_search_bus`
--

INSERT INTO `tbl_search_bus` (`id`, `user_id`, `source_p_id`, `destination_p_id`, `is_active`, `is_delete`, `created_at`, `update_at`) VALUES
(1, 1, 14, 18, 1, 0, '2026-02-17 16:26:45', '2026-02-17 16:26:45'),
(2, 1, 5, 19, 1, 0, '2026-02-17 16:26:45', '2026-02-17 16:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seats`
--

CREATE TABLE `tbl_seats` (
  `id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `seat_type_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_seats`
--

INSERT INTO `tbl_seats` (`id`, `bus_id`, `seat_type_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(2, 1, 2, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(3, 1, 3, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(4, 1, 4, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(5, 1, 5, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(6, 1, 6, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(7, 1, 7, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(8, 1, 8, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(9, 1, 9, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(10, 1, 10, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(11, 1, 11, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(12, 1, 12, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(13, 1, 13, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(14, 1, 14, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(15, 1, 15, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(16, 1, 15, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(17, 1, 16, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(18, 1, 17, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(19, 1, 18, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(20, 1, 19, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(21, 1, 20, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(22, 1, 21, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(23, 1, 22, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(24, 1, 23, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(25, 1, 24, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(26, 1, 25, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(27, 1, 26, 1, 0, '2026-02-17 15:34:08', '2026-02-17 15:34:08'),
(28, 2, 1, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(29, 2, 2, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(30, 2, 3, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(31, 2, 4, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(32, 2, 5, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(33, 2, 6, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(34, 2, 7, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(35, 2, 8, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(36, 2, 9, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(37, 2, 10, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(38, 2, 11, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(39, 2, 12, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(40, 2, 13, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(41, 2, 14, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(42, 2, 15, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(43, 2, 15, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(44, 2, 16, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(45, 2, 17, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(46, 2, 18, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(47, 2, 19, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(48, 2, 20, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(49, 2, 21, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(50, 2, 22, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(51, 2, 23, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(52, 2, 24, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(53, 2, 25, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(54, 2, 26, 1, 0, '2026-02-17 15:52:16', '2026-02-17 15:52:16'),
(55, 3, 1, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(56, 3, 2, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(57, 3, 3, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(58, 3, 4, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(59, 3, 5, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(60, 3, 6, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(61, 3, 7, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(62, 3, 8, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(63, 3, 9, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(64, 3, 10, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(65, 3, 11, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(66, 3, 12, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(67, 3, 13, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(68, 3, 14, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(69, 3, 15, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(70, 3, 15, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(71, 3, 16, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(72, 3, 17, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(73, 3, 18, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(74, 3, 19, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(75, 3, 20, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(76, 3, 21, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(77, 3, 22, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(78, 3, 23, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(79, 3, 24, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(80, 3, 25, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16'),
(81, 3, 26, 1, 0, '2026-02-17 15:53:16', '2026-02-17 15:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seat_type`
--

CREATE TABLE `tbl_seat_type` (
  `id` bigint(20) NOT NULL,
  `seat_number` varchar(26) NOT NULL,
  `seat_type` enum('L','U') NOT NULL COMMENT 'L:Lower Dec , U:Upper Dec',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_seat_type`
--

INSERT INTO `tbl_seat_type` (`id`, `seat_number`, `seat_type`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, '1A', 'L', 1, 0, '2026-02-17 15:23:11', '2026-02-17 15:23:11'),
(2, '1B', 'L', 1, 0, '2026-02-17 15:23:11', '2026-02-17 15:23:11'),
(3, '1C', 'L', 1, 0, '2026-02-17 15:23:11', '2026-02-17 15:23:11'),
(4, '1D', 'L', 1, 0, '2026-02-17 15:23:11', '2026-02-17 15:23:11'),
(5, '2A', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(6, '2B', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(7, '2C', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(8, '2D', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(9, '3A', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(10, '3B', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(11, '3C', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(12, '3D', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(13, '4A', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(14, '4B', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(15, '4C', 'L', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(16, '5A', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(17, '5B', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(18, '5C', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(19, '5D', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(20, '6A', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(21, '6B', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(22, '6C', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:05'),
(23, '6D', 'U', 1, 0, '2026-02-17 15:26:05', '2026-02-17 15:26:29'),
(24, '7A', 'U', 1, 0, '2026-02-17 15:27:13', '2026-02-17 15:27:13'),
(25, '7B', 'U', 1, 0, '2026-02-17 15:27:13', '2026-02-17 15:27:13'),
(26, '7C', 'U', 1, 0, '2026-02-17 15:27:13', '2026-02-17 15:27:13'),
(27, '7D', 'U', 1, 0, '2026-02-17 15:27:13', '2026-02-17 15:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stops`
--

CREATE TABLE `tbl_stops` (
  `id` bigint(20) NOT NULL,
  `platform_id` bigint(20) NOT NULL,
  `route_id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `arrival_time` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_stops`
--

INSERT INTO `tbl_stops` (`id`, `platform_id`, `route_id`, `bus_id`, `arrival_time`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2026-02-20 08:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(2, 18, 1, 1, '2026-02-20 09:15:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(3, 11, 1, 1, '2026-02-20 10:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(4, 2, 2, 2, '2026-02-20 07:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(5, 11, 2, 2, '2026-02-20 09:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(6, 13, 2, 2, '2026-02-20 12:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(7, 3, 3, 3, '2026-02-20 09:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(8, 20, 3, 3, '2026-02-20 11:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(9, 15, 3, 3, '2026-02-20 13:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(10, 4, 4, 4, '2026-02-20 06:45:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(11, 19, 4, 4, '2026-02-20 08:45:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(12, 16, 4, 4, '2026-02-20 11:15:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(13, 5, 5, 5, '2026-02-20 10:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(14, 15, 5, 5, '2026-02-20 13:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(15, 17, 5, 5, '2026-02-20 16:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(16, 6, 6, 6, '2026-02-20 14:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(17, 19, 6, 6, '2026-02-20 15:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(18, 18, 6, 6, '2026-02-20 16:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(19, 7, 7, 7, '2026-02-20 15:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(20, 18, 7, 7, '2026-02-20 16:15:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(21, 19, 7, 7, '2026-02-20 17:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(22, 8, 8, 8, '2026-02-20 11:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(23, 6, 8, 8, '2026-02-20 12:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(24, 20, 8, 8, '2026-02-20 13:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(25, 13, 9, 9, '2026-02-20 18:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(26, 11, 9, 9, '2026-02-20 20:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(27, 1, 9, 9, '2026-02-20 22:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(28, 11, 10, 10, '2026-02-20 19:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(29, 18, 10, 10, '2026-02-20 20:00:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(30, 2, 10, 10, '2026-02-20 21:30:00', '2026-02-17 15:21:12', '2026-02-17 15:21:12'),
(31, 7, 1, 10, '2026-02-18 07:11:48', '2026-02-18 11:42:03', '2026-02-18 11:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`id`, `bus_id`, `amount`, `is_active`, `is_delete`) VALUES
(1, 1, 12, 1, 0),
(2, 1, 10, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tickets_booking`
--

CREATE TABLE `tbl_tickets_booking` (
  `id` bigint(20) NOT NULL,
  `booking_number` varchar(64) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `bus_id` bigint(20) NOT NULL,
  `routes_id` bigint(20) NOT NULL,
  `discount_id` bigint(20) NOT NULL,
  `payment_mode` enum('UPI','CARD','NetBanking') NOT NULL,
  `status` enum('confirmed','rejected','pending') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tickets_booking`
--

INSERT INTO `tbl_tickets_booking` (`id`, `booking_number`, `user_id`, `bus_id`, `routes_id`, `discount_id`, `payment_mode`, `status`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'TX-1245574', 1, 1, 1, 1, 'UPI', 'confirmed', 1, 0, '2026-02-17 19:30:57', '2026-02-17 19:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(36) NOT NULL,
  `contry_code` varchar(8) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('M','F','O') NOT NULL COMMENT 'M:Male , F:Female , O:others',
  `email` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `social_id` text NOT NULL,
  `login_type` enum('S','G','F','E') NOT NULL COMMENT 'S:simple , M:mannual , F:Facebook , E:Email',
  `latitude` varchar(16) NOT NULL,
  `longitude` varchar(16) NOT NULL,
  `profile_image` varchar(128) NOT NULL,
  `steps` enum('1','2','3','4') NOT NULL COMMENT '1:userDetails , 2:emailandpasswords , 3:profilePic , 4:isskips',
  `status` enum('active','inactive','deleted') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `contry_code`, `mobile`, `dob`, `gender`, `email`, `password`, `social_id`, `login_type`, `latitude`, `longitude`, `profile_image`, `steps`, `status`, `created_at`, `updated_at`) VALUES
(1, 'darsh', '+91', '9632587412', '2017-02-14', 'M', 'darsh@gmail.com', 'darsh123', '', 'S', '23.0376883121221', ' 72.584795485271', 'darsh.jpg', '3', 'active', '2026-02-17 14:17:08', '2026-02-17 14:17:08'),
(2, 'sahil', '+91', '9510447055', '2014-11-05', 'M', 'sahil@gmail.com', 'sahil@123', 'sahil.apps.googleusercontent.com', 'G', '23.0424273580638', '72.5504632099424', 'sahil.jpg', '3', 'active', '2026-02-17 14:24:18', '2026-02-17 14:24:18'),
(3, 'purvil', '+91', '9510551278', '2001-05-05', 'M', 'purvil@gmail.com', 'purvil@123', 'purivil.apps.googleusercontent.com', 'G', '23.0511941533540', '72.5397343746461', 'purvil.jpg', '3', 'active', '2026-02-17 14:26:23', '2026-02-17 14:26:23'),
(4, 'jay', '+91', '963457812', '2024-11-08', 'M', 'jay@gmail.com', 'jay123', '', 'S', '22.9904482674169', '72.5725293644135', 'jay.jpg', '3', 'active', '2026-02-17 14:28:00', '2026-02-17 14:28:00'),
(5, 'mansi', '+91', '78451296352', '2004-01-08', 'F', 'mansi@gmail.com', 'mansi123', '', 'S', '23.0245142113872', '72.6056103440563', 'mansi.jpg', '3', 'active', '2026-02-17 14:31:54', '2026-02-17 14:31:54'),
(6, 'Mahipal Singh', '+91', '78451296323', '2012-06-14', 'M', 'mahipal@gmail.com', 'mahipalpass123', '', 'S', '23.0376883121221', ' 72.584795485271', 'mahipal.jpg', '3', 'active', '2026-02-17 16:01:59', '2026-02-17 16:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(36) NOT NULL,
  `username` varchar(36) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id`, `name`, `username`, `email`, `password`, `is_active`, `is_delete`, `created_at`, `update_at`) VALUES
(1, 'aryan ', '@aryan123', 'aryan@gmail.com', 'aryan123', 1, 0, '2026-02-17 14:32:47', '2026-02-17 14:32:47'),
(2, 'bhautik ', '@bhautik123', 'bhautik@gmail.com', 'bhautik123', 1, 0, '2026-02-17 14:33:12', '2026-02-17 14:33:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aminities`
--
ALTER TABLE `tbl_aminities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking_details`
--
ALTER TABLE `tbl_booking_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookingdetails_seat` (`seat_id`),
  ADD KEY `fk_booking` (`booking_id`),
  ADD KEY `fk_source_id` (`source_p_id`),
  ADD KEY `fk_destination_ID` (`destination_p_id`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `bus_number` (`bus_number`),
  ADD KEY `latitude` (`latitude`),
  ADD KEY `longitude` (`longitude`),
  ADD KEY `fk_bus_vendor` (`vendor_id`);

--
-- Indexes for table `tbl_bus_aminities`
--
ALTER TABLE `tbl_bus_aminities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_busaminities_bus` (`bus_id`),
  ADD KEY `fk_busaminities_aminities` (`aminities_id`);

--
-- Indexes for table `tbl_bus_fair`
--
ALTER TABLE `tbl_bus_fair`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sourcepc` (`source_p_id`),
  ADD KEY `fk_destination_kg` (`destination_p_id`),
  ADD KEY `fk_bus_id` (`bus_id`);

--
-- Indexes for table `tbl_bus_images`
--
ALTER TABLE `tbl_bus_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_url` (`image_url`),
  ADD KEY `fk_busimages_bus` (`bus_id`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_platform`
--
ALTER TABLE `tbl_platform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`city`,`latitude`,`longitude`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_user` (`user_id`),
  ADD KEY `fk_rating_bus` (`bus_id`);

--
-- Indexes for table `tbl_routes`
--
ALTER TABLE `tbl_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_routes_source` (`source_p_id`),
  ADD KEY `fk_routes_destination` (`destination_p_id`),
  ADD KEY `fk_routes_bus` (`bus_id`);

--
-- Indexes for table `tbl_search_bus`
--
ALTER TABLE `tbl_search_bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_sourcep` (`source_p_id`),
  ADD KEY `fk_destination` (`destination_p_id`);

--
-- Indexes for table `tbl_seats`
--
ALTER TABLE `tbl_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seats_bus` (`bus_id`),
  ADD KEY `fk_seats_type` (`seat_type_id`);

--
-- Indexes for table `tbl_seat_type`
--
ALTER TABLE `tbl_seat_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stops`
--
ALTER TABLE `tbl_stops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stops_platform` (`platform_id`),
  ADD KEY `fk_stops_route` (`route_id`),
  ADD KEY `fk_stops_bus` (`bus_id`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tickets_booking`
--
ALTER TABLE `tbl_tickets_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ticket_user` (`user_id`),
  ADD KEY `fk_dicount_id` (`discount_id`),
  ADD KEY `fk_ticket_seat` (`bus_id`),
  ADD KEY `FK_ROUTES` (`routes_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `full_name` (`full_name`,`contry_code`,`mobile`,`email`,`password`,`latitude`,`longitude`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aminities`
--
ALTER TABLE `tbl_aminities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_booking_details`
--
ALTER TABLE `tbl_booking_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_bus_aminities`
--
ALTER TABLE `tbl_bus_aminities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_bus_fair`
--
ALTER TABLE `tbl_bus_fair`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_bus_images`
--
ALTER TABLE `tbl_bus_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_platform`
--
ALTER TABLE `tbl_platform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_routes`
--
ALTER TABLE `tbl_routes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_search_bus`
--
ALTER TABLE `tbl_search_bus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_seats`
--
ALTER TABLE `tbl_seats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_seat_type`
--
ALTER TABLE `tbl_seat_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_stops`
--
ALTER TABLE `tbl_stops`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tickets_booking`
--
ALTER TABLE `tbl_tickets_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking_details`
--
ALTER TABLE `tbl_booking_details`
  ADD CONSTRAINT `fk_booking` FOREIGN KEY (`booking_id`) REFERENCES `tbl_tickets_booking` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookingdetails_seat` FOREIGN KEY (`seat_id`) REFERENCES `tbl_seats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_destination_ID` FOREIGN KEY (`destination_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_source_id` FOREIGN KEY (`source_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD CONSTRAINT `fk_bus_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `tbl_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_bus_aminities`
--
ALTER TABLE `tbl_bus_aminities`
  ADD CONSTRAINT `fk_busaminities_aminities` FOREIGN KEY (`aminities_id`) REFERENCES `tbl_aminities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_busaminities_bus` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_bus_fair`
--
ALTER TABLE `tbl_bus_fair`
  ADD CONSTRAINT `fk_bus_id` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_destination_kg` FOREIGN KEY (`destination_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sourcepc` FOREIGN KEY (`source_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_bus_images`
--
ALTER TABLE `tbl_bus_images`
  ADD CONSTRAINT `fk_busimages_bus` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD CONSTRAINT `fk_rating_bus` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rating_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_routes`
--
ALTER TABLE `tbl_routes`
  ADD CONSTRAINT `fk_routes_bus` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_routes_destination` FOREIGN KEY (`destination_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_routes_source` FOREIGN KEY (`source_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_search_bus`
--
ALTER TABLE `tbl_search_bus`
  ADD CONSTRAINT `fk_destination` FOREIGN KEY (`destination_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sourcep` FOREIGN KEY (`source_p_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_seats`
--
ALTER TABLE `tbl_seats`
  ADD CONSTRAINT `fk_seats_bus` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_seats_type` FOREIGN KEY (`seat_type_id`) REFERENCES `tbl_seat_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_stops`
--
ALTER TABLE `tbl_stops`
  ADD CONSTRAINT `fk_stops_bus` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stops_platform` FOREIGN KEY (`platform_id`) REFERENCES `tbl_platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stops_route` FOREIGN KEY (`route_id`) REFERENCES `tbl_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_tickets_booking`
--
ALTER TABLE `tbl_tickets_booking`
  ADD CONSTRAINT `FK_ROUTES` FOREIGN KEY (`routes_id`) REFERENCES `tbl_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dicount_id` FOREIGN KEY (`discount_id`) REFERENCES `tbl_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_seat` FOREIGN KEY (`bus_id`) REFERENCES `tbl_bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ticket_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
