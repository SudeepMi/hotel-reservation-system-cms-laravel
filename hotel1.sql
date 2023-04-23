-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2023 at 04:58 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `venue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `capacity` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `image`, `date`, `venue`, `price`, `capacity`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Holi 2018', '1.jpeg', '2018-05-18', 'Hotel Garden Area', 2500, 550, 'Albatross Concert and Holi Celebration 2018. Enjoy with live music and tank wash after holi.', 1, '2023-03-14 09:02:38', NULL),
(2, 'Food Festa', '2.jpg', '2018-04-18', 'Hotel Garden Area', 3500, 350, 'Cultural Performance with food testing sessions.', 1, '2023-03-14 09:02:38', NULL),
(3, 'South Asian Youth Summit', '3.jpg', '2018-04-20', 'Leonat Conference Hall', 0, 250, 'Discussion of youth involvement in protection of cultural heritage.', 1, '2023-03-14 09:02:38', NULL),
(4, 'Regional Minority Society Conference', '4.jpg', '2018-04-15', 'Darfurd Conference Hall', 0, 100, 'Leaders of minority society discuss the involvement in politics.', 1, '2023-03-14 09:02:38', NULL),
(5, 'Bankers Society Annual Summit', '5.jpg', '2018-04-10', 'Kafe Conference Hall', 5400, 60, 'Talks by industry veterans on Central Bank limits on foreign loans.', 1, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_bookings`
--

