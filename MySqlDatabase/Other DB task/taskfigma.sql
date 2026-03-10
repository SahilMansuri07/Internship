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
-- Database: `taskfigma`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` bigint(20) NOT NULL,
  `place_id` bigint(20) NOT NULL,
  `image_url` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `place_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 6, 'place1.png', '2026-02-02 15:15:00', '2026-02-02 15:15:00'),
(2, 9, 'place2.png\r\n', '2026-02-02 15:15:00', '2026-02-02 15:15:00'),
(3, 16, 'place3.png\r\n', '2026-02-02 15:15:17', '2026-02-02 15:15:17'),
(4, 18, 'place4.png\r\n', '2026-02-02 15:15:17', '2026-02-02 15:15:17'),
(5, 11, 'place5.png', '2026-02-02 15:15:38', '2026-02-02 15:15:38'),
(6, 12, 'place6.png', '2026-02-02 15:15:38', '2026-02-02 15:15:38'),
(7, 4, 'place7.png', '2026-02-02 15:16:02', '2026-02-02 15:16:02'),
(8, 10, 'place10.png\r\n', '2026-02-02 15:16:02', '2026-02-02 15:16:02'),
(9, 4, 'test56.png', '2026-02-02 17:09:43', '2026-02-02 17:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `id` bigint(20) NOT NULL,
  `location` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `longitude` varchar(64) NOT NULL,
  `latitude` varchar(64) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`id`, `location`, `description`, `user_id`, `longitude`, `latitude`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(4, 'HOTEL PLENTEOUS INN ( ROOMS & BANQUET )', 'plenteous inn, opp. Gandhigram railway station, Ellisbridge, Ahmedabad, Gujarat 380009', 2, ' 72.56943132759426', '23.02598856960063', 1, 0, '2026-02-02 14:57:02', '2026-02-02 14:57:02'),
(5, 'HCG Hospitals, Ahmedabad', 'The staff was very polite and supportive. The facility was clean and well maintained. Overall a good experience', 1, '72.566947', '23.027015', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(6, 'Ahmedabad One Mall', 'updated desctiptions', 1, '72.529977', '23.036251', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(7, 'Zydus Hospital', 'SG Highway, Thaltej, Ahmedabad, Gujarat 380054', 2, '72.516673', '23.071280', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(8, 'Iskcon Temple, Ahmedabad', 'SG Highway, Satellite, Ahmedabad, Gujarat 380015', 2, '72.506342', '23.028995', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(9, 'Alpha One Metro Station', 'Vastrapur, Ahmedabad, Gujarat 380054', 3, '72.530712', '23.036736', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(10, 'Kankaria Lake', 'Maninagar, Ahmedabad, Gujarat 380008', 3, '72.603773', '22.998981', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(11, 'Civil Hospital Ahmedabad', 'Asarwa, Ahmedabad, Gujarat 380016', 4, '72.604059', '23.050457', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(12, 'Gujarat University', 'Navrangpura, Ahmedabad, Gujarat 380009', 4, '72.545839', '23.035011', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(13, 'Sola Civil Hospital', 'Science City Road, Sola, Ahmedabad, Gujarat 380060', 5, '72.522897', '23.077471', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(14, 'Science City Ahmedabad', 'Science City Road, Ahmedabad, Gujarat 380060', 5, '72.512472', '23.080819', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(15, 'Maninagar Railway Station', 'Maninagar East, Ahmedabad, Gujarat 380008', 6, '72.603981', '22.998347', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(16, 'CG Road Metro Station', 'CG Road, Navrangpura, Ahmedabad, Gujarat 380009', 6, '72.558679', '23.037592', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(17, 'Naroda GIDC', 'Naroda Industrial Area, Ahmedabad, Gujarat 382330', 7, '72.667435', '23.067781', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26'),
(18, 'Chandkheda Railway Station', 'Chandkheda, Ahmedabad, Gujarat 382424', 7, '72.579569', '23.110871', 1, 0, '2026-02-02 15:04:26', '2026-02-02 15:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `place_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `rating` decimal(4,1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `user_id`, `place_id`, `description`, `rating`, `created_at`, `updated_at`, `is_active`, `is_delete`) VALUES
(1, 1, 4, 'The staff was very polite and supportive. The facility was clean and well maintained. Overall a good experience', 4.5, '2026-02-02 15:07:39', '2026-02-02 15:07:39', 1, 0),
(2, 7, 5, 'Doctors were professional and explained everything clearly. Waiting time was slightly high but service quality was good', 3.5, '2026-02-02 15:09:08', '2026-02-02 15:09:08', 1, 0),
(3, 6, 6, 'The staff was very polite and supportive. The facility was clean and well maintained. Overall a good experience', 2.5, '2026-02-02 15:09:47', '2026-02-02 15:09:47', 1, 0),
(4, 4, 7, 'Location is easy to reach and well connected by public transport. The environment was calm and hygienic', 5.0, '2026-02-02 15:10:18', '2026-02-02 15:10:18', 1, 0),
(5, 5, 8, 'Had a smooth experience from registration to consultation. Staff guided properly at every step', 4.0, '2026-02-02 15:11:12', '2026-02-02 15:11:12', 1, 0),
(6, 3, 10, 'Infrastructure is modern and well organized. Parking facility could be improved, but service was satisfactory.', 3.0, '2026-02-02 15:11:40', '2026-02-02 15:11:40', 1, 0),
(7, 2, 17, 'Good treatment and friendly staff. The doctors took enough time to understand the problem and suggest solutions.', 2.0, '2026-02-02 15:12:48', '2026-02-02 15:12:48', 1, 0),
(8, 7, 13, 'Overall experience was positive. Clean premises, helpful nurses, and quick response during emergencies.', 3.5, '2026-02-02 15:12:48', '2026-02-02 15:12:48', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `login_type` enum('S','G','A','F') NOT NULL,
  `about` text NOT NULL,
  `profile_image` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `login_type`, `about`, `profile_image`, `created_at`, `updated_at`, `is_active`, `is_delete`) VALUES
(1, 'sahil', 'sahil@gmail.com', 'sahil123', 'S', 'Sahil mansuri , hyperlink', 'test1.png', '2026-02-02 14:29:25', '2026-02-02 14:29:25', 1, 0),
(2, 'purvil ', 'purvil@gmail.com', 'purvil123', 'S', 'purvil modi , hyperlink', 'test2.png', '2026-02-02 14:30:29', '2026-02-02 14:30:29', 1, 0),
(3, 'mahipal ', 'mahipal@gmail.com', 'mahipal123', 'S', 'mahipal singh , hyperlink', 'test3.png', '2026-02-02 14:31:14', '2026-02-02 14:31:14', 1, 0),
(4, 'jay ', 'jay@gmail.com', 'jay123', 'S', 'jay mange , hyperlink', 'test4.png', '2026-02-02 14:31:54', '2026-02-02 14:31:54', 1, 0),
(5, 'darsh ', 'darsh@gmail.com', 'darsh123', 'S', 'darsh parikh , hyperlink', 'test5.png', '2026-02-02 14:32:26', '2026-02-02 14:32:26', 1, 0),
(6, 'aryan ', 'aryan@gmail.com', 'aryan123', 'S', 'aryan parmar , hyperlink', 'test6.png', '2026-02-02 14:32:56', '2026-02-02 14:32:56', 1, 0),
(7, 'bhautik ', 'bhautik@gmail.com', 'bhautik123', 'S', 'bhautik , hyperlink', 'test7.png', '2026-02-02 14:33:24', '2026-02-02 14:33:24', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_id_fk` (`place_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user1_id_fk` (`user_id`),
  ADD KEY `place1_id_fk` (`place_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD CONSTRAINT `place_id_fk` FOREIGN KEY (`place_id`) REFERENCES `tbl_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD CONSTRAINT `place1_id_fk` FOREIGN KEY (`place_id`) REFERENCES `tbl_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user1_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
