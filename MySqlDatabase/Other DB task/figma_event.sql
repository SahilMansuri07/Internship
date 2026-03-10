-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2026 at 05:49 AM
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
-- Database: `figma_event`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `user_id`, `post_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 21, 'Great post, very helpful!', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(2, 2, 21, 'This really explains the concept well.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(3, 3, 22, 'Nice design and clean UI.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(4, 4, 22, 'I like how you structured this.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(5, 5, 23, 'Very informative, thanks for sharing.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(6, 1, 23, 'This helped me a lot.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(7, 2, 24, 'Well written and easy to understand.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(8, 3, 24, 'Looking forward to more posts like this.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(9, 4, 25, 'Good explanation with examples.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(10, 5, 25, 'Clear and concise content.', '2026-02-03 17:07:10', '2026-02-03 17:07:10'),
(11, 1, 1, 'weuigfiuwfkjewjk', '2026-02-03 17:10:15', '2026-02-03 17:10:15');

--
-- Triggers `tbl_comments`
--
DELIMITER $$
CREATE TRIGGER `comment_count_on_insert` AFTER INSERT ON `tbl_comments` FOR EACH ROW UPDATE tbl_post p SET p.comment_counter = (SELECT COUNT(*) FROM tbl_comments c WHERE c.post_id = new.post_id) WHERE
p.id = new.post_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(128) NOT NULL,
  `painting_type` enum('Digital Painting','Oil Painting','Gouache','Acrylic','Pastel') NOT NULL,
  `mediums` enum('Digital Brushes','Palette Knife','Charcoal','Marker','Spray Paint') NOT NULL,
  `styles` enum('Impressionism','Abstract','Comic Book','Cyberpunk') NOT NULL,
  `for_sale` decimal(16,2) NOT NULL,
  `location` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`id`, `user_id`, `title`, `painting_type`, `mediums`, `styles`, `for_sale`, `location`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`, `is_active`, `is_delete`) VALUES
