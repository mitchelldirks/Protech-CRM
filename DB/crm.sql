-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2021 at 10:18 AM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.27

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`, `job_desc`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(11, 'Developer', 'Developer', 0, 0, '2021-04-22 08:07:54', '2021-04-22 08:07:54'),
(12, 'Project Manager Intern', 'PM Intern', 0, 0, '2021-04-22 08:10:35', '2021-04-22 08:10:35');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `deskripsi`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Company Profile', 'Compro', 1, 1, '2021-04-19 12:05:47', '2021-04-19 12:06:49'),
(2, 'Skripsi', 'Joki tanpa peti mati', 0, 0, '2021-04-19 20:13:31', '2021-04-19 20:13:31');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(103, 'Create', 'Project', 0, 'Project Create New Entry', 21, '2021-04-22 09:51:09');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama_pegawai`, `tempatlahir`, `tanggallahir`, `tel`, `email`, `alamat`, `img`, `jabatan`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Colonel Sanders', 'Kentuky', '1907-01-01', '14022', 'kfc@kfcindonesia.com', '', '1598439309.jpeg', 11, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-22 10:17:54'),
(15, 'Jamal Bahri', 'Bojong Gede', '1989-11-06', '089891029922', 'jamal@mailinator.com', '', NULL, 2, 0, 1, 15, '2021-04-19 09:49:04', '2021-04-22 08:12:10'),
(20, 'Denis Ahmad', 'Bekasi', '1998-11-06', '089653496918', 'denis@dtech.web.id', '', NULL, 11, 1, 0, 0, '2021-04-22 08:31:01', '2021-04-22 08:31:01'),
(21, 'Mitchell Marcel', 'Bekasi', '1998-03-16', '08980780853', 'mitchell@dtech.web.id', '', NULL, 11, 1, 0, 0, '2021-04-22 08:32:43', '2021-04-22 08:32:43'),
(22, 'Siti Maspupah', 'Jakarta', '2021-01-01', '087824529024', 'sitimaspupah@dtech.web.id', '', NULL, 12, 1, 0, 0, '2021-04-22 08:34:39', '2021-04-22 08:34:39');

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
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `nama_project`, `deskripsi`, `kategori`, `project_case`, `tracking`, `assignee`, `nominal`, `start_date`, `due_date`, `priority`, `is_delete`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Coolant Redeem Voucher', '<p>Bikin voucher apa tau tuh</p>\r\n', 1, '1', 3, 9, '5000000', '2021-04-19', '2021-05-07', '2', 0, 1, '2021-04-19 15:16:34', 0, '2021-04-21 15:01:25'),
(3, 'Skripsi Devi Teknik Informatika', '<p>Rancangan Sistem Informasi Pendukung Keputusan Promosi Jabatan dengan menggunakan Metode Multi Attribute Utility Theory ( Maut ) pada PT Marga Nusantara Jaya Berbasis Website</p>\r\n', 2, '1', 1, 15, '2950000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 07:53:31', 0, '2021-04-22 07:53:31'),
(4, 'Skripsi Ernanda Teknik Informatika', '<p>Perancangan Sistem Informasi Pendukung Keputusan Pemilihan Siswa Terbaik TKJ pada SMK Taman Siswa Jakarta berbasis Web menggunakan Metode SAW dan Fuzzy</p>\r\n', 2, '1', 1, 15, '2950000', '2021-04-22', '2021-10-31', '2', 0, 0, '2021-04-22 07:57:46', 0, '2021-04-22 07:57:46'),
(5, 'Skripsi Mega Teknik Informatika', '<p>Perancangan Sistem Informasi Pengambilan Keputusan Estimasi Biaya Pengiriman Barang Berbasis Web menggunakan Metode Havershine dan Location Based Service ( LBS ) pada PT Doksa Artha Gemilang</p>\r\n', 2, '1', 1, 15, '2950000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:00:00', 0, '2021-04-22 08:00:00'),
(6, 'Skripsi Maruli Teknik Informatika', '<p>Perancangan Sistem Informasi Berbasis Web untuk Penilaian Siswa Menggunakan Metode Algorithma K-Nearest Neighbor Classification ( K-Nn ) ( Studi Kasus SMK Negeri 31 Jakarta Pusat )</p>', 2, '1', 1, 15, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:02:49', 0, '2021-04-22 08:09:14'),
(7, 'Skripsi Agus Teknik Informatika', '<p>Perancangan Sistem Pemilihan Supplier Alat Laboratorium Berbasis Web dengan Metode Integrasi AHP dan Topsis di PT Anugrah Niaga Mandiri</p>\r\n', 2, '1', 1, 15, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:06:29', 0, '2021-04-22 08:11:36'),
(8, 'Skripsi Vira Teknik Informatika', '<p>Perancangan Sistem Informasi Penjualan Spare Part Motor Berbasis Web dengan Menggunakan Metode Time Series</p>\r\n', 2, '1', 1, 15, '2800000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:11:00', 0, '2021-04-22 08:11:38'),
(9, 'Skripsi Indah Teknik Informatika', '<p>Penerapan Metode Collaborative Filtering dan Algoritma Asosiasi di Datamining untuk Sistem Rekomendasi Berita pada Website Berita di DPRD Kota Bekasi</p>\r\n', 2, '1', 1, 15, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:14:22', 0, '2021-04-22 08:14:22'),
(10, 'Skripsi Nazelika Teknik Informatika', '<p>Perbandingan Model Regresi Linier ada Datamining Dengan Exponential Smooth untuk Estimasi Harga pada PT Givro Multi Teknik Perkasa</p>\r\n', 2, '1', 1, 15, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:16:42', 0, '2021-04-22 08:19:01'),
(11, 'Skripsi Ray Teknik Informatika', '<p>Rancang Bangun Aplikasi Sistem Pendukung Keputusan Seleksi Calon Ketua Komite Sekolah Menggunakan Metode Profile Matching ( Studi Kasus Yayasan Addawiyah Al Khair )</p>\r\n', 2, '1', 1, 15, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:18:33', 0, '2021-04-22 08:19:03'),
(12, 'Skripsi Zai Teknik Informatika', '<p>Sistem Pendukung Keputusan untuk Menentukan Material Packaging menggunakan Metode KNN dan SMART ( Studi Kasus PT DNP Indonesia )</p>\r\n', 2, '1', 1, 15, '3200000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:21:44', 0, '2021-04-22 08:24:52'),
(13, 'Skripsi Wulandari Sistem Informasi', '<p>Rancang Bangun Aplikasi Pemesanan E-Tiket Wisata pada The Heritage Palace Kartasura Berbasis QR Code dengan Menggunakan Metode Moving Average</p>\r\n', 2, '1', 1, 15, '3000000', '2021-05-01', '2021-10-31', '2', 0, 0, '2021-04-22 08:24:19', 0, '2021-04-22 08:25:31'),
(14, 'Skripsi Pramita Teknik Informatika', '', 2, '1', 1, 21, '0', '2021-05-01', '2021-06-07', '2', 0, 21, '2021-04-22 09:39:23', 21, '2021-04-22 09:40:30'),
(15, 'Skripsi Elin Teknik Informatika', '', 2, '1', 1, 21, '', '2021-05-01', '2021-05-31', '2', 0, 21, '2021-04-22 09:41:30', 21, '2021-04-22 09:41:30'),
(16, 'KP Siti Maspupah Teknik Informatika', '<p>CRM Project</p>\r\n', 2, '4', 1, 22, '0', '2021-04-19', '2021-04-30', '2', 0, 21, '2021-04-22 09:51:09', 21, '2021-04-22 09:51:09');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(21, 1, 'due_date', '2021-04-20', '2021-05-07', '<strong></strong> mengubah Due_date dari <i>2021-04-20</i> menjadi <i>2021-05-07</i>', 0, '2021-04-21 15:01:25');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(14, 13, '1000000', 'Pembayaran DP', '', '2021-04-22', 0, '2021-04-22 08:24:40');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_pegawai`, `nama`, `username`, `password`, `level`, `last_activity`, `is_active`) VALUES
(1, 0, 'Administrator', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin', '2021-04-21 08:00:31', 1),
(3, 14, 'Ardisa Valencia', 'ardisa.valencia', 'ae3b53ce20c3584382b131059c9df87a5110cb5b', '4', '2021-04-22 01:11:18', 0),
(4, 15, 'Jamal Bahri', 'jamal.bahri', '077e8bbe47611178478f0fa5f6ed9fcfc2d7712b', '1', '2021-04-22 01:12:10', 0),
(5, 20, 'Denis Ahmad', 'denis.ahmad', '39038c331178493f0901bc0a36c1f55a2881eda6', '11', '2021-04-22 01:31:01', 1),
(6, 21, 'Mitchell Marcel', 'mitchell.marcel', '1c06e0b34d6da25d6a21961cd75d1e4fb5ab55b5', '11', '2021-04-22 01:32:43', 1),
(7, 22, 'Siti Maspupah', 'siti.maspupah', 'ecd7b59a6715aaa04530546ee94f30780524fb8a', '12', '2021-04-22 01:34:39', 1);

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
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
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
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `project_log`
--
ALTER TABLE `project_log`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `project_payment`
--
ALTER TABLE `project_payment`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;