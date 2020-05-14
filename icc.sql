-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 09:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icc`
--

-- --------------------------------------------------------

--
-- Table structure for table `icc_article`
--

CREATE TABLE `icc_article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_post` date DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `deleted_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icc_article`
--

INSERT INTO `icc_article` (`id`, `title`, `sumber`, `tgl_post`, `member_id`, `content`, `is_deleted`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Laravel', 'Nadia Salsabil', '2020-05-31', 1, '<h3>CRUD Laravel</h3>', 1, NULL, '2020-05-09 13:02:22', '2020-05-09 13:02:22', NULL),
(10, 'React JS', 'Nadia Salsabil', '2020-05-11', 1, '<h2>React JS</h2>', 1, NULL, '2020-05-09 13:16:57', '2020-05-09 13:16:57', NULL),
(11, 'VB Net', 'Nadia Salsabil', '2020-05-10', 1, '<p>test</p>', 1, NULL, '2020-05-09 13:18:37', '2020-05-09 13:18:37', NULL),
(12, 'Pandi - Client List', 'Nadia Salsabil', '2020-05-10', 1, '<p>a</p>', 1, NULL, '2020-05-09 21:07:50', '2020-05-09 21:07:50', NULL),
(13, 'AJK BIB - (Kantor Pusat)', 'Nadia Salsabil', '2020-05-10', 1, '<p>a</p>', 1, NULL, '2020-05-09 21:08:59', '2020-05-09 21:08:59', NULL),
(14, 'Pemrograman Ruby', 'Dinda Wulandari', '2020-05-10', 1, '<h1>Pemrograman dengan Ruby</h1>', 1, NULL, '2020-05-09 22:05:54', '2020-05-09 22:05:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icc_community_structure`
--

CREATE TABLE `icc_community_structure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_or_blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_contact_us`
--

CREATE TABLE `icc_contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_desc_community`
--

CREATE TABLE `icc_desc_community` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_event`
--

CREATE TABLE `icc_event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_post` date DEFAULT NULL,
  `tgl_event` date DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `kuota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_berbayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_event_photo`
--

CREATE TABLE `icc_event_photo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `title_phot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_gallery`
--

CREATE TABLE `icc_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_ket_event_berbayar`
--

CREATE TABLE `icc_ket_event_berbayar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `bayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_member`
--

CREATE TABLE `icc_member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icc_member`
--

INSERT INTO `icc_member` (`id`, `name`, `sex`, `birth_date`, `birth_place`, `photo`, `path`, `no_hp`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nadia Salsabil', 'P', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 16:59:03', '2020-05-09 16:59:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icc_migrations`
--

CREATE TABLE `icc_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icc_migrations`
--

INSERT INTO `icc_migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2020_04_29_174119_create_member_table', 1),
(20, '2020_04_29_174135_create_role_table', 1),
(21, '2020_04_29_174156_create_community_structure_table', 1),
(22, '2020_04_29_174226_create_contact_us_table', 1),
(23, '2020_04_29_174243_create_event_table', 1),
(24, '2020_04_29_181109_create_event_photo_table', 1),
(25, '2020_04_29_181139_create_visi_misi_table', 1),
(26, '2020_04_29_181211_create_ket_event_berbayar_table', 1),
(27, '2020_04_29_181237_create_pendaftaran_event_table', 1),
(28, '2020_04_29_181250_create_trf_event_table', 1),
(29, '2020_04_29_181306_create_desc_community_table', 1),
(30, '2020_04_29_181320_create_article_table', 1),
(31, '2020_04_29_181331_create_photo_article_table', 1),
(32, '2020_04_29_182847_create_gallery_table', 1),
(33, '2020_05_09_165239_update_article_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `icc_password_resets`
--

CREATE TABLE `icc_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_pendaftaran_event`
--

CREATE TABLE `icc_pendaftaran_event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_many_follow_the_event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_request` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_photo_article`
--

CREATE TABLE `icc_photo_article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icc_photo_article`
--

