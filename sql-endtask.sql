-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 05:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `endtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) NOT NULL,
  `question_id` int(11) NOT NULL,
  `is_true` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `question_id`, `is_true`, `deleted_at`, `created_at`, `updated_at`) VALUES
(16, 'aaa', 1, 0, '2024-04-10 05:39:42', NULL, '2024-04-10 05:39:42'),
(17, 'bbb', 1, 0, '2024-04-10 05:39:42', NULL, '2024-04-10 05:39:42'),
(18, 'ccc', 1, 0, '2024-04-10 05:39:42', NULL, '2024-04-10 05:39:42'),
(19, 'aaa', 6, 1, NULL, NULL, '2024-04-10 05:40:27'),
(20, 'bbb', 6, 0, NULL, NULL, NULL),
(21, 'ccc', 6, 0, NULL, NULL, NULL),
(22, 'ddd', 7, 1, NULL, NULL, '2024-04-10 05:40:38'),
(23, 'eee', 7, 0, NULL, NULL, NULL),
(24, 'fff', 7, 0, NULL, NULL, NULL),
(25, 'ggg', 8, 1, NULL, NULL, '2024-04-10 05:41:09'),
(26, 'hhh', 8, 0, NULL, NULL, NULL),
(27, 'jjj', 8, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attempts`
--

