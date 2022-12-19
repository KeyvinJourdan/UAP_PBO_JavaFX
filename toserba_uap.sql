-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2022 pada 07.53
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toserba_uap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barcode` varchar(30) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` double(255,0) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `diskon` double(255,0) NOT NULL,
  `expired` varchar(30) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barcode`, `nama_produk`, `harga`, `jumlah`, `diskon`, `expired`, `kategori`) VALUES
('767', 'Asus TUF', 14000000, 6, 0, '3 tahun', 'Komputer'),
('AR5', 'AMD Ryzen 5 5600', 2400000, 4, 35000, '2 Tahun ', 'Processor'),
('AR7', 'AMD Ryzen 7 5800X', 4200000, 2, 25000, '2 Tahun', 'Processor'),
('AR9', 'AMD Ryzen 9 7950X', 15100000, 1, 0, '3 Tahun', 'Processor'),
('AX', 'Lenovo Legion', 15000000, 1, 200000, '2 Tahun', 'Komputer'),
('II3', 'Intel i3 Gen 12', 2300000, 4, 50000, '2 Tahun', 'Processor'),
('II5', 'Intel i5 Gen 12', 2900000, 2, 25000, '2 tahun', 'Processor'),
('II7', 'Intel i7 Gen 12', 7100000, 1, 0, '2 Tahun', 'Processor'),
('II9', 'Intel i9 Gen 12', 10100000, 1, 0, '2 Tahun', 'Processor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` double(255,0) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `diskon` double(255,0) NOT NULL,
  `daya_tahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`id`, `nama_produk`, `harga`, `jumlah`, `diskon`, `daya_tahan`) VALUES
(111, 'Ayam Goyeng', 20000, 35, 2000, 1),
(112, 'Ayam Bakar', 21000, 20, 1000, 1),
(211, 'Ikan Goyeng', 15000, 10, 0, 1),
(311, 'Buyung Puyuh Goyeng', 24000, 6, 0, 1),
(411, 'Udang Goyeng', 36000, 10, 0, 1),
(511, 'Cumi Goyeng', 32000, 6, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `nama_produk` varchar(30) NOT NULL,
  `jumlahProduk` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` double(30,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`nama_produk`, `jumlahProduk`, `stok`, `harga`) VALUES
('Ayam Goyeng', 4, 31, 72000),
('Cumi Goyeng', 1, 9, 32000),
('Ikan Bakar', 1, 7, 18000),
('Buyung Puyuh Goyeng', 1, 7, 18000),
('AMD Ryzen 3 3300X', 2, 4, 2800000),
('AMD Ryzen 9 7950X', 1, 0, 15100000),
('Intel i5 Gen 12', 1, 1, 2900000),
('Intel i8 Gen 12', 1, 0, 7100000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barcode`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
