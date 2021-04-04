-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2018 pada 04.03
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sumberalam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus`
--

CREATE TABLE `bus` (
  `id_bus` int(20) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `id_berangkat` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bus`
--

INSERT INTO `bus` (`id_bus`, `kelas`, `harga`, `id_berangkat`) VALUES
(1, 'Ekonomi', '65000', 1),
(2, 'Patas Non AC', '100000', 2),
(3, 'Ekonomi AC', '85000', 0),
(4, 'AC Non Toilet', '100000', 0),
(5, 'AC Toilet', '120000', 0),
(6, 'Ekonomi', '85000', 0),
(7, 'Patas Non AC', '125000', 0),
(8, 'Ekonomi AC', '100000', 0),
(9, 'AC Non Toilet', '135000', 0),
(10, 'AC Toilet', '160000', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keberangkatan`
--

CREATE TABLE `keberangkatan` (
  `id_berangkat` int(20) NOT NULL,
  `tujuan` varchar(40) NOT NULL,
  `jadwal` varchar(10) NOT NULL,
  `rute` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keberangkatan`
--

INSERT INTO `keberangkatan` (`id_berangkat`, `tujuan`, `jadwal`, `rute`) VALUES
(1, 'Purwokerto', '16:00 WIB', 'Bekasi - Purwokerto'),
(2, 'Purwokerto', '17:00 WIB', 'Bekasi - Purwokerto'),
(8, 'Purwokerto', '18:30 WIB', 'Bekasi - Purwokerto'),
(9, 'Purwokerto', '19:00 WIB', 'Bekasi - Purwokerto'),
(10, 'Purwokerto', '19:30 WIB', 'Bekasi - Purwokerto'),
(11, 'Yogyakarta', '20:00 WIB', 'Bekasi - Gombong - Kebumen - Kutoarjo - Purworejo - Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi`
--

CREATE TABLE `kursi` (
  `id` int(10) NOT NULL,
  `id_bus` int(10) NOT NULL,
  `kode_kursi` varchar(20) NOT NULL,
  `urutan` int(20) NOT NULL,
  `id_pesan` int(25) NOT NULL,
  `tgl_berangkat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kursi`
--

INSERT INTO `kursi` (`id`, `id_bus`, `kode_kursi`, `urutan`, `id_pesan`, `tgl_berangkat`) VALUES
(1, 1, '01A', 1, 41, '2017-08-20'),
(2, 1, '01B', 2, 41, '2017-08-20'),
(3, 1, '01C', 3, 0, '2017-08-20'),
(4, 1, '01D', 4, 0, '2017-08-20'),
(5, 1, '02A', 5, 0, '2017-08-20'),
(6, 1, '02B', 6, 0, '2017-08-20'),
(7, 1, '02C', 7, 0, '2017-08-20'),
(8, 1, '02D', 8, 0, '2017-08-20'),
(9, 1, '03A', 9, 0, '2017-08-20'),
(10, 1, '03B', 10, 0, '2017-08-20'),
(11, 1, '03C', 11, 0, '2017-08-20'),
(12, 1, '03D', 12, 0, '2017-08-20'),
(13, 1, '04A', 13, 0, '2017-08-20'),
(14, 1, '04B', 14, 0, '2017-08-20'),
(15, 1, '04C', 15, 0, '2017-08-20'),
(16, 1, '04D', 16, 0, '2017-08-20'),
(17, 1, '05A', 17, 0, '2017-08-20'),
(18, 1, '05B', 18, 0, '2017-08-20'),
(19, 1, '05C', 19, 0, '2017-08-20'),
(20, 1, '05D', 20, 0, '2017-08-20'),
(21, 1, '06A', 21, 0, '2017-08-20'),
(22, 1, '06B', 22, 0, '2017-08-20'),
(23, 1, '06C', 23, 0, '2017-08-20'),
(24, 1, '06D', 24, 0, '2017-08-20'),
(25, 1, '07A', 25, 0, '2017-08-20'),
(26, 1, '07B', 26, 0, '2017-08-20'),
(27, 1, '07C', 27, 0, '2017-08-20'),
(28, 1, '07D', 28, 0, '2017-08-20'),
(29, 1, '08A', 29, 0, '2017-08-20'),
(30, 1, '08B', 30, 0, '2017-08-20'),
(31, 1, '08C', 31, 0, '2017-08-20'),
(32, 1, '08D', 32, 28, '2017-08-20'),
(33, 1, '09A', 33, 0, '2017-08-20'),
(34, 1, '09B', 34, 0, '2017-08-20'),
(35, 1, '09C', 35, 0, '2017-08-20'),
(36, 1, '09D', 36, 0, '2017-08-20'),
(37, 1, '10A', 37, 0, '2017-08-20'),
(38, 1, '10B', 38, 0, '2017-08-20'),
(39, 1, '10C', 39, 0, '2017-08-20'),
(40, 1, '10D', 40, 0, '2017-08-20'),
(41, 1, '11C', 43, 0, '2017-08-20'),
(42, 1, '11D', 44, 0, '2017-08-20'),
(43, 1, '12A', 45, 0, '2017-08-20'),
(44, 1, '12B', 46, 0, '2017-08-20'),
(45, 1, '12C', 47, 0, '2017-08-20'),
(46, 1, '12D', 48, 0, '2017-08-20'),
(47, 2, '01A', 1, 41, '2017-08-30'),
(48, 2, '02A', 2, 0, '2017-08-30'),
(49, 2, '03A', 3, 0, '2017-08-30'),
(50, 2, '04A', 4, 0, '2017-08-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi_pesanan`
--

CREATE TABLE `kursi_pesanan` (
  `id_kursi` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `kode_kursi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kursi_pesanan`
--

INSERT INTO `kursi_pesanan` (`id_kursi`, `id_pesan`, `kode_kursi`) VALUES
(1, 27, '3'),
(2, 27, '4'),
(3, 27, '8'),
(4, 27, '8'),
(5, 28, '8'),
(6, 28, '8'),
(7, 28, '8'),
(8, 28, '8'),
(9, 29, '12'),
(10, 29, '12'),
(11, 30, '3'),
(12, 30, '3'),
(13, 30, '4'),
(14, 30, '4'),
(17, 33, '4'),
(18, 33, '7'),
(19, 33, '2'),
(20, 34, '5'),
(21, 34, '5'),
(22, 34, '5'),
(23, 35, '06A'),
(26, 36, '01A'),
(27, 36, '01B'),
(28, 37, '04C'),
(29, 37, '07C'),
(30, 41, '01A'),
(31, 41, '01B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(10) NOT NULL,
  `bank` varchar(10) NOT NULL,
  `nmr_rekening` varchar(30) NOT NULL,
  `atas_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesan` int(20) NOT NULL,
  `id_bus` int(20) NOT NULL,
  `id_berangkat` int(20) NOT NULL,
  `nik` int(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_berangkat` date NOT NULL,
  `qty` int(20) NOT NULL,
  `total` varchar(30) NOT NULL,
  `fixed` int(2) NOT NULL,
  `invoice` int(20) NOT NULL,
  `konfirm` int(11) NOT NULL,
  `respons` varchar(50) NOT NULL,
  `pembayaran` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesan`, `id_bus`, `id_berangkat`, `nik`, `nama`, `alamat`, `tgl_pesan`, `tgl_berangkat`, `qty`, `total`, `fixed`, `invoice`, `konfirm`, `respons`, `pembayaran`) VALUES
(47, 0, 11, 2147483647, 'jayeng', 'bogor', '2018-05-15', '2018-05-31', 1, '0', 0, 193, 0, '', 0),
(48, 2, 2, 2147483647, 'Jayeng Rizky', 'Bogor', '2018-05-15', '2018-05-31', 1, '100000', 0, 13, 0, '', 0),
(49, 1, 1, 2147483647, 'Jayeng RIzky', 'bogor', '2018-05-23', '2018-05-31', 2, '130000', 0, 223, 0, '', 0),
(50, 2, 2, 2147483647, 'jayeng', 'adsad', '2018-05-23', '2018-05-31', 1, '100000', 0, 469, 0, '', 0),
(51, 2, 2, 2147483647, 'Jayeng Rizky', 'Bogor', '2018-05-23', '2018-04-19', 4, '400000', 0, 484, 0, '', 0),
(52, 2, 2, 2147483647, 'Jayeng RIzky', 'bogor', '2018-05-23', '2018-06-27', 3, '300000', 0, 843, 0, '', 0),
(53, 1, 1, 2147483647, 'Emiya', 'gg', '2018-06-06', '2018-06-28', 4, '260000', 0, 620, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`,`id_berangkat`);

--
-- Indeks untuk tabel `keberangkatan`
--
ALTER TABLE `keberangkatan`
  ADD PRIMARY KEY (`id_berangkat`);

--
-- Indeks untuk tabel `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kursi_pesanan`
--
ALTER TABLE `kursi_pesanan`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bus`
--
ALTER TABLE `bus`
  MODIFY `id_bus` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `keberangkatan`
--
ALTER TABLE `keberangkatan`
  MODIFY `id_berangkat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kursi`
--
ALTER TABLE `kursi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `kursi_pesanan`
--
ALTER TABLE `kursi_pesanan`
  MODIFY `id_kursi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
