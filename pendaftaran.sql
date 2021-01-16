-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2019 at 06:28 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berkas`
--

CREATE TABLE IF NOT EXISTS `tbl_berkas` (
  `kd_berkas` int(11) NOT NULL,
  `kd_pendaftaran` varchar(12) NOT NULL,
  `ijasah` text NOT NULL,
  `skhun` text NOT NULL,
  `kk` text NOT NULL,
  `kelengkapan` varchar(25) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_berkas`
--

INSERT INTO `tbl_berkas` (`kd_berkas`, `kd_pendaftaran`, `ijasah`, `skhun`, `kk`, `kelengkapan`, `keterangan`) VALUES
(6, '24-211-001', 'Ijazah-SMP-2017-001.jpg', 'skhun-1-638.jpg', 'kk.jpg', 'LENGKAP', ''),
(7, '24-211-002', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendaftaran`
--

CREATE TABLE IF NOT EXISTS `tbl_pendaftaran` (
  `kd_pendaftaran` varchar(15) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`kd_pendaftaran`, `nim`, `tanggal_pendaftaran`) VALUES
('24-211-001', '2019-01-001', '2019-03-12'),
('24-211-002', '2019-01-002', '2019-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seleksi`
--

CREATE TABLE IF NOT EXISTS `tbl_seleksi` (
  `kd_seleksi` int(11) NOT NULL,
  `kd_pendaftaran` varchar(12) NOT NULL,
  `nilai` int(11) NOT NULL,
  `hasil` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_seleksi`
--

INSERT INTO `tbl_seleksi` (`kd_seleksi`, `kd_pendaftaran`, `nilai`, `hasil`) VALUES
(17, '24-211-001', 80, 'DITERIMA'),
(18, '24-211-002', 65, 'TIDAK DITERIMA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE IF NOT EXISTS `tbl_siswa` (
  `nim` varchar(11) NOT NULL,
  `nisn` varchar(25) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(4) NOT NULL,
  `rw` varchar(4) NOT NULL,
  `kec` varchar(15) NOT NULL,
  `kab` varchar(15) NOT NULL,
  `tb` int(11) NOT NULL,
  `bb` int(11) NOT NULL,
  `asal_sekolah` varchar(25) NOT NULL,
  `no_shun` varchar(12) NOT NULL,
  `tanggal_shun` date NOT NULL,
  `jumlah_shun` double NOT NULL,
  `n_bindo` double NOT NULL,
  `n_binggris` double NOT NULL,
  `n_mtk` double NOT NULL,
  `n_ipa` double NOT NULL,
  `prestasi` text NOT NULL,
  `jurusan` varchar(12) NOT NULL,
  `foto` text NOT NULL,
  `id_rombel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nim`, `nisn`, `nama`, `gender`, `tanggal_lahir`, `tempat_lahir`, `agama`, `alamat`, `rt`, `rw`, `kec`, `kab`, `tb`, `bb`, `asal_sekolah`, `no_shun`, `tanggal_shun`, `jumlah_shun`, `n_bindo`, `n_binggris`, `n_mtk`, `n_ipa`, `prestasi`, `jurusan`, `foto`, `id_rombel`) VALUES
('2019-01-001', '12345678', 'ANANDA AYU NATASYA', 'P', '2002-01-01', 'KUDUS', 'islam', 'JLN. RAYA', '1', '1', 'BAE', 'KUDUS', 165, 56, 'ASAL SEKOLAH', '12.12.12', '2019-03-12', 80, 80, 80, 80, 80, 'PRESTASI AWAL', 'MM', '200806B00700881.jpg', 0),
('2019-01-002', '1', '1', 'L', '0001-01-01', '1', 'islam', '1', '1', '1', '1', '1', 1, 1, '1', '1', '0001-01-01', 1, 1, 1, 1, 11, '1', 'MM', 't3_25.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_level_user` varchar(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`) VALUES
(1, 'PETUGAS PENDAFTARAN', 'petugas', 'c4ca4238a0b923820dcc509a6f75849b', '1', 'petugas.jpg'),
(2, 'HAFIDZ MUZAKI', 'zaki', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'Angin.jpeg'),
(5, 'KEPALA SEKOLAH', 'kepsek', 'c4ca4238a0b923820dcc509a6f75849b', 'kepsek', 'kepsek.jpg'),
(14, 'ANANDA AYU NATASYA', '24-211-001', 'aa59cccf695d082c06f6eeee55a5a417', 'siswa', ''),
(15, '1', '24-211-002', '335fd7aa135ae37977c4eac3483bc38e', 'siswa', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wali`
--

CREATE TABLE IF NOT EXISTS `tbl_wali` (
  `kd_wali` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama_ayah` varchar(25) NOT NULL,
  `alamat_ayah` text NOT NULL,
  `no_telp_ayah` varchar(12) NOT NULL,
  `pekerjaan_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(25) NOT NULL,
  `alamat_ibu` text NOT NULL,
  `no_telp_ibu` varchar(12) NOT NULL,
  `pekerjaan_ibu` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wali`
--

INSERT INTO `tbl_wali` (`kd_wali`, `nim`, `nama_ayah`, `alamat_ayah`, `no_telp_ayah`, `pekerjaan_ayah`, `nama_ibu`, `alamat_ibu`, `no_telp_ibu`, `pekerjaan_ibu`) VALUES
(52, '2019-01-001', 'AYAH ANANDA', 'ALAMAT AYAH ANANDA', '0898989', 'PEKERJAAN AYAH ', 'IBU ANANDA', 'ALAMAT IBU ANANDA ', '08989787', 'PEKERJAAN IBU A'),
(53, '2019-01-002', '1', '1', '1', '1', '1', '1', '1', '11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_berkas`
--
ALTER TABLE `tbl_berkas`
  ADD PRIMARY KEY (`kd_berkas`);

--
-- Indexes for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`kd_pendaftaran`);

--
-- Indexes for table `tbl_seleksi`
--
ALTER TABLE `tbl_seleksi`
  ADD PRIMARY KEY (`kd_seleksi`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_wali`
--
ALTER TABLE `tbl_wali`
  ADD PRIMARY KEY (`kd_wali`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_berkas`
--
ALTER TABLE `tbl_berkas`
  MODIFY `kd_berkas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_seleksi`
--
ALTER TABLE `tbl_seleksi`
  MODIFY `kd_seleksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_wali`
--
ALTER TABLE `tbl_wali`
  MODIFY `kd_wali` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
