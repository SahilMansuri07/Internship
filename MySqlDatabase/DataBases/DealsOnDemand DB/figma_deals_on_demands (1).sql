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
-- Database: `figma_deals_on_demands`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_business`
--

CREATE TABLE `tbl_business` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `profile_pic` varchar(256) DEFAULT NULL,
  `company_name` varchar(128) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `lat` decimal(11,8) DEFAULT NULL,
  `long` decimal(11,8) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_business`
--

INSERT INTO `tbl_business` (`id`, `user_id`, `profile_pic`, `company_name`, `category_id`, `lat`, `long`, `address`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'biz_1.jpg', 'Alpha Tech Solutions', 2, 23.03960342, 72.53098319, 'Shop 102, Alpha One Mall, Vastrapur, Ahmedabad, Gujarat 380054', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(2, 2, 'biz_2.jpg', 'The Grand Gujarati Thali', 1, 23.01185410, 72.51103949, 'Opp. Prahlad Nagar Garden, Prahlad Nagar, Ahmedabad, Gujarat 380015', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(4, 7, 'biz_7.jpg', 'Pixel Gaming Hub', 6, 23.03371928, 72.46318274, 'South Bopal Trade Center, Bopal, Ahmedabad, Gujarat 380058', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(5, 9, 'biz_9.jpg', 'Zaveri Music Academy', 6, 23.01321827, 72.56221928, 'Paldi Circle, Near Museum, Paldi, Ahmedabad, Gujarat 380007', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(6, 10, 'biz_10.jpg', 'Gota Home Decor', 5, 23.09118274, 72.53511928, 'Vandematram Road, Gota, Ahmedabad, Gujarat 382481', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(7, 12, 'biz_12.jpg', 'Isha Yoga Center', 4, 23.04871827, 72.56911928, 'Riverfront Road, Usmanpura, Ahmedabad, Gujarat 380013', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(8, 13, 'biz_13.jpg', 'Brew & Bake Cafe', 1, 23.02411827, 72.55721928, 'C.G. Road, Near Municipal Market, Ahmedabad, Gujarat 380009', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(9, 14, 'biz_14.jpg', 'The Gurukul Bakery', 1, 23.04811827, 72.53221928, 'Gurukul Road, Memnagar, Ahmedabad, Gujarat 380052', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(10, 12, 'sahil.jpg', 'Alpha PVT ', 4, 23.45781245, 72.12457845, 'ahmedabad', 1, 0, '2026-02-26 11:14:17', '2026-02-26 16:12:08'),
(11, 17, 'biz_17.jpg', 'Manoj Business Consulting', 11, 23.02011827, 72.54021928, 'Ambawadi Circle, Ahmedabad, Gujarat 380006', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(12, 19, 'biz_19.jpg', 'Ayush Photography Studio', 6, 23.05011827, 72.53021928, 'Memnagar Fire Station Road, Ahmedabad, Gujarat 380052', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(13, 1, 'biz_1_2.jpg', 'Alpha Repair Center', 2, 23.03850013, 72.53200045, 'Vastrapur Lake Road, Ahmedabad, Gujarat 380015', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(14, 3, 'biz_3.jpg', 'Satellite Fitness Hub', 10, 23.03019284, 72.51829385, 'Mansi Circle, Satellite, Ahmedabad, Gujarat 380015', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(15, 6, 'biz_6.jpg', 'Riverfront Book Stall', 11, 23.02558274, 72.58701928, 'Sabarmati Riverfront, Ahmedabad, Gujarat 380001', 1, 0, '2026-02-26 11:14:17', '2026-02-26 11:14:17'),
(16, 10, 'buisiness.jpg', 'Alpha Tech Solutions', 2, 23.03960342, 72.53098319, 'Shop 102, Alpha One Mall, Vastrapur, Ahmedabad, Gujarat 380054', 1, 0, '2026-02-26 16:06:06', '2026-02-26 16:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `user_id`, `title`, `email`, `message`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 21, 'Dummy Contact us', 'Sahilmansuri881.o@gmail.com', 'Hello , nice connectiong with You ', 1, 0, '2026-02-26 16:39:13', '2026-02-26 16:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deals_category`
--

CREATE TABLE `tbl_deals_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive,2=block',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_deals_category`
--

INSERT INTO `tbl_deals_category` (`id`, `name`, `image_url`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Food & Dining', 'cat_food.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(2, 'Electronics', 'cat_elec.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(3, 'Fashion & Apparel', 'cat_fashion.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(4, 'Health & Wellness', 'cat_health.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(5, 'Home Decor', 'cat_home.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(6, 'Entertainment', 'cat_ent.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(7, 'Automotive', 'cat_auto.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(8, 'Beauty & Spa', 'cat_beauty.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(9, 'Groceries', 'cat_grocery.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(10, 'Sports & Gym', 'cat_gym.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(11, 'Education', 'cat_edu.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03'),
(12, 'Real Estate', 'cat_property.jpg', 1, 0, '2026-02-26 11:06:03', '2026-02-26 11:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deals_post`
--

CREATE TABLE `tbl_deals_post` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lat` decimal(11,8) DEFAULT NULL,
  `long` decimal(11,8) DEFAULT NULL,
  `website_url` varchar(256) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_deals_post`
--

INSERT INTO `tbl_deals_post` (`id`, `user_id`, `title`, `description`, `lat`, `long`, `website_url`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, '50% Off on Premium Headphones', 'Flash sale on all noise-canceling headphones at our Vastrapur outlet. Limited stock available!', 23.03960342, 72.53098319, 'https://techdeals.in/vastrapur', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(2, 2, 'Buy 1 Get 1 Free - Sunday Brunch', 'Join us for a lavish brunch at Prahlad Nagar. Use code BRUNCH24 at the counter.', 23.01185410, 72.51103949, 'https://foodiehub.in/offers', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(4, 2, 'Gaming Console Rental - Weekend Special', 'Rent a PS5 for the weekend at just ₹999. Pickup from South Bopal.', 23.03371928, 72.46318274, 'https://gamerszone.in/rent', 1, 0, '2026-02-26 11:05:41', '2026-03-05 10:37:46'),
(5, 9, 'Live Music Night - No Cover Charge', 'Enjoy live soulful music this Friday at Paldi. Book your table now!', 23.01321827, 72.56221928, 'https://zaverimusic.in/events', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(6, 10, 'Flat 40% Off on Modern Wall Art', 'Reorganize your home with our exclusive Gota collection. Discount valid till Sunday.', 23.09118274, 72.53511928, 'https://homedecor.in/gota-sale', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(7, 2, 'Morning Yoga Workshop - Free Trial', 'Start your wellness journey with a free 1-hour yoga session in Usmanpura.', 23.04871827, 72.56911928, 'https://ishayoga.in/free-trial', 1, 0, '2026-02-26 11:05:41', '2026-03-05 10:37:50'),
(8, 13, 'Coffee & Croissant Combo @ ₹199', 'Best morning deal near CG Road. Valid between 8 AM to 11 AM daily.', 23.02411827, 72.55721928, 'https://coffeebar.in/deals', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(9, 14, 'Custom Cake Orders - 15% Off', 'Order your birthday or anniversary cakes and get an instant 15% discount in Gurukul.', 23.04811827, 72.53221928, 'https://tanyasbakes.in/order', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(10, 16, 'Personal Training - First 3 Sessions Free', 'Get a dedicated fitness coach at Thaltej. Limited slots for new members.', 23.05011827, 72.50021928, 'https://kiarafit.in/coach', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(11, 1, 'Laptop Service - Flat ₹500 Discount', 'Monsoon special service camp for all laptop brands in Vastrapur.', 23.03850012, 72.53200045, 'https://techdeals.in/service', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(12, 3, 'Gym Membership - Annual Plan @ ₹9999', 'Exclusive offer for Mansi Circle residents. Includes steam and sauna access.', 23.03019284, 72.51829385, 'https://rahulgym.in/join', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(13, 19, 'Couple Photoshoot Package @ ₹4999', 'Capture your memories with our budget photoshoot deals in Memnagar.', 23.05011827, 72.53021928, 'https://ayushpics.in/promo', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(14, 6, 'Buy 2 Books, Get 1 Free', 'Clearance sale at our Riverfront stall. Valid on all fiction titles.', 23.02558274, 72.58701928, 'https://ananyabooks.in/sale', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(15, 17, 'Legal Consultation - First 15 Mins Free', 'Expert consultation for startups and real estate near Parimal Garden.', 23.02011827, 72.54021928, 'https://manojconsulting.in/free', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(16, 5, 'Adventure Travel Kit - 20% Off', 'Get trekking gear and travel kits at discounted rates in Navrangpura.', 23.03719284, 72.56128375, 'https://vikramtravels.in/shop', 0, 1, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(17, 8, 'End of Season Sale - Traditional Wear', 'Up to 70% off on ethnic wear in Maninagar.', 22.99761827, 72.60101928, 'https://poojafashion.in/sale', 0, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(18, 11, 'Co-working Space - Day Pass @ ₹299', 'Work from our premium space near Science City. High-speed Wi-Fi included.', 23.07511827, 72.50741928, 'https://startupbase.in/pass', 0, 1, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(19, 18, 'Resort Day Pass - Discounted', 'Spend a relaxing day at our Makarba property. Limited coupons.', 22.99011827, 72.50021928, 'https://rhearesorts.in/deals', 1, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(20, 20, 'Painting Workshop for Kids', 'Weekend art classes near Nirma University. Materials included.', 23.12511827, 72.54521928, 'https://divya-art.in/kids', 0, 0, '2026-02-26 11:05:41', '2026-02-26 11:05:41'),
(21, 1, 'iPhone 15 Pro Max - Exchange Bonus', 'Get an additional ₹5000 exchange bonus on your old smartphone. Exclusive at Vastrapur.', 23.03982736, 72.53128375, 'https://techdeals.in/iphone-exchange', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(22, 2, 'Unlimited Gujarati Thali @ ₹249', 'Authentic taste of Gujarat. Special weekday lunch offer near Prahlad Nagar Garden.', 23.01211827, 72.51131928, 'https://foodiehub.in/thali-deal', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(23, 3, 'Zumba Workshop - Weekend Batch', 'Burn those calories with our expert trainers at Satellite. Register now for a 20% discount.', 23.03041827, 72.51851928, 'https://rahulgym.in/zumba', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(25, 5, 'Solo Traveler Camping Gear', 'Special discounts on lightweight tents and sleeping bags for solo hikers in Navrangpura.', 23.03741827, 72.56151928, 'https://vikramtravels.in/camping', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(26, 6, 'Buy 3 Children\'s Books at ₹499', 'Nurture the habit of reading. Massive collection of kids\' books at Riverfront.', 23.02581827, 72.58721928, 'https://ananyabooks.in/kids-deal', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(27, 7, 'Nintendo Switch Games on Rent', 'Latest titles available. ₹200 per day. Local pickup from South Bopal.', 23.03391827, 72.46331928, 'https://gamerszone.in/nintendo', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(28, 8, 'Bridal Makeover Package - 25% Off', 'Look your best on your big day. Professional bridal services in Maninagar.', 22.99781827, 72.60121928, 'https://poojafashion.in/bridal', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(29, 9, 'Guitar Classes for Beginners', 'First 2 classes are free! Learn from the best at our Paldi music studio.', 23.01341827, 72.56241928, 'https://zaverimusic.in/guitar', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(30, 10, 'Modular Kitchen Consultation Free', 'Plan your dream kitchen with our experts in Gota. Book a free home visit.', 23.09131827, 72.53531928, 'https://homedecor.in/kitchen', 1, 0, '2026-02-26 11:11:13', '2026-02-26 11:11:13'),
(31, 21, 'Dummypost', 'Dummy post Description', 23.03960342, 72.53098319, 'www.post.com', 1, 0, '2026-02-26 15:01:07', '2026-02-26 15:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deals_post_image`
--

CREATE TABLE `tbl_deals_post_image` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `media_url` varchar(256) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_deals_post_image`
--

INSERT INTO `tbl_deals_post_image` (`id`, `post_id`, `media_url`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'post_1_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(2, 1, 'post_1_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(3, 2, 'post_2_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(4, 2, 'post_2_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(7, 4, 'post_4_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(8, 4, 'post_4_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(9, 5, 'post_5_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(10, 5, 'post_5_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(11, 6, 'post_6_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(12, 6, 'post_6_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(13, 7, 'post_7_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(14, 7, 'post_7_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(15, 8, 'post_8_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(16, 8, 'post_8_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(17, 9, 'post_9_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(18, 9, 'post_9_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(19, 10, 'post_10_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(20, 10, 'post_10_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(21, 11, 'post_11_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(22, 11, 'post_11_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(23, 12, 'post_12_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(24, 12, 'post_12_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(25, 13, 'post_13_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(26, 13, 'post_13_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(27, 14, 'post_14_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(28, 14, 'post_14_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(29, 15, 'post_15_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(30, 15, 'post_15_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(31, 16, 'post_16_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(32, 16, 'post_16_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(33, 17, 'post_17_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(34, 17, 'post_17_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(35, 18, 'post_18_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(36, 18, 'post_18_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(37, 19, 'post_19_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(38, 19, 'post_19_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(39, 20, 'post_20_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(40, 20, 'post_20_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(41, 21, 'post_21_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(42, 21, 'post_21_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(43, 22, 'post_22_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(44, 22, 'post_22_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(45, 23, 'post_23_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(46, 23, 'post_23_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(49, 25, 'post_25_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(50, 25, 'post_25_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(51, 26, 'post_26_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(52, 26, 'post_26_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(53, 27, 'post_27_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(54, 27, 'post_27_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(55, 28, 'post_28_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(56, 28, 'post_28_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(57, 29, 'post_29_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(58, 29, 'post_29_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(59, 30, 'post_30_img_1.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18'),
(60, 30, 'post_30_img_2.jpg', 1, 0, '2026-02-26 11:13:18', '2026-02-26 11:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faqs`
--

CREATE TABLE `tbl_faqs` (
  `id` bigint(20) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_faqs`
--

INSERT INTO `tbl_faqs` (`id`, `question`, `answer`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'How do I claim a deal?', 'Simply show the deal post to the business vendor at their physical location in Ahmedabad to redeem the offer.', 1, 0, '2026-02-26 11:18:45', '2026-02-26 11:18:45'),
(2, 'Is there a limit on how many deals I can save?', 'No, you can save as many deals as you like to your \"Saved\" folder for quick access.', 1, 0, '2026-02-26 11:18:45', '2026-02-26 11:18:45'),
(3, 'How do I become a premium member?', 'Go to your profile settings and click on \"Upgrade to Premium\" to enjoy exclusive local discounts.', 1, 0, '2026-02-26 11:18:45', '2026-02-26 11:18:45'),
(4, 'Can I report a misleading deal?', 'Yes, use the \"Report\" button on any post to notify our moderation team about inappropriate or expired content.', 1, 0, '2026-02-26 11:18:45', '2026-02-26 11:18:45'),
(5, 'Why do I need to complete my profile steps?', 'Completing all 4 steps allows you to post your own deals and interact fully with the community.', 1, 0, '2026-02-26 11:18:45', '2026-02-26 11:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` bigint(20) NOT NULL,
  `sender_user_id` bigint(20) NOT NULL,
  `receiver_user_id` bigint(20) NOT NULL,
  `notification_type` enum('follow','comment') NOT NULL,
  `notify_id` bigint(20) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0 COMMENT '0=unread,1=read',
  `notify_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `sender_user_id`, `receiver_user_id`, `notification_type`, `notify_id`, `title`, `message`, `is_read`, `notify_time`) VALUES
(1, 2, 1, 'follow', 1, 'New Follower!', 'Priya Patel started following you.', 1, '2026-02-20 10:00:05'),
(2, 3, 1, 'follow', 2, 'New Follower!', 'Rahul Verma started following you.', 1, '2026-02-21 11:30:10'),
(4, 1, 2, 'follow', 4, 'New Follower!', 'Amit Sharma started following you.', 1, '2026-02-20 12:45:10'),
(6, 13, 9, 'follow', 10, 'New Follower!', 'Siddharth Nair started following you.', 0, '2026-02-24 21:00:20'),
(7, 7, 16, 'follow', 13, 'New Follower!', 'Arjun Mehta started following you.', 1, '2026-02-23 09:00:25'),
(8, 2, 1, 'comment', 1, 'New Comment', 'Priya Patel commented on your Tech Deal.', 1, '2026-02-24 14:05:00'),
(10, 1, 2, 'comment', 3, 'New Comment', 'Amit Sharma commented on your Brunch Deal.', 1, '2026-02-24 14:15:00'),
(11, 7, 2, 'comment', 4, 'New Comment', 'Arjun Mehta commented on your Brunch Deal.', 0, '2026-02-24 14:20:00'),
(12, 10, 3, 'comment', 5, 'New Comment', 'Neha Gupta commented on your Gym Deal.', 1, '2026-02-24 14:25:00'),
(14, 1, 7, 'comment', 7, 'New Comment', 'Amit Sharma commented on your Gaming Deal.', 0, '2026-02-24 14:35:00'),
(15, 13, 9, 'comment', 8, 'New Comment', 'Siddharth Nair commented on your Music Event.', 0, '2026-02-24 14:40:00'),
(16, 14, 10, 'comment', 9, 'New Comment', 'Tanya Wadhwa commented on your Decor Deal.', 1, '2026-02-24 14:45:00'),
(17, 1, 13, 'comment', 10, 'New Comment', 'Amit Sharma commented on your Coffee Deal.', 1, '2026-02-24 14:50:00'),
(18, 7, 16, 'comment', 11, 'New Comment', 'Arjun Mehta commented on your Fitness Deal.', 0, '2026-02-24 14:55:00'),
(19, 12, 1, 'comment', 12, 'New Comment', 'Isha Malhotra commented on your iPhone Deal.', 0, '2026-02-24 15:00:00'),
(20, 10, 2, 'comment', 13, 'New Comment', 'Neha Gupta commented on your Thali Deal.', 1, '2026-02-24 15:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_comments`
--

CREATE TABLE `tbl_post_comments` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_comments`
--

INSERT INTO `tbl_post_comments` (`id`, `post_id`, `user_id`, `description`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Is this discount also available at the Himalaya Mall outlet?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(3, 2, 1, 'Best brunch in Prahlad Nagar. The dessert spread is amazing!', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(4, 2, 7, 'Do we need a prior reservation for the BOGO offer?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(6, 4, 2, 'Loved the collection! Very authentic silk patterns.', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(7, 7, 1, 'Is the PS5 rental inclusive of extra controllers?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(8, 9, 13, 'Great vibe last Friday! Looking forward to the next session.', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(9, 10, 14, 'Do you provide home delivery in the Gota area?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(10, 13, 1, 'Perfect morning combo. The croissants are very fresh.', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(11, 16, 7, 'Can I get a trial session this Monday at Thaltej?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(12, 21, 12, 'What is the maximum exchange value for an iPhone 13?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(13, 22, 10, 'Is the Thali unlimited for dinner as well?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(14, 23, 13, 'The Zumba trainers here are really energetic!', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(16, 27, 9, 'Do you have the new Zelda game available for rent?', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(17, 1, 3, 'Checking if the tech sale is still live today.', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(18, 4, 6, 'Beautiful sarees, but parking near the shop is a bit difficult.', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(20, 13, 2, 'The CG road outlet is always my go-to for coffee.', 1, 0, '2026-02-26 11:15:16', '2026-02-26 11:15:16'),
(21, 1, 2, 'Is this discount also available at the Himalaya Mall outlet?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(23, 2, 1, 'Best brunch in Prahlad Nagar. The dessert spread is amazing!', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(24, 2, 7, 'Do we need a prior reservation for the BOGO offer?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(26, 4, 2, 'Loved the collection! Very authentic silk patterns.', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(27, 7, 1, 'Is the PS5 rental inclusive of extra controllers?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(28, 9, 13, 'Great vibe last Friday! Looking forward to the next session.', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(29, 10, 14, 'Do you provide home delivery in the Gota area?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(30, 13, 1, 'Perfect morning combo. The croissants are very fresh.', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(31, 16, 7, 'Can I get a trial session this Monday at Thaltej?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(32, 21, 12, 'What is the maximum exchange value for an iPhone 13?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(33, 22, 10, 'Is the Thali unlimited for dinner as well?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(34, 23, 13, 'The Zumba trainers here are really energetic!', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(36, 27, 9, 'Do you have the new Zelda game available for rent?', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(37, 1, 3, 'Checking if the tech sale is still live today.', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(38, 4, 6, 'Beautiful sarees, but parking near the shop is a bit difficult.', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(40, 13, 2, 'The CG road outlet is always my go-to for coffee.', 1, 0, '2026-02-26 11:16:25', '2026-02-26 11:16:25'),
(41, 21, 1, 'heey there ', 1, 0, '2026-03-05 17:43:51', '2026-03-05 17:43:51'),
(42, 2, 1, 'xfgsgs', 1, 0, '2026-03-06 09:51:15', '2026-03-06 09:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_rating`
--

INSERT INTO `tbl_post_rating` (`id`, `post_id`, `user_id`, `rating`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(2, 1, 3, 4.5, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(4, 2, 1, 4.8, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(5, 2, 7, 5.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(6, 2, 9, 3.5, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(9, 4, 2, 5.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(10, 4, 6, 4.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(11, 7, 1, 4.9, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(12, 7, 3, 4.7, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(14, 9, 13, 4.5, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(15, 10, 2, 3.8, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(16, 10, 14, 4.2, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(17, 13, 1, 5.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(18, 13, 2, 4.9, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(20, 16, 7, 4.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(21, 21, 9, 5.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(22, 21, 12, 4.8, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(23, 22, 1, 4.5, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(24, 22, 10, 4.7, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(26, 23, 13, 4.1, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(29, 27, 1, 5.0, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(30, 27, 9, 4.9, 1, 0, '2026-02-26 11:14:43', '2026-02-26 11:14:43'),
(31, 2, 1, 4.5, 1, 0, '2026-02-26 14:25:02', '2026-02-26 14:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_saved`
--

CREATE TABLE `tbl_post_saved` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_saved`
--

INSERT INTO `tbl_post_saved` (`id`, `user_id`, `post_id`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(3, 1, 22, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(4, 2, 1, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(5, 2, 4, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(6, 2, 21, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(11, 7, 1, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(12, 7, 9, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(13, 7, 21, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(14, 10, 4, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(15, 10, 14, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(17, 12, 2, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(18, 13, 1, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(19, 14, 22, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32'),
(20, 16, 23, 1, 0, '2026-02-26 11:18:32', '2026-02-26 11:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_tag`
--

CREATE TABLE `tbl_post_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_tag`
--

INSERT INTO `tbl_post_tag` (`id`, `name`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Fashion', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(2, 'MensWear', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(3, 'WomensWear', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(4, 'KidsFashion', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(5, 'Footwear', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(6, 'Electronics', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(7, 'Gadgets', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(8, 'HomeAppliances', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(9, 'TraditionalWear', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(10, 'Accessories', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(11, 'Jewelry', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(12, 'BeautyProducts', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(13, 'Sportswear', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(14, 'StreetFood', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48'),
(15, 'FineDining', 1, 0, '2026-02-26 12:54:48', '2026-02-26 12:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_tag_bridge`
--

CREATE TABLE `tbl_post_tag_bridge` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post_tag_bridge`
--

INSERT INTO `tbl_post_tag_bridge` (`id`, `post_id`, `tag_id`, `created_at`) VALUES
(1, 1, 6, '2026-02-26 12:56:20'),
(2, 1, 7, '2026-02-26 12:56:20'),
(3, 2, 15, '2026-02-26 12:56:20'),
(4, 2, 14, '2026-02-26 12:56:20'),
(7, 4, 1, '2026-02-26 12:56:20'),
(8, 4, 3, '2026-02-26 12:56:20'),
(9, 4, 9, '2026-02-26 12:56:20'),
(10, 7, 6, '2026-02-26 12:56:20'),
(11, 7, 7, '2026-02-26 12:56:20'),
(12, 9, 10, '2026-02-26 12:56:20'),
(13, 10, 10, '2026-02-26 12:56:20'),
(14, 13, 14, '2026-02-26 12:56:20'),
(15, 13, 15, '2026-02-26 12:56:20'),
(16, 14, 14, '2026-02-26 12:56:20'),
(17, 16, 13, '2026-02-26 12:56:20'),
(18, 21, 6, '2026-02-26 12:56:20'),
(19, 21, 7, '2026-02-26 12:56:20'),
(20, 22, 15, '2026-02-26 12:56:20'),
(21, 22, 14, '2026-02-26 12:56:20'),
(25, 27, 6, '2026-02-26 12:56:20'),
(26, 27, 7, '2026-02-26 12:56:20'),
(27, 8, 11, '2026-02-26 12:56:20'),
(28, 8, 12, '2026-02-26 12:56:20'),
(29, 8, 9, '2026-02-26 12:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report`
--

CREATE TABLE `tbl_report` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `report_description` enum('inappropriate_photo','inappropriate_and_abusive_content','feels_like_spam') NOT NULL,
  `others` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_report`
--

INSERT INTO `tbl_report` (`id`, `post_id`, `report_description`, `others`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 5, 'inappropriate_and_abusive_content', 'The user is promoting restricted items.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(2, 8, 'feels_like_spam', 'Multiple identical posts seen from this account.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(3, 11, 'inappropriate_photo', 'The image is not related to a workspace.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(4, 20, 'feels_like_spam', 'This event already ended last month.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(5, 1, 'inappropriate_photo', 'Low quality image, looks like a placeholder.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(6, 15, 'inappropriate_and_abusive_content', 'The description contains misleading legal advice.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(7, 25, 'feels_like_spam', 'Redirects to a suspicious external website.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(8, 18, 'inappropriate_photo', 'The photo does not match the resort location.', 1, 0, '2026-02-26 11:18:13', '2026-02-26 11:18:13'),
(9, 1, 'feels_like_spam', NULL, 1, 0, '2026-02-26 14:30:07', '2026-02-26 14:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `country_code` varchar(8) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `profile_pic` varchar(256) DEFAULT NULL,
  `banner_pic` varchar(256) DEFAULT NULL,
  `referral_code` varchar(128) DEFAULT NULL,
  `is_premium` tinyint(1) DEFAULT 0,
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `is_steps` tinyint(1) DEFAULT NULL COMMENT '0 to 4',
  `status` enum('Active','Inactive','Deleted') DEFAULT 'Active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `first_name`, `last_name`, `country_code`, `mobile`, `email`, `password`, `bio`, `profile_pic`, `banner_pic`, `referral_code`, `is_premium`, `latitude`, `longitude`, `is_steps`, `status`, `created_at`, `updated_at`) VALUES
(1, 'amit_sharma', 'Sahil', 'Mansuri', '+91', '9876543210', 'amit.s@example.com', 'amin@456', 'Dummy Bio', 'Sahil.jpg', 'banner1.jpg', 'REF001', 1, '23.03960341928374', '72.53098319283741', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 12:03:55'),
(2, 'priya_patel', 'Priya', 'Patel', '+91', '9876543211', 'priya.p@example.com', 'priya999', 'Foodie near Prahlad Nagar Garden.', 'user2.jpg', 'banner2.jpg', 'REF002', 0, '23.01185410293847', '72.51103948576231', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(3, 'sneha_k', 'Sneha', 'Kapoor', '+91', '9876543213', 'sneha.k@example.com', 'sneha_pass', 'Fashionista in Bodakdev.', 'user4.jpg', 'banner4.jpg', 'REF004', 1, '23.04058293746511', '72.50892837465103', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(5, 'kabir_z', 'Kabir', 'Zaveri', '+91', '9876543218', 'kabir.z@example.com', 'kabir_music', 'Music at Paldi Circle.', 'user9.jpg', 'banner9.jpg', 'REF009', 1, '23.01321827364519', '72.56221928374651', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(6, 'neha_g', 'Neha', 'Gupta', '+91', '9876543219', 'neha.g@example.com', 'neha_home', 'Decor enthusiast in Gota.', 'user10.jpg', 'banner10.jpg', 'REF010', 0, '23.09118273645192', '72.53511928374651', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(7, 'isha_m', 'Isha', 'Malhotra', '+91', '9876543221', 'isha.m@example.com', 'isha_yoga', 'Yoga in Usmanpura.', 'user12.jpg', 'banner12.jpg', 'REF012', 0, '23.04871827364519', '72.56911928374651', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(8, 'siddharth_n', 'Siddharth', 'Nair', '+91', '9876543222', 'sid.n@example.com', 'sid_cgrd', 'Near CG Road Starbucks.', 'user13.jpg', 'banner13.jpg', 'REF013', 0, '23.02411827364519', '72.55721928374651', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(9, 'tanya_w', 'Tanya', 'Wadhwa', '+91', '9876543223', 'tanya.w@example.com', 'tanya_bake', 'Baker near Gurukul Tower.', 'user14.jpg', 'banner14.jpg', 'REF014', 1, '23.04811827364519', '72.53221928374651', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(10, '@sahilMansuri', 'sahil', 'mansuri', '+91', '95140447055', 'sahilmansuri881.o@gmail.com', 'sahil@21234', 'dummybio', 'banner.jpg', 'banner16.jpg', 'REF016', 0, '23.05011827364519', '72.50021928374651', 4, 'Active', '2026-02-26 11:01:27', '2026-02-26 15:58:20'),
(11, 'rahul_v', 'Rahul', 'Verma', '+91', '9876543212', 'rahul.v@example.com', 'rahul#88', 'Gym lover near Mansi Circle.', NULL, NULL, 'REF003', 0, '23.03019283746501', '72.51829384756102', 3, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(12, 'varun_d', 'Varun', 'Dhawan', '+91', '9876543224', 'varun.d@example.com', 'varun_hero', 'Located in Naroda.', NULL, NULL, 'REF015', 0, '23.06511827364519', '72.65021928374651', 3, 'Deleted', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(13, 'ayush_t', 'Ayush', 'Tiwari', '+91', '9876543228', 'ayush.t@example.com', 'ayush_photo', 'Photography in Memnagar.', NULL, NULL, 'REF019', 1, '23.05011827364519', '72.53021928374651', 3, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(14, 'vikram_r', NULL, NULL, '+91', '9876543214', 'vikram.r@example.com', 'vikram77', NULL, NULL, NULL, 'REF005', 0, '23.03719283746512', '72.56128374651029', 2, 'Deleted', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(15, 'ananya_d', NULL, NULL, '+91', '9876543215', 'ananya.d@example.com', 'ananya11', NULL, NULL, NULL, 'REF006', 0, '23.02558273645192', '72.58701928374651', 2, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(16, 'pooja_s', NULL, NULL, '+91', '9876543217', 'pooja.s@example.com', 'pooja@2024', NULL, NULL, NULL, 'REF008', 0, '22.99761827364519', '72.60101928374651', 2, 'Deleted', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(17, 'rohan_b', NULL, NULL, '+91', '9876543220', 'rohan.b@example.com', 'rohan_boss', NULL, NULL, NULL, 'REF011', 0, '23.07511827364519', '72.50741928374651', 2, 'Deleted', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(18, 'manoj_k', NULL, NULL, '+91', '9876543226', 'manoj.k@example.com', 'manoj_pro', NULL, NULL, NULL, 'REF017', 1, '23.02011827364519', '72.54021928374651', 2, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(19, 'rhea_c', NULL, NULL, '+91', '9876543227', 'rhea.c@example.com', 'rhea_travel', NULL, NULL, NULL, 'REF018', 0, '22.99011827364519', '72.50021928374651', 2, 'Active', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(20, 'divya_b', NULL, NULL, '+91', '9876543229', 'divya.b@example.com', 'divya_art', NULL, NULL, NULL, 'REF020', 0, '23.12511827364519', '72.54521928374651', 2, 'Deleted', '2026-02-26 11:01:27', '2026-02-26 11:01:27'),
(21, '@aryan123', '', '', '+91', '95104470525', 'aryan@gmail.com', 'aryan@123', '', '', '', 'REF0064', 1, NULL, NULL, 1, 'Active', '2026-02-26 11:43:15', '2026-02-26 11:43:15'),
(22, 'arjun_m_last_ins', 'Arjun', 'Mehta', '+91', '9876543216', 'arjun.m@example.com', 'arjun_gaming', 'Gamer in South Bopal.', 'user7.jpg', 'banner7.jpg', 'REF007', 0, '23.03371928374651', '72.46318273645192', NULL, 'Active', '2026-03-02 12:37:06', '2026-03-02 12:37:06'),
(23, 'tozetiryho', 'Kellie', 'Morse', 'Fugiat v', 'Id cillum vero i', 'ninoroquz@mailinator.com', 'Pa$$w0rd!', 'Ab quam laboris atqu', 'task.JPG', 'wifi.JPG', 'Deleniti sint neque', 0, NULL, NULL, NULL, 'Active', '2026-03-05 09:59:39', '2026-03-05 09:59:39'),
(24, 'tozetiryho', 'Mansuri', 'SAHIL', 'Fugiat v', 'Id cillum vero i', 'sahilmansuri881mm@gmail.com', 'amit@456', 'Ab quam laboris atqu', 'task.JPG', 'wifi.JPG', 'Deleniti sint neque', 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:01:49', '2026-03-05 10:01:49'),
(25, 'vydic', 'Gretchen', 'Spence', 'Voluptat', 'Rerum perspiciat', 'ragyrirok@mailinator.com', 'Pa$$w0rd!', 'Sit cumque officia ', '', '', 'Voluptas voluptatem ', 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:06:16', '2026-03-05 10:06:16'),
(26, 'daviqajuh', 'Dante', 'Delgado', 'Voluptat', 'Sed nihil tempor', 'hifobem@mailinator.com', 'Pa$$w0rd!', 'Quis officiis accusa', '', '', 'Sapiente minima est', 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:10:18', '2026-03-05 10:10:18'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:31:04', '2026-03-05 10:31:04'),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:31:26', '2026-03-05 10:31:26'),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:32:39', '2026-03-05 10:32:39'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:32:46', '2026-03-05 10:32:46'),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Active', '2026-03-05 10:33:45', '2026-03-05 10:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_device`
--

CREATE TABLE `tbl_user_device` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_token` varchar(256) DEFAULT NULL,
  `device_token` varchar(256) DEFAULT NULL,
  `device_type` enum('A','I','W') DEFAULT NULL COMMENT 'A=Android, I=iOS, W=Website',
  `device_name` varchar(128) DEFAULT NULL,
  `device_model` varchar(256) DEFAULT NULL,
  `os_version` varchar(32) DEFAULT NULL,
  `uuid` varchar(128) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive,2=block',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_device`
--

INSERT INTO `tbl_user_device` (`id`, `user_id`, `user_token`, `device_token`, `device_type`, `device_name`, `device_model`, `os_version`, `uuid`, `ip`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'tok_7a2b9c', 'fcm_7823498234_xyz', 'A', 'Samsung', 'Galaxy S23', 'Android 14', 'uuid_9921_8832', '106.201.32.45', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(2, 2, 'tok_1p5k8m', 'fcm_1102938475_abc', 'I', 'iPhone', 'iPhone 15 Pro', 'iOS 17.2', 'uuid_1029_3384', '106.222.12.89', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(3, 3, 'tok_9r2v6j', 'fcm_9988776655_qwe', 'A', 'OnePlus', 'OnePlus 11', 'Android 13', 'uuid_4455_1122', '122.161.44.10', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(5, 5, 'tok_5m9x1q', 'fcm_2233119988_uio', 'A', 'Xiaomi', 'Redmi Note 12', 'Android 12', 'uuid_3322_9900', '103.21.124.6', 0, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(6, 6, 'tok_2y7t4p', 'fcm_4455667788_asd', 'W', 'Chrome', 'Windows 11', 'v121.0.0', 'uuid_browser_01', '157.34.22.11', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(7, 7, 'tok_8b1c4z', 'fcm_1029348576_fgh', 'A', 'Google', 'Pixel 8', 'Android 14', 'uuid_1212_3434', '110.224.55.67', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(8, 8, 'tok_6w3e2s', 'fcm_8877990011_jkl', 'I', 'iPhone', 'iPhone 13 Mini', 'iOS 15.4', 'uuid_5656_7878', '49.36.128.42', 0, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(9, 9, 'tok_4u9o8i', 'fcm_3344556677_zxc', 'A', 'Samsung', 'Galaxy A54', 'Android 13', 'uuid_0099_1122', '27.57.190.23', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(10, 10, 'tok_1z5x7c', 'fcm_7788991122_vbn', 'A', 'Realme', 'Realme GT 3', 'Android 13', 'uuid_7766_5544', '1.39.24.187', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(11, 11, 'tok_9a3s2d', 'fcm_1122334455_mnb', 'I', 'iPhone', 'iPhone 12', 'iOS 16.1', 'uuid_2233_4455', '106.215.8.90', 0, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(12, 12, 'tok_7f5g4h', 'fcm_6677889900_poi', 'A', 'Motorola', 'Edge 40', 'Android 13', 'uuid_9988_7766', '125.16.77.12', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(13, 13, 'tok_3j2k1l', 'fcm_5544332211_lkj', 'W', 'Safari', 'macOS Sonoma', 'v17.2', 'uuid_browser_02', '14.143.22.5', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(14, 14, 'tok_8n7m6b', 'fcm_9900112233_hgf', 'I', 'iPhone', 'iPhone 15 Plus', 'iOS 17.1', 'uuid_3344_5566', '106.208.45.122', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(15, 15, 'tok_5v4c3x', 'fcm_4433221100_dsa', 'A', 'Nothing', 'Phone (2)', 'Android 13', 'uuid_1111_2222', '117.199.33.44', 0, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(16, 16, 'tok_2q1w9e', 'fcm_2211334455_tre', 'I', 'iPhone', 'iPhone SE (2022)', 'iOS 15.0', 'uuid_8888_9999', '157.45.66.77', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(17, 17, 'tok_6r5t4y', 'fcm_6655443322_ytw', 'A', 'Vivo', 'V27 Pro', 'Android 13', 'uuid_4444_5555', '182.70.11.89', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(18, 18, 'tok_1u2i3o', 'fcm_1133557799_uip', 'A', 'Oppo', 'Reno 10', 'Android 13', 'uuid_2222_3333', '122.170.1.25', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(19, 19, 'tok_8p9o0l', 'fcm_9977553311_qwe', 'I', 'iPhone', 'iPhone 11', 'iOS 14.8', 'uuid_6666_7777', '106.210.156.4', 1, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30'),
(20, 20, 'tok_4k5j6h', 'fcm_0011223344_rew', 'A', 'Samsung', 'Galaxy M34', 'Android 13', 'uuid_5555_6666', '27.60.11.200', 0, 0, '2026-02-26 11:04:30', '2026-02-26 11:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_follows`
--

CREATE TABLE `tbl_user_follows` (
  `id` bigint(20) NOT NULL,
  `sender_user_id` bigint(20) NOT NULL,
  `receiver_user_id` bigint(20) NOT NULL,
  `sending_date` datetime DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_follows`
--

INSERT INTO `tbl_user_follows` (`id`, `sender_user_id`, `receiver_user_id`, `sending_date`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2026-02-20 10:00:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(2, 3, 1, '2026-02-21 11:30:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(4, 1, 2, '2026-02-20 12:45:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(5, 10, 2, '2026-02-23 18:20:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(9, 2, 9, '2026-02-23 20:30:00', 1, 0, '2026-02-26 11:17:09', '2026-03-05 16:00:16'),
(10, 13, 9, '2026-02-24 21:00:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(11, 19, 9, '2026-02-25 08:45:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(13, 7, 16, '2026-02-23 09:00:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(14, 12, 16, '2026-02-25 18:15:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(15, 6, 7, '2026-02-24 11:00:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(16, 2, 14, '2026-02-21 15:20:00', 1, 0, '2026-02-26 11:17:09', '2026-03-05 16:00:48'),
(17, 17, 1, '2026-02-25 14:00:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(18, 19, 13, '2026-02-26 09:10:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(19, 2, 10, '2026-02-24 12:00:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(20, 9, 19, '2026-02-25 22:30:00', 1, 0, '2026-02-26 11:17:09', '2026-02-26 11:17:09'),
(21, 21, 1, '2026-02-26 14:54:32', 1, 0, '2026-02-26 14:54:32', '2026-02-26 14:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_otp`
--

CREATE TABLE `tbl_user_otp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `otp_through` enum('login','register','forgot_password') DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `expire_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_otp`
--

INSERT INTO `tbl_user_otp` (`id`, `user_id`, `otp`, `otp_through`, `is_verified`, `expire_time`, `created_at`) VALUES
(1, 1, '5824', 'register', 1, '2026-02-26 10:10:00', '2026-02-26 10:00:00'),
(2, 2, '9137', 'register', 1, '2026-02-26 10:15:00', '2026-02-26 10:05:00'),
(3, 3, '2241', 'register', 1, '2026-02-26 10:20:00', '2026-02-26 10:10:00'),
(5, 5, '4492', 'register', 1, '2026-02-26 10:30:00', '2026-02-26 10:20:00'),
(6, 6, '1056', 'register', 1, '2026-02-26 10:35:00', '2026-02-26 10:25:00'),
(7, 7, '8829', 'register', 1, '2026-02-26 10:40:00', '2026-02-26 10:30:00'),
(8, 8, '3145', 'register', 1, '2026-02-26 10:45:00', '2026-02-26 10:35:00'),
(9, 9, '6621', 'register', 1, '2026-02-26 10:50:00', '2026-02-26 10:40:00'),
(10, 10, '0934', 'register', 1, '2026-02-26 10:55:00', '2026-02-26 10:45:00'),
(11, 11, '5512', 'login', 1, '2026-02-26 11:00:00', '2026-02-26 10:50:00'),
(12, 12, '4028', 'register', 1, '2026-02-26 11:05:00', '2026-02-26 10:55:00'),
(13, 13, '1993', 'register', 1, '2026-02-26 11:10:00', '2026-02-26 11:00:00'),
(14, 14, '8374', 'register', 1, '2026-02-26 11:15:00', '2026-02-26 11:05:00'),
(15, 15, '2051', 'forgot_password', 1, '2026-02-26 11:20:00', '2026-02-26 11:10:00'),
(16, 16, '6670', 'register', 1, '2026-02-26 11:25:00', '2026-02-26 11:15:00'),
(17, 17, '3314', 'register', 1, '2026-02-26 11:30:00', '2026-02-26 11:20:00'),
(18, 18, '9012', 'register', 1, '2026-02-26 11:35:00', '2026-02-26 11:25:00'),
(19, 19, '4456', 'login', 1, '2026-02-26 11:40:00', '2026-02-26 11:30:00'),
(20, 20, '1290', 'register', 1, '2026-02-26 11:45:00', '2026-02-26 11:35:00'),
(21, 1, '4578', 'login', 1, '2026-02-26 11:50:20', '2026-02-26 11:45:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_business`
--
ALTER TABLE `tbl_business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_business_user` (`user_id`),
  ADD KEY `idx_business_category` (`category_id`),
  ADD KEY `idx_business_location` (`lat`,`long`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contact_user` (`user_id`),
  ADD KEY `idx_contact_email` (`email`);

--
-- Indexes for table `tbl_deals_category`
--
ALTER TABLE `tbl_deals_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_deals_post`
--
ALTER TABLE `tbl_deals_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_user` (`user_id`);

--
-- Indexes for table `tbl_deals_post_image`
--
ALTER TABLE `tbl_deals_post_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_image_deal` (`post_id`);

--
-- Indexes for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notification_receiver` (`receiver_user_id`),
  ADD KEY `idx_notification_sender` (`sender_user_id`),
  ADD KEY `idx_notification_read` (`is_read`);

--
-- Indexes for table `tbl_post_comments`
--
ALTER TABLE `tbl_post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_post` (`post_id`),
  ADD KEY `fk_comment_user` (`user_id`);

--
-- Indexes for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_post` (`post_id`),
  ADD KEY `fk_rating_user` (`user_id`);

--
-- Indexes for table `tbl_post_saved`
--
ALTER TABLE `tbl_post_saved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_saved_user` (`user_id`),
  ADD KEY `idx_saved_post` (`post_id`);

--
-- Indexes for table `tbl_post_tag`
--
ALTER TABLE `tbl_post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post_tag_bridge`
--
ALTER TABLE `tbl_post_tag_bridge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_map_post` (`post_id`),
  ADD KEY `fk_map_tag` (`tag_id`);

--
-- Indexes for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_report_post` (`post_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_device`
--
ALTER TABLE `tbl_user_device`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_device_user` (`user_id`);

--
-- Indexes for table `tbl_user_follows`
--
ALTER TABLE `tbl_user_follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_follow_sender` (`sender_user_id`),
  ADD KEY `fk_follow_receiver` (`receiver_user_id`);

--
-- Indexes for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_otp_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_business`
--
ALTER TABLE `tbl_business`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_deals_category`
--
ALTER TABLE `tbl_deals_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_deals_post`
--
ALTER TABLE `tbl_deals_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_deals_post_image`
--
ALTER TABLE `tbl_deals_post_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_post_comments`
--
ALTER TABLE `tbl_post_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_post_saved`
--
ALTER TABLE `tbl_post_saved`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_post_tag`
--
ALTER TABLE `tbl_post_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_post_tag_bridge`
--
ALTER TABLE `tbl_post_tag_bridge`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_report`
--
ALTER TABLE `tbl_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_user_device`
--
ALTER TABLE `tbl_user_device`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_user_follows`
--
ALTER TABLE `tbl_user_follows`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_business`
--
ALTER TABLE `tbl_business`
  ADD CONSTRAINT `fk_business_category` FOREIGN KEY (`category_id`) REFERENCES `tbl_deals_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_business_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_deals_post`
--
ALTER TABLE `tbl_deals_post`
  ADD CONSTRAINT `fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_deals_post_image`
--
ALTER TABLE `tbl_deals_post_image`
  ADD CONSTRAINT `fk_post_image_deal` FOREIGN KEY (`post_id`) REFERENCES `tbl_deals_post` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD CONSTRAINT `fk_notify_receiver` FOREIGN KEY (`receiver_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_notify_sender` FOREIGN KEY (`sender_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_post_comments`
--
ALTER TABLE `tbl_post_comments`
  ADD CONSTRAINT `fk_comment_post` FOREIGN KEY (`post_id`) REFERENCES `tbl_deals_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD CONSTRAINT `fk_rating_post` FOREIGN KEY (`post_id`) REFERENCES `tbl_deals_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rating_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_post_saved`
--
ALTER TABLE `tbl_post_saved`
  ADD CONSTRAINT `fk_saved_post` FOREIGN KEY (`post_id`) REFERENCES `tbl_deals_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_saved_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_post_tag_bridge`
--
ALTER TABLE `tbl_post_tag_bridge`
  ADD CONSTRAINT `fk_map_post` FOREIGN KEY (`post_id`) REFERENCES `tbl_deals_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_map_tag` FOREIGN KEY (`tag_id`) REFERENCES `tbl_post_tag` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD CONSTRAINT `fk_report_post` FOREIGN KEY (`post_id`) REFERENCES `tbl_deals_post` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_user_device`
--
ALTER TABLE `tbl_user_device`
  ADD CONSTRAINT `fk_device_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_user_follows`
--
ALTER TABLE `tbl_user_follows`
  ADD CONSTRAINT `fk_follow_receiver` FOREIGN KEY (`receiver_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_follow_sender` FOREIGN KEY (`sender_user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_user_otp`
--
ALTER TABLE `tbl_user_otp`
  ADD CONSTRAINT `fk_otp_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
