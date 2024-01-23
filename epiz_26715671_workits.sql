-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql212.epizy.com
-- Generation Time: Jan 23, 2024 at 10:43 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26715671_workits`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('1ad722b4152dac95b25ef0391367ba36', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 1428339021, ''),
('6b6478c492b0fe2e504f291750a24d1c', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 1428344604, 'a:3:{s:9:\"user_data\";s:0:\"\";s:7:\"id_user\";s:1:\"2\";s:4:\"user\";s:1:\"2\";}'),
('f19d98e1408babe7700aead53737bebf', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 1428345373, 'a:3:{s:9:\"user_data\";s:0:\"\";s:7:\"id_user\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_departemen`
--

CREATE TABLE `tb_departemen` (
  `id_departemen` int(3) NOT NULL,
  `nama_departemen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_departemen`
--

INSERT INTO `tb_departemen` (`id_departemen`, `nama_departemen`) VALUES
(1, 'IT'),
(2, 'Operation'),
(3, 'Engineering'),
(4, 'Production Facilities'),
(5, 'Marketing Communication'),
(6, 'Sales Corporate'),
(7, 'Sales Edutainment'),
(8, 'Creative and Show'),
(9, 'Food and Beverages'),
(10, 'Finance'),
(11, 'HR & GA'),
(12, 'Wardrobe'),
(13, 'Purchasing');

-- --------------------------------------------------------

--
-- Table structure for table `tb_identifikasi`
--

CREATE TABLE `tb_identifikasi` (
  `id_identifikasi` varchar(8) NOT NULL,
  `tanggal` date NOT NULL,
  `identifikasi` text NOT NULL,
  `status` enum('On Progress','Finished') NOT NULL,
  `persentase` enum('25%','50%','75%','100%') NOT NULL,
  `oleh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_identifikasi`
--

INSERT INTO `tb_identifikasi` (`id_identifikasi`, `tanggal`, `identifikasi`, `status`, `persentase`, `oleh`) VALUES
('PK-00008', '2018-02-19', 'Slot LAN card masalah', 'Finished', '100%', 'user'),
('PK-00009', '2018-02-19', 'Test print hasilnya ok', 'Finished', '100%', 'fajri'),
('PK-00010', '2018-02-19', 'test pakai kabel power baru ternyata tetap belum mau nyala', 'Finished', '100%', 'fajri'),
('PK-00011', '2018-02-20', 'unregistered', 'Finished', '100%', 'fajri'),
('PK-00012', '2018-02-20', 'crimping kabel LAN rusak', 'Finished', '100%', 'fajri'),
('PK-00013', '2018-02-20', 'Photoshop sudah ada tinggal diaktifkan karena softwarenya trial', 'Finished', '100%', 'fajri'),
('PK-00014', '2018-02-21', 'power supply pada CPU bermasalah', 'Finished', '100%', 'fajri'),
('PK-00015', '2018-02-21', 'laptop belum tersambung ke jaringan LAN jadi otomatis tidak bisa konek ke printernya admin edu', 'Finished', '100%', 'fajri'),
('PK-00016', '2018-02-24', 'tinta berkurang', 'Finished', '100%', 'fajri'),
('PK-00017', '2018-02-27', 'tes kabel lan pakai lan tester hasilnya normal, restart switch yang terhubung ke pc di 2 titik (ruangan bos farid dan ruangan pf)', 'Finished', '100%', 'fajri'),
('PK-00018', '2018-02-27', 'setting pengaturan scanner lalu scan ulang', 'Finished', '100%', 'fajri'),
('PK-00019', '2018-03-01', 'mengganti password', 'Finished', '100%', 'fajri'),
('PK-00020', '2018-03-01', 'laptop sudah ada ipnya tinggal sambungkan ke printer lewat koneksi lan', 'Finished', '100%', 'fajri'),
('PK-00021', '2018-03-01', ' map network drive ulang karena pc rara (admin edu)ganti password', 'Finished', '100%', 'fajri'),
('PK-00022', '2018-03-01', 'map network drive ke pc rara edu', 'Finished', '100%', 'fajri'),
('PK-00023', '2018-03-01', 'masalah pada kabel lan sehingga koneksi tidak stabil', 'Finished', '100%', 'fajri'),
('PK-00024', '2018-03-02', 'Pasang IPnya ex Kiki PA. 172.16.9.150', 'Finished', '100%', 'Mardino Santosa'),
('PK-00025', '2018-03-02', 'Password komputernya Rara sudah dirubah', 'Finished', '100%', 'Mardino Santosa'),
('PK-00026', '2018-03-03', 'Power supply bermasalah.\r\nSuruh buatkan MR Power Supply ke Gudang', 'Finished', '100%', 'Mardino Santosa'),
('PK-00027', '2018-03-06', 'sering terjadi BOD disebabkan memory yg kurang mumpuni ', 'Finished', '100%', 'fajri'),
('PK-00028', '2018-03-06', 'serlu disetting ulang  browsernya', 'Finished', '100%', 'fajri'),
('PK-00029', '2018-03-06', 'Jaringan LAN time out / unreachable', 'Finished', '100%', 'fajri'),
('PK-00030', '2018-03-07', 'jaringan lokal bagus tapi akses internet tidak bisa', 'Finished', '100%', 'fajri'),
('PK-00031', '2018-03-08', 'RJ lan patah pin penahannya', 'Finished', '100%', 'fajri'),
('PK-00032', '2018-03-08', 'belum ada kabel lan di titik  tsb', 'Finished', '100%', 'fajri'),
('PK-00033', '2018-03-15', 'belum terkoneksi (PC)secara permanent ke printer yang ingin dihubungkan', 'Finished', '100%', 'fajri'),
('PK-00034', '2018-03-15', 'belum terkoneksi ke printer yang ingin dihubungkan', 'Finished', '100%', 'fajri'),
('PK-00035', '2018-03-15', 'cek monitor (normal/nyala), cek cpu(nyala)', 'Finished', '100%', 'fajri'),
('PK-00036', '2018-03-18', 'Ganti cartrdige, suruh buat MR untuk cartridge PG-40 dan CL-41', 'Finished', '100%', 'Mardino Santosa'),
('PK-00038', '2021-08-24', 'switch rusak, masalah di chipset.\r\nsementara ditukar dulu dengan switch di panel Jelajah\r\nRequest Switch Manageable lagi sebagai backup', 'Finished', '100%', 'Mardino Santosa'),
('PK-00039', '2018-04-11', 'Email di Gmail tidak bisa dibuka (read), browser perlu di update', 'Finished', '100%', 'fajri'),
('PK-00040', '2018-04-10', 'jaringan lokal terganggu', 'Finished', '100%', 'fajri'),
('PK-00041', '2018-04-11', 'laptop belum ada IP', 'Finished', '100%', 'fajri'),
('PK-00042', '2018-04-11', 'network adapter tidak terbaca', 'Finished', '100%', 'fajri'),
('PK-00043', '2018-05-13', 'Knob nya patah! Terlalu keras ditekan', 'Finished', '100%', 'Mardino Santosa'),
('PK-00044', '2018-05-13', 'Kayaknya mau ji dicharge. Jadi dibawa ke ruangan, dicharge dulu satu malam', 'Finished', '100%', 'Mardino Santosa'),
('PK-00045', '2023-03-09', 'Harddisknya bermasalah, mau dibackup dulu datanya. \r\nSampe skrg belum dikasih hdd external buat backup data', 'On Progress', '75%', 'Mardino Santosa'),
('PK-00046', '2018-05-13', 'kipas cpu mati', 'Finished', '100%', 'Mardino Santosa'),
('PK-00047', '2018-06-25', 'baterei ups rusak', 'Finished', '100%', 'fajri'),
('PK-00048', '2018-07-05', 'Baterai jebol', 'Finished', '100%', 'Mardino Santosa'),
('PK-00049', '2018-07-05', 'Motherboard rusak', 'Finished', '100%', 'Mardino Santosa'),
('PK-00050', '2018-08-01', 'pakai lan tester ternyata kabel ada yang putus', 'Finished', '100%', 'fajri'),
('PK-00051', '2018-08-01', 'mouse sudah kurang bagus', 'Finished', '100%', 'fajri'),
('PK-00052', '2018-08-02', 'Tidak mau booting, request lagi pengganti', 'On Progress', '25%', 'Mardino Santosa'),
('PK-00053', '2018-08-15', 'Haddisk satu corrupt, MotherBoard rusak', 'On Progress', '50%', 'Mardino Santosa'),
('PK-00054', '2018-08-19', 'Power Supply rusak', 'Finished', '100%', 'Mardino Santosa'),
('PK-00055', '2018-08-02', 'General Error, servis keluar', 'On Progress', '25%', 'Mardino Santosa'),
('PK-00056', '2018-08-19', 'Motherboard rusak, buatkan MR motherboard???', 'On Progress', '25%', 'Mardino Santosa'),
('PK-00057', '2018-09-19', 'harddisk dan mainboard rusak', 'On Progress', '25%', 'fajri'),
('PK-00058', '2018-09-25', 'Waste ink pad reset', 'Finished', '100%', 'fajri'),
('PK-00059', '2018-11-19', 'Rj45 patah pengaitnya jadi kadang longgar', 'Finished', '100%', 'fajri'),
('PK-00060', '2018-11-27', 'Cartridge hitam rusak', 'Finished', '100%', 'fajri'),
('PK-00061', '2018-12-08', 'kipas mati', 'Finished', '100%', 'Mardino Santosa'),
('PK-00062', '2019-01-17', 'cek kabel (ganti kabel) dan power normal. mesin printer tetap tidak nyala.', 'Finished', '100%', 'fajri'),
('PK-00063', '2019-04-03', 'Ram bermasalah', 'Finished', '100%', 'fajri'),
('PK-00064', '2019-02-26', 'Sistem windows bermasalah', 'Finished', '100%', 'fajri'),
('PK-00065', '2019-04-03', 'Carrier Catridge bermasalah', 'On Progress', '25%', 'fajri'),
('PK-00066', '2019-04-11', 'ink damper black kosong', 'Finished', '100%', 'fajri'),
('PK-00067', '2019-05-02', 'botol pembuangan dan tinta yg terbuang dalam printer', 'Finished', '100%', 'fajri'),
('PK-00068', '2019-10-20', 'Switch di Panel Magic Corner no respond', 'Finished', '100%', 'Mardino Santosa'),
('PK-00070', '2021-08-27', 'harddisk rusak', 'On Progress', '25%', 'Mardino Santosa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_identifikasi_ts`
--

CREATE TABLE `tb_identifikasi_ts` (
  `id_identifikasi` varchar(8) NOT NULL,
  `tanggal` date NOT NULL,
  `identifikasi` text NOT NULL,
  `status` enum('On Progress','Finished') NOT NULL,
  `persentase` enum('25%','50%','75%','100%') NOT NULL,
  `oleh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_identifikasi_ts`
--

INSERT INTO `tb_identifikasi_ts` (`id_identifikasi`, `tanggal`, `identifikasi`, `status`, `persentase`, `oleh`) VALUES
('PK-00001', '2018-03-17', 'Sudah dicek', 'Finished', '100%', 'fadli'),
('PK-00002', '2018-03-17', 'setelah di cek kemungkinan optik bermasalah', 'Finished', '100%', 'Muhammad Fadli'),
('PK-00003', '2018-03-31', 'Setelah di cek ada colokan pada sambungan kabel audio n power yg agak longgar', 'Finished', '100%', 'anoka'),
('PK-00004', '2018-04-08', 'Kabel adaptor longgar', 'Finished', '100%', 'Muhammad Fadli'),
('PK-00005', '2018-04-08', 'Dvd Output video Av bermasalah', 'Finished', '100%', 'Muhammad Fadli'),
('PK-00006', '2018-04-09', 'Menyiapkan fasilitas record', 'Finished', '100%', 'Muhammad Fadli'),
('PK-00007', '2018-04-09', 'menyiapkan fasilitas record', 'Finished', '100%', 'anoka');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `title` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(7) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` varchar(10) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `title`, `description`, `color`, `start`, `end`, `allDay`) VALUES
(1, 'fajri', ' oo', '#091B37', '2018-02-04 00:00:00', '2018-02-04 00:00:00', 'true'),
(2, 'fajri', ' ', '#091B37', '2018-02-06 00:00:00', '2018-02-06 00:00:00', 'true'),
(3, 'fajri', ' ', '#091B37', '2018-02-11 00:00:00', NULL, 'true'),
(4, 'fajri', ' ', '#091B37', '2018-02-18 00:00:00', NULL, 'true'),
(5, 'fajri', ' ', '#091B37', '2018-02-25 00:00:00', NULL, 'true'),
(8, 'dino', ' ', '#091B37', '2018-02-05 00:00:00', NULL, 'true'),
(9, 'dino', ' ', '#091B37', '2018-02-12 00:00:00', NULL, 'true'),
(10, 'dino', ' ', '#091B37', '2018-02-19 00:00:00', NULL, 'true'),
(13, 'dino', ' ', '#091B37', '2018-02-26 00:00:00', NULL, 'true'),
(14, 'dino', ' ', '#091B37', '2018-02-27 00:00:00', NULL, 'true'),
(15, 'Libur Nasional', 'Hari Raya Nyepi', '#dd4b39', '2018-03-17 00:00:00', NULL, 'true'),
(16, 'Libur Nasional', 'Wafat Isa Al-Masih', '#dd4b39', '2018-03-30 00:00:00', NULL, 'true'),
(20, 'dino', 'Off', '#091B37', '2018-03-05 00:00:00', NULL, 'true'),
(21, 'dino', 'Off', '#091B37', '2018-03-12 00:00:00', NULL, 'true'),
(22, 'dino', 'Off', '#091B37', '2018-03-19 00:00:00', NULL, 'true'),
(23, 'dino', 'Off', '#091B37', '2018-03-26 00:00:00', NULL, 'true'),
(24, 'dino', 'Off', '#091B37', '2018-03-27 00:00:00', NULL, 'true'),
(25, 'fajri', 'Off', '#091B37', '2018-03-03 00:00:00', NULL, 'true'),
(26, 'fajri', 'Off', '#091B37', '2018-03-11 00:00:00', NULL, 'true'),
(27, 'fajri', 'Off', '#091B37', '2018-03-18 00:00:00', NULL, 'true'),
(28, 'fajri', 'Off', '#091B37', '2018-03-25 00:00:00', NULL, 'true'),
(30, 'fajri', 'Off', '#091B37', '2018-03-04 00:00:00', NULL, 'true'),
(31, 'dino', 'PH/Cuti', '#2F9550', '2018-03-06 00:00:00', NULL, 'true'),
(32, 'dino', 'PH/Cuti', '#2F9550', '2018-03-07 00:00:00', NULL, 'true'),
(33, 'dino', 'PH/Cuti', '#2F9550', '2018-03-08 00:00:00', NULL, 'true'),
(39, 'fajri', 'PH/Cuti', '#2F9550', '2018-03-17 00:00:00', NULL, 'true'),
(40, 'fadli', 'Off', '#091B37', '2018-03-14 00:00:00', NULL, 'true'),
(41, 'fadli', 'Off', '#091B37', '2018-03-15 00:00:00', NULL, 'true'),
(42, 'adri', 'Off', '#091B37', '2018-03-12 00:00:00', NULL, 'true'),
(43, 'Adri', 'Sakit', '#f39c12', '2018-03-16 00:00:00', NULL, 'true'),
(44, 'Adri', 'Off', '#091B37', '2018-03-15 00:00:00', NULL, 'true'),
(45, 'Ano', 'Off', '#091B37', '2018-03-16 00:00:00', NULL, 'true'),
(46, 'Ano', 'Off', '#091B37', '2018-03-15 00:00:00', NULL, 'true'),
(47, 'Ano', 'PH/Cuti', '#00a65a', '2018-03-17 00:00:00', NULL, 'true'),
(48, 'dino', 'PH/Cuti', '#2F9550', '2018-03-20 00:00:00', NULL, 'true'),
(49, 'dino', 'PH/Cuti', '#2F9550', '2018-03-21 00:00:00', NULL, 'true'),
(50, 'dino', 'PH/Cuti', '#2F9550', '2018-03-22 00:00:00', NULL, 'true'),
(51, 'dino', 'PH/Cuti', '#2F9550', '2018-03-28 00:00:00', NULL, 'true'),
(52, 'dino', 'PH/Cuti', '#2F9550', '2018-03-29 00:00:00', NULL, 'true'),
(53, 'fajri', 'Off', '#091B37', '2018-04-01 00:00:00', NULL, 'true'),
(54, 'fajri', 'Off', '#091B37', '2018-04-08 00:00:00', NULL, 'true'),
(55, 'fajri', 'Off', '#091B37', '2018-04-15 00:00:00', NULL, 'true'),
(56, 'fajri', 'Off', '#091B37', '2018-04-22 00:00:00', NULL, 'true'),
(57, 'fajri', 'Off', '#091B37', '2018-04-29 00:00:00', NULL, 'true'),
(58, 'Libur Nasional', 'Isra Mi\'raj', '#dd4b39', '2018-04-14 00:00:00', NULL, 'true'),
(59, 'dino', 'Off', '#091B37', '2018-04-02 00:00:00', NULL, 'true'),
(60, 'dino', 'Off', '#091B37', '2018-04-09 00:00:00', NULL, 'true'),
(61, 'dino', 'Off', '#091B37', '2018-04-16 00:00:00', NULL, 'true'),
(62, 'dino', 'Off', '#091B37', '2018-04-23 00:00:00', NULL, 'true'),
(63, 'dino', 'Off', '#091B37', '2018-04-30 00:00:00', NULL, 'true'),
(64, 'ano', 'PH/Cuti', '#2F9550', '2018-04-04 00:00:00', NULL, 'true'),
(65, 'ano', 'Off', '#091B37', '2018-04-07 00:00:00', NULL, 'true'),
(66, 'ano', 'Off', '#091B37', '2018-04-08 00:00:00', NULL, 'true'),
(67, 'fadli', 'Off', '#091B37', '2018-04-02 00:00:00', NULL, 'true'),
(68, 'adri', 'Off', '#091B37', '2018-04-02 00:00:00', NULL, 'true'),
(69, 'fadli', 'Off', '#091B37', '2018-04-05 00:00:00', NULL, 'true'),
(70, 'adri', 'Off', '#091B37', '2018-04-05 00:00:00', NULL, 'true'),
(71, 'adri', 'PH/Cuti', '#2F9550', '2018-04-08 00:00:00', NULL, 'true'),
(72, 'dino', 'PH/Cuti', '#2F9550', '2018-04-10 00:00:00', NULL, 'true'),
(73, 'dino', 'PH/Cuti', '#2F9550', '2018-04-11 00:00:00', NULL, 'true'),
(74, 'adri', 'Off', '#091B37', '2018-04-09 00:00:00', NULL, 'true'),
(75, 'fadli', 'Off', '#091B37', '2018-04-12 00:00:00', NULL, 'true'),
(76, 'adri', 'Off', '#091B37', '2018-04-12 00:00:00', NULL, 'true'),
(77, 'fadli', 'PH/Cuti', '#2F9550', '2018-04-15 00:00:00', NULL, 'true'),
(78, 'fadli', 'Off', '#091B37', '2018-04-10 00:00:00', NULL, 'true'),
(79, 'ano', 'Off', '#091B37', '2018-04-10 00:00:00', NULL, 'true'),
(80, 'ano', 'Off', '#091B37', '2018-04-15 00:00:00', NULL, 'true'),
(81, 'adry', 'PH/Cuti', '#2F9550', '2018-04-20 00:00:00', NULL, 'true'),
(82, 'adry', 'Off', '#091B37', '2018-04-21 00:00:00', NULL, 'true'),
(83, 'adry', 'Off', '#091B37', '2018-04-22 00:00:00', NULL, 'true'),
(84, 'adry', 'Off', '#091B37', '2018-04-23 00:00:00', NULL, 'true'),
(85, 'adry', 'Off', '#091B37', '2018-04-24 00:00:00', NULL, 'true'),
(86, 'ano', 'Off', '#091B37', '2018-04-21 00:00:00', NULL, 'true'),
(88, 'ano', 'Off', '#091B37', '2018-04-22 00:00:00', NULL, 'true'),
(89, 'Libur Nasional', 'Libur Nasional', '#dd4b39', '2018-05-01 00:00:00', NULL, 'true'),
(90, 'Libur Nasional', 'Libur Nasional', '#dd4b39', '2018-05-10 00:00:00', NULL, 'true'),
(91, 'Libur Nasional', 'Libur Nasional', '#dd4b39', '2018-05-29 00:00:00', NULL, 'true'),
(92, 'fadli', 'PH/Cuti', '#2F9550', '2018-04-16 00:00:00', NULL, 'true'),
(93, 'fadli', 'Off', '#091B37', '2018-04-17 00:00:00', NULL, 'true'),
(94, 'fadli', 'Off', '#091B37', '2018-04-19 00:00:00', NULL, 'true'),
(95, 'fajri', 'Off', '#091B37', '2018-05-02 00:00:00', NULL, 'true'),
(96, 'fajri', 'Off', '#091B37', '2018-05-06 00:00:00', NULL, 'true'),
(97, 'fajri', 'Off', '#091B37', '2018-05-13 00:00:00', NULL, 'true'),
(98, 'fajri', 'Off', '#091B37', '2018-05-20 00:00:00', NULL, 'true'),
(99, 'fajri', 'Off', '#091B37', '2018-05-27 00:00:00', NULL, 'true'),
(100, 'fajri', 'PH/Cuti', '#2F9550', '2018-05-01 00:00:00', NULL, 'true'),
(101, 'dino', 'Off', '#091B37', '2018-05-07 00:00:00', NULL, 'true'),
(102, 'dino', 'Off', '#091B37', '2018-05-14 00:00:00', NULL, 'true'),
(103, 'dino', 'Off', '#091B37', '2018-05-21 00:00:00', NULL, 'true'),
(104, 'dino', 'Off', '#091B37', '2018-05-28 00:00:00', NULL, 'true'),
(105, 'dino', 'Off', '#091B37', '2018-05-08 00:00:00', '2018-05-08 00:00:00', 'true'),
(106, 'dino', 'Off', '#091B37', '2018-06-04 00:00:00', NULL, 'true'),
(107, 'dino', 'Off', '#091B37', '2018-06-11 00:00:00', NULL, 'true'),
(108, 'dino', 'Off', '#091B37', '2018-06-18 00:00:00', NULL, 'true'),
(109, 'dino', 'Off', '#091B37', '2018-06-25 00:00:00', NULL, 'true'),
(110, 'dino', 'Off', '#091B37', '2018-06-26 00:00:00', NULL, 'true'),
(111, 'dino', 'Off', '#091B37', '2018-07-02 00:00:00', NULL, 'true'),
(112, 'dino', 'Off', '#091B37', '2018-07-09 00:00:00', NULL, 'true'),
(113, 'dino', 'Off', '#091B37', '2018-07-16 00:00:00', NULL, 'true'),
(114, 'dino', 'Off', '#091B37', '2018-07-23 00:00:00', NULL, 'true'),
(115, 'dino', 'Off', '#091B37', '2018-07-30 00:00:00', NULL, 'true'),
(116, 'dino', 'Off', '#091B37', '2018-08-06 00:00:00', NULL, 'true'),
(117, 'dino', 'Off', '#091B37', '2018-08-13 00:00:00', NULL, 'true'),
(118, 'dino', 'Off', '#091B37', '2018-08-20 00:00:00', NULL, 'true'),
(119, 'dino', 'Off', '#091B37', '2018-08-27 00:00:00', NULL, 'true'),
(120, 'dino', 'Off', '#091B37', '2018-08-28 00:00:00', NULL, 'true'),
(121, 'fajri', 'off', '#001f3f', '2018-08-05 00:00:00', NULL, 'true'),
(123, 'fajri', 'off', '#001f3f', '2018-08-12 00:00:00', NULL, 'true'),
(124, 'fajri', 'off', '#001f3f', '2018-08-19 00:00:00', NULL, 'true'),
(125, 'fajri', 'off', '#001f3f', '2018-08-23 00:00:00', NULL, 'true'),
(126, 'fajri', 'off', '#001f3f', '2018-08-29 00:00:00', NULL, 'true'),
(128, 'Hari Kemerdekaa', 'Libur Nasional', '#dd4b39', '2018-08-17 00:00:00', NULL, 'true'),
(129, 'Idul Adha', 'Libur Nasional', '#dd4b39', '2018-08-22 00:00:00', NULL, 'true'),
(130, 'dino', 'Off', '#091B37', '2018-09-04 00:00:00', NULL, 'true'),
(131, 'dino', 'Off', '#091B37', '2018-09-10 00:00:00', '2018-09-10 00:00:00', 'true'),
(132, 'dino', 'Off', '#091B37', '2018-09-17 00:00:00', '2018-09-17 00:00:00', 'true'),
(133, 'dino', 'Off', '#091B37', '2018-09-24 00:00:00', '2018-09-24 00:00:00', 'true'),
(134, 'dino', 'Off', '#091B37', '2018-09-25 00:00:00', NULL, 'true'),
(135, 'fajri', 'off', '#001f3f', '2018-09-01 00:00:00', NULL, 'true'),
(136, 'fajri', 'off', '#001f3f', '2018-09-09 00:00:00', NULL, 'true'),
(137, 'fajri', 'off', '#001f3f', '2018-09-16 00:00:00', NULL, 'true'),
(138, 'fajri', 'off', '#001f3f', '2018-09-23 00:00:00', NULL, 'true'),
(139, 'fajri', 'off', '#001f3f', '2018-09-30 00:00:00', NULL, 'true'),
(140, 'dino', 'Off', '#091B37', '2021-07-27 00:00:00', NULL, 'true'),
(141, 'dino', 'Off', '#091B37', '2021-07-28 00:00:00', '2021-07-28 00:00:00', 'true'),
(142, 'dino', 'Off', '#091B37', '2021-07-29 00:00:00', NULL, 'true'),
(143, 'dino', 'PH/Cuti', '#2F9550', '2021-07-31 00:00:00', NULL, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tb_permintaan`
--

CREATE TABLE `tb_permintaan` (
  `id_permintaan` varchar(8) NOT NULL,
  `dari` varchar(200) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `status` enum('Waiting','On Progress','Finished') NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_permintaan`
--

INSERT INTO `tb_permintaan` (`id_permintaan`, `dari`, `departemen`, `catatan`, `status`, `tanggal`) VALUES
('PK-00008', 'Hendra', 'Finance', 'Jaringan LAN masalah di salah satu pc', 'Finished', '2018-02-19'),
('PK-00009', 'Karin', 'HR & GA', 'Printer masalah', 'Finished', '2018-02-19'),
('PK-00010', 'Karin', 'HR & GA', 'Monitor pc reny tidak menyala', 'Finished', '2018-02-19'),
('PK-00011', 'Luisito GM', 'IT', 'Install office laptop', 'Finished', '2018-02-20'),
('PK-00012', 'Gunadi M, SM operation', 'Operation', 'jaringan LAN masalah', 'Finished', '2018-02-20'),
('PK-00013', 'Teten ', 'Sales Edutainment', 'Installkan photoshop', 'Finished', '2018-02-20'),
('PK-00014', 'Andika spv ', 'Operation', 'CPU pc tidak bisa menyala', 'Finished', '2018-02-21'),
('PK-00015', 'mas rudi spv edu', 'Sales Edutainment', 'sambungkan laptop ke printer LAN', 'Finished', '2018-02-21'),
('PK-00016', 'fajri', 'Sales Edutainment', 'Isi tinta printer', 'Finished', '2018-02-24'),
('PK-00017', 'Rini', 'Production Facilities', 'jaringan lan bermasalah', 'Finished', '2018-02-27'),
('PK-00018', 'reny', 'HR & GA', 'hasil scan bermasalah', 'Finished', '2018-02-27'),
('PK-00019', 'rara', 'Sales Edutainment', 'ganti password pc', 'Finished', '2018-03-01'),
('PK-00020', 'wawan', 'Marketing Communication', 'koneksikan laptop pribadi ke printer edutainment', 'Finished', '2018-03-01'),
('PK-00021', 'tenri spv edu', 'Sales Edutainment', 'sharing folder', 'Finished', '2018-03-01'),
('PK-00022', 'rudi spv edu', 'Sales Edutainment', 'sharing folder ke admin rara', 'Finished', '2018-03-01'),
('PK-00023', 'rudi', 'Sales Edutainment', 'koneksikan ke printer rara edu', 'Finished', '2018-03-01'),
('PK-00024', 'Ayu (PA)', 'IT', 'Minta koneksi internet', 'Finished', '2018-03-02'),
('PK-00025', 'Arty', 'Sales Corporate', 'Tidak bisa print ke Rara', 'Finished', '2018-03-02'),
('PK-00026', 'Iwan Setiawan', 'Operation', 'PC Admin Operation bermasalah', 'Finished', '2018-03-02'),
('PK-00027', 'reny', 'HR & GA', 'pc sering restart', 'Finished', '2018-03-05'),
('PK-00028', 'rico', 'HR & GA', 'browser bermasalah', 'Finished', '2018-03-06'),
('PK-00029', 'Om kiki SM', 'Operation', 'Jaringan LAN bermasalah', 'Finished', '2018-03-06'),
('PK-00030', 'reny', 'HR & GA', 'akses internet terganggu', 'Finished', '2018-03-07'),
('PK-00031', 'Ital design grafis', 'Marketing Communication', 'RJ lan rusak', 'Finished', '2018-03-08'),
('PK-00032', 'Iwan S', 'Operation', 'minta akses jaringan lan', 'Finished', '2018-03-08'),
('PK-00033', 'Wawan', 'Marketing Communication', 'print via LAN', 'Finished', '2018-03-15'),
('PK-00034', 'wawan', 'Marketing Communication', 'print via lan pakai laptop pribadi', 'Finished', '2018-03-15'),
('PK-00035', 'Diah', 'Finance', 'PC hidup tapi tidak tampil dimonitor', 'Finished', '2018-03-15'),
('PK-00036', 'Leny', 'Operation', 'Hasil printing tidak bagus', 'Finished', '2018-03-16'),
('PK-00038', 'Mardino Santosa', 'IT', 'Switch di Magic Error (semua lampu kedap-kedip), tidak bisa konek', 'Finished', '2018-03-23'),
('PK-00039', 'Pak Asrun', 'Finance', 'Email tidak bisa terbuka', 'Finished', '2018-04-11'),
('PK-00040', 'Pak Naldo', 'Sales Edutainment', 'Tidak bisa ngeprint ke admin edu', 'Finished', '2018-04-10'),
('PK-00041', 'PA GM', 'IT', 'Tidak bisa akses internet', 'Finished', '2018-04-09'),
('PK-00042', 'eka ', 'Engineering', 'jaringan bermasalah', 'Finished', '2018-04-11'),
('PK-00043', 'Mardino Santosa', 'IT', 'Mesin FotoCopy Rusak, Tombolnya Nyungsep', 'Finished', '2018-05-09'),
('PK-00044', 'Mardino Santosa', 'IT', 'UPS di Yamaha Tidak bisa Hidup', 'Finished', '2018-05-13'),
('PK-00045', 'Fadly', 'Sales Corporate', 'Laptop Faldy bermasalah, repairing terus. ', 'On Progress', '2018-05-01'),
('PK-00046', 'Darwis', 'Food and Beverages', 'PC restart-restart', 'Finished', '2018-05-12'),
('PK-00047', 'fajri', 'IT', 'server di panel magic corner mati', 'Finished', '2018-06-25'),
('PK-00048', 'Mardino Santosa', 'IT', 'UPS DVR di CCTV rusak', 'Finished', '2018-07-05'),
('PK-00049', 'Mardino Santosa', 'Engineering', 'PC Admin Eka tidak mau Booting', 'Finished', '2018-07-05'),
('PK-00050', 'Hasni', 'Food and Beverages', 'jaringan pc terganggu/putus', 'Finished', '2018-08-01'),
('PK-00051', 'eka', 'Engineering', 'mouse ngadat', 'Finished', '2018-08-01'),
('PK-00052', 'Mardino Santosa', 'IT', 'Switch Cisco 2 dari bawah rusak, (untuk beberapa jalur office dan bank mega)', 'On Progress', '2018-08-01'),
('PK-00053', 'Mardino Santosa', 'Engineering', 'Komputer Bos Eng, tidak nyala', 'On Progress', '2018-08-15'),
('PK-00054', 'Mardino Santosa', 'Creative and Show', 'Komputer admin Atiek, tidak bisa nyala, ', 'Finished', '2018-08-19'),
('PK-00055', 'Mardino Santosa', 'Operation', 'Printer L200 bermasalah', 'On Progress', '2018-08-01'),
('PK-00056', 'Mardino Santosa', 'Operation', 'PC Interactive House, tidak bisa nyala', 'On Progress', '2018-08-19'),
('PK-00057', 'fajri', 'Production Facilities', 'Komputer audio tidak bisa booting', 'On Progress', '2018-09-19'),
('PK-00058', 'Pak Itho', 'Purchasing', 'Printer bermasalah', 'Finished', '2018-09-25'),
('PK-00059', 'fajri', 'Operation', 'jaringan edc  maingate gate 9 terputus', 'Finished', '2018-11-19'),
('PK-00060', 'Admin ops', 'Operation', 'Printer Canon iP1980 bermasalah tinta hitamnya', 'Finished', '2018-11-27'),
('PK-00061', 'Mardino Santosa', 'Finance', 'komputer diah tiba-tiba hang, ndak respon', 'Finished', '2018-12-07'),
('PK-00062', 'Darwis', 'Food and Beverages', 'Printer POS FnB studio mie bermasalah', 'Finished', '2019-01-17'),
('PK-00063', 'Diah', 'Finance', 'PC tidak bisa booting', 'Finished', '2019-02-25'),
('PK-00064', 'Iin', 'Creative and Show', 'PC tidak bisa booting', 'Finished', '2019-02-25'),
('PK-00065', 'eka', 'Engineering', 'Printer Canon IP1980 bermasalah', 'On Progress', '2019-04-03'),
('PK-00066', 'admin edu', 'Sales Edutainment', 'printer L360 tidak keluar tinta hitam', 'Finished', '2019-04-11'),
('PK-00067', 'hadrah', 'Operation', 'tinta merembes keluar printer', 'Finished', '2019-05-02'),
('PK-00068', 'Darwis', 'Food and Beverages', 'Jaringan Internet Mati', 'Finished', '2019-10-20'),
('PK-00070', 'Mardino Santosa', 'Food and Beverages', 'tidak bisa booting\r\n', 'On Progress', '2021-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_permintaan_ts`
--

CREATE TABLE `tb_permintaan_ts` (
  `id_permintaan` varchar(8) NOT NULL,
  `dari` varchar(200) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `status` enum('Waiting','On Progress','Finished') NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_permintaan_ts`
--

INSERT INTO `tb_permintaan_ts` (`id_permintaan`, `dari`, `departemen`, `catatan`, `status`, `tanggal`) VALUES
('PK-00001', 'fadli', 'Sales Corporate', 'Cek Finger', 'Finished', '2018-03-16'),
('PK-00002', 'Arif Hs', 'Operation', 'vt jelajah tidak terputar', 'Finished', '2018-03-17'),
('PK-00003', 'Muh. Yasin(ocan) ', 'Operation', 'Audio hasil sutingan bermasalah. ', 'Finished', '2018-03-30'),
('PK-00004', 'Syahrianti', 'Operation', 'Cam cctv mati', 'Finished', '2018-04-08'),
('PK-00005', 'Syahrianti', 'Operation', 'Monitor back song tidak conect', 'Finished', '2018-04-08'),
('PK-00006', 'Jessica Londa', 'Creative and Show', 'Record announce pengundian', 'Finished', '2018-04-09'),
('PK-00007', 'Jessica Londa', 'Creative and Show', 'Record Annouce pengundia\r\n', 'Finished', '2018-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_refill`
--

CREATE TABLE `tb_refill` (
  `id_refill` int(3) NOT NULL,
  `printer` varchar(50) NOT NULL,
  `departemen` varchar(25) NOT NULL,
  `refill_terakhir` date DEFAULT NULL,
  `oleh` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_refill`
--

INSERT INTO `tb_refill` (`id_refill`, `printer`, `departemen`, `refill_terakhir`, `oleh`) VALUES
(2, 'Epson L220', 'Creative and Show', '2019-02-28', 'fajri'),
(4, 'Canon IP1980', 'Food and Beverages', '2018-10-13', 'fajri'),
(6, 'Canon IP1980', 'Production Facilities', '2019-01-12', 'fajri'),
(7, 'Canon IP1980', 'Engineering', '2019-02-28', 'fajri'),
(8, 'Canon IP1980 & Epson L360', 'HR & GA', '2019-06-24', 'fajri'),
(9, 'Canon IP1980', 'Wardrobe', '2018-11-20', 'fajri'),
(10, 'Epson L220', 'Finance', '2019-04-03', 'fajri'),
(11, 'Epson L220', 'Purchasing', '2019-04-30', 'fajri'),
(12, 'Epson L360', 'Sales Edutainment', '2019-06-24', 'fajri'),
(13, 'Canon IP1980', 'Marketing Communication', '2021-08-27', 'Mardino Santosa'),
(14, 'Canon IP1980 / Canon MP198', 'Operation', '2019-06-24', 'fajri'),
(15, 'Epson L360 - Gudang', 'Finance', '2019-02-28', 'fajri');

-- --------------------------------------------------------

--
-- Table structure for table `tb_solusi`
--

CREATE TABLE `tb_solusi` (
  `id_solusi` varchar(8) NOT NULL,
  `tanggal` date NOT NULL,
  `solusi` text NOT NULL,
  `status` enum('Finished') NOT NULL,
  `oleh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_solusi`
--

INSERT INTO `tb_solusi` (`id_solusi`, `tanggal`, `solusi`, `status`, `oleh`) VALUES
('PK-00008', '2018-02-19', 'Pemasangan yg benar', 'Finished', 'user'),
('PK-00009', '2018-02-19', 'restart kemudian test print ulang.\r\ndone', 'Finished', 'fajri'),
('PK-00010', '2018-02-19', 'masalah ada pada switch on off yang sudah mulai bermasalah.\r\nDone', 'Finished', 'fajri'),
('PK-00011', '2018-02-20', 'Uninstalling office 2016, Installing office 2010', 'Finished', 'fajri'),
('PK-00012', '2018-02-20', 'Crimping ulang kabel LAN', 'Finished', 'fajri'),
('PK-00013', '2018-02-20', 'Diaktifkan pakai serial number. \r\nDone', 'Finished', 'fajri'),
('PK-00014', '2018-04-24', 'penggantian power supply', 'Finished', 'fajri'),
('PK-00015', '2018-02-21', 'IP pc yang dipakai sebelumnya oleh mas rudi dialihkan ke laptop pribadi karena pc tersebut tidak digunakan lagi (terganti oleh laptop) setelah itu dikoneksikan ke printer admin edu.', 'Finished', 'fajri'),
('PK-00016', '2018-02-24', 'isi tinta sampai indikator full', 'Finished', 'fajri'),
('PK-00017', '2018-02-27', 'setelah direstart plus lan tester hasilnya normal kembali', 'Finished', 'fajri'),
('PK-00018', '2018-02-27', 'restart scan', 'Finished', 'fajri'),
('PK-00019', '2018-03-01', 'ganti password lewat akun IT', 'Finished', 'fajri'),
('PK-00020', '2018-03-01', 'sharing printer edu lalu koneksikan laptop ke printer tersebut.', 'Finished', 'fajri'),
('PK-00021', '2018-03-01', ' map network drive ulang karena pc rara (admin edu)ganti password lalu restart', 'Finished', 'fajri'),
('PK-00022', '2018-03-01', 'map network lalu restart', 'Finished', 'fajri'),
('PK-00023', '2018-03-01', 'kabel lan di crimping ulang', 'Finished', 'fajri'),
('PK-00024', '2018-03-02', 'Pasang IPnya ex Kiki PA. 172.16.9.150', 'Finished', 'Mardino Santosa'),
('PK-00025', '2018-03-02', 'Koneksi ulang PC-nya Arty ke printer Rara', 'Finished', 'Mardino Santosa'),
('PK-00026', '2018-04-19', 'ganti power supply', 'Finished', 'fajri'),
('PK-00027', '2018-03-06', 'update antivirus, update browser serta penambahan memory card 1 keping (1 GB)', 'Finished', 'fajri'),
('PK-00028', '2018-03-06', 'setting default browser ', 'Finished', 'fajri'),
('PK-00029', '2018-03-06', 'Restart switch yang terhubung, diruangan pak farid', 'Finished', 'fajri'),
('PK-00030', '2018-03-07', 'restart switch', 'Finished', 'fajri'),
('PK-00031', '2018-03-08', 'Ganti dan Crimping RJ 45', 'Finished', 'fajri'),
('PK-00032', '2018-03-08', 'tarik kabel lan terus dikrimping ulang karena RJ rusak.', 'Finished', 'fajri'),
('PK-00033', '2018-03-15', 'lepas deepfreeze lalu koneksikan ke printer via lan', 'Finished', 'fajri'),
('PK-00034', '2018-03-15', 'install driver printer ke laptop terus koneksikan via LAN', 'Finished', 'fajri'),
('PK-00035', '2018-03-15', 'matikan cpu lalu lepas semua kabel yang terhubung ke cpu kecuali kabel power lalu cpu dinyalakan, setelah nyala baru  pasang semua kabel.', 'Finished', 'fajri'),
('PK-00036', '2018-06-03', 'done, ganti cartidge (sudah diambil di gudang)', 'Finished', 'Mardino Santosa'),
('PK-00038', '2023-03-10', 'done', 'Finished', 'Mardino Santosa'),
('PK-00039', '2018-04-11', 'Update browser mozilla firefox', 'Finished', 'fajri'),
('PK-00040', '2018-04-10', 'restart jaringan', 'Finished', 'fajri'),
('PK-00041', '2018-04-09', 'Pasang IP 172.16.9.242', 'Finished', 'fajri'),
('PK-00042', '2018-04-19', 'update system', 'Finished', 'fajri'),
('PK-00043', '2018-05-12', 'Sudah Bagus. Ganti saklar (switch) dengan yang baru, knob (tombol) dilem Korea + Lem Besi', 'Finished', 'Mardino Santosa'),
('PK-00044', '2018-07-05', 'Ganti ups dan baterai', 'Finished', 'Mardino Santosa'),
('PK-00046', '2018-05-15', 'ganti kipas cpu', 'Finished', 'Mardino Santosa'),
('PK-00047', '2018-06-28', 'ganti ups...done', 'Finished', 'fajri'),
('PK-00048', '2018-07-05', 'Ganti baterai', 'Finished', 'Mardino Santosa'),
('PK-00049', '2018-07-05', 'Ganti motherboard ex-Eng2 yang jadi backup, plus ganti Power Supply', 'Finished', 'Mardino Santosa'),
('PK-00050', '2018-08-01', 'crimping ulang kabel. \r\ndone', 'Finished', 'fajri'),
('PK-00051', '2018-08-01', 'Ganti mouse baru', 'Finished', 'fajri'),
('PK-00054', '2018-08-19', 'Ganti power supply, suruh admin buat MR Power Supply ke Gudang', 'Finished', 'Mardino Santosa'),
('PK-00058', '2018-09-25', 'reset printer l220.\r\nDone', 'Finished', 'fajri'),
('PK-00059', '2018-11-19', 'Ganti Rj45. Done', 'Finished', 'fajri'),
('PK-00060', '2018-11-27', 'Ganti cartridge hitam.\r\nDone', 'Finished', 'fajri'),
('PK-00061', '2018-12-09', 'ganti kipas cpu, ambil yang bekas motherboard lain', 'Finished', 'Mardino Santosa'),
('PK-00062', '2019-01-17', 'Ganti mesin printer dengan yang baru. \r\nDone', 'Finished', 'fajri'),
('PK-00063', '2019-04-03', 'Ganti ram\r\nDone', 'Finished', 'fajri'),
('PK-00064', '2019-02-28', 'Install ulang windows\r\nDone', 'Finished', 'fajri'),
('PK-00066', '2019-04-11', 'isi tinta hitam ke damper.\r\nDone', 'Finished', 'fajri'),
('PK-00067', '2019-05-02', 'bersihkan botol pembuangan tinta dan sisa tinta dalam printer.\r\nDone', 'Finished', 'fajri'),
('PK-00068', '2019-10-20', 'Ganti switch, ambil dari FnB 4', 'Finished', 'Mardino Santosa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_solusi_ts`
--

CREATE TABLE `tb_solusi_ts` (
  `id_solusi` varchar(8) NOT NULL,
  `tanggal` date NOT NULL,
  `solusi` text NOT NULL,
  `status` enum('Finished') NOT NULL,
  `oleh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_solusi_ts`
--

INSERT INTO `tb_solusi_ts` (`id_solusi`, `tanggal`, `solusi`, `status`, `oleh`) VALUES
('PK-00001', '2018-03-17', 'Memang lupa finger\r\n', 'Finished', 'fadli'),
('PK-00002', '2018-03-17', 'mengcopy file VT jelajah kedalam hardist Dvd jadi tidak menggunakan kaset Dvd, VT jelajah OK.', 'Finished', 'Muhammad Fadli'),
('PK-00003', '2018-04-06', 'Di betulkan semua colokan power PC &  colokan jek audio supaya tidak longgar', 'Finished', 'anoka'),
('PK-00004', '2018-04-08', 'Memasang kembali kabel adaptor y longgar dan merapikannya.', 'Finished', 'Muhammad Fadli'),
('PK-00005', '2018-04-08', 'Mengganti kabel output dgn menggunakan HDMI', 'Finished', 'Muhammad Fadli'),
('PK-00006', '2018-04-09', 'Melakukan record, mengedit hasil audio, dan melakukan annouce sesuai permintaan pada GR/ Event order', 'Finished', 'Muhammad Fadli'),
('PK-00007', '2018-04-09', 'melakukan Record, mengedit hasil audio, dan melakukan announce sesuai permintaan pada GR/ Event order.\r\n', 'Finished', 'anoka');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(2) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `pass_user` varchar(40) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `role` enum('it','ts') NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `pass_user`, `nama_lengkap`, `role`, `avatar`) VALUES
(1, 'dino', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'Mardino Santosa', 'it', './avatar/giantPresiden.jpg'),
(2, 'fajri', 'c50abf382228ef317ffe892e7c8a91ec', 'fajri', 'it', './avatar/avatar5.png'),
(3, 'ano', '6120ebabcd02e35082049723d85f6a08', 'Anoka', 'ts', './avatar/Ano_fix.jpg'),
(4, 'fadli', 'a8f5f167f44f4964e6c998dee827110c', 'Muhammad Fadli', 'ts', './avatar/avatar5.png'),
(5, 'adri', 'a8f5f167f44f4964e6c998dee827110c', 'adri', 'ts', './avatar/avatar5.png'),
(6, 'dinots', '0871b9905bd4d1375df3cdc92b7338dc', 'Mardino Santosa', 'ts', './avatar/user2-160x160.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tb_departemen`
--
ALTER TABLE `tb_departemen`
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `tb_identifikasi`
--
ALTER TABLE `tb_identifikasi`
  ADD PRIMARY KEY (`id_identifikasi`);

--
-- Indexes for table `tb_identifikasi_ts`
--
ALTER TABLE `tb_identifikasi_ts`
  ADD PRIMARY KEY (`id_identifikasi`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_permintaan`
--
ALTER TABLE `tb_permintaan`
  ADD PRIMARY KEY (`id_permintaan`);

--
-- Indexes for table `tb_permintaan_ts`
--
ALTER TABLE `tb_permintaan_ts`
  ADD PRIMARY KEY (`id_permintaan`);

--
-- Indexes for table `tb_refill`
--
ALTER TABLE `tb_refill`
  ADD PRIMARY KEY (`id_refill`);

--
-- Indexes for table `tb_solusi`
--
ALTER TABLE `tb_solusi`
  ADD PRIMARY KEY (`id_solusi`);

--
-- Indexes for table `tb_solusi_ts`
--
ALTER TABLE `tb_solusi_ts`
  ADD PRIMARY KEY (`id_solusi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_departemen`
--
ALTER TABLE `tb_departemen`
  MODIFY `id_departemen` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `tb_refill`
--
ALTER TABLE `tb_refill`
  MODIFY `id_refill` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
