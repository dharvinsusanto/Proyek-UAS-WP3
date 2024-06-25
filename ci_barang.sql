-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2024 pada 18.26
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(15) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stok`, `satuan_id`, `jenis_id`) VALUES
('A001-RAK02-2024', 'MESH DN 93314', 862, 5, 1),
('A002-RAK02-2024', 'MESH DN 93193', 910, 5, 1),
('A003-RAK02-2024', 'MESH DN 93255', 736, 5, 1),
('A004-RAK02-2024', 'MESH DN 93913', 52, 5, 1),
('A005-RAK07-2024', 'MESH DN 93291', 148, 5, 1),
('A006-RAK03-2024', 'MESH DN 93137', 2, 5, 1),
('A007-RAK04-2024', 'MERABON 60\"', 1900, 5, 1),
('A008-RAK04-2024', 'MERABON+STICKER', 400, 5, 1),
('A009-RAK04-2024', 'EXO SUEDE', 765, 5, 1),
('A010-RAK05-2024', 'MESH DN', 200, 5, 1),
('A011-RAK08-2024', 'SUPERSPAN', 425, 5, 1),
('A012-RAK08-2024', 'LYCRA', 2050, 5, 1),
('A013-RAK23-2024', 'SW MERCURIAL', 90, 5, 1),
('A014-RAK09-2024', 'K.STUNNER', 2311, 5, 1),
('A015-RAK09-2024', 'SUEDE', 210, 5, 1),
('A016-RAK09-2024', 'KULIT SUEDE', 5405, 5, 1),
('A017-RAK10-2024', 'TRICOT', 2313, 5, 1),
('A018-RAK10-2024', 'SEWFREE', 150, 5, 1),
('A019-RAK10-2024', 'POLYPAG', 6100, 5, 1),
('A020-RAK10-2024', 'MERABON+SA', 590, 5, 1),
('A021-RAK11-2024', 'MERABON', 133, 12, 1),
('A022-RAK11-2024', 'MULTISPAN', 260, 5, 1),
('A023-RAK19-2024', 'POLYPAG 54\"', 210, 5, 1),
('A024-RAK12-2024', 'FISH NET', 40, 5, 1),
('A025-RAK12-2024', 'LYCRA+SA', 30, 5, 1),
('A026-RAK12-2024', 'HEAVY NYLEX+HOTMEL', 26, 5, 1),
('A027-RAK12-2024', 'EXO SUEDE+HOTMEL', 19, 5, 1),
('A028-RAK12-2024', 'LYCRA+STICKER', 25, 5, 1),
('A029-RAK12-2024', 'MERABON+EVA 2MM', 3, 5, 1),
('A030-RAK12-2024', 'R8010 1MM', 80, 5, 1),
('A031-RAK12-2024', 'R8010 0,7MM', 27, 5, 1),
('A032-RAK12-2024', 'MICROFIBER+HOTMEL', 40, 5, 1),
('A033-RAK12-2024', 'LYCRA+HOTMEL', 25, 5, 1),
('A034-RAK12-2024', 'TFL 600S', 250, 5, 1),
('A035-RAK13-2024', 'PU SYNTETIC UM-10', 150, 5, 1),
('A036-RAK22-2024', 'PU SYNTETIC R-231', 60, 5, 1),
('A037-RAK13-2024', 'PU SYNTETIC AR-64', 1134, 5, 1),
('A038-RAK14-2024', 'MERY MESH', 2640, 5, 1),
('A039-RAK14-2024', 'YHS 266', 956, 5, 1),
('A040-RAK14-2024', 'SKETMESH', 48, 5, 1),
('A041-RAK15-2024', 'CK MESH', 414, 5, 1),
('A042-RAK15-2024', 'MESH', 60, 5, 1),
('A043-RAK16-2024', 'LICHI (PDL)', 5051, 10, 1),
('A044-RAK16-2024', 'GOAT LINNING', 3854, 10, 1),
('A045-RAK16-2024', 'COW LINNING(PDL)', 480, 10, 1),
('A046-RAK17-2024', 'SUEDE(KALVERT)', 452, 10, 1),
('A047-RAK18-2024', 'AOEN SW MESH', 20, 5, 1),
('A048-RAK19-2024', 'VIASTERY', 210, 5, 1),
('A049-RAK19-2024', 'MERABON 44\"+STICKER', 200, 5, 1),
('A050-RAK19-2024', 'EVA+DOBLE STICKER', 60, 5, 1),
('A051-RAK19-2024', 'SKETMESH BLK+FOAM 2MM WHT+TC BLK', 60, 5, 1),
('A052-RAK19-2024', 'NON WOVEN', 150, 5, 1),
('A053-RAK20-2024', 'MICROFIBER', 664, 5, 1),
('A054-RAK20-2024', 'TPU 2MM', 100, 5, 1),
('A055-RAK20-2024', 'HULK MONO 0,3', 77, 5, 1),
('A056-RAK20-2024', 'HULK MONO 0,5', 30, 5, 1),
('A057-RAK20-2024', 'HULK MONO', 55, 5, 1),
('A058-RAK20-2024', 'HULEX MONO 0,3', 70, 5, 1),
('A059-RAK20-2024', 'HULK MONO 0,6', 20, 5, 1),
('A060-RAK20-2024', 'HULK MONO 0,8', 30, 5, 1),
('A061-RAK29-2024', 'KJ-30 1,3', 600, 5, 1),
('A062-RAK23-2024', 'PU AR-72', 90, 5, 1),
('A063-RAK23-2024', 'PU DE-7', 60, 5, 1),
('A064-RAK23-2024', 'HEAVY NYLEX', 1287, 5, 1),
('A065-RAK24-2024', 'PU SERGE', 4539, 5, 1),
('A066-RAK24-2024', 'PU MERISKIN(R-231)', 68, 5, 1),
('A067-RAK24-2024', 'PU MERISKIN', 385, 5, 1),
('A068-RAK24-2024', 'PU MERISKIN R-231', 68, 5, 1),
('A069-RAK24-2024', 'MESH BRODO', 530, 5, 1),
('A070-RAK24-2024', 'NYLON+STICKER', 50, 5, 1),
('A071-RAK24-2024', 'PU TECHNO', 18, 5, 1),
('A072-RAK30-2024', 'POLYPAG+HOTMEL 54\"', 320, 5, 1),
('A073-RAK30-2024', 'HEAVY NYLEX+HOTMEL 54\"', 100, 5, 1),
('A074-RAK30-2024', 'PU ROXANE', 39, 5, 1),
('A075-RAK01-2024', 'SUPERTUFF+STICKER', 200, 5, 1),
('A076-RAK01-2024', 'MERABON 54\"', 900, 5, 1),
('A077-RAK01-2024', 'QUINTEX+STICKER', 400, 5, 1),
('A078-RAK02-2024', 'VISATERY', 1990, 5, 1),
('A079-RAK03-2024', 'SANWICH FOAM', 180, 5, 1),
('A080-RAK03-2024', 'PU+MERABON', 25, 5, 1),
('A081-RAK05-2024', 'HY 7237(DOUBLE SLIDE)', 800, 5, 1),
('A082-RAK05-2024', 'TUFLEX 1MM', 100, 5, 1),
('A083-RAK05-2024', 'TUFLEX 0,6MM', 200, 5, 1),
('A084-RAK05-2024', 'TFL 310C 1MM', 180, 12, 1),
('A085-RAK05-2024', 'TFL 310C 0,6MM', 182, 12, 1),
('A086-RAK05-2024', 'EFL 060', 50, 12, 1),
('A087-RAK20-2024', 'TPU 0,7MM', 138, 5, 1),
('A088-RAK20-2024', 'TPU 1MM', 20, 5, 1),
('A089-RAK20-2024', 'UKS 1MM', 100, 5, 1),
('A090-RAK05-2024', 'CHEMISHEET 1,5MM', 150, 5, 1),
('A091-RAK05-2024', 'SH-18 8MM', 611, 5, 1),
('A092-RAK05-2024', 'SH-18 2MM', 450, 5, 1),
('A093-RAK05-2024', 'SH-18 4MM', 70, 5, 1),
('A094-RAK05-2024', 'SH-18 10MM', 38, 5, 1),
('A095-RAK05-2024', 'SH-18 12MM', 21, 5, 1),
('A096-RAK05-2024', 'SH-18 5MM', 197, 5, 1),
('A097-RAK05-2024', 'VS705 0,5MM', 661, 5, 1),
('A098-RAK05-2024', 'VS 703 0,3MM', 551, 5, 1),
('A099-RAK05-2024', 'PU WAJIK 1,4MM', 0, 5, 1),
('A100-RAK05-2024', 'PU SYNTHETYC 1,3MM DE-107', 71, 5, 1),
('A101-RAK05-2024', 'DN 93231 54\"', 0, 5, 1),
('A102-RAK05-2024', 'DN 93231 52\"', 0, 5, 1),
('A103-RAK05-2024', 'TC WHT+2MM FOAM WHT+MERY MESH WHT', 200, 12, 1),
('A104-RAK05-2024', 'LYCRA BLK+MESH BRODO BLK', 200, 12, 1),
('A105-RAK13-2024', 'NOSO', 4, 12, 1),
('A106-RAK13-2024', 'SUPERSPAN+FOAM BLUE 2MM', 25, 12, 1),
('A107-RAK13-2024', 'FISHNET', 15, 12, 1),
('A108-RAK13-2024', 'SUPERSPAN+HOTMEL', 45, 12, 1),
('A109-RAK13-2024', 'PU SYNTHETYC', 2, 12, 1),
('A110-RAK13-2024', 'CANDEZA AR-72', 50, 12, 1),
('A111-RAK13-2024', 'PU SYNTHETYC SERGE', 55, 12, 1),
('A112-RAK13-2024', 'MESH JEPANG', 900, 12, 1),
('A113-RAK13-2024', 'SN-2 02X44', 153, 12, 1),
('A114-RAK13-2024', 'NAPPA SOCCER', 189, 10, 1),
('A115-RAK13-2024', 'PU SYNTHETYC R-231', 200, 5, 1),
('A116-RAK13-2024', 'ENAMEL', 10, 5, 1),
('A117-RAK13-2024', 'HEAVYNILEX+FA 7100 100UM 54\"', 82, 5, 1),
('A118-RAK13-2024', 'TRICOT WHT+2MM FOAM WHT+POLYPAG WHT', 113, 12, 1),
('A119-RAK13-2024', 'TRICOT WHT+5MM FOAM WHT+YHS 266 WHT', 25, 12, 1),
('A120-RAK13-2024', '4MM SMARFOAM+MERRY MESH BLACK', 80, 12, 1),
('A121-RAK13-2024', '4MM SMARFOAM+MERRY MESH NAVY', 37, 12, 1),
('A122-RAK13-2024', 'PU 1,3X54\" ROXANE', 0, 12, 1),
('A123-RAK13-2024', 'MERISKIN 0,8X54\" DE-7', 0, 12, 1),
('A124-RAK13-2024', 'MERISKIN 0,8X54\" AR-181', 0, 12, 1),
('A125-RAK13-2024', 'TRICOT WHT+2MM FOAM+TRICOT WHT', 0, 12, 1),
('A126-RAK13-2024', 'TRICOT WHITE+2MM FOAM+MERRY MESH WHITE', 0, 12, 1),
('A127-RAK13-2024', '2MM FOAM WHITE+QUINTEX WHITE', 0, 12, 1),
('A128-RAK13-2024', 'POLYPAG BLACK+SUPERTABE', 0, 12, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(15) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `user_id`, `barang_id`, `jumlah_keluar`, `tanggal_keluar`) VALUES
('T-BK-24062100001', 1, 'A112-RAK13-2024', 79, '2024-05-03'),
('T-BK-24062100002', 1, 'A014-RAK09-2024', 87, '2024-05-03'),
('T-BK-24062100003', 1, 'A020-RAK10-2024', 100, '2024-05-03'),
('T-BK-24062100004', 1, 'A100-RAK05-2024', 12, '2024-05-03'),
('T-BK-24062100005', 1, 'A066-RAK24-2024', 82, '2024-05-03'),
('T-BK-24062100006', 1, 'A098-RAK05-2024', 2, '2024-05-06'),
('T-BK-24062100007', 1, 'A041-RAK15-2024', 30, '2024-05-06'),
('T-BK-24062100008', 1, 'A092-RAK05-2024', 220, '2024-05-06'),
('T-BK-24062100009', 1, 'A019-RAK10-2024', 200, '2024-05-06'),
('T-BK-24062100010', 1, 'A017-RAK10-2024', 230, '2024-06-06');

--
-- Trigger `barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `update_stok_keluar` BEFORE INSERT ON `barang_keluar` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` char(16) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(15) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `supplier_id`, `user_id`, `barang_id`, `jumlah_masuk`, `tanggal_masuk`) VALUES
('T-BM-24062100001', 2, 1, 'A092-RAK05-2024', 85, '2024-05-03'),
('T-BM-24062100002', 2, 1, 'A094-RAK05-2024', 11, '2024-05-03'),
('T-BM-24062100003', 2, 1, 'A113-RAK13-2024', 51, '2024-05-03'),
('T-BM-24062100004', 2, 1, 'A113-RAK13-2024', 102, '2024-05-03'),
('T-BM-24062100005', 11, 1, 'A114-RAK13-2024', 189, '2024-05-03'),
('T-BM-24062100006', 12, 1, 'A117-RAK13-2024', 82, '2024-05-08'),
('T-BM-24062100007', 13, 1, 'A118-RAK13-2024', 113, '2024-05-08'),
('T-BM-24062100008', 13, 1, 'A119-RAK13-2024', 25, '2024-05-08'),
('T-BM-24062100009', 13, 1, 'A120-RAK13-2024', 80, '2024-05-08'),
('T-BM-24062100010', 13, 1, 'A121-RAK13-2024', 37, '2024-05-08'),
('T-BM-24062100011', 6, 1, 'A100-RAK05-2024', 72, '2024-05-10');

--
-- Trigger `barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `update_stok_masuk` BEFORE INSERT ON `barang_masuk` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + NEW.jumlah_masuk WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Kain'),
(2, 'Label'),
(3, 'Tali'),
(4, 'Perlengkapan'),
(5, 'Benang'),
(6, 'Chemical'),
(7, 'Box');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Unit'),
(2, 'Pack'),
(3, 'Botol'),
(5, 'Yard'),
(6, 'Pcs'),
(7, 'Ltr'),
(8, 'Kg'),
(9, 'Set'),
(10, 'SF'),
(11, 'Rim'),
(12, 'Mtr'),
(13, 'Cm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
(1, 'PT. Fujitex Central Indonesia', '085777744300', 'Jl. Raya Rancaekek Majalaya, Kp. Solokan Garut no 297, Kec. Solokanjeruk, Kab. Bandung, Jawa Barat'),
(2, 'PT. Serim Indonesia', '0215462736', 'Jl. Raya Legok, Karawaci rt 001 rw 003, Cijantra Pagedangan, Kab. Tangerang, Banten'),
(3, 'PT. Indo Dong Ah Chemical', '0215994979', 'Jl. Millenium Raya Blok F1 No1, Peusar, Panongan, Kab. Tangerang 15711'),
(4, 'PT. Kum Kang Tech Indonesia', '02159400779', 'Jl. Raya Serang Km. 18.8 Kav 8A, Desa Sukanegara, Kec. Cikupa, Tangerang 15710'),
(5, 'PT. Sung Dong Il Plastik', '02159400170', 'Jl. Raya Serang Km 18,8 Kawasan Industri Purati Kencana Alam Kav.16, Cikupa, Tangerang - Banten'),
(6, 'PT. Kindo Makmur Jaya', '02132600003', 'Jl. Pangkalan II Rt 003/02, Cikiwul, Bantar Gebang, Bekasi'),
(7, 'PT. Sun Tex Indonesia', '02159491814', 'Kp. Ciakar Rt 01 Rw 01, Kec. Panongan No.2, Tangerang 15710, Banten - Indonesia'),
(8, 'PT. Su Indonesia', '0215972370', 'Jl. Raya Mauk KM. 7, Desa Karet 15520, Sepatan - Tangerang'),
(9, 'Hanyoung Indonesia', '02130029451', 'jalan Beber, Blok Kasin Desa Beusi, Kec. Ligung, Kab. Majalengka - Jawa Barat'),
(10, 'PT. Heksatex Indah', '0226673888', 'Jl. Nanjung KM 2, Kampung Mencut Desa Legadar, Bandung 40216'),
(11, 'Kulit Prima', '0225407976', 'Jl. Cibaduyut No.74, Cibaduyut, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat 40238'),
(12, 'PT. Assems Indo', '02159955630', 'Kadu Agung, Kec. Tigaraksa, Kabupaten Tangerang, Banten 15720'),
(13, 'PT. Indomega Citra Lestari', '0215901953', 'Jl. Industri Raya II Blok M No.2, RT.001/RW.003, Pasir Jaya, Kec. Jatiuwung, Kota Tangerang, Banten 15135');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(1, 'Purchasing', 'admin', 'admin@admin.com', '025123456789', 'admin', '$2y$10$wMgi9s3FEDEPEU6dEmbp8eAAEBUXIXUy3np3ND2Oih.MOY.q/Kpoy', 1568689561, '374b530c90f34fbd22d5b9127bf8f087.png', 1),
(2, 'Muhamad Ainudin', 'ainudin', 'ainudin@gmail.com', '081221528805', 'gudang', '$2y$10$5es8WhFQj8xCmrhDtH86Fu71j97og9f8aR4T22soa7716kAusmaeK', 1568691611, 'user.png', 1),
(3, 'Devi Silvia', 'devi', 'devi@gmail.com', '085697442673', 'gudang', '$2y$10$5SGUIbRyEXH7JslhtEegEOpp6cvxtK6X.qdiQ1eZR7nd0RZjjx3qe', 1568691629, 'user.png', 0),
(4, 'Dewi Yulianingsih', 'dewi', 'dewi@gmail.com', '081623123181', 'gudang', '$2y$10$/QpTunAD9alBV5NSRJ7ytupS2ibUrbmS3ia3u5B26H6f3mCjOD92W', 1569192547, 'user.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `satuan_id` (`satuan_id`),
  ADD KEY `kategori_id` (`jenis_id`);

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
