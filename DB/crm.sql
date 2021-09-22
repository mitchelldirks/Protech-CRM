-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 20 Agu 2021 pada 15.18
-- Versi server: 10.3.30-MariaDB-cll-lve
-- Versi PHP: 7.3.28
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `dtek9578_crm`
--
-- --------------------------------------------------------
--
-- Struktur dari tabel `jabatan`
--
CREATE TABLE `jabatan` (
  `id` int(30) NOT NULL,
  `nama_jabatan` varchar(40) NOT NULL,
  `job_desc` text NOT NULL,
  `created_by` int(1) NOT NULL,
  `updated_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data untuk tabel `jabatan`
--
INSERT INTO `jabatan` (`id`, `nama_jabatan`, `job_desc`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(11, 'Developer', 'Developer', 0, 0, '2021-04-22 08:07:54', '2021-04-22 08:07:54'),
(12, 'Project Manager Intern', 'PM Intern', 0, 0, '2021-04-22 08:10:35', '2021-04-22 08:10:35'),
(13, 'Outsource', 'Kerja doang dibayar kaga\r\n', 21, 21, '2021-06-21 11:27:39', '2021-06-21 11:27:39');
-- --------------------------------------------------------
--
-- Struktur dari tabel `kategori`
--
CREATE TABLE `kategori` (
  `id` int(30) NOT NULL,
  `nama_kategori` varchar(40) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_by` int(1) NOT NULL,
  `updated_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data untuk tabel `kategori`
--
INSERT INTO `kategori` (`id`, `nama_kategori`, `deskripsi`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Company Profile', 'Compro', 1, 1, '2021-04-19 12:05:47', '2021-04-19 12:06:49'),
(2, 'Skripsi', 'Jasa ', 0, 21, '2021-04-19 20:13:31', '2021-05-17 13:46:27'),
(3, 'Web System', '', 0, 0, '2021-04-22 11:18:23', '2021-04-22 11:18:23');
-- --------------------------------------------------------
--
-- Struktur dari tabel `log`
--
CREATE TABLE `log` (
  `id` int(1) NOT NULL,
  `action` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `data` int(1) NOT NULL,
  `info` text NOT NULL,
  `created_by` int(1) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data untuk tabel `log`
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
(269, 'Payment', 'Project', 0, 'Project Payment New Entry', 21, '2021-08-19 09:03:31');
-- --------------------------------------------------------
--
-- Struktur dari tabel `pegawai`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data untuk tabel `pegawai`
--
INSERT INTO `pegawai` (`id`, `nama_pegawai`, `tempatlahir`, `tanggallahir`, `tel`, `email`, `alamat`, `img`, `jabatan`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Colonel Sanders', 'Kentuky', '1907-01-01', '14022', 'kfc@kfcindonesia.com', '', '1598439309.jpeg', 11, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-22 10:17:54'),
(15, 'Jamal Bahri', 'Bojong Gede', '1989-11-06', '089891029922', 'jamal@mailinator.com', '', NULL, 2, 0, 1, 15, '2021-04-19 09:49:04', '2021-04-22 08:12:10'),
(20, 'Denis Ahmad', 'Bekasi', '1998-11-06', '089653496918', 'denis@dtech.web.id', '', NULL, 11, 1, 0, 0, '2021-04-22 08:31:01', '2021-04-22 08:31:01'),
(21, 'Mitchell Marcel', 'Bekasi', '1998-03-16', '08980780853', 'mitchell@dtech.web.id', '', NULL, 11, 1, 0, 0, '2021-04-22 08:32:43', '2021-04-22 08:32:43'),
(22, 'Siti Maspupah', 'Jakarta', '2021-01-01', '087824529024', 'sitimaspupah@dtech.web.id', '', NULL, 12, 1, 0, 0, '2021-04-22 08:34:39', '2021-04-22 08:34:39'),
(23, 'Nurul Azmi', '', '1997-11-23', '087875176688', 'nurul.azmi@dtech.web.id', '', NULL, 11, 1, 21, 21, '2021-05-10 15:03:28', '2021-05-26 16:31:25'),
(24, 'Choirul Satryo Utomo', 'Jakarta', '2021-06-21', '082114854303', 'tomo@dtech.web.id', '', NULL, 11, 1, 21, 21, '2021-06-21 11:29:40', '2021-06-21 11:29:40'),
(25, 'Rachma Adzima Maulida', 'Bekasi', '2001-04-23', '085817922089', 'rachmadzima4@gmail.com', '', NULL, 11, 1, 21, 25, '2021-08-04 18:30:05', '2021-08-04 19:27:53');
-- --------------------------------------------------------
--
-- Struktur dari tabel `project`
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
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `priority` varchar(20) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0,
  `created_by` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(1) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data untuk tabel `project`
--
INSERT INTO `project` (`id`, `nama_project`, `deskripsi`, `kategori`, `project_case`, `tracking`, `assignee`, `nominal`, `start_date`, `due_date`, `priority`, `is_delete`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Coolant Redeem Voucher', '<p>Bikin voucher apa tau tuh</p>\r\n', 1, '1', 3, 9, '5000000', '2021-04-19', '2021-05-07', '2', 0, 1, '2021-04-19 15:16:34', 0, '2021-04-21 15:01:25'),
(3, 'Skripsi Devi Teknik Informatika', '<p>Rancangan Sistem Informasi Pendukung Keputusan Promosi Jabatan dengan menggunakan Metode Multi Attribute Utility Theory ( Maut ) pada PT Marga Nusantara Jaya Berbasis Website<br />\r\n<br />\r\nMAUT, dasar teorinya&nbsp;<br />\r\nmengukur nilai kinerja, kompetensi &nbsp;jelaskan dan dihitung atau di dropdown, penialian rekan sejawat.<br />\r\ninput data pegawai.&nbsp;<br />\r\npegawai juga bs input data historis pendidikan.<br />\r\ndibndingkan MAUT dan Fuzzy SAW<br />\r\nKriterianya<br />\r\n1. Nilai kinerja<br />\r\n2. Pendidikan<br />\r\n3. Golongan<br />\r\n4. Masa kerja<br />\r\n5. Kehadiran<br />\r\n6. Kompetensi<br />\r\nKriteria 1 dan 6 ada angketnya ada beberapa pertanyaan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Devi Rahmayanti</p>\r\n\r\n<p>Revisi Pak Bagus&nbsp;</p>\r\n\r\n<p>- validasi bobot pada kriteria 100% jika diinput total lebih dari 100 tidak diperbolehkan sistem&nbsp;<br />\r\n- hasil uji coba disesuaikan dengan kesimpulan&nbsp;<br />\r\n- periode perhitungan , periode promosi jabatan sebelumnya<br />\r\n- history perhitungan&nbsp;<br />\r\n- notif : hasil rekomendasi muncul pada setiap user (agar langsung diubah jabatan sesuai rekomendasi)&nbsp;</p>\r\n\r\n<p>Revisi Pak Herianto&nbsp;<br />\r\n-pada apk ada perbandingan kecepatan antara metode MAUT dan FuzzySaw &nbsp;ketika di klik pada perhitungan metodenya lebih cepat apa<br />\r\n- akurasi penilaian , sebelum tabel normalilsasi dan bobot nya ada cara hitungnya , hasil akhir penilaian perangkingan di perjelas boleh pakai diagram persen<br />\r\n- penilaian rekan sejawat dan bawahan&nbsp;<br />\r\n- ada tampilan acuan penilaian sebelumnya dari perusahaan, bandingkan dengan perhitungan metode lebih akurat apa&nbsp;</p>\r\n\r\n<p>Revisi Pak Andi&nbsp;<br />\r\n- bobot disamakan menggunakan persen ketika edit<br />\r\n- aplikasi pakai bahasa indonesia semua crudnya dll</p>\r\n', 2, '1', 5, 21, '2950000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 07:53:31', 21, '2021-08-04 18:54:15'),
(4, 'Skripsi Ernanda Teknik Informatika', '<p>Perancangan Sistem Informasi Pendukung Keputusan Pemilihan Siswa Terbaik TKJ pada SMK Taman Siswa Jakarta berbasis Web menggunakan Metode SAW dan Fuzzy</p>\r\n\r\n<p>Revisi aplikasi Ernanda Amalia Arumi</p>\r\n\r\n<p>PAK AJI SETIAWAN<br />\r\n- Menambahkan login siswa untuk mengetahui rangking yang di dapat&nbsp;<br />\r\n- Menambahkan menu siswa dan nilai yang sudah ada<br />\r\n- Penilaian siswa, menambahkan semester genap dan ganjil&nbsp;<br />\r\n- detail perhitungan metode saw untuk perangkingan sedangkan fuzzy bukan perangkingan di pisahkan dengan metode saw<br />\r\n- Menampilkan nilai siswa, mata pelajaran,kelas dan nilai raport = siswa berprestasi<br />\r\nOh iya bang kemaren yang penilaian kriteria itu bisa subjektif karena bisa aja guru ga suka sama murid menjelekan di kriteria itu bang enaknya di ganti apa ya bang?<br />\r\nBu Timor<br />\r\n- Metode fuzzy dipisahkan saja dari metode saw atau jangan sama dari perangkingan bisa di jelekan di penilaian sikap<br />\r\n- tidak ada perangkingan<br />\r\n- menambahkan actor login guru bidang studi mata pelajaran ada lalu diambil nilainya</p>\r\n\r\n<p>Pak Bagus<br />\r\nLaporan disamakan perhitungan dengan aplikasi</p>\r\n', 2, '1', 3, 21, '2950000', '2021-04-22', '2021-10-31', '2', 0, 0, '2021-04-22 07:57:46', 21, '2021-08-04 18:53:46'),
(5, 'Skripsi Mega Teknik Informatika', '<p>Perancangan Sistem Informasi Pengambilan Keputusan Estimasi Biaya Pengiriman Barang Berbasis Web menggunakan Metode Havershine dan Location Based Service ( LBS ) pada PT Doksa Artha Gemilang</p>\r\n\r\n<p>(Ganti metode jadi UCS dan Ant Colony, Lanjut)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi aplikasi Mega Pangastuti</p>\r\n\r\n<p>Pak Andi Susilo<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Bahasa pada tampilan aplikasi disesuaikan kembali (disamakan pakai bahasa inggris atau bahasa indonesia).<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada fitur transaksi ditambahkan jumlah input jenis bendanya.</p>\r\n\r\n<p>Pak Aji Setiawan<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Metode haversine disamakan lagi total jaraknya dengan maps, lakukan komparasi dengan maps<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Validasi pemilihan supir</p>\r\n\r\n<p>Bu Timor Setyaningsih<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada metode knn ditambahkan lagi fungsi penggunaannya. Dalam satu pengiriman bisa mengirim ke 2 titik tujuan yang berbeda tetapi tetap dalam jalur yang sama sesuai dengan titik tujuan awal. Misal : pengiriman awal dari Jakarta &ndash; bandung, didalam mobil masih muat lebih barang lagi untuk memaksimalkan pengiriman, maka akan ditambahkan lagi satu titik yang searah dengan titik awal, misal daerah bogor atau lain sebagainya.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Pada laporan aplikasi ditambahkan tampilan bagan diagram batang. Contoh : pengiriman jalur Jakarta &ndash; bandung menghasilkan berapa banyak total biayanya? Dan juga jalur pengiriman lainnya.<br />\r\n&nbsp;</p>\r\n', 2, '1', 5, 20, '2950000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:00:00', 21, '2021-08-04 18:52:59'),
(6, 'Skripsi Maruli Teknik Informatika', '<p>Perancangan Sistem Informasi Berbasis Web Untuk memprediksi tingkat kelulusan terhadap professionalisme siswa menggunakan metode knn dan apriori (Studi Kasus: SMK Negeri 31 Jakarta Pusat)</p>\r\n\r\n<p>Revisi Erry Maruli:<br />\r\nPak Bagus:<br />\r\n- nilai komulatif persemester<br />\r\n- uas akhir, keterangan nilainya<br />\r\n- hasil uji coba</p>\r\n\r\n<p>Pak Herianto<br />\r\n- di metodologi jelaskan metode data mining persiapan dataset, traning, testing, impelementasi<br />\r\n&nbsp; atribut apa saja&nbsp;<br />\r\n- apriori tidak sesuai&nbsp;</p>\r\n\r\n<p>Pak Andi Susilo<br />\r\n- tingkat kelulusan berapa persen dilaporan<br />\r\n- perbaiki mapel<br />\r\n- pengguna lulusan<br />\r\n- profil jurusan ada dimana saja</p>\r\n', 2, '1', 3, 21, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:02:49', 21, '2021-08-04 19:19:51'),
(7, 'Skripsi Agus Teknik Informatika', '<p>Perancangan Sistem Pemilihan Supplier Alat Laboratorium Berbasis Web dengan Metode Integrasi AHP dan Topsis di PT Anugrah Niaga Mandiri</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nPak Adam:\r\n- Form Penilaian Dibuat Radio Button (seperti survey siakad)\r\n- Perbandingan Kriteria Dibuat Radio Button\r\n- Buat kategori unggulan untuk perangkingan setelah itu baru totalnya\r\n- Membuat Grafik / Visual pada hasil perhitungan\r\n\r\nPak bagus:\r\nAplikasi :\r\nCetak laporan sesuaikan dng format laporan : header, informasi tabel, \r\ndan penanggung jawab\r\n\r\nRevisi Agus Ilham :\r\nSuzuki :\r\n\r\nAplikasi: \r\n1. Tambahkan fitur/opsi (edit form) dari sisi pelanggan\r\n2. Tambahkan lapoaran penjualan ke pelanggan</pre>\r\n', 2, '1', 5, 20, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:06:29', 21, '2021-08-04 18:55:39'),
(8, 'Skripsi Vira Teknik Informatika', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series and fuzzy Pada Toko JatiAsih Motor</p>\r\n\r\n<p>Revisi Vira Metta :&nbsp;<br />\r\nPak Suzuki:<br />\r\n1. Harga awal dasar brg ditampilkan<br />\r\n2. Laporan rugi laba</p>\r\n\r\n<p>Pak Adam:</p>\r\n\r\n<p>Pak Bagus :<br />\r\napplikasi :<br />\r\n- ID barang<br />\r\n- rekomendasi dari hasil perhitungan<br />\r\n- detail produk (ID produk, tgl beli, suplier, harga beli)<br />\r\n- menu konfigurasi)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, '1', 6, 20, '2800000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:11:00', 21, '2021-08-16 11:52:17'),
(9, 'Skripsi Indah Teknik Informatika', '<p>Penerapan Metode K-mean dan Liner Programming di Datamining untuk Sistem Rekomendasi Penempatan Sales SPG</p>\r\n\r\n<p>(Sidang Ulang)</p>\r\n\r\n<p><br />\r\n1. K-Mean menentukan cluster daerah<br />\r\ndengan penjualan tertinggi dan terendah<br />\r\n(mencari penyebab daerah dengan penjualan<br />\r\nterendah) dengan tujuan mencari kinerja SPG<br />\r\n2. Cari standar kerja spg di lokasi</p>\r\n\r\n<p>3. Penilaian standar misal ada penjualan<br />\r\nterendah solusi nya apa entah spg yg<br />\r\npenjualan tertinggi dipindah ke lokasi<br />\r\npenjualan terendah atau rekomendasi.</p>\r\n\r\n<p>4. Fitur di Laporan Metode variabel nya bisa<br />\r\ndiganti2 jangan hard code.</p>\r\n\r\n<p>5. Model nya import data bukan input data,<br />\r\njadi bisa langsung input dari excel bukan<br />\r\ninput manual.</p>\r\n\r\n<p>6. Ada fitur history spg(Data SPG Detail)<br />\r\nketika login, nama, tanggal, tanggal masuk<br />\r\nspg, lokasi wilayah spg ditempatkan</p>\r\n\r\n<p>7. Fitur login admin,manager<br />\r\n&nbsp;</p>\r\n', 2, '1', 3, 20, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:14:22', 21, '2021-06-24 15:33:15'),
(10, 'Skripsi Nazelika Teknik Informatika', '<p>Perbandingan Model K-Mean ada Datamining Dengan Exponential Smooth untuk Estimasi Harga pada PT Givro Multi Teknik Perkasa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Revisi nazel :</p>\r\n\r\n<p>1. Cara kerja metode kmean dibuat&amp;ditampilan dibawah metode k-mean</p>\r\n\r\n<p>2. Kmean dikelompokkan menjadi 3 kelompok nanti hasilnya digunakan dan dimasukkan ke masing2 kelompok</p>\r\n\r\n<p>3. Dikasih logo&amp;nama perusahaan di tampilan dashboard.</p>\r\n', 2, '1', 4, 20, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:16:42', 21, '2021-08-04 18:21:55'),
(11, 'Skripsi Ray Teknik Informatika', '<p>Rancang Bangun Aplikasi Sistem Pendukung Keputusan Seleksi Calon Ketua Komite Sekolah Menggunakan Metode Profile Matching ( Studi Kasus Yayasan Addawiyah Al Khair )</p>\r\n', 2, '1', 3, 20, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:18:33', 21, '2021-05-31 19:35:55'),
(12, 'Skripsi Zai Teknik Informatika', '<p>Sistem Pendukung Keputusan untuk Menentukan Material Packaging menggunakan Metode KNN dan SMART ( Studi Kasus PT DNP Indonesia )</p>\r\n\r\n<pre>\r\n\r\ncatatan pak heri :\r\nmenambah user customer\r\ntampilan setiap user ada pemberitahuan\r\nrekomendasi tampil di halaman customer\r\npenampilan perhitungan di tampilnan admin\r\nflow, smart -&gt; knn rekomendasi berlapis\r\nketika memilih material harus menunjukan hasil dari hasil metode smart dan berlanjut ke metode knn\r\nketika stok dari yang direkomendasikan oleh metode smart dan knn habis muncul pesan yang memberitahu bahwa stok material habis\r\n\r\ncatatan pak bagus\r\nAplikasi:\r\n- Perbandingan, rekomendasi\r\n\r\ncatatan pak andi :\r\nmemantau jumlah stok (perubahan transaksi)\r\nuntuk kode dijadikan otomatis\r\nuntuk stok dijadikan otomatis\r\nowner diganti direktur\r\nuse case diagram penjualan material packaging</pre>\r\n', 2, '1', 5, 9, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:21:44', 21, '2021-08-04 18:56:07'),
(13, 'Skripsi Wulandari Sistem Informasi', '<p>Rancang Bangun Aplikasi Pemesanan E-Tiket Wisata pada The Heritage Palace Kartasura Berbasis QR Code dengan Menggunakan Metode Moving Average</p>\r\n', 2, '1', 4, 21, '3000000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:24:19', 21, '2021-05-28 14:28:47'),
(14, 'Skripsi Pramita Teknik Informatika', '', 2, '1', 1, 21, '0', '2021-05-01', '2021-06-07', '2', 0, 21, '2021-04-22 09:39:23', 21, '2021-04-22 09:40:30'),
(15, 'Skripsi Elin Teknik Informatika', '<p>Sistem prediksi persediaan barang percetakan CV BISMA OPTIMA MENGGUNAKAN METODE SES DAN REGRESI LINEAR</p>\r\n', 2, '1', 6, 21, '', '2021-05-01', '2021-05-31', '2', 0, 21, '2021-04-22 09:41:30', 21, '2021-06-25 21:07:56'),
(16, 'KP Siti Maspupah Teknologi Informasi', '<p>CRM Project</p>\r\n', 3, '1', 6, 22, '0', '2021-04-19', '2021-04-30', '2', 0, 21, '2021-04-22 09:51:09', 22, '2021-06-25 21:01:41'),
(17, 'Ecommerce', '', 3, '1', 3, 20, '5000000', '2021-01-09', '2021-06-01', '1', 0, 21, '2021-04-22 14:54:12', 21, '2021-04-22 15:18:49'),
(18, 'Skripsi Qalam Teknik Informatika', '<p>&ldquo;<strong>Rancangan</strong> <strong>Bangun</strong> <strong>Aplikasi</strong> <strong>Sistem</strong> <strong>Pendukung</strong> <strong>Keputusan</strong> <strong>Seleksi</strong> <strong>Penerimaan</strong> <strong>Kartu</strong><strong> Jakarta </strong><strong>Pintar</strong><strong> (KJP) </strong><strong>pada</strong> <strong>Siswa</strong><strong>/i SMA </strong><strong>Muhammadiyah</strong><strong> 12 Jakarta </strong><strong>Dengan</strong> <strong>Metode</strong>&nbsp;<em>FUZZYSAW</em><strong>&rdquo;</strong></p>\r\n', 2, '1', 4, 21, '3200000', '2021-04-27', '2021-06-30', '2', 0, 0, '2021-04-27 09:57:53', 21, '2021-06-27 13:29:34'),
(19, 'KP Viki STIE Musi', '<p>Kopibenk</p>\r\n', 2, '1', 5, 23, '2500000', '2021-04-26', '2021-06-30', '2', 0, 21, '2021-04-27 10:12:09', 21, '2021-05-31 19:26:25'),
(20, 'Skripsi Julian Teknik Informatika', '<p>nama : Julian Ardillah Abhirity&nbsp;<br />\r\njudul skripsi : PERANCANGAN SISTEM PENGAMBILAN KEPUTUSAN UNTUK MEMILIH LOKASI PERUMAHAN YANG LAYAK DIBANGUN MENGGUNAKAN METODE SMARTER DAN FUZZY SUGENO (STUDI KASUS: PT ALMA AJI PROPERTINDO)</p>\r\n', 2, '1', 1, 21, '3200000', '2021-05-17', '2021-06-05', '2', 0, 21, '2021-05-17 11:07:14', 21, '2021-08-06 15:00:30'),
(21, 'kp', '', 1, '1', 1, 22, '', '2021-05-04', '2021-06-04', '2', 0, 22, '2021-05-17 14:40:33', 21, '2021-05-31 19:31:37'),
(22, 'Skripsi Ankgeera Teknik Informatika', '<p>RANCANGAN SISTEM PENJUALAN MENGGUNAKAN QR CODE PADA SASTRO MART MENGGUNAKAN METODE FP- GROWTH DAN HASH BASE<br />\r\n<br />\r\nMobile ready</p>\r\n\r\n<p>Pak Yan (Laporan)<br />\r\nJudul Kurung Spesifik<br />\r\nRumusan Masalah lebih spesifik sesuai judul</p>\r\n\r\n<p>Pak Heri (Aplikasi)</p>\r\n\r\n<p>1. Fp Growth harusnya menampilkan rekomendasi barang untuk customers dan menampilkan rumus nya di sistemnya&nbsp;<br />\r\n2. Menampilkan hasil rekomendasi dan pola pembelian<br />\r\n3. Fp Growth dan Hash based itu membandingkan atau mensupport keduanya ?</p>\r\n\r\n<p>Pak Andi (Aplikasi)<br />\r\n1. Kalo bisa pake payment Gateway<br />\r\n2. Kalo bisa 1 akses kaya di portal</p>\r\n', 2, '1', 6, 21, '3200000', '2021-05-25', '2021-06-19', '2', 0, 21, '2021-05-25 08:37:43', 21, '2021-08-16 11:51:39'),
(23, 'Skripsi Dana Sistem Informasi', '<p>Rancang bangun sistem pemesanan&nbsp;<br />\r\nTravel Putra Malam Trans menggunakan QRcode</p>\r\n', 2, '1', 1, 9, '3200000', '2021-05-31', '2021-06-30', '2', 0, 3, '2021-05-31 19:48:51', 21, '2021-05-31 19:50:32'),
(24, 'Skripsi Gilang Teknik Informatika', '<p>perancangan sistem pendukung keputusan pemilihan mobil bekas terbaik sesuai kriteria menggunakan metode smart dan logika fuzzy mamdani</p>\r\n', 2, '1', 1, 9, '3200000', '2021-06-12', '2021-06-30', '2', 1, 21, '2021-06-12 16:01:14', 21, '2021-06-17 22:46:15'),
(25, 'Skripsi Octa Ubhara Sistem Informasi Pelaporan Hasil Donasi Koin', '<p>RANCANG BANGUN SISTEM INFORMASI PELAPORAN HASIL DONASI KOIN NU BERBASIS WEBSITE DI LAZISNU MWC NU BEKASI UTARA</p>\r\n', 2, '1', 3, 20, '3200000', '2021-06-15', '2021-06-18', '2', 0, 20, '2021-06-15 09:43:30', 21, '2021-06-17 23:00:10'),
(26, 'Skripsi Gilang SPK Mobil Bekas', '<p>perancangan sistem pendukung keputusan pemilihan mobil bekas terbaik sesuai kriteria menggunakan metode smart dan logika fuzzy mamdani</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>jenis mobil, merek mobil, tahun pembuatan, harga, kapasitas penumpang (orang), kapasitas silinder (cc), transmisi,</p>\r\n', 2, '1', 3, 20, '3200000', '2021-06-15', '2021-06-18', '2', 0, 20, '2021-06-15 09:43:56', 21, '2021-07-02 21:39:27'),
(27, 'Skripsi Dicky Teknik Informatika', '<p>Implementasi Data Mining Untuk Rekomendasi Menu Makanan Dengan Menggunakan Algoritma Hash Based dan Apriori</p>\r\n', 2, '1', 5, 20, '3200000', '2021-06-21', '2021-06-30', '2', 0, 21, '2021-06-21 16:51:07', 21, '2021-06-27 06:36:57'),
(28, 'Skripsi SI Lailla', '<p>Sistem Informasi Pendataan Kontainer Masuk ( Tally Sheet, Log Stripping, Berita Acara )</p>\r\n', 2, '1', 3, 20, '2500000', '2021-07-19', '2021-10-31', '2', 0, 20, '2021-07-24 08:14:03', 21, '2021-07-25 22:17:16'),
(29, 'Sistem Borang Prodi', 'Metode RSA untuk enkripsi keamanan dokumen\r\n', 3, '1', 1, 21, '', '2021-07-28', '2021-08-11', '3', 0, 21, '2021-07-28 20:47:23', 21, '2021-07-28 20:47:23'),
(30, 'CRM ToDo', '<p>&nbsp;</p>\r\n\r\n<h2>Unique Case</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n      <p><strong>No</strong></p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n      <p><strong>Title</strong></p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n     <p><strong>Description</strong></p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>1</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Child Todo</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Dapat check masing-masing apa bila child todo telah selesai</p>\r\n\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>2</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Todo status</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Status Condition</p>\r\n\r\n     <ol>\r\n        <li>Hold (apabila belum ada assignee)</li>\r\n        <li>Ongoing (assignee dan due date aktif)</li>\r\n        <li>Done (Todo Child telah selesai semua)</li>\r\n        <li>Expired (Due date terlewat namun masih ada child yang belum selesai)</li>\r\n     </ol>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note: jika ada case tambahan, dapat dibicarakan selanjutnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Potential Upcoming Case:</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n      <p><strong>No</strong></p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n      <p><strong>Title</strong></p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n     <p><strong>Description</strong></p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>1</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Automated Todo</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Automasi todo dengan project, misal ada penambahan project baru, maka langsung tertambah pada todo</p>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>2</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Privilege Access</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Tiap assignee hanya dapat mengakses miliknya sendiri</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>3</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Client Access</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Client dapat request, misal ada penambahan, revisi, dll</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>&hellip;</strong></p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>&hellip;</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>&hellip;.</p>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 3, '1', 1, 25, '', '2021-08-09', '2021-08-23', '3', 0, 21, '2021-08-03 12:23:29', 21, '2021-08-04 18:42:57'),
(31, 'Skripsi Adi Teknik Informatika', '<p>List Revisi nya :<br />\r\n1. Aplkasi saya belum ada peran user/aktor pengguna program. Nah ini saya sudah tambahkan kedalam aplikasi saya.&nbsp;<br />\r\n2. Dalam proses pembelian motor perlu seleksi dari alternatif dulu. Motor apa yang dibandingkan. Perlu dipilih motor mana yg akan dibeli pelanggan, nah ini perlu syarat2 di Kriteria tadi. Ini yg belum saya buat.&nbsp;<br />\r\n3. Perlu ada data history dari data pelanggan yg akan beli setelah no.2 di proses. Ini saya belum ada.&nbsp;<br />\r\n4. Perlu tambah data kriteria lainnya. (Diaplikasi saya cuma 4 kriteria)<br />\r\nKira2 itu sih revisinya, lainnya teori aja yg perlu penjelasan, seperti :<br />\r\n1. Dasar pembuatan Bobot/Nilai Kriteria ?<br />\r\n2. Perlu otomatis keluar data motor langsung.&nbsp;<br />\r\n3. Apa maksud Cost dan Benefit dari metode yg dipakai.</p>\r\n', 2, '3', 3, 21, '1000000', '2021-08-04', '2021-08-11', '2', 0, 21, '2021-08-06 14:58:57', 21, '2021-08-06 14:58:57');
-- --------------------------------------------------------
--
-- Struktur dari tabel `project_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data untuk tabel `project_log`
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
(138, 30, 'deskripsi', '<p>To Do Requirement Analyst</p>\r\n\r\n<h2>Database Design</h2>\r\n\r\n<ol>\r\n  <li>Todo</li>\r\n</ol>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n  <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:184px\">\r\n      <p>Field</p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:179px\">\r\n     <p>type</p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:190px\">\r\n     <p>extras</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>ID</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>int</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>primary</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>title</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>varchar</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Description</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>text</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Start date</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>date</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>&gt;= today</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Due date</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>date</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>&gt;= today</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>assignee</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Int</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>Relate User_id</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>status</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Int/varchar</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Create_by</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Int</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>User Session ID</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Create_at</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Datetime</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>Current_timestamp</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Updated_by</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Int</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>User Session ID</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Updated_at</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Datetime</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>Current_timestamp</p>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n  <li>Todo_detail</li>\r\n</ol>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:184px\">\r\n      <p>Field</p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:179px\">\r\n     <p>type</p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:190px\">\r\n     <p>extras</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>ID</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>int</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>primary</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Todo_id</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>int</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>Parent ID</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>title</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>varchar</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Description</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>text</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Checked</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Enum(0,1)</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>True or false</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Create_by</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Int</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>User Session ID</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n     <p>Create_at</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:179px\">\r\n      <p>Datetime</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:190px\">\r\n      <p>Current_timestamp</p>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note:</p>\r\n\r\n<p>Jika ada penambahan atau pengurangan field dipersilahkan untuk melakukan penyesuaian</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Mockup</h2>\r\n\r\n<ol>\r\n  <li>\r\n  <table>\r\n   <tbody>\r\n     <tr>\r\n        <td style=\"height:0px; width:145px\">&nbsp;</td>\r\n     </tr>\r\n     <tr>\r\n        <td>&nbsp;</td>\r\n       <td><img src=\"file:///C:/Users/MITCHE~1.MAR/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\" style=\"height:268px; width:448px\" /></td>\r\n     </tr>\r\n   </tbody>\r\n  </table>\r\n  <br />\r\n  Main Todo</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n  <li>Detail Todo</li>\r\n</ol>\r\n\r\n<p><img src=\"file:///C:/Users/MITCHE~1.MAR/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg\" style=\"height:297px; width:499px\" /></p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n  <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:104px\">\r\n     <p><strong>No</strong></p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:142px\">\r\n      <p><strong>Title</strong></p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:356px\">\r\n     <p><strong>Description</strong></p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:104px\">\r\n     <p><strong>Mockup 1</strong></p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:142px\">\r\n      <p>Main Todo</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:356px\">\r\n      <p>Menampilkan List todo yang telah tersimpan</p>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:104px\">\r\n     <p><strong>Mockup 2</strong></p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:142px\">\r\n      <p>Detail Todo</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:356px\">\r\n      <p>Menampilkan child todo dari todo utama, dimana masing-masing child punya checkbox apabila child todo telah selesai</p>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Unique Case</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n      <p><strong>No</strong></p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n      <p><strong>Title</strong></p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n     <p><strong>Description</strong></p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>1</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Child Todo</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Dapat check masing-masing apa bila child todo telah selesai</p>\r\n\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>2</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Todo status</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Status Condition</p>\r\n\r\n     <ol>\r\n        <li>Hold (apabila belum ada assignee)</li>\r\n        <li>Ongoing (assignee dan due date aktif)</li>\r\n        <li>Done (Todo Child telah selesai semua)</li>\r\n        <li>Expired (Due date terlewat namun masih ada child yang belum selesai)</li>\r\n     </ol>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note: jika ada case tambahan, dapat dibicarakan selanjutnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Potential Incoming Case:</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n      <p><strong>No</strong></p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n      <p><strong>Title</strong></p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n     <p><strong>Description</strong></p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>1</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Automated Todo</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Automasi todo dengan project, misal ada penambahan project baru, maka langsung tertambah pada todo</p>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>2</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Privilege Access</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Tiap assignee hanya dapat mengakses miliknya sendiri</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>3</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Client Access</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Client dapat request, misal ada penambahan, revisi, dll</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>&hellip;</strong></p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>&hellip;</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>&hellip;.</p>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<h2>Unique Case</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n  <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n      <p><strong>No</strong></p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n      <p><strong>Title</strong></p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n     <p><strong>Description</strong></p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>1</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Child Todo</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Dapat check masing-masing apa bila child todo telah selesai</p>\r\n\r\n      <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>2</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Todo status</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Status Condition</p>\r\n\r\n     <ol>\r\n        <li>Hold (apabila belum ada assignee)</li>\r\n        <li>Ongoing (assignee dan due date aktif)</li>\r\n        <li>Done (Todo Child telah selesai semua)</li>\r\n        <li>Expired (Due date terlewat namun masih ada child yang belum selesai)</li>\r\n     </ol>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note: jika ada case tambahan, dapat dibicarakan selanjutnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Potential Upcoming Case:</h2>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n <tbody>\r\n   <tr>\r\n      <td style=\"background-color:black; border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:56px\">\r\n      <p><strong>No</strong></p>\r\n      </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:none; border-top:1px solid black; vertical-align:top; width:132px\">\r\n      <p><strong>Title</strong></p>\r\n     </td>\r\n     <td style=\"background-color:black; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:412px\">\r\n     <p><strong>Description</strong></p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>1</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Automated Todo</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Automasi todo dengan project, misal ada penambahan project baru, maka langsung tertambah pada todo</p>\r\n\r\n     <p>&nbsp;</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>2</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Privilege Access</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Tiap assignee hanya dapat mengakses miliknya sendiri</p>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>3</strong></p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>Client Access</p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>Client dapat request, misal ada penambahan, revisi, dll</p>\r\n      </td>\r\n   </tr>\r\n   <tr>\r\n      <td style=\"border-bottom:1px solid #666666; border-left:1px solid #666666; border-right:1px solid #666666; border-top:none; vertical-align:top; width:56px\">\r\n      <p><strong>&hellip;</strong></p>\r\n      </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:132px\">\r\n      <p>&hellip;</p>\r\n     </td>\r\n     <td style=\"border-bottom:1px solid #666666; border-left:none; border-right:1px solid #666666; border-top:none; vertical-align:top; width:412px\">\r\n      <p>&hellip;.</p>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<strong>Mitchell Marcel</strong> mengubah Due_date dari <i>2021-08-16</i> menjadi <i>2021-08-23</i>', 21, '2021-08-04 18:42:57'),
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
(149, 8, 'tracking', '5', '6', '<strong>Mitchell Marcel</strong> mengubah Tracking dari <i>deploy</i> menjadi <i>finish</i>', 21, '2021-08-16 11:52:17');
-- --------------------------------------------------------
--
-- Struktur dari tabel `project_payment`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data untuk tabel `project_payment`
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
(24, 26, '1600000', 'Pembayaran DP', 'Pembayaran DP', '2021-06-15', 20, '2021-06-15 09:45:08'),
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
(43, 6, '1700000', 'Pelunasan', '', '2021-08-19', 21, '2021-08-19 09:03:31');
-- --------------------------------------------------------
--
-- Struktur dari tabel `user`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data untuk tabel `user`
--
INSERT INTO `user` (`id_user`, `id_pegawai`, `nama`, `username`, `password`, `level`, `last_activity`, `is_active`) VALUES
(1, 0, 'Administrator', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin', '2021-05-17 07:49:56', 1),
(3, 14, 'Ardisa Valencia', 'ardisa.valencia', 'ae3b53ce20c3584382b131059c9df87a5110cb5b', '4', '2021-04-22 01:11:18', 0),
(4, 15, 'Jamal Bahri', 'jamal.bahri', '077e8bbe47611178478f0fa5f6ed9fcfc2d7712b', '1', '2021-04-22 01:12:10', 0),
(5, 20, 'Denis Ahmad', 'denis.ahmad', '39038c331178493f0901bc0a36c1f55a2881eda6', 'admin', '2021-05-04 04:09:01', 1),
(6, 21, 'Mitchell Marcel', 'mitchell.marcel', '1c06e0b34d6da25d6a21961cd75d1e4fb5ab55b5', 'admin', '2021-05-04 04:09:06', 1),
(7, 22, 'Siti Maspupah', 'siti.maspupah', 'ecd7b59a6715aaa04530546ee94f30780524fb8a', '12', '2021-04-22 01:34:39', 1),
(8, 23, 'Nurul Azmi', 'nurul.azmi', 'ca855751bd97374ffd5c1dce561b5ac9f8fbf77b', '11', '2021-05-10 08:03:28', 1),
(9, 24, 'Choirul Satryo Utomo', 'choirul.satryo.utomo', '93d9be1793f40e3a0a237adeb923da334baf99ad', '11', '2021-06-21 04:29:40', 1),
(10, 25, 'Rachma Adzima Maulida', 'rachma.adzima.maulida', 'd04ac5e5e2b5b70b9f5a7b28b4158725462f68db', '11', '2021-08-04 11:30:05', 1);
--
-- Indexes for dumped tables
--
--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);
--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);
--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);
--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);
--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);
--
-- Indeks untuk tabel `project_log`
--
ALTER TABLE `project_log`
  ADD PRIMARY KEY (`id`);
--
-- Indeks untuk tabel `project_payment`
--
ALTER TABLE `project_payment`
  ADD PRIMARY KEY (`id`);
--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
--
-- AUTO_INCREMENT untuk tabel yang dibuang
--
--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT untuk tabel `project_log`
--
ALTER TABLE `project_log`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT untuk tabel `project_payment`
--
ALTER TABLE `project_payment`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
