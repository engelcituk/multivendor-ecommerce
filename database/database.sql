-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2025 at 05:52 AM
-- Server version: 9.3.0
-- PHP Version: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopx`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `first_name`, `last_name`, `address`, `city`, `state`, `country`, `zip`, `phone`, `email`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rachel', 'Farley', 'Rem dignissimos cons', 'Laboriosam minima a', 'Ut error at soluta c', 'Netherlands Antilles', 62967, '+1 (626) 584-2047', 'gafy@mailinator.com', 1, '2025-09-07 00:54:52', '2025-09-07 00:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '/defaults/avatar.png',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `avatar`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '/defaults/avatar.png', 'SUPER ADMIN', 'admin@gmail.com', NULL, '$2y$12$eIN6efciE33sRgB4/VG4gO6pZZw8Rs9s96fy8Ll5wUwYhBifG4QPi', NULL, '2025-09-02 23:38:45', '2025-09-02 23:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_commissions`
--

CREATE TABLE `admin_commissions` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `commission_rate` double NOT NULL,
  `commission_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_commissions`
--

INSERT INTO `admin_commissions` (`id`, `order_id`, `commission_rate`, `commission_amount`, `created_at`, `updated_at`) VALUES
(214, 1, 15, 50, '2025-09-15 18:00:00', NULL),
(215, 2, 15, 50, '2025-09-20 18:00:00', NULL),
(216, 3, 15, 50, '2025-09-15 18:00:00', NULL),
(217, 4, 15, 50, '2025-09-01 18:00:00', NULL),
(218, 5, 15, 50, '2025-09-12 18:00:00', NULL),
(219, 6, 15, 50, '2025-09-05 18:00:00', NULL),
(220, 7, 15, 50, '2025-09-13 18:00:00', NULL),
(221, 8, 15, 50, '2025-09-16 18:00:00', NULL),
(222, 9, 15, 50, '2025-09-19 18:00:00', NULL),
(223, 10, 15, 50, '2025-09-20 18:00:00', NULL),
(224, 11, 15, 50, '2025-09-13 18:00:00', NULL),
(225, 12, 15, 50, '2025-09-08 18:00:00', NULL),
(226, 13, 15, 50, '2025-09-20 18:00:00', NULL),
(227, 14, 15, 50, '2025-09-16 18:00:00', NULL),
(228, 15, 15, 50, '2025-09-24 18:00:00', NULL),
(229, 16, 15, 50, '2025-09-29 18:00:00', NULL),
(230, 17, 15, 50, '2025-09-28 18:00:00', NULL),
(231, 18, 15, 50, '2025-09-08 18:00:00', NULL),
(232, 19, 15, 50, '2025-09-14 18:00:00', NULL),
(233, 20, 15, 50, '2025-09-13 18:00:00', NULL),
(234, 21, 15, 50, '2025-09-29 18:00:00', NULL),
(235, 22, 15, 50, '2025-09-14 18:00:00', NULL),
(236, 23, 15, 50, '2025-09-26 18:00:00', NULL),
(237, 24, 15, 50, '2025-09-13 18:00:00', NULL),
(238, 25, 15, 50, '2025-09-29 18:00:00', NULL),
(239, 26, 15, 50, '2025-09-11 18:00:00', NULL),
(240, 27, 15, 50, '2025-08-31 18:00:00', NULL),
(241, 28, 15, 50, '2025-09-07 18:00:00', NULL),
(242, 29, 15, 50, '2025-09-22 18:00:00', NULL),
(243, 30, 15, 50, '2025-09-11 18:00:00', NULL),
(244, 31, 15, 50, '2025-08-31 18:00:00', NULL),
(245, 32, 15, 50, '2025-09-03 18:00:00', NULL),
(246, 33, 15, 50, '2025-09-06 18:00:00', NULL),
(247, 34, 15, 50, '2025-09-11 18:00:00', NULL),
(248, 35, 15, 50, '2025-09-07 18:00:00', NULL),
(249, 36, 15, 50, '2025-09-08 18:00:00', NULL),
(250, 37, 15, 50, '2025-09-04 18:00:00', NULL),
(251, 38, 15, 50, '2025-09-27 18:00:00', NULL),
(252, 39, 15, 50, '2025-09-21 18:00:00', NULL),
(253, 40, 15, 50, '2025-09-22 18:00:00', NULL),
(254, 41, 15, 50, '2025-09-28 18:00:00', NULL),
(255, 42, 15, 50, '2025-09-18 18:00:00', NULL),
(256, 43, 15, 50, '2025-09-10 18:00:00', NULL),
(257, 44, 15, 50, '2025-09-03 18:00:00', NULL),
(258, 45, 15, 50, '2025-09-05 18:00:00', NULL),
(259, 46, 15, 50, '2025-09-11 18:00:00', NULL),
(260, 47, 15, 50, '2025-09-21 18:00:00', NULL),
(261, 48, 15, 50, '2025-09-20 18:00:00', NULL),
(262, 49, 15, 50, '2025-09-11 18:00:00', NULL),
(263, 50, 15, 50, '2025-09-18 18:00:00', NULL),
(264, 51, 15, 50, '2025-09-05 18:00:00', NULL),
(265, 52, 15, 50, '2025-09-06 18:00:00', NULL),
(266, 53, 15, 50, '2025-09-03 18:00:00', NULL),
(267, 54, 15, 50, '2025-09-18 18:00:00', NULL),
(268, 55, 15, 50, '2025-09-24 18:00:00', NULL),
(269, 56, 15, 50, '2025-09-26 18:00:00', NULL),
(270, 57, 15, 50, '2025-09-10 18:00:00', NULL),
(271, 58, 15, 50, '2025-09-27 18:00:00', NULL),
(272, 59, 15, 50, '2025-09-14 18:00:00', NULL),
(273, 60, 15, 50, '2025-09-29 18:00:00', NULL),
(274, 61, 15, 50, '2025-09-28 18:00:00', NULL),
(275, 62, 15, 50, '2025-09-17 18:00:00', NULL),
(276, 63, 15, 50, '2025-09-23 18:00:00', NULL),
(277, 64, 15, 50, '2025-08-31 18:00:00', NULL),
(278, 65, 15, 50, '2025-09-20 18:00:00', NULL),
(279, 66, 15, 50, '2025-09-09 18:00:00', NULL),
(280, 67, 15, 50, '2025-09-29 18:00:00', NULL),
(281, 68, 15, 50, '2025-09-08 18:00:00', NULL),
(282, 69, 15, 50, '2025-09-24 18:00:00', NULL),
(283, 70, 15, 50, '2025-09-12 18:00:00', NULL),
(284, 71, 15, 50, '2025-09-06 18:00:00', NULL),
(285, 72, 15, 50, '2025-09-23 18:00:00', NULL),
(286, 73, 15, 50, '2025-09-25 18:00:00', NULL),
(287, 74, 15, 50, '2025-09-21 18:00:00', NULL),
(288, 75, 15, 50, '2025-09-21 18:00:00', NULL),
(289, 76, 15, 50, '2025-09-22 18:00:00', NULL),
(290, 77, 15, 50, '2025-09-04 18:00:00', NULL),
(291, 78, 15, 50, '2025-09-28 18:00:00', NULL),
(292, 79, 15, 50, '2025-09-29 18:00:00', NULL),
(293, 80, 15, 50, '2025-09-17 18:00:00', NULL),
(294, 81, 15, 50, '2025-09-01 18:00:00', NULL),
(295, 82, 15, 50, '2025-09-24 18:00:00', NULL),
(296, 83, 15, 50, '2025-09-08 18:00:00', NULL),
(297, 84, 15, 50, '2025-09-19 18:00:00', NULL),
(298, 85, 15, 50, '2025-09-23 18:00:00', NULL),
(299, 86, 15, 50, '2025-09-11 18:00:00', NULL),
(300, 87, 15, 50, '2025-09-18 18:00:00', NULL),
(301, 88, 15, 50, '2025-09-02 18:00:00', NULL),
(302, 89, 15, 50, '2025-09-15 18:00:00', NULL),
(303, 90, 15, 50, '2025-09-04 18:00:00', NULL),
(304, 91, 15, 50, '2025-09-21 18:00:00', NULL),
(305, 92, 15, 50, '2025-08-31 18:00:00', NULL),
(306, 93, 15, 50, '2025-09-02 18:00:00', NULL),
(307, 94, 15, 50, '2025-09-04 18:00:00', NULL),
(308, 95, 15, 50, '2025-09-20 18:00:00', NULL),
(309, 96, 15, 50, '2025-09-18 18:00:00', NULL),
(310, 97, 15, 50, '2025-09-19 18:00:00', NULL),
(311, 98, 15, 50, '2025-09-14 18:00:00', NULL),
(312, 99, 15, 50, '2025-09-10 18:00:00', NULL),
(313, 100, 15, 50, '2025-09-29 18:00:00', NULL),
(314, 101, 15, 146.7, '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(315, 102, 15, 146.7, '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(316, 103, 15, 146.7, '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(317, 104, 15, 146.7, '2025-09-09 05:26:32', '2025-09-09 05:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','color') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', '2025-09-06 21:04:01', '2025-09-06 21:04:01'),
(2, 'Size', 'text', '2025-09-06 21:04:19', '2025-09-06 21:04:19'),
(3, 'Color', 'color', '2025-09-09 05:40:51', '2025-09-09 05:40:51'),
(4, 'Color', 'color', '2025-09-09 05:42:33', '2025-09-09 05:42:33'),
(5, 'Size', 'text', '2025-09-09 05:43:21', '2025-09-09 05:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_id` bigint UNSIGNED NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, 'Orange', '#FF620F', '2025-09-06 21:04:01', '2025-09-06 21:04:01'),
(2, 1, 'Green', '#14F097', '2025-09-06 21:04:01', '2025-09-06 21:04:01'),
(3, 1, 'Red', '#E70909', '2025-09-06 21:04:01', '2025-09-06 21:04:01'),
(4, 2, 'M', NULL, '2025-09-06 21:04:19', '2025-09-06 21:04:19'),
(5, 2, 'XL', NULL, '2025-09-06 21:04:19', '2025-09-06 21:04:19'),
(6, 2, 'XXL', NULL, '2025-09-06 21:04:19', '2025-09-06 21:04:19'),
(7, 4, 'Black', '#000000', '2025-09-09 05:42:33', '2025-09-09 05:42:33'),
(8, 4, 'Red', '#EE0000', '2025-09-09 05:42:34', '2025-09-09 05:42:34'),
(9, 5, 'M', NULL, '2025-09-09 05:43:21', '2025-09-09 05:43:21'),
(10, 5, 'Xl', NULL, '2025-09-09 05:43:21', '2025-09-09 05:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `banner_ads`
--

CREATE TABLE `banner_ads` (
  `id` bigint UNSIGNED NOT NULL,
  `banner_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_ads`
--

INSERT INTO `banner_ads` (`id`, `banner_id`, `image`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'banner_one', 'uploads/4545fb54-ba34-4b46-aa40-32384bac7357.jpg', 'Everyday Fresh & Clean with Our Products', '#', NULL, '2025-09-04 04:00:42'),
(2, 'banner_two', 'uploads/6976be35-df6c-44b1-a40b-4d947e696287.jpg', 'Make your Breakfast Healthy and Easy', '#', NULL, '2025-09-04 04:00:52'),
(3, 'banner_three', 'uploads/68ae4aab-4186-4db9-b7ef-5c2972b6cb66.jpg', 'The best Organic Products Online', '#', NULL, '2025-09-04 04:01:10'),
(4, 'banner_four', 'uploads/63ba7529-4cad-45e8-be75-bf35ba4365c7.jpeg', 'Aromatherapy Essential Oil Diffuser – 7 LED Colors', '#', NULL, '2025-09-06 21:15:07'),
(5, 'banner_five', 'uploads/41db9d0d-7f03-464a-8662-f2737d07052f.jpeg', 'Unisex Cotton Graphic T-Shirt Vintage Style', '#', NULL, '2025-09-06 21:15:25'),
(6, 'banner_six', 'uploads/7812b62f-269a-4a32-aaf0-833fe8603b64.jpeg', 'SLuxury Cashmere Scarf Ultra-Soft Essential', '#', NULL, '2025-09-06 21:15:39'),
(7, 'banner_seven', 'uploads/48f62a96-2fe7-43a9-9ecb-4c3291b1f232.jpeg', '4K Ultra HD Action Camera Waterproof, WiFi Enabled', '#', NULL, '2025-09-06 21:15:59'),
(8, 'side_banner_one', 'uploads/26ef5e2a-7702-4d5b-a554-f13effbf2ed5.png', 'Luxury Memory Foam Soft', '#', NULL, '2025-09-04 04:02:11'),
(9, 'side_banner_two', 'uploads/e8e74a00-6f07-45fe-b60f-1cdb399b02d2.png', NULL, NULL, NULL, '2025-09-04 04:03:27'),
(10, 'side_banner_three', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'uploads/96fd7196-909c-4381-8014-2b30847e253f.png', 'Apple', 'apple', 1, '2025-09-03 21:58:42', '2025-09-03 21:58:42'),
(2, 'uploads/d5ac2a8b-893c-4039-80e4-8cb5f0d92266.png', 'Nike', 'nike', 1, '2025-09-03 21:58:51', '2025-09-03 21:58:51'),
(3, 'uploads/847df232-5ff5-45b7-87d3-ad2acd526c8b.png', 'Samsung', 'samsung', 1, '2025-09-03 21:58:59', '2025-09-03 21:58:59'),
(4, 'uploads/39f594b2-4f27-41c9-8ea6-5ed544493e26.png', 'Adidas', 'adidas', 1, '2025-09-03 21:59:06', '2025-09-03 21:59:06'),
(5, 'uploads/23573134-0a6b-4b5a-88a6-6bbb840d584f.png', 'Microsoft', 'microsoft', 1, '2025-09-03 21:59:15', '2025-09-03 21:59:15'),
(6, 'uploads/3a12c064-7ae7-477a-84c2-edf973b8a10c.png', 'Sony', 'sony', 1, '2025-09-03 21:59:23', '2025-09-03 21:59:23'),
(7, 'uploads/a7809e19-002f-47c3-85a7-029f5c734164.png', 'Toyota', 'toyota', 1, '2025-09-03 21:59:33', '2025-09-03 21:59:33'),
(8, 'uploads/507631f8-7186-4cb6-b7ee-def02bd5fe20.png', 'Gucci', 'gucci', 1, '2025-09-03 21:59:59', '2025-09-03 21:59:59'),
(9, 'uploads/85116595-b5d7-45ea-a7f3-60b30303aea2.png', 'Amazon', 'amazon', 1, '2025-09-03 22:00:15', '2025-09-03 22:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_settings', 'a:29:{s:9:\"site_name\";s:5:\"ShopX\";s:10:\"site_email\";s:15:\"shopx@gmail.com\";s:10:\"site_phone\";s:9:\"000000000\";s:13:\"site_currency\";s:3:\"USD\";s:18:\"site_currency_icon\";s:1:\"$\";s:13:\"paypal_status\";s:6:\"active\";s:11:\"paypal_mode\";s:7:\"sandbox\";s:15:\"paypal_currency\";s:3:\"USD\";s:11:\"paypal_rate\";s:1:\"1\";s:16:\"paypal_client_id\";s:80:\"ARw4_uzFSzVuCeTiayoejYcCIbaU0mN0U6v_wt0B2kF1iyXNmwgp2EMO0s-IWsUhaORyrRz92vKOyLv9\";s:13:\"paypal_secret\";s:80:\"ECHNB7A_Udnbgg8MeXuy5JF8JoOWcScKPHhucryjqudiHuY5NznHCdwT9FdzFIvjrvIno-ju3Hx54PWT\";s:13:\"stripe_status\";s:6:\"active\";s:11:\"stripe_mode\";s:7:\"sandbox\";s:15:\"stripe_currency\";s:3:\"USD\";s:11:\"stripe_rate\";s:1:\"1\";s:16:\"stripe_client_id\";s:107:\"pk_test_51MwNFdKW5d0gpOwDt4kj2AWwubKMI8bzSHHjNenilgX91YyHB3O3tB3yD5do2dAl8qpUCFWM6wuMqQeg12ZMnQv600sfwl8Hoq\";s:13:\"stripe_secret\";s:107:\"sk_test_51MwNFdKW5d0gpOwDnak9F1qPBvErrGAOHAMdWQ4wHaaWhRDhOtFRw80i8XgiOnDW0ChbYt2yhKdZbR3llR9IkStD00IEVi0Q9z\";s:15:\"razorpay_status\";s:6:\"active\";s:17:\"razorpay_currency\";s:3:\"INR\";s:13:\"razorpay_rate\";s:5:\"87.52\";s:18:\"razorpay_client_id\";s:23:\"rzp_test_cvrsy43xvBZfDT\";s:15:\"razorpay_secret\";s:24:\"c9AmI4C5vOfSWmZehhlns5df\";s:16:\"admin_commission\";s:2:\"15\";s:22:\"site_short_description\";s:40:\"Awesome eCommerce store website template\";s:12:\"site_address\";s:56:\"233 North Michigan Avenue, Suite 1800, Chicago, IL 60601\";s:14:\"site_copyright\";s:37:\"2025, ShopX - HTML Ecommerce Template\";s:10:\"site_hours\";s:24:\"10:00 - 18:00, Mon - Sat\";s:9:\"site_logo\";s:48:\"uploads/550826c3-15f7-4a57-bc2e-0340371e99ca.svg\";s:12:\"site_favicon\";s:48:\"uploads/c046179f-3a4a-4d5a-b341-2c99f4ac7ebd.png\";}', 2072843318);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `variant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `options` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `position`, `image`, `icon`, `is_featured`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Electronics', 'electronics', 0, 'uploads/3b5eec73-3fc2-4bba-a267-989351e604ed.png', 'uploads/be9e52e8-416e-46a5-81c1-f60fc536a3cf.svg', 1, 1, '2025-09-03 04:32:01', '2025-09-07 00:45:50'),
(2, 3, 'Canon', 'canon', 0, NULL, 'uploads/c46df604-66c5-41d0-89cc-df61d7387c55.svg', 0, 1, '2025-09-03 04:35:14', '2025-09-03 05:02:52'),
(3, 1, 'Camera', 'camera', 0, 'uploads/27189eda-f713-423f-8903-efebfc20f7da.png', 'uploads/1dc73d85-d50a-4e13-a6c9-589f845f3bd4.svg', 1, 1, '2025-09-03 04:35:34', '2025-09-07 00:45:19'),
(4, 3, 'DJI', 'dji', 1, NULL, NULL, 0, 1, '2025-09-03 04:36:05', '2025-09-03 04:36:07'),
(5, 3, 'GoPro', 'gopro', 2, NULL, 'uploads/2c8a0ddd-dd03-4481-8406-c76af5caa8b2.svg', 0, 1, '2025-09-03 04:36:14', '2025-09-09 05:47:24'),
(6, 3, 'Pentax', 'pentax', 3, NULL, 'uploads/59b5304e-d9bc-4b36-86f4-a3009d074889.svg', 0, 1, '2025-09-03 04:36:22', '2025-09-09 05:47:24'),
(7, 1, 'Laptops', 'laptops', 1, NULL, 'uploads/fab2c2db-f815-45c6-8b5d-9d10488a720f.svg', 0, 1, '2025-09-03 04:36:54', '2025-09-03 05:03:17'),
(8, 7, 'Acer', 'acer', 0, NULL, 'uploads/fc5b2048-6fe6-4ab8-b7f9-01715b317761.svg', 0, 1, '2025-09-03 04:36:58', '2025-09-03 05:03:20'),
(9, 7, 'ASUS', 'asus', 1, NULL, 'uploads/30e96203-cc15-45ed-9229-dc3ef7fbc737.svg', 0, 1, '2025-09-03 04:37:08', '2025-09-03 05:03:21'),
(10, 7, 'Lenovo', 'lenovo', 2, NULL, NULL, 0, 1, '2025-09-03 04:37:23', '2025-09-03 04:37:29'),
(11, 7, 'MSI', 'msi', 3, NULL, NULL, 0, 1, '2025-09-03 04:37:27', '2025-09-03 04:37:30'),
(12, 1, 'Smart Phones', 'smart-phones', 2, NULL, NULL, 0, 1, '2025-09-03 04:37:36', '2025-09-03 04:40:21'),
(13, 12, 'Google Pixel', 'google-pixel', 0, NULL, NULL, 0, 1, '2025-09-03 04:37:45', '2025-09-03 04:37:47'),
(14, 12, 'One Plus', 'one-plus', 1, NULL, NULL, 0, 1, '2025-09-03 04:37:55', '2025-09-03 04:37:57'),
(15, 12, 'SAMSUNG', 'samsung', 2, NULL, NULL, 0, 1, '2025-09-03 04:38:01', '2025-09-03 04:38:03'),
(16, 12, 'Sony Xperia', 'sony-xperia', 3, NULL, NULL, 0, 1, '2025-09-03 04:38:09', '2025-09-03 04:38:11'),
(17, NULL, 'Mens Fashion', 'mens-fashion', 1, 'uploads/2fb70ef8-d066-483b-8c02-7c64863410af.png', 'uploads/594f54b7-0fbb-4992-a06c-d41474092c17.svg', 1, 1, '2025-09-03 04:38:22', '2025-09-03 21:29:16'),
(18, NULL, 'Womens Fashion', 'womens-fashion', 2, 'uploads/fa81231b-5dbc-49b4-8f02-03287c771ba1.png', 'uploads/85ceb625-d7cd-422a-b99a-8a140314d61c.svg', 1, 1, '2025-09-03 04:38:27', '2025-09-03 21:30:02'),
(19, NULL, 'Shoes', 'shoes', 3, 'uploads/93223fc5-7425-4e7b-a370-4e1cf00125e2.png', 'uploads/c2b0b24c-d51c-482c-9749-9c1bb627468b.svg', 1, 1, '2025-09-03 04:38:30', '2025-09-03 21:31:07'),
(20, NULL, 'Health And Beauty', 'health-and-beauty', 4, 'uploads/eb1c089a-76d3-4b07-af1e-ade1199c5343.png', 'uploads/86269725-261b-4ee2-9fae-22253b134484.svg', 1, 1, '2025-09-03 04:38:39', '2025-09-03 21:31:20'),
(21, NULL, 'Groceries', 'groceries', 5, 'uploads/10194e7c-44c7-4cd6-9fc2-c027d242edfe.png', 'uploads/30ba258f-d8c4-4cdf-9cdf-134ff9e9aa36.svg', 1, 1, '2025-09-03 04:38:51', '2025-09-03 05:23:11'),
(22, NULL, 'Home and Life', 'home-and-life', 6, 'uploads/82604c69-1de9-467f-9b0a-d9c6e53d7bfd.png', 'uploads/7f835a2b-d313-4409-8f1c-1bfcbdd3c83e.svg', 1, 1, '2025-09-03 04:38:55', '2025-09-03 05:23:29'),
(23, NULL, 'Sports And Outdoors', 'sports-and-outdoors', 7, NULL, 'uploads/003cdd64-a660-4ed7-a15e-4db56d35ab0f.svg', 0, 1, '2025-09-03 04:39:01', '2025-09-03 05:00:39'),
(24, NULL, 'Automotive', 'automotive', 8, NULL, 'uploads/c6c59900-262b-4a2e-8065-55b554c690fe.svg', 0, 1, '2025-09-03 04:39:05', '2025-09-03 05:00:45'),
(25, NULL, 'Babes And Toys', 'babes-and-toys', 9, 'uploads/b815108c-f11c-4da0-bd40-6a530147e446.png', 'uploads/2b68d3bd-7ec1-4f19-8941-2a487f08f26b.svg', 1, 1, '2025-09-03 04:39:11', '2025-09-03 21:33:30'),
(26, NULL, 'Video Games', 'video-games', 10, 'uploads/abb62b4f-bbde-4524-bcd2-1ad5ef638b93.png', 'uploads/75c1be1c-0a14-4cc3-af95-fb0a6a0cdb21.svg', 1, 1, '2025-09-03 04:42:39', '2025-09-03 05:28:47'),
(27, NULL, 'Books', 'books', 11, 'uploads/80d9cc81-e260-4b3e-8e94-4deb0409612b.png', 'uploads/ab5fbebf-8e07-43c1-85b5-ab0880ffabd3.svg', 1, 1, '2025-09-03 04:42:52', '2025-09-03 21:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(166, 3, 160, NULL, NULL),
(167, 2, 160, NULL, NULL),
(168, 4, 160, NULL, NULL),
(169, 5, 160, NULL, NULL),
(170, 6, 160, NULL, NULL),
(171, 3, 142, NULL, NULL),
(172, 2, 142, NULL, NULL),
(173, 4, 142, NULL, NULL),
(174, 5, 142, NULL, NULL),
(175, 6, 142, NULL, NULL),
(176, 3, 143, NULL, NULL),
(177, 2, 143, NULL, NULL),
(178, 4, 143, NULL, NULL),
(179, 5, 143, NULL, NULL),
(180, 6, 143, NULL, NULL),
(181, 3, 144, NULL, NULL),
(182, 2, 144, NULL, NULL),
(183, 4, 144, NULL, NULL),
(184, 5, 144, NULL, NULL),
(185, 6, 144, NULL, NULL),
(186, 3, 145, NULL, NULL),
(187, 2, 145, NULL, NULL),
(188, 4, 145, NULL, NULL),
(189, 5, 145, NULL, NULL),
(190, 6, 145, NULL, NULL),
(191, 3, 146, NULL, NULL),
(192, 2, 146, NULL, NULL),
(193, 4, 146, NULL, NULL),
(194, 5, 146, NULL, NULL),
(195, 6, 146, NULL, NULL),
(196, 3, 147, NULL, NULL),
(197, 2, 147, NULL, NULL),
(198, 4, 147, NULL, NULL),
(199, 5, 147, NULL, NULL),
(200, 6, 147, NULL, NULL),
(201, 3, 148, NULL, NULL),
(202, 2, 148, NULL, NULL),
(203, 4, 148, NULL, NULL),
(204, 5, 148, NULL, NULL),
(205, 6, 148, NULL, NULL),
(206, 3, 149, NULL, NULL),
(207, 2, 149, NULL, NULL),
(208, 4, 149, NULL, NULL),
(209, 5, 149, NULL, NULL),
(210, 6, 149, NULL, NULL),
(211, 17, 150, NULL, NULL),
(212, 17, 151, NULL, NULL),
(213, 17, 152, NULL, NULL),
(214, 17, 153, NULL, NULL),
(215, 17, 154, NULL, NULL),
(216, 17, 155, NULL, NULL),
(217, 17, 156, NULL, NULL),
(218, 17, 157, NULL, NULL),
(219, 17, 158, NULL, NULL),
(220, 18, 159, NULL, NULL),
(221, 18, 140, NULL, NULL),
(222, 18, 121, NULL, NULL),
(223, 18, 122, NULL, NULL),
(224, 18, 123, NULL, NULL),
(225, 18, 124, NULL, NULL),
(226, 18, 125, NULL, NULL),
(227, 19, 126, NULL, NULL),
(228, 19, 127, NULL, NULL),
(229, 19, 128, NULL, NULL),
(230, 19, 129, NULL, NULL),
(231, 19, 130, NULL, NULL),
(232, 19, 131, NULL, NULL),
(233, 19, 132, NULL, NULL),
(234, 19, 133, NULL, NULL),
(235, 20, 134, NULL, NULL),
(236, 20, 135, NULL, NULL),
(237, 20, 136, NULL, NULL),
(238, 20, 137, NULL, NULL),
(239, 20, 138, NULL, NULL),
(240, 20, 139, NULL, NULL),
(241, 20, 141, NULL, NULL),
(242, 1, 161, NULL, NULL),
(243, 3, 161, NULL, NULL),
(244, 2, 161, NULL, NULL),
(245, 4, 161, NULL, NULL),
(246, 5, 161, NULL, NULL),
(247, 6, 161, NULL, NULL),
(248, 7, 161, NULL, NULL),
(249, 8, 161, NULL, NULL),
(250, 9, 161, NULL, NULL),
(251, 10, 161, NULL, NULL),
(252, 11, 161, NULL, NULL),
(253, 12, 161, NULL, NULL),
(254, 13, 161, NULL, NULL),
(255, 14, 161, NULL, NULL),
(256, 15, 161, NULL, NULL),
(257, 16, 161, NULL, NULL),
(258, 3, 162, NULL, NULL),
(259, 2, 162, NULL, NULL),
(260, 4, 162, NULL, NULL),
(261, 5, 162, NULL, NULL),
(262, 6, 162, NULL, NULL),
(263, 1, 163, NULL, NULL),
(264, 3, 163, NULL, NULL),
(265, 2, 163, NULL, NULL),
(266, 4, 163, NULL, NULL),
(267, 5, 163, NULL, NULL),
(268, 6, 163, NULL, NULL),
(269, 7, 163, NULL, NULL),
(270, 8, 163, NULL, NULL),
(271, 9, 163, NULL, NULL),
(272, 10, 163, NULL, NULL),
(273, 11, 163, NULL, NULL),
(274, 12, 163, NULL, NULL),
(275, 13, 163, NULL, NULL),
(276, 14, 163, NULL, NULL),
(277, 15, 163, NULL, NULL),
(278, 16, 163, NULL, NULL),
(279, 17, 164, NULL, NULL),
(280, 17, 165, NULL, NULL),
(281, 17, 166, NULL, NULL),
(282, 18, 167, NULL, NULL),
(283, 18, 168, NULL, NULL),
(284, 18, 169, NULL, NULL),
(285, 18, 170, NULL, NULL),
(286, 18, 171, NULL, NULL),
(287, 19, 172, NULL, NULL),
(288, 19, 173, NULL, NULL),
(289, 19, 175, NULL, NULL),
(290, 19, 174, NULL, NULL),
(291, 19, 180, NULL, NULL),
(292, 1, 179, NULL, NULL),
(293, 3, 179, NULL, NULL),
(294, 2, 179, NULL, NULL),
(295, 4, 179, NULL, NULL),
(296, 5, 179, NULL, NULL),
(297, 6, 179, NULL, NULL),
(298, 7, 179, NULL, NULL),
(299, 8, 179, NULL, NULL),
(300, 9, 179, NULL, NULL),
(301, 10, 179, NULL, NULL),
(302, 11, 179, NULL, NULL),
(303, 12, 179, NULL, NULL),
(304, 13, 179, NULL, NULL),
(305, 14, 179, NULL, NULL),
(306, 15, 179, NULL, NULL),
(307, 16, 179, NULL, NULL),
(308, 20, 178, NULL, NULL),
(309, 18, 177, NULL, NULL),
(310, 18, 176, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_section_settings`
--

CREATE TABLE `contact_section_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `map_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `minimum_spend` double NOT NULL,
  `maximum_spend` double NOT NULL,
  `usage_limit_per_coupon` int NOT NULL,
  `usage_limit_per_customer` int NOT NULL,
  `used` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `slug`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Terms and Conditions', 'terms-and-conditions', '<p data-start=\"378\" data-end=\"595\">Welcome to <strong data-start=\"389\" data-end=\"410\">[Your Store Name]</strong>! These Terms and Conditions outline the rules and regulations for the use of our website and services. By accessing or purchasing from <strong data-start=\"546\" data-end=\"566\">[Your Store URL]</strong>, you agree to these Terms.</p>\r\n<hr data-start=\"597\" data-end=\"600\">\r\n<h5 data-start=\"602\" data-end=\"616\">1. General</h5>\r\n<ul data-start=\"617\" data-end=\"818\">\r\n<li data-start=\"617\" data-end=\"727\">\r\n<p data-start=\"619\" data-end=\"727\">By using our website, you confirm that you are at least 18 years old or have parental/guardian permission.</p>\r\n</li>\r\n<li data-start=\"728\" data-end=\"818\">\r\n<p data-start=\"730\" data-end=\"818\">We reserve the right to update or change these Terms at any time without prior notice.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"820\" data-end=\"823\">\r\n<h5 data-start=\"825\" data-end=\"849\">2. Products &amp; Orders</h5>\r\n<ul data-start=\"850\" data-end=\"1090\">\r\n<li data-start=\"850\" data-end=\"902\">\r\n<p data-start=\"852\" data-end=\"902\">All products listed are subject to availability.</p>\r\n</li>\r\n<li data-start=\"903\" data-end=\"1003\">\r\n<p data-start=\"905\" data-end=\"1003\">We make every effort to display product colors and details accurately, but variations may occur.</p>\r\n</li>\r\n<li data-start=\"1004\" data-end=\"1090\">\r\n<p data-start=\"1006\" data-end=\"1090\">Placing an order means you agree to purchase goods in accordance with these Terms.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"1092\" data-end=\"1095\">\r\n<h5 data-start=\"1097\" data-end=\"1121\">3. Pricing &amp; Payment</h5>\r\n<ul data-start=\"1122\" data-end=\"1379\">\r\n<li data-start=\"1122\" data-end=\"1215\">\r\n<p data-start=\"1124\" data-end=\"1215\">All prices are listed in <strong data-start=\"1149\" data-end=\"1163\">[currency]</strong> and include/exclude applicable taxes (as stated).</p>\r\n</li>\r\n<li data-start=\"1216\" data-end=\"1314\">\r\n<p data-start=\"1218\" data-end=\"1314\">We accept payments via <strong data-start=\"1241\" data-end=\"1311\">[list payment methods, e.g., credit card, PayPal, mobile payments]</strong>.</p>\r\n</li>\r\n<li data-start=\"1315\" data-end=\"1379\">\r\n<p data-start=\"1317\" data-end=\"1379\">Orders will only be processed once full payment is received.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"1381\" data-end=\"1384\">\r\n<h5 data-start=\"1386\" data-end=\"1412\">4. Shipping &amp; Delivery</h5>\r\n<ul data-start=\"1413\" data-end=\"1568\">\r\n<li data-start=\"1413\" data-end=\"1499\">\r\n<p data-start=\"1415\" data-end=\"1499\">Shipping times are estimates and may vary due to circumstances beyond our control.</p>\r\n</li>\r\n<li data-start=\"1500\" data-end=\"1568\">\r\n<p data-start=\"1502\" data-end=\"1568\">You are responsible for providing accurate delivery information.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"1570\" data-end=\"1573\">\r\n<h5 data-start=\"1575\" data-end=\"1599\">5. Returns &amp; Refunds</h5>\r\n<ul data-start=\"1600\" data-end=\"1891\">\r\n<li data-start=\"1600\" data-end=\"1703\">\r\n<p data-start=\"1602\" data-end=\"1703\">Returns are accepted within <strong data-start=\"1630\" data-end=\"1642\">[X days]</strong> of delivery if items are unused and in original condition.</p>\r\n</li>\r\n<li data-start=\"1704\" data-end=\"1797\">\r\n<p data-start=\"1706\" data-end=\"1797\">Certain products (e.g., perishable goods, personal items) may not be eligible for return.</p>\r\n</li>\r\n<li data-start=\"1798\" data-end=\"1891\">\r\n<p data-start=\"1800\" data-end=\"1891\">Refunds will be issued to the original payment method after inspection of returned items.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"1893\" data-end=\"1896\">\r\n<h5 data-start=\"1898\" data-end=\"1926\">6. Intellectual Property</h5>\r\n<ul data-start=\"1927\" data-end=\"2070\">\r\n<li data-start=\"1927\" data-end=\"2070\">\r\n<p data-start=\"1929\" data-end=\"2070\">All content on our website, including logos, text, graphics, and images, is owned by <strong data-start=\"2014\" data-end=\"2035\">[Your Store Name]</strong> and protected by copyright laws.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"2072\" data-end=\"2075\">\r\n<h5 data-start=\"2077\" data-end=\"2107\">7. Limitation of Liability</h5>\r\n<ul data-start=\"2108\" data-end=\"2233\">\r\n<li data-start=\"2108\" data-end=\"2233\">\r\n<p data-start=\"2110\" data-end=\"2233\">We are not liable for any indirect, incidental, or consequential damages arising from the use of our website or products.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"2235\" data-end=\"2238\">\r\n<h5 data-start=\"2240\" data-end=\"2260\">8. Governing Law</h5>\r\n<ul data-start=\"2261\" data-end=\"2330\">\r\n<li data-start=\"2261\" data-end=\"2330\">\r\n<p data-start=\"2263\" data-end=\"2330\">These Terms are governed by the laws of <strong data-start=\"2303\" data-end=\"2327\">[Your Country/State]</strong>.</p>\r\n</li>\r\n</ul>', 1, '2025-09-07 03:13:44', '2025-09-07 03:15:07'),
(2, 'Privacy Policy', 'privacy-policy', '<h5 data-start=\"2580\" data-end=\"2609\">1. Information We Collect</h5>\r\n<ul data-start=\"2610\" data-end=\"2858\">\r\n<li data-start=\"2610\" data-end=\"2706\">\r\n<p data-start=\"2612\" data-end=\"2706\">Personal details (name, email, phone, address) when placing an order or creating an account.</p>\r\n</li>\r\n<li data-start=\"2707\" data-end=\"2786\">\r\n<p data-start=\"2709\" data-end=\"2786\">Payment information (processed securely via third-party payment providers).</p>\r\n</li>\r\n<li data-start=\"2787\" data-end=\"2858\">\r\n<p data-start=\"2789\" data-end=\"2858\">Usage data such as IP address, browser type, and browsing behavior.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"2860\" data-end=\"2863\">\r\n<h5>2. How We Use Your Information</h5>\r\n<ul data-start=\"2900\" data-end=\"3099\">\r\n<li data-start=\"2900\" data-end=\"2939\">\r\n<p data-start=\"2902\" data-end=\"2939\">To process and deliver your orders.</p>\r\n</li>\r\n<li data-start=\"2940\" data-end=\"2991\">\r\n<p data-start=\"2942\" data-end=\"2991\">To improve our website and customer experience.</p>\r\n</li>\r\n<li data-start=\"2992\" data-end=\"3061\">\r\n<p data-start=\"2994\" data-end=\"3061\">To send promotional emails and updates (you can opt out anytime).</p>\r\n</li>\r\n<li data-start=\"3062\" data-end=\"3099\">\r\n<p data-start=\"3064\" data-end=\"3099\">To comply with legal obligations.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"3101\" data-end=\"3104\">\r\n<h5 data-start=\"3106\" data-end=\"3135\">3. Sharing of Information</h5>\r\n<ul data-start=\"3136\" data-end=\"3354\">\r\n<li data-start=\"3136\" data-end=\"3189\">\r\n<p data-start=\"3138\" data-end=\"3189\">We do not sell or rent your personal information.</p>\r\n</li>\r\n<li data-start=\"3190\" data-end=\"3302\">\r\n<p data-start=\"3192\" data-end=\"3302\">We may share data with trusted third-party service providers (e.g., payment processors, shipping companies).</p>\r\n</li>\r\n<li data-start=\"3303\" data-end=\"3354\">\r\n<p data-start=\"3305\" data-end=\"3354\">We may disclose information if required by law.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"3356\" data-end=\"3359\">\r\n<h5 data-start=\"3361\" data-end=\"3386\">4. Cookies &amp; Tracking</h5>\r\n<ul data-start=\"3387\" data-end=\"3568\">\r\n<li data-start=\"3387\" data-end=\"3473\">\r\n<p data-start=\"3389\" data-end=\"3473\">We use cookies to enhance browsing, personalize content, and analyze site traffic.</p>\r\n</li>\r\n<li data-start=\"3474\" data-end=\"3568\">\r\n<p data-start=\"3476\" data-end=\"3568\">You can disable cookies in your browser settings, but some features may not work properly.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"3570\" data-end=\"3573\">\r\n<h5 data-start=\"3575\" data-end=\"3595\">5. Data Security</h5>\r\n<ul data-start=\"3596\" data-end=\"3732\">\r\n<li data-start=\"3596\" data-end=\"3670\">\r\n<p data-start=\"3598\" data-end=\"3670\">We implement industry-standard security measures to protect your data.</p>\r\n</li>\r\n<li data-start=\"3671\" data-end=\"3732\">\r\n<p data-start=\"3673\" data-end=\"3732\">However, no method of online transmission is 100% secure.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"3734\" data-end=\"3737\">\r\n<h5 data-start=\"3739\" data-end=\"3757\">6. Your Rights</h5>\r\n<ul data-start=\"3758\" data-end=\"3899\">\r\n<li data-start=\"3758\" data-end=\"3832\">\r\n<p data-start=\"3760\" data-end=\"3832\">You may request access, correction, or deletion of your personal data.</p>\r\n</li>\r\n<li data-start=\"3833\" data-end=\"3899\">\r\n<p data-start=\"3835\" data-end=\"3899\">You may unsubscribe from marketing communications at any time.</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"3901\" data-end=\"3904\">\r\n<h5 data-start=\"3906\" data-end=\"3923\">7. Contact Us</h5>\r\n<p data-start=\"3924\" data-end=\"4063\">If you have any questions about this Privacy Policy, contact us at:<br data-start=\"3991\" data-end=\"3994\">📧 Email: [Your Support Email]<br data-start=\"4024\" data-end=\"4027\">📍 Address: [Your Company Address]</p>\r\n<hr data-start=\"4065\" data-end=\"4068\">\r\n<p data-start=\"4070\" data-end=\"4260\">⚠️ <strong data-start=\"4073\" data-end=\"4082\">Note:</strong> These are general templates. For legal compliance (like GDPR in Europe, CCPA in California, or other local laws), you may need to adjust the content or consult a legal expert.</p>', 1, '2025-09-07 03:13:58', '2025-09-07 03:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `sale_start` date NOT NULL,
  `sale_end` date NOT NULL,
  `products` json NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `sale_start`, `sale_end`, `products`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2025-09-04', '2026-09-12', '[\"122\", \"124\", \"143\", \"133\", \"163\", \"150\", \"161\", \"165\"]', 1, '2025-09-04 04:32:14', '2025-09-04 04:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `hero_banners`
--

CREATE TABLE `hero_banners` (
  `id` bigint UNSIGNED NOT NULL,
  `banner_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_banners`
--

INSERT INTO `hero_banners` (`id`, `banner_one`, `title_one`, `btn_url_one`, `banner_two`, `title_two`, `btn_url_two`, `created_at`, `updated_at`) VALUES
(1, 'uploads/d02b8808-94b1-45e4-ab55-80278003d3eb.png', 'Hi-Res Audio Headphones', '#', 'uploads/734b48a1-85d3-44e5-926e-2cd0e7b82e08.png', 'Mens Leather Waterproof Boots', '#', '2025-09-03 01:36:08', '2025-09-08 21:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `rejected_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `verified_at` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` enum('passport','driving_license','id_card') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_scan_copy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kycs`
--

INSERT INTO `kycs` (`id`, `user_id`, `status`, `rejected_reason`, `verified_at`, `full_name`, `date_of_birth`, `gender`, `full_address`, `document_type`, `document_scan_copy`, `created_at`, `updated_at`) VALUES
(1, 4, 'approved', NULL, NULL, 'Alice Johnson', '2025-09-03 10:09:42', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:42', '2025-09-03 04:09:42'),
(2, 5, 'approved', NULL, NULL, 'Bob Smith', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(3, 6, 'approved', NULL, NULL, 'Carol Williams', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(4, 7, 'approved', NULL, NULL, 'David Brown', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(5, 8, 'approved', NULL, NULL, 'Emma Davis', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(6, 9, 'approved', NULL, NULL, 'Frank Miller', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(7, 10, 'approved', NULL, NULL, 'Grace Wilson', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(8, 11, 'approved', NULL, NULL, 'Henry Moore', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(9, 12, 'approved', NULL, NULL, 'Isabella Taylor', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(10, 13, 'approved', NULL, NULL, 'Jack Anderson', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(11, 13, 'pending', NULL, NULL, 'Jack Anderson', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(12, 13, 'pending', NULL, NULL, 'Anderson', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(13, 13, 'pending', NULL, NULL, 'Nora Jacktion', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(14, 13, 'pending', NULL, NULL, 'Yato Kamaguri', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(15, 13, 'pending', NULL, NULL, 'Zeneth', '2025-09-03 10:09:43', 'male', '123 Main St, Anytown, USA', 'passport', '/uploads/document.pdf', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(16, 2, 'approved', NULL, NULL, 'Chester Villarreal', '09/10/2025', 'female', 'Craig Robbins', 'driving_license', 'uploads/83c902c3-ac64-431c-8e0f-e6d3cec1cc9c.png', '2025-09-09 06:08:55', '2025-09-09 06:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_15_054839_create_admins_table', 1),
(5, '2025_06_19_100037_create_kycs_table', 1),
(6, '2025_06_23_050248_create_stores_table', 1),
(7, '2025_06_23_115435_create_permission_tables', 1),
(8, '2025_06_25_111125_create_settings_table', 1),
(9, '2025_06_26_105723_create_categories_table', 1),
(10, '2025_06_30_064709_create_tags_table', 1),
(11, '2025_06_30_102528_create_brands_table', 1),
(12, '2025_07_01_042421_create_products_table', 1),
(13, '2025_07_02_113547_create_category_product_table', 1),
(14, '2025_07_02_114728_create_product_tag_table', 1),
(15, '2025_07_03_070750_create_product_images_table', 1),
(16, '2025_07_06_070701_create_attributes_table', 1),
(17, '2025_07_06_070718_create_attribute_values_table', 1),
(18, '2025_07_06_070943_create_product_attribute_values_table', 1),
(19, '2025_07_14_042035_create_product_variants_table', 1),
(20, '2025_07_14_042147_create_product_variant_attribute_value_table', 1),
(21, '2025_07_17_060827_create_product_files_table', 1),
(22, '2025_07_23_113046_create_carts_table', 1),
(23, '2025_07_30_095416_create_coupons_table', 1),
(24, '2025_08_03_043808_create_shipping_rules_table', 1),
(25, '2025_08_04_102053_create_addresses_table', 1),
(26, '2025_08_07_065110_create_orders_table', 1),
(27, '2025_08_07_065112_create_order_products_table', 1),
(28, '2025_08_11_093526_create_admin_commissions_table', 1),
(29, '2025_08_12_101113_create_order_status_histories_table', 1),
(30, '2025_08_13_075153_create_store_wallets_table', 1),
(31, '2025_08_13_094616_create_withdraw_methods_table', 1),
(32, '2025_08_14_033511_create_store_withdraw_methods_table', 1),
(33, '2025_08_14_063659_create_store_withdrawal_requests_table', 1),
(34, '2025_08_18_113444_create_sliders_table', 1),
(35, '2025_08_19_044216_create_hero_banners_table', 1),
(36, '2025_08_19_074430_create_popular_categories_table', 1),
(37, '2025_08_20_040706_create_flash_sales_table', 1),
(38, '2025_08_21_060317_create_product_sections_table', 1),
(39, '2025_08_23_062025_create_product_reviews_table', 1),
(40, '2025_08_24_060548_create_wishlists_table', 1),
(41, '2025_08_25_043826_create_newsletters_table', 1),
(42, '2025_08_25_071232_create_contact_section_settings_table', 1),
(43, '2025_08_25_104338_create_contacts_table', 1),
(44, '2025_08_26_042750_create_custom_pages_table', 1),
(45, '2025_08_26_061731_create_banner_ads_table', 1),
(46, '2025_08_27_035307_create_our_features_table', 1),
(47, '2025_08_27_094807_create_social_links_table', 1),
(48, '2025_08_28_092155_create_offer_sliders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_sliders`
--

CREATE TABLE `offer_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_info` json DEFAULT NULL,
  `shipping_info` json DEFAULT NULL,
  `has_coupon` tinyint(1) NOT NULL DEFAULT '0',
  `coupon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` enum('pending','paid','failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `store_id`, `transaction_id`, `customer_email`, `customer_phone`, `customer_first_name`, `customer_last_name`, `billing_info`, `shipping_info`, `has_coupon`, `coupon`, `discount`, `shipping_charge`, `total`, `payment_method`, `currency`, `currency_icon`, `currency_rate`, `order_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-15 18:00:00', '2025-09-07 01:26:49'),
(2, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(3, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-15 18:00:00', '2025-09-07 01:26:49'),
(4, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-01 18:00:00', '2025-09-07 01:26:49'),
(5, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-12 18:00:00', '2025-09-07 01:26:49'),
(6, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-05 18:00:00', '2025-09-07 01:26:49'),
(7, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(8, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-16 18:00:00', '2025-09-07 01:26:49'),
(9, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-19 18:00:00', '2025-09-07 01:26:49'),
(10, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(11, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(12, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(13, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(14, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-16 18:00:00', '2025-09-07 01:26:49'),
(15, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(16, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(17, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-28 18:00:00', '2025-09-07 01:26:49'),
(18, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(19, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(20, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(21, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(22, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(23, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-26 18:00:00', '2025-09-07 01:26:49'),
(24, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(25, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(26, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(27, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(28, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-07 18:00:00', '2025-09-07 01:26:49'),
(29, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-22 18:00:00', '2025-09-07 01:26:49'),
(30, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(31, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(32, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-03 18:00:00', '2025-09-07 01:26:49'),
(33, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-06 18:00:00', '2025-09-07 01:26:49'),
(34, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(35, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-07 18:00:00', '2025-09-07 01:26:49'),
(36, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(37, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(38, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-27 18:00:00', '2025-09-07 01:26:49'),
(39, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(40, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-22 18:00:00', '2025-09-07 01:26:49'),
(41, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-28 18:00:00', '2025-09-07 01:26:49'),
(42, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(43, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-10 18:00:00', '2025-09-07 01:26:49'),
(44, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-03 18:00:00', '2025-09-07 01:26:49'),
(45, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-05 18:00:00', '2025-09-07 01:26:49'),
(46, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(47, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(48, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(49, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(50, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(51, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-05 18:00:00', '2025-09-07 01:26:49'),
(52, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-06 18:00:00', '2025-09-07 01:26:49'),
(53, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-03 18:00:00', '2025-09-07 01:26:49'),
(54, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(55, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(56, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-26 18:00:00', '2025-09-07 01:26:49'),
(57, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-10 18:00:00', '2025-09-07 01:26:49'),
(58, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-27 18:00:00', '2025-09-07 01:26:49'),
(59, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(60, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(61, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-28 18:00:00', '2025-09-07 01:26:49'),
(62, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-17 18:00:00', '2025-09-07 01:26:49'),
(63, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-23 18:00:00', '2025-09-07 01:26:49'),
(64, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(65, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(66, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-09 18:00:00', '2025-09-07 01:26:49'),
(67, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(68, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(69, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(70, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-12 18:00:00', '2025-09-07 01:26:49'),
(71, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-06 18:00:00', '2025-09-07 01:26:49'),
(72, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-23 18:00:00', '2025-09-07 01:26:49'),
(73, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-25 18:00:00', '2025-09-07 01:26:49'),
(74, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(75, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(76, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-22 18:00:00', '2025-09-07 01:26:49'),
(77, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(78, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-28 18:00:00', '2025-09-07 01:26:49');
INSERT INTO `orders` (`id`, `user_id`, `store_id`, `transaction_id`, `customer_email`, `customer_phone`, `customer_first_name`, `customer_last_name`, `billing_info`, `shipping_info`, `has_coupon`, `coupon`, `discount`, `shipping_charge`, `total`, `payment_method`, `currency`, `currency_icon`, `currency_rate`, `order_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(79, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(80, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-17 18:00:00', '2025-09-07 01:26:49'),
(81, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-01 18:00:00', '2025-09-07 01:26:49'),
(82, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(83, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(84, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-19 18:00:00', '2025-09-07 01:26:49'),
(85, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-23 18:00:00', '2025-09-07 01:26:49'),
(86, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(87, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(88, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-02 18:00:00', '2025-09-07 01:26:49'),
(89, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-15 18:00:00', '2025-09-07 01:26:49'),
(90, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(91, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(92, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(93, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-02 18:00:00', '2025-09-07 01:26:49'),
(94, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(95, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(96, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(97, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-19 18:00:00', '2025-09-07 01:26:49'),
(98, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(99, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-10 18:00:00', '2025-09-07 01:26:49'),
(100, 1, 10, '8UY59224GP500912R', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', NULL, 0, NULL, NULL, 30, 143, 'PayPal', 'USD', NULL, 1, 'delivered', 'paid', '2025-09-29 18:00:00', '2025-09-09 05:17:40'),
(101, 1, 6, '706684897K9907837', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', 0, NULL, NULL, 30, 978, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(102, 1, 7, '706684897K9907837', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', 0, NULL, NULL, 30, 978, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(103, 1, 1, '706684897K9907837', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', 0, NULL, NULL, 30, 978, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(104, 1, 10, '706684897K9907837', 'user@gmail.com', NULL, 'Test user', NULL, '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', '{\"id\": 1, \"zip\": 62967, \"city\": \"Laboriosam minima a\", \"email\": \"gafy@mailinator.com\", \"phone\": \"+1 (626) 584-2047\", \"state\": \"Ut error at soluta c\", \"address\": \"Rem dignissimos cons\", \"country\": \"Netherlands Antilles\", \"user_id\": 1, \"last_name\": \"Farley\", \"created_at\": \"2025-09-07T06:54:52.000000Z\", \"first_name\": \"Rachel\", \"is_default\": 1, \"updated_at\": \"2025-09-07T06:54:52.000000Z\"}', 0, NULL, NULL, 30, 978, 'PayPal', 'USD', NULL, 1, 'pending', 'paid', '2025-09-09 05:26:32', '2025-09-09 05:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL,
  `variant` json DEFAULT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `product_name`, `unit_price`, `variant`, `quantity`, `created_at`, `updated_at`) VALUES
(315, 1, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-15 18:00:00', '2025-09-07 01:26:49'),
(316, 2, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(317, 3, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-15 18:00:00', '2025-09-07 01:26:49'),
(318, 4, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-01 18:00:00', '2025-09-07 01:26:49'),
(319, 5, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-12 18:00:00', '2025-09-07 01:26:49'),
(320, 6, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-05 18:00:00', '2025-09-07 01:26:49'),
(321, 7, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(322, 8, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-16 18:00:00', '2025-09-07 01:26:49'),
(323, 9, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-19 18:00:00', '2025-09-07 01:26:49'),
(324, 10, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(325, 11, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(326, 12, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(327, 13, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(328, 14, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-16 18:00:00', '2025-09-07 01:26:49'),
(329, 15, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(330, 16, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(331, 17, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-28 18:00:00', '2025-09-07 01:26:49'),
(332, 18, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(333, 19, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(334, 20, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(335, 21, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(336, 22, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(337, 23, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-26 18:00:00', '2025-09-07 01:26:49'),
(338, 24, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-13 18:00:00', '2025-09-07 01:26:49'),
(339, 25, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(340, 26, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(341, 27, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(342, 28, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-07 18:00:00', '2025-09-07 01:26:49'),
(343, 29, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-22 18:00:00', '2025-09-07 01:26:49'),
(344, 30, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(345, 31, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(346, 32, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-03 18:00:00', '2025-09-07 01:26:49'),
(347, 33, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-06 18:00:00', '2025-09-07 01:26:49'),
(348, 34, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(349, 35, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-07 18:00:00', '2025-09-07 01:26:49'),
(350, 36, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(351, 37, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(352, 38, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-27 18:00:00', '2025-09-07 01:26:49'),
(353, 39, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(354, 40, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-22 18:00:00', '2025-09-07 01:26:49'),
(355, 41, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-28 18:00:00', '2025-09-07 01:26:49'),
(356, 42, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(357, 43, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-10 18:00:00', '2025-09-07 01:26:49'),
(358, 44, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-03 18:00:00', '2025-09-07 01:26:49'),
(359, 45, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-05 18:00:00', '2025-09-07 01:26:49'),
(360, 46, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(361, 47, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(362, 48, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(363, 49, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(364, 50, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(365, 51, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-05 18:00:00', '2025-09-07 01:26:49'),
(366, 52, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-06 18:00:00', '2025-09-07 01:26:49'),
(367, 53, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-03 18:00:00', '2025-09-07 01:26:49'),
(368, 54, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(369, 55, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(370, 56, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-26 18:00:00', '2025-09-07 01:26:49'),
(371, 57, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-10 18:00:00', '2025-09-07 01:26:49'),
(372, 58, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-27 18:00:00', '2025-09-07 01:26:49'),
(373, 59, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(374, 60, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(375, 61, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-28 18:00:00', '2025-09-07 01:26:49'),
(376, 62, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-17 18:00:00', '2025-09-07 01:26:49'),
(377, 63, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-23 18:00:00', '2025-09-07 01:26:49'),
(378, 64, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(379, 65, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(380, 66, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-09 18:00:00', '2025-09-07 01:26:49'),
(381, 67, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(382, 68, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(383, 69, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(384, 70, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-12 18:00:00', '2025-09-07 01:26:49'),
(385, 71, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-06 18:00:00', '2025-09-07 01:26:49'),
(386, 72, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-23 18:00:00', '2025-09-07 01:26:49'),
(387, 73, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-25 18:00:00', '2025-09-07 01:26:49'),
(388, 74, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(389, 75, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(390, 76, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-22 18:00:00', '2025-09-07 01:26:49'),
(391, 77, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(392, 78, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-28 18:00:00', '2025-09-07 01:26:49'),
(393, 79, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(394, 80, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-17 18:00:00', '2025-09-07 01:26:49'),
(395, 81, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-01 18:00:00', '2025-09-07 01:26:49'),
(396, 82, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-24 18:00:00', '2025-09-07 01:26:49'),
(397, 83, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-08 18:00:00', '2025-09-07 01:26:49'),
(398, 84, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-19 18:00:00', '2025-09-07 01:26:49'),
(399, 85, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-23 18:00:00', '2025-09-07 01:26:49'),
(400, 86, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-11 18:00:00', '2025-09-07 01:26:49'),
(401, 87, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(402, 88, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-02 18:00:00', '2025-09-07 01:26:49'),
(403, 89, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-15 18:00:00', '2025-09-07 01:26:49'),
(404, 90, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(405, 91, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-21 18:00:00', '2025-09-07 01:26:49'),
(406, 92, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-08-31 18:00:00', '2025-09-07 01:26:49'),
(407, 93, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-02 18:00:00', '2025-09-07 01:26:49'),
(408, 94, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-04 18:00:00', '2025-09-07 01:26:49'),
(409, 95, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-20 18:00:00', '2025-09-07 01:26:49'),
(410, 96, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-18 18:00:00', '2025-09-07 01:26:49'),
(411, 97, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-19 18:00:00', '2025-09-07 01:26:49'),
(412, 98, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-14 18:00:00', '2025-09-07 01:26:49'),
(413, 99, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-10 18:00:00', '2025-09-07 01:26:49'),
(414, 100, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-29 18:00:00', '2025-09-07 01:26:49'),
(415, 101, 144, 'Panasonic Lumix GH6 Mirrorless Camera with Leica DG Vario-Elmarit 12-60mm f/2.8-4 Lens – Black', 153, NULL, 1, '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(416, 102, 145, 'Olympus OM-D E-M1 Mark III Micro Four Thirds Camera with M.Zuiko Digital ED 12-40mm f/2.8 PRO Lens – Black', 382, NULL, 1, '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(417, 103, 121, 'Adidas Originals Women’s Trefoil Logo Cotton Jersey T-Shirt Short Sleeve – White/Black', 300, '{\"id\": 6, \"qty\": 0, \"sku\": \"SKU-3\", \"name\": \"Orange/XXL\", \"price\": 300, \"in_stock\": 1, \"position\": null, \"is_active\": 1, \"created_at\": \"2025-09-07T03:04:19.000000Z\", \"is_default\": null, \"product_id\": 121, \"updated_at\": \"2025-09-07T03:05:34.000000Z\", \"manage_stock\": 0, \"special_price\": null}', 1, '2025-09-09 05:26:32', '2025-09-09 05:26:32'),
(418, 104, 175, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 113, NULL, 1, '2025-09-09 05:26:32', '2025-09-09 05:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `status`, `comment`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'processing', 'Order confirmed, items are being prepared', 100, '2025-09-09 05:17:28', '2025-09-09 05:17:28'),
(2, 'packed', 'Items have been packaged and labeled', 100, '2025-09-09 05:17:32', '2025-09-09 05:17:32'),
(3, 'shipped', 'Order has been handed over to the courier', 100, '2025-09-09 05:17:35', '2025-09-09 05:17:35'),
(4, 'delivered', 'Order successfully delivered to the customer', 100, '2025-09-09 05:17:40', '2025-09-09 05:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `our_features`
--

CREATE TABLE `our_features` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'KYC Management', 'admin', 'KYC Management', '2025-06-23 21:54:55', '2025-06-23 21:54:55'),
(2, 'Role Management', 'admin', 'Access Management', '2025-06-23 22:12:51', '2025-06-23 22:12:51'),
(3, 'Role User Management', 'admin', 'Access Management', '2025-06-23 22:13:05', '2025-06-23 22:13:05'),
(5, 'Category Management', 'admin', 'Product Categoires', '2025-06-30 03:43:43', '2025-06-30 03:43:43'),
(6, 'Tags Management', 'admin', 'Product Tags', '2025-06-30 03:44:13', '2025-06-30 03:44:13'),
(7, 'Brand Management', 'admin', 'Product Brands', '2025-06-30 05:21:22', '2025-06-30 05:21:22'),
(8, 'Product Management', 'admin', 'Products', '2025-07-20 00:47:31', '2025-07-20 00:47:31'),
(9, 'Order Management', 'admin', 'Order', '2025-09-01 03:38:54', '2025-09-01 03:38:54'),
(10, 'Ecommerce Management', 'admin', 'Ecommerce', '2025-09-01 03:42:59', '2025-09-01 03:42:59'),
(11, 'Section Management', 'admin', 'Home Sections', '2025-09-01 03:48:55', '2025-09-01 03:48:55'),
(12, 'Subscriber Management', 'admin', 'Subscribers', '2025-09-01 04:48:30', '2025-09-01 04:48:30'),
(13, 'Withdraw Management', 'admin', 'Withdraw', '2025-09-01 04:50:41', '2025-09-01 04:50:41'),
(14, 'Page Management', 'admin', 'Page Builder', '2025-09-01 04:52:48', '2025-09-01 04:52:48'),
(15, 'Advertisement Management', 'admin', 'Advertisement', '2025-09-01 04:54:32', '2025-09-01 04:54:32'),
(16, 'Contact Management', 'admin', 'Contact', '2025-09-01 04:56:12', '2025-09-01 04:56:12'),
(17, 'Payment Setting', 'admin', 'Payment Setting', '2025-09-01 04:58:41', '2025-09-01 04:58:41'),
(18, 'Settings Management', 'admin', 'Site Settings', '2025-09-01 05:00:32', '2025-09-01 05:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `popular_categories`
--

CREATE TABLE `popular_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `categories` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_categories`
--

INSERT INTO `popular_categories` (`id`, `categories`, `created_at`, `updated_at`) VALUES
(1, '[\"1\", \"17\", \"18\", \"19\", \"20\"]', '2025-09-04 01:58:55', '2025-09-04 01:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `product_type` enum('physical','digital') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `special_price` double DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `in_stock` tinyint(1) DEFAULT NULL,
  `viewed` int DEFAULT NULL,
  `status` enum('active','inactive','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_status` enum('approved','pending','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `is_featured` tinyint(1) DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `store_id`, `product_type`, `brand_id`, `name`, `slug`, `price`, `description`, `short_description`, `special_price`, `special_price_start`, `special_price_end`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `status`, `approved_status`, `is_featured`, `is_hot`, `is_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(121, 1, 'physical', 1, 'Adidas Originals Women’s Trefoil Logo Cotton Jersey T-Shirt Short Sleeve – White/Black', 'adidas-originals-womens-trefoil-logo-cotton-jersey-t-shirt-short-sleeve-whiteblack', 316, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 00:58:13'),
(122, 1, 'physical', 3, 'Dokotoo Women’s Open Front Long Sleeve Chunky Knit Cardigan Sweater – Beige', 'dokotoo-womens-open-front-long-sleeve-chunky-knit-cardigan-sweater-beige', 277, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 00:58:47'),
(123, 1, 'physical', 8, 'Columbia Women’s Arcadia II Waterproof Breathable Rain Jacket with Adjustable Hood – Red Coral', 'columbia-womens-arcadia-ii-waterproof-breathable-rain-jacket-with-adjustable-hood-red-coral', 197, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 00:59:17'),
(124, 1, 'physical', 1, 'ZESICA Women’s Bohemian Spaghetti Strap Ruffle Tiered Maxi Dress – Light Green', 'zesica-womens-bohemian-spaghetti-strap-ruffle-tiered-maxi-dress-light-green', 151, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 00:59:58'),
(125, 2, 'physical', 4, 'Steve Madden Women’s Irenee Ankle Strap Low Block Heel Sandals – Nude', 'steve-madden-womens-irenee-ankle-strap-low-block-heel-sandals-nude', 375, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:12', '2025-09-04 01:00:28'),
(126, 2, 'physical', 9, 'Nike Air Zoom Pegasus 40 Running Shoes – Black/White', 'nike-air-zoom-pegasus-40-running-shoes-blackwhite', 197, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:12', '2025-09-04 01:57:01'),
(127, 2, 'physical', 2, 'Adidas Ultraboost 23 Primeknit Sneakers – Core Black/Cloud White', 'adidas-ultraboost-23-primeknit-sneakers-core-blackcloud-white', 428, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 1, NULL, '2025-09-04 00:15:12', '2025-09-04 01:03:07'),
(128, 2, 'physical', 6, 'Puma RS-X Reinvent Low Top Casual Sneakers – White/Red', 'puma-rs-x-reinvent-low-top-casual-sneakers-whitered', 322, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:03:28'),
(129, 3, 'physical', 5, 'Reebok Classic Leather Retro Running Shoes – White/Chalk', 'reebok-classic-leather-retro-running-shoes-whitechalk', 380, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:57:06'),
(130, 3, 'physical', 1, 'New Balance 574 Heritage Sneaker – Navy/Gray', 'new-balance-574-heritage-sneaker-navygray', 361, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:57:09'),
(131, 3, 'physical', 7, 'Vans Old Skool Low Top Skate Sneakers – Black/White', 'vans-old-skool-low-top-skate-sneakers-blackwhite', 329, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:38:47'),
(132, 3, 'physical', 3, 'Dr. Martens 1460 Smooth Leather Lace-Up Boots – Black', 'dr-martens-1460-smooth-leather-lace-up-boots-black', 507, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 1, NULL, '2025-09-04 00:15:12', '2025-09-04 01:39:18');
INSERT INTO `products` (`id`, `store_id`, `product_type`, `brand_id`, `name`, `slug`, `price`, `description`, `short_description`, `special_price`, `special_price_start`, `special_price_end`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `status`, `approved_status`, `is_featured`, `is_hot`, `is_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(133, 4, 'physical', 9, 'Converse Chuck Taylor All Star High Top Canvas Sneakers – White', 'converse-chuck-taylor-all-star-high-top-canvas-sneakers-white', 477, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:57:24'),
(134, 4, 'physical', 3, 'CeraVe Hydrating Facial Cleanser with Hyaluronic Acid & Ceramides – 16 oz', 'cerave-hydrating-facial-cleanser-with-hyaluronic-acid-ceramides-16-oz', 273, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 1, NULL, '2025-09-04 00:15:12', '2025-09-04 01:48:42'),
(135, 4, 'physical', 1, 'Olaplex No.3 Hair Perfector Repairing Treatment – 3.3 oz', 'olaplex-no3-hair-perfector-repairing-treatment-33-oz', 135, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:12', '2025-09-04 01:57:19'),
(136, 4, 'physical', 3, 'The Ordinary Niacinamide 10% + Zinc 1% Oil Control Serum – 30 ml', 'the-ordinary-niacinamide-10-zinc-1-oil-control-serum-30-ml', 431, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 1, NULL, '2025-09-04 00:15:12', '2025-09-04 01:57:16'),
(137, 5, 'physical', 2, 'Dove Deep Moisture Nourishing Body Wash with Pump – 34 oz', 'dove-deep-moisture-nourishing-body-wash-with-pump-34-oz', 51, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:57:12'),
(138, 5, 'physical', 3, 'Cetaphil Gentle Skin Cleanser for Face & Body – 20 oz', 'cetaphil-gentle-skin-cleanser-for-face-body-20-oz', 68, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:50:37'),
(139, 5, 'physical', 5, 'Cetaphil Gentle Skin Cleanser for Face & Body – 20 oz', 'cetaphil-gentle-skin-cleanser-for-face-body-20-oz', 564, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:51:05'),
(140, 5, 'physical', 4, 'Levi’s Women’s 721 High Rise Skinny Jeans Stretch Denim Pants – Dark Indigo Wash', 'levis-womens-721-high-rise-skinny-jeans-stretch-denim-pants-dark-indigo-wash', 191, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:56:53'),
(141, 6, 'physical', 6, 'Head & Shoulders Classic Clean Anti-Dandruff Shampoo – 23.7 oz', 'head-shoulders-classic-clean-anti-dandruff-shampoo-237-oz', 379, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:12', '2025-09-04 01:51:29'),
(142, 6, 'physical', 3, 'Nikon Z8 FX-Format Mirrorless Camera with NIKKOR Z 24-120mm f/4 S Lens – Black', 'nikon-z8-fx-format-mirrorless-camera-with-nikkor-z-24-120mm-f4-s-lens-black', 124, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 00:17:52'),
(143, 6, 'physical', 4, 'Sony Alpha 7 IV Full-Frame Mirrorless Camera with FE 28-70mm f/3.5-5.6 OSS Lens – Black', 'sony-alpha-7-iv-full-frame-mirrorless-camera-with-fe-28-70mm-f35-56-oss-lens-black', 523, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 00:18:23'),
(144, 6, 'physical', 1, 'Panasonic Lumix GH6 Mirrorless Camera with Leica DG Vario-Elmarit 12-60mm f/2.8-4 Lens – Black', 'panasonic-lumix-gh6-mirrorless-camera-with-leica-dg-vario-elmarit-12-60mm-f28-4-lens-black', 153, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 00:18:50');
INSERT INTO `products` (`id`, `store_id`, `product_type`, `brand_id`, `name`, `slug`, `price`, `description`, `short_description`, `special_price`, `special_price_start`, `special_price_end`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `status`, `approved_status`, `is_featured`, `is_hot`, `is_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(145, 7, 'physical', 5, 'Olympus OM-D E-M1 Mark III Micro Four Thirds Camera with M.Zuiko Digital ED 12-40mm f/2.8 PRO Lens – Black', 'olympus-om-d-e-m1-mark-iii-micro-four-thirds-camera-with-mzuiko-digital-ed-12-40mm-f28-pro-lens-black', 382, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 00:19:10'),
(146, 7, 'physical', 7, 'Leica Q2 Monochrom Full-Frame Compact Camera with Summilux 28mm f/1.7 ASPH Lens – Matte Black', 'leica-q2-monochrom-full-frame-compact-camera-with-summilux-28mm-f17-asph-lens-matte-black', 262, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:42'),
(147, 7, 'physical', 3, 'Olympus OM-D E-M1 Mark III Micro Four Thirds Camera with M.Zuiko Digital ED 12-40mm f/2.8 PRO Lens – Black', 'olympus-om-d-e-m1-mark-iii-micro-four-thirds-camera-with-mzuiko-digital-ed-12-40mm-f28-pro-lens-black', 64, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 00:20:12'),
(148, 7, 'physical', 6, 'Pentax K-3 Mark III DSLR Camera with HD PENTAX-DA 16-85mm f/3.5-5.6 ED DC WR Lens – Black', 'pentax-k-3-mark-iii-dslr-camera-with-hd-pentax-da-16-85mm-f35-56-ed-dc-wr-lens-black', 568, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 00:20:55'),
(149, 8, 'physical', 6, 'Sigma fp L Full-Frame Mirrorless Camera with 45mm f/2.8 DG DN Contemporary Lens – Black', 'sigma-fp-l-full-frame-mirrorless-camera-with-45mm-f28-dg-dn-contemporary-lens-black', 343, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 00:21:27'),
(150, 8, 'physical', 6, 'COOFANDY Men’s Casual Button Down Linen Shirt Long Sleeve Lightweight Beach Shirt – White', 'coofandy-mens-casual-button-down-linen-shirt-long-sleeve-lightweight-beach-shirt-white', 498, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:26'),
(151, 8, 'physical', 1, 'Levi’s Men’s 511 Slim Fit Stretch Jeans Denim Pants – Dark Indigo Wash', 'levis-mens-511-slim-fit-stretch-jeans-denim-pants-dark-indigo-wash', 375, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 00:26:54'),
(152, 8, 'physical', 4, 'Goodthreads Men’s Crewneck Cotton Cable Knit Sweater Classic Pullover – Navy Blue', 'goodthreads-mens-crewneck-cotton-cable-knit-sweater-classic-pullover-navy-blue', 130, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:35'),
(153, 9, 'physical', 4, 'Hanes Men’s Full-Zip Fleece Hoodie Soft Cotton Blend Sweatshirt – Heather Grey', 'hanes-mens-full-zip-fleece-hoodie-soft-cotton-blend-sweatshirt-heather-grey', 77, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 00:27:55'),
(154, 9, 'physical', 4, 'Dockers Men’s Classic Fit Signature Khaki Pants Stretch Trousers – Beige', 'dockers-mens-classic-fit-signature-khaki-pants-stretch-trousers-beige', 119, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 00:28:28'),
(155, 9, 'physical', 5, 'Adidas Originals Men’s Trefoil Logo Cotton Jersey T-Shirt Short Sleeve – Black/White', 'adidas-originals-mens-trefoil-logo-cotton-jersey-t-shirt-short-sleeve-blackwhite', 108, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:48');
INSERT INTO `products` (`id`, `store_id`, `product_type`, `brand_id`, `name`, `slug`, `price`, `description`, `short_description`, `special_price`, `special_price_start`, `special_price_end`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `status`, `approved_status`, `is_featured`, `is_hot`, `is_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(156, 9, 'physical', 6, 'Adidas Originals Men’s Trefoil Logo Cotton Jersey T-Shirt Short Sleeve – Black/White', 'adidas-originals-mens-trefoil-logo-cotton-jersey-t-shirt-short-sleeve-blackwhite', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 00:31:27'),
(157, 10, 'physical', 7, 'Columbia Men’s Watertight II Packable Rain Jacket Lightweight Shell – Mountain Red', 'columbia-mens-watertight-ii-packable-rain-jacket-lightweight-shell-mountain-red', 314, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-1', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 00:31:53'),
(158, 10, 'physical', 1, 'Tommy Hilfiger Men’s Modern Fit Blazer Single-Breasted Casual Suit Jacket – Charcoal Grey', 'tommy-hilfiger-mens-modern-fit-blazer-single-breasted-casual-suit-jacket-charcoal-grey', 394, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-2', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 00:33:27'),
(159, 10, 'physical', 4, 'Floerns Women’s Casual Floral Print V-Neck Short Sleeve A-Line Summer Dress – Navy Blue', 'floerns-womens-casual-floral-print-v-neck-short-sleeve-a-line-summer-dress-navy-blue', 372, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-3', 'no', NULL, 1, NULL, 'active', 'approved', 1, 1, 0, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:58'),
(160, 10, 'physical', 5, 'Canon EOS R6 Mark II Mirrorless Camera RF24-105mm f/4L IS USM Lens Kit – Black', 'canon-eos-r6-mark-ii-mirrorless-camera-rf24-105mm-f4l-is-usm-lens-kit-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:20'),
(161, 10, 'physical', 5, 'Canon EOS R6 Mark II Mirrorless Camera RF24-105mm f/4L IS USM Lens Kit – Black', 'canon-eos-r6-mark-ii-mirrorless-camera-rf24-105mm-f4l-is-usm-lens-kit-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:20'),
(162, 10, 'physical', 5, 'Canon EOS R6 Mark II Mirrorless Camera RF24-105mm f/4L IS USM Lens Kit', 'canon-eos-r6-mark-ii-mirrorless-camera-rf24-105mm-f4l-is-usm-lens-kit', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 03:48:21'),
(163, 10, 'physical', 5, 'Canon EOS R6 Mark II Mirrorless Camera RF24-105mm f/4L IS USM Lens Kit – Black', 'canon-eos-r6-mark-ii-mirrorless-camera-rf24-105mm-f4l-is-usm-lens-kit-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 01:56:20'),
(164, 10, 'physical', 5, 'Steve Madden Women’s Irenee Ankle Strap Low Block Heel Sandals – Nude', 'steve-madden-womens-irenee-ankle-strap-low-block-heel-sandals-nude', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 03:53:19'),
(165, 10, 'physical', 5, 'ZESICA Women’s Bohemian Spaghetti Strap Ruffle Tiered Maxi Dress – Light Green', 'zesica-womens-bohemian-spaghetti-strap-ruffle-tiered-maxi-dress-light-green', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 03:53:52'),
(166, 10, 'physical', 5, 'Adidas Originals Women’s Trefoil Logo Cotton Jersey T-Shirt Short Sleeve – White/Black', 'adidas-originals-womens-trefoil-logo-cotton-jersey-t-shirt-short-sleeve-whiteblack', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 03:54:27');
INSERT INTO `products` (`id`, `store_id`, `product_type`, `brand_id`, `name`, `slug`, `price`, `description`, `short_description`, `special_price`, `special_price_start`, `special_price_end`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `status`, `approved_status`, `is_featured`, `is_hot`, `is_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(167, 10, 'physical', 5, 'Calvin Klein Women’s Modern Cotton Bralette and Bikini Set – Black', 'calvin-klein-womens-modern-cotton-bralette-and-bikini-set-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:20:08'),
(168, 10, 'physical', 5, 'Levi’s Women’s Original Trucker Denim Jacket – Light Blue Wash', 'levis-womens-original-trucker-denim-jacket-light-blue-wash', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:20:35'),
(169, 10, 'physical', 5, 'Mango Women’s Double-Breasted Wool Blend Coat – Camel', 'mango-womens-double-breasted-wool-blend-coat-camel', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:20:50'),
(170, 10, 'physical', 5, 'Mango Women’s Double-Breasted Wool Blend Coat – Camel', 'mango-womens-double-breasted-wool-blend-coat-camel', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:21:42'),
(171, 10, 'physical', 5, 'GUESS Women’s Sleeveless Bodycon Midi Dress with Ruched Detail – Red', 'guess-womens-sleeveless-bodycon-midi-dress-with-ruched-detail-red', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:22:29'),
(172, 10, 'physical', 5, 'Nike Air Max 270 React Running Shoes – White/Black/Red', 'nike-air-max-270-react-running-shoes-whiteblackred', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:26:39'),
(173, 10, 'physical', 5, 'New Balance 990v5 Made in USA Running Shoes – Grey', 'new-balance-990v5-made-in-usa-running-shoes-grey', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:27:04'),
(174, 10, 'physical', 5, 'Vans Sk8-Hi Unisex Skate Shoes – Black/White', 'vans-sk8-hi-unisex-skate-shoes-blackwhite', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:28:03'),
(175, 10, 'physical', 5, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 'dr-martens-2976-chelsea-leather-boots-smooth-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'approved', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:27:36'),
(176, 10, 'physical', 5, 'Nike Air Max 270 React Running Shoes – White/Black/Red', 'dr-martens-2976-chelsea-leather-boots-smooth-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'pending', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:27:36'),
(177, 10, 'physical', 5, 'Steve Madden Women’s Irenee Ankle Strap Low Block Heel Sandals – Nude', 'dr-martens-2976-chelsea-leather-boots-smooth-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'pending', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:27:36'),
(178, 10, 'physical', 5, 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black', 'dr-martens-2976-chelsea-leather-boots-smooth-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'pending', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:27:36');
INSERT INTO `products` (`id`, `store_id`, `product_type`, `brand_id`, `name`, `slug`, `price`, `description`, `short_description`, `special_price`, `special_price_start`, `special_price_end`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `status`, `approved_status`, `is_featured`, `is_hot`, `is_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(179, 10, 'physical', 5, 'Canon EOS R6 Mark II Mirrorless Camera RF24-105mm f/4L IS USM Lens Kit – Black', 'dr-martens-2976-chelsea-leather-boots-smooth-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'pending', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:27:36'),
(180, 10, 'physical', 5, 'Adidas Originals Men’s Trefoil Logo Cotton Jersey T-Shirt Short Sleeve – Black/White', 'dr-martens-2976-chelsea-leather-boots-smooth-black', 113, '<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>\r\n<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>\r\n<p>Stunning 6.78-Inch AMOLED Display<br><br></p>\r\n<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>\r\n<p>Speed Meets Efficiency<br><br></p>\r\n<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>\r\n<p>Capture Your World with Precision<br><br></p>\r\n<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>\r\n<p>Immersive Audio Experience<br><br></p>\r\n<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>\r\n<p>All-Day Battery &amp; Fast Charging<br><br></p>\r\n<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>\r\n<p>Smart Connectivity &amp; Security<br><br></p>\r\n<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>\r\n<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>\r\n<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>\r\n<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>\r\n<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>\r\n<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>\r\n<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>\r\n<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>\r\n<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>', '<p>MPN: 82XM014FLK Model: IdeaPad Slim 3 15ABR8 Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz) Ram: 16GB DDR4, Storage: 512GB SSD Display: 15.6 FHD (1920x1080) Features: Camera privacy shutter, Mil-Std-810h Military Grade</p>', NULL, NULL, NULL, 'sku-4', 'no', NULL, 1, NULL, 'active', 'pending', 1, 0, 1, NULL, '2025-09-04 00:15:13', '2025-09-04 05:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `attribute_id` bigint UNSIGNED NOT NULL,
  `attribute_value_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `product_id`, `attribute_id`, `attribute_value_id`, `created_at`, `updated_at`) VALUES
(1, 121, 1, 1, NULL, NULL),
(2, 121, 1, 2, NULL, NULL),
(3, 121, 1, 3, NULL, NULL),
(4, 121, 2, 4, NULL, NULL),
(5, 121, 2, 5, NULL, NULL),
(6, 121, 2, 6, NULL, NULL),
(7, 180, 4, 7, NULL, NULL),
(8, 180, 4, 8, NULL, NULL),
(9, 180, 5, 9, NULL, NULL),
(10, 180, 5, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_files`
--

CREATE TABLE `product_files` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` enum('local','public','s3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `path`, `order`, `created_at`, `updated_at`) VALUES
(9, 160, 'uploads/fda693ec-c4a3-4524-b5ac-2a864736506b.jpeg', 3, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(10, 160, 'uploads/ef4452f3-837f-4eab-9893-1e0dd17d96eb.jpeg', 2, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(11, 160, 'uploads/b9890f74-d6ac-406a-bcb7-3ff03b6a4891.jpeg', 4, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(12, 160, 'uploads/c5f7a218-d2bf-41d8-b7ef-f633660d761a.jpeg', 5, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(13, 160, 'uploads/ef0d099b-6bab-4a1d-a25e-47752530199d.jpeg', 1, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(14, 160, 'uploads/b946e246-9744-4e19-8187-a58aa8370658.jpeg', 0, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(15, 160, 'uploads/53aa878f-c120-43ef-a890-00eec3b614ba.jpeg', 6, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(16, 160, 'uploads/eab6f796-a675-41ce-90bd-a48cf44b4f75.jpeg', 7, '2025-09-04 00:17:18', '2025-09-04 00:17:27'),
(17, 142, 'uploads/6912cdc4-ee48-4dd8-a919-6236f5c498c3.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(18, 142, 'uploads/04a14e23-18b7-4825-a07f-cf4493cbb05f.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(19, 142, 'uploads/831a4572-0265-4323-a4d0-6d73b6917e33.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(20, 142, 'uploads/e0ce4a84-e29f-4cee-8ede-20b53cfc1426.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(21, 142, 'uploads/48715d43-cc30-4272-b333-12796a81d9ba.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(22, 142, 'uploads/f9bccb7c-877e-4827-af90-34cd0c157a82.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(23, 142, 'uploads/a79499a9-b443-4eb6-983f-0f0ff7d63dca.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(24, 142, 'uploads/8983ac27-827a-43de-b68b-e33f41d7c255.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(25, 142, 'uploads/d9fc0330-8eaa-4959-92ef-4f72816dcd05.jpeg', 142, '2025-09-04 00:17:49', '2025-09-04 00:17:49'),
(26, 143, 'uploads/2be946f1-6e10-48dd-b209-c98e75915c91.jpeg', 143, '2025-09-04 00:18:16', '2025-09-04 00:18:16'),
(27, 143, 'uploads/998bb9ff-9ce6-4c0e-91a8-91691b674678.jpeg', 143, '2025-09-04 00:18:16', '2025-09-04 00:18:16'),
(28, 143, 'uploads/b6d00b32-7784-4f81-a0b2-db66c0c4ce27.jpeg', 143, '2025-09-04 00:18:17', '2025-09-04 00:18:17'),
(29, 143, 'uploads/bd4ef7c7-6d48-4476-b844-6bbca3388574.jpeg', 143, '2025-09-04 00:18:17', '2025-09-04 00:18:17'),
(30, 143, 'uploads/7b1a203a-d470-49d6-ab9e-1b17966be42c.jpeg', 143, '2025-09-04 00:18:17', '2025-09-04 00:18:17'),
(31, 143, 'uploads/0b52cd08-5632-4740-add1-7d3ae10d61da.jpeg', 143, '2025-09-04 00:18:17', '2025-09-04 00:18:17'),
(32, 143, 'uploads/f9c626a5-2f5c-4895-ace0-b583a4522178.jpeg', 143, '2025-09-04 00:18:17', '2025-09-04 00:18:17'),
(33, 144, 'uploads/fc69c683-0a83-432e-9a58-d0105d332892.jpeg', 2, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(34, 144, 'uploads/81f7fe59-88bd-4f53-a9bd-20e5c078407e.jpeg', 1, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(35, 144, 'uploads/1f8fc422-8a23-463f-b8d3-24ccb0caf581.jpeg', 3, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(36, 144, 'uploads/842ea071-5f06-4c25-9e3a-43852fdfe23c.jpeg', 0, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(37, 144, 'uploads/0be07ee5-7f57-43b0-acb5-a89a88cc531e.jpeg', 5, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(38, 144, 'uploads/adfb7eb3-0a39-402e-a51a-0d0a604373b5.jpeg', 4, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(39, 144, 'uploads/a9fde696-da8e-4f1e-a3a3-b0fd32be2818.jpeg', 6, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(40, 144, 'uploads/e1de649f-f49e-4abe-a998-c8e53a5369ac.jpeg', 7, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(41, 144, 'uploads/c41af02d-2f6d-44e0-a93b-c46e200e6109.jpeg', 8, '2025-09-04 00:18:42', '2025-09-04 00:18:45'),
(42, 144, 'uploads/7bdd502b-58fd-4cb0-b7ab-037c153e8af1.jpeg', 9, '2025-09-04 00:18:43', '2025-09-04 00:18:45'),
(43, 144, 'uploads/41cc99a9-10a9-404b-918c-cefc78f50794.jpeg', 10, '2025-09-04 00:18:43', '2025-09-04 00:18:45'),
(44, 145, 'uploads/2fb1e3c1-8f79-4068-8bfb-704fc88b010f.jpeg', 145, '2025-09-04 00:19:08', '2025-09-04 00:19:08'),
(45, 145, 'uploads/c7fb2a1d-76af-4e36-8901-b4524b5c1e3e.jpeg', 145, '2025-09-04 00:19:08', '2025-09-04 00:19:08'),
(46, 145, 'uploads/83f07d29-a8b2-4b3c-bf1f-11b77f28a4bd.jpeg', 145, '2025-09-04 00:19:08', '2025-09-04 00:19:08'),
(47, 145, 'uploads/f2b00839-e759-475a-a3fe-ce9e85ce67b9.jpeg', 145, '2025-09-04 00:19:08', '2025-09-04 00:19:08'),
(48, 145, 'uploads/f12401fe-e243-4f24-9d0f-f52a4ea5147a.jpeg', 145, '2025-09-04 00:19:08', '2025-09-04 00:19:08'),
(49, 145, 'uploads/e7c10fbc-4e7c-4342-932e-f725be524563.jpeg', 145, '2025-09-04 00:19:08', '2025-09-04 00:19:08'),
(50, 146, 'uploads/c1a35ffd-8a98-4d49-aa03-c67c580efd44.jpeg', 1, '2025-09-04 00:19:32', '2025-09-04 00:19:37'),
(51, 146, 'uploads/cbe49002-6986-4786-87ca-93a64c3fd175.jpeg', 0, '2025-09-04 00:19:32', '2025-09-04 00:19:37'),
(52, 146, 'uploads/a6f64f1a-bc0c-484d-8494-5fe983ea0f5d.jpeg', 2, '2025-09-04 00:19:33', '2025-09-04 00:19:37'),
(53, 146, 'uploads/500ba8fa-e07b-4093-9a1f-bad753ac53f7.jpeg', 3, '2025-09-04 00:19:33', '2025-09-04 00:19:37'),
(54, 146, 'uploads/65e7b868-f9ac-43dd-b7e6-6b43500334b9.jpeg', 4, '2025-09-04 00:19:33', '2025-09-04 00:19:37'),
(55, 146, 'uploads/ef5ada16-a788-4e15-924d-edc2a584a942.jpeg', 5, '2025-09-04 00:19:33', '2025-09-04 00:19:37'),
(56, 146, 'uploads/428b1e53-37db-4aeb-82f7-ad2d0f47e72d.jpeg', 7, '2025-09-04 00:19:33', '2025-09-04 00:19:38'),
(57, 146, 'uploads/4c474955-1af8-44d1-85e6-c39b8f06e415.jpeg', 6, '2025-09-04 00:19:33', '2025-09-04 00:19:38'),
(58, 146, 'uploads/5598a83a-1ea5-4ba1-bbc0-35225bb38cbc.jpeg', 8, '2025-09-04 00:19:33', '2025-09-04 00:19:38'),
(59, 147, 'uploads/cdd821a0-bb36-4227-b4b4-45f288ac516d.jpeg', 1, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(60, 147, 'uploads/11a08fe5-85cb-4a7b-8075-915014de7524.jpeg', 2, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(61, 147, 'uploads/5090d72e-ff7c-4c1e-92ac-b59b2030c651.jpeg', 3, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(62, 147, 'uploads/729f3832-b52f-4c04-a688-6b57db966737.jpeg', 4, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(63, 147, 'uploads/44286aa4-53f2-45f9-b31a-ee2d46b31160.jpeg', 0, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(64, 147, 'uploads/c4bdb0d9-d45b-4eec-b5b5-b0eab9a0e8ca.jpeg', 5, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(65, 147, 'uploads/6bf6e617-bcda-41c6-9e4a-8bb199a06b03.jpeg', 6, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(66, 147, 'uploads/4fef9424-1768-4c73-a3ba-7d1a589c1992.jpeg', 7, '2025-09-04 00:20:06', '2025-09-04 00:20:11'),
(67, 148, 'uploads/fbb8de3f-47f9-4a43-9094-5843e375ebc1.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(68, 148, 'uploads/f2526fcc-00bc-4db6-87ca-e2ec391927b7.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(69, 148, 'uploads/807b08f3-ac67-438e-8f1b-ae3659faf666.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(70, 148, 'uploads/fb4ea388-1db4-48f3-87dc-ffa70562350d.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(71, 148, 'uploads/5f7d2fb8-7768-4c64-a761-f62e1e76bc05.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(72, 148, 'uploads/c7770f12-5d69-4388-8670-08560edb12e9.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(73, 148, 'uploads/5f3418d6-f75f-49e0-b1c8-9a9843496896.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(74, 148, 'uploads/be70844b-7af0-4be1-a86f-64b75d08203d.jpeg', 148, '2025-09-04 00:20:53', '2025-09-04 00:20:53'),
(75, 149, 'uploads/f80ebba6-a954-4a56-b946-a13d2fd196c5.jpeg', 2, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(76, 149, 'uploads/2522567c-2322-404e-a341-c37b50a55f97.jpeg', 1, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(77, 149, 'uploads/5be8cc9a-9567-40bc-8c3c-01c9eaaf094f.jpeg', 3, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(78, 149, 'uploads/d558a89b-a500-40fe-9a5d-97ef46c2a7a4.jpeg', 4, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(79, 149, 'uploads/bdf391ca-ea16-4150-b3aa-ca436c5ffff6.jpeg', 5, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(80, 149, 'uploads/57a1a9d0-cc3b-4462-9667-774471b0c83f.jpeg', 0, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(81, 149, 'uploads/675f3843-da22-4cef-845d-c9389385b2a5.jpeg', 6, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(82, 149, 'uploads/353ecbdd-b706-40c2-9f2a-fe11f0b70842.jpeg', 7, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(83, 149, 'uploads/6c7c58e3-c16b-4058-838f-fdd185c12df6.jpeg', 8, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(84, 149, 'uploads/46f156d0-2f7c-421f-a6d8-c32b33807927.jpeg', 9, '2025-09-04 00:21:10', '2025-09-04 00:21:26'),
(85, 150, 'uploads/b477848b-58d9-4183-9e47-521426eab502.jpeg', 150, '2025-09-04 00:26:18', '2025-09-04 00:26:18'),
(86, 150, 'uploads/8fd1f4d8-62b7-4f61-858c-4288db3421bd.jpeg', 150, '2025-09-04 00:26:18', '2025-09-04 00:26:18'),
(87, 150, 'uploads/1a5bbd13-451f-41ab-84c5-1a63ce449d7d.jpeg', 150, '2025-09-04 00:26:18', '2025-09-04 00:26:18'),
(88, 150, 'uploads/949542f2-5d4d-4a23-ae9e-1d6c5a313449.jpeg', 150, '2025-09-04 00:26:18', '2025-09-04 00:26:18'),
(89, 150, 'uploads/5732e243-eb6f-44c6-a55f-c6798cc5e3d9.jpeg', 150, '2025-09-04 00:26:18', '2025-09-04 00:26:18'),
(90, 151, 'uploads/e2c3f4fd-4652-428e-bff2-112062e1391b.jpeg', 0, '2025-09-04 00:26:50', '2025-09-04 00:26:53'),
(91, 151, 'uploads/3f6036a0-a1bc-4ab9-87a0-818a5cc21d15.jpeg', 1, '2025-09-04 00:26:50', '2025-09-04 00:26:53'),
(92, 151, 'uploads/2aeaba00-a0da-4ef1-82a6-c79e7883ec48.jpeg', 3, '2025-09-04 00:26:50', '2025-09-04 00:26:53'),
(93, 151, 'uploads/b0801a33-ac17-433a-8a25-8b349bdaeb55.jpeg', 2, '2025-09-04 00:26:50', '2025-09-04 00:26:53'),
(94, 151, 'uploads/1fd6d225-f951-42da-87e6-f5470441452f.jpeg', 4, '2025-09-04 00:26:50', '2025-09-04 00:26:53'),
(95, 151, 'uploads/4e709e1c-5aa6-438f-a0a7-2d62e360df00.jpeg', 5, '2025-09-04 00:26:50', '2025-09-04 00:26:53'),
(96, 151, 'uploads/41b96af0-c497-4bab-bd6d-01a8cacec76a.jpeg', 6, '2025-09-04 00:26:50', '2025-09-04 00:26:53'),
(97, 152, 'uploads/b0f92556-aa2c-4d69-834c-49f49cbeab72.jpeg', 152, '2025-09-04 00:27:25', '2025-09-04 00:27:25'),
(98, 152, 'uploads/35216898-afb5-470b-89f4-93a46e354c3d.jpeg', 152, '2025-09-04 00:27:25', '2025-09-04 00:27:25'),
(99, 152, 'uploads/d699c81f-d199-4a9b-94cb-ce7d74042d1d.jpeg', 152, '2025-09-04 00:27:25', '2025-09-04 00:27:25'),
(100, 152, 'uploads/0f81ea46-655b-4b52-b85e-8a065c118be1.jpeg', 152, '2025-09-04 00:27:25', '2025-09-04 00:27:25'),
(101, 152, 'uploads/0b52faa0-a225-4cc7-b33d-e32563a1609c.jpeg', 152, '2025-09-04 00:27:25', '2025-09-04 00:27:25'),
(102, 152, 'uploads/94093b34-8897-4574-bb82-c1f60b7576b1.jpeg', 152, '2025-09-04 00:27:25', '2025-09-04 00:27:25'),
(103, 153, 'uploads/a9a407ad-2788-4ae2-a052-283099cf4775.jpeg', 153, '2025-09-04 00:27:53', '2025-09-04 00:27:53'),
(104, 153, 'uploads/20b3458b-12f0-450c-9e72-cac5b58ab052.jpeg', 153, '2025-09-04 00:27:53', '2025-09-04 00:27:53'),
(105, 153, 'uploads/4adb189f-eb00-4034-80e3-6c00d87db0e6.jpeg', 153, '2025-09-04 00:27:53', '2025-09-04 00:27:53'),
(106, 153, 'uploads/6ad5bd51-5889-4134-8a5f-5d94dbaaf657.jpeg', 153, '2025-09-04 00:27:53', '2025-09-04 00:27:53'),
(107, 153, 'uploads/90ec1d94-5021-4fdc-ac7b-ddb0f9a88d22.jpeg', 153, '2025-09-04 00:27:53', '2025-09-04 00:27:53'),
(108, 153, 'uploads/6e990be7-d62d-4cf4-b1c2-ff6c93ceeff5.jpeg', 153, '2025-09-04 00:27:53', '2025-09-04 00:27:53'),
(109, 153, 'uploads/b2a44613-7a28-4a17-a617-768944922fd8.jpeg', 153, '2025-09-04 00:27:53', '2025-09-04 00:27:53'),
(110, 154, 'uploads/3f96d390-a8eb-46a6-aaa4-6e3f2f3dc196.jpeg', 154, '2025-09-04 00:28:27', '2025-09-04 00:28:27'),
(111, 154, 'uploads/8025c930-c7db-4e48-87c3-7ec89e25e56a.jpeg', 154, '2025-09-04 00:28:27', '2025-09-04 00:28:27'),
(112, 154, 'uploads/4e4d1b41-c5a3-4bc9-9d68-532726bc7ee0.jpeg', 154, '2025-09-04 00:28:27', '2025-09-04 00:28:27'),
(113, 154, 'uploads/2efe878c-5a23-404b-855c-da255abe4a30.jpeg', 154, '2025-09-04 00:28:27', '2025-09-04 00:28:27'),
(114, 154, 'uploads/4777a42a-2c40-4aa6-82c7-328b59686312.jpeg', 154, '2025-09-04 00:28:27', '2025-09-04 00:28:27'),
(115, 154, 'uploads/1de08d56-caa7-4482-ab07-143b5ff36440.jpeg', 154, '2025-09-04 00:28:27', '2025-09-04 00:28:27'),
(116, 155, 'uploads/49700c3b-8cfb-4fe4-9a6a-fcaf261dbd76.jpeg', 155, '2025-09-04 00:28:53', '2025-09-04 00:28:53'),
(117, 155, 'uploads/8bf08563-b2f6-436b-a9b7-f456124c6ef4.jpeg', 155, '2025-09-04 00:28:53', '2025-09-04 00:28:53'),
(118, 155, 'uploads/dccf2058-9005-4259-9fd7-bef7b3182a44.jpeg', 155, '2025-09-04 00:28:53', '2025-09-04 00:28:53'),
(119, 155, 'uploads/f9ba1b41-a258-456d-8e1e-06084064d7a4.jpeg', 155, '2025-09-04 00:28:53', '2025-09-04 00:28:53'),
(120, 155, 'uploads/5a00915e-0e33-4554-9488-e4ad21e7d61a.jpeg', 155, '2025-09-04 00:28:53', '2025-09-04 00:28:53'),
(121, 155, 'uploads/3be643bb-0ba2-4825-b200-8ed1cd20a072.jpeg', 155, '2025-09-04 00:28:53', '2025-09-04 00:28:53'),
(122, 155, 'uploads/4578d5e9-205d-4f03-a758-449b587377c1.jpeg', 155, '2025-09-04 00:28:53', '2025-09-04 00:28:53'),
(123, 156, 'uploads/e66af4a9-4f7e-4ffb-9bcb-224b55323ea5.jpeg', 156, '2025-09-04 00:31:25', '2025-09-04 00:31:25'),
(124, 156, 'uploads/ab5944cc-c1d1-4513-a770-46462e2911c2.jpeg', 156, '2025-09-04 00:31:25', '2025-09-04 00:31:25'),
(125, 156, 'uploads/fbbea859-ed49-4128-9a76-38d6fa123a0d.jpeg', 156, '2025-09-04 00:31:25', '2025-09-04 00:31:25'),
(126, 156, 'uploads/0fa2a3c3-f360-42e4-9ccc-1f732d3b4c1c.jpeg', 156, '2025-09-04 00:31:25', '2025-09-04 00:31:25'),
(127, 156, 'uploads/ccf48fa0-1564-4ccb-a362-07ae1c121b66.jpeg', 156, '2025-09-04 00:31:25', '2025-09-04 00:31:25'),
(128, 156, 'uploads/16b6de61-4b08-49ff-94ed-eb78dae5f741.jpeg', 156, '2025-09-04 00:31:25', '2025-09-04 00:31:25'),
(129, 157, 'uploads/85fa46a2-a949-4bdb-aa36-be63f2ee28bd.jpeg', 157, '2025-09-04 00:31:52', '2025-09-04 00:31:52'),
(130, 157, 'uploads/7d049cf9-5940-4de5-af43-bd521afba95e.jpeg', 157, '2025-09-04 00:31:52', '2025-09-04 00:31:52'),
(131, 158, 'uploads/dc8e2b1e-ef2a-4aec-b85d-5886dbb7f1b6.jpeg', 158, '2025-09-04 00:33:25', '2025-09-04 00:33:25'),
(132, 158, 'uploads/2025b720-d3b2-4c38-b6d4-adc23ea8c18c.jpeg', 158, '2025-09-04 00:33:25', '2025-09-04 00:33:25'),
(133, 158, 'uploads/ea44e159-edc6-4511-af00-93303b471c54.jpeg', 158, '2025-09-04 00:33:25', '2025-09-04 00:33:25'),
(134, 158, 'uploads/e1fab904-d5bc-4721-8973-1156359b7754.jpeg', 158, '2025-09-04 00:33:25', '2025-09-04 00:33:25'),
(135, 158, 'uploads/91c77e91-0da1-44a2-8d6b-1d253bccb43f.jpeg', 158, '2025-09-04 00:33:25', '2025-09-04 00:33:25'),
(136, 159, 'uploads/d31f591f-b332-4315-9c10-f5ea9e284ea2.jpeg', 159, '2025-09-04 00:57:22', '2025-09-04 00:57:22'),
(137, 159, 'uploads/2a27ec42-9320-4189-b6cf-50e4f10d9fc2.jpeg', 159, '2025-09-04 00:57:22', '2025-09-04 00:57:22'),
(138, 159, 'uploads/1ee9c936-7e5b-40c2-a5ab-3b74a1d8089e.jpeg', 159, '2025-09-04 00:57:22', '2025-09-04 00:57:22'),
(139, 159, 'uploads/b0988f01-e14a-4b03-9ed7-54f173eadc10.jpeg', 159, '2025-09-04 00:57:22', '2025-09-04 00:57:22'),
(140, 159, 'uploads/63440c9e-d704-426d-88f1-6eea337adaa0.jpeg', 159, '2025-09-04 00:57:22', '2025-09-04 00:57:22'),
(141, 159, 'uploads/36b57d34-27de-4928-8b34-95538c612e23.jpeg', 159, '2025-09-04 00:57:22', '2025-09-04 00:57:22'),
(142, 159, 'uploads/9c692548-431b-41e2-8d4f-66fc2842cb5b.jpeg', 159, '2025-09-04 00:57:22', '2025-09-04 00:57:22'),
(143, 140, 'uploads/6f37d820-edc9-4352-9ffa-d17f893bcaa9.jpeg', 140, '2025-09-04 00:57:50', '2025-09-04 00:57:50'),
(144, 140, 'uploads/3f34ba66-4bb2-4c9f-b442-1b82d5feedd0.jpeg', 140, '2025-09-04 00:57:50', '2025-09-04 00:57:50'),
(145, 140, 'uploads/456d5286-63fd-4fe3-a18f-4d53f5580769.jpeg', 140, '2025-09-04 00:57:51', '2025-09-04 00:57:51'),
(146, 140, 'uploads/6705ccf8-d10c-499c-be36-fece2cee4701.jpeg', 140, '2025-09-04 00:57:51', '2025-09-04 00:57:51'),
(147, 121, 'uploads/c4af34a1-5e76-452b-b244-f3b12c5f2992.jpeg', 121, '2025-09-04 00:58:11', '2025-09-04 00:58:11'),
(148, 121, 'uploads/c284c4c3-d14b-4c4b-b515-e5bc337c93f6.jpeg', 121, '2025-09-04 00:58:11', '2025-09-04 00:58:11'),
(149, 121, 'uploads/d89be294-94d9-4cff-81ac-1811db3be47a.jpeg', 121, '2025-09-04 00:58:11', '2025-09-04 00:58:11'),
(150, 121, 'uploads/97876a41-866b-4266-a54a-c4b83dad1611.jpeg', 121, '2025-09-04 00:58:11', '2025-09-04 00:58:11'),
(151, 122, 'uploads/90393ee2-b7a0-4ac8-96ab-93354b4a43e5.jpeg', 1, '2025-09-04 00:58:43', '2025-09-04 00:58:47'),
(152, 122, 'uploads/343a6303-41b4-471f-bbf0-b9098384199d.jpeg', 0, '2025-09-04 00:58:43', '2025-09-04 00:58:47'),
(153, 122, 'uploads/be010ba7-d7ba-4f07-ba1d-072c4571c550.jpeg', 2, '2025-09-04 00:58:43', '2025-09-04 00:58:47'),
(154, 122, 'uploads/5303df73-97d1-47cd-a2d9-c94dde987599.jpeg', 3, '2025-09-04 00:58:43', '2025-09-04 00:58:47'),
(155, 123, 'uploads/92f33e3e-be69-4738-b2db-9aaa064ad19e.jpeg', 123, '2025-09-04 00:59:14', '2025-09-04 00:59:14'),
(156, 123, 'uploads/3016ff07-46f1-4445-9cf2-23901031968f.jpeg', 123, '2025-09-04 00:59:14', '2025-09-04 00:59:14'),
(157, 123, 'uploads/6e3eb24d-5ee9-46df-8211-8ea847f14a99.jpeg', 123, '2025-09-04 00:59:14', '2025-09-04 00:59:14'),
(158, 123, 'uploads/9d932153-12cc-458f-9543-3caed83171dc.jpeg', 123, '2025-09-04 00:59:14', '2025-09-04 00:59:14'),
(159, 123, 'uploads/cdcf90ea-bb1f-457b-9332-0d237b340669.jpeg', 123, '2025-09-04 00:59:14', '2025-09-04 00:59:14'),
(160, 123, 'uploads/b1773722-7150-45f2-acb8-429677c03490.jpeg', 123, '2025-09-04 00:59:14', '2025-09-04 00:59:14'),
(161, 124, 'uploads/f2ddd144-d9c5-46ad-9c0b-b84bc37a5219.jpeg', 1, '2025-09-04 00:59:51', '2025-09-04 00:59:56'),
(162, 124, 'uploads/81ff7dfc-f018-49d9-aebe-7d95ddb0e689.jpeg', 0, '2025-09-04 00:59:51', '2025-09-04 00:59:56'),
(163, 124, 'uploads/627c5f61-3e17-49c5-8d1a-d3e567cbddcd.jpeg', 3, '2025-09-04 00:59:51', '2025-09-04 00:59:56'),
(164, 124, 'uploads/dfcd531f-4fb8-40e7-86c5-21d144ce29ed.jpeg', 2, '2025-09-04 00:59:51', '2025-09-04 00:59:56'),
(165, 124, 'uploads/0e443cd5-3707-4e6f-93bb-1cd348edbe11.jpeg', 4, '2025-09-04 00:59:51', '2025-09-04 00:59:56'),
(166, 125, 'uploads/d885d960-2292-4f04-8c2f-612082f47d63.jpeg', 125, '2025-09-04 01:00:19', '2025-09-04 01:00:19'),
(167, 125, 'uploads/97d72da0-3b41-4b77-83d6-c26e0d68d131.jpeg', 125, '2025-09-04 01:00:19', '2025-09-04 01:00:19'),
(168, 125, 'uploads/9cf3e963-3da9-4070-8622-2772be76c8a9.jpeg', 125, '2025-09-04 01:00:19', '2025-09-04 01:00:19'),
(169, 125, 'uploads/54d35f90-0b35-424e-97c4-a21580ad0814.jpeg', 125, '2025-09-04 01:00:19', '2025-09-04 01:00:19'),
(170, 125, 'uploads/cfef7ccb-0abe-4ae3-a4c8-fef0c0da07f3.jpeg', 125, '2025-09-04 01:00:19', '2025-09-04 01:00:19'),
(171, 126, 'uploads/f972b831-91c8-4661-a378-0b61e0591961.jpeg', 126, '2025-09-04 01:02:21', '2025-09-04 01:02:21'),
(172, 126, 'uploads/62af3be5-69b2-4d15-845f-500626cc0e25.jpeg', 126, '2025-09-04 01:02:21', '2025-09-04 01:02:21'),
(173, 126, 'uploads/13f16f7f-e3b1-4ca6-8e80-f6602f1cc708.jpeg', 126, '2025-09-04 01:02:21', '2025-09-04 01:02:21'),
(174, 126, 'uploads/faa03c18-55e6-47b1-b549-e64728fc6b65.jpeg', 126, '2025-09-04 01:02:21', '2025-09-04 01:02:21'),
(175, 126, 'uploads/6fbe742f-cde2-4921-a2d5-da9e66a761b9.jpeg', 126, '2025-09-04 01:02:21', '2025-09-04 01:02:21'),
(176, 126, 'uploads/6cd93908-95c6-46c6-b474-e2aa91ca61ff.jpeg', 126, '2025-09-04 01:02:21', '2025-09-04 01:02:21'),
(177, 126, 'uploads/72bd8638-8a7d-4481-8f63-7ba3488f267e.jpeg', 126, '2025-09-04 01:02:21', '2025-09-04 01:02:21'),
(178, 127, 'uploads/cda7e90a-b674-4d67-b6dc-010a4d02ec91.jpeg', 2, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(179, 127, 'uploads/c16e39d4-73cd-40e2-8bc3-4d0470a49e77.jpeg', 1, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(180, 127, 'uploads/01c33563-d1f1-4eb2-b51d-9c0179a773d2.jpeg', 3, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(181, 127, 'uploads/00b4d408-a867-4f0e-b115-a0825fb57eaf.jpeg', 0, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(182, 127, 'uploads/8f32d243-3d5d-4682-9eaf-ba80b7142c9f.jpeg', 4, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(183, 127, 'uploads/e73f037d-cb0d-4fa3-b78d-805b65bb9c78.jpeg', 5, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(184, 127, 'uploads/b61447bc-4052-47bb-92f1-e9b11a90f57a.jpeg', 7, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(185, 127, 'uploads/b0cf43d1-b233-4150-ba27-1ff734db8bc5.jpeg', 6, '2025-09-04 01:02:57', '2025-09-04 01:03:03'),
(186, 127, 'uploads/759e47a2-9f8b-4132-a786-0f12c641ba66.jpeg', 8, '2025-09-04 01:02:58', '2025-09-04 01:03:03'),
(187, 127, 'uploads/6970ac43-4e72-47d8-a807-bb43ce197611.jpeg', 9, '2025-09-04 01:02:58', '2025-09-04 01:03:03'),
(188, 128, 'uploads/8694e831-ace0-4db8-9fe0-e4db9047aead.jpeg', 128, '2025-09-04 01:03:25', '2025-09-04 01:03:25'),
(189, 128, 'uploads/00158b66-ba60-4855-b74f-f7d04f0baa60.jpeg', 128, '2025-09-04 01:03:25', '2025-09-04 01:03:25'),
(190, 128, 'uploads/132ef316-303c-401a-9daf-10417e2fa18d.jpeg', 128, '2025-09-04 01:03:25', '2025-09-04 01:03:25'),
(191, 128, 'uploads/0493acd4-5855-4e7f-bdda-7f3cb5c67310.jpeg', 128, '2025-09-04 01:03:25', '2025-09-04 01:03:25'),
(192, 128, 'uploads/a4a93898-a756-4392-88ba-37e0d30fda9c.jpeg', 128, '2025-09-04 01:03:25', '2025-09-04 01:03:25'),
(193, 128, 'uploads/35c1d557-c7dc-4584-b266-dc74eaa42595.jpeg', 128, '2025-09-04 01:03:25', '2025-09-04 01:03:25'),
(194, 129, 'uploads/a1cd8ad1-fca8-4ba2-8a3e-e10f8d60f1d7.jpeg', 1, '2025-09-04 01:03:50', '2025-09-04 01:03:55'),
(195, 129, 'uploads/b4372084-1ac8-48b6-a3b3-e999724c8ba1.jpeg', 0, '2025-09-04 01:03:50', '2025-09-04 01:03:55'),
(196, 129, 'uploads/58c39863-01e1-4252-8051-32d0dcf1620f.jpeg', 2, '2025-09-04 01:03:50', '2025-09-04 01:03:55'),
(197, 129, 'uploads/7170cf78-78bc-45f2-801a-40c21f960a50.jpeg', 3, '2025-09-04 01:03:50', '2025-09-04 01:03:55'),
(198, 129, 'uploads/6e8a2aa1-60c7-415c-ae1b-4b7a24ec6567.jpeg', 4, '2025-09-04 01:03:50', '2025-09-04 01:03:55'),
(199, 129, 'uploads/c24d6f7a-5a96-4794-aaa5-5293afd8a27c.jpeg', 5, '2025-09-04 01:03:50', '2025-09-04 01:03:55'),
(200, 129, 'uploads/3f865c4c-203c-44db-9349-37023390cab1.jpeg', 6, '2025-09-04 01:03:50', '2025-09-04 01:03:55'),
(201, 130, 'uploads/8abf7916-e111-4101-906e-9816872ff0e4.jpeg', 1, '2025-09-04 01:04:18', '2025-09-04 01:04:23'),
(202, 130, 'uploads/5e725265-4485-4208-811a-3953d7179019.jpeg', 2, '2025-09-04 01:04:18', '2025-09-04 01:04:23'),
(203, 130, 'uploads/79409a4c-ef3e-46dc-8206-73f8a0b7d3e6.jpeg', 3, '2025-09-04 01:04:18', '2025-09-04 01:04:23'),
(204, 130, 'uploads/f7d872fa-8a60-447d-af5f-7ace90cf37ff.jpeg', 0, '2025-09-04 01:04:18', '2025-09-04 01:04:23'),
(205, 130, 'uploads/d25b7187-719d-42da-a216-aade0cd6507a.jpeg', 4, '2025-09-04 01:04:19', '2025-09-04 01:04:23'),
(206, 130, 'uploads/c453f2c8-3af3-4e19-96b7-00c6dc616d60.jpeg', 5, '2025-09-04 01:04:19', '2025-09-04 01:04:23'),
(207, 130, 'uploads/b8f82536-d2c2-417a-a074-5e5ec816be70.jpeg', 6, '2025-09-04 01:04:19', '2025-09-04 01:04:23'),
(208, 130, 'uploads/6867a135-225f-429e-8fd3-6d03341eb4ac.jpeg', 7, '2025-09-04 01:04:19', '2025-09-04 01:04:23'),
(209, 131, 'uploads/fd10c6de-7767-4bbb-82c6-104397ce366e.jpeg', 1, '2025-09-04 01:38:44', '2025-09-04 01:38:46'),
(210, 131, 'uploads/dab6da94-4ade-4d4f-8db8-2d3a5c70ea52.jpeg', 0, '2025-09-04 01:38:44', '2025-09-04 01:38:46'),
(211, 131, 'uploads/1166aa76-c775-4ee2-a20b-60c111d3a0c1.jpeg', 3, '2025-09-04 01:38:44', '2025-09-04 01:38:46'),
(212, 131, 'uploads/df179024-1dc1-405c-9bd7-690a206f6567.jpeg', 2, '2025-09-04 01:38:44', '2025-09-04 01:38:46'),
(213, 131, 'uploads/219135b5-6d1e-4a2d-8ed2-442a8f55c116.jpeg', 4, '2025-09-04 01:38:44', '2025-09-04 01:38:46'),
(214, 131, 'uploads/7fe9bf84-898a-4dd4-b2e5-a1c9c80c712c.jpeg', 5, '2025-09-04 01:38:44', '2025-09-04 01:38:46'),
(215, 131, 'uploads/2b1e46a4-2b77-4158-a3e2-b98e186f0bfd.jpeg', 6, '2025-09-04 01:38:44', '2025-09-04 01:38:46'),
(216, 132, 'uploads/9141e08a-4576-4fb9-bb3f-3dc72479a446.jpeg', 132, '2025-09-04 01:39:16', '2025-09-04 01:39:16'),
(217, 132, 'uploads/6da62b71-df46-4094-a082-f08900eea342.jpeg', 132, '2025-09-04 01:39:16', '2025-09-04 01:39:16'),
(218, 132, 'uploads/d22ad98a-e271-46cb-845e-8018d53a33a3.jpeg', 132, '2025-09-04 01:39:16', '2025-09-04 01:39:16'),
(219, 132, 'uploads/813757e2-e353-4772-850e-3bc143b7e545.jpeg', 132, '2025-09-04 01:39:16', '2025-09-04 01:39:16'),
(220, 132, 'uploads/7aee06ef-4a00-4956-9a4f-45b163b15d94.jpeg', 132, '2025-09-04 01:39:16', '2025-09-04 01:39:16'),
(221, 132, 'uploads/c020b9a4-f218-4eb5-91b3-67716f24c9fe.jpeg', 132, '2025-09-04 01:39:16', '2025-09-04 01:39:16'),
(222, 132, 'uploads/acb7b3f8-6186-4f19-a8e5-1dba3823af77.jpeg', 132, '2025-09-04 01:39:16', '2025-09-04 01:39:16'),
(223, 133, 'uploads/f5fe96a5-f707-40db-8a4f-3d961c633d7f.jpeg', 133, '2025-09-04 01:39:42', '2025-09-04 01:39:42'),
(224, 133, 'uploads/162182e2-742f-49c5-af41-a570a5987688.jpeg', 133, '2025-09-04 01:39:42', '2025-09-04 01:39:42'),
(225, 133, 'uploads/7ece159a-3f08-47f6-852d-518f136985e6.jpeg', 133, '2025-09-04 01:39:42', '2025-09-04 01:39:42'),
(226, 133, 'uploads/93a744d1-29a4-4a3b-a11e-0154bea91be9.jpeg', 133, '2025-09-04 01:39:42', '2025-09-04 01:39:42'),
(227, 133, 'uploads/6479fe18-d06b-46dd-ae28-400e1403ecf8.jpeg', 133, '2025-09-04 01:39:43', '2025-09-04 01:39:43'),
(228, 133, 'uploads/3b76a0e9-2969-4067-b0f1-a9e5d7a0a8b9.jpeg', 133, '2025-09-04 01:39:43', '2025-09-04 01:39:43'),
(229, 134, 'uploads/f48d3cf6-6539-4257-8421-68c2d237938c.jpeg', 2, '2025-09-04 01:48:36', '2025-09-04 01:48:41'),
(230, 134, 'uploads/a72a6d8f-647a-47c1-9175-336cc3828f3f.jpeg', 1, '2025-09-04 01:48:36', '2025-09-04 01:48:41'),
(231, 134, 'uploads/0b791ed1-99db-482e-96ed-470a788f7c4d.jpeg', 3, '2025-09-04 01:48:36', '2025-09-04 01:48:41'),
(232, 134, 'uploads/f52ed5c7-8103-4abf-bf00-7d6611d25b72.jpeg', 4, '2025-09-04 01:48:36', '2025-09-04 01:48:41'),
(233, 134, 'uploads/690c29c0-b42b-4cd6-a5c8-1dba020236dc.jpeg', 6, '2025-09-04 01:48:37', '2025-09-04 01:48:41'),
(234, 134, 'uploads/d5ca81ec-f721-475d-bc9c-a32a86ecade5.jpeg', 5, '2025-09-04 01:48:37', '2025-09-04 01:48:41'),
(235, 134, 'uploads/24989f41-0bc0-42e5-a4e2-0b5e77a9e835.jpeg', 7, '2025-09-04 01:48:37', '2025-09-04 01:48:41'),
(236, 134, 'uploads/86db8bee-8cfd-47e1-9085-af522b73409f.jpeg', 8, '2025-09-04 01:48:37', '2025-09-04 01:48:41'),
(237, 134, 'uploads/8d91324a-cef9-461c-933d-07ca92496b57.jpeg', 0, '2025-09-04 01:48:37', '2025-09-04 01:48:41'),
(238, 135, 'uploads/dcf88f7f-1ad2-402e-9aed-e5c0e07d64e7.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(239, 135, 'uploads/71c0d4c4-0b57-40b8-b14d-0539ca391cd3.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(240, 135, 'uploads/7bfa0880-5df7-42e2-832a-c713399d23be.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(241, 135, 'uploads/55d3a77b-2792-468f-9b13-f4807e1b3026.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(242, 135, 'uploads/bfc1aaea-fd86-47d1-a3d2-b373f415a734.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(243, 135, 'uploads/ddf43fcc-875c-4e41-8f7c-d1a24cf75fd5.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(244, 135, 'uploads/9840f36c-8dc4-4ded-b35e-b85254df44dd.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(245, 135, 'uploads/76acbdd0-f10c-4643-a498-ccece189af2e.jpeg', 135, '2025-09-04 01:49:05', '2025-09-04 01:49:05'),
(246, 136, 'uploads/2f2b0837-f038-4ffa-b1fa-60255631afc0.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(247, 136, 'uploads/2d7dedf8-dd1a-4188-822a-6695d973da30.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(248, 136, 'uploads/a2b21d39-6ec7-4d1b-b735-49eff1790edc.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(249, 136, 'uploads/7576a495-e0d1-4c5c-8d63-a03d360a56e2.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(250, 136, 'uploads/1e97be90-3219-49ca-a5bc-9ab78cc7831a.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(251, 136, 'uploads/84a575d2-4124-4033-9c32-a6c22919b757.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(252, 136, 'uploads/5ca7c61f-9a3f-4e0a-82ac-5a76693de16e.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(253, 136, 'uploads/c547df99-72b1-4319-871c-78afc8de926e.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(254, 136, 'uploads/772a10e5-1ce1-4a63-92e7-b2c69b0ffdf5.jpeg', 136, '2025-09-04 01:49:30', '2025-09-04 01:49:30'),
(255, 137, 'uploads/77e07bfe-7f58-4149-93f2-9fa8cf2cd839.jpeg', 1, '2025-09-04 01:49:58', '2025-09-04 01:50:00'),
(256, 137, 'uploads/c39c2d4e-48c7-4249-94a5-eff153949d82.jpeg', 0, '2025-09-04 01:49:58', '2025-09-04 01:49:59'),
(257, 137, 'uploads/c4e5090a-9f4c-47e8-97f1-74cf97a9313f.jpeg', 2, '2025-09-04 01:49:58', '2025-09-04 01:50:00'),
(258, 137, 'uploads/b15ae7b1-caf1-4b3c-8a9e-03ab4f262e55.jpeg', 3, '2025-09-04 01:49:58', '2025-09-04 01:50:00'),
(259, 137, 'uploads/c7bbc275-e664-4525-808f-d7401d324e99.jpeg', 5, '2025-09-04 01:49:58', '2025-09-04 01:50:00'),
(260, 137, 'uploads/e761dd8d-0826-4a90-8dc5-3a111e789690.jpeg', 4, '2025-09-04 01:49:58', '2025-09-04 01:50:00'),
(261, 138, 'uploads/df78d565-4efe-4f75-820f-a996f0b7e96e.jpeg', 138, '2025-09-04 01:50:35', '2025-09-04 01:50:35'),
(262, 138, 'uploads/fed8c939-54ac-410b-8c68-0635e242bbcf.jpeg', 138, '2025-09-04 01:50:35', '2025-09-04 01:50:35'),
(263, 138, 'uploads/c1b52c11-6077-4b7d-bfe0-65fd577ab118.jpeg', 138, '2025-09-04 01:50:35', '2025-09-04 01:50:35'),
(264, 138, 'uploads/26175c28-7427-4efe-b7a8-228bbf6f1030.jpeg', 138, '2025-09-04 01:50:36', '2025-09-04 01:50:36'),
(265, 138, 'uploads/2d2736ad-b4b9-47d4-aacf-ea74f67f7495.jpeg', 138, '2025-09-04 01:50:36', '2025-09-04 01:50:36'),
(266, 138, 'uploads/8e713a65-e8ba-414e-b7a4-e156b6ea033f.jpeg', 138, '2025-09-04 01:50:36', '2025-09-04 01:50:36'),
(267, 138, 'uploads/8a7597b5-2d2c-4c76-a499-6f0255afe062.jpeg', 138, '2025-09-04 01:50:36', '2025-09-04 01:50:36'),
(268, 139, 'uploads/4ecfbed2-989a-4488-897e-4f83802d94eb.jpeg', 1, '2025-09-04 01:51:02', '2025-09-04 01:51:04'),
(269, 139, 'uploads/4d3eeb19-8c12-40b9-a6f0-3a9f7356d4c1.jpeg', 0, '2025-09-04 01:51:02', '2025-09-04 01:51:04'),
(270, 139, 'uploads/825f2abd-3a79-4b90-9e39-a626691e6c72.jpeg', 2, '2025-09-04 01:51:02', '2025-09-04 01:51:04'),
(271, 139, 'uploads/4d162a21-c2f8-4c4e-ae7f-c3c79f3df9bb.jpeg', 3, '2025-09-04 01:51:02', '2025-09-04 01:51:04'),
(272, 139, 'uploads/475ad224-3e45-4d02-a7a7-646a697040f3.jpeg', 4, '2025-09-04 01:51:03', '2025-09-04 01:51:04'),
(273, 139, 'uploads/7c4de034-6701-4060-8c57-44769cf8a960.jpeg', 5, '2025-09-04 01:51:03', '2025-09-04 01:51:04'),
(274, 139, 'uploads/e95c1b07-84d0-4b99-abd0-4f72eefa850d.jpeg', 6, '2025-09-04 01:51:03', '2025-09-04 01:51:04'),
(275, 141, 'uploads/623cb7a6-d5d9-4a5c-b39e-44445f0c994d.jpeg', 0, '2025-09-04 01:51:25', '2025-09-04 01:51:26'),
(276, 141, 'uploads/0ca8f1f4-5439-4d2f-b6bd-db37cf7b2f57.jpeg', 1, '2025-09-04 01:51:25', '2025-09-04 01:51:26'),
(277, 141, 'uploads/91f4d0c3-9e15-4f72-9895-b318b9fa8489.jpeg', 2, '2025-09-04 01:51:25', '2025-09-04 01:51:26'),
(278, 141, 'uploads/7bc27bc1-2648-481e-95f0-c13a4e9a311a.jpeg', 3, '2025-09-04 01:51:25', '2025-09-04 01:51:26'),
(279, 141, 'uploads/4d601918-fddc-47c6-a03e-9a81a66629ac.jpeg', 5, '2025-09-04 01:51:25', '2025-09-04 01:51:26'),
(280, 141, 'uploads/86a13c9d-01c4-4084-93f7-a6fe7e0bc98f.jpeg', 4, '2025-09-04 01:51:25', '2025-09-04 01:51:26'),
(281, 161, 'uploads/b6388a31-7435-47ab-9a75-17f72849b2f1.jpeg', 161, '2025-09-04 03:47:44', '2025-09-04 03:47:44'),
(282, 161, 'uploads/ed206f5a-6176-4a0c-9273-f59bdfa2d935.jpeg', 161, '2025-09-04 03:47:44', '2025-09-04 03:47:44'),
(283, 161, 'uploads/c628261e-62e0-4d52-a3a0-36638f1f9009.jpeg', 161, '2025-09-04 03:47:44', '2025-09-04 03:47:44'),
(284, 161, 'uploads/4280986f-fe6e-4a1b-b39f-1d59a24f8754.jpeg', 161, '2025-09-04 03:47:44', '2025-09-04 03:47:44'),
(285, 161, 'uploads/cd3bb751-2940-4f9b-98c6-ca019df4494c.jpeg', 161, '2025-09-04 03:47:44', '2025-09-04 03:47:44'),
(286, 161, 'uploads/b921e208-810e-4cb3-ab0a-60184cf9f2bc.jpeg', 161, '2025-09-04 03:47:44', '2025-09-04 03:47:44'),
(287, 161, 'uploads/9b367fb4-1bf9-4c00-8cdd-add9da5eb095.jpeg', 161, '2025-09-04 03:47:44', '2025-09-04 03:47:44'),
(288, 161, 'uploads/b7e91dff-9d10-42fc-9129-d2adbdb7fb23.jpeg', 161, '2025-09-04 03:47:45', '2025-09-04 03:47:45'),
(289, 162, 'uploads/fcec6afb-0c51-48d3-b7ee-bfd76bfd1529.jpeg', 162, '2025-09-04 03:48:20', '2025-09-04 03:48:20'),
(290, 162, 'uploads/79aa444b-57ea-44a5-9eb7-143ca88a7b52.jpeg', 162, '2025-09-04 03:48:20', '2025-09-04 03:48:20'),
(291, 162, 'uploads/350d2f14-2bd5-4a51-b423-bcb6fb9bb203.jpeg', 162, '2025-09-04 03:48:20', '2025-09-04 03:48:20'),
(292, 162, 'uploads/d991027c-2e32-4fb6-aa24-b81d98b28925.jpeg', 162, '2025-09-04 03:48:20', '2025-09-04 03:48:20'),
(293, 162, 'uploads/e4e31b96-3478-4341-bfc2-dee6a71b10fb.jpeg', 162, '2025-09-04 03:48:20', '2025-09-04 03:48:20'),
(294, 162, 'uploads/c92d88f6-2d91-4f78-8941-9bf8d019405d.jpeg', 162, '2025-09-04 03:48:20', '2025-09-04 03:48:20'),
(295, 163, 'uploads/4dec5388-a995-4cf1-aecf-61ae155d289d.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(296, 163, 'uploads/69c77dce-4633-4632-a6b2-479a64d8c87a.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(297, 163, 'uploads/41ae5f01-5d0d-450d-9603-1e80afe4ed97.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(298, 163, 'uploads/2e494ab2-f8b7-4341-8282-88c7f3bec5e8.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(299, 163, 'uploads/9b4dd9cf-9604-4e61-92f1-9e76777d59b8.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(300, 163, 'uploads/0d92827e-2def-40e5-97d8-bb353ccb359e.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(301, 163, 'uploads/77b3bf31-13cb-4caf-bd8a-0272d515dad5.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(302, 163, 'uploads/8fd670ec-925a-4839-9bf6-a09621924c6d.jpeg', 163, '2025-09-04 03:48:49', '2025-09-04 03:48:49'),
(303, 164, 'uploads/a2c06329-6419-410c-9607-528ffa8ac94a.jpeg', 1, '2025-09-04 03:53:12', '2025-09-04 03:53:17'),
(304, 164, 'uploads/b22f1203-615f-4fbc-ab1b-1b4518544806.jpeg', 2, '2025-09-04 03:53:12', '2025-09-04 03:53:17'),
(305, 164, 'uploads/4ce56aaa-b863-4a7d-bdf2-aea19bdaf5ad.jpeg', 3, '2025-09-04 03:53:12', '2025-09-04 03:53:17'),
(306, 164, 'uploads/4ec222b5-f630-4443-bfe0-14ed8cd0855c.jpeg', 4, '2025-09-04 03:53:12', '2025-09-04 03:53:17'),
(307, 164, 'uploads/c2205851-4f03-4350-85ec-0e652a3147e6.jpeg', 0, '2025-09-04 03:53:12', '2025-09-04 03:53:17'),
(308, 165, 'uploads/6e846d93-809b-495b-aa79-28b81d7b7e9d.jpeg', 1, '2025-09-04 03:53:45', '2025-09-04 03:53:51'),
(309, 165, 'uploads/6e87e213-cf6c-417f-a478-d764c29a10d4.jpeg', 2, '2025-09-04 03:53:45', '2025-09-04 03:53:51'),
(310, 165, 'uploads/ac5c1a5e-fa38-4e78-b4a0-37323208f803.jpeg', 3, '2025-09-04 03:53:46', '2025-09-04 03:53:51'),
(311, 165, 'uploads/d499ba52-be7a-4441-8311-be23dba417d5.jpeg', 4, '2025-09-04 03:53:46', '2025-09-04 03:53:51'),
(312, 165, 'uploads/4e2b38d4-8b19-4bf8-a725-790186d5c488.jpeg', 0, '2025-09-04 03:53:46', '2025-09-04 03:53:51'),
(313, 166, 'uploads/c356bc11-2014-43b2-8d6e-5387528ff48b.jpeg', 1, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(314, 166, 'uploads/cdc210b0-d1bf-48ab-8849-877db00b7ed6.jpeg', 2, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(315, 166, 'uploads/fc55d963-c7d7-41ed-ae10-1d020f0ef21e.jpeg', 3, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(316, 166, 'uploads/794aa303-b1b7-42f8-becb-5284cadd1e28.jpeg', 4, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(317, 166, 'uploads/0232c440-a30b-4603-8ae8-29f8d3ffc1f6.jpeg', 5, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(318, 166, 'uploads/b051b05b-96e9-40ca-9a70-0ec4bbe817c4.jpeg', 6, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(319, 166, 'uploads/9675d142-f727-4a78-a074-b34e1d23c9d7.jpeg', 0, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(320, 166, 'uploads/6474f8a6-90a2-4040-bfaa-26404eb50c75.jpeg', 7, '2025-09-04 03:54:20', '2025-09-04 03:54:25'),
(321, 167, 'uploads/254553e1-73d4-4de1-ae25-5a2010bc3364.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(322, 167, 'uploads/fdbd031c-6c85-471a-8fb3-2b296f142fff.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(323, 167, 'uploads/348e4e0c-72d2-41db-95d6-0dd4a3e455f5.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(324, 167, 'uploads/d77005bc-f8f9-4672-b6e5-1e8eca3102e2.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(325, 167, 'uploads/1a67112f-a093-436b-b9af-4514f5db2078.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(326, 167, 'uploads/39fa5cc6-29c2-4df8-b618-7974037d0a27.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(327, 167, 'uploads/2ae02b94-b991-4f9a-9e3b-242d39c5546c.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(328, 167, 'uploads/d081897c-8e2e-4480-a2aa-95b76f39d46a.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(329, 167, 'uploads/15484082-4f28-4a5a-9ba1-3829be5fbe16.jpeg', 167, '2025-09-04 05:20:01', '2025-09-04 05:20:01'),
(330, 168, 'uploads/dd875d64-b762-4833-a090-cd1d3779d641.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(331, 168, 'uploads/f20f34b5-95dd-4d39-b0aa-26914840cb6d.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(332, 168, 'uploads/ca389c24-7243-4e61-8bfe-7138128f5f16.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(333, 168, 'uploads/d438d8a2-c13f-4405-a402-d593e779c8ed.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(334, 168, 'uploads/48f89746-8899-4501-b010-f76af8e30804.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(335, 168, 'uploads/671c0b0c-3714-4212-8a94-fd3fdad79552.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(336, 168, 'uploads/9797e764-2325-4853-af3a-0edd89625002.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(337, 168, 'uploads/e73074ac-e262-4ebc-96b6-51cc342f1495.jpeg', 168, '2025-09-04 05:20:34', '2025-09-04 05:20:34'),
(338, 169, 'uploads/8332d64d-ae74-4e56-aa5b-c0256f0b52d6.jpeg', 169, '2025-09-04 05:21:00', '2025-09-04 05:21:00'),
(339, 169, 'uploads/229f77d9-af2b-49e3-9a45-61d615b60385.jpeg', 169, '2025-09-04 05:21:00', '2025-09-04 05:21:00'),
(340, 169, 'uploads/142d8684-d59c-46eb-ac01-0729d741b12c.jpeg', 169, '2025-09-04 05:21:00', '2025-09-04 05:21:00'),
(341, 169, 'uploads/ddaa5d54-9170-4f59-913b-be173a7b9ed2.jpeg', 169, '2025-09-04 05:21:00', '2025-09-04 05:21:00'),
(342, 169, 'uploads/e5c2718c-114a-4688-a515-00b52af4a51e.jpeg', 169, '2025-09-04 05:21:00', '2025-09-04 05:21:00'),
(343, 170, 'uploads/ea46e2c2-0cca-43d6-9284-7ec16f0e7029.jpeg', 170, '2025-09-04 05:21:38', '2025-09-04 05:21:38'),
(344, 170, 'uploads/12bfefa5-2242-41aa-942c-24abfb919558.jpeg', 170, '2025-09-04 05:21:38', '2025-09-04 05:21:38'),
(345, 170, 'uploads/368c330f-97af-4c3f-a769-a659ca2cc111.jpeg', 170, '2025-09-04 05:21:38', '2025-09-04 05:21:38'),
(346, 170, 'uploads/ed1e5184-7a64-4d04-a416-fa948a2b989c.jpeg', 170, '2025-09-04 05:21:38', '2025-09-04 05:21:38'),
(347, 170, 'uploads/e4d036d5-8b80-44b3-ad92-3e0fb6129f43.jpeg', 170, '2025-09-04 05:21:38', '2025-09-04 05:21:38'),
(348, 170, 'uploads/4c5ced9a-ef8b-45f4-a2cf-96099818d5c7.jpeg', 170, '2025-09-04 05:21:38', '2025-09-04 05:21:38'),
(349, 171, 'uploads/e9fa31e8-ea65-4d16-a133-eafae23d8fb3.jpeg', 171, '2025-09-04 05:22:25', '2025-09-04 05:22:25'),
(350, 171, 'uploads/672b1296-ef60-4f68-a2fe-20dc3fb54612.jpeg', 171, '2025-09-04 05:22:25', '2025-09-04 05:22:25'),
(351, 171, 'uploads/023d72b1-b6bf-4c1a-b295-61f60b3a8941.jpeg', 171, '2025-09-04 05:22:25', '2025-09-04 05:22:25'),
(352, 171, 'uploads/b4b79d4c-82f9-4e17-9e01-c24b4d0e004e.jpeg', 171, '2025-09-04 05:22:25', '2025-09-04 05:22:25'),
(353, 171, 'uploads/dad67baa-413b-4c2f-839d-ef13d3a8615b.jpeg', 171, '2025-09-04 05:22:25', '2025-09-04 05:22:25'),
(354, 172, 'uploads/e401ec86-3c86-4047-902a-722625518585.jpeg', 0, '2025-09-04 05:26:26', '2025-09-04 05:26:29'),
(355, 172, 'uploads/5dbced66-a849-4005-98e8-bc8e6c35abc8.jpeg', 1, '2025-09-04 05:26:26', '2025-09-04 05:26:29'),
(356, 172, 'uploads/8d086ecd-0c78-4e5c-ae4a-60bc733b51ec.jpeg', 2, '2025-09-04 05:26:27', '2025-09-04 05:26:29'),
(357, 172, 'uploads/d7d13de5-48fb-466e-b579-278c3e9c4d61.jpeg', 3, '2025-09-04 05:26:27', '2025-09-04 05:26:29'),
(358, 172, 'uploads/0c03a8da-cfb8-4921-84f0-dbcd7ac4f46f.jpeg', 4, '2025-09-04 05:26:27', '2025-09-04 05:26:29'),
(359, 172, 'uploads/5ee454fe-6904-4523-b344-d2541d193e41.jpeg', 5, '2025-09-04 05:26:27', '2025-09-04 05:26:29'),
(360, 172, 'uploads/abab103e-afb9-4faf-a376-4e0e7a7993ca.jpeg', 6, '2025-09-04 05:26:27', '2025-09-04 05:26:29'),
(361, 172, 'uploads/0de221d2-70d8-4641-b32d-f9af595268bb.jpeg', 7, '2025-09-04 05:26:27', '2025-09-04 05:26:29'),
(362, 173, 'uploads/8da761a3-0d10-441e-8565-75ff541ccaf6.jpeg', 173, '2025-09-04 05:27:01', '2025-09-04 05:27:01'),
(363, 173, 'uploads/d9bdfdfd-d700-4c3c-8b47-6ccba4fb5d64.jpeg', 173, '2025-09-04 05:27:01', '2025-09-04 05:27:01'),
(364, 173, 'uploads/09541d67-3a84-4aa4-8d80-48b5d3b05871.jpeg', 173, '2025-09-04 05:27:01', '2025-09-04 05:27:01'),
(365, 173, 'uploads/fd4167ca-f6f5-492d-b2a8-e39c719142c6.jpeg', 173, '2025-09-04 05:27:01', '2025-09-04 05:27:01'),
(366, 173, 'uploads/6d3e63f4-69f9-4e8c-a67b-3131183df8ab.jpeg', 173, '2025-09-04 05:27:01', '2025-09-04 05:27:01'),
(367, 173, 'uploads/25d30c5b-a7fa-4599-8d0c-380af79fd14e.jpeg', 173, '2025-09-04 05:27:01', '2025-09-04 05:27:01'),
(368, 173, 'uploads/017be24e-de72-4de4-891c-10e1651c1538.jpeg', 173, '2025-09-04 05:27:01', '2025-09-04 05:27:01'),
(369, 175, 'uploads/6b4d9f08-fa47-42c8-979b-39a4431c6d1b.jpeg', 175, '2025-09-04 05:27:32', '2025-09-04 05:27:32'),
(370, 175, 'uploads/0c29866b-ea99-4706-a37d-0450a305adfe.jpeg', 175, '2025-09-04 05:27:32', '2025-09-04 05:27:32'),
(371, 175, 'uploads/15a9c27f-b615-41e8-80de-a02d226da695.jpeg', 175, '2025-09-04 05:27:32', '2025-09-04 05:27:32'),
(372, 175, 'uploads/9de67cd4-f054-499d-9415-f86d36fe8841.jpeg', 175, '2025-09-04 05:27:32', '2025-09-04 05:27:32'),
(373, 175, 'uploads/e808161a-3774-4901-b8b0-c14d0858e888.jpeg', 175, '2025-09-04 05:27:32', '2025-09-04 05:27:32'),
(374, 175, 'uploads/9c8cd44f-6050-4a60-ab46-b73d245124b1.jpeg', 175, '2025-09-04 05:27:32', '2025-09-04 05:27:32'),
(375, 175, 'uploads/e02a2fa1-fcb7-47ab-b500-4354cc0c164d.jpeg', 175, '2025-09-04 05:27:32', '2025-09-04 05:27:32'),
(376, 174, 'uploads/a6b33b19-ab3c-45ee-a687-3c49b93ab3ca.jpeg', 174, '2025-09-04 05:28:02', '2025-09-04 05:28:02'),
(377, 174, 'uploads/cb6e90bd-6040-4ef9-8605-f78ac6c8e59e.jpeg', 174, '2025-09-04 05:28:02', '2025-09-04 05:28:02'),
(378, 174, 'uploads/07356928-25d0-4b43-a7af-020534deeaba.jpeg', 174, '2025-09-04 05:28:02', '2025-09-04 05:28:02'),
(379, 174, 'uploads/188023dd-58fe-4fdb-af6a-b04be41c7c0b.jpeg', 174, '2025-09-04 05:28:02', '2025-09-04 05:28:02'),
(380, 174, 'uploads/d149d1d9-6b57-4d7d-874e-be4eb20bf1ce.jpeg', 174, '2025-09-04 05:28:02', '2025-09-04 05:28:02'),
(381, 174, 'uploads/34ac1989-82a4-4ca4-97fd-bfe1775dbef1.jpeg', 174, '2025-09-04 05:28:02', '2025-09-04 05:28:02'),
(382, 174, 'uploads/978ae86b-295f-49f0-9d28-a362f61aae2d.jpeg', 174, '2025-09-04 05:28:02', '2025-09-04 05:28:02'),
(389, 179, 'uploads/b34f5211-83ab-4fcf-8a76-032485eb98a0.jpeg', 1, '2025-09-08 05:00:13', '2025-09-08 05:00:18'),
(390, 179, 'uploads/3e9f4a2c-42b6-4312-a794-08f101990be7.jpeg', 2, '2025-09-08 05:00:13', '2025-09-08 05:00:18'),
(391, 179, 'uploads/5202673e-4719-488b-8082-da9f4a473973.jpeg', 3, '2025-09-08 05:00:13', '2025-09-08 05:00:18'),
(392, 179, 'uploads/48b48eae-b358-4f98-8d29-128baf482357.jpeg', 4, '2025-09-08 05:00:13', '2025-09-08 05:00:18'),
(393, 179, 'uploads/dd51bb22-affb-49c6-9213-dbf2c8c01a27.jpeg', 5, '2025-09-08 05:00:13', '2025-09-08 05:00:19'),
(394, 179, 'uploads/8955625c-4597-4a3c-b8e9-8fd110ea2c8c.jpeg', 7, '2025-09-08 05:00:13', '2025-09-08 05:00:19'),
(395, 179, 'uploads/1bdb93e4-7fd1-4f94-b453-a2ed0359f0f9.jpeg', 6, '2025-09-08 05:00:13', '2025-09-08 05:00:19'),
(396, 179, 'uploads/af291910-5f7f-4014-a8ae-3de3b46d5351.jpeg', 8, '2025-09-08 05:00:14', '2025-09-08 05:00:19'),
(397, 179, 'uploads/bb75d686-f124-454a-8d9a-ec9d78442074.jpeg', 0, '2025-09-08 05:00:14', '2025-09-08 05:00:18'),
(398, 179, 'uploads/5a356301-745e-46ce-97f4-99816d0fdb86.jpeg', 9, '2025-09-08 05:00:14', '2025-09-08 05:00:19'),
(399, 178, 'uploads/3add84a6-92ef-4cb0-b6c6-166852c0f613.jpeg', 0, '2025-09-08 05:00:51', '2025-09-08 05:00:54'),
(400, 178, 'uploads/816c3c4b-370f-4f0d-a7cd-f343564eae89.jpeg', 2, '2025-09-08 05:00:51', '2025-09-08 05:00:54'),
(401, 178, 'uploads/a93cbc68-4cba-4a32-9cdc-51d2210908eb.jpeg', 3, '2025-09-08 05:00:51', '2025-09-08 05:00:54'),
(402, 178, 'uploads/e07d8197-8e33-4bb1-a8a0-3dce67f59a39.jpeg', 1, '2025-09-08 05:00:51', '2025-09-08 05:00:54'),
(403, 178, 'uploads/caa8903e-c731-4afa-a4ab-67d2ccd8e2e8.jpeg', 5, '2025-09-08 05:00:51', '2025-09-08 05:00:54'),
(404, 178, 'uploads/2930a6e7-37d1-4769-878c-40f7043f32ad.jpeg', 4, '2025-09-08 05:00:51', '2025-09-08 05:00:54'),
(405, 177, 'uploads/56fb7313-a023-446d-8d53-6578e47f1148.jpeg', 0, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(406, 177, 'uploads/5ff265b1-94cb-43ab-96dd-896fe3b59ee0.jpeg', 1, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(407, 177, 'uploads/0911a02f-f9f2-4fdb-982a-dce5f9d25124.jpeg', 2, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(408, 177, 'uploads/9d77d77b-2dea-4bc6-bb49-d46351f21acb.jpeg', 3, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(409, 177, 'uploads/46f3e45a-97e1-4916-9f94-b1c87c508b7f.jpeg', 4, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(410, 177, 'uploads/17dbaa0d-c379-42a7-8071-772fe149bb91.jpeg', 5, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(411, 177, 'uploads/d00c5eb4-492f-4efe-84dc-8aa54500d0c9.jpeg', 6, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(412, 177, 'uploads/fbbbe13f-e323-4a6b-8eca-c9e0d6451bc3.jpeg', 7, '2025-09-08 05:01:14', '2025-09-08 05:01:17'),
(413, 176, 'uploads/d02ebe9c-aa66-4948-8be6-4023720f4d91.jpeg', 176, '2025-09-08 05:01:57', '2025-09-08 05:01:57'),
(414, 176, 'uploads/117eb1ca-2f6c-4b23-a60f-e9d5a150668a.jpeg', 176, '2025-09-08 05:01:57', '2025-09-08 05:01:57'),
(415, 176, 'uploads/79129f72-25b5-4501-94fb-65e74b521692.jpeg', 176, '2025-09-08 05:01:57', '2025-09-08 05:01:57'),
(416, 176, 'uploads/1cb46322-8f1d-4daa-93df-2cc61fe66418.jpeg', 176, '2025-09-08 05:01:57', '2025-09-08 05:01:57'),
(417, 176, 'uploads/66e83f36-7132-4e10-a3b2-e6894941e49e.jpeg', 176, '2025-09-08 05:01:57', '2025-09-08 05:01:57'),
(418, 176, 'uploads/702690f0-3547-4941-9652-7a46591d0100.jpeg', 176, '2025-09-08 05:01:57', '2025-09-08 05:01:57'),
(419, 176, 'uploads/7fce9983-daf3-4de1-8aa3-2eaec5fd01ab.jpeg', 176, '2025-09-08 05:01:57', '2025-09-08 05:01:57'),
(420, 180, 'uploads/c64b4c8c-b1f6-455c-8cc2-d91f97ffd73d.jpeg', 0, '2025-09-08 23:48:26', '2025-09-09 05:40:15'),
(421, 180, 'uploads/6a11f424-dec8-4b92-a241-8313913a9bb1.jpeg', 2, '2025-09-08 23:48:26', '2025-09-09 05:40:15'),
(422, 180, 'uploads/209ebb52-aca5-45a4-94c8-689e59db6301.jpeg', 1, '2025-09-08 23:48:26', '2025-09-09 05:40:15'),
(423, 180, 'uploads/c5e87545-5777-41c9-83f2-9ca26614b1d2.jpeg', 3, '2025-09-08 23:48:26', '2025-09-09 05:40:15'),
(424, 180, 'uploads/8e80c114-6585-4a4a-aec0-c01d682a0913.jpeg', 4, '2025-09-08 23:48:27', '2025-09-09 05:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(1, 127, 1, 5, 'good product', NULL, NULL),
(2, 179, 1, 5, 'good product', NULL, NULL),
(3, 133, 1, 5, 'good product', NULL, NULL),
(4, 132, 1, 5, 'good product', NULL, NULL),
(5, 159, 1, 5, 'good product', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sections`
--

CREATE TABLE `product_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `category_one` bigint UNSIGNED DEFAULT NULL,
  `category_two` bigint UNSIGNED DEFAULT NULL,
  `category_three` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sections`
--

INSERT INTO `product_sections` (`id`, `category_one`, `category_two`, `category_three`, `created_at`, `updated_at`) VALUES
(1, 18, 17, 19, '2025-09-04 03:32:34', '2025-09-04 03:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(121, 121, 1, NULL, NULL),
(122, 122, 4, NULL, NULL),
(123, 123, 3, NULL, NULL),
(124, 124, 4, NULL, NULL),
(125, 125, 2, NULL, NULL),
(126, 126, 4, NULL, NULL),
(127, 127, 3, NULL, NULL),
(128, 128, 5, NULL, NULL),
(129, 129, 2, NULL, NULL),
(130, 130, 1, NULL, NULL),
(131, 131, 3, NULL, NULL),
(132, 132, 1, NULL, NULL),
(133, 133, 1, NULL, NULL),
(134, 134, 1, NULL, NULL),
(135, 135, 5, NULL, NULL),
(136, 136, 4, NULL, NULL),
(137, 137, 4, NULL, NULL),
(138, 138, 5, NULL, NULL),
(139, 139, 1, NULL, NULL),
(140, 140, 5, NULL, NULL),
(141, 141, 3, NULL, NULL),
(142, 142, 4, NULL, NULL),
(143, 143, 4, NULL, NULL),
(144, 144, 3, NULL, NULL),
(145, 145, 3, NULL, NULL),
(146, 146, 2, NULL, NULL),
(147, 147, 5, NULL, NULL),
(148, 148, 5, NULL, NULL),
(149, 149, 5, NULL, NULL),
(150, 150, 2, NULL, NULL),
(151, 151, 1, NULL, NULL),
(152, 152, 1, NULL, NULL),
(153, 153, 4, NULL, NULL),
(154, 154, 5, NULL, NULL),
(155, 155, 4, NULL, NULL),
(156, 156, 5, NULL, NULL),
(157, 157, 3, NULL, NULL),
(158, 158, 3, NULL, NULL),
(159, 159, 4, NULL, NULL),
(160, 160, 5, NULL, NULL),
(161, 161, 2, NULL, NULL),
(162, 162, 4, NULL, NULL),
(163, 163, 5, NULL, NULL),
(164, 164, 4, NULL, NULL),
(165, 165, 2, NULL, NULL),
(166, 166, 4, NULL, NULL),
(167, 167, 5, NULL, NULL),
(168, 168, 3, NULL, NULL),
(169, 169, 3, NULL, NULL),
(170, 170, 4, NULL, NULL),
(171, 171, 4, NULL, NULL),
(172, 172, 4, NULL, NULL),
(173, 173, 3, NULL, NULL),
(174, 175, 5, NULL, NULL),
(175, 174, 2, NULL, NULL),
(176, 180, 3, NULL, NULL),
(177, 179, 4, NULL, NULL),
(178, 178, 4, NULL, NULL),
(179, 177, 3, NULL, NULL),
(180, 176, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `special_price` double DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `in_stock` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `price`, `special_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `is_default`, `is_active`, `position`, `created_at`, `updated_at`) VALUES
(4, 121, 'Orange/M', 300, NULL, 'SKU-1', 0, 0, 1, 1, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:04:59'),
(5, 121, 'Orange/XL', 300, NULL, 'SKU-2', 0, 0, 1, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:05:23'),
(6, 121, 'Orange/XXL', 300, NULL, 'SKU-3', 0, 0, 1, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:05:34'),
(7, 121, 'Green/M', 350, NULL, 'SKU-4', 0, 0, 1, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:05:51'),
(8, 121, 'Green/XL', 350, NULL, 'SKU-5', 0, 0, 1, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:06:03'),
(9, 121, 'Green/XXL', 350, NULL, 'SKU-6', 0, 0, 1, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:06:15'),
(10, 121, 'Red/M', 400, NULL, 'SKU-6', 0, 0, 1, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:06:25'),
(11, 121, 'Red/XL', 400, NULL, 'SKU-7', 0, 0, 0, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:06:33'),
(12, 121, 'Red/XXL', 400, NULL, 'SKU-8', 0, 0, 1, NULL, 1, NULL, '2025-09-06 21:04:19', '2025-09-06 21:06:44'),
(15, 180, 'Black/M', 0, NULL, '', NULL, 0, NULL, NULL, 1, NULL, '2025-09-09 05:43:21', '2025-09-09 05:43:21'),
(16, 180, 'Black/Xl', 0, NULL, '', NULL, 0, NULL, NULL, 1, NULL, '2025-09-09 05:43:21', '2025-09-09 05:43:21'),
(17, 180, 'Red/M', 0, NULL, '', NULL, 0, NULL, NULL, 1, NULL, '2025-09-09 05:43:21', '2025-09-09 05:43:21'),
(18, 180, 'Red/Xl', 0, NULL, '', NULL, 0, NULL, NULL, 1, NULL, '2025-09-09 05:43:21', '2025-09-09 05:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_attribute_value`
--

CREATE TABLE `product_variant_attribute_value` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `attribute_id` bigint UNSIGNED NOT NULL,
  `attribute_value_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_attribute_value`
--

INSERT INTO `product_variant_attribute_value` (`id`, `product_variant_id`, `attribute_id`, `attribute_value_id`, `created_at`, `updated_at`) VALUES
(4, 4, 1, 1, NULL, NULL),
(5, 4, 2, 4, NULL, NULL),
(6, 5, 1, 1, NULL, NULL),
(7, 5, 2, 5, NULL, NULL),
(8, 6, 1, 1, NULL, NULL),
(9, 6, 2, 6, NULL, NULL),
(10, 7, 1, 2, NULL, NULL),
(11, 7, 2, 4, NULL, NULL),
(12, 8, 1, 2, NULL, NULL),
(13, 8, 2, 5, NULL, NULL),
(14, 9, 1, 2, NULL, NULL),
(15, 9, 2, 6, NULL, NULL),
(16, 10, 1, 3, NULL, NULL),
(17, 10, 2, 4, NULL, NULL),
(18, 11, 1, 3, NULL, NULL),
(19, 11, 2, 5, NULL, NULL),
(20, 12, 1, 3, NULL, NULL),
(21, 12, 2, 6, NULL, NULL),
(24, 15, 4, 7, NULL, NULL),
(25, 15, 5, 9, NULL, NULL),
(26, 16, 4, 7, NULL, NULL),
(27, 16, 5, 10, NULL, NULL),
(28, 17, 4, 8, NULL, NULL),
(29, 17, 5, 9, NULL, NULL),
(30, 18, 4, 8, NULL, NULL),
(31, 18, 5, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2025-09-02 23:38:45', '2025-09-02 23:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FgAFJKhac37IgExtXPFouxbyAmD5Icnkpm3nA9fq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRmROdzcwYmVQc0JCbXFKVnIyakIycmFnZmlPRUtqNW0yMUNWelJHcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757429627),
('hE8UpFjCjvNsPIbDrqM5jStMEiOrsMSi99MYKfF5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZlZzc2JISFZSRGV5VVFEYmNmaTljSHZyQ1hPaUZJTmtxMlIzZlN2WCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNDoiaHR0cHM6Ly9zaG9weC50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757417062),
('iFN7MFjB9SnhO7cT4yb4283r8sZzZYqpRw52hCjp', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUHlXMWxadFNRbVExWFFackE5TGFMSnE4SEVWWDA4OEJibEp2OTZ3TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9zaG9weC50ZXN0L3ZlbmRvci9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1757420715),
('M8k16DLt0SBJlIeBeTeyEQHTFvrcX8Pn06nAqclB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzBxM0hwMnhLaVZQQkdlN1hnVHJUajZoOVhIdk5xeElCNjdtTlVEaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cHM6Ly9zaG9weC50ZXN0L3BheW1lbnQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cHM6Ly9zaG9weC50ZXN0L3BheW1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1757417062),
('Nua9Cv24OzknMrymtrwpe2NIf70jwNGwOuvWbkGf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNnhjSkhSUWI4MHk4U0JMRWlna1lGSkprbG85RmhkRlg2Uzlhcm1qeiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxODoiaHR0cHM6Ly9zaG9weC50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757483126),
('XFsdmgUzISy8keETw796H8xbwuoZEp1HghwjRIOZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTmM1NXdQekllU0hWYUVpVko1bkFZMGVXeGZBWllLR012SFM5S3o2ZSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxODoiaHR0cHM6Ly9zaG9weC50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757429629);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'ShopX', '2025-08-06 00:44:32', '2025-08-06 00:44:32'),
(2, 'site_email', 'shopx@gmail.com', '2025-08-06 00:44:32', '2025-08-06 00:44:32'),
(3, 'site_phone', '000000000', '2025-08-06 00:44:32', '2025-08-06 00:44:32'),
(4, 'site_currency', 'USD', '2025-08-06 00:44:32', '2025-08-06 00:44:32'),
(5, 'site_currency_icon', '$', '2025-08-06 00:44:32', '2025-08-06 00:44:32'),
(6, 'paypal_status', 'active', '2025-08-06 04:00:41', '2025-08-06 22:51:07'),
(7, 'paypal_mode', 'sandbox', '2025-08-06 04:00:41', '2025-08-06 04:00:41'),
(8, 'paypal_currency', 'USD', '2025-08-06 04:00:41', '2025-08-06 22:52:46'),
(9, 'paypal_rate', '1', '2025-08-06 04:00:41', '2025-08-06 22:51:14'),
(10, 'paypal_client_id', 'ARw4_uzFSzVuCeTiayoejYcCIbaU0mN0U6v_wt0B2kF1iyXNmwgp2EMO0s-IWsUhaORyrRz92vKOyLv9', '2025-08-06 04:00:41', '2025-08-06 05:07:27'),
(11, 'paypal_secret', 'ECHNB7A_Udnbgg8MeXuy5JF8JoOWcScKPHhucryjqudiHuY5NznHCdwT9FdzFIvjrvIno-ju3Hx54PWT', '2025-08-06 04:00:41', '2025-08-06 05:07:27'),
(12, 'stripe_status', 'active', '2025-08-10 01:48:26', '2025-08-10 01:48:26'),
(13, 'stripe_mode', 'sandbox', '2025-08-10 01:48:26', '2025-08-10 01:48:26'),
(14, 'stripe_currency', 'USD', '2025-08-10 01:48:26', '2025-08-10 01:48:26'),
(15, 'stripe_rate', '1', '2025-08-10 01:48:26', '2025-08-10 01:48:26'),
(16, 'stripe_client_id', 'pk_test_51MwNFdKW5d0gpOwDt4kj2AWwubKMI8bzSHHjNenilgX91YyHB3O3tB3yD5do2dAl8qpUCFWM6wuMqQeg12ZMnQv600sfwl8Hoq', '2025-08-10 01:48:26', '2025-08-10 03:45:57'),
(17, 'stripe_secret', 'sk_test_51MwNFdKW5d0gpOwDnak9F1qPBvErrGAOHAMdWQ4wHaaWhRDhOtFRw80i8XgiOnDW0ChbYt2yhKdZbR3llR9IkStD00IEVi0Q9z', '2025-08-10 01:48:26', '2025-08-10 03:45:57'),
(18, 'razorpay_status', 'active', '2025-08-10 21:58:59', '2025-08-10 21:58:59'),
(19, 'razorpay_currency', 'INR', '2025-08-10 21:58:59', '2025-08-10 21:58:59'),
(20, 'razorpay_rate', '87.52', '2025-08-10 21:58:59', '2025-08-10 22:49:24'),
(21, 'razorpay_client_id', 'rzp_test_cvrsy43xvBZfDT', '2025-08-10 21:58:59', '2025-08-10 22:43:04'),
(22, 'razorpay_secret', 'c9AmI4C5vOfSWmZehhlns5df', '2025-08-10 21:58:59', '2025-08-10 22:43:04'),
(23, 'admin_commission', '15', '2025-08-11 03:45:44', '2025-08-11 03:45:44'),
(24, 'site_short_description', 'Awesome eCommerce store website template', '2025-08-27 00:22:09', '2025-08-27 00:23:29'),
(25, 'site_address', '233 North Michigan Avenue, Suite 1800, Chicago, IL 60601', '2025-08-27 00:22:09', '2025-08-27 00:23:29'),
(26, 'site_copyright', '2025, ShopX - HTML Ecommerce Template', '2025-08-27 00:22:09', '2025-08-27 00:23:29'),
(27, 'site_hours', '10:00 - 18:00, Mon - Sat', '2025-08-27 00:22:09', '2025-08-27 00:23:29'),
(28, 'site_logo', 'uploads/550826c3-15f7-4a57-bc2e-0340371e99ca.svg', '2025-08-27 01:30:25', '2025-09-03 01:17:19'),
(29, 'site_favicon', 'uploads/c046179f-3a4a-4d5a-b341-2c99f4ac7ebd.png', '2025-08-27 01:30:25', '2025-09-03 01:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('minimum_order_amount','flat_amount') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `charge` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `name`, `type`, `minimum_amount`, `charge`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Standard Delivery', 'flat_amount', NULL, 30, 1, '2025-09-07 00:56:11', '2025-09-07 00:56:11'),
(2, 'Express Delivery', 'flat_amount', NULL, 80, 1, '2025-09-07 00:56:28', '2025-09-07 00:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `sub_title`, `btn_url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'uploads/c906862d-a272-44a5-9e6d-34b93686a7be.jpg', 'Smartwatch with Heart Rate Monitor', 'Stay on top of your health with this sleek smartwatch featuring a built-in heart.', '#', 1, '2025-09-03 01:30:19', '2025-09-03 01:31:45'),
(2, 'uploads/4dbfebdd-a72a-41a2-8b9b-cf727884b7f1.jpg', 'Smartwatch with Heart Rate Monitor', 'Track your fitness and monitor your heart rate anytime with this stylish smartwatch', '#', 1, '2025-09-03 01:31:03', '2025-09-03 01:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/defaults/shop.png',
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/defaults/banner.png',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `seller_id`, `logo`, `banner`, `name`, `phone`, `email`, `address`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 4, '/uploads/v-logo-1.jpg', '/uploads/v-banner-1.jpg', 'Pretty Garden', '9900770000', 'alice.johnson@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(2, 5, '/uploads/v-logo-2.jpg', '/uploads/v-banner-2.jpg', 'Mova', '9900770000', 'bob.smith@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(3, 6, '/uploads/v-logo-3.jpg', '/uploads/v-banner-3.jpg', 'Samsung', '9900770000', 'carol.williams@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(4, 7, '/uploads/v-logo-4.jpg', '/uploads/v-banner-4.jpg', 'Trendy Queen', '9900770000', 'david.brown@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(5, 8, '/uploads/v-logo-5.jpg', '/uploads/v-banner-5.jpg', 'Levoit', '9900770000', 'emma.davis@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(6, 9, '/uploads/v-logo-6.jpg', '/uploads/v-banner-6.jpg', 'Pemiby', '9900770000', 'frank.miller@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(7, 10, '/uploads/v-logo-7.jpg', '/uploads/v-banner-7.jpg', 'Cardo', '9900770000', 'grace.wilson@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(8, 11, '/uploads/v-logo-8.jpg', '/uploads/v-banner-8.jpg', 'Gucci', '9900770000', 'henry.moore@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(9, 12, '/uploads/v-logo-9.jpg', '/uploads/v-banner-9.jpg', 'Chanel', '9900770000', 'isabella.taylor@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(10, 13, '/uploads/v-logo-10.jpg', '/uploads/v-banner-10.jpg', 'Louis Vuitton', '9900770000', 'jack.anderson@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\n\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\n\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\n\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(11, 2, '/uploads/v-logo-1.jpg', '/uploads/v-banner-1.jpg', 'Pretty Garden', '9900770000', 'alice.johnson@example.com', '123 Main St, Anytown, USA', 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921', 'Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London\'s Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.\r\n\r\nThe brand\'s identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double \'G\' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci\'s storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.\r\n\r\nGucci\'s product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand\'s runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.\r\n\r\nToday, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn\'t just follow trends—it creates them.', '2025-09-03 04:09:43', '2025-09-03 04:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `store_wallets`
--

CREATE TABLE `store_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_wallets`
--

INSERT INTO `store_wallets` (`id`, `store_id`, `balance`, `created_at`, `updated_at`) VALUES
(1, 6, 986.85, '2025-09-07 00:57:18', '2025-09-09 05:26:32'),
(2, 10, 2010.25, '2025-09-07 00:59:43', '2025-09-09 05:26:32'),
(3, 7, 1224, '2025-09-07 01:07:25', '2025-09-09 05:26:32'),
(4, 1, 1246.1, '2025-09-07 01:19:35', '2025-09-09 05:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `store_withdrawal_requests`
--

CREATE TABLE `store_withdrawal_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `status` enum('pending','paid','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_withdraw_methods`
--

CREATE TABLE `store_withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `withdraw_method_id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_withdraw_methods`
--

INSERT INTO `store_withdraw_methods` (`id`, `withdraw_method_id`, `store_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 11, '<div>\r\n<div class=\"alert alert-info method-1\">\r\n<div class=\"gateway-details\">\r\n<p>Please provide your<br>Account Email<br>Account Name<br>Routing</p>\r\n</div>\r\n</div>\r\n</div>', '2025-09-09 06:09:57', '2025-09-09 06:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Limited Edition', 'limited-edition', 1, '2025-09-03 21:48:32', '2025-09-03 21:48:32'),
(2, 'Premium Quality', 'premium-quality', 1, '2025-09-03 21:48:44', '2025-09-03 21:48:44'),
(3, 'On Sale', 'on-sale', 1, '2025-09-03 21:48:52', '2025-09-03 21:48:52'),
(4, 'Stylish', 'stylish', 1, '2025-09-03 21:49:00', '2025-09-03 21:49:00'),
(5, 'Top Rated', 'top-rated', 1, '2025-09-03 21:49:09', '2025-09-03 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '/defaults/avatar.png',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('user','vendor') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '/defaults/avatar.png', 'Test user', 'user@gmail.com', NULL, '$2y$12$lj.EBwbjFG4LRYJHyrClpuNCnFkSent724iMMDGnqiqebcDzDUmZW', 'user', NULL, '2025-09-02 23:38:45', '2025-09-02 23:38:45'),
(2, '/defaults/avatar.png', 'Vendor User', 'vendor@gmail.com', NULL, '$2y$12$Ky1B6UauAriQXU7s7UNZOOD1l.KILS.DiGAvTMLme7guj90e06Nvu', 'vendor', NULL, '2025-09-02 23:38:45', '2025-09-02 23:38:45'),
(3, '/defaults/avatar.png', 'Jhon Deo', 'jhondeo@gmail.com', NULL, '$2y$12$btq8EakMGw9yWpoqxGBo7uPKvvSljkgKmja1COHwCTNBtk1IRBvJ.', 'user', NULL, '2025-09-03 01:49:06', '2025-09-03 01:49:06'),
(4, '/defaults/avatar.png', 'Alice Johnson', 'alice.johnson@example.com', '2025-09-03 04:09:41', '$2y$12$YvgauNiBDwCm2whXeAmFsuIm/j1xAC4tOyn3KDAAN7v0UFeKdPZsK', 'vendor', NULL, '2025-09-03 04:09:42', '2025-09-03 04:09:42'),
(5, '/defaults/avatar.png', 'Bob Smith', 'bob.smith@example.com', '2025-09-03 04:09:41', '$2y$12$isSM..4xwnoX.okjM5tEf.MEyqQ6dVLTbTQ.U5nIJIt76CABP26gK', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(6, '/defaults/avatar.png', 'Carol Williams', 'carol.williams@example.com', '2025-09-03 04:09:41', '$2y$12$ZsjrQmM0lW8rkmzEpnReQeikLPkWxL2dWQXb6P9GZ3IhoEkomZNAm', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(7, '/defaults/avatar.png', 'David Brown', 'david.brown@example.com', '2025-09-03 04:09:41', '$2y$12$wpY.ERxABgsYcC7kChv81eRlKOCgElNQ6xxyshDvU9CHhqgQqwTIG', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(8, '/defaults/avatar.png', 'Emma Davis', 'emma.davis@example.com', '2025-09-03 04:09:42', '$2y$12$OaGNvAr6QQml9QtYDvgHn.xMY/760PUX7gH1BNirCm3FarWOIW/pS', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(9, '/defaults/avatar.png', 'Frank Miller', 'frank.miller@example.com', '2025-09-03 04:09:42', '$2y$12$YxnL4mOj.57m1GaEbM6.h.GVWC7l4lBCzzE1wk603pEh.j6eRsPH2', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(10, '/defaults/avatar.png', 'Grace Wilson', 'grace.wilson@example.com', '2025-09-03 04:09:42', '$2y$12$FCzHnShmmQYgcNE8fs39zOBmDbApOE55/L8D1NrCKna.nTQEq9ixC', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(11, '/defaults/avatar.png', 'Henry Moore', 'henry.moore@example.com', '2025-09-03 04:09:42', '$2y$12$E1ijeL0aHAbf7ZYAEpBcd.0FthXJjSXMsA1S2Gqk8vYKJOCU7vr.6', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(12, '/defaults/avatar.png', 'Isabella Taylor', 'isabella.taylor@example.com', '2025-09-03 04:09:42', '$2y$12$prKbjVxPElAVnjLEQkuGpus4uUTJ.TjnTIwX4VIcpES4YBq.kOh6W', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43'),
(13, '/defaults/avatar.png', 'Jack Anderson', 'jack.anderson@example.com', '2025-09-03 04:09:42', '$2y$12$E0V2N6nUdFhAEpCRXOYh.Olz2eyl6DEhzKXaHwHa9K4d.790rSUfW', 'vendor', NULL, '2025-09-03 04:09:43', '2025-09-03 04:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 145, '2025-09-07 03:31:35', '2025-09-07 03:31:35'),
(2, 1, 146, '2025-09-07 03:31:36', '2025-09-07 03:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_amount` double NOT NULL,
  `maximum_amount` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `instruction`, `minimum_amount`, `maximum_amount`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', '<p>Please provide your<br>Account Email<br>Account Name<br>Routing</p>', 10, 1000, 1, '2025-09-09 06:04:54', '2025-09-09 06:04:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_commissions`
--
ALTER TABLE `admin_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_commissions_order_id_foreign` (`order_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `banner_ads`
--
ALTER TABLE `banner_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_section_settings`
--
ALTER TABLE `contact_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_pages_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_banners`
--
ALTER TABLE `hero_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kycs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `offer_sliders`
--
ALTER TABLE `offer_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_store_id_foreign` (`store_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_histories_order_id_foreign` (`order_id`);

--
-- Indexes for table `our_features`
--
ALTER TABLE `our_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `popular_categories`
--
ALTER TABLE `popular_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_files`
--
ALTER TABLE `product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_files_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_sections`
--
ALTER TABLE `product_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant_attribute_value`
--
ALTER TABLE `product_variant_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `store_wallets`
--
ALTER TABLE `store_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_wallets_store_id_foreign` (`store_id`);

--
-- Indexes for table `store_withdrawal_requests`
--
ALTER TABLE `store_withdrawal_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_withdrawal_requests_store_id_foreign` (`store_id`);

--
-- Indexes for table `store_withdraw_methods`
--
ALTER TABLE `store_withdraw_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_withdraw_methods_withdraw_method_id_foreign` (`withdraw_method_id`),
  ADD KEY `store_withdraw_methods_store_id_foreign` (`store_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_commissions`
--
ALTER TABLE `admin_commissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banner_ads`
--
ALTER TABLE `banner_ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_section_settings`
--
ALTER TABLE `contact_section_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hero_banners`
--
ALTER TABLE `hero_banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_sliders`
--
ALTER TABLE `offer_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `our_features`
--
ALTER TABLE `our_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `popular_categories`
--
ALTER TABLE `popular_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_files`
--
ALTER TABLE `product_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_sections`
--
ALTER TABLE `product_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_variant_attribute_value`
--
ALTER TABLE `product_variant_attribute_value`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `store_wallets`
--
ALTER TABLE `store_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_withdrawal_requests`
--
ALTER TABLE `store_withdrawal_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_withdraw_methods`
--
ALTER TABLE `store_withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `admin_commissions`
--
ALTER TABLE `admin_commissions`
  ADD CONSTRAINT `admin_commissions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kycs`
--
ALTER TABLE `kycs`
  ADD CONSTRAINT `kycs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD CONSTRAINT `order_status_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_files`
--
ALTER TABLE `product_files`
  ADD CONSTRAINT `product_files_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `store_wallets`
--
ALTER TABLE `store_wallets`
  ADD CONSTRAINT `store_wallets_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_withdrawal_requests`
--
ALTER TABLE `store_withdrawal_requests`
  ADD CONSTRAINT `store_withdrawal_requests_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_withdraw_methods`
--
ALTER TABLE `store_withdraw_methods`
  ADD CONSTRAINT `store_withdraw_methods_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_withdraw_methods_withdraw_method_id_foreign` FOREIGN KEY (`withdraw_method_id`) REFERENCES `withdraw_methods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