CREATE TABLE `event_bookings` (
  `id` int UNSIGNED NOT NULL,
  `number_of_tickets` int NOT NULL,
  `total_cost` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `payment` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL,
  `event_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_bookings`
--

INSERT INTO `event_bookings` (`id`, `number_of_tickets`, `total_cost`, `status`, `payment`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 10, 0, 1, 1, 2, 3, '2023-03-14 09:02:38', NULL),
(2, 2, 5000, 1, 0, 2, 1, '2023-03-14 09:02:38', NULL),
(3, 4, 10000, 0, 0, 3, 1, '2023-03-14 09:02:38', NULL),
(4, 3, 10500, 1, 0, 4, 2, '2023-03-14 09:02:38', NULL),
(5, 1, 5400, 1, 1, 4, 5, '2023-03-14 09:02:38', NULL),
(6, 6, 15000, 1, 0, 5, 1, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Air Conditioner', 'air_conditioner.png', 1, '2023-03-14 09:02:38', NULL),
(2, 'Bathtub', 'bathtub.png', 1, '2023-03-14 09:02:38', NULL),
(3, 'Breakfast', 'breakfast.png', 1, '2023-03-14 09:02:38', NULL),
(4, 'Computer', 'computer.png', 1, '2023-03-14 09:02:38', NULL),
(5, 'First Aid Kit', 'first_aid_kit.png', 1, '2023-03-14 09:02:38', NULL),
(6, 'Hair Dryer', 'hair_dryer.png', 1, '2023-03-14 09:02:38', NULL),
(7, 'Mini Bar', 'mini_bar.png', 1, '2023-03-14 09:02:38', NULL),
(8, 'Mini Cooler', 'mini_cooler.png', 1, '2023-03-14 09:02:38', NULL),
(9, 'Parking', 'parking.png', 1, '2023-03-14 09:02:38', NULL),
(10, 'Telephone', 'telephone.png', 1, '2023-03-14 09:02:38', NULL),
(11, 'Television', 'television.png', 1, '2023-03-14 09:02:38', NULL),
(12, 'Wifi', 'wifi.png', 1, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facility_room_type`
--

CREATE TABLE `facility_room_type` (
  `facility_id` int UNSIGNED NOT NULL,
  `room_type_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facility_room_type`
--

INSERT INTO `facility_room_type` (`facility_id`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-14 09:02:38', NULL),
(2, 1, '2023-03-14 09:02:38', NULL),
(3, 1, '2023-03-14 09:02:38', NULL),
(4, 1, '2023-03-14 09:02:38', NULL),
(5, 1, '2023-03-14 09:02:38', NULL),
(6, 1, '2023-03-14 09:02:38', NULL),
(7, 1, '2023-03-14 09:02:38', NULL),
(8, 1, '2023-03-14 09:02:38', NULL),
(9, 1, '2023-03-14 09:02:38', NULL),
(10, 1, '2023-03-14 09:02:38', NULL),
(11, 1, '2023-03-14 09:02:38', NULL),
(12, 1, '2023-03-14 09:02:38', NULL),
(1, 2, '2023-03-14 09:02:38', NULL),
(2, 2, '2023-03-14 09:02:38', NULL),
(3, 2, '2023-03-14 09:02:38', NULL),
(4, 2, '2023-03-14 09:02:38', NULL),
(5, 2, '2023-03-14 09:02:38', NULL),
(6, 2, '2023-03-14 09:02:38', NULL),
(7, 2, '2023-03-14 09:02:38', NULL),
(8, 2, '2023-03-14 09:02:38', NULL),
(9, 2, '2023-03-14 09:02:38', NULL),
(10, 2, '2023-03-14 09:02:38', NULL),
(1, 3, '2023-03-14 09:02:38', NULL),
(2, 3, '2023-03-14 09:02:38', NULL),
(3, 3, '2023-03-14 09:02:38', NULL),
(4, 3, '2023-03-14 09:02:38', NULL),
(9, 3, '2023-03-14 09:02:38', NULL),
(10, 3, '2023-03-14 09:02:38', NULL),
(12, 3, '2023-03-14 09:02:38', NULL),
(1, 4, '2023-03-14 09:02:38', NULL),
(2, 4, '2023-03-14 09:02:38', NULL),
(3, 4, '2023-03-14 09:02:38', NULL),
(4, 4, '2023-03-14 09:02:38', NULL),
(8, 4, '2023-03-14 09:02:38', NULL),
(2, 5, '2023-03-14 09:02:38', NULL),
(5, 5, '2023-03-14 09:02:38', NULL),
(7, 5, '2023-03-14 09:02:38', NULL),
(9, 5, '2023-03-14 09:02:38', NULL),
(8, 6, '2023-03-14 09:02:38', NULL),
(11, 6, '2023-03-14 09:02:38', NULL),
(12, 6, '2023-03-14 09:02:38', NULL),
(10, 4, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Appetizer','Soup','Salad','Main Course','Dessert') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `type`, `image`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sizzling Gambas', 'Appetizer', 'sizzling_gambas.jpeg', '630.00', 'Sizzling gambas is made with a combination of shrimp and vegetables.', 1, '2023-03-14 09:02:38', NULL),
(2, 'Calamares', 'Appetizer', 'calamares.jpg', '630.00', 'Calamares is the Filipino version of the Mediterranean breaded fried squid dish, Calamari.', 1, '2023-03-14 09:02:38', NULL),
(3, 'Tinolang Manok', 'Soup', 'tinolang_manok.jpg', '530.00', 'Tinola in Tagalog or Visayan, is a soup-based dish served as an main dish in the Philippines.', 1, '2023-03-14 09:02:38', NULL),
(4, 'Chicken Sotanghon Soup', 'Soup', 'chicken_sotanghon_soup.jpg', '410.00', 'Chicken Sotanghon Soup is a soup made with bite-sized chicken, cellophane noodles and vegetables.', 1, '2023-03-14 09:02:38', NULL),
(5, 'Mixed Green Salad', 'Salad', 'mixed_green_salad.jpg', '370.00', 'Garlic, crushed red pepper flakes season the light vinaigrette that dresses this refreshing salad.', 1, '2023-03-14 09:02:38', NULL),
(6, 'Chef\'s Salad', 'Salad', 'chef_salad.jpg', '400.00', 'Chef salad is an American salad consisting of eggs, meat, chicken, tomatoes, cucumbers and cheese.', 1, '2023-03-14 09:02:38', NULL),
(7, 'Beefsteak Tagalog', 'Main Course', 'beefsteak_tagalog.jpg', '650.00', 'Beefsteak Tagalog is a dish of pieces of salted and peppered sirloin.', 1, '2023-03-14 09:02:38', NULL),
(8, 'Cordon Bleu', 'Main Course', 'cordon_bleu.jpg', '630.00', 'A cordon bleu is a dish of meat wrapped around cheese, then breaded and pan-fried or deep-fried.', 1, '2023-03-14 09:02:38', NULL),
(9, 'Chicken Pork Adobo', 'Main Course', 'chicken_pork_adobo.jpg', '630.00', 'Chicken Pork Adobo is a version of classic Filipino stew combining chicken pieces and pork cubes.', 1, '2023-03-14 09:02:38', NULL),
(10, 'Grilled Squid', 'Main Course', 'grilled_squid.jpg', '550.00', 'The simple grilled squid recipe uses a fantastic cumin marinade for a Middle Eastern twist.', 1, '2023-03-14 09:02:38', NULL),
(11, 'Fresh Fruit Platter', 'Dessert', 'fresh_fruit_platter.jpg', '300.00', 'It is a base of ripe, colorful, sliced melons and pineapples.', 1, '2023-03-14 09:02:38', NULL),
(12, 'Banana Split', 'Dessert', 'banana_split.jpg', '360.00', 'A banana split is an ice cream-based dessert.', 1, '2023-03-14 09:02:38', NULL),
(13, 'Chocolate Vanilla Sundae', 'Dessert', 'chocolate_vanilla_sundae.jpeg', '200.00', 'This is a rich sundae made with brownies, vanilla ice cream, chocolate syrup, and whipped cream.', 1, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `food_id` int UNSIGNED NOT NULL,
  `room_booking_id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `cost` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `room_type_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `caption`, `is_primary`, `status`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 'Bright Room', 1, 1, 1, '2023-03-14 09:02:38', NULL),
(2, '2.jpg', 'Out View', 0, 1, 1, '2023-03-14 09:02:38', NULL),
(3, '3.jpg', 'Swimming in the Dusk', 0, 1, 1, '2023-03-14 09:02:38', NULL),
(4, '4.jpg', 'A fine Winter', 1, 1, 2, '2023-03-14 09:02:38', NULL),
(5, '5.jpg', 'Minimal', 0, 1, 2, '2023-03-14 09:02:38', NULL),
(6, '6.jpg', 'Abstract', 0, 1, 2, '2023-03-14 09:02:38', NULL),
(7, '7.jpg', 'New Concept', 1, 1, 3, '2023-03-14 09:02:38', NULL),
(8, '8.jpg', 'New Concept', 0, 1, 3, '2023-03-14 09:02:38', NULL),
(9, '9.jpg', 'Best Concept', 0, 1, 3, '2023-03-14 09:02:38', NULL),
(10, '10.jpg', 'New thing', 1, 1, 4, '2023-03-14 09:02:38', NULL),
(11, '11.jpg', 'Room with cool aspects', 0, 1, 4, '2023-03-14 09:02:38', NULL),
(12, '12.jpg', 'Amazing Room', 0, 1, 4, '2023-03-14 09:02:38', NULL),
(13, '13.jpg', 'Room with ac', 1, 1, 5, '2023-03-14 09:02:38', NULL),
(14, '14.jpg', 'Cozy Room', 0, 1, 5, '2023-03-14 09:02:38', NULL),
(15, '15.jpg', 'Artful room', 0, 1, 5, '2023-03-14 09:02:38', NULL),
(16, '16.jpg', 'Sculpture Room', 1, 1, 6, '2023-03-14 09:02:38', NULL),
(17, '17.jpg', 'Bath Room', 0, 1, 6, '2023-03-14 09:02:38', NULL),
(18, '18.jpg', 'Cooler Room', 0, 1, 6, '2023-03-14 09:02:38', NULL),
(19, '19.jpg', 'Whats new', 0, 1, 2, '2023-03-14 09:02:38', NULL),
(20, '20.jpg', 'Summer Breeze', 0, 1, 2, '2023-03-14 09:02:38', NULL),
(21, '21.jpg', 'Autumn Breeze', 0, 1, 3, '2023-03-14 09:02:38', NULL),
(22, '22.jpg', 'New Breeze', 0, 1, 1, '2023-03-14 09:02:38', NULL),
(23, '23.jpg', 'Full Breeze', 0, 1, 1, '2023-03-14 09:02:38', NULL),
(24, '24.jpg', 'Coz Breeze', 0, 1, 1, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(625, '2014_10_12_000000_create_users_table', 1),
(626, '2014_10_12_100000_create_password_resets_table', 1),
(627, '2018_03_29_024654_create_slider_table', 1),
(628, '2018_03_29_024713_create_facilities_table', 1),
(629, '2018_03_29_024753_create_room_types_table', 1),
(630, '2018_03_29_024939_create_facility_room_type_table', 1),
(631, '2018_03_29_025055_create_images_table', 1),
(632, '2018_03_29_025121_create_rooms_table', 1),
(633, '2018_03_29_025157_create_room_bookings_table', 1),
(634, '2018_03_29_025158_create_reviews_table', 1),
(635, '2018_03_29_031146_create_foods_table', 1),
(636, '2018_03_29_031207_create_food_orders_table', 1),
(637, '2018_04_07_022022_create_events_table', 1),
(638, '2018_04_08_025158_create_event_bookings_table', 1),
(639, '2018_05_06_035355_create_pages_table', 1),
(640, '2018_05_06_050318_create_subscribers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url_title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About', 'about', 'Our Hotel is best among all.', 1, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `review` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` enum('0','1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `room_booking_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `rating`, `approval_status`, `room_booking_id`, `created_at`, `updated_at`) VALUES
(1, 'I have the best experience viewing that room.', '4', 'approved', 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(2, 'I like the environment of the hotel.', '2', 'pending', 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(3, 'My children enjoyed the view and ample play spaces in the hotel.', '3', 'approved', 3, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(4, 'This is my second time and I like the hotel.', '3', 'approved', 5, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(5, 'I would never come back in this hotel.', '0', 'rejected', 6, '2023-03-14 09:02:38', '2023-03-14 09:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int UNSIGNED NOT NULL,
  `room_number` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `room_type_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `description`, `available`, `status`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'omnis', 1, 1, 5, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(2, '2', 'earum', 1, 1, 5, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(3, '3', 'ab', 1, 1, 3, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(4, '4', 'qui', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(5, '5', 'voluptas', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(6, '6', 'amet', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(7, '7', 'aperiam', 1, 1, 4, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(8, '8', 'sed', 1, 1, 4, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(9, '9', 'laborum', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(10, '10', 'non', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(11, '11', 'at', 1, 1, 3, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(12, '12', 'quis', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(13, '13', 'assumenda', 1, 1, 3, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(14, '14', 'ut', 1, 1, 6, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(15, '15', 'voluptate', 1, 1, 4, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(16, '16', 'praesentium', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(17, '17', 'illo', 1, 1, 3, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(18, '18', 'repellendus', 1, 1, 4, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(19, '19', 'repudiandae', 1, 1, 6, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(20, '20', 'veritatis', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(21, '21', 'distinctio', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(22, '22', 'sint', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(23, '23', 'eligendi', 1, 1, 3, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(24, '24', 'voluptatem', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(25, '25', 'incidunt', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(26, '26', 'saepe', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(27, '27', 'excepturi', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(28, '28', 'explicabo', 1, 1, 2, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(29, '29', 'architecto', 1, 1, 3, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(30, '30', 'nisi', 1, 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `room_bookings`
--

CREATE TABLE `room_bookings` (
  `id` int UNSIGNED NOT NULL,
  `room_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_date` date DEFAULT NULL,
  `room_cost` int NOT NULL,
  `status` enum('pending','checked_in','checked_out','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_bookings`
--

INSERT INTO `room_bookings` (`id`, `room_id`, `user_id`, `arrival_date`, `departure_date`, `room_cost`, `status`, `payment`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2018-04-18', '2018-04-19', 25000, 'checked_out', 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(2, 2, 2, '2018-04-20', '2018-04-25', 125000, 'checked_out', 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(3, 2, 3, '2018-04-20', '2018-04-25', 125000, 'checked_out', 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(4, 2, 4, '2018-05-15', '2018-05-20', 25000, 'pending', 0, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(5, 3, 2, '2018-05-10', '2018-04-20', 50000, 'checked_in', 0, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(6, 4, 3, '2018-05-10', '2018-05-10', 20000, 'cancelled', 0, '2023-03-14 09:02:38', '2023-03-14 09:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_per_day` int NOT NULL,
  `discount_percentage` int NOT NULL DEFAULT '0',
  `size` int DEFAULT NULL,
  `max_adult` int DEFAULT '0',
  `max_child` int DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `room_service` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `cost_per_day`, `discount_percentage`, `size`, `max_adult`, `max_child`, `description`, `room_service`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Suite', 25000, 5, 3000, 10, 5, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\n\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(2, 'Mini Suite', 18000, 10, 2000, 8, 4, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\n\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(3, 'Ultra Deluxe', 14000, 0, 1400, 5, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\n\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(4, 'Luxury Room', 9000, 0, 800, 4, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\n\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(5, 'Premium Room', 6000, 0, 500, 3, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\n\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(6, 'Normal Room', 3000, 0, 300, 2, 1, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\n\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2023-03-14 09:02:38', '2023-03-14 09:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `small_title`, `big_title`, `description`, `link`, `link_text`, `status`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 'One Experience the hotel', 'One Royal Gardens', 'One Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/1', 'Book Now', 1, '2023-03-14 09:02:38', NULL),
(2, '2.jpg', 'Two Experience the hotel', 'Two Royal Gardens', 'Two Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/2', 'Book Now', 1, '2023-03-14 09:02:38', NULL),
(3, '3.jpg', 'Three Experience the hotel', 'Three Royal Gardens', 'Three Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/3', 'Book Now', 1, '2023-03-14 09:02:38', NULL),
(4, '4.jpg', 'Four Experience the hotel', 'Four Royal Gardens', 'Four Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/4', 'Book Now', 1, '2023-03-14 09:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `phone`, `address`, `email`, `password`, `avatar`, `about`, `facebook_id`, `twitter_id`, `google_id`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Geeta', 'sharma', 'female', '9866893439', 'Kathmandu', 'gita3459@gmail.com', '$2y$10$ezmEM00h5gHsu0P9EOHuTuHDb/8vZwIF1zx7zmXDZ8tOsN16CR03W', 'girl-1.png', 'hello from the other world', NULL, NULL, NULL, 'admin', 1, '10515909140', '2023-03-14 09:02:32', NULL),
(2, 'Ardith', 'Cassin', 'others', '6015144106', '74188 Zieme Pines Apt. 244\nAlanaton, WI 79477-8126', 'schuster.mellie@example.org', '$2y$10$QffTDqgxsxdFfrxL4miyeu4hGHDs2edHorf38wZ1r2YAfzF.VZdQy', 'boy.png', 'incidunt', NULL, NULL, NULL, 'user', 1, '6043817463', '2023-03-14 09:02:37', '2023-03-14 09:02:37'),
(3, 'Kurt', 'Runolfsdottir', 'others', '7201631039', '723 Keyshawn Passage Suite 498\nWest Guiseppe, NV 33527-8436', 'harber.effie@example.net', '$2y$10$TnYuzCWdQbvmVBaN2BATH.LQ.PxnbhoT3byePmLUKh6UJsFgOl8x6', 'man-3.png', 'quibusdam', NULL, NULL, NULL, 'user', 1, '8451566127', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(4, 'Fiona', 'Toy', 'male', '7965838362', '88151 Hermann Field\nLegroschester, ME 81840', 'viva.lemke@example.com', '$2y$10$4/0G0HZaWYTHRMSUfOV9KuWYWeYGkRymqTK15iRsdhXUoXOZmRqKm', 'boy-1.png', 'maxime', NULL, NULL, NULL, 'user', 1, '3353429355', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(5, 'Maryjane', 'Cassin', 'others', '5752554764', '0000 Vandervort Vista Apt. 803\nErnamouth, PA 39423-3608', 'zboncak.alyson@example.net', '$2y$10$f8R1kxgYop3ChcyxGG1s7urWzjoTw1Po0eAzDUWc8GIm2xGxbGgBa', 'boy.png', 'distinctio', NULL, NULL, NULL, 'user', 1, '3936500802', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(6, 'Elouise', 'Jast', 'female', '2731661879', '9424 Kane Rue\nMayertland, CO 39636-4592', 'wyman.randal@example.net', '$2y$10$yG0ZSg8hHKfWmb7GPoJUcOCBr5ntKj5gjjNr.jhUEbsYcmXyPz3w6', 'girl-1.png', 'autem', NULL, NULL, NULL, 'user', 1, '4478560129', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(7, 'Maryjane', 'Lehner', 'male', '9412294301', '274 Schuster Cove Apt. 970\nSchambergermouth, HI 41946-2259', 'eva.hand@example.org', '$2y$10$B77Kh2tDGZaYHPtzfrZoG./tOKWMI2d4/B0VFZItFo2y6lhiONGqu', 'boy.png', 'aut', NULL, NULL, NULL, 'user', 1, '6378789575', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(8, 'Genoveva', 'Toy', 'others', '8168582969', '592 Norberto Wall Apt. 637\nNorth Craigside, TX 24610-4800', 'nathaniel16@example.com', '$2y$10$7L8QjLnaFLiwHwrRpFTVYO6mEAIsCzwvdkf7/qcaoWm3daK7S3HS6', 'man-1.png', 'autem', NULL, NULL, NULL, 'user', 1, '8736873386', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(9, 'Dejon', 'Schroeder', 'others', '1822067162', '799 Junior Valleys\nEmmerichborough, DE 42301-6107', 'moore.isabell@example.com', '$2y$10$V/IU3BoNtM6P3bDj8GCpg.bJqhvwUAcW42j1Ap/Pp8xii2zmTBu0y', 'man-1.png', 'iure', NULL, NULL, NULL, 'user', 1, '5419501667', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(10, 'Alberto', 'Gibson', 'male', '8244781084', '9284 Leonie Springs Suite 933\nNorth Ameliafort, CT 84278-8894', 'weber.anna@example.net', '$2y$10$IgbrkeXNp6GrgMMkEP.59.nxZ6JezJIOKKsQsqO.d2W/KiiLuU9EC', 'boy.png', 'aut', NULL, NULL, NULL, 'user', 1, '8902140784', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(11, 'Nakia', 'Mayert', 'female', '5099650791', '112 Gerhold Ports\nFredahaven, NH 72362-3621', 'lorenzo65@example.org', '$2y$10$tCg7AYrtGYVM.t02286gy.qnIaXes8b1G38M0i5HuBkgcbcZLCYfG', 'girl-2.png', 'eveniet', NULL, NULL, NULL, 'user', 1, '4099895140', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(12, 'Trace', 'Zemlak', 'others', '7559912028', '101 Kshlerin Springs Apt. 326\nAbbottville, GA 52156-2538', 'gillian.bruen@example.com', '$2y$10$dtgxH9hCO5k4vNVWDBGzpuTm3yhpIxmZMVm/SgbNLT0m2aAEbN44K', 'man-1.png', 'animi', NULL, NULL, NULL, 'user', 1, '9102083999', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(13, 'Brando', 'Hudson', 'male', '0831891092', '867 Blick Isle Apt. 964\nBarrowsville, ND 67637', 'kub.clifton@example.net', '$2y$10$x2SonnyBGog5iP6ZqO0bzeGjytvobsGhhX7zxOdzg7CY2BBoUtalq', 'boy.png', 'veniam', NULL, NULL, NULL, 'user', 1, '9612875302', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(14, 'Logan', 'Pouros', 'others', '9936581547', '47774 Bode Courts\nBogisichshire, WV 37312', 'keebler.tamara@example.net', '$2y$10$P8zxfY92xBk9poa5HEPvseEnEOV4/y7I1vq5GRg1Oy3iOwfkxqI7W', 'boy-1.png', 'voluptates', NULL, NULL, NULL, 'user', 1, '3664457454', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(15, 'August', 'Farrell', 'female', '0532301102', '319 Parker Oval Suite 721\nWest Bobbiemouth, MS 56186-0875', 'fbosco@example.com', '$2y$10$XG11S2RXSe6cUy/DWZW2BurgdoUuR6uid5.vVfPUvnemo9vmiz7/W', 'girl-2.png', 'velit', NULL, NULL, NULL, 'user', 1, '8589280386', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(16, 'Mackenzie', 'Mayert', 'male', '6497769897', '53078 Moriah Square Suite 467\nCollinsview, WY 19893-1166', 'ykeebler@example.org', '$2y$10$QFzJc5AJL1lBkRiKD9Y3du7jxJfvR4Ascy1t2ru3X2r25J0yGEcBq', 'man.png', 'doloribus', NULL, NULL, NULL, 'user', 1, '2537884771', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(17, 'Kyla', 'Bode', 'others', '3724873794', '41611 Waelchi Mission\nWest Adah, WY 31197-2773', 'ulubowitz@example.org', '$2y$10$SiX4Hn0nvcKkvCmNCmaq6O4Hb7Hwo9BXpBrmhOyw/1IRhkLVLtBde', 'boy.png', 'quam', NULL, NULL, NULL, 'user', 1, '7554525253', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(18, 'Matt', 'Nader', 'female', '2651922048', '8284 Gaylord Flats Apt. 123\nWest Brisa, IA 23569-0010', 'barbara04@example.net', '$2y$10$wg24Sw7CKcv7PXH/L5nS8ed7G1f5tZOqvgMEp4EwT7pGOepwhHITe', 'girl.png', 'est', NULL, NULL, NULL, 'user', 1, '5004268390', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(19, 'Jalyn', 'Murazik', 'others', '3255819784', '248 Pablo Station Apt. 102\nTownemouth, WI 97309', 'cummings.freeman@example.org', '$2y$10$Cc9FE7oAGNNnVMGYSt/8Hu0i/37mAGebN60RARQM2pnOlViGK88VK', 'man-2.png', 'et', NULL, NULL, NULL, 'user', 1, '3914664013', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(20, 'Tamara', 'McKenzie', 'others', '151361195X', '70506 Kayleigh Run\nKubview, VT 60600-3602', 'andrew14@example.org', '$2y$10$20TAYx8mr3VVnEiUh.g8PevzC8kpq8pvNihO6qGY0XxKOlSTqym6K', 'man.png', 'iusto', NULL, NULL, NULL, 'user', 1, '5644365493', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(21, 'Malinda', 'Torphy', 'female', '3897533707', '5877 Schaden Route Suite 653\nSophialand, WV 05352', 'wintheiser.danial@example.net', '$2y$10$830B7itsD9gipdY5ODaxFeXctL.uchxlW47DaXsaYIWkXVriwlYLK', 'girl-1.png', 'minus', NULL, NULL, NULL, 'user', 1, '3395299494', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(22, 'Meagan', 'Bins', 'male', '4568513952', '863 Pete Parks Suite 151\nTorpfurt, AR 87113-8263', 'morissette.kenny@example.com', '$2y$10$Ph4w09D4WspFZaMBuhHU9u2evwFySr09dhtP83hCe1iQdHsQuyJni', 'man-2.png', 'id', NULL, NULL, NULL, 'user', 1, '5432140199', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(23, 'Kayden', 'Will', 'female', '1702782824', '355 Grover Stream\nEast Clementina, DE 50131-9962', 'pamela.koss@example.com', '$2y$10$YugXAt1H6l.ZQw0sEg5l6e/yX0ArXc950xhwal/TCGb3/u5dqLaQ.', 'girl.png', 'ea', NULL, NULL, NULL, 'user', 1, '2345934562', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(24, 'Vada', 'O\'Keefe', 'male', '0920789722', '37546 Ullrich Islands Apt. 278\nJohnnymouth, DE 50657-4590', 'shawn.ohara@example.com', '$2y$10$F6VDssplgaJ/sOusDja96uYPk2PctARuDT4I0qU1.jrKjE6.h/Vdm', 'boy-1.png', 'corporis', NULL, NULL, NULL, 'user', 1, '3028720996', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(25, 'Orpha', 'Halvorson', 'others', '8513730688', '02105 Glover Way\nLehnermouth, AK 74775', 'mona29@example.com', '$2y$10$nXYbQJ6CbdO/PxxgrIPAU.6OZ3GZoZ7nUFVnCnxyp1MXFwhjHsr5a', 'boy.png', 'ratione', NULL, NULL, NULL, 'user', 1, '6320212494', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(26, 'Alyce', 'Jakubowski', 'others', '7660693549', '0110 Mosciski Square Suite 703\nSouth Ted, CO 64139-2602', 'carlo.dubuque@example.org', '$2y$10$lJoPeHW9rh0q.GDjFVVBXuEQuQw63YOsF4HaV0qYexZrWY0aJXQeG', 'man-2.png', 'consequuntur', NULL, NULL, NULL, 'user', 1, '6206320483', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(27, 'Deon', 'DuBuque', 'male', '1432542273', '75244 Bryon Vista\nEast Jamaalburgh, MS 25103-1061', 'kschmitt@example.org', '$2y$10$z1Lc518Y3cgfFoYSiK1vb.hUvxe5ToVtMuxs6P4hcGc4ca8Fwy.RO', 'man-3.png', 'qui', NULL, NULL, NULL, 'user', 1, '2073528106', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(28, 'Rogers', 'Kuhlman', 'male', '1151386847', '582 Arthur Islands\nWest Mya, NV 32581', 'hickle.fernando@example.net', '$2y$10$KAw.tc2aU/3JTeiI6Pb4JO0jM6J2IJQm94Zqje83fw74hmUja6mqO', 'man.png', 'iusto', NULL, NULL, NULL, 'user', 1, '2887960357', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(29, 'Eldridge', 'Auer', 'male', '5803029521', '8235 Julianne Loaf Suite 053\nTorphyville, ID 26123-0922', 'olesch@example.org', '$2y$10$q1oLAHLCazt/yqkYabnq6eEMBL3vo1gGXKMSXPUU31I/fKiI4aJr.', 'boy.png', 'est', NULL, NULL, NULL, 'user', 1, '3957573877', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(30, 'Dorris', 'Kuphal', 'others', '2029391557', '5531 Vella Court Apt. 219\nJalenburgh, NE 07068-5017', 'myah.murphy@example.org', '$2y$10$pdVdSKPcsKt/Pf/pcmWR7eO2yeaFnnxxzofIBij4hcPGmFzQmr8wy', 'man.png', 'dolores', NULL, NULL, NULL, 'user', 1, '3197290941', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(31, 'Buddy', 'Bartoletti', 'others', '1743582641', '2053 Heidenreich Meadow Suite 682\nCristtown, OK 25545', 'caitlyn59@example.org', '$2y$10$BeQ.Fxs7Eb0d477VQKLaw.SeHGfckRTXywNNisp1qeWfE8Dyps7Cu', 'man-1.png', 'et', NULL, NULL, NULL, 'user', 1, '4104221201', '2023-03-14 09:02:38', '2023-03-14 09:02:38'),
(32, 'Yasir', 'Santiago', 'male', NULL, NULL, 'xamusijuk@mailinator.com', '$2y$10$dQh.CHqN5pqn3EyBHJOrresJ9JmS1o573TtbMLl9rA8yX0ApYC.6O', 'man.png', NULL, NULL, NULL, NULL, 'user', 1, NULL, '2023-03-22 05:29:19', '2023-03-22 05:29:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_name_unique` (`name`);

--
-- Indexes for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_bookings_user_id_index` (`user_id`),
  ADD KEY `event_bookings_event_id_index` (`event_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facilities_name_unique` (`name`);

--
-- Indexes for table `facility_room_type`
--
ALTER TABLE `facility_room_type`
  ADD KEY `facility_room_type_facility_id_index` (`facility_id`),
  ADD KEY `facility_room_type_room_type_id_index` (`room_type_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD KEY `food_orders_food_id_index` (`food_id`),
  ADD KEY `food_orders_room_booking_id_index` (`room_booking_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_room_type_id_index` (`room_type_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_room_booking_id_index` (`room_booking_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_room_number_unique` (`room_number`),
  ADD KEY `rooms_room_type_id_index` (`room_type_id`);

--
-- Indexes for table `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_bookings_room_id_index` (`room_id`),
  ADD KEY `room_bookings_user_id_index` (`user_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_name_unique` (`name`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`),
  ADD UNIQUE KEY `users_twitter_id_unique` (`twitter_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_bookings`
--
ALTER TABLE `event_bookings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_bookings`
--
ALTER TABLE `room_bookings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD CONSTRAINT `event_bookings_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facility_room_type`
--
ALTER TABLE `facility_room_type`
  ADD CONSTRAINT `facility_room_type_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facility_room_type_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `food_orders_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_orders_room_booking_id_foreign` FOREIGN KEY (`room_booking_id`) REFERENCES `room_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_room_booking_id_foreign` FOREIGN KEY (`room_booking_id`) REFERENCES `room_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD CONSTRAINT `room_bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
