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
-- Database: `figma_realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aminities`
--

CREATE TABLE `tbl_aminities` (
  `id` bigint(20) NOT NULL,
  `aminities_name` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_aminities`
--

INSERT INTO `tbl_aminities` (`id`, `aminities_name`, `is_active`, `is_delete`) VALUES
(1, 'Lift', 1, 0),
(2, 'Power Backup', 1, 0),
(3, 'Reserved Parking', 1, 0),
(4, 'Visitor Parking', 1, 0),
(5, '24x7 Security', 1, 0),
(6, 'CCTV Surveillance', 1, 0),
(7, 'Intercom Facility', 1, 0),
(8, 'Fire Safety', 1, 0),
(9, 'Water Supply', 1, 0),
(10, 'Gas Pipeline', 1, 0),
(11, 'Children Play Area', 1, 0),
(12, 'Garden', 1, 0),
(13, 'Club House', 1, 0),
(14, 'Swimming Pool', 1, 0),
(15, 'Gymnasium', 1, 0),
(16, 'Jogging Track', 1, 0),
(17, 'Indoor Games', 1, 0),
(18, 'Outdoor Sports Area', 1, 0),
(19, 'Community Hall', 1, 0),
(20, 'Party Lawn', 1, 0),
(21, 'Senior Citizen Sit-out', 1, 0),
(22, 'Rain Water Harvesting', 1, 0),
(23, 'Solar Panels', 1, 0),
(24, 'Waste Management', 1, 0),
(25, 'RO Water System', 1, 0),
(26, 'High-Speed Elevators', 1, 0),
(27, 'Wi-Fi Connectivity', 1, 0),
(28, 'Maintenance Staff', 1, 0),
(29, 'Housekeeping', 1, 0),
(30, 'Vastu Compliant', 1, 0),
(31, 'Earthquake Resistant', 1, 0),
(32, 'Pet Friendly', 1, 0),
(33, 'Wheelchair Access', 1, 0),
(34, 'Basement Parking', 1, 0),
(35, 'Shopping Complex', 1, 0),
(36, 'ATM', 1, 0),
(37, 'Medical Facility', 1, 0),
(38, 'Creche', 1, 0),
(39, 'Library', 1, 0),
(40, 'Multipurpose Court', 1, 0),
(41, 'Skating Rink', 1, 0),
(42, 'Tennis Court', 1, 0),
(43, 'Basketball Court', 1, 0),
(44, 'Badminton Court', 1, 0),
(45, 'Banquet Hall', 1, 0),
(46, 'Coffee Lounge', 1, 0),
(47, 'Concierge Service', 1, 0),
(48, 'Smart Home Features', 1, 0),
(49, 'EV Charging Point', 1, 0),
(50, 'Helipad (Luxury)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` bigint(20) NOT NULL,
  `prop_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `prop_id`, `user_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2023-05-01 10:10:00', '2023-05-02 12:00:00'),
(2, 3, 2, 1, 1, '2023-05-03 11:20:00', '2023-05-04 14:30:00'),
(3, 5, 3, 1, 1, '2023-06-10 09:15:00', '2023-06-11 10:00:00'),
(4, 8, 1, 1, 1, '2023-06-18 16:40:00', '2026-02-05 10:53:03'),
(5, 12, 5, 1, 1, '2023-07-05 13:00:00', '2023-07-06 15:20:00'),
(6, 2, 6, 1, 0, '2023-08-01 10:00:00', '2023-08-01 10:00:00'),
(7, 6, 7, 1, 0, '2023-08-03 11:45:00', '2023-08-03 11:45:00'),
(8, 9, 1, 1, 0, '2023-08-06 14:10:00', '2026-02-05 10:53:07'),
(9, 14, 9, 1, 0, '2023-08-09 17:30:00', '2023-08-09 17:30:00'),
(10, 18, 10, 1, 0, '2023-08-12 19:00:00', '2023-08-12 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `cat_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `cat_name`) VALUES
(1, 'Residential'),
(2, 'Commercial'),
(3, 'Industrial'),
(4, 'Land'),
(5, 'Luxury');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like`
--

CREATE TABLE `tbl_like` (
  `id` bigint(20) NOT NULL,
  `rating_id` bigint(20) NOT NULL,
  `is_liked` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_like`
--

INSERT INTO `tbl_like` (`id`, `rating_id`, `is_liked`, `user_id`) VALUES
(2, 1, 1, 25),
(3, 1, 1, 26),
(4, 1, 0, 27),
(5, 2, 1, 28),
(6, 2, 1, 29),
(7, 2, 1, 30),
(8, 3, 1, 31),
(9, 3, 0, 32),
(10, 4, 1, 33),
(11, 4, 1, 34),
(12, 4, 1, 35),
(13, 5, 0, 25),
(14, 5, 1, 26),
(15, 6, 1, 27),
(16, 6, 1, 28),
(17, 7, 1, 29),
(18, 7, 0, 30),
(19, 8, 1, 31),
(20, 8, 1, 32),
(21, 9, 1, 33),
(22, 9, 0, 34),
(23, 10, 1, 35),
(24, 10, 1, 25);

--
-- Triggers `tbl_like`
--
DELIMITER $$
CREATE TRIGGER `like_count_on_insert` AFTER INSERT ON `tbl_like` FOR EACH ROW UPDATE tbl_rating r SET r.like_counter = (SELECT COUNT(*) FROM tbl_like l WHERE l.rating_id = new.rating_id ) WHERE r.id = new.rating_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `like_count_on_update` AFTER UPDATE ON `tbl_like` FOR EACH ROW IF OLD.is_liked = 1 AND NEW.is_liked = 0 THEN
        UPDATE tbl_rating
        SET count_like = count_like - 1
        WHERE id = OLD.rating_id;
    ELSEIF OLD.is_liked = 0 AND NEW.is_liked = 1 THEN
        UPDATE tbl_rating
        SET count_like = count_like + 1
        WHERE id = OLD.rating_id;
    END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL,
  `prop_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` enum('pending','completed','processing') NOT NULL,
  `order_number` varchar(64) NOT NULL,
  `old_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`old_details`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `prop_id`, `user_id`, `status`, `order_number`, `old_details`, `created_at`) VALUES
(1, 1, 2, 'completed', 'ORD-RES-1001', '{\"property_name\":\"Shiv Residency\",\"price\":4500000,\"location\":\"Bopal, Ahmedabad\",\"category\":\"Residential\"}', '2021-03-12 11:20:00'),
(2, 3, 1, 'completed', 'ORD-RES-1002', '{\"property_name\":\"Skyline Heights\",\"price\":5200000,\"location\":\"Vesu, Surat\",\"category\":\"Residential\"}', '2022-01-18 15:40:00'),
(3, 5, 3, 'processing', 'ORD-LUX-1003', '{\"property_name\":\"Nilkanth Plaza\",\"price\":8900000,\"location\":\"Alkapuri, Vadodara\",\"category\":\"Luxury\"}', '2023-02-05 10:10:00'),
(4, 7, 4, 'completed', 'ORD-RES-1004', '{\"property_name\":\"Sunshine Residency\",\"price\":4300000,\"location\":\"Kalavad Road, Rajkot\",\"category\":\"Residential\"}', '2023-05-22 13:30:00'),
(5, 9, 2, 'completed', 'ORD-RES-1005', '{\"property_name\":\"Capital Greens\",\"price\":7200000,\"location\":\"Sector 21, Gandhinagar\",\"category\":\"Residential\"}', '2022-08-09 09:45:00'),
(6, 11, 5, 'completed', 'ORD-RES-1006', '{\"property_name\":\"Sea View Palace\",\"price\":3800000,\"location\":\"Bhavnagar\",\"category\":\"Residential\"}', '2020-11-14 12:00:00'),
(7, 13, 1, 'processing', 'ORD-RES-1007', '{\"property_name\":\"Oceanic Towers\",\"price\":4600000,\"location\":\"Jamnagar\",\"category\":\"Residential\"}', '2023-03-20 16:25:00'),
(8, 15, 6, 'completed', 'ORD-RES-1008', '{\"property_name\":\"Elite Homes\",\"price\":6700000,\"location\":\"Paldi, Ahmedabad\",\"category\":\"Residential\"}', '2023-06-30 18:10:00'),
(9, 17, 3, 'completed', 'ORD-RES-1009', '{\"property_name\":\"Riverfront Residency\",\"price\":5600000,\"location\":\"Sabarmati, Ahmedabad\",\"category\":\"Residential\"}', '2023-04-15 10:50:00'),
(10, 19, 4, 'processing', 'ORD-LUX-1010', '{\"property_name\":\"Dream City\",\"price\":9000000,\"location\":\"Dumas Road, Surat\",\"category\":\"Luxury\"}', '2023-07-10 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_properties`
--

CREATE TABLE `tbl_properties` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `location` text NOT NULL,
  `price` decimal(16,2) NOT NULL,
  `current_price` decimal(16,2) NOT NULL,
  `total_area` varchar(32) NOT NULL,
  `floor_level` varchar(32) NOT NULL,
  `built_year` year(4) NOT NULL,
  `description` text NOT NULL,
  `latitude` varchar(64) NOT NULL,
  `longitude` varchar(64) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `is_ads` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_properties`
--

INSERT INTO `tbl_properties` (`id`, `name`, `location`, `price`, `current_price`, `total_area`, `floor_level`, `built_year`, `description`, `latitude`, `longitude`, `category_id`, `is_ads`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Shiv Residency', 'Bopal, Ahmedabad', 4500000.00, 4800000.00, '1200 sqft', '3rd Floor', '2016', 'Well maintained 2BHK residential apartment', '23.114601933973955', '72.54038258243337', 1, 1, 1, 0, '2017-02-10 10:00:00', '2022-06-01 11:00:00'),
(2, 'Green Villa', 'Science City, Ahmedabad', 7800000.00, 7500000.00, '1800 sqft', 'Ground Floor', '2015', 'Premium villa in peaceful area', '23.078923441292114', '72.53488121988455', 1, 1, 1, 0, '2016-05-15 09:30:00', '2021-08-10 14:20:00'),
(3, 'Skyline Heights', 'Vesu, Surat', 5200000.00, 5600000.00, '1350 sqft', '7th Floor', '2018', 'Modern apartment with city view', '21.141998345771212', '72.77065412355831', 2, 1, 1, 0, '2019-01-20 12:10:00', '2026-02-04 16:57:30'),
(4, 'Royal Enclave', 'Adajan, Surat', 6100000.00, 5900000.00, '1500 sqft', '5th Floor', '2017', 'Spacious 3BHK near riverfront', '21.195432661294553', '72.78521988341022', 2, 0, 1, 0, '2018-03-18 11:00:00', '2026-02-04 16:57:34'),
(5, 'Nilkanth Plaza', 'Alkapuri, Vadodara', 8900000.00, 9200000.00, '2000 sqft', '9th Floor', '2014', 'Luxury apartment in prime location', '22.315904332110553', '73.17044289120312', 3, 1, 1, 0, '2016-07-25 10:45:00', '2026-02-04 16:57:41'),
(6, 'Pratham Heights', 'Manjalpur, Vadodara', 4800000.00, 4600000.00, '1250 sqft', '4th Floor', '2016', 'Affordable housing with amenities', '22.274992381233441', '73.18911233481299', 3, 0, 1, 0, '2017-11-11 14:20:00', '2026-02-04 16:57:38'),
(7, 'Sunshine Residency', 'Kalavad Road, Rajkot', 4300000.00, 4700000.00, '1180 sqft', '2nd Floor', '2019', 'New construction residential flat', '22.303978118233772', '70.80221491233121', 4, 1, 1, 0, '2020-06-06 09:00:00', '2026-02-04 16:57:45'),
(8, 'Pearl Homes', '150 Feet Ring Road, Rajkot', 6500000.00, 6200000.00, '1600 sqft', '6th Floor', '2017', 'Premium society with parking', '22.289881237712334', '70.76988123399001', 4, 0, 1, 0, '2018-08-20 11:45:00', '2026-02-04 16:57:48'),
(9, 'Capital Greens', 'Sector 21, Gandhinagar', 7200000.00, 7600000.00, '1700 sqft', '5th Floor', '2016', 'Government area residential project', '23.215102998123442', '72.63601991233218', 5, 1, 1, 0, '2017-04-01 10:30:00', '2026-02-04 16:57:51'),
(10, 'Urban Nest', 'Kudasan, Gandhinagar', 5100000.00, 4900000.00, '1300 sqft', '3rd Floor', '2018', 'Family-friendly apartment', '23.192881223344998', '72.62388199233211', 5, 0, 1, 0, '2019-09-09 09:10:00', '2026-02-04 16:57:55'),
(11, 'Sea View Palace', 'Bhavnagar', 3800000.00, 4000000.00, '1100 sqft', '2nd Floor', '2015', 'Sea-facing residential flat', '21.764612334221002', '72.15199811233011', 1, 1, 1, 0, '2016-10-10 08:00:00', '2020-02-14 10:00:00'),
(12, 'Harmony Homes', 'Bhavnagar', 2900000.00, 2700000.00, '950 sqft', '1st Floor', '2014', 'Budget friendly housing', '21.750223441129881', '72.13999233811231', 1, 0, 1, 0, '2015-03-03 11:20:00', '2019-06-06 09:30:00'),
(13, 'Oceanic Towers', 'Jamnagar', 4600000.00, 4900000.00, '1280 sqft', '6th Floor', '2017', 'High-rise apartment near coast', '22.470712344882112', '70.05771199823111', 2, 1, 1, 0, '2018-12-12 10:10:00', '2026-02-04 16:58:04'),
(14, 'Shree Residency', 'Jamnagar', 3400000.00, 3200000.00, '1050 sqft', '3rd Floor', '2016', 'Peaceful residential society', '22.469998881221233', '70.05988112233999', 2, 0, 1, 0, '2017-07-07 14:00:00', '2026-02-04 16:58:10'),
(15, 'Elite Homes', 'Paldi, Ahmedabad', 6700000.00, 7100000.00, '1550 sqft', '5th Floor', '2018', 'Prime city location', '23.012901223443221', '72.56388122199811', 3, 1, 1, 0, '2019-05-05 09:45:00', '2026-02-04 16:58:13'),
(16, 'Silver Square', 'Satellite, Ahmedabad', 8200000.00, 7900000.00, '1900 sqft', '8th Floor', '2016', 'Premium residential tower', '23.022501123449991', '72.53100998122331', 3, 1, 1, 0, '2017-01-15 10:20:00', '2026-02-04 16:58:16'),
(17, 'Riverfront Residency', 'Sabarmati, Ahmedabad', 5600000.00, 6000000.00, '1400 sqft', '4th Floor', '2019', 'Close to riverfront project', '23.059998998112211', '72.57999888122344', 4, 1, 1, 0, '2020-02-02 11:00:00', '2026-02-04 16:58:38'),
(18, 'Dream City', 'Dumas Road, Surat', 9000000.00, 8700000.00, '2100 sqft', '10th Floor', '2017', 'Luxury living near airport', '21.092118899123331', '72.74488122119988', 4, 1, 1, 0, '2018-06-06 10:30:00', '2026-02-04 16:58:49'),
(19, 'Royal Avenue', 'Katargam, Surat', 3900000.00, 4200000.00, '1150 sqft', '3rd Floor', '2016', 'Affordable city apartment', '21.220998122331122', '72.82988111234499', 5, 0, 1, 0, '2017-09-09 09:10:00', '2026-02-04 16:58:52'),
(20, 'Prime Habitat', 'Motera, Ahmedabad', 7400000.00, 7800000.00, '1650 sqft', '6th Floor', '2018', 'Close to metro and stadium', '23.100119992223441', '72.59038122993321', 5, 1, 1, 0, '2019-09-09 10:20:00', '2026-02-04 16:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prop_aminities`
--

CREATE TABLE `tbl_prop_aminities` (
  `id` bigint(11) NOT NULL,
  `prop_id` bigint(20) NOT NULL,
  `aminities_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_prop_aminities`
--

INSERT INTO `tbl_prop_aminities` (`id`, `prop_id`, `aminities_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 5),
(5, 1, 6),
(6, 1, 9),
(7, 2, 3),
(8, 2, 5),
(9, 2, 11),
(10, 2, 12),
(11, 2, 14),
(12, 2, 32),
(13, 3, 1),
(14, 3, 2),
(15, 3, 5),
(16, 3, 6),
(17, 3, 15),
(18, 3, 16),
(19, 4, 1),
(20, 4, 3),
(21, 4, 5),
(22, 4, 8),
(23, 4, 9),
(24, 5, 1),
(25, 5, 2),
(26, 5, 3),
(27, 5, 5),
(28, 5, 13),
(29, 5, 14),
(30, 5, 15),
(31, 6, 1),
(32, 6, 2),
(33, 6, 9),
(34, 6, 28),
(35, 6, 30),
(36, 7, 1),
(37, 7, 5),
(38, 7, 6),
(39, 7, 11),
(40, 7, 12),
(41, 8, 1),
(42, 8, 3),
(43, 8, 5),
(44, 8, 10),
(45, 8, 28),
(46, 9, 1),
(47, 9, 2),
(48, 9, 3),
(49, 9, 5),
(50, 9, 19),
(51, 10, 1),
(52, 10, 2),
(53, 10, 11),
(54, 10, 21),
(55, 10, 30),
(56, 11, 1),
(57, 11, 5),
(58, 11, 6),
(59, 11, 12),
(60, 11, 14),
(61, 12, 1),
(62, 12, 2),
(63, 12, 9),
(64, 12, 24),
(65, 13, 1),
(66, 13, 5),
(67, 13, 6),
(68, 13, 15),
(69, 13, 16),
(70, 14, 1),
(71, 14, 2),
(72, 14, 9),
(73, 14, 30),
(74, 15, 1),
(75, 15, 3),
(76, 15, 5),
(77, 15, 6),
(78, 15, 27),
(79, 16, 1),
(80, 16, 2),
(81, 16, 5),
(82, 16, 14),
(83, 16, 15),
(84, 17, 1),
(85, 17, 2),
(86, 17, 3),
(87, 17, 5),
(88, 17, 11),
(89, 18, 1),
(90, 18, 2),
(91, 18, 3),
(92, 18, 5),
(93, 18, 13),
(94, 18, 14),
(95, 18, 49),
(96, 19, 1),
(97, 19, 2),
(98, 19, 9),
(99, 19, 30),
(100, 20, 1),
(101, 20, 2),
(102, 20, 3),
(103, 20, 5),
(104, 20, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prop_img`
--

CREATE TABLE `tbl_prop_img` (
  `id` bigint(20) NOT NULL,
  `prop_id` bigint(20) NOT NULL,
  `image_url` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_prop_img`
--

INSERT INTO `tbl_prop_img` (`id`, `prop_id`, `image_url`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'property/1/img1.jpg', 1, 0, '2017-02-10 10:00:00', '2022-06-01 11:00:00'),
(2, 1, 'property/1/img2.jpg', 1, 0, '2017-02-10 10:05:00', '2022-06-01 11:05:00'),
(3, 1, 'property/1/img3.jpg', 1, 0, '2017-02-10 10:10:00', '2022-06-01 11:10:00'),
(4, 2, 'property/2/img1.jpg', 1, 0, '2016-05-15 09:30:00', '2021-08-10 14:20:00'),
(5, 2, 'property/2/img2.jpg', 1, 0, '2016-05-15 09:35:00', '2021-08-10 14:25:00'),
(6, 3, 'property/3/img1.jpg', 1, 0, '2019-01-20 12:10:00', '2023-02-14 10:30:00'),
(7, 3, 'property/3/img2.jpg', 1, 0, '2019-01-20 12:15:00', '2023-02-14 10:35:00'),
(8, 3, 'property/3/img3.jpg', 1, 0, '2019-01-20 12:20:00', '2023-02-14 10:40:00'),
(9, 4, 'property/4/img1.jpg', 1, 0, '2018-03-18 11:00:00', '2022-04-09 16:00:00'),
(10, 4, 'property/4/img2.jpg', 1, 0, '2018-03-18 11:05:00', '2022-04-09 16:05:00'),
(11, 5, 'property/5/img1.jpg', 1, 0, '2016-07-25 10:45:00', '2023-01-01 09:15:00'),
(12, 5, 'property/5/img2.jpg', 1, 0, '2016-07-25 10:50:00', '2023-01-01 09:20:00'),
(13, 5, 'property/5/img3.jpg', 1, 0, '2016-07-25 10:55:00', '2023-01-01 09:25:00'),
(14, 6, 'property/6/img1.jpg', 1, 0, '2017-11-11 14:20:00', '2021-09-09 10:10:00'),
(15, 6, 'property/6/img2.jpg', 1, 0, '2017-11-11 14:25:00', '2021-09-09 10:15:00'),
(16, 7, 'property/7/img1.jpg', 1, 0, '2020-06-06 09:00:00', '2023-05-15 15:30:00'),
(17, 7, 'property/7/img2.jpg', 1, 0, '2020-06-06 09:05:00', '2023-05-15 15:35:00'),
(18, 8, 'property/8/img1.jpg', 1, 0, '2018-08-20 11:45:00', '2022-12-12 12:00:00'),
(19, 8, 'property/8/img2.jpg', 1, 0, '2018-08-20 11:50:00', '2022-12-12 12:05:00'),
(20, 9, 'property/9/img1.jpg', 1, 0, '2017-04-01 10:30:00', '2022-07-07 14:00:00'),
(21, 9, 'property/9/img2.jpg', 1, 0, '2017-04-01 10:35:00', '2022-07-07 14:05:00'),
(22, 10, 'property/10/img1.jpg', 1, 0, '2019-09-09 09:10:00', '2021-11-20 16:45:00'),
(23, 10, 'property/10/img2.jpg', 1, 0, '2019-09-09 09:15:00', '2021-11-20 16:50:00'),
(24, 11, 'property/11/img1.jpg', 1, 0, '2016-10-10 08:00:00', '2020-02-14 10:00:00'),
(25, 11, 'property/11/img2.jpg', 1, 0, '2016-10-10 08:05:00', '2020-02-14 10:05:00'),
(26, 12, 'property/12/img1.jpg', 1, 0, '2015-03-03 11:20:00', '2019-06-06 09:30:00'),
(27, 12, 'property/12/img2.jpg', 1, 0, '2015-03-03 11:25:00', '2019-06-06 09:35:00'),
(28, 13, 'property/13/img1.jpg', 1, 0, '2018-12-12 10:10:00', '2023-03-03 12:40:00'),
(29, 13, 'property/13/img2.jpg', 1, 0, '2018-12-12 10:15:00', '2023-03-03 12:45:00'),
(30, 14, 'property/14/img1.jpg', 1, 0, '2017-07-07 14:00:00', '2021-10-10 10:10:00'),
(31, 14, 'property/14/img2.jpg', 1, 0, '2017-07-07 14:05:00', '2021-10-10 10:15:00'),
(32, 15, 'property/15/img1.jpg', 1, 0, '2019-05-05 09:45:00', '2023-06-06 11:30:00'),
(33, 15, 'property/15/img2.jpg', 1, 0, '2019-05-05 09:50:00', '2023-06-06 11:35:00'),
(34, 16, 'property/16/img1.jpg', 1, 0, '2017-01-15 10:20:00', '2022-08-18 14:15:00'),
(35, 16, 'property/16/img2.jpg', 1, 0, '2017-01-15 10:25:00', '2022-08-18 14:20:00'),
(36, 17, 'property/17/img1.jpg', 1, 0, '2020-02-02 11:00:00', '2023-04-01 09:00:00'),
(37, 17, 'property/17/img2.jpg', 1, 0, '2020-02-02 11:05:00', '2023-04-01 09:05:00'),
(38, 18, 'property/18/img1.jpg', 1, 0, '2018-06-06 10:30:00', '2022-09-09 15:45:00'),
(39, 18, 'property/18/img2.jpg', 1, 0, '2018-06-06 10:35:00', '2022-09-09 15:50:00'),
(40, 19, 'property/19/img1.jpg', 1, 0, '2017-09-09 09:10:00', '2021-12-12 10:30:00'),
(41, 19, 'property/19/img2.jpg', 1, 0, '2017-09-09 09:15:00', '2021-12-12 10:35:00'),
(42, 20, 'property/20/img1.jpg', 1, 0, '2019-09-09 10:20:00', '2023-07-07 15:30:00'),
(43, 20, 'property/20/img2.jpg', 1, 0, '2019-09-09 10:25:00', '2023-07-07 15:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `prop_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `description` text NOT NULL,
  `like_counter` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `prop_id`, `user_id`, `rating`, `description`, `like_counter`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 4.5, 'Great location and well maintained society.', 3, 1, 0, '2023-06-10 10:30:00', '2026-02-04 17:56:35'),
(2, 1, 4, 4.0, 'Spacious rooms and good ventilation.', 3, 1, 0, '2023-06-12 14:20:00', '2026-02-04 17:35:35'),
(3, 1, 6, 4.8, 'Excellent property, worth the price.', 2, 1, 0, '2023-06-15 09:10:00', '2026-02-04 17:35:35'),
(4, 2, 1, 4.2, 'Peaceful area and premium construction.', 3, 1, 0, '2023-06-11 11:45:00', '2026-02-04 17:35:35'),
(5, 2, 5, 3.9, 'Good villa but maintenance is slightly high.', 2, 1, 0, '2023-06-13 16:30:00', '2026-02-04 17:35:35'),
(6, 2, 7, 4.6, 'Perfect for families, very calm locality.', 2, 1, 0, '2023-06-18 08:50:00', '2026-02-04 17:35:35'),
(7, 3, 3, 4.1, 'Modern building with great city view.', 2, 1, 0, '2023-06-09 12:15:00', '2026-02-04 17:35:35'),
(8, 3, 8, 4.7, 'Loved the amenities and connectivity.', 2, 1, 0, '2023-06-14 18:40:00', '2026-02-04 17:35:35'),
(9, 3, 10, 4.3, 'Good investment property.', 2, 1, 0, '2023-06-19 10:05:00', '2026-02-04 17:35:35'),
(10, 4, 2, 3.8, 'Nice flat but parking is limited.', 2, 1, 0, '2023-06-08 09:30:00', '2026-02-04 17:35:35'),
(11, 4, 6, 4.0, 'Good riverfront proximity.', 0, 1, 0, '2023-06-13 13:55:00', '2026-02-04 17:34:37'),
(12, 4, 9, 4.4, 'Spacious and peaceful surroundings.', 0, 1, 0, '2023-06-17 17:10:00', '2026-02-04 17:34:37'),
(13, 5, 1, 4.9, 'Luxury living at its best.', 0, 1, 0, '2023-06-07 10:00:00', '2026-02-04 17:34:37'),
(14, 5, 4, 4.6, 'Prime location with premium feel.', 0, 1, 0, '2023-06-12 15:25:00', '2026-02-04 17:34:37'),
(15, 5, 11, 4.8, 'Highly recommended property.', 0, 1, 0, '2023-06-20 11:40:00', '2026-02-04 17:34:37'),
(16, 6, 3, 4.1, 'Good locality and peaceful environment.', 0, 1, 0, '2023-07-01 10:10:00', '2026-02-04 17:34:37'),
(17, 6, 7, 4.3, 'Value for money property.', 0, 1, 0, '2023-07-03 14:20:00', '2026-02-04 17:34:37'),
(18, 6, 12, 3.9, 'Nice flat but needs better maintenance.', 0, 1, 0, '2023-07-05 09:40:00', '2026-02-04 17:34:37'),
(19, 7, 2, 4.6, 'Excellent connectivity and amenities.', 0, 1, 0, '2023-07-02 11:30:00', '2026-02-04 17:34:37'),
(20, 7, 6, 4.4, 'Spacious rooms and modern design.', 0, 1, 0, '2023-07-06 16:10:00', '2026-02-04 17:34:37'),
(21, 7, 10, 4.2, 'Good society and security.', 0, 1, 0, '2023-07-08 10:00:00', '2026-02-04 17:34:37'),
(22, 8, 4, 3.8, 'Parking space is limited.', 0, 1, 0, '2023-07-01 12:45:00', '2026-02-04 17:34:37'),
(23, 8, 9, 4.0, 'Decent property for small families.', 0, 1, 0, '2023-07-04 15:30:00', '2026-02-04 17:34:37'),
(24, 8, 14, 4.1, 'Good resale value.', 0, 1, 0, '2023-07-09 09:20:00', '2026-02-04 17:34:37'),
(25, 9, 1, 4.7, 'Premium feel and well maintained.', 0, 1, 0, '2023-07-03 10:15:00', '2026-02-04 17:34:37'),
(26, 9, 5, 4.5, 'Great investment option.', 0, 1, 0, '2023-07-07 14:50:00', '2026-02-04 17:34:37'),
(27, 9, 11, 4.6, 'Loved the surroundings.', 0, 1, 0, '2023-07-10 11:10:00', '2026-02-04 17:34:37'),
(28, 10, 6, 3.9, 'Affordable but slightly old construction.', 0, 1, 0, '2023-07-02 09:10:00', '2026-02-04 17:34:37'),
(29, 10, 13, 4.1, 'Good for first-time buyers.', 0, 1, 0, '2023-07-06 13:00:00', '2026-02-04 17:34:37'),
(30, 10, 15, 4.0, 'Nice neighborhood.', 0, 1, 0, '2023-07-09 17:30:00', '2026-02-04 17:34:37'),
(31, 11, 8, 4.8, 'Sea view is amazing.', 0, 1, 0, '2023-07-01 08:40:00', '2026-02-04 17:34:37'),
(32, 11, 16, 4.6, 'Very peaceful place.', 0, 1, 0, '2023-07-05 10:20:00', '2026-02-04 17:34:37'),
(33, 11, 3, 4.5, 'Highly recommended.', 0, 1, 0, '2023-07-08 12:00:00', '2026-02-04 17:34:37'),
(34, 12, 4, 3.6, 'Budget-friendly option.', 0, 1, 0, '2023-07-02 11:15:00', '2026-02-04 17:34:37'),
(35, 12, 9, 3.9, 'Good basic amenities.', 0, 1, 0, '2023-07-06 16:40:00', '2026-02-04 17:34:37'),
(36, 12, 18, 4.0, 'Nice location.', 0, 1, 0, '2023-07-10 09:30:00', '2026-02-04 17:34:37'),
(37, 13, 2, 4.3, 'High-rise with good ventilation.', 0, 1, 0, '2023-07-03 10:00:00', '2026-02-04 17:34:37'),
(38, 13, 6, 4.1, 'Well connected area.', 0, 1, 0, '2023-07-07 15:15:00', '2026-02-04 17:34:37'),
(39, 13, 19, 4.4, 'Nice amenities.', 0, 1, 0, '2023-07-11 11:50:00', '2026-02-04 17:34:37'),
(40, 14, 5, 3.7, 'Needs renovation.', 0, 1, 0, '2023-07-01 09:00:00', '2026-02-04 17:34:37'),
(41, 14, 11, 4.0, 'Good for rental income.', 0, 1, 0, '2023-07-05 14:35:00', '2026-02-04 17:34:37'),
(42, 14, 20, 3.9, 'Decent pricing.', 0, 1, 0, '2023-07-09 16:20:00', '2026-02-04 17:34:37'),
(43, 15, 1, 4.9, 'Luxury living with premium features.', 0, 1, 0, '2023-07-02 10:30:00', '2026-02-04 17:34:37'),
(44, 15, 7, 4.7, 'Top-class property.', 0, 1, 0, '2023-07-06 11:40:00', '2026-02-04 17:34:37'),
(45, 15, 17, 4.8, 'Excellent choice.', 0, 1, 0, '2023-07-10 13:10:00', '2026-02-04 17:34:37'),
(46, 16, 3, 4.2, 'Nice residential area.', 0, 1, 0, '2023-07-03 09:20:00', '2026-02-04 17:34:37'),
(47, 16, 8, 4.0, 'Good construction quality.', 0, 1, 0, '2023-07-07 15:50:00', '2026-02-04 17:34:37'),
(48, 16, 14, 4.1, 'Worth buying.', 0, 1, 0, '2023-07-11 10:40:00', '2026-02-04 17:34:37'),
(49, 17, 6, 3.8, 'Average amenities.', 0, 1, 0, '2023-07-02 12:10:00', '2026-02-04 17:34:37'),
(50, 17, 12, 4.0, 'Good for budget buyers.', 0, 1, 0, '2023-07-06 14:00:00', '2026-02-04 17:34:37'),
(51, 17, 18, 3.9, 'Decent option.', 0, 1, 0, '2023-07-10 16:30:00', '2026-02-04 17:34:37'),
(52, 18, 2, 4.6, 'Luxury lifestyle project.', 0, 1, 0, '2023-07-03 11:00:00', '2026-02-04 17:34:37'),
(53, 18, 9, 4.4, 'Very premium society.', 0, 1, 0, '2023-07-07 13:20:00', '2026-02-04 17:34:37'),
(54, 18, 15, 4.5, 'Loved the ambiance.', 0, 1, 0, '2023-07-11 09:10:00', '2026-02-04 17:34:37'),
(55, 19, 4, 3.9, 'Good location.', 0, 1, 0, '2023-07-02 10:50:00', '2026-02-04 17:34:37'),
(56, 19, 10, 4.1, 'Nice for families.', 0, 1, 0, '2023-07-06 12:40:00', '2026-02-04 17:34:37'),
(57, 19, 16, 4.0, 'Good resale value.', 0, 1, 0, '2023-07-10 15:10:00', '2026-02-04 17:34:37'),
(58, 20, 1, 4.7, 'Prime location and premium build.', 0, 1, 0, '2023-07-03 09:30:00', '2026-02-04 17:34:37'),
(59, 20, 5, 4.6, 'Excellent long-term investment.', 0, 1, 0, '2023-07-07 14:10:00', '2026-02-04 17:34:37'),
(60, 20, 13, 4.5, 'Highly satisfied.', 0, 1, 0, '2023-07-11 11:00:00', '2026-02-04 17:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reply`
--

CREATE TABLE `tbl_reply` (
  `id` bigint(20) NOT NULL,
  `rating_id` bigint(20) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_reply`
--

INSERT INTO `tbl_reply` (`id`, `rating_id`, `comment`) VALUES
(1, 1, 'Thank you for your feedback! We are glad you liked the locality.'),
(2, 2, 'Appreciate your review. We are constantly working to maintain value for money.'),
(3, 3, 'Thanks for sharing your experience. Maintenance improvements are already planned.'),
(4, 4, 'Happy to hear that you liked the connectivity and amenities.'),
(5, 5, 'Thank you! Spacious design is one of our key highlights.'),
(6, 6, 'We appreciate your positive words about the society and security.'),
(7, 7, 'Thanks for your honest feedback. Parking expansion is under consideration.'),
(8, 8, 'Glad you found it suitable for family living. Thank you for the review.'),
(9, 9, 'We are happy you see good resale value in this property.'),
(10, 10, 'Thank you for the premium feedback! Your support means a lot to us.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saved`
--

CREATE TABLE `tbl_saved` (
  `id` bigint(20) NOT NULL,
  `prop_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_saved`
--

INSERT INTO `tbl_saved` (`id`, `prop_id`, `user_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 0, '2023-06-01 10:15:00', '2023-06-01 10:15:00'),
(2, 4, 2, 1, 0, '2023-06-03 12:40:00', '2023-06-03 12:40:00'),
(3, 6, 3, 1, 0, '2023-06-05 09:20:00', '2023-06-05 09:20:00'),
(4, 8, 4, 1, 0, '2023-06-07 18:10:00', '2023-06-07 18:10:00'),
(5, 10, 5, 1, 0, '2023-06-10 14:55:00', '2023-06-10 14:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `id` bigint(20) NOT NULL,
  `prop_id` bigint(20) NOT NULL,
  `tax_amount` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`id`, `prop_id`, `tax_amount`) VALUES
(1, 1, 6.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(64) NOT NULL,
  `work_email` varchar(256) NOT NULL,
  `login_type` enum('G','F','M') NOT NULL,
  `mobile_no` varchar(16) NOT NULL,
  `passwords` varchar(128) NOT NULL,
  `profile_picture` varchar(256) NOT NULL,
  `company_name` varchar(36) NOT NULL,
  `industry` enum('primary_industry','secondary_industry','tertiary_industry','quaternary_industry','quinary_industry') NOT NULL,
  `job_title` varchar(36) NOT NULL,
  `bussiness_address` text NOT NULL,
  `corporate_id` varchar(128) NOT NULL,
  `is_verified_otp` tinyint(1) NOT NULL DEFAULT 0,
  `is_profile_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_image_completed` tinyint(1) NOT NULL DEFAULT 0,
  `Is_proffessional_complete` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `work_email`, `login_type`, `mobile_no`, `passwords`, `profile_picture`, `company_name`, `industry`, `job_title`, `bussiness_address`, `corporate_id`, `is_verified_otp`, `is_profile_completed`, `is_image_completed`, `Is_proffessional_complete`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'micheal Roberts', 'micheal.Roberts@gmail.com', '', '9950104470', 'pass@123', 'image.png', 'Capital real Estate partners', '', '', '', '[value-12]', 1, 1, 0, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 12:10:08'),
(2, 'Rahul Mehta', 'rahul.mehta@tech.com', 'G', '9876500002', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(3, 'Neha Patel', 'neha.patel@biz.com', 'F', '9876500003', 'pass@123', 'user1.jpg', 'Patel Traders', 'primary_industry', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(4, 'Suresh Iyer', 'suresh.iyer@it.com', 'M', '9876500004', 'pass@123', 'user1.jpg', 'Iyer Solutions', 'secondary_industry', 'Software Lead', '', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(5, 'Kiran Joshi', 'kiran.joshi@corp.com', 'G', '9876500005', 'pass@123', 'user1.jpg', 'Joshi Corp', 'tertiary_industry', 'Manager', 'Pune, MH', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(6, 'Ankit Verma', 'ankit.verma@startup.com', 'M', '9876500006', 'pass@123', 'user1.jpg', '', '', '', '', '', 0, 1, 0, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(7, 'Pooja Singh', 'pooja.singh@design.com', 'F', '9876500007', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(8, 'Rohit Agarwal', 'rohit.agarwal@infra.com', 'G', '9876500008', 'pass@123', 'user1.jpg', 'Agarwal Infra', 'primary_industry', 'Civil Engineer', '', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(9, 'Sneha Kulkarni', 'sneha.k@hr.com', 'M', '9876500009', 'pass@123', 'user1.jpg', 'Kulkarni HR', 'secondary_industry', 'HR Manager', 'Mumbai, MH', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(10, 'Vikas Malhotra', 'vikas.m@finance.com', 'F', '9876500010', 'pass@123', 'user1.jpg', 'Malhotra Finance', 'tertiary_industry', 'Accountant', 'Delhi', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(11, 'Nilesh Desai', 'nilesh.d@logistics.com', 'M', '9876500011', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 0, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(12, 'Bhavya Jain', 'bhavya.j@retail.com', 'G', '9876500012', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(13, 'Arjun Kapoor', 'arjun.k@media.com', 'F', '9876500013', 'pass@123', 'user1.jpg', 'Kapoor Media', 'secondary_industry', 'Producer', '', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(14, 'Manish Rathi', 'manish.r@edu.com', 'M', '9876500014', 'pass@123', 'user1.jpg', 'Rathi Education', 'primary_industry', 'Director', 'Ahmedabad, GJ', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(15, 'Divya Choudhary', 'divya.c@ngo.com', 'G', '9876500015', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(16, 'Harsh Vardhan', 'harsh.v@energy.com', 'F', '9876500016', 'pass@123', 'user1.jpg', 'Vardhan Energy', 'tertiary_industry', 'Operations Head', 'Surat, GJ', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(17, 'Mehul Trivedi', 'mehul.t@consult.com', 'M', '9876500017', 'pass@123', 'user1.jpg', '', '', '', '', '', 0, 1, 0, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(18, 'Ayesha Khan', 'ayesha.k@marketing.com', 'G', '9876500018', 'pass@123', 'user1.jpg', 'AK Marketing', 'secondary_industry', 'Marketing Lead', '', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(19, 'Pratik Solanki', 'pratik.s@auto.com', 'F', '9876500019', 'pass@123', 'user1.jpg', 'Solanki Auto', 'primary_industry', 'Sales Manager', 'Rajkot, GJ', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(20, 'Rina Bose', 'rina.b@fashion.com', 'M', '9876500020', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(21, 'Aditya Rao', 'aditya.r@health.com', 'G', '9876500021', 'pass@123', 'user1.jpg', 'Rao Health', 'primary_industry', 'Admin', 'Bangalore', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(22, 'Sonal Mishra', 'sonal.m@legal.com', 'F', '9876500022', 'pass@123', 'user1.jpg', 'Mishra Legal', 'secondary_industry', 'Advocate', 'Indore', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(23, 'Kunal Bansal', 'kunal.b@ecom.com', 'M', '9876500023', 'pass@123', 'user1.jpg', 'Bansal Ecom', 'tertiary_industry', 'Founder', 'Noida', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(24, 'Ritika Arora', 'ritika.a@interior.com', 'G', '9876500024', 'pass@123', 'user1.jpg', 'Arora Interiors', 'primary_industry', 'Designer', 'Jaipur', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(25, 'Sameer Khan', 'sameer.k@events.com', 'F', '9876500025', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 0, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(26, 'Isha Gupta', 'isha.g@travel.com', 'M', '9876500026', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(27, 'Tushar Pandey', 'tushar.p@realty.com', 'G', '9876500027', 'pass@123', 'user1.jpg', 'Pandey Realty', 'secondary_industry', 'Broker', '', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(28, 'Nitin Saxena', 'nitin.s@bank.com', 'F', '9876500028', 'pass@123', 'user1.jpg', 'Saxena Bank', 'tertiary_industry', 'Clerk', 'Lucknow', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(29, 'Alok Verma', 'alok.v@consult.com', 'M', '9876500029', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(30, 'Priya Nair', 'priya.n@hrtech.com', 'G', '9876500030', 'pass@123', 'user1.jpg', 'Nair HR Tech', 'secondary_industry', 'HR Analyst', 'Kochi', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(31, 'Yash Modi', 'yash.m@fintech.com', 'F', '9876500031', 'pass@123', 'user1.jpg', 'Modi Fintech', 'primary_industry', 'CTO', 'Ahmedabad', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(32, 'Farah Ali', 'farah.a@content.com', 'M', '9876500032', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(33, 'Sanjay Pillai', 'sanjay.p@marine.com', 'G', '9876500033', 'pass@123', 'user1.jpg', 'Pillai Marine', 'tertiary_industry', 'Supervisor', 'Cochin', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(34, 'Kavita Deshmukh', 'kavita.d@ngo.com', 'F', '9876500034', 'pass@123', 'user1.jpg', 'Deshmukh Foundation', 'secondary_industry', 'Coordinator', 'Nagpur', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(35, 'Ravi Chandra', 'ravi.c@analytics.com', 'M', '9876500035', 'pass@123', 'user1.jpg', '', '', '', '', '', 0, 1, 0, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(36, 'Meera Iqbal', 'meera.i@fashion.com', 'G', '9876500036', 'pass@123', 'user1.jpg', 'Iqbal Fashion', 'primary_industry', 'Buyer', 'Mumbai', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(37, 'Akash Thakur', 'akash.t@construction.com', 'F', '9876500037', 'pass@123', 'user1.jpg', 'Thakur Builders', 'secondary_industry', 'Site Head', 'Bhopal', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(38, 'Renu Mathur', 'renu.m@education.com', 'M', '9876500038', 'pass@123', 'user1.jpg', '', '', '', '', '', 1, 1, 1, 0, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(39, 'Dev Joshi', 'dev.j@media.com', 'G', '9876500039', 'pass@123', 'user1.jpg', 'Joshi Media', 'tertiary_industry', 'Editor', 'Udaipur', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(40, 'Nikhil Pawar', 'nikhil.p@agro.com', 'F', '9876500040', 'pass@123', 'user1.jpg', 'Pawar Agro', 'primary_industry', 'Operations', 'Nashik', '', 1, 1, 1, 1, 1, 0, '2026-02-04 16:37:13', '2026-02-05 11:44:57'),
(78, 'Kunal Bansal', 'kunal.b@ecom.com', 'M', '9876500023', 'pass@123', 'user1.jpg', 'Bansal Ecom', 'tertiary_industry', 'Founder', 'Noida', 'RE-992831-B', 1, 1, 1, 1, 1, 0, '2026-02-04 18:29:45', '2026-02-05 11:44:57'),
(120, 'Kunal Bansal', 'kunal.b@ecom.com', 'M', '9876500023', 'pass@123', 'user1.jpg', '', 'primary_industry', '', '', '', 0, 1, 0, 0, 1, 0, '2026-02-04 18:46:08', '2026-02-05 11:44:57');

--
-- Triggers `tbl_user`
--
DELIMITER $$
CREATE TRIGGER `tbl_user_otp` AFTER INSERT ON `tbl_user` FOR EACH ROW INSERT INTO tbl_user_otp (user_id, otp, expires_at) VALUES ( NEW.id, LPAD(FLOOR(RAND() * 1000000), 6, '0'), DATE_ADD(NOW(), INTERVAL 10 MINUTE) )
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_otp`
--

CREATE TABLE `tbl_user_otp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expires_at` datetime NOT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_otp`
--

INSERT INTO `tbl_user_otp` (`id`, `user_id`, `otp`, `expires_at`, `is_used`, `created_at`) VALUES
(1, 1, '482913', '2023-07-01 10:10:00', 0, '2023-07-01 10:00:00'),
(2, 2, '739201', '2023-07-01 10:15:00', 0, '2023-07-01 10:05:00'),
(3, 3, '615829', '2023-07-01 10:20:00', 0, '2023-07-01 10:10:00'),
(4, 4, '904312', '2023-07-01 10:25:00', 0, '2023-07-01 10:15:00'),
(5, 5, '332198', '2023-06-20 09:40:00', 1, '2023-06-20 09:30:00'),
(6, 6, '771204', '2023-06-21 11:10:00', 1, '2023-06-21 11:00:00'),
(7, 7, '890113', '2023-06-22 14:30:00', 1, '2023-06-22 14:20:00'),
(8, 8, '456902', '2023-06-23 16:55:00', 1, '2023-06-23 16:45:00'),
(9, 9, '612457', '2023-06-24 12:20:00', 1, '2023-06-24 12:10:00'),
(10, 10, '998301', '2023-06-01 08:10:00', 0, '2023-06-01 08:00:00'),
(11, 11, '224590', '2023-06-02 09:25:00', 0, '2023-06-02 09:15:00'),
(12, 12, '781993', '2023-06-03 10:40:00', 0, '2023-06-03 10:30:00'),
(13, 13, '350217', '2023-06-04 11:55:00', 0, '2023-06-04 11:45:00'),
(14, 14, '663210', '2023-06-25 09:10:00', 1, '2023-06-25 09:00:00'),
(15, 14, '914572', '2023-06-25 09:22:00', 0, '2023-06-25 09:12:00'),
(16, 15, '428901', '2023-06-26 10:10:00', 1, '2023-06-26 10:00:00'),
(17, 15, '775309', '2023-06-26 10:25:00', 0, '2023-06-26 10:15:00'),
(18, 16, '610822', '2023-05-10 09:10:00', 1, '2023-05-10 09:00:00'),
(19, 17, '902115', '2023-05-12 14:40:00', 1, '2023-05-12 14:30:00'),
(20, 18, '731904', '2023-05-15 16:30:00', 1, '2023-05-15 16:20:00'),
(21, 19, '508722', '2023-05-18 11:20:00', 1, '2023-05-18 11:10:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aminities`
--
ALTER TABLE `tbl_aminities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user4_id_fk` (`user_id`),
  ADD KEY `prop4_id_fk` (`prop_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_id_fk` (`rating_id`),
  ADD KEY `user7_id_fk` (`user_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prop2_id_fk` (`prop_id`),
  ADD KEY `user2_id_fk` (`user_id`);

--
-- Indexes for table `tbl_properties`
--
ALTER TABLE `tbl_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id_fk` (`category_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbl_prop_aminities`
--
ALTER TABLE `tbl_prop_aminities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prop1_id_fk` (`prop_id`),
  ADD KEY `aminities1_id_fk` (`aminities_id`);

--
-- Indexes for table `tbl_prop_img`
--
ALTER TABLE `tbl_prop_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prop_id_fk` (`prop_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user5_id_fk` (`user_id`),
  ADD KEY `prop5_id_fk` (`prop_id`);

--
-- Indexes for table `tbl_reply`
--
ALTER TABLE `tbl_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_saved`
--
ALTER TABLE `tbl_saved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prop6_id_fk` (`prop_id`),
  ADD KEY `user6_id_fk` (`user_id`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proptax_id_fk` (`prop_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aminities`
--
ALTER TABLE `tbl_aminities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_properties`
--
ALTER TABLE `tbl_properties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_prop_aminities`
--
ALTER TABLE `tbl_prop_aminities`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `tbl_prop_img`
--
ALTER TABLE `tbl_prop_img`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_reply`
--
ALTER TABLE `tbl_reply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_saved`
--
ALTER TABLE `tbl_saved`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `prop4_id_fk` FOREIGN KEY (`prop_id`) REFERENCES `tbl_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user4_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD CONSTRAINT `rating_id_fk` FOREIGN KEY (`rating_id`) REFERENCES `tbl_rating` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user7_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `prop2_id_fk` FOREIGN KEY (`prop_id`) REFERENCES `tbl_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user2_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_properties`
--
ALTER TABLE `tbl_properties`
  ADD CONSTRAINT `cate_id_fk` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_prop_aminities`
--
ALTER TABLE `tbl_prop_aminities`
  ADD CONSTRAINT `aminities1_id_fk` FOREIGN KEY (`aminities_id`) REFERENCES `tbl_aminities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prop1_id_fk` FOREIGN KEY (`prop_id`) REFERENCES `tbl_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_prop_img`
--
ALTER TABLE `tbl_prop_img`
  ADD CONSTRAINT `prop_id_fk` FOREIGN KEY (`prop_id`) REFERENCES `tbl_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD CONSTRAINT `prop5_id_fk` FOREIGN KEY (`prop_id`) REFERENCES `tbl_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user5_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_saved`
--
ALTER TABLE `tbl_saved`
  ADD CONSTRAINT `prop6_id_fk` FOREIGN KEY (`prop_id`) REFERENCES `tbl_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user6_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD CONSTRAINT `proptax_id_fk` FOREIGN KEY (`prop_id`) REFERENCES `tbl_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  ADD CONSTRAINT `tbl_user_otp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
