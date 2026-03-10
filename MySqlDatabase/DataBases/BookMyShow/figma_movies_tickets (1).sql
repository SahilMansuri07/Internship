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
-- Database: `figma_movies_tickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actors`
--

CREATE TABLE `tbl_actors` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_actors`
--

INSERT INTO `tbl_actors` (`id`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shah Rukh Khan', 'srk_profile.jpg', 'Known as the \"Baadshah of Bollywood\", a global icon with over 80 films.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(2, 'Deepika Padukone', 'deepika_p.jpg', 'One of India\'s highest-paid actresses, famous for her roles in global blockbusters.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(3, 'Prabhas', 'prabhas_actor.jpg', 'Massive South Indian star known for his role in the Baahubali and Kalki franchises.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(4, 'Alia Bhatt', 'alia_b.jpg', 'A highly versatile actress known for her roles in Raazi, RRR, and Gangubai Kathiawadi.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(5, 'Robert Downey Jr.', 'rdj_profile.jpg', 'Critically acclaimed actor, globally recognized for his work in the Marvel Cinematic Universe.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(6, 'Tom Cruise', 'tom_cruise.jpg', 'Action legend famous for performing his own stunts in the Mission: Impossible series.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(7, 'Scarlett Johansson', 'scarlett_j.jpg', 'Renowned for her versatility, spanning from action-packed roles to indie dramas.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(8, 'Ranbir Kapoor', 'ranbir_k.jpg', 'Award-winning actor known for intense performances in films like Rockstar and Animal.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(9, 'Rashmika Mandanna', 'rashmika_m.jpg', 'Popular across India, often called the \"National Crush\" for her performance in Pushpa.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(10, 'Allu Arjun', 'allu_arjun.jpg', 'Leading Telugu actor known for his dancing and the global hit Pushpa: The Rise.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(11, 'Amitabh Bachchan', 'amitabh_b.jpg', 'Legendary \"Big B\" of Bollywood, with a career spanning over five decades.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(12, 'Zendaya', 'zendaya_profile.jpg', 'Emmy-winning American actress known for Euphoria and the Dune series.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(13, 'Cillian Murphy', 'cillian_m.jpg', 'Oscar-winning Irish actor known for Oppenheimer and Peaky Blinders.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(14, 'Ram Charan', 'ram_charan.jpg', 'Global star following the success of RRR, known for his charismatic screen presence.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(15, 'Kiara Advani', 'kiara_a.jpg', 'Successful Bollywood actress known for Kabir Singh and Shershaah.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(16, 'Hrithik Roshan', 'hrithik_r.jpg', 'Famous for his exceptional dancing skills and roles in action-packed thrillers.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(17, 'Florence Pugh', 'florence_p.jpg', 'Talented British actress known for Midsommar, Black Widow, and Oppenheimer.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(18, 'Vijay Thalapathy', 'vijay_t.jpg', 'Massive superstar in the Tamil film industry with a dedicated global fanbase.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(19, 'Margot Robbie', 'margot_r.jpg', 'Australian actress and producer, iconic for her roles as Harley Quinn and Barbie.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(20, 'Vicky Kaushal', 'vicky_k.jpg', 'National Award-winning actor known for URI and Sardar Udham.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(21, 'Nayanthara', 'nayanthara.jpg', 'Often called the \"Lady Superstar\" of South Indian cinema for her lead roles.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(22, 'Leonardo DiCaprio', 'leo_d.jpg', 'Academy Award winner known for his intense character-driven performances.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(23, 'Ayushmann Khurrana', 'ayushmann_k.jpg', 'Famous for his unique \"taboo-breaking\" films in the Hindi film industry.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(24, 'Yash', 'yash_kgf.jpg', 'Kannada superstar who gained pan-India stardom with the KGF franchise.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31'),
(25, 'Emma Stone', 'emma_stone.jpg', 'Versatile Academy Award winner known for La La Land and Poor Things.', 'active', '2026-02-16 11:31:31', '2026-02-16 11:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `show_id` bigint(20) NOT NULL,
  `booking_number` varchar(64) NOT NULL,
  `booking_date` datetime DEFAULT current_timestamp(),
  `total_amount` decimal(10,2) NOT NULL,
  `booking_status` enum('pending','booked','cancelled') DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`id`, `user_id`, `show_id`, `booking_number`, `booking_date`, `total_amount`, `booking_status`, `created_at`, `updated_at`) VALUES
(1, 14, 10, 'BKG2026803192', '2026-02-12 20:34:00', 360.00, 'cancelled', '2026-02-13 18:33:48', '2026-02-13 18:33:48'),
(2, 23, 20, 'BKG2026247861', '2026-02-12 15:52:00', 360.00, 'cancelled', '2026-02-13 18:33:48', '2026-02-13 18:33:48'),
(3, 17, 3, 'BKG2026745986', '2026-02-12 16:36:00', 900.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(4, 7, 21, 'BKG2026440344', '2026-02-12 20:02:00', 250.00, 'cancelled', '2026-02-13 18:33:48', '2026-02-13 18:33:48'),
(5, 8, 10, 'BKG2026345071', '2026-02-10 14:09:00', 540.00, 'cancelled', '2026-02-13 18:33:48', '2026-02-13 18:33:48'),
(6, 8, 16, 'BKG2026580900', '2026-02-10 14:37:00', 750.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(7, 19, 8, 'BKG2026963004', '2026-02-11 11:56:00', 360.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(8, 12, 14, 'BKG2026383798', '2026-02-11 16:37:00', 250.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(9, 19, 4, 'BKG2026370868', '2026-02-12 21:53:00', 360.00, 'cancelled', '2026-02-13 18:33:48', '2026-02-13 18:33:48'),
(10, 18, 5, 'BKG2026403423', '2026-02-12 19:59:00', 900.00, 'pending', '2026-02-13 18:33:48', '2026-02-13 18:33:48'),
(11, 17, 1, 'BKG2026213487', '2026-02-12 12:27:00', 750.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(12, 12, 25, 'BKG2026868880', '2026-02-12 20:08:00', 250.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(13, 18, 2, 'BKG2026834736', '2026-02-12 11:04:00', 540.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(14, 11, 4, 'BKG2026293573', '2026-02-10 20:25:00', 450.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(15, 5, 16, 'BKG2026617422', '2026-02-11 16:39:00', 250.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(16, 1, 6, 'BKG2026694156', '2026-02-11 15:03:00', 250.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(17, 10, 13, 'BKG2026959080', '2026-02-11 17:14:00', 360.00, 'pending', '2026-02-13 18:33:48', '2026-02-13 18:33:48'),
(18, 12, 22, 'BKG2026129087', '2026-02-11 17:34:00', 450.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(19, 16, 3, 'BKG2026324503', '2026-02-11 14:13:00', 750.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32'),
(20, 1, 25, 'BKG2026234391', '2026-02-12 21:31:00', 500.00, 'booked', '2026-02-13 18:33:48', '2026-02-16 18:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_seats`
--

