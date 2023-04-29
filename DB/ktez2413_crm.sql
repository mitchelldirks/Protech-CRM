-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2023 at 07:06 AM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ktez2413_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(30) NOT NULL,
  `nama_jabatan` varchar(40) NOT NULL,
  `job_desc` text NOT NULL,
  `created_by` int(1) NOT NULL,
  `updated_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`, `job_desc`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(11, 'Developer', 'Developer', 0, 0, '2021-04-22 08:07:54', '2021-04-22 08:07:54'),
(12, 'Project Manager', 'PM ', 0, 21, '2021-04-22 08:10:35', '2021-09-17 20:29:21'),
(13, 'Outsource', 'Kerja doang dibayar kaga\r\n', 21, 21, '2021-06-21 11:27:39', '2021-06-21 11:27:39'),
(14, 'Quality Assurance', 'QA', 21, 21, '2021-10-23 13:59:16', '2021-10-23 13:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(30) NOT NULL,
  `nama_kategori` varchar(40) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_by` int(1) NOT NULL,
  `updated_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `deskripsi`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Company Profile', 'Compro', 1, 1, '2021-04-19 12:05:47', '2021-04-19 12:06:49'),
(2, 'Skripsi', 'Jasa ', 0, 21, '2021-04-19 20:13:31', '2021-05-17 13:46:27'),
(3, 'Web System', '', 0, 0, '2021-04-22 11:18:23', '2021-04-22 11:18:23'),
(4, 'Maintenance', 'Perawatan macem skinker lah', 21, 21, '2022-01-26 20:30:14', '2022-01-26 20:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(1) NOT NULL,
  `action` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `data` int(1) NOT NULL,
  `info` text NOT NULL,
  `created_by` int(1) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `action`, `module`, `data`, `info`, `created_by`, `created_at`) VALUES
(1, 'Create', 'Kategori', 0, 'Kategori Create New Entry', 1, '2021-04-19 12:04:58'),
(2, 'Create', 'Kategori', 0, 'Kategori Create New Entry', 1, '2021-04-19 12:05:47'),
(3, 'Edit', 'Kategori', 1, 'Kategori Edit 1', 1, '2021-04-19 12:06:49'),
(4, 'Create', 'Project', 0, 'Project Create New Entry', 1, '2021-04-19 15:16:34'),
(5, 'Edit', 'Project', 0, 'Project Edit New Entry', 1, '2021-04-19 18:16:59'),
(6, 'Edit', 'Project', 0, 'Project Edit ', 1, '2021-04-19 18:17:56'),
(7, 'Edit', 'Project', 0, 'Project Edit ', 1, '2021-04-19 18:20:12'),
(8, 'Edit', 'Project', 0, 'Project Edit ', 0, '2021-04-19 18:23:25'),
(9, 'Edit', 'Project', 0, 'Project Edit ', 0, '2021-04-19 18:23:48'),
(10, 'Edit', 'Project', 0, 'Project Edit ', 0, '2021-04-19 18:24:26'),
(11, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:29:41'),
(12, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:30:36'),
(13, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:32:24'),
(14, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:33:04'),
(15, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:33:38'),
(16, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:34:03'),
(17, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:34:34'),
(18, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:35:23'),
(19, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:40:46'),
(20, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:41:23'),
(21, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 18:42:39'),
(22, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 19:40:51'),
(23, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 19:43:02'),
(24, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 19:46:23'),
(25, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 19:46:46'),
(26, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-19 19:49:44'),
(27, 'Create', 'Kategori', 0, 'Kategori Create New Entry', 0, '2021-04-19 20:13:31'),
(28, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-19 20:14:14'),
(29, 'Edit', 'Project', 2, 'Project Edit 2', 0, '2021-04-19 20:20:15'),
(30, 'Edit', 'Project', 2, 'Project Edit 2', 0, '2021-04-19 20:21:08'),
(31, 'Edit', 'Project', 2, 'Project Edit 2', 0, '2021-04-19 20:22:01'),
(32, 'Edit', 'Project', 2, 'Project Edit 2', 0, '2021-04-19 20:29:12'),
(33, 'Edit', 'Project', 2, 'Project Edit 2', 15, '2021-04-19 20:38:52'),
(34, 'Edit', 'Project', 2, 'Project Edit 2', 15, '2021-04-19 20:46:11'),
(35, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:50:39'),
(36, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:51:26'),
(37, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:51:43'),
(38, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:52:08'),
(39, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:52:20'),
(40, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:52:22'),
(41, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:52:24'),
(42, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-04-19 20:52:52'),
(43, 'Edit', 'Project', 2, 'Project Edit 2', 15, '2021-04-19 21:08:24'),
(44, 'Edit', 'Project', 1, 'Project Edit 1', 0, '2021-04-21 15:01:25'),
(45, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 04:09:25'),
(46, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 07:53:31'),
(47, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 07:55:31'),
(48, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 07:57:46'),
(49, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 07:57:59'),
(50, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:00:00'),
(51, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:00:37'),
(52, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:02:49'),
(53, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:03:01'),
(54, 'Delete', 'Jabatan', 0, 'Jabatan Delete ', 0, '2021-04-22 08:05:37'),
(55, 'Delete', 'Jabatan', 0, 'Jabatan Delete ', 0, '2021-04-22 08:05:40'),
(56, 'Delete', 'Jabatan', 0, 'Jabatan Delete ', 0, '2021-04-22 08:05:45'),
(57, 'Delete', 'Jabatan', 0, 'Jabatan Delete ', 0, '2021-04-22 08:05:51'),
(58, 'Delete', 'Jabatan', 0, 'Jabatan Delete ', 0, '2021-04-22 08:06:22'),
(59, 'Delete', 'Jabatan', 0, 'Jabatan Delete ', 0, '2021-04-22 08:06:29'),
(60, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:06:29'),
(61, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:06:42'),
(62, 'Create', 'Jabatan', 0, 'Jabatan Create New Entry', 0, '2021-04-22 08:07:54'),
(63, 'Create', 'Jabatan', 0, 'Jabatan Create New Entry', 0, '2021-04-22 08:10:35'),
(64, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:11:00'),
(65, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:14'),
(66, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:11:14'),
(67, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:18'),
(68, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:23'),
(69, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:28'),
(70, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:32'),
(71, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:37'),
(72, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:42'),
(73, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:51'),
(74, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:55'),
(75, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:11:58'),
(76, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:12:06'),
(77, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:12:10'),
(78, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:12:16'),
(79, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:12:19'),
(80, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 0, '2021-04-22 08:13:09'),
(81, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:14:22'),
(82, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:14:42'),
(83, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 0, '2021-04-22 08:15:03'),
(84, 'Edit', 'Pegawai', 16, 'Pegawai Edit 16', 0, '2021-04-22 08:16:02'),
(85, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:16:42'),
(86, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:16:57'),
(87, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:18:33'),
(88, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:18:50'),
(89, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:21:44'),
(90, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:21:59'),
(91, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:22:18'),
(92, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-22 08:24:19'),
(93, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-22 08:24:40'),
(94, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 0, '2021-04-22 08:27:53'),
(95, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 0, '2021-04-22 08:28:00'),
(96, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 0, '2021-04-22 08:31:01'),
(97, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:31:12'),
(98, 'Delete', 'Pegawai', 0, 'Pegawai Delete ', 0, '2021-04-22 08:31:14'),
(99, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 0, '2021-04-22 08:32:43'),
(100, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 0, '2021-04-22 08:34:39'),
(101, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-04-22 09:39:23'),
(102, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-04-22 09:41:30'),
(103, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-04-22 09:51:09'),
(104, 'Create', 'Kategori', 0, 'Kategori Create New Entry', 0, '2021-04-22 11:18:23'),
(105, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-04-22 14:49:18'),
(106, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-04-22 14:50:05'),
(107, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-04-22 14:54:12'),
(108, 'Edit', 'Project', 17, 'Project Edit 17', 21, '2021-04-22 15:18:49'),
(109, 'Edit', 'Project', 5, 'Project Edit 5', 0, '2021-04-22 20:19:30'),
(110, 'Edit', 'Project', 5, 'Project Edit 5', 0, '2021-04-22 20:19:55'),
(111, 'Create', 'Project', 0, 'Project Create New Entry', 0, '2021-04-27 09:57:53'),
(112, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-04-27 09:58:28'),
(113, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-04-27 10:12:09'),
(114, 'Edit', 'Project', 6, 'Project Edit 6', 0, '2021-04-28 11:12:16'),
(115, 'Edit', 'Project', 6, 'Project Edit 6', 21, '2021-05-05 09:58:02'),
(116, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-05-08 12:44:08'),
(117, 'Edit', 'Project', 6, 'Project Edit 6', 21, '2021-05-08 12:45:04'),
(118, 'Edit', 'Project', 13, 'Project Edit 13', 21, '2021-05-08 12:58:28'),
(119, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-05-08 13:06:07'),
(120, 'Edit', 'Project', 13, 'Project Edit 13', 21, '2021-05-08 16:25:07'),
(121, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-05-08 16:25:28'),
(122, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-05-08 16:25:54'),
(123, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-05-08 16:26:01'),
(124, 'Edit', 'Project', 3, 'Project Edit 3', 21, '2021-05-08 16:26:20'),
(125, 'Edit', 'Project', 4, 'Project Edit 4', 21, '2021-05-08 16:26:35'),
(126, 'Edit', 'Project', 4, 'Project Edit 4', 21, '2021-05-08 16:26:43'),
(127, 'Edit', 'Project', 18, 'Project Edit 18', 21, '2021-05-10 00:06:33'),
(128, 'Edit', 'Project', 18, 'Project Edit 18', 21, '2021-05-10 08:37:42'),
(129, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 21, '2021-05-10 15:03:28'),
(130, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-05-15 20:31:29'),
(131, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-05-17 11:07:14'),
(132, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-05-17 11:16:08'),
(133, 'Edit', 'Project', 16, 'Project Edit 16', 21, '2021-05-17 13:45:36'),
(134, 'Edit', 'Project', 16, 'Project Edit 16', 21, '2021-05-17 13:45:46'),
(135, 'Edit', 'Project', 16, 'Project Edit 16', 21, '2021-05-17 13:45:55'),
(136, 'Edit', 'Kategori', 2, 'Kategori Edit 2', 21, '2021-05-17 13:46:27'),
(137, 'Edit', 'Project', 16, 'Project Edit 16', 22, '2021-05-17 14:38:07'),
(138, 'Delete', 'Project', 0, 'Project Delete ', 22, '2021-05-17 14:39:48'),
(139, 'Create', 'Project', 0, 'Project Create New Entry', 22, '2021-05-17 14:40:33'),
(140, 'Edit', 'Project', 16, 'Project Edit 16', 22, '2021-05-17 14:43:04'),
(141, 'Edit', 'Project', 21, 'Project Edit 21', 21, '2021-05-17 14:44:07'),
(142, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-05-19 18:36:14'),
(143, 'Edit', 'Project', 13, 'Project Edit 13', 21, '2021-05-20 17:04:39'),
(144, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-05-25 08:37:43'),
(145, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-05-25 08:38:48'),
(146, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-05-26 09:39:04'),
(147, 'Edit', 'Project', 7, 'Project Edit 7', 21, '2021-05-26 10:11:51'),
(148, 'Edit', 'Pegawai', 23, 'Pegawai Edit 23', 21, '2021-05-26 16:31:25'),
(149, 'Edit', 'Project', 13, 'Project Edit 13', 21, '2021-05-28 14:28:47'),
(150, 'Edit', 'Project', 18, 'Project Edit 18', 21, '2021-05-28 21:07:39'),
(151, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-05-28 22:02:01'),
(152, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-05-31 12:27:50'),
(153, 'Edit', 'Project', 10, 'Project Edit 10', 21, '2021-05-31 12:29:05'),
(154, 'Edit', 'Project', 15, 'Project Edit 15', 1, '2021-05-31 13:07:20'),
(155, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:12:29'),
(156, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:14:12'),
(157, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:14:43'),
(158, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:15:45'),
(159, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:18:36'),
(160, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:19:47'),
(161, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:25:07'),
(162, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-05-31 19:26:25'),
(163, 'Edit', 'Project', 5, 'Project Edit 5', 21, '2021-05-31 19:28:19'),
(164, 'Edit', 'Project', 21, 'Project Edit 21', 21, '2021-05-31 19:30:19'),
(165, 'Edit', 'Project', 21, 'Project Edit 21', 21, '2021-05-31 19:31:37'),
(166, 'Edit', 'Project', 12, 'Project Edit 12', 21, '2021-05-31 19:33:27'),
(167, 'Edit', 'Project', 11, 'Project Edit 11', 21, '2021-05-31 19:33:59'),
(168, 'Edit', 'Project', 11, 'Project Edit 11', 21, '2021-05-31 19:35:02'),
(169, 'Edit', 'Project', 11, 'Project Edit 11', 21, '2021-05-31 19:35:55'),
(170, 'Create', 'Project', 0, 'Project Create New Entry', 3, '2021-05-31 19:48:51'),
(171, 'Edit', 'Project', 23, 'Project Edit 23', 21, '2021-05-31 19:50:32'),
(172, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-05-31 19:54:17'),
(173, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-05-31 20:27:14'),
(174, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-05-31 20:27:34'),
(175, 'Edit', 'Project', 6, 'Project Edit 6', 21, '2021-05-31 21:00:20'),
(176, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-05-31 21:00:49'),
(177, 'Edit', 'Project', 4, 'Project Edit 4', 21, '2021-05-31 21:01:24'),
(178, 'Edit', 'Project', 3, 'Project Edit 3', 21, '2021-06-02 09:08:48'),
(179, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-06-04 10:16:54'),
(180, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2021-06-07 13:08:32'),
(181, 'Edit', 'Project', 6, 'Project Edit 6', 21, '2021-06-11 10:27:37'),
(182, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-06-12 16:01:14'),
(183, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-06-12 16:01:37'),
(184, 'Edit', 'Project', 24, 'Project Edit 24', 21, '2021-06-14 15:37:50'),
(185, 'Edit', 'Project', 20, 'Project Edit 20', 21, '2021-06-15 08:46:12'),
(186, 'Edit', 'Project', 12, 'Project Edit 12', 21, '2021-06-15 08:46:46'),
(187, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2021-06-15 09:43:30'),
(188, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2021-06-15 09:43:56'),
(189, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2021-06-15 09:44:34'),
(190, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2021-06-15 09:45:08'),
(191, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-15 09:47:41'),
(192, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-16 08:00:47'),
(193, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-17 22:43:40'),
(194, 'Edit', 'Project', 26, 'Project Edit 26', 21, '2021-06-17 22:43:55'),
(195, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-17 22:44:24'),
(196, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-17 22:44:58'),
(197, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-17 22:45:30'),
(198, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-17 22:46:15'),
(199, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-17 22:58:46'),
(200, 'Edit', 'Project', 25, 'Project Edit 25', 21, '2021-06-17 23:00:10'),
(201, 'Edit', 'Project', 7, 'Project Edit 7', 21, '2021-06-19 21:08:17'),
(202, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-06-20 11:32:21'),
(203, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-06-20 19:16:02'),
(204, 'Create', 'Jabatan', 0, 'Jabatan Create New Entry', 21, '2021-06-21 11:27:39'),
(205, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 21, '2021-06-21 11:29:40'),
(206, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-06-21 13:40:22'),
(207, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-06-21 16:51:07'),
(208, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-06-21 19:42:12'),
(209, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-06-24 09:53:29'),
(210, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-06-24 15:33:15'),
(211, 'Edit', 'Project', 16, 'Project Edit 16', 22, '2021-06-25 21:01:41'),
(212, 'Edit', 'Project', 15, 'Project Edit 15', 21, '2021-06-25 21:07:56'),
(213, 'Edit', 'Project', 27, 'Project Edit 27', 21, '2021-06-27 06:34:50'),
(214, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-06-27 06:36:46'),
(215, 'Edit', 'Project', 27, 'Project Edit 27', 21, '2021-06-27 06:36:57'),
(216, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-06-27 12:23:42'),
(217, 'Edit', 'Project', 18, 'Project Edit 18', 21, '2021-06-27 13:29:34'),
(218, 'Edit', 'Project', 10, 'Project Edit 10', 21, '2021-06-27 19:35:40'),
(219, 'Edit', 'Project', 10, 'Project Edit 10', 21, '2021-06-27 19:36:00'),
(220, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-07-01 10:46:36'),
(221, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-07-01 10:59:54'),
(222, 'Edit', 'Project', 26, 'Project Edit 26', 21, '2021-07-02 21:39:16'),
(223, 'Edit', 'Project', 26, 'Project Edit 26', 21, '2021-07-02 21:39:27'),
(224, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2021-07-24 08:14:03'),
(225, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2021-07-24 08:15:23'),
(226, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2021-07-24 08:15:57'),
(227, 'Edit', 'Project', 5, 'Project Edit 5', 21, '2021-07-25 22:15:19'),
(228, 'Edit', 'Project', 3, 'Project Edit 3', 21, '2021-07-25 22:15:40'),
(229, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-07-25 22:16:31'),
(230, 'Edit', 'Project', 7, 'Project Edit 7', 21, '2021-07-25 22:16:46'),
(231, 'Edit', 'Project', 12, 'Project Edit 12', 21, '2021-07-25 22:17:00'),
(232, 'Edit', 'Project', 28, 'Project Edit 28', 21, '2021-07-25 22:17:16'),
(233, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-07-25 22:17:37'),
(234, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-07-28 20:47:23'),
(235, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-07-30 16:52:07'),
(236, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-08-03 12:23:29'),
(237, 'Edit', 'Project', 30, 'Project Edit 30', 21, '2021-08-03 12:23:43'),
(238, 'Edit', 'Project', 30, 'Project Edit 30', 21, '2021-08-03 12:24:16'),
(239, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-08-04 18:19:29'),
(240, 'Edit', 'Project', 10, 'Project Edit 10', 21, '2021-08-04 18:21:55'),
(241, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 21, '2021-08-04 18:30:05'),
(242, 'Edit', 'Project', 30, 'Project Edit 30', 21, '2021-08-04 18:42:04'),
(243, 'Edit', 'Project', 30, 'Project Edit 30', 21, '2021-08-04 18:42:57'),
(244, 'Edit', 'Project', 5, 'Project Edit 5', 21, '2021-08-04 18:52:59'),
(245, 'Edit', 'Project', 4, 'Project Edit 4', 21, '2021-08-04 18:53:27'),
(246, 'Edit', 'Project', 4, 'Project Edit 4', 21, '2021-08-04 18:53:46'),
(247, 'Edit', 'Project', 3, 'Project Edit 3', 21, '2021-08-04 18:54:15'),
(248, 'Edit', 'Project', 7, 'Project Edit 7', 21, '2021-08-04 18:55:39'),
(249, 'Edit', 'Project', 12, 'Project Edit 12', 21, '2021-08-04 18:56:07'),
(250, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-08-04 18:56:51'),
(251, 'Edit', 'Project', 6, 'Project Edit 6', 21, '2021-08-04 19:19:51'),
(252, 'Edit', 'Pegawai', 25, 'Pegawai Edit 25', 25, '2021-08-04 19:27:48'),
(253, 'Edit', 'Pegawai', 25, 'Pegawai Edit 25', 25, '2021-08-04 19:27:53'),
(254, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-05 10:34:38'),
(255, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-05 10:35:03'),
(256, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-06 14:56:07'),
(257, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-08-06 14:58:57'),
(258, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-06 15:00:09'),
(259, 'Edit', 'Project', 20, 'Project Edit 20', 21, '2021-08-06 15:00:30'),
(260, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-15 12:40:54'),
(261, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-16 11:50:10'),
(262, 'Edit', 'Project', 22, 'Project Edit 22', 21, '2021-08-16 11:51:39'),
(263, 'Edit', 'Project', 8, 'Project Edit 8', 21, '2021-08-16 11:52:17'),
(264, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-16 17:55:46'),
(265, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-16 17:56:07'),
(266, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-17 19:07:01'),
(267, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-17 19:07:37'),
(268, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-18 12:47:08'),
(269, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-19 09:03:31'),
(270, 'Edit', 'Project', 9, 'Project Edit 9', 21, '2021-08-25 12:14:15'),
(271, 'Edit', 'Project', 6, 'Project Edit 6', 21, '2021-08-25 12:14:53'),
(272, 'Edit', 'Project', 31, 'Project Edit 31', 21, '2021-08-25 12:15:27'),
(273, 'Edit', 'Project', 18, 'Project Edit 18', 21, '2021-08-25 13:01:21'),
(274, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-25 13:01:57'),
(275, 'Edit', 'Project', 27, 'Project Edit 27', 21, '2021-08-25 13:02:04'),
(276, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2021-08-28 07:38:09'),
(277, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2021-08-28 07:39:38'),
(278, 'Delete', 'Project', 0, 'Project Delete ', 21, '2021-08-29 08:04:55'),
(279, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-30 18:01:01'),
(280, 'Create-detail', 'Todo', 5, 'Todo Create-detail 5', 21, '2021-08-30 18:47:36'),
(281, 'Edit-detail', 'Todo', 5, 'Todo Edit-detail 5', 21, '2021-08-30 18:47:41'),
(282, 'Edit-detail', 'Todo', 5, 'Todo Edit-detail 5', 21, '2021-08-30 18:47:46'),
(283, 'Edit-detail', 'Todo', 5, 'Todo Edit-detail 5', 21, '2021-08-30 18:47:55'),
(284, 'Edit', 'Todo', 5, 'Todo Edit 5', 21, '2021-08-31 11:27:58'),
(285, 'Edit-detail', 'Todo', 5, 'Todo Edit-detail 5', 21, '2021-08-31 11:28:06'),
(286, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-31 19:09:13'),
(287, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-31 19:17:59'),
(288, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-31 19:19:20'),
(289, 'Edit', 'Project', 18, 'Project Edit 18', 21, '2021-08-31 19:19:39'),
(290, 'Edit', 'Project', 11, 'Project Edit 11', 21, '2021-08-31 19:22:20'),
(291, 'Edit', 'Project', 30, 'Project Edit 30', 21, '2021-09-06 16:06:17'),
(292, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-09-06 16:57:04'),
(293, 'Delete', 'Todo', 5, 'Todo Delete 5', 21, '2021-09-06 16:57:18'),
(294, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-09-07 07:19:31'),
(295, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-09-10 08:06:39'),
(296, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-09-10 08:07:24'),
(297, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-09-10 08:07:24'),
(298, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-09-10 08:08:34'),
(299, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-09-10 08:09:10'),
(300, 'Edit', 'Project', 7, 'Project Edit 7', 21, '2021-09-13 16:02:20'),
(301, 'Edit', 'Project', 4, 'Project Edit 4', 21, '2021-09-13 16:02:56'),
(302, 'Edit', 'Project', 5, 'Project Edit 5', 21, '2021-09-13 16:03:10'),
(303, 'Edit', 'Project', 21, 'Project Edit 21', 21, '2021-09-13 16:04:43'),
(304, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-09-13 16:10:36'),
(305, 'Edit', 'Project', 10, 'Project Edit 10', 21, '2021-09-13 16:10:44'),
(306, 'Payment', 'Project', 0, 'Project Payment New Entry', 0, '2021-09-13 17:53:22'),
(307, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-09-13 17:53:47'),
(308, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-09-15 08:55:40'),
(309, 'Edit', 'Project', 32, 'Project Edit 32', 21, '2021-09-15 08:58:16'),
(310, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-09-15 08:58:57'),
(311, 'Edit', 'Jabatan', 12, 'Jabatan Edit 12', 21, '2021-09-17 20:29:21'),
(312, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-09-25 12:35:53'),
(313, 'Edit', 'Project', 28, 'Project Edit 28', 21, '2021-09-25 12:36:00'),
(314, 'Edit', 'Project', 13, 'Project Edit 13', 21, '2021-09-25 12:44:19'),
(315, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-09-28 08:08:17'),
(316, 'Edit', 'Project', 12, 'Project Edit 12', 21, '2021-09-28 08:23:52'),
(317, 'Edit', 'Project', 26, 'Project Edit 26', 21, '2021-09-29 10:18:43'),
(318, 'Edit', 'Project', 20, 'Project Edit 20', 21, '2021-09-29 10:23:58'),
(319, 'Edit', 'Project', 32, 'Project Edit 32', 21, '2021-09-29 10:24:11'),
(320, 'Edit', 'Project', 25, 'Project Edit 25', 21, '2021-09-29 10:24:27'),
(321, 'Edit', 'Project', 1, 'Project Edit 1', 21, '2021-09-29 10:24:50'),
(322, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-10-01 05:22:11'),
(323, 'Edit', 'Project', 3, 'Project Edit 3', 21, '2021-10-01 07:09:32'),
(324, 'Delete', 'Todo', 8, 'Todo Delete 8', 21, '2021-10-01 15:06:26'),
(325, 'Delete', 'Todo', 7, 'Todo Delete 7', 21, '2021-10-01 15:06:29'),
(326, 'Create-detail', 'Todo', 6, 'Todo Create-detail 6', 21, '2021-10-01 15:10:22'),
(327, 'Create-detail', 'Todo', 6, 'Todo Create-detail 6', 21, '2021-10-01 15:11:39'),
(328, 'Delete', 'Todo', 11, 'Todo Delete 11', 21, '2021-10-01 23:10:20'),
(329, 'Delete', 'Todo', 12, 'Todo Delete 12', 21, '2021-10-01 23:10:25'),
(330, 'Delete', 'Todo', 12, 'Todo Delete 12', 20, '2021-10-01 23:10:30'),
(331, 'Delete', 'Todo', 13, 'Todo Delete 13', 21, '2021-10-01 23:10:31'),
(332, 'Delete', 'Todo', 13, 'Todo Delete 13', 20, '2021-10-01 23:10:32'),
(333, 'Delete', 'Todo', 14, 'Todo Delete 14', 20, '2021-10-01 23:10:33'),
(334, 'Delete', 'Todo', 15, 'Todo Delete 15', 20, '2021-10-01 23:10:34'),
(335, 'Delete', 'Todo', 16, 'Todo Delete 16', 20, '2021-10-01 23:10:35'),
(336, 'Delete', 'Todo', 14, 'Todo Delete 14', 21, '2021-10-01 23:10:35'),
(337, 'Delete', 'Todo', 17, 'Todo Delete 17', 20, '2021-10-01 23:10:38'),
(338, 'Delete', 'Todo', 17, 'Todo Delete 17', 21, '2021-10-01 23:10:39'),
(339, 'Delete', 'Todo', 18, 'Todo Delete 18', 20, '2021-10-01 23:10:43'),
(340, 'Delete', 'Todo', 18, 'Todo Delete 18', 21, '2021-10-01 23:10:43'),
(341, 'Delete', 'Todo', 19, 'Todo Delete 19', 20, '2021-10-01 23:10:44'),
(342, 'Delete', 'Todo', 19, 'Todo Delete 19', 21, '2021-10-01 23:10:46'),
(343, 'Create-detail', 'Todo', 10, 'Todo Create-detail 10', 21, '2021-10-01 23:10:58'),
(344, 'Delete-detail', 'Todo', 10, 'Todo Delete-detail 10', 21, '2021-10-01 23:11:02'),
(345, 'Create-detail', 'Todo', 10, 'Todo Create-detail 10', 20, '2021-10-01 23:11:37'),
(346, 'Edit-detail', 'Todo', 10, 'Todo Edit-detail 10', 21, '2021-10-01 23:13:21'),
(347, 'Delete', 'Todo', 9, 'Todo Delete 9', 21, '2021-10-01 23:15:20'),
(348, 'Edit', 'Project', 32, 'Project Edit 32', 21, '2021-10-08 14:08:26'),
(349, 'Merge', 'Project', 0, 'Project Merge New Entry', 21, '2021-10-08 17:11:27'),
(350, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-10-08 17:13:54'),
(351, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-10-08 17:19:51'),
(352, 'Merge', 'Project', 0, 'Project Merge New Entry', 21, '2021-10-08 17:30:45'),
(353, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-10-08 22:08:46'),
(354, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-10-08 22:10:12'),
(355, 'Edit', 'Project', 33, 'Project Edit 33', 21, '2021-10-08 22:10:51'),
(356, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-10-11 15:43:37'),
(357, 'Create-detail', 'Todo', 20, 'Todo Create-detail 20', 21, '2021-10-12 19:42:08'),
(358, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-10-12 20:10:14'),
(359, 'Delete', 'Todo', 21, 'Todo Delete 21', 21, '2021-10-12 20:35:43'),
(360, 'Create', 'Todo', 0, 'Todo Create New Entry', 21, '2021-10-12 20:35:57'),
(361, 'Delete', 'Todo', 22, 'Todo Delete 22', 21, '2021-10-12 20:36:01'),
(362, 'Edit', 'Project', 33, 'Project Edit 33', 21, '2021-10-12 20:58:42'),
(363, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-10-12 21:34:56'),
(364, 'Create', 'Todo', 0, 'Todo Create New Entry', 20, '2021-10-18 22:42:13'),
(365, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 21, '2021-10-19 18:16:34'),
(366, 'Edit', 'Project', 15, 'Project Edit 15', 21, '2021-10-19 18:18:22'),
(367, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-10-19 19:00:56'),
(368, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-10-19 19:00:57'),
(369, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-10-19 19:07:33'),
(370, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-10-19 19:08:18'),
(371, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-10-19 19:09:37'),
(372, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-10-19 19:10:27'),
(373, 'Edit', 'Pegawai', 26, 'Pegawai Edit 26', 26, '2021-10-19 19:14:35'),
(374, 'Edit', 'Pegawai', 26, 'Pegawai Edit 26', 26, '2021-10-19 19:15:10'),
(375, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-10-19 19:19:25'),
(376, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-10-19 19:20:10'),
(377, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-10-19 19:23:18'),
(378, 'Edit', 'Pegawai', 15, 'Pegawai Edit 15', 15, '2021-10-19 19:38:30'),
(379, 'Edit', 'Pegawai', 26, 'Pegawai Edit 26', 26, '2021-10-19 20:07:51'),
(380, 'Edit', 'Pegawai', 26, 'Pegawai Edit 26', 26, '2021-10-19 20:19:50'),
(381, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 21, '2021-10-23 13:39:59'),
(382, 'Edit', 'Pegawai', 27, 'Pegawai Edit 27', 21, '2021-10-23 13:40:19'),
(383, 'Create', 'Jabatan', 0, 'Jabatan Create New Entry', 21, '2021-10-23 13:59:16'),
(384, 'Create', 'Todo', 0, 'Todo Create New Entry', 21, '2021-10-25 07:44:24'),
(385, 'Create', 'Todo', 0, 'Todo Create New Entry', 21, '2021-10-25 07:47:11'),
(386, 'Delete', 'Todo', 24, 'Todo Delete 24', 21, '2021-10-25 08:31:15'),
(387, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-10-25 08:59:58'),
(388, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-10-25 09:09:35'),
(389, 'Edit', 'Project', 33, 'Project Edit 33', 20, '2021-11-09 20:47:14'),
(390, 'Edit', 'Project', 19, 'Project Edit 19', 21, '2021-11-09 21:29:01'),
(391, 'Delete', 'Todo', 25, 'Todo Delete 25', 21, '2021-11-12 18:22:47'),
(392, 'Delete', 'Todo', 6, 'Todo Delete 6', 21, '2021-11-12 18:22:50'),
(393, 'Delete', 'Todo', 20, 'Todo Delete 20', 21, '2021-11-12 18:22:57'),
(394, 'Delete', 'Todo', 23, 'Todo Delete 23', 21, '2021-11-12 18:23:09'),
(395, 'Create', 'Todo', 0, 'Todo Create New Entry', 21, '2021-11-12 18:26:53'),
(396, 'Create', 'Pegawai', 0, 'Pegawai Create New Entry', 21, '2021-11-15 06:49:40'),
(397, 'Edit', 'Pegawai', 28, 'Pegawai Edit 28', 28, '2021-11-15 06:52:31'),
(398, 'Edit', 'Project', 29, 'Project Edit 29', 21, '2021-11-15 06:55:30'),
(399, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-11-18 11:53:46'),
(400, 'Create', 'Project', 0, 'Project Create New Entry', 28, '2021-11-22 20:38:13'),
(401, 'Edit', 'Project', 40, 'Project Edit 40', 21, '2021-11-22 20:41:44'),
(402, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:45:23'),
(403, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:46:37'),
(404, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:47:06'),
(405, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:47:32'),
(406, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:48:33'),
(407, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:48:57'),
(408, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:50:00'),
(409, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 28, '2021-11-22 20:52:12'),
(410, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 28, '2021-11-22 20:52:15'),
(411, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 28, '2021-11-22 20:52:16'),
(412, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 28, '2021-11-22 20:52:24'),
(413, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 28, '2021-11-22 20:52:31'),
(414, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:53:45'),
(415, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:54:45'),
(416, 'Payment', 'Project', 0, 'Project Payment New Entry', 28, '2021-11-22 20:55:31'),
(417, 'Edit', 'Project', 40, 'Project Edit 40', 20, '2021-11-22 21:01:52'),
(418, 'Edit', 'Pegawai', 28, 'Pegawai Edit 28', 28, '2021-11-22 22:00:48'),
(419, 'Edit', 'Pegawai', 28, 'Pegawai Edit 28', 28, '2021-11-22 22:00:52'),
(420, 'Edit', 'Project', 23, 'Project Edit 23', 21, '2021-11-23 13:05:50'),
(421, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-12-21 14:02:43'),
(422, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-12-21 14:02:47'),
(423, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-12-21 14:02:50'),
(424, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-12-21 14:02:53'),
(425, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-12-21 14:02:56'),
(426, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-12-21 14:02:59'),
(427, 'Payment_delete', 'Project', 0, 'Project Payment_delete ', 21, '2021-12-21 14:03:01'),
(428, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-12-21 14:04:06'),
(429, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-12-26 12:40:35'),
(430, 'Edit', 'Project', 32, 'Project Edit 32', 21, '2021-12-26 12:41:25'),
(431, 'Create', 'Kategori', 0, 'Kategori Create New Entry', 21, '2022-01-26 20:30:14'),
(432, 'Create', 'Project', 0, 'Project Create New Entry', 28, '2022-01-26 20:33:35'),
(433, 'Edit', 'Project', 41, 'Project Edit 41', 28, '2022-01-26 20:43:27'),
(434, 'Edit', 'Project', 41, 'Project Edit 41', 28, '2022-01-26 20:44:24'),
(435, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-02-10 17:55:40'),
(436, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-02-10 17:56:03'),
(437, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-03-15 11:42:14'),
(438, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-03-15 11:42:35'),
(439, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-03-15 11:42:51'),
(440, 'Edit', 'Project', 39, 'Project Edit 39', 20, '2022-04-28 11:47:13'),
(441, 'Edit', 'Project', 42, 'Project Edit 42', 20, '2022-04-28 11:47:38'),
(442, 'Edit', 'Project', 32, 'Project Edit 32', 20, '2022-04-28 11:47:50'),
(443, 'Edit', 'Project', 23, 'Project Edit 23', 20, '2022-04-28 11:48:03'),
(444, 'Edit', 'Project', 33, 'Project Edit 33', 20, '2022-04-28 11:48:16'),
(445, 'Edit', 'Project', 32, 'Project Edit 32', 20, '2022-04-28 11:48:30'),
(446, 'Edit', 'Project', 23, 'Project Edit 23', 20, '2022-04-28 11:48:39'),
(447, 'Edit', 'Project', 20, 'Project Edit 20', 20, '2022-04-28 11:49:11'),
(448, 'Edit', 'Project', 26, 'Project Edit 26', 20, '2022-04-28 11:49:33'),
(449, 'Edit', 'Project', 27, 'Project Edit 27', 20, '2022-04-28 11:49:45'),
(450, 'Edit', 'Project', 29, 'Project Edit 29', 20, '2022-04-28 11:49:59'),
(451, 'Edit', 'Project', 29, 'Project Edit 29', 20, '2022-04-28 11:50:46'),
(452, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-04-28 11:51:15'),
(453, 'Create', 'Project', 0, 'Project Create New Entry', 28, '2022-05-25 19:51:50'),
(454, 'Edit', 'Project', 29, 'Project Edit 29', 28, '2022-05-25 19:52:37'),
(455, 'Edit', 'Project', 40, 'Project Edit 40', 28, '2022-05-25 19:53:47'),
(456, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-05-30 14:16:08'),
(457, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-05-30 14:16:33'),
(458, 'Edit', 'Project', 44, 'Project Edit 44', 20, '2022-05-30 14:17:06'),
(459, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-05-30 14:17:36'),
(460, 'Edit', 'Project', 45, 'Project Edit 45', 20, '2022-05-30 14:17:55'),
(461, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-05-30 14:18:39'),
(462, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-05-30 14:18:51'),
(463, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-05-30 14:19:07'),
(464, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-06-12 21:38:12'),
(465, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-06-12 21:38:39'),
(466, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-06-12 21:41:29'),
(467, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-06-12 21:42:35'),
(468, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-06-12 21:42:51'),
(469, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-06-12 21:43:43'),
(470, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-06-26 20:25:08'),
(471, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-06-26 20:25:47'),
(472, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-06-26 20:26:19'),
(473, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-06-26 20:26:30'),
(474, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-07-07 11:06:59'),
(475, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-07 11:07:13'),
(476, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-07 11:07:42'),
(477, 'Create', 'Project', 0, 'Project Create New Entry', 20, '2022-07-07 11:09:38'),
(478, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-07 11:09:48'),
(479, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-15 18:48:34'),
(480, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-15 18:50:39'),
(481, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-15 18:50:50'),
(482, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-15 18:53:16'),
(483, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-18 00:34:17'),
(484, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-07-18 00:35:08'),
(485, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-08-04 19:36:33'),
(486, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-08-04 19:37:13'),
(487, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-08-20 16:42:00'),
(488, 'Edit', 'Project', 51, 'Project Edit 51', 20, '2022-08-30 14:32:35'),
(489, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-08-30 14:35:32'),
(490, 'Payment', 'Project', 0, 'Project Payment New Entry', 20, '2022-09-05 13:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `log_external`
--

CREATE TABLE `log_external` (
  `id` int(1) NOT NULL,
  `signature` text NOT NULL,
  `json` text NOT NULL,
  `url` text NOT NULL,
  `info` text NOT NULL,
  `ip` text NOT NULL,
  `geoloc` text NOT NULL,
  `timestamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_external`
--

INSERT INTO `log_external` (`id`, `signature`, `json`, `url`, `info`, `ip`, `geoloc`, `timestamp`) VALUES
(1, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.3038%22%2C%22longitude%22%3A%22107.3103%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Karawang%22%2C%22request%22%3A%22110.136.114.36%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"110.136.114.36\",\"geoloc\":\"-6.3038,107.3103\",\"timestamp\":\"2021-10-21 08:44:40\"}', 'http://dtech.web.id/borang/dashboard', 'access', '110.136.114.36', '-6.3038,107.3103', '2021-10-21 08:44:40'),
(2, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.3038%22%2C%22longitude%22%3A%22107.3103%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Karawang%22%2C%22request%22%3A%22110.136.114.36%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"110.136.114.36\",\"geoloc\":\"-6.3038,107.3103\",\"timestamp\":\"2021-10-21 08:44:54\"}', 'http://dtech.web.id/borang/dashboard', 'access', '110.136.114.36', '-6.3038,107.3103', '2021-10-21 08:44:54'),
(3, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fspmi%22%2C%22latitude%22%3A%22-6.3038%22%2C%22longitude%22%3A%22107.3103%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Karawang%22%2C%22request%22%3A%22110.136.114.36%22%7D\"],\"url\":\"http://dtech.web.id/borang/spmi\",\"info\":\"access\",\"ip\":\"110.136.114.36\",\"geoloc\":\"-6.3038,107.3103\",\"timestamp\":\"2021-10-21 08:44:57\"}', 'http://dtech.web.id/borang/spmi', 'access', '110.136.114.36', '-6.3038,107.3103', '2021-10-21 08:44:57'),
(4, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fspmi%2Fsubstandar%2F34%22%2C%22latitude%22%3A%22-6.3038%22%2C%22longitude%22%3A%22107.3103%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Karawang%22%2C%22request%22%3A%22110.136.114.36%22%7D\"],\"url\":\"http://dtech.web.id/borang/spmi/substandar/34\",\"info\":\"access\",\"ip\":\"110.136.114.36\",\"geoloc\":\"-6.3038,107.3103\",\"timestamp\":\"2021-10-21 08:45:00\"}', 'http://dtech.web.id/borang/spmi/substandar/34', 'access', '110.136.114.36', '-6.3038,107.3103', '2021-10-21 08:45:00'),
(5, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fspmi%2Fdatasub%2F34%2F105%22%2C%22latitude%22%3A%22-6.3038%22%2C%22longitude%22%3A%22107.3103%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Karawang%22%2C%22request%22%3A%22110.136.114.36%22%7D\"],\"url\":\"http://dtech.web.id/borang/spmi/datasub/34/105\",\"info\":\"access\",\"ip\":\"110.136.114.36\",\"geoloc\":\"-6.3038,107.3103\",\"timestamp\":\"2021-10-21 08:45:02\"}', 'http://dtech.web.id/borang/spmi/datasub/34/105', 'access', '110.136.114.36', '-6.3038,107.3103', '2021-10-21 08:45:02'),
(6, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:05:40\"}', 'http://dtech.web.id/borang/dashboard', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:05:40'),
(7, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/apps_menu\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:06:26\"}', 'http://dtech.web.id/borang/master/apps_menu', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:06:26'),
(8, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/apps_menu\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:06:28\"}', 'http://dtech.web.id/borang/master/apps_menu', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:06:28'),
(9, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fapps_menu%2Fedit%2F8%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/apps_menu/edit/8\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:06:37\"}', 'http://dtech.web.id/borang/master/apps_menu/edit/8', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:06:37'),
(10, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/apps_menu\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:06:39\"}', 'http://dtech.web.id/borang/master/apps_menu', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:06:39'),
(11, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:06:49\"}', 'http://dtech.web.id/borang/dashboard', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:06:49'),
(12, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fakreditasi%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/akreditasi\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:09:04\"}', 'http://dtech.web.id/borang/akreditasi', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:09:04'),
(13, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-23 13:18:46\"}', 'http://dtech.web.id/borang/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-23 13:18:46'),
(14, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/apps_menu\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-23 13:19:00\"}', 'http://dtech.web.id/borang/master/apps_menu', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-23 13:19:00'),
(15, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fapps_menu%2Fedit%2F8%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/apps_menu/edit/8\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-23 13:19:32\"}', 'http://dtech.web.id/borang/master/apps_menu/edit/8', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-23 13:19:32'),
(16, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fakreditasi%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.216.95%22%7D\"],\"url\":\"http://dtech.web.id/borang/akreditasi\",\"info\":\"access\",\"ip\":\"114.124.216.95\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-23 13:59:49\"}', 'http://dtech.web.id/borang/akreditasi', 'access', '114.124.216.95', '-6.1741,106.8296', '2021-10-23 13:59:49'),
(17, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-24 00:27:18\"}', 'http://dtech.web.id/borang/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-24 00:27:18'),
(18, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.217.127%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"114.124.217.127\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-24 11:49:19\"}', 'http://dtech.web.id/borang/dashboard', 'access', '114.124.217.127', '-6.1741,106.8296', '2021-10-24 11:49:19'),
(19, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.193.30%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"114.124.193.30\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 04:39:12\"}', 'http://monev-unsada.my.id/dashboard', 'access', '114.124.193.30', '-6.1741,106.8296', '2021-10-25 04:39:12'),
(20, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.193.30%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu\",\"info\":\"access\",\"ip\":\"114.124.193.30\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 04:39:40\"}', 'http://monev-unsada.my.id/master/apps_menu', 'access', '114.124.193.30', '-6.1741,106.8296', '2021-10-25 04:39:40'),
(21, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%2Fcreate%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.193.30%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu/create\",\"info\":\"access\",\"ip\":\"114.124.193.30\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 04:40:55\"}', 'http://monev-unsada.my.id/master/apps_menu/create', 'access', '114.124.193.30', '-6.1741,106.8296', '2021-10-25 04:40:55'),
(22, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%2Fcreate%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.193.30%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu/create\",\"info\":\"access\",\"ip\":\"114.124.193.30\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 06:15:09\"}', 'http://monev-unsada.my.id/master/apps_menu/create', 'access', '114.124.193.30', '-6.1741,106.8296', '2021-10-25 06:15:09'),
(23, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22114.124.193.30%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu\",\"info\":\"access\",\"ip\":\"114.124.193.30\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 06:15:39\"}', 'http://monev-unsada.my.id/master/apps_menu', 'access', '114.124.193.30', '-6.1741,106.8296', '2021-10-25 06:15:39'),
(24, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%2Fcreate%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu/create\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:15:55\"}', 'http://monev-unsada.my.id/master/apps_menu/create', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:15:55'),
(25, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%2Fcreate%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu/create\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:21:55\"}', 'http://monev-unsada.my.id/master/apps_menu/create', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:21:55'),
(26, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:22:42\"}', 'http://monev-unsada.my.id/master/apps_menu', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:22:42'),
(27, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/apps_menu\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:22:49\"}', 'http://monev-unsada.my.id/master/apps_menu', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:22:49'),
(28, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:23:17\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:23:17'),
(29, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:23:31\"}', 'http://monev-unsada.my.id/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:23:31'),
(30, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:24:08\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:24:08'),
(31, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fmenu%2Finstrumen-penilaian%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/menu/instrumen-penilaian\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:24:53\"}', 'http://monev-unsada.my.id/master/menu/instrumen-penilaian', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:24:53'),
(32, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:25:19\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:25:19'),
(33, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:25:37\"}', 'http://monev-unsada.my.id/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:25:37'),
(34, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:25:54\"}', 'http://monev-unsada.my.id/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:25:54'),
(35, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:26:21\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:26:21'),
(36, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:26:30\"}', 'http://monev-unsada.my.id/role', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:26:30'),
(37, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:26:46\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:26:46'),
(38, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:26:56\"}', 'http://monev-unsada.my.id/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:26:56'),
(39, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:27:17\"}', 'http://monev-unsada.my.id/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:27:17'),
(40, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fmenu%2Finstrumen-penilaian%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/menu/instrumen-penilaian\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:27:23\"}', 'http://monev-unsada.my.id/master/menu/instrumen-penilaian', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:27:23'),
(41, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fmenu%2Finstrumen-penilaian%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/menu/instrumen-penilaian\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 06:28:17\"}', 'http://monev-unsada.my.id/master/menu/instrumen-penilaian', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 06:28:17'),
(42, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fmenu%2Finstrumen-penilaian%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/menu/instrumen-penilaian\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 08:27:49\"}', 'http://monev-unsada.my.id/master/menu/instrumen-penilaian', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 08:27:49'),
(43, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fmenu%2Finstrumen-penilaian%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/menu/instrumen-penilaian\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:30:41\"}', 'http://monev-unsada.my.id/master/menu/instrumen-penilaian', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:30:41'),
(44, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:33:03\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:33:03'),
(45, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:37:39\"}', 'http://dtech.web.id/borang/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:37:39'),
(46, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:39:32\"}', 'http://dtech.web.id/borang/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:39:32'),
(47, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%2Fcreate%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi/create\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:40:48\"}', 'http://dtech.web.id/borang/master/prodi/create', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:40:48'),
(48, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:40:56\"}', 'http://dtech.web.id/borang/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:40:56'),
(49, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%2Fcreate%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi/create\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:41:03\"}', 'http://dtech.web.id/borang/master/prodi/create', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:41:03'),
(50, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:41:23\"}', 'http://dtech.web.id/borang/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:41:23'),
(51, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%2Fedit%2F20%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi/edit/20\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:41:26\"}', 'http://dtech.web.id/borang/master/prodi/edit/20', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:41:26'),
(52, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:41:37\"}', 'http://dtech.web.id/borang/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:41:37'),
(53, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%2Fedit%2F20%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi/edit/20\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:42:13\"}', 'http://dtech.web.id/borang/master/prodi/edit/20', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:42:13'),
(54, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:42:18\"}', 'http://dtech.web.id/borang/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:42:18'),
(55, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fprodi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/prodi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:42:26\"}', 'http://dtech.web.id/borang/master/prodi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:42:26'),
(56, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:42:43\"}', 'http://dtech.web.id/borang/master/fakultas', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:42:43'),
(57, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fcreate%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/create\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:42:52\"}', 'http://dtech.web.id/borang/master/fakultas/create', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:42:52'),
(58, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:43:08\"}', 'http://dtech.web.id/borang/master/fakultas', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:43:08'),
(59, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fedit%2F7%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/edit/7\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:43:10\"}', 'http://dtech.web.id/borang/master/fakultas/edit/7', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:43:10'),
(60, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:43:16\"}', 'http://dtech.web.id/borang/master/fakultas', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:43:16'),
(61, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:43:31\"}', 'http://dtech.web.id/borang/master/fakultas', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:43:31'),
(62, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:43:39\"}', 'http://dtech.web.id/borang/master/menu/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:43:39'),
(63, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:44:06\"}', 'http://dtech.web.id/borang/master/menu/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:44:06'),
(64, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:44:15\"}', 'http://dtech.web.id/borang/master/menu/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:44:15'),
(65, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:45:04\"}', 'http://dtech.web.id/borang/master/menu/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:45:04'),
(66, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:50:10\"}', 'http://dtech.web.id/borang/master/menu/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:50:10'),
(67, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:51:24\"}', 'http://dtech.web.id/borang/master/menu/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:51:24'),
(68, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:53:58\"}', 'http://dtech.web.id/borang/master/menu/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:53:58'),
(69, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:54:49\"}', 'http://dtech.web.id/borang/master/menu/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:54:49'),
(70, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:55:02\"}', 'http://dtech.web.id/borang/master/menu/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:55:02'),
(71, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fmenu%2Finstrumen-penilaian%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/menu/instrumen-penilaian\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:58:05\"}', 'http://dtech.web.id/borang/master/menu/instrumen-penilaian', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:58:05'),
(72, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:58:50\"}', 'http://dtech.web.id/borang/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:58:50');
INSERT INTO `log_external` (`id`, `signature`, `json`, `url`, `info`, `ip`, `geoloc`, `timestamp`) VALUES
(73, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fami%2Fdata%2F25%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/ami/data/25\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 09:59:21\"}', 'http://dtech.web.id/borang/ami/data/25', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 09:59:21'),
(74, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fami%2Fdata%2F25%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/ami/data/25\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:00:10\"}', 'http://dtech.web.id/borang/ami/data/25', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:00:10'),
(75, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://dtech.web.id/borang/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:01:42\"}', 'http://dtech.web.id/borang/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:01:42'),
(76, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:05:36\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:05:36'),
(77, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2F2021%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/2021\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:05:45\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/2021', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:05:45'),
(78, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:19:26\"}', 'http://monev-unsada.my.id/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:19:26'),
(79, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fspmi%2Fsubstandar%2F34%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/spmi/substandar/34\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:19:39\"}', 'http://monev-unsada.my.id/spmi/substandar/34', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:19:39'),
(80, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fmenu%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/menu/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:19:47\"}', 'http://monev-unsada.my.id/master/menu/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:19:47'),
(81, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fmaster%2Fmenu%2Fspmi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/master/menu/spmi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:20:46\"}', 'http://monev-unsada.my.id/master/menu/spmi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:20:46'),
(82, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:22:02\"}', 'http://monev-unsada.my.id/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:22:02'),
(83, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fakreditasi%2Fdokumen%2F32%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/akreditasi/dokumen/32\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:22:08\"}', 'http://monev-unsada.my.id/akreditasi/dokumen/32', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:22:08'),
(84, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fakreditasi%2Fdokumen%2F32%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/akreditasi/dokumen/32\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:22:30\"}', 'http://monev-unsada.my.id/akreditasi/dokumen/32', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:22:30'),
(85, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:24:35\"}', 'http://monev-unsada.my.id/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:24:35'),
(86, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%2F11%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data/11\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:33:09\"}', 'http://monev-unsada.my.id/ami/data/11', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:33:09'),
(87, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%2F11%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data/11\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:33:53\"}', 'http://monev-unsada.my.id/ami/data/11', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:33:53'),
(88, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%2F11%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data/11\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:34:18\"}', 'http://monev-unsada.my.id/ami/data/11', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:34:18'),
(89, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:34:49\"}', 'http://monev-unsada.my.id/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:34:49'),
(90, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2F2021%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/2021\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:34:55\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/2021', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:34:55'),
(91, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:35:02\"}', 'http://monev-unsada.my.id/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:35:02'),
(92, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fakreditasi%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/akreditasi\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:35:40\"}', 'http://monev-unsada.my.id/akreditasi', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:35:40'),
(93, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%2F11%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data/11\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:35:45\"}', 'http://monev-unsada.my.id/ami/data/11', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:35:45'),
(94, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:36:53\"}', 'http://monev-unsada.my.id/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:36:53'),
(95, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%2F28%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data/28\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:37:14\"}', 'http://monev-unsada.my.id/ami/data/28', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:37:14'),
(96, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:37:32\"}', 'http://monev-unsada.my.id/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:37:32'),
(97, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:38:05\"}', 'http://monev-unsada.my.id/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:38:05'),
(98, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Fdata%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/data\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:39:12\"}', 'http://monev-unsada.my.id/ami/data', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:39:12'),
(99, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2F2021%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/2021\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:40:57\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/2021', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:40:57'),
(100, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2F2021%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/2021\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:42:40\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/2021', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:42:40'),
(101, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2F2021%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/2021\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:45:08\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/2021', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:45:08'),
(102, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2Fdetail%2F1%2F2021%2F5%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/detail/1/2021/5\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:46:02\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/detail/1/2021/5', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:46:02'),
(103, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2F2021%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/2021\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:46:37\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/2021', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:46:37'),
(104, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fusers%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/users\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:46:46\"}', 'http://monev-unsada.my.id/users', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:46:46'),
(105, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fusers%2Fedit%2F19%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/users/edit/19\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:47:51\"}', 'http://monev-unsada.my.id/users/edit/19', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:47:51'),
(106, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fusers%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/users\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:48:05\"}', 'http://monev-unsada.my.id/users', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:48:05'),
(107, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fusers%2Fedit%2F19%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/users/edit/19\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:48:09\"}', 'http://monev-unsada.my.id/users/edit/19', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:48:09'),
(108, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fusers%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/users\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:48:21\"}', 'http://monev-unsada.my.id/users', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:48:21'),
(109, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 10:49:07\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 10:49:07'),
(110, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%2236.70.219.237%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"36.70.219.237\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 11:09:26\"}', 'http://monev-unsada.my.id/dashboard', 'access', '36.70.219.237', '-6.1741,106.8296', '2021-10-25 11:09:26'),
(111, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%2236.70.219.237%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"36.70.219.237\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 11:09:44\"}', 'http://monev-unsada.my.id/dashboard', 'access', '36.70.219.237', '-6.1741,106.8296', '2021-10-25 11:09:44'),
(112, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fspmi%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%2236.70.219.237%22%7D\"],\"url\":\"http://monev-unsada.my.id/spmi\",\"info\":\"access\",\"ip\":\"36.70.219.237\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 11:09:48\"}', 'http://monev-unsada.my.id/spmi', 'access', '36.70.219.237', '-6.1741,106.8296', '2021-10-25 11:09:48'),
(113, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fspmi%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%2236.70.219.237%22%7D\"],\"url\":\"http://monev-unsada.my.id/spmi\",\"info\":\"access\",\"ip\":\"36.70.219.237\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-10-25 11:10:01\"}', 'http://monev-unsada.my.id/spmi', 'access', '36.70.219.237', '-6.1741,106.8296', '2021-10-25 11:10:01'),
(114, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fami%2Finstrumen-penilaian%2F2021%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/ami/instrumen-penilaian/2021\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:26:13\"}', 'http://monev-unsada.my.id/ami/instrumen-penilaian/2021', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:26:13'),
(115, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:26:19\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:26:19'),
(116, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:26:42\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:26:42'),
(117, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:26:56\"}', 'http://monev-unsada.my.id/role', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:26:56'),
(118, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%2Fcreate%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role/create\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:28:24\"}', 'http://monev-unsada.my.id/role/create', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:28:24'),
(119, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:28:39\"}', 'http://monev-unsada.my.id/role', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:28:39'),
(120, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%2Fedit%2F15%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role/edit/15\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:28:46\"}', 'http://monev-unsada.my.id/role/edit/15', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:28:46'),
(121, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%2Fedit%2F15%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role/edit/15\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:29:02\"}', 'http://monev-unsada.my.id/role/edit/15', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:29:02'),
(122, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%2Fedit%2F15%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role/edit/15\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:32:20\"}', 'http://monev-unsada.my.id/role/edit/15', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:32:20'),
(123, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:32:44\"}', 'http://monev-unsada.my.id/role', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:32:44'),
(124, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:32:54\"}', 'http://monev-unsada.my.id/role', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:32:54'),
(125, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%2Fedit%2F7%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role/edit/7\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:36:35\"}', 'http://monev-unsada.my.id/role/edit/7', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:36:35'),
(126, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:37:42\"}', 'http://monev-unsada.my.id/role', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:37:42'),
(127, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Frole%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/role\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 11:54:30\"}', 'http://monev-unsada.my.id/role', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 11:54:30'),
(128, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 12:32:35\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 12:32:35'),
(129, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fmonev-unsada.my.id%2Fdashboard%22%2C%22latitude%22%3A%22-6.5945%22%2C%22longitude%22%3A%22106.789%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bogor%22%2C%22request%22%3A%22158.140.175.186%22%7D\"],\"url\":\"http://monev-unsada.my.id/dashboard\",\"info\":\"access\",\"ip\":\"158.140.175.186\",\"geoloc\":\"-6.5945,106.789\",\"timestamp\":\"2021-10-25 12:32:50\"}', 'http://monev-unsada.my.id/dashboard', 'access', '158.140.175.186', '-6.5945,106.789', '2021-10-25 12:32:50'),
(130, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.162.188%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"180.244.162.188\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-10-26 13:11:03\"}', 'http://dtech.web.id/borang/dashboard', 'access', '180.244.162.188', '-6.2352,106.9922', '2021-10-26 13:11:03'),
(131, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Frole%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.162.188%22%7D\"],\"url\":\"http://dtech.web.id/borang/role\",\"info\":\"access\",\"ip\":\"180.244.162.188\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-10-26 13:11:06\"}', 'http://dtech.web.id/borang/role', 'access', '180.244.162.188', '-6.2352,106.9922', '2021-10-26 13:11:06'),
(132, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Frole%2Fedit%2F14%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.162.188%22%7D\"],\"url\":\"http://dtech.web.id/borang/role/edit/14\",\"info\":\"access\",\"ip\":\"180.244.162.188\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-10-26 13:11:10\"}', 'http://dtech.web.id/borang/role/edit/14', 'access', '180.244.162.188', '-6.2352,106.9922', '2021-10-26 13:11:10'),
(133, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Frole%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.162.188%22%7D\"],\"url\":\"http://dtech.web.id/borang/role\",\"info\":\"access\",\"ip\":\"180.244.162.188\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-10-26 13:11:13\"}', 'http://dtech.web.id/borang/role', 'access', '180.244.162.188', '-6.2352,106.9922', '2021-10-26 13:11:13'),
(134, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.1741%22%2C%22longitude%22%3A%22106.8296%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22Jakarta%22%2C%22city%22%3A%22Jakarta%22%2C%22request%22%3A%22116.206.29.50%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"116.206.29.50\",\"geoloc\":\"-6.1741,106.8296\",\"timestamp\":\"2021-11-13 15:00:17\"}', 'http://dtech.web.id/borang/dashboard', 'access', '116.206.29.50', '-6.1741,106.8296', '2021-11-13 15:00:17'),
(135, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fdashboard%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/dashboard\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:10:20\"}', 'http://dtech.web.id/borang/dashboard', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:10:20'),
(136, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fspmi%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/spmi\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:10:32\"}', 'http://dtech.web.id/borang/spmi', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:10:32'),
(137, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fakreditasi%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/akreditasi\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:10:41\"}', 'http://dtech.web.id/borang/akreditasi', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:10:41'),
(138, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fakreditasi%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/akreditasi\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:10:58\"}', 'http://dtech.web.id/borang/akreditasi', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:10:58'),
(139, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fakreditasi%2Fdokumen%2F30%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/akreditasi/dokumen/30\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:02\"}', 'http://dtech.web.id/borang/akreditasi/dokumen/30', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:02'),
(140, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Fapps_menu%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/apps_menu\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:12\"}', 'http://dtech.web.id/borang/master/apps_menu', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:12'),
(141, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:19\"}', 'http://dtech.web.id/borang/master/fakultas', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:19'),
(142, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fcreate%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/create\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:22\"}', 'http://dtech.web.id/borang/master/fakultas/create', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:22'),
(143, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:27\"}', 'http://dtech.web.id/borang/master/fakultas', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:27'),
(144, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fedit%2F6%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/edit/6\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:28\"}', 'http://dtech.web.id/borang/master/fakultas/edit/6', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:28'),
(145, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:31\"}', 'http://dtech.web.id/borang/master/fakultas', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:31');
INSERT INTO `log_external` (`id`, `signature`, `json`, `url`, `info`, `ip`, `geoloc`, `timestamp`) VALUES
(146, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fedit%2F4%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/edit/4\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:33\"}', 'http://dtech.web.id/borang/master/fakultas/edit/4', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:33'),
(147, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fedit%2F3%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/edit/3\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:11:39\"}', 'http://dtech.web.id/borang/master/fakultas/edit/3', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:11:39'),
(148, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fedit%2F3%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/edit/3\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:12:02\"}', 'http://dtech.web.id/borang/master/fakultas/edit/3', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:12:02'),
(149, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', '{\"json\":[\"%7B%22currenturl%22%3A%22http%3A%2F%2Fdtech.web.id%2Fborang%2Fmaster%2Ffakultas%2Fedit%2F6%22%2C%22latitude%22%3A%22-6.2352%22%2C%22longitude%22%3A%22106.9922%22%2C%22continentName%22%3A%22Asia%22%2C%22countryName%22%3A%22Indonesia%22%2C%22regionName%22%3A%22West%20Java%22%2C%22city%22%3A%22Bekasi%22%2C%22request%22%3A%22180.244.174.49%22%7D\"],\"url\":\"http://dtech.web.id/borang/master/fakultas/edit/6\",\"info\":\"access\",\"ip\":\"180.244.174.49\",\"geoloc\":\"-6.2352,106.9922\",\"timestamp\":\"2021-11-30 15:12:07\"}', 'http://dtech.web.id/borang/master/fakultas/edit/6', 'access', '180.244.174.49', '-6.2352,106.9922', '2021-11-30 15:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(1) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `tempatlahir` varchar(50) NOT NULL,
  `tanggallahir` date NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `img` text DEFAULT NULL,
  `jabatan` int(1) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `created_by` int(1) NOT NULL,
  `updated_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama_pegawai`, `tempatlahir`, `tanggallahir`, `tel`, `email`, `alamat`, `img`, `jabatan`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Colonel Sanders', 'Kentuky', '1907-01-01', '14022', 'kfc@kfcindonesia.com', '', '1598439309.jpeg', 11, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-22 10:17:54'),
(15, 'Jamal Bahri', 'Bojong Gede', '1989-11-06', '089891029922', 'jamal@mailinator.com', '', NULL, 0, 0, 1, 15, '2021-04-19 09:49:04', '2021-10-19 19:38:30'),
(20, 'Denis Ahmad', 'Bekasi', '1998-11-06', '089653496918', 'denis@dtech.web.id', '', NULL, 11, 1, 0, 0, '2021-04-22 08:31:01', '2021-04-22 08:31:01'),
(21, 'Mitchell Marcel', 'Bekasi', '1998-03-16', '08980780853', 'mitchell@dtech.web.id', '', NULL, 11, 1, 0, 0, '2021-04-22 08:32:43', '2021-04-22 08:32:43'),
(22, 'Siti Maspupah', 'Jakarta', '2021-01-01', '087824529024', 'sitimaspupah@dtech.web.id', '', NULL, 12, 1, 0, 0, '2021-04-22 08:34:39', '2021-04-22 08:34:39'),
(23, 'Nurul Azmi', '', '1997-11-23', '087875176688', 'nurul.azmi@dtech.web.id', '', NULL, 11, 1, 21, 21, '2021-05-10 15:03:28', '2021-05-26 16:31:25'),
(24, 'Choirul Satryo Utomo', 'Jakarta', '2021-06-21', '082114854303', 'tomo@dtech.web.id', '', NULL, 11, 1, 21, 21, '2021-06-21 11:29:40', '2021-06-21 11:29:40'),
(25, 'Rachma Adzima Maulida', 'Bekasi', '2001-04-23', '085817922089', 'rachmadzima4@gmail.com', '', NULL, 11, 0, 21, 25, '2021-08-04 18:30:05', '2021-10-19 19:39:57'),
(26, 'Elin Marliana', 'Bogor', '1999-07-22', '085156496378', 'mrlelin9@gmail.com', '', NULL, 11, 0, 21, 26, '2021-10-19 18:16:34', '2021-10-25 22:58:32'),
(27, 'Bagas Aji Pangestu', '', '0000-00-00', '', '', '', NULL, 11, 1, 21, 21, '2021-10-23 13:39:59', '2021-10-23 13:40:19'),
(28, 'Fanny Wibianka', 'Jakarta', '1999-07-11', '0895388610835', 'fwibianka1@gmail.com', '', NULL, 14, 1, 21, 28, '2021-11-15 06:49:40', '2021-11-22 22:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `pettycash`
--

CREATE TABLE `pettycash` (
  `id` int(1) NOT NULL,
  `flow` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `payment_date` date NOT NULL,
  `id_project` int(1) DEFAULT NULL,
  `subject` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `amount` varchar(50) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0,
  `create_by` int(1) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(1) NOT NULL,
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pettycash`
--

INSERT INTO `pettycash` (`id`, `flow`, `payment_type`, `payment_date`, `id_project`, `subject`, `description`, `amount`, `is_delete`, `create_by`, `create_at`, `update_by`, `update_at`) VALUES
(1, 'income', 'transfer', '2021-04-21', 1, 'PO Masuk ', 'Coolant', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-19 19:10:51'),
(2, 'income', 'transfer', '2021-04-22', 3, 'Pembayaran DP', '', '500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(3, 'income', 'transfer', '2021-04-22', 4, 'Pembayaran DP', '', '250000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(4, 'income', 'transfer', '2021-04-22', 5, 'Pembayaran DP', '', '500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(5, 'income', 'transfer', '2021-04-22', 6, 'Pembayaran DP', '', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(6, 'income', 'transfer', '2021-04-22', 7, 'Pembayaran DP', '', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(7, 'income', 'transfer', '2021-04-22', 8, 'Pembayaran DP', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(8, 'income', 'transfer', '2021-04-22', 9, 'Pembayaran DP', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(9, 'income', 'transfer', '2021-04-22', 10, 'Pembayaran DP', '', '1100000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(10, 'income', 'transfer', '2021-04-22', 11, 'Pembayaran DP', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(11, 'income', 'transfer', '2021-04-22', 12, 'Pembayaran DP', '', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(12, 'income', 'transfer', '2021-04-22', 13, 'Pembayaran DP', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(13, 'income', 'transfer', '2021-04-25', 18, 'DP - Cash', 'Cash', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(14, 'income', 'transfer', '2021-05-05', 13, 'nambah', '', '900000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(15, 'income', 'transfer', '2021-05-17', 20, 'DP - TF', 'dp skripsi pembayaran pertama', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(16, 'income', 'transfer', '2021-05-25', 22, 'DP - TF', '', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(17, 'income', 'transfer', '2021-05-28', 11, 'Pelunasan', 'Pelunasan', '2200000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(18, 'income', 'transfer', '2021-05-31', 23, 'DP', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(19, 'income', 'transfer', '2021-06-07', 8, 'Pembayaran kedua', 'Pembayaran kedua', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(20, 'income', 'transfer', '2021-06-12', 24, 'DP', 'TF ke dana Micel', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(21, 'income', 'transfer', '2021-06-15', 25, 'DP Pembayaran', 'DP Pembayaran', '1600000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(22, 'income', 'transfer', '2021-06-15', 26, 'Pembayaran DP', 'Pembayaran DP', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(23, 'income', 'transfer', '2021-06-20', 13, 'Cicilan skripsi', '', '600000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(24, 'income', 'transfer', '2021-06-21', 4, 'wkwk masing DP', '', '400000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(25, 'income', 'transfer', '2021-07-01', 3, 'Cicilan', '', '1200000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(26, 'income', 'transfer', '2021-07-01', 5, 'Cicilan', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(27, 'income', 'transfer', '2021-07-01', 4, 'Pembayaran Cicilan', '', '500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(28, 'income', 'transfer', '2021-07-23', 4, 'Pembayaran Cicilan', 'Bank Mandiri', '450000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(29, 'income', 'transfer', '2021-07-30', 7, 'Cicilan agy', 'ada tip 200 buat beli ikan', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(30, 'income', 'transfer', '2021-08-04', 5, 'Cicilan agy', '', '700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(31, 'income', 'transfer', '2021-08-05', 3, 'Cicilan agy', '', '700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(32, 'income', 'transfer', '2021-08-05', 10, 'Cicilan agy', '', '1100000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(33, 'income', 'transfer', '2021-08-05', 31, 'DP - Cash', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(34, 'income', 'transfer', '2021-08-15', 8, 'Pelunasan', '', '800000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(35, 'income', 'transfer', '2021-08-16', 22, 'Pelunasan', 'Via Bank Mandiri', '1700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(36, 'income', 'transfer', '2021-08-16', 7, 'Pelunasan', '', '600000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(37, 'income', 'transfer', '2021-08-16', 7, 'Pelunasan', 'Baru bener nih lunas', '100000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(38, 'income', 'transfer', '2021-07-18', 28, 'DP - TF', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(39, 'income', 'transfer', '2021-08-17', 28, 'Cicilan agy', '', '500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(40, 'income', 'transfer', '2021-08-18', 9, 'Pelunasan', '', '2200000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(41, 'income', 'transfer', '2021-08-19', 6, 'Pelunasan', '', '1700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(42, 'income', 'transfer', '2021-05-31', 27, 'DP', '', '1500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(43, 'income', 'transfer', '2021-08-28', 4, 'Cicilan berikutnya', '', '700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(44, 'income', 'transfer', '2021-08-28', 4, 'Pembayaran selanjutnya', '', '600000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(45, 'income', 'transfer', '2021-08-30', 26, 'Cicilan agy', '', '700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(46, 'income', 'transfer', '2021-08-31', 5, 'Pelunasan', '', '700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(47, 'expense', 'transfer', '2021-08-29', 30, 'Pelunasan', '', '200000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:49:21'),
(48, 'income', 'transfer', '2021-08-28', 18, 'Pelunasan', '', '1700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(49, 'income', 'transfer', '2021-09-06', 20, 'Cicilan agy', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(50, 'income', 'transfer', '2021-09-10', 29, 'Biaya Pembuatan Website', '', '4000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-09 18:30:14'),
(51, 'income', 'transfer', '2021-09-03', 10, 'Pelunasan', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(53, 'income', 'transfer', '2021-09-13', 13, 'Cicilan agy', '', '250000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(54, 'income', 'transfer', '2021-09-15', 32, 'DP - TF', '', '500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(55, 'income', 'transfer', '2021-09-23', 28, 'Pelunasan', '', '1000000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(56, 'income', 'transfer', '2021-09-28', 12, 'Pelunasan', 'TF', '1700000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(57, 'income', 'transfer', '2021-09-30', 3, 'Pelunasan', '', '500000', 0, 21, '2021-10-08 17:11:27', 21, '2021-10-08 17:30:45'),
(58, 'income', 'transfer', '2021-10-08', 3, 'Pelunasan', 'test', '50000', 1, 21, '2021-10-08 17:13:54', 21, '2021-10-08 17:30:45'),
(59, 'income', 'transfer', '2021-10-08', 33, 'DP - TF', '', '1500000', 0, 21, '2021-10-08 22:10:12', 21, '2021-10-08 22:10:12'),
(60, 'income', 'transfer', '2021-10-11', 26, 'Pelunasan', '', '1000000', 0, 21, '2021-10-11 15:43:37', 21, '2021-10-11 15:43:37'),
(61, 'expense', 'transfer', '2021-10-12', 34, 'DP - TF', '', '200000', 0, 21, '2021-10-12 21:34:56', 21, '2021-10-12 21:35:53'),
(62, 'expense', 'transfer', '2021-09-23', 37, 'Pelunasan', '', '200000', 0, 21, '2021-10-19 19:08:18', 21, '2021-10-19 19:11:10'),
(63, 'expense', 'transfer', '2021-10-17', 38, 'Pelunasan', '', '50000', 0, 21, '2021-10-19 19:10:27', 21, '2021-10-19 19:11:04'),
(64, 'income', 'transfer', '2021-10-23', 29, 'Weekend', '', '4000000', 0, 21, '2021-10-23 13:16:14', 21, '2021-10-23 13:16:14'),
(65, 'income', 'transfer', '2021-11-22', 40, 'Upload file per folder, folder bisa di customize ', '', '2000000', 1, 28, '2021-11-22 20:45:23', 28, '2021-12-21 14:02:43'),
(66, 'income', 'transfer', '2021-11-22', 40, 'Shared file untuk umum/publik ', '', '1000000', 1, 28, '2021-11-22 20:46:37', 28, '2021-12-21 14:02:47'),
(67, 'income', 'transfer', '2021-11-22', 40, 'Grouping per department ', '', '1000000', 1, 28, '2021-11-22 20:47:06', 28, '2021-12-21 14:02:50'),
(68, 'income', 'transfer', '2021-11-22', 40, 'Reminder expired dokumen untuk dokumen yang bersifat memiliki expired ', '', '1000000', 1, 28, '2021-11-22 20:47:32', 28, '2021-12-21 14:02:53'),
(69, 'income', 'transfer', '2021-11-22', 40, 'public', '', '700000', 1, 28, '2021-11-22 20:48:33', 28, '2021-11-22 20:52:31'),
(70, 'income', 'transfer', '2021-11-22', 40, 'private', '', '2000000', 1, 28, '2021-11-22 20:48:57', 28, '2021-11-22 20:52:24'),
(71, 'income', 'transfer', '2021-11-22', 40, 'password', '', '1000000', 1, 28, '2021-11-22 20:50:00', 28, '2021-11-22 20:52:12'),
(72, 'income', 'transfer', '2021-11-22', 40, 'Public ', 'semua bisa akses termasuk orang luar ', '700000', 1, 28, '2021-11-22 20:53:45', 28, '2021-12-21 14:02:56'),
(73, 'income', 'transfer', '2021-11-22', 40, 'Private', 'hanya group/user tertentu yang bisa akses ', '2000000', 1, 28, '2021-11-22 20:54:45', 28, '2021-12-21 14:02:59'),
(74, 'income', 'transfer', '2021-11-22', 40, 'Password ', 'semua bisa akses apabila memiliki password yang di tentukan ', '1000000', 1, 28, '2021-11-22 20:55:31', 28, '2021-12-21 14:03:01'),
(75, 'income', 'transfer', '2021-12-21', 40, 'DMS Website Unsada', '', '4000000', 0, 21, '2021-12-21 14:04:06', 21, '2021-12-21 14:04:06'),
(76, 'income', 'transfer', '2021-12-25', 32, 'Cicilan agy', '', '1800000', 0, 21, '2021-12-26 12:40:35', 21, '2021-12-26 12:40:35'),
(77, 'income', 'transfer', '2022-02-10', 42, 'Pembayaran', '', '3000000', 0, 20, '2022-02-10 17:56:03', 20, '2022-02-10 17:56:03'),
(78, 'income', 'transfer', '2022-03-15', 42, 'Pelunasan', 'pelunasan', '500000', 0, 20, '2022-03-15 11:42:14', 20, '2022-03-15 11:42:14'),
(79, 'income', 'transfer', '2022-03-15', 39, 'Pelunasan', '', '1700000', 0, 20, '2022-03-15 11:42:35', 20, '2022-03-15 11:42:35'),
(80, 'income', 'transfer', '2022-03-15', 39, 'Pembayaran awal', '', '1500000', 0, 20, '2022-03-15 11:42:51', 20, '2022-03-15 11:42:51'),
(81, 'income', 'transfer', '2022-04-28', 27, 'Pelunasan', '', '1500000', 0, 20, '2022-04-28 11:51:15', 20, '2022-04-28 11:51:15'),
(82, 'income', 'transfer', '2022-05-30', 44, 'Pembayaran Awal dan cicilan', '', '2500000', 0, 20, '2022-05-30 14:16:33', 20, '2022-05-30 14:16:33'),
(83, 'income', 'transfer', '2022-05-30', 46, 'Pembayaran awal', '', '1500000', 0, 20, '2022-05-30 14:18:51', 20, '2022-05-30 14:18:51'),
(84, 'income', 'transfer', '2022-05-30', 45, 'Pembayaran awal', '', '1500000', 0, 20, '2022-05-30 14:19:07', 20, '2022-05-30 14:19:07'),
(85, 'income', 'transfer', '2022-06-12', 47, 'DP', 'DP', '1000000', 0, 20, '2022-06-12 21:38:39', 20, '2022-06-12 21:38:39'),
(86, 'income', 'transfer', '2022-06-12', 49, 'DP', 'DP', '1000000', 0, 20, '2022-06-12 21:42:51', 20, '2022-06-12 21:42:51'),
(87, 'income', 'transfer', '2022-06-12', 48, 'DP', 'DP', '1000000', 0, 20, '2022-06-12 21:43:43', 20, '2022-06-12 21:43:43'),
(88, 'income', 'transfer', '2022-06-26', 45, 'Pelunasan', '', '2000000', 0, 20, '2022-06-26 20:25:47', 20, '2022-06-26 20:25:47'),
(89, 'income', 'transfer', '2022-06-26', 33, 'Cicilan', '', '500000', 0, 20, '2022-06-26 20:26:19', 20, '2022-06-26 20:26:19'),
(90, 'income', 'transfer', '2022-06-26', 33, 'Pelunasan', '', '1000000', 0, 20, '2022-06-26 20:26:30', 20, '2022-06-26 20:26:30'),
(91, 'income', 'transfer', '2022-07-07', 51, 'DP', '', '1500000', 0, 20, '2022-07-07 11:07:13', 20, '2022-07-07 11:07:13'),
(92, 'income', 'transfer', '2022-07-07', 44, 'Cicilan', '', '300000', 0, 20, '2022-07-07 11:07:42', 20, '2022-07-07 11:07:42'),
(93, 'income', 'transfer', '2022-07-07', 52, 'DP', '', '1500000', 0, 20, '2022-07-07 11:09:48', 20, '2022-07-07 11:09:48'),
(94, 'income', 'transfer', '2022-07-15', 50, 'Dp', '', '2000000', 0, 20, '2022-07-15 18:48:34', 20, '2022-07-15 18:48:34'),
(95, 'income', 'transfer', '2022-07-15', 48, 'Cicilan', '', '350000', 0, 20, '2022-07-15 18:50:39', 20, '2022-07-15 18:50:39'),
(96, 'income', 'transfer', '2022-07-15', 48, 'Cicilan', '', '1200000', 0, 20, '2022-07-15 18:50:50', 20, '2022-07-15 18:50:50'),
(97, 'income', 'transfer', '2022-07-15', 50, 'Pelunasan', '', '2500000', 0, 20, '2022-07-15 18:53:16', 20, '2022-07-15 18:53:16'),
(98, 'income', 'transfer', '2022-07-18', 33, 'Pelunasan', '', '500000', 0, 20, '2022-07-18 00:34:17', 20, '2022-07-18 00:34:17'),
(99, 'income', 'transfer', '2022-07-18', 47, 'Cicilan', '', '500000', 0, 20, '2022-07-18 00:35:08', 20, '2022-07-18 00:35:08'),
(100, 'income', 'transfer', '2022-08-04', 47, 'Cicilan', '', '500000', 0, 20, '2022-08-04 19:36:33', 20, '2022-08-04 19:36:33'),
(101, 'income', 'transfer', '2022-08-04', 48, 'Cicilan', '', '650000', 0, 20, '2022-08-04 19:37:13', 20, '2022-08-04 19:37:13'),
(102, 'income', 'transfer', '2022-08-20', 47, 'Cicilan', '', '700000', 0, 20, '2022-08-20 16:42:00', 20, '2022-08-20 16:42:00'),
(103, 'income', 'transfer', '2022-08-30', 46, 'Cicilan', '', '100000', 0, 20, '2022-08-30 14:35:32', 20, '2022-08-30 14:35:32'),
(104, 'income', 'transfer', '2022-09-05', 47, 'Cicilan', '', '300000', 0, 20, '2022-09-05 13:48:21', 20, '2022-09-05 13:48:21'),
(105, 'income', 'transfer', '2022-05-30', 32, 'cicilan agy', '', '200000', 0, 1, '2022-12-13 16:36:27', 1, '2022-12-13 16:36:27'),
(106, 'income', 'transfer', '2022-12-13', 32, 'cicilan agy', '', '150000', 0, 1, '2022-12-13 16:42:37', 1, '2022-12-13 16:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(1) NOT NULL,
  `nama_project` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` int(1) NOT NULL,
  `project_case` varchar(20) NOT NULL,
  `tracking` int(1) NOT NULL,
  `assignee` int(1) NOT NULL,
  `nominal` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `priority` varchar(20) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0,
  `signature` text DEFAULT NULL,
  `created_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(1) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `nama_project`, `deskripsi`, `kategori`, `project_case`, `tracking`, `assignee`, `nominal`, `url`, `start_date`, `due_date`, `priority`, `is_delete`, `signature`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Coolant Redeem Voucher', '<p>Bikin voucher apa tau tuh</p>\r\n', 1, '1', 4, 9, '5000000', '', '2021-04-19', '2021-05-07', '2', 0, 'feda9505e312f917d5cb6f805372bb46b1f9e1e5', 1, '2021-04-19 15:16:34', 21, '2021-10-18 21:16:40'),
(3, 'Skripsi Devi Teknik Informatika', '<p>Rancangan Sistem Informasi Pendukung Keputusan Promosi Jabatan dengan menggunakan Metode Multi Attribute Utility Theory ( Maut ) pada PT Marga Nusantara Jaya Berbasis Website<br />\r\n<br />\r\nMAUT, dasar teorinya&nbsp;<br />\r\nmengukur nilai kinerja, kompetensi &nbsp;jelaskan dan dihitung atau di dropdown, penialian rekan sejawat.<br />\r\ninput data pegawai.&nbsp;<br />\r\npegawai juga bs input data historis pendidikan.<br />\r\ndibndingkan MAUT dan Fuzzy SAW<br />\r\nKriterianya<br />\r\n1. Nilai kinerja<br />\r\n2. Pendidikan<br />\r\n3. Golongan<br />\r\n4. Masa kerja<br />\r\n5. Kehadiran<br />\r\n6. Kompetensi<br />\r\nKriteria 1 dan 6 ada angketnya ada beberapa pertanyaan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Devi Rahmayanti</p>\r\n\r\n<p>Revisi Pak Bagus&nbsp;</p>\r\n\r\n<p>- validasi bobot pada kriteria 100% jika diinput total lebih dari 100 tidak diperbolehkan sistem&nbsp;<br />\r\n- hasil uji coba disesuaikan dengan kesimpulan&nbsp;<br />\r\n- periode perhitungan , periode promosi jabatan sebelumnya<br />\r\n- history perhitungan&nbsp;<br />\r\n- notif : hasil rekomendasi muncul pada setiap user (agar langsung diubah jabatan sesuai rekomendasi)&nbsp;</p>\r\n\r\n<p>Revisi Pak Herianto&nbsp;<br />\r\n-pada apk ada perbandingan kecepatan antara metode MAUT dan FuzzySaw &nbsp;ketika di klik pada perhitungan metodenya lebih cepat apa<br />\r\n- akurasi penilaian , sebelum tabel normalilsasi dan bobot nya ada cara hitungnya , hasil akhir penilaian perangkingan di perjelas boleh pakai diagram persen<br />\r\n- penilaian rekan sejawat dan bawahan&nbsp;<br />\r\n- ada tampilan acuan penilaian sebelumnya dari perusahaan, bandingkan dengan perhitungan metode lebih akurat apa&nbsp;</p>\r\n\r\n<p>Revisi Pak Andi&nbsp;<br />\r\n- bobot disamakan menggunakan persen ketika edit<br />\r\n- aplikasi pakai bahasa indonesia semua crudnya dll</p>\r\n', 2, '1', 6, 21, '2950000', '', '2021-05-01', '2021-10-31', '2', 0, '2d49f3b9345d9aab259a1c5753fd95d1e306ab6c', 0, '2021-04-22 07:53:31', 21, '2021-10-18 21:16:40'),
(4, 'Skripsi Ernanda Teknik Informatika', '<p>Perancangan Sistem Informasi Pendukung Keputusan Pemilihan Siswa Terbaik TKJ pada SMK Taman Siswa Jakarta berbasis Web menggunakan Metode SAW dan Fuzzy</p>\r\n\r\n<p>Revisi aplikasi Ernanda Amalia Arumi</p>\r\n\r\n<p>PAK AJI SETIAWAN<br />\r\n- Menambahkan login siswa untuk mengetahui rangking yang di dapat&nbsp;<br />\r\n- Menambahkan menu siswa dan nilai yang sudah ada<br />\r\n- Penilaian siswa, menambahkan semester genap dan ganjil&nbsp;<br />\r\n- detail perhitungan metode saw untuk perangkingan sedangkan fuzzy bukan perangkingan di pisahkan dengan metode saw<br />\r\n- Menampilkan nilai siswa, mata pelajaran,kelas dan nilai raport = siswa berprestasi<br />\r\nOh iya bang kemaren yang penilaian kriteria itu bisa subjektif karena bisa aja guru ga suka sama murid menjelekan di kriteria itu bang enaknya di ganti apa ya bang?<br />\r\nBu Timor<br />\r\n- Metode fuzzy dipisahkan saja dari metode saw atau jangan sama dari perangkingan bisa di jelekan di penilaian sikap<br />\r\n- tidak ada perangkingan<br />\r\n- menambahkan actor login guru bidang studi mata pelajaran ada lalu diambil nilainya</p>\r\n\r\n<p>Pak Bagus<br />\r\nLaporan disamakan perhitungan dengan aplikasi</p>\r\n', 2, '1', 6, 21, '2950000', '', '2021-04-22', '2021-10-31', '2', 0, '1181dcda9e972c06d2522345ad747a0c29a91e9e', 0, '2021-04-22 07:57:46', 21, '2021-10-18 21:16:40'),
(5, 'Skripsi Mega Teknik Informatika', '<p>Perancangan Sistem Informasi Pengambilan Keputusan Estimasi Biaya Pengiriman Barang Berbasis Web menggunakan Metode Havershine dan Location Based Service ( LBS ) pada PT Doksa Artha Gemilang</p>\r\n\r\n<p>(Ganti metode jadi UCS dan Ant Colony, Lanjut)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Mega Pangastuti</p>\r\n\r\n<p>Pak Andi Susilo<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Bahasa pada tampilan aplikasi disesuaikan kembali (disamakan pakai bahasa inggris atau bahasa indonesia).<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada fitur transaksi ditambahkan jumlah input jenis bendanya.</p>\r\n\r\n<p>Pak Aji Setiawan<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Metode haversine disamakan lagi total jaraknya dengan maps, lakukan komparasi dengan maps<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Validasi pemilihan supir</p>\r\n\r\n<p>Bu Timor Setyaningsih<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada metode knn ditambahkan lagi fungsi penggunaannya. Dalam satu pengiriman bisa mengirim ke 2 titik tujuan yang berbeda tetapi tetap dalam jalur yang sama sesuai dengan titik tujuan awal. Misal : pengiriman awal dari Jakarta &ndash; bandung, didalam mobil masih muat lebih barang lagi untuk memaksimalkan pengiriman, maka akan ditambahkan lagi satu titik yang searah dengan titik awal, misal daerah bogor atau lain sebagainya.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada laporan aplikasi ditambahkan tampilan bagan diagram batang. Contoh : pengiriman jalur Jakarta &ndash; bandung menghasilkan berapa banyak total biayanya? Dan juga jalur pengiriman lainnya.<br />\r\n&nbsp;</p>\r\n', 2, '1', 6, 20, '2950000', '', '2021-05-01', '2021-10-31', '2', 0, '587bee7f218c7bca0797d598ea7e4d746dc15072', 0, '2021-04-22 08:00:00', 21, '2021-10-18 21:16:40'),
(6, 'Skripsi Maruli Teknik Informatika', '<p>Perancangan Sistem Informasi Berbasis Web Untuk memprediksi tingkat kelulusan terhadap professionalisme siswa menggunakan metode knn dan apriori (Studi Kasus: SMK Negeri 31 Jakarta Pusat)</p>\r\n\r\n<p>Revisi Erry Maruli:<br />\r\nPak Bagus:<br />\r\n- nilai komulatif persemester<br />\r\n- uas akhir, keterangan nilainya<br />\r\n- hasil uji coba</p>\r\n\r\n<p>Pak Herianto<br />\r\n- di metodologi jelaskan metode data mining persiapan dataset, traning, testing, impelementasi<br />\r\n&nbsp; atribut apa saja&nbsp;<br />\r\n- apriori tidak sesuai&nbsp;</p>\r\n\r\n<p>Pak Andi Susilo<br />\r\n- tingkat kelulusan berapa persen dilaporan<br />\r\n- perbaiki mapel<br />\r\n- pengguna lulusan<br />\r\n- profil jurusan ada dimana saja</p>\r\n', 2, '1', 6, 21, '3200000', '', '2021-05-01', '2021-10-31', '2', 0, '57e6f134511c221fe1f2edcf5ba66bbeada446a1', 0, '2021-04-22 08:02:49', 21, '2021-10-18 21:16:40'),
(7, 'Skripsi Agus Teknik Informatika', '<p>Perancangan Sistem Pemilihan Supplier Alat Laboratorium Berbasis Web dengan Metode Integrasi AHP dan Topsis di PT Anugrah Niaga Mandiri</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nPak Adam:\r\n- Form Penilaian Dibuat Radio Button (seperti survey siakad)\r\n- Perbandingan Kriteria Dibuat Radio Button\r\n- Buat kategori unggulan untuk perangkingan setelah itu baru totalnya\r\n- Membuat Grafik / Visual pada hasil perhitungan\r\n\r\nPak bagus:\r\nAplikasi :\r\nCetak laporan sesuaikan dng format laporan : header, informasi tabel, \r\ndan penanggung jawab\r\n\r\nRevisi Agus Ilham :\r\nSuzuki :\r\n\r\nAplikasi: \r\n1. Tambahkan fitur/opsi (edit form) dari sisi pelanggan\r\n2. Tambahkan lapoaran penjualan ke pelanggan</pre>\r\n', 2, '1', 6, 20, '3200000', '', '2021-05-01', '2021-10-31', '2', 0, '4c64e44a9eba43a9f8d02a176443de65b10acf92', 0, '2021-04-22 08:06:29', 21, '2021-10-18 21:16:40'),
(8, 'Skripsi Vira Teknik Informatika', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series and fuzzy Pada Toko JatiAsih Motor</p>\r\n\r\n<p>Revisi Vira Metta :&nbsp;<br />\r\nPak Suzuki:<br />\r\n1. Harga awal dasar brg ditampilkan<br />\r\n2. Laporan rugi laba</p>\r\n\r\n<p>Pak Adam:</p>\r\n\r\n<p>Pak Bagus :<br />\r\napplikasi :<br />\r\n- ID barang<br />\r\n- rekomendasi dari hasil perhitungan<br />\r\n- detail produk (ID produk, tgl beli, suplier, harga beli)<br />\r\n- menu konfigurasi)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, '1', 6, 20, '2800000', '', '2021-05-01', '2021-10-31', '2', 0, '6749d0592f5a5e918d9a057c63a87c9a35fdd0cd', 0, '2021-04-22 08:11:00', 21, '2021-10-18 21:16:40'),
(9, 'Skripsi Indah Teknik Informatika', '<p>Penerapan Metode K-mean dan Liner Programming di Datamining untuk Sistem Rekomendasi Penempatan Sales SPG</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n\r\n<p><br />\r\n1. K-Mean menentukan cluster daerah<br />\r\ndengan penjualan tertinggi dan terendah<br />\r\n(mencari penyebab daerah dengan penjualan<br />\r\nterendah) dengan tujuan mencari kinerja SPG<br />\r\n2. Cari standar kerja spg di lokasi</p>\r\n\r\n<p>3. Penilaian standar misal ada penjualan<br />\r\nterendah solusi nya apa entah spg yg<br />\r\npenjualan tertinggi dipindah ke lokasi<br />\r\npenjualan terendah atau rekomendasi.</p>\r\n\r\n<p>4. Fitur di Laporan Metode variabel nya bisa<br />\r\ndiganti2 jangan hard code.</p>\r\n\r\n<p>5. Model nya import data bukan input data,<br />\r\njadi bisa langsung input dari excel bukan<br />\r\ninput manual.</p>\r\n\r\n<p>6. Ada fitur history spg(Data SPG Detail)<br />\r\nketika login, nama, tanggal, tanggal masuk<br />\r\nspg, lokasi wilayah spg ditempatkan</p>\r\n\r\n<p>7. Fitur login admin,manager<br />\r\n&nbsp;</p>\r\n', 2, '1', 6, 20, '3200000', '', '2021-05-01', '2021-10-31', '2', 0, '5c8b30e7f4190e2c2c210c7ee11ededf70f3c006', 0, '2021-04-22 08:14:22', 21, '2021-10-18 21:16:40'),
(10, 'Skripsi Nazelika Teknik Informatika', '<p>Perbandingan Model K-Mean ada Datamining Dengan Exponential Smooth untuk Estimasi Harga pada PT Givro Multi Teknik Perkasa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi nazel :</p>\r\n\r\n<p>1. Cara kerja metode kmean dibuat&amp;ditampilan dibawah metode k-mean</p>\r\n\r\n<p>2. Kmean dikelompokkan menjadi 3 kelompok nanti hasilnya digunakan dan dimasukkan ke masing2 kelompok</p>\r\n\r\n<p>3. Dikasih logo&amp;nama perusahaan di tampilan dashboard.</p>\r\n', 2, '1', 6, 20, '3200000', '', '2021-05-01', '2021-10-31', '2', 0, 'ba92ab88fb020514d81734d9b62d9b30aeda59e8', 0, '2021-04-22 08:16:42', 21, '2021-10-18 21:16:40'),
(11, 'Skripsi Ray Teknik Informatika', '<p>Rancang Bangun Aplikasi Sistem Pendukung Keputusan Seleksi Calon Ketua Komite Sekolah Menggunakan Metode Profile Matching ( Studi Kasus Yayasan Addawiyah Al Khair )</p>\r\n', 2, '1', 6, 20, '3200000', '', '2021-05-01', '2021-10-31', '2', 0, '3d46cfaf3af46a896f3044b962821f8ed08af4c1', 0, '2021-04-22 08:18:33', 21, '2021-10-18 21:16:40'),
(12, 'Skripsi Zai Teknik Informatika', '<p>Sistem Pendukung Keputusan untuk Menentukan Material Packaging menggunakan Metode KNN dan SMART ( Studi Kasus PT DNP Indonesia )</p>\r\n\r\n<pre>\r\n\r\ncatatan pak heri :\r\nmenambah user customer\r\ntampilan setiap user ada pemberitahuan\r\nrekomendasi tampil di halaman customer\r\npenampilan perhitungan di tampilnan admin\r\nflow, smart -&gt; knn rekomendasi berlapis\r\nketika memilih material harus menunjukan hasil dari hasil metode smart dan berlanjut ke metode knn\r\nketika stok dari yang direkomendasikan oleh metode smart dan knn habis muncul pesan yang memberitahu bahwa stok material habis\r\n\r\ncatatan pak bagus\r\nAplikasi:\r\n- Perbandingan, rekomendasi\r\n\r\ncatatan pak andi :\r\nmemantau jumlah stok (perubahan transaksi)\r\nuntuk kode dijadikan otomatis\r\nuntuk stok dijadikan otomatis\r\nowner diganti direktur\r\nuse case diagram penjualan material packaging</pre>\r\n', 2, '1', 6, 9, '3200000', '', '2021-05-01', '2021-10-31', '2', 0, '5cc80f287a890ce4203ffe6dc04b7f90f4422613', 0, '2021-04-22 08:21:44', 21, '2021-10-18 21:16:40'),
(13, 'Skripsi Wulandari Sistem Informasi', '<p>Rancang Bangun Aplikasi Pemesanan E-Tiket Wisata pada The Heritage Palace Kartasura Berbasis QR Code dengan Menggunakan Metode Moving Average</p>\r\n', 2, '1', 6, 21, '3000000', '', '2021-05-01', '2021-10-31', '2', 0, 'cd2922af6ef5057b0bdb752578eaa45f14aadb98', 0, '2021-04-22 08:24:19', 21, '2021-10-18 21:16:40'),
(14, 'Skripsi Pramita Teknik Informatika', '', 2, '1', 1, 21, '0', '', '2021-05-01', '2021-06-07', '2', 0, 'b8bbf33ba3ecc5458dbd82853c9865f1dbe5b29a', 21, '2021-04-22 09:39:23', 21, '2021-10-18 21:16:40'),
(15, 'Skripsi Elin Teknik Informatika', '<p>Sistem prediksi persediaan barang percetakan CV BISMA OPTIMA MENGGUNAKAN METODE SES DAN REGRESI LINEAR</p>\r\n', 2, '1', 6, 26, '', '', '2021-05-01', '2021-05-31', '2', 0, 'f3d6ad831ed5ed9187aa887cb3c9a9db2997c5dd', 21, '2021-04-22 09:41:30', 21, '2021-10-19 18:18:22'),
(16, 'KP Siti Maspupah Teknologi Informasi', '<p>CRM Project</p>\r\n', 3, '1', 6, 22, '0', '', '2021-04-19', '2021-04-30', '2', 0, '1dce0d36767621fb7bc4fd30dd8792abb73fa092', 21, '2021-04-22 09:51:09', 22, '2021-10-18 21:16:40'),
(17, 'Ecommerce', '', 3, '1', 3, 20, '5000000', '', '2021-01-09', '2021-06-01', '1', 0, 'dc1fd0bf95c3a54bc23425b34df7f40670f1a567', 21, '2021-04-22 14:54:12', 21, '2021-10-18 21:16:40'),
(18, 'Skripsi Qalam Teknik Informatika', '<p>&ldquo;<strong>Rancangan</strong> <strong>Bangun</strong> <strong>Aplikasi</strong> <strong>Sistem</strong> <strong>Pendukung</strong> <strong>Keputusan</strong> <strong>Seleksi</strong> <strong>Penerimaan</strong> <strong>Kartu</strong><strong> Jakarta </strong><strong>Pintar</strong><strong> (KJP) </strong><strong>pada</strong> <strong>Siswa</strong><strong>/i SMA </strong><strong>Muhammadiyah</strong><strong> 12 Jakarta </strong><strong>Dengan</strong> <strong>Metode</strong>&nbsp;<em>FUZZYSAW</em><strong>&rdquo;</strong></p>\r\n', 2, '1', 6, 21, '3200000', '', '2021-04-27', '2021-06-30', '2', 0, '71d854a4fda12d1391eeecea724ac55973447b63', 0, '2021-04-27 09:57:53', 21, '2021-10-18 21:16:40'),
(19, 'KP Viki STIE Musi', '<p>Kopibenk</p>\r\n', 2, '1', 6, 23, '2500000', '', '2021-04-26', '2021-06-30', '2', 0, '02164ad23902351d51b4b640e13ad933d24f0fbd', 21, '2021-04-27 10:12:09', 21, '2021-11-09 21:29:01'),
(20, 'Skripsi Julian Teknik Informatika', '<p>nama : Julian Ardillah Abhirity&nbsp;<br />\r\njudul skripsi : PERANCANGAN SISTEM PENGAMBILAN KEPUTUSAN UNTUK MEMILIH LOKASI PERUMAHAN YANG LAYAK DIBANGUN MENGGUNAKAN METODE SMARTER DAN FUZZY SUGENO (STUDI KASUS: PT ALMA AJI PROPERTINDO)</p>\r\n\r\n<p>CANCELLED, REFUND Rp 1.000.000</p>\r\n', 2, '1', 6, 21, '3200000', '', '2021-05-17', '2021-06-05', '2', 0, '468cc8c11e4416427a3f84c9a87e738e2aaa2828', 21, '2021-05-17 11:07:14', 20, '2022-04-28 11:49:11'),
(21, 'kp', '', 1, '1', 6, 22, '', '', '2021-05-04', '2021-06-04', '2', 0, '100ee52b3b919ea5b3ceb184d5a085785aaf87d0', 22, '2021-05-17 14:40:33', 21, '2021-10-18 21:16:40'),
(22, 'Skripsi Ankgeera Teknik Informatika', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN QR CODE PADA SASTRO MART MENGGUNAKAN METODE FP- GROWTH DAN HASH BASE<br />\r\n<br />\r\nMobile ready</p>\r\n\r\n<p>Pak Yan (Laporan)<br />\r\nJudul Kurung Spesifik<br />\r\nRumusan Masalah lebih spesifik sesuai judul</p>\r\n\r\n<p>Pak Heri (Aplikasi)</p>\r\n\r\n<p>1. Fp Growth harusnya menampilkan rekomendasi barang untuk customers dan menampilkan rumus nya di sistemnya&nbsp;<br />\r\n2. Menampilkan hasil rekomendasi dan pola pembelian<br />\r\n3. Fp Growth dan Hash based itu membandingkan atau mensupport keduanya ?</p>\r\n\r\n<p>Pak Andi (Aplikasi)<br />\r\n1. Kalo bisa pake payment Gateway<br />\r\n2. Kalo bisa 1 akses kaya di portal</p>\r\n', 2, '1', 6, 21, '3200000', '', '2021-05-25', '2021-06-19', '2', 0, 'daf096fc2619a05d9b00f7de5b36520f29c54dce', 21, '2021-05-25 08:37:43', 21, '2021-10-18 21:16:40'),
(23, 'Skripsi Dana Sistem Informasi', '<p>Rancang bangun sistem pemesanan&nbsp;<br />\r\nTravel Putra Malam Trans menggunakan QRcode</p>\r\n', 2, '1', 6, 9, '3200000', '', '2021-05-31', '2021-06-30', '2', 0, 'ab54318956421132205090ee008173e7df55a1b3', 3, '2021-05-31 19:48:51', 20, '2022-04-28 11:48:39'),
(25, 'Skripsi Octa Ubhara Sistem Informasi Pelaporan Hasil Donasi Koin', '<p>RANCANG BANGUN SISTEM INFORMASI PELAPORAN HASIL DONASI KOIN NU BERBASIS WEBSITE DI LAZISNU MWC NU BEKASI UTARA</p>\r\n', 2, '1', 6, 20, '3200000', '', '2021-06-15', '2021-06-18', '2', 0, '56ff7c0422e69600b5c34e71de72be27a94d2063', 20, '2021-06-15 09:43:30', 21, '2021-10-18 21:16:40'),
(26, 'Skripsi Gilang SPK Mobil Bekas', '<p>perancangan sistem pendukung keputusan pemilihan mobil bekas terbaik sesuai kriteria menggunakan metode smart dan logika fuzzy mamdani</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>jenis mobil, merek mobil, tahun pembuatan, harga, kapasitas penumpang (orang), kapasitas silinder (cc), transmisi,</p>\r\n', 2, '1', 6, 20, '3200000', '', '2021-06-15', '2021-06-18', '2', 0, '042e3c45ac861d75dbbca6caf191e480ffd5e33c', 20, '2021-06-15 09:43:56', 20, '2022-04-28 11:49:33'),
(27, 'Skripsi Dicky Teknik Informatika', '<p>Implementasi Data Mining Untuk Rekomendasi Menu Makanan Dengan Menggunakan Algoritma Hash Based dan Apriori</p>\r\n', 2, '1', 6, 20, '3000000', '', '2021-06-21', '2021-06-30', '2', 0, 'b36742785fcf600afb7aa9c6f7e90580f2db318e', 21, '2021-06-21 16:51:07', 20, '2022-04-28 11:49:45'),
(28, 'Skripsi SI Lailla', '<p>Sistem Informasi Pendataan Kontainer Masuk ( Tally Sheet, Log Stripping, Berita Acara )</p>\r\n', 2, '1', 6, 20, '2500000', '', '2021-07-19', '2021-10-31', '2', 0, '1ff46a3b5ac3c3a231629dcde92c15939bc1aff1', 20, '2021-07-24 08:14:03', 21, '2021-10-18 21:16:40'),
(29, 'Sistem Website UPM', '<p>monev-unsada.my.id<br />\r\nMinta tolong cek ia ka Fanny untuk akun login masing-masing role bisa diliat di USERS LIST (harusnya sih untuk demo username sama password sama), matur nuwun. ðŸ™</p>\r\n', 3, '1', 6, 28, '4000000', 'https://monev-unsada.my.id/', '2021-07-28', '2021-10-31', '3', 0, '2a111dc3117d10c878e9c85223f3ae7a909e26ed', 21, '2021-07-28 20:47:23', 28, '2022-05-25 19:52:37'),
(30, 'CRM ToDo', '<p>&nbsp;</p>\r\n\r\n<h2>Unique Case</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n			<p><strong>Title</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n			<p><strong>Description</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Child Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Dapat check masing-masing apa bila child todo telah selesai</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Todo status</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Status Condition</p>\r\n\r\n			<ol>\r\n				<li>Hold (apabila belum ada assignee)</li>\r\n				<li>Ongoing (assignee dan due date aktif)</li>\r\n				<li>Done (Todo Child telah selesai semua)</li>\r\n				<li>Expired (Due date terlewat namun masih ada child yang belum selesai)</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note: jika ada case tambahan, dapat dibicarakan selanjutnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Potential Upcoming Case:</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n			<p><strong>Title</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n			<p><strong>Description</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Automated Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Automasi todo dengan project, misal ada penambahan project baru, maka langsung tertambah pada todo</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Privilege Access</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Tiap assignee hanya dapat mengakses miliknya sendiri</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>3</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Client Access</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Client dapat request, misal ada penambahan, revisi, dll</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>&hellip;</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>&hellip;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 3, '1', 6, 25, '200000', '', '2021-08-09', '2021-08-23', '3', 0, 'c950a7831c7642ab30d90e9bb53ebf4ff35a9105', 21, '2021-08-03 12:23:29', 21, '2021-10-18 21:16:40'),
(31, 'Skripsi Adi Teknik Informatika', '<p>List Revisi nya :<br />\r\n1. Aplkasi saya belum ada peran user/aktor pengguna program. Nah ini saya sudah tambahkan kedalam aplikasi saya.&nbsp;<br />\r\n2. Dalam proses pembelian motor perlu seleksi dari alternatif dulu. Motor apa yang dibandingkan. Perlu dipilih motor mana yg akan dibeli pelanggan, nah ini perlu syarat2 di Kriteria tadi. Ini yg belum saya buat.&nbsp;<br />\r\n3. Perlu ada data history dari data pelanggan yg akan beli setelah no.2 di proses. Ini saya belum ada.&nbsp;<br />\r\n4. Perlu tambah data kriteria lainnya. (Diaplikasi saya cuma 4 kriteria)<br />\r\nKira2 itu sih revisinya, lainnya teori aja yg perlu penjelasan, seperti :<br />\r\n1. Dasar pembuatan Bobot/Nilai Kriteria ?<br />\r\n2. Perlu otomatis keluar data motor langsung.&nbsp;<br />\r\n3. Apa maksud Cost dan Benefit dari metode yg dipakai.</p>\r\n', 2, '1', 6, 21, '1000000', '', '2021-08-04', '2021-08-11', '2', 0, 'f463d7160cc3e1a8c5f6f6b3bd8fd1d5cd27aee2', 21, '2021-08-06 14:58:57', 21, '2021-10-18 21:16:40'),
(32, 'Skripsi Indri Teknik Informatika', '<p>Rancangan sistem informasi pencarian dan rekomendasi tempat agen dengan metode haversine dan metode electre berbasis web pada brainy official<br />\r\n<br />\r\nReff:&nbsp;<br />\r\n<a href=\"http://download.garuda.ristekdikti.go.id/article.php?article=502720&amp;val=10324&amp;title=PENGUJIAN%20METODE%20ELEKTREE%20UNTUK%20MENENTUKAN%20LOKASI%20STRATEGIS%20SUATU%20OBJEK%20BISNIS\">ELECTRE</a></p>\r\n', 2, '1', 6, 21, '3200000', '', '2021-09-15', '2021-12-01', '2', 0, 'e0c9ed4ae6fe625ca93e67d7b4d05ab8b9e096c8', 21, '2021-09-15 08:55:40', 20, '2022-04-28 11:48:30'),
(33, 'Skripsi Alifhia SI Bengkel', '<p>&quot;PERANCANGAN SISTEM INFORMASI SERVICE BOOKING&nbsp;<br />\r\nONLINE &amp; MONITORING SPAREPART BARANG BERBASISWEB&nbsp;<br />\r\nPADA BENGKEL&quot;</p>\r\n\r\n<p>Nama : Alifia Rizki Audita&nbsp;<br />\r\nNim : 11170740</p>\r\n', 2, '1', 6, 20, '3500000', '', '2021-10-11', '2021-12-31', '2', 0, 'f428f4a2703bfe3ba396ba4f07f6734711e3d3f6', 21, '2021-10-08 22:08:46', 20, '2022-04-28 11:48:16'),
(34, 'Feature Ticket', '', 3, '3', 3, 25, '200000', '', '2021-10-14', '2021-10-31', '3', 0, 'b132515057b0ec9cae2b4574f1800cc3843a21b4', 21, '2021-10-12 20:10:14', 21, '2021-10-18 21:16:40'),
(35, 'Website Profile Unsada', '<p>unsada.ac.id</p>\r\n', 1, '1', 1, 20, '', '', '0000-00-00', '0000-00-00', '2', 0, '83a17287e918e08b6c1e216ea6e9cc7133965f89', 21, '2021-10-19 19:00:56', 21, '2021-10-19 19:00:56'),
(36, 'Website Profile Unsada', '<p>unsada.ac.id</p>\r\n', 1, '1', 1, 20, '', '', '0000-00-00', '0000-00-00', '2', 0, '8d46be8b67a83e07d7e4cbeb239cadb77b02c280', 21, '2021-10-19 19:00:57', 21, '2021-10-19 19:00:57'),
(37, 'Feature CRM - Pettycash', '', 3, '3', 6, 26, '200000', '', '2021-09-01', '2021-09-24', '3', 0, '3524ba108f642a5fcdcb866244b784ce16d7e60d', 21, '2021-10-19 19:07:33', 21, '2021-10-19 19:07:33'),
(38, 'Addressing Route - Borang', '', 3, '4', 6, 26, '50000', '', '2021-10-16', '2021-10-17', '4', 0, '5e4659d0fc3eaa980baff0eb4d3acbabb6d6eaf9', 21, '2021-10-19 19:09:37', 21, '2021-10-19 19:09:37'),
(39, 'Skripsi SI Hardian', '<p>Rancang Bangun Sistem Informasi Manajemen Persediaan Obat&nbsp;</p>\r\n\r\n<p>Ahmad Hardian Fadhi - 2018240074</p>\r\n', 2, '1', 6, 21, '3200000', 'https://dtech.web.id/skripsi/ahmad/', '2021-11-17', '2021-12-31', '2', 0, '702dcb097dd55e9ee0f7ea3f0cc5590709885d37', 21, '2021-11-18 11:53:46', 20, '2022-04-28 11:47:13'),
(40, 'Document Management System UNSADA', '', 3, '1', 6, 28, '', '', '2021-11-30', '2022-05-01', '2', 0, '129a3f2541282f90e7336cabd40d523fb0f63a0c', 28, '2021-11-22 20:38:13', 28, '2022-05-25 19:53:47'),
(41, 'Maintenance Website Coolant', '<p><strong>Maintenance Website </strong>adalah proses pemeliharaan website untuk memastikan website bisa berjalan optimal sesuai dengan fungsi dan kebutuhannya. Oleh karena itu, maintenance website menjadi bagian terpenting dalam keberhasilan kinerja dan seluruh bisnis.</p>\r\n\r\n<p><strong>KEUNGGULAN &amp; FITUR MAINTENANCE WEBSITE</strong></p>\r\n\r\n<p>Adapun keunggulan <strong>MAINTENANCE WEBSITE </strong>terdiri dari :</p>\r\n\r\n<ul>\r\n	<li>Maintenance Fitur&nbsp;</li>\r\n</ul>\r\n\r\n<p>maintenance website adalah proses pemeliharaan website untuk memastikan bahwa website tersebut bisa berjalan dengan optimal. Setiap fitur yang nantinya dijalankan akan berfungsi dengan baik tanpa adanya hambatan.</p>\r\n\r\n<ul>\r\n	<li>Backup Website</li>\r\n</ul>\r\n\r\n<p>Backup (pencadangan) data website adalah aktivitas yang dilakukan untuk membuat file cadangan data suatu website. Proses ini perlu dilakukan supaya data website dapat dikembalikan, ketika website mengalami masalah. Data website yang dicadangkan tadi dapat disimpan secara online maupun offline.</p>\r\n\r\n<ul>\r\n	<li>Backup Database</li>\r\n</ul>\r\n\r\n<p>Backup database berfungsi untuk membuat cadangan file database, cadangan file ini nantinya dapat digunakan untuk jaga-jaga apabila terjadi kerusakan komputer, sehingga tidak perlu input data ulang.</p>\r\n\r\n<ul>\r\n	<li>Backup Log</li>\r\n</ul>\r\n\r\n<p>Log berisikan macam-macam data seperti aktifitas user di dalam halaman website, aktifitas API dan lain sebagainya yang akan terus bertambah seiring berjalannya waktu.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 4, '1', 1, 28, '', '', '2022-01-26', '0000-00-00', '2', 0, '83cbf187ecb96ec1c4cc2b0c7ca6b4d3a3a33b6b', 28, '2022-01-26 20:33:35', 28, '2022-01-26 20:44:24'),
(42, 'Skripsi Hasna', '<p>Skripsi Hasna</p>\r\n', 2, '1', 6, 20, '3500000', 'http://dtech.web.id/skripsi/hasna', '2022-02-10', '2022-02-28', '2', 0, 'c0cfe15f41a8185011b6188e931579dbcc08787f', 20, '2022-02-10 17:55:40', 20, '2022-04-28 11:47:38'),
(43, 'Website Persetujuan Penyuratan', '', 3, '1', 1, 28, '8899999', '', '0000-00-00', '0000-00-00', '3', 0, '6e074e91d18eb4ad9f242d91ae97e8233183e843', 28, '2022-05-25 19:51:50', 28, '2022-05-25 19:51:50'),
(44, 'Skripsi UBJ Aldi', '<p>Al Muhyi Plastik</p>\r\n', 2, '1', 3, 20, '3000000', 'https://ktech.my.id/skripsi/aldi', '2022-05-30', '2022-07-31', '2', 0, 'fd645c96c610b0c395e1b11f9116287f65581a7e', 20, '2022-05-30 14:16:08', 20, '2022-05-30 14:17:06'),
(45, 'Skripsi UBJ Lukman', '<p>GOR Pangestu</p>\r\n', 2, '1', 3, 20, '3200000', 'https://ktech.my.id/skripsi/gor_pangestu', '2022-05-30', '2022-07-31', '2', 0, 'b53fc1a1096b417a55ec1cb1bbf848eb25d4acf2', 20, '2022-05-30 14:17:36', 20, '2022-05-30 14:17:55'),
(46, 'Skripsi UBJ Danu', '<p>PT Alco Sarijaya</p>\r\n', 2, '1', 3, 20, '3200000', 'https://ktech.my.id/skripsi/danu', '2022-05-31', '2022-07-31', '2', 0, 'a6fa9be2d30e2b1953c152b76abe702be63a5a97', 20, '2022-05-30 14:18:39', 20, '2022-05-30 14:18:39'),
(47, 'Skripsi Unsada Adit', '<p>Wedding AHP</p>\r\n', 2, '1', 3, 20, '3500000', 'https://ktech.my.id/skripsi/adit', '2022-06-12', '2022-07-31', '2', 0, 'b0a6760d7115514b7be2c1a1353ca7a15e997a14', 20, '2022-06-12 21:38:12', 20, '2022-06-12 21:38:12'),
(48, 'Skripsi Unsada Reza', '<p>Dealer Mobil&nbsp;ANP</p>\r\n', 2, '1', 3, 20, '3500000', 'https://ktech.my.id/skripsi/reza', '2022-06-12', '2022-07-31', '2', 0, '36dab891f18447de0e3a1dd3a15a80e9ff6bfa30', 20, '2022-06-12 21:41:29', 20, '2022-06-12 21:43:27'),
(49, 'Skripsi Unsada Martius', '<p>Penambahan Fitur Metode</p>\r\n', 2, '1', 3, 20, '1500000', 'https://ktech.my.id/skripsi/martius', '2022-06-12', '2022-07-31', '2', 0, '79010d8e06b57c2648f7c13b5ccb8fe9b5c7c40f', 20, '2022-06-12 21:42:35', 20, '2022-06-12 21:42:35'),
(50, 'Skripsi Unsada Dhayus', 'Yamaha Motor', 2, '1', 3, 20, '3500000', 'https://ktech.my.id/skripsi/dhayus', '2022-06-26', '2022-07-31', '2', 0, '3a969d2ce100c9a938a6724b0efbc645d4822fde', 20, '2022-06-26 20:25:08', 20, '2022-06-26 20:25:08'),
(51, 'Skripsi Unsada Wafii', '<p>Cancel</p>\r\n', 2, '1', 6, 20, '3500000', 'https://ktech.my.id/skripsi/wafi', '2022-07-07', '2022-08-31', '2', 0, 'd1916c0852efa8cba2bef9cb3f00fe17b1c55007', 20, '2022-07-07 11:06:59', 20, '2022-08-30 14:32:35'),
(52, 'Skripsi Unsada Doly', '<p>Daging</p>\r\n', 2, '1', 3, 20, '3500000', 'https://ktech.my.id/skripsi/doly', '2022-07-07', '2022-08-31', '2', 0, 'ac6a7a444a50d0bf6ffc4825ed8cba648dc952a4', 20, '2022-07-07 11:09:38', 20, '2022-07-07 11:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `project_log`
--

CREATE TABLE `project_log` (
  `id` int(1) NOT NULL,
  `project_id` int(1) NOT NULL,
  `field` text NOT NULL,
  `data_before` text NOT NULL,
  `data_after` text NOT NULL,
  `text` text NOT NULL,
  `created_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_log`
--

INSERT INTO `project_log` (`id`, `project_id`, `field`, `data_before`, `data_after`, `text`, `created_by`, `created_at`) VALUES
(1, 1, 'priority', '4', '2', '<strong></strong> changed Priority from <i>4</i> to <i>2</i>', 0, '2021-04-19 18:42:39'),
(2, 1, 'assignee', '9', '14', '<strong></strong> changed Assignee from <i>Ardisa Valencia</i> to <i>Colonel Sanders</i>', 0, '2021-04-19 18:42:39'),
(3, 1, 'start_date', '2021-04-19', '2021-04-20', '<strong></strong> changed Start_date from <i>2021-04-19</i> to <i>2021-04-20</i>', 0, '2021-04-19 18:42:39'),
(4, 1, 'project_case', '1', '3', '<strong></strong> changed Project_case from <i>Build</i> to <i>Feature</i>', 0, '2021-04-19 19:40:51'),
(5, 1, 'priority', '2', '3', '<strong></strong> changed Priority from <i>normal</i> to <i>high</i>', 0, '2021-04-19 19:40:51'),
(6, 1, 'tracking', '1', '3', '<strong></strong> changed Tracking from <i>back log</i> to <i>pengerjaan</i>', 0, '2021-04-19 19:40:51'),
(7, 1, 'start_date', '2021-04-20', '2021-04-19', '<strong></strong> changed Start_date from <i>2021-04-20</i> to <i>2021-04-19</i>', 0, '2021-04-19 19:40:51'),
(8, 1, 'project_case', '3', '1', '<strong></strong> mengubah Project_case dari <i>Feature</i> menjadi <i>Build</i>', 0, '2021-04-19 19:43:02'),
(9, 1, 'deskripsi', '<p>Bikin voucher</p>\r\n', '<p>Bikin voucher apa tau tuh</p>\r\n', '<strong></strong> mengubah Deskripsi dari <i><p>Bikin voucher</p>\r\n</i> menjadi <i><p>Bikin voucher apa tau tuh</p>\r\n</i>', 0, '2021-04-19 19:43:02'),
(10, 1, 'priority', '3', '2', '<strong></strong> mengubah Priority dari <i>high</i> menjadi <i>normal</i>', 0, '2021-04-19 19:46:23'),
(11, 1, 'assignee', '14', '9', '<strong></strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Ardisa Valencia</i>', 0, '2021-04-19 19:46:23'),
(21, 1, 'due_date', '2021-04-20', '2021-05-07', '<strong></strong> mengubah Due_date dari <i>2021-04-20</i> menjadi <i>2021-05-07</i>', 0, '2021-04-21 15:01:25'),
(22, 9, 'assignee', '15', '9', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Jamal Bahri</i>', 21, '2021-04-22 14:49:18'),
(23, 9, 'deskripsi', '<p>Penerapan Metode Collaborative Filtering dan Algoritma Asosiasi di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n', '<p>Penerapan Metode Collaborative Filtering dan Algoritma Asosiasi di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Jamal Bahri</i>', 21, '2021-04-22 14:49:18'),
(24, 9, 'assignee', '9', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Mitchell Marcel</i> menjadi <i>Colonel Sanders</i>', 21, '2021-04-22 14:50:05'),
(25, 17, 'kategori', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Kategori dari <i>Company Profile</i> menjadi <i>Web System</i>', 21, '2021-04-22 15:18:49'),
(26, 5, 'assignee', '15', '9', '<strong></strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Jamal Bahri</i>', 0, '2021-04-22 20:19:30'),
(27, 5, 'deskripsi', '<p>Perancangan Sistem Informasi Pengambilan Keputusan Estimasi Biaya Pengiriman Barang Berbasis Web menggunakan Metode Havershine dan Location Based Service ( LBS ) pada PT Doksa Artha Gemilang</p>\r\n', '<p>Perancangan Sistem Informasi Pengambilan Keputusan Estimasi Biaya Pengiriman Barang Berbasis Web menggunakan Metode Havershine dan Location Based Service ( LBS ) pada PT Doksa Artha Gemilang</p>\r\n\r\n<p>(Ganti metode jadi UCS dan Ant Colony, Lanjut)&nbsp;</p>\r\n', '<strong></strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Jamal Bahri</i>', 0, '2021-04-22 20:19:30'),
(28, 5, 'assignee', '9', '20', '<strong></strong> mengubah Assignee dari <i>Denis Ahmad</i> menjadi <i>Colonel Sanders</i>', 0, '2021-04-22 20:19:55'),
(29, 6, 'assignee', '15', '9', '<strong></strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Colonel Sanders</i>', 0, '2021-04-28 11:12:16'),
(30, 6, 'deskripsi', '<p>Perancangan Sistem Informasi Berbasis Web untuk Penilaian Siswa Menggunakan Metode Algorithma K-Nearest Neighbor Classification ( K-Nn ) ( Studi Kasus SMK Negeri 31 Jakarta Pusat )</p>', '<p>Perancangan Sistem Informasi Berbasis Web untuk Penilaian Siswa Menggunakan Metode Algorithma K-Nearest Neighbor Classification ( K-Nn ) ( Studi Kasus SMK Negeri 31 Jakarta Pusat )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pak suzuki dan bu timor :<br />\r\n- parameter, data-data ditambahkan sebanyak-banyaknya<br />\r\n&nbsp; data berupa rumah, hobi, jaraknya berapa kesekolah, penghasilan orangtua, status orangtua<br />\r\n- minimal data 5 tahun terakhir, data dalam bentuk terstruktur<br />\r\n- judul dibuat prediksi, visualisasi data kelulusan di prediksi, cocok masuk dibidang profesi apa<br />\r\n- parameter : nilai, hobi, bidang pekerjaan, bakat untuk kecocokan psikologi<br />\r\n- judul dibuat menjadi prediksi siswa cocok dibidang profesi apa, parameter ditambah</p>\r\n', '<strong></strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Colonel Sanders</i>', 0, '2021-04-28 11:12:16'),
(31, 6, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-05 09:58:02'),
(32, 6, 'assignee', '9', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-05 09:58:02'),
(33, 9, 'deskripsi', '<p>Penerapan Metode Collaborative Filtering dan Algoritma Asosiasi di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n', '<p>Penerapan Metode Collaborative Filtering dan Algoritma Asosiasi di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n\r\n<p><br />\r\n1. K-Mean menentukan cluster daerah<br />\r\ndengan penjualan tertinggi dan terendah<br />\r\n(mencari penyebab daerah dengan penjualan<br />\r\nterendah) dengan tujuan mencari kinerja SPG<br />\r\n2. Cari standar kerja spg di lokasi</p>\r\n\r\n<p>3. Penilaian standar misal ada penjualan<br />\r\nterendah solusi nya apa entah spg yg<br />\r\npenjualan tertinggi dipindah ke lokasi<br />\r\npenjualan terendah atau rekomendasi.</p>\r\n\r\n<p>4. Fitur di Laporan Metode variabel nya bisa<br />\r\ndiganti2 jangan hard code.</p>\r\n\r\n<p>5. Model nya import data bukan input data,<br />\r\njadi bisa langsung input dari excel bukan<br />\r\ninput manual.</p>\r\n\r\n<p>6. Ada fitur history spg(Data SPG Detail)<br />\r\nketika login, nama, tanggal, tanggal masuk<br />\r\nspg, lokasi wilayah spg ditempatkan</p>\r\n\r\n<p>7. Fitur login admin,manager<br />\r\n&nbsp;</p>\r\n', '', 21, '2021-05-08 12:44:08'),
(34, 6, 'deskripsi', '<p>Perancangan Sistem Informasi Berbasis Web untuk Penilaian Siswa Menggunakan Metode Algorithma K-Nearest Neighbor Classification ( K-Nn ) ( Studi Kasus SMK Negeri 31 Jakarta Pusat )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pak suzuki dan bu timor :<br />\r\n- parameter, data-data ditambahkan sebanyak-banyaknya<br />\r\n&nbsp; data berupa rumah, hobi, jaraknya berapa kesekolah, penghasilan orangtua, status orangtua<br />\r\n- minimal data 5 tahun terakhir, data dalam bentuk terstruktur<br />\r\n- judul dibuat prediksi, visualisasi data kelulusan di prediksi, cocok masuk dibidang profesi apa<br />\r\n- parameter : nilai, hobi, bidang pekerjaan, bakat untuk kecocokan psikologi<br />\r\n- judul dibuat menjadi prediksi siswa cocok dibidang profesi apa, parameter ditambah</p>\r\n', '<p>Perancangan Sistem Informasi Berbasis Web Untuk memprediksi tingkat kelulusan terhadap professionalisme siswa menggunakan metode knn dan apriori (Studi Kasus: SMK Negeri 31 Jakarta Pusat)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pak suzuki dan bu timor :<br />\r\n- parameter, data-data ditambahkan sebanyak-banyaknya<br />\r\n&nbsp; data berupa rumah, hobi, jaraknya berapa kesekolah, penghasilan orangtua, status orangtua<br />\r\n- minimal data 5 tahun terakhir, data dalam bentuk terstruktur<br />\r\n- judul dibuat prediksi, visualisasi data kelulusan di prediksi, cocok masuk dibidang profesi apa<br />\r\n- parameter : nilai, hobi, bidang pekerjaan, bakat untuk kecocokan psikologi<br />\r\n- judul dibuat menjadi prediksi siswa cocok dibidang profesi apa, parameter ditambah</p>\r\n', '', 21, '2021-05-08 12:45:04'),
(35, 13, 'assignee', '15', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-08 12:58:28'),
(36, 13, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-08 16:25:07'),
(37, 9, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-08 16:25:28'),
(38, 8, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-08 16:25:54'),
(39, 8, 'assignee', '15', '9', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Colonel Sanders</i>', 21, '2021-05-08 16:25:54'),
(40, 8, 'assignee', '9', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-08 16:26:01'),
(41, 3, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-08 16:26:20'),
(42, 3, 'assignee', '15', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-08 16:26:20'),
(43, 4, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-08 16:26:35'),
(44, 4, 'assignee', '15', '9', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Colonel Sanders</i>', 21, '2021-05-08 16:26:35'),
(45, 4, 'assignee', '9', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-08 16:26:43'),
(46, 18, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-10 00:06:33'),
(47, 18, 'assignee', '9', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-10 08:37:42'),
(48, 8, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-15 20:31:29'),
(49, 16, 'project_case', '4', '1', '<strong>Mitchell Marcel</strong> mengubah Project_case dari <i></i> menjadi <i></i>', 21, '2021-05-17 13:45:36'),
(50, 16, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-17 13:45:36'),
(51, 16, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-17 13:45:46'),
(52, 16, 'tracking', '3', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-17 13:45:55'),
(53, 16, 'kategori', '2', '3', '<strong>Siti Maspupah</strong> mengubah Kategori dari <i>Skripsi</i> menjadi <i>Web System</i>', 22, '2021-05-17 14:38:07'),
(54, 16, 'project_case', '1', '4', '<strong>Siti Maspupah</strong> mengubah Project_case dari <i></i> menjadi <i></i>', 22, '2021-05-17 14:38:07'),
(55, 16, 'priority', '2', '3', '<strong>Siti Maspupah</strong> mengubah Priority dari <i></i> menjadi <i></i>', 22, '2021-05-17 14:38:07'),
(56, 16, 'tracking', '4', '5', '<strong>Siti Maspupah</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 22, '2021-05-17 14:38:07'),
(57, 16, 'start_date', '2021-04-19', '2021-04-04', '<strong>Siti Maspupah</strong> mengubah Start_date dari <i>2021-04-19</i> menjadi <i>2021-04-04</i>', 22, '2021-05-17 14:38:07'),
(58, 16, 'due_date', '2021-04-30', '2021-05-04', '<strong>Siti Maspupah</strong> mengubah Due_date dari <i>2021-04-30</i> menjadi <i>2021-05-04</i>', 22, '2021-05-17 14:38:07'),
(59, 16, 'kategori', '3', '2', '<strong>Siti Maspupah</strong> mengubah Kategori dari <i>Web System</i> menjadi <i>Skripsi</i>', 22, '2021-05-17 14:43:04'),
(60, 16, 'project_case', '4', '1', '<strong>Siti Maspupah</strong> mengubah Project_case dari <i></i> menjadi <i></i>', 22, '2021-05-17 14:43:04'),
(61, 16, 'priority', '3', '2', '<strong>Siti Maspupah</strong> mengubah Priority dari <i></i> menjadi <i></i>', 22, '2021-05-17 14:43:04'),
(62, 16, 'tracking', '5', '4', '<strong>Siti Maspupah</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 22, '2021-05-17 14:43:04'),
(63, 16, 'start_date', '2021-04-04', '2021-04-19', '<strong>Siti Maspupah</strong> mengubah Start_date dari <i>2021-04-04</i> menjadi <i>2021-04-19</i>', 22, '2021-05-17 14:43:04'),
(64, 16, 'due_date', '2021-05-04', '2021-04-30', '<strong>Siti Maspupah</strong> mengubah Due_date dari <i>2021-05-04</i> menjadi <i>2021-04-30</i>', 22, '2021-05-17 14:43:04'),
(65, 21, 'assignee', '9', '22', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Siti Maspupah</i>', 21, '2021-05-17 14:44:07'),
(66, 8, 'deskripsi', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series</p>\r\n', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series Pada Toko JatiAsih Motor</p>\r\n', '', 21, '2021-05-19 18:36:14'),
(67, 13, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-20 17:04:39'),
(68, 22, 'deskripsi', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN BARCODE PADA TOKO SEMBAKO WARUNG BIRU MENGGUNAKAN METODE FP-GROWTH DAN MOVING AVARAGE</p>\r\n', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN QR CODE PADA SASTRO MART MENGGUNAKAN METODE FP- GROWTH DAN HASH BASE</p>\r\n', '', 21, '2021-05-26 09:39:04'),
(69, 7, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-26 10:11:51'),
(70, 7, 'assignee', '15', '20', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Denis Ahmad</i>', 21, '2021-05-26 10:11:51'),
(71, 13, 'tracking', '3', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-28 14:28:47'),
(72, 18, 'deskripsi', '<p>&ldquo;<strong>Rancangan</strong> <strong>Bangun</strong> <strong>Aplikasi</strong> <strong>Sistem</strong> <strong>Pendukung</strong> <strong>Keputusan</strong> <strong>Seleksi</strong> <strong>Penerimaan</strong> <strong>Kartu</strong><strong> Jakarta </strong><strong>Pintar</strong><strong> (KJP) </strong><strong>pada</strong> <strong>Siswa</strong><strong>/i SMA </strong><strong>Muhammadiyah</strong><strong> 12 Jakarta </strong><strong>Dengan</strong> <strong>Metode</strong> <strong><em>Simple Multi Attribute Rating Technique</em> (SMART)&rdquo;</strong>&ldquo;<strong>Rancangan</strong> <strong>Bangun</strong> <strong>Aplikasi</strong> <strong>Sistem</strong> <strong>Pendukung</strong> <strong>Keputusan</strong> <strong>Seleksi</strong> <strong>Penerimaan</strong> <strong>Kartu</strong><strong> Jakarta </strong><strong>Pintar</strong><strong> (KJP) </strong><strong>pada</strong> <strong>Siswa</strong><strong>/i SMA </strong><strong>Muhammadiyah</strong><strong> 12 Jakarta </strong><strong>Dengan</strong> <strong>Metode</strong>&nbsp;<em>FUZZYSAW</em><strong>&rdquo;</strong></p>\r\n', '<p>&ldquo;<strong>Rancangan</strong> <strong>Bangun</strong> <strong>Aplikasi</strong> <strong>Sistem</strong> <strong>Pendukung</strong> <strong>Keputusan</strong> <strong>Seleksi</strong> <strong>Penerimaan</strong> <strong>Kartu</strong><strong> Jakarta </strong><strong>Pintar</strong><strong> (KJP) </strong><strong>pada</strong> <strong>Siswa</strong><strong>/i SMA </strong><strong>Muhammadiyah</strong><strong> 12 Jakarta </strong><strong>Dengan</strong> <strong>Metode</strong>&nbsp;<em>FUZZYSAW</em><strong>&rdquo;</strong></p>\r\n', '', 21, '2021-05-28 21:07:39'),
(73, 8, 'assignee', '21', '20', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Mitchell Marcel</i> menjadi <i>Denis Ahmad</i>', 21, '2021-05-31 12:27:50'),
(74, 10, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-31 12:29:05'),
(75, 10, 'assignee', '15', '20', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Denis Ahmad</i>', 21, '2021-05-31 12:29:05'),
(76, 15, 'tracking', '1', '3', '<strong></strong> mengubah Tracking dari <i></i> menjadi <i></i>', 1, '2021-05-31 13:07:20'),
(77, 15, 'deskripsi', '', '<p>Sistem prediksi persediaan barang percetakan CV BISMA OPTIMA MENGGUNAKAN METODE SES DAN REGRESI LINEAR</p>\r\n', '<strong></strong> mengubah Tracking dari <i></i> menjadi <i></i>', 1, '2021-05-31 13:07:20'),
(78, 19, 'tracking', '1', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-31 19:12:29'),
(79, 19, 'assignee', '9', '23', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Nurul Azmi</i>', 21, '2021-05-31 19:12:29'),
(80, 19, 'deskripsi', '', '<p>Kopibenk</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Nurul Azmi</i>', 21, '2021-05-31 19:12:29'),
(81, 19, 'tracking', '4', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-31 19:19:47'),
(82, 19, 'tracking', '5', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i></i> menjadi <i></i>', 21, '2021-05-31 19:25:07'),
(83, 19, 'tracking', '4', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>testing</i> menjadi <i>deploy</i>', 21, '2021-05-31 19:26:25'),
(84, 5, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-05-31 19:28:19'),
(85, 21, 'assignee', '22', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Siti Maspupah</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-31 19:30:19'),
(86, 21, 'assignee', '21', '22', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Mitchell Marcel</i> menjadi <i>Siti Maspupah</i>', 21, '2021-05-31 19:31:37'),
(87, 12, 'assignee', '15', '9', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Colonel Sanders</i>', 21, '2021-05-31 19:33:27'),
(88, 11, 'assignee', '15', '9', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Jamal Bahri</i> menjadi <i>Colonel Sanders</i>', 21, '2021-05-31 19:33:59'),
(89, 11, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-05-31 19:35:02'),
(90, 11, 'assignee', '9', '20', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Denis Ahmad</i>', 21, '2021-05-31 19:35:55'),
(91, 23, 'nominal', '', '3200000', '<strong>Mitchell Marcel</strong> mengubah Nominal dari <i></i> menjadi <i>3200000</i>', 21, '2021-05-31 19:50:32'),
(92, 22, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>analisa desain sistem</i>', 21, '2021-05-31 20:27:14'),
(93, 22, 'assignee', '9', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Colonel Sanders</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-05-31 20:27:34'),
(94, 6, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>pengerjaan</i>', 21, '2021-05-31 21:00:20'),
(95, 9, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>pengerjaan</i>', 21, '2021-05-31 21:00:49'),
(96, 9, 'assignee', '21', '20', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Mitchell Marcel</i> menjadi <i>Denis Ahmad</i>', 21, '2021-05-31 21:00:49'),
(97, 4, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>pengerjaan</i>', 21, '2021-05-31 21:01:24'),
(98, 3, 'deskripsi', '<p>Rancangan Sistem Informasi Pendukung Keputusan Promosi Jabatan dengan menggunakan Metode Multi Attribute Utility Theory ( Maut ) pada PT Marga Nusantara Jaya Berbasis Website</p>\r\n', '<p>Rancangan Sistem Informasi Pendukung Keputusan Promosi Jabatan dengan menggunakan Metode Multi Attribute Utility Theory ( Maut ) pada PT Marga Nusantara Jaya Berbasis Website<br />\r\n<br />\r\nMAUT, dasar teorinya&nbsp;<br />\r\nmengukur nilai kinerja, kompetensi &nbsp;jelaskan dan dihitung atau di dropdown, penialian rekan sejawat.<br />\r\ninput data pegawai.&nbsp;<br />\r\npegawai juga bs input data historis pendidikan.<br />\r\ndibndingkan MAUT dan Fuzzy SAW<br />\r\nKriterianya<br />\r\n1. Nilai kinerja<br />\r\n2. Pendidikan<br />\r\n3. Golongan<br />\r\n4. Masa kerja<br />\r\n5. Kehadiran<br />\r\n6. Kompetensi<br />\r\nKriteria 1 dan 6 ada angketnya ada beberapa pertanyaan</p>\r\n', '', 21, '2021-06-02 09:08:48'),
(99, 22, 'tracking', '2', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>testing</i>', 21, '2021-06-04 10:16:54'),
(100, 6, 'deskripsi', '<p>Perancangan Sistem Informasi Berbasis Web Untuk memprediksi tingkat kelulusan terhadap professionalisme siswa menggunakan metode knn dan apriori (Studi Kasus: SMK Negeri 31 Jakarta Pusat)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pak suzuki dan bu timor :<br />\r\n- parameter, data-data ditambahkan sebanyak-banyaknya<br />\r\n&nbsp; data berupa rumah, hobi, jaraknya berapa kesekolah, penghasilan orangtua, status orangtua<br />\r\n- minimal data 5 tahun terakhir, data dalam bentuk terstruktur<br />\r\n- judul dibuat prediksi, visualisasi data kelulusan di prediksi, cocok masuk dibidang profesi apa<br />\r\n- parameter : nilai, hobi, bidang pekerjaan, bakat untuk kecocokan psikologi<br />\r\n- judul dibuat menjadi prediksi siswa cocok dibidang profesi apa, parameter ditambah</p>\r\n', '<p>Perancangan Sistem Informasi Berbasis Web Untuk memprediksi tingkat kelulusan terhadap professionalisme siswa menggunakan metode knn dan apriori (Studi Kasus: SMK Negeri 31 Jakarta Pusat)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pak suzuki dan bu timor :<br />\r\n- parameter, data-data ditambahkan sebanyak-banyaknya<br />\r\n&nbsp; data berupa rumah, hobi, jaraknya berapa kesekolah, penghasilan orangtua, status orangtua<br />\r\n- minimal data 5 tahun terakhir, data dalam bentuk terstruktur<br />\r\n- judul dibuat prediksi, visualisasi data kelulusan di prediksi, cocok masuk dibidang profesi apa<br />\r\n- parameter : nilai, hobi, bidang pekerjaan, bakat untuk kecocokan psikologi<br />\r\n- judul dibuat menjadi prediksi siswa cocok dibidang profesi apa, parameter ditambah</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2021-06-11<br />\r\ndata transaksi dan metode log perhitungan seperti apa setiap metode yang dipakai di aplikasi<br />\r\n<br />\r\n&nbsp;</p>\r\n', '', 21, '2021-06-11 10:27:37'),
(101, 24, 'deskripsi', '', '<p>perancangan sistem pendukung keputusan pemilihan mobil bekas terbaik sesuai kriteria menggunakan metode smart dan logika fuzzy mamdani</p>\r\n', '', 21, '2021-06-14 15:37:50'),
(102, 20, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-06-15 08:46:12'),
(103, 12, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-06-15 08:46:46'),
(104, 26, 'deskripsi', '<p>Skripsi Gilang SPK Mobil Bekas</p>\r\n', '<p>perancangan sistem pendukung keputusan pemilihan mobil bekas terbaik sesuai kriteria menggunakan metode smart dan logika fuzzy mamdani</p>\r\n', '', 21, '2021-06-17 22:43:55'),
(105, 25, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-06-17 23:00:10'),
(106, 7, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>pengerjaan</i>', 21, '2021-06-19 21:08:17'),
(107, 9, 'deskripsi', '<p>Penerapan Metode Collaborative Filtering dan Algoritma Asosiasi di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n\r\n<p><br />\r\n1. K-Mean menentukan cluster daerah<br />\r\ndengan penjualan tertinggi dan terendah<br />\r\n(mencari penyebab daerah dengan penjualan<br />\r\nterendah) dengan tujuan mencari kinerja SPG<br />\r\n2. Cari standar kerja spg di lokasi</p>\r\n\r\n<p>3. Penilaian standar misal ada penjualan<br />\r\nterendah solusi nya apa entah spg yg<br />\r\npenjualan tertinggi dipindah ke lokasi<br />\r\npenjualan terendah atau rekomendasi.</p>\r\n\r\n<p>4. Fitur di Laporan Metode variabel nya bisa<br />\r\ndiganti2 jangan hard code.</p>\r\n\r\n<p>5. Model nya import data bukan input data,<br />\r\njadi bisa langsung input dari excel bukan<br />\r\ninput manual.</p>\r\n\r\n<p>6. Ada fitur history spg(Data SPG Detail)<br />\r\nketika login, nama, tanggal, tanggal masuk<br />\r\nspg, lokasi wilayah spg ditempatkan</p>\r\n\r\n<p>7. Fitur login admin,manager<br />\r\n&nbsp;</p>\r\n', '<p>Penerapan Metode K-mean dan Liner Programming di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n\r\n<p><br />\r\n1. K-Mean menentukan cluster daerah<br />\r\ndengan penjualan tertinggi dan terendah<br />\r\n(mencari penyebab daerah dengan penjualan<br />\r\nterendah) dengan tujuan mencari kinerja SPG<br />\r\n2. Cari standar kerja spg di lokasi</p>\r\n\r\n<p>3. Penilaian standar misal ada penjualan<br />\r\nterendah solusi nya apa entah spg yg<br />\r\npenjualan tertinggi dipindah ke lokasi<br />\r\npenjualan terendah atau rekomendasi.</p>\r\n\r\n<p>4. Fitur di Laporan Metode variabel nya bisa<br />\r\ndiganti2 jangan hard code.</p>\r\n\r\n<p>5. Model nya import data bukan input data,<br />\r\njadi bisa langsung input dari excel bukan<br />\r\ninput manual.</p>\r\n\r\n<p>6. Ada fitur history spg(Data SPG Detail)<br />\r\nketika login, nama, tanggal, tanggal masuk<br />\r\nspg, lokasi wilayah spg ditempatkan</p>\r\n\r\n<p>7. Fitur login admin,manager<br />\r\n&nbsp;</p>\r\n', '', 21, '2021-06-21 19:42:12'),
(108, 8, 'deskripsi', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series Pada Toko JatiAsih Motor</p>\r\n', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series and fuzzy Pada Toko JatiAsih Motor</p>\r\n\r\n<p>Aplikasi: pada laporan yang dicetak tambahkan lambang perusahaan dibagian diatas, tambahkan juga tanggal cetaknya. Tampilkan hasil dari moving average dan fuzzy sugeno.</p>\r\n', '', 21, '2021-06-24 09:53:29'),
(109, 9, 'deskripsi', '<p>Penerapan Metode K-mean dan Liner Programming di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n\r\n<p><br />\r\n1. K-Mean menentukan cluster daerah<br />\r\ndengan penjualan tertinggi dan terendah<br />\r\n(mencari penyebab daerah dengan penjualan<br />\r\nterendah) dengan tujuan mencari kinerja SPG<br />\r\n2. Cari standar kerja spg di lokasi</p>\r\n\r\n<p>3. Penilaian standar misal ada penjualan<br />\r\nterendah solusi nya apa entah spg yg<br />\r\npenjualan tertinggi dipindah ke lokasi<br />\r\npenjualan terendah atau rekomendasi.</p>\r\n\r\n<p>4. Fitur di Laporan Metode variabel nya bisa<br />\r\ndiganti2 jangan hard code.</p>\r\n\r\n<p>5. Model nya import data bukan input data,<br />\r\njadi bisa langsung input dari excel bukan<br />\r\ninput manual.</p>\r\n\r\n<p>6. Ada fitur history spg(Data SPG Detail)<br />\r\nketika login, nama, tanggal, tanggal masuk<br />\r\nspg, lokasi wilayah spg ditempatkan</p>\r\n\r\n<p>7. Fitur login admin,manager<br />\r\n&nbsp;</p>\r\n', '<p>Penerapan Metode K-mean dan Liner Programming di Datamining untuk Sistem Rekomendasi Penempatan Sales SPG</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n\r\n<p><br />\r\n1. K-Mean menentukan cluster daerah<br />\r\ndengan penjualan tertinggi dan terendah<br />\r\n(mencari penyebab daerah dengan penjualan<br />\r\nterendah) dengan tujuan mencari kinerja SPG<br />\r\n2. Cari standar kerja spg di lokasi</p>\r\n\r\n<p>3. Penilaian standar misal ada penjualan<br />\r\nterendah solusi nya apa entah spg yg<br />\r\npenjualan tertinggi dipindah ke lokasi<br />\r\npenjualan terendah atau rekomendasi.</p>\r\n\r\n<p>4. Fitur di Laporan Metode variabel nya bisa<br />\r\ndiganti2 jangan hard code.</p>\r\n\r\n<p>5. Model nya import data bukan input data,<br />\r\njadi bisa langsung input dari excel bukan<br />\r\ninput manual.</p>\r\n\r\n<p>6. Ada fitur history spg(Data SPG Detail)<br />\r\nketika login, nama, tanggal, tanggal masuk<br />\r\nspg, lokasi wilayah spg ditempatkan</p>\r\n\r\n<p>7. Fitur login admin,manager<br />\r\n&nbsp;</p>\r\n', '', 21, '2021-06-24 15:33:15'),
(110, 16, 'nama_project', 'KP Siti Maspupah Teknik Informatika', 'KP Siti Maspupah Teknologi Informasi', '<strong>Siti Maspupah</strong> mengubah Nama_project dari <i>KP Siti Maspupah Teknik Informatika</i> menjadi <i>KP Siti Maspupah Teknologi Informasi</i>', 22, '2021-06-25 21:01:41'),
(111, 16, 'kategori', '2', '3', '<strong>Siti Maspupah</strong> mengubah Kategori dari <i>Skripsi</i> menjadi <i>Web System</i>', 22, '2021-06-25 21:01:41'),
(112, 16, 'tracking', '4', '6', '<strong>Siti Maspupah</strong> mengubah Tracking dari <i>testing</i> menjadi <i>finish</i>', 22, '2021-06-25 21:01:41'),
(113, 15, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-06-25 21:07:56'),
(114, 27, 'tracking', '3', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>testing</i>', 21, '2021-06-27 06:34:50'),
(115, 22, 'tracking', '4', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>testing</i> menjadi <i>deploy</i>', 21, '2021-06-27 06:36:46'),
(116, 27, 'tracking', '4', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>testing</i> menjadi <i>deploy</i>', 21, '2021-06-27 06:36:57'),
(117, 8, 'tracking', '3', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>deploy</i>', 21, '2021-06-27 12:23:42'),
(118, 18, 'tracking', '2', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>testing</i>', 21, '2021-06-27 13:29:34'),
(119, 10, 'tracking', '3', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>testing</i>', 21, '2021-06-27 19:35:40'),
(120, 10, 'deskripsi', '<p>Perbandingan Model Regresi Linier ada Datamining Dengan Exponential Smooth untuk Estimasi Harga pada PT Givro Multi Teknik Perkasa</p>\r\n', '<p>Perbandingan Model K-Mean ada Datamining Dengan Exponential Smooth untuk Estimasi Harga pada PT Givro Multi Teknik Perkasa</p>\r\n', '', 21, '2021-06-27 19:36:00'),
(121, 26, 'deskripsi', '<p>perancangan sistem pendukung keputusan pemilihan mobil bekas terbaik sesuai kriteria menggunakan metode smart dan logika fuzzy mamdani</p>\r\n', '<p>perancangan sistem pendukung keputusan pemilihan mobil bekas terbaik sesuai kriteria menggunakan metode smart dan logika fuzzy mamdani</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>jenis mobil, merek mobil, tahun pembuatan, harga, kapasitas penumpang (orang), kapasitas silinder (cc), transmisi,</p>\r\n', '', 21, '2021-07-02 21:39:16'),
(122, 26, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-07-02 21:39:27'),
(123, 5, 'tracking', '3', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>deploy</i>', 21, '2021-07-25 22:15:19'),
(124, 3, 'tracking', '2', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>deploy</i>', 21, '2021-07-25 22:15:40'),
(125, 22, 'deskripsi', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN QR CODE PADA SASTRO MART MENGGUNAKAN METODE FP- GROWTH DAN HASH BASE</p>\r\n', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN QR CODE PADA SASTRO MART MENGGUNAKAN METODE FP- GROWTH DAN HASH BASE<br />\r\n<br />\r\nMobile ready</p>\r\n', '', 21, '2021-07-25 22:16:31'),
(126, 7, 'tracking', '3', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>deploy</i>', 21, '2021-07-25 22:16:46'),
(127, 12, 'tracking', '3', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>deploy</i>', 21, '2021-07-25 22:17:00'),
(128, 28, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>pengerjaan</i>', 21, '2021-07-25 22:17:16'),
(129, 30, 'project_case', '3', '1', '<strong>Mitchell Marcel</strong> mengubah Project_case dari <i>Feature</i> menjadi <i>Build</i>', 21, '2021-08-03 12:23:43'),
(130, 30, 'assignee', '24', '21', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Choirul Satryo Utomo</i> menjadi <i>Mitchell Marcel</i>', 21, '2021-08-03 12:23:43'),
(131, 30, 'project_case', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Project_case dari <i>Build</i> menjadi <i>Feature</i>', 21, '2021-08-03 12:24:16'),
(132, 8, 'deskripsi', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series and fuzzy Pada Toko JatiAsih Motor</p>\r\n\r\n<p>Aplikasi: pada laporan yang dicetak tambahkan lambang perusahaan dibagian diatas, tambahkan juga tanggal cetaknya. Tampilkan hasil dari moving average dan fuzzy sugeno.</p>\r\n', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series and fuzzy Pada Toko JatiAsih Motor</p>\r\n\r\n<p>Revisi Vira Metta :&nbsp;<br />\r\nPak Suzuki:<br />\r\n1. Harga awal dasar brg ditampilkan<br />\r\n2. Laporan rugi laba</p>\r\n\r\n<p>Pak Adam:</p>\r\n\r\n<p>Pak Bagus :<br />\r\napplikasi :<br />\r\n- ID barang<br />\r\n- rekomendasi dari hasil perhitungan<br />\r\n- detail produk (ID produk, tgl beli, suplier, harga beli)<br />\r\n- menu konfigurasi)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 21, '2021-08-04 18:19:29'),
(133, 10, 'deskripsi', '<p>Perbandingan Model K-Mean ada Datamining Dengan Exponential Smooth untuk Estimasi Harga pada PT Givro Multi Teknik Perkasa</p>\r\n', '<p>Perbandingan Model K-Mean ada Datamining Dengan Exponential Smooth untuk Estimasi Harga pada PT Givro Multi Teknik Perkasa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi nazel :</p>\r\n\r\n<p>1. Cara kerja metode kmean dibuat&amp;ditampilan dibawah metode k-mean</p>\r\n\r\n<p>2. Kmean dikelompokkan menjadi 3 kelompok nanti hasilnya digunakan dan dimasukkan ke masing2 kelompok</p>\r\n\r\n<p>3. Dikasih logo&amp;nama perusahaan di tampilan dashboard.</p>\r\n', '', 21, '2021-08-04 18:21:55'),
(134, 30, 'project_case', '3', '1', '<strong>Mitchell Marcel</strong> mengubah Project_case dari <i>Feature</i> menjadi <i>Build</i>', 21, '2021-08-04 18:42:04'),
(135, 30, 'assignee', '21', '25', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Mitchell Marcel</i> menjadi <i>Rachma Adzima Maulida</i>', 21, '2021-08-04 18:42:04'),
(136, 30, 'start_date', '2021-08-03', '2021-08-09', '<strong>Mitchell Marcel</strong> mengubah Start_date dari <i>2021-08-03</i> menjadi <i>2021-08-09</i>', 21, '2021-08-04 18:42:57'),
(137, 30, 'due_date', '2021-08-16', '2021-08-23', '<strong>Mitchell Marcel</strong> mengubah Due_date dari <i>2021-08-16</i> menjadi <i>2021-08-23</i>', 21, '2021-08-04 18:42:57');
INSERT INTO `project_log` (`id`, `project_id`, `field`, `data_before`, `data_after`, `text`, `created_by`, `created_at`) VALUES
(138, 30, 'deskripsi', '<p>To Do Requirement Analyst</p>\r\n\r\n<h2>Database Design</h2>\r\n\r\n<ol>\r\n	<li>Todo</li>\r\n</ol>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:184px\">\r\n			<p>Field</p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:179px\">\r\n			<p>type</p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:190px\">\r\n			<p>extras</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>ID</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>int</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>primary</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>title</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>varchar</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Description</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>text</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Start date</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>date</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>&gt;= today</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Due date</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>date</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>&gt;= today</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>assignee</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Int</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>Relate User_id</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>status</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Int/varchar</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Create_by</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Int</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>User Session ID</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Create_at</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Datetime</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>Current_timestamp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Updated_by</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Int</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>User Session ID</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Updated_at</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Datetime</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>Current_timestamp</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Todo_detail</li>\r\n</ol>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:184px\">\r\n			<p>Field</p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:179px\">\r\n			<p>type</p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:190px\">\r\n			<p>extras</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>ID</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>int</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>primary</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Todo_id</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>int</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>Parent ID</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>title</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>varchar</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Description</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>text</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Checked</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Enum(0,1)</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>True or false</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Create_by</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Int</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>User Session ID</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>Create_at</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n			<p>Datetime</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n			<p>Current_timestamp</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note:</p>\r\n\r\n<p>Jika ada penambahan atau pengurangan field dipersilahkan untuk melakukan penyesuaian</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Mockup</h2>\r\n\r\n<ol>\r\n	<li>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"height:0px; width:145px\">&nbsp;</td>\r\n			</tr>\r\n			<tr>\r\n				<td>&nbsp;</td>\r\n				<td><img src=\"file:///C:/Users/MITCHE~1.MAR/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\" style=\"height:268px; width:448px\" /></td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<br />\r\n	Main Todo</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Detail Todo</li>\r\n</ol>\r\n\r\n<p><img src=\"file:///C:/Users/MITCHE~1.MAR/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg\" style=\"height:297px; width:499px\" /></p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:104px\">\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:142px\">\r\n			<p><strong>Title</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:356px\">\r\n			<p><strong>Description</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:104px\">\r\n			<p><strong>Mockup 1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:142px\">\r\n			<p>Main Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:356px\">\r\n			<p>Menampilkan List todo yang telah tersimpan</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:104px\">\r\n			<p><strong>Mockup 2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:142px\">\r\n			<p>Detail Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:356px\">\r\n			<p>Menampilkan child todo dari todo utama, dimana masing-masing child punya checkbox apabila child todo telah selesai</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Unique Case</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n			<p><strong>Title</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n			<p><strong>Description</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Child Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Dapat check masing-masing apa bila child todo telah selesai</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Todo status</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Status Condition</p>\r\n\r\n			<ol>\r\n				<li>Hold (apabila belum ada assignee)</li>\r\n				<li>Ongoing (assignee dan due date aktif)</li>\r\n				<li>Done (Todo Child telah selesai semua)</li>\r\n				<li>Expired (Due date terlewat namun masih ada child yang belum selesai)</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note: jika ada case tambahan, dapat dibicarakan selanjutnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Potential Incoming Case:</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n			<p><strong>Title</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n			<p><strong>Description</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Automated Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Automasi todo dengan project, misal ada penambahan project baru, maka langsung tertambah pada todo</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Privilege Access</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Tiap assignee hanya dapat mengakses miliknya sendiri</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>3</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Client Access</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Client dapat request, misal ada penambahan, revisi, dll</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>&hellip;</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>&hellip;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<h2>Unique Case</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n			<p><strong>Title</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n			<p><strong>Description</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Child Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Dapat check masing-masing apa bila child todo telah selesai</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Todo status</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Status Condition</p>\r\n\r\n			<ol>\r\n				<li>Hold (apabila belum ada assignee)</li>\r\n				<li>Ongoing (assignee dan due date aktif)</li>\r\n				<li>Done (Todo Child telah selesai semua)</li>\r\n				<li>Expired (Due date terlewat namun masih ada child yang belum selesai)</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note: jika ada case tambahan, dapat dibicarakan selanjutnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Potential Upcoming Case:</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n			<p><strong>Title</strong></p>\r\n			</td>\r\n			<td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n			<p><strong>Description</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Automated Todo</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Automasi todo dengan project, misal ada penambahan project baru, maka langsung tertambah pada todo</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>2</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Privilege Access</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Tiap assignee hanya dapat mengakses miliknya sendiri</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>3</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>Client Access</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>Client dapat request, misal ada penambahan, revisi, dll</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n			<p><strong>&hellip;</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n			<p>&hellip;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Due_date dari <i>2021-08-16</i> menjadi <i>2021-08-23</i>', 21, '2021-08-04 18:42:57'),
(139, 5, 'deskripsi', '<p>Perancangan Sistem Informasi Pengambilan Keputusan Estimasi Biaya Pengiriman Barang Berbasis Web menggunakan Metode Havershine dan Location Based Service ( LBS ) pada PT Doksa Artha Gemilang</p>\r\n\r\n<p>(Ganti metode jadi UCS dan Ant Colony, Lanjut)&nbsp;</p>\r\n', '<p>Perancangan Sistem Informasi Pengambilan Keputusan Estimasi Biaya Pengiriman Barang Berbasis Web menggunakan Metode Havershine dan Location Based Service ( LBS ) pada PT Doksa Artha Gemilang</p>\r\n\r\n<p>(Ganti metode jadi UCS dan Ant Colony, Lanjut)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Mega Pangastuti</p>\r\n\r\n<p>Pak Andi Susilo<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Bahasa pada tampilan aplikasi disesuaikan kembali (disamakan pakai bahasa inggris atau bahasa indonesia).<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada fitur transaksi ditambahkan jumlah input jenis bendanya.</p>\r\n\r\n<p>Pak Aji Setiawan<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Metode haversine disamakan lagi total jaraknya dengan maps, lakukan komparasi dengan maps<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Validasi pemilihan supir</p>\r\n\r\n<p>Bu Timor Setyaningsih<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada metode knn ditambahkan lagi fungsi penggunaannya. Dalam satu pengiriman bisa mengirim ke 2 titik tujuan yang berbeda tetapi tetap dalam jalur yang sama sesuai dengan titik tujuan awal. Misal : pengiriman awal dari Jakarta &ndash; bandung, didalam mobil masih muat lebih barang lagi untuk memaksimalkan pengiriman, maka akan ditambahkan lagi satu titik yang searah dengan titik awal, misal daerah bogor atau lain sebagainya.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada laporan aplikasi ditambahkan tampilan bagan diagram batang. Contoh : pengiriman jalur Jakarta &ndash; bandung menghasilkan berapa banyak total biayanya? Dan juga jalur pengiriman lainnya.<br />\r\n&nbsp;</p>\r\n', '', 21, '2021-08-04 18:52:59'),
(140, 4, 'deskripsi', '<p>Perancangan Sistem Informasi Pendukung Keputusan Pemilihan Siswa Terbaik TKJ pada SMK Taman Siswa Jakarta berbasis Web menggunakan Metode SAW dan Fuzzy</p>\r\n', '<p>Perancangan Sistem Informasi Pendukung Keputusan Pemilihan Siswa Terbaik TKJ pada SMK Taman Siswa Jakarta berbasis Web menggunakan Metode SAW dan Fuzzy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Devi Rahmayanti</p>\r\n\r\n<p>Revisi Pak Bagus&nbsp;</p>\r\n\r\n<p>- validasi bobot pada kriteria 100% jika diinput total lebih dari 100 tidak diperbolehkan sistem&nbsp;<br />\r\n- hasil uji coba disesuaikan dengan kesimpulan&nbsp;<br />\r\n- periode perhitungan , periode promosi jabatan sebelumnya<br />\r\n- history perhitungan&nbsp;<br />\r\n- notif : hasil rekomendasi muncul pada setiap user (agar langsung diubah jabatan sesuai rekomendasi)&nbsp;</p>\r\n\r\n<p>Revisi Pak Herianto&nbsp;<br />\r\n-pada apk ada perbandingan kecepatan antara metode MAUT dan FuzzySaw &nbsp;ketika di klik pada perhitungan metodenya lebih cepat apa<br />\r\n- akurasi penilaian , sebelum tabel normalilsasi dan bobot nya ada cara hitungnya , hasil akhir penilaian perangkingan di perjelas boleh pakai diagram persen<br />\r\n- penilaian rekan sejawat dan bawahan&nbsp;<br />\r\n- ada tampilan acuan penilaian sebelumnya dari perusahaan, bandingkan dengan perhitungan metode lebih akurat apa&nbsp;</p>\r\n\r\n<p>Revisi Pak Andi&nbsp;<br />\r\n- bobot disamakan menggunakan persen ketika edit<br />\r\n- aplikasi pakai bahasa indonesia semua crudnya dll<br />\r\n&nbsp;</p>\r\n', '', 21, '2021-08-04 18:53:27'),
(141, 4, 'deskripsi', '<p>Perancangan Sistem Informasi Pendukung Keputusan Pemilihan Siswa Terbaik TKJ pada SMK Taman Siswa Jakarta berbasis Web menggunakan Metode SAW dan Fuzzy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Devi Rahmayanti</p>\r\n\r\n<p>Revisi Pak Bagus&nbsp;</p>\r\n\r\n<p>- validasi bobot pada kriteria 100% jika diinput total lebih dari 100 tidak diperbolehkan sistem&nbsp;<br />\r\n- hasil uji coba disesuaikan dengan kesimpulan&nbsp;<br />\r\n- periode perhitungan , periode promosi jabatan sebelumnya<br />\r\n- history perhitungan&nbsp;<br />\r\n- notif : hasil rekomendasi muncul pada setiap user (agar langsung diubah jabatan sesuai rekomendasi)&nbsp;</p>\r\n\r\n<p>Revisi Pak Herianto&nbsp;<br />\r\n-pada apk ada perbandingan kecepatan antara metode MAUT dan FuzzySaw &nbsp;ketika di klik pada perhitungan metodenya lebih cepat apa<br />\r\n- akurasi penilaian , sebelum tabel normalilsasi dan bobot nya ada cara hitungnya , hasil akhir penilaian perangkingan di perjelas boleh pakai diagram persen<br />\r\n- penilaian rekan sejawat dan bawahan&nbsp;<br />\r\n- ada tampilan acuan penilaian sebelumnya dari perusahaan, bandingkan dengan perhitungan metode lebih akurat apa&nbsp;</p>\r\n\r\n<p>Revisi Pak Andi&nbsp;<br />\r\n- bobot disamakan menggunakan persen ketika edit<br />\r\n- aplikasi pakai bahasa indonesia semua crudnya dll<br />\r\n&nbsp;</p>\r\n', '<p>Perancangan Sistem Informasi Pendukung Keputusan Pemilihan Siswa Terbaik TKJ pada SMK Taman Siswa Jakarta berbasis Web menggunakan Metode SAW dan Fuzzy</p>\r\n\r\n<p>Revisi aplikasi Ernanda Amalia Arumi</p>\r\n\r\n<p>PAK AJI SETIAWAN<br />\r\n- Menambahkan login siswa untuk mengetahui rangking yang di dapat&nbsp;<br />\r\n- Menambahkan menu siswa dan nilai yang sudah ada<br />\r\n- Penilaian siswa, menambahkan semester genap dan ganjil&nbsp;<br />\r\n- detail perhitungan metode saw untuk perangkingan sedangkan fuzzy bukan perangkingan di pisahkan dengan metode saw<br />\r\n- Menampilkan nilai siswa, mata pelajaran,kelas dan nilai raport = siswa berprestasi<br />\r\nOh iya bang kemaren yang penilaian kriteria itu bisa subjektif karena bisa aja guru ga suka sama murid menjelekan di kriteria itu bang enaknya di ganti apa ya bang?<br />\r\nBu Timor<br />\r\n- Metode fuzzy dipisahkan saja dari metode saw atau jangan sama dari perangkingan bisa di jelekan di penilaian sikap<br />\r\n- tidak ada perangkingan<br />\r\n- menambahkan actor login guru bidang studi mata pelajaran ada lalu diambil nilainya</p>\r\n\r\n<p>Pak Bagus<br />\r\nLaporan disamakan perhitungan dengan aplikasi</p>\r\n', '', 21, '2021-08-04 18:53:46'),
(142, 3, 'deskripsi', '<p>Rancangan Sistem Informasi Pendukung Keputusan Promosi Jabatan dengan menggunakan Metode Multi Attribute Utility Theory ( Maut ) pada PT Marga Nusantara Jaya Berbasis Website<br />\r\n<br />\r\nMAUT, dasar teorinya&nbsp;<br />\r\nmengukur nilai kinerja, kompetensi &nbsp;jelaskan dan dihitung atau di dropdown, penialian rekan sejawat.<br />\r\ninput data pegawai.&nbsp;<br />\r\npegawai juga bs input data historis pendidikan.<br />\r\ndibndingkan MAUT dan Fuzzy SAW<br />\r\nKriterianya<br />\r\n1. Nilai kinerja<br />\r\n2. Pendidikan<br />\r\n3. Golongan<br />\r\n4. Masa kerja<br />\r\n5. Kehadiran<br />\r\n6. Kompetensi<br />\r\nKriteria 1 dan 6 ada angketnya ada beberapa pertanyaan</p>\r\n', '<p>Rancangan Sistem Informasi Pendukung Keputusan Promosi Jabatan dengan menggunakan Metode Multi Attribute Utility Theory ( Maut ) pada PT Marga Nusantara Jaya Berbasis Website<br />\r\n<br />\r\nMAUT, dasar teorinya&nbsp;<br />\r\nmengukur nilai kinerja, kompetensi &nbsp;jelaskan dan dihitung atau di dropdown, penialian rekan sejawat.<br />\r\ninput data pegawai.&nbsp;<br />\r\npegawai juga bs input data historis pendidikan.<br />\r\ndibndingkan MAUT dan Fuzzy SAW<br />\r\nKriterianya<br />\r\n1. Nilai kinerja<br />\r\n2. Pendidikan<br />\r\n3. Golongan<br />\r\n4. Masa kerja<br />\r\n5. Kehadiran<br />\r\n6. Kompetensi<br />\r\nKriteria 1 dan 6 ada angketnya ada beberapa pertanyaan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Devi Rahmayanti</p>\r\n\r\n<p>Revisi Pak Bagus&nbsp;</p>\r\n\r\n<p>- validasi bobot pada kriteria 100% jika diinput total lebih dari 100 tidak diperbolehkan sistem&nbsp;<br />\r\n- hasil uji coba disesuaikan dengan kesimpulan&nbsp;<br />\r\n- periode perhitungan , periode promosi jabatan sebelumnya<br />\r\n- history perhitungan&nbsp;<br />\r\n- notif : hasil rekomendasi muncul pada setiap user (agar langsung diubah jabatan sesuai rekomendasi)&nbsp;</p>\r\n\r\n<p>Revisi Pak Herianto&nbsp;<br />\r\n-pada apk ada perbandingan kecepatan antara metode MAUT dan FuzzySaw &nbsp;ketika di klik pada perhitungan metodenya lebih cepat apa<br />\r\n- akurasi penilaian , sebelum tabel normalilsasi dan bobot nya ada cara hitungnya , hasil akhir penilaian perangkingan di perjelas boleh pakai diagram persen<br />\r\n- penilaian rekan sejawat dan bawahan&nbsp;<br />\r\n- ada tampilan acuan penilaian sebelumnya dari perusahaan, bandingkan dengan perhitungan metode lebih akurat apa&nbsp;</p>\r\n\r\n<p>Revisi Pak Andi&nbsp;<br />\r\n- bobot disamakan menggunakan persen ketika edit<br />\r\n- aplikasi pakai bahasa indonesia semua crudnya dll</p>\r\n', '', 21, '2021-08-04 18:54:15'),
(143, 7, 'deskripsi', '<p>Perancangan Sistem Pemilihan Supplier Alat Laboratorium Berbasis Web dengan Metode Integrasi AHP dan Topsis di PT Anugrah Niaga Mandiri</p>\r\n', '<p>Perancangan Sistem Pemilihan Supplier Alat Laboratorium Berbasis Web dengan Metode Integrasi AHP dan Topsis di PT Anugrah Niaga Mandiri</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nPak Adam:\r\n- Form Penilaian Dibuat Radio Button (seperti survey siakad)\r\n- Perbandingan Kriteria Dibuat Radio Button\r\n- Buat kategori unggulan untuk perangkingan setelah itu baru totalnya\r\n- Membuat Grafik / Visual pada hasil perhitungan\r\n\r\nPak bagus:\r\nAplikasi :\r\nCetak laporan sesuaikan dng format laporan : header, informasi tabel, \r\ndan penanggung jawab\r\n\r\nRevisi Agus Ilham :\r\nSuzuki :\r\n\r\nAplikasi: \r\n1. Tambahkan fitur/opsi (edit form) dari sisi pelanggan\r\n2. Tambahkan lapoaran penjualan ke pelanggan</pre>\r\n', '', 21, '2021-08-04 18:55:39'),
(144, 12, 'deskripsi', '<p>Sistem Pendukung Keputusan untuk Menentukan Material Packaging menggunakan Metode KNN dan SMART ( Studi Kasus PT DNP Indonesia )</p>\r\n', '<p>Sistem Pendukung Keputusan untuk Menentukan Material Packaging menggunakan Metode KNN dan SMART ( Studi Kasus PT DNP Indonesia )</p>\r\n\r\n<pre>\r\n\r\ncatatan pak heri :\r\nmenambah user customer\r\ntampilan setiap user ada pemberitahuan\r\nrekomendasi tampil di halaman customer\r\npenampilan perhitungan di tampilnan admin\r\nflow, smart -&gt; knn rekomendasi berlapis\r\nketika memilih material harus menunjukan hasil dari hasil metode smart dan berlanjut ke metode knn\r\nketika stok dari yang direkomendasikan oleh metode smart dan knn habis muncul pesan yang memberitahu bahwa stok material habis\r\n\r\ncatatan pak bagus\r\nAplikasi:\r\n- Perbandingan, rekomendasi\r\n\r\ncatatan pak andi :\r\nmemantau jumlah stok (perubahan transaksi)\r\nuntuk kode dijadikan otomatis\r\nuntuk stok dijadikan otomatis\r\nowner diganti direktur\r\nuse case diagram penjualan material packaging</pre>\r\n', '', 21, '2021-08-04 18:56:07'),
(145, 22, 'deskripsi', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN QR CODE PADA SASTRO MART MENGGUNAKAN METODE FP- GROWTH DAN HASH BASE<br />\r\n<br />\r\nMobile ready</p>\r\n', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN QR CODE PADA SASTRO MART MENGGUNAKAN METODE FP- GROWTH DAN HASH BASE<br />\r\n<br />\r\nMobile ready</p>\r\n\r\n<p>Pak Yan (Laporan)<br />\r\nJudul Kurung Spesifik<br />\r\nRumusan Masalah lebih spesifik sesuai judul</p>\r\n\r\n<p>Pak Heri (Aplikasi)</p>\r\n\r\n<p>1. Fp Growth harusnya menampilkan rekomendasi barang untuk customers dan menampilkan rumus nya di sistemnya&nbsp;<br />\r\n2. Menampilkan hasil rekomendasi dan pola pembelian<br />\r\n3. Fp Growth dan Hash based itu membandingkan atau mensupport keduanya ?</p>\r\n\r\n<p>Pak Andi (Aplikasi)<br />\r\n1. Kalo bisa pake payment Gateway<br />\r\n2. Kalo bisa 1 akses kaya di portal</p>\r\n', '', 21, '2021-08-04 18:56:51'),
(146, 6, 'deskripsi', '<p>Perancangan Sistem Informasi Berbasis Web Untuk memprediksi tingkat kelulusan terhadap professionalisme siswa menggunakan metode knn dan apriori (Studi Kasus: SMK Negeri 31 Jakarta Pusat)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pak suzuki dan bu timor :<br />\r\n- parameter, data-data ditambahkan sebanyak-banyaknya<br />\r\n&nbsp; data berupa rumah, hobi, jaraknya berapa kesekolah, penghasilan orangtua, status orangtua<br />\r\n- minimal data 5 tahun terakhir, data dalam bentuk terstruktur<br />\r\n- judul dibuat prediksi, visualisasi data kelulusan di prediksi, cocok masuk dibidang profesi apa<br />\r\n- parameter : nilai, hobi, bidang pekerjaan, bakat untuk kecocokan psikologi<br />\r\n- judul dibuat menjadi prediksi siswa cocok dibidang profesi apa, parameter ditambah</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2021-06-11<br />\r\ndata transaksi dan metode log perhitungan seperti apa setiap metode yang dipakai di aplikasi<br />\r\n<br />\r\n&nbsp;</p>\r\n', '<p>Perancangan Sistem Informasi Berbasis Web Untuk memprediksi tingkat kelulusan terhadap professionalisme siswa menggunakan metode knn dan apriori (Studi Kasus: SMK Negeri 31 Jakarta Pusat)</p>\r\n\r\n<p>Revisi Erry Maruli:<br />\r\nPak Bagus:<br />\r\n- nilai komulatif persemester<br />\r\n- uas akhir, keterangan nilainya<br />\r\n- hasil uji coba</p>\r\n\r\n<p>Pak Herianto<br />\r\n- di metodologi jelaskan metode data mining persiapan dataset, traning, testing, impelementasi<br />\r\n&nbsp; atribut apa saja&nbsp;<br />\r\n- apriori tidak sesuai&nbsp;</p>\r\n\r\n<p>Pak Andi Susilo<br />\r\n- tingkat kelulusan berapa persen dilaporan<br />\r\n- perbaiki mapel<br />\r\n- pengguna lulusan<br />\r\n- profil jurusan ada dimana saja</p>\r\n', '', 21, '2021-08-04 19:19:51'),
(147, 20, 'tracking', '3', '1', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>back log (queue)</i>', 21, '2021-08-06 15:00:30'),
(148, 22, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-08-16 11:51:39'),
(149, 8, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-08-16 11:52:17'),
(150, 9, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-08-25 12:14:15'),
(151, 6, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-08-25 12:14:53'),
(152, 31, 'project_case', '3', '1', '<strong>Mitchell Marcel</strong> mengubah Project_case dari <i>Feature</i> menjadi <i>Build</i>', 21, '2021-08-25 12:15:27'),
(153, 31, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-08-25 12:15:27'),
(154, 18, 'nominal', '3200000', '3000000', '<strong>Mitchell Marcel</strong> mengubah Nominal dari <i>3200000</i> menjadi <i>3000000</i>', 21, '2021-08-25 13:01:21'),
(155, 27, 'nominal', '3200000', '3000000', '<strong>Mitchell Marcel</strong> mengubah Nominal dari <i>3200000</i> menjadi <i>3000000</i>', 21, '2021-08-25 13:02:04'),
(156, 18, 'tracking', '4', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>testing</i> menjadi <i>finish</i>', 21, '2021-08-31 19:19:39'),
(157, 18, 'nominal', '3000000', '3200000', '<strong>Mitchell Marcel</strong> mengubah Nominal dari <i>3000000</i> menjadi <i>3200000</i>', 21, '2021-08-31 19:19:39'),
(158, 11, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-08-31 19:22:20'),
(159, 30, 'tracking', '1', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>finish</i>', 21, '2021-09-06 16:06:17'),
(160, 29, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-09-06 16:57:04'),
(161, 29, 'deskripsi', 'Metode RSA untuk enkripsi keamanan dokumen\r\n', '<p>Metode RSA untuk enkripsi keamanan dokumen</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-09-06 16:57:04'),
(162, 29, 'nama_project', 'Sistem Borang Prodi', 'Sistem Website UPM', '<strong>Mitchell Marcel</strong> mengubah Nama_project dari <i>Sistem Borang Prodi</i> menjadi <i>Sistem Website UPM</i>', 21, '2021-09-10 08:07:24'),
(163, 29, 'nominal', '', '5000000', '<strong>Mitchell Marcel</strong> mengubah Nominal dari <i></i> menjadi <i>5000000</i>', 21, '2021-09-10 08:07:24'),
(164, 29, 'deskripsi', '<p>Metode RSA untuk enkripsi keamanan dokumen</p>\r\n', '', '<strong>Mitchell Marcel</strong> mengubah Nominal dari <i></i> menjadi <i>5000000</i>', 21, '2021-09-10 08:07:24'),
(165, 29, 'due_date', '2021-08-11', '2021-08-16', '<strong>Mitchell Marcel</strong> mengubah Due_date dari <i>2021-08-11</i> menjadi <i>2021-08-16</i>', 21, '2021-09-10 08:08:34'),
(166, 29, 'due_date', '2021-08-16', '2021-09-20', '<strong>Mitchell Marcel</strong> mengubah Due_date dari <i>2021-08-16</i> menjadi <i>2021-09-20</i>', 21, '2021-09-10 08:09:10'),
(167, 7, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-09-13 16:02:20'),
(168, 4, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-09-13 16:02:56'),
(169, 5, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-09-13 16:03:10'),
(170, 21, 'tracking', '1', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>finish</i>', 21, '2021-09-13 16:04:43'),
(171, 10, 'tracking', '4', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>testing</i> menjadi <i>finish</i>', 21, '2021-09-13 16:10:44'),
(172, 32, 'deskripsi', '<p>Rancangan sistem informasi pencarian dan rekomendasi tempat agen dengan metode haversine dan metode electre berbasis web pada brainy official</p>\r\n', '<p>Rancangan sistem informasi pencarian dan rekomendasi tempat agen dengan metode haversine dan metode electre berbasis web pada brainy official<br />\r\n<br />\r\nReff:&nbsp;<br />\r\n<a href=\"http://download.garuda.ristekdikti.go.id/article.php?article=502720&amp;val=10324&amp;title=PENGUJIAN%20METODE%20ELEKTREE%20UNTUK%20MENENTUKAN%20LOKASI%20STRATEGIS%20SUATU%20OBJEK%20BISNIS\">ELECTRE</a></p>\r\n', '', 21, '2021-09-15 08:58:16'),
(173, 28, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-09-25 12:36:00'),
(174, 13, 'tracking', '4', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>testing</i> menjadi <i>finish</i>', 21, '2021-09-25 12:44:19'),
(175, 12, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-09-28 08:23:52'),
(176, 26, 'tracking', '3', '5', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>deploy</i>', 21, '2021-09-29 10:18:43'),
(177, 20, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-09-29 10:23:58'),
(178, 32, 'tracking', '1', '2', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>analisa desain sistem</i>', 21, '2021-09-29 10:24:11'),
(179, 25, 'tracking', '3', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 21, '2021-09-29 10:24:27'),
(180, 1, 'tracking', '3', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>testing</i>', 21, '2021-09-29 10:24:50'),
(181, 3, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-10-01 07:09:32'),
(182, 32, 'tracking', '2', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>pengerjaan</i>', 21, '2021-10-08 14:08:26'),
(183, 33, 'nama_project', 'Skripsi Alifhia Sistem Informatika', 'Skripsi Alifhia SI Bengkel', '<strong>Mitchell Marcel</strong> mengubah Nama_project dari <i>Skripsi Alifhia Sistem Informatika</i> menjadi <i>Skripsi Alifhia SI Bengkel</i>', 21, '2021-10-08 22:10:51'),
(184, 33, 'deskripsi', '<p>Bengkel</p>\r\n', '<p>&quot;PERANCANGAN SISTEM INFORMASI SERVICE BOOKING&nbsp;<br />\r\nONLINE &amp; MONITORING SPAREPART BARANG BERBASISWEB&nbsp;<br />\r\nPADA BENGKEL&quot;</p>\r\n\r\n<p>Nama : Alifia Rizki Audita&nbsp;<br />\r\nNim : 11170740</p>\r\n', '', 21, '2021-10-12 20:58:42'),
(185, 15, 'assignee', '21', '26', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Mitchell Marcel</i> menjadi <i>Elin Marliana</i>', 21, '2021-10-19 18:18:22'),
(186, 29, 'tracking', '3', '4', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>testing</i>', 21, '2021-10-25 08:59:58'),
(187, 29, 'assignee', '21', '26', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Mitchell Marcel</i> menjadi <i>Elin Marliana</i>', 21, '2021-10-25 08:59:58'),
(188, 29, 'due_date', '2021-09-20', '2021-10-31', '<strong>Mitchell Marcel</strong> mengubah Due_date dari <i>2021-09-20</i> menjadi <i>2021-10-31</i>', 21, '2021-10-25 08:59:58'),
(189, 29, 'deskripsi', '', '<p>monev-unsada.my.id<br />\r\nMinta tolong cek ia mba EL @Elin Marliana &nbsp;untuk akun login masing-masing role bisa diliat di USERS LIST (harusnya sih untuk demo username sama password sama), matur nuwun. ðŸ™</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Deskripsi', 21, '2021-10-25 08:59:58');
INSERT INTO `project_log` (`id`, `project_id`, `field`, `data_before`, `data_after`, `text`, `created_by`, `created_at`) VALUES
(190, 29, 'url', '', 'https://monev-unsada.my.id/', '<strong>Mitchell Marcel</strong> mengubah Url', 21, '2021-10-25 09:09:35'),
(191, 33, 'tracking', '1', '3', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 20, '2021-11-09 20:47:14'),
(192, 19, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-11-09 21:29:01'),
(193, 29, 'assignee', '26', '28', '<strong>Mitchell Marcel</strong> mengubah Assignee dari <i>Elin Marliana</i> menjadi <i>Fanny Wibianka</i>', 21, '2021-11-15 06:55:30'),
(194, 29, 'deskripsi', '<p>monev-unsada.my.id<br />\r\nMinta tolong cek ia mba EL @Elin Marliana &nbsp;untuk akun login masing-masing role bisa diliat di USERS LIST (harusnya sih untuk demo username sama password sama), matur nuwun. ðŸ™</p>\r\n', '<p>monev-unsada.my.id<br />\r\nMinta tolong cek ia ka Fanny untuk akun login masing-masing role bisa diliat di USERS LIST (harusnya sih untuk demo username sama password sama), matur nuwun. ðŸ™</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Deskripsi', 21, '2021-11-15 06:55:30'),
(195, 40, 'start_date', '0000-00-00', '', '<strong>Mitchell Marcel</strong> mengubah Start_date dari <i>0000-00-00</i> menjadi <i></i>', 21, '2021-11-22 20:41:44'),
(196, 40, 'due_date', '0000-00-00', '', '<strong>Mitchell Marcel</strong> mengubah Due_date dari <i>0000-00-00</i> menjadi <i></i>', 21, '2021-11-22 20:41:44'),
(197, 40, 'deskripsi', '', '<p>1. Upload file per folder, folder bisa di customize 2000k</p>\r\n\r\n<p>2. Shared file untuk umum/publik 1000k</p>\r\n\r\n<p>3. Grouping per department 1000k</p>\r\n\r\n<p>4. Reminder expired dokumen untuk dokumen yang bersifat memiliki expired 1000k</p>\r\n\r\n<p>5. Visibility set ke public/private/password protected</p>\r\n\r\n<p>- public = semua bisa akses termasuk orang luar 700k</p>\r\n\r\n<p>- private = hanya group/user tertentu yang bisa akses 2000k</p>\r\n\r\n<p>- password = semua bisa akses apabila memiliki password yang di tentukan 1000k</p>\r\n\r\n<p>8700k</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Deskripsi', 21, '2021-11-22 20:41:44'),
(198, 40, 'start_date', '0000-00-00', '', '<strong>Denis Ahmad</strong> mengubah Start_date dari <i>0000-00-00</i> menjadi <i></i>', 20, '2021-11-22 21:01:52'),
(199, 40, 'due_date', '0000-00-00', '', '<strong>Denis Ahmad</strong> mengubah Due_date dari <i>0000-00-00</i> menjadi <i></i>', 20, '2021-11-22 21:01:52'),
(200, 40, 'deskripsi', '<p>1. Upload file per folder, folder bisa di customize 2000k</p>\r\n\r\n<p>2. Shared file untuk umum/publik 1000k</p>\r\n\r\n<p>3. Grouping per department 1000k</p>\r\n\r\n<p>4. Reminder expired dokumen untuk dokumen yang bersifat memiliki expired 1000k</p>\r\n\r\n<p>5. Visibility set ke public/private/password protected</p>\r\n\r\n<p>- public = semua bisa akses termasuk orang luar 700k</p>\r\n\r\n<p>- private = hanya group/user tertentu yang bisa akses 2000k</p>\r\n\r\n<p>- password = semua bisa akses apabila memiliki password yang di tentukan 1000k</p>\r\n\r\n<p>8700k</p>\r\n', '', '<strong>Denis Ahmad</strong> mengubah Deskripsi', 20, '2021-11-22 21:01:52'),
(201, 23, 'tracking', '1', '3', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 21, '2021-11-23 13:05:50'),
(202, 32, 'nominal', '3500000', '3200000', '<strong>Mitchell Marcel</strong> mengubah Nominal dari <i>3500000</i> menjadi <i>3200000</i>', 21, '2021-12-26 12:41:25'),
(203, 41, 'project_case', '3', '1', '<strong>Fanny Wibianka</strong> mengubah Project_case dari <i>Feature</i> menjadi <i>Build</i>', 28, '2022-01-26 20:43:27'),
(204, 41, 'due_date', '0000-00-00', '', '<strong>Fanny Wibianka</strong> mengubah Due_date dari <i>0000-00-00</i> menjadi <i></i>', 28, '2022-01-26 20:43:27'),
(205, 41, 'nama_project', 'Maintenance Website', 'Maintenance Website Coolant', '<strong>Fanny Wibianka</strong> mengubah Nama_project dari <i>Maintenance Website</i> menjadi <i>Maintenance Website Coolant</i>', 28, '2022-01-26 20:44:24'),
(206, 41, 'due_date', '0000-00-00', '', '<strong>Fanny Wibianka</strong> mengubah Due_date dari <i>0000-00-00</i> menjadi <i></i>', 28, '2022-01-26 20:44:24'),
(207, 39, 'tracking', '3', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 20, '2022-04-28 11:47:13'),
(208, 42, 'tracking', '4', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>testing</i> menjadi <i>finish</i>', 20, '2022-04-28 11:47:38'),
(209, 32, 'tracking', '3', '5', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>deploy</i>', 20, '2022-04-28 11:47:50'),
(210, 23, 'tracking', '3', '5', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>deploy</i>', 20, '2022-04-28 11:48:03'),
(211, 33, 'tracking', '3', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 20, '2022-04-28 11:48:16'),
(212, 32, 'tracking', '5', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 20, '2022-04-28 11:48:30'),
(213, 23, 'tracking', '5', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 20, '2022-04-28 11:48:39'),
(214, 20, 'tracking', '3', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 20, '2022-04-28 11:49:11'),
(215, 20, 'deskripsi', '<p>nama : Julian Ardillah Abhirity&nbsp;<br />\r\njudul skripsi : PERANCANGAN SISTEM PENGAMBILAN KEPUTUSAN UNTUK MEMILIH LOKASI PERUMAHAN YANG LAYAK DIBANGUN MENGGUNAKAN METODE SMARTER DAN FUZZY SUGENO (STUDI KASUS: PT ALMA AJI PROPERTINDO)</p>\r\n', '<p>nama : Julian Ardillah Abhirity&nbsp;<br />\r\njudul skripsi : PERANCANGAN SISTEM PENGAMBILAN KEPUTUSAN UNTUK MEMILIH LOKASI PERUMAHAN YANG LAYAK DIBANGUN MENGGUNAKAN METODE SMARTER DAN FUZZY SUGENO (STUDI KASUS: PT ALMA AJI PROPERTINDO)</p>\r\n\r\n<p>CANCELLED, REFUND Rp 1.000.000</p>\r\n', '<strong>Denis Ahmad</strong> mengubah Deskripsi', 20, '2022-04-28 11:49:11'),
(216, 26, 'tracking', '5', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 20, '2022-04-28 11:49:33'),
(217, 27, 'tracking', '5', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 20, '2022-04-28 11:49:45'),
(218, 29, 'tracking', '4', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>testing</i> menjadi <i>finish</i>', 20, '2022-04-28 11:49:59'),
(219, 29, 'tracking', '6', '4', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>finish</i> menjadi <i>testing</i>', 20, '2022-04-28 11:50:46'),
(220, 29, 'tracking', '4', '6', '<strong>Fanny Wibianka</strong> mengubah Tracking dari <i>testing</i> menjadi <i>finish</i>', 28, '2022-05-25 19:52:37'),
(221, 40, 'tracking', '1', '6', '<strong>Fanny Wibianka</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>finish</i>', 28, '2022-05-25 19:53:47'),
(222, 40, 'start_date', '0000-00-00', '2021-11-30', '<strong>Fanny Wibianka</strong> mengubah Start_date dari <i>0000-00-00</i> menjadi <i>2021-11-30</i>', 28, '2022-05-25 19:53:47'),
(223, 40, 'due_date', '0000-00-00', '2022-05-01', '<strong>Fanny Wibianka</strong> mengubah Due_date dari <i>0000-00-00</i> menjadi <i>2022-05-01</i>', 28, '2022-05-25 19:53:47'),
(224, 44, 'nama_project', 'Skripsi UBJ Lukman', 'Skripsi UBJ Aldi', '<strong>Denis Ahmad</strong> mengubah Nama_project dari <i>Skripsi UBJ Lukman</i> menjadi <i>Skripsi UBJ Aldi</i>', 20, '2022-05-30 14:17:06'),
(225, 45, 'tracking', '1', '3', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>back log (queue)</i> menjadi <i>pengerjaan</i>', 20, '2022-05-30 14:17:55'),
(226, 51, 'tracking', '3', '6', '<strong>Denis Ahmad</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 20, '2022-08-30 14:32:35'),
(227, 51, 'deskripsi', '<p>Dominos Pizza K-Mean</p>\r\n', '<p>Cancel</p>\r\n', '<strong>Denis Ahmad</strong> mengubah Deskripsi', 20, '2022-08-30 14:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `project_payment`
--

CREATE TABLE `project_payment` (
  `id` int(1) NOT NULL,
  `project_id` int(1) DEFAULT NULL,
  `nominal` varchar(100) NOT NULL,
  `subject` text NOT NULL,
  `description` text DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `created_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_payment`
--

INSERT INTO `project_payment` (`id`, `project_id`, `nominal`, `subject`, `description`, `payment_date`, `created_by`, `created_at`) VALUES
(1, 1, '1000000', 'PO Masuk ', 'Coolant', '2021-04-21', 0, '2021-04-21 15:59:44'),
(4, 3, '500000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 07:55:31'),
(5, 4, '250000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 07:57:59'),
(6, 5, '500000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:00:37'),
(7, 6, '1500000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:03:01'),
(8, 7, '1500000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:06:42'),
(9, 8, '1000000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:11:14'),
(10, 9, '1000000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:14:42'),
(11, 10, '1100000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:16:57'),
(12, 11, '1000000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:18:50'),
(13, 12, '1500000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:21:59'),
(14, 13, '1000000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:24:40'),
(15, 18, '1500000', 'DP - Cash', 'Cash', '2021-04-25', 0, '2021-04-27 09:58:28'),
(16, 13, '900000', 'nambah', '', '2021-05-05', 21, '2021-05-08 13:06:07'),
(17, 20, '1500000', 'DP - TF', 'dp skripsi pembayaran pertama', '2021-05-17', 21, '2021-05-17 11:16:08'),
(18, 22, '1500000', 'DP - TF', '', '2021-05-25', 21, '2021-05-25 08:38:48'),
(19, 11, '2200000', 'Pelunasan', 'Pelunasan', '2021-05-28', 21, '2021-05-28 22:02:01'),
(20, 23, '1000000', 'DP', '', '2021-05-31', 21, '2021-05-31 19:54:17'),
(21, 8, '1000000', 'Pembayaran kedua', 'Pembayaran kedua', '2021-06-07', 20, '2021-06-07 13:08:32'),
(22, 24, '1500000', 'DP', 'TF ke dana Micel', '2021-06-12', 21, '2021-06-12 16:01:37'),
(23, 25, '1600000', 'DP Pembayaran', 'DP Pembayaran', '2021-06-15', 20, '2021-06-15 09:44:34'),
(24, 26, '1500000', 'Pembayaran DP', 'Pembayaran DP', '2021-06-15', 20, '2021-08-30 18:02:15'),
(25, 13, '600000', 'Cicilan skripsi', '', '2021-06-20', 21, '2021-06-20 19:16:02'),
(26, 4, '400000', 'wkwk masing DP', '', '2021-06-21', 21, '2021-06-21 13:40:22'),
(27, 3, '1200000', 'Cicilan', '', '2021-07-01', 21, '2021-07-01 10:46:36'),
(28, 5, '1000000', 'Cicilan', '', '2021-07-01', 21, '2021-07-01 10:59:54'),
(29, 4, '500000', 'Pembayaran Cicilan', '', '2021-07-01', 20, '2021-07-24 08:15:23'),
(30, 4, '450000', 'Pembayaran Cicilan', 'Bank Mandiri', '2021-07-23', 20, '2021-07-24 08:15:57'),
(31, 7, '1000000', 'Cicilan agy', 'ada tip 200 buat beli ikan', '2021-07-30', 21, '2021-07-30 16:52:07'),
(32, 5, '700000', 'Cicilan agy', '', '2021-08-04', 21, '2021-08-05 10:34:38'),
(33, 3, '700000', 'Cicilan agy', '', '2021-08-05', 21, '2021-08-05 10:35:03'),
(34, 10, '1100000', 'Cicilan agy', '', '2021-08-05', 21, '2021-08-06 14:56:07'),
(35, 31, '1000000', 'DP - Cash', '', '2021-08-05', 21, '2021-08-06 15:00:09'),
(36, 8, '800000', 'Pelunasan', '', '2021-08-15', 21, '2021-08-15 12:40:54'),
(37, 22, '1700000', 'Pelunasan', 'Via Bank Mandiri', '2021-08-16', 21, '2021-08-16 11:50:10'),
(38, 7, '600000', 'Pelunasan', '', '2021-08-16', 21, '2021-08-16 17:55:46'),
(39, 7, '100000', 'Pelunasan', 'Baru bener nih lunas', '2021-08-16', 21, '2021-08-16 17:56:07'),
(40, 28, '1000000', 'DP - TF', '', '2021-07-18', 21, '2021-08-17 19:07:01'),
(41, 28, '500000', 'Cicilan agy', '', '2021-08-17', 21, '2021-08-17 19:07:37'),
(42, 9, '2200000', 'Pelunasan', '', '2021-08-18', 21, '2021-08-18 12:47:08'),
(43, 6, '1700000', 'Pelunasan', '', '2021-08-19', 21, '2021-08-19 09:03:31'),
(44, 27, '1500000', 'DP', '', '2021-05-31', 21, '2021-08-25 13:01:57'),
(45, 4, '700000', 'Cicilan berikutnya', '', '2021-08-28', 20, '2021-08-28 07:38:09'),
(46, 4, '600000', 'Pembayaran selanjutnya', '', '2021-08-28', 20, '2021-08-28 07:39:38'),
(47, 26, '700000', 'Cicilan agy', '', '2021-08-30', 21, '2021-08-30 18:01:01'),
(48, 5, '700000', 'Pelunasan', '', '2021-08-31', 21, '2021-08-31 19:09:13'),
(49, 30, '200000', 'Pelunasan', '', '2021-08-29', 21, '2021-08-31 19:17:59'),
(50, 18, '1700000', 'Pelunasan', '', '2021-08-28', 21, '2021-08-31 19:19:20'),
(51, 20, '1000000', 'Cicilan agy', '', '2021-09-06', 21, '2021-09-07 07:19:31'),
(52, 29, '5000000', 'Biaya Pembuatan Website', '', '2021-09-10', 21, '2021-09-10 08:06:39'),
(53, 10, '1000000', 'Pelunasan', '', '2021-09-03', 21, '2021-09-13 16:10:36'),
(54, 0, '', '', '', '0000-00-00', 0, '2021-09-13 17:53:22'),
(55, 13, '250000', 'Cicilan agy', '', '2021-09-13', 21, '2021-09-13 17:53:47'),
(56, 32, '500000', 'DP - TF', '', '2021-09-15', 21, '2021-09-15 08:58:57'),
(57, 28, '1000000', 'Pelunasan', '', '2021-09-23', 21, '2021-09-25 12:35:53'),
(58, 12, '1700000', 'Pelunasan', 'TF', '2021-09-28', 21, '2021-09-28 08:08:17'),
(59, 3, '500000', 'Pelunasan', '', '2021-09-30', 21, '2021-10-01 05:22:11'),
(60, 32, '200000', 'Cicilan agy', NULL, '2022-05-30', 1, '2022-12-13 16:35:09'),
(62, 46, '800000', 'Cicilan', NULL, '2022-09-01', 1, '2023-01-03 07:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `data` text NOT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `assignee` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `title`, `description`, `data`, `start_date`, `due_date`, `assignee`, `status`, `create_by`, `create_at`, `updated_by`, `updated_at`) VALUES
(10, 'Penambahan fitur fakultas dan prodi pada menu users Borang', 'Penambahan fitur fakultas dan prodi pada menu users Borang', '', '2021-10-02', '2021-10-02', 6, 0, 20, '2021-10-01 23:10:03', 20, '2021-10-01 23:10:03'),
(26, 'Revisi Website UPM', 'Hasil rapat 12/11/21 UPM', '%5B%7B%22title%22%3A%22Dashboard%22%2C%22description%22%3A%22-%20Status%20evaluasi%20auditor%5Cr%5Cn-%20Status%20evaluasi%20reviewer%22%2C%22is_checked%22%3A0%7D%2C%7B%22title%22%3A%22Monev%22%2C%22description%22%3A%22Periode%206%20bulan%20sekali%20%28dropdown%20gasal%5C%2Fgenap%29%22%2C%22is_checked%22%3A0%7D%2C%7B%22title%22%3A%22Periode%20AMI%22%2C%22description%22%3A%22Periode%20tahunan%22%2C%22is_checked%22%3A1%7D%2C%7B%22title%22%3A%22Monev%22%2C%22description%22%3A%22monev%206%20bulan%201x%20%28setelah%20berakhirnya%20semester%29%20%5Cr%5Cn%5C%2Faudit%5C%2F%20%3E%3E%20monev%5Cr%5Cntemuan%5Cr%5Cndeskripsi%20evaluasi%5Cr%5Cnrekomendasi%5Cr%5Cntindak%20lanjut%5Cr%5Cn%2B%2B%20link%20dokumentasi%20monev%22%2C%22is_checked%22%3A1%7D%2C%7B%22title%22%3A%22audit%22%2C%22description%22%3A%22AMI%20%281%20tahun%20sekali%29%5Cr%5Cntemuan%20%5Cr%5CnDeskripsi%20evaluasi%20%20%3E%3E%20koreksi%5Cr%5CnRekomendasi%20%20%20%20%20%20%20%20%20%3E%3E%20tindakan%20korektif%5Cr%5CnTindak%20Lanjut%20%20%20%20%20%20%20%3E%3E%20verifikasi%22%2C%22is_checked%22%3A1%7D%5D', '2021-11-12', '2021-11-14', 5, 0, 21, '2021-11-12 18:26:53', 21, '2021-11-18 10:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `todo_detail`
--

CREATE TABLE `todo_detail` (
  `id` int(11) NOT NULL,
  `todo_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_checked` enum('0','1') DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo_detail`
--

INSERT INTO `todo_detail` (`id`, `todo_id`, `title`, `description`, `is_checked`, `create_by`, `create_at`) VALUES
(9, 5, 'Task 1', 'Task satu', '1', 21, '2021-08-30 18:47:36'),
(10, 6, 'Tambah Log buat temp_merchant', '', '0', 21, '2021-10-01 15:10:22'),
(11, 6, 'alter column type (New Merchant,adjustment,amandement)', '', '0', 21, '2021-10-01 15:11:39'),
(13, 10, 'Pengetesan role pada menu Input SPMI', 'Case role dekan punya beberapa prodi, superadmin, yayasan,rektor tidak perlu input', '0', 20, '2021-10-01 23:11:37'),
(14, 20, 'list 1', '', '0', 21, '2021-10-12 19:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(1) NOT NULL,
  `id_pegawai` int(1) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `level` varchar(15) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_pegawai`, `nama`, `username`, `password`, `level`, `last_activity`, `is_active`) VALUES
(1, 0, 'Administrator', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin', '2021-05-17 07:49:56', 0),
(4, 15, 'Jamal Bahri', 'jamal.bahri', '5e5357d93761c450aed4533d72402580179413a7', '1', '2021-10-19 12:38:54', 0),
(5, 20, 'Denis Ahmad', 'denis.ahmad', '39038c331178493f0901bc0a36c1f55a2881eda6', 'admin', '2021-05-04 04:09:01', 1),
(6, 21, 'Mitchell Marcel', 'mitchell.marcel', '1c06e0b34d6da25d6a21961cd75d1e4fb5ab55b5', 'admin', '2021-05-04 04:09:06', 1),
(7, 22, 'Siti Maspupah', 'siti.maspupah', 'ecd7b59a6715aaa04530546ee94f30780524fb8a', '12', '2021-04-22 01:34:39', 1),
(8, 23, 'Nurul Azmi', 'nurul.azmi', 'ca855751bd97374ffd5c1dce561b5ac9f8fbf77b', '11', '2021-05-10 08:03:28', 1),
(9, 24, 'Choirul Satryo Utomo', 'choirul.satryo.utomo', '93d9be1793f40e3a0a237adeb923da334baf99ad', '11', '2021-06-21 04:29:40', 1),
(10, 25, 'Rachma Adzima Maulida', 'rachma.adzima.maulida', 'd04ac5e5e2b5b70b9f5a7b28b4158725462f68db', '11', '2021-10-19 12:39:00', 0),
(11, 26, 'Elin Marliana', 'elin.marliana', '0ca301cbadd66163cfebc074da57a43197f53a2b', '11', '2021-10-25 15:58:12', 0),
(12, 27, 'Bagas Aji Pangestu', 'bagas.aji', 'dac841b40be08480a917f51f3558ae2f522f4e3e', '11', '2021-10-23 06:41:10', 1),
(13, 28, 'Fanny Wibianka', 'fanny.wibianka', '6bab1207f994fe3dde07f4fe3781696b78952f22', '14', '2021-11-14 23:52:31', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_external`
--
ALTER TABLE `log_external`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pettycash`
--
ALTER TABLE `pettycash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_log`
--
ALTER TABLE `project_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_payment`
--
ALTER TABLE `project_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo_detail`
--
ALTER TABLE `todo_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `log_external`
--
ALTER TABLE `log_external`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pettycash`
--
ALTER TABLE `pettycash`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `project_log`
--
ALTER TABLE `project_log`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `project_payment`
--
ALTER TABLE `project_payment`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `todo_detail`
--
ALTER TABLE `todo_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
