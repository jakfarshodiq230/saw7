-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2023 pada 14.56
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(3, 'admin2', 'c84258e9c39059a89ab77d846ddab909'),
(5, 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6'),
(6, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(5) NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `NIK`, `nama_alternatif`, `alamat`) VALUES
(10, '2172044104840001', 'Yoso', 'JL. R.H. FISABILILLAH'),
(11, '2172046402680001', 'Syahril', 'PERUM PINAG HIJAU BLOK B NO 72 RW 05 RT 002'),
(12, '2172044107600030', 'Haryadi', 'PERUMAHAN TANJUNG SIAMBANG'),
(13, '2172034107650009', 'Pieter', 'JL. R.H.FISABILILLAH GG.NYIUR NO.06'),
(14, '1302054403860001', 'Sogimin', 'JL. MELUR'),
(20, '2172044209660001', 'A LAN', 'JL GATOT SUBRORO NO 1B RW 03 RT 004'),
(22, '2172020605690001', 'ABDUL HASAN', 'KP SEI CARANG RW 05 RT 001'),
(23, '2172042407710003', 'ABDUL AZIZ', 'JALAN SULTAN MACHMUD RW 05 RT 001'),
(24, '2172040307630002', 'ABDUL KADIR', 'JL SEI JANG LAUT'),
(25, '2172011312850001', 'ABDUL KARIM', 'JL CIKU NO 18 RW 05 RT 006'),
(26, '2172015702790002', 'BENEDECTA ANINDYA SUSANTI', 'JL DARUSALAM GG POKAT NO. 1 RW 05 RT 006'),
(27, '2172025003700002', 'BENTI', 'JL ANGGREK MERAH RW 11 RT 001'),
(28, '2172021206960001', 'BENY KURNIAWAN', 'JL KIJANG LAMA GG ANJASMARA 4 RW 05 RT 002'),
(29, '2172017004740001', 'BERNIKA SIMAREMARE', 'JL PANTAI IMPIAN GG PENYU II RW 06 RT 005'),
(30, '2172045412930002', 'CITRA KARTIKA', 'JL PEMUDA NO 12'),
(31, '2172014707720002', 'CITRA WANI', 'JL YOS SUDARSO NO 30 RW 12 RT 003'),
(32, '2172014201830002', 'CITRA YANITA', 'RT 03 RW 06'),
(33, '2172024101800003', 'COMBI', 'JL KAMPUNG MELAYU RW 03 RT 003'),
(34, '1301066512920002', 'CORY RAMADHANI FITRI', 'RT 03 RW 01'),
(35, '2172034107850038', 'DARNIS', 'KP. BUGIS'),
(36, '2172014107620060', 'DAROYAH', 'JL DR SUTOMO GG TIMBUL JAYA 4NO23 RW 01 RT 001'),
(37, '3215144107680055', 'DARSEM', 'RT 1 RW 10'),
(38, '2172024305740004', 'DARSIH', 'JL SUKA RAMAI RW 02 RT 002'),
(39, '2172047012770003', 'TRISNAWATI', 'JL. SALAM GG.SALAM I NO.83'),
(40, '2172044202920002', 'JURIAH', 'DOMPAK SEBERANG'),
(41, '2172045710780001', 'SRI ERNAWATI', 'JL. R.H.FISABILILLAH GG.NYIUR NO.05'),
(42, '1302131610610001', 'SYAHRIL KOTO', 'JL. POMPA AIR NO.32'),
(43, '2172030107650021', 'KADAR', 'SUNGAI NYIRIH RW 05 RT 002'),
(44, '2172023009800003', 'JONNER MARPAUNG', 'KP TIRTO MULYO RW 10 RT 002'),
(45, '2172045503700002', 'JAYA', 'JL A R HAKIM GG NATUNA'),
(46, '2172021212440001', 'IWAN SUMANTRI', 'KP SIDO MUKTI RW 8 RT 5'),
(47, '2172026805450001', 'ITAMARI HONDRO', 'PERUM BUKIT GALANG PERMAI RW 07 RT 003'),
(48, '2172031608630002', 'IWAN YUSUF', 'JL GURINDAM XII RW 05 RT 001'),
(49, '2172011607780002', 'ZULKIFLI', 'JL KAMBOJA RW 13 RT 005'),
(50, '2172011812730001', 'ZULKARNAEN', 'JL BHAYANGKARA RT 004 RW 010'),
(51, '2172025205690001', 'ZAINABUN', 'JL DI PANJAITAN GG GOLF NO. 02 RW 04 RT 001'),
(52, '2172014510690003', 'YUHERNIS', 'JL JAWA NO 12 RW 05 RT 002'),
(53, '2172042302790003', 'YUFRIZAL HELMY', 'JL. GD. MINYAK RW 01 RT 002'),
(54, '3327031505870015', 'YOPI SUGIARTO', 'RT 02 RW 02'),
(55, '2101066906870002', 'YOLLY RANGGI', 'JL LEMBAH PURNAMA'),
(56, '2172025109830002', 'YOGI ANDINI', 'KP KARANG REJO RT 01 RW 08'),
(57, '2172010411770001', 'YANTO', 'JL TAMBAK NO 137 RT 001 RW 003'),
(58, '2172010608450001', 'WIDODO', 'JL PEMASYARAKATAN NO:144 A'),
(59, '2172011105690002', 'WENANDO', 'KP BUKIT GG PELITA RT 01 RW 8'),
(60, '2172024505750005', 'WASIS', 'PERUM BUKIT GALANG PERMAI RW 07 RT 003'),
(61, '2172015508620001', 'WARNI', 'JL KAPAS NO 9 RW 05 RT 005'),
(62, '2172041011760002', 'VICTOR REINOLD HUTABARAT', 'JL BUKIT BARISAN NO 27'),
(63, '2172040107440039', 'UWEN', 'JL KAMPUNG KOLAM'),
(64, '2172025506600005', 'UWAS', 'KP BANJAR RW 06 RT 001'),
(65, '2101100505650001', 'USMAN', 'JL UBAN KP AIR RAJA RW 02 RT 004'),
(66, '2172016809570003', 'URIP SUMARNI', 'JL SULAIAMAN ABDULLAH NO 32 RW 06 RT 003'),
(67, '2172012009680002', 'UNTUNG SURAPATI S', 'JL PANTAI IMPIAN GG BAWAL III'),
(68, '2172011006620001', 'TUKIRAN', 'JL BUKIT CERMIN RT 02 RW 01'),
(69, '2172020106590001', 'TUKIAR SUWITO', 'JL CENDRAWASIH KP WONOYOSO RW 03 RT 001'),
(70, '2172023006430001', 'TUGIMIN', 'JL LEMBAH MERPATI KP WONOSARI RW 11 RT 002'),
(71, '2172010107360006', 'TRISNO WIYOTO', 'JL H AGUS SALIM GG KAPAYA III NO 18 RW 04 RT 003'),
(72, '2172023004740006', 'TONI SOELESTIO', 'PERUM GRIYA BESTARI PERMAI BLOK I NO 32'),
(73, '2172025208720008', 'TIROLAN GULTOM', 'PERUM LEMBAH ASRI BLOK D NO 9 RW 08 RT 001'),
(74, '2172024112690001', 'TIOMSI PURBA', 'JL KUANTAN GG PUTRI AYU IV NO. 28'),
(75, '2172032408810001', 'SYAMSUDIN', 'SENGGARANG'),
(76, '2172044309610003', 'SYAMSINAR', 'JL SULTAN MACHMUD RW 06 RT 004'),
(77, '2172046306750004', 'SYAMSIDAR', 'JL IR SUTAMI GG AKASIA I RW 04 RT 006'),
(78, '2172040606760009', 'SYAIFUL AKBAR', 'JL MT HARYONO RW 09 RT 002'),
(79, '2172011209620004', 'SYAFARUDIN', 'JL KOTA PIRING GANG PUTRI RIAU V LOR 3'),
(80, '2172040806820007', 'SUYANTO', 'JL SULTAN MACHMUD NO 29'),
(81, '2172024107540049', 'SUWARNI', 'PERUM JALA BESTARI BLOK C NO 11'),
(82, '2172040107540065', 'RUSLI', 'JL SULTAN MACHMUD RT 002 RW 004'),
(83, '2172020210700004', 'RUSDI', 'JL KEMBOJA RW 13 RT 004'),
(84, '2172011504440003', 'PAIMUN HADI', 'GG DIANA NO19 RW 01 RT 003'),
(85, '2172015504450001', 'PAET', 'JL BAHARI GG TERI NO 26 RW 10 RT 001'),
(86, '2172041110940001', 'OGI HERDANA', 'JL SULTAN MACHMUD RT 03 RW 04'),
(87, '2172044207770001', 'NURZAHIDAN', 'JL SUKA BERENANG GG HUTAN LINDUNG RW 05 RT 004'),
(88, '2172020107510048', 'NASHARUDDIN', 'JL KARYA KP SIDOJASA RT 04 RW 03'),
(89, '2101090808750001', 'MURYADI', 'JL PRAMUKA LR BAWEAN NO 28 B'),
(90, '2172021006790005', 'MURDIANTO', 'KP KARANG REJO RW 08 RT 001'),
(91, '2172042810920003', 'MULIADI', 'JL H UNGAR LR SERIBU NO 16A'),
(92, '2172042104610002', 'MUHTAR', 'JL AR HAKIM GG MESJID NO 1 RW 01 RT 002'),
(93, '2172022302650002', 'MUHAMMAD SOLEHUDDIN', 'JL KOTA PIRING GANG PUTRI RIAU V LR IV RT 003 RW 0'),
(94, '2172011404960002', 'MUHAMMAD OGEN', 'JL BATU NAGA PERUM DOMPAK INDAH'),
(95, '2172021609980001', 'MUHAMAD DEDY KURNIAWAN', 'JL KUANTAN GG PUTRI LEDANG 12 RW 01 RT 005'),
(96, '2172042310940001', 'LUKMAN NIL HAKIM', 'JL SEI JANG GG BUNGA NO 10'),
(97, '2172042805730003', 'LAMHOT SIRINGO RINGO', 'JL PRAMUKA LR TANAMA'),
(98, '2172021711660001', 'KHOIRUDDIN', 'JL MERPATI RW 09 RT 001'),
(99, '2171094404749013', 'KHAIRUN NASWAN', 'JL ENGKU PUTRI RT 01 RW 03'),
(100, '2172034503820001', 'JURNALIS', 'SUNGAI LADI RW 03 RT 001'),
(101, '2172042101710003', 'JUNAIDI HASAN', 'JL SELUAN NO 14 PERUMNAS'),
(102, '3308021507830005', 'ISRODIN', 'JL HUTAN LINDUNG NO 44 RT 03 RW 05'),
(103, '2172020107550049', 'ISNANDAR', 'JL HARMOKO RW 04 RT 002'),
(104, '2172010203510003', 'ISMAIL', 'JL JAWA NO 130 RW 05 RT 003'),
(105, '2172042707940003', 'IRWANTO', 'JL SULTAN MACHMUD RW 05 RT 004'),
(106, '2172020402830004', 'INDRA GUNAWAN', 'JL KOTA PIRING RT 003 RW 07'),
(107, '2172020108530001', 'ILYAS', 'PERUM BINTAN PERMAI BLOK F1 RW 04 RT 004'),
(108, '2172031208580001', 'IBRAHIM', 'KP BUGIS RT 04 RW 02'),
(109, '2172011008410001', 'HUSIN KADRI', 'RT01 RW013'),
(110, '3571031903770003', 'HERI KRISTIONO', 'PERUM GRAHA INDONUSA PERMAI BLOK B NO 18'),
(111, '2172042602010004', 'HERDIANSYAH', 'JL ST MACHMUD GG TUMU I'),
(112, '1207230201820011', 'HENDRA WIJAYA', 'JL SULTAN MACHMUD RT 2 RW 4'),
(113, '2172014411700001', 'GUSTI KURNIAWAN SIHOTANG', 'JL PANTAI IMPIAN GG BLANAK RW 06 RT 003'),
(114, '2172040101660012', 'GUSTI ADI WIJAYA', 'JL PRAMUKA GG PENGGALANG NO 03'),
(115, '2172045209890001', 'GALUH JUMASARI', 'JL GUDANG MINYAK RT 002 RW 001'),
(116, '2172011905700001', 'FIRMAN MAULANA', 'JL SOEKARNOI HATTA GG JAMBU'),
(117, '2105012512740001', 'ERWIN DESDULI ALFIANTORO', 'JL IR SUTAMI'),
(118, '2172015107650001', 'ERWI', 'JL SOEKARNO HATTA NO 24 D RT 003 RW 014'),
(119, '217204811980002', 'Nevia Rizka Ainul Habibah', 'jl. singkong gg singkong 20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` decimal(11,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(6, 10, 58.833),
(7, 11, 65.833),
(8, 12, 40.500),
(9, 13, 34.667),
(10, 14, 38.000),
(11, 20, 64.167),
(13, 22, 95.000),
(14, 23, 65.000),
(15, 24, 70.417),
(16, 25, 62.917),
(17, 26, 70.833),
(18, 27, 53.333),
(19, 28, 60.000),
(20, 29, 60.833),
(21, 30, 73.333),
(22, 31, 57.500),
(23, 32, 81.667),
(24, 33, 55.500),
(25, 34, 67.500),
(26, 35, 64.167),
(27, 36, 62.500),
(28, 37, 65.000),
(29, 38, 40.500),
(30, 39, 52.500),
(31, 40, 60.833),
(32, 41, 40.500),
(33, 42, 95.000),
(34, 43, 85.833),
(35, 44, 72.083),
(36, 45, 47.167),
(37, 46, 47.167),
(38, 47, 55.833),
(39, 48, 69.583),
(40, 49, 71.667),
(41, 50, 52.500),
(42, 51, 64.167),
(43, 52, 69.167),
(44, 53, 40.500),
(45, 54, 62.500),
(46, 55, 79.167),
(47, 56, 42.500),
(48, 57, 64.167),
(49, 58, 54.667),
(50, 59, 54.583),
(51, 60, 60.000),
(52, 61, 56.250),
(53, 62, 40.500),
(54, 63, 79.167),
(55, 64, 72.500),
(56, 65, 67.917),
(57, 66, 70.833),
(58, 67, 60.833),
(59, 68, 77.500),
(60, 69, 64.167),
(61, 70, 50.500),
(62, 71, 62.500),
(63, 72, 60.000),
(64, 73, 75.833),
(65, 74, 60.000),
(66, 75, 72.083),
(67, 76, 59.583),
(68, 77, 64.583),
(69, 78, 55.500),
(70, 79, 59.167),
(71, 80, 51.250),
(72, 81, 51.333),
(73, 82, 60.000),
(74, 83, 67.500),
(75, 84, 63.333),
(76, 85, 51.333),
(77, 86, 69.583),
(78, 87, 64.583),
(79, 88, 60.500),
(80, 89, 60.000),
(81, 90, 55.000),
(82, 91, 57.917),
(83, 92, 51.333),
(84, 93, 58.833),
(85, 94, 72.083),
(86, 95, 51.250),
(87, 96, 47.167),
(88, 97, 62.500),
(89, 98, 67.500),
(90, 99, 34.667),
(91, 100, 55.000),
(92, 101, 52.500),
(93, 102, 75.833),
(94, 103, 66.250),
(95, 104, 59.583),
(96, 105, 63.333),
(97, 106, 85.000),
(98, 107, 60.500),
(99, 108, 69.167),
(100, 109, 47.167),
(101, 110, 59.667),
(102, 111, 54.667),
(103, 112, 53.333),
(104, 113, 62.500),
(105, 114, 68.333),
(106, 115, 60.000),
(107, 116, 80.833),
(108, 117, 47.167),
(109, 118, 40.500),
(110, 119, 33.417);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) NOT NULL,
  `kode_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL,
  `tipe` enum('cost','benefit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `bobot`, `tipe`) VALUES
(6, 'C01', 'Pekerjaan', 15, 'cost'),
(7, 'C02', 'Kondisi Rumah', 25, 'cost'),
(8, 'C03', 'Penghasilan', 20, 'cost'),
(9, 'C04', 'Tanggungan', 25, 'benefit'),
(10, 'C05', 'Status Rumah', 15, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opt_alternatif`
--

CREATE TABLE `opt_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_subkriteria` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel ini digunakan agar kriteria nya bisa dinamis';

--
-- Dumping data untuk tabel `opt_alternatif`
--

INSERT INTO `opt_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(38, 10, 6, 17),
(39, 10, 7, 24),
(40, 10, 8, 29),
(41, 10, 9, 32),
(42, 10, 10, 34),
(43, 11, 6, 16),
(44, 11, 7, 23),
(45, 11, 8, 26),
(46, 11, 9, 30),
(47, 11, 10, 34),
(48, 12, 6, 21),
(49, 12, 7, 24),
(50, 12, 8, 29),
(51, 12, 9, 31),
(52, 12, 10, 33),
(53, 13, 6, 18),
(54, 13, 7, 24),
(55, 13, 8, 29),
(56, 13, 9, 30),
(57, 13, 10, 33),
(58, 14, 6, 20),
(59, 14, 7, 24),
(60, 14, 8, 27),
(61, 14, 9, 30),
(62, 14, 10, 33),
(88, 20, 6, 18),
(89, 20, 7, 23),
(90, 20, 8, 26),
(91, 20, 9, 31),
(92, 20, 10, 34),
(98, 22, 6, 16),
(99, 22, 7, 22),
(100, 22, 8, 26),
(101, 22, 9, 32),
(102, 22, 10, 34),
(103, 23, 6, 17),
(104, 23, 7, 23),
(105, 23, 8, 27),
(106, 23, 9, 31),
(107, 23, 10, 35),
(108, 24, 6, 19),
(109, 24, 7, 22),
(110, 24, 8, 26),
(111, 24, 9, 31),
(112, 24, 10, 33),
(113, 25, 6, 19),
(114, 25, 7, 23),
(115, 25, 8, 26),
(116, 25, 9, 31),
(117, 25, 10, 34),
(118, 26, 6, 18),
(119, 26, 7, 23),
(120, 26, 8, 27),
(121, 26, 9, 32),
(122, 26, 10, 35),
(123, 27, 6, 18),
(124, 27, 7, 24),
(125, 27, 8, 27),
(126, 27, 9, 31),
(127, 27, 10, 34),
(128, 28, 6, 17),
(129, 28, 7, 23),
(130, 28, 8, 27),
(131, 28, 9, 31),
(132, 28, 10, 34),
(133, 29, 6, 18),
(134, 29, 7, 23),
(135, 29, 8, 27),
(136, 29, 9, 32),
(137, 29, 10, 33),
(138, 30, 6, 18),
(139, 30, 7, 22),
(140, 30, 8, 27),
(141, 30, 9, 32),
(142, 30, 10, 33),
(143, 31, 6, 18),
(144, 31, 7, 23),
(145, 31, 8, 27),
(146, 31, 9, 31),
(147, 31, 10, 34),
(148, 32, 6, 16),
(149, 32, 7, 22),
(150, 32, 8, 26),
(151, 32, 9, 31),
(152, 32, 10, 33),
(153, 33, 6, 20),
(154, 33, 7, 23),
(155, 33, 8, 27),
(156, 33, 9, 31),
(157, 33, 10, 34),
(158, 34, 6, 18),
(159, 34, 7, 23),
(160, 34, 8, 26),
(161, 34, 9, 32),
(162, 34, 10, 33),
(163, 35, 6, 17),
(164, 35, 7, 24),
(165, 35, 8, 27),
(166, 35, 9, 32),
(167, 35, 10, 34),
(168, 36, 6, 18),
(169, 36, 7, 23),
(170, 36, 8, 27),
(171, 36, 9, 31),
(172, 36, 10, 35),
(173, 37, 6, 17),
(174, 37, 7, 23),
(175, 37, 8, 28),
(176, 37, 9, 32),
(177, 37, 10, 34),
(178, 38, 6, 21),
(179, 38, 7, 24),
(180, 38, 8, 29),
(181, 38, 9, 31),
(182, 38, 10, 33),
(183, 39, 6, 18),
(184, 39, 7, 23),
(185, 39, 8, 27),
(186, 39, 9, 31),
(187, 39, 10, 33),
(188, 40, 6, 18),
(189, 40, 7, 23),
(190, 40, 8, 27),
(191, 40, 9, 32),
(192, 40, 10, 33),
(193, 41, 6, 21),
(194, 41, 7, 24),
(195, 41, 8, 29),
(196, 41, 9, 31),
(197, 41, 10, 33),
(198, 42, 6, 16),
(199, 42, 7, 22),
(200, 42, 8, 26),
(201, 42, 9, 32),
(202, 42, 10, 34),
(203, 43, 6, 17),
(204, 43, 7, 22),
(205, 43, 8, 27),
(206, 43, 9, 32),
(207, 43, 10, 35),
(208, 44, 6, 19),
(209, 44, 7, 22),
(210, 44, 8, 27),
(211, 44, 9, 32),
(212, 44, 10, 33),
(213, 45, 6, 20),
(214, 45, 7, 23),
(215, 45, 8, 28),
(216, 45, 9, 31),
(217, 45, 10, 33),
(218, 46, 6, 20),
(219, 46, 7, 23),
(220, 46, 8, 28),
(221, 46, 9, 31),
(222, 46, 10, 33),
(223, 47, 6, 17),
(224, 47, 7, 24),
(225, 47, 8, 27),
(226, 47, 9, 31),
(227, 47, 10, 34),
(228, 48, 6, 19),
(229, 48, 7, 23),
(230, 48, 8, 27),
(231, 48, 9, 32),
(232, 48, 10, 35),
(233, 49, 6, 16),
(234, 49, 7, 24),
(235, 49, 8, 27),
(236, 49, 9, 32),
(237, 49, 10, 34),
(238, 50, 6, 18),
(239, 50, 7, 23),
(240, 50, 8, 27),
(241, 50, 9, 31),
(242, 50, 10, 33),
(243, 51, 6, 17),
(244, 51, 7, 24),
(245, 51, 8, 27),
(246, 51, 9, 32),
(247, 51, 10, 34),
(248, 52, 6, 18),
(249, 52, 7, 23),
(250, 52, 8, 26),
(251, 52, 9, 31),
(252, 52, 10, 35),
(253, 53, 6, 21),
(254, 53, 7, 24),
(255, 53, 8, 29),
(256, 53, 9, 31),
(257, 53, 10, 33),
(258, 54, 6, 16),
(259, 54, 7, 23),
(260, 54, 8, 27),
(261, 54, 9, 31),
(262, 54, 10, 33),
(263, 55, 6, 17),
(264, 55, 7, 22),
(265, 55, 8, 26),
(266, 55, 9, 31),
(267, 55, 10, 34),
(268, 56, 6, 21),
(269, 56, 7, 24),
(270, 56, 8, 28),
(271, 56, 9, 31),
(272, 56, 10, 33),
(273, 57, 6, 17),
(274, 57, 7, 24),
(275, 57, 8, 27),
(276, 57, 9, 32),
(277, 57, 10, 34),
(278, 58, 6, 20),
(279, 58, 7, 24),
(280, 58, 8, 27),
(281, 58, 9, 32),
(282, 58, 10, 33),
(283, 59, 6, 19),
(284, 59, 7, 23),
(285, 59, 8, 26),
(286, 59, 9, 30),
(287, 59, 10, 34),
(288, 60, 6, 17),
(289, 60, 7, 23),
(290, 60, 8, 27),
(291, 60, 9, 31),
(292, 60, 10, 34),
(293, 61, 6, 19),
(294, 61, 7, 23),
(295, 61, 8, 27),
(296, 61, 9, 31),
(297, 61, 10, 34),
(298, 62, 6, 21),
(299, 62, 7, 24),
(300, 62, 8, 29),
(301, 62, 9, 31),
(302, 62, 10, 33),
(303, 63, 6, 17),
(304, 63, 7, 22),
(305, 63, 8, 26),
(306, 63, 9, 31),
(307, 63, 10, 34),
(308, 64, 6, 17),
(309, 64, 7, 22),
(310, 64, 8, 27),
(311, 64, 9, 31),
(312, 64, 10, 34),
(313, 65, 6, 19),
(314, 65, 7, 23),
(315, 65, 8, 26),
(316, 65, 9, 31),
(317, 65, 10, 35),
(318, 66, 6, 16),
(319, 66, 7, 23),
(320, 66, 8, 27),
(321, 66, 9, 32),
(322, 66, 10, 33),
(323, 67, 6, 18),
(324, 67, 7, 23),
(325, 67, 8, 27),
(326, 67, 9, 32),
(327, 67, 10, 33),
(328, 68, 6, 16),
(329, 68, 7, 23),
(330, 68, 8, 26),
(331, 68, 9, 32),
(332, 68, 10, 33),
(333, 69, 6, 17),
(334, 69, 7, 24),
(335, 69, 8, 27),
(336, 69, 9, 32),
(337, 69, 10, 34),
(338, 70, 6, 17),
(339, 70, 7, 24),
(340, 70, 8, 29),
(341, 70, 9, 31),
(342, 70, 10, 34),
(343, 71, 6, 16),
(344, 71, 7, 23),
(345, 71, 8, 27),
(346, 71, 9, 31),
(347, 71, 10, 33),
(348, 72, 6, 17),
(349, 72, 7, 23),
(350, 72, 8, 27),
(351, 72, 9, 31),
(352, 72, 10, 34),
(353, 73, 6, 17),
(354, 73, 7, 22),
(355, 73, 8, 26),
(356, 73, 9, 30),
(357, 73, 10, 35),
(358, 74, 6, 17),
(359, 74, 7, 23),
(360, 74, 8, 27),
(361, 74, 9, 31),
(362, 74, 10, 34),
(363, 75, 6, 19),
(364, 75, 7, 22),
(365, 75, 8, 27),
(366, 75, 9, 32),
(367, 75, 10, 33),
(368, 76, 6, 19),
(369, 76, 7, 23),
(370, 76, 8, 27),
(371, 76, 9, 32),
(372, 76, 10, 33),
(373, 77, 6, 19),
(374, 77, 7, 23),
(375, 77, 8, 27),
(376, 77, 9, 32),
(377, 77, 10, 34),
(378, 78, 6, 20),
(379, 78, 7, 23),
(380, 78, 8, 27),
(381, 78, 9, 31),
(382, 78, 10, 34),
(383, 79, 6, 17),
(384, 79, 7, 24),
(385, 79, 8, 27),
(386, 79, 9, 32),
(387, 79, 10, 33),
(388, 80, 6, 19),
(389, 80, 7, 23),
(390, 80, 8, 27),
(391, 80, 9, 31),
(392, 80, 10, 33),
(393, 81, 6, 20),
(394, 81, 7, 24),
(395, 81, 8, 28),
(396, 81, 9, 32),
(397, 81, 10, 33),
(398, 82, 6, 17),
(399, 82, 7, 23),
(400, 82, 8, 27),
(401, 82, 9, 31),
(402, 82, 10, 34),
(403, 83, 6, 16),
(404, 83, 7, 23),
(405, 83, 8, 27),
(406, 83, 9, 31),
(407, 83, 10, 34),
(408, 84, 6, 16),
(409, 84, 7, 24),
(410, 84, 8, 27),
(411, 84, 9, 31),
(412, 84, 10, 34),
(413, 85, 6, 18),
(414, 85, 7, 24),
(415, 85, 8, 29),
(416, 85, 9, 32),
(417, 85, 10, 33),
(418, 86, 6, 19),
(419, 86, 7, 23),
(420, 86, 8, 27),
(421, 86, 9, 32),
(422, 86, 10, 35),
(423, 87, 6, 19),
(424, 87, 7, 23),
(425, 87, 8, 27),
(426, 87, 9, 32),
(427, 87, 10, 34),
(428, 88, 6, 20),
(429, 88, 7, 23),
(430, 88, 8, 27),
(431, 88, 9, 31),
(432, 88, 10, 35),
(433, 89, 6, 17),
(434, 89, 7, 23),
(435, 89, 8, 27),
(436, 89, 9, 31),
(437, 89, 10, 34),
(438, 90, 6, 17),
(439, 90, 7, 23),
(440, 90, 8, 27),
(441, 90, 9, 31),
(442, 90, 10, 33),
(443, 91, 6, 19),
(444, 91, 7, 23),
(445, 91, 8, 26),
(446, 91, 9, 31),
(447, 91, 10, 33),
(448, 92, 6, 18),
(449, 92, 7, 24),
(450, 92, 8, 29),
(451, 92, 9, 32),
(452, 92, 10, 33),
(453, 93, 6, 17),
(454, 93, 7, 24),
(455, 93, 8, 29),
(456, 93, 9, 32),
(457, 93, 10, 34),
(458, 94, 6, 19),
(459, 94, 7, 22),
(460, 94, 8, 27),
(461, 94, 9, 32),
(462, 94, 10, 33),
(463, 95, 6, 19),
(464, 95, 7, 23),
(465, 95, 8, 27),
(466, 95, 9, 31),
(467, 95, 10, 33),
(468, 96, 6, 20),
(469, 96, 7, 23),
(470, 96, 8, 28),
(471, 96, 9, 31),
(472, 96, 10, 33),
(473, 97, 6, 16),
(474, 97, 7, 23),
(475, 97, 8, 27),
(476, 97, 9, 31),
(477, 97, 10, 33),
(478, 98, 6, 16),
(479, 98, 7, 23),
(480, 98, 8, 27),
(481, 98, 9, 31),
(482, 98, 10, 34),
(483, 99, 6, 18),
(484, 99, 7, 24),
(485, 99, 8, 29),
(486, 99, 9, 30),
(487, 99, 10, 33),
(488, 100, 6, 17),
(489, 100, 7, 23),
(490, 100, 8, 27),
(491, 100, 9, 31),
(492, 100, 10, 33),
(493, 101, 6, 17),
(494, 101, 7, 24),
(495, 101, 8, 28),
(496, 101, 9, 31),
(497, 101, 10, 34),
(498, 102, 6, 16),
(499, 102, 7, 23),
(500, 102, 8, 27),
(501, 102, 9, 32),
(502, 102, 10, 34),
(503, 103, 6, 19),
(504, 103, 7, 23),
(505, 103, 8, 26),
(506, 103, 9, 32),
(507, 103, 10, 33),
(508, 104, 6, 19),
(509, 104, 7, 23),
(510, 104, 8, 27),
(511, 104, 9, 32),
(512, 104, 10, 33),
(513, 105, 6, 17),
(514, 105, 7, 23),
(515, 105, 8, 27),
(516, 105, 9, 32),
(517, 105, 10, 33),
(518, 106, 6, 16),
(519, 106, 7, 22),
(520, 106, 8, 27),
(521, 106, 9, 31),
(522, 106, 10, 35),
(523, 107, 6, 20),
(524, 107, 7, 23),
(525, 107, 8, 27),
(526, 107, 9, 31),
(527, 107, 10, 35),
(528, 108, 6, 16),
(529, 108, 7, 23),
(530, 108, 8, 26),
(531, 108, 9, 31),
(532, 108, 10, 33),
(533, 109, 6, 20),
(534, 109, 7, 23),
(535, 109, 8, 28),
(536, 109, 9, 31),
(537, 109, 10, 33),
(538, 110, 6, 20),
(539, 110, 7, 24),
(540, 110, 8, 27),
(541, 110, 9, 32),
(542, 110, 10, 34),
(543, 111, 6, 20),
(544, 111, 7, 24),
(545, 111, 8, 27),
(546, 111, 9, 32),
(547, 111, 10, 33),
(548, 112, 6, 18),
(549, 112, 7, 24),
(550, 112, 8, 28),
(551, 112, 9, 32),
(552, 112, 10, 33),
(553, 113, 6, 18),
(554, 113, 7, 23),
(555, 113, 8, 28),
(556, 113, 9, 32),
(557, 113, 10, 34),
(558, 114, 6, 17),
(559, 114, 7, 23),
(560, 114, 8, 27),
(561, 114, 9, 32),
(562, 114, 10, 34),
(563, 115, 6, 17),
(564, 115, 7, 23),
(565, 115, 8, 27),
(566, 115, 9, 31),
(567, 115, 10, 34),
(568, 116, 6, 16),
(569, 116, 7, 23),
(570, 116, 8, 27),
(571, 116, 9, 32),
(572, 116, 10, 35),
(573, 117, 6, 20),
(574, 117, 7, 23),
(575, 117, 8, 28),
(576, 117, 9, 31),
(577, 117, 10, 33),
(578, 118, 6, 21),
(579, 118, 7, 24),
(580, 118, 8, 29),
(581, 118, 9, 31),
(582, 118, 10, 33),
(583, 119, 6, 19),
(584, 119, 7, 24),
(585, 119, 8, 29),
(586, 119, 9, 30),
(587, 119, 10, 33);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `nama_subkriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `bobot`) VALUES
(16, 6, 'Tukang Ojek', 15),
(17, 6, 'Buruh Bangunan', 30),
(18, 6, 'Nelayan', 45),
(19, 6, 'Pedagang', 60),
(20, 6, 'Satpam', 75),
(21, 6, 'Pegawai', 90),
(22, 7, 'Rumah Tidak Layak Huni', 30),
(23, 7, 'Semi Permanen', 60),
(24, 7, 'Permanen', 90),
(25, 8, '0 – 500.000', 18),
(26, 8, '>500.000 – 1.000.000 ', 36),
(27, 8, '>1.000.000 – 2.000.000 ', 54),
(28, 8, '>2.000.000 – 3.000.000', 72),
(29, 8, '>= 3.000.000', 90),
(30, 9, '0 – 1', 30),
(31, 9, ' 2 – 3', 60),
(32, 9, ' >4', 90),
(33, 10, 'Rumah Pribadi', 30),
(34, 10, 'Rumah Sewa', 60),
(35, 10, 'Rumah Menumpang', 90);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD CONSTRAINT `opt_alternatif_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_3` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
