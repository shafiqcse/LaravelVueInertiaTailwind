-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2024 at 06:05 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelvue`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('m2gF2R0SmZR7NN70sIunwDmbSO7PBUeBjfnYS9Sj', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVE4Q25jeTlpcFhYQlRHcDBOUEY2ZTVDRTNiMmJtTm9XMWNTbThWMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXJ2aWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTY7fQ==', 1730959482),
('SiVEKwKz3NGcu71daed07xPDOJDtnwv5bfENOh73', NULL, '127.0.0.1', 'PostmanRuntime/7.40.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEIxRnMyTVA2UHJBUXlTaW9kc3c1ME1DQ3lBYzByWThpUkFUYjhWViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730956718);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Jhon Doe', 'jhon@doe', NULL, '$2y$12$Hb0bj.uWpIi9KDSGMDIz0utk8list1sY84BhaKvB2G8JCOG77WTEy', NULL, '2024-11-06 03:04:47', '2024-11-06 03:04:47'),
(3, 'hero', 'hero@me', NULL, '$2y$12$/Q98CiSH6HNt.EL8h4TtIO//1Pxevz8jnWpFJRfPLb.YFnh6jxqMC', NULL, '2024-11-06 03:05:31', '2024-11-06 03:05:31'),
(4, 'razia', 'razia@me', NULL, '$2y$12$S4NZFsA31Gj5G9ILDZdEDO8.qUDaeVSi.B3M2DU0LFpVaebjlFsiC', NULL, '2024-11-06 03:06:42', '2024-11-06 03:06:42'),
(5, 'sam', 'sam@me', NULL, '$2y$12$xlobz8VTWZOdhxBUONcv3uOShD3fdSeFACTyg42zc23.18vonYn0S', NULL, '2024-11-06 03:08:55', '2024-11-06 03:08:55'),
(6, 'samuel', 'samuel@me', NULL, '$2y$12$V2pjzIwjskcmtGeW18Rs8.Aa101RF0twW6p/OrZFzFCn4zo83foUK', NULL, '2024-11-06 03:09:31', '2024-11-06 03:09:31'),
(8, 'samuel2', 'samuel2@me', NULL, '$2y$12$V2pjzIwjskcmtGeW18Rs8.Aa101RF0twW6p/OrZFzFCn4zo83foUK', NULL, '2024-11-06 03:09:31', '2024-11-06 03:09:31'),
(9, 'samuel3', 'samuel3@me', NULL, '$2y$12$V2pjzIwjskcmtGeW18Rs8.Aa101RF0twW6p/OrZFzFCn4zo83foUK', NULL, '2024-11-06 03:09:31', '2024-11-06 03:09:31'),
(10, 'samuel4', 'samuel4@me', NULL, '$2y$12$V2pjzIwjskcmtGeW18Rs8.Aa101RF0twW6p/OrZFzFCn4zo83foUK', NULL, '2024-11-06 03:09:31', '2024-11-06 03:09:31'),
(11, 'samuel5', 'samuel5@me', NULL, '$2y$12$V2pjzIwjskcmtGeW18Rs8.Aa101RF0twW6p/OrZFzFCn4zo83foUK', NULL, '2024-11-06 03:09:31', '2024-11-06 03:09:31'),
(12, 'Md Shafiqul Islam', 'shafiq.cse@hotmail.com', NULL, '$2y$12$TLxOkkDWVaqbJRSLR7w1eeVg6qol6n0g3Q6.WTShsnobxgwkGh7EG', NULL, '2024-11-06 21:36:30', '2024-11-06 21:36:30'),
(13, 'Md Shafiqul Islam', 'shafiq@hotmail.com', NULL, '$2y$12$xENNiOi9jHYZV4jI6v7Lye9/y73ISOOBtJUuE9/FMyBw3bGXRxYuq', NULL, '2024-11-06 21:48:31', '2024-11-06 21:48:31'),
(14, 'Billal', 'billal@com', NULL, '$2y$12$X2P.AOoyPoArTZcR42D7SOnzaDR54ej8HC8Inrn9ka122Tmxij4CO', NULL, '2024-11-06 21:48:58', '2024-11-06 21:48:58'),
(15, 'wpd imgify', 'wpdimgify@gmail.com', NULL, '$2y$12$l9qqUL8cXpB9G8VlpudatO0SW0E1CHaylVceEUziwdOFxMCCZ5Be2', NULL, '2024-11-06 23:13:02', '2024-11-06 23:13:02'),
(16, 'hasin', 'me@hasin.me', NULL, '$2y$12$Cq7/Ox6h8yAGrPqEAXTuneZw9gWdFHTQZFyFOZBvrUa.BVt.TnG/W', NULL, '2024-11-06 23:15:24', '2024-11-06 23:15:24');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
