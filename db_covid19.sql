-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Mei 2021 pada 15.07
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_covid19`
--
CREATE DATABASE IF NOT EXISTS `db_covid19` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_covid19`;
-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_country`
--

CREATE TABLE `tb_country` (
  `id_country` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_country`
--

INSERT INTO `tb_country` (`id_country`, `country`) VALUES
(1, 'USA'),
(2, 'India'),
(3, 'Brazil'),
(4, 'France'),
(5, 'Turkey'),
(6, 'Russia'),
(7, 'UK'),
(8, 'Italy'),
(9, 'Spain'),
(10, 'Germany');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_covid`
--

CREATE TABLE `tb_covid` (
  `id_covid` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `totalcases` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_covid`
--

INSERT INTO `tb_covid` (`id_covid`, `id_country`, `totalcases`) VALUES
(1, 1, 33515308),
(2, 2, 22991927),
(3, 3, 15214030),
(4, 4, 5780379),
(5, 5, 5044936),
(6, 6, 4888727),
(7, 7, 4437217),
(8, 8, 4116287),
(9, 9, 3581392),
(10, 10, 3535354);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_covid19`
--

CREATE TABLE `tb_covid19` (
  `id_covid` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `newcases` int(20) NOT NULL,
  `totaldeaths` int(20) NOT NULL,
  `newdeaths` int(20) NOT NULL,
  `totalrecovered` int(20) NOT NULL,
  `activecase` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_covid19`
--

INSERT INTO `tb_covid19` (`id_covid`, `id_country`, `newcases`, `totaldeaths`, `newdeaths`, `totalrecovered`, `activecases`) VALUES
(1, 1, 30152, 596179, 370, 26507427, 6442224),
(2, 2, 329517, 250025, 3879, 19021207, 4054091),
(3, 3, 29240, 423436, 1018, 13759125, 1061727),
(4, 4, 3292, 106684, 292, 4917393, 759886 ),
(5, 5, 13604, 43311, 282, 4743871, 271640),
(6, 6, 8465, 113647, 321, 4502906, 280960),
(7, 7, 2357, 127609, 4, 4250699, 61270),
(8, 8, 5080, 123031, 198, 3619586, 378948),
(9, 9, 4579, 78895, 35, 3274808, 232303),
(10, 10, 7814, 85481, 110, 3175600, 282197);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`id_country`);

--
-- Indeks untuk tabel `tb_covid`
--
ALTER TABLE `tb_covid`
  ADD PRIMARY KEY (`id_covid`);

--
-- Indeks untuk tabel `tb_covid19`
--
ALTER TABLE `tb_covid19`
  ADD PRIMARY KEY (`id_covid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_country`
--
ALTER TABLE `tb_country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_covid`
--
ALTER TABLE `tb_covid`
  MODIFY `id_covid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;