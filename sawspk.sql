-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2020 pada 05.27
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sawspk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `kAlternatif` varchar(11) NOT NULL,
  `nmAlternatif` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`kAlternatif`, `nmAlternatif`) VALUES
('A1', 'Supra'),
('A2', 'Beat'),
('A3', 'Vario'),
('A4', 'CB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `bc1` double NOT NULL,
  `bc2` double NOT NULL,
  `bc3` double NOT NULL,
  `bc4` double NOT NULL,
  `bc5` double NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`bc1`, `bc2`, `bc3`, `bc4`, `bc5`, `id`) VALUES
(10, 25, 20, 25, 20, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kreteria`
--

CREATE TABLE `kreteria` (
  `kAlternatif` varchar(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kreteria`
--

INSERT INTO `kreteria` (`kAlternatif`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
('A1', 4, 3, 3, 3, 1),
('A2', 3, 2, 2, 3, 2),
('A3', 4, 3, 4, 3, 4),
('A4', 4, 4, 4, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`kAlternatif`);

--
-- Indeks untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kreteria`
--
ALTER TABLE `kreteria`
  ADD PRIMARY KEY (`kAlternatif`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kreteria`
--
ALTER TABLE `kreteria`
  ADD CONSTRAINT `kreteria` FOREIGN KEY (`kAlternatif`) REFERENCES `alternatif` (`kAlternatif`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
