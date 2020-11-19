-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 06:49 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_admin` int(4) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `hp_admin` int(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_lengkap`, `username`, `hp_admin`, `password`) VALUES
(1, 'ditta', 'dittadrdr', 2147483647, 'ditta');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE IF NOT EXISTS `materi` (
`id_materi` int(10) NOT NULL,
  `nama_materi` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_materi` varchar(100) NOT NULL,
  `aksi` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `nama_materi`, `harga`, `deskripsi`, `foto_materi`, `aksi`) VALUES
(1, 'Android Fundamental', 500000, '          	          	          	          	                    Android untuk pemula\r\n                    ', 'CollageMaker_20201114_135631707.jpg', ''),
(2, 'Data Fundamental', 200000, '          	          	          	          Data untuk pemula\r\n                    ', 'CollageMaker_20201114_135351346.jpg', ''),
(3, 'Web Fundamental', 400000, '          	          	          	          Web untuk pemula\r\n                    ', 'belajar_pemrograman_web_untuk_pemula_logo_090320163400.jpg', ''),
(4, 'Android Beginner', 500000, '          	          ', 'belajar_membuat_aplikasi_android_untuk_pemula_logo_071119140631.png', ''),
(5, 'Data Beginner', 200000, '          	          ', 'CollageMaker_20201114_142031501.jpg', ''),
(6, 'Web Beginner', 400000, '          	          ', 'belajar_dasar_pemrograman_web_logo_071119140439.png', ''),
(7, 'Android Expert', 600000, '          	          ', 'kotlin_android_developer_expert_logo_071119140645.png', ''),
(8, 'Data Expert', 300000, '          	          	          	          	          	                                                  ', 'CollageMaker_20201114_151224230.jpg', ''),
(9, 'Web Expert', 500000, '          	          ', 'belajar_pemrograman_web_untuk_pemula_logo_090320163400.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
`id_pembelian` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `materi` varchar(100) NOT NULL,
  `tanggal_pembelian` varchar(100) NOT NULL,
  `total_pembelian` varchar(100) NOT NULL,
  `status_pembelian` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_user`, `nama_user`, `materi`, `tanggal_pembelian`, `total_pembelian`, `status_pembelian`) VALUES
(1, 1, 'Shienna Cameron', 'Android Fundamental', '10-11-2020', '500000', 'Lunas\r\n'),
(2, 2, 'Adrian Pasha', 'Web Fundamental', '10-11-2020', '400000', 'Lunas\r\n'),
(3, 5, 'Maulana Mauttaqin', 'Android Fundamental', '19-11-2020', '500000', 'Lunas\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_materi`
--

CREATE TABLE IF NOT EXISTS `pembelian_materi` (
`id_pembelian_materi` int(10) NOT NULL,
  `id_pembelian` int(10) NOT NULL,
  `id_materi` int(10) NOT NULL,
  `nama_materi` varchar(100) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_pembelian` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_materi`
--

INSERT INTO `pembelian_materi` (`id_pembelian_materi`, `id_pembelian`, `id_materi`, `nama_materi`, `jumlah`, `harga`, `total_pembelian`) VALUES
(1, 1, 1, 'Android Fundamental', 1, 500000, 500000),
(2, 2, 3, 'Web Fundamental', 1, 400000, 400000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(10) NOT NULL,
  `nama_user` text NOT NULL,
  `umur_user` int(4) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password_user` varchar(10) NOT NULL,
  `telepon_user` int(20) NOT NULL,
  `alamat_user` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `umur_user`, `email_user`, `password_user`, `telepon_user`, `alamat_user`) VALUES
(1, 'Shienna Cameron', 17, 'Shiennacameron@gmail.com', 'shienna12', 899911100, ''),
(2, 'Adrian Pasha', 22, 'Adrianpasha@gmail.com', 'adrian', 2147483647, ''),
(3, 'Tifanny Luisha', 18, 'Tiffanysasha@gmail.com', 'sasha12', 12345678, ''),
(4, 'Zayn Malik', 25, 'Zaynmalik@yahoo.com', 'zayn12', 12358605, ''),
(5, 'Maulana Mauttaqin', 20, 'micromaulana@gmail.com', 'maulana123', 2147483647, 'Depok Jawa Barat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
 ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
 ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_materi`
--
ALTER TABLE `pembelian_materi`
 ADD PRIMARY KEY (`id_pembelian_materi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
MODIFY `id_materi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
MODIFY `id_pembelian` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pembelian_materi`
--
ALTER TABLE `pembelian_materi`
MODIFY `id_pembelian_materi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
