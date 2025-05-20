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
-- Database: `ekspedisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `ID` varchar(5) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `KotaID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`ID`, `Nama`, `KotaID`) VALUES
('KE001', 'Cibiru', 'KO001'),
('KE002', 'Coblong', 'KO001'),
('KE003', 'Bekasi Barat', 'KO002'),
('KE004', 'Bekasi Timur', 'KO002'),
('KE005', 'Cibinong', 'KO003'),
('KE006', 'Dramaga', 'KO003'),
('KE007', 'Tembalang', 'KO004'),
('KE008', 'Candisari', 'KO004'),
('KE009', 'Banjarsari', 'KO005'),
('KE010', 'Laweyan', 'KO005'),
('KE011', 'Kotagede', 'KO006'),
('KE012', 'Umbulharjo', 'KO006'),
('KE013', 'Wonokromo', 'KO007'),
('KE014', 'Kenjeran', 'KO007'),
('KE015', 'Klojen', 'KO008'),
('KE016', 'Sukun', 'KO008'),
('KE017', 'Gambir', 'KO009'),
('KE018', 'Tanah Abang', 'KO009'),
('KE019', 'Karawaci', 'KO010'),
('KE020', 'Cipondoh', 'KO010');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `ID` varchar(5) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `ProvinsiID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`ID`, `Nama`, `ProvinsiID`) VALUES
('KO001', 'Bandung', 'P0001'),
('KO002', 'Bekasi', 'P0001'),
('KO003', 'Bogor', 'P0001'),
('KO004', 'Semarang', 'P0002'),
('KO005', 'Solo', 'P0002'),
('KO006', 'Yogyakarta', 'P0002'),
('KO007', 'Surabaya', 'P0003'),
('KO008', 'Malang', 'P0003'),
('KO009', 'Jakarta Pusat', 'P0004'),
('KO010', 'Tangerang', 'P0005');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `ID` varchar(3) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `TipeKendaraan` varchar(50) DEFAULT NULL,
  `NoHP` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`ID`, `Nama`, `TipeKendaraan`, `NoHP`) VALUES
('K01', 'Andi', 'Motor', '081234567890'),
('K02', 'Budi', 'Mobil Van', '082345678901'),
('K03', 'Citra', 'Sepeda', '083456789012'),
('K04', 'Dewi', 'Motor', '084567890123'),
('K05', 'Eko', 'Mobil Box', '085678901234');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `ID` int NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `StatusPembayaranID` varchar(3) DEFAULT NULL,
  `TipePembayaranID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`ID`, `Total`, `StatusPembayaranID`, `TipePembayaranID`) VALUES