CREATE TABLE `attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_correct` int(20) NOT NULL,
  `confidence` varchar(255) NOT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attempts`
--

INSERT INTO `attempts` (`id`, `exercise_id`, `category_id`, `question_id`, `user_id`, `attempted_at`, `is_correct`, `confidence`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES
(17, 4, 1, 6, 3, '2024-04-10 12:45:33', 0, 'Yakin', '2024-04-10 05:45:33', '2024-04-10 05:45:34', '2024-04-10 05:45:33', '2024-04-10 05:45:33'),
(18, 4, 1, 6, 3, '2024-04-14 16:47:46', 0, 'Tidak Yakin', '2024-04-14 09:47:46', '2024-04-14 09:47:47', '2024-04-14 09:47:46', '2024-04-14 09:47:46'),
(19, 4, 1, 6, 3, '2024-04-14 16:51:25', 0, 'Yakin', '2024-04-14 09:51:25', '2024-04-14 09:51:26', '2024-04-14 09:51:25', '2024-04-14 09:51:25'),
(20, 4, 1, 6, 3, '2024-04-14 16:51:30', 1, 'Yakin', '2024-04-14 09:51:30', '2024-04-14 09:51:31', '2024-04-14 09:51:30', '2024-04-14 09:51:30'),
(21, 5, 1, 7, 3, '2024-04-14 16:51:40', 1, 'Yakin', '2024-04-14 09:51:40', '2024-04-14 09:51:41', '2024-04-14 09:51:40', '2024-04-14 09:51:40'),
(22, 6, 1, 8, 3, '2024-04-14 16:51:46', 1, 'Yakin', '2024-04-14 09:51:46', '2024-04-14 09:51:47', '2024-04-14 09:51:46', '2024-04-14 09:51:46'),
(23, 4, 1, 6, 3, '2024-04-14 16:51:59', 1, 'Yakin', '2024-04-14 09:51:59', '2024-04-14 09:52:00', '2024-04-14 09:51:59', '2024-04-14 09:51:59'),
(24, 5, 1, 7, 3, '2024-04-14 16:56:36', 1, 'Yakin', '2024-04-14 09:56:36', '2024-04-14 09:56:37', '2024-04-14 09:56:36', '2024-04-14 09:56:36'),
(25, 6, 1, 8, 3, '2024-04-14 16:56:48', 1, 'Yakin', '2024-04-14 09:56:48', '2024-04-14 09:56:49', '2024-04-14 09:56:48', '2024-04-14 09:56:48'),
(26, 4, 1, 6, 3, '2024-04-14 16:57:05', 1, 'Yakin', '2024-04-14 09:57:05', '2024-04-14 09:57:06', '2024-04-14 09:57:05', '2024-04-14 09:57:05'),
(27, 5, 1, 7, 3, '2024-04-14 17:04:00', 1, 'Yakin', '2024-04-14 10:04:00', '2024-04-14 10:04:01', '2024-04-14 10:04:00', '2024-04-14 10:04:00'),
(28, 6, 1, 8, 3, '2024-04-14 17:04:08', 1, 'Yakin', '2024-04-14 10:04:08', '2024-04-14 10:04:09', '2024-04-14 10:04:08', '2024-04-14 10:04:08'),
(29, 4, 1, 6, 3, '2024-04-18 11:35:21', 0, 'Yakin', '2024-04-18 04:35:21', '2024-04-18 04:35:22', '2024-04-18 04:35:21', '2024-04-18 04:35:21'),
(30, 4, 1, 6, 3, '2024-04-18 11:35:27', 1, 'Yakin', '2024-04-18 04:35:27', '2024-04-18 04:35:28', '2024-04-18 04:35:27', '2024-04-18 04:35:27'),
(31, 5, 1, 7, 3, '2024-04-18 11:35:33', 1, 'Yakin', '2024-04-18 04:35:33', '2024-04-18 04:35:34', '2024-04-18 04:35:33', '2024-04-18 04:35:33'),
(32, 6, 1, 8, 3, '2024-04-18 12:41:36', 0, 'Yakin', '2024-04-18 05:41:36', '2024-04-18 05:41:37', '2024-04-18 05:41:36', '2024-04-18 05:41:36'),
(33, 6, 1, 8, 3, '2024-04-18 12:41:50', 1, 'Tidak Yakin', '2024-04-18 05:41:50', '2024-04-18 05:41:51', '2024-04-18 05:41:50', '2024-04-18 05:41:50'),
(34, 4, 1, 6, 3, '2024-04-18 12:43:53', 0, 'Yakin', '2024-04-18 05:43:53', '2024-04-18 05:43:54', '2024-04-18 05:43:53', '2024-04-18 05:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `instruction` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `bts_nilai` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `instruction`, `img`, `bts_nilai`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pemrograman', 'Pilihlah salah satu jawaban yang menurut anda benar', 'pemrograman.jpg', '0-100', NULL, '2024-03-23 10:58:53', '2024-03-23 10:58:53'),
(2, 'Matematika', 'Pilihlah salah satu jawaban yang menurut anda benar', 'matematika.jpg', '0-100', NULL, '2024-03-23 10:58:53', '2024-03-23 10:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `status_jawaban` varchar(255) DEFAULT NULL,
  `confidence` varchar(255) DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `confidence_tags`
--

CREATE TABLE `confidence_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `confidence` int(11) DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `is_true` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `user_id`, `category_id`, `question_id`, `is_true`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 3, 1, 6, 0, NULL, NULL, '2024-04-18 05:43:46'),
(5, 3, 1, 7, 0, NULL, NULL, '2024-04-18 05:43:46'),
(6, 3, 1, 8, 0, NULL, NULL, '2024-04-18 05:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_percobaans`
--

CREATE TABLE `history_percobaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_percobaan` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2022_06_11_170303_create_permission_tables', 1),
(6, '2022_06_21_162351_create_categories_table', 1),
(7, '2022_06_23_152343_create_questions_table', 1),
(8, '2022_06_24_155051_create_answers_table', 1),
(9, '2022_06_25_144050_create_exercises_table', 1),
(10, '2024_02_29_145556_history_percobaan', 1),
(11, '2024_02_29_150501_confidence_tag', 1),
(12, '2024_02_29_150735_conditions', 1),
(13, '2024_02_29_151343_timer', 1),
(14, '2024_03_04_105152_nilais', 1),
(15, '2024_03_04_142452_create_attempts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilais`
--

INSERT INTO `nilais` (`id`, `user_id`, `question_id`, `category_id`, `nilai`, `deleted_at`, `created_at`, `updated_at`) VALUES
(17, 3, 6, 1, 0, NULL, '2024-04-10 05:45:33', '2024-04-10 05:45:33'),
(18, 3, 6, 1, 0, NULL, '2024-04-14 09:47:46', '2024-04-14 09:47:46'),
(19, 3, 6, 1, 0, NULL, '2024-04-14 09:51:25', '2024-04-14 09:51:25'),
(20, 3, 6, 1, 10, NULL, '2024-04-14 09:51:30', '2024-04-14 09:51:30'),
(21, 3, 7, 1, 10, NULL, '2024-04-14 09:51:40', '2024-04-14 09:51:40'),
(22, 3, 8, 1, 10, NULL, '2024-04-14 09:51:46', '2024-04-14 09:51:46'),
(23, 3, 6, 1, 10, NULL, '2024-04-14 09:51:59', '2024-04-14 09:51:59'),
(24, 3, 7, 1, 10, NULL, '2024-04-14 09:56:36', '2024-04-14 09:56:36'),
(25, 3, 8, 1, 10, NULL, '2024-04-14 09:56:48', '2024-04-14 09:56:48'),
(26, 3, 6, 1, 10, NULL, '2024-04-14 09:57:05', '2024-04-14 09:57:05'),
(27, 3, 7, 1, 10, NULL, '2024-04-14 10:04:00', '2024-04-14 10:04:00'),
(28, 3, 8, 1, 10, NULL, '2024-04-14 10:04:08', '2024-04-14 10:04:08'),
(29, 3, 6, 1, 0, NULL, '2024-04-18 04:35:21', '2024-04-18 04:35:21'),
(30, 3, 6, 1, 10, NULL, '2024-04-18 04:35:27', '2024-04-18 04:35:27'),
(31, 3, 7, 1, 10, NULL, '2024-04-18 04:35:33', '2024-04-18 04:35:33'),
(32, 3, 8, 1, 0, NULL, '2024-04-18 05:41:36', '2024-04-18 05:41:36'),
(33, 3, 8, 1, 10, NULL, '2024-04-18 05:41:50', '2024-04-18 05:41:50'),
(34, 3, 6, 1, 0, NULL, '2024-04-18 05:43:53', '2024-04-18 05:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'haha hihii', 1, '2024-04-10 05:39:42', NULL, '2024-04-10 05:39:42'),
(2, 'huhu hehe', 1, '2024-04-10 05:39:44', NULL, '2024-04-10 05:39:44'),
(3, 'kiki', 2, NULL, NULL, NULL),
(4, 'kwkwk', 2, NULL, NULL, NULL),
(5, 'hygygy', 1, '2024-04-10 05:39:47', NULL, '2024-04-10 05:39:47'),
(6, 'pertanyaan 1', 1, NULL, NULL, NULL),
(7, 'Pertanyaan 2', 1, NULL, NULL, NULL),
(8, 'Pertanyaan 3', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2024-03-23 10:58:47', '2024-03-23 10:58:47'),
(2, 'dosen', 'web', '2024-03-23 10:58:47', '2024-03-23 10:58:47'),
(3, 'mahasiswa', 'web', '2024-03-23 10:58:47', '2024-03-23 10:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timers`
--

CREATE TABLE `timers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `waktu` time NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nim`, `kelas`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, NULL, 'admin', 'superadmin@loop.com', NULL, '$2y$10$TFyLG3./5wBFXonx5WGV.eZzkBjrF.7wyaY/qW6eJ/cLwOY.AjyxO', NULL, '2024-03-23 10:58:47', '2024-03-23 10:58:47'),
(2, 'Dosen', NULL, NULL, 'Dosen', 'dosen@loop.com', NULL, '$2y$10$LwY4iRMYuQYI7nx2RKtO8uxTLJ/uA5zsIJs2UJPnjnboh8.7aC9KK', NULL, '2024-03-23 10:58:47', '2024-03-23 10:58:47'),
(3, 'Mahasiswa', '204172004', NULL, 'Mahasiswa', 'mahasiswa@loop.com', NULL, '$2y$10$7GgtTWbRdSRcWVQBnyIjruC.9t8jdvyoPfsl03K3d3RrMT20BPB/y', NULL, '2024-03-23 10:58:47', '2024-03-23 10:58:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attempts`
--
ALTER TABLE `attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attempts_exercise_id_foreign` (`exercise_id`),
  ADD KEY `attempts_category_id_foreign` (`category_id`),
  ADD KEY `attempts_question_id_foreign` (`question_id`),
  ADD KEY `attempts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conditions_user_id_foreign` (`user_id`),
  ADD KEY `conditions_question_id_foreign` (`question_id`);

--
-- Indexes for table `confidence_tags`
--
ALTER TABLE `confidence_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `confidence_tags_user_id_foreign` (`user_id`),
  ADD KEY `confidence_tags_question_id_foreign` (`question_id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `history_percobaans`
--
ALTER TABLE `history_percobaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_percobaans_user_id_foreign` (`user_id`),
  ADD KEY `history_percobaans_category_id_foreign` (`category_id`),
  ADD KEY `history_percobaans_question_id_foreign` (`question_id`);

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
-- Indexes for table `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilais_user_id_foreign` (`user_id`),
  ADD KEY `nilais_question_id_foreign` (`question_id`),
  ADD KEY `nilais_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
-- Indexes for table `timers`
--
ALTER TABLE `timers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timers_user_id_foreign` (`user_id`),
  ADD KEY `timers_question_id_foreign` (`question_id`);

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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `attempts`
--
ALTER TABLE `attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confidence_tags`
--
ALTER TABLE `confidence_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_percobaans`
--
ALTER TABLE `history_percobaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timers`
--
ALTER TABLE `timers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attempts`
--
ALTER TABLE `attempts`
  ADD CONSTRAINT `attempts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attempts_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attempts_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attempts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conditions`
--
ALTER TABLE `conditions`
  ADD CONSTRAINT `conditions_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conditions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `confidence_tags`
--
ALTER TABLE `confidence_tags`
  ADD CONSTRAINT `confidence_tags_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `confidence_tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `history_percobaans`
--
ALTER TABLE `history_percobaans`
  ADD CONSTRAINT `history_percobaans_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `history_percobaans_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `history_percobaans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `nilais`
--
ALTER TABLE `nilais`
  ADD CONSTRAINT `nilais_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilais_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilais_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timers`
--
ALTER TABLE `timers`
  ADD CONSTRAINT `timers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