CREATE TABLE `tbl_booking_seats` (
  `id` bigint(20) NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `seats_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking_seats`
--

INSERT INTO `tbl_booking_seats` (`id`, `booking_id`, `seats_id`, `price`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 106, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(2, 1, 107, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(3, 2, 231, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(4, 2, 226, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(5, 3, 40, 450.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(6, 3, 21, 450.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(7, 4, 250, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(8, 5, 115, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(9, 5, 116, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(10, 5, 110, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(11, 6, 183, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(12, 6, 185, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(13, 6, 182, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(14, 7, 119, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(15, 7, 107, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(16, 8, 123, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(17, 9, 52, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(18, 9, 58, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(19, 10, 29, 450.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(20, 10, 34, 450.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(21, 11, 12, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(22, 11, 1, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(23, 11, 7, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(24, 12, 257, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(25, 13, 49, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(26, 13, 55, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(27, 13, 52, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(28, 14, 22, 450.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(29, 15, 181, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(30, 16, 64, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(31, 17, 166, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(32, 17, 176, 180.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(33, 18, 270, 450.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(34, 19, 20, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(35, 19, 17, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(36, 19, 19, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(37, 20, 253, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58'),
(38, 20, 242, 250.00, 1, 0, '2026-02-13 18:33:58', '2026-02-13 18:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dynamic_pricing`
--

CREATE TABLE `tbl_dynamic_pricing` (
  `id` bigint(20) NOT NULL,
  `screen_id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `show_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`id`, `name`, `status`) VALUES
(1, 'Action', 'active'),
(2, 'Sci-Fi', 'active'),
(3, 'Drama', 'active'),
(4, 'Thriller', 'active'),
(5, 'Comedy', 'active'),
(6, 'Horror', 'active'),
(7, 'Adventure', 'active'),
(8, 'Fantasy', 'active'),
(9, 'Animation', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lang`
--

CREATE TABLE `tbl_lang` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lang`
--

INSERT INTO `tbl_lang` (`id`, `name`, `status`) VALUES
(1, 'Hindi', 'active'),
(2, 'English', 'active'),
(3, 'Telugu', 'active'),
(4, 'Tamil', 'active'),
(5, 'Kannada', 'active'),
(6, 'Malayalam', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like`
--

CREATE TABLE `tbl_like` (
  `id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_liked` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_like`
--

INSERT INTO `tbl_like` (`id`, `movies_id`, `user_id`, `is_liked`, `created_at`, `updated_at`) VALUES
(1, 1, 14, 1, '2026-01-18 15:18:00', '2026-02-16 15:07:15'),
(2, 1, 3, 1, '2026-01-30 21:13:00', '2026-02-16 15:07:15'),
(3, 1, 22, 1, '2026-01-01 12:30:00', '2026-02-16 15:07:15'),
(4, 1, 1, 1, '2026-01-11 23:19:00', '2026-02-16 15:07:15'),
(5, 1, 16, 1, '2026-01-18 19:36:00', '2026-02-16 15:07:15'),
(6, 1, 4, 1, '2026-02-07 03:37:00', '2026-02-16 15:07:15'),
(7, 1, 19, 1, '2026-01-06 21:10:00', '2026-02-16 15:07:15'),
(8, 3, 17, 1, '2026-01-15 16:02:00', '2026-02-16 15:07:15'),
(9, 3, 5, 1, '2026-02-03 05:26:00', '2026-02-16 15:07:15'),
(10, 3, 1, 1, '2026-02-03 13:09:00', '2026-02-16 15:07:15'),
(11, 3, 10, 1, '2026-01-19 20:07:00', '2026-02-16 15:07:15'),
(12, 3, 24, 1, '2026-01-02 06:28:00', '2026-02-16 15:07:15'),
(13, 3, 5, 1, '2026-01-25 07:02:00', '2026-02-16 15:07:15'),
(14, 3, 8, 1, '2026-02-04 04:47:00', '2026-02-16 15:07:15'),
(15, 3, 21, 1, '2026-01-21 05:35:00', '2026-02-16 15:07:15'),
(16, 3, 12, 1, '2026-01-30 11:43:00', '2026-02-16 15:07:15'),
(17, 7, 2, 1, '2026-02-10 14:01:00', '2026-02-16 15:07:15'),
(18, 7, 19, 1, '2026-02-07 22:53:00', '2026-02-16 15:07:15'),
(19, 7, 1, 1, '2026-02-07 07:13:00', '2026-02-16 15:07:15'),
(20, 7, 23, 1, '2026-01-31 17:24:00', '2026-02-16 15:07:15'),
(21, 7, 11, 1, '2026-01-30 11:30:00', '2026-02-16 15:07:15'),
(22, 7, 6, 1, '2026-01-13 08:59:00', '2026-02-16 15:07:15'),
(23, 7, 15, 1, '2026-01-20 18:14:00', '2026-02-16 15:07:15'),
(24, 7, 20, 1, '2026-02-04 20:57:00', '2026-02-16 15:07:15'),
(25, 11, 8, 1, '2026-02-06 09:26:00', '2026-02-16 15:07:15'),
(26, 11, 2, 1, '2026-01-20 03:36:00', '2026-02-16 15:07:15'),
(27, 11, 18, 1, '2026-01-29 11:31:00', '2026-02-16 15:07:15'),
(28, 11, 9, 1, '2026-01-05 20:29:00', '2026-02-16 15:07:15'),
(29, 11, 7, 1, '2026-02-05 05:46:00', '2026-02-16 15:07:15'),
(30, 11, 25, 1, '2026-02-04 13:48:00', '2026-02-16 15:07:16'),
(31, 15, 12, 1, '2026-01-07 22:04:00', '2026-02-16 15:07:16'),
(32, 15, 23, 1, '2026-01-03 07:51:00', '2026-02-16 15:07:16'),
(33, 15, 3, 1, '2026-01-06 01:47:00', '2026-02-16 15:07:16'),
(34, 15, 13, 1, '2026-02-08 01:00:00', '2026-02-16 15:07:16'),
(35, 15, 15, 1, '2026-02-04 02:07:00', '2026-02-16 15:07:16'),
(36, 15, 14, 1, '2026-02-07 10:56:00', '2026-02-16 15:07:16'),
(37, 15, 21, 1, '2026-01-02 11:10:00', '2026-02-16 15:07:16'),
(38, 15, 11, 1, '2026-02-09 23:21:00', '2026-02-16 15:07:16'),
(39, 15, 4, 1, '2026-01-06 10:45:00', '2026-02-16 15:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `poster` varchar(500) DEFAULT NULL,
  `ua_rated` enum('U','UA','A') DEFAULT 'U',
  `runtime` time NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`id`, `name`, `poster`, `ua_rated`, `runtime`, `description`, `status`, `created_at`) VALUES
(1, 'Pathaan 2', 'pathaan_2_poster.jpg', 'UA', '02:45:00', 'The spy returns for his most dangerous mission yet, involving a global conspiracy and high-octane action.', 'active', '2026-02-13 12:21:15'),
(2, 'The Batman: Part II', 'batman_2_2026.jpg', 'A', '02:55:00', 'Bruce Wayne delves deeper into the corruption of Gotham City while facing a new, mysterious threat.', 'active', '2026-02-13 12:21:15'),
(3, 'Pushpa 2: The Rule', 'pushpa_2_rule.jpg', 'UA', '03:10:00', 'The clash continues as Pushpa Raj takes his sandalwood empire to a global scale amidst rising enemies.', 'active', '2026-02-13 12:21:15'),
(4, 'Oppenheimer', 'oppenheimer_intl.jpg', 'UA', '03:00:00', 'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.', 'active', '2026-02-13 12:21:15'),
(5, 'Animal', 'animal_vanga.jpg', 'A', '03:21:00', 'A father-son bond is tested as the son descends into a world of violence to protect his family.', 'active', '2026-02-13 12:21:15'),
(6, 'Dune: Part Two', 'dune_2_poster.jpg', 'UA', '02:46:00', 'Paul Atreides unites with Chani and the Fremen while on a warpath of revenge against the conspirators.', 'active', '2026-02-13 12:21:15'),
(7, 'Jawan', 'jawan_srk.jpg', 'UA', '02:49:00', 'A high-octane action thriller which outlines the emotional journey of a man who is set to rectify the wrongs in the society.', 'active', '2026-02-13 12:21:15'),
(8, 'Barbie', 'barbie_the_movie.jpg', 'U', '01:54:00', 'Barbie suffers a crisis that leads her to question her world and her existence.', 'active', '2026-02-13 12:21:15'),
(9, 'Fighter', 'fighter_hrithik.jpg', 'UA', '02:42:00', 'Top IAF aviators come together in the face of imminent danger to form Air Dragons.', 'active', '2026-02-13 12:21:15'),
(10, 'Spider-Man: Beyond the Spider-Verse', 'spiderman_beyond.jpg', 'U', '02:20:00', 'Miles Morales returns for the next chapter of the Oscar-winning Spider-Verse saga.', 'active', '2026-02-13 12:21:15'),
(11, 'RRR', 'rrr_global.jpg', 'UA', '03:02:00', 'A fictitious story about two legendary revolutionaries and their journey away from home before they started fighting for their country.', 'active', '2026-02-13 12:21:15'),
(12, 'Mission: Impossible 8', 'mi_8_dead_reckon.jpg', 'UA', '02:35:00', 'Ethan Hunt and his IMF team embark on their most dangerous mission yet.', 'active', '2026-02-13 12:21:15'),
(13, 'Bhool Bhulaiyaa 3', 'bb_3_poster.jpg', 'UA', '02:30:00', 'Rooh Baba returns to a haunted mansion to solve a new supernatural mystery filled with laughs and scares.', 'active', '2026-02-13 12:21:15'),
(14, 'Avatar: Fire and Ash', 'avatar_3_2025.jpg', 'UA', '03:15:00', 'Jake Sully and Neytiri encounter a new tribe of Na\'vi that represents a more aggressive side of Pandora.', 'active', '2026-02-13 12:21:15'),
(15, 'Kalki 2898 AD', 'kalki_poster.jpg', 'UA', '03:01:00', 'A modern-day avatar of Vishnu, a Hindu god, who is believed to have descended to earth to protect the world from evil forces.', 'active', '2026-02-13 12:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies_genre`
--

CREATE TABLE `tbl_movies_genre` (
  `id` bigint(20) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `genre_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movies_genre`
--

INSERT INTO `tbl_movies_genre` (`id`, `movie_id`, `genre_id`, `created_at`) VALUES
(1, 1, 1, '2026-02-13 17:53:31'),
(2, 1, 4, '2026-02-13 17:53:31'),
(3, 2, 1, '2026-02-13 17:53:31'),
(4, 2, 4, '2026-02-13 17:53:31'),
(5, 3, 1, '2026-02-13 17:53:31'),
(6, 3, 3, '2026-02-13 17:53:31'),
(7, 4, 3, '2026-02-13 17:53:31'),
(8, 4, 4, '2026-02-13 17:53:31'),
(9, 5, 1, '2026-02-13 17:53:31'),
(10, 5, 3, '2026-02-13 17:53:31'),
(11, 6, 2, '2026-02-13 17:53:31'),
(12, 6, 7, '2026-02-13 17:53:31'),
(13, 7, 1, '2026-02-13 17:53:31'),
(14, 7, 4, '2026-02-13 17:53:31'),
(15, 8, 5, '2026-02-13 17:53:31'),
(16, 8, 8, '2026-02-13 17:53:31'),
(17, 9, 1, '2026-02-13 17:53:31'),
(18, 9, 7, '2026-02-13 17:53:31'),
(19, 10, 9, '2026-02-13 17:53:31'),
(20, 10, 1, '2026-02-13 17:53:31'),
(21, 11, 1, '2026-02-13 17:53:31'),
(22, 11, 3, '2026-02-13 17:53:31'),
(23, 12, 1, '2026-02-13 17:53:31'),
(24, 12, 7, '2026-02-13 17:53:31'),
(25, 13, 5, '2026-02-13 17:53:31'),
(26, 13, 6, '2026-02-13 17:53:31'),
(27, 14, 2, '2026-02-13 17:53:31'),
(28, 14, 7, '2026-02-13 17:53:31'),
(29, 15, 2, '2026-02-13 17:53:31'),
(30, 15, 8, '2026-02-13 17:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies_lang`
--

CREATE TABLE `tbl_movies_lang` (
  `id` bigint(20) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `lang_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movies_lang`
--

INSERT INTO `tbl_movies_lang` (`id`, `movie_id`, `lang_id`, `created_at`) VALUES
(1, 1, 1, '2026-02-13 17:53:07'),
(2, 1, 2, '2026-02-13 17:53:07'),
(3, 1, 3, '2026-02-13 17:53:07'),
(4, 1, 4, '2026-02-13 17:53:07'),
(5, 2, 2, '2026-02-13 17:53:07'),
(6, 2, 1, '2026-02-13 17:53:07'),
(7, 2, 3, '2026-02-13 17:53:07'),
(8, 2, 4, '2026-02-13 17:53:07'),
(9, 3, 3, '2026-02-13 17:53:07'),
(10, 3, 1, '2026-02-13 17:53:07'),
(11, 3, 4, '2026-02-13 17:53:07'),
(12, 3, 5, '2026-02-13 17:53:07'),
(13, 3, 6, '2026-02-13 17:53:07'),
(14, 4, 2, '2026-02-13 17:53:07'),
(15, 4, 1, '2026-02-13 17:53:07'),
(16, 5, 1, '2026-02-13 17:53:07'),
(17, 5, 3, '2026-02-13 17:53:07'),
(18, 5, 4, '2026-02-13 17:53:07'),
(19, 5, 5, '2026-02-13 17:53:07'),
(20, 5, 6, '2026-02-13 17:53:07'),
(21, 6, 2, '2026-02-13 17:53:07'),
(22, 6, 1, '2026-02-13 17:53:07'),
(23, 7, 1, '2026-02-13 17:53:07'),
(24, 7, 4, '2026-02-13 17:53:07'),
(25, 7, 3, '2026-02-13 17:53:07'),
(26, 8, 2, '2026-02-13 17:53:07'),
(27, 8, 1, '2026-02-13 17:53:07'),
(28, 9, 1, '2026-02-13 17:53:07'),
(29, 10, 2, '2026-02-13 17:53:07'),
(30, 10, 1, '2026-02-13 17:53:07'),
(31, 10, 4, '2026-02-13 17:53:07'),
(32, 10, 3, '2026-02-13 17:53:07'),
(33, 11, 3, '2026-02-13 17:53:07'),
(34, 11, 1, '2026-02-13 17:53:07'),
(35, 11, 4, '2026-02-13 17:53:07'),
(36, 11, 5, '2026-02-13 17:53:07'),
(37, 11, 6, '2026-02-13 17:53:07'),
(38, 12, 2, '2026-02-13 17:53:07'),
(39, 12, 1, '2026-02-13 17:53:07'),
(40, 12, 4, '2026-02-13 17:53:07'),
(41, 12, 3, '2026-02-13 17:53:07'),
(42, 13, 1, '2026-02-13 17:53:07'),
(43, 14, 2, '2026-02-13 17:53:07'),
(44, 14, 1, '2026-02-13 17:53:07'),
(45, 14, 3, '2026-02-13 17:53:07'),
(46, 14, 4, '2026-02-13 17:53:07'),
(47, 14, 5, '2026-02-13 17:53:07'),
(48, 14, 6, '2026-02-13 17:53:07'),
(49, 15, 3, '2026-02-13 17:53:07'),
(50, 15, 1, '2026-02-13 17:53:07'),
(51, 15, 4, '2026-02-13 17:53:07'),
(52, 15, 5, '2026-02-13 17:53:07'),
(53, 15, 6, '2026-02-13 17:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies_screens`
--

CREATE TABLE `tbl_movies_screens` (
  `id` bigint(20) NOT NULL,
  `theatre_id` bigint(20) NOT NULL,
  `screen_name` varchar(100) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movies_screens`
--

INSERT INTO `tbl_movies_screens` (`id`, `theatre_id`, `screen_name`, `total_seats`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Audi 1 (IMAX)', 250, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(2, 1, 'Audi 2', 180, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(3, 1, 'Audi 3', 180, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(4, 1, 'Audi 4 (VIP)', 40, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(5, 1, 'Audi 5', 150, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(6, 1, 'Audi 6', 150, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(7, 2, 'Screen 1 (PXL)', 300, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(8, 2, 'Screen 2 (Gold)', 32, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(9, 2, 'Screen 3', 200, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(10, 2, 'Screen 4', 200, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(11, 2, 'Screen 5', 180, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(12, 3, 'Screen A', 220, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(13, 3, 'Screen B', 220, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(14, 3, 'Screen C', 180, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(15, 3, 'Screen D', 180, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(16, 4, 'Open Air Screen', 600, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(17, 5, 'Gold 1', 150, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(18, 5, 'Gold 2', 150, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(19, 5, 'Gold 3', 120, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(20, 5, 'Gold 4', 120, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(21, 6, 'Inox 1 (Insignia)', 45, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(22, 6, 'Inox 2', 180, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(23, 6, 'Inox 3', 180, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(24, 6, 'Inox 4', 150, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(25, 6, 'Inox 5', 150, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(26, 7, 'Audi 1', 140, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(27, 7, 'Audi 2', 140, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(28, 7, 'Audi 3', 120, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(29, 8, 'Screen 1', 160, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(30, 8, 'Screen 2', 160, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(31, 8, 'Screen 3', 140, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(32, 9, 'Screen 1', 200, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(33, 9, 'Screen 2', 200, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(34, 10, 'Miniplex 1', 60, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33'),
(35, 10, 'Miniplex 2', 60, 1, 0, '2026-02-13 17:54:33', '2026-02-13 17:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_cast`
--

CREATE TABLE `tbl_movie_cast` (
  `id` bigint(20) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `role_name` enum('cast','crew') DEFAULT NULL,
  `is_lead` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movie_cast`
--

INSERT INTO `tbl_movie_cast` (`id`, `movie_id`, `actor_id`, `role_name`, `is_lead`, `created_at`) VALUES
(1, 1, 1, 'cast', 1, '2026-02-13 18:30:57'),
(2, 1, 2, 'cast', 1, '2026-02-13 18:30:57'),
(3, 2, 5, 'cast', 1, '2026-02-13 18:30:57'),
(4, 2, 17, 'cast', 0, '2026-02-13 18:30:57'),
(5, 3, 10, 'cast', 1, '2026-02-13 18:30:57'),
(6, 3, 9, 'cast', 1, '2026-02-13 18:30:57'),
(7, 4, 13, 'cast', 1, '2026-02-13 18:30:57'),
(8, 4, 17, 'cast', 0, '2026-02-13 18:30:57'),
(9, 5, 8, 'cast', 1, '2026-02-13 18:30:57'),
(10, 5, 9, 'cast', 1, '2026-02-13 18:30:57'),
(11, 6, 12, 'cast', 1, '2026-02-13 18:30:57'),
(12, 6, 17, 'cast', 0, '2026-02-13 18:30:57'),
(13, 7, 1, 'cast', 1, '2026-02-13 18:30:57'),
(14, 7, 21, 'cast', 1, '2026-02-13 18:30:57'),
(15, 8, 19, 'cast', 1, '2026-02-13 18:30:57'),
(16, 9, 16, 'cast', 1, '2026-02-13 18:30:57'),
(17, 9, 2, 'cast', 1, '2026-02-13 18:30:57'),
(18, 10, 12, 'cast', 0, '2026-02-13 18:30:57'),
(19, 11, 14, 'cast', 1, '2026-02-13 18:30:57'),
(20, 11, 4, 'cast', 0, '2026-02-13 18:30:57'),
(21, 12, 6, 'cast', 1, '2026-02-13 18:30:57'),
(22, 13, 20, 'cast', 1, '2026-02-13 18:30:57'),
(23, 13, 15, 'cast', 0, '2026-02-13 18:30:57'),
(24, 14, 13, 'cast', 0, '2026-02-13 18:30:57'),
(25, 15, 3, 'cast', 1, '2026-02-13 18:30:57'),
(26, 1, 11, 'crew', 0, '2026-02-13 18:30:57'),
(27, 4, 13, 'crew', 0, '2026-02-13 18:30:57'),
(28, 11, 14, 'crew', 0, '2026-02-13 18:30:57'),
(29, 15, 3, 'crew', 0, '2026-02-13 18:30:57'),
(30, 8, 19, 'crew', 0, '2026-02-13 18:30:57');

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
(1, 8, '857379', 'login', 0, NULL, '2026-02-11 19:20:00', '2026-02-11 19:10:00'),
(2, 9, '477075', 'forgot_password', 1, '2026-02-10 16:09:53', '2026-02-10 16:16:00', '2026-02-10 16:06:00'),
(3, 2, '200357', 'login', 1, NULL, '2026-02-11 04:43:00', '2026-02-11 04:33:00'),
(4, 17, '393140', 'register', 1, '2026-02-13 10:19:27', '2026-02-13 10:27:00', '2026-02-13 10:17:00'),
(5, 22, '983017', 'forgot_password', 1, '2026-02-13 01:34:20', '2026-02-13 01:42:00', '2026-02-13 01:32:00'),
(6, 10, '905326', 'register', 0, NULL, '2026-02-14 09:48:00', '2026-02-14 09:38:00'),
(7, 3, '489134', 'login', 0, NULL, '2026-02-14 08:35:00', '2026-02-14 08:25:00'),
(8, 7, '137231', 'login', 0, NULL, '2026-02-13 02:55:00', '2026-02-13 02:45:00'),
(9, 21, '559508', 'forgot_password', 1, '2026-02-12 15:44:10', '2026-02-12 15:49:00', '2026-02-12 15:39:00'),
(10, 21, '305236', 'login', 0, NULL, '2026-02-11 05:26:00', '2026-02-11 05:16:00'),
(11, 11, '831364', 'register', 0, NULL, '2026-02-11 22:24:00', '2026-02-11 22:14:00'),
(12, 16, '322958', 'register', 1, '2026-02-12 08:04:36', '2026-02-12 08:10:00', '2026-02-12 08:00:00'),
(13, 6, '951956', 'register', 0, NULL, '2026-02-11 01:11:00', '2026-02-11 01:01:00'),
(14, 24, '578819', 'login', 0, NULL, '2026-02-12 08:34:00', '2026-02-12 08:24:00'),
(15, 17, '868797', 'forgot_password', 0, NULL, '2026-02-11 02:07:00', '2026-02-11 01:57:00'),
(16, 4, '277229', 'login', 0, NULL, '2026-02-13 15:40:00', '2026-02-13 15:30:00'),
(17, 6, '142752', 'forgot_password', 0, NULL, '2026-02-14 08:26:00', '2026-02-14 08:16:00'),
(18, 3, '892259', 'forgot_password', 1, '2026-02-13 12:21:15', '2026-02-13 12:30:00', '2026-02-13 12:20:00'),
(19, 3, '786625', 'forgot_password', 1, '2026-02-13 12:52:24', '2026-02-13 12:59:00', '2026-02-13 12:49:00'),
(20, 16, '999957', 'register', 0, NULL, '2026-02-12 05:31:00', '2026-02-12 05:21:00'),
(21, 8, '833459', 'login', 1, '2026-02-12 05:40:59', '2026-02-12 05:47:00', '2026-02-12 05:37:00'),
(22, 10, '586750', 'login', 0, NULL, '2026-02-11 12:31:00', '2026-02-11 12:21:00'),
(23, 3, '634701', 'register', 0, NULL, '2026-02-11 09:54:00', '2026-02-11 09:44:00'),
(24, 1, '810883', 'forgot_password', 0, NULL, '2026-02-10 14:05:00', '2026-02-10 13:55:00'),
(25, 4, '524646', 'register', 1, '2026-02-12 01:12:07', '2026-02-12 01:21:00', '2026-02-12 01:11:00'),
(26, 11, '833556', 'forgot_password', 1, '2026-02-13 20:21:15', '2026-02-13 20:26:00', '2026-02-13 20:16:00'),
(27, 18, '310217', 'forgot_password', 0, NULL, '2026-02-13 10:42:00', '2026-02-13 10:32:00'),
(28, 24, '229623', 'forgot_password', 1, '2026-02-14 01:33:02', '2026-02-14 01:38:00', '2026-02-14 01:28:00'),
(29, 2, '107122', 'login', 0, NULL, '2026-02-12 19:44:00', '2026-02-12 19:34:00'),
(30, 20, '282444', 'forgot_password', 0, NULL, '2026-02-13 18:00:00', '2026-02-13 17:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` decimal(2,1) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `movies_id`, `user_id`, `rating`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4.8, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:48'),
(2, 1, 2, 4.5, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:49'),
(3, 2, 3, 4.2, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:49'),
(4, 2, 4, 3.9, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:49'),
(5, 3, 5, 4.9, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:49'),
(6, 3, 6, 5.0, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:49'),
(7, 4, 7, 4.7, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:49'),
(8, 4, 8, 4.6, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:50'),
(9, 5, 9, 3.5, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:50'),
(10, 5, 10, 4.1, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:50'),
(11, 6, 11, 4.4, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(12, 6, 12, 4.3, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(13, 7, 13, 4.6, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(14, 7, 14, 4.2, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(15, 8, 15, 3.8, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(16, 8, 16, 4.0, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(17, 9, 17, 3.2, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(18, 9, 18, 3.5, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(19, 10, 19, 4.7, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(20, 10, 20, 4.9, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(21, 11, 21, 4.8, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(22, 11, 22, 5.0, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(23, 12, 23, 4.1, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(24, 12, 24, 3.7, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(25, 13, 25, 3.4, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(26, 13, 1, 3.1, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(27, 14, 2, 4.5, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(28, 14, 3, 4.2, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(29, 15, 4, 4.3, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(30, 15, 5, 4.6, 1, 0, '2026-02-13 18:29:21', '2026-02-16 15:33:51'),
(21, 11, 21, 4.8, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(22, 11, 22, 5.0, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(23, 12, 23, 4.1, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(24, 12, 24, 3.7, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(25, 13, 25, 3.4, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(26, 13, 1, 3.1, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(27, 14, 2, 4.5, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(28, 14, 3, 4.2, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(29, 15, 4, 4.3, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(30, 15, 5, 4.6, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(31, 1, 6, 4.8, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(32, 1, 7, 4.5, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(33, 2, 8, 4.2, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(34, 2, 9, 3.9, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(35, 3, 10, 4.9, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(36, 3, 11, 5.0, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(37, 4, 12, 4.7, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(38, 4, 13, 4.6, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(39, 5, 14, 3.5, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(40, 5, 15, 4.1, 1, 0, '2026-02-13 18:30:43', '2026-02-16 15:33:51'),
(41, 6, 0, 4.4, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(42, 6, 0, 4.3, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(43, 7, 0, 4.6, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(44, 7, 0, 4.2, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(45, 8, 0, 3.8, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(46, 8, 0, 4.0, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(47, 9, 0, 3.2, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(48, 9, 0, 3.5, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(49, 10, 0, 4.7, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43'),
(50, 10, 0, 4.9, 1, 0, '2026-02-13 18:30:43', '2026-02-13 18:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seats`
--

CREATE TABLE `tbl_seats` (
  `id` bigint(20) NOT NULL,
  `screen_id` bigint(20) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `seat_type_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_seats`
--

INSERT INTO `tbl_seats` (`id`, `screen_id`, `seat_number`, `seat_type_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(2, 1, 'A2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(3, 1, 'A3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(4, 1, 'A4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(5, 1, 'A5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(6, 1, 'A6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(7, 1, 'A7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(8, 1, 'A8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(9, 1, 'A9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(10, 1, 'A10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(11, 1, 'B1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(12, 1, 'B2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(13, 1, 'B3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(14, 1, 'B4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(15, 1, 'B5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(16, 1, 'B6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(17, 1, 'B7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(18, 1, 'B8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(19, 1, 'B9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(20, 1, 'B10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(21, 1, 'C1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(22, 1, 'C2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(23, 1, 'C3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(24, 1, 'C4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(25, 1, 'C5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(26, 1, 'C6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(27, 1, 'C7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(28, 1, 'C8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(29, 1, 'C9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(30, 1, 'C10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(31, 1, 'D1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(32, 1, 'D2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(33, 1, 'D3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(34, 1, 'D4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(35, 1, 'D5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(36, 1, 'D6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(37, 1, 'D7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(38, 1, 'D8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(39, 1, 'D9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(40, 1, 'D10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(41, 1, 'E1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(42, 1, 'E2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(43, 1, 'E3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(44, 1, 'E4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(45, 1, 'E5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(46, 1, 'E6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(47, 1, 'E7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(48, 1, 'E8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(49, 1, 'E9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(50, 1, 'E10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(51, 1, 'F1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(52, 1, 'F2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(53, 1, 'F3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(54, 1, 'F4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(55, 1, 'F5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(56, 1, 'F6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(57, 1, 'F7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(58, 1, 'F8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(59, 1, 'F9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(60, 1, 'F10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(61, 2, 'A1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(62, 2, 'A2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(63, 2, 'A3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(64, 2, 'A4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(65, 2, 'A5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(66, 2, 'A6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(67, 2, 'A7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(68, 2, 'A8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(69, 2, 'A9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(70, 2, 'A10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(71, 2, 'B1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(72, 2, 'B2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(73, 2, 'B3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(74, 2, 'B4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(75, 2, 'B5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(76, 2, 'B6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(77, 2, 'B7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(78, 2, 'B8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(79, 2, 'B9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(80, 2, 'B10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(81, 2, 'C1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(82, 2, 'C2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(83, 2, 'C3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(84, 2, 'C4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(85, 2, 'C5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(86, 2, 'C6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(87, 2, 'C7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(88, 2, 'C8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(89, 2, 'C9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(90, 2, 'C10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(91, 2, 'D1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(92, 2, 'D2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(93, 2, 'D3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(94, 2, 'D4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(95, 2, 'D5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(96, 2, 'D6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(97, 2, 'D7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(98, 2, 'D8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(99, 2, 'D9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(100, 2, 'D10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(101, 2, 'E1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(102, 2, 'E2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(103, 2, 'E3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(104, 2, 'E4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(105, 2, 'E5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(106, 2, 'E6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(107, 2, 'E7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(108, 2, 'E8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(109, 2, 'E9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(110, 2, 'E10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(111, 2, 'F1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(112, 2, 'F2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(113, 2, 'F3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(114, 2, 'F4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(115, 2, 'F5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(116, 2, 'F6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(117, 2, 'F7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(118, 2, 'F8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(119, 2, 'F9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(120, 2, 'F10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(121, 3, 'A1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(122, 3, 'A2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(123, 3, 'A3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(124, 3, 'A4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(125, 3, 'A5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(126, 3, 'A6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(127, 3, 'A7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(128, 3, 'A8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(129, 3, 'A9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(130, 3, 'A10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(131, 3, 'B1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(132, 3, 'B2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(133, 3, 'B3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(134, 3, 'B4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(135, 3, 'B5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(136, 3, 'B6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(137, 3, 'B7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(138, 3, 'B8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(139, 3, 'B9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(140, 3, 'B10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(141, 3, 'C1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(142, 3, 'C2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(143, 3, 'C3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(144, 3, 'C4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(145, 3, 'C5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(146, 3, 'C6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(147, 3, 'C7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(148, 3, 'C8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(149, 3, 'C9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(150, 3, 'C10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(151, 3, 'D1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(152, 3, 'D2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(153, 3, 'D3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(154, 3, 'D4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(155, 3, 'D5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(156, 3, 'D6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(157, 3, 'D7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(158, 3, 'D8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(159, 3, 'D9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(160, 3, 'D10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(161, 3, 'E1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(162, 3, 'E2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(163, 3, 'E3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(164, 3, 'E4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(165, 3, 'E5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(166, 3, 'E6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(167, 3, 'E7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(168, 3, 'E8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(169, 3, 'E9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(170, 3, 'E10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(171, 3, 'F1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(172, 3, 'F2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(173, 3, 'F3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(174, 3, 'F4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(175, 3, 'F5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(176, 3, 'F6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(177, 3, 'F7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(178, 3, 'F8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(179, 3, 'F9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(180, 3, 'F10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(181, 4, 'A1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(182, 4, 'A2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(183, 4, 'A3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(184, 4, 'A4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(185, 4, 'A5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(186, 4, 'A6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(187, 4, 'A7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(188, 4, 'A8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(189, 4, 'A9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(190, 4, 'A10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(191, 4, 'B1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(192, 4, 'B2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(193, 4, 'B3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(194, 4, 'B4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(195, 4, 'B5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(196, 4, 'B6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(197, 4, 'B7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(198, 4, 'B8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(199, 4, 'B9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(200, 4, 'B10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(201, 4, 'C1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(202, 4, 'C2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(203, 4, 'C3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(204, 4, 'C4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(205, 4, 'C5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(206, 4, 'C6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(207, 4, 'C7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(208, 4, 'C8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(209, 4, 'C9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(210, 4, 'C10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(211, 4, 'D1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(212, 4, 'D2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(213, 4, 'D3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(214, 4, 'D4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(215, 4, 'D5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(216, 4, 'D6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(217, 4, 'D7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(218, 4, 'D8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(219, 4, 'D9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(220, 4, 'D10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(221, 4, 'E1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(222, 4, 'E2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(223, 4, 'E3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(224, 4, 'E4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(225, 4, 'E5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(226, 4, 'E6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(227, 4, 'E7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(228, 4, 'E8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(229, 4, 'E9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(230, 4, 'E10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(231, 4, 'F1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(232, 4, 'F2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(233, 4, 'F3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(234, 4, 'F4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(235, 4, 'F5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(236, 4, 'F6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(237, 4, 'F7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(238, 4, 'F8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(239, 4, 'F9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(240, 4, 'F10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(241, 5, 'A1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(242, 5, 'A2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(243, 5, 'A3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(244, 5, 'A4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(245, 5, 'A5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(246, 5, 'A6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(247, 5, 'A7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(248, 5, 'A8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(249, 5, 'A9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(250, 5, 'A10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(251, 5, 'B1', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(252, 5, 'B2', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(253, 5, 'B3', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(254, 5, 'B4', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(255, 5, 'B5', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(256, 5, 'B6', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(257, 5, 'B7', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(258, 5, 'B8', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(259, 5, 'B9', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(260, 5, 'B10', 2, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(261, 5, 'C1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(262, 5, 'C2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(263, 5, 'C3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(264, 5, 'C4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(265, 5, 'C5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(266, 5, 'C6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(267, 5, 'C7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(268, 5, 'C8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(269, 5, 'C9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(270, 5, 'C10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(271, 5, 'D1', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(272, 5, 'D2', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(273, 5, 'D3', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(274, 5, 'D4', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(275, 5, 'D5', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(276, 5, 'D6', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(277, 5, 'D7', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(278, 5, 'D8', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(279, 5, 'D9', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(280, 5, 'D10', 3, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(281, 5, 'E1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(282, 5, 'E2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(283, 5, 'E3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(284, 5, 'E4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(285, 5, 'E5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(286, 5, 'E6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(287, 5, 'E7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(288, 5, 'E8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(289, 5, 'E9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(290, 5, 'E10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(291, 5, 'F1', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(292, 5, 'F2', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(293, 5, 'F3', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(294, 5, 'F4', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(295, 5, 'F5', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(296, 5, 'F6', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(297, 5, 'F7', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(298, 5, 'F8', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(299, 5, 'F9', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(300, 5, 'F10', 1, 1, 0, '2026-02-13 18:27:48', '2026-02-13 18:27:48'),
(301, 1, 'A5', 2, 1, 0, '2026-02-16 16:35:44', '2026-02-16 16:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seat_type`
--

CREATE TABLE `tbl_seat_type` (
  `id` bigint(20) NOT NULL,
  `seat_type` enum('Silver','Gold','Platinum') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_seat_type`
--

INSERT INTO `tbl_seat_type` (`id`, `seat_type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Silver', 250.00, '2026-02-13 17:54:58', '2026-02-13 17:54:58'),
(2, 'Gold', 450.00, '2026-02-13 17:54:58', '2026-02-13 17:54:58'),
(3, 'Platinum', 800.00, '2026-02-13 17:54:58', '2026-02-13 17:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `id` bigint(20) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `screen_id` bigint(20) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` enum('active','cancelled') DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`id`, `movie_id`, `screen_id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-02-13 10:00:00', '2026-02-13 12:45:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(2, 1, 1, '2026-02-13 13:30:00', '2026-02-13 16:15:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(3, 1, 1, '2026-02-13 18:00:00', '2026-02-13 20:45:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(4, 1, 1, '2026-02-13 21:30:00', '2026-02-14 00:15:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(5, 3, 7, '2026-02-13 10:30:00', '2026-02-13 13:40:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(6, 3, 7, '0000-00-00 00:00:00', '2026-02-13 17:40:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(7, 3, 7, '2026-02-13 19:00:00', '2026-02-13 22:10:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(8, 2, 8, '2026-02-13 12:00:00', '2026-02-13 14:55:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(9, 6, 8, '2026-02-13 16:30:00', '2026-02-13 19:16:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(10, 14, 8, '2026-02-13 20:30:00', '2026-02-13 23:45:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(11, 3, 16, '2026-02-13 19:30:00', '2026-02-13 22:40:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(12, 15, 16, '2026-02-13 23:15:00', '2026-02-14 02:16:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(13, 11, 12, '2026-02-13 11:00:00', '2026-02-13 14:02:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(14, 7, 12, '2026-02-13 15:30:00', '2026-02-13 18:19:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(15, 3, 12, '2026-02-13 19:30:00', '2026-02-13 22:40:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(16, 1, 17, '2026-02-13 10:15:00', '2026-02-13 13:00:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(17, 1, 17, '2026-02-13 14:00:00', '2026-02-13 16:45:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(18, 5, 17, '2026-02-13 18:30:00', '2026-02-13 21:51:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(19, 4, 21, '2026-02-13 13:00:00', '2026-02-13 16:00:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(20, 12, 21, '2026-02-13 17:00:00', '2026-02-13 19:35:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(21, 2, 21, '2026-02-13 20:30:00', '2026-02-13 23:25:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(22, 15, 26, '2026-02-13 11:00:00', '2026-02-13 14:01:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(23, 7, 26, '2026-02-13 15:30:00', '2026-02-13 18:19:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(24, 8, 26, '2026-02-13 19:30:00', '2026-02-13 21:24:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(25, 4, 29, '2026-02-13 10:30:00', '2026-02-13 13:30:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(26, 6, 29, '2026-02-13 14:30:00', '2026-02-13 17:16:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(27, 12, 29, '2026-02-13 19:00:00', '2026-02-13 21:35:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(28, 5, 34, '2026-02-13 12:30:00', '2026-02-13 15:51:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(29, 13, 34, '2026-02-13 17:30:00', '2026-02-13 20:00:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21'),
(30, 11, 34, '2026-02-13 21:00:00', '2026-02-14 00:02:00', 'active', '2026-02-13 18:20:21', '2026-02-13 18:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theaters`
--

CREATE TABLE `tbl_theaters` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `lat` varchar(64) DEFAULT NULL,
  `long` varchar(64) DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_theaters`
--

INSERT INTO `tbl_theaters` (`id`, `name`, `city`, `address`, `lat`, `long`, `open_time`, `close_time`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Cinepolis Prahlad Nagar', 'Ahmedabad', 'Prahlad Nagar Trade Center, Ahmedabad, Gujarat 380015', '23.0120240000000', '72.5107560000000', '2026-02-13 09:00:00', '2026-02-13 23:59:59', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(2, 'PVR Acropolis', 'Ahmedabad', 'Thaltej Cross Roads, SG Highway, Ahmedabad, Gujarat 380054', '23.0494120000000', '72.5244580000000', '2026-02-13 09:30:00', '2026-02-13 23:30:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(3, 'Wide Angle Multiplex', 'Ahmedabad', 'S.G. Highway, Jodhpur Village, Ahmedabad, Gujarat 380015', '23.0232550000000', '72.5074220000000', '2026-02-13 08:30:00', '2026-02-14 01:00:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(4, 'Drive-In Cinema', 'Ahmedabad', 'Drive In Rd, Thaltej, Ahmedabad, Gujarat 380054', '23.0503410000000', '72.5295110000000', '2026-02-13 18:00:00', '2026-02-14 02:00:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(5, 'City Gold Ashram Road', 'Ahmedabad', 'Ashram Rd, Vishal Commercial Centre, Ahmedabad, Gujarat 380009', '23.0378120000000', '72.5704150000000', '2026-02-13 10:00:00', '2026-02-13 23:00:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(6, 'Inox Himalaya Mall', 'Ahmedabad', 'Himalaya Mall, Drive In Rd, Memnagar, Ahmedabad, Gujarat 380052', '23.0485660000000', '72.5312330000000', '2026-02-13 09:00:00', '2026-02-13 23:45:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(7, 'Mukta A2 Cinemas', 'Ahmedabad', 'Gulmohar Park Mall, Satellite Rd, Ahmedabad, Gujarat 380015', '23.0184440000000', '72.5263110000000', '2026-02-13 10:00:00', '2026-02-13 23:30:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(8, 'Time Cinema', 'Ahmedabad', 'CG Road, Navrangpura, Ahmedabad, Gujarat 380009', '23.0335110000000', '72.5621440000000', '2026-02-13 09:00:00', '2026-02-13 23:00:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(9, 'Connaught Place Cinema', 'Ahmedabad', 'Infocity, Gandhinagar Highway, Ahmedabad, Gujarat 382421', '23.1852440000000', '72.6288110000000', '2026-02-13 09:00:00', '2026-02-13 23:59:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36'),
(10, 'K Sera Sera Miniplex', 'Ahmedabad', 'Bopal 447, South Bopal, Ahmedabad, Gujarat 380058', '23.0125660000000', '72.4601220000000', '2026-02-13 10:00:00', '2026-02-13 23:00:00', 1, 0, '2026-02-13 12:13:36', '2026-02-13 12:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theater_movies`
--

CREATE TABLE `tbl_theater_movies` (
  `id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `theater_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_theater_movies`
--

INSERT INTO `tbl_theater_movies` (`id`, `movies_id`, `theater_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(2, 3, 1, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(3, 5, 1, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(4, 15, 1, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(5, 1, 2, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(6, 2, 2, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(7, 6, 2, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(8, 10, 2, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(9, 14, 2, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(10, 3, 3, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(11, 7, 3, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(12, 11, 3, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(13, 15, 3, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(14, 3, 4, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(15, 1, 5, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(16, 5, 5, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(17, 9, 5, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(18, 13, 5, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(19, 2, 6, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(20, 4, 6, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(21, 6, 6, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(22, 10, 6, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(23, 12, 6, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(24, 7, 7, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(25, 8, 7, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(26, 15, 7, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(27, 4, 8, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(28, 6, 8, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(29, 12, 8, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(30, 1, 9, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(31, 3, 9, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(32, 14, 9, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(33, 5, 10, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(34, 11, 10, '2026-02-13 17:52:09', '2026-02-13 17:52:09'),
(35, 13, 10, '2026-02-13 17:52:09', '2026-02-13 17:52:09');

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
  `user_address` text NOT NULL,
  `login_type` enum('m','g','a') DEFAULT 'm',
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `status` enum('active','blocked','inactive','delete') DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `mobile`, `password`, `social_id`, `user_address`, `login_type`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'James Anderson', 'j.anderson88@gmail.com', '+12025550143', '$2y$10$hashed_password_1', NULL, '56, Prahlad Nagar, Ahmedabad, Gujarat 380001', 'm', '23.0157453053178', '72.5480615208987', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(2, 'Sarah Jenkins', 'sarah.j@outlook.com', '+12025550198', NULL, 'social_id_2', '157, Satellite, Ahmedabad, Gujarat 380001', 'g', '23.0924639384659', '72.6476714579432', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(3, 'Michael Chen', 'mchen_dev@apple.com', '+813065550112', NULL, 'social_id_3', '5, Bodakdev, Ahmedabad, Gujarat 380001', 'a', '23.0665906293865', '72.6212283685028', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(4, 'Elena Rodriguez', 'elena.rod@yahoo.com', '+34912345678', '$2y$10$hashed_password_4', NULL, '22, Vastrapur, Ahmedabad, Gujarat 380001', 'm', '23.0260811434439', '72.4981932802144', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(5, 'David Smith', 'dsmith_expired@gmail.com', '+442079460958', '$2y$10$hashed_password_5', NULL, '114, Thaltej, Ahmedabad, Gujarat 380001', 'm', '22.9970760704084', '72.5479085097602', 'inactive', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(6, 'Priya Sharma', 'priya.sharma@icloud.com', '+919876543210', NULL, 'social_id_6', '193, Gota, Ahmedabad, Gujarat 380001', 'a', '22.9829213998431', '72.5839629284006', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(7, 'Robert Wilson', 'robert.wilson@corp.com', '+16175550109', '$2y$10$hashed_password_7', NULL, '77, Chandkheda, Ahmedabad, Gujarat 380001', 'm', '23.0466406400283', '72.4953975699210', 'blocked', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(8, 'Liam O\'Connor', 'liam.oc@gmail.com', '+35316012345', '$2y$10$hashed_password_8', NULL, '28, Bopal, Ahmedabad, Gujarat 380001', 'm', '23.1155526002474', '72.5644347107360', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(9, 'Yuki Tanaka', 'yuki.tanaka@softbank.jp', '+819012345678', NULL, 'social_id_9', '124, South Bopal, Ahmedabad, Gujarat 380001', 'g', '22.9572047562240', '72.4951525822922', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(10, 'Chloe Dubois', 'c.dubois@orange.fr', '+33140000000', '$2y$10$hashed_password_10', NULL, '111, Science City, Ahmedabad, Gujarat 380001', 'm', '22.9569428924373', '72.5809524934629', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(11, 'Marcus Thorne', 'm.thorne@protonmail.com', '+14155552671', '$2y$10$hashed_password_11', NULL, '82, Maninagar, Ahmedabad, Gujarat 380001', 'm', '23.0163126109005', '72.5704530616934', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(12, 'Sana Khan', 'skhan_92@gmail.com', '+923001234567', NULL, 'social_id_12', '159, Paldi, Ahmedabad, Gujarat 380001', 'g', '23.0947702236099', '72.5860481854417', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(13, 'Hans Müller', 'hans.m@t-online.de', '+4930123456', '$2y$10$hashed_password_13', NULL, '65, Ellisbridge, Ahmedabad, Gujarat 380001', 'm', '23.0583688891242', '72.6146957027746', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(14, 'Isabella Rossi', 'i.rossi@libero.it', '+39061234567', NULL, 'social_id_14', '20, Navrangpura, Ahmedabad, Gujarat 380001', 'a', '23.1439247508746', '72.5233275785541', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(15, 'Arjun Das', 'arjun.das@rediffmail.com', '+911123456789', '$2y$10$hashed_password_15', NULL, '105, Gulbai Tekra, Ahmedabad, Gujarat 380001', 'm', '23.0251242453621', '72.6145766837129', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(16, 'Kevin Zhang', 'kzhang@qq.com', '+861012345678', NULL, 'social_id_16', '22, Ambawadi, Ahmedabad, Gujarat 380001', 'g', '23.1050793828683', '72.5213063483780', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(17, 'Aisha Bello', 'abello@gmail.com', '+2348012345678', '$2y$10$hashed_password_17', NULL, '169, Memnagar, Ahmedabad, Gujarat 380001', 'm', '23.0811409721430', '72.5800530762340', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(18, 'Tom Baker', 'tbaker@btinternet.com', '+441612345678', NULL, 'social_id_18', '51, Gurukul, Ahmedabad, Gujarat 380001', 'a', '22.9512356399763', '72.4638502080800', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(19, 'Sofia Silva', 'sofia.silva@uol.com.br', '+5511987654321', '$2y$10$hashed_password_19', NULL, '52, Drive-in Road, Ahmedabad, Gujarat 380001', 'm', '23.0605901925741', '72.4914387391091', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(20, 'Ahmed Mansour', 'amansour@etisalat.ae', '+971501234567', NULL, 'social_id_20', '28, Naranpura, Ahmedabad, Gujarat 380001', 'g', '23.0726864508344', '72.4717107371998', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(21, 'Emily Watson', 'e.watson@gmail.com', '+61292345678', '$2y$10$hashed_password_21', NULL, '194, Sabarmati, Ahmedabad, Gujarat 380001', 'm', '22.9531402105177', '72.6421260294825', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(22, 'Nikolai Volkov', 'n.volkov@mail.ru', '+74951234567', NULL, 'social_id_22', '67, Motera, Ahmedabad, Gujarat 380001', 'a', '22.9944471932009', '72.5436198755689', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(23, 'Fatima Al-Sayed', 'fatima.s@outlook.sa', '+966112345678', '$2y$10$hashed_password_23', NULL, '169, Ranip, Ahmedabad, Gujarat 380001', 'm', '23.1421053847300', '72.5914414254764', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(24, 'Lucas Meyer', 'l.meyer@bluewin.ch', '+41441234567', NULL, 'social_id_24', '32, Vatva, Ahmedabad, Gujarat 380001', 'g', '23.0076594961876', '72.5163563024783', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20'),
(25, 'Grace Kim', 'gkim_99@naver.com', '+821012345678', '$2y$10$hashed_password_25', NULL, '100, Nikol, Ahmedabad, Gujarat 380001', 'm', '23.1306724622283', '72.5390375682004', 'active', '2026-02-13 17:17:20', '2026-02-13 17:17:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_actors`
--
ALTER TABLE `tbl_actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_booking_user` (`user_id`),
  ADD KEY `fk_booking_show` (`show_id`);

--
-- Indexes for table `tbl_booking_seats`
--
ALTER TABLE `tbl_booking_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_booked_seat_booking` (`booking_id`),
  ADD KEY `fk_booked_seat_master` (`seats_id`);

--
-- Indexes for table `tbl_dynamic_pricing`
--
ALTER TABLE `tbl_dynamic_pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tbl_lang`
--
ALTER TABLE `tbl_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_like_movie` (`movies_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movies_genre`
--
ALTER TABLE `tbl_movies_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_genre_movie` (`movie_id`),
  ADD KEY `fk_movie_genre_type` (`genre_id`);

--
-- Indexes for table `tbl_movies_lang`
--
ALTER TABLE `tbl_movies_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_lang_movie` (`movie_id`),
  ADD KEY `fk_movie_lang_type` (`lang_id`);

--
-- Indexes for table `tbl_movies_screens`
--
ALTER TABLE `tbl_movies_screens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_screen_theater` (`theatre_id`);

--
-- Indexes for table `tbl_movie_cast`
--
ALTER TABLE `tbl_movie_cast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cast_movie` (`movie_id`),
  ADD KEY `fk_cast_actor` (`actor_id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD KEY `fk_otp_user` (`user_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD KEY `fk_rating_movie` (`movies_id`);

--
-- Indexes for table `tbl_seats`
--
ALTER TABLE `tbl_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seat_screen` (`screen_id`),
  ADD KEY `fk_seat_type` (`seat_type_id`);

--
-- Indexes for table `tbl_seat_type`
--
ALTER TABLE `tbl_seat_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_show_movie` (`movie_id`),
  ADD KEY `fk_show_screen` (`screen_id`);

--
-- Indexes for table `tbl_theaters`
--
ALTER TABLE `tbl_theaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theater_movies`
--
ALTER TABLE `tbl_theater_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_theater_movie_movie` (`movies_id`),
  ADD KEY `fk_theater_movie_theater` (`theater_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_actors`
--
ALTER TABLE `tbl_actors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_booking_seats`
--
ALTER TABLE `tbl_booking_seats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_dynamic_pricing`
--
ALTER TABLE `tbl_dynamic_pricing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_lang`
--
ALTER TABLE `tbl_lang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_movies_genre`
--
ALTER TABLE `tbl_movies_genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_movies_lang`
--
ALTER TABLE `tbl_movies_lang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_movies_screens`
--
ALTER TABLE `tbl_movies_screens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_movie_cast`
--
ALTER TABLE `tbl_movie_cast`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_seats`
--
ALTER TABLE `tbl_seats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `tbl_seat_type`
--
ALTER TABLE `tbl_seat_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_theaters`
--
ALTER TABLE `tbl_theaters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_theater_movies`
--
ALTER TABLE `tbl_theater_movies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD CONSTRAINT `fk_booking_show` FOREIGN KEY (`show_id`) REFERENCES `tbl_shows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_booking_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_booking_seats`
--
ALTER TABLE `tbl_booking_seats`
  ADD CONSTRAINT `fk_booked_seat_booking` FOREIGN KEY (`booking_id`) REFERENCES `tbl_bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_booked_seat_master` FOREIGN KEY (`seats_id`) REFERENCES `tbl_seats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD CONSTRAINT `fk_like_movie` FOREIGN KEY (`movies_id`) REFERENCES `tbl_movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_movies_genre`
--
ALTER TABLE `tbl_movies_genre`
  ADD CONSTRAINT `fk_movie_genre_movie` FOREIGN KEY (`movie_id`) REFERENCES `tbl_movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_movie_genre_type` FOREIGN KEY (`genre_id`) REFERENCES `tbl_genre` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_movies_lang`
--
ALTER TABLE `tbl_movies_lang`
  ADD CONSTRAINT `fk_movie_lang_movie` FOREIGN KEY (`movie_id`) REFERENCES `tbl_movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_movie_lang_type` FOREIGN KEY (`lang_id`) REFERENCES `tbl_lang` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_movies_screens`
--
ALTER TABLE `tbl_movies_screens`
  ADD CONSTRAINT `fk_screen_theater` FOREIGN KEY (`theatre_id`) REFERENCES `tbl_theaters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_movie_cast`
--
ALTER TABLE `tbl_movie_cast`
  ADD CONSTRAINT `fk_cast_actor` FOREIGN KEY (`actor_id`) REFERENCES `tbl_actors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cast_movie` FOREIGN KEY (`movie_id`) REFERENCES `tbl_movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD CONSTRAINT `fk_otp_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD CONSTRAINT `fk_rating_movie` FOREIGN KEY (`movies_id`) REFERENCES `tbl_movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_seats`
--
ALTER TABLE `tbl_seats`
  ADD CONSTRAINT `fk_seat_screen` FOREIGN KEY (`screen_id`) REFERENCES `tbl_movies_screens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_seat_type` FOREIGN KEY (`seat_type_id`) REFERENCES `tbl_seat_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD CONSTRAINT `fk_show_movie` FOREIGN KEY (`movie_id`) REFERENCES `tbl_movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_show_screen` FOREIGN KEY (`screen_id`) REFERENCES `tbl_movies_screens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_theater_movies`
--
ALTER TABLE `tbl_theater_movies`
  ADD CONSTRAINT `fk_theater_movie_movie` FOREIGN KEY (`movies_id`) REFERENCES `tbl_movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_theater_movie_theater` FOREIGN KEY (`theater_id`) REFERENCES `tbl_theaters` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
