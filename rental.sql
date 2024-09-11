-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 05:53 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` int(11) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `nopol` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merk`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
(1, 'Honda', 'Supra', '2010', 'RI 1', 1250000, 'Tersedia'),
(2, 'Toyota', 'camry', '2010', 'RI 2 ', 500000, 'Tersedia'),
(3, 'hyundai', 'IONIQ', '2020', 'D 1 AA', 760000, 'Tersedia'),
(4, 'Honda', 'beat', '2019', 'D 9012 BA', 35000, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `nik`, `alamat`, `telp`, `email`) VALUES
(1, 'arib', '3273132611020002', 'Jl. jhghjghj, RT 09 RW 08, Kel. gjhgjh, Kec. hjhkjhh, hjjhkjhk', '123123123', 'gfdgfdgfdgmail'),
(2, 'sdfsdf', '343434343434', 'Jl. dfgdfdfg, RT 34 RW 34, Kel. sdfsdf, Kec. sdfsdf, sdfsdfsdf', '4556456456', 'dfgdfg@dfgdfg'),
(3, 'sdfdfsdf', '234234234', 'Jl. dfgdfg, RT 34 RW 546, Kel. dfggfdgd, Kec. fgdfgd, fgdfgdfg', '234234', 'dfsgdf@dfgdfg'),
(4, 'adasdasd', '23423423423', 'Jl. sdfsdf, RT 34 RW 23, Kel. sdsd, Kec. sdsdsd, sdsdsd', '234234', 'dsfsdf@sdfsdf'),
(5, 'adasdasd', '23423423423', 'Jl. sdfsdf, RT 34 RW 23, Kel. sdsd, Kec. sdsdsd, sdsdsd', '234234', 'dsfsdf@sdfsdf'),
(6, 'salma', '32731325443256', 'Jl. sdfsdf, RT 34 RW 23, Kel. sdfsdf, Kec. sdfsdfsdf, sdfsdfsdf', '454567657', 'sdfsdf@sdfsdf'),
(7, 'aku', '23231564534', 'Jl. sdfsdfsdf, RT 34 RW 21, Kel. dsfsdf, Kec. sdfsdfd, fsdfdf', '3456767', 'dsfsdf@sdfsdfsdf'),
(8, 'bagus', '327313244556643', 'Jl. sdfdsfsd, RT 34 RW 23, Kel. asdasd, Kec. asdasd, asdasd', '2134234', 'sdfsdf@sdfsdfsdf'),
(9, 'arib', '3273132611020002', 'Jl. dsfsdf, RT 23 RW 23, Kel. sdfsdfsdf, Kec. sdfsdfsdf, sdfsdfsdf', '085314956364', 'arib@gmail.com'),
(10, 'arib', '327313261102002', 'Jl. asdasdas, RT 21 RW 12, Kel. sdfsdfs, Kec. dfsdfsdfs, dfsdfdsf', '0853149563634', 'asdasdasd@asdasd'),
(11, 'arib', '3273132611020002', 'Jl. asdasda, RT 21 RW 11, Kel. asdasdasd, Kec. asdasdasd, asdasdads', '12313123', 'asdasda@asdasdasd'),
(12, 'arib', '3273132611020002', 'Jl. asdasdasd, RT 21 RW 12, Kel. asdasdasdasd, Kec. asdasdads, asdasdasd', '081903045973', 'asdadsasd@asdasd'),
(13, 'asdfsdfsdf', '234234234', 'Jl. sdfsdfsd, RT 21 RW 43, Kel. sdfsdfsdf, Kec. sdfsdfsdf, sdfsdfsdf', '234234234', 'sdfdsf@sdfsdf'),
(14, 'asdasdasdasd', '1231231231231', 'Jl. sdfsdf, RT 12 RW 343, Kel. asdasdasda, Kec. sdassdadsa, sdasdasdasd', '12312334234234', 'asdfasdfds@fsdfdsf'),
(15, 'asdasdasdasdasd', '234234234234', 'Jl. sdfsdf, RT 21 RW 23, Kel. sdfsdfsdf, Kec. sdfsdfsdf, sdfdsfsdf', '234234234', 'sdfsdfsdfs@dfsdfsf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `nopol` varchar(50) NOT NULL,
  `tgl_pinjaman` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(50) NOT NULL,
  `lama` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hak_akses` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `hak_akses`) VALUES
(1, 'arib', 'aribaja', '123123', 'Staff'),
(2, 'admin', 'admin', 'admin', 'Admin'),
(3, 'aribok', 'akuaku', '123123', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
