-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 04:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `back_end_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `code`, `slug`, `category_name`, `created_at`, `updated_at`) VALUES
(1, '02074d6d-4c34-4269-8819-b81862544190', 'K-2023-01-22', 'minyak', 'Minyak', '2023-01-22 09:10:19', '2023-01-22 10:10:26'),
(2, '02a0dddf-f86d-4112-80b1-e7df194ba670', 'K-2023-01-22', 'sabun', 'Sabun', '2023-01-22 09:10:38', '2023-01-22 09:10:38'),
(3, '855bac5e-4532-4963-bded-f0896f2e12b6', 'K-2023-01-22', 'beras', 'Beras', '2023-01-22 09:11:14', '2023-01-22 09:11:14'),
(4, 'cd6fb77d-d622-428c-b3cf-63c10226aef6', 'K-2023-01-22', 'snack', 'Snack', '2023-01-22 09:11:32', '2023-01-22 09:11:32'),
(5, 'af559ac9-b296-42f9-bd1e-58d4a2921035', 'K-2023-01-22', 'shampoo', 'Shampoo', '2023-01-22 09:12:41', '2023-01-22 09:12:41'),
(7, '228f76fd-f10a-4dfd-96d7-6e8034d5f913', 'K-2023-01-22', 'minuman', 'Minuman', '2023-01-22 11:55:02', '2023-01-22 11:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_22_151409_create_categories_table', 1),
(6, '2023_01_22_151428_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uuid`, `code`, `category_id`, `product_name`, `price`, `stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'aad5a5cb-0fc6-49a3-9392-6796103be915', 'P-2023-01-22', 1, 'SANIA Minyak Goreng [1 L/ Kemasan Pouch]', 20500, 120, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-01-22 10:28:35', '2023-01-22 10:28:35'),
(2, '0bb3b443-9048-42c6-82ec-0c2943775589', 'P-2023-02-06', 1, 'SANIA Minyak Goreng [2 L/ Kemasan Pouch]', 32500, 120, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 11:39:40', '2023-02-04 11:39:40'),
(3, '68a0cebc-df27-4ac0-92c7-c71043fc192e', 'P-2023-02-07', 0, 'SANIA Minyak Goreng [4 L/ Kemasan Pouch]', 56000, 56, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 12:36:53', '2023-02-04 12:36:53'),
(4, '269ee060-3dd0-4f0e-bac0-cf979cf3707b', 'P-2023-02-08', 0, 'SANIA Minyak Goreng10L', 120000, 20, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 15:09:00', '2023-02-04 15:09:00'),
(5, 'ee44484d-faeb-418e-b01d-bf127289b6a6', 'P-2023-02-09', 0, 'SANIA Minyak Goreng 20 L', 200000, 20, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 15:11:27', '2023-02-04 15:11:27'),
(7, 'da51ec59-b981-43f3-ae27-f9af8110091b', 'P-2023-02-011', 0, 'SANIA Minyak Goreng 30 L', 220000, 20, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 15:18:47', '2023-02-04 15:18:47'),
(8, '04a104a5-5942-4d13-8ad5-e926ece60756', 'P-2023-02-012', 0, 'SANIA Minyak Goreng 60 L', 320000, 20, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 15:20:58', '2023-02-04 15:20:58'),
(9, 'c5df2b3d-bcfe-4096-a995-6d7fffa0d51a', 'P-2023-02-04', 0, 'SANIA Minyak Goreng 70 L', 350000, 10, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 15:25:38', '2023-02-04 15:25:38'),
(10, '23554756-9922-4ad7-89fe-f7067991a098', 'P-2023-02-05', 0, 'SANIA Minyak Goreng 80 L', 400000, 10, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-04 20:38:07', '2023-02-04 20:38:07'),
(12, '7cf505bc-23c7-4e36-b93f-db566cf809c0', 'P-2023-02-05-08-44', 0, 'SANIA Minyak Goreng 100 L', 320000, 20, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-05 01:44:46', '2023-02-05 01:44:46'),
(13, '11d87d7c-e91f-453e-83fc-57aa7c2be020', 'P-2023-02-05-08-46-58', 0, 'SANIA Minyak Goreng 120 L', 420000, 20, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-05 01:46:58', '2023-02-05 01:46:58'),
(14, '2592e91b-b74b-4d55-9939-cc48a75f8975', 'P-2023-02-07-08-01-05', 0, 'Minyak Goreng', 20000, 20, 'minyak goreng berkualitas', '2023-02-07 01:01:05', '2023-02-07 01:01:05'),
(15, 'b9e3eebe-2d2c-421b-962d-27e0345e284a', 'P-2023-02-07-04-01-44', 1, 'SANIA Minyak Goreng [10 L/ Kemasan Pouch]', 350000, 120, 'Dihasilkan dari kelapa sawit pilihan dan diproses dengan teknologi yang mutakhir dengan pemilihan bahan baku dan rafinasi yang dilakukan dengan teliti, diproses dalam dua kali penyaringan agar tercipta minyak goreng dengan lemak tak jenuh yang tinggi', '2023-02-07 09:01:44', '2023-02-07 09:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