INSERT INTO `icc_photo_article` (`id`, `article_id`, `photo`, `source`, `photo_title`, `desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 9, '1589054542_belajar.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 10, '1589055417_belajar.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 12, '1589083670_confirm delete.jpg', 'nadiasalsabil', 'Laravel 1', 'Code Laravel', NULL, NULL, NULL),
(6, 13, '1589083739_kubernates1.jpg', 'nadiasalsabil', 'Laravel 1', 'Code Laravel', NULL, NULL, NULL),
(7, 13, '1589083739_cre.jpg', 'nadiasalsabil', 'Laravel 1', 'Code Laravel', NULL, NULL, NULL),
(8, 14, '1589087154_kubernates1.jpg', 'nadiasalsabil', 'Laravel 1', 'Code Laravel', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icc_role`
--

CREATE TABLE `icc_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icc_role`
--

INSERT INTO `icc_role` (`id`, `name`, `desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icc_trf_event`
--

CREATE TABLE `icc_trf_event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendaftaran_event_id` int(11) DEFAULT NULL,
  `bukti_tf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_bayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icc_users`
--

CREATE TABLE `icc_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icc_users`
--

INSERT INTO `icc_users` (`id`, `role_id`, `username`, `email`, `email_verified_at`, `password`, `member_id`, `is_active`, `last_login`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'nadias', 'salsabilnadia7@gmail.com', NULL, '$2y$12$gDDn0vzoItuj9z.ZpdF5feneM7bWI9MHR0W4PK6nt1NrmwgMFvYqS', '1', '1', '2020-05-14', NULL, '2020-05-09 16:57:42', '2020-05-14 00:10:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icc_visi_misi`
--

CREATE TABLE `icc_visi_misi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `icc_article`
--
ALTER TABLE `icc_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_community_structure`
--
ALTER TABLE `icc_community_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_contact_us`
--
ALTER TABLE `icc_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_desc_community`
--
ALTER TABLE `icc_desc_community`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_event`
--
ALTER TABLE `icc_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_event_photo`
--
ALTER TABLE `icc_event_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_gallery`
--
ALTER TABLE `icc_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_ket_event_berbayar`
--
ALTER TABLE `icc_ket_event_berbayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_member`
--
ALTER TABLE `icc_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_migrations`
--
ALTER TABLE `icc_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_password_resets`
--
ALTER TABLE `icc_password_resets`
  ADD KEY `icc_password_resets_email_index` (`email`);

--
-- Indexes for table `icc_pendaftaran_event`
--
ALTER TABLE `icc_pendaftaran_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_photo_article`
--
ALTER TABLE `icc_photo_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_role`
--
ALTER TABLE `icc_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_trf_event`
--
ALTER TABLE `icc_trf_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icc_users`
--
ALTER TABLE `icc_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icc_users_email_unique` (`email`);

--
-- Indexes for table `icc_visi_misi`
--
ALTER TABLE `icc_visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `icc_article`
--
ALTER TABLE `icc_article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `icc_community_structure`
--
ALTER TABLE `icc_community_structure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_contact_us`
--
ALTER TABLE `icc_contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_desc_community`
--
ALTER TABLE `icc_desc_community`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_event`
--
ALTER TABLE `icc_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_event_photo`
--
ALTER TABLE `icc_event_photo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_gallery`
--
ALTER TABLE `icc_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_ket_event_berbayar`
--
ALTER TABLE `icc_ket_event_berbayar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_member`
--
ALTER TABLE `icc_member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icc_migrations`
--
ALTER TABLE `icc_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `icc_pendaftaran_event`
--
ALTER TABLE `icc_pendaftaran_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_photo_article`
--
ALTER TABLE `icc_photo_article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `icc_role`
--
ALTER TABLE `icc_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icc_trf_event`
--
ALTER TABLE `icc_trf_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icc_users`
--
ALTER TABLE `icc_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icc_visi_misi`
--
ALTER TABLE `icc_visi_misi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
