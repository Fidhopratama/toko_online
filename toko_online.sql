-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 23, 2023 at 12:37 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_brg`
--

CREATE TABLE `tb_brg` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_brg`
--

INSERT INTO `tb_brg` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'sepatu', 'sepatu merk vans', 'Pakaian Pria', 300000, 6, 'sepatu.jpg'),
(2, 'kamera', 'kamera canon eos 700d', 'elektronik', 5700000, 7, 'kamera.jpg'),
(3, 'Samsung Galaxy A20', 'Samsung Galaxy A20', 'Elektronik', 3400000, 27, 'hp.jpg'),
(4, 'Laptop Macbook', 'Laptop Asus ram 2gb', 'elektronik', 4700000, 34, 'laptop.jpg'),
(14, 'Baju Anak', 'Baju Anak Perempuan', 'Pakaian Anak-anak', 50000, 7, 'spotify51.jpeg'),
(15, 'Baju Anak', 'Baju Anak Laki-laki', 'Pakaian Anak-anak', 75000, 4, 'WhatsApp_Image_2023-10-29_at_16_18_10.jpeg'),
(16, 'Raket', 'Raket paling dewa', 'Peralatan Olahraga', 200000, 10, 'spotify21.jpeg'),
(18, 'Bola Basket', 'Siap DBL ', 'Peralatan Olahraga', 150000, 6, 'spotify71.jpeg'),
(19, 'Kemeja Wanita', 'Auto cakep dah pokonya', 'Pakaian Wanita', 75000, 4, 'spotify6.jpeg'),
(20, 'jam tangan louis vutton', 'auto hedon', 'Pakaian Pria', 150000000, 4, 'images.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Fidho Pratama', 'Jalanin Aja Dulu Ya Kan', '2023-11-15 12:33:13', '2023-11-16 12:33:13'),
(2, 'fidhoo gtg bgt', 'jalanin aja dulu ya kan', '2023-11-15 12:41:51', '2023-11-16 12:41:51'),
(3, 'fidhoo', 'Jalan', '2023-11-16 07:49:45', '2023-11-17 07:49:45'),
(4, 'fidhoo gtg bgt', 'Jalan-jalan3', '2023-11-16 11:19:03', '2023-11-17 11:19:03'),
(5, 'fidhoo', 'jalanin aja dulu', '2023-11-16 11:19:53', '2023-11-17 11:19:53'),
(6, 'Fidho gtg bgt', 'jalanin aja dulu ya kan', '2023-11-17 07:39:58', '2023-11-18 07:39:58'),
(7, 'fidhoo', 'Jalan-jalan3', '2023-11-17 07:40:59', '2023-11-18 07:40:59'),
(8, 'fidhoo', 'Jalan-jalan3', '2023-11-22 06:38:51', '2023-11-23 06:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'kamera', 2, 5700000, ''),
(2, 1, 1, 'sepatu', 1, 300000, ''),
(3, 1, 10, 'Hoodie', 1, 200000, ''),
(4, 1, 4, 'Laptop Macbook', 1, 4700000, ''),
(5, 1, 8, 'Kucing Oyen', 1, 999999, ''),
(6, 1, 3, 'Samsung Galaxy A20', 1, 3400000, ''),
(7, 2, 3, 'Samsung Galaxy A20', 1, 3400000, ''),
(8, 2, 2, 'kamera', 1, 5700000, ''),
(9, 2, 7, 'Kemeja', 1, 200000, ''),
(10, 3, 1, 'sepatu', 1, 300000, ''),
(11, 3, 2, 'kamera', 1, 5700000, ''),
(12, 3, 11, 'Hoodie', 2, 200000, ''),
(13, 3, 3, 'Samsung Galaxy A20', 1, 3400000, ''),
(14, 4, 1, 'sepatu', 1, 300000, ''),
(15, 5, 1, 'sepatu', 1, 300000, ''),
(16, 5, 3, 'Samsung Galaxy A20', 2, 3400000, ''),
(17, 6, 1, 'sepatu', 2, 300000, ''),
(18, 6, 2, 'kamera', 1, 5700000, ''),
(19, 6, 15, 'Baju Anak', 1, 75000, ''),
(20, 6, 3, 'Samsung Galaxy A20', 1, 3400000, ''),
(21, 6, 4, 'Laptop Macbook', 1, 4700000, ''),
(22, 6, 18, 'Bola Basket', 1, 150000, ''),
(23, 7, 16, 'Raket', 4, 200000, ''),
(24, 8, 2, 'kamera', 1, 5700000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` BEFORE INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_brg SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'fidhoo', 'fidhogtg', 'abc', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_brg`
--
ALTER TABLE `tb_brg`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_brg`
--
ALTER TABLE `tb_brg`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
