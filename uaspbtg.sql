-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 21 Bulan Mei 2025 pada 08.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaspbtg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `TTL` varchar(10) NOT NULL,
  `Jenis Kelamin` varchar(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`NIM`, `Nama`, `TTL`, `Jenis Kelamin`, `Alamat`, `Kelas`) VALUES
('336', 'ayam', 'ayammm', 'ayam', 'ayam', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `Kode Buku` varchar(10) NOT NULL,
  `Nama Buku` varchar(50) NOT NULL,
  `Nama Pengarang` varchar(20) NOT NULL,
  `Penerbit` varchar(20) NOT NULL,
  `Tahun Terbit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`Kode Buku`, `Nama Buku`, `Nama Pengarang`, `Penerbit`, `Tahun Terbit`) VALUES
('1234345', 'pergi', 'tere liye', 'wordpress', '2015'),
('550', 'ayam', 'ayam', 'ayam', 'ayam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Jenis Kelamin` varchar(255) NOT NULL,
  `Golongan` varchar(255) NOT NULL,
  `Jabatan` varchar(255) NOT NULL,
  `Absen` varchar(255) NOT NULL,
  `Jumlah Absen` varchar(255) NOT NULL,
  `Biaya Transport` varchar(255) NOT NULL,
  `Tunjungan` varchar(255) NOT NULL,
  `Gaji` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `Nama` varchar(30) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Konfirmasi Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`Nama`, `Username`, `Password`, `Konfirmasi Password`) VALUES
('fadey', 'fadey00a', 'susucoklat', 'susucoklat'),
('Rama adrien fadey', 'Pelajar', '101010', '101010');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Kode Buku` varchar(10) NOT NULL,
  `Nama Buku` varchar(50) NOT NULL,
  `Tanggal Peminjaman` varchar(12) NOT NULL,
  `Tanggal Pengembalian` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjam`
--

INSERT INTO `peminjam` (`NIM`, `Nama`, `Kode Buku`, `Nama Buku`, `Tanggal Peminjaman`, `Tanggal Pengembalian`) VALUES
('efa', 'dagrs', '1234345', 'pergi', '19', '20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `NIM` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Kelas` varchar(255) NOT NULL,
  `Kode Buku` varchar(255) NOT NULL,
  `Nama Buku` varchar(255) NOT NULL,
  `Penerbit` varchar(255) NOT NULL,
  `Tanggal Pinjam` varchar(255) NOT NULL,
  `Tanggal Kembali` varchar(255) NOT NULL,
  `Lama Pinjam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`NIM`, `Nama`, `Kelas`, `Kode Buku`, `Nama Buku`, `Penerbit`, `Tanggal Pinjam`, `Tanggal Kembali`, `Lama Pinjam`) VALUES
('12', 'fadey', 'fadey', 'fadey', 'fadeyy', 'fadey', '13/05/2005', '15/05/2005', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`Kode Buku`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