(1, '50000.00', 'SP2', 1),
(2, '75000.00', 'SP2', 2),
(3, '100000.00', 'SP2', 3),
(4, '120000.00', 'SP1', 2),
(5, '25000.00', 'SP3', 1),
(6, '300000.00', 'SP2', 3),
(7, '40000.00', 'SP1', 1),
(8, '85000.00', 'SP3', 2),
(9, '90000.00', 'SP2', 3),
(10, '110000.00', 'SP1', 1),
(11, '70000.00', 'SP3', 2),
(12, '500000.00', 'SP2', 3),
(13, '65000.00', 'SP1', 1),
(14, '75000.00', 'SP3', 2),
(15, '130000.00', 'SP2', 3),
(16, '200000.00', 'SP1', 1),
(17, '350000.00', 'SP3', 2),
(18, '95000.00', 'SP2', 3),
(19, '45000.00', 'SP1', 1),
(20, '150000.00', 'SP3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `ID` int NOT NULL,
  `NamaPelanggan` varchar(100) DEFAULT NULL,
  `AlamatAsal` varchar(100) DEFAULT NULL,
  `AlamatTujuan` varchar(100) DEFAULT NULL,
  `KecamatanAsalID` varchar(5) DEFAULT NULL,
  `KecamatanTujuanID` varchar(5) DEFAULT NULL,
  `Berat` decimal(10,2) DEFAULT NULL,
  `TanggalPengiriman` date DEFAULT NULL,
  `TanggalSampaiPerkiraan` date DEFAULT NULL,
  `TanggalSampaiAktual` date DEFAULT NULL,
  `KurirID` varchar(3) DEFAULT NULL,
  `StatusPengirimanID` varchar(3) DEFAULT NULL,
  `PembayaranID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`ID`, `NamaPelanggan`, `AlamatAsal`, `AlamatTujuan`, `KecamatanAsalID`, `KecamatanTujuanID`, `Berat`, `TanggalPengiriman`, `TanggalSampaiPerkiraan`, `TanggalSampaiAktual`, `KurirID`, `StatusPengirimanID`, `PembayaranID`) VALUES
(1, 'Ali', 'Jl. Merdeka 1', 'Jl. Sudirman 5', 'KE001', 'KE002', '2.50', '2025-03-15', '2025-03-18', '2025-03-18', 'K01', 'SG2', 1),
(2, 'Budi', 'Jl. Ahmad Yani 10', 'Jl. Diponegoro 15', 'KE003', 'KE004', '1.20', '2025-03-16', '2025-03-19', '2025-03-19', 'K02', 'SG3', 2),
(3, 'Citra', 'Jl. Imam Bonjol 7', 'Jl. Kartini 9', 'KE005', 'KE006', '3.00', '2025-03-17', '2025-03-21', '2025-03-20', 'K03', 'SG1', 3),
(4, 'Dewi', 'Jl. Siliwangi 4', 'Jl. Hasanudin 8', 'KE007', 'KE008', '2.00', '2025-03-18', '2025-03-22', '2025-03-22', 'K04', 'SG2', 4),
(5, 'Eko', 'Jl. Gatot Subroto 12', 'Jl. RA Kartini 14', 'KE009', 'KE010', '5.50', '2025-03-19', '2025-03-24', '2025-03-23', 'K05', 'SG3', 5),
(6, 'Fajar', 'Jl. Antasari 20', 'Jl. Gajah Mada 3', 'KE011', 'KE012', '1.80', '2025-03-20', '2025-03-25', '2025-03-24', 'K01', 'SG1', 1),
(7, 'Ahmad Fauzi', 'Jl. Merdeka No.10', 'Jl. Diponegoro No.15', 'KE001', 'KE002', '2.50', '2025-03-01', '2025-03-03', '2025-03-03', 'K01', 'SG2', 1),
(8, 'Budi Santoso', 'Jl. Gatot Subroto No.20', 'Jl. Sudirman No.30', 'KE003', 'KE004', '5.00', '2025-03-02', '2025-03-05', '2025-03-04', 'K02', 'SG3', 2),
(9, 'Citra Dewi', 'Jl. Ahmad Yani No.5', 'Jl. Thamrin No.25', 'KE005', 'KE006', '1.80', '2025-03-03', '2025-03-06', '2025-03-06', 'K03', 'SG1', 3),
(10, 'Dedi Saputra', 'Jl. Dipatiukur No.12', 'Jl. Asia Afrika No.40', 'KE007', 'KE008', '3.20', '2025-03-04', '2025-03-07', '2025-03-07', 'K04', 'SG2', 4),
(11, 'Eka Fitriani', 'Jl. Braga No.8', 'Jl. Kopo No.50', 'KE009', 'KE010', '4.00', '2025-03-05', '2025-03-09', '2025-03-08', 'K05', 'SG3', 5);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `ID` varchar(5) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`ID`, `Nama`) VALUES
('P0001', 'Jawa Barat'),
('P0002', 'Jawa Tengah'),
('P0003', 'Jawa Timur'),
('P0004', 'DKI Jakarta'),
('P0005', 'Banten');

-- --------------------------------------------------------

--
-- Table structure for table `statuspembayaran`
--

CREATE TABLE `statuspembayaran` (
  `ID` varchar(3) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `statuspembayaran`
--

INSERT INTO `statuspembayaran` (`ID`, `Nama`) VALUES
('SP1', 'Belum Lunas'),
('SP2', 'Lunas'),
('SP3', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `statuspengiriman`
--

CREATE TABLE `statuspengiriman` (
  `ID` varchar(3) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `statuspengiriman`
--

INSERT INTO `statuspengiriman` (`ID`, `Nama`) VALUES
('SG1', 'Delay'),
('SG2', 'Proses'),
('SG3', 'Dalam Perjalanan');

-- --------------------------------------------------------

--
-- Table structure for table `tipepembayaran`
--

CREATE TABLE `tipepembayaran` (
  `ID` int NOT NULL,
  `Nama` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tipepembayaran`
--

INSERT INTO `tipepembayaran` (`ID`, `Nama`) VALUES
(1, 'Cash'),
(2, 'Transfer'),
(3, 'Debit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KotaID` (`KotaID`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProvinsiID` (`ProvinsiID`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `StatusPembayaranID` (`StatusPembayaranID`),
  ADD KEY `TipePembayaranID` (`TipePembayaranID`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KecamatanAsalID` (`KecamatanAsalID`),
  ADD KEY `KecamatanTujuanID` (`KecamatanTujuanID`),
  ADD KEY `KurirID` (`KurirID`),
  ADD KEY `StatusPengirimanID` (`StatusPengirimanID`),
  ADD KEY `PembayaranID` (`PembayaranID`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `statuspembayaran`
--
ALTER TABLE `statuspembayaran`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `statuspengiriman`
--
ALTER TABLE `statuspengiriman`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tipepembayaran`
--
ALTER TABLE `tipepembayaran`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`KotaID`) REFERENCES `kota` (`ID`);

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`ProvinsiID`) REFERENCES `provinsi` (`ID`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`StatusPembayaranID`) REFERENCES `statuspembayaran` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`TipePembayaranID`) REFERENCES `tipepembayaran` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`KecamatanAsalID`) REFERENCES `kecamatan` (`ID`),
  ADD CONSTRAINT `pengiriman_ibfk_2` FOREIGN KEY (`KecamatanTujuanID`) REFERENCES `kecamatan` (`ID`),
  ADD CONSTRAINT `pengiriman_ibfk_3` FOREIGN KEY (`KurirID`) REFERENCES `kurir` (`ID`),
  ADD CONSTRAINT `pengiriman_ibfk_4` FOREIGN KEY (`StatusPengirimanID`) REFERENCES `statuspengiriman` (`ID`),
  ADD CONSTRAINT `pengiriman_ibfk_5` FOREIGN KEY (`PembayaranID`) REFERENCES `pembayaran` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
