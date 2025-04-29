-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2025 at 04:14 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dw_ekspedisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_kecamatan`
--

CREATE TABLE `dim_kecamatan` (
  `KecamatanID` varchar(10) NOT NULL,
  `NamaKecamatan` varchar(100) NOT NULL,
  `Kota` varchar(100) NOT NULL,
  `Provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dim_kecamatan`
--

INSERT INTO `dim_kecamatan` (`KecamatanID`, `NamaKecamatan`, `Kota`, `Provinsi`) VALUES
('KE001', 'Cibiru', 'Bandung', 'Jawa Barat'),
('KE002', 'Coblong', 'Bandung', 'Jawa Barat'),
('KE003', 'Bekasi Barat', 'Bekasi', 'Jawa Barat'),
('KE004', 'Bekasi Timur', 'Bekasi', 'Jawa Barat'),
('KE005', 'Cibinong', 'Bogor', 'Jawa Barat'),
('KE006', 'Dramaga', 'Bogor', 'Jawa Barat'),
('KE007', 'Tembalang', 'Semarang', 'Jawa Tengah'),
('KE008', 'Candisari', 'Semarang', 'Jawa Tengah'),
('KE009', 'Banjarsari', 'Solo', 'Jawa Tengah'),
('KE010', 'Laweyan', 'Solo', 'Jawa Tengah'),
('KE011', 'Kotagede', 'Yogyakarta', 'Jawa Tengah'),
('KE012', 'Umbulharjo', 'Yogyakarta', 'Jawa Tengah'),
('KE013', 'Wonokromo', 'Surabaya', 'Jawa Timur'),
('KE014', 'Kenjeran', 'Surabaya', 'Jawa Timur'),
('KE015', 'Klojen', 'Malang', 'Jawa Timur'),
('KE016', 'Sukun', 'Malang', 'Jawa Timur'),
('KE017', 'Gambir', 'Jakarta Pusat', 'DKI Jakarta'),
('KE018', 'Tanah Abang', 'Jakarta Pusat', 'DKI Jakarta'),
('KE019', 'Karawaci', 'Tangerang', 'Banten'),
('KE020', 'Cipondoh', 'Tangerang', 'Banten');

-- --------------------------------------------------------

--
-- Table structure for table `dim_kurir`
--

CREATE TABLE `dim_kurir` (
  `KurirID` varchar(10) NOT NULL,
  `NamaKurir` varchar(100) NOT NULL,
  `JenisLayanan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dim_kurir`
--

INSERT INTO `dim_kurir` (`KurirID`, `NamaKurir`, `JenisLayanan`) VALUES
('K01', 'Andi', 'Motor'),
('K02', 'Budi', 'Mobil Van'),
('K03', 'Citra', 'Sepeda'),
('K04', 'Dewi', 'Motor'),
('K05', 'Eko', 'Mobil Box');

-- --------------------------------------------------------

--
-- Table structure for table `dim_metode_pembayaran`
--

CREATE TABLE `dim_metode_pembayaran` (
  `MetodePembayaranID` int NOT NULL,
  `NamaMetode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dim_metode_pembayaran`
--

INSERT INTO `dim_metode_pembayaran` (`MetodePembayaranID`, `NamaMetode`) VALUES
(1, 'Cash'),
(2, 'Transfer'),
(3, 'Credit');

-- --------------------------------------------------------

--
-- Table structure for table `dim_status_pembayaran`
--

CREATE TABLE `dim_status_pembayaran` (
  `StatusPembayaranID` varchar(10) NOT NULL,
  `KeteranganStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dim_status_pembayaran`
--

INSERT INTO `dim_status_pembayaran` (`StatusPembayaranID`, `KeteranganStatus`) VALUES
('SP1', 'Belum Lunas'),
('SP2', 'Lunas'),
('SP3', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `dim_status_pengiriman`
--

CREATE TABLE `dim_status_pengiriman` (
  `StatusPengirimanID` varchar(10) NOT NULL,
  `KeteranganStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dim_status_pengiriman`
--

INSERT INTO `dim_status_pengiriman` (`StatusPengirimanID`, `KeteranganStatus`) VALUES
('SG1', 'Delay'),
('SG2', 'Proses'),
('SG3', 'Dalam Perjalanan');

-- --------------------------------------------------------

--
-- Table structure for table `dim_waktu`
--

CREATE TABLE `dim_waktu` (
  `WaktuID` int NOT NULL,
  `Tanggal` date NOT NULL,
  `Hari` varchar(20) NOT NULL,
  `Bulan` varchar(20) NOT NULL,
  `Tahun` int NOT NULL,
  `Kuartal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dim_waktu`
--

INSERT INTO `dim_waktu` (`WaktuID`, `Tanggal`, `Hari`, `Bulan`, `Tahun`, `Kuartal`) VALUES
(1, '2025-03-01', 'Sabtu', 'Maret', 2025, 'Q1'),
(2, '2025-03-02', 'Minggu', 'Maret', 2025, 'Q1'),
(3, '2025-03-03', 'Senin', 'Maret', 2025, 'Q1'),
(4, '2025-03-04', 'Selasa', 'Maret', 2025, 'Q1'),
(5, '2025-03-05', 'Rabu', 'Maret', 2025, 'Q1'),
(6, '2025-03-06', 'Kamis', 'Maret', 2025, 'Q1'),
(7, '2025-03-07', 'Jumat', 'Maret', 2025, 'Q1'),
(8, '2025-03-08', 'Sabtu', 'Maret', 2025, 'Q1'),
(9, '2025-03-09', 'Minggu', 'Maret', 2025, 'Q1'),
(10, '2025-03-15', 'Sabtu', 'Maret', 2025, 'Q1'),
(11, '2025-03-16', 'Minggu', 'Maret', 2025, 'Q1'),
(12, '2025-03-17', 'Senin', 'Maret', 2025, 'Q1'),
(13, '2025-03-18', 'Selasa', 'Maret', 2025, 'Q1'),
(14, '2025-03-19', 'Rabu', 'Maret', 2025, 'Q1'),
(15, '2025-03-20', 'Kamis', 'Maret', 2025, 'Q1'),
(16, '2025-03-21', 'Jumat', 'Maret', 2025, 'Q1'),
(17, '2025-03-22', 'Sabtu', 'Maret', 2025, 'Q1'),
(18, '2025-03-23', 'Minggu', 'Maret', 2025, 'Q1'),
(19, '2025-03-24', 'Senin', 'Maret', 2025, 'Q1'),
(20, '2025-03-25', 'Selasa', 'Maret', 2025, 'Q1');

-- --------------------------------------------------------

--
-- Table structure for table `fakta_pembayaran`
--

CREATE TABLE `fakta_pembayaran` (
  `id_pembayaran` int NOT NULL,
  `id_waktu` int DEFAULT NULL,
  `id_pengiriman` int DEFAULT NULL,
  `id_status_pembayaran` varchar(10) DEFAULT NULL,
  `id_metode_pembayaran` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fakta_pembayaran`