(1, 1, 'Digital Art Expo', 'Digital Painting', 'Digital Brushes', 'Cyberpunk', 1500.00, 'Ahmedabad', 'Digital cyberpunk art exhibition', '2026-03-01 10:00:00', '2026-03-01 18:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(2, 2, 'Oil Canvas Show', 'Oil Painting', 'Palette Knife', 'Impressionism', 2200.00, 'Mumbai', 'Classic oil painting showcase', '2026-03-02 09:30:00', '2026-03-02 17:30:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(3, 3, 'Gouache Colors', 'Gouache', 'Charcoal', 'Abstract', 1800.00, 'Pune', 'Modern abstract gouache artworks', '2026-03-03 11:00:00', '2026-03-03 19:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(4, 4, 'Acrylic Dreams', 'Acrylic', 'Marker', 'Comic Book', 2000.00, 'Delhi', 'Comic style acrylic art', '2026-03-04 10:00:00', '2026-03-04 18:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(5, 5, 'Pastel Harmony', 'Pastel', 'Charcoal', 'Impressionism', 1700.00, 'Jaipur', 'Soft pastel painting event', '2026-03-05 09:00:00', '2026-03-05 16:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(6, 6, 'Urban Digital', 'Digital Painting', 'Digital Brushes', 'Abstract', 2500.00, 'Bangalore', 'Urban digital art collection', '2026-03-06 10:00:00', '2026-03-06 18:30:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(7, 7, 'Oil Masters', 'Oil Painting', 'Palette Knife', 'Impressionism', 3000.00, 'Chennai', 'Oil painting by master artists', '2026-03-07 09:30:00', '2026-03-07 17:30:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(8, 8, 'Street Vision', 'Acrylic', 'Spray Paint', 'Abstract', 2100.00, 'Mumbai', 'Street-inspired abstract art', '2026-03-08 11:00:00', '2026-03-08 19:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(9, 9, 'Pastel World', 'Pastel', 'Charcoal', 'Comic Book', 1600.00, 'Surat', 'Comic style pastel paintings', '2026-03-09 10:00:00', '2026-03-09 17:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(10, 10, 'Abstract Flow', 'Gouache', 'Marker', 'Abstract', 1900.00, 'Vadodara', 'Free-flow abstract gouache art', '2026-03-10 09:00:00', '2026-03-10 16:30:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(11, 11, 'Spray Art Fest', 'Acrylic', 'Spray Paint', 'Abstract', 2300.00, 'Indore', 'Modern spray paint art fest', '2026-03-11 11:00:00', '2026-03-11 20:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(12, 12, 'Comic Canvas', 'Digital Painting', 'Digital Brushes', 'Comic Book', 2600.00, 'Kolkata', 'Comic themed digital artworks', '2026-03-12 10:00:00', '2026-03-12 18:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(13, 13, 'Cyber Art Night', 'Digital Painting', 'Digital Brushes', 'Cyberpunk', 3500.00, 'Hyderabad', 'Cyberpunk night art event', '2026-03-13 14:00:00', '2026-03-13 22:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(14, 14, 'Miniature Tales', 'Gouache', 'Charcoal', 'Impressionism', 1400.00, 'Udaipur', 'Miniature style painting display', '2026-03-14 09:00:00', '2026-03-14 15:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(15, 15, 'Gallery Special', 'Oil Painting', 'Palette Knife', 'Abstract', 3200.00, 'Delhi', 'Exclusive gallery oil paintings', '2026-03-15 10:00:00', '2026-03-15 18:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(16, 16, 'Ink Expressions', 'Pastel', 'Marker', 'Abstract', 1800.00, 'Nagpur', 'Ink and pastel fusion art', '2026-03-16 09:30:00', '2026-03-16 17:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(17, 17, 'Watercolor Flow', 'Gouache', 'Charcoal', 'Impressionism', 2000.00, 'Rajkot', 'Smooth watercolor-style art', '2026-03-17 10:00:00', '2026-03-17 18:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(18, 18, 'Concept Art Lab', 'Digital Painting', 'Digital Brushes', 'Abstract', 2800.00, 'Ahmedabad', 'Concept art creation showcase', '2026-03-18 11:00:00', '2026-03-18 19:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(19, 19, 'Master Stroke', 'Oil Painting', 'Palette Knife', 'Impressionism', 4000.00, 'Mumbai', 'Master artist oil painting event', '2026-03-19 09:00:00', '2026-03-19 17:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0),
(20, 20, 'Modern Vision', 'Acrylic', 'Marker', 'Abstract', 2400.00, 'Bhopal', 'Modern acrylic art exhibition', '2026-03-20 10:00:00', '2026-03-20 18:00:00', '2026-02-03 15:54:56', '2026-02-03 15:54:56', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_image`
--

CREATE TABLE `tbl_event_image` (
  `id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_event_image`
--

INSERT INTO `tbl_event_image` (`id`, `event_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'events/event1_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(2, 1, 'events/event1_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(3, 2, 'events/event2_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(4, 2, 'events/event2_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(5, 3, 'events/event3_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(6, 3, 'events/event3_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(7, 4, 'events/event4_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(8, 4, 'events/event4_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(9, 5, 'events/event5_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(10, 5, 'events/event5_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(11, 6, 'events/event6_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(12, 6, 'events/event6_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(13, 7, 'events/event7_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(14, 7, 'events/event7_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(15, 8, 'events/event8_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(16, 8, 'events/event8_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(17, 9, 'events/event9_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(18, 9, 'events/event9_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(19, 10, 'events/event10_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(20, 10, 'events/event10_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(21, 11, 'events/event11_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(22, 11, 'events/event11_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(23, 12, 'events/event12_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(24, 12, 'events/event12_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(25, 13, 'events/event13_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(26, 13, 'events/event13_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(27, 14, 'events/event14_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(28, 14, 'events/event14_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(29, 15, 'events/event15_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(30, 15, 'events/event15_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(31, 16, 'events/event16_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(32, 16, 'events/event16_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(33, 17, 'events/event17_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(34, 17, 'events/event17_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(35, 18, 'events/event18_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(36, 18, 'events/event18_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(37, 19, 'events/event19_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(38, 19, 'events/event19_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(39, 20, 'events/event20_img1.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51'),
(40, 20, 'events/event20_img2.jpg', '2026-02-03 15:55:51', '2026-02-03 15:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like`
--

CREATE TABLE `tbl_like` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `like` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_like`
--

INSERT INTO `tbl_like` (`id`, `user_id`, `post_id`, `like`, `created_at`, `updated_at`) VALUES
(121, 1, 1, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(122, 2, 1, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(123, 3, 1, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(124, 2, 2, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(125, 3, 2, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(126, 4, 2, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(127, 3, 3, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(128, 4, 3, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(129, 5, 3, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(130, 4, 4, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(131, 5, 4, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(132, 6, 4, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(133, 5, 5, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(134, 6, 5, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(135, 7, 5, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(136, 6, 6, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(137, 7, 6, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(138, 8, 6, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(139, 7, 7, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(140, 8, 7, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(141, 9, 7, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(142, 8, 8, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(143, 9, 8, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(144, 10, 8, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(145, 9, 9, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(146, 10, 9, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(147, 11, 9, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(148, 10, 10, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(149, 11, 10, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(150, 12, 10, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(151, 11, 11, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(152, 12, 11, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(153, 13, 11, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(154, 12, 12, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(155, 13, 12, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(156, 14, 12, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(157, 13, 13, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(158, 14, 13, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(159, 15, 13, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(160, 14, 14, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(161, 15, 14, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(162, 16, 14, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(163, 15, 15, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(164, 16, 15, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(165, 17, 15, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(166, 16, 16, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(167, 17, 16, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(168, 18, 16, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(169, 17, 17, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(170, 18, 17, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(171, 19, 17, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(172, 18, 18, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(173, 19, 18, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(174, 20, 18, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(175, 19, 19, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(176, 20, 19, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(177, 1, 19, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(178, 20, 20, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(179, 1, 20, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(180, 2, 20, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(181, 1, 21, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(182, 2, 21, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(183, 3, 21, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(184, 2, 22, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(185, 3, 22, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(186, 4, 22, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(187, 3, 23, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(188, 4, 23, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(189, 5, 23, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(190, 4, 24, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(191, 5, 24, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(192, 6, 24, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(193, 5, 25, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(194, 6, 25, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(195, 7, 25, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(196, 6, 26, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(197, 7, 26, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(198, 8, 26, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(199, 7, 27, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(200, 8, 27, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(201, 9, 27, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(202, 8, 28, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(203, 9, 28, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(204, 10, 28, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(205, 9, 29, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(206, 10, 29, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(207, 11, 29, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(208, 10, 30, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(209, 11, 30, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(210, 12, 30, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(211, 11, 31, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(212, 12, 31, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(213, 13, 31, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(214, 12, 32, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(215, 13, 32, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(216, 14, 32, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(217, 13, 33, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(218, 14, 33, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(219, 15, 33, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(220, 14, 34, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(221, 15, 34, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(222, 16, 34, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(223, 15, 35, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(224, 16, 35, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(225, 17, 35, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(226, 16, 36, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(227, 17, 36, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(228, 18, 36, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(229, 17, 37, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(230, 18, 37, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(231, 19, 37, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(232, 18, 38, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(233, 19, 38, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(234, 20, 38, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(235, 19, 39, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(236, 20, 39, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(237, 1, 39, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(238, 20, 40, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(239, 1, 40, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(240, 2, 40, 2, '2026-02-03 16:46:12', '2026-02-03 16:46:12'),
(241, 1, 1, 2, '2026-02-03 17:08:02', '2026-02-03 17:08:02');

--
-- Triggers `tbl_like`
--
DELIMITER $$
CREATE TRIGGER `like_count_on_insert` AFTER INSERT ON `tbl_like` FOR EACH ROW UPDATE tbl_post p SET p.like_counter = (SELECT COUNT(*) FROM  tbl_like l WHERE l.post_id = new.post_id ) WHERE p.id = new.post_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(64) NOT NULL,
  `painting_type` enum('Digital Painting',' Oil Painting','Gouache','Acrylic','Pastel') NOT NULL,
  `mediums` enum('Digital Brushes','Palette Knife','Charcoal','Marker','Spray Paint') NOT NULL,
  `styles` enum('Impressionism','Abstract','Comic Book','Cyberpunk') NOT NULL,
  `for_sale` decimal(16,2) NOT NULL,
  `location` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `like_counter` bigint(20) NOT NULL,
  `comment_counter` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `user_id`, `title`, `painting_type`, `mediums`, `styles`, `for_sale`, `location`, `description`, `like_counter`, `comment_counter`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Digital Night City', 'Digital Painting', 'Digital Brushes', 'Cyberpunk', 1200.00, 'Ahmedabad', 'Cyberpunk themed digital artwork', 4, 1, 1, 0, '2026-02-03 15:56:21', '2026-02-03 17:10:15'),
(2, 2, 'Golden Oil Strokes', ' Oil Painting', 'Palette Knife', 'Impressionism', 2400.00, 'Mumbai', 'Classic oil painting with golden tones', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(3, 3, 'Abstract Gouache Art', 'Gouache', 'Charcoal', 'Abstract', 1800.00, 'Pune', 'Abstract gouache artwork with bold strokes', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(4, 4, 'Comic Hero Canvas', 'Acrylic', 'Marker', 'Comic Book', 2000.00, 'Delhi', 'Comic book inspired acrylic art', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(5, 5, 'Pastel Landscape', 'Pastel', 'Charcoal', 'Impressionism', 1600.00, 'Jaipur', 'Soft pastel landscape painting', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(6, 6, 'Urban Digital Flow', 'Digital Painting', 'Digital Brushes', 'Abstract', 2600.00, 'Bangalore', 'Modern abstract digital artwork', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(7, 7, 'Oil Masterpiece', ' Oil Painting', 'Palette Knife', 'Impressionism', 3200.00, 'Chennai', 'Detailed oil painting by expert artist', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(8, 8, 'Street Acrylic Art', 'Acrylic', 'Spray Paint', 'Abstract', 2100.00, 'Mumbai', 'Street-style acrylic artwork', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(9, 9, 'Comic Pastel Art', 'Pastel', 'Charcoal', 'Comic Book', 1500.00, 'Surat', 'Comic style pastel illustration', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(10, 10, 'Free Flow Gouache', 'Gouache', 'Marker', 'Abstract', 1900.00, 'Vadodara', 'Free-flow abstract gouache art', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(11, 11, 'Spray Abstract', 'Acrylic', 'Spray Paint', 'Abstract', 2300.00, 'Indore', 'Bold spray paint abstract art', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(12, 12, 'Digital Comic Frame', 'Digital Painting', 'Digital Brushes', 'Comic Book', 2700.00, 'Kolkata', 'Comic framed digital artwork', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(13, 13, 'Cyberpunk Portrait', 'Digital Painting', 'Digital Brushes', 'Cyberpunk', 3500.00, 'Hyderabad', 'Cyberpunk portrait digital art', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(14, 14, 'Miniature Impression', 'Gouache', 'Charcoal', 'Impressionism', 1400.00, 'Udaipur', 'Miniature style impressionist art', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(15, 15, 'Gallery Oil Art', ' Oil Painting', 'Palette Knife', 'Abstract', 3300.00, 'Delhi', 'Gallery featured oil painting', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(16, 16, 'Ink Pastel Mix', 'Pastel', 'Marker', 'Abstract', 1800.00, 'Nagpur', 'Ink and pastel mixed artwork', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(17, 17, 'Watercolor Feel', 'Gouache', 'Charcoal', 'Impressionism', 2000.00, 'Rajkot', 'Watercolor-style gouache painting', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(18, 18, 'Concept Digital Art', 'Digital Painting', 'Digital Brushes', 'Abstract', 2800.00, 'Ahmedabad', 'Concept based digital artwork', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(19, 19, 'Classic Oil Scene', ' Oil Painting', 'Palette Knife', 'Impressionism', 4000.00, 'Mumbai', 'Classic scene oil painting', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(20, 20, 'Modern Acrylic Vision', 'Acrylic', 'Marker', 'Abstract', 2400.00, 'Bhopal', 'Modern vision acrylic painting', 3, 0, 1, 0, '2026-02-03 15:56:21', '2026-02-03 16:46:12'),
(21, 1, 'Neon Streets', 'Digital Painting', 'Digital Brushes', 'Cyberpunk', 2600.00, 'Ahmedabad', 'Neon cyberpunk city artwork', 3, 2, 1, 0, '2026-02-03 16:45:57', '2026-02-03 17:07:10'),
(22, 2, 'Silent Oil Mood', ' Oil Painting', 'Palette Knife', 'Impressionism', 3100.00, 'Mumbai', 'Silent mood oil painting', 3, 2, 1, 0, '2026-02-03 16:45:57', '2026-02-03 17:07:10'),
(23, 3, 'Bold Gouache Lines', 'Gouache', 'Charcoal', 'Abstract', 1900.00, 'Pune', 'Bold abstract gouache art', 3, 2, 1, 0, '2026-02-03 16:45:57', '2026-02-03 17:07:10'),
(24, 4, 'Comic Battle Scene', 'Acrylic', 'Marker', 'Comic Book', 2200.00, 'Delhi', 'Comic battle scene artwork', 3, 2, 1, 0, '2026-02-03 16:45:57', '2026-02-03 17:07:10'),
(25, 5, 'Pastel Evening', 'Pastel', 'Charcoal', 'Impressionism', 1700.00, 'Jaipur', 'Evening pastel landscape', 3, 2, 1, 0, '2026-02-03 16:45:57', '2026-02-03 17:07:10'),
(26, 6, 'Digital Motion', 'Digital Painting', 'Digital Brushes', 'Abstract', 2800.00, 'Bangalore', 'Motion inspired digital art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(27, 7, 'Oil Texture Study', ' Oil Painting', 'Palette Knife', 'Abstract', 3400.00, 'Chennai', 'Oil texture experimental art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(28, 8, 'Urban Spray Wall', 'Acrylic', 'Spray Paint', 'Abstract', 2300.00, 'Mumbai', 'Urban spray wall art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(29, 9, 'Comic Pastel Frame', 'Pastel', 'Charcoal', 'Comic Book', 1600.00, 'Surat', 'Comic frame pastel illustration', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(30, 10, 'Gouache Rhythm', 'Gouache', 'Marker', 'Abstract', 2000.00, 'Vadodara', 'Rhythm based gouache strokes', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(31, 11, 'Spray Chaos', 'Acrylic', 'Spray Paint', 'Abstract', 2500.00, 'Indore', 'Chaotic spray abstract art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(32, 12, 'Digital Comic Strip', 'Digital Painting', 'Digital Brushes', 'Comic Book', 2900.00, 'Kolkata', 'Digital comic strip art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(33, 13, 'Cyber Face', 'Digital Painting', 'Digital Brushes', 'Cyberpunk', 3600.00, 'Hyderabad', 'Cyberpunk style portrait', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(34, 14, 'Classic Miniature', 'Gouache', 'Charcoal', 'Impressionism', 1500.00, 'Udaipur', 'Classic miniature style painting', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(35, 15, 'Gallery Abstract Oil', ' Oil Painting', 'Palette Knife', 'Abstract', 3500.00, 'Delhi', 'Gallery grade abstract oil art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(36, 16, 'Ink Pastel Balance', 'Pastel', 'Marker', 'Abstract', 1850.00, 'Nagpur', 'Balanced ink pastel artwork', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(37, 17, 'Soft Gouache Flow', 'Gouache', 'Charcoal', 'Impressionism', 2100.00, 'Rajkot', 'Soft flowing gouache art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(38, 18, 'Concept Sci-Fi', 'Digital Painting', 'Digital Brushes', 'Abstract', 3000.00, 'Ahmedabad', 'Sci-fi concept digital art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(39, 19, 'Heritage Oil Scene', ' Oil Painting', 'Palette Knife', 'Impressionism', 4200.00, 'Mumbai', 'Heritage themed oil painting', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12'),
(40, 20, 'Modern Acrylic Shapes', 'Acrylic', 'Marker', 'Abstract', 2600.00, 'Bhopal', 'Modern geometric acrylic art', 3, 0, 1, 0, '2026-02-03 16:45:57', '2026-02-03 16:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_image`
--

CREATE TABLE `tbl_post_image` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_image`
--

INSERT INTO `tbl_post_image` (`id`, `post_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'posts/post1_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(2, 1, 'posts/post1_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(3, 2, 'posts/post2_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(4, 2, 'posts/post2_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(5, 3, 'posts/post3_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(6, 3, 'posts/post3_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(7, 4, 'posts/post4_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(8, 4, 'posts/post4_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(9, 5, 'posts/post5_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(10, 5, 'posts/post5_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(11, 6, 'posts/post6_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(12, 6, 'posts/post6_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(13, 7, 'posts/post7_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(14, 7, 'posts/post7_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(15, 8, 'posts/post8_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(16, 8, 'posts/post8_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(17, 9, 'posts/post9_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(18, 9, 'posts/post9_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(19, 10, 'posts/post10_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(20, 10, 'posts/post10_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(21, 11, 'posts/post11_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(22, 11, 'posts/post11_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(23, 12, 'posts/post12_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(24, 12, 'posts/post12_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(25, 13, 'posts/post13_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(26, 13, 'posts/post13_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(27, 14, 'posts/post14_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(28, 14, 'posts/post14_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(29, 15, 'posts/post15_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(30, 15, 'posts/post15_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(31, 16, 'posts/post16_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(32, 16, 'posts/post16_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(33, 17, 'posts/post17_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(34, 17, 'posts/post17_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(35, 18, 'posts/post18_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(36, 18, 'posts/post18_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(37, 19, 'posts/post19_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(38, 19, 'posts/post19_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(39, 20, 'posts/post20_img1.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09'),
(40, 20, 'posts/post20_img2.jpg', '2026-02-03 15:57:09', '2026-02-03 15:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(64) NOT NULL,
  `fav_activity` text NOT NULL,
  `profile_img` varchar(64) NOT NULL,
  `login_type` enum('S','G','F') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `age`, `gender`, `email`, `password`, `fav_activity`, `profile_img`, `login_type`, `is_active`, `is_delete`, `updated_at`, `created_at`) VALUES
(1, 'artist_ahmed', 25, 'male', 'ahmed@gmail.com', 'pass123', 'Digital Painting', 'u1.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(2, 'art_sana', 27, 'female', 'sana@gmail.com', 'pass123', 'Oil Painting', 'u2.jpg', 'G', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(3, 'canvas_raj', 30, 'male', 'raj@gmail.com', 'sahil123', 'Acrylic Painting', 'u3.jpg', 'S', 1, 0, '2026-02-03 17:31:18', '2026-02-03 15:53:28'),
(4, 'draw_riya', 22, 'female', 'riya@gmail.com', 'pass123', 'Sketching', 'u4.jpg', 'F', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(5, 'paint_kunal', 34, 'male', 'kunal@gmail.com', 'pass123', 'Gallery Management', 'u5.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(6, 'art_meet', 28, 'male', 'meet@gmail.com', 'pass123', 'Abstract Art', 'u6.jpg', 'G', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(7, 'digital_nisha', 26, 'female', 'nisha@gmail.com', 'pass123', 'Digital Illustration', 'u7.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(8, 'urban_rohit', 31, 'male', 'rohit@gmail.com', 'pass123', 'Street Art', 'u8.jpg', 'F', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(9, 'pastel_khushi', 23, 'female', 'khushi@gmail.com', 'pass123', 'Pastel Art', 'u9.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(10, 'abstract_ajay', 35, 'male', 'ajay@gmail.com', 'pass123', 'Abstract Painting', 'u10.jpg', 'G', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(11, 'spray_dev', 29, 'male', 'dev@gmail.com', 'pass123', 'Spray Painting', 'u11.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(12, 'comic_isha', 24, 'female', 'isha@gmail.com', 'pass123', 'Comic Art', 'u12.jpg', 'F', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(13, 'cyber_om', 33, 'male', 'om@gmail.com', 'pass123', 'Cyberpunk Art', 'u13.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(14, 'mini_rupa', 21, 'female', 'rupa@gmail.com', 'pass123', 'Miniature Art', 'u14.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(15, 'gallery_vik', 36, 'male', 'vik@gmail.com', 'pass123', 'Exhibition Planning', 'u15.jpg', 'G', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(16, 'ink_karan', 32, 'male', 'karan@gmail.com', 'pass123', 'Ink Art', 'u16.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(17, 'art_pooja', 27, 'female', 'pooja@gmail.com', 'pass123', 'Watercolor Art', 'u17.jpg', 'F', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(18, 'design_aryan', 24, 'male', 'aryan@gmail.com', 'pass123', 'Concept Art', 'u18.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(19, 'master_suresh', 38, 'male', 'suresh@gmail.com', 'pass123', 'Art Mentoring', 'u19.jpg', 'G', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28'),
(20, 'modern_tina', 29, 'female', 'tina@gmail.com', 'pass123', 'Modern Art', 'u20.jpg', 'S', 1, 0, '2026-02-03 15:53:28', '2026-02-03 15:53:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user3_id_fk` (`user_id`),
  ADD KEY `post_id_fk1` (`post_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `tbl_event_image`
--
ALTER TABLE `tbl_event_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id_fk` (`event_id`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_user_id_fk` (`user_id`),
  ADD KEY `like_post_id_fk` (`post_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_id_fk` (`user_id`);

--
-- Indexes for table `tbl_post_image`
--
ALTER TABLE `tbl_post_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_image_iid_fk` (`post_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_event_image`
--
ALTER TABLE `tbl_event_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_post_image`
--
ALTER TABLE `tbl_post_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD CONSTRAINT `post_id_fk1` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user3_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_event_image`
--
ALTER TABLE `tbl_event_image`
  ADD CONSTRAINT `event_id_fk` FOREIGN KEY (`event_id`) REFERENCES `tbl_event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD CONSTRAINT `like_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `like_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `post_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_post_image`
--
ALTER TABLE `tbl_post_image`
  ADD CONSTRAINT `post_image_iid_fk` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
