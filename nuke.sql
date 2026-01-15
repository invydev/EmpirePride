-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2024 pada 17.29
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
-- Database: `nuke`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `nama_pengguna_admin` varchar(255) NOT NULL,
  `kata_sandi_admin` text NOT NULL,
  `pin_admin` text NOT NULL,
  `kode_admin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `nama_pengguna_admin`, `kata_sandi_admin`, `pin_admin`, `kode_admin`) VALUES
(4, 'digitel12', 'digitel12', '$2y$12$6PLO2wLyuro3DN7GwIFOduSG8dSPjm8IuC8pYwt3u4.1vc84B7OQ.', '$2y$12$9Io89ty4mly8/JmtAq5f9.xbFmpXCCoKLPAS5MRV6cKccVFsK8I7C', 'dMj2WuTl84ClSfvn09Kw');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `refferal` text DEFAULT NULL,
  `nama_pengguna_anggota` varchar(255) NOT NULL,
  `kata_sandi_anggota` varchar(255) NOT NULL,
  `email_anggota` varchar(255) NOT NULL,
  `telepon_anggota` varchar(255) NOT NULL,
  `bank_anggota` varchar(255) NOT NULL,
  `nama_rekening_anggota` varchar(255) NOT NULL,
  `nomor_rekening_anggota` varchar(255) NOT NULL,
  `saldo_anggota` varchar(255) NOT NULL DEFAULT '0',
  `kyc_anggota` text DEFAULT NULL,
  `statusverif` text DEFAULT NULL,
  `status_anggota` enum('aktif','terkunci') NOT NULL DEFAULT 'aktif',
  `status_game` enum('Aktif','Tidak Aktif') DEFAULT 'Tidak Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `refferal`, `nama_pengguna_anggota`, `kata_sandi_anggota`, `email_anggota`, `telepon_anggota`, `bank_anggota`, `nama_rekening_anggota`, `nomor_rekening_anggota`, `saldo_anggota`, `kyc_anggota`, `statusverif`, `status_anggota`, `status_game`) VALUES
(1, '', 'digitel123', '$2y$10$dZyaXGo6bp2uQWziyaUtjOWk2i/kR5T0/oNiRvOzO88tyBoeEzRsO', 'akpawkdoawkd@k.k', '123123123123', 'BCA', 'awdawdawdawd', '12312312311', '30520', NULL, NULL, 'aktif', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `gambar_bank` text NOT NULL,
  `jenis_bank` varchar(255) NOT NULL,
  `atas_nama_bank` varchar(255) NOT NULL,
  `nomor_rekening_bank` varchar(255) NOT NULL,
  `status_bank` enum('aktif','tidak aktif') NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `gambar_bank`, `jenis_bank`, `atas_nama_bank`, `nomor_rekening_bank`, `status_bank`) VALUES
(9, '7834974036_img_3284.gif', 'BCA', 'SARNAH', '8681314741', 'aktif'),
(10, '7457973775_img_3285.gif', 'MANDIRI', 'DANIL GUNAWAN', '1550009842512', 'aktif'),
(11, '9407269179_img_3286.gif', 'BNI', 'DANIL GUNAWAN', '1228689357', 'aktif'),
(12, '9888558402_img_3287.gif', 'BRI', 'SARNAH', '748601004427500', 'aktif'),
(13, '2918665875_img_3288.gif', 'DANA', 'RISKY SANTA GUNAWAN', '088213885783', 'aktif'),
(14, '3664218193_img_3289.gif', 'OVO', 'RISKY SANTA GUNAWAN', '088213885783', 'aktif'),
(15, '9178331165_img_3290.gif', 'GOPAY', 'SARNAH', '085333507964', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bonus`
--

