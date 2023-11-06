-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2023 pada 02.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spkwisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_alternatives`
--

CREATE TABLE `saw_alternatives` (
  `id_alternative` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_alternatives`
--

INSERT INTO `saw_alternatives` (`id_alternative`, `name`) VALUES
(1, 'pulau komodo'),
(2, 'pulau padar'),
(3, 'manta point'),
(4, 'pink beach'),
(5, 'pulau bidadari'),
(6, 'gili laba'),
(7, 'bukit cinta'),
(8, 'gua rangko'),
(23, 'pulau kelor'),
(22, 'pulau kanawa'),
(18, 'gua batu cermin'),
(19, 'wae rebo'),
(20, 'Danau sanau nggoang   '),
(21, 'Bukit Sylvia              ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_criterias`
--

CREATE TABLE `saw_criterias` (
  `id_criteria` tinyint(3) UNSIGNED NOT NULL,
  `criteria` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `attribute` set('benefit','cost') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_criterias`
--

INSERT INTO `saw_criterias` (`id_criteria`, `criteria`, `weight`, `attribute`) VALUES
(1, 'harga', 1, 'cost'),
(2, 'jarak', 0.8, 'cost'),
(3, 'aksesbilitas', 0.6, 'benefit'),
(4, 'akomodasi', 0.4, 'benefit'),
(5, 'keamanan', 0.2, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_evaluations`
--

CREATE TABLE `saw_evaluations` (
  `id` int(11) NOT NULL,
  `id_alternative` smallint(5) UNSIGNED NOT NULL,
  `id_criteria` tinyint(3) UNSIGNED NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_evaluations`
--

INSERT INTO `saw_evaluations` (`id`, `id_alternative`, `id_criteria`, `value`) VALUES
(1, 2, 1, 7.5),
(2, 2, 2, 1.5),
(3, 2, 3, 7.5),
(4, 2, 4, 43),
(5, 2, 5, 8),
(6, 3, 1, 7),
(7, 3, 2, 3.5),
(8, 3, 3, 6.5),
(9, 3, 4, 43),
(10, 3, 5, 10),
(11, 4, 1, 7.5),
(12, 4, 2, 0.5),
(13, 4, 3, 8.5),
(14, 4, 4, 30),
(15, 4, 5, 10),
(16, 5, 1, 8),
(17, 5, 2, 6.5),
(18, 5, 3, 8.5),
(19, 5, 4, 37),
(20, 5, 5, 8),
(21, 6, 2, 2),
(22, 6, 1, 6),
(23, 6, 3, 9.5),
(24, 6, 4, 18),
(25, 6, 5, 1),
(26, 2, 2, 1.8),
(27, 3, 3, 1.2),
(28, 16, 2, 2),
(34, 14, 2, 90),
(33, 14, 1, 90),
(32, 3, 1, 90),
(35, 14, 3, 90),
(36, 1, 1, 1),
(37, 1, 2, 1),
(38, 1, 3, 0.6),
(39, 1, 4, 0.6),
(40, 1, 5, 0),
(41, 1, 5, 0.8),
(42, 7, 1, 1.2),
(43, 8, 4, 1),
(44, 10, 1, 2),
(45, 10, 2, 2),
(46, 10, 1, 1),
(47, 11, 1, 2),
(48, 13, 3, 0.6),
(49, 4, 3, 1),
(50, 15, 1, 0.6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_users`
--

CREATE TABLE `saw_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_users`
--

INSERT INTO `saw_users` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  ADD PRIMARY KEY (`id_alternative`);

--
-- Indeks untuk tabel `saw_criterias`
--
ALTER TABLE `saw_criterias`
  ADD PRIMARY KEY (`id_criteria`);

--
-- Indeks untuk tabel `saw_evaluations`
--
ALTER TABLE `saw_evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `saw_users`
--
ALTER TABLE `saw_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  MODIFY `id_alternative` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `saw_evaluations`
--
ALTER TABLE `saw_evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `saw_users`
--
ALTER TABLE `saw_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
