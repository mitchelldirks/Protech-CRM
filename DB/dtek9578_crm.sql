-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 01:03 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(12, 'Project Manager Intern', 'PM Intern', 0, 0, '2021-04-22 08:10:35', '2021-04-22 08:10:35'),
(13, 'Outsource', 'Kerja doang dibayar kaga\r\n', 21, 21, '2021-06-21 11:27:39', '2021-06-21 11:27:39');

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
(2, 'Skripsi', 'Jasa ', 0, 21, '2021-04-19 20:13:31', '2021-05-17 13:46:27'),
(3, 'Web System', '', 0, 0, '2021-04-22 11:18:23', '2021-04-22 11:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `legal`
--

CREATE TABLE `legal` (
  `id` int(15) NOT NULL,
  `id_project` int(15) DEFAULT NULL,
  `flow` varchar(250) DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `extension` varchar(150) DEFAULT NULL,
  `link_doc` text DEFAULT NULL,
  `doc_number` varchar(150) DEFAULT NULL,
  `doc_date` date DEFAULT NULL,
  `doc_title` text DEFAULT NULL,
  `doc_author` text DEFAULT NULL,
  `doc_recepient` text DEFAULT NULL,
  `doc_body` text DEFAULT NULL,
  `is_public` int(11) DEFAULT NULL,
  `is_sent` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `us_approve` int(11) DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `legal`
--

INSERT INTO `legal` (`id`, `id_project`, `flow`, `filename`, `slug`, `extension`, `link_doc`, `doc_number`, `doc_date`, `doc_title`, `doc_author`, `doc_recepient`, `doc_body`, `is_public`, `is_sent`, `is_delete`, `us_approve`, `approve_date`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(32, NULL, 'Incoming Letter', 'ABSTRAK.docx', 'abstrak-docx', 'docx', '', '2', '2021-11-26', 'Abstrak', 'Administrator', 'joe@gmail.com', '', 1, 0, 0, 0, '0000-00-00 00:00:00', 0, '2021-11-26 18:49:38', 0, '2021-11-26 18:49:38'),
(33, NULL, 'Outcoming Letter', 'Cover_KP.docx', 'cover-kp-docx', 'docx', '', '3', '2021-11-26', 'Cover KP', 'Administrator', 'joe@gmail.com', '', 1, 0, 0, 0, '0000-00-00 00:00:00', 0, '2021-11-26 18:52:23', 0, '2021-11-26 19:06:09');

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
(1, 'Create', 'Kategori', 0, 'Kategori Create New Entry', 1, '2021-04-19 12:04:58');

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
(22, 'Siti Maspupah', 'Jakarta', '2021-01-01', '087824529024', 'sitimaspupah@dtech.web.id', '', NULL, 12, 1, 0, 0, '2021-04-22 08:34:39', '2021-04-22 08:34:39'),
(23, 'Nurul Azmi', '', '1997-11-23', '087875176688', 'nurul.azmi@dtech.web.id', '', NULL, 11, 1, 21, 21, '2021-05-10 15:03:28', '2021-05-26 16:31:25'),
(24, 'Choirul Satryo Utomo', 'Jakarta', '2021-06-21', '082114854303', 'tomo@dtech.web.id', '', NULL, 11, 1, 21, 21, '2021-06-21 11:29:40', '2021-06-21 11:29:40'),
(25, 'Rachma Adzima Maulida', 'Bekasi', '2001-04-23', '085817922089', 'rachmadzima4@gmail.com', '', NULL, 11, 1, 21, 25, '2021-08-04 18:30:05', '2021-08-04 19:27:53');

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
  `status` varchar(100) NOT NULL,
  `create_by` int(1) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(1) NOT NULL,
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `assignee` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 0, 'Administrator', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin', '2021-09-21 01:45:05', 1),
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
-- Indexes for table `legal`
--
ALTER TABLE `legal`
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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `legal`
--
ALTER TABLE `legal`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pettycash`
--
ALTER TABLE `pettycash`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `project_log`
--
ALTER TABLE `project_log`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `project_payment`
--
ALTER TABLE `project_payment`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `todo_detail`
--
ALTER TABLE `todo_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