CREATE TABLE `bonus` (
  `id_bonus` int(11) NOT NULL,
  `judul_bonus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukti_jp`
--

CREATE TABLE `bukti_jp` (
  `id_bukti_jp` int(11) NOT NULL,
  `judul_bukti_jp` varchar(255) NOT NULL,
  `deskripsi_bukti_jp` text NOT NULL,
  `gambar_bukti_jp` text NOT NULL,
  `tanggal_bukti_jp` date NOT NULL,
  `link_bukti_jp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bukti_jp`
--

INSERT INTO `bukti_jp` (`id_bukti_jp`, `judul_bukti_jp`, `deskripsi_bukti_jp`, `gambar_bukti_jp`, `tanggal_bukti_jp`, `link_bukti_jp`) VALUES
(1, 'Bukti JP', 'Deskripsi Bukti JP 1', '5352159249_screenshot_2024-06-21_115616.png', '2024-06-21', 'https://replay.pragmaticplay.net/g08Ronrjbp?utm_mediuM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposit`
--

CREATE TABLE `deposit` (
  `id_deposit` int(11) NOT NULL,
  `id_anggota_deposit` int(11) NOT NULL,
  `kode_deposit` varchar(255) NOT NULL,
  `nama_pengguna_anggota_deposit` varchar(255) NOT NULL,
  `asal_deposit` varchar(255) NOT NULL,
  `tujuan_deposit` varchar(255) NOT NULL,
  `bonus_deposit` varchar(255) NOT NULL,
  `jumlah_deposit` int(11) NOT NULL,
  `tanggal_deposit` datetime NOT NULL,
  `status_deposit` enum('diproses','dibatalkan','disetujui') NOT NULL DEFAULT 'diproses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `deposit`
--

INSERT INTO `deposit` (`id_deposit`, `id_anggota_deposit`, `kode_deposit`, `nama_pengguna_anggota_deposit`, `asal_deposit`, `tujuan_deposit`, `bonus_deposit`, `jumlah_deposit`, `tanggal_deposit`, `status_deposit`) VALUES
(4, 1, '', 'digitel123', 'BCA - awdawdawdawd - 12312312311', 'MANDIRI - DANIL GUNAWAN - 1550009842512', '', 25000, '2024-11-19 21:43:32', 'disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `floating`
--

CREATE TABLE `floating` (
  `id_floating` int(11) NOT NULL,
  `nama_floating` varchar(255) NOT NULL,
  `link_floating` varchar(255) DEFAULT NULL,
  `gambar_floating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `floating`
--

INSERT INTO `floating` (`id_floating`, `nama_floating`, `link_floating`, `gambar_floating`) VALUES
(1, 'WHATSAPP', 'https://wa.me/6288213885783', '8962380621_img_3217.gif'),
(2, 'TELEGRAM', 'https://t.me/lingkarbet', '6776013388_img_3219.gif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `games`
--

CREATE TABLE `games` (
  `cuid` int(255) NOT NULL,
  `provider` text NOT NULL,
  `image` text NOT NULL,
  `gameidnumeric` longtext NOT NULL,
  `gameid` text NOT NULL,
  `gamename` text NOT NULL,
  `link_demo` varchar(500) DEFAULT NULL,
  `gametypeid` text NOT NULL,
  `category` text NOT NULL,
  `technology` text NOT NULL,
  `platform` text NOT NULL,
  `demogame` text NOT NULL,
  `aspectratio` text NOT NULL,
  `technologyid` text NOT NULL,
  `jurisdictions` text NOT NULL,
  `frbavailable` text NOT NULL,
  `datatype` text NOT NULL,
  `features` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `games`
--

INSERT INTO `games` (`cuid`, `provider`, `image`, `gameidnumeric`, `gameid`, `gamename`, `link_demo`, `gametypeid`, `category`, `technology`, `platform`, `demogame`, `aspectratio`, `technologyid`, `jurisdictions`, `frbavailable`, `datatype`, `features`) VALUES
(1, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Gates of Olympus.png', '1605284987', 'vs20olympgate', 'Gates of Olympus', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&amp;cur=IDR&amp;gameSymbol=vs20olympgate&amp;websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&amp;jurisdiction=99&amp;lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,X1,IT,UA,MT,RO,EE,DE,IM,GR,LV,GG,ZA,99,UK,CO,BG,ES,NL,LT,DK,SE,PT,66,CH,IE,ON,BY,CZ,NO,AT,BE', '1', 'RNG', 'ANTE,BUY'),
(2, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Starlight Princess.png', '1588845613', 'vswaysdogs', 'Starlight Princess\n', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20starlight&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,IT,SE,GG,ES,LT,RS,UK,DK,EE,PT,99,LV,DE,CO,GR,BG,RO,IM,ZA,66,X1,UA,NL,CH,IE,CZ,BY,ON,AT,BE', '1', 'RNG', 'BUY'),
(3, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Sweet Bonanza.png', '1625837214', 'vs20starlight', 'Sweet Bonanza', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fruitsw&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,RO,66,RS,UA,DE,GR,LT,PT,99,EE,GG,IT,UK,DK,CO,X1,LV,ZA,MT,SE,ES,BG,IE,BY,ON,NL,AT,NO,BE', '1', 'RNG', 'ANTE,BUY'),
(5, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Sweet Bonanza 1000.png', '1551185482', 'vs20fruitsw', 'Sweet Bonanza 1000', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20fruitswx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DE,GR,EE,UK,IM,LT,RS,MT,DK,IT,LV,99,PT,RO,ES,SE,BY,GG,BG,ZA,CO,X1,UA,NL,66,CH,IE,ON,CZ,NO,AT,BE', '1', 'RNG', 'ANTE,BUY'),
(6, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Gates of Olympus 1000.png', '1579880805', 'vs40wildwest', 'Gates of Olympus 1000', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20olympx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fid%2F&lang=ID&cur=IDR\"', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,DK,RO,SE,LV,CO,PT,IT,99,GG,MT,BG,RS,ES,EE,IM,UK,DE,GR,NL,ZA,X1,UA,66,CH,IE,ON,BY,CZ,AT,BE', '1', 'RNG', 'BUY'),
(7, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Sugar Rush 1000.png', '1613654675', 'vswayslions', 'Sugar Rush 1000', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sugarrushx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,ES,DK,LV,PT,IT,SE,X1,LT,CO,ZA,99,RS,IM,RO,UK,EE,MT,GR,66,DE,GG,UA,IE,BY,ON,NL,BE', '1', 'RNG', 'ANTE,BUY'),
(8, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Starlight Princess 1000.png', '1547739735', 'vs20doghouse', 'Starlight Princess 1000\n\n', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20starlight&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,DE,IM,SE,99,EE,BG,ES,UK,RS,DK,IT,PT,LV,BY,GG,MT,LT,RO,ZA,UA,NL,66,CH,IE,ON,CZ,NO,X1,AT,BE', '1', 'RNG', ''),
(9, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Gates of Gatot Kaca 1000.png', '1570610572', 'vs20sbxmas', 'Gates of Gatot Kaca 1000', 'https://d3pvfi6m7bxu71.cloudfront.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20gatotx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,DE,BG,99,DK,RO,PT,SE,GG,CO,EE,LV,IT,ES,MT,IM,UK,RS,LT,ZA,X1,UA,NL,66,CH,IE,CZ,BY,ON,BE', '1', 'RNG', 'ANTE,BUY'),
(10, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Sugar Rush.png', '1516626484', 'vs5aztecgems', 'Sugar Rush', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sugarrush&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,IT,SE,RO,LV,PT,BG,99,GG,ES,LT,IM,RS,CO,MT,UK,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(11, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Aztec Gems.png', '1505815201', 'vs25pandagold', 'Aztec Gems', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5aztecgems&lang=en&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,RS,ES,CO,IT,GG,RO,LT,PT,IM,UK,EE,SE,99,LV,MT,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(12, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Mahjong Wins Bonus.png', '1582290630', 'vswaysrhino', 'Mahjong Wins Bonus', 'https://d3pvfi6m7bxu71.cloudfront.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs1024mahjwins&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,GG,99,SE,LT,GR,RO,RS,IT,MT,LV,UK,EE,ES,DE,CO,PT,BG,DK,NL,ZA,66,X1,UA,CH,IE,BY,ON,CZ,BE', '1', 'RNG', 'ANTE,BUY'),
(13, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Sweet Bonanza Xmas.png', '1628690435', 'vs20pbonanza', 'Sweet Bonanza Xmas', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sbxmas&&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'ANTE,BUY'),
(14, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Pyramid Bonanza.png', '1606496748', 'vswayshammthor', 'Pyramid Bonanza', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20pbonanza&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'NL,DK,SE,PT,ES,LT,BG,UA,66,CO,X1,IT,99,MT,EE,DE,GR,LV,RO,UK,ZA,GG,IM,RS,CH,IE,ON,BY,CZ,BE', '1', 'RNG', 'BUY'),
(17, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Rujak Bonanza.png', '1626782528', 'vs20amuleteg', 'Rujak Bonanza\n\n', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/html5Game.do?extGame=1&symbol=vs20rujakbnz&gname=Rujak%20Bonanza&jurisdictionID=99&mgckey=stylename@generic~SESSION@253f6241-55ac-4a27-b67c-765ae61533f3', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,LT,X1,DE,LV,ES,IT,DK,BG,66,99,EE,GG,GR,IM,MT,RO,RS,UA,UK,ZA,PT,SE,IE,NL,ON,BY,BE', '1', 'RNG', ''),
(18, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/5 Lions Megaways.png', '1599482900', 'vs20midas', '5 Lions Megaways', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayslions&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,DK,PT,CO,BG,RO,EE,GG,RS,MT,UK,ZA,IM,LV,GR,99,DE,SE,IT,ES,X1,UA,NL,66,CH,IE,CZ,BY,ON,BE', '1', 'RNG', 'ANTE,BUY'),
(19, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Mahjong Wins.png', '1549294581', 'vs243caishien', 'Mahjong Wins', 'https://demogamesfree.jtmmizms.net/gs2c/openGame.do?gameSymbol=vs1024mahjwins&lang=id&cur=IDR&lobbyUrl=https:%2F%2Fplaybook-star.xyz%2Fcallback?redirect=%2Fdashboard&info=Mengalihkan%20anda%20ke%20halaman%20dashboard&stylename=nkg4_nukegaming4&jurisdiction=99&isGameUrlApiCalled=true', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,PT,BG,ES,IM,GG,RS,LV,EE,IT,DK,99,CO,UK,SE,MT,RO,ZA,X1,GR,DE,UA,66,IE,BE', '1', 'RNG', ''),
(20, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Bonanza Gold.png', '1612433442', 'vs25hotfiesta', 'Bonanza Gold', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20bonzgold&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,DK,PT,LT,UA,EE,GG,UK,GR,IM,MT,99,DE,66,ZA,RS,LV,RO,X1,BG,CO,ES,IT,IE,NL,BE', '1', 'RNG', 'ANTE,BUY'),
(21, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Wisdom of Athena.png', '1643285988', 'vswayswildwest', 'Wisdom of Athena', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20procount&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,GR,IE,IM,RO,RS,UA,UK,ZA,MT,NL,SE,PT,IT,X1,LT,CO,ON,DK,LV,ES,BG,BY,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(22, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Sumo Supreme Megaways.png', '1622710851', 'vs12bbb', 'Sumo Supreme Megaways', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysmegwghts&lang=EN&cur=USD&jurisdiction=99', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ES,SE,PT,LV,X1,BG,IT,LT,CO,RS,GG,GR,UK,EE,UA,MT,IM,RO,ZA,66,DE,99,DK,IE,BY,ON,NL,AT,BE', '1', 'RNG', ''),
(23, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Money Stacks.png', '1610109843', 'vswaysbufking', 'Money Stacks', 'https://demogamesfree.pragmaticplay.net/gs2c/html5Game.do?extGame=1&symbol=vs10mmm&gname=Magic%20Money%20Maze&jurisdictionID=99&mgckey=stylename@generic~SESSION@54449bdf-5780-455f-8d1c-91babdb48fda', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'NL,BG,X1,CO,IT,PT,SE,UA,LT,LV,ES,GG,RS,66,EE,GR,UK,MT,RO,ZA,99,IM,DE,DK,CH,IE,ON,CZ,BY,AT,BE', '1', 'RNG', 'ANTE,BUY'),
(24, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Bow of Artemis.png', '1608220623', 'vs10floatdrg', 'Bow of Artemis', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20gembondx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UA,LT,DK,ZA,99,GG,66,DE,RS,EE,MT,RO,UK,IM,LV,GR,CO,X1,BG,ES,PT,SE,IT,IE,BY,ON,NL,AT,BE', '1', 'RNG', ''),
(25, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Joker\'s Jewels Hot.png', '1617195325', 'vswayssamurai', 'Joker\'s Jewels Hot', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5jjwild&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,GG,99,LV,PT,ES,UA,EE,LT,GR,IT,SE,RO,DE,IM,MT,RS,BG,ZA,DK,UK,IE,ON,BE', '1', 'RNG', 'ANTE,BUY'),
(26, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Hot To Burn Multiplier.png', '1587971999', 'vs9aztecgemsdx', 'Hot To Burn Multiplier', 'https://demogamesfree.pragmaticplay.net/gs2c/html5Game.do?extGame=1&symbol=vs40hotburnx&gname=Hot%20To%20Burn%20Extreme&jurisdictionID=99&mgckey=stylename@generic~SESSION@f8001c12-977f-4a76-aa9b-db591e6fe828', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,ES,GG,BG,LT,PT,EE,UK,LV,RO,IT,SE,MT,RS,99,DK,IM,GR,DE,NL,ZA,66,X1,UA,CH,IE,BY,CZ,BE', '1', 'RNG', ''),
(27, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Sugar Rush Xmas.png', '1570091142', 'vs4096bufking', 'Sugar Rush Xmas', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sugarrush&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,EE,GR,RO,RS,DK,GG,BG,PT,LT,IT,LV,UK,DE,SE,CO,MT,99,ES,NL,ZA,X1,UA,66,CH,IE,CZ,ON,BY,BE', '1', 'RNG', ''),
(28, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Candy Jar Clusters.png', '1611673947', 'vs25pandatemple', 'Candy Jar Clusters', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20cjcluster&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,RO,LV,ZA,IM,RS,GG,UK,66,99,MT,DE,GR,UA,ES,X1,SE,IT,LT,CO,PT,DK,BG,IE,BE', '1', 'RNG', ''),
(29, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Big Bass Crash.png', '1629126516', 'vs10chkchase', 'Big Bass Crash', 'https://demogamesfree.pragmaticplay.net/gs2c/html5Game.do?extGame=1&symbol=vs10bxmasbnza&gname=Christmas%20Big%20Bass%20Bonanza&jurisdictionID=99&lobbyUrl=https%3A%2F%2Fwww.pragmaticplay.com&mgckey=stylename@generic~SESSION@8999cb44-47cc-41d3-b4bd-9d74fc16fd8a', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UK,DE,PT,LT,UA,99,IT,X1,ZA,DK,EE,BG,GG,RO,ES,GR,RS,66,IE,LV,MT,IM,NL,CO,SE,BY,BE', '1', 'RNG', ''),
(30, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Money Money Money.png', '1635781496', 'vs20mustanggld2', 'Money Money Money', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/html5Game.do?extGame=1&symbol=vswaysmoneyman&gname=The%20Money%20Men%20Megaways&jurisdictionID=99&mgckey=stylename@generic~SESSION@0ecb9a6d-1b42-40dc-824b-00249f0d2b19', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,ES,IT,BG,NL,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,LT,CO,DK,SE,X1,PT,BY,BE', '1', 'RNG', ''),
(31, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Cyclops Smash.png', '1639576365', 'vs20drtgold', 'Cyclops Smash', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20earthquake&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,IE,RO,DE,IM,GG,CO,RS,EE,IT,LT,99,NL,BG,GR,LV,MT,PT,ZA,SE,UK,66,UA,X1,ES,BY,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE'),
(32, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/5 Frozen Charms Megaways.png', '1640357295', 'vs10spiritadv', '5 Frozen Charms Megaways', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayscharms&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,PT,NL,SE,LT,LV,BG,ON,ES,GR,DK,X1,CO,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BY,BE', '1', 'RNG', 'BUY'),
(33, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Triple Tigers.png', '1642089410', 'vs10firestrike2', 'Triple Tigers', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs1tigers&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ON,SE,GR,LT,ES,BG,IT,NL,CO,DK,X1,PT,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(34, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Gravity Bonanza.png', '1629274598', 'vs40cleoeye', 'Gravity Bonanza', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20gravity&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,ES,SE,X1,CO,66,99,DE,EE,GG,GR,IE,IM,LV,MT,RO,RS,UA,UK,ZA,LT,ON,IT,BG,NL,PT,BY,BE', '1', 'RNG', ''),
(35, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Irish Charms.png', '1607600080', 'vs20hburnhs', 'Irish Charms', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=cs3irishcharms&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,UA,BG,DK,LT,CO,SE,PT,X1,ES,NL,EE,LV,MT,99,GG,GR,IM,UK,DE,RO,RS,ZA,66,CH,IE,CZ,BE', '1', 'RNG', ''),
(36, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Buffalo King.png', '1629217485', 'vs10bxmasbnza', 'Buffalo King', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs4096bufking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,DK,GR,PT,RO,ZA,IM,RS,EE,99,LV,MT,DE,GG,UA,UK,IT,NL,SE,IE,X1,CO,LT,BG,ES,ON,BE', '1', 'RNG', 'BUY'),
(37, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/The Hand of Midas.png', '1604413074', 'vswaysmadame', 'The Hand of Midas', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20midas&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,BG,CO,IT,NL,GR,MT,ZA,UK,IM,99,DE,LV,GG,RO,RS,EE,LT,ES,SE,DK,66,X1,UA,CH,IE,BY,CZ,ON,AT,BE', '1', 'RNG', 'ANTE,BUY'),
(38, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Mysterious Egypt.png', '1622711664', 'vs4096magician', 'Mysterious Egypt', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10wildtut&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,CO,IT,X1,DK,ES,IE,66,99,DE,EE,GG,GR,IM,LV,MT,RO,RS,UA,UK,ZA,NL,PT,SE,BG,LT,BE', '1', 'RNG', 'BUY'),
(39, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Fire Hot 100.png', '1636618208', 'vs20farmfest', 'Fire Hot 100', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs100firehot&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UK,EE,IT,PT,GR,RO,SE,ZA,99,BG,GG,IE,NL,X1,66,DE,ES,DK,RS,LV,IM,CO,MT,LT,UA,BY,BE', '1', 'RNG', 'BUY'),
(40, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Great Lagoon.png', '1635519094', 'vs243queenie', 'Great Lagoon', 'https://demogamesfree.pragmaticplay.net/gs2c/html5Game.do?extGame=1&symbol=vs25lagoon&gname=Great%20Lagoon&jurisdictionID=99&lobbyUrl=https%3A%2F%2Fclienthub.pragmaticplay.com%2Fslots%2Fgame-library%2F&mgckey=stylename@generic~SESSION@bc70161d-7c95-455d-9659-ee6c8f7c2fff', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,SE,UK,X1,PT,CO,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,ZA,DK,LT,IT,NL,ES,LV,ON,BE', '1', 'RNG', ''),
(41, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Cash Patrol.png', '1639484771', 'vs243discolady', 'Cash Patrol', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25copsrobbers&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(42, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Barn Festival.png', '1636445187', 'vs10tictac', 'Barn Festival', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20farmfest&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,CO,LV,BG,PT,X1,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LT,IT,ES,NL,BE', '1', 'RNG', 'BUY'),
(43, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Pot of Fortune.png', '1640249257', 'vs20rainbowg', 'Pot of Fortune', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20stckwldsc&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,DK,UK,IT,RO,BG,ES,LT,LV,RS,SE,GR,MT,EE,IM,DE,CO,GG,IE,ZA,X1,NL,UA,66,99,BE', '1', 'RNG', 'ANTE'),
(44, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Lucky New Year - Tiger Treasures.png', '1636465504', 'vs10snakeladd', 'Lucky New Year - Tiger Treasures', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25tigeryear&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,DE,LV,GG,IE,EE,GR,99,66,UK,ZA,IM,MT,RO,RS,UA,BG,CO,LT,X1,IT,DK,ES,PT,NL,SE,BE', '1', 'RNG', ''),
(46, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Rock Vegas.png', '1563973373', 'vs10firestrike', 'Rock Vegas', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20rockvegas&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,LT,RO,GG,MT,SE,99,LV,IT,IM,RS,GR,DK,EE,ES,CO,UK,BY,BG,DE,ZA,X1,UA,NL,66,CH,IE,CZ,BE', '1', 'RNG', ''),
(47, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Crank it Up.png', '1598517644', 'vs20xmascarol', 'Crank it Up', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20rockvegas&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ZA,GR,DE,99,MT,EE,RS,IM,GG,LV,UK,LT,RO,SE,ES,DK,IT,CO,BG,PT,X1,NL,UA,66,CH,IE,CZ,BY,ON,BE', '1', 'RNG', 'ANTE,BUY'),
(48, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/The Red Queen.png', '1573553476', 'vs7776aztec', 'The Red Queen', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysredqueen&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UK,RS,LT,IT,99,MT,DK,LV,GG,ES,IM,CO,PT,EE,BG,RO,GR,DE,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(49, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Big Bass - Secrets of the Golden Lake.png', '1627560139', 'vswaysxjuicy', 'Big Bass - Secrets of the Golden Lake', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10bblotgl&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,LV,DK,IT,SE,ES,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,X1,CO,NL,BG,LT,PT,BE', '1', 'RNG', 'ANTE,BUY'),
(50, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Fruits of the Amazon.png', '1595225976', 'vs20goldfever', 'Fruits of the Amazon', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,EE,GG,IM,RS,DK,RO,DE,GR,99,MT,SE,UK,CO,ZA,BG,ES,LT,LV,PT,X1,UA,NL,66,CH,IE,BY,ON,CZ,BE', '1', 'RNG', 'BUY'),
(51, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Grace of Ebisu.png', '1558530830', 'vs25scarabqueen', 'Grace of Ebisu', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,BG,RS,DK,MT,DE,ES,EE,IM,RO,99,BY,LV,SE,GG,GR,UK,LT,PT,CO,ZA,X1,UA,NL,66,CH,IE,ON,CZ,BE,AT', '1', 'RNG', ''),
(52, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Viking Forge.png', '1596025317', 'vs10returndead', 'Viking Forge', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sugarcoins&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,99,CO,IT,SE,EE,RO,ES,MT,LV,UK,GG,IM,LT,PT,BG,RS,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', ''),
(53, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Ancient Egypt.png', '1613724310', 'vswayslight', 'Ancient Egypt', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10egypt&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'X1,CO,DK,PT,BG,SE,EE,GG,MT,IM,RO,99,RS,ZA,DE,GR,UA,UK,66,ES,LV,LT,IT,IE,BY,ON,BE', '1', 'RNG', 'BUY'),
(54, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Wildies.png', '1619783650', 'vs20trsbox', 'Wildies', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25wildies&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,UK,IM,99,GG,RS,66,DE,RO,ZA,MT,UA,EE,ES,PT,BG,DK,LV,CO,X1,IT,LT,SE,IE,BY,ON,NL,BE', '1', 'RNG', 'BUY'),
(55, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Master Chen\'s Fortune.png', '1621807754', 'vs25goldparty', 'Master Chen\'s Fortune', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs9chen&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,99,PT,IT,LV,ES,LT,X1,CO,IE,BG,DK,SE,NL,66,DE,EE,GG,GR,IM,MT,RO,RS,UA,UK,ZA,ON,BE', '1', 'RNG', 'BUY'),
(56, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Money Mouse.png', '1520439412', 'vs243lions', 'Money Mouse', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25mmouse&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,IT,UK,SE,RO,GG,CO,BG,EE,IM,LT,LV,RS,MT,PT,DK,ES,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', ''),
(57, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Pyramid King.png', '1617894269', 'vswaysyumyum', 'Pyramid King', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25pyramid&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DE,MT,66,DK,RS,UK,EE,GG,RO,ZA,GR,99,IM,UA,CO,SE,X1,PT,BG,ES,IT,LT,LV,IE,ON,BE', '1', 'RNG', 'BUY'),
(58, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Super Joker.png', '1627630162', 'vs25copsrobbers', 'Super Joker', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5spjoker&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UA,EE,RS,GG,66,RO,UK,ON,LV,MT,99,IM,ZA,X1,IT,LT,CO,ES,DK,DE,BG,GR,SE,PT,IE,NL,BY,BE', '1', 'RNG', ''),
(59, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/Dragon Kingdom.png', '1591953815', 'vs5ultra', 'Dragon Kingdom', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25dragonkingdom&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,EE,GR,RS,GG,LT,SE,LV,PT,MT,DE,BG,RO,DK,IM,ES,CO,UK,IT,ZA,X1,UA,NL,66,CH,IE,BY,CZ,BE', '1', 'RNG', ''),
(61, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs15diamond.png', '1503317712', 'vs15diamond', 'Rise of Giza', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10nudgeit&lang=en&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ES,CO,IM,GG,PT,SE,RS,DK,LT,IT,MT,BG,DE,LV,GR,UK,99,EE,RO,ZA,X1,UA,NL,66,CH,IE,BY,CZ,ON,BE', '1', 'RNG', ''),
(62, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10bbbonanza.png', '1599738017', 'vs10bbbonanza', 'Wild Booster', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20wildboost&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,DE,EE,LV,RS,UK,99,MT,GR,IM,ZA,RO,GG,SE,IT,PT,BG,ES,DK,LT,X1,UA,NL,66,CH,IE,BY,ON,CZ,AT,BE,NO', '1', 'RNG', ''),
(66, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayselements.png', '1633098228', 'vswayselements', 'Bronco Spirit', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs75bronco&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,UA,99,66,GG,DE,MT,ZA,RO,EE,GR,IM,LV,RS,IE,UK,ES,BG,DK,SE,NL,LT,PT,IT,X1,CO,BE', '1', 'RNG', ''),
(67, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10amm.png', '1611903197', 'vs10amm', 'Joker Jewels', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5joker&lang=en&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,UA,IT,PT,BG,DK,SE,X1,CO,ES,NL,LV,RS,UK,66,99,GR,ZA,IM,DE,MT,EE,RO,GG,CH,IE,BY,CZ,ON,BE', '1', 'RNG', ''),
(68, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20bchprty.png', '1634131757', 'vs20bchprty', 'Wild Beach Party', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20bchprty&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,GR,IE,NL,DK,IT,ES,PT,SE,IM,MT,RO,RS,UA,UK,ZA,CO,LV,LT,BG,X1,BY,BE', '1', 'RNG', ''),
(69, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10egyptcls.png', '1537863475', 'vs10egyptcls', 'Ancient Egypt Classic', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10egyptcls&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,DE,ES,IM,EE,LT,GG,BG,SE,DK,LV,RS,RO,PT,CO,MT,99,IT,UK,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(70, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20santawonder.png', '1631020967', 'vs20santawonder', 'Santa&apos;s Wonderland', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20santawonder&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IE,SE,DK,GR,BG,ES,X1,EE,PT,IT,99,DE,IM,RS,UA,LT,LV,MT,UK,ZA,66,GG,NL,CO,RO,BE', '1', 'RNG', 'BUY'),
(71, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20rhino.png', '1521189220', 'vs20rhino', 'Great Rhino', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysrhino&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DE,GR,IM,IT,GG,BY,CO,RS,99,DK,LT,UK,LV,BG,SE,MT,PT,RO,EE,ES,ZA,X1,UA,NL,66,CH,IE,ON,CZ,BE', '1', 'RNG', ''),
(72, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20superx.png', '1623763257', 'vs20superx', 'Super X', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20superx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IE,GG,RS,PT,DK,99,BG,CO,RO,ZA,IT,66,SE,MT,GR,UA,UK,DE,IM,LV,X1,BY,EE,ES,LT,NL,BE', '1', 'RNG', 'SUPER_SPIN'),
(73, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40pirate.png', '1545310716', 'vs40pirate', 'Pirate Gold', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40pirate&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,EE,IM,99,IT,LT,RS,DE,LV,RO,PT,BY,DK,GG,ES,GR,SE,BG,UK,NL,ZA,UA,66,CH,IE,CZ,BE', '1', 'RNG', ''),
(74, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10fruity2.png', '1540818802', 'vs10fruity2', 'Extra Juicy Megaways', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysxjuicy&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,UK,GG,ES,SE,LV,DK,MT,LT,IM,DE,EE,RS,GR,IT,99,PT,RO,ZA,UA,NL,66,CH,IE,BY,ON,CZ,BE', '1', 'RNG', ''),
(75, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20fparty2.png', '1617348645', 'vs20fparty2', 'Fruit Party 2', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fparty2&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ZA,GG,GR,UK,IM,66,RO,EE,RS,99,DE,MT,UA,ES,DK,PT,IT,LT,CO,X1,LV,BG,SE,IE,ON,BY,NL,BE', '1', 'RNG', 'BUY'),
(76, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayscryscav.png', '1628587072', 'vswayscryscav', 'Crystal Caverns Megaways', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayscryscav&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IE,BY,66,PT,UK,IT,IM,NL,99,DK,MT,DE,ES,LV,RS,SE,BG,UA,ZA,CO,EE,GG,GR,LT,RO,X1,BE', '1', 'RNG', 'BUY'),
(77, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10cowgold.png', '1597301701', 'vs10cowgold', 'Cowboys Gold', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10cowgold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,99,LV,RO,RS,UK,GG,IM,MT,ZA,ES,LT,DE,GR,DK,SE,IT,CO,BG,PT,X1,UA,NL,66,CH,IE,BY,CZ,BE', '1', 'RNG', ''),
(78, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs7fire88.png', '1516798686', 'vs7fire88', 'Fire 88', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs7fire88&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,CO,BG,LV,LT,ES,MT,PT,RO,IT,GG,99,UK,RS,SE,EE,NL,ZA,X1,UA,66,CH,IE,BY,BE', '1', 'RNG', ''),
(79, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50juicyfr.png', '1606463130', 'vs50juicyfr', 'Juicy Fruits', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs50juicyfr&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'NL,PT,EE,ZA,DE,IM,UK,RS,RO,GR,LV,GG,MT,BG,CO,X1,IT,UA,ES,LT,DK,66,SE,99,CH,IE,ON,BY,CZ,BE', '1', 'RNG', 'ANTE,BUY'),
(80, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20ultim5.png', '1634561519', 'vs20ultim5', 'The Ultimate 5', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20ultim5&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,GG,RO,GR,IM,99,MT,DE,UK,EE,66,IE,LV,RS,UA,ZA,SE,ES,X1,CO,PT,LT,DK,BG,IT,NL,BE', '1', 'RNG', ''),
(81, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10eyestorm.png', '1602151278', 'vs10eyestorm', 'Eye of the Storm', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10eyestorm&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,DK,CO,ES,IT,BG,PT,LT,EE,MT,UK,GR,RS,RO,IM,LV,ZA,GG,DE,99,X1,UA,NL,66,CH,IE,CZ,BE', '1', 'RNG', ''),
(82, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs243mwarrior.png', '1553615521', 'vs243mwarrior', 'Monkey Warrior', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs243mwarrior&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,GG,PT,IM,EE,BG,CO,ES,UK,IT,MT,RO,LV,LT,RS,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(83, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25mustang.png', '1535445127', 'vs25mustang', 'Mustang Gold', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25mustang&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,BG,MT,SE,LT,DK,BY,PT,99,RO,LV,CO,GG,UK,ES,IM,IT,EE,DE,GR,ZA,X1,UA,NL,66,CH,IE,ON,CZ,BE,AT', '1', 'RNG', ''),
(84, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysstrwild.png', '1650031167', 'vswaysstrwild', 'Candy Stars', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysstrwild&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,DK,EE,GG,GR,IE,IM,LT,LV,NL,PT,RO,RS,SE,UA,UK,ZA,MT,CO,IT,ON,BG,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(85, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs576treasures.png', '1590589403', 'vs576treasures', 'Wild Wild Riches', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs576treasures&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,MT,UK,IM,CO,LV,LT,GG,GR,RS,IT,99,PT,DE,BG,EE,SE,ES,RO,NL,ZA,X1,UA,66,CH,IE,ON,CZ,BY,BE', '1', 'RNG', 'ANTE'),
(86, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5drhs.png', '1611758020', 'vs5drhs', 'Dragon Hot Hold & Spin', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5drhs&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,PT,X1,CO,RO,ZA,66,UK,GG,RS,EE,GR,IM,MT,UA,99,LV,DE,SE,BG,ES,DK,LT,IE,BE', '1', 'RNG', ''),
(87, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20kraken.png', '1562244428', 'vs20kraken', 'Release the Kraken', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20kraken&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,RS,BG,EE,CO,LT,ES,SE,IM,GG,PT,MT,GR,DK,DE,UK,RO,IT,99,ZA,X1,UA,66,IE,BY,ON,NL,BE', '1', 'RNG', 'BUY'),
(88, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20phoenixf.png', '1612429795', 'vs20phoenixf', 'Phoenix Forge', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20phoenixf&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,SE,LT,IM,LV,GG,RS,UK,MT,RO,EE,DE,66,GR,ZA,99,UA,ES,NL,X1,DK,CO,BG,IT,CH,IE,BY,CZ,BE', '1', 'RNG', ''),
(90, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1024temuj.png', '1607697052', 'vs1024temuj', 'Temujin Treasures', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs1024temuj&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'X1,SE,PT,UA,DK,BG,RS,DE,RO,UK,99,GG,ZA,IM,EE,GR,MT,ES,IT,CO,LT,66,LV,IE,ON,BE', '1', 'RNG', 'BUY'),
(91, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10runes.png', '1628164192', 'vs10runes', 'Gates of Valhalla', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10runes&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,ES,66,99,DE,EE,GG,GR,IM,MT,RO,RS,UA,UK,ZA,IE,CO,SE,X1,PT,BG,DK,LT,LV,IT,NL,BE', '1', 'RNG', 'BUY'),
(92, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1dragon8.png', '1493812996', 'vs1dragon8', '888 Dragons', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs1dragon8&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,GG,UK,EE,MT,IM,SE,LV,99,IT,RO,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(93, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25chilli.png', '1513769922', 'vs25chilli', 'Chilli Heat', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25chilli&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RO,GG,UK,DE,BY,LT,99,MT,ES,IM,DK,BG,SE,LV,GR,EE,IT,CO,RS,PT,ZA,X1,NL,UA,66,CH,IE,ON,CZ,BE', '1', 'RNG', ''),
(95, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25kfruit.png', '1650618938', 'vs25kfruit', 'Aztec Blaze', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25kfruit&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,PT,LT,GR,ES,BG,CO,NL,IT,ON,SE,DK,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(96, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10bbkir.png', '1655131213', 'vs10bbkir', 'Big Bass Bonanza - Keeping it Reel', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10bbbrlact&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,SE,IT,NL,ON,PT,LT,GR,CO,BG,DK,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(97, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs12bbbxmas.png', '1658214381', 'vs12bbbxmas', 'Bigger Bass Blizzard - Christmas Catch', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs12bbbxmas&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RO,RS,UA,UK,ZA,LV,NL,DK,ON,IT,PT,SE,CO,LT,GR,66,99,DE,EE,GG,IE,IM,MT,ES,BG,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(98, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20trswild2.png', '1647530068', 'vs20trswild2', 'Black Bull', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20trswild2&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'NL,X1,CO,LT,DK,ON,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,LV,PT,SE,ES,BG,IT,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(99, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25bomb.png', '1642081790', 'vs25bomb', 'Bomb Bonanza', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25bomb&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,ES,PT,SE,66,99,DE,EE,GG,GR,IE,IM,LT,MT,RO,RS,UA,UK,ZA,LV,IT,NL,CO,X1,BG,ON,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(100, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10tut.png', '1654176306', 'vs10tut', 'Book Of Tut Respin', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10tut&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,BG,NL,ES,IT,PT,GR,CO,LT,LV,66,99,DE,DK,EE,GG,IE,IM,MT,ON,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(101, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysbook.png', '1647515448', 'vswaysbook', 'Book of Golden Sands', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysbook&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,SE,IT,ON,NL,LT,LV,BG,CO,X1,DK,GR,PT,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(103, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs12tropicana.png', '1660891115', 'vs12tropicana', 'Club Tropicana', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs12tropicana&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,LV,BE,DK,LT,CO,GR,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,ON,PT,SE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(104, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40cosmiccash.png', '1646930177', 'vs40cosmiccash', 'Cosmic Cash', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40cosmiccash&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ON,ES,DK,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,PT,IT,LV,NL,SE,CO,X1,LT,BG,CH,BY,BE', '1', 'RNG', 'BUY'),
(105, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysultrcoin.png', '1667822006', 'vswaysultrcoin', 'Cowboy Coins', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysultrcoin&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(106, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10crownfire.png', '1653920247', 'vs10crownfire', 'Crown of Fire', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10crownfire&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,LT,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,DK,BG,CO,X1,LV,IT,NL,ON,PT,SE,DE,ES,BE', '1', 'RNG', ''),
(107, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20underground.png', '1648559965', 'vs20underground', 'Down the Rails', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20underground&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,GG,UK,66,DE,EE,IE,IM,MT,RO,RS,UA,ZA,PT,SE,DK,LT,LV,ON,IT,NL,X1,CO,ES,BG,GR,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(108, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20drgbless.png', '1666854917', 'vs20drgbless', 'Dragon Hero', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20drgbless&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,GR,LT,ES,IT,ON,PT,SE,CO,NL,LV,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY');
INSERT INTO `games` (`cuid`, `provider`, `image`, `gameidnumeric`, `gameid`, `gamename`, `link_demo`, `gametypeid`, `category`, `technology`, `platform`, `demogame`, `aspectratio`, `technologyid`, `jurisdictions`, `frbavailable`, `datatype`, `features`) VALUES
(109, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25archer.png', '1662032319', 'vs25archer', 'Fire Archer', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25archer&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,BE,IT,LV,NL,GR,CO,DK,LT,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,PT,SE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(110, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs100firehot.png', '1648120006', 'vs100firehot', 'Fire Hot 100', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs100firehot&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,GR,BG,CO,DK,X1,LT,LV,NL,PT,SE,BE', '1', 'RNG', ''),
(111, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20fh.png', '1647872051', 'vs20fh', 'Fire Hot 20', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20fh&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ES,ON,CO,DK,LT,X1,GR,BG,LV,NL,PT,SE,BE', '1', 'RNG', ''),
(112, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40firehot.png', '1648470786', 'vs40firehot', 'Fire Hot 40', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40firehot&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ES,ON,X1,DK,BG,CO,LT,GR,LV,NL,PT,BE', '1', 'RNG', ''),
(113, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5firehot.png', '1647595145', 'vs5firehot', 'Fire Hot 5', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5firehot&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'NL,PT,SE,IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,ES,LT,X1,CO,GR,BG,DK,LV,BE', '1', 'RNG', ''),
(114, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysconcoll.png', '1655736970', 'vswaysconcoll', 'Firebird Spirit - Connect & Collect', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysconcoll&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,NL,BG,ON,LV,PT,SE,ES,GR,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,LT,DK,CO,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(115, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10fisheye.png', '1663793834', 'vs10fisheye', 'Fish Eye', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10fisheye&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,IT,BE,ES,CO,GR,LT,LV,NL,ON,PT,SE,BG', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(116, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysfltdrg.png', '1654619004', 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10floatdrg&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,LV,NL,ON,IT,PT,SE,LT,ES,BG,GR,CO,BY,66,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(117, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysfuryodin.png', '1658907845', 'vswaysfuryodin', 'Fury of Odin Megaways', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysfuryodin&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,BG,BE,CO,GR,LT,ES,66,99,DE,EE,GG,IE,IM,IT,LV,MT,ON,PT,RO,RS,SE,UA,UK,X1,ZA,NL', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(118, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20aztecgates.png', '1671197044', 'vs20aztecgates', 'Gates of Aztec', 'https://d3pvfi6m7bxu71.cloudfront.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20gatotgates&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'ANTE,BUY'),
(119, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20gatotgates.png', '1664453812', 'vs20gatotgates', 'Gates of Gatot Kaca', 'https://d3pvfi6m7bxu71.cloudfront.net/gs2c/html5Game.do?extGame=1&symbol=vs20gatotx&gname=Gates%20of%20Gatot%20Kaca%201000&jurisdictionID=99&mgckey=stylename@generic~SESSION@ae87faeb-20bc-4b4d-99c5-c02777ade55a', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'ANTE,BUY'),
(121, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20lcount.png', '1649059371', 'vs20lcount', 'Gems of Serengeti', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20lcount&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,GR,DK,CO,LV,NL,PT,SE,IT,LT,BG,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(122, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1024gmayhem.png', '1645783969', 'vs1024gmayhem', 'Gorilla Mayhem', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs1024gmayhem&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,LV,DK,SE,IT,NL,CO,X1,BG,MT,66,99,DE,EE,GG,GR,IE,IM,RO,RS,UA,UK,ZA,ON,LT,ES,BY,BE', '1', 'RNG', 'BUY'),
(123, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20wolfie.png', '1649884522', 'vs20wolfie', 'Greedy Wolf', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20wolfie&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,CO,X1,LT,DK,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,LV,NL,ES,ON,IT,PT,BY,BE', '1', 'RNG', 'ANTE'),
(124, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40mstrwild.png', '1649403727', 'vs40mstrwild', 'Happy Hooves', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,ON,PT,ES,CO,LT,X1,BG,BY,DK,GR,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(125, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20dugems.png', '1654681279', 'vs20dugems', 'Hot Pepper', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,NL,ON,PT,SE,BG,LT,DK,CO,GR,ES,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(126, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40hotburnx.png', '1650461546', 'vs40hotburnx', 'Hot To Burn Extreme', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,NL,SE,DK,X1,LT,CO,BG,ON,IT,LV,ES,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(127, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20mvwild.png', '1654091720', 'vs20mvwild', 'Jasmine Dreams', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(128, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20asgard.png', '1662996634', 'vs20asgard', 'Kingdom of Asgard', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(129, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs243koipond.png', '1632121425', 'vs243koipond', 'Koi Pond', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs243koipond&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(130, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayslofhero.png', '1655895863', 'vswayslofhero', 'Legend of Heroes', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'BUY'),
(131, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysluckyfish.png', '1666863578', 'vswaysluckyfish', 'Lucky Fishing', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'BUY'),
(132, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25tigeryear.png', '1638970408', 'vs25tigeryear', 'Lucky New Year - Tiger Treasures', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(133, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10mmm.png', '1648833669', 'vs10mmm', 'Magic Money Maze', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,CO,DK,X1,ON,LT,BG,NL,PT,SE,LV,IT,ES,BE', '1', 'RNG', 'BUY'),
(134, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20mammoth.png', '1664173161', 'vs20mammoth', 'Mammoth Gold Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LV,NL,ON,PT,SE,ES,GR,IT,CO,LT,BG,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(135, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20superlanche.png', '1665130261', 'vs20superlanche', 'Monster Superlanche', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,LT,CO,ES,DK,66,99,DE,EE,GG,IE,IM,MT,NL,RO,RS,SE,UA,UK,ZA,IT,LV,ON,GR,BG,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(136, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20muertos.png', '1657890717', 'vs20muertos', 'Muertos Multiplier Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,LV,ON,SE,LT,CO,IT,NL,PT,ES,BG,DK,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(137, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysmorient.png', '1668582966', 'vswaysmorient', 'Mystery of the Orient', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BE,NL,GR,IT,LT,ON,PT,SE,DK', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(138, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20octobeer.png', '1650009032', 'vs20octobeer', 'Octobeer Fortunes', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,LV,IT,NL,ON,PT,SE,X1,CO,GR,ES,BG,LT,DK,BE', '1', 'RNG', 'BUY'),
(139, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysoldminer.png', '1644856286', 'vswaysoldminer', 'Old Gold Miner Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,MT,RO,UK,NL,ON,BE', '1', 'RNG', 'ANTE,BUY'),
(140, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayspizza.png', '1664288098', 'vswayspizza', 'PIZZA PIZZA PIZZA', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,GR,SE,BG,ES,BE,ON,IT,NL,PT,CO,DK,LT', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(141, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20ltng.png', '1654505839', 'vs20ltng', 'Pinup Girls', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,SE,DK,NL,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,LT,ES,GR,CO,ON,BG,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(142, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20mtreasure.png', '1645198209', 'vs20mtreasure', 'Pirate Golden Age', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,BG,GR,ES,PT,CO,LT,IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LV,NL,ON,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(143, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20goldclust.png', '1669900144', 'vs20goldclust', 'Rabbit Garden', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(144, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25rlbank.png', '1657027833', 'vs25rlbank', 'Reel Banks', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UK,99,66,DE,EE,GG,IE,IM,MT,RO,RS,UA,ZA,SE,BE,LT,LV,NL,ON,PT,DK,GR,CO,ES,IT,BG', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(146, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20porbs.png', '1659687509', 'vs20porbs', 'Santa&apos;s Great Gifts', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,ON,PT,SE,ES,BG,GR,CO,DK,LT,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(147, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25spgldways.png', '1663758009', 'vs25spgldways', 'Secret City Gold', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,IT,LV,NL,ON,BE,PT,SE,ES,LT,GR,CO,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BG', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(148, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20sparta.png', '1654691367', 'vs20sparta', 'Shield Of Sparta', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,LT,BG,GR,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LV,ON,PT,SE,IT,NL,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(149, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs100sh.png', '1644586301', 'vs100sh', 'Shining Hot 100', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,BG,ON,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,ES,IT,LV,NL,PT,SE,X1,DK,CO,BY,BE', '1', 'RNG', ''),
(150, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20sh.png', '1643976929', 'vs20sh', 'Shining Hot 20', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,ON,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,ES,IT,LV,NL,PT,SE,X1,DK,CO,BY,BE', '1', 'RNG', ''),
(151, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40sh.png', '1642592904', 'vs40sh', 'Shining Hot 40', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,BG,ON,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,PT,SE,ES,X1,DK,CO,BY,BE', '1', 'RNG', ''),
(152, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5sh.png', '1644228406', 'vs5sh', 'Shining Hot 5', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,ON,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,PT,SE,ES,X1,CO,DK,BY,BE', '1', 'RNG', ''),
(153, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10snakeeyes.png', '1653393645', 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,99,UK,GR,ON,DK,CO,LT,LV,NL,PT,SE,IT,BG,66,DE,EE,IE,IM,MT,RO,RS,UA,ZA,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(154, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysfrywld.png', '1657201370', 'vswaysfrywld', 'Spin & Score Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,ON,PT,SE,BG,ES,LV,GR,DK,LT,BE', '1', 'RNG', 'BUY'),
(155, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20schristmas.png', '1666862661', 'vs20schristmas', 'Starlight Christmas', 'https://d3pvfi6m7bxu71.cloudfront.net/gs2c/html5Game.do?extGame=1&symbol=vs20schristmas&gname=Starlight%20Christmas&jurisdictionID=99&mgckey=stylename@generic~SESSION@020b2e91-2fbc-422a-8f1c-d7c89bd3eda6', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,EE,GG,IE,IM,LV,MT,RO,RS,UA,ZA,99,UK,BE', '1', 'RNG', 'ANTE,BUY'),
(156, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5strh.png', '1651661433', 'vs5strh', 'Striking Hot 5', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,NL,ON,PT,IT,LV,ES,CO,LT,X1,SE,BG,DK,GR,BE', '1', 'RNG', ''),
(157, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20sugarrush.png', '1646488614', 'vs20sugarrush', 'Sugar Rush', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sugarrush&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'X1,CO,ON,ES,LT,IM,RS,DK,GG,IT,NL,EE,UK,LV,ZA,GR,MT,DE,PT,UA,99,66,IE,SE,RO,BG,BY,AT,NO,BE', '1', 'RNG', 'BUY'),
(158, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20clspwrndg.png', '1661154054', 'vs20clspwrndg', 'Sweet Powernudge', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,DK,LT,CO,BG,NL,ON,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BE,PT,SE,GR,IT', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(159, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20swordofares.png', '1657802275', 'vs20swordofares', 'Sword of Ares', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,NL,ON,PT,SE,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BG,ES,DK,CO,LT,GR,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(160, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20doghousemh.png', '1671616840', 'vs20doghousemh', 'The Dog House Multihold', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20doghouse&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BE,IT,PT,SE,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,NL,ON', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(161, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20sknights.png', '1666631946', 'vs20sknights', 'The Knight King', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(162, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20theights.png', '1650457777', 'vs20theights', 'Towering Fortunes', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,LT,BG,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,ES,DK,LV,ON,PT,SE,IT,NL,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(163, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysjkrdrop.png', '1646656358', 'vswaysjkrdrop', 'Tropical Tiki', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysjkrdrop&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,DK,CO,X1,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,PT,SE,ES,ON,LT,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(164, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20mparty.png', '1651051209', 'vs20mparty', 'Wild Hop & Drop', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,LT,GR,DK,BG,CO,X1,SE,LV,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,ON,PT,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(165, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20pistols.png', '1658782771', 'vs20pistols', 'Wild West Gold Megaways', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayswildwest&jurisdiction=99&lobbyUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fid%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,IT,NL,ON,CO,PT,SE,BE,GR,LT,DK', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(166, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayswwhex.png', '1655994486', 'vswayswwhex', 'Wild Wild Bananas', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,CO,DK,GR,LT,PT,SE,UK,66,99,DE,EE,IE,IM,MT,RO,RS,UA,ZA,IT,LV,NL,ON,BE,BG,ES', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE'),
(167, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayswwriches.png', '1663938013', 'vswayswwriches', 'Wild Wild Riches Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,IM,UK,BE,66,99,DE,EE,IE,MT,RO,RS,UA,ZA,IT,LV,PT,SE,CO,DK,GR,LT,NL,ON,ES,BG', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(168, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40spartaking.png', '1597399279', 'vs40spartaking', 'Spartan King', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,ES,IT,RS,GG,LV,99,IM,RO,EE,GR,UK,DE,LT,MT,ZA,BG,PT,SE,X1,UA,66,IE,BE', '1', 'RNG', ''),
(169, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/bjmb.png', '1510756997', 'bjmb', 'American Blackjack', NULL, 'bj', 'Blackjack', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UK,IT,IM,SE,MT,EE,CO,RO,DK,99,GG,RS,ZA,UA,PT,66,IE,BE', '', 'LC', ''),
(170, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysaztecking.png', '1623317373', 'vswaysaztecking', 'Aztec King Megaways', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysaztecking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'ANTE,BUY'),
(171, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/cs5moneyroll.png', '1507188401', 'cs5moneyroll', 'Money Roll', NULL, 'cs', 'Classic Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '', 'RNG', ''),
(172, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5ultrab.png', '1584361706', 'vs5ultrab', 'Ultra Burn', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,UK,MT,IM,LV,GR,DK,IT,GG,BG,99,CO,ES,RS,RO,LT,PT,DE,SE,NL,ZA,X1,UA,66,CH,IE,CZ,BY,BE', '1', 'RNG', ''),
(173, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20emptybank.png', '1617603300', 'vs20emptybank', 'Empty the Bank', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20emptybank&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,IM,GG,UK,RO,ZA,GR,MT,DE,UA,99,66,RS,BG,IT,X1,CO,LT,DK,PT,ES,SE,LV,IE,ON,BE', '1', 'RNG', 'ANTE,BUY'),
(174, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs243chargebull.png', '1622189972', 'vs243chargebull', 'Raging Bull', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243chargebull&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(175, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25btygold.png', '1622215011', 'vs25btygold', 'Bounty Gold', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25btygold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,RS,EE,UA,99,UK,66,IM,RO,DE,ZA,MT,GR,DK,SE,PT,LV,IE,CO,ES,IT,LT,X1,BG,NL,BE', '1', 'RNG', ''),
(176, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25gldox.png', '1605616608', 'vs25gldox', 'Golden Ox', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25gldox&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(177, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20eightdragons.png', '1495539348', 'vs20eightdragons', '8 Dragons', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,UK,99,GG,IM,EE,RS,MT,IT,ZA,UA,66,IE,RO,BE', '1', 'RNG', ''),
(178, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1money.png', '1580468307', 'vs1money', 'Money Money Money', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(179, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25mmouse.png', '1574083679', 'vs25mmouse', 'Money Mouse', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,IT,PT,RO,CO,GG,RS,ES,LV,UK,MT,EE,99,BG,SE,IM,DE,GR,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(180, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25rio.png', '1616072367', 'vs25rio', 'Heart of Rio', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25rio&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,MT,66,ZA,UA,GG,IT,99,ES,IM,SE,RO,RS,DE,PT,UK,LT,GR,LV,DK,CO,X1,BG,IE,BY,ON,BE', '1', 'RNG', ''),
(182, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20bermuda.png', '1622797439', 'vs20bermuda', 'Bermuda Riches', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20bermuda&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,MT,RO,RS,ZA,UA,GR,99,66,UK,EE,DE,GG,LT,CO,X1,DK,LV,BG,SE,ES,PT,IT,IE,BY,NL,BE', '1', 'RNG', 'BUY'),
(183, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40bigjuan.png', '1627046307', 'vs40bigjuan', 'Big Juan', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,GG,RO,GR,LV,ZA,MT,EE,PT,IM,DE,UK,66,RS,SE,UA,99,IT,IE,X1,ES,BG,CO,LT,ON,BE', '1', 'RNG', 'BUY'),
(184, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayschilheat.png', '1617610052', 'vswayschilheat', 'Chilli Heat Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,IM,ZA,GG,MT,RS,UA,ES,GR,DE,RO,66,99,EE,UK,LT,IT,PT,SE,BG,LV,X1,CO,IE,ON,BY,NL,BE', '1', 'RNG', 'ANTE,BUY'),
(185, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs243fortseren.png', '1562750191', 'vs243fortseren', 'Greek Gods', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ES,DE,RO,IT,LT,SE,LV,CO,GR,99,EE,GG,IM,RS,MT,UK,BG,PT,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(186, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10bookazteck.png', '1644420346', 'vs10bookazteck', 'Book of Aztec King', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10bookazteck&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'BUY'),
(187, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1024lionsd.png', '1591365456', 'vs1024lionsd', '5 Lions Dance', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,CO,BG,GG,UK,IM,PT,SE,RS,LV,EE,99,RO,IT,DK,ES,MT,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', ''),
(188, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20chickdrop.png', '1619768910', 'vs20chickdrop', 'Chicken Drop', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20chickdrop&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ZA,DE,GR,UK,99,GG,MT,RO,IM,RS,66,EE,UA,ES,DK,CO,X1,IT,LT,LV,BG,PT,SE,IE,BY,ON,NL,BE', '1', 'RNG', 'BUY'),
(189, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs576hokkwolf.png', '1620375335', 'vs576hokkwolf', 'Hokkaido Wolf', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'ANTE'),
(190, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs75empress.png', '1573481798', 'vs75empress', 'Golden Beauty', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RO,ES,DE,SE,IM,LT,BG,MT,LV,CO,99,DK,GR,RS,PT,IT,EE,UK,GG,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(191, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1600drago.png', '1573809698', 'vs1600drago', 'Drago - Jewels of Fortune', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,DE,ES,RS,IM,GG,LT,99,IT,EE,LV,RO,MT,PT,UK,BG,CO,DK,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', 'BUY'),
(192, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1fortunetree.png', '1559907578', 'vs1fortunetree', 'Tree of Riches', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,RS,CO,LV,IT,RO,MT,PT,GG,LT,EE,DE,DK,ES,GR,IM,UK,99,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(193, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/cs5triple8gold.png', '1484225848', 'cs5triple8gold', '888 Gold', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=cs5triple8gold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'cs', 'Classic Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '', 'RNG', ''),
(194, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10bblpop.png', '1631598049', 'vs10bblpop', 'Bubble Pop', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10bblpop&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(195, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25pyramid.png', '1582874025', 'vs25pyramid', 'Pyramid King', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,LV,RO,MT,UK,DK,IT,GG,CO,GR,LT,EE,SE,BG,DE,IM,PT,ES,RS,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(196, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20vegasmagic.png', '1525426594', 'vs20vegasmagic', 'Vegas Magic', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RO,CO,UK,LT,RS,LV,ES,BG,PT,IT,EE,99,IM,MT,GG,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(197, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/bjma.png', '1455872782', 'bjma', 'Multihand Blackjack', NULL, 'bj', 'Blackjack', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,99,IM,GG,SE,MT,RO,DK,RS,IT,EE,UK,ZA,UA,PT,66,IE,BE', '', 'LC', ''),
(198, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysbbb.png', '1628177246', 'vswaysbbb', 'Big Bass Bonanza Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'UA,UK,GR,MT,EE,DE,GG,RS,66,ZA,RO,IM,99,IE,DK,LT,BG,ES,LV,SE,BY,CO,PT,X1,IT,NL,BE', '1', 'RNG', ''),
(199, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs432congocash.png', '1598948184', 'vs432congocash', 'Congo Cash', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,NL,DK,RO,DE,SE,IM,GR,IT,LT,LV,GG,BG,99,UK,ZA,PT,MT,EE,RS,ES,X1,UA,66,CH,IE,BY,CZ,ON,BE', '1', 'RNG', ''),
(200, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20colcashzone.png', '1630654866', 'vs20colcashzone', 'Colossal Cash Zone', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20colcashzone&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,ES,66,99,DE,EE,GG,GR,IM,LV,MT,RO,RS,UA,UK,ZA,BG,IE,X1,PT,CO,SE,LT,DK,IT,NL,BE', '1', 'RNG', ''),
(201, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs243dancingpar.png', '1574956138', 'vs243dancingpar', 'Dance Party', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DE,GR,UK,RO,SE,DK,BG,CO,RS,IM,99,LV,IT,MT,LT,GG,EE,ES,PT,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(202, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25goldpig.png', '1546428971', 'vs25goldpig', 'Golden Pig', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(203, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40wanderw.png', '1625224653', 'vs40wanderw', 'Wild Depths', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40wanderw&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,ES,IE,CO,X1,SE,NL,BG,PT,DE,GR,99,LV,UA,ZA,RS,DK,IM,MT,GG,LT,RO,UK,EE,66,BE', '1', 'RNG', ''),
(204, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1masterjoker.png', '1576066858', 'vs1masterjoker', 'Master Joker', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RO,MT,GG,SE,LV,UK,BG,IT,IM,99,GR,ES,EE,DE,DK,CO,LT,PT,RS,ZA,X1,UA,NL,66,CH,IE,CZ,BY,BE', '1', 'RNG', ''),
(205, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs243fortune.png', '1496240977', 'vs243fortune', 'Caishen&apos;s Gold', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,CO,BG,UK,IT,99,GG,ES,RS,MT,LV,PT,RO,DK,EE,LT,ZA,DE,GR,X1,UA,66,SE,IE,BY,BE', '1', 'RNG', ''),
(206, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs9piggybank.png', '1620304691', 'vs9piggybank', 'Piggy Bank Bills', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs9piggybank&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,CO,BG,X1,UA,UK,GG,ZA,EE,RS,DE,66,99,GR,RO,MT,IM,ES,LV,PT,SE,DK,IT,IE,BY,BE', '1', 'RNG', ''),
(207, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25wolfgold.png', '1487350061', 'vs25wolfgold', 'Wolf Gold', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BY,SE,99,BG,UK,GR,LV,IT,RS,RO,EE,MT,ES,DE,DK,LT,GG,CO,IM,PT,ZA,X1,UA,NL,66,CH,IE,CZ,ON,BE,AT', '1', 'RNG', ''),
(208, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/bca.png', '1455872785', 'bca', 'Baccarat', NULL, 'bc', 'Baccarat', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,99,CO,RS,GG,IT,IM,DK,RO,EE,UK,SE,ZA,UA,66,IE,BE', '', 'LC', ''),
(209, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20wildboost.png', '1608204824', 'vs20wildboost', 'Wild Booster', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,99,ES,SE,IT,BG,LV,EE,UK,GG,GR,66,MT,RO,DE,IM,ZA,RS,CO,PT,LT,X1,NL,UA,CH,IE,CZ,BE', '1', 'RNG', 'BUY'),
(210, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayswerewolf.png', '1589544488', 'vswayswerewolf', 'Curse of the Werewolf Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,BG,PT,IT,IM,UK,LV,SE,CO,ES,99,RS,GG,DK,EE,RO,MT,DE,GR,NL,ZA,66,X1,UA,CH,IE,CZ,ON,BE', '1', 'RNG', 'BUY'),
(211, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25wildspells.png', '1499775857', 'vs25wildspells', 'Wild Spells', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ES,RS,MT,EE,99,IM,LT,IT,RO,LV,GG,PT,BG,SE,CO,UK,DK,ZA,DE,GR,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(212, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5super7.png', '1573127688', 'vs5super7', 'Super 7s ', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,ES,UK,BG,99,SE,DE,MT,IT,RO,GG,LT,GR,EE,LV,IM,RS,PT,DK,NL,ZA,X1,UA,66,CH,IE,CZ,BY,BE', '1', 'RNG', ''),
(213, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10bookoftut.png', '1582290405', 'vs10bookoftut', 'Book of Tut', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,DE,EE,MT,ES,IM,LT,CO,GR,RS,LV,GG,DK,UK,99,IT,RO,PT,SE,ZA,X1,UA,NL,66,CH,IE,CZ,BY,ON,AT,BE', '1', 'RNG', 'BUY'),
(214, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10luckcharm.png', '1614601142', 'vs10luckcharm', 'Lucky, Grace & Charm', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,PT,ES,LT,DK,IT,SE,DE,RO,UA,EE,CO,GG,LV,UK,66,IM,MT,RS,X1,ZA,GR,99,IE,BE', '1', 'RNG', ''),
(215, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40pirgold.png', '1596114870', 'vs40pirgold', 'Pirate Gold Deluxe', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40pirgold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,IT,ES,BG,PT,EE,RO,RS,ZA,MT,GG,IM,GR,99,DE,UK,CO,DK,LT,SE,UA,66,IE,BE', '1', 'RNG', 'BUY'),
(216, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1tigers.png', '1513070130', 'vs1tigers', 'Triple Tigers', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,IT,IM,EE,RO,GG,99,LV,RS,SE,UK,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(217, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10wildtut.png', '1599212816', 'vs10wildtut', 'Mysterious Egypt', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10wildtut&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,MT,RO,RS,EE,UK,DE,LV,99,GR,IM,GG,ZA,LT,SE,PT,BG,DK,IT,ES,X1,UA,66,IE,ON,BE', '1', 'RNG', 'BUY'),
(218, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25newyear.png', '1511857851', 'vs25newyear', 'Lucky New Year', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,99,RS,CO,MT,IT,RO,GG,IM,UK,SE,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(219, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayswest.png', '1619447303', 'vswayswest', 'Mystic Chief', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayswest&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,PT,CO,IT,LV,X1,LT,BG,ES,99,RS,RO,DE,UA,GG,EE,ZA,IM,UK,66,GR,MT,SE,IE,BY,ON,BE', '1', 'RNG', ''),
(220, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25tigerwar.png', '1589357657', 'vs25tigerwar', 'The Tiger Warrior', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(221, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25peking.png', '1529399160', 'vs25peking', 'Peking Luck', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,PT,BG,LT,LV,GG,MT,RO,ES,CO,EE,IM,IT,UK,RS,SE,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', ''),
(222, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1024dtiger.png', '1592569000', 'vs1024dtiger', 'The Dragon Tiger', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,SE,EE,LV,GG,IM,LT,RS,99,MT,RO,UK,CO,ZA,ES,BG,IT,DE,GR,PT,X1,UA,66,IE,BE', '1', 'RNG', ''),
(223, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20smugcove.png', '1626269940', 'vs20smugcove', 'Smugglers Cove', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20smugcove&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,IE,LT,CO,X1,IT,DK,EE,IM,RS,ZA,SE,UK,66,RO,DE,GG,LV,UA,99,GR,MT,NL,ES,PT,BE', '1', 'RNG', 'ANTE'),
(224, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25asgard.png', '1523960262', 'vs25asgard', 'Asgard', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,SE,LV,IT,BG,UK,MT,CO,GG,PT,RO,LT,ES,99,RS,EE,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(225, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25goldrush.png', '1507726919', 'vs25goldrush', 'Gold Rush', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,DE,BG,RS,MT,DK,CO,LT,IT,UK,EE,PT,ES,LV,RO,IM,GG,SE,99,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(226, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5spjoker.png', '1564667918', 'vs5spjoker', 'Super Joker', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,PT,EE,99,SE,BG,UK,GR,LT,ES,LV,RO,DK,CO,GG,IM,DE,IT,RS,NL,ZA,X1,UA,66,CH,IE,CZ,BY,BE', '1', 'RNG', ''),
(227, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1024butterfly.png', '1524579919', 'vs1024butterfly', 'Jade Butterfly', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RO,IM,GG,SE,RS,EE,99,LT,ES,MT,BG,UK,PT,LV,IT,ZA,UA,66,IE,BE', '', 'RNG', ''),
(228, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5hotburn.png', '1578498329', 'vs5hotburn', 'Hot to Burn', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,IM,CO,ES,LT,GG,LV,UK,EE,99,IT,RO,DK,PT,SE,RS,BG,DE,GR,NL,ZA,UA,66,CH,IE,BY,CZ,BE', '1', 'RNG', ''),
(229, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10mayangods.png', '1594304610', 'vs10mayangods', 'John Hunter And The Mayan Gods', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,MT,LV,RO,GG,IM,ZA,EE,RS,UK,GR,99,DE,DK,IT,SE,LT,BG,ES,PT,X1,UA,NL,66,CH,IE,CZ,BY,BE', '1', 'RNG', ''),
(230, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10madame.png', '1524489855', 'vs10madame', 'Madame Destiny', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysmadame&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,MT,GG,EE,PT,99,IT,IM,DE,RO,ES,BG,UK,RS,LT,GR,LV,CO,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(231, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/bnadvanced.png', '1545750248', 'bnadvanced', 'Dragon Bonus Baccarat', NULL, 'bn', 'Baccarat New', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '', 'LC', ''),
(232, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20daydead.png', '1625747556', 'vs20daydead', 'Day of Dead', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20daydead&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,UA,UK,99,MT,GG,RO,CO,DK,GR,LT,66,IT,DE,PT,RS,X1,EE,ZA,IM,SE,BG,ES,IE,BY,NL,BE', '1', 'RNG', 'BUY'),
(233, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25samurai.png', '1590072949', 'vs25samurai', 'Rise of Samurai 3', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40samurai3&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(234, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25vegas.png', '1498044866', 'vs25vegas', 'Vegas Nights', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,IM,UK,RO,EE,RS,MT,BG,LT,99,GG,SE,PT,ES,LV,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(235, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayshive.png', '1590991956', 'vswayshive', 'Star Bounty', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,BG,RO,LT,UK,DK,LV,IM,CO,ES,IT,99,MT,PT,EE,SE,RS,ZA,DE,GR,66,X1,UA,IE,BE', '1', 'RNG', 'BUY'),
(236, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25jokerking.png', '1603968551', 'vs25jokerking', 'Joker King', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25jokerking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,IT,ES,SE,NL,CO,DK,PT,BG,99,EE,GG,MT,IM,LV,DE,UK,ZA,GR,RO,RS,X1,UA,66,CH,IE,CZ,BE', '1', 'RNG', ''),
(237, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1fufufu.png', '1587098558', 'vs1fufufu', 'Fu Fu Fu', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(238, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10threestar.png', '1581497589', 'vs10threestar', 'Three Star Fortune', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,ES,RO,LV,GG,LT,BG,GR,EE,MT,RS,SE,CO,UK,99,PT,IM,DE,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(239, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40voodoo.png', '1597418564', 'vs40voodoo', 'Voodoo Magic', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40voodoo&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,CO,99,LT,MT,EE,LV,RO,RS,SE,ZA,DE,GG,IM,GR,UK,IT,ES,BG,UA,66,IE,BE', '1', 'RNG', 'BUY'),
(240, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25dragonkingdom.png', '1478788538', 'vs25dragonkingdom', 'Dragon Kingdom', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,DE,99,IM,EE,RS,IT,ES,GG,LV,PT,BG,CO,RO,MT,SE,UK,DK,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', ''),
(241, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1ball.png', '1573134508', 'vs1ball', 'Lucky Dragon Ball', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(242, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25kingdoms.png', '1489503590', 'vs25kingdoms', '3 Kingdoms - Battle of Red Cliffs', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,LV,BG,RO,ES,MT,RS,EE,UK,99,LT,PT,GG,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(243, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10goldfish.png', '1606314731', 'vs10goldfish', 'Fishin Reels', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10goldfish&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,UK,EE,GR,GG,RS,ZA,99,DE,LV,MT,RO,PT,LT,SE,X1,IT,UA,BG,CO,ES,DK,NL,66,CH,IE,BY,CZ,ON,BE', '1', 'RNG', ''),
(244, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20hercpeg.png', '1562075684', 'vs20hercpeg', 'Hercules and Pegasus', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DE,GR,UK,GG,RO,IT,RS,BG,LT,DK,SE,PT,EE,CO,MT,IM,99,ES,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(245, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20egypttrs.png', '1536585008', 'vs20egypttrs', 'Egyptian Fortunes', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,DK,EE,RS,GG,BG,99,MT,IT,RO,LT,IM,PT,ES,CO,LV,UK,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', ''),
(246, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50safariking.png', '1537433259', 'vs50safariking', 'Safari King', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,MT,SE,CO,DK,LV,PT,IT,UK,BG,LT,GG,IM,EE,RS,ES,RO,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(247, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50pixie.png', '1496932177', 'vs50pixie', 'Pixie Wings', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,DK,CO,UK,PT,BG,RO,GG,IM,LV,EE,LT,SE,IT,RS,99,ES,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(248, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20ekingrr.png', '1601366016', 'vs20ekingrr', 'Emerald King Rainbow Road', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,BG,ZA,EE,GR,LV,MT,RS,UK,99,GG,IT,DE,RO,IM,PT,LT,SE,ES,CO,X1,UA,66,IE,BE', '1', 'RNG', ''),
(249, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs88hockattack.png', '1628247387', 'vs88hockattack', 'Hockey Attack', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs88hockattack&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(250, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswaysbankbonz.png', '1624007316', 'vswaysbankbonz', 'Cash Bonanza', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysbankbonz&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,DK,LV,DE,IM,EE,RO,RS,UK,GR,MT,UA,GG,ZA,66,99,LT,IT,ES,BG,X1,CO,SE,IE,ON,BY,BE', '1', 'RNG', ''),
(251, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20honey.png', '1560171048', 'vs20honey', 'Honey Honey Honey', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,GG,BG,RO,IM,IT,EE,LV,PT,DK,CO,RS,99,MT,LT,UK,ES,ZA,X1,UA,66,IE,BE', '1', 'RNG', '');
INSERT INTO `games` (`cuid`, `provider`, `image`, `gameidnumeric`, `gameid`, `gamename`, `link_demo`, `gametypeid`, `category`, `technology`, `platform`, `demogame`, `aspectratio`, `technologyid`, `jurisdictions`, `frbavailable`, `datatype`, `features`) VALUES
(252, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/rla.png', '1455872890', 'rla', 'Roulette', NULL, 'rl', 'Roulette', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,CO,SE,99,RO,MT,DK,IT,ES,EE,UK,IM,GG,ZA,X1,UA,PT,66,IE,BE', '', 'RNG', ''),
(253, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20santa.png', '1507812581', 'vs20santa', 'Santa', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20santawonder&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ES,BG,DK,CO,GG,MT,LT,LV,SE,RS,PT,RO,UK,EE,IM,99,IT,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', ''),
(254, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20wildpix.png', '1536841004', 'vs20wildpix', 'Wild Pixies', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ES,SE,99,IT,IM,BG,LT,RO,GG,MT,CO,EE,LV,PT,RS,UK,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(255, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs18mashang.png', '1538387434', 'vs18mashang', 'Treasure Horse', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,IM,IT,GG,DK,EE,ES,RO,PT,MT,99,UK,LT,BG,SE,LV,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(256, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs9madmonkey.png', '1511957943', 'vs9madmonkey', 'Monkey Madness', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,IT,EE,ES,RO,GG,LV,UK,PT,LT,SE,MT,99,BG,IM,ZA,66,UA,IE,BE', '1', 'RNG', ''),
(257, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40madwheel.png', '1556892148', 'vs40madwheel', 'The Wild Machine', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,RS,RO,IM,UK,GG,99,SE,IT,PT,DE,MT,LV,CO,DK,BG,ES,GR,LT,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(258, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20leprexmas.png', '1539081379', 'vs20leprexmas', 'Leprechaun Carol', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,BG,GG,ES,LT,EE,SE,99,DK,LV,IT,PT,MT,CO,RO,RS,UK,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', ''),
(259, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs9hotroll.png', '1560415906', 'vs9hotroll', 'Hot Chilli', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,99,PT,SE,IM,RS,GG,UK,IT,ES,LT,LV,BG,CO,MT,RO,ZA,66,X1,UA,IE,BE', '1', 'RNG', ''),
(260, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20chicken.png', '1550648841', 'vs20chicken', 'The Great Chicken Escape', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,SE,BG,CO,DK,RS,GG,PT,IT,EE,LT,RO,UK,ES,MT,99,IM,ZA,X1,UA,66,IE,BY,NL,BE', '1', 'RNG', ''),
(261, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10starpirate.png', '1623297136', 'vs10starpirate', 'Star Pirates Code', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,LT,X1,BG,ES,66,UA,GG,99,GR,DE,ZA,UK,EE,RO,MT,RS,IM,DK,SE,PT,IT,LV,IE,NL,BE', '1', 'RNG', ''),
(262, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/cs3w.png', '1455872761', 'cs3w', 'Diamonds are Forever 3 Lines', NULL, 'cs', 'Classic Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '', 'RNG', ''),
(263, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs9chen.png', '1532961240', 'vs9chen', 'Master Chen&apos;s Fortune', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ES,MT,99,PT,IM,RO,IT,SE,RS,LT,UK,GG,EE,BG,LV,ZA,66,UA,IE,BE', '1', 'RNG', ''),
(264, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20eking.png', '1595853176', 'vs20eking', 'Emerald King', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,CO,PT,BG,99,EE,RO,IT,RS,GG,DK,MT,UK,LT,IM,ES,LV,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', ''),
(265, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50hercules.png', '1477914757', 'vs50hercules', 'Hercules Son of Zeus', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,EE,LV,RO,RS,MT,IM,PT,99,UK,SE,ES,GG,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(266, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25davinci.png', '1519836742', 'vs25davinci', 'Da Vinci&apos;s Treasure', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'DK,GG,LV,LT,UK,PT,CO,ES,MT,SE,EE,RO,IT,99,BG,IM,RS,NL,ZA,GR,DE,X1,UA,66,CH,IE,BE', '1', 'RNG', ''),
(267, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20magicpot.png', '1613144805', 'vs20magicpot', 'The Magic Cauldron', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20magicpot&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RO,LV,66,MT,DE,IM,GG,RS,EE,GR,ZA,UA,IT,LT,SE,DK,ES,BG,99,UK,PT,X1,CO,IE,BY,ON,BE', '1', 'RNG', ''),
(268, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs15fairytale.png', '1515507828', 'vs15fairytale', 'Fairytale Fortune', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,SE,IT,UK,RS,EE,BG,GG,RO,MT,LV,PT,99,IM,ES,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(269, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25journey.png', '1464092888', 'vs25journey', 'Journey to the West', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,PT,SE,UK,ES,IM,99,LV,CO,MT,EE,GG,RO,RS,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(270, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20godiva.png', '1455872846', 'vs20godiva', 'Lady Godiva', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,IM,MT,RO,EE,SE,IT,LV,UK,GG,99,PH,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(271, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40frrainbow.png', '1579613180', 'vs40frrainbow', 'Fruit Rainbow', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GR,LT,DK,99,RS,EE,ES,CO,GG,BG,RO,IM,LV,SE,PT,DE,UK,IT,MT,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(272, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5drmystery.png', '1599640357', 'vs5drmystery', 'Dragon Kingdom - Eyes of Fire', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs5drmystery&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,PT,CO,ES,DK,IT,BG,99,DE,LV,RS,RO,ZA,IM,MT,GG,UK,GR,EE,LT,X1,UA,66,IE,BE', '1', 'RNG', ''),
(273, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50chinesecharms.png', '1461317789', 'vs50chinesecharms', 'Lucky Dragons', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,IM,SE,GG,EE,99,LV,RS,RO,UK,MT,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(274, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/cs3irishcharms.png', '1487083475', 'cs3irishcharms', 'Irish Charms', NULL, 'cs', 'Classic Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '', 'RNG', ''),
(275, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs3train.png', '1492772366', 'vs3train', 'Gold Train', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,IM,UK,EE,MT,LV,RS,99,RO,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(276, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs4096mystery.png', '1576682710', 'vs4096mystery', 'Mysterious', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,DK,CO,RS,EE,UK,ES,LT,MT,99,DE,BG,IT,RO,SE,IM,GR,GG,PT,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(277, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25safari.png', '1457774328', 'vs25safari', 'Hot Safari', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'PT,SE,EE,UK,RO,MT,GG,99,RS,CO,PH,BG,IT,IM,ES,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(278, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs7776secrets.png', '1550843208', 'vs7776secrets', 'Aztec Treasure', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,LT,DK,EE,IM,LV,SE,ES,PT,99,RO,CO,BG,MT,RS,IT,UK,GR,DE,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(279, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25queenofgold.png', '1486107537', 'vs25queenofgold', 'Queen of Gold', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,MT,RO,BG,EE,99,CO,IT,SE,UK,ES,LV,IM,GG,PT,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', ''),
(280, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs7pigs.png', '1499426883', 'vs7pigs', '7 Piggies', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,LV,GG,EE,BG,RO,SE,99,IM,PT,UK,MT,ES,LT,RS,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(281, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25sea.png', '1455872798', 'vs25sea', 'Great Reef', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,PH', '1', 'RNG', ''),
(282, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50aladdin.png', '1478694817', 'vs50aladdin', '3 Genie Wishes', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,SE,99,DK,GG,BG,CO,UK,LV,PT,EE,MT,RS,IM,ES,RO,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(283, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs8magicjourn.png', '1571239142', 'vs8magicjourn', 'Magic Journey', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,IM,CO,EE,MT,IT,LV,RS,PT,BG,SE,ES,RO,UK,99,GG,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(284, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10vampwolf.png', '1560406594', 'vs10vampwolf', 'Vampires vs Wolves', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,PT,LV,IT,RS,UK,IM,ES,99,SE,CO,RO,DK,GG,LT,BG,EE,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', ''),
(285, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25walker.png', '1593692685', 'vs25walker', 'Wild Walker', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25walker&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,GG,UK,CO,BG,DK,IT,ES,RS,EE,PT,LT,MT,IM,RO,99,SE,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', ''),
(286, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50kingkong.png', '1455872792', 'vs50kingkong', 'Mighty Kong', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,99,CO,MT,RO,RS,IT,LV,UK,EE,PH,GG,IM,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(287, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs40streetracer.png', '1582626160', 'vs40streetracer', 'Street Racer', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,UK,LT,RS,IT,GG,DK,BG,99,LV,CO,GR,IM,ES,SE,PT,DE,RO,MT,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(288, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5trdragons.png', '1536668671', 'vs5trdragons', 'Triple Dragons', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,GG,BG,LT,SE,MT,PT,99,ES,EE,LV,UK,RS,IT,RO,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(289, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/bndt.png', '1546961175', 'bndt', 'Dragon Tiger', NULL, 'bn', 'Baccarat New', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '', 'LC', ''),
(290, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20leprechaun.png', '1524466813', 'vs20leprechaun', 'Leprechaun Song', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'GG,BG,CO,DK,PT,ES,SE,MT,LV,IM,EE,99,IT,UK,RS,LT,RO,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(291, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20aladdinsorc.png', '1562328986', 'vs20aladdinsorc', 'Aladdin and the Sorcerer', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,CO,99,LT,GG,EE,PT,RS,ES,SE,UK,IT,LV,BG,RO,IM,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(292, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25gladiator.png', '1502116141', 'vs25gladiator', 'Wild Gladiator', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,IT,ES,PT,DK,EE,SE,99,MT,CO,LV,GG,RO,UK,IM,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(293, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20bl.png', '1455872868', 'vs20bl', 'Busy Bees', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(294, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10egypt.png', '1512131581', 'vs10egypt', 'Ancient Egypt', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,IM,LT,MT,SE,BG,RO,GG,ES,UK,RS,DK,LV,99,PT,IT,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(295, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20gorilla.png', '1586253637', 'vs20gorilla', 'Jungle Gorilla', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,IM,LT,BG,EE,RS,99,IT,GR,ES,DK,MT,DE,UK,GG,PT,RO,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', ''),
(296, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25dwarves_new.png', '1461241564', 'vs25dwarves_new', 'Dwarven Gold Deluxe', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'SE,IT,IM,ES,RO,99,LV,MT,PT,UK,GG,RS,EE,ZA,UA,66,IE,BE', '1', 'RNG', ''),
(297, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs7monkeys.png', '1455872791', 'vs7monkeys', '7 Monkeys', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,EE,RS,SE,GG,PH,LV,RO,UK,BG,MT,IT,ZA,UA,66,99,IE,BY,BE', '1', 'RNG', ''),
(298, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs13g.png', '1455872880', 'vs13g', 'Devil&apos;s 13', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(299, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scpandai.png', '1521805857', 'scpandai', 'Panda Gold 50,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(300, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scgoldrushai.png', '1521805713', 'scgoldrushai', 'Gold Rush 500,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(301, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/1301.png', '1301', '1301', 'Live - Spaceman', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'IE,99,MT,NL,EE,SE,ZA,GG,UK,ON,UA,RS,IT,BY,IM,LV,RO,CO,GR,X1,CH,NO', '', 'LC', ''),
(302, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/1101.png', '1101', '1101', 'Live - Sweet Bonanza CandyLand', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,EE,GG,GR,IM,MT,RS,UK,IE,ON,DE,LT,BY,LV,NL,UA,BG,CO,IT,RO,X1,ZA', '', 'LC', ''),
(303, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/402.png', '402', '402', 'Speed Baccarat 1', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'IT,IM,99,UK,MT,DK,SE,RO,GG,RS,ZA,GR,EE,CO,X1,66,BG,ON,CH,IE,LT,NL,DE,LV,BY,UA', '', 'LC', ''),
(304, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/701.png', '701', '701', 'Live - Mega Sic Bo', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'SE,MT,UK,99,IM,IT,EE,GG,RS,GR,ZA,X1,66,BG,CH,IE,ON,NL,UA,LV,LT,DE,CO,BY', '', 'LC', ''),
(305, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/801.png', '801', '801', 'Live - Mega Wheel', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,IM,IT,MT,UK,RS,EE,ZA,GG,GR,BG,66,X1,CH,IE,ON,NL,UA,DE,LV,CO,LT,BY', '', 'LC', ''),
(306, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/204.png', '204', '204', 'Live - Mega Roulette', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,BG,CO,DK,IM,IT,MT,SE,UK,EE,RO,RS,BY,ZA,X1,66,ON,CH,IE,GG,GR,LV,DE,NL,UA,LT', '', 'LC', ''),
(307, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/401.png', '401', '401', 'Baccarat 1', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'RO,DK,UK,IT,99,IM,SE,MT,GG,GR,ZA,RS,EE,CO,BG,X1,66,ON,CH,IE,LT,DE,LV,UA,BY,NL', '', 'LC', ''),
(308, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/901.png', '901', '901', 'Live - ONE Blackjack', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,IT,RO,GG,DK,RS,EE,MT,ZA,GR,IM,UK,SE,CO,BG,66,X1,CH,IE,ON,BY,UA,DE,LT,LV,NL', '', 'LC', ''),
(309, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/203.png', '203', '203', 'Speed Roulette 1', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'IM,SE,DK,UK,IT,MT,RO,99,EE,ZA,GG,RS,GR,CO,BG,66,X1,ON,CH,IE,UA,NL,BY,DE,LT,LV', '', 'LC', ''),
(310, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/1001.png', '1001', '1001', 'Live - Dragon Tiger', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'UA,NL,DE,LT,LV,CO,GG,GR,IT,RO,IM,UK,MT,RS,BG,ZA,99,EE,SE,X1,66,IE,ON,BY,CH', '', 'LC', ''),
(311, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/201.png', '201', '201', 'Roulette 2', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'RO,SE,99,MT,IT,DK,IM,UK,ZA,RS,GR,GG,EE,CO,BG,66,X1,ON,CH,IE,UA,DE,LT,NL,BY,LV', '', 'LC', ''),
(312, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/1024.png', '1024', '1024', 'Live - Andar Bahar', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'BY,DE,CO,NL,X1,ZA,IT,UA,LT,LV,BG,RO,99,EE,GG,GR,IM,MT,RS,SE,UK,CH,IE,ON', '', 'LC', ''),
(313, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/902.png', '902', '902', 'Live - ONE Blackjack 2 - Ruby', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'DK,UK,EE,SE,GR,IM,MT,99,GG,RO,RS,IE,ON,LT,NL,X1,CO,IT,LV,ZA,BG,BY,UA', '', 'LC', ''),
(314, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/225.png', '225', '225', 'Auto-Roulette 1', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'IT,MT,UK,99,SE,DK,RO,IM,EE,RS,GG,GR,ZA,CO,X1,66,BG,ON,CH,IE,LV,BY,DE,LT,UA,NL', '', 'LC', ''),
(315, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/229.png', '229', '229', 'Live - Roulette 8 - Indian', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'ON,BG,CO,IT,99,ZA,GR,MT,EE,UK,GG,IM,DK,RO,RS,X1,SE,CH,IE,NL,BY,UA,LT', '', 'LC', ''),
(316, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/545.png', '545', '545', 'Live - The Club Roulette', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'CH,BG,DK,MT,99,CO,EE,GG,X1,SE,RO,UK,ZA,IM,IT,GR,RS,IE,ON,BY,LV,LT,NL,DE', '', 'LC', ''),
(317, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/303.png', '303', '303', 'Blackjack 14', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'MT,SE,IM,99,DK,IT,RO,UK,ZA,GG,GR,EE,RS,CO,BG,66,X1,ON,CH,IE,BY,UA,LT,NL,DE,LV', '', 'LC', ''),
(318, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/111.png', '111', '111', 'Live - Other Promos', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,DK,EE,GG,GR,IM,MT,RS,UK,RO,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', ''),
(319, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25kingdomsnojp.png', '1495185205', 'vs25kingdomsnojp', '3 Kingdoms - Battle of Red Cliffs', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,IT', '1', 'RNG', ''),
(320, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/sc7piggiesai.png', '1521800031', 'sc7piggiesai', '7 Piggies 25,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(321, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/sc7piggies.png', '1508836715', 'sc7piggies', '7 Piggies 5,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,RS,LV,EE,UK,GG,RO,IM,MT,ZA,66,IE,UA,BY,BE', '1', 'RNG', ''),
(322, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25aztecking.png', '1621500658', 'vs25aztecking', 'Aztec King', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(323, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10txbigbass.png', '1644578872', 'vs10txbigbass', 'Big Bass Splash', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'ON,BG,LV,DK,LT,ES,CO,X1,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,PT,SE,BY,AT,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(324, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25bkofkngdm.png', '1598017285', 'vs25bkofkngdm', 'Book Of Kingdoms', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LT,SE,LV,UK,GG,IM,RO,RS,99,MT,EE,ES,ZA,DE,GR,IT,DK,CO,PT,BG,NL,UA,66,CH,IE,CZ,BE', '1', 'RNG', ''),
(325, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10bookfallen.png', '1631697713', 'vs10bookfallen', 'Book of Fallen', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IE,DE,GR,66,BY,NL,PT,ZA,IM,LT,ON,GG,LV,SE,EE,ES,UA,IT,DK,MT,99,RO,X1,CO,RS,BG,UK,AT,BE', '1', 'RNG', 'SUPER_SPIN,BUY'),
(326, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10bookviking.png', '1597743733', 'vs10bookviking', 'Book of Vikings', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'BG,GG,RO,EE,RS,IM,DE,GR,MT,UK,99,LT,LV,SE,PT,CO,IT,DK,X1,UA,ES,66,IE,BY,ON,ZA,BE', '1', 'RNG', 'BUY'),
(327, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20cleocatra.png', '1639648701', 'vs20cleocatra', 'Cleocatra', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20cleocatra&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,GR,IE,IM,RO,RS,UA,UK,ZA,LV,NL,SE,MT,IT,PT,CO,X1,LT,ON,DK,BG,ES,BY,BE', '1', 'RNG', 'BUY'),
(328, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs15b.png', '1455872873', 'vs15b', 'Crazy 7s', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(329, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vpdt11.png', '1644584790', 'vpdt11', 'Darts', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'CO,EE,IE,MT,RO,RS,SE,UA,UK,99,BY', '', 'VSB', ''),
(330, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scdiamond.png', '1508836171', 'scdiamond', 'Diamond Strike', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs15diamond&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,LV,EE,RS,99,RO,UK,GG,MT,ZA,66,IE,UA,BY,BE', '1', 'RNG', ''),
(332, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vplfl6.png', '1582273352', 'vplfl6', 'Fantastic League Football', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,MT,UK,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', ''),
(333, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vpfh3.png', '1584109543', 'vpfh3', 'Flat Horse Racing', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,UK,MT,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', ''),
(334, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vpmr9.png', '1618816543', 'vpmr9', 'Force 1 Racing', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,IE,MT,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', ''),
(335, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20fruitparty.png', '1581677875', 'vs20fruitparty', 'Fruit Party', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fruitparty&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'MT,CO,DK,RO,IT,LV,IM,99,ES,PT,SE,DE,UK,EE,GG,LT,GR,RS,BG,ZA,X1,UA,NL,66,CH,IE,BY,CZ,ON,AT,NO,BE', '1', 'RNG', 'BUY'),
(336, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25h.png', '1455872806', 'vs25h', 'Fruity Blast', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(337, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20gobnudge.png', '1643373167', 'vs20gobnudge', 'Goblin Heist Powernudge', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20gobnudge&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,X1,BG,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,LT,NL,ON,ES,SE,DK,PT,IT,LV,BY,AT,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY'),
(338, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scgoldrush.png', '1508842495', 'scgoldrush', 'Gold Rush 250,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,UK,MT,99,GG,LV,EE,IM,RO,ZA,66,IE,UA,BY,BE', '1', 'RNG', ''),
(339, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vpdr7.png', '1597653695', 'vpdr7', 'Greyhound Racing', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,MT,UK,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', ''),
(340, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20hockey.png', '1455872843', 'vs20hockey', 'Hockey League', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,PH', '1', 'RNG', ''),
(341, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs9hockey.png', '1455889237', 'vs9hockey', 'Hockey League Wild Match', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(342, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scsafari.png', '1508834908', 'scsafari', 'Hot Safari 50,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,LV,RO,IM,GG,UK,99,RS,MT,ZA,66,IE,UA,BY,BE', '1', 'RNG', ''),
(343, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scsafariai.png', '1521806186', 'scsafariai', 'Hot Safari 75,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(344, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs15ktv.png', '1455872871', 'vs15ktv', 'KTV', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,PH', '1', 'RNG', ''),
(345, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs5littlegem.png', '1643379569', 'vs5littlegem', 'Little Gem Hold and Spin', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'NL,SE,IT,PT,LV,X1,CO,ES,DK,LT,ON,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', ''),
(347, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/1401.png', '1401', '1401', 'Live - BOOM CITY', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,MT,GG,IE,IM,ON,UA,IT,CH,NL,LT,CO,BY,EE,LV,RS,SE,UK,GR', '', 'LC', ''),
(348, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/110.png', '110', '110', 'Live - D&W', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,DK,EE,GG,GR,IM,MT,RS,UK,RO,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', ''),
(349, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/108.png', '108', '108', 'Live - Dragon Tiger', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,EE,GG,GR,IM,MT,RS,SE,UK,CH,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', ''),
(350, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/105.png', '105', '105', 'Live - GAMESHOWS', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'UA,DE,LT,LV,NL,EE,IT,RO,99,DK,SE,ZA,UK,MT,RS,GR,IM,GG,66,BG,X1,CO,IE,ON,BY,CH', '', 'LC', ''),
(351, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/101.png', '101', '101', 'Live - Lobby', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'NL,UA,LT,LV,DE,RO,UK,MT,99,DK,IM,IT,SE,GR,ZA,RS,EE,GG,CO,BG,66,X1,IE,ON,BY,CH', '', 'LC', ''),
(352, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/103.png', '103', '103', 'Live - Lobby BJ', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'DE,UA,NL,LV,LT,MT,SE,99,RO,IM,DK,IT,UK,EE,ZA,GG,GR,RS,CO,66,BG,X1,IE,ON,BY,CH', '', 'LC', ''),
(353, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/104.png', '104', '104', 'Live - Lobby Baccarat', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'LT,LV,DE,NL,UA,99,IM,MT,RO,IT,SE,DK,UK,GR,EE,RS,ZA,GG,CO,BG,66,X1,IE,ON,BY,CH', '', 'LC', ''),
(354, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/102.png', '102', '102', 'Live - Lobby Roulette', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'NL,UA,LT,LV,DE,DK,UK,99,IT,MT,SE,RO,IM,GG,GR,RS,ZA,EE,CO,BG,66,X1,IE,ON,BY,CH', '', 'LC', ''),
(355, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/240.png', '240', '240', 'Live - PowerUp Roulette', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'BG,EE,MT,SE,ZA,99,CO,LV,RS,IT,RO,IM,NL,BY,X1,GG,CH,GR,LT,UA,DK,ON,UK,IE,DE', '', 'LC', ''),
(356, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/230.png', '230', '230', 'Live - Roulette 10 - Ruby', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'ON,BG,MT,UA,EE,LV,NL,X1,BY,CO,LT,GR,RO,99,CH,DK,IT,SE,GG,UK,ZA,DE,IM,RS,IE', '', 'LC', ''),
(357, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/107.png', '1531471148', '107', 'Live - Sic Bo', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'CO,DE,LT,99,DK,EE,GG,GR,IM,MT,RS,SE,UK,IE,ON,BY,LV,NL,UA', '', 'LC', ''),
(358, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/109.png', '109', '109', 'Live - Sic Bo & Dragon Tiger', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,DK,EE,GG,GR,IM,MT,RS,SE,UK,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', ''),
(359, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/1302.png', '1302', '1302', 'Live - Spaceman', NULL, 'lg', 'Live games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'LV,BG,IT,CO,NL,RS,CH,ON,GR,99,DE,X1,IM,EE,GG,MT,RO,UK,ZA,BY,DK,UA,SE,NO', '', 'LC', ''),
(360, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs1024mahjpanda.png', '1640010384', 'vs1024mahjpanda', 'Mahjong Panda', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=ID&cur=IDR&gameSymbol=vs1024mahjpanda&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(361, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs50northgard.png', '1641470156', 'vs50northgard', 'North Guardians', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs50northgard&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IT,NL,PT,SE,LV,GR,LT,BG,ON,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,CO,X1,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(362, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scpanda.png', '1508841864', 'scpanda', 'Panda Gold 10,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'RS,MT,EE,RO,UK,99,IM,LV,GG,ZA,66,IE,UA,BY,BE', '1', 'RNG', ''),
(363, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vppso4.png', '1582273067', 'vppso4', 'Penalty Shootout', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,UK,MT,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', ''),
(364, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs10egrich.png', '1640785834', 'vs10egrich', 'Queen of Gods', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10egrich&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,GR,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BG,PT,ON,SE,DK,LT,ES,CO,X1,IT,NL,BY,BE', '1', 'RNG', ''),
(365, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scqogai.png', '1521806036', 'scqogai', 'Queen of Gold 100,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(366, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scqog.png', '1508830808', 'scqog', 'Queen of Gold 100,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'IM,GG,UK,99,RO,EE,LV,MT,RS,ZA,66,IE,UA,BY,BE', '1', 'RNG', ''),
(367, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25romeoandjuliet.png', '1458728713', 'vs25romeoandjuliet', 'Romeo and Juliet', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(368, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20gg.png', '1455872848', 'vs20gg', 'Spooky Fortune', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(369, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs117649starz.png', '1577112971', 'vs117649starz', 'Starz Megaways', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'CO,RS,LV,ES,PT,RO,LT,GR,GG,DK,BG,UK,DE,EE,IT,99,SE,MT,IM,ZA,X1,UA,66,IE,BY,NL,BE', '1', 'RNG', ''),
(370, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vpsc10.png', '1644584646', 'vpsc10', 'Steeplechase', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,EE,RO,RS,SE,UA,IE,MT,CO,BY', '', 'VSB', ''),
(374, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs9catz.png', '1455872789', 'vs9catz', 'The Catfather', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99,PH', '1', 'RNG', ''),
(375, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs30catz.png', '1474540498', 'vs30catz', 'The Catfather Part II', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(376, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs20stickysymbol.png', '1642096017', 'vs20stickysymbol', 'The Great Stick-up', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,PT,SE,IT,X1,CO,LT,ON,GR,DK,NL,BG,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE'),
(377, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vplobby.png', '1618816510', 'vplobby', 'Virtual Sports Lobby', NULL, 'rgs-vsb', 'RGS - VSB', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', '99,MT,UK,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', ''),
(378, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scwolfgold.png', '1508829900', 'scwolfgold', 'Wolf Gold 1 Million', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', 'EE,UK,GG,MT,99,RO,IM,LV,RS,ZA,66,IE,UA,BY,BE', '1', 'RNG', ''),
(379, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/scwolfgoldai.png', '1521806288', 'scwolfgoldai', 'Wolf Gold 1,000,000', NULL, 'sc', 'Scratch card', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '99', '1', 'RNG', ''),
(380, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vs25wolfjpt.png', '1615460266', 'vs25wolfjpt', 'Wolf Gold Power Jackpot', NULL, 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '', '16:9', 'H5', 'NL,99,GG,IE,IM,LV,MT,RO,UK,DK,SE,UA,EE,BE', '1', 'RNG', ''),
(381, 'PragmaticPlay', 'upload/game_pic/pragmaticplay/vswayszombcarn.png', '1647605861', 'vswayszombcarn', 'Zombie Carnival', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayszombcarn&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR', 'vs', 'Video Slots', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:9', 'H5', '66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,ON,BG,ES,NL,LT,DK,IT,LV,PT,SE,CO,X1,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY'),
(1008, 'PGSoft', 'upload/game_pic/pgsoft/65.jpg', '1', '65', 'Mahjong Ways', 'https://m.pgsoft-games.com/65/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1009, 'PGSoft', 'upload/game_pic/pgsoft/74.jpg', '2', '74', 'Mahjong Ways 2', 'https://m.pgsoft-games.com/74/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1010, 'PGSoft', 'upload/game_pic/pgsoft/87.jpg', '3', '87', 'Treasures of Aztec', 'https://m.pgsoft-games.com/87/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1011, 'PGSoft', 'upload/game_pic/pgsoft/60.jpg', '4', '60', 'Leprechaun Riches', 'https://m.pgsoft-games.com/60/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1012, 'PGSoft', 'upload/game_pic/pgsoft/89.jpg', '5', '89', 'Lucky Neko', 'https://m.pgsoft-games.com/89/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1013, 'PGSoft', 'upload/game_pic/pgsoft/54.jpg', '6', '54', 'Captain\'s Bounty', 'https://m.pgsoft-games.com/54/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1014, 'PGSoft', 'upload/game_pic/pgsoft/84.jpg', '7', '84', 'Queen of Bounty ', 'https://m.pgsoft-games.com/84/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1015, 'PGSoft', 'upload/game_pic/pgsoft/104.jpg', '8', '104', 'Wild Bandito', 'https://m.pgsoft-games.com/104/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1016, 'PGSoft', 'upload/game_pic/pgsoft/106.jpg', '9', '106', 'Ways of the Qilin', 'https://m.pgsoft-games.com/106/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1017, 'PGSoft', 'upload/game_pic/pgsoft/57.jpg', '10', '57', 'Dragon Hatch', 'https://m.pgsoft-games.com/57/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1018, 'PGSoft', 'upload/game_pic/pgsoft/48.jpg', '11', '48', 'Double Fortune', 'https://m.pgsoft-games.com/48/index.html?ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&language=en-EN&__refer=m.pg-redirect.com&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1020, 'PGSoft', 'upload/game_pic/pgsoft/71.jpg', '13', '71', 'Caishen Gold', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243fortune&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1021, 'PGSoft', 'upload/game_pic/pgsoft/75.jpg', '14', '75', 'Ganesha Fortune', 'https://m.pgsoft-games.com/75/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1022, 'PGSoft', 'upload/game_pic/pgsoft/79.jpg', '15', '79', 'Dreams of Macau', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1023, 'PGSoft', 'upload/game_pic/pgsoft/98.jpg', '16', '98', 'Fortune Ox', 'https://m.pgsoft-games.com/98/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1024, 'PGSoft', 'upload/game_pic/pgsoft/135.jpg', '17', '135', 'Wild Bounty Showdown', 'https://m.pgsoft-games.com/135/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1025, 'PGSoft', 'upload/game_pic/pgsoft/1312883.jpg', '18', '1312883', 'Prosperity Fortune Tree', 'https://m.pgsoft-games.com/88/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1026, 'PGSoft', 'upload/game_pic/pgsoft/1372643.jpg', '19', '1372643', 'Diner Delights', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1027, 'PGSoft', 'upload/game_pic/pgsoft/73.jpg', '20', '73', 'Egypt\'s Book of Mystery', 'https://m.pgsoft-games.com/73/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1028, 'PGSoft', 'upload/game_pic/pgsoft/82.jpg', '21', '82', 'Phoenix Rises', 'https://m.pgsoft-games.com/82/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1029, 'PGSoft', 'upload/game_pic/pgsoft/83.jpg', '22', '83', 'Wild Fireworks', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1030, 'PGSoft', 'upload/game_pic/pgsoft/92.jpg', '23', '92', 'Thai River Wonders', 'https://m.pgsoft-games.com/92/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1031, 'PGSoft', 'upload/game_pic/pgsoft/94.jpg', '24', '94', 'Bali Vacation', 'https://m.pgsoft-games.com/94/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1032, 'PGSoft', 'upload/game_pic/pgsoft/103.jpg', '25', '103', 'Crypto Gold', 'https://m.pgsoft-games.com/103/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1033, 'PGSoft', 'upload/game_pic/pgsoft/110.jpg', '26', '110', 'Jurassic Kingdom', 'https://m.pgsoft-games.com/110/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1035, 'PGSoft', 'upload/game_pic/pgsoft/126.jpg', '28', '126', 'Fortune Tiger', 'https://m.pgsoft-games.com/126/index.html?l=id/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1036, 'PGSoft', 'upload/game_pic/pgsoft/127.jpg', '29', '127', 'Speed Winner', 'https://m.pgsoft-games.com/127/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1037, 'PGSoft', 'upload/game_pic/pgsoft/128.jpg', '30', '128', 'Legend of Perseus', 'https://m.pgsoft-games.com/128/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1039, 'PGSoft', 'upload/game_pic/pgsoft/3.jpg', '32', '3', 'Fortune Gods', 'https://m.pgsoft-games.com/126/index.html?l=id/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1040, 'PGSoft', 'upload/game_pic/pgsoft/24.jpg', '33', '24', 'Win Win Won', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1041, 'PGSoft', 'upload/game_pic/pgsoft/6.jpg', '34', '6', 'Medusa II', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1043, 'PGSoft', 'upload/game_pic/pgsoft/7.jpg', '36', '7', 'Medusa ', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1044, 'PGSoft', 'upload/game_pic/pgsoft/25.jpg', '37', '25', 'Plushie Frenzy', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1045, 'PGSoft', 'upload/game_pic/pgsoft/2.jpg', '38', '2', 'Gem Saviour', 'https://m.pgsoft-games.com/62/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1046, 'PGSoft', 'upload/game_pic/pgsoft/18.jpg', '39', '18', 'Hood vs Wolf', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1047, 'PGSoft', 'upload/game_pic/pgsoft/28.jpg', '40', '28', 'Hotpot', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1048, 'PGSoft', 'upload/game_pic/pgsoft/29.jpg', '41', '29', 'Dragon Legend', 'https://m.pgsoft-games.com/57/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1049, 'PGSoft', 'upload/game_pic/pgsoft/35.jpg', '42', '35', 'Mr. Hallow-Win', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1050, 'PGSoft', 'upload/game_pic/pgsoft/34.jpg', '43', '34', 'Legend of Hou Yi', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1051, 'PGSoft', 'upload/game_pic/pgsoft/36.jpg', '44', '36', 'Prosperity Lion', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1052, 'PGSoft', 'upload/game_pic/pgsoft/33.jpg', '45', '33', 'Hip Hop Panda', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1053, 'PGSoft', 'upload/game_pic/pgsoft/37.jpg', '46', '37', 'Santa\'s Gift Rush', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1054, 'PGSoft', 'upload/game_pic/pgsoft/38.jpg', '48', '38', 'Gem Saviour Sword', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1055, 'PGSoft', 'upload/game_pic/pgsoft/39.jpg', '49', '39', 'Piggy Gold', 'https://m.pgsoft-games.com/39/index.html?ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&language=en-EN&__refer=m.pg-redirect.com&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1056, 'PGSoft', 'upload/game_pic/pgsoft/41.jpg', '50', '41', 'Symbols of Egypt', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1057, 'PGSoft', 'upload/game_pic/pgsoft/44.jpg', '51', '44', 'Emperor\'s Favour', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1058, 'PGSoft', 'upload/game_pic/pgsoft/42.jpg', '52', '42', 'Ganesha Gold', 'https://m.pgsoft-games.com/42/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1059, 'PGSoft', 'upload/game_pic/pgsoft/40.jpg', '53', '40', 'Jungle Delight', 'https://m.pgsoft-games.com/40/index.html?ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&language=en-EN&__refer=m.pg-redirect.com&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1060, 'PGSoft', 'upload/game_pic/pgsoft/50.jpg', '54', '50', 'Journey to the Wealth', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', '');
INSERT INTO `games` (`cuid`, `provider`, `image`, `gameidnumeric`, `gameid`, `gamename`, `link_demo`, `gametypeid`, `category`, `technology`, `platform`, `demogame`, `aspectratio`, `technologyid`, `jurisdictions`, `frbavailable`, `datatype`, `features`) VALUES
(1061, 'PGSoft', 'upload/game_pic/pgsoft/61.jpg', '55', '61', 'Flirting Scholar', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1062, 'PGSoft', 'upload/game_pic/pgsoft/59.jpg', '56', '59', 'Ninja vs Samurai', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1063, 'PGSoft', 'upload/game_pic/pgsoft/64.jpg', '57', '64', 'Muay Thai Champion', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1064, 'PGSoft', 'upload/game_pic/pgsoft/63.jpg', '58', '63', 'Dragon Tiger Luck', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1065, 'PGSoft', 'upload/game_pic/pgsoft/68.jpg', '59', '68', 'Fortune Mouse', 'https://m.pgsoft-games.com/68/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1066, 'PGSoft', 'upload/game_pic/pgsoft/20.jpg', '60', '20', 'Reel Love', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1067, 'PGSoft', 'upload/game_pic/pgsoft/62.jpg', '61', '62', 'Gem Saviour Conquest', 'https://m.pgsoft-games.com/62/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1068, 'PGSoft', 'upload/game_pic/pgsoft/67.jpg', '62', '67', 'Shaolin Soccer', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1069, 'PGSoft', 'upload/game_pic/pgsoft/70.jpg', '63', '70', 'Candy Burst ', 'https://m.pgsoft-games.com/70/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1070, 'PGSoft', 'upload/game_pic/pgsoft/69.jpg', '64', '69', 'Bikini Paradise ', 'https://m.pgsoft-games.com/69/index.html?l=id/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1071, 'PGSoft', 'upload/game_pic/pgsoft/85.jpg', '65', '85', 'Genie\'s 3 Wishes', 'https://m.pgsoft-games.com/85/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1072, 'PGSoft', 'upload/game_pic/pgsoft/80.jpg', '66', '80', 'Circus Delight', 'https://m.pgsoft-games.com/80/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1073, 'PGSoft', 'upload/game_pic/pgsoft/90.jpg', '67', '90', 'Secrets of Cleopatra', 'https://m.pgsoft-games.com/90/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1074, 'PGSoft', 'upload/game_pic/pgsoft/58.jpg', '68', '58', 'Vampire\'s Charm', 'https://m.pgsoft-games.com/58/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1075, 'PGSoft', 'upload/game_pic/pgsoft/88.jpg', '69', '88', 'Jewels of Prosperity', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1076, 'PGSoft', 'upload/game_pic/pgsoft/97.jpg', '70', '97', 'Jack Frost\'s Winter', 'https://m.pgsoft-games.com/97/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1077, 'PGSoft', 'upload/game_pic/pgsoft/86.jpg', '71', '86', 'Galactic Gems', 'https://m.pgsoft-games.com/86/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1078, 'PGSoft', 'upload/game_pic/pgsoft/91.jpg', '72', '91', 'Guardians of Ice and Fire', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1079, 'PGSoft', 'upload/game_pic/pgsoft/93.jpg', '73', '93', 'Opera Dynasty', 'https://m.pgsoft-games.com/93/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1080, 'PGSoft', 'upload/game_pic/pgsoft/95.jpg', '74', '95', 'Majestic Treasures', 'https://m.pgsoft-games.com/95/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1081, 'PGSoft', 'upload/game_pic/pgsoft/100.jpg', '75', '100', 'Candy Bonanza', 'https://m.pgsoft-games.com/100/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1082, 'PGSoft', 'upload/game_pic/pgsoft/105.jpg', '76', '105', 'Heist  Stakes', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1083, 'PGSoft', 'upload/game_pic/pgsoft/101.jpg', '77', '101', 'Rise of Apollo', 'https://m.pgsoft-games.com/101/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1084, 'PGSoft', 'upload/game_pic/pgsoft/102.jpg', '78', '102', 'Mermaid Riches', 'https://m.pgsoft-games.com/102/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1086, 'PGSoft', 'upload/game_pic/pgsoft/115.jpg', '80', '115', 'Supermarket Spree', 'https://m.pgsoft-games.com/115/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1087, 'PGSoft', 'upload/game_pic/pgsoft/108.jpg', '81', '108', 'Buffalo Win', 'https://m.pgsoft-games.com/108/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1088, 'PGSoft', 'upload/game_pic/pgsoft/107.jpg', '82', '107', 'Legendary Monkey King', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1091, 'PGSoft', 'upload/game_pic/pgsoft/118.jpg', '85', '118', 'Mask Carnival', 'https://m.pgsoft-games.com/118/index.html?l=id/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1092, 'PGSoft', 'upload/game_pic/pgsoft/112.jpg', '86', '112', 'Oriental Prosperity', 'https://m.pgsoft-games.com/112/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1093, 'PGSoft', 'upload/game_pic/pgsoft/122.jpg', '87', '122', 'Garuda Gems', 'https://m.pgsoft-games.com/122/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&utm_medium=social', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1094, 'PGSoft', 'upload/game_pic/pgsoft/121.jpg', '88', '121', 'Destiny of Sun & Moon', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1095, 'PGSoft', 'upload/game_pic/pgsoft/125.jpg', '89', '125', 'Butterfly Blossom', 'https://m.pgsoft-games.com/125/index.html?l=id/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1096, 'PGSoft', 'upload/game_pic/pgsoft/123.jpg', '90', '123', 'Rooster Rumble', 'https://m.pgsoft-games.com/123/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1098, 'PGSoft', 'upload/game_pic/pgsoft/124.jpg', '92', '124', 'Battleground Royale', 'https://m.pgsoft-games.com/124/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1100, 'PGSoft', 'upload/game_pic/pgsoft/130.jpg', '94', '130', 'Lucky Piggy', 'https://m.pgsoft-games.com/130/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1101, 'PGSoft', 'upload/game_pic/pgsoft/132.jpg', '95', '132', 'Wild Coaster', 'https://m.pgsoft-games.com/132/index.html?l=id&ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1102, 'PGSoft', 'upload/game_pic/pgsoft/1338274.jpg', '96', '1338274', 'Totem Wonders', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1103, 'PGSoft', 'upload/game_pic/pgsoft/1368367.jpg', '97', '1368367', 'Alchemy Gold', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1104, 'PGSoft', 'upload/game_pic/pgsoft/1340277.jpg', '98', '1340277', 'Asgardian Rising', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1105, 'PGSoft', 'upload/game_pic/pgsoft/1402846.jpg', '99', '1402846', 'Midas Fortune', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1106, 'PGSoft', 'upload/game_pic/pgsoft/1543462.jpg', '100', '1543462', 'Fortune Tiger', 'https://m.pgsoft-games.com/126/index.html?l=id/index.html?l=id&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&from=https://&language=id-ID&__refer=m.pg-redirect.net&or=static.pgsoft-games.com', 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1112, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1042.jpg', '100', '1543462', 'Stick\'em', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1113, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1043.jpg', '100', '1543462', 'OmNom', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1114, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1048.jpg', '100', '1543462', 'Cubes', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1115, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1049.jpg', '100', '1543462', 'Miami Multiplier\r\n', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1116, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1055.jpg', '100', '1543462', 'Cash Compass\n', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1117, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1058.jpg', '100', '1543462', 'The Respinners\r\n', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1118, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1066.jpg\r\n', '100', '1543462', 'Aztec Twist\r\n', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1119, 'Hacksaw', 'upload/game_pic/hacksaw/HACKSAW_1059.jpg\r\n', '100', '1543462', 'Chaos Crew\r\n', NULL, 'vs', 'Slot Games', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1120, 'PPcasino', 'upload/game_pic/casino/1.jpg\r\n', '100', '1543462', 'Indonesian Speed Baccarat 1', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1121, 'PPcasino', 'upload/game_pic/casino/2.jpg\n', '100', '1543462', 'Mega Wheel\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1122, 'PPcasino', 'upload/game_pic/casino/3.jpg\n', '100', '1543462', 'Nexus Lounge\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1123, 'PPcasino', 'upload/game_pic/casino/4.jpg\n', '100', '1543462', 'Baccarat Lobby\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1124, 'PPcasino', 'upload/game_pic/casino/5.jpg\n', '100', '1543462', 'Sweet Bonanza Candyland\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1125, 'PPcasino', 'upload/game_pic/casino/6.jpg\n', '100', '1543462', 'Sic Bo\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1126, 'PPcasino', 'upload/game_pic/casino/7.jpg\n', '100', '1543462', 'Mega Sicbo\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1127, 'PPcasino', 'upload/game_pic/casino/8.jpg\n', '100', '1543462', 'Roulette Lobby\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1128, 'PPcasino', 'upload/game_pic/casino/9.jpg\n', '100', '1543462', 'Treasure Island\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1129, 'PPcasino', 'upload/game_pic/casino/10.jpg\n', '100', '1543462', 'Mega Roulette\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1130, 'PPcasino', 'upload/game_pic/casino/11.jpg\n', '100', '1543462', 'Lucky 6 Roulette\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1131, 'PPcasino', 'upload/game_pic/casino/12.jpg\n', '100', '1543462', 'Blackjack lobby\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1132, 'PPcasino', 'upload/game_pic/casino/13.jpg\n', '100', '1543462', 'PowerUP Roulette\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1133, 'PPcasino', 'upload/game_pic/casino/14.jpg\n', '100', '1543462', 'Vegas Ball Bonanza\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1134, 'PPcasino', 'upload/game_pic/casino/15.jpg\n', '100', '1543462', 'Boom City\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1135, 'PPcasino', 'upload/game_pic/casino/16.jpg\n', '100', '1543462', 'Dragon Tiger\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1136, 'PPcasino', 'upload/game_pic/casino/17.jpg\n', '100', '1543462', 'Andar Bahar\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1137, 'PPcasino', 'upload/game_pic/casino/18.jpg\n', '100', '1543462', 'Big Bass Crash™\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1138, 'PPcasino', 'upload/game_pic/casino/19.jpg\n', '100', '1543462', 'Spaceman\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1140, 'Sport', 'upload/game_pic/sport/cmd.webp\r\n', '100', '1543462', 'CMD', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1141, 'Sport', 'upload/game_pic/sport/sbo.webp\r\n', '100', '1543462', 'SBO SPROTSBOOK', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1142, 'Sport', 'upload/game_pic/sport/ibcsports.webp\r\n', '100', '1543462', 'SABA SPORTSBOOK', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1143, 'Sport', 'upload/game_pic/sport/imsportsbook.webp\r\n', '100', '1543462', 'IM SPORTSBOOK', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1144, 'Sport', 'upload/game_pic/sport/opus.webp\r\n', '100', '1543462', 'OPUS', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1145, 'Sport', 'upload/game_pic/sport/sbovirtualgames.webp\r\n', '100', '1543462', 'SBO VIRTUAL GAMES', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1146, 'Sport', 'upload/game_pic/sport/wbet.webp\r\n', '100', '1543462', 'WEBET', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1147, 'Sport', 'upload/game_pic/sport/ppvirtualgames.webp\r\n', '100', '1543462', 'PP VIRTUAL SPORTS', NULL, 'vs', 'Sport', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1148, 'Crashgame', 'upload/game_pic/crash/limbocat.jpg\r\n', '100', '1543462', 'LIMBO CAT', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1149, 'Crashgame', 'upload/game_pic/crash/fighter.jpg\r\n', '100', '1543462', 'F777 FIGHTER', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1150, 'Crashgame', 'upload/game_pic/crash/cricketcrash.jpg\r\n', '100', '1543462', 'CRICKET CRASH', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1151, 'Crashgame', 'upload/game_pic/casino/19.jpg\r\n', '100', '1543462', 'Spaceman\r\n', NULL, 'vs', 'Casino', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1152, 'Microgaming', 'upload/game_pic/microgaming/Wildfire Wins.jpg\r\n', '100', '1543462', 'Wildfire Wins', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1153, 'Microgaming', 'upload/game_pic/microgaming/Soccer Striker.jpg\r\n', '100', '1543462', 'Soccer Striker', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1154, 'Microgaming', 'upload/game_pic/microgaming/SMG_incanAdventure.jpg\r\n', '100', '1543462', 'Incan Adventure', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1155, 'Microgaming', 'upload/game_pic/microgaming/Pong Pong Mahjong.jpg\r\n', '100', '1543462', 'Pong Pong Mahjong', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1157, 'Microgaming', 'upload/game_pic/microgaming/Monster Blast.jpg\r\n', '100', '1543462', 'Monster Blast', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1158, 'Microgaming', 'upload/game_pic/microgaming/Masters of Olympus.jpg', '100', '1543462', 'Masters of Olympus', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1159, 'Microgaming', 'upload/game_pic/microgaming/Mask of Amun.jpg\r\n', '100', '1543462', 'Mask of Amun', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1160, 'Microgaming', 'upload/game_pic/microgaming/Lucky Twins Wilds.jpg\r\n\r\n', '100', '1543462', 'Lucky Twins Wilds', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1161, 'Microgaming', 'upload/game_pic/microgaming/Lucky Twins Nexus.jpg\r\n', '100', '1543462', 'Lucky Twins Nexus', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1162, 'Microgaming', 'upload/game_pic/microgaming/Lucky Twins Catcher.jpg', '100', '1543462', 'Lucky Twins Catcher', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1163, 'Microgaming', 'upload/game_pic/microgaming/Lightning Fortunes.jpg', '100', '1543462', 'Lightning Fortunes', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1164, 'Microgaming', 'upload/game_pic/microgaming/Leprechaun Strike.jpg\r\n', '100', '1543462', 'Leprechaun Strike', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1165, 'Microgaming', 'upload/game_pic/microgaming/GoldenTyrantFishing.jpg', '100', '1543462', 'Golden Tyrant Fishing', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1166, 'Microgaming', 'upload/game_pic/microgaming/Gold Blitz.jpg', '100', '1543462', 'Gold Blitz', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1167, 'Microgaming', 'upload/game_pic/microgaming/FireandRosesJoker.jpg', '100', '1543462', 'Fire and Roses Joker', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1168, 'Microgaming', 'upload/game_pic/microgaming/Diamond King Jackpots.jpg', '100', '1543462', 'Diamond King Jackpots', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1169, 'Microgaming', 'upload/game_pic/microgaming/Cricket Star Scratch.jpg\r\n', '100', '1543462', 'Cricket Star Scratch', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1170, 'Microgaming', 'upload/game_pic/microgaming/Candy Rush Wilds.jpg', '100', '1543462', 'Candy Rush Wilds', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1171, 'Microgaming', 'upload/game_pic/microgaming/AncientFortunesZeus.jpg', '100', '1543462', 'Ancient Fortunes Zeus\r\n', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1172, 'Microgaming', 'upload/game_pic/microgaming/Almighty Zeus Empire.jpg', '100', '1543462', 'Almighty Zeus Empire', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1173, 'Microgaming', 'upload/game_pic/microgaming/10000 Wishes.jpg', '100', '1543462', '10000 Wishes', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1174, 'Habanero', 'upload/game_pic/habanero/5 Lucky Lions.jpg', '100', '1543462', '5 Lucky Lions', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1175, 'Habanero', 'upload/game_pic/habanero/Carnival Cash.jpg', '100', '1543462', 'Carnival Cash', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1176, 'Habanero', 'upload/game_pic/habanero/Happiest Christmas Tree.jpg\r\n', '100', '1543462', 'Happiest Christmas Tree', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1177, 'Habanero', 'upload/game_pic/habanero/Hot Hot Fruit.jpg', '100', '1543462', 'Hot Hot Fruit', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1178, 'Habanero', 'upload/game_pic/habanero/Koi Gate.jpg', '100', '1543462', 'Koi Gate', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1179, 'Habanero', 'upload/game_pic/habanero/Lantern Luck.jpg', '100', '1543462', 'Lantern Luck', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1180, 'Habanero', 'upload/game_pic/habanero/Laughing Buddha.jpg\n', '100', '1543462', 'Laughing Buddha', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1181, 'Habanero', 'upload/game_pic/habanero/Mount Mazuma.jpg', '100', '1543462', 'Mount Mazuma', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1182, 'Habanero', 'upload/game_pic/habanero/Mystic Fortune Deluxe.jpg', '100', '1543462', 'Mystic Fortune Deluxe', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1183, 'Habanero', 'upload/game_pic/habanero/Return To The Feature.jpg', '100', '1543462', 'Return To The Feature', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1184, 'Habanero', 'upload/game_pic/habanero/Wild Trucks.jpg\r\n', '100', '1543462', 'Wild Trucks', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1185, 'Habanero', 'upload/game_pic/habanero/Nine Tails.jpg\r\n', '100', '1543462', 'Nine Tails', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1186, 'Jili', 'upload/game_pic/jili/Aztec Priestess.jpg', '100', '1543462', 'Aztec Priestess', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1187, 'Jili', 'upload/game_pic/jili/Fortune Gems 2.jpg', '100', '1543462', 'Fortune Gems 2', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1188, 'Jili', 'upload/game_pic/jili/Golden Joker.jpg\r\n', '100', '1543462', 'Golden Joker', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1189, 'Jili', 'upload/game_pic/jili/Golden Temple.jpg', '100', '1543462', 'Golden Temple', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1190, 'Jili', 'upload/game_pic/jili/Medusa.jpg', '100', '1543462', 'Medusa', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1191, 'nolimitcity', 'upload/game_pic/jili/Barbarian Fury.jpg', '100', '1543462', 'Barbarian Fury', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1192, 'nolimitcity', 'upload/game_pic/jili/Blood & Shadow.jpg\n', '100', '1543462', 'Blood & Shadow', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1193, 'nolimitcity', 'upload/game_pic/jili/Dead Canary.jpg', '100', '1543462', 'Dead Canary', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1194, 'nolimitcity', 'upload/game_pic/jili/Tombstone No Mercy.jpg', '100', '1543462', 'Tombstone No Mercy', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1195, 'nolimitcity', 'upload/game_pic/jili/Devil\'s Crossroad.jpg', '100', '1543462', 'Devil\'s Crossroad\n', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1196, 'Jili', 'upload/game_pic/jili/Money Coming.jpg', '100', '1543462', 'Money Coming', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1197, 'Jili', 'upload/game_pic/jili/Neko Fortune.jpg', '100', '1543462', 'Neko Fortune', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1198, 'Jili', 'upload/game_pic/jili/Pirate Queen.jpg', '100', '1543462', 'Pirate Queen', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', ''),
(1199, 'Jili', 'upload/game_pic/jili/Wild Ace.jpg', '100', '1543462', 'Wild Ace', NULL, 'vs', 'slot', 'html5', 'MOBILE,DOWNLOAD,WEB', '1', '16:09', 'H5', '', '1', 'RNG', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemberitahuan`
--

CREATE TABLE `pemberitahuan` (
  `id_pemberitahuan` int(11) NOT NULL,
  `nama_pengguna_pemberitahuan` varchar(255) DEFAULT NULL,
  `teks_pemberitahuan_1` text NOT NULL,
  `teks_pemberitahuan_2` text NOT NULL,
  `teks_pemberitahuan_3` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `waktu_dibuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_baca` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemberitahuan`
--

INSERT INTO `pemberitahuan` (`id_pemberitahuan`, `nama_pengguna_pemberitahuan`, `teks_pemberitahuan_1`, `teks_pemberitahuan_2`, `teks_pemberitahuan_3`, `keterangan`, `waktu_dibuat`, `status_baca`) VALUES
(116, 'caca01', '234', '432', '432', '432', '2024-07-21 08:29:47', 1),
(120, 'caca01', 'cashdrop', 'disetujui', 'oktober 20224', 'testing\r\n', '2024-07-24 11:44:40', 1),
(121, 'caca01', 'cashdrop', 'disetujui', '32', 'eqeqwewqeqweqw', '2024-07-24 12:26:40', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_pengaturan` int(11) NOT NULL,
  `nama_pengaturan` varchar(255) NOT NULL,
  `isi_1_pengaturan` text DEFAULT NULL,
  `isi_2_pengaturan` text DEFAULT NULL,
  `isi_3_pengaturan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id_pengaturan`, `nama_pengaturan`, `isi_1_pengaturan`, `isi_2_pengaturan`, `isi_3_pengaturan`) VALUES
(1, 'judul_web', 'LINGKARBET : SITUS SLOT TERGACOR MAHJONG WINS 3 SCATER HITAM ATAU BLACK SCATER  , TERBAIK , AMAN & TERPERCAYA DI INDONESIA SEJAK 2020.', NULL, NULL),
(2, 'deskripsi_web', 'PRIORITAS UTAMA SITUS PIPELBET ADALAH KEMENANGAN PARA MEMBER , KEAMANAN DATA MEMBER & KENYAMANAN MEMBER DALAM BERMAIN & BERTRANSAKSI DEPEOSIT  & WITHDRAW (  BERAPAPUN KEMENANGAN BOS AKAN KAMI BAYAR LUNAS DALAM 5 MENIT ).PRIORITAS UTAMA KAMI ADALAH KEMENANGAN PARA MEMBER , KEAMANAN DATA MEMBER & KENYAMANAN MEMBER DALAM BERMAIN & BERTRANSAKSI DEPEOSIT  & WITHDRAW (  BERAPAPUN KEMENANGAN BOS AKAN KAMI BAYAR LUNAS DALAM 5 MENIT ).', NULL, NULL),
(3, 'kata_kunci_web', 'LINGKARBET | BLACK SCATER LINGKARBET | SCATER HITAM LINGKARBET | LINGKARBET BLACK SCATER | LINGKARBET SCATER HITAM | SLOT LINGKARBET | SLOT ONLINE | SLOT GACOR | LINK SLOT LINGKARBET | DAFTAR SLOT LINGKARBET | SLOT TERPERCAYA | SLOT GACOR TERPERCAYA | SLOT ONLINE TERPERCAYA | LINGKARBET LINK | LINGKARBET LINK LOGIN | LINGKARBET LINK ALTERNATIF | LINGKARBET ALTERNATIF | LINGKARBET LOGIN | LINK LINGKARBET | LOGIN LINGKARBET | ALTERNATIF LINGKARBET | LINK LOGIN LINGKARBET | LINK ALTERNATIF LINGKARBET | LINGKARBET SLOT | LINGKARBET SPORT | LINGKARBET LIVECASINO | LINGKARBET CASINO | LINGKARBET TOGEL | LINGKARBET ESPORT | LINGKARBET EGAMES | LINGKARBET TEMBAK IKAN | SITUS SLOT GACOR HARI INI | SITUS SLOT GACOR SEPANJANG MASA | SITUS SLOT AMAN DAN TERPERCAYA | SITUS SLOT TERPERCAYA 2024 | SITUS SLOT ONLINE | SITUS SLOT ONLINE GACOR | SITUS SLOT GACOR HARI INI | SITUS SLOT ONLINE GACOR | SITUS SLOT ONLINE GACOR AMAN DAN TERPERCAYA | SITUS SLOT ONLINE TERPERCAYA | SITUS SLOT ONLINE TERPERCAYA 2024 | SITUS ONLINE RTP TERLENGKAP | SITUS RTP TERLENGKAP | SITUS RTP TERBAIK | SITUS ONLINE RTP TERBAIK | SITUS SLOT TERBAIK | SITUS SLOT TERAMAN | SITUS SLOT RTP TERBAIK | SITUS SLOT RTP TERGACOR | SITUS SLOT ONLINE RTP TERBAIK | SITUS SLOT ONLINE RTP TERGACOR | SITUS SLOT RTP TERGACOR HARI INI | SITUS SLOT ONLINE RTP TERGACOR HARI INI | SITUS SLOT BONUS 100% | SITUS BONUS 100% | SITUS SLOT BONUS 100% MEMBER BARU | SITUS SLOT BONUS 100% MEMBER BARU | BONUS 100% MEMBER BARU | BONUS 100% DIAWAL | SITUS SLOT AMANAH | SITUS SLOT PALING AMANAH | SITUS SLOT PALING AMANAH 2024 | SITUS SLOT MUDAH JP | SITUS SLOT MUDAH JACKPOT | SITUS SLOT KASIH KEMENANGAN UNTUK MEMBER BARU | SITUS KASIH KEMENANGAN UNTUK MEMBER BARU | SITUS SLOT ONLINE KASIH KEMENANGAN UNTUK MEMBER BARU | DAFTAR SITUS SLOT ONLINE TERPERCAYA | DAFTAR SITUS SLOT TERPERCAYA | DAFTAR SITUS SLOT ONLINE TERPERCAYA 2024 | DAFTAR SITUS SLOT TERPERCAYA 2024 | DAFTAR SITUS SLOT88 | DAFTAR SITUS SLOT88 ONLINE | DAFTAR SITUS GAMPANG JP | DAFTAR SITUS SLOT GAMPANG JP | DAFTAR SITUS SLOT ONLINE GAMPANG JP | DAFTAR SITUS GAMPANG JACKPOT | DAFTAR SITUS SLOT GAMPANG JACKPOT | DAFTAR SITUS SLOT ONLINE GAMPAMG JAKCPOT | DAFTAR SITUS GAMPANG MAXWIN | DAFTAR SITUS SLOT GAMPANG MAXWIN | DAFTAR SITUS SLOT ONLINE GAMPANG MAXWIN | MAHJONG WINS 3 | MAHJONG WINS 3 SCATER HITAM | MAHJONG WINS 3 BLACK SCATER | SCATER HITAM | BLACK SCATER | SITUS MUDAH SCATER HITAM | SITUS MUDAH BLACK SCATER | SITUS GAMPANG SCATER HITAM | SITUS GAMPANG BLACK SCATER |BLACK SCATER GACOR | SCATER HITAM GACOR | SCATER HITAM GACOR HARI INI | BLACK SCATER GACOR HARI INI | SCATER HITAM TERGACOR | BLACK SCATER TERGACOR | SCATER HITAM TERGACOR HARI INI | BLACK SCATER TERGACOR HARI INI | MAHJONG WINS 3 MUDAH JP | MAHJONG WINS 3 MUDAH JACKPOT | MAHJONG WINS 3 MUDAH BLACK SCATER | MAHJONG WINS 3 MUDAH SCATER HITAM | WAHJONG WINS 3 PRAGMATIC | MAHJONG WINS 3 PRAGMATIC PLAY |', NULL, NULL),
(4, 'link_apk_web', '#', NULL, NULL),
(5, 'logo_web', '1309230178_l_i_n_g_k_a_r.png', NULL, NULL),
(6, 'favicon_web', '2391948383_l_i_n_g_k_a_r.png', NULL, NULL),
(7, 'teks_berjalan_web', 'SELAMAT DATANG DI LINGKARBET : SITUS SLOT TERGACOR MAHJONG WINS 3 SCATER HITAM ATAU BLACK SCATER  , TERBAIK , AMAN & TERPERCAYA DI INDONESIA SEJAK 2020.', 'PERHATIAN : SEBELUM MELAKUKAN TRANSFER DANA HARAP CEK REKENING AKTIF DEPOSIT KAMI DIMENU DEPOSIT', 'MAINKAN GAME TERBARU MAHJONG WINS 3 BLACK SCATER DAN MENANGKAN EVENT SCATER HITAM DENGAN HADIAH PULUHAN JUTA RUPIAH SEKARANG JUGA!'),
(8, 'facebook_web', '#', NULL, NULL),
(9, 'telegram_web', '#', '#', NULL),
(10, 'popup_pengumuman_web', '9274981880_untitled_design.png', 'VPN WARP 1.1.1.1', NULL),
(11, 'link_livechat_web', 'https://tawk.to/chat/670020e437379df10df1e6c5/1i9c810i8', NULL, NULL),
(12, 'popup_teks_belum_login_web', 'Silahkan Login Terlebih  Dahulu !', NULL, NULL),
(13, 'popup_teks_tidak_ada_saldo_web', 'Saldo Tidak Cukup !', NULL, NULL),
(14, 'popup_teks_ada_saldo_web', '', NULL, NULL),
(15, 'popup_teks_setelah_deposit_web', '', NULL, NULL),
(16, 'popup_teks_setelah_withdraw_web', '', NULL, NULL),
(17, 'rtp_web', '37', '93', NULL),
(18, 'bg_1_web', '#f9da41', NULL, NULL),
(19, 'bg_2_web', '', NULL, NULL),
(20, 'bg_3_web', '', NULL, NULL),
(21, 'script_livechat_web', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/670020e437379df10df1e6c5/1i9c810i8\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', NULL, NULL),
(22, 'whatsapp_web', 'https://wa.me/6282123180203', NULL, NULL),
(24, 'bg_gradient_1_web', '#071d60', '#0e3097', '#071d5f'),
(25, 'bg_gradient_2_web', '#0b1e5e', '#153194', '#0b1e5d'),
(26, 'bg_gradient_3_web', '#ff0088', '#df2641', '#0c34d4'),
(27, 'bg_gradient_4_web', '#232425', '#000000', '#232425'),
(28, 'bg_gradient_5_web', '#ffd500', '#000000', '#756200'),
(29, 'qris_web', '8875343661_bg-header.jpg', NULL, NULL),
(30, 'bg_head_dekstop', '8145467670_bg-main.jpg', '2491328945_bg-main.jpg', ''),
(31, 'bg_body_dekstop', '2535978599_bg-main.jpg', '9859462836_pk88-backmain-euro2024.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promosi`
--

CREATE TABLE `promosi` (
  `id_promosi` int(11) NOT NULL,
  `gambar_promosi` text NOT NULL,
  `judul_promosi` varchar(255) NOT NULL,
  `kategori_promosi` varchar(255) NOT NULL,
  `deskripsi_promosi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `promosi`
--

INSERT INTO `promosi` (`id_promosi`, `gambar_promosi`, `judul_promosi`, `kategori_promosi`, `deskripsi_promosi`) VALUES
(1, '8789881984_scater_hitam.png', 'EVENT SLOT MAHJONG WINS 3 SCATER HITAM', 'EVENT SLOT', '<div style=\"background-color: rgb(24, 24, 24);\" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\" style=\"\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\"><font color=\"#ffffff\" face=\"FontsFreeNetAvenirLTStdBook\"><span style=\"font-size: 16px;\">ð„ð•ð„ðð“ ðŒð€ð‡ð‰ðŽðð† ð–ðˆðð’ ðŸ‘ ð’ð‚ð€ð“ð„ð‘ ð‡ðˆð“ð€ðŒ</span></font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\"><font color=\"#ffffff\" face=\"FontsFreeNetAvenirLTStdBook\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\"><font color=\"#ffffff\" face=\"FontsFreeNetAvenirLTStdBook\"><span style=\"font-size: 16px;\">ðŸ ð’ð‚ð€ð“ð„ð‘ ð‡ðˆð“ð€ðŒ ððŽðð”ð’ ðŸðŸŽð‰ð”ð“ð€</span></font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\"><font color=\"#ffffff\" face=\"FontsFreeNetAvenirLTStdBook\"><span style=\"font-size: 16px;\">ðŸ ð’ð‚ð€ð“ð„ð‘ ð‡ðˆð“ð€ðŒ ððŽðð”ð’ ðŸðŸŽð‰ð”ð“ð€</span></font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\"><font color=\"#ffffff\" face=\"FontsFreeNetAvenirLTStdBook\"><span style=\"font-size: 16px;\">ðŸ‘ ð’ð‚ð€ð“ð„ð‘ ð‡ðˆð“ð€ðŒ ððŽðð”ð’ ðŸ‘ðŸŽð‰ð”ð“ð€</span></font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\"><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\">SYARAT DAN KETENTUAN :</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\"><span style=\"background-color: var(--bs-card-bg); color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">â€¢</span>&nbsp;Harap Sertakan SCREENSHOOT &amp; VIDEO REPLAY kemenangan scater hitam kepada CS/ADMIN LINGKARBET melalui whatsapp maupun livechat.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\">â€¢ Even ini dalam 1 Hari hanya bisa melakukan Claim sebanyak 1x ( Reset setiap jam 00.01 ).</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\">â€¢ LINGKARBET Berhak membatalkan promosi apabila terjadi kecurangan.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\">â€¢ Syarat dan ketentuan dapat berubah sewaktu-waktu tanpa adanya pemberitahuan.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; background-color: rgb(48, 51, 78);\">â€¢ Segala jenis keputusan pihak LINGKARBET adalah mutlak dan tidak dapat di ganggu-gugat.</p></div></div>'),
(2, '4633126821_welcome_1.png', 'WELCOME', 'MIN DEP{O & WD', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><font color=\"#ffffff\" face=\"FontsFreeNetAvenirLTStdBook\"><span style=\"font-size: 16px;\">Minimal Deposit 25ribu<br>Minimal Withdraw 50ribu</span></font></p>'),
(3, '7138499205_member_baru.png', 'BONUS MEMBER BARU 100%', 'MEMBER BARU', '<h4 style=\"margin-bottom: 0.5rem; line-height: 1.2;\"><div style=\"background-color: rgb(24, 24, 24);\" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"\"><div>â€¢ 50.000 + 50.000 ( TO 8x)</div><div>â€¢ 100.000 + 100.000 ( TO 8x)</div><div>â€¢ 200.000 + 200.000 ( TO 7x)</div><div>â€¢ 300.000 + 300.000 ( TO 7x)</div><div>â€¢ 400.000 + 400.000 ( TO 7x)</div><div>â€¢ 500.000 + 500.000 ( TO 7x)</div><div><br></div><div>SYARAT &amp; KETENTUAN :&nbsp;</div><div>â€¢ Permainan slot ( Semua Provider )</div><div>â€¢ Diizinkan untuk BUY SPIN &amp; Tidak diizinkan HOLD SPIN ( SALDO AKAN DIANGAP HANGUS )</div><div>â€¢ Bebas IP &amp; 1 data rekening hanya bisa klaim 1kali.</div><div>â€¢ LINGKARBET Berhak membatalkan promosi apabila terjadi kecurangan.</div><div>â€¢ Syarat dan ketentuan dapat berubah sewaktu-waktu tanpa adanya pemberitahuan.</div><div>â€¢ Segala jenis keputusan pihak LINGKARBET adalah mutlak dan tidak dapat di ganggu-gugat.</div></div></div></h4>'),
(4, '4258271081_cashback.png', 'BONUS CASHBACK MINGGUAN', 'SPORT - LIVECASINO - SLOT', '<div style=\"background-color: rgb(24, 24, 24);\" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"\"><div><font color=\"#d6d6dd\">SYARAT &amp; KETENTUAN :</font></div><div><font color=\"#d6d6dd\">â€¢ Minimal bonus yang diberikan = 10.000</font></div><div><font color=\"#d6d6dd\">â€¢ Minimal kekalahan dalam 1 minggu = 200.000</font></div><div><font color=\"#d6d6dd\">â€¢ SPORT - CASINO - SLOT</font></div><div><font color=\"#d6d6dd\">â€¢ Bonus dibagikan secara otomatis bagi member yang memenuhi syarat pada hari senin pukul 12.00 wib.</font></div><div><font color=\"#d6d6dd\">â€¢ LINGKARBET Berhak membatalkan promosi apabila terjadi kecurangan.</font></div><div><font color=\"#d6d6dd\">â€¢ Syarat dan ketentuan dapat berubah sewaktu-waktu tanpa adanya pemberitahuan.</font></div><div><font color=\"#d6d6dd\">â€¢ Segala jenis keputusan pihak LINGKARBET adalah mutlak dan tidak dapat di ganggu-gugat.</font></div></div></div>'),
(5, '9423813013_turnover.png', 'BONUS ROLLINGAN TURNOVER MINGGUAN', 'ARCADE - ESPORT', '<div style=\"background-color: rgb(24, 24, 24);\" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"\"><div>SYARAT & KETENTUAN :</div><div>â€¢ Minimal bonus yang diberikan = 10.000</div><div>â€¢ Minimal trunover dalam 1 minggu = 10.000.000</div><div>â€¢ ARCADE - ESPORT</div><div>â€¢ Bonus dibagikan secara otomatis bagi member yang memenuhi syarat pada hari senin pukul 12.00 wib.</div><div>â€¢ LINGKARBET Berhak membatalkan promosi apabila terjadi kecurangan.</div><div>â€¢ Syarat dan ketentuan dapat berubah sewaktu-waktu tanpa adanya pemberitahuan.</div><div>â€¢ Segala jenis keputusan pihak LINGKARBET adalah mutlak dan tidak dapat di ganggu-gugat.</div></div></div>'),
(6, '8219697870_refferal.png', 'BONUS AJAK TEMAN BERMAIN', 'REFFERAL', '<div style=\"background-color: rgb(24, 24, 24);\" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"\"><div><font color=\"#d6d6dd\">SYARAT &amp; KETENTUAN :</font></div><div><font color=\"#d6d6dd\"><br></font></div><div><font color=\"#d6d6dd\">â€¢ Minimal deposit pertama teman anda : 100.000</font></div><div><font color=\"#d6d6dd\">â€¢ Bonus dibagikan secara otomatis bagi member yang memenuhi syarat pada hari senin pukul 12.00 wib.</font></div><div><font color=\"#d6d6dd\">â€¢ LINGKARBET Berhak membatalkan promosi apabila terjadi kecurangan.</font></div><div><font color=\"#d6d6dd\">â€¢ Syarat dan ketentuan dapat berubah sewaktu-waktu tanpa adanya pemberitahuan.</font></div><div><font color=\"#d6d6dd\">â€¢ Segala jenis keputusan pihak LINGKARBET adalah mutlak dan tidak dapat di ganggu-gugat.</font></div></div></div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `nama_staff` varchar(255) NOT NULL,
  `nama_pengguna_staff` varchar(255) NOT NULL,
  `kata_sandi_staff` varchar(255) NOT NULL,
  `pin_staff` varchar(255) NOT NULL,
  `status_staff` enum('aktif','terkunci') NOT NULL DEFAULT 'aktif',
  `kode_staff` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id_staff`, `nama_staff`, `nama_pengguna_staff`, `kata_sandi_staff`, `pin_staff`, `status_staff`, `kode_staff`) VALUES
(4, 'admin', 'admin', '$2y$12$Qj8aq9/CF0Cj5cbl2zPk7udny8DaQTikFjgi6gRUg9D2Of2V8ty1u', '$2y$12$tLJWilXxZ2xo5cE6xa/S4uj5FjBh4ubd1tNys6kCFrfuGQsHULGxC', 'aktif', NULL),
(13, 'digitel12', 'digitel12', '$2y$12$6PLO2wLyuro3DN7GwIFOduSG8dSPjm8IuC8pYwt3u4.1vc84B7OQ.', '$2y$12$9Io89ty4mly8/JmtAq5f9.xbFmpXCCoKLPAS5MRV6cKccVFsK8I7C', 'aktif', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gamelist`
--

CREATE TABLE `tb_gamelist` (
  `id` int(255) NOT NULL,
  `sort` text NOT NULL,
  `lang` text NOT NULL,
  `game_code` text NOT NULL,
  `game_name` text NOT NULL,
  `banner` text NOT NULL,
  `status` text NOT NULL,
  `provider` text NOT NULL,
  `datatype` text NOT NULL,
  `frbavailable` text NOT NULL,
  `provideragent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_gamelist`
--

INSERT INTO `tb_gamelist` (`id`, `sort`, `lang`, `game_code`, `game_name`, `banner`, `status`, `provider`, `datatype`, `frbavailable`, `provideragent`) VALUES
(1, '0', '', 'vs20doghouse2', 'The Dog House - Dog or Alive', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20doghouse2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(2, '0', '', 'vs20fruitswx', 'Sweet Bonanza 1000', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20fruitswx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(3, '0', '', 'vs20sugarrushx', 'Sugar Rush 1000', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sugarrushx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(4, '0', '', 'vs20sugarrush', 'Sugar Rush', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sugarrush.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(5, '0', '', 'vswayslions', '5 Lions Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayslions.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(6, '0', '', 'vs20olympgate', 'Gates of Olympus', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20olympgate.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(7, '0', '', 'vs20olympx', 'Gates of Olympus 1000', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20olympx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(8, '0', '', 'vswaysdogs', 'The Dog House Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysdogs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(9, '0', '', 'vswayspowzeus', 'Power of Merlin Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayspowzeus.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(10, '0', '', 'vswaysrabbits', '5 Rabbits Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysrabbits.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(11, '0', '', 'vs15godsofwar', 'Zeus vs Hades - Gods of War', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs15godsofwar.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(12, '0', '', 'vs25pandagold', 'Panda\'s Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25pandagold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(13, '0', '', 'vs20tweethouse', 'The Tweety House', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20tweethouse.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(14, '0', '', 'vs20sugrux', 'Sugar Rush Xmas', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sugrux.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(15, '0', '', 'vs40wildwest', 'Wild West Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40wildwest.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(16, '0', '', 'vswaysbufking', 'Buffalo King Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysbufking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(17, '0', '', 'vs20saiman', 'Saiyan Mania', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20saiman.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(18, '0', '', 'vs20doghouse', 'The Dog House', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20doghouse.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(19, '0', '', 'vswayshammthor', 'Power of Thor Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayshammthor.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(20, '0', '', 'vs20amuleteg', 'Fortune of Giza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20amuleteg.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(21, '0', '', 'vswaysrhino', 'Great Rhino Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysrhino.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(22, '0', '', 'vs25pandatemple', 'Panda Fortune 2', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25pandatemple.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(23, '0', '', 'vs20farmfest', 'Barn Festival', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20farmfest.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(24, '0', '', 'vswaysrockblst', 'Rocket Blast Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysrockblst.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(25, '0', '', 'vs20fruitsw', 'Sweet Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20fruitsw.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(26, '0', '', 'vs20starlightx', 'Starlight Princess 1000', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20starlightx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(27, '0', '', 'vs20cleocatra', 'Cleocatra', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20cleocatra.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(28, '0', '', 'vs20starlight', 'Starlight Princess', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20starlight.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(29, '0', '', 'vswaysmadame', 'Madame Destiny Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysmadame.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(30, '0', '', 'vs12tropicana', 'Club Tropicana', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs12tropicana.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(31, '0', '', 'vs4096bufking', 'Buffalo King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs4096bufking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(32, '0', '', 'vs20pbonanza', 'Pyramid Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20pbonanza.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(33, '0', '', 'vs20procount', 'Wisdom of Athena', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20procount.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(34, '0', '', 'vs10returndead', 'Return of the Dead', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10returndead.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(35, '0', '', 'vs20muertos', 'Muertos Multiplier Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20muertos.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(36, '0', '', 'vs20mammoth', 'Mammoth Gold Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mammoth.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(37, '0', '', 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10fdrasbf.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(38, '0', '', 'vswaysluckyfish', 'Lucky Fishing', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysluckyfish.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(39, '0', '', 'vs10floatdrg', 'Floating Dragon', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10floatdrg.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(40, '0', '', 'vs20dhdice', 'The Dog House Dice Show', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20dhdice.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(41, '0', '', 'vs12bbb', 'Bigger Bass Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs12bbb.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(42, '0', '', 'vswaysfrywld', 'Spin & Score Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysfrywld.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(43, '0', '', 'vs25hotfiesta', 'Hot Fiesta', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25hotfiesta.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(44, '0', '', 'vswayspizza', 'PIZZA PIZZA PIZZA', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayspizza.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(45, '0', '', 'vs20doghousemh', 'The Dog House Multihold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20doghousemh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(46, '0', '', 'vs20xmascarol', 'Christmas Carol Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20xmascarol.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(47, '0', '', 'vswayswwriches', 'Wild Wild Riches Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayswwriches.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(48, '0', '', 'vs10bhallbnza', 'Big Bass Halloween', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bhallbnza.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(49, '0', '', 'vswaysaztecking', 'Aztec King Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysaztecking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(50, '0', '', 'vs10bbhas', 'Big Bass - Hold & Spinner', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbhas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(51, '0', '', 'vs20rockvegas', 'Rock Vegas', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20rockvegas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(52, '0', '', 'vs15seoultrain', 'zombie train', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs15seoultrain.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(53, '0', '', 'vs10fisheye', 'Fish Eye', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10fisheye.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(54, '0', '', 'vswayslofhero', 'Legend of Heroes', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayslofhero.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(55, '0', '', 'vs20framazon', 'Fruits of the Amazon', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20framazon.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(56, '0', '', 'vswaysmegareel', 'Pompeii Megareels Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysmegareel.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(57, '0', '', 'vswaysstampede', 'Fire Stampede', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysstampede.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(58, '0', '', 'vs20sugarnudge', 'Sugar Supreme Powernudge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sugarnudge.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(59, '0', '', 'vs20ninjapower', 'Power of Ninja', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20ninjapower.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(60, '0', '', 'vs20mustanggld2', 'Clover Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mustanggld2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(61, '0', '', 'vswaysrsm', 'Wild Celebrity Bus Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysrsm.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(62, '0', '', 'vs12bbbxmas', 'Bigger Bass Blizzard - Christmas Catch', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs12bbbxmas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(63, '0', '', 'vswayssamurai', 'Rise of Samurai Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayssamurai.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(64, '0', '', 'vswayscharms', '5 Frozen Charms Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayscharms.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(65, '0', '', 'vs20bnnzdice', 'Sweet Bonanza Dice', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bnnzdice.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(66, '0', '', 'vs10bbfloats', 'Big Bass Floats my Boat', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbfloats.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(67, '0', '', 'vs20dhcluster', 'Twilight Princess', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20dhcluster.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(68, '0', '', 'vs20cjcluster', 'Candy Jar Clusters', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20cjcluster.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(69, '0', '', 'vs20rujakbnz', 'Rujak Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20rujakbnz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(70, '0', '', 'vs20sbxmas', 'Sweet Bonanza Xmas', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sbxmas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(71, '0', '', 'vs20mochimon', 'Mochimon', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mochimon.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(72, '0', '', 'vs40samurai3', 'Rise of Samurai 3', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40samurai3.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(73, '0', '', 'vs20sugarcoins', 'Viking Forge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sugarcoins.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(74, '0', '', 'vs25holiday', 'Holiday Ride', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25holiday.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(75, '0', '', 'vs20bonzgold', 'Bonanza Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bonzgold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(76, '0', '', 'vs243lionsgold', '5 Lions Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243lionsgold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(77, '0', '', 'vs20fruitparty', 'Fruit Party', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20fruitparty.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(78, '0', '', 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20hburnhs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(79, '0', '', 'vswayswildgang', 'The Wild Gang', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayswildgang.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(80, '0', '', 'vs20gatotgates', 'Gates of Gatot Kaca', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20gatotgates.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(81, '0', '', 'vs20stickywild', 'Wild Bison Charge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20stickywild.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(82, '0', '', 'vs20olympdice', 'Gates of Olympus Dice', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20olympdice.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(83, '0', '', 'vswaysfuryodin', 'Fury of Odin Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysfuryodin.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(84, '0', '', 'vs20goldclust', 'Rabbit Garden', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20goldclust.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(85, '0', '', 'vs10tictac', 'Tic Tac Take', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10tictac.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(86, '0', '', 'vs10bbsplxmas', 'Big Bass Christmas Bash', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbsplxmas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(87, '0', '', 'vs10eyestorm', 'Eye of the Storm', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10eyestorm.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(88, '0', '', 'vs20clustwild', 'Sticky Bees', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20clustwild.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(89, '0', '', 'vs40cosmiccash', 'Cosmic Cash', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40cosmiccash.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(90, '0', '', 'vs10fruity2', 'Extra Juicy', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10fruity2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(91, '0', '', 'vswayslight', 'Lucky Lightning', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayslight.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(92, '0', '', 'vswayswildwest', 'Wild West Gold Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayswildwest.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(93, '0', '', 'vswaysyumyum', 'Yum Yum Powerways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysyumyum.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(94, '0', '', 'vs5ultrab', 'Ultra Burn', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5ultrab.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(95, '0', '', 'vs40pirate', 'Pirate Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40pirate.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(96, '0', '', 'vswaysspltsym', 'Dwarf & Dragon', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysspltsym.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(97, '0', '', 'vs10egyptcls', 'Ancient Egypt Classic', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10egyptcls.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(98, '0', '', 'vs20terrorv', 'Cash Elevator', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20terrorv.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(99, '0', '', 'vs10bbbonanza', 'Big Bass Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbbonanza.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(100, '0', '', 'vs10bblotgl', 'Big Bass - Secrets of the Golden Lake', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bblotgl.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(101, '0', '', 'vs20wildparty', '3 Buzzing Wilds', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20wildparty.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(102, '0', '', 'vs25wildies', 'Wildies', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25wildies.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(103, '0', '', 'vswayszombcarn', 'Zombie Carnival', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayszombcarn.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(104, '0', '', 'vswaysfltdrgny', 'Floating Dragon New Year Festival Ultra Megaways Hold & Spin', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysfltdrgny.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(105, '0', '', 'vs20dugems', 'Hot Pepper', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20dugems.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(106, '0', '', 'vs20mtreasure', 'Pirate Golden Age', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mtreasure.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(107, '0', '', 'vs25rlbank', 'Reel Banks', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25rlbank.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(108, '0', '', 'vs20lcount', 'Gems of Serengeti', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20lcount.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(109, '0', '', 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysfltdrg.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(110, '0', '', 'vs243lions', '5 Lions', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243lions.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(111, '0', '', 'vs20drtgold', 'Drill That Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20drtgold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(112, '0', '', 'vswayscfglory', 'Chase For Glory', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayscfglory.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(113, '0', '', 'vs10luckfort', 'Good Luck & Good Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10luckfort.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(114, '0', '', 'vs243fdragon', 'Fortune Dragon', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243fdragon.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(115, '0', '', 'vs20aztecgates', 'Gates of Aztec', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20aztecgates.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(116, '0', '', 'vs20gravity', 'Gravity Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20gravity.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(117, '0', '', 'vs5joker', 'Joker\'s Jewels', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5joker.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(118, '0', '', 'vs20mparty', 'Wild Hop & Drop', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mparty.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(119, '0', '', 'vs1dragon8', '888 Dragons', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1dragon8.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(120, '0', '', 'vs20swordofares', 'Sword of Ares', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20swordofares.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(121, '0', '', 'vswaysjkrdrop', 'Tropical Tiki', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysjkrdrop.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(122, '0', '', 'vs5jokerdice', 'Joker\'s Jewel Dice', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5jokerdice.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(123, '0', '', 'vswaystimber', 'Timber Stacks', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaystimber.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(124, '0', '', 'vs40infwild', 'Infective Wild', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40infwild.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(125, '0', '', 'vs10amm', 'Amazing Money Machine', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10amm.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(126, '0', '', 'vs10bbkir', 'Big Bass Bonanza - Keeping it Reel', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbkir.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(127, '0', '', 'vs20clspwrndg', 'Sweet Powernudge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20clspwrndg.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(128, '0', '', 'vswaysconcoll', 'Firebird Spirit - Connect & Collect', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysconcoll.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(129, '0', '', 'vs20drgbless', 'Dragon Hero', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20drgbless.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(130, '0', '', 'vs20pistols', 'Wild West Duels', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20pistols.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(131, '0', '', 'vswaysmorient', 'Mystery of the Orient', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysmorient.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(132, '0', '', 'vs10bookazteck', 'Book of Aztec King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bookazteck.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(133, '0', '', 'vs20ltng', 'Pinup Girls', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20ltng.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(134, '0', '', 'vs20schristmas', 'Starlight Christmas', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20schristmas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(135, '0', '', 'vswayswwhex', 'Wild Wild Bananas', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayswwhex.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(136, '0', '', 'vs25bullfiesta', 'Bull Fiesta', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25bullfiesta.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(137, '0', '', 'vs25kfruit', 'Aztec Blaze', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25kfruit.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(138, '0', '', 'vs25spgldways', 'Secret City Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25spgldways.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(139, '0', '', 'vs10powerlines', 'Peak Power', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10powerlines.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(140, '0', '', 'vs20superlanche', 'Monster Superlanche', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20superlanche.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(141, '0', '', 'vs20sparta', 'Shield Of Sparta', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sparta.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(142, '0', '', 'vs25archer', 'Fire Archer', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25archer.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(143, '0', '', 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20hstgldngt.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(144, '0', '', 'vs20gatotfury', 'Gatot Kaca\'s Fury', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20gatotfury.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(145, '0', '', 'vs10tut', 'Book Of Tut Respin', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10tut.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(146, '0', '', 'vs20theights', 'Towering Fortunes', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20theights.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(147, '0', '', 'vs7776aztec', 'Aztec Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs7776aztec.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(148, '0', '', 'vs10coffee', 'Coffee Wild', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10coffee.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(149, '0', '', 'vs20asgard', 'Kingdom of Asgard', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20asgard.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(150, '0', '', 'vs20sknights', 'The Knight King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sknights.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(151, '0', '', 'vs1024moonsh', 'Moonshot', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024moonsh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(152, '0', '', 'vswayselements', 'Elemental Gems Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayselements.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(153, '0', '', 'vs20kraken2', 'Release the Kraken 2', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20kraken2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(154, '0', '', 'vs20porbs', 'Santa\'s Great Gifts', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20porbs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(155, '0', '', 'vswaysredqueen', 'The Red Queen', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysredqueen.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(156, '0', '', 'vs20superx', 'Super X', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20superx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(157, '0', '', 'vs20fparty2', 'Fruit Party 2', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20fparty2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(158, '0', '', 'vs10nudgeit', 'Rise of Giza PowerNudge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10nudgeit.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(159, '0', '', 'vs20santawonder', 'Santa\'s Wonderland', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20santawonder.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(160, '0', '', 'vs20phoenixf', 'Phoenix Forge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20phoenixf.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(161, '0', '', 'vswayscryscav', 'Crystal Caverns Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayscryscav.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(162, '0', '', 'vs25copsrobbers', 'Cash Patrol', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25copsrobbers.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(163, '0', '', 'vs243queenie', 'Queenie', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243queenie.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(164, '0', '', 'vs10cowgold', 'Cowboys Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10cowgold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(165, '0', '', 'vswaysbbb', 'Big Bass Bonanza Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysbbb.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(166, '0', '', 'vs20bchprty', 'Wild Beach Party', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bchprty.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(167, '0', '', 'vs5strh', 'Striking Hot 5', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5strh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(168, '0', '', 'vs4096magician', 'Magician\'s Secrets', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs4096magician.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(169, '0', '', 'vs1024temuj', 'Temujin Treasures', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024temuj.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(170, '0', '', 'vs20rhinoluxe', 'Great Rhino Deluxe', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20rhinoluxe.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(171, '0', '', 'vs25btygold', 'Bounty Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25btygold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(172, '0', '', 'vs50juicyfr', 'Juicy Fruits', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50juicyfr.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(173, '0', '', 'vs50mightra', 'Might of Ra', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50mightra.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(174, '0', '', 'vs20rhino', 'Great Rhino', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20rhino.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(175, '0', '', 'vs10runes', 'Gates of Valhalla', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10runes.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(176, '0', '', 'vs7fire88', 'Fire 88', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs7fire88.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(177, '0', '', 'vs5ultra', 'Ultra Hold and Spin', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5ultra.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(178, '0', '', 'vs20chickdrop', 'Chicken Drop', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20chickdrop.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(179, '0', '', 'vs243fortseren', 'Greek Gods', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243fortseren.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(180, '0', '', 'vs25tigeryear', 'Lucky New Year - Tiger Treasures', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25tigeryear.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(181, '0', '', 'vs1masterjoker', 'Master Joker', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1masterjoker.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(182, '0', '', 'vs10bookfallen', 'Book of Fallen', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bookfallen.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(183, '0', '', 'vs25gldox', 'Golden Ox', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25gldox.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(184, '0', '', 'vs576treasures', 'Wild Wild Riches', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs576treasures.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(185, '0', '', 'vs5drhs', 'Dragon Hot Hold & Spin', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5drhs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(186, '0', '', 'vs25aztecking', 'Aztec King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25aztecking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(187, '0', '', 'vs40spartaking', 'Spartan King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40spartaking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(188, '0', '', 'vs10chkchase', 'Chicken Chase', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10chkchase.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(189, '0', '', 'vs243discolady', 'Disco Lady', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243discolady.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(190, '0', '', 'vs20rainbowg', 'Rainbow Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20rainbowg.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(191, '0', '', 'vs10snakeladd', 'Snakes and Ladders Megadice', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10snakeladd.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(192, '0', '', 'vs243mwarrior', 'Monkey Warrior', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243mwarrior.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(193, '0', '', 'vs25mustang', 'Mustang Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25mustang.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(194, '0', '', 'vs25chilli', 'Chilli Heat', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25chilli.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(195, '0', '', 'vs243chargebull', 'Raging Bull', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243chargebull.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(196, '0', '', 'vs20eightdragons', '8 Dragons', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20eightdragons.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(197, '0', '', 'vs1money', 'Money Money Money', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1money.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(198, '0', '', 'vs25mmouse', 'Money Mouse', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25mmouse.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(199, '0', '', 'vs25rio', 'Heart of Rio', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25rio.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(200, '0', '', 'vs20bermuda', 'Bermuda Riches', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bermuda.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(201, '0', '', 'vs40bigjuan', 'Big Juan', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40bigjuan.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(202, '0', '', 'vswayschilheat', 'Chilli Heat Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayschilheat.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(203, '0', '', 'vs1024lionsd', '5 Lions Dance', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024lionsd.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(204, '0', '', 'vs576hokkwolf', 'Hokkaido Wolf', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs576hokkwolf.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(205, '0', '', 'vs20maskgame', 'Cash Chips', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20maskgame.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(206, '0', '', 'vs1600drago', 'Drago - Jewels of Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1600drago.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(207, '0', '', 'vs1fortunetree', 'Tree of Riches', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1fortunetree.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(208, '0', '', 'vs10bblpop', 'Bubble Pop', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bblpop.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(209, '0', '', 'vs25pyramid', 'Pyramid King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25pyramid.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(210, '0', '', 'vs10luckcharm', 'Lucky Grace & Charm', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10luckcharm.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(211, '0', '', 'vs20vegasmagic', 'Vegas Magic', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20vegasmagic.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(212, '0', '', 'vs40pirgold', 'Pirate Gold Deluxe', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40pirgold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(213, '0', '', 'vs432congocash', 'Congo Cash', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs432congocash.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(214, '0', '', 'vs1tigers', 'Triple Tigers', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1tigers.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(215, '0', '', 'vs20colcashzone', 'Colossal Cash Zone', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20colcashzone.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(216, '0', '', 'vs10wildtut', 'Mysterious Egypt', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10wildtut.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(217, '0', '', 'vs243dancingpar', 'Dance Party', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243dancingpar.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(218, '0', '', 'vs25newyear', 'Lucky New Year', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25newyear.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(219, '0', '', 'vs25goldpig', 'Golden Pig', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25goldpig.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(220, '0', '', 'vswayswest', 'Mystic Chief', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayswest.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(221, '0', '', 'vs40wanderw', 'Wild Depths', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40wanderw.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(222, '0', '', 'vs25tigerwar', 'The Tiger Warrior', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25tigerwar.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(223, '0', '', 'vs243fortune', 'Caishen\'s Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243fortune.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(224, '0', '', 'vs25bkofkngdm', 'Book Of Kingdoms', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25bkofkngdm.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(225, '0', '', 'vs9piggybank', 'Piggy Bank Bills', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs9piggybank.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(226, '0', '', 'vs25peking', 'Peking Luck', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25peking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(227, '0', '', 'vs25wolfgold', 'Wolf Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25wolfgold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(228, '0', '', 'vs1024dtiger', 'The Dragon Tiger', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024dtiger.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(229, '0', '', 'vs20smugcove', 'Smugglers Cove', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20smugcove.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(230, '0', '', 'vs20wildboost', 'Wild Booster', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20wildboost.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(231, '0', '', 'vs25asgard', 'Asgard', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25asgard.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(232, '0', '', 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayswerewolf.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(233, '0', '', 'vs25goldrush', 'Gold Rush', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25goldrush.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(234, '0', '', 'vs25wildspells', 'Wild Spells', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25wildspells.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(235, '0', '', 'vs5spjoker', 'Super Joker', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5spjoker.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(236, '0', '', 'vs5super7', 'Super 7s ', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5super7.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(237, '0', '', 'vs1024butterfly', 'Jade Butterfly', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024butterfly.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(238, '0', '', 'vs10bookoftut', 'Book of Tut', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bookoftut.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(239, '0', '', 'vs5hotburn', 'Hot to Burn', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5hotburn.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(240, '0', '', 'vs10mayangods', 'John Hunter And The Mayan Gods', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10mayangods.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(241, '0', '', 'vs10madame', 'Madame Destiny', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10madame.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(242, '0', '', 'vs20daydead', 'Day of Dead', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20daydead.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(243, '0', '', 'vs25samurai', 'Rise of Samurai', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25samurai.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(244, '0', '', 'vs25vegas', 'Vegas Nights', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25vegas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(245, '0', '', 'vswayshive', 'Star Bounty', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayshive.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(246, '0', '', 'vs25jokerking', 'Joker King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25jokerking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(247, '0', '', 'vs1fufufu', 'Fu Fu Fu', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1fufufu.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(248, '0', '', 'vs10threestar', 'Three Star Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10threestar.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(249, '0', '', 'vs40voodoo', 'Voodoo Magic', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40voodoo.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(250, '0', '', 'vs25dragonkingdom', 'Dragon Kingdom', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25dragonkingdom.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(251, '0', '', 'vs1ball', 'Lucky Dragon Ball', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1ball.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(252, '0', '', 'vs25kingdoms', '3 Kingdoms - Battle of Red Cliffs', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25kingdoms.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(253, '0', '', 'vs10goldfish', 'Fishin Reels', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10goldfish.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(254, '0', '', 'vs20hercpeg', 'Hercules and Pegasus', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20hercpeg.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(255, '0', '', 'vs20egypttrs', 'Egyptian Fortunes', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20egypttrs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(256, '0', '', 'vs50safariking', 'Safari King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50safariking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(257, '0', '', 'vs50pixie', 'Pixie Wings', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50pixie.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(258, '0', '', 'vs20ekingrr', 'Emerald King Rainbow Road', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20ekingrr.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(259, '0', '', 'vs88hockattack', 'Hockey Attack', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs88hockattack.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(260, '0', '', 'vswaysbankbonz', 'Cash Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysbankbonz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(261, '0', '', 'vs20honey', 'Honey Honey Honey', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20honey.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(262, '0', '', 'vs117649starz', 'Starz Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs117649starz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(263, '0', '', 'vs20santa', 'Santa', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20santa.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(264, '0', '', 'vs20wildpix', 'Wild Pixies', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20wildpix.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(265, '0', '', 'vs18mashang', 'Treasure Horse', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs18mashang.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(266, '0', '', 'vs9madmonkey', 'Monkey Madness', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs9madmonkey.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(267, '0', '', 'vs40madwheel', 'The Wild Machine', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40madwheel.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(268, '0', '', 'vs20leprexmas', 'Leprechaun Carol', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20leprexmas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(269, '0', '', 'vs9hotroll', 'Hot Chilli', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs9hotroll.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(270, '0', '', 'vs20chicken', 'The Great Chicken Escape', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20chicken.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(271, '0', '', 'vs10starpirate', 'Star Pirates Code', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10starpirate.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(272, '0', '', 'vs20candvil', 'Candy Village', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20candvil.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(273, '0', '', 'vs9chen', 'Master Chen\'s Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs9chen.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(274, '0', '', 'vs20eking', 'Emerald King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20eking.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(275, '0', '', 'vs50hercules', 'Hercules Son of Zeus', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50hercules.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(276, '0', '', 'vs25davinci', 'Da Vinci\'s Treasure', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25davinci.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(277, '0', '', 'vs20magicpot', 'The Magic Cauldron', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20magicpot.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(278, '0', '', 'vs15fairytale', 'Fairytale Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs15fairytale.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(279, '0', '', 'vs25journey', 'Journey to the West', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25journey.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(280, '0', '', 'vs20godiva', 'Lady Godiva', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20godiva.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(281, '0', '', 'vs40frrainbow', 'Fruit Rainbow', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40frrainbow.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(282, '0', '', 'vs5drmystery', 'Dragon Kingdom - Eyes of Fire', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5drmystery.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(283, '0', '', 'vs50chinesecharms', 'Lucky Dragons', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50chinesecharms.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(284, '0', '', 'vs25jokrace', 'Joker Race', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25jokrace.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(285, '0', '', 'vs3train', 'Gold Train', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs3train.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(286, '0', '', 'vs4096mystery', 'Mysterious', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs4096mystery.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(287, '0', '', 'vs25safari', 'Hot Safari', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25safari.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(288, '0', '', 'vs7776secrets', 'Aztec Treasure', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs7776secrets.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(289, '0', '', 'vs5gemstone', 'Gemstone', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5gemstone.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(290, '0', '', 'vs7pigs', '7 Piggies', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs7pigs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(291, '0', '', 'vs25sea', 'Great Reef', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25sea.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(292, '0', '', 'vs50aladdin', '3 Genie Wishes', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50aladdin.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(293, '0', '', 'vs8magicjourn', 'Magic Journey', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs8magicjourn.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(294, '0', '', 'vs10vampwolf', 'Vampires vs Wolves', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10vampwolf.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(295, '0', '', 'vs25walker', 'Wild Walker', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25walker.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(296, '0', '', 'vs50kingkong', 'Mighty Kong', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50kingkong.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(297, '0', '', 'vs40streetracer', 'Street Racer', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40streetracer.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(298, '0', '', 'vs5trdragons', 'Triple Dragons', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5trdragons.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(299, '0', '', 'vs20leprechaun', 'Leprechaun Song', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20leprechaun.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(300, '0', '', 'vs20aladdinsorc', 'Aladdin and the Sorcerer', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20aladdinsorc.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(301, '0', '', 'vs25gladiator', 'Wild Gladiator', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25gladiator.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(302, '0', '', 'vs20bl', 'Busy Bees', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bl.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(303, '0', '', 'vs10egypt', 'Ancient Egypt', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10egypt.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(304, '0', '', 'vs20gorilla', 'Jungle Gorilla', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20gorilla.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(305, '0', '', 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25dwarves_new.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(306, '0', '', 'vs7monkeys', '7 Monkeys', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs7monkeys.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(307, '0', '', 'vs13g', 'Devil\'s 13', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs13g.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(308, '0', '', 'vs4096robber', 'Robber Strike', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs4096robber.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(309, '0', '', 'vswaysfrbugs', 'Frogs & Bugs', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysfrbugs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(310, '0', '', 'vs20lampinf', 'Lamp Of Infinity', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20lampinf.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(311, '0', '', 'vs20jewelparty', 'Jewel Rush', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20jewelparty.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(312, '0', '', 'vs9outlaw', 'Pirates Pub', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs9outlaw.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(313, '0', '', 'vs20beefed', 'Fat Panda', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20beefed.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(314, '0', '', 'vs20kraken', 'Release the Kraken', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20kraken.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(315, '0', '', 'vs20emptybank', 'Empty the Bank', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20emptybank.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(316, '0', '', 'vs243nudge4gold', 'Hellvis Wild', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243nudge4gold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(317, '0', '', 'vs20hotzone', 'African Elephant', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20hotzone.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(318, '0', '', 'vswaysmonkey', '3 Dancing Monkeys', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysmonkey.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(319, '0', '', 'vs10gizagods', 'Gods of Giza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10gizagods.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(320, '0', '', 'vs20splmystery', 'Spellbinding Mystery', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20splmystery.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(321, '0', '', 'vs20ultim5', 'The Ultimate 5', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20ultim5.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(322, '0', '', 'vswaysultrcoin', 'Cowboy Coins', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysultrcoin.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(323, '0', '', 'vs10jnmntzma', 'Jane Hunter and the Mask of Montezuma', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10jnmntzma.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(324, '0', '', 'vs20mvwild', 'Jasmine Dreams', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mvwild.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(325, '0', '', 'vs10kingofdth', 'Kingdom of the Dead', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10kingofdth.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(326, '0', '', 'vswayseternity', 'Diamonds of Egypt', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayseternity.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(327, '0', '', 'vs20excalibur', 'Excalibur Unleashed', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20excalibur.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(328, '0', '', 'vs25spotz', 'Knight Hot Spotz', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25spotz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(329, '0', '', 'vs50dmdcascade', 'Diamond Cascade', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50dmdcascade.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(330, '0', '', 'vs20supermania', 'Supermania', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20supermania.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(331, '0', '', 'vs20lobcrab', 'Lobster Bob\'s Crazy Crab Shack', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20lobcrab.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(332, '0', '', 'vs10trail', 'Mustang Trail', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10trail.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(333, '0', '', 'vs20piggybank', 'Piggy Bankers', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20piggybank.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(334, '0', '', 'vs20lvlup', 'Pub Kings', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20lvlup.png', '1', 'PR', 'SL', '1', 'PRAGMATIC');
INSERT INTO `tb_gamelist` (`id`, `sort`, `lang`, `game_code`, `game_name`, `banner`, `status`, `provider`, `datatype`, `frbavailable`, `provideragent`) VALUES
(335, '0', '', 'vs20earthquake', 'Cyclops Smash', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20earthquake.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(336, '0', '', 'vs20forge', 'Forge of Olympus', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20forge.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(337, '0', '', 'vs1024mahjwins', 'Mahjong Wins', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024mahjwins.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(338, '0', '', 'vswaysbbhas', 'Big Bass Hold & Spinner Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysbbhas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(339, '0', '', 'vswaysincwnd', 'Gold Oasis', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysincwnd.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(340, '0', '', 'vswaysftropics', 'Frozen Tropics', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysftropics.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(341, '0', '', 'vs10gdchalleng', '8 Golden Dragon Challenge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10gdchalleng.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(342, '0', '', 'vswaystut', 'Book of Tut Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaystut.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(343, '0', '', 'vswaysstrlght', 'Fortunes of Aztec', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysstrlght.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(344, '0', '', 'vswaysraghex', 'Tundra\'s Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysraghex.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(345, '0', '', 'vs40rainbowr', 'Rainbow Reels', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40rainbowr.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(346, '0', '', 'vs40demonpots', 'Demon Pots ', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40demonpots.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(347, '0', '', 'vs243goldfor', '888 Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243goldfor.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(348, '0', '', 'vswaysmoneyman', 'The Money Men Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysmoneyman.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(349, '0', '', 'vs20olympgrace', 'Grace of Ebisu', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20olympgrace.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(350, '0', '', 'vs20mahjxbnz', 'Mahjong X', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mahjxbnz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(351, '0', '', 'vs20nilefort', 'Nile Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20nilefort.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(352, '0', '', 'vs10ddcbells', 'Ding Dong Christmas Bells', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10ddcbells.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(353, '0', '', 'vswaysseastory', 'Sea Fantasy', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysseastory.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(354, '0', '', 'vs50jfmulthold', 'Juicy Fruits Multihold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50jfmulthold.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(355, '0', '', 'vswaysexpandng', 'Castle of Fire', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysexpandng.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(356, '0', '', 'vs20yotdk', 'Year Of The Dragon King', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20yotdk.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(357, '0', '', 'vs20laughluck', 'Happy Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20laughluck.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(358, '0', '', 'vs20mergedwndw', 'Blade & Fangs', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mergedwndw.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(359, '0', '', 'vs1024mjwinbns', 'Mahjong Wins Bonus', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024mjwinbns.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(360, '0', '', 'vs20treesot', 'Trees of Treasure', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20treesot.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(361, '0', '', 'vswaysfirewmw', 'Blazing Wilds Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysfirewmw.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(362, '0', '', 'vs1024fortune', 'Fortune Ace', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024fortune.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(363, '0', '', 'vs5balidragon', 'Bali Dragon', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5balidragon.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(364, '0', '', 'vs25lagoon', 'Great Lagoon', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25lagoon.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(365, '0', '', 'vswaysalterego', 'The Alter Ego', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysalterego.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(366, '0', '', 'vs20multiup', 'Wheel O\'Gold', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20multiup.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(367, '0', '', 'vs20mmmelon', 'Mighty Munching Melons', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mmmelon.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(368, '0', '', 'vs10strawberry', 'Strawberry Cocktail', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10strawberry.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(369, '0', '', 'vs20candyblitz', 'Candy Blitz', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20candyblitz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(370, '0', '', 'vs5aztecgems', 'Aztec Gems', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5aztecgems.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(371, '0', '', 'vs20clustext', 'Gears of Horus', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20clustext.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(372, '0', '', 'vswayscheist', 'Casino Heist Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayscheist.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(373, '0', '', 'vs20gatotx', 'Gates of Gatot Kaca 1000', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20gatotx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(374, '0', '', 'vswaysbewaretd', 'Beware The Deep Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysbewaretd.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(375, '0', '', 'vs10bbbnz', 'Big Bass Day at the Races', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbbnz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(376, '0', '', 'vs20stckwldsc', 'Pot of Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20stckwldsc.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(377, '0', '', 'vs15samurai4', 'Rise of Samurai 4', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs15samurai4.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(378, '0', '', 'vs20cbrhst', 'Cyber Heist', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20cbrhst.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(379, '0', '', 'vs20portals', 'Fire Portals', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20portals.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(380, '0', '', 'vs10bburger', 'Big Burger Load it up with Xtra Cheese', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bburger.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(381, '0', '', 'vs10txbigbass', 'Big Bass Splash', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10txbigbass.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(382, '0', '', 'vswaysbook', 'Book of Golden Sands', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysbook.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(383, '0', '', 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10snakeeyes.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(384, '0', '', 'vs10crownfire', 'Crown of Fire', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10crownfire.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(385, '0', '', 'vs20trswild2', 'Black Bull', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20trswild2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(386, '0', '', 'vswaysstrwild', 'Candy Stars', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysstrwild.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(387, '0', '', 'vs10mmm', 'Magic Money Maze', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10mmm.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(388, '0', '', 'vs20underground', 'Down the Rails', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20underground.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(389, '0', '', 'vs20wolfie', 'Greedy Wolf', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20wolfie.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(390, '0', '', 'vs1024gmayhem', 'Gorilla Mayhem', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024gmayhem.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(391, '0', '', 'vs20octobeer', 'Octobeer Fortunes', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20octobeer.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(392, '0', '', 'vs20midas', 'The Hand of Midas', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20midas.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(393, '0', '', 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs9aztecgemsdx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(394, '0', '', 'vs1024mahjpanda', 'Mahjong Panda', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs1024mahjpanda.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(395, '0', '', 'vswaysxjuicy', 'Extra Juicy Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysxjuicy.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(396, '0', '', 'vs10bbextreme', 'Big Bass Amazon Xtreme', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbextreme.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(397, '0', '', 'vs25bomb', 'Bomb Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25bomb.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(398, '0', '', 'vs15diamond', 'Diamond Strike', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs15diamond.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(399, '0', '', 'vs20goldfever', 'Gems Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20goldfever.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(400, '0', '', 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bxmasbnza.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(401, '0', '', 'vs10firestrike', 'Fire Strike', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10firestrike.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(402, '0', '', 'vs40hotburnx', 'Hot To Burn Extreme', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40hotburnx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(403, '0', '', 'vs243ckemp', 'Cheeky Emperor', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243ckemp.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(404, '0', '', 'vs243caishien', 'Caishen\'s Cash', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243caishien.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(405, '0', '', 'vs50northgard', 'North Guardians', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50northgard.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(406, '0', '', 'vs243koipond', 'Koi Pond', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243koipond.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(407, '0', '', 'vs5littlegem', 'Little Gem Hold and Spin', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5littlegem.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(408, '0', '', 'vs10egrich', 'Queen of Gods', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10egrich.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(409, '0', '', 'vs20gobnudge', 'Goblin Heist Powernudge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20gobnudge.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(410, '0', '', 'vs20stickysymbol', 'The Great Stick-up', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20stickysymbol.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(411, '0', '', 'vs20loksriches', 'Loki\'s Riches', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20loksriches.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(412, '0', '', 'vs40cleoeye', 'Eye of Cleopatra', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40cleoeye.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(413, '0', '', 'vs10spiritadv', 'Spirit of Adventure', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10spiritadv.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(414, '0', '', 'vs10firestrike2', 'Fire Strike 2', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10firestrike2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(415, '0', '', 'vs20trsbox', 'Treasure Wild', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20trsbox.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(416, '0', '', 'vs25goldparty', 'Gold Party', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25goldparty.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(417, '0', '', 'vs243empcaishen', 'Emperor Caishen', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs243empcaishen.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(418, '0', '', 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25scarabqueen.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(419, '0', '', 'vs20cashmachine', 'Cash Box', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20cashmachine.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(420, '0', '', 'vs20bigdawgs', 'The Big Dawgs', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bigdawgs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(421, '0', '', 'vs50jucier', 'Sky Bounty', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs50jucier.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(422, '0', '', 'vs20bison', 'Release the Bison', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bison.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(423, '0', '', 'vs20sbpnudge', 'Aztec Powernudge', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sbpnudge.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(424, '0', '', 'vs40stckwldlvl', 'Ripe Rewards', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40stckwldlvl.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(425, '0', '', 'vs20stickypos', 'Ice Lobster', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20stickypos.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(426, '0', '', 'vswaysmegahays', 'Barnyard Megahays Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysmegahays.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(427, '0', '', 'vs20candybltz2', 'Candy Blitz Bombs', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20candybltz2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(428, '0', '', 'vs5jjwild', 'Joker\'s Jewels Wild', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5jjwild.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(429, '0', '', 'vs20lobseafd', 'Lobster Bob\'s Sea Food and Win It', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20lobseafd.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(430, '0', '', 'vs20shootstars', 'Heroic Spins', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20shootstars.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(431, '0', '', 'vs20heartcleo', 'Heart of Cleopatra', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20heartcleo.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(432, '0', '', 'vs10frontrun', 'Front Runner Odds On', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10frontrun.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(433, '0', '', 'vs20fortbon', 'Fruity Treats', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20fortbon.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(434, '0', '', 'vswayshexhaus', 'Rise of Pyramids', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayshexhaus.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(435, '0', '', 'vswaysjapan', 'Starlight Princess Pachi', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysjapan.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(436, '0', '', 'vswaysloki', 'Revenge of Loki Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysloki.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(437, '0', '', 'vs20devilic', 'Devilicious', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20devilic.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(438, '0', '', 'vs10bbbrlact', 'Big Bass Bonanza - Reel Action', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbbrlact.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(439, '0', '', 'vs20medusast', 'Medusa\'s Stone', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20medusast.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(440, '0', '', 'vswaysbkingasc', 'Buffalo King Untamed Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysbkingasc.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(441, '0', '', 'vs10bbfmission', 'Big Bass Mission Fishin', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbfmission.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(442, '0', '', 'vs20midas2', 'Hand of Midas 2', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20midas2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(443, '0', '', 'vs100firehot', 'Fire Hot 100', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs100firehot.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(444, '0', '', 'vs100sh', 'Shining Hot 100', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs100sh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(445, '0', '', 'vs20fh', 'Fire Hot 20', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20fh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(446, '0', '', 'vs20sh', 'Shining Hot 20', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20sh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(447, '0', '', 'vs40firehot', 'Fire Hot 40', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40firehot.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(448, '0', '', 'vs40sh', 'Shining Hot 40', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40sh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(449, '0', '', 'vs5firehot', 'Fire Hot 5', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5firehot.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(450, '0', '', 'vs5sh', 'Shining Hot 5', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5sh.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(451, '0', '', 'vs12scode', 'Samurai Code', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs12scode.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(452, '0', '', 'vs20clustcol', 'Sweet Kingdom', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20clustcol.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(453, '0', '', 'vs20crankit', 'Crank it Up', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20crankit.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(454, '0', '', 'vs5hotbmult', 'Hot To Burn Multiplier', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5hotbmult.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(455, '0', '', 'vs5magicdoor', '6 Jokers', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5magicdoor.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(456, '0', '', 'vs10dyndigd', 'Dynamite Diggin Doug', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10dyndigd.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(457, '0', '', 'vs10jokerhot', 'Joker\'s Jewels Hot', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10jokerhot.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(458, '0', '', 'vswaysmegwghts', 'Sumo Supreme Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysmegwghts.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(459, '0', '', 'vs20gembondx', 'Bow of Artemis', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20gembondx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(460, '0', '', 'vs20bblitz', 'Money Stacks', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20bblitz.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(461, '0', '', 'vswayscashconv', 'Running Sushi', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayscashconv.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(462, '0', '', 'vs20mesmult', 'Yeti Quest', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20mesmult.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(463, '0', '', 'vs20jhunter', 'Jackpot Hunter', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20jhunter.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(464, '0', '', 'vs20forgewilds', 'Forging Wilds', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20forgewilds.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(465, '0', '', 'vs10hottb7fs', 'Hot to Burn 7 Deadly Free Spins', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10hottb7fs.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(466, '0', '', 'vs20trswild3', 'Aztec Treasure Hunt', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20trswild3.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(467, '0', '', 'vs10dgold88', 'Dragon Gold 88', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10dgold88.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(468, '0', '', 'vs20elevclust', 'Gem Elevator', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20elevclust.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(469, '0', '', 'vs15fghtmultlv', 'Angel vs Sinner', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs15fghtmultlv.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(470, '0', '', 'vswaysgoldcol', 'Mustang Gold Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysgoldcol.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(471, '0', '', 'vs10bbdoubled', 'Big Bass Vegas Double Down Deluxe', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bbdoubled.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(472, '0', '', 'vswayscongcash', 'Congo Cash XL', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayscongcash.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(473, '0', '', 'vs10noodles', 'Oodles of Noodles', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10noodles.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(474, '0', '', 'vswaysanime', 'Anime Mecha Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswaysanime.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(475, '0', '', 'vs20powerwild', 'Mystery Mice', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20powerwild.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(476, '0', '', 'vs20dhcluster2', 'The Dog House - Muttley Crew', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20dhcluster2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(477, '0', '', 'vs25badge', 'Badge Blitz', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25badge.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(478, '0', '', 'vs10bhallbnza2', 'Big Bass Halloween 2', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10bhallbnza2.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(479, '0', '', 'vswayskrakenmw', 'Release the Kraken Megaways', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayskrakenmw.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(480, '0', '', 'vs25checaishen', 'Chests of Cai Shen', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25checaishen.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(481, '0', '', 'vs40wildrun', 'Fortune Hit\'n Roll', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs40wildrun.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(482, '0', '', 'vs20procountx', 'Wisdom of Athena 1000', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20procountx.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(483, '0', '', 'vswayswbounty', 'Vampy Party', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayswbounty.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(484, '0', '', 'vs10fangfree', 'Fangtastic Freespins', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs10fangfree.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(485, '0', '', 'vs20fourmc', 'Candy Corner', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20fourmc.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(486, '0', '', 'vswayssevenc', '7 Clovers of Fortune', 'https://api-sg0.ppgames.net/game_pic/rec/325/vswayssevenc.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(487, '0', '', 'vs20clreacts', 'Moleionaire', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs20clreacts.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(488, '0', '', 'vs25ultwolgol', 'Wolf Gold Ultimate', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs25ultwolgol.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(489, '0', '', 'vs5himalaw', 'Himalayan Wild', 'https://api-sg0.ppgames.net/game_pic/rec/325/vs5himalaw.png', '1', 'PR', 'SL', '1', 'PRAGMATIC'),
(490, '0', '', 'diaochan', 'Honey Trap of Diao Chan', 'https://vedaimg.enjoycx.com/img/game/pg soft/1.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(491, '0', '', 'gem-saviour', 'Gem Saviour', 'https://vedaimg.enjoycx.com/img/game/pg soft/2.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(492, '0', '', 'fortune-gods', 'Fortune Gods', 'https://vedaimg.enjoycx.com/img/game/pg soft/3.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(493, '0', '', 'medusa2', 'Medusa II', 'https://vedaimg.enjoycx.com/img/game/pg soft/6.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(494, '0', '', 'medusa', 'Medusa', 'https://vedaimg.enjoycx.com/img/game/pg soft/7.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(495, '0', '', 'hood-wolf', 'Hood vs Wolf', 'https://vedaimg.enjoycx.com/img/game/pg soft/18.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(496, '0', '', 'reel-love', 'Reel Love', 'https://vedaimg.enjoycx.com/img/game/pg soft/20.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(497, '0', '', 'win-win-won', 'Win Win Won', 'https://vedaimg.enjoycx.com/img/game/pg soft/24.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(498, '0', '', 'plushie-frenzy', 'Plushie Frenzy', 'https://vedaimg.enjoycx.com/img/game/pg soft/25.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(499, '0', '', 'fortune-tree', 'Tree of Fortune', 'https://vedaimg.enjoycx.com/img/game/pg soft/26.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(500, '0', '', 'hotpot', 'Hotpot', 'https://vedaimg.enjoycx.com/img/game/pg soft/28.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(501, '0', '', 'dragon-legend', 'Dragon Legend', 'https://vedaimg.enjoycx.com/img/game/pg soft/29.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(502, '0', '', 'hip-hop-panda', 'Hip Hop Panda', 'https://vedaimg.enjoycx.com/img/game/pg soft/33.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(503, '0', '', 'legend-of-hou-yi', 'Legend of Hou Yiffortune-mouse', 'https://vedaimg.enjoycx.com/img/game/pg soft/34.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(504, '0', '', 'mr-hallow-win', 'Mr. Hallow-Win', 'https://vedaimg.enjoycx.com/img/game/pg soft/35.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(505, '0', '', 'prosperity-lion', 'Prosperity Lion', 'https://vedaimg.enjoycx.com/img/game/pg soft/36.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(506, '0', '', 'santas-gift-rush', 'Santa\'s Gift Rush', 'https://vedaimg.enjoycx.com/img/game/pg soft/37.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(507, '0', '', 'gem-saviour-sword', 'Gem Saviour Sword', 'https://vedaimg.enjoycx.com/img/game/pg soft/38.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(508, '0', '', 'piggy-gold', 'Piggy Gold', 'https://vedaimg.enjoycx.com/img/game/pg soft/39.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(509, '0', '', 'jungle-delight', 'Jungle Delight', 'https://vedaimg.enjoycx.com/img/game/pg soft/40.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(510, '0', '', 'symbols-of-egypt', 'Symbols of Egypt', 'https://vedaimg.enjoycx.com/img/game/pg soft/41.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(511, '0', '', 'ganesha-gold', 'Ganesha Gold', 'https://vedaimg.enjoycx.com/img/game/pg soft/42.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(512, '0', '', 'emperors-favour', 'Emperor\'s Favour', 'https://vedaimg.enjoycx.com/img/game/pg soft/44.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(513, '0', '', 'double-fortune', 'Double Fortune', 'https://vedaimg.enjoycx.com/img/game/pg soft/48.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(514, '0', '', 'journey-to-the-wealth', 'Journey to the Wealth', 'https://vedaimg.enjoycx.com/img/game/pg soft/50.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(515, '0', '', 'the-great-icescape', 'The Great Icescape', 'https://vedaimg.enjoycx.com/img/game/pg soft/53.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(516, '0', '', 'captains-bounty', 'Captain\'s Bounty', 'https://vedaimg.enjoycx.com/img/game/pg soft/54.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(517, '0', '', 'dragon-hatch', 'Dragon Hatch', 'https://vedaimg.enjoycx.com/img/game/pg soft/57.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(518, '0', '', 'vampires-charm', 'Vampire\'s Charm', 'https://vedaimg.enjoycx.com/img/game/pg soft/58.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(519, '0', '', 'ninja-vs-samurai', 'Ninja vs Samurai', 'https://vedaimg.enjoycx.com/img/game/pg soft/59.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(520, '0', '', 'leprechaun-riches', 'Leprechaun Riches', 'https://vedaimg.enjoycx.com/img/game/pg soft/60.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(521, '0', '', 'flirting-scholar', 'Flirting Scholar', 'https://vedaimg.enjoycx.com/img/game/pg soft/61.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(522, '0', '', 'gem-saviour-conquest', 'Gem Saviour Conquest', 'https://vedaimg.enjoycx.com/img/game/pg soft/62.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(523, '0', '', 'dragon-tiger-luck', 'Dragon Tiger Luck', 'https://vedaimg.enjoycx.com/img/game/pg soft/63.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(524, '0', '', 'muay-thai-champion', 'Muay Thai Champion', 'https://vedaimg.enjoycx.com/img/game/pg soft/64.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(525, '0', '', 'mahjong-ways', 'Mahjong Ways', 'https://vedaimg.enjoycx.com/img/game/pg soft/65.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(526, '0', '', 'shaolin-soccer', 'Shaolin Soccer', 'https://vedaimg.enjoycx.com/img/game/pg soft/67.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(527, '0', '', 'fortune-mouse', 'Fortune Mouse', 'https://vedaimg.enjoycx.com/img/game/pg soft/68.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(528, '0', '', 'bikini-paradise', 'Bikini Paradise ', 'https://vedaimg.enjoycx.com/img/game/pg soft/69.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(529, '0', '', 'candy-burst', 'Candy Burst', 'https://vedaimg.enjoycx.com/img/game/pg soft/70.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(530, '0', '', 'cai-shen-wins', 'Cai shen Wins', 'https://vedaimg.enjoycx.com/img/game/pg soft/71.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(531, '0', '', 'egypts-book-mystery', 'Egypt\'s Book of Mystery', 'https://vedaimg.enjoycx.com/img/game/pg soft/73.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(532, '0', '', 'mahjong-ways2', 'Mahjong Ways 2', 'https://vedaimg.enjoycx.com/img/game/pg soft/74.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(533, '0', '', 'ganesha-fortune', 'Ganesha Fortune', 'https://vedaimg.enjoycx.com/img/game/pg soft/75.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(534, '0', '', 'dreams-of-macau', 'Dreams of Macau', 'https://vedaimg.enjoycx.com/img/game/pg soft/79.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(535, '0', '', 'circus-delight', 'Circus Delight', 'https://vedaimg.enjoycx.com/img/game/pg soft/80.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(536, '0', '', 'phoenix-rises', 'Phoenix Rises', 'https://vedaimg.enjoycx.com/img/game/pg soft/82.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(537, '0', '', 'wild-fireworks', 'Wild Fireworks', 'https://vedaimg.enjoycx.com/img/game/pg soft/83.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(538, '0', '', 'queen-bounty', 'Queen of Bounty ', 'https://vedaimg.enjoycx.com/img/game/pg soft/84.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(539, '0', '', 'genies-wishes', 'Genie\'s 3 Wishes', 'https://vedaimg.enjoycx.com/img/game/pg soft/85.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(540, '0', '', 'galactic-gems', 'Galactic Gems', 'https://vedaimg.enjoycx.com/img/game/pg soft/86.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(541, '0', '', 'treasures-aztec', 'Treasures of Aztec', 'https://vedaimg.enjoycx.com/img/game/pg soft/87.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(542, '0', '', 'jewels-prosper', 'Jewels of Prosperity', 'https://vedaimg.enjoycx.com/img/game/pg soft/88.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(543, '0', '', 'lucky-neko', 'Lucky Neko', 'https://vedaimg.enjoycx.com/img/game/pg soft/89.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(544, '0', '', 'sct-cleopatra', 'Secrets of Cleopatra', 'https://vedaimg.enjoycx.com/img/game/pg soft/90.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(545, '0', '', 'gdn-ice-fire', 'Guardians of Ice and Fire', 'https://vedaimg.enjoycx.com/img/game/pg soft/91.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(546, '0', '', 'thai-river', 'Thai River Wonders', 'https://vedaimg.enjoycx.com/img/game/pg soft/92.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(547, '0', '', 'opera-dynasty', 'Opera Dynasty', 'https://vedaimg.enjoycx.com/img/game/pg soft/93.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(548, '0', '', 'bali-vacation', 'Bali Vacation', 'https://vedaimg.enjoycx.com/img/game/pg soft/94.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(549, '0', '', 'majestic-ts', 'Majestic Treasures', 'https://vedaimg.enjoycx.com/img/game/pg soft/95.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(550, '0', '', 'jack-frosts', 'Jack Frost\'s Winter', 'https://vedaimg.enjoycx.com/img/game/pg soft/97.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(551, '0', '', 'fortune-ox', 'Fortune Ox', 'https://vedaimg.enjoycx.com/img/game/pg soft/98.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(552, '0', '', 'candy-bonanza', 'Candy Bonanza', 'https://vedaimg.enjoycx.com/img/game/pg soft/100.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(553, '0', '', 'rise-of-apollo', 'Rise of Apollo', 'https://vedaimg.enjoycx.com/img/game/pg soft/101.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(554, '0', '', 'mermaid-riches', 'Mermaid Riches', 'https://vedaimg.enjoycx.com/img/game/pg soft/102.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(555, '0', '', 'crypto-gold', 'Crypto Gold', 'https://vedaimg.enjoycx.com/img/game/pg soft/103.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(556, '0', '', 'wild-bandito', 'Wild Bandito', 'https://vedaimg.enjoycx.com/img/game/pg soft/104.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(557, '0', '', 'heist-stakes', 'Heist  Stakes', 'https://vedaimg.enjoycx.com/img/game/pg soft/105.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(558, '0', '', 'ways-of-qilin', 'Ways of the Qilin', 'https://vedaimg.enjoycx.com/img/game/pg soft/106.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(559, '0', '', 'lgd-monkey-kg', 'Legendary Monkey King', 'https://vedaimg.enjoycx.com/img/game/pg soft/107.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(560, '0', '', 'buffalo-win', 'Buffalo Win', 'https://vedaimg.enjoycx.com/img/game/pg soft/108.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(561, '0', '', 'jurassic-kdm', 'Jurassic Kingdom', 'https://vedaimg.enjoycx.com/img/game/pg soft/110.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(562, '0', '', 'oriental-pros', 'Oriental Prosperity', 'https://vedaimg.enjoycx.com/img/game/pg soft/112.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(563, '0', '', 'crypt-fortune', 'Raider Jane\'s Crypt of Fortune', 'https://vedaimg.enjoycx.com/img/game/pg soft/113.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(564, '0', '', 'emoji-riches', 'Emoji Riches', 'https://vedaimg.enjoycx.com/img/game/pg soft/114.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(565, '0', '', 'sprmkt-spree', 'Supermarket Spree', 'https://vedaimg.enjoycx.com/img/game/pg soft/115.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(566, '0', '', 'cocktail-nite', 'Cocktail Nights', 'https://vedaimg.enjoycx.com/img/game/pg soft/117.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(567, '0', '', 'mask-carnival', 'Mask Carnival', 'https://vedaimg.enjoycx.com/img/game/pg soft/118.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(568, '0', '', 'spirit-wonder', 'Spirited Wonders', 'https://vedaimg.enjoycx.com/img/game/pg soft/119.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(569, '0', '', 'queen-banquet', 'The Queen\'s Banquet', 'https://vedaimg.enjoycx.com/img/game/pg soft/120.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(570, '0', '', 'dest-sun-moon', 'Destiny of Sun & Moon', 'https://vedaimg.enjoycx.com/img/game/pg soft/121.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(571, '0', '', 'garuda-gems', 'Garuda Gems', 'https://vedaimg.enjoycx.com/img/game/pg soft/122.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(572, '0', '', 'rooster-rbl', 'Rooster Rumble', 'https://vedaimg.enjoycx.com/img/game/pg soft/123.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(573, '0', '', 'battleground', 'Battleground Royale', 'https://vedaimg.enjoycx.com/img/game/pg soft/124.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(574, '0', '', 'btrfly-blossom', 'Butterfly Blossom', 'https://vedaimg.enjoycx.com/img/game/pg soft/125.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(575, '0', '', 'fortune-tiger', 'Fortune Tiger', 'https://vedaimg.enjoycx.com/img/game/pg soft/126.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(576, '0', '', 'speed-winner', 'Speed Winner', 'https://vedaimg.enjoycx.com/img/game/pg soft/127.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(577, '0', '', 'legend-perseus', 'Legend of Perseus', 'https://vedaimg.enjoycx.com/img/game/pg soft/128.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(578, '0', '', 'win-win-fpc', 'Win Win Fish Prawn Crab', 'https://vedaimg.enjoycx.com/img/game/pg soft/129.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(579, '0', '', 'lucky-piggy', 'Lucky Piggy', 'https://vedaimg.enjoycx.com/img/game/pg soft/130.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(580, '0', '', 'wild-coaster', 'Wild Coaster', 'https://vedaimg.enjoycx.com/img/game/pg soft/132.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(581, '0', '', 'wild-bounty-sd', 'Wild Bounty Showdown', 'https://vedaimg.enjoycx.com/img/game/pg soft/135.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(582, '0', '', 'prosper-ftree', 'Prosperity Fortune Tree', 'https://vedaimg.enjoycx.com/img/game/pg soft/1312883.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(583, '0', '', 'totem-wonders', 'Totem Wonders', 'https://vedaimg.enjoycx.com/img/game/pg soft/1338274.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(584, '0', '', 'asgardian-rs', 'Asgardian Rising', 'https://vedaimg.enjoycx.com/img/game/pg soft/1340277.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(585, '0', '', 'alchemy-gold', 'Alchemy Gold', 'https://vedaimg.enjoycx.com/img/game/pg soft/1368367.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(586, '0', '', 'diner-delights', 'Diner Delights', 'https://vedaimg.enjoycx.com/img/game/pg soft/1372643.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(587, '0', '', 'hawaiian-tiki', 'Hawaiian Tiki', 'https://vedaimg.enjoycx.com/img/game/pg soft/1381200.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(588, '0', '', 'fruity-candy', 'Fruity Candy', 'https://vedaimg.enjoycx.com/img/game/pg soft/1397455.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(589, '0', '', 'midas-fortune', 'Midas Fortune', 'https://vedaimg.enjoycx.com/img/game/pg soft/1402846.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(590, '0', '', 'bakery-bonanza', 'Bakery Bonanza', 'https://vedaimg.enjoycx.com/img/game/pg soft/1418544.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(591, '0', '', 'rave-party-fvr', 'Rave Party Fever', 'https://vedaimg.enjoycx.com/img/game/pg soft/1420892.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(592, '0', '', 'myst-spirits', 'Mystical Spirits', 'https://vedaimg.enjoycx.com/img/game/pg soft/1432733.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(593, '0', '', 'songkran-spl', 'Songkran Splash', 'https://vedaimg.enjoycx.com/img/game/pg soft/1448762.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(594, '0', '', 'dragon-hatch2', 'Dragon Hatch2', 'https://vedaimg.enjoycx.com/img/game/pg soft/1451122.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(595, '0', '', 'cruise-royale', 'Cruise Royale', 'https://vedaimg.enjoycx.com/img/game/pg soft/1473388.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(596, '0', '', 'ult-striker', 'Ultimate Striker', 'https://vedaimg.enjoycx.com/img/game/pg soft/1489936.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(597, '0', '', 'spr-golf-drive', 'Super Golf Drive', 'https://vedaimg.enjoycx.com/img/game/pg soft/1513328.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(598, '0', '', 'fortune-rabbit', 'Fortune Rabbit', 'https://vedaimg.enjoycx.com/img/game/pg soft/1543462.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(599, '0', '', 'wild-heist-co', 'Wild Heist Cashout', 'https://vedaimg.enjoycx.com/img/game/pg soft/1568554.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(600, '0', '', 'mafia-mayhem', 'Mafia Mayhem', 'https://vedaimg.enjoycx.com/img/game/pg soft/1580541.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(601, '0', '', 'safari-wilds', 'Safari Wilds', 'https://vedaimg.enjoycx.com/img/game/pg soft/1594259.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(602, '0', '', 'lucky-clover', 'Lucky Clover Lady', 'https://vedaimg.enjoycx.com/img/game/pg soft/1601012.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(603, '0', '', 'werewolf-hunt', 'Werewolf\'s Hunt', 'https://vedaimg.enjoycx.com/img/game/pg soft/1615454.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(604, '0', '', 'tsar-treasures', 'Tsar Treasures', 'https://vedaimg.enjoycx.com/img/game/pg soft/1655268.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(605, '0', '', 'gemstones-gold', 'Gemstones Gold', 'https://vedaimg.enjoycx.com/img/game/pg soft/1671262.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(606, '0', '', 'fortune-dragon', 'Fortune Dragon', 'https://vedaimg.enjoycx.com/img/game/pg soft/1695365.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(607, '0', '', 'wild-ape-3258', 'Wild Ape #3258', 'https://vedaimg.enjoycx.com/img/game/pg soft/1508783.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(608, '0', '', 'cash-mania', 'Cash Mania', 'https://vedaimg.enjoycx.com/img/game/pg soft/1682240.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(609, '0', '', 'pinata-wins', 'Pinata Wins', 'https://vedaimg.enjoycx.com/img/game/pg soft/1492288.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(610, '0', '', 'mystic-potions', 'Mystic Potion', 'https://vedaimg.enjoycx.com/img/game/pg soft/1717688.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(611, '0', '', 'anubis-wrath', 'Anubis Wrath', 'https://vedaimg.enjoycx.com/img/game/pg soft/1623475.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(612, '0', '', 'zombie-outbrk', 'Zombie Outbreak', 'https://vedaimg.enjoycx.com/img/game/pg soft/1635221.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(613, '0', '', 'futebol-fever', 'Futebol Fever', 'https://vedaimg.enjoycx.com/img/game/pg soft/1778752.png', '0', 'PG', 'SL', '1', 'PGSOFT'),
(614, '0', '', 'shark-bounty', 'Shark Bounty', 'https://vedaimg.enjoycx.com/img/game/pg soft/1648578.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(615, '0', '', 'forge-wealth', 'Forge of Wealth', 'https://vedaimg.enjoycx.com/img/game/pg soft/1555350.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(616, '0', '', 'wings-iguazu', 'Wings of Iguazu', 'https://vedaimg.enjoycx.com/img/game/pg soft/1747549.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(617, '0', '', 'ninja-raccoon', 'Ninja Raccoon Frenzy', 'https://vedaimg.enjoycx.com/img/game/pg soft/1529867.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(618, '0', '', 'museum-mystery', 'Museum Mystery', 'https://vedaimg.enjoycx.com/img/game/pg soft/1755623.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(619, '0', '', 'yakuza-honor', 'Yakuza Honor', 'https://vedaimg.enjoycx.com/img/game/pg soft/1760238.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(620, '0', '', 'three-cz-pigs', 'Three Crazy Piggies', 'https://vedaimg.enjoycx.com/img/game/pg soft/1727711.png', '1', 'PG', 'SL', '1', 'PGSOFT'),
(621, '0', '', 'oishi-delights', 'Oishi Delights', 'https://vedaimg.enjoycx.com/img/game/pg soft/1815268.png', '1', 'PG', 'SL', '1', 'PGSOFT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_provider`
--

CREATE TABLE `tb_provider` (
  `cuid` int(255) NOT NULL,
  `providerid` text NOT NULL,
  `providername` text NOT NULL,
  `slug` text NOT NULL,
  `type` text NOT NULL,
  `status` text NOT NULL,
  `providerimage` text NOT NULL,
  `jenis` int(11) NOT NULL COMMENT '1:slot,2:sports,3:casino,4:fishing,5:e-games,6:togel',
  `providerapi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_provider`
--

INSERT INTO `tb_provider` (`cuid`, `providerid`, `providername`, `slug`, `type`, `status`, `providerimage`, `jenis`, `providerapi`) VALUES
(1, 'PR', 'Pragmatic Play', 'pragmatic-play', 'SL', '1', '/upload/game_menu/pragmatic-play.png', 1, 'Softgaming'),
(2, 'PG', 'PG Soft', 'pg-soft', 'SL', '1', '/upload/game_menu/pg-soft.png', 1, 'Softgaming'),
(3, 'HB', 'Habanero', 'habanero', 'SL', '1', '/upload/game_menu/habanero.png', 1, 'Softgaming'),
(4, 'SG', 'Spade Gaming', 'spade-gaming', 'SL', '1', '/upload/game_menu/spade-gaming.png', 1, 'Softgaming'),
(5, 'JK', 'Joker', 'joker', 'SL', '1', '/upload/game_menu/joker.png', 1, 'Softgaming'),
(6, 'MP', 'Micro Gaming Plus', 'micro-gaming-plus', 'SL', '1', '/upload/game_menu/micro-gaming-plus.png', 1, 'Softgaming'),
(7, 'JA', 'Jili', 'jili', 'SL', '1', '/upload/game_menu/jili.png', 1, 'Softgaming'),
(8, 'JD', 'JDB', 'jdb', 'SL', '1', '/upload/game_menu/jdb.png', 1, 'Softgaming'),
(9, 'GE', 'EVOLUTION', 'evolution', 'SL', '1', '/upload/game_menu/evolution.png', 1, 'Softgaming'),
(10, 'AD', 'ADVANT PLAY', 'advant-play', 'SL', '1', '/upload/game_menu/advant-play.png', 1, 'Softgaming'),
(11, 'L1', 'LIVE22 SLOTMAKER', 'live22-slotmaker', 'SL', '1', '/upload/game_menu/live22-slotmaker.png', 1, 'Softgaming'),
(12, 'WW', 'WOW GAMING', 'wow-gaming', 'SL', '1', '/upload/game_menu/wow-gaming.png', 1, 'Softgaming'),
(13, 'FR', 'PLAYTECH', 'playtech', 'SL', '1', '/upload/game_menu/playtech.png', 1, 'Softgaming'),
(14, 'GB', 'BBIN', 'bbin', 'SL', '1', '/upload/game_menu/bbin.png', 1, 'Softgaming'),
(15, 'PN', 'PLAY N GO', 'play-n-go', 'SL', '1', '/upload/game_menu/play-n-go.png', 1, 'Softgaming'),
(16, 'YD', 'YGGDRASIL', 'yggdrasil', 'SL', '1', '/upload/game_menu/yggdrasil.png', 1, 'Softgaming'),
(17, 'EP', 'EVOPLAY', 'evoplay', 'SL', '1', '/upload/game_menu/evoplay.png', 1, 'Softgaming'),
(18, 'CQ', 'CQ9', 'cq9', 'SL', '1', '/upload/game_menu/cq9.png', 1, 'Softgaming'),
(19, 'PR', 'PRAGMATIC LIVE', 'pragmatic-live', 'LC', '1', '/upload/game_menu/pragmatic-live.png', 3, 'Softgaming'),
(20, 'DG', 'DREAM GAMING', 'dream-gaming', 'LC', '1', '/upload/game_menu/dream-gaming.png', 3, 'Softgaming'),
(21, 'AG', 'ASIAGAMING', 'asiagaming', 'LC', '1', '/upload/game_menu/asiagaming.png', 3, 'Softgaming'),
(22, 'WC', 'WM CASINO', 'wm-casino', 'LC', '1', '/upload/game_menu/wm-casino.png', 3, 'Softgaming'),
(23, 'S4', 'SA GAMING 2DRAGON', 'sa-gaming-2dragon', 'LC', '0', '/upload/game_menu/sa-gaming-2dragon.png', 3, 'Softgaming'),
(24, 'YB', 'YEEBET', 'yeebet', 'LC', '1', '/upload/game_menu/yeebet.png', 3, 'Softgaming'),
(25, 'S6', 'AWC68', 'awc68', 'LC', '1', '/upload/game_menu/awc68.png', 3, 'Softgaming'),
(26, 'RL', 'AI LIVE CASINO', 'ai-live-casino', 'LC', '1', '/upload/game_menu/ai-live-casino.png', 3, 'Softgaming'),
(27, 'OC', 'ON CASINO', 'on-casino', 'LC', '1', '/upload/game_menu/on-casino.png', 3, 'Softgaming'),
(28, 'EZ', 'EZUGI', 'ezugi', 'LC', '0', '/upload/game_menu/ezugi.png', 3, 'Softgaming'),
(29, 'YD', 'YGGDRASIL LIVE', 'yggdrasil-live', 'LC', '0', '/upload/game_menu/yggdrasil-live.png', 3, 'Softgaming'),
(30, 'M0', 'MP POKER', 'mp-poker', 'CB', '0', '/upload/game_menu/mp-poker.png', 3, 'Softgaming'),
(31, 'V8', 'V8POKER', 'v8poker', 'CB', '1', '/upload/game_menu/v8poker.png', 3, 'Softgaming'),
(32, 'WW', 'WOW GAMING', 'wow-gaming', 'CB', '1', '/upload/game_menu/wow-gaming.png', 3, 'Softgaming'),
(33, 'ND', 'NEX4D', 'nex4d', 'LK', '1', '/upload/game_menu/nex4d.png', 6, 'Softgaming'),
(34, 'QK', 'QQ KENO', 'qq-keno', 'LK', '1', '/upload/game_menu/qq-keno.png', 6, 'Softgaming'),
(35, 'AZ', 'ABS4D', 'abs4d', 'LK', '0', '/upload/game_menu/abs4d.png', 6, 'Softgaming'),
(36, 'S3', 'SBO', 'sbo', 'SB', '0', '/upload/game_menu/sbo.png', 2, 'Softgaming'),
(37, 'AF', 'AFB SPORT', 'afb-sport', 'SB', '1', '/upload/game_menu/afb-sport.png', 2, 'Softgaming'),
(38, 'IB', 'IBC', 'ibc', 'SB', '1', '/upload/game_menu/ibc.png', 2, 'Softgaming'),
(39, 'WB', 'WBET', 'wbet', 'SB', '1', '/upload/game_menu/wbet.png', 2, 'Softgaming'),
(40, 'FB', 'FB SPORT', 'fb-sport', 'SB', '1', '/upload/game_menu/fb-sport.png', 2, 'Softgaming'),
(41, 'BETFAIR', 'BFUN', 'bfun', 'SB', '0', '/upload/game_menu/bfun.png', 2, 'Softgaming'),
(42, 'JD', 'JDB', 'jdb', 'OT', '1', '/upload/game_menu/jdb.png', 5, 'Softgaming'),
(43, 'JA', 'JILI', 'jili', 'OT', '1', '/upload/game_menu/jili.png', 5, 'Softgaming'),
(44, 'JK', 'JOKER', 'joker', 'FH', '1', '/upload/game_menu/joker.png', 4, 'Softgaming'),
(45, 'MP', 'MICRO GAMING PLUS', 'micro-gaming-plus', 'FH', '1', '/upload/game_menu/micro-gaming-plus.png', 4, 'Softgaming'),
(46, 'CQ', 'CQ9', 'cq9', 'FH', '1', '/upload/game_menu/cq9.png', 4, 'Softgaming'),
(47, 'SG', 'SPADE GAMING', 'spade-gaming', 'FH', '1', '/upload/game_menu/spade-gaming.png', 4, 'Softgaming'),
(48, 'FG', 'FUN GAMING', 'fun-gaming', 'FH', '1', '/upload/game_menu/fun-gaming.png', 4, 'Softgaming'),
(49, 'S3', 'SBO SLOT', 'sbo-slot', 'SL', '1', '/upload/game_menu/sbo-slot.png', 1, 'Softgaming'),
(50, 'S3', 'SBO LIVE', 'sbo-live', 'LC', '0', '/upload/game_menu/sbo-live.png', 3, 'Softgaming'),
(51, 'R8', 'RICH88', 'rich88', 'SL', '1', '/upload/game_menu/rich88.png', 1, 'Softgaming'),
(52, 'FG', 'FUN GAMING', 'fun-gaming', 'SL', '1', '/upload/game_menu/fun-gaming.png', 1, 'Softgaming'),
(53, 'JD', 'JDB', 'jdb', 'CB', '1', '/upload/game_menu/jdb.png', 3, 'Softgaming'),
(54, 'JD', 'JDB', 'jdb', 'LK', '1', '/upload/game_menu/jdb.png', 6, 'Softgaming'),
(55, 'JD', 'JDB', 'jdb', 'FH', '1', '/upload/game_menu/jdb.png', 4, 'Softgaming'),
(56, 'SG', 'Spade Gaming', 'spade-gaming', 'CB', '1', '/upload/game_menu/spade-gaming.png', 3, 'Softgaming'),
(57, 'FR', 'PLAYTECH CARD BOARD', 'playtech-card-board', 'CB', '1', '/upload/game_menu/playtech-card-board.png', 3, 'Softgaming'),
(58, 'CQ', 'CQ9', 'cq9', 'CB', '1', '/upload/game_menu/cq9.png', 3, 'Softgaming'),
(59, 'JA', 'Jili Card Board', 'jili-card-board', 'CB', '1', '/upload/game_menu/jili-card-board.png', 3, 'Softgaming'),
(60, 'JA', 'Jili Fishing', 'jili-fishing', 'FH', '1', '/upload/game_menu/jili-fishing.png', 4, 'Softgaming'),
(61, 'WW', 'WOW GAMING', 'wow-gaming', 'LK', '1', '/upload/game_menu/wow-gaming.png', 6, 'Softgaming'),
(62, 'WW', 'WOW GAMING', 'wow-gaming', 'PK', '1', '/upload/game_menu/wow-gaming.png', 5, 'Softgaming'),
(63, 'AG', 'Asia Gaming', 'asia-gaming', 'SL', '1', '/upload/game_menu/asia-gaming.png', 1, 'Softgaming'),
(64, 'GB', 'BBIN Fishing', 'bbin-fishing', 'FH', '1', '/upload/game_menu/bbin-fishing.png', 4, 'Softgaming'),
(65, 'TF', 'TF Gaming', 'tf-gaming', 'ES', '1', '/upload/game_menu/tf-gaming.png', 5, 'Softgaming'),
(66, 'PS', 'PLAYSTAR', 'playstar', 'SL', '0', '/upload/game_menu/playstar.png', 1, 'Softgaming'),
(67, 'IA', 'IA Esports', 'ia-esports', 'ES', '1', '/upload/game_menu/ia-esports.png', 5, 'Softgaming'),
(68, 'S6', 'AWC68', 'awc68', 'OT', '1', '/upload/game_menu/awc68.png', 5, 'Softgaming');

-- --------------------------------------------------------

--
-- Struktur dari tabel `withdraw`
--

CREATE TABLE `withdraw` (
  `id_withdraw` int(11) NOT NULL,
  `id_anggota_withdraw` int(11) NOT NULL,
  `kode_withdraw` varchar(255) NOT NULL,
  `tujuan_withdraw` varchar(255) NOT NULL,
  `jumlah_withdraw` varchar(255) NOT NULL,
  `tanggal_withdraw` datetime NOT NULL,
  `status_withdraw` enum('diproses','dibatalkan','disetujui') NOT NULL DEFAULT 'diproses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `withdraw`
--

INSERT INTO `withdraw` (`id_withdraw`, `id_anggota_withdraw`, `kode_withdraw`, `tujuan_withdraw`, `jumlah_withdraw`, `tanggal_withdraw`, `status_withdraw`) VALUES
(302, 524, 'W7392772', 'DANA - 085925502710 - ADE HENDRA', '100000', '2024-11-16 12:25:39', 'disetujui');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id_bonus`);

--
-- Indeks untuk tabel `bukti_jp`
--
ALTER TABLE `bukti_jp`
  ADD PRIMARY KEY (`id_bukti_jp`);

--
-- Indeks untuk tabel `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indeks untuk tabel `floating`
--
ALTER TABLE `floating`
  ADD PRIMARY KEY (`id_floating`);

--
-- Indeks untuk tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`id_pemberitahuan`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indeks untuk tabel `promosi`
--
ALTER TABLE `promosi`
  ADD PRIMARY KEY (`id_promosi`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indeks untuk tabel `tb_gamelist`
--
ALTER TABLE `tb_gamelist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_provider`
--
ALTER TABLE `tb_provider`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id_withdraw`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id_bonus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `bukti_jp`
--
ALTER TABLE `bukti_jp`
  MODIFY `id_bukti_jp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  MODIFY `id_pemberitahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id_promosi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_gamelist`
--
ALTER TABLE `tb_gamelist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT untuk tabel `tb_provider`
--
ALTER TABLE `tb_provider`
  MODIFY `cuid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id_withdraw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
