-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2022 pada 16.13
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit_in`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `image` varchar(265) DEFAULT 'default.jpg',
  `Age` int(10) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `bodyWeight` int(10) NOT NULL,
  `bodyHeight` int(10) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `calories` int(10) DEFAULT NULL,
  `food` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id`, `username`, `email`, `password`, `image`, `Age`, `Gender`, `bodyWeight`, `bodyHeight`, `dateCreated`, `calories`, `food`) VALUES
(1, 'westlie', 'westli@gmail.com', '12345', 'default.jpg', 21, 'male', 60, 170, '2022-06-05 13:45:41', 20, 'sate'),
(2, '', 'sdikamaulana@gmail.com', '12345', '', 0, '', 0, 0, '2022-06-05 14:08:22', 0, ''),
(3, 'dika', '2225180044@untirta.ac.id', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 22, 'Male', 60, 170, '2022-06-06 09:19:57', NULL, NULL),
(4, 'dika', 'C2318G2774@bangkit.academy', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 22, 'Male', 60, 170, '2022-06-06 09:25:37', NULL, NULL),
(6, 'qomar', 'example@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 21, 'Male', 60, 170, '2022-06-06 12:47:57', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
