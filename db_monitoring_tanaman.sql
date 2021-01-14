-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Des 2020 pada 09.44
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_monitoring_tanaman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_tanaman`
--

CREATE TABLE `foto_tanaman` (
  `id` int(11) NOT NULL,
  `yellow_perc_value` double NOT NULL,
  `red_stain_percentage` double NOT NULL,
  `leaf_blight_percentage` double NOT NULL,
  `leaf_rust_percentage` double NOT NULL,
  `nama_file` text NOT NULL,
  `checked_file` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto_tanaman`
--

INSERT INTO `foto_tanaman` (`id`, `yellow_perc_value`, `red_stain_percentage`, `leaf_blight_percentage`, `leaf_rust_percentage`, `nama_file`, `checked_file`, `timestamp`) VALUES
(8, 6.1695556640625, 0, 0, 0, '2020-12-07-11-19-54-image.jpg', '', '2020-12-07 11:19:54'),
(13, 22.527671813964844, 0, 0, 0, '2020-12-07-11-26-00-image.jpg', '', '2020-12-07 11:26:00'),
(14, 82.31664276123047, 0, 0, 0, '2020-12-07-11-26-27-image.jpg', '', '2020-12-07 11:26:27'),
(15, 8.38333511352539, 0.22475280761719, 0, 0, '2020-12-17-13-13-58-image.jpg', '2020-12-17-13-13-58_checked_res.jpg', '2020-12-17 13:13:58'),
(16, 0.6379280090332031, 0.19096374511719, 0, 0, '2020-12-17-13-15-03-image.jpg', '2020-12-17-13-15-03_checked_res.jpg', '2020-12-17 13:15:03'),
(17, 0.4692535400390625, 0.04241943359375, 0, 0, '2020-12-17-13-19-30-image.jpg', '2020-12-17-13-19-30_checked_res.jpg', '2020-12-17 13:19:30'),
(18, 5.6022491455078125, 0.377197265625, 0.13755798339844, 0.83816528320312, '2020-12-28-15-44-06-image.jpg', '2020-12-28-15-44-06_checked_res.jpg', '2020-12-28 15:44:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `foto_tanaman`
--
ALTER TABLE `foto_tanaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `foto_tanaman`
--
ALTER TABLE `foto_tanaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
