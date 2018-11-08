-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2018 at 02:44 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_npmadminlte`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1dc1dfdaba855ba0067ed7cd9630ed76140badb88fb570d491ce52eb1f8b4364e62c44fa7ea0be91', 1, 1, 'tes', '[]', 1, '2018-10-28 21:19:49', '2018-10-28 21:19:49', '2019-10-29 03:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'bMx0OM8M73ZAGPMZPyLoU0ZwaWbIwIC3t3q9Wxil', 'http://localhost', 1, 0, 0, '2018-10-28 20:49:32', '2018-10-28 20:49:32'),
(2, NULL, 'Laravel Password Grant Client', 'GIWBPb7nvPhkRlaH7sAra71hRVYkSsHVqJq4IoJr', 'http://localhost', 0, 1, 0, '2018-10-28 20:49:32', '2018-10-28 20:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-10-28 20:49:32', '2018-10-28 20:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jivan Gautam', 'lifetoss@gmail.com', '$2y$10$sSxzGYOlNoO5DYE7LFdZVuJ6xKwkl0oOYcdDv/EJ.1oJLf4qMM2Q2', 'user', NULL, 'profile.png', '2XzxCqaDQed1gBLowvGC3z6uwZqaNxj6vXUcZL1h2CDw4g1iwafKUiUkXPAy', '2018-10-27 06:57:39', '2018-10-27 06:57:39'),
(3, 'Jivan Gutam', 'lifeto@gmail.com', '$2y$10$eKF42EOuJuDBt8aaauCrbuyUsf74uDNhLaiS2WyzTeDkF578pHakm', 'user', 'sal lsadf kl', NULL, NULL, '2018-10-27 22:47:05', '2018-10-27 22:47:05'),
(4, 'Jivan Gautam', 'jivangautam@gmail.com', '$2y$10$NjnKs22NLkOb4AYA.rb9aO2xrefuLs24ThCyxSutIYDkf3LpzJ2cq', 'user', 'ldjsal fasdl', NULL, NULL, '2018-10-28 00:34:58', '2018-10-28 00:34:58'),
(5, 'testing', 'testing@li.com', '$2y$10$dlZ6QIZRcOT./lpHTwd7j.zYEnfyXaQOGnJtD2apztOjOPKY/dIM6', 'author', 'this is testing progress bar', NULL, NULL, '2018-10-28 02:04:07', '2018-10-28 02:04:07'),
(6, 'sweet alert', 'sweet@alert.com', '$2y$10$3xJHXQlH9wYEmO4xSH3Uo.HaQPyLmO6ELDOUkEMfvTEuz03y2Q8C.', 'user', 'this is sweet alert', NULL, NULL, '2018-10-28 02:21:32', '2018-10-28 02:21:32'),
(7, 'hide', 'hide@li.co', '$2y$10$72jOBEJ8Po1OZE/N9RURC..JH7uKpFc0EjHX6u7oJt/zPCxuzO2iy', 'author', 'this is hide testing', NULL, NULL, '2018-10-28 02:30:12', '2018-10-28 02:30:12'),
(8, 'this issa', 'safdathis@lisa.com', 'fuckoyo', 'user', 'this is this sadfjsal', NULL, NULL, '2018-10-28 03:13:10', '2018-10-28 07:17:15'),
(9, 'prakash gautam', 'prakashgautam@gmail.com', '$2y$10$LAfBltzHF2fZV3NTVN3v9e2Z2CHslVbTGhhPNNrxMZkGcnG3mATzy', 'admin', 'this is prakash', NULL, NULL, '2018-10-28 23:38:51', '2018-10-28 23:38:51'),
(10, 'life', 'safthis@lisa.com', '$2y$10$NyknpfPr72njhc4fj4QLUeCUtHBY9E7OmoQy1jNJuptuT3X0/Exym', 'admin', 'jsdljfla', NULL, NULL, '2018-10-28 23:39:23', '2018-10-28 23:39:23'),
(11, 'jsdlj', 'lsjdaf@lsa.com', '$2y$10$c4rBRmcqOwu8cPNqq/e0OeXCt1ipQYuICKBypUcCBSNQZ73y3oK1a', 'user', 'sdlaja alja', NULL, NULL, '2018-10-28 23:39:56', '2018-10-28 23:39:56'),
(12, 'jesdjl', 'lsdjal@lsjl.sl', '$2y$10$8ebu8O.hInU3QPYbNKAtseB6Ujnc3MFGb3Fpru.J0pCSizbyfF8H6', 'admin', 'jslaj alj lsa', NULL, NULL, '2018-10-28 23:40:56', '2018-10-28 23:40:56'),
(13, 'sldajl', 'sjal@lsaj.cl', '$2y$10$gONJL7XA0E82I1CHeB1F9OdDIg7tRuuNp8D4iiQbqjL0BzpJIuqj2', 'admin', 'saljfljsa la', NULL, NULL, '2018-10-28 23:41:31', '2018-10-28 23:41:31'),
(16, 'samjhana', 'samjhan@gmail.com', '$2y$10$PHjc31S96M1v8dlN6LkNI.oSUuRhBStCwStRCmhXomFs1rElaNd4K', 'admin', 'this is samjhana', NULL, NULL, '2018-10-28 23:58:45', '2018-10-28 23:58:45'),
(17, 'kali', 'kali@gmail.com', '$2y$10$Su5ayiM30CgKTyaD7w0HeOZhWpJ53x9kQ.2PxubkgwW788CV1OWYa', 'user', 'kali k xa', NULL, NULL, '2018-10-28 23:59:18', '2018-10-28 23:59:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
