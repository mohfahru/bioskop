-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2018 at 06:51 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `ID_ACT` int(11) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(100) DEFAULT NULL,
  `DURASI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`ID_ACT`, `NAMA`, `DESKRIPSI`, `DURASI`) VALUES
(101, 'The Expendables', 'Film tentang sekelompok tentara bayaran menjalankan misi kekerasan', 130),
(102, 'Deadpool', 'anti-hero yang berawal dari pasukan khusus dan menjadi bahan percobaan', 106);

-- --------------------------------------------------------

--
-- Table structure for table `animasi`
--

CREATE TABLE `animasi` (
  `ID_ANIM` int(11) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(100) DEFAULT NULL,
  `DURASI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animasi`
--

INSERT INTO `animasi` (`ID_ANIM`, `NAMA`, `DESKRIPSI`, `DURASI`) VALUES
(201, 'The Smurfs', 'Kisah petualangan para smurfs di dunianya yang jauh dari dunia manusia', 103),
(202, 'Madagascar', 'Kisah  seekor zebra bernama manty, yang hidup di dalam kebun binatang bersama ales si singa, gloria ', 86);

-- --------------------------------------------------------

--
-- Table structure for table `horor`
--

CREATE TABLE `horor` (
  `ID_HOROR` int(11) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(100) DEFAULT NULL,
  `DURASI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `horor`
--

INSERT INTO `horor` (`ID_HOROR`, `NAMA`, `DESKRIPSI`, `DURASI`) VALUES
(301, 'The Conjuring', 'Kisah nyata kasus oleh pasangan suami istri paranormal sangata terkenal di Amerika', 112),
(302, 'Annabelle', 'Teror boneka yang kerasukan hantu wanita', 99);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `ID_JWD` int(11) NOT NULL,
  `ID_TH` int(11) DEFAULT NULL,
  `ID_ACT` int(11) DEFAULT NULL,
  `ID_ANIM` int(11) DEFAULT NULL,
  `ID_HOROR` int(11) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  `WAKTU` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`ID_JWD`, `ID_TH`, `ID_ACT`, `ID_ANIM`, `ID_HOROR`, `TANGGAL`, `WAKTU`) VALUES
(901, 401, NULL, NULL, NULL, '2018-07-03', '12:30:00'),
(902, NULL, NULL, NULL, 302, '2018-07-03', '12:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `ID_MAK` int(11) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `HARGA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`ID_MAK`, `NAMA`, `HARGA`) VALUES
(501, 'Kentang Goreng', 20000),
(502, 'Roti ', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `ID_MIN` int(11) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `HARGA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`ID_MIN`, `NAMA`, `HARGA`) VALUES
(601, 'Softdrink', 15000),
(602, 'Fruit Tea', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_makanminum`
--

CREATE TABLE `pembelian_makanminum` (
  `ID_PEMM` int(11) NOT NULL,
  `ID_MIN` int(11) DEFAULT NULL,
  `ID_MAK` int(11) DEFAULT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_makanminum`
--

INSERT INTO `pembelian_makanminum` (`ID_PEMM`, `ID_MIN`, `ID_MAK`, `NAMA`, `JUMLAH`, `TANGGAL`) VALUES
(701, 602, 501, 'Bagus', 2, '2018-07-03'),
(702, 601, 502, 'Rani', 2, '2018-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_tiket`
--

CREATE TABLE `pembelian_tiket` (
  `ID_PEMT` int(11) NOT NULL,
  `ID_TH` int(11) DEFAULT NULL,
  `ID_HOROR` int(11) DEFAULT NULL,
  `ID_ACT` int(11) DEFAULT NULL,
  `ID_ANIM` int(11) DEFAULT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_tiket`
--

INSERT INTO `pembelian_tiket` (`ID_PEMT`, `ID_TH`, `ID_HOROR`, `ID_ACT`, `ID_ANIM`, `NAMA`, `JUMLAH`, `TANGGAL`) VALUES
(801, 401, NULL, NULL, NULL, 'Bagus', 1, '2018-07-03'),
(802, NULL, 302, NULL, NULL, 'Rani', 2, '2018-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `thriller`
--

CREATE TABLE `thriller` (
  `ID_TH` int(11) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(100) DEFAULT NULL,
  `DURASI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thriller`
--

INSERT INTO `thriller` (`ID_TH`, `NAMA`, `DESKRIPSI`, `DURASI`) VALUES
(401, 'Geostrom', 'Seorang pria sebagai perancang satelit mencoba mnyelamatkan bumi akan tetapi malah sebalik nya mengh', 109),
(402, 'Train to Busan', 'Seorang bapak dengan anak perempuan nya menyelamatkan diri dari zombie', 118);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`ID_ACT`);

--
-- Indexes for table `animasi`
--
ALTER TABLE `animasi`
  ADD PRIMARY KEY (`ID_ANIM`);

--
-- Indexes for table `horor`
--
ALTER TABLE `horor`
  ADD PRIMARY KEY (`ID_HOROR`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`ID_JWD`),
  ADD KEY `FK_RELATIONSHIP_1` (`ID_ACT`),
  ADD KEY `FK_RELATIONSHIP_2` (`ID_HOROR`),
  ADD KEY `FK_RELATIONSHIP_3` (`ID_ANIM`),
  ADD KEY `FK_RELATIONSHIP_4` (`ID_TH`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`ID_MAK`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`ID_MIN`);

--
-- Indexes for table `pembelian_makanminum`
--
ALTER TABLE `pembelian_makanminum`
  ADD PRIMARY KEY (`ID_PEMM`),
  ADD KEY `FK_RELATIONSHIP_5` (`ID_MAK`),
  ADD KEY `FK_RELATIONSHIP_6` (`ID_MIN`);

--
-- Indexes for table `pembelian_tiket`
--
ALTER TABLE `pembelian_tiket`
  ADD PRIMARY KEY (`ID_PEMT`),
  ADD KEY `FK_RELATIONSHIP_10` (`ID_TH`),
  ADD KEY `FK_RELATIONSHIP_7` (`ID_ACT`),
  ADD KEY `FK_RELATIONSHIP_8` (`ID_HOROR`),
  ADD KEY `FK_RELATIONSHIP_9` (`ID_ANIM`);

--
-- Indexes for table `thriller`
--
ALTER TABLE `thriller`
  ADD PRIMARY KEY (`ID_TH`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_ACT`) REFERENCES `action` (`ID_ACT`),
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_HOROR`) REFERENCES `horor` (`ID_HOROR`),
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_ANIM`) REFERENCES `animasi` (`ID_ANIM`),
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_TH`) REFERENCES `thriller` (`ID_TH`);

--
-- Constraints for table `pembelian_makanminum`
--
ALTER TABLE `pembelian_makanminum`
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_MAK`) REFERENCES `makanan` (`ID_MAK`),
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_MIN`) REFERENCES `minuman` (`ID_MIN`);

--
-- Constraints for table `pembelian_tiket`
--
ALTER TABLE `pembelian_tiket`
  ADD CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`ID_TH`) REFERENCES `thriller` (`ID_TH`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_ACT`) REFERENCES `action` (`ID_ACT`),
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`ID_HOROR`) REFERENCES `horor` (`ID_HOROR`),
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_ANIM`) REFERENCES `animasi` (`ID_ANIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
