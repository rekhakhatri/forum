-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 04:53 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(2, 'Vuejs', 'vuejs', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(3, 'Wordpress', 'wordpress', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(4, 'Nodejs', 'nodejs', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(5, 'Codeigniter', 'codeigniter', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(6, 'Symphony', 'symphony', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(7, 'Express', 'express', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(8, 'Jquery', 'jquery', '2019-04-20 08:51:26', '2019-04-20 08:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `user_id`, `channel_id`, `slug`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'implementing-oauth2-with-laravel-passport', 'Implementing OAUTH2 with Laravel passport', 'Loreum ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(2, 2, 1, 'pagination-in-vuejs-not-working-properly', 'Pagination in vuejs not working properly', 'Vue JS pagination loreum ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(3, 2, 1, 'vuejs-event-listener-for-child-components', 'Vuejs event listener for child components', 'Event listener loreum ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(4, 2, 5, 'laravel-homestead-error-undetected-database', 'Laravel homestead error - undetected database', 'Laravel homestead lorem ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(5, 3, 3, 'installing-plugins-into-wordpress', 'Installing plugins into Wordpress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae pulvinar lacus. Aenean dictum condimentum erat, non elementum tortor condimentum nec. Praesent enim nulla, sagittis sit amet arcu ut, interdum vehicula eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque vel sapien nec orci lobortis blandit vel vel erat. Morbi volutpat dolor sit amet iaculis ullamcorper.', '2019-04-20 08:55:33', '2019-04-20 08:55:33'),
(6, 3, 2, 'how-to-use-vuejs-with-laravel', 'How to use VueJS with laravel ???', 'Vivamus lacinia et tellus non fermentum. Nullam semper neque vitae ante convallis, vitae dignissim nulla commodo. In nec libero quis nisl bibendum elementum eu sed mauris.', '2019-04-20 08:57:09', '2019-04-20 08:57:09'),
(7, 3, 4, 'why-the-nodejs-framework-of-js-is-so-popular', 'Why the nodeJS framework of JS is so popular ?', 'Praesent vehicula, nibh vitae convallis accumsan, nulla nulla egestas neque, non imperdiet sem metus sit amet mi. Nunc et neque ac risus porta dignissim a at massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut dignissim ut erat vel maximus.', '2019-04-20 08:58:40', '2019-04-20 08:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reply_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(65, '2014_10_12_000000_create_users_table', 1),
(66, '2014_10_12_100000_create_password_resets_table', 1),
(67, '2019_03_13_045852_create_oauth_identities_table', 1),
(68, '2019_03_13_072405_insert_avatar_column', 1),
(69, '2019_03_13_080019_create_channels_table', 1),
(70, '2019_03_13_080214_create_discussions_table', 1),
(71, '2019_03_13_080305_create_replies_table', 1),
(72, '2019_03_17_090825_create_likes_table', 1),
(73, '2019_03_23_133520_create_watchers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_identities`
--

CREATE TABLE `oauth_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_identities`
--

INSERT INTO `oauth_identities` (`id`, `user_id`, `provider_user_id`, `provider`, `access_token`, `created_at`, `updated_at`) VALUES
(1, 3, '48084389', 'github', '6f3028a3de5585c120f9fef4f6d236f0a6ea0024', '2019-04-20 08:51:39', '2019-04-20 08:51:39');

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
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `best_answer` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `discussion_id`, `best_answer`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 'Lorem ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor', '2019-04-20 08:51:26', '2019-04-20 08:51:26'),
(2, 1, 2, 0, 'Lorem ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor', '2019-04-20 08:51:27', '2019-04-20 08:51:27'),
(3, 2, 3, 0, 'Lorem ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor', '2019-04-20 08:51:27', '2019-04-20 08:51:27'),
(4, 4, 4, 0, 'Lorem ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor ipsum sit amet dolor adiposor', '2019-04-20 08:51:27', '2019-04-20 08:51:27'),
(5, 3, 1, 0, 'Nullam a suscipit lectus. Vivamus porta, lacus eget condimentum imperdiet, leo ante blandit nibh, ac pulvinar quam metus id ante. Fusce posuere lectus in malesuada ullamcorper. Maecenas dapibus pretium facilisis. Morbi ac ipsum mi. Ut et dignissim magna, eu venenatis quam.', '2019-04-20 08:54:13', '2019-04-20 08:54:13'),
(6, 3, 5, 1, 'Vivamus lacinia et tellus non fermentum. Nullam semper neque vitae ante convallis, vitae dignissim nulla commodo. In nec libero quis nisl bibendum elementum eu sed mauris.', '2019-04-20 08:55:56', '2019-04-20 08:56:09'),
(7, 3, 6, 0, 'Praesent vehicula, nibh vitae convallis accumsan, nulla nulla egestas neque, non imperdiet sem metus sit amet mi. Nunc et neque ac risus porta dignissim a at massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut dignissim ut erat vel maximus.', '2019-04-20 08:57:26', '2019-04-20 08:57:26'),
(8, 3, 7, 0, 'Praesent vel placerat eros. In condimentum viverra ipsum, eu tristique felis bibendum nec. Fusce dapibus arcu vitae felis hendrerit, vitae ultrices lectus tincidunt.', '2019-04-20 08:58:55', '2019-04-20 08:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `points` bigint(20) NOT NULL DEFAULT '50',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `admin`, `points`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'admin', 1, 50, 'admin@forum.in', '$2y$10$OgoRMKgGzCMrh9OpBPkd4Om76qhGoVFpAlLuQ.Ps5twInYARer.iq', NULL, '2019-04-20 08:51:25', '2019-04-20 08:51:25', 'http://forum.in/avatars/E4.jpg'),
(2, 'Kiara Kapoor', 0, 50, 'kiara45@gmail.com', '$2y$10$548mI5rIKHH0KYj9vWhlZO3.a3.Ifn4ZXZWJPQWrUKOLLtOQCv996', NULL, '2019-04-20 08:51:26', '2019-04-20 08:51:26', 'http://forum.in/avatars/E4.jpg'),
(3, 'Rekha Khatri', 0, 250, 'rekhaaa144@gmail.com', NULL, NULL, '2019-04-20 08:51:39', '2019-04-20 08:58:55', 'https://avatars1.githubusercontent.com/u/48084389?v=4');

-- --------------------------------------------------------

--
-- Table structure for table `watchers`
--

CREATE TABLE `watchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `watchers`
--
ALTER TABLE `watchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `watchers`
--
ALTER TABLE `watchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
