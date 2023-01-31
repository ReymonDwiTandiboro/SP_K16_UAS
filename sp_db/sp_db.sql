-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 05:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `pengguna` varchar(30) NOT NULL,
  `sandi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblaturan`
--

CREATE TABLE `tblaturan` (
  `kd_aturan` int(11) NOT NULL,
  `kd_gejala` varchar(7) NOT NULL,
  `kd_penyakit` varchar(7) NOT NULL,
  `nl_prob` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblaturan`
--

INSERT INTO `tblaturan` (`kd_aturan`, `kd_gejala`, `kd_penyakit`, `nl_prob`) VALUES
(1, 'G01', 'P01', '0.3'),
(2, 'G02', 'P01', '0.8'),
(3, 'G03', 'P01', '0.7'),
(4, 'G04', 'P01', '0.5'),
(5, 'G05', 'P02', '0.5'),
(6, 'G06', 'P02', '0.3'),
(7, 'G07', 'P02', '0.5'),
(8, 'G08', 'P02', '0.3'),
(9, 'G09', 'P02', '0.3'),
(10, 'G10', 'P03', '0.6'),
(11, 'G11', 'P03', '0.4'),
(12, 'G12', 'P03', '0.7'),
(13, 'G13', 'P03', '0.5'),
(14, 'G14', 'P03', '0.3');

-- --------------------------------------------------------

--
-- Table structure for table `tblbantu`
--

CREATE TABLE `tblbantu` (
  `id_pengunjung` int(11) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbantu_2`
--

CREATE TABLE `tblbantu_2` (
  `id_pengunjung` int(3) NOT NULL,
  `kd_penyakit` varchar(7) NOT NULL,
  `jml_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbldiagnosa`
--

CREATE TABLE `tbldiagnosa` (
  `id_pengunjung` varchar(7) NOT NULL,
  `kd_penyakit` varchar(7) NOT NULL,
  `persen` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblgejala`
--

CREATE TABLE `tblgejala` (
  `kd_gejala` varchar(7) NOT NULL,
  `nm_gejala` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblgejala`
--

INSERT INTO `tblgejala` (`kd_gejala`, `nm_gejala`) VALUES
('G01', 'HP tiba tiba mati padahal isi baterai masih ada'),
('G02', 'HP tidak penuh walaupun sudah diisi berjam jam'),
('G03', 'Penggunaan baterai boros'),
('G04', 'Tidak bisa dicarger'),
('G05', 'Data tiba tiba hilang'),
('G06', 'Tidak bisa diakses pada komputer atau laptop'),
('G07', 'Tidak dapat membuka gallery pada HP'),
('G08', 'HP bisa mengirim file tertentu saja'),
('G09', 'HP hanya bisa menerima file tertentu saja'),
('G10', 'Penekanan pada huruf menjadi acak'),
('G11', 'Tulisan bergaris atau berantakan'),
('G12', 'Sebagian tombol tidak berfungsi'),
('G13', 'Sebagian tombol sulitditekan'),
('G14', 'Tidak ada reaksi ketika ditekan');

-- --------------------------------------------------------

--
-- Table structure for table `tblpengunjung`
--

CREATE TABLE `tblpengunjung` (
  `id_pengunjung` int(7) NOT NULL,
  `nm_pengunjung` varchar(40) NOT NULL,
  `tgl_diagnosa` date NOT NULL,
  `gejala` text NOT NULL,
  `penyakit` varchar(60) NOT NULL,
  `nl_bayes` decimal(5,2) NOT NULL,
  `pengobatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpengunjung`
--

INSERT INTO `tblpengunjung` (`id_pengunjung`, `nm_pengunjung`, `tgl_diagnosa`, `gejala`, `penyakit`, `nl_bayes`, `pengobatan`) VALUES
(2, 'botak', '2023-01-29', 'HP tiba tiba mati padahal isi baterai masih ada, HP tidak penuh walaupun sudah diisi berjam jam, Penggunaan baterai boros, Tidak bisa dicarger', 'Baterai', '100.00', 'Ada kemungkinan batrai anda  mengalami bocor atau bengkak. Anda  mungkin dapat menggunakan  Powerbank untuk sementara waktu.'),
(3, 'botak2', '2023-01-29', 'HP tiba tiba mati padahal isi baterai masih ada, HP tidak penuh walaupun sudah diisi berjam jam, Data tiba tiba hilang, Tidak bisa diakses pada komputer atau laptop, Penekanan pada huruf menjadi acak, Tulisan bergaris atau berantakan', 'Baterai', '33.00', 'Ada kemungkinan batrai anda  mengalami bocor atau bengkak. Anda  mungkin dapat menggunakan  Powerbank untuk sementara waktu.'),
(4, 'bjbjhh', '2023-01-29', 'Data tiba tiba hilang, Tidak bisa diakses pada komputer atau laptop, Tidak dapat membuka gallery pada HP, HP bisa mengirim file tertentu saja, HP hanya bisa menerima file tertentu saja', 'Memory', '100.00', 'Anda bisa membersihkan kuningan  yang ada pada memory dengan  menggunakan penghapus hitam.Dan  segeralah menyalin data-data penting  pada memory anda yang bermasalah');

-- --------------------------------------------------------

--
-- Table structure for table `tblpenyakit`
--

CREATE TABLE `tblpenyakit` (
  `kd_penyakit` varchar(7) NOT NULL,
  `nm_penyakit` varchar(40) NOT NULL,
  `nl_penyakit` float NOT NULL,
  `pengobatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpenyakit`
--

INSERT INTO `tblpenyakit` (`kd_penyakit`, `nm_penyakit`, `nl_penyakit`, `pengobatan`) VALUES
('P01', 'Baterai', 0.939, 'Ada kemungkinan batrai anda  mengalami bocor atau bengkak. Anda  mungkin dapat menggunakan  Powerbank untuk sementara waktu.'),
('P02', 'Memory', 0.364, 'Anda bisa membersihkan kuningan  yang ada pada memory dengan  menggunakan penghapus hitam.Dan  segeralah menyalin data-data penting  pada memory anda yang bermasalah'),
('P03', 'Keypad', 0.292, 'Jika tombol home tidak berfungsi  maka gunakan aplikasi pihak ketiga  yang banyak terdapat di playstore Jika tombol power maka segera  bersihkan kesing anda yang  kemungkinan sangat berdebu.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaturan`
--
ALTER TABLE `tblaturan`
  ADD PRIMARY KEY (`kd_aturan`);

--
-- Indexes for table `tblgejala`
--
ALTER TABLE `tblgejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `tblpengunjung`
--
ALTER TABLE `tblpengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indexes for table `tblpenyakit`
--
ALTER TABLE `tblpenyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaturan`
--
ALTER TABLE `tblaturan`
  MODIFY `kd_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblpengunjung`
--
ALTER TABLE `tblpengunjung`
  MODIFY `id_pengunjung` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