--

INSERT INTO `fakta_pembayaran` (`id_pembayaran`, `id_waktu`, `id_pengiriman`, `id_status_pembayaran`, `id_metode_pembayaran`, `total`) VALUES
(1, 6, 2, 'SP3', 3, '100000.00'),
(2, 1, 1, 'SP1', 2, '245606.00');

-- --------------------------------------------------------

--
-- Table structure for table `fakta_pengiriman`
--

CREATE TABLE `fakta_pengiriman` (
  `id_pengiriman` int NOT NULL,
  `id_waktu` int DEFAULT NULL,
  `id_kurir` varchar(10) DEFAULT NULL,
  `id_kecamatan_asal` varchar(10) DEFAULT NULL,
  `id_kecamatan_tujuan` varchar(10) DEFAULT NULL,
  `id_status_pengiriman` varchar(10) DEFAULT NULL,
  `berat` decimal(10,2) DEFAULT NULL,
  `biaya` decimal(10,2) DEFAULT NULL,
  `durasi_pengiriman` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fakta_pengiriman`
--

INSERT INTO `fakta_pengiriman` (`id_pengiriman`, `id_waktu`, `id_kurir`, `id_kecamatan_asal`, `id_kecamatan_tujuan`, `id_status_pengiriman`, `berat`, `biaya`, `durasi_pengiriman`) VALUES
(1, 11, 'K05', 'KE005', 'KE005', 'SG3', NULL, NULL, 1),
(2, 17, 'K02', 'KE018', 'KE017', 'SG1', NULL, NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_kecamatan`
--
ALTER TABLE `dim_kecamatan`
  ADD PRIMARY KEY (`KecamatanID`);

--
-- Indexes for table `dim_kurir`
--
ALTER TABLE `dim_kurir`
  ADD PRIMARY KEY (`KurirID`);

--
-- Indexes for table `dim_metode_pembayaran`
--
ALTER TABLE `dim_metode_pembayaran`
  ADD PRIMARY KEY (`MetodePembayaranID`);

--
-- Indexes for table `dim_status_pembayaran`
--
ALTER TABLE `dim_status_pembayaran`
  ADD PRIMARY KEY (`StatusPembayaranID`);

--
-- Indexes for table `dim_status_pengiriman`
--
ALTER TABLE `dim_status_pengiriman`
  ADD PRIMARY KEY (`StatusPengirimanID`);

--
-- Indexes for table `dim_waktu`
--
ALTER TABLE `dim_waktu`
  ADD PRIMARY KEY (`WaktuID`);

--
-- Indexes for table `fakta_pembayaran`
--
ALTER TABLE `fakta_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_waktu` (`id_waktu`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_status_pembayaran` (`id_status_pembayaran`),
  ADD KEY `id_metode_pembayaran` (`id_metode_pembayaran`);

--
-- Indexes for table `fakta_pengiriman`
--
ALTER TABLE `fakta_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `id_waktu` (`id_waktu`),
  ADD KEY `id_kurir` (`id_kurir`),
  ADD KEY `id_kecamatan_asal` (`id_kecamatan_asal`),
  ADD KEY `id_kecamatan_tujuan` (`id_kecamatan_tujuan`),
  ADD KEY `id_status_pengiriman` (`id_status_pengiriman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_metode_pembayaran`
--
ALTER TABLE `dim_metode_pembayaran`
  MODIFY `MetodePembayaranID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dim_waktu`
--
ALTER TABLE `dim_waktu`
  MODIFY `WaktuID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fakta_pembayaran`
--
ALTER TABLE `fakta_pembayaran`
  MODIFY `id_pembayaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fakta_pengiriman`
--
ALTER TABLE `fakta_pengiriman`
  MODIFY `id_pengiriman` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fakta_pembayaran`
--
ALTER TABLE `fakta_pembayaran`
  ADD CONSTRAINT `fakta_pembayaran_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `dim_waktu` (`WaktuID`),
  ADD CONSTRAINT `fakta_pembayaran_ibfk_2` FOREIGN KEY (`id_pengiriman`) REFERENCES `fakta_pengiriman` (`id_pengiriman`),
  ADD CONSTRAINT `fakta_pembayaran_ibfk_3` FOREIGN KEY (`id_status_pembayaran`) REFERENCES `dim_status_pembayaran` (`StatusPembayaranID`),
  ADD CONSTRAINT `fakta_pembayaran_ibfk_4` FOREIGN KEY (`id_metode_pembayaran`) REFERENCES `dim_metode_pembayaran` (`MetodePembayaranID`);

--
-- Constraints for table `fakta_pengiriman`
--
ALTER TABLE `fakta_pengiriman`
  ADD CONSTRAINT `fakta_pengiriman_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `dim_waktu` (`WaktuID`),
  ADD CONSTRAINT `fakta_pengiriman_ibfk_2` FOREIGN KEY (`id_kurir`) REFERENCES `dim_kurir` (`KurirID`),
  ADD CONSTRAINT `fakta_pengiriman_ibfk_3` FOREIGN KEY (`id_kecamatan_asal`) REFERENCES `dim_kecamatan` (`KecamatanID`),
  ADD CONSTRAINT `fakta_pengiriman_ibfk_4` FOREIGN KEY (`id_kecamatan_tujuan`) REFERENCES `dim_kecamatan` (`KecamatanID`),
  ADD CONSTRAINT `fakta_pengiriman_ibfk_5` FOREIGN KEY (`id_status_pengiriman`) REFERENCES `dim_status_pengiriman` (`StatusPengirimanID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
