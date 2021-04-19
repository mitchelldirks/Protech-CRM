-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 04:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
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
(1, 'Kasubag Tata usaha', 'Membuat laporan keuangan siswa dan berkas\r\n', 0, 0, '2021-04-19 08:56:29', '2021-04-19 08:56:29'),
(2, 'Staff Tata Usaha', 'Mengurus keuangan siswa dan berkas', 0, 0, '2021-04-19 08:56:29', '2021-04-19 08:56:29'),
(3, 'Staff Tata Usaha/Bendahara', 'Mengurus keuangan yang masuk dan keluar dalam setiap keperluan', 0, 0, '2021-04-19 08:56:29', '2021-04-19 08:56:29'),
(5, 'Staff Tata Usaha/Pustakawan', 'Yang Mengurus peminjaman buku di perpustakaan', 0, 0, '2021-04-19 08:56:29', '2021-04-19 08:56:29'),
(6, 'Toolman Multimedia', 'Yang mengurus event seminar maupun acara lainnya', 0, 0, '2021-04-19 08:56:29', '2021-04-19 08:56:29'),
(10, 'Keamanan', 'Yang Menjaga lingkungan sekolah tetap aman ', 0, 0, '2021-04-19 08:56:29', '2021-04-19 08:56:29');

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
(43, 'Edit', 'Project', 2, 'Project Edit 2', 15, '2021-04-19 21:08:24');

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
(1, 'Rahmawati, S.Ip', 'Kalapa Dua', '1998-01-01', '088888888888', 'Angginiep@gmail.com', 'Tinggal dikosan atau di Cibitung', '5983741_20140815020733.jpg', 6, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(2, 'Ganda Sastra Permana, SE', 'Kalimantan', '1970-01-01', '666', 'Kuyang@kalimantan.com', 'Borneo island', 'baby-boy.png', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(3, 'Rusandi', 'Bekasi', '1998-12-11', '087888769662', 'nugroho.adi@gmail.com', 'Rawa Bugel', 'images.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(4, 'Muhammad Januri Rahmat', 'US', '2009-02-04', '1039301', 'Pinkguy@filthyFrank.tv', 'Shut The Fuck Up', '11138491_1618785198365936_2001600508335857720_n.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(5, 'Imanuel OKtavianus Siadan', 'Jakarta', '2010-06-27', '083892828192', 'jeannylarasyida@gmail.com', 'Jl. Lele No. 65', 'Robot-LF.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(6, 'Wawan', 'Seragen', '1982-08-10', '085868675', 'test@gmail.com', 'Bekasi', 'kisspng-businessperson-partnership-company-paper-corporati-5b76cf7aeaf8b4.8952654615345130189625.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(7, 'Trisnadi', 'Fucek', '2020-02-28', '086969696969', 'Rizky@fu.cek', 'Fucek buat Rizky Aefarlava', '5.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(8, 'Muahamad Yusup', 'Bandung', '1980-05-12', '0876767', 'anton@gmail.com', 'Bekasi Timur', '11659315_1470695093242096_335021292552452382_n-1.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(9, 'Colonel Sanders', 'Kentuky', '1907-01-01', '14022', 'kfc@kfcindonesia.com', '', '1598439309.jpeg', 1, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(10, 'Ari Kunarso', 'Jakarta', '1981-11-17', '0876767', 'test@gmail.com', 'asas', '11164180_410901672415852_3303747548403929083_n.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(11, 'Ai Agustini, M.pd', 'Tanjung Duren', '2020-02-22', '081211382132', 'M@ngkok.ku', 'Jalan Tanjung Duren Raya No.359c', 'images.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(12, 'Rusdi', 'Banten', '2000-03-09', '09301992919', 'jamal@bar.bar', 'asd', 'kisspng-businessperson-partnership-company-paper-corporati-5b76cf7aeaf8b4.8952654615345130189625.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(13, 'Nina Mariana, A.md', 'asd', '2020-02-06', '123141415151', '1sd@sf.s', 'asd', '3453689_20140901093112.jpg', 0, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(14, 'Ardisa Valencia', 'Jakarta', '1970-01-01', '082918829111', 'Ardisa@walkbrains.com', '', '1598516303.jpg', 9, 1, 0, 0, '2021-04-19 08:54:53', '2021-04-19 08:54:53'),
(15, 'Jamal Bahri', 'Bojong Gede', '1989-11-06', '089891029922', 'jamal@mailinator.com', '', NULL, 2, 1, 1, 15, '2021-04-19 09:49:04', '2021-04-19 20:52:52');

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
(1, 'Coolant Redeem Voucher', '<p>Bikin voucher apa tau tuh</p>\r\n', 1, '1', 3, 9, '5000000', '2021-04-19', '2021-04-20', '2', 0, 1, '2021-04-19 15:16:34', 0, '2021-04-19 19:49:44'),
(2, 'Skripsi Agus', '', 2, '1', 4, 15, '3200000', '2021-04-19', '2021-04-20', '2', 0, 0, '2021-04-19 20:14:14', 15, '2021-04-19 21:08:24');

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
(12, 2, 'kategori', '2', '1', '<strong></strong> mengubah Kategori dari <i>Skripsi</i> menjadi <i>Company Profile</i>', 0, '2021-04-19 20:20:15'),
(13, 2, 'tracking', '1', '6', '<strong></strong> mengubah Tracking dari <i>back log</i> menjadi <i>finish</i>', 0, '2021-04-19 20:20:15'),
(14, 2, 'start_date', '0000-00-00', '2021-04-19', '<strong></strong> mengubah Start_date dari <i>0000-00-00</i> menjadi <i>2021-04-19</i>', 0, '2021-04-19 20:20:15'),
(15, 2, 'due_date', '0000-00-00', '2021-04-20', '<strong></strong> mengubah Due_date dari <i>0000-00-00</i> menjadi <i>2021-04-20</i>', 0, '2021-04-19 20:20:15'),
(16, 2, 'kategori', '1', '2', '<strong></strong> mengubah Kategori dari <i>Company Profile</i> menjadi <i>Skripsi</i>', 0, '2021-04-19 20:21:08'),
(17, 2, 'tracking', '6', '2', '<strong></strong> mengubah Tracking dari <i>finish</i> menjadi <i>analisa desain sistem</i>', 0, '2021-04-19 20:29:12'),
(18, 2, 'tracking', '2', '3', '<strong>Jamal Bahri</strong> mengubah Tracking dari <i>analisa desain sistem</i> menjadi <i>pengerjaan</i>', 15, '2021-04-19 20:38:52'),
(19, 2, 'tracking', '3', '6', '<strong>Jamal Bahri</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>finish</i>', 15, '2021-04-19 20:46:11'),
(20, 2, 'tracking', '3', '4', '<strong>Jamal Bahri</strong> mengubah Tracking dari <i>pengerjaan</i> menjadi <i>testing</i>', 15, '2021-04-19 21:08:24');

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
(1, 0, 'Administrator', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', '3', '2021-04-19 02:19:39', 1),
(3, 14, 'Ardisa Valencia', 'ardisa.valencia', 'ae3b53ce20c3584382b131059c9df87a5110cb5b', '4', '2021-04-19 02:39:39', 1),
(4, 15, 'Jamal Bahri', 'jamal.bahri', '077e8bbe47611178478f0fa5f6ed9fcfc2d7712b', '1', '2021-04-19 13:30:26', 1);

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
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_log`
--
ALTER TABLE `project_log`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;