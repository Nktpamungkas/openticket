-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2019 pada 07.28
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `openticket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `code` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `departments`
--

INSERT INTO `departments` (`code`, `dept_name`) VALUES
('ACC', 'ACCOUNTING'),
('BRS', 'BRUSHING'),
('DIT', 'DATA & INFORMATIKA'),
('DYE', 'Dyeing'),
('FIN', 'Finishing'),
('LAB', 'Laboratory'),
('KNT', 'Knitting'),
('MKT', 'Marketing'),
('GKJ', 'Gudang Kain Jadi'),
('GKG', 'Gudang Kain Greige'),
('GDB', 'Gudang Benang'),
('EXM', 'Export Import'),
('PCS', 'Purchasing'),
('PRS', 'Personalia '),
('PPC', 'Production Process Control '),
('RMP', 'Row and Material Planning'),
('MTC', 'Maintenance'),
('PRT', 'Printing'),
('FNC', 'Finance'),
('MAS', 'MAS'),
('QAI', 'Quality Assurance'),
('QCF', 'Quality Control Final'),
('TAS', 'Technical Advisory'),
('DMF', 'DMF'),
('PDC', 'PRODUCT DEVELOPMENT'),
('YND', 'YARN DYE'),
('TRS', 'TRANSPORT'),
('N/A', 'N/A'),
('SVR', 'Server');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ipaddress`
--

CREATE TABLE IF NOT EXISTS `ipaddress` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `IP` varchar(15) DEFAULT NULL,
  `HostName` varchar(40) DEFAULT NULL,
  `User` varchar(40) DEFAULT NULL,
  `Kode` varchar(20) DEFAULT NULL,
  `Dept` varchar(20) DEFAULT NULL,
  `Akses` varchar(15) DEFAULT NULL,
  `Catatan` varchar(200) DEFAULT NULL,
  `MAC` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `ipaddress`
--

INSERT INTO `ipaddress` (`ID`, `IP`, `HostName`, `User`, `Kode`, `Dept`, `Akses`, `Catatan`, `MAC`) VALUES
(1, '10.0.4.55', 'DIT', 'DIT', 'DIT-.4.55', 'DIT', 'INTERNET', '', '00:26:22:95:06:93'),
(2, '10.0.4.56', 'DESKTOP-36QH8V7\r\n', 'Nilo', 'DES-.4.56', 'DES', 'INTERNET', 'Testing Catatan', '70-4D-7B-BF-F3-D6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `itemriwayatmesin`
--

CREATE TABLE IF NOT EXISTS `itemriwayatmesin` (
  `IDmesin` bigint(20) NOT NULL,
  `notiket` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `kegiatan` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `itemriwayatmesin`
--

INSERT INTO `itemriwayatmesin` (`IDmesin`, `notiket`, `tgl`, `kegiatan`) VALUES
(1, '', '2015-05-13 00:00:00', 'Bersihkan komponen hardware'),
(2, '', '2015-05-13 00:00:00', 'Install Windows 8.1 64 bit OEM'),
(3, '', '2015-05-13 00:00:00', 'Install Windows 8.1 64bit OEM'),
(4, '', '2015-05-13 00:00:00', 'Install Windows 8.1 64 bit OEM'),
(5, '', '2015-05-25 00:00:00', 'Bersihkan komponen dari debu'),
(6, '', '2015-05-25 00:00:00', 'Repair Windows XP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayatmesin`
--

CREATE TABLE IF NOT EXISTS `riwayatmesin` (
  `IDmesin` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomesin` varchar(20) NOT NULL,
  `mesin` varchar(10) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `dept` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDmesin`) USING BTREE,
  KEY `nomesin` (`nomesin`,`dept`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `riwayatmesin`
--

INSERT INTO `riwayatmesin` (`IDmesin`, `nomesin`, `mesin`, `type`, `dept`) VALUES
(1, 'INS07', 'CPU', '', 'QCF'),
(2, 'ACC01', 'CPU', '', 'ACC'),
(3, 'ACC02', 'CPU', '', 'ACC'),
(4, 'FNC1', 'CPU', '', 'FNC'),
(5, 'INS05', 'CPU', '192.168.0.178', 'QCF'),
(6, 'PRT01', 'CPU', '', 'PRT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suara`
--

CREATE TABLE IF NOT EXISTS `suara` (
  `qcID` int(11) NOT NULL,
  `wilayah` text NOT NULL,
  `notps` tinytext NOT NULL,
  `urut1` tinytext NOT NULL,
  `urut2` tinytext NOT NULL,
  `urut3` tinytext NOT NULL,
  `urut4` tinytext NOT NULL,
  `urut5` tinytext NOT NULL,
  `nosah` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `suara`
--

INSERT INTO `suara` (`qcID`, `wilayah`, `notps`, `urut1`, `urut2`, `urut3`, `urut4`, `urut5`, `nosah`) VALUES
(24, '0010010001', '12', '53', '67', '31', '89', '20', '21'),
(12, '0010010001', '12', '53', '67', '31', '89', '30', '0'),
(18, '0010010001', '12', '53', '30', '31', '19', '56', '0'),
(80, '0010010001', '12', '53', '30', '31', '19', '56', '2'),
(70, '0010010002', '12', '53', '30', '31', '19', '56', '30'),
(81, '0010010003', '14', '80', '25', '54', '32', '38', '22'),
(83, '0010010001', '15', '80', '20', '120', '320', '150', '15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabjenisbarang`
--

CREATE TABLE IF NOT EXISTS `tabjenisbarang` (
  `kode` char(3) NOT NULL,
  `jenisbarang` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kode`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabjenisbarang`
--

INSERT INTO `tabjenisbarang` (`kode`, `jenisbarang`) VALUES
('PSP', 'Power Supply'),
('MNT', 'Monitor Tabung'),
('MBR', 'MainBoard'),
('KBL', 'Kabel-kabel'),
('LAN', 'Kabel LAN'),
('PRT', 'Printer'),
('KYB', 'Keyboard'),
('CPU', '1 Set CPU'),
('KOM', '1 Set Komputer Desktop'),
('LCD', 'Monitor LCD'),
('BAR', 'Barcode Scanner'),
('UPS', 'UPS'),
('MOS', 'Mouse'),
('BTU', 'Batterei UPS'),
('HUB', 'Switch / HUB'),
('STZ', 'Stabilizer'),
('RAM', 'Memory / RAM'),
('HDD', 'Hard Disk Drive'),
('BUS', 'Kabel Data IDE / SATA'),
('OBG', 'Obeng'),
('TAN', 'Tang'),
('STA', 'Stabillo'),
('FOL', 'Folder'),
('CSN', 'Casing CPU'),
('NIC', 'LAN Card / NIC'),
('RJ4', 'Connector RJ45'),
('SRJ', 'Sambungan RJ45'),
('DVD', 'DVD / CD Blank / CD Driver'),
('CDR', 'CDROM/ DVDROM/ WR'),
('RTR', 'Router'),
('APW', 'Access Point Wireless'),
('NBK', 'Notebook/ Laptop/ netbook'),
('KRT', 'Kertas'),
('GTG', 'Gunting'),
('STK', 'Stiker'),
('CUT', 'Cutter'),
('HPE', 'HP Esia'),
('STE', 'Steppless'),
('VGA', 'VGA card'),
('TGA', 'Tangga'),
('USW', 'USB Wireless'),
('HDE', 'Hard Disk External'),
('MTS', ' MULTI TESTER'),
('TSP', 'Tespen'),
('TNT', 'Tinta printer'),
('WAP', 'Wireless Akses Point');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabkeluarbarang`
--

CREATE TABLE IF NOT EXISTS `tabkeluarbarang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tglkeluar` date DEFAULT NULL,
  `guna` varchar(15) DEFAULT NULL,
  `ketguna` text,
  `user` varchar(40) DEFAULT NULL,
  `noreff` varchar(50) DEFAULT NULL,
  `kodebarang` varchar(8) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data untuk tabel `tabkeluarbarang`
--

INSERT INTO `tabkeluarbarang` (`id`, `tglkeluar`, `guna`, `ketguna`, `user`, `noreff`, `kodebarang`, `jumlah`) VALUES
(5, '2012-06-04', 'pakai', 'untuk Di Ruang Server sebagai Router Pusat.\r<br>IP : \r<br>192.168.88.1\r<br>192.168.0.2\r<br>192.168.2.2\r<br>119.252.172.62', 'DIT', '', 'RTR-4', 1),
(6, '2012-06-05', 'pakai', 'untuk conecctor baru Laborat.', 'eko', '', 'RJ4-17', 2),
(7, '2012-06-08', 'pakai', 'di pakai eko.', 'DIT', '', 'HPE-22', 1),
(8, '2012-06-09', 'pakai', 'pengganti LAN  Card yg rusak\r<br>(etherlink 3c905c-TX-M)', 'KNIT A', '', 'NIC-18', 1),
(9, '2012-06-12', 'pakai', 'Pengganti switch 3 com 8 port di knitting B yang rusak', 'Knitting B', '', 'HUB-9', 1),
(10, '2012-06-13', 'pakai', 'untuk conector pak bintoro yang baru.', 'eko', '', 'RJ4-17', 1),
(11, '2012-06-13', 'pakai', 'untuk komputer viecca exim.', 'eko', '', 'NIC-18', 1),
(12, '2012-06-13', 'pakai', 'Menggantikan Router wireless Dyeing yang bermasalah\r<br>', 'Ruang DMF/ Dyeing', '', 'RTR-25', 1),
(13, '2012-06-15', 'pinjam', 'Di pinjam dept PPC untuk sementara ganti HUB nya yg rusak', 'PPC', '', 'HUB-28', 1),
(14, '2012-06-22', 'pakai', 'untuk penggunaan connecsi baru gudang benang', 'eko', '', 'RJ4-17', 10),
(15, '2012-06-27', 'ganti/tukar', 'mengganti PS Server Proxy yang mati', 'DIT', '', 'PSP-6', 1),
(16, '2012-07-03', 'ganti/tukar', 'tukar RTR 12 yg ada di Ruang server\r<br>wifi Lt 3 , taichen0920', 'DIT', '', 'RTR-32', 1),
(17, '2012-07-10', 'pakai', 'untuk akses point pusat/ gardu laborat', 'DIT', '', 'STZ-13', 1),
(18, '2012-07-13', 'pinjam', 'QC2', 'eko', '', 'HUB-11', 1),
(19, '2012-07-20', 'ganti/tukar', 'ci mey', 'accounting', '', 'MOS-33', 1),
(20, '2012-08-28', 'pinjam', 'karibuntex diambil oleh ko Alu\r<br>serah terima oleh eko galih', 'karibuntex', '', 'LCD-15', 1),
(21, '2012-09-14', 'ganti/tukar', 'tukar dengan bekas monitor knitting B GTC Ultimate Black', 'G Greige', 'prambudi', 'MNT-14', 1),
(22, '2012-09-21', 'pakai', 'all departemand', 'dit', '', 'RJ4-36', 42),
(23, '2012-09-25', 'pakai', 'untuk sambungan internet Mess Indotaichen yang baru (dibelakang printing)', 'MESS baru', '', 'HUB-31', 2),
(24, '2012-09-25', 'pakai', 'Untuk koneksi sambungan internet di Mess baru indotaichen (belakang printing)', 'MESS baru', '', 'RTR-30', 1),
(25, '2012-09-25', 'pakai', 'untuk sambungan kabel per kamar di Mess Indotaichen yang baru (belakang mess)\r<br>\r<br>lantai 1 dan sebagian lantai 2', 'MESS baru', '', 'RJ4-36', 30),
(26, '2012-10-09', 'ganti/tukar', 'Untuk Komputer Jadul RMP, buat anak baru', 'RMP', '', 'HDD-51', 1),
(27, '2012-10-09', 'pakai', 'Untuk tambahan komputer RMP jadul\r<br>untuk anak baru', 'RMP', '', 'RAM-52', 1),
(28, '2012-09-26', 'pakai', 'Untuk Koneksi LAN MESS Baru', 'Mess Baru', '', 'RJ4-36', 60),
(29, '2012-10-12', 'ganti/tukar', 'Tukar dengan HDD-57 ( karena rusak/ tidak terbaca)', 'Laptop Dyeing/ Darto', '', 'HDD-56', 1),
(30, '2012-10-15', 'pakai', 'untuk di gunakan di produksi.', 'dit', '', 'NIC-18', 2),
(31, '2012-10-15', 'pakai', 'Untuk Komputer Pak Sucipto Manager TAS', 'Sucipto', '010/TAS/IM/X/12', 'USW-58', 1),
(32, '2012-10-16', 'ganti/tukar', 'Tukar dengan 3COM ( NIC - 59  ) dari komputer pak anton , karibuntex', 'Anton', '', 'NIC-18', 1),
(33, '2012-10-19', 'pinjam', 'bersama dengan MNT-44\r<br>', 'finishing', '012/FIN/IM/X/12', 'CPU-63', 1),
(34, '2012-10-19', 'pinjam', 'bersama CPU-63', 'finishing', '012/FIN/IM/X/12', 'MNT-44', 1),
(35, '2012-10-29', 'pinjam', 'Finishing', 'Ade', '', 'MOS-60', 1),
(37, '2012-12-13', 'pakai', 'u/komputer yuyus marketing', 'yuyus MKT', '', 'PSP-61', 1),
(38, '2013-01-08', 'pakai', 'Tukar baterei yang sudah soak', 'PPC (Mr chong , dita)', '', 'BTU-72', 2),
(39, '2013-02-08', 'pinjam', 'di pake dulu buat di yarn dye/ Rima\r<br>\r<br>cat: belum tanda tangan terima', 'Rima', '', 'HUB-7', 1),
(40, '2013-05-17', 'ganti/tukar', 'Tukar mouse denga Logitec bola punya komputer bagus', 'Rijal', '', 'MOS-76', 1),
(41, '2013-10-03', 'pakai', 'Manager baru marketing', 'DAPI', '', 'NBK-47', 1),
(42, '2013-11-08', 'ganti/tukar', 'untuk CPU ex Ricky\r<br>tukar dgn monitor MKT yg rusak/ gambar garis2', 'Fendi', '', 'MNT-14', 1),
(43, '2013-11-08', 'pakai', 'untuk komputer ex Ricky Marketing', 'mkt', '', 'MOS-87', 1),
(44, '2013-12-06', 'pakai', 'Untuk mengganti switch Local2 (IP 2) yang ada diruang server', 'DIT', '', 'HUB-83', 1),
(45, '2013-12-23', 'pakai', 'ppc, sebelah nya husni, kabel digigitu tikus', 'ppc', '', 'RJ4-88', 1),
(46, '2013-12-09', 'pakai', 'untuk ganti rj45 yg diperkirakan jadi masalah tidak konek ke lapangan', 'bintoro', '', 'RJ4-88', 4),
(47, '2013-12-26', 'pakai', 'untuk ganti switch penghubung server dgn lapangan yang ada di box purchasing', 'DIT', '', 'HUB-83', 1),
(48, '2014-01-10', 'pakai', 'untuk mengganti cassing pak cipto yg rusak.', 'eko', 'TAS/2/I/14', 'CSN-90', 1),
(49, '2014-01-10', 'pakai', 'departemen TAS', 'mamik', 'TAS/3/1/14', 'BTU-72', 1),
(50, '2014-04-23', 'pakai', 'dipakai untuk komputer datacolor dyeing', 'mamik', '', 'VGA-19', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabmasukbarang`
--

CREATE TABLE IF NOT EXISTS `tabmasukbarang` (
  `kodebarang` varchar(8) NOT NULL,
  `urut` int(11) DEFAULT NULL,
  `jenisbarang` char(3) DEFAULT NULL,
  `namabarang` varchar(50) DEFAULT NULL,
  `spekbarang` text,
  `tglterima` date DEFAULT NULL,
  `sumber` varchar(15) DEFAULT NULL,
  `ketsumber` text,
  `harga` decimal(10,0) DEFAULT NULL,
  `noreff` varchar(50) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL,
  `ketkondisi` text,
  `jumlah` int(11) DEFAULT NULL,
  PRIMARY KEY (`kodebarang`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabmasukbarang`
--

INSERT INTO `tabmasukbarang` (`kodebarang`, `urut`, `jenisbarang`, `namabarang`, `spekbarang`, `tglterima`, `sumber`, `ketsumber`, `harga`, `noreff`, `kondisi`, `ketkondisi`, `jumlah`) VALUES
('MNT-26', 26, 'MNT', 'GTC Ultimate 15 inch', '15 inch warna black', '2012-06-13', 'bekas', 'knitting E dan Knitting C', '0', '', 'rusak', '1 terbakar,  1 resolusi rusak', 2),
('MNT-14', 14, 'MNT', 'Viewsonic', '15 inc', '2012-05-31', 'bekas', 'marketing', '0', '', 'second', 'siap pakai', 1),
('GTG-2', 2, 'GTG', 'Gunting kecil', '', '2012-05-31', 'stok', '', '0', '', 'lain-lain', '(1)gunti pakai dan (1) rusak', 2),
('MNT-3', 3, 'MNT', 'GTC millenia', 'monitor 15 inc.', '2012-05-31', 'stok', 'DIT', '0', '', 'lain-lain', 'layar mengalami kadang mengecil\r<br>', 1),
('STA-1', 1, 'STA', 'Stabillo Boss ', '', '2012-05-31', 'stok', '', '0', '', 'lain-lain', '', 6),
('RTR-4', 4, 'RTR', 'Router Board ', 'Router Board mikrotik RB 450 G', '2012-05-04', 'beli', 'www dot com', '1200000', '', 'baru', 'pakai', 1),
('PSP-5', 5, 'PSP', 'simbadda power supply', 'Simbadda 420watt', '2012-05-10', 'bekas', 'DIT', '0', '', 'rusak', 'sudah tidak bisa di pakai', 8),
('PSP-6', 6, 'PSP', 'Enlight Power Supply', 'Enlight 420watt', '2012-05-04', 'beli', 'www dot com', '0', '', 'baru', 'siap pakai', 1),
('HUB-7', 7, 'HUB', 'Switch GiGGabit', 'giggabit switch 8 port', '2012-05-10', 'beli', 'www dot com', '630000', '', 'baru', 'siap pakai', 1),
('HUB-8', 8, 'HUB', '3com 24 port', '3com baseline switch 2024 (24 port)\r<br>3C16471\r<br>10/100', '2012-05-31', 'bekas', 'DIT/ R server', '0', '', 'second', '8 port saja yang masih bisa di pakai.\r<br>port 1-4 dan 13-16', 1),
('HUB-9', 9, 'HUB', 'TP-LINK', 'TLSF 1005 D Enthernet switch (5 port)', '2012-05-31', 'stok', 'DIT', '0', '', 'second', 'siap pakai', 2),
('RTR-10', 10, 'RTR', 'LINKSYS Cisco', 'Wirless N-Home rooter \r<br>model:WRT 120N\r<br>LINKSYS by CISCO', '2012-05-31', 'stok', 'DIT DAN QCF', '0', '', 'second', 'siap pakai', 2),
('HUB-11', 11, 'HUB', 'D-LINK', 'D-LINK 10/100 fast ethernet switch (8 port)\r<br>Model : DES-1008D', '2012-05-31', 'stok', 'LAB dan DIT ', '0', '', 'second', 'siap pakai', 2),
('RTR-12', 12, 'RTR', '3com Wireless 11n Router', '3com wirless 11n cabel/DSL firwall router \r<br>Model :WL- 602\r<br>IP : 192.168.0.238\r<br>local : 192.168.100.1', '2012-05-31', 'bekas', 'printing dan ruang dmf', '0', '', 'second', 'perlu di cek ulang apakah stabil atau tidak', 2),
('STZ-13', 13, 'STZ', 'stabilizer', 'stabilizer 500VA ', '2012-05-31', 'stok', 'DIT', '0', '', 'second', 'siap pakai', 1),
('LCD-15', 15, 'LCD', 'Monitor Acer H195 HQL', 'Acer H195 HQL\r<br>Wide screen 18.5 inch', '2012-06-04', 'beli', 'www.com', '995000', '7065/D/2012', 'baru', 'untuk ganti monitor KNIT C', 1),
('SRJ-16', 16, 'SRJ', 'sambungan RJ45', '', '2012-06-04', 'stok', 'DIT', '0', '', 'baru', 'siap pakai.', 20),
('RJ4-17', 17, 'RJ4', 'Connector RJ45', '', '2012-06-04', 'stok', '', '0', '', 'baru', 'SIAP PAKAI.', 0),
('NIC-18', 18, 'NIC', 'LAN CARD D-LINK', 'D-LINK \r<br>NO MODEL :DFE-520TX\r<br>10\\100 Mbps Fast Ethernet PCI adapter', '2012-06-04', 'stok', 'dit', '0', '', 'baru', 'siap pakai.', 3),
('VGA-19', 19, 'VGA', 'VGA card ', 'CARDex PRO 5500 AGP \r<br>256 MB DDR1/128 BIT', '2012-06-04', 'beli', 'www dot com', '0', '', 'baru', 'siap pakai', 1),
('HDD-20', 20, 'HDD', 'Hard Disk IDE', 'hard disk IDE sagate 40b GB', '2012-06-04', 'bekas', 'DIT', '0', '', 'second', 'siiap pakai', 2),
('HDD-21', 21, 'HDD', 'Hard Disk SATTA', 'Hard Disk SATTA sagate 250GB ', '2012-06-04', 'stok', 'DIT', '0', '', 'second', 'siap pakai', 1),
('HPE-22', 22, 'HPE', 'SAMSUNG', 'samsung SCH-B299', '2012-06-08', 'beli', 'PURCHESING', '0', '', 'baru', 'pakai.', 1),
('NIC-23', 23, 'NIC', 'LAN Card 3com', 'Etherlink 10/100\r<br>3C905C-TX-M', '2012-06-09', 'bekas', 'KNIT A', '0', '', 'rusak', '', 1),
('HUB-24', 24, 'HUB', '3com switch 8', 'switch 8 port 3com', '2012-06-09', 'bekas', 'knitting B', '0', '', 'rusak', 'sudah tdk bisa di pakai.', 1),
('RTR-25', 25, 'RTR', 'Linksys WRT54G', 'Wireless-G 2.4 GHz Broadband Router\r<br>1 port internet\r<br>4 port LAN\r<br>SSID : New_mess_ITC\r<br>IP Pusat : 192.168.0.234\r<br>Ip Local : 192.168.6.1\r<br>user: admin ; password : itcadmin\r<br>key : 1uwnpkyxhs9w1tlf\r<br>\r<br>ganti / update 13 juni 2012\r<br>SSID : New_Dyeing\r<br>IP pusat : 192.168.0.231\r<br>key : taichen2011', '2012-06-12', 'bekas', 'mess Lie Sak Po', '0', '', 'second', '', 1),
('NIC-27', 27, 'NIC', 'D-Link Lan Card', 'Lan Card D-Link', '2012-06-14', 'stok', 'exim', '0', '', 'second', 'bisa pakai', 1),
('HUB-28', 28, 'HUB', 'HUB 16 port TP-Link', 'TP-Link 16 Port', '2012-06-15', 'bekas', 'QCF HUB', '0', '', 'second', '', 1),
('CPU-29', 29, 'CPU', 'CPU Intel i3', 'PC Intel Core i3 2100\r<br>MB Intel DH 61 WW\r<br>HDD 250 GB\r<br>RAM 2 GB DDR3\r<br>DVD RW Samsung\r<br>Casing ATX Simbadda', '2012-06-27', 'beli', 'www.com', '3050000', '7078/D/2012', 'baru', '', 1),
('RTR-30', 30, 'RTR', 'Buffalo Wireless N150 Router', 'Wireless Router N150 Buffalo\r<br>Access Point & Bridge 150Mbps\r<br>WCR-GN\r<br>4 Ethernet Port, 1 Port WAN RJ45', '2012-07-02', 'beli', 'www.com', '250000', '', 'baru', '', 1),
('HUB-31', 31, 'HUB', '3com 16 Port', 'HP V1405-16 Desktop Switch\r<br>3com Switch 16 port\r<br>Model : 3C16792C', '2012-07-02', 'beli', 'www.com', '550000', '', 'baru', '', 2),
('RTR-32', 32, 'RTR', 'Asus Router Wireless RT-N15U', 'Asus RT-N15U Wireless-N Gigabit Router\r<br>300 Mbps Datarate\r<br>USB Port\r<br>SSID x4\r<br>Repeater\r<br>4 Port Ethernet + 1 WAN RJ45', '2012-07-02', 'beli', 'www.com', '860000', '', 'baru', '', 1),
('MOS-33', 33, 'MOS', 'Mouse Logitech', 'usb cable', '2012-07-19', 'beli', 'www.com', '50000', '7097/D/2012', 'baru', '', 2),
('PSP-34', 34, 'PSP', 'Power Supply Simbadda ', 'Simbadda 380W', '2012-07-19', 'stok', 'www.com', '200000', '7090/D/2012', 'baru', '', 4),
('MOS-35', 35, 'MOS', 'Mouse PS/2', 'Mouse PS/2 Logitech bola', '2012-07-20', 'bekas', 'accounting tuker dgn yang baru', '0', '', 'second', 'rada susah digerakkan', 1),
('RJ4-36', 36, 'RJ4', 'AMP Netconected', '2 pack @ 50 pcs', '2012-07-20', 'beli', 'www.com', '3000', '7090/D/2012', 'baru', '', 100),
('LAN-37', 37, 'LAN', 'AMP Cable LAN', '2 (kardus)', '2012-07-20', 'beli', 'www.com', '1050000', '7090/D/2012', 'baru', '', 2),
('TGA-38', 38, 'TGA', 'Tangga PNG1', '2 Meter', '2012-08-03', 'beli', '', '0', '', 'baru', '', 1),
('PSP-39', 39, 'PSP', 'PS Server HP Proliant DL380G5', 'Model : DPS 800 GB A\r<br>Series : HSTNS - PD05\r<br>\r<br>untuk HP Proliant DL380 G5\r<br>', '2012-08-28', 'beli', 'www.com', '2950000', '7122/D/2012', 'baru', '', 1),
('UPS-40', 40, 'UPS', 'ICA', 'Type : CT382B \r<br>Input : 160 - 250V, 50Hz\r<br>Output : 220V\r<br>Capacity : 600VA', '2012-09-03', 'stok', '', '0', '', 'second', 'Batrai down', 2),
('UPS-41', 41, 'UPS', 'APC', 'Input 230v 2,2A, 50/60Hz\r<br>output 230v-2,2A, 50/60Hz', '2012-09-03', 'stok', 'ppc', '0', '', 'second', 'batrai harus diganti', 1),
('UPS-42', 42, 'UPS', 'ICA CT 382 B', 'Input : 160-250v, 50Hz\r<br>output : 220v, 50Hz\r<br>capacity : 600VA\r<br>', '2012-09-03', 'bekas', '', '0', '', 'second', 'harus ganti batrai', 2),
('UPS-43', 43, 'UPS', 'APC', 'Input : 230v-7A, 50/60Hz\r<br>', '2012-09-03', 'bekas', '', '0', '', 'second', 'harus ganti batrai', 3),
('MNT-44', 44, 'MNT', 'Monitor milenia', '', '2012-09-07', 'bekas', 'satu monitor bekas marketing', '0', '', 'second', 'bisa dipakai', 2),
('KYB-45', 45, 'KYB', 'Logitec', '', '2012-09-07', 'bekas', 'marketing', '0', '', 'second', '', 2),
('MNT-46', 46, 'MNT', 'Monitor GTC Ultimate 15', 'GTC Ultimate 15 inch warna hitam', '2012-09-14', 'bekas', 'Knitting B', '0', '', 'rusak', 'gambar muram sekali', 1),
('NBK-47', 47, 'NBK', 'Notebook BenQ JB 7000', 'BenQ Joybook 7000\r<br>Intel Centrino 1.60Ghz\r<br>', '2012-09-14', 'bekas', 'QAI, bekas punya yustina,\r<br>tgl 3 okt 2013 dipakai MKT baru(DAPI)', '0', '', 'lain-lain', 'HDD Badsector, sudah ditambahin ram bekas notebook yenny QAI, HDD pakai punya NBK-77\r<br>', 1),
('RTR-48', 48, 'RTR', 'Cisco 1800 series Router', 'Cisco 1800 Series \r<br>Model : 1841\r<br>\r<br>Slot :\r<br>-WIC 1ADSL\r<br>-WIC 1T Serial Conn\r<br>-USB\r<br>-LAN 2 port', '2012-09-14', 'bekas', 'bekas pakai untuk koneksi liseline telkom', '0', '', 'second', 'Masih bagus dan OK', 1),
('MOS-49', 49, 'MOS', 'EHERE', 'Mouse usb cable', '2012-09-25', 'bekas', '', '0', '', 'second', '', 1),
('PSP-50', 50, 'PSP', 'DAZUMBA', '380W', '2014-01-20', 'stok', 'beli baru', '0', '', 'baru', '', 1),
('HDD-51', 51, 'HDD', 'HDD Seagate 80GB', 'Seagate Barracuda 80 GB HDD\r<br>IDE', '2012-10-09', 'bekas', 'bekas  komputer DIT', '0', '', 'second', '', 1),
('RAM-52', 52, 'RAM', 'DDR 256MB 3200', 'DDR 256 MB 3200', '2012-10-09', 'bekas', '', '0', '', 'second', '', 1),
('LCD-53', 53, 'LCD', 'monitor LG', '14 inc', '2012-10-09', 'beli', 'mr.erland', '0', '', 'baru', '', 1),
('RJ4-54', 54, 'RJ4', 'AMP Connector', 'jumlah 2 pcs (1 pcs isi 50 buah) ', '2012-10-11', 'beli', '', '0', '', 'baru', 'siap pakai', 100),
('CDR-55', 55, 'CDR', 'samsung', 'usb port ', '2012-10-11', 'beli', '', '0', '', 'baru', 'siap pakai', 1),
('HDD-56', 56, 'HDD', 'HDD IDE Laptop Yenny', 'Hitachi Travelstart 40 GB IDE', '2012-10-12', 'bekas', 'Bekas Laptop Yenny (QAI)', '0', '', 'second', 'ada bad sector dikit', 1),
('HDD-57', 57, 'HDD', 'HDD IDE Laptop Darto Dye', 'Hitachi Travelstart 40 GB IDE', '2012-10-12', 'bekas', 'Laptop Darto/ eks Laptop DIT\r<br>Toshiba hitam', '0', '', 'rusak', 'tidak bisa dibaca', 1),
('USW-58', 58, 'USW', 'Wireless USB Dlink', 'Wireless USB Dlink', '2012-10-16', 'stok', '', '0', '', 'baru', 'bagus', 4),
('NIC-59', 59, 'NIC', '3com Lan Card', '3com 920-BR06\r<br>3COM 40-0579-006\r<br>5314 CT0008', '2012-10-16', 'bekas', 'KARIBUNTEX', '0', '', 'second', 'bisa pakai', 1),
('MOS-60', 60, 'MOS', 'mouse logitech', 'mouse optik usb', '2012-10-18', 'beli', 'pinguin', '0', '', 'baru', 'baik, dan siap utuk di pergunakan.', 3),
('PSP-94', 94, 'PSP', 'dzumba', 'dzumba 380watt', '2014-04-17', 'beli', '', '0', '', 'baru', 'siap pakai.', 4),
('PSP-93', 93, 'PSP', 'dzumba', 'dzumba 380watt', '2014-04-17', 'stok', 'pcs', '0', '', 'baru', '', 4),
('CPU-63', 63, 'CPU', 'CPU ex Rina Acc', 'Proc : Intel core2 Duo\r<br>RAM : 2 GB \r<br>HDD : 80 GB\r<br>\r<br>Mouse Logitec ex Pak Tono\r<br>Keyboard Logitec\r<br>\r<br>Power Supply DAZUMBA (kode : PSP-61)', '2012-10-18', 'bekas', 'Rina Accunting, pernah dipakai wasis (MKT)', '0', '', 'second', 'bagus', 1),
('MNT-64', 64, 'MNT', 'Monitor milenia', 'monitor tabung 14''inc', '2012-11-20', 'stok', '', '0', '', 'second', '', 1),
('HDE-65', 65, 'HDE', 'HDD External WD 500GB', 'WD 500 GB Sata', '2012-11-30', 'stok', 'beli', '0', '', 'second', 'Untuk Backup Email Server', 1),
('RTR-66', 66, 'RTR', 'Routerboard 450G', 'Routerboard RB 450G Mikrotik', '2012-12-06', 'beli', 'www.com', '1175000', 'invoice no 7345/D/2012', 'baru', 'untuk pengaturan bandwith mess baru atau bisa juga untuk cadangan router pusat', 1),
('MTS-67', 67, 'MTS', 'Sanwa multi tester', 'Sanwa Cd800a digital multitester', '2012-12-19', 'beli', '', '0', '', 'baru', '', 1),
('TSP-68', 68, 'TSP', 'tespen', '1 buah', '2012-12-19', 'beli', '', '0', '', 'baru', '', 1),
('PSP-69', 69, 'PSP', 'PS Simbadda 380W', 'Power supply Simbadda\r<br>380W, 24+4 pin, 4xsata', '2012-12-19', 'beli', 'Logiss Komputer', '220000', '1936CL1212', 'baru', '', 3),
('MOS-70', 70, 'MOS', 'Mouse Optic USB', 'Mouse Optical USB\r<br>Merk Votre KM-309', '2012-12-19', 'beli', 'Logiss Komputer', '30000', '1936LC1212', 'baru', '', 2),
('HDE-71', 71, 'HDE', 'HDD External 1 TB', 'HDD external 1 TB\r<br>Merk : WD My Passport\r<br>Garansi 3 tahun', '2012-12-19', 'beli', 'Logiss Komputer', '1000000', '1936LC1212', 'baru', '', 2),
('BTU-72', 72, 'BTU', 'Baterei UPS', 'Baterei UPS Panasonic', '2014-01-17', 'stok', 'Departemen Maintenance', '0', '', 'second', '', 5),
('HUB-73', 73, 'HUB', 'switch HP', '8 port', '2013-02-05', 'stok', '', '0', '', 'baru', 'bisa digunakan', 1),
('HUB-74', 74, 'HUB', 'TP-LINK', 'Model No. TL-SF1005D\r<br>5-Port\r<br>10/100Mbps\r<br>Desktop Switch', '2013-02-12', 'stok', 'pengembalian dari gudang benang', '0', '', 'baru', 'masih bagus', 1),
('PSP-75', 75, 'PSP', 'power supply simbadda', 'Simbadda 380W', '2013-05-15', 'beli', 'logis com', '200000', '', 'baru', '', 5),
('MOS-76', 76, 'MOS', 'VOTRE', 'optical mouse VOTRE KM-309', '2013-05-15', 'beli', 'logic com', '0', '', 'baru', '', 2),
('NBK-77', 77, 'NBK', 'Laptop NEC', 'NEC\r<br>HDD : 160 GB Seagate\r<br>RAM : 512 MB DDR 266 SODIMM(transcend) , 256 MB DDR PC2100(samsung)', '2013-05-20', 'bekas', 'Laptop scanner Marketing', '0', '', 'rusak', 'Mainboard terbakar, HDD dan RAM digunakan ke NBK-47', 1),
('NBK-78', 78, 'NBK', 'LAPTOP BENQ', 'BENQ Joybook 5000U\r<br>HDD :\r<br>RAM :\r<br>', '2013-05-20', 'bekas', 'Accounting (Rina)', '0', '', 'second', '', 1),
('MOS-87', 87, 'MOS', 'Power Optical Mouse', 'Mouse Optik merk Power', '2013-11-08', 'stok', 'LOGISS Komputer', '35000', '', 'baru', '', 2),
('KRT-79', 79, 'KRT', '23454', '99999', '2013-09-06', 'stok', '', '0', '', 'baru', '', 8),
('MOS-80', 80, 'MOS', 'LOGITECTH', 'PORT USB', '2013-09-06', 'stok', '', '0', '', 'baru', '', 2),
('NBK-92', 92, 'NBK', 'Asus S400CA', 'Core i5 - 3317U\r<br>500 GB HDD\r<br>4 GB RAM\r<br>', '2014-02-13', 'beli', 'LOGISS KOMP', '7450000', '', 'baru', 'untuk Mamik DIT', 1),
('TNT-82', 82, 'TNT', 'tinta printer hp', 'tinta printer no 27 (black) dan no 28 (color)', '2013-09-06', 'stok', '', '0', '', 'baru', '', 2),
('HUB-83', 83, 'HUB', 'HP 1405-8 Switch', '8 port 10/100Mbps', '2013-10-01', 'beli', 'Logiss Komputer', '380000', '1170LC0913', 'baru', 'untuk cadangan koneksi online', 3),
('RTR-84', 84, 'RTR', 'Wireless router mydlink', 'D-Link DIR 605L\r<br>', '2013-10-01', 'beli', 'Logiss Komp', '455000', '1170LC0913', 'baru', 'untuk wifi lab, semntara di pake DIT', 1),
('WAP-85', 85, 'WAP', 'Alcon ASU 24005g', 'Akses point kantor GKJ\r<br>Alcon ASU 24005g\r<br>S/N: AS5g400490 -DC48V\r<br>\r<br>PoE power supply model : iPoE-48W48\r<br>input: AC100~240V 50/60Hz\r<br>Output DC48V---1000m/A\r<br>S/N : 121124093', '2013-10-01', 'beli', 'Logiss Komputer', '2300000', '1170LC0913', 'baru', 'seperti ada bunyi mur lepas, tapi di test dulu', 1),
('HUB-86', 86, 'HUB', 'TP-LINK', 'Model No. TL-SF1008D\r<br>8-PORT\r<br>10/100Mbps\r<br>Desktop Switch', '2013-10-03', 'beli', 'PURCHASING', '0', '-', 'baru', 'STOCK SWITCH MILIK PERSONALIA', 1),
('RJ4-88', 88, 'RJ4', 'RJ45', 'AMP', '2013-11-08', 'stok', 'LOGISS KOMPUTER', '125000', '', 'baru', '', 50),
('PSP-89', 89, 'PSP', 'Simbadda 380W', '380W 24 + 4 Pin\r<br>4x sata', '2013-11-08', 'stok', 'LOGISS Komputer', '255000', '', 'baru', '', 3),
('CSN-90', 90, 'CSN', 'simbadda', '-', '2014-01-10', 'stok', 'accounting', '0', '', 'second', '', 1),
('BTU-91', 91, 'BTU', 'Genesis', 'Np7-12 12v', '2014-01-17', 'stok', 'maintenance', '0', '', 'baru', '', 6),
('PSP-95', 95, 'PSP', 'dzumba ', '380watt dzumba', '2014-04-17', 'beli', 'pcs', '0', '', 'baru', '', 4),
('MOS-96', 96, 'MOS', 'logitec', '', '2014-04-17', 'beli', 'pcs', '0', '', 'baru', '', 2),
('RJ4-97', 97, 'RJ4', 'ETE connectivity', 'MODULAR PLUG RJ45', '2014-05-16', 'beli', 'LOGICOMP', '0', '', 'baru', '', 50),
('HUB-98', 98, 'HUB', 'switch 8 port', 'HP switch 8 port', '2014-06-20', 'beli', 'Logiss Computer', '400000', '', 'baru', '', 2),
('HUB-99', 99, 'HUB', 'switch 24 port', 'HP switch 24 port', '2014-06-20', 'beli', 'Logiss Comp', '1000000', '', 'baru', 'ok, untuk cadangan di r server', 1),
('NIC-100', 100, 'NIC', 'Dlink PCI LAN card', 'Dlink PCI LAN card\r<br>DFE-520TX', '2014-06-20', 'beli', 'logiss comp', '100000', '', 'baru', 'untuk cadangan server', 2),
('NIC-101', 101, 'NIC', 'LAN dual port', 'Intel Pro/ 1000 MT Dual port server adapter\r<br>PCI/ PCI-X', '2014-06-20', 'beli', 'logiss comp', '800000', '', 'baru', 'untuk cadangan server', 1),
('RTR-102', 102, 'RTR', 'Routerboard 450G', 'Mikrotik Routerboard 450G', '2014-06-20', 'beli', 'logiss comp', '1400000', '', 'baru', 'untuk cadangan di server', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabstock`
--

CREATE TABLE IF NOT EXISTS `tabstock` (
  `jenis` char(3) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabstock`
--

INSERT INTO `tabstock` (`jenis`, `kondisi`, `stock`) VALUES
('STA', 'lain-lain', 6),
('GTG', 'lain-lain', 2),
('MNT', 'lain-lain', 2),
('RTR', 'baru', 12),
('PSP', 'rusak', 8),
('PSP', 'baru', 38),
('HUB', 'baru', 18),
('HUB', 'second', 6),
('RTR', 'second', 7),
('STZ', 'second', 0),
('MNT', 'second', 4),
('LCD', 'baru', 1),
('SRJ', 'baru', 20),
('RJ4', 'baru', 295),
('NIC', 'baru', 9),
('VGA', 'baru', 1),
('HDD', 'second', 3),
('HPE', 'baru', 0),
('NIC', 'rusak', 1),
('HUB', 'rusak', 1),
('MNT', 'rusak', 3),
('NIC', 'second', 2),
('CPU', 'baru', 1),
('MOS', 'baru', 13),
('MOS', 'second', 2),
('LAN', 'baru', 2),
('TGA', 'baru', 1),
('UPS', 'second', 8),
('KYB', 'second', 2),
('NBK', 'second', 3),
('RAM', 'second', 0),
('CDR', 'baru', 1),
('HDD', 'rusak', 1),
('USW', 'baru', 3),
('CPU', 'second', 0),
('HDE', 'second', 3),
('MTS', 'baru', 1),
('TSP', 'baru', 1),
('HDE', 'baru', 2),
('BTU', 'baru', 11),
('NBK', 'rusak', 3),
('KRT', 'baru', 8),
('TNT', 'baru', 2),
('WAP', 'baru', 1),
('NBK', 'lain-lain', 0),
('CSN', 'second', 1),
('BTU', 'second', 12),
('NBK', 'baru', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblakses`
--

CREATE TABLE IF NOT EXISTS `tblakses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akses` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tblakses`
--

INSERT INTO `tblakses` (`id`, `akses`) VALUES
(1, 'LAN'),
(2, 'INTERNET'),
(3, 'INTERNET LIMITED'),
(4, 'WIRELESS'),
(5, 'VPN'),
(6, 'INT-LIMITED');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbldaftarinventory`
--

CREATE TABLE IF NOT EXISTS `tbldaftarinventory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `namabarang` varchar(45) DEFAULT NULL,
  `spek` text,
  `kondisi` varchar(45) DEFAULT NULL,
  `jumlah` varchar(45) DEFAULT NULL,
  `statuspemilikan` varchar(45) DEFAULT 'baru beli atau bekas',
  `tglbeli` datetime DEFAULT NULL,
  `namasupplier` varchar(45) DEFAULT NULL,
  `hargabeli` bigint(20) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbldept`
--

CREATE TABLE IF NOT EXISTS `tbldept` (
  `dept` varchar(3) NOT NULL,
  `namadept` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dept`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbldept`
--

INSERT INTO `tbldept` (`dept`, `namadept`, `email`) VALUES
('ACC', 'ACCOUNTING', 'meyliana@indotaichen.com'),
('DIT', 'DATA DAN INFORMATIKA', 'uwi9900@gmail.com'),
('DPD', 'DEPUTI PRESIDEN DIRECTOR', NULL),
('DYE', 'DYEING', 'nyoman@indotaichen.com'),
('ENG', 'ENGINEERING', NULL),
('FIN', 'FINISHING', 'yayan@indotaichen.com'),
('FNC', 'FINANCE', 'jenny@indotaichen.com'),
('GDB', 'GUDANG BENANG', 'lucia@indotaichen.com'),
('GKG', 'GUDANG KAIN GREIGE', 'lucia@indotaichen.com'),
('GKJ', 'GUDANG KAIN JADI', 'lucia@indotaichen.com'),
('GRK', 'GARUK', 'edy@indotaichen.com'),
('KNT', 'KNITTING', 'triyo.utomo@indotaichen.com'),
('LAB', 'LABORATURIUM', 'rudianto@indotaichen.com'),
('MAS', 'MANAGEMENT ADVISORY SERVICE', 'yustina@indotaichen.com'),
('MKT', 'MARKETING', 'paulina@indotaichen.com'),
('MNF', 'MANUFACTURE', 'xiaoming@indotaichen.com'),
('MTC', 'MAINTENANCE', 'indra@indotaichen.com'),
('PCS', 'PURCHASING', 'stella@indotaichen.com'),
('PPC', 'PRODUCT PLANING CONTROL', 'lucia@indotaichen.com'),
('PRD', 'PRESIDEN DIRECTOR', NULL),
('PRS', 'PERSONALIA', 'anggoro.bayu@indotaichen.com'),
('PRT', 'PRINTING', 'anang@indotaichen.com'),
('QAI', 'QUALITY ASURANCE', 'agus@indotaichen.com'),
('QCF', 'QUALITY CONTROL FINAL', 'agung@indotaichen.com'),
('RMP', 'RAW MATERIAL PLANING', 'angela@indotaichen.com'),
('TAS', 'TECNICAL ADVISORY SERVICE', 'cipto@indotaichen.com'),
('TSP', 'TRANSPORT', NULL),
('VPD', 'WAKIL PRESIDEN DIRECTOR', NULL),
('YDY', 'YARN DYE', 'liyao@indotaichen.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblemail`
--

CREATE TABLE IF NOT EXISTS `tblemail` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(15) DEFAULT NULL,
  `User` varchar(40) DEFAULT NULL,
  `Dept` varchar(10) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Jabatan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`No`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=377 ;

--
-- Dumping data untuk tabel `tblemail`
--

INSERT INTO `tblemail` (`No`, `IP`, `User`, `Dept`, `Email`, `Jabatan`) VALUES
(3, '192.168.0.236', 'Agung', 'QCF', 'agung@indotaichen.com', NULL),
(4, '192.168.0.105', 'Agus', 'QAI', 'agus@indotaichen.com', NULL),
(10, '192.168.0.62', 'Amelia', 'RMP', 'amelia@indotaichen.com', NULL),
(11, '192.168.10.10', 'Amy', 'MKT', 'amy@indotaichen.com', NULL),
(12, '192.168.2.90', 'Anang', 'PRT', 'anang@indotaichen.com', NULL),
(13, '192.168.0.19', 'Anata', 'EXIM', 'anata@indotaichen.com', 'MANAGER'),
(15, '192.168.0.216', 'Angela', 'RMP', 'angela@indotaichen.com', 'MANAGER'),
(16, '192.168.0.160', 'Anna', 'ACC', 'anna@indotaichen.com', NULL),
(17, '192.168.2.51', 'Yarn Dye 01', 'YND', 'yarndye01@indotaichen.com', NULL),
(20, '192.168.0.146', 'Arif', 'QCF', 'arif@indotaichen.com', NULL),
(21, '192.168.0.47', 'Aris', 'PPC', 'aris@indotaichen.com', NULL),
(22, '192.168.0.50', 'Astuti', 'PPC', 'astuti@indotaichen.com', NULL),
(25, '', 'Bayu', 'PPC', 'bayu@indotaichen.com', NULL),
(27, '192.168.0.222', 'Bintoro', 'DIT', 'bintoro.dy@indotaichen.com', NULL),
(29, '192.168.0.215', 'Bunbun Kui', 'MKT', 'bunbun.kui@indotaichen.com', NULL),
(32, '192.168.0.81', 'Sucipto', 'TAS', 'cipto@indotaichen.com', 'MANAGER'),
(36, '192.168.0.30', 'Deden', 'MKT', 'deden@indotaichen.com', NULL),
(37, '192.168.0.115', 'Denie', 'PRS', 'denie@indotaichen.com', NULL),
(39, '192.168.0.175', 'Hendro', 'MTC', 'hendro@indotaichen.com', NULL),
(41, '192.168.0.6', 'Djohari', 'KOM', 'djohari@indotaichen.com', NULL),
(44, '', 'Eko', 'PPC', 'eko@indotaichen.com', NULL),
(45, '192.168.0.11', 'Erland Deluna', 'DPD', 'erland@indotaichen.com', NULL),
(46, '192.168.0.64', 'Erni Payung', 'RMP', 'erni@indotaichen.com', NULL),
(47, '192.168.0.17', 'Erwan', 'EXIM', 'erwan.import@indotaichen.com', NULL),
(49, '192.168.0.104', 'Farah', 'QAI', 'farah@indotaichen.com', NULL),
(51, '192.168.0.85', 'Gudang Benang', 'GUDANG', 'gdb@indotaichen.com', NULL),
(52, '', 'iven', 'GUDANG', 'gkg@indotaichen.com', NULL),
(53, '', 'Gudang Kain Jadi', 'GUDANG', 'gkj@indotaichen.com', NULL),
(55, '', 'Helsy', 'PPC', 'helsy@indotaichen.com', NULL),
(57, '192.168.0.123', 'Heri', 'MKT', 'heri.bahtiar@indotaichen.com', NULL),
(60, '192.168.0.15', 'Huang Hsueh Yen', 'PRD', 'huang@indotaichen.com', NULL),
(61, '', 'Husni', 'PPC', 'husni@indotaichen.com', NULL),
(62, '192.168.0.92', 'Iid', 'GUDANG', 'iid@indotaichen.com', NULL),
(64, '192.168.0.111', 'Gama', 'MAS', 'gama@indotaichen.com', NULL),
(65, '192.168.0.174', 'Indra', 'MTC', 'indra@indotaichen.com', NULL),
(66, '', 'Agung SW', 'DYE', 'agung.sw@indotaichen.com', NULL),
(67, '192.168.0.221', 'Jenny', 'FNC', 'jenny@indotaichen.com', 'MANAGER'),
(68, '192.168.0.33', 'Khusti', 'MKT', 'khusti@indotaichen.com', NULL),
(71, '192.168.0.134', 'Buntian', 'GRK', 'kristian@indotaichen.com', 'MANAGER'),
(73, '192.168.0.73', 'Laborat Email', 'LAB', 'laboratory@indotaichen.com', NULL),
(74, '192.168.0.67', 'Laborat Online', 'LAB', 'laboratory02@indotaichen.com', NULL),
(76, '192.168.0.237', 'Kendogo Limarga', 'GA', 'limarga@indotaichen.com', NULL),
(77, '192.168.0.227', 'Lindawati', 'ACC', 'linda@indotaichen.com', NULL),
(78, '192.168.0.205', 'Lucia', 'PPC', 'lucia@indotaichen.com', 'MANAGER'),
(80, '', 'Marketing', 'MKT', 'marketing@indotaichen.com', NULL),
(83, '192.168.0.41', 'Melly', 'MKT', 'melly@indotaichen.com', NULL),
(84, '', 'Meyliana', 'ACC', 'meyliana@indotaichen.com', 'MANAGER'),
(85, '', 'Mudiono', 'PCS', 'mudiono@indotaichen.com', NULL),
(86, '192.168.0.35', 'Nia', 'MKT', 'nia.wuri@indotaichen.com', NULL),
(87, '192.168.0.153', 'Nita', 'ACC', 'nita@indotaichen.com', NULL),
(88, '192.168.0.93', 'Novi', 'GUDANG', 'novi@indotaichen.com', NULL),
(90, '', 'Nyoman', 'DYE', 'nyoman@indotaichen.com', 'MANAGER'),
(91, '192.168.0.154', 'Okta', 'FNC', 'okta@indotaichen.com', NULL),
(92, '192.168.0.7', 'Paulina', 'TAS', 'paulina@indotaichen.com', NULL),
(93, '192.168.0.36', 'Pendi', 'MKT', 'pendi@indotaichen.com', NULL),
(94, '192.168.0.94', 'Prambudi', 'KNT', 'prambudi@indotaichen.com', NULL),
(95, '', 'Printing', 'PRT', 'printing@indotaichen.com', NULL),
(96, '192.168.0.103', 'Asnani', 'PRS', 'prs@indotaichen.com', NULL),
(97, '192.168.0.163', 'Puji', 'FNC', 'puji@indotaichen.com', NULL),
(98, '', 'Purchasing', 'PCS', 'purchasing@indotaichen.com', NULL),
(99, '', 'QC2', 'QCF', 'qc2@indotaichen.com', NULL),
(100, '', 'QC1', 'QCF', 'qcf@indotaichen.com', NULL),
(104, '192.168.0.226', 'Richard', 'MKT', 'richard.asi@indotaichen.com', NULL),
(108, '192.168.0.220', 'Rina', 'ACC', 'rina@indotaichen.com', NULL),
(109, '192.168.0.39', 'Ronny', 'MKT', 'ronny@indotaichen.com', NULL),
(110, '', 'Ross', 'PPC', 'rosdianti@indotaichen.com', NULL),
(112, '192.168.0.120', 'Salis', 'PCS', 'salis@indotaichen.com', NULL),
(114, '', 'Setiawan Tjoa', 'ACC', 'setiawan@indotaichen.com', NULL),
(115, '192.168.0.162', 'Deva', 'FNC', 'deva@indotaichen.com', NULL),
(118, '192.168.0.223', 'Stella', 'PCS', 'stella@indotaichen.com', 'MANAGER'),
(122, '192.168.0.66', 'Ikhsan', 'RMP', 'ikhsan.hidayat@indotaichen.com', NULL),
(124, '', 'TAS2', 'TAS', 'tas@indotaichen.com', NULL),
(127, '192.168.0.139', 'Nurtusilatun', 'QCF', 'tusil@indotaichen.com', NULL),
(128, '192.168.0.168', 'Tuti', 'PPC', 'tuti@indotaichen.com', NULL),
(129, '192.168.0.152', 'Umamah', 'ACC', 'umamah@indotaichen.com', NULL),
(130, '', 'After Sales Clerk', 'QCF', 'aftersales_clerk@indotaichen.com', NULL),
(131, '', 'Xiaoming', 'DYE', 'xiaoming@indotaichen.com', NULL),
(134, '', 'Yohanes', 'MKT', 'yohanes.pribadi@indotaichen.com', NULL),
(135, '192.168.0.122', 'Iwan', 'PCS', 'atk@indotaichen.com', NULL),
(136, '192.168.0.49', 'Yoyok', 'PPC', 'yoyok@indotaichen.com', NULL),
(137, '192.168.0.211', 'Yustina', 'MRP', 'yustina@indotaichen.com', NULL),
(139, '192.168.0.110', 'PCS 01', 'PCS', 'pcs01@indotaichen.com', NULL),
(141, '192.168.0.176', 'Rifai', 'MTC', 'rifai@indotaichen.com', NULL),
(142, '192.168.0.116', 'Transport', 'GKJ', 'transport@indotaichen.com', NULL),
(143, '192.168.0.38', 'M Fakhrul Roji', 'MKT', 'fahrul@indotaichen.com', NULL),
(148, '192.168.0.61', 'Bu Mamiek', 'MKT', 'mamiek@indotaichen.com', NULL),
(151, '192.168.0.228', 'eko galih', 'DIT', 'ekogalih@indotaichen.com', NULL),
(154, '192.168.0.16', 'Noviana', 'MKT', 'noviana@indotaichen.com', NULL),
(159, '', 'Tajudin', 'Gudang', 'tajudin@indotaichen.com', NULL),
(160, '192.168.0.167', 'Didik', 'PPC', 'didik@indotaichen.com', NULL),
(164, '', 'Yudha', 'PRS', 'yudha@indotaichen.com', NULL),
(165, '192.168.0.65', 'Johan', 'RMP', 'johan@indotaichen.com', NULL),
(167, '192.168.0.203', 'Nani', 'QAI', 'nani.qai@indotaichen.com', NULL),
(170, '192.168.9.12', 'Ferry', 'QCF', 'ferry@indotaichen.com', NULL),
(171, '192.168.0.223', 'Mamik Agun', 'DIT', 'mamik.agung@indotaichen.com', NULL),
(172, '192.168.0.146', 'Putri', 'QAI', 'putri@indotaichen.com', NULL),
(173, '', 'Maryam', 'DMF', 'maryam@indotaichen.com', NULL),
(177, '192.168.0.138', 'ADM Dyeing', 'DYE', 'adm.dyeing@indotaichen.com', NULL),
(184, '', 'Supervisor Finishing', 'FIN', 'fin.spv@indotaichen.com', NULL),
(186, '', 'Citra', 'PRT', 'citra@indotaichen.com', NULL),
(187, '192.168.10.27', 'produksi.printing', 'PRT', 'produksi.printing@indotaichen.com', NULL),
(189, '', 'Triyogo', 'GUDANG', 'triyogo@indotaichen.com', NULL),
(192, '', 'ADM Brushing', 'GRK', 'admbrushing@indotaichen.com', NULL),
(193, '', 'Staff Brushing', 'GRK', 'brs.staff@indotaichen.com', NULL),
(194, '', 'Heryani', 'RMP', 'heryani@indotaichen.com', NULL),
(195, '192.168.0.26', 'suhemi', 'MKT', 'suhemi@indotaichen.com', NULL),
(196, '', 'finihsing clerk', 'FIN', 'fin.clerk@indotaichen.com', NULL),
(197, '192.168.0.110', 'July', 'FNC', 'july@indotaichen.com', NULL),
(198, '', 'bambang', 'GUDANG', 'bambang@indotaichen.com', NULL),
(199, '', 'cristin', 'QCF', 'cristin@indotaichen.com', NULL),
(203, '', 'Ridwan', 'MKT', 'ridwan@indotaichen.com', NULL),
(207, '', 'TAS SOP', 'TAS', 'sop@indotaichen.com', NULL),
(209, '', 'Shelvy', 'ACC', 'shelvy@indotaichen.com', NULL),
(210, '192.168.0.126', 'Irwan', 'EXIM', 'irwan@indotaichen.com', NULL),
(211, '192.168.0.82', 'Lie Yao', 'LAB', 'liyao@indotaichen.com', NULL),
(213, '192.168.0.71', 'Antie', 'LAB', 'antie@indotaichen.com', NULL),
(214, '192.168.10.58', 'Tardo', 'GKJ', 'tardo@indotaichen.com', NULL),
(222, '', 'Administrasi', 'MTC', 'adm.mtc@indotaichen.com', NULL),
(223, '', 'Rudianto', 'LAB', 'rudianto@indotaichen.com', 'MANAGER'),
(226, '192.168.0.169', 'Hani', 'RMP', 'rmp1@indotaichen.com', NULL),
(229, '', 'Gusti Ketut', 'DYE', 'gusti.ketut@indotaichen.com', NULL),
(231, '', 'Yarn Dye 02', 'YND', 'yarndye02@indotaichen.com', NULL),
(233, '', 'Cyriller Cahya', 'PPC', 'cyrille@indotaichen.com', NULL),
(238, '', 'Melati Nurul', 'MKT', 'melati.nurul@indotaichen.com', NULL),
(241, '192.168.0.124', 'Tuti Susilowati', 'MKT', 'tuti.susilowati@indotaichen.com', NULL),
(242, '192.168.2.12', 'Anggoro Bayu', 'PRS', 'anggoro.bayu@indotaichen.com', NULL),
(243, '', 'Edy Maulana', 'GRK', 'edy@indotaichen.com', NULL),
(244, '', 'Andri', 'DYE', 'andri@indotaichen.com', NULL),
(249, '', 'Philia', 'EXIM', 'philia@indotaichen.com', NULL),
(251, '', 'Risa', 'LAB', 'risa@indotaichen.com', NULL),
(253, '192.168.0.128', 'Siswanto', 'MKT', 'siswanto@indotaichen.com', NULL),
(254, '', 'megawati', 'QCF', 'mega@indotaichen.com', NULL),
(255, '', 'PCS 02', 'PCS', 'pcs02@indotaichen.com', NULL),
(257, '192.168.0.21', 'Suci Kurniawati', 'MKT', 'suci@indotaichen.com', NULL),
(258, '', 'Mucharom', 'DYE', 'mucharom@indotaichen.com', NULL),
(260, '', 'Ikhsan Ikhwana', 'PPC', 'ikhsan@indotaichen.com', NULL),
(262, '', 'Budiman', 'PPC', 'budiman@indotaichen.com', NULL),
(263, '', 'Bambang.Marketing', 'MKT', 'bambang.mkt@indotaichen.com', NULL),
(264, '', 'ADM QCF', 'QCF', 'admqc@indotaichen.com', NULL),
(266, '', 'Departemen DIT', 'DIT', 'dept.it@indotaichen.com', NULL),
(268, '', 'ADM Finishing', 'FIN', 'fin.adm@indotaichen.com', NULL),
(269, '', 'Finishing Schedule', 'FIN', 'fin.sch@indotaichen.com', NULL),
(270, '', 'Staff Finishing', 'FIN', 'fin.staff@indotaichen.com', NULL),
(271, '', 'Ivan', 'PRS', 'ivan@indotaichen.com', NULL),
(272, '', 'Laboratory03', 'LAB', 'laboratory03@indotaichen.com', NULL),
(273, '', 'QCF After sale', 'QCF', 'qc_aftersale@indotaichen.com', NULL),
(274, '', 'Ryan', 'LAB', 'ryan.wong@indotaichen.com', NULL),
(275, '', 'Sigit', 'PRS', 'sigit@indotaichen.com', NULL),
(276, '192.168.0.225', 'Usman', 'DIT', 'usman@indotaichen.com', NULL),
(277, '', 'Dwi Wahyuni', 'MKT', 'dwi@indotaichen.com', NULL),
(278, '', 'Yayan', 'FIN', 'yayan@indotaichen.com', NULL),
(281, '192.168.2.186', 'Yarn Dye', 'YND', 'yarndye@indotaichen.com', NULL),
(284, '192.168.0.229', 'Jumidi', 'RMP', 'jumidi@indotaichen.com', NULL),
(288, '192.168.2.52', 'Ani', 'PCS', 'pcs03@indotaichen.com', NULL),
(289, '', 'Guardian Datacolor', 'QCF', 'guardianqc@indotaichen.com', NULL),
(290, '', 'Anang QCF', 'QCF', 'anangqcf@indotaichen.com', NULL),
(292, '', 'Mike', 'RMP', 'mike@indotaichen.com', NULL),
(293, '192.168.2.73', 'Datacolor QCF', 'QCF', 'datacolorqc@indotaichen.com', NULL),
(295, '', 'Jessica Wang', 'MKT', 'jessica.wang@indotaichen.com', NULL),
(296, '192.168.2.60', 'Bayu', 'QCF', 'bayu_qcf@indotaichen.com', NULL),
(297, '192.168.0.107', 'Heri Setiawan', 'PPC', 'heri.ppc@indotaichen.com', NULL),
(298, '192.168.2.214', 'gadish', 'GKJ', 'gadish@indotaichen.com', NULL),
(299, '192.168.2.52', 'Gudang MTC', 'MTC', 'gudang.mtc@indotaichen.com', NULL),
(300, '192.168.2.170', 'MKT01', 'MTC', 'mtc01@indotaichen.com', NULL),
(301, '', 'septian pim', 'MKT', 'septian.pim@indotaichen.com', NULL),
(302, '', 'Betania Merry', 'LAB', 'betania.merry@indotaichen.com', NULL),
(308, '', 'Eto', 'TAS', 'eto@indotaichen.com', NULL),
(309, '', 'Istomo', 'Transport', 'istomo@indotaichen.com', NULL),
(310, '192.168.0.28', 'Lia Virnilya', 'RMP', 'lia.virnilya@indotaichen.com', NULL),
(314, '192.168.2.108', 'R & D Printing', 'PRT', 'r&d.printing@indotaichen.com', NULL),
(317, '192.168.0.233', 'Kurniadi Saleh', 'MKT', 'kurniadi.saleh@indotaichen.com', NULL),
(318, '192.168.0.40', 'Herlina Kartika', 'MKT', 'elin@indotaichen.com', NULL),
(320, '192.168.0.88', 'Atun', 'TAS', 'atun@indotaichen.com', NULL),
(323, '192.168.0.123', 'Danang Aji', 'MKT', 'danang.aji@indotaichen.com', NULL),
(324, '192.168.0.103', 'Darwati', 'PRS', 'prs@indotaichen.com', NULL),
(325, '192.168.0.38', 'Dian', 'PDC', 'dian@indotaichen.com', NULL),
(326, '', 'Frans', 'MKT', 'frans.subrata@indotaichen.com', NULL),
(327, '192.168.3.43', 'Hendrik', 'PRT', 'hendrik@indotaichen.com', NULL),
(328, '192.168.2.17', 'Indra BRS', 'BRS', 'indra.brs@indotaichen.com', NULL),
(329, '192.168.0.8', 'James', 'PRD', 'james@indotaichen.com', NULL),
(330, '192.168.2.195', 'Fatik', 'KNT', 'knitting.itti@indotaichen.com', NULL),
(332, '192.168.0.141', 'Lukman', 'DYE', 'lukman@indotaichen.com', NULL),
(333, '192.168.0.136', 'Komputer Test PRS', 'PRS', 'personalia.test@indotaichen.com', NULL),
(335, '192.168.2.75', 'QC Cek Memo', 'QCF', 'qc.cek.memo@indotaichen.com', NULL),
(336, '192.168.0.79', 'Iik', 'RMP', 'rmp2@indotaichen.com', NULL),
(337, '192.168.3.45', 'Staff Printing', 'PRT', 'staff.printing@indotaichen.com', NULL),
(338, '192.168.0.24', 'Ahmad Fahrurrozi', 'MKT', 'fahrurrozi@indotaichen.com', NULL),
(339, '192.168.0.34', 'Andri Gunawan', 'PPC', 'a.gunawan@indotaichen.com', NULL),
(340, '192.168.2.205', 'Agung knitting', 'KNT', 'agung.knt@indotaichen.com', NULL),
(341, '192.168.0.98', 'Ahmad', 'PPC', 'ahmad@indotaichen.com', NULL),
(342, '192.168.2.229', 'Desvi Liediana', 'KNT', 'desvi.liediana@indotaichen.com', NULL),
(343, '192.168.2.63', 'labtest', 'QCF', 'labtest@indotaichen.com', NULL),
(344, '192.168.2.188', 'packing yarn dye', 'YND', 'packingynd@indotaichen.com', NULL),
(345, '192.168.0.155', 'Sutta', 'ACC', 'satti.sutta@indotaichen.com', NULL),
(346, '192.168.0.62', 'Sonia Budiasih', 'LAB', 'sonia.budiasih@indotaichen.com', NULL),
(347, '192.168.0.74', 'Spv dyeing', 'DYE', 'spv.dye@indotaichen.com', NULL),
(348, '192.168.2.201', 'Triyo Utomo', 'KNT', 'triyo.utomo@indotaichen.com', NULL),
(349, '192.168.2.198', 'Valdy', 'KNT', 'valdy@indotaichen.com', NULL),
(350, '', 'Gilang Kurnia', 'MKT', 'gilang.kurnia@indotaichen.com', NULL),
(351, '10.0.4.56', 'Nilo Pamungkas', 'DIT', 'nilo.pamungkas@indotaichen.com', 'Staf'),
(352, '192.168.2.93', 'liu yong zhi', 'PRT', 'azhi@indotaichen.com', NULL),
(353, '192.168.2.99', 'ria', 'PRT', 'ria@indotaichen.com', NULL),
(354, '', 'Tess Wang', 'MKT', 'tess.wang@indotaichen.com', NULL),
(355, '', 'Viosa Dias Restu', 'RMP', 'diaz.viosa@indotaichen.com', NULL),
(356, '192.168.0.116', 'Selvi', 'PRS', 'selvi.prs@indotaichen.com', NULL),
(357, '192.168.0.117', 'Euis', 'PRS', 'iz.prs@indotaichen.com', NULL),
(358, '192.168.2.41', 'Risqi Novi', 'QAI', 'risqi.novi@indotaichen.com', NULL),
(359, '', 'Angga Eko', 'MKT', 'angga.eko@indotaichen.com', NULL),
(360, '', 'Bahtiar Ma''rup', 'MKT', 'bahtiar.ma''rup@indotaichen.com', NULL),
(361, '192.168.0.230', 'Gantang Gustiawan', 'GKG', 'gantang.gustiawan@indotaichen.com', NULL),
(362, '', 'Hendra Cahyadi', 'EXIM', 'hendra.cahyadi@indotaichen.com', NULL),
(363, '', 'Arif Mulyana', 'KNT', 'arif.mulyana@indotaichen.com', NULL),
(364, '', 'Limmy Putra Jaya', 'MKT', 'limmy.putra@indotaichen.com', NULL),
(365, '', 'debby@indotaichen.com', 'ACC', 'debby@indotaichen.com', NULL),
(366, '', 'kevin', 'EXIM', 'kevin@indotaichen.com', NULL),
(367, '192.168.2.174', 'Andy Shen', 'KNT', 'andy.shen@indotaichen.com', NULL),
(368, '', 'Rangga Ian Aditya', 'MKT', 'aditya.rangga@indotaichen.com', NULL),
(369, '', 'Kevin Harjanto', 'PPC', 'kevin.harjanto@indotaichen.com', NULL),
(370, '', 'Sunjaya', 'PPC', 'sunjaya@indotaichen.com', NULL),
(371, '192.168.0.142', 'yang wen chun', 'LAB', 'yang.wen.chun@indotaichen.com', NULL),
(372, '192.168.2.218', 'Puji Ismoko', 'GKJ', 'puji.ismoko@indotaichen.com', NULL),
(373, '', 'Bara Andika Putra', 'MKT', 'andika.putra@indotaichen.com', NULL),
(374, '192.168.2.86', 'Le Hong', 'KNT', 'lehong@indotaichen.com', NULL),
(375, '192.168.2.48', 'Melinda', 'PCS', 'pcs04@indotaichen.com', NULL),
(376, '', 'Nurhadi', 'YND', 'nurhadi@indotaichen.com', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblipaddress`
--

CREATE TABLE IF NOT EXISTS `tblipaddress` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `IP` varchar(15) DEFAULT NULL,
  `User` varchar(40) DEFAULT NULL,
  `Dept` varchar(20) DEFAULT NULL,
  `TglPasang` date DEFAULT NULL,
  `NoIM` varchar(50) DEFAULT NULL,
  `Akses` varchar(10) DEFAULT NULL,
  `Keterangan` varchar(200) DEFAULT NULL,
  `MAC` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2300 ;

--
-- Dumping data untuk tabel `tblipaddress`
--

INSERT INTO `tblipaddress` (`ID`, `IP`, `User`, `Dept`, `TglPasang`, `NoIM`, `Akses`, `Keterangan`, `MAC`) VALUES
(1, '192.168.0.1', 'admins', 'server', '0000-00-00', '', 'INTERNET', '', ''),
(2, '192.168.0.2', 'Router Pusat', 'server', '0000-00-00', 'mikrotik', 'INTERNET', 'di ruang server', '00:26:5A:EB:58:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblipaddress2`
--

CREATE TABLE IF NOT EXISTS `tblipaddress2` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `IP` varchar(15) DEFAULT NULL,
  `Code` varchar(15) DEFAULT NULL,
  `User` varchar(40) DEFAULT NULL,
  `Dept` varchar(20) DEFAULT NULL,
  `TglPasang` date DEFAULT NULL,
  `NoIM` varchar(50) DEFAULT NULL,
  `Akses` varchar(10) DEFAULT NULL,
  `Keterangan` varchar(200) DEFAULT NULL,
  `MAC` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2300 ;

--
-- Dumping data untuk tabel `tblipaddress2`
--

INSERT INTO `tblipaddress2` (`ID`, `IP`, `Code`, `User`, `Dept`, `TglPasang`, `NoIM`, `Akses`, `Keterangan`, `MAC`) VALUES
(1, '192.168.0.001', 'DIT1', 'admins', 'server', NULL, '', 'INTERNET', '', ''),
(2, '192.168.0.002', 'SVR0-A', 'Router Pusat', 'server', NULL, '', 'INTERNET', '', '00:26:5A:EB:58:34'),
(3, '192.168.0.003', 'SVR1-A', 'SVR1', 'server', NULL, '', 'LAN', '', ''),
(4, '192.168.0.004', 'SVR4-A', 'SVR4', 'server', NULL, '', 'INTERNET', '', ''),
(5, '192.168.0.005', 'SVR2-A', 'Server Email dan www', 'server', NULL, '', 'INTERNET', '', ''),
(6, '192.168.0.006', 'KOM1', 'Djohari', 'komisaris', NULL, '', 'INTERNET', '', '00:04:75:DA:20:20'),
(7, '192.168.0.007', 'MKT01', 'paulina', 'MKT', '0000-00-00', '', 'INTERNET', '', ''),
(8, '192.168.0.008', 'MKT02', 'james', 'MKT', '0000-00-00', '', 'LAN', '', ''),
(9, '192.168.0.009', 'MKT03', 'sammy', 'MKT', NULL, '', 'INTERNET', '', ''),
(10, '192.168.0.010', 'MKT04', 'suhartono NB', 'MKT', NULL, '', 'INTERNET', '', '00:26:22:2D:AC:EC'),
(11, '192.168.0.011', 'KOM3', 'mr erland', 'vice presdir', NULL, '', 'INTERNET', '', '00:10:28:00:08:F9'),
(12, '192.168.0.012', 'MKT06', '', 'N/A', NULL, '', '', '', ''),
(13, '192.168.0.013', 'MKT07', 'Amy-MKT', 'MKT', NULL, '', 'INTERNET', '', ''),
(14, '192.168.0.014', 'MKT08', 'Frans', 'MKT', NULL, '', 'INTERNET', '', '00:1F:3C:47:27:07'),
(15, '192.168.0.015', 'KOM2', 'mr huang', 'presdir', NULL, '', 'INTERNET', '', ''),
(16, '192.168.0.016', 'EXIM02', 'Andri', 'EXIM', NULL, '0114/MKT/IM/IV/11', 'LAN', '', ''),
(17, '192.168.0.017', 'EXIM03', 'erwan', 'EXIM', NULL, '', 'INTERNET', '', '00:24:8C:A7:75:A5'),
(18, '192.168.0.018', 'EXIM04', 'SHINTA', 'EXIM', '2009-02-19', '', 'INTERNET', '', '00:19:21:47:7E:E4'),
(19, '192.168.0.019', 'EXIM05', 'ANATA', 'EXIM', '2009-02-06', '', 'INTERNET', '', '6C:62:6D:7C:BF:A4'),
(20, '192.168.0.020', 'EXIM06', 'Vieacca', 'EXIM', '2009-06-24', '', 'LAN', '', ''),
(21, '192.168.0.021', 'AP01', 'AP wireless Absensi', 'AP Absensi', NULL, '', 'LAN', '', '00:C0:A8:F7:91:E3'),
(22, '192.168.0.022', 'PRS08', 'Absensi sidik jari -1', 'PRS', NULL, '', 'LAN', '', '00:C0:A8:F7:91:E3'),
(23, '192.168.0.023', 'PRS09', 'Absensi sidik jari -2', 'PRS', NULL, '', 'LAN', '', ''),
(24, '192.168.0.024', '', '', 'N/A', NULL, '', '', '', ''),
(25, '192.168.0.025', 'MKT09', 'AAN', 'MKT', NULL, '', 'LAN', '', ''),
(26, '192.168.0.026', 'MKT10', 'suhemi', 'MKT', NULL, '', 'INTERNET', '', ''),
(27, '192.168.0.027', 'EXIM07', 'exim bareng2', 'EXIM', NULL, '0114/MKT/IM/IV/11', 'INTERNET', '', ''),
(28, '192.168.0.028', 'MKT11', 'BASIRUDIN', 'MKT', NULL, '', 'INTERNET', '', '00:21:97:71:02:F8'),
(29, '192.168.0.029', 'MKT12', 'ARDY', 'MKT', NULL, '', 'INTERNET', '', '1C:6F:65:61:67:0D'),
(30, '192.168.0.030', 'MKT13', 'DEDEN', 'MKT', NULL, '', 'LAN', '', '00:27:0E:2D:8A:B5'),
(31, '192.168.0.031', 'MKT14', 'DIDA/Yohanes', 'MKT', '2010-02-04', '093/MKT/III/12', 'INTERNET', '', ''),
(32, '192.168.0.032', 'MKT15', 'MEI', 'MKT', NULL, '', 'LAN', '', ''),
(33, '192.168.0.033', 'MKT16', 'KUSTI', 'MKT', NULL, '', 'LAN', '', '00:19:D1:84:9B:C1'),
(34, '192.168.0.034', 'PPC03', 'Ross', 'PPC', NULL, '', 'LAN', '', ''),
(35, '192.168.0.035', 'MKT17', 'NIA', 'MKT', NULL, '', 'INTERNET', '', '00:27:0E:2D:AC:21'),
(36, '192.168.0.036', 'MKT18', 'PENDI', 'MKT', NULL, '', 'LAN', '', ''),
(37, '192.168.0.037', 'MKT19', 'DAFI', 'MKT', NULL, '', 'LAN', '', '00:27:0E:2D:8A:9F'),
(38, '192.168.0.038', 'MKT20', 'Dian-PDC', 'MKT', '2012-02-20', '059/MKT/IM/II/12', 'LAN', '', ''),
(39, '192.168.0.039', 'MKT21', 'RONNY', 'MKT', NULL, '', 'LAN', '', 'E0:69:95:DD:20:56'),
(40, '192.168.0.040', 'MKT22', 'CUCU', 'MKT', NULL, '', 'LAN', '', '00:19:D1:84:6A:A0'),
(41, '192.168.0.041', 'MKT23', 'MELLY', 'MKT', NULL, '', 'LAN', '', '00:19:D1:84:9B:F1'),
(42, '192.168.0.042', 'MKT24', 'Yuyus', 'MKT', NULL, '', 'LAN', '', '00:04:75:DF:3C:18'),
(43, '192.168.0.043', 'MKT25', 'sefti', 'MKT', NULL, '', 'LAN', '', '00:11:11:35:F4:5C'),
(44, '192.168.0.044', 'PPC04', 'HUSNI', 'PPC', NULL, '', 'LAN', '', '00:19:21:37:18:5A'),
(45, '192.168.0.045', 'PPC05', 'BAGUS', 'PPC', NULL, '', 'LAN', '', ''),
(46, '192.168.0.046', 'PPC06', 'HILDA', 'PPC', NULL, '', 'LAN', '', '00:11:11:1A:3E:37'),
(47, '192.168.0.047', 'PPC07', 'Muslimah', 'PPC', NULL, '', 'LAN', '', '6C:F0:49:69:9E:C4'),
(48, '192.168.0.048', 'PPC08', 'EKO', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:61:32:A9'),
(49, '192.168.0.049', 'PPC09', 'Yoyok Baru', 'PPC', NULL, '', 'LAN', '', '6C:F0:49:44:1C:10'),
(50, '192.168.0.050', 'PPC10', 'ASTUTI', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:61:32:0F'),
(51, '192.168.0.051', 'PPC11', 'DITA PPC', 'PPC', NULL, '', 'LAN', '', '00:1C:C0:C9:B3:C0'),
(52, '192.168.0.052', 'PPC12', 'Hendra', 'PPC', NULL, '', 'LAN', '', '00:24:01:EF:FB:32'),
(53, '192.168.0.053', 'PPC13', 'Aris PPC', 'PPC', NULL, '', 'LAN', '', '00:11:11:1A:3D:EC'),
(54, '192.168.0.054', 'PPC14', 'SURYATI', 'PPC', NULL, '', 'LAN', '', '00:10:4B:0B:0F:C2'),
(55, '192.168.0.055', 'PPC15', 'DWI', 'PPC', NULL, '', 'LAN', '', '00:11:11:1A:3E:3F'),
(56, '192.168.0.056', 'PPC16', 'Danar', 'PPC', NULL, '', 'LAN', '', '00:11:11:1A:3E:23'),
(57, '192.168.0.057', 'PPC17', 'ALEX', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:61:32:9A'),
(58, '192.168.0.058', 'PPC18', 'Zaenal', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:61:2E:B8'),
(59, '192.168.0.059', 'PPC19', 'HELSI', 'PPC', NULL, '', 'LAN', '', '00:1E:90:E1:50:DE'),
(60, '192.168.0.060', 'PPC20', 'Teguh', 'PPC', NULL, '', 'LAN', '', '00:03:99:88:46:B7'),
(61, '192.168.0.061', 'MKT26', 'Erdi', 'MKT', '2011-10-10', '0312/MKT/IM/X/11', 'INTERNET', '', '00:14:85:F3:4B:69'),
(62, '192.168.0.062', 'RMP03', 'amel', 'RMP', NULL, '', 'LAN', '', '00:27:0E:23:EC:7F'),
(63, '192.168.0.063', 'RMP04', 'DITA', 'RMP', NULL, '', 'LAN', '', '6C:F0:49:44:18:F4'),
(64, '192.168.0.064', 'RMP05', 'ERNI', 'RMP', NULL, '', 'LAN', '', '6C:F0:49:44:18:F4'),
(65, '192.168.0.065', '', '', 'N/A', NULL, '', '', '', ''),
(66, '192.168.0.066', 'RMP02', 'Suyitno', 'RMP', '0000-00-00', '', 'INTERNET', '', '00:11:11:35:F4:73'),
(67, '192.168.0.067', 'PPC01-B', 'Ms Chong', 'PPC', NULL, '', 'INTERNET', '', ''),
(68, '192.168.0.068', 'PPC02-B', 'Ucup', 'PPC', NULL, '', 'INTERNET', '', ''),
(69, '192.168.0.069', '', '', 'N/A', NULL, '', '', '', ''),
(70, '192.168.0.070', '', '', 'N/A', NULL, '', '', '', ''),
(71, '192.168.0.071', '', '', 'N/A', NULL, '', '', '', ''),
(72, '192.168.0.072', '', '', 'N/A', NULL, '', '', '', ''),
(73, '192.168.0.073', '', '', 'N/A', NULL, '', '', '', ''),
(74, '192.168.0.074', '', '', 'N/A', NULL, '', '', '', ''),
(75, '192.168.0.075', '', '', 'N/A', NULL, '', '', '', ''),
(76, '192.168.0.076', '', '', 'N/A', NULL, '', '', '', ''),
(77, '192.168.0.077', '', '', 'N/A', NULL, '', '', '', ''),
(78, '192.168.0.078', '', '', 'N/A', NULL, '', '', '', ''),
(79, '192.168.0.079', '', '', 'N/A', NULL, '', '', '', ''),
(80, '192.168.0.080', '', '', 'N/A', NULL, '', '', '', ''),
(81, '192.168.0.081', '', '', 'N/A', NULL, '', '', '', ''),
(82, '192.168.0.082', '', '', 'N/A', NULL, '', '', '', ''),
(83, '192.168.0.083', '', '', 'N/A', NULL, '', '', '', ''),
(84, '192.168.0.084', '', '', 'N/A', NULL, '', '', '', ''),
(85, '192.168.0.085', '', '', 'N/A', NULL, '', '', '', ''),
(86, '192.168.0.086', '', '', 'N/A', NULL, '', '', '', ''),
(87, '192.168.0.087', '', '', 'N/A', NULL, '', '', '', ''),
(88, '192.168.0.088', '', '', 'N/A', NULL, '', '', '', ''),
(89, '192.168.0.089', '', '', 'N/A', NULL, '', '', '', ''),
(90, '192.168.0.090', '', '', 'N/A', NULL, '', '', '', ''),
(91, '192.168.0.091', '', '', 'N/A', NULL, '', '', '', ''),
(92, '192.168.0.092', '', '', 'N/A', NULL, '', '', '', ''),
(93, '192.168.0.093', '', '', 'N/A', NULL, '', '', '', ''),
(94, '192.168.0.094', '', '', 'N/A', NULL, '', '', '', ''),
(95, '192.168.0.095', '', '', 'N/A', NULL, '', '', '', ''),
(96, '192.168.0.096', '', '', 'N/A', NULL, '', '', '', ''),
(97, '192.168.0.097', '', '', 'N/A', NULL, '', '', '', ''),
(98, '192.168.0.098', '', '', 'N/A', NULL, '', '', '', ''),
(99, '192.168.0.099', '', '', 'N/A', NULL, '', '', '', ''),
(100, '192.168.0.100', 'KOP1', 'koperasi', 'kop', '2011-06-22', '', 'LAN', 'pinjam wireless USB DIT,tanda terima peminjaman oleh husni', ''),
(101, '192.168.0.101', 'PRS01', 'Faisal PRS', 'PRS', NULL, '', 'LAN', '', ''),
(102, '192.168.0.102', 'PRS02', 'Agus PRS', 'PRS', NULL, '', 'INTERNET', '', ''),
(103, '192.168.0.103', 'PRS03', 'Nani', 'PRS', '2009-04-17', '023/prs/im/iv/09', 'INTERNET', '', ''),
(104, '192.168.0.104', 'PRS04', 'Deni', 'PRS', NULL, '', '', '', ''),
(105, '192.168.0.105', 'PRS05', '', 'N/A', NULL, '029/QAI/IM/IV/10', 'INTERNET', '', ''),
(106, '192.168.0.106', 'PRS06', '', 'N/A', NULL, '', '', '', ''),
(107, '192.168.0.107', 'PRS07', '', 'N/A', NULL, '', '', '', ''),
(108, '192.168.0.108', '', '', 'N/A', NULL, '', '', '', ''),
(109, '192.168.0.109', '', '', 'N/A', NULL, '', '', '', ''),
(110, '192.168.0.110', '', '', 'N/A', NULL, '', '', '', ''),
(111, '192.168.0.111', '', '', 'N/A', NULL, '', '', '', ''),
(112, '192.168.0.112', '', '', 'N/A', NULL, '', '', '', ''),
(113, '192.168.0.113', '', '', 'N/A', NULL, '', '', '', ''),
(114, '192.168.0.114', '', '', 'N/A', NULL, '', '', '', ''),
(115, '192.168.0.115', '', '', 'N/A', NULL, '', '', '', ''),
(116, '192.168.0.116', '', '', 'N/A', NULL, '', '', '', ''),
(117, '192.168.0.117', '', '', 'N/A', NULL, '', '', '', ''),
(118, '192.168.0.118', '', '', 'N/A', NULL, '', '', '', ''),
(119, '192.168.0.119', '', '', 'N/A', NULL, '', '', '', ''),
(120, '192.168.0.120', '', '', 'N/A', NULL, '', '', '', ''),
(121, '192.168.0.121', '', '', 'N/A', NULL, '', '', '', ''),
(122, '192.168.0.122', 'PCS08', 'SRIYONO', 'PCS', NULL, '', 'LAN', '', ''),
(123, '192.168.0.123', 'MKT27', 'HERI', 'MKT', NULL, '', 'LAN', '', ''),
(124, '192.168.0.124', 'MKT05', '', 'N/A', NULL, '', '', '', ''),
(125, '192.168.0.125', '', '', 'N/A', NULL, '', '', '', ''),
(126, '192.168.0.126', '', '', 'N/A', NULL, '', '', '', ''),
(127, '192.168.0.127', '', '', 'N/A', NULL, '', '', '', ''),
(128, '192.168.0.128', '', '', 'N/A', NULL, '', '', '', ''),
(129, '192.168.0.129', '', '', 'N/A', NULL, '', '', '', ''),
(130, '192.168.0.130', '', '', 'N/A', NULL, '', '', '', ''),
(131, '192.168.0.131', '', '', 'N/A', NULL, '', '', '', ''),
(132, '192.168.0.132', '', '', 'N/A', NULL, '', '', '', ''),
(133, '192.168.0.133', '', '', 'N/A', NULL, '', '', '', ''),
(134, '192.168.0.134', '', '', 'N/A', NULL, '', '', '', ''),
(135, '192.168.0.135', '', '', 'N/A', NULL, '', '', '', ''),
(136, '192.168.0.136', '', '', 'N/A', NULL, '', '', '', ''),
(137, '192.168.0.137', '', '', 'N/A', NULL, '', '', '', ''),
(138, '192.168.0.138', '', '', 'N/A', NULL, '', '', '', ''),
(139, '192.168.0.139', '', '', 'N/A', NULL, '', '', '', ''),
(140, '192.168.0.140', 'MKT28', 'Rian Sejahtera', 'MKT', NULL, '', 'LAN', 'bekas komp ronny', '00:11:11:94:3C:89'),
(141, '192.168.0.141', '', '', 'N/A', NULL, '', '', '', ''),
(142, '192.168.0.142', '', '', 'N/A', NULL, '', '', '', ''),
(143, '192.168.0.143', '', '', 'N/A', NULL, '', '', '', ''),
(144, '192.168.0.144', 'MKT29', 'RAMA', 'MKT', NULL, '', 'LAN', '', ''),
(145, '192.168.0.145', 'RMP06', 'RMP-des2011', 'RMP', NULL, '', 'LAN', '', ''),
(146, '192.168.0.146', '', '', 'N/A', NULL, '', '', '', ''),
(147, '192.168.0.147', '', '', 'N/A', NULL, '', '', '', ''),
(148, '192.168.0.148', '', '', 'N/A', NULL, '', '', '', ''),
(149, '192.168.0.149', '', '', 'N/A', NULL, '', '', '', ''),
(150, '192.168.0.150', '', '', 'N/A', NULL, '', '', '', ''),
(151, '192.168.0.151', 'ACC01', 'TINE', 'ACC', NULL, '', 'LAN', '', ''),
(152, '192.168.0.152', 'ACC02', 'UMAMAH', 'ACC', NULL, '', 'LAN', '', ''),
(153, '192.168.0.153', 'ACC03', 'NITA', 'ACC', NULL, '', 'LAN', '', ''),
(154, '192.168.0.154', 'ACC04', 'OKTA', 'FNC', NULL, '', 'LAN', '', ''),
(155, '192.168.0.155', 'ACC05', 'RIA', 'ACC', NULL, '', 'LAN', '', ''),
(156, '192.168.0.156', 'ACC06', 'IIN', 'ACC', NULL, '', 'LAN', '', ''),
(157, '192.168.0.157', 'ACC07', 'MEI', 'ACC', NULL, '', 'INTERNET', '', ''),
(158, '192.168.0.158', '', '', 'N/A', NULL, '', '', '', ''),
(159, '192.168.0.159', '', '', 'N/A', NULL, '', '', '', ''),
(160, '192.168.0.160', 'ACC08', 'Nelly/ Anna', 'ACC', NULL, '', 'LAN', '', ''),
(161, '192.168.0.161', '', '', 'N/A', NULL, '', '', '', ''),
(162, '192.168.0.162', 'FNC02', 'SHIRLY', 'FNC', NULL, '', 'LAN', '', ''),
(163, '192.168.0.163', 'FNC03', 'PUJI', 'FNC', NULL, '', 'LAN', '', ''),
(164, '192.168.0.164', 'PPC21', 'bayu baru', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:61:30:8D'),
(165, '192.168.0.165', 'PPC22', 'Rijal', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:61:5A:5F'),
(166, '192.168.0.166', 'PPC23', 'Rizky', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:60:9D:D3'),
(167, '192.168.0.167', 'PPC24', 'Didik', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:61:5A:54'),
(168, '192.168.0.168', 'PPC25', 'Tuti', 'PPC', NULL, '', 'LAN', '', '1C:6F:65:60:AD:A5'),
(169, '192.168.0.169', 'PPC26', 'VIA', 'PPC', NULL, '', 'LAN', '', ''),
(170, '192.168.0.170', '', '', 'N/A', NULL, '', '', '', ''),
(171, '192.168.0.171', '', '', 'N/A', NULL, '', '', '', ''),
(172, '192.168.0.172', '', '', 'N/A', NULL, '', '', '', ''),
(173, '192.168.0.173', '', '', 'N/A', NULL, '', '', '', ''),
(174, '192.168.0.174', '', '', 'N/A', NULL, '', '', '', ''),
(175, '192.168.0.175', '', '', 'N/A', NULL, '', '', '', ''),
(176, '192.168.0.176', '', '', 'N/A', NULL, '', '', '', ''),
(177, '192.168.0.177', 'QCF-INSPECT 01', 'Mesin Inspek 19', 'QCF-INSPECT', NULL, '', '', '', ''),
(178, '192.168.0.178', 'QCF-INSPECT 02', 'Mesin Inspek 02', 'QCF-INSPECT', NULL, '', '', '', ''),
(179, '192.168.0.179', 'QCF-INSPECT 03', 'Mesin Inspek 03', 'QCF-INSPECT', NULL, '', '', '', ''),
(180, '192.168.0.180', 'QCF-INSPECT 04', 'Mesin Inspek 04', 'QCF-INSPECT', NULL, '', '', '', ''),
(181, '192.168.0.181', 'QCF-INSPECT 05', 'Mesin Inspek 05', 'QCF-INSPECT', NULL, '', '', '', ''),
(182, '192.168.0.182', 'QCF-INSPECT 06', 'Mesin Inspek 06', 'QCF-INSPECT', NULL, '', '', '', ''),
(183, '192.168.0.183', 'QCF-INSPECT 07', 'Mesin Inspek 07', 'QCF-INSPECT', NULL, '', '', '', ''),
(184, '192.168.0.184', 'QCF-INSPECT 08', 'Mesin Inspek 08', 'QCF-INSPECT', NULL, '', '', '', ''),
(185, '192.168.0.185', 'QCF-INSPECT 09', 'Mesin Inspek 09', 'QCF-INSPECT', NULL, '', '', '', ''),
(186, '192.168.0.186', 'QCF-INSPECT 10', 'Mesin Inspek 10', 'QCF-INSPECT', NULL, '', '', '', ''),
(187, '192.168.0.187', 'QCF-INSPECT 11', 'Mesin Inspek 11', 'QCF-INSPECT', NULL, '', '', '', ''),
(188, '192.168.0.188', 'QCF-INSPECT 12', 'Mesin Inspek 12', 'QCF-INSPECT', NULL, '', '', '', ''),
(189, '192.168.0.189', 'QCF-INSPECT 13', 'Mesin Inspek 01', 'QCF-INSPECT', NULL, '', '', '', ''),
(190, '192.168.0.190', 'QCF-INSPECT 14', 'Mesin Inspek 12A', 'QCF-INSPECT', NULL, '', '', '', ''),
(191, '192.168.0.191', 'QCF-INSPECT 15', 'Mesin Inspek 14', 'QCF-INSPECT', NULL, '', '', '', ''),
(192, '192.168.0.192', 'QCF-INSPECT 16', 'Mesin Inspek 15', 'QCF-INSPECT', NULL, '', '', '', ''),
(193, '192.168.0.193', 'QCF-INSPECT 17', 'Mesin Inspek 16', 'QCF-INSPECT', NULL, '', '', '', ''),
(194, '192.168.0.194', 'QCF-INSPECT 18', 'Mesin Inspek 17', 'QCF-INSPECT', NULL, '', '', '', ''),
(195, '192.168.0.195', 'QCF-INSPECT 19', 'Mesin Inspek 18', 'QCF-INSPECT', NULL, '', '', '', ''),
(196, '192.168.0.196', 'QCF-INSPECT 20', 'Mesin Inspek 20', 'QCF-INSPECT', NULL, '', '', '', ''),
(197, '192.168.0.197', 'QCF-INSPECT 21', 'Mesin Inspek 21', 'QCF-INSPECT', NULL, '', '', '', ''),
(198, '192.168.0.198', 'QCF-INSPECT 22', 'Mesin Inspek 22', 'QCF-INSPECT', NULL, '', '', '', ''),
(199, '192.168.0.199', 'QCF-INSPECT 23', 'Mesin Inspek 23', 'QCF-INSPECT', NULL, '', '', '', ''),
(200, '192.168.0.200', 'QCF-INSPECT 24', 'Mesin Inspek 24', 'QCF-INSPECT', NULL, '', '', '', ''),
(201, '192.168.0.201', 'QCF-INSPECT 25', 'Inspek Meja', 'QCF-INSPECT', NULL, '', '', '', ''),
(202, '192.168.0.202', 'QCF-Pack01', 'Packing 01', 'QCF', NULL, '', '', '', ''),
(203, '192.168.0.203', 'QCF-Pack02', 'Packing 02', 'QCF', NULL, '', '', '', ''),
(204, '192.168.0.204', 'QCF-Pack03', 'Packing 03', 'QCF', NULL, '', '', '', ''),
(205, '192.168.0.205', 'QCF-Pack04', 'Packing 04', 'QCF', NULL, '', '', '', ''),
(206, '192.168.0.206', 'QCF-Pack05', 'Packing 05', 'QCF', NULL, '', '', '', ''),
(207, '192.168.0.207', '', '', 'N/A', NULL, '', '', '', ''),
(208, '192.168.0.208', '', '', 'N/A', NULL, '', '', '', ''),
(209, '192.168.0.209', '', '', 'N/A', NULL, '', '', '', ''),
(210, '192.168.0.210', '', '', 'N/A', NULL, '', '', '', ''),
(211, '192.168.0.211', '', '', 'N/A', NULL, '', '', '', ''),
(212, '192.168.0.212', '', '', 'N/A', NULL, '', '', '', ''),
(213, '192.168.0.213', 'MKT30', 'REANA', 'MKT', NULL, '', 'LAN', '', ''),
(214, '192.168.0.214', '', '', 'N/A', NULL, '', '', '', ''),
(215, '192.168.0.215', 'MKT31', 'BUNBUN', 'MKT', NULL, '', 'INTERNET', '', ''),
(216, '192.168.0.216', 'RMP01', 'ANGELA', 'RMP', NULL, '', 'INTERNET', '', ''),
(217, '192.168.0.217', '', 'Rijal IP baru', 'PPC', NULL, '', 'LAN', '', ''),
(218, '192.168.0.218', '', '', 'N/A', NULL, '', '', '', ''),
(219, '192.168.0.219', '', '', 'N/A', NULL, '', '', '', ''),
(220, '192.168.0.220', 'ACC09', 'RINA', 'ACC', NULL, '', 'INTERNET', '', ''),
(221, '192.168.0.221', 'FNC01', 'JENNY', 'FNC', NULL, '', 'INTERNET', '', '00:16:D3:A6:81:38'),
(222, '192.168.0.222', '', '', 'N/A', NULL, '', '', '', ''),
(223, '192.168.0.223', '', '', 'N/A', NULL, '', '', '', ''),
(224, '192.168.0.224', '', '', 'N/A', NULL, '', '', '', ''),
(225, '192.168.0.225', 'KOM3', 'MR ERLAND NOTEBOOK', 'vice presdir', NULL, '', 'INTERNET', '', ''),
(226, '192.168.0.226', 'MKT32', 'RICHARD', 'MKT', NULL, '', 'INTERNET', '', ''),
(227, '192.168.0.227', 'ACC10', 'LINDA', 'ACC', NULL, '', 'INTERNET', '', ''),
(228, '192.168.0.228', '', '', 'N/A', NULL, '', '', '', ''),
(229, '192.168.0.229', '', '', 'N/A', NULL, '', '', '', ''),
(230, '192.168.0.230', '', '', 'N/A', NULL, '', '', '', ''),
(231, '192.168.0.231', '', '', 'N/A', NULL, '', '', '', ''),
(232, '192.168.0.232', '', 'wireless svr-itc-mobile (ITC LOCALNET)', 'DIT', NULL, '', '', '', ''),
(233, '192.168.0.233', '', 'Router PPC', 'AP', NULL, '', 'INTERNET', '', ''),
(234, '192.168.0.234', '', '', 'N/A', NULL, '', '', '', ''),
(235, '192.168.0.235', '', '', 'N/A', NULL, '', '', '', ''),
(236, '192.168.0.236', '', '', 'N/A', NULL, '', '', '', ''),
(237, '192.168.0.237', 'EXIM01', 'MR KEN', 'EXIM', NULL, '', 'INTERNET', '', ''),
(238, '192.168.0.238', 'RTR-1B', 'ROUTER QCF', 'QCF', NULL, '', 'INTERNET', '', '00:1A:80:3E:1F:51'),
(239, '192.168.0.239', 'WIFI01', 'Wireless ITC lt3', 'DIT', NULL, '', 'INTERNET', '', ''),
(240, '192.168.0.240', 'RTR-2', 'router Knitting', 'knitting', NULL, '', 'INTERNET', '', ''),
(241, '192.168.0.241', 'RTR-3', 'buat test router cisco', 'dit', NULL, '', 'LAN', '', ''),
(242, '192.168.0.242', '', 'Wireless Akses point 7', 'AP cadgn', NULL, '', 'INTERNET', '', ''),
(243, '192.168.0.243', '', 'akses dial in rimmon', 'RAS svr1', NULL, '', 'INTERNET', '', ''),
(244, '192.168.0.244', '', 'Static address RAS', 'RAS svr1', NULL, '', 'INTERNET', '', '00:C0:A8:F8:35:5C'),
(245, '192.168.0.245', '', 'Static address RAS', 'RAS svr1', NULL, '', 'INTERNET', '', ''),
(246, '192.168.0.246', '', '', 'N/A', NULL, '', '', '', ''),
(247, '192.168.0.247', '', '', 'N/A', NULL, '', '', '', ''),
(248, '192.168.0.248', '', 'Wireless Acces Point Pusat', 'AP online', NULL, '', 'INTERNET', '', '00:C0:A8:E0:40:78'),
(249, '192.168.0.249', '', 'Wireless Acces Point 1', 'AP maintenance', NULL, '', 'INTERNET', '', '00:C0:A8:E1:44:A6'),
(250, '192.168.0.250', '', 'Wireless Acces Point 2', 'AP GKJ PRT', NULL, '', 'INTERNET', '', '00:C0:A8:F7:91:E2'),
(251, '192.168.0.251', '', 'Wireless Acces Point 3', 'AP Mess Pelangi Knit', NULL, '', 'INTERNET', '', '00:C0:A8:F8:35:5F'),
(252, '192.168.0.252', '', 'Wireless Acces Point 4', 'AP Knitting', NULL, '', 'INTERNET', '', '00:C0:A8:F7:92:09'),
(253, '192.168.0.253', '', 'Wireless Acces Point 5', 'AP G Greige', NULL, '', 'INTERNET', '', '00:C0:A8:F7:92:0A'),
(254, '192.168.0.254', '', '', 'N/A', NULL, '', '', '', ''),
(255, '192.168.2.001', 'DIT1B', 'bintoro', 'DIT', NULL, '', 'INTERNET', '', '00:26:22:95:06:93'),
(256, '192.168.2.002', 'SVR0-B', 'ROUTER', 'SVR', NULL, '', 'INTERNET', '', ''),
(257, '192.168.2.003', 'SVR1-B', 'SVR1 / SERVER DATA', 'SVR', NULL, '', 'VPN', '', '00:26:55:EE:BD:D8'),
(258, '192.168.2.004', 'SVR4-B', 'SVR4 / SERVER DATABASE ONLINE', 'SVR', NULL, '', 'LAN', '', '00:26:55:EE:B2:00'),
(259, '192.168.2.005', 'SVR2-B', 'SVR2 / SERVER EMAIL', 'SVR', NULL, '', 'INTERNET', '', '00:11:25:22:4E:2E'),
(260, '192.168.2.006', 'SVR3-B', '', 'N/A', NULL, '', '', '', ''),
(261, '192.168.2.007', 'SVR5-B', '', 'N/A', NULL, '', '', '', ''),
(262, '192.168.2.008', 'BRS01', 'Buntian desktop', 'BRUSHING', '2012-07-03', '', 'LAN', 'LAN', ''),
(263, '192.168.2.009', 'BRS02', 'BRUSHING-03', 'BRUSHING', NULL, '', 'LAN', '', ''),
(264, '192.168.2.010', 'BRS03', 'brushing andri', 'BRUSHING', '0000-00-00', '', 'LAN', 'LAN', ''),
(265, '192.168.2.011', 'BRS04', 'BRUSHING-01', 'BRUSHING', '2012-07-03', '', 'LAN', 'LAN', ''),
(266, '192.168.2.012', 'BRS05', 'BRUSHING-01/ buntian', 'BRUSHING', NULL, '', 'LAN', '', ''),
(267, '192.168.2.013', 'BRS06', '1', 'BRUSHING', NULL, '', '', '', ''),
(268, '192.168.2.014', 'PPC02', 'Ucup', 'PPC', NULL, '', 'INTERNET', '', '1C:6F:65:3C:D9:EA'),
(269, '192.168.2.015', 'PPC01', 'Mr Chong', 'PPC', NULL, '', 'INTERNET', '', ''),
(270, '192.168.2.016', 'BRS07', '3', 'BRUSHING', NULL, '', '', '', ''),
(271, '192.168.2.017', 'BRS08', '4', 'BRUSHING', NULL, '', '', '', ''),
(272, '192.168.2.018', 'FIN01', 'FIN-01/ As Manager', 'FINISHING', NULL, '', 'LAN', '', '00:1C:C0:63:A2:56'),
(273, '192.168.2.019', 'FIN02', 'FIN Adm depan', 'FINISHING', '2012-07-03', '', 'LAN', 'LAN', ''),
(274, '192.168.2.020', 'FIN03', 'FIN-03/ belah', 'FINISHING', NULL, '', 'LAN', '', ''),
(275, '192.168.2.021', 'FIN04', 'FIN-04(Oven)', 'FINISHING', NULL, '', 'LAN', '', ''),
(276, '192.168.2.022', 'FIN05', 'FIN-06/ LK-2', 'FINISHING', NULL, '', 'LAN', '', ''),
(277, '192.168.2.023', 'FIN06', 'fery kantor', 'FINISHING', NULL, '', 'LAN', '', ''),
(278, '192.168.2.024', 'FIN07', 'kantor fin', 'FINISHING', NULL, '', 'LAN', '', ''),
(279, '192.168.2.025', 'FIN08', '1', 'FINISHING', NULL, '', '', '', ''),
(280, '192.168.2.026', 'FIN09', '2', 'FINISHING', NULL, '', '', '', ''),
(281, '192.168.2.027', 'FIN10', '3', 'FINISHING', NULL, '', '', '', ''),
(282, '192.168.2.028', 'MAS01', 'MAS ', 'MAS', NULL, '', 'LAN', '', ''),
(283, '192.168.2.029', 'MAS02', 'Liani', 'MAS', NULL, '', 'LAN', '', ''),
(284, '192.168.2.030', 'MAS03', 'IKA', 'MAS', NULL, '', 'LAN', '', ''),
(285, '192.168.2.031', 'MAS04', 'rikky', 'MAS', NULL, '', 'LAN', '', ''),
(286, '192.168.2.032', 'MAS05', 'EVI', 'MAS', NULL, '', 'LAN', '', ''),
(287, '192.168.2.033', 'MAS06', '1', 'MAS', NULL, '', '', '', ''),
(288, '192.168.2.034', 'MAS07', '2', 'MAS', NULL, '', '', '', ''),
(289, '192.168.2.035', 'MAS08', '3', 'MAS', NULL, '', '', '', ''),
(290, '192.168.2.036', 'QAI01', 'Yustina Gandasutedja', 'QAI', '0000-00-00', '', 'INTERNET', '', ''),
(291, '192.168.2.037', 'QAI02', 'Agus', 'QAI', '0000-00-00', '', 'INTERNET', '', ''),
(292, '192.168.2.038', 'QAI03', 'Putri', 'QAI', '0000-00-00', '', 'INTERNET', '', ''),
(293, '192.168.2.039', 'QAI04', 'QA1', 'QAI', NULL, '', 'LAN', '', ''),
(294, '192.168.2.040', 'QAI05', 'putri QAI', 'QAI', NULL, '', 'LAN', '', ''),
(295, '192.168.2.041', 'QAI06', 'Rizal', 'QAI', '0000-00-00', '', 'LAN', '', ''),
(296, '192.168.2.042', 'QAI07', '2', 'QAI', NULL, '', '', '', ''),
(297, '192.168.2.043', 'QAI08', '3', 'QAI', NULL, '', '', '', ''),
(298, '192.168.2.044', 'QAI09', '4', 'QAI', NULL, '', '', '', ''),
(299, '192.168.2.045', 'PCS01', 'STELLA', 'PCS', NULL, '', 'INTERNET', '', ''),
(300, '192.168.2.046', 'PCS02', 'Mudy', 'PCS', '0000-00-00', '', 'INTERNET', 'INTERNET', ''),
(301, '192.168.2.047', 'PCS03', 'Anti/mudy', 'PCS', NULL, '', 'LAN', '', '6C:F0:49:A8:62:CF'),
(302, '192.168.2.048', 'PCS04', 'SALIS', 'PCS', NULL, '', 'LAN', '', ''),
(303, '192.168.2.049', 'PCS05', 'erfi', 'PCS', NULL, '', 'LAN', '', ''),
(304, '192.168.2.050', 'PCS06', 'inka yuanita', 'PCS', NULL, '', 'LAN', '', ''),
(305, '192.168.2.051', 'PCS07', 'MUDIONO', 'PCS', NULL, '', 'LAN', '', ''),
(306, '192.168.2.052', 'PCS09', 'Ervi', 'PCS', '2012-07-03', '', 'LAN', 'LAN', ''),
(307, '192.168.2.053', 'PCS10', '2', 'PCS', NULL, '', '', '', ''),
(308, '192.168.2.054', 'PCS11', '3', 'PCS', NULL, '', '', '', ''),
(309, '192.168.2.055', 'QCF01', 'Sucipto', 'QCF', NULL, '', 'INTERNET', '', '00:1C:C0:63:A3:C3'),
(310, '192.168.2.056', 'QCF02', 'Ayen', 'QCF', NULL, '', 'INTERNET', '', '1C:6F:65:65:5A:41'),
(311, '192.168.2.057', 'QCF03', 'Agung', 'QCF', NULL, '', 'INTERNET', '', '00:1C:C0:63:A3:C3'),
(312, '192.168.2.058', 'QCF04', 'Mamik', 'QCF', NULL, '', 'INTERNET', '', '00:1C:C0:01:D3:E4'),
(313, '192.168.2.059', 'QCF05', 'tusil_qcf05', 'QCF', NULL, '', 'LAN', '', '00:03:99:88:46:B9'),
(314, '192.168.2.060', 'QCF06', 'bayu_qcf06', 'QCF', NULL, '', 'LAN', '', '1C:6F:65:69:31:AE'),
(315, '192.168.2.061', 'QCF07', 'nurhabibah_qcf07', 'QCF', NULL, '', 'LAN', '', '00:19:21:18:F0:21'),
(316, '192.168.2.062', 'QCF08', 'qc1', 'QCF', NULL, '', 'LAN', '', '00:19:21:47:7A:7B'),
(317, '192.168.2.063', 'QCF09', 'ferry_qcf09', 'QCF', NULL, '', 'LAN', '', '00:16:EC:2E:34:EB'),
(318, '192.168.2.064', 'QCF10', 'tesreport', 'QCF', NULL, '', 'LAN', '', '00:1C:C0:63:A3:3F'),
(319, '192.168.2.065', 'QCF11', 'ali', 'QCF', NULL, '', 'LAN', '', '20:CF:30:AC:C6:CD'),
(320, '192.168.2.066', 'QCF12', 'cristin-qcf12', 'QCF', NULL, '', 'LAN', '', '38:60:77:87:7F:44'),
(321, '192.168.2.067', 'QCF13', 'qcf12B', 'QCF', NULL, '', 'LAN', '', '38:60:77:92:94:A8'),
(322, '192.168.2.068', 'QCF14', 'arif', 'QCF', NULL, '', 'LAN', '', '40:61:86:97:D1:FE'),
(323, '192.168.2.069', 'QCF15', 'uswatun-qcf15', 'QCF', NULL, '', 'LAN', '', '1C:6F:65:9C:CA:04'),
(324, '192.168.2.070', 'QCF16', 'qcf-16', 'QCF', NULL, '', 'LAN', '', '00:1A:4D:F7:6D:E8'),
(325, '192.168.2.071', 'QCF17', 'dadan', 'QCF', NULL, '', 'LAN', '', '1C:6F:65:68:1D:D7'),
(326, '192.168.2.072', 'QCF18', 'adm_qc', 'QCF', NULL, '', 'LAN', '', '00:11:11:35:F4:66'),
(327, '192.168.2.073', 'QCF19', 'datacolorQCF', 'QCF', NULL, '', 'INTERNET', '', ''),
(328, '192.168.2.074', 'QCF20', 'Router QCF', 'QCF', NULL, '', 'LAN', '', ''),
(329, '192.168.2.075', 'QCF21', '1', 'QCF', NULL, '', 'LAN', '', ''),
(330, '192.168.2.076', 'QCF22', '2', 'QCF', NULL, '', 'LAN', '', ''),
(331, '192.168.2.077', 'QCF23', '3', 'QCF', NULL, '', 'LAN', '', ''),
(332, '192.168.2.078', 'QCF24', '4', 'QCF', NULL, '', 'LAN', '', ''),
(333, '192.168.2.079', 'QCF25', '5', 'QCF', NULL, '', 'LAN', '', ''),
(334, '192.168.2.080', 'QCF26', '6', 'QCF', NULL, '', 'LAN', '', ''),
(335, '192.168.2.081', 'QCF27', '7', 'QCF', NULL, '', 'LAN', '', ''),
(336, '192.168.2.082', 'QCF28', 'SSID New Dyeing', 'wireless', NULL, '', 'INTERNET', '', ''),
(337, '192.168.2.083', 'QCF29', 'Xiaoming PC Dyeing', 'DYEING', NULL, '', 'INTERNET', '', ''),
(338, '192.168.2.084', 'QCF30', 'dyeing-celup1-LASPC', 'DYEING', NULL, '', 'INTERNET', 'Untuk koneksi teamviewer', '40:61:86:80:F3:FD'),
(339, '192.168.2.085', 'QCF31', 'Xiaoming???', 'DYEING', NULL, '', 'INTERNET', '', ''),
(340, '192.168.2.086', 'QCF32', 'DYE-02/as man dye', 'DYEING', NULL, '', 'LAN', '', '00:1C:C0:63:A0:7F'),
(341, '192.168.2.087', 'QCF33', 'komp buka resep', 'DYEING', NULL, '', 'LAN', '', '00:21:97:71:01:EC'),
(342, '192.168.2.088', 'DYE01', 'nasrul ?', 'DYEING', NULL, '', 'LAN', '', '00:11:5B:10:49:97'),
(343, '192.168.2.089', 'DYE02', 'dyeing buka resep', 'DYEING', NULL, '', 'LAN', '', ''),
(344, '192.168.2.090', 'DYE03', 'nyoman', 'DYEING', NULL, '', 'LAN', '', ''),
(345, '192.168.2.091', 'DYE04', 'mesin celup-48', 'DYEING', NULL, '', 'LAN', '', ''),
(346, '192.168.2.092', 'DYE05', 'mesin celup-49', 'DYEING', NULL, '', 'LAN', '', ''),
(347, '192.168.2.093', 'DYE06', 'Dyeing Buka resep baru2', 'DYEING', NULL, '', 'LAN', '', ''),
(348, '192.168.2.094', 'DYE07', '1', 'DYEING', NULL, '', '', '', ''),
(349, '192.168.2.095', 'DYE08', '2', 'DYEING', NULL, '', '', '', ''),
(350, '192.168.2.096', 'DYE09', '3', 'DYEING', NULL, '', '', '', ''),
(351, '192.168.2.097', 'DYE10', '4', 'DYEING', NULL, '', '', '', ''),
(352, '192.168.2.098', 'DYE11', 'TAS ?', 'TAS', NULL, '', 'LAN', '', ''),
(353, '192.168.2.099', 'DYE12', 'eks TAS1', 'TAS', NULL, '', 'LAN', '', '1C:6F:65:61:12:9C'),
(354, '192.168.2.100', 'DYE13', 'mr liu notebook cable', 'TAS', NULL, '', 'INTERNET', '', ''),
(355, '192.168.2.101', 'DYE14', 'Sublimasi printing', 'TAS', NULL, '', 'LAN', '', '00:C0:A8:F7:92:0A'),
(356, '192.168.2.102', 'DYE15', 'TAS02', 'TAS', NULL, '', 'LAN', '', '00:19:21:49:7A:18'),
(357, '192.168.2.103', 'DYE16', 'tas1/ tas03', 'TAS', NULL, '', 'LAN', '', '1C:6F:65:61:12:9C'),
(358, '192.168.2.104', 'TAS01', 'netbook', 'TAS', NULL, '', 'LAN', '', ''),
(359, '192.168.2.105', 'TAS02', 'TAS', 'TAS', NULL, '', 'LAN', '', ''),
(360, '192.168.2.106', 'TAS03', 'TAS2/ETO', 'TAS', NULL, '', 'LAN', '', '00:19:21:49:7A:18'),
(361, '192.168.2.107', 'TAS04', 'MR LIU PC', 'PRODUKSI', NULL, '', 'INTERNET', '', '00:02:1B:F4:45:91'),
(362, '192.168.2.108', 'TAS05', 'Mr Liu notebook', 'PRODUKSI', NULL, '', 'INTERNET', '', ''),
(363, '192.168.2.109', 'TAS06', '1', 'TAS', NULL, '', '', '', ''),
(364, '192.168.2.110', 'TAS07', '2', 'TAS', NULL, '', '', '', ''),
(365, '192.168.2.111', 'TAS08', '3', 'TAS', NULL, '', '', '', ''),
(366, '192.168.2.112', 'TAS09', 'PNJEM LAB', 'LAB', NULL, '', 'LAN', '', ''),
(367, '192.168.2.113', 'TAS10', 'Xiaoming?', 'LAB', NULL, '', 'INTERNET', '', ''),
(368, '192.168.2.114', 'TAS11', 'laboratory 02', 'LABORAT', NULL, '', 'LAN', '', '40:61:86:97:CE:3B'),
(369, '192.168.2.115', 'TAS12', 'lab obat02/LA301', 'LABORAT', NULL, '', 'LAN', '', '1C:6F:65:EC:E0:74'),
(370, '192.168.2.116', 'TAS13', 'lab-timbang1/LA201', 'LABORAT', NULL, '', 'LAN', '', '1C:6F:65:EC:E5:D6'),
(371, '192.168.2.117', 'TAS14', 'LAB-01', 'LABORAT', NULL, '', 'LAN', '', '00:1C:C0:63:9F:01'),
(372, '192.168.2.118', 'LAB01', 'WAHINI/LAB01', 'LABORAT', NULL, '', 'LAN', '', '1C:6F:65:EC:E5:C8'),
(373, '192.168.2.119', 'LAB02', 'UNGGUL/LA1000-server', 'LABORAT', NULL, '', 'LAN', '', '1C:6F:65:95:59:A9'),
(374, '192.168.2.120', 'LAB03', 'KOMP EMAIL', 'LABORAT', NULL, '', 'LAN', '', '00:1C:C0:DE:4D:AC'),
(375, '192.168.2.121', 'LAB04', 'RUDI', 'LABORAT', NULL, '', 'LAN', '', '00:0D:5E:02:D1:81'),
(376, '192.168.2.122', 'LAB05', 'Apo notebook', 'PRODUKSI', NULL, '', 'INTERNET', '', ''),
(377, '192.168.2.123', 'LAB06', '1', 'LABORAT', NULL, '', '', '', ''),
(378, '192.168.2.124', 'LAB07', '2', 'LABORAT', NULL, '', '', '', ''),
(379, '192.168.2.125', 'LAB08', '3', 'LABORAT', NULL, '', '', '', ''),
(380, '192.168.2.126', 'LAB09', 'Lucia', 'GUDANG', NULL, '', 'INTERNET', '', '00:C0:A8:F7:92:0A'),
(381, '192.168.2.127', 'LAB10', 'yanti/iven', 'GUDANG', NULL, '', 'LAN', '', '00:19:21:58:CF:49'),
(382, '192.168.2.128', 'LAB11', 'perambudi', 'GUDANG', NULL, '', 'LAN', '', '00:27:0E:06:F7:72'),
(383, '192.168.2.129', 'LAB12', 'gadis', 'GUDANG', NULL, '', 'LAN', '', '1C:6F:65:67:63:70'),
(384, '192.168.2.130', 'LAB13', 'gudang graige/GKG lap1', 'GUDANG', NULL, '', 'LAN', '', '00:11:5B:13:B3:56'),
(385, '192.168.2.131', 'LAB14', 'GDG-02 (g. benang - pelangi)', 'GUDANG', NULL, '', 'LAN', '', '00:26:18:E1:19:87'),
(386, '192.168.2.132', 'Gudang01', 'graige-03/GKG lap2', 'GUDANG', NULL, '', 'LAN', '', '00:24:01:EC:1F:DB'),
(387, '192.168.2.133', 'Gudang02', 'GDG-04/GKJ-Lap1', 'GUDANG', NULL, '', 'LAN', '', '00:1C:C0:73:2F:7A'),
(388, '192.168.2.134', 'Gudang03', 'iid', 'GUDANG', NULL, '', 'LAN', '', '00:1E:90:E2:37:C5'),
(389, '192.168.2.135', 'Gudang04', 'Novi', 'GUDANG', NULL, '', 'LAN', '', '00:0E:A6:82:94:FF'),
(390, '192.168.2.136', 'Gudang05', 'prambudi', 'GUDANG', NULL, '', 'LAN', '', ''),
(391, '192.168.2.137', 'Gudang06', 'untuk gudang jadi printing', 'GUDANG', NULL, '', 'LAN', '', ''),
(392, '192.168.2.138', 'Gudang07', 'prambudi2', 'GUDANG', NULL, '', 'LAN', '', '00:27:0E:06:F6:5A'),
(393, '192.168.2.139', 'Gudang08', 'transport', 'GUDANG', NULL, '', 'LAN', '', '00:19:21:23:5A:75'),
(394, '192.168.2.140', 'Gudang09', 'Gd Greige Pintu 01', 'GUDANG', NULL, '', 'LAN', '', '6C:F0:49:A8:62:CD'),
(395, '192.168.2.141', 'Gudang10', 'GgGeige pintu 02', 'GUDANG', NULL, '', 'LAN', '', '6C:F0:49:A7:BA:28'),
(396, '192.168.2.142', 'Gudang11', 'GKJ Online-3/Lap2', 'Gudang', NULL, '', 'LAN', '', '00:11:5B:32:D4:35'),
(397, '192.168.2.143', 'Gudang12', 'Yuli', 'GUDANG', NULL, '', 'LAN', '', ''),
(398, '192.168.2.144', 'Gudang13', 'dipake g Benang printing', 'GUDANG', NULL, '', 'LAN', '', ''),
(399, '192.168.2.145', 'Gudang14', 'g benang print', 'GUDANG', NULL, '', 'LAN', '', ''),
(400, '192.168.2.146', 'Gudang15', 'GKJ PRINT-GDG-05', 'GUDANG', NULL, '', 'LAN', '', '00:1C:C0:63:9E:A6'),
(401, '192.168.2.147', 'Gudang16', 'Ratna', 'GUDANG', NULL, '', 'LAN', '', '00:27:0E:06:F7:72'),
(402, '192.168.2.148', 'Gudang17', 'G Benang1', 'GUDANG', NULL, '', 'LAN', '', ''),
(403, '192.168.2.149', 'Gudang18', 'Uun', 'GUDANG', NULL, '', 'LAN', '', ''),
(404, '192.168.2.150', 'Gudang19', 'Pram Benang1', 'GUDANG', NULL, '', 'LAN', '', ''),
(405, '192.168.2.151', 'Gudang20', 'pram benang2', 'GUDANG', NULL, '', 'LAN', '', ''),
(406, '192.168.2.152', 'Gudang21', 'GDG-05/sementara kosong', 'GUDANG', NULL, '', 'LAN', '', ''),
(407, '192.168.2.153', 'Gudang22', '1', 'GUDANG', NULL, '', '', '', ''),
(408, '192.168.2.154', 'Gudang23', '2', 'GUDANG', NULL, '', '', '', ''),
(409, '192.168.2.155', 'Gudang24', '3', 'GUDANG', NULL, '', '', '', ''),
(410, '192.168.2.156', 'Gudang25', '4', 'GUDANG', NULL, '', '', '', ''),
(411, '192.168.2.157', 'Gudang26', '5', 'GUDANG', NULL, '', '', '', ''),
(412, '192.168.2.158', 'Gudang27', '6', 'GUDANG', NULL, '', '', '', ''),
(413, '192.168.2.159', 'Gudang28', '7', 'GUDANG', NULL, '', '', '', ''),
(414, '192.168.2.160', 'Gudang29', '8', 'GUDANG', NULL, '', '', '', ''),
(415, '192.168.2.161', 'Gudang30', '9', 'GUDANG', NULL, '', '', '', ''),
(416, '192.168.2.162', 'Gudang31', 'INDRA', 'MTC', NULL, '', 'INTERNET', '', ''),
(417, '192.168.2.163', 'Gudang32', 'mess Mr Ran', 'MTC', NULL, '', 'LAN', '', ''),
(418, '192.168.2.164', 'MTC01', 'Lulis', 'MTC', NULL, '', 'LAN', '', ''),
(419, '192.168.2.165', 'MTC02', 'suganda', 'MTC', NULL, '', 'LAN', '', ''),
(420, '192.168.2.166', 'MTC03', 'Ran Xiamhua/ Boiler', 'MTC', NULL, '', 'LAN', '', '1C:6F:65:67:F9:39'),
(421, '192.168.2.167', 'MTC04', '1', 'MTC', NULL, '', '', '', ''),
(422, '192.168.2.168', 'MTC05', '2', 'MTC', NULL, '', '', '', ''),
(423, '192.168.2.169', 'MTC06', 'Mess Pak Indra', 'MESS KNITTING', NULL, '', 'INTERNET', '', ''),
(424, '192.168.2.170', 'MTC07', 'Mr Lin mes pelangi', 'MESS KNITTING', NULL, '', 'INTERNET', '', '00:26:22:88:48:00'),
(425, '192.168.2.171', 'MESS01', 'Mr Xiaoming', 'MESS KNITTING', NULL, '', 'INTERNET', '', ''),
(426, '192.168.2.172', 'MESS02', '1', 'MESS KNITTING', NULL, '', '', '', ''),
(427, '192.168.2.173', 'MESS03', '2', 'MESS KNITTING', NULL, '', '', '', ''),
(428, '192.168.2.174', 'MESS04', 'Router Knitting', 'KNITTING', NULL, '', 'INTERNET', '', ''),
(429, '192.168.2.175', 'MESS05', 'knitting mess belakang', 'KNITTING', NULL, '', 'INTERNET', '', ''),
(430, '192.168.2.176', 'KNIT01', 'ny Lin', 'KNITTING', NULL, '', 'INTERNET', '', ''),
(431, '192.168.2.177', 'KNIT02', 'mess belakang knit', 'KNITTING', NULL, '', 'INTERNET', '', ''),
(432, '192.168.2.178', 'KNIT03', 'Knit E', 'KNITTING', NULL, '', 'INTERNET', '', '1C:AF:F7:7C:FC:8B'),
(433, '192.168.2.179', 'KNIT04', 'knit A', 'KNITTING', NULL, '', 'LAN', '', ''),
(434, '192.168.2.180', 'KNIT05', 'knit B', 'KNITTING', NULL, '', 'LAN', '', ''),
(435, '192.168.2.181', 'KNIT06', 'knit C', 'KNITTING', NULL, '', 'LAN', '', ''),
(436, '192.168.2.182', 'KNIT07', 'Johan Akiong', 'KNITTING KRAH', NULL, '', 'INTERNET', '', ''),
(437, '192.168.2.183', 'KNIT08', 'Jumidi', 'KNITTING KRAH', NULL, '', 'LAN', '', ''),
(438, '192.168.2.184', 'KNIT09', '1', 'KNITTING KRAH', NULL, '', '', '', ''),
(439, '192.168.2.185', 'KNIT10', '2', 'KNITTING KRAH', NULL, '', '', '', ''),
(440, '192.168.2.186', 'KNIT11', '3', 'KNITTING KRAH', NULL, '', '', '', ''),
(441, '192.168.2.187', 'KNIT12', 'PRINTING ROUTER', 'PRINTING', NULL, '', 'INTERNET', '', '1C:AF:F7:7C:FC:9B'),
(442, '192.168.2.188', 'KNIT13', 'DHCP1', 'PRINTING', NULL, '', 'INTERNET', '', ''),
(443, '192.168.2.189', 'PRT01', 'DHCP2', 'PRINTING', NULL, '', 'INTERNET', '', ''),
(444, '192.168.2.190', 'PRT02', 'Mr Chen', 'PRINTING', '0000-00-00', '', 'LAN', '', ''),
(445, '192.168.2.191', 'PRT03', 'Agung', 'PRINTING', NULL, '', 'INTERNET', '', '40:61:86:BE:30:16'),
(446, '192.168.2.192', 'PRT04', 'Rico', 'PRINTING', NULL, '', 'INTERNET', '', ''),
(447, '192.168.2.193', 'PRT05', 'Mr Lay notebook-W101..', 'PRINTING', NULL, '', 'INTERNET', '', '00:13:D4:9A:6E:79'),
(448, '192.168.2.194', 'PRT06', 'PRINTING1-PC', 'PRINTING', NULL, '', 'INTERNET', '', ''),
(449, '192.168.2.195', 'PRT07', 'fendi-2pc', 'PRINTING', NULL, '', 'LAN', '', ''),
(450, '192.168.2.196', 'PRT08', 'citra-pc', 'PRINTING', NULL, '', 'LAN', '', ''),
(451, '192.168.2.197', 'PRT09', 'printing10-pc', 'PRINTING', NULL, '', 'LAN', '', ''),
(452, '192.168.2.198', 'PRT10', 'herdi-printing', 'PRINTING', NULL, '', 'LAN', '', ''),
(453, '192.168.2.199', 'PRT11', 'printing17/Ady', 'PRINTING', NULL, '', 'LAN', '', '00:27:0E:23:EC:CF'),
(454, '192.168.2.200', 'PRT12', 'ronny13-pc', 'PRINTING', NULL, '', 'LAN', '', ''),
(455, '192.168.2.201', 'PRT13', 'nuray12-pc', 'PRINTING', NULL, '', 'LAN', '', ''),
(456, '192.168.2.202', 'PRT14', 'printing-off-02', 'PRINTING', NULL, '', 'LAN', '', '40:61:86:C1:8A:81'),
(457, '192.168.2.203', 'PRT15', 'dark room-10.100', 'PRINTING', NULL, '', 'LAN', '', '40:61:86:BE:30:10'),
(458, '192.168.2.204', 'PRT16', 'mesin LA', 'PRINTING', NULL, '', 'LAN', '', ''),
(459, '192.168.2.205', 'PRT17', 'SPA-PC', 'PRINTING', NULL, '', 'LAN', '', ''),
(460, '192.168.2.206', 'PRT18', 'TE-158', 'PRINTING', NULL, '', 'LAN', '', '1C:AF:F7:E3:1A:BE'),
(461, '192.168.2.207', 'PRT19', 'Mettler Teledo-HP FF67...', 'PRINTING', NULL, '', 'LAN', '', '18:A9:05:38:8B:C9'),
(462, '192.168.2.208', 'PRT20', 'printing-off-01', 'PRINTING', NULL, '', 'LAN', '', '40:61:86:BE:30:6F'),
(463, '192.168.2.209', 'PRT21', 'printing1/gusti', 'PRINTING', NULL, '', 'LAN', '', '00:27:0E:23:B0:EA'),
(464, '192.168.2.210', 'PRT22', 'Komp Koneksi ke LA', 'PRINTING', NULL, '', 'LAN', '', ''),
(465, '192.168.2.211', 'PRT23', 'ilham-prt', 'PRINTING', NULL, '', 'LAN', '', ''),
(466, '192.168.2.212', 'PRT24', 'Printer A3 HPLJ5550dn', 'PRINTING', NULL, '', 'LAN', '', '00:1B:78:F1:70:11'),
(467, '192.168.2.213', 'PRT25', 'broadcast printing', 'PRINTING', NULL, '', 'LAN', '', '00:1C:C0:CC:4B:3E'),
(468, '192.168.2.214', 'PRT26', 'Mr Ai', 'PRINTING', NULL, '', 'INTERNET', '', ''),
(469, '192.168.2.215', 'PRT29', 'Ady', 'PRINTING', NULL, '', 'LAN', '', '1C:6F:65:E8:10:FB'),
(470, '192.168.2.216', 'PRT30', '1', 'PRINTING', NULL, '', '', '', ''),
(471, '192.168.2.217', 'PPC22-B', 'RIJAL MEMO PPC', 'PPC', NULL, '', 'INTERNET', '', ''),
(472, '192.168.2.218', 'PRT31', '2', 'PRINTING', NULL, '', '', '', ''),
(473, '192.168.2.219', 'PRT32', '3', 'PRINTING', NULL, '', '', '', ''),
(474, '192.168.2.220', 'PRT33', '4', 'PRINTING', NULL, '', '', '', ''),
(475, '192.168.2.221', 'PRT34', '5', 'PRINTING', NULL, '', '', '', ''),
(476, '192.168.2.222', 'PRT35', '6', 'PRINTING', NULL, '', '', '', ''),
(477, '192.168.2.223', 'PRT36', '7', 'PRINTING', NULL, '', '', '', ''),
(478, '192.168.2.224', 'PRT37', '8', 'PRINTING', NULL, '', '', '', ''),
(479, '192.168.2.225', 'PRT38', '9', 'PRINTING', NULL, '', '', '', ''),
(480, '192.168.2.226', 'PRT39', '10', 'PRINTING', NULL, '', '', '', ''),
(481, '192.168.2.227', 'PRT40', '11', 'PRINTING', NULL, '', '', '', ''),
(482, '192.168.2.228', 'PRT41', '12', 'PRINTING', NULL, '', '', '', ''),
(483, '192.168.2.229', 'PRT42', '13', 'PRINTING', NULL, '', '', '', ''),
(484, '192.168.2.230', 'PRT43', '14', 'PRINTING', NULL, '', '', '', ''),
(485, '192.168.2.231', 'PRT44', '15', 'PRINTING', NULL, '', '', '', ''),
(486, '192.168.2.232', '', '', 'N/A', NULL, '', '', '', ''),
(487, '192.168.2.233', '', '', 'N/A', NULL, '', '', '', ''),
(488, '192.168.2.234', '', '', 'N/A', NULL, '', '', '', ''),
(489, '192.168.2.235', '', '', 'N/A', NULL, '', '', '', ''),
(490, '192.168.2.236', '', '', 'N/A', NULL, '', '', '', ''),
(491, '192.168.2.237', '', '', 'N/A', NULL, '', '', '', ''),
(492, '192.168.2.238', '', '', 'N/A', NULL, '', '', '', ''),
(493, '192.168.2.239', 'RTR-1', 'Router MESS Baru Printing', 'Router Cisco', NULL, '', 'INTERNET', '', ''),
(494, '192.168.2.240', '', 'wireless', 'AP', NULL, '', '', '', ''),
(495, '192.168.2.241', '', 'wireless', 'AP', NULL, '', '', '', ''),
(496, '192.168.2.242', '', 'wireless', 'AP', NULL, '', '', '', ''),
(497, '192.168.2.243', '', 'wireless', 'AP', NULL, '', '', '', ''),
(498, '192.168.2.244', 'AP-01', 'WIRELESS AP Printing', 'AP', NULL, '', 'INTERNET', '', ''),
(499, '192.168.2.245', 'AP-02', 'WIRELESS AP MESS Baru', 'AP', NULL, '', 'INTERNET', '', ''),
(500, '192.168.2.246', 'AP-03', 'WIRELESS AP G Benang Baru', 'AP', NULL, '', 'INTERNET', '', ''),
(501, '192.168.2.247', 'AP-04', 'AP Cadangan', 'AP', NULL, '', '', '', ''),
(502, '192.168.2.248', 'AP-05', 'WIRELESS PUSAT / GARDU', 'AP', NULL, '', 'INTERNET', 'Posisi : Gardu Listrik dekat Laborat', ''),
(503, '192.168.2.249', 'AP-06', 'WIRELESS AP Maintenance', 'AP', NULL, '', 'INTERNET', '', ''),
(504, '192.168.2.250', 'AP-07', 'AP cadangan', 'AP', NULL, '', '', '', ''),
(505, '192.168.2.251', 'AP-08', 'WIRELESS AP Mess Knitting', 'AP', NULL, '', 'INTERNET', '', ''),
(506, '192.168.2.252', 'AP-09', 'WIRELESS AP Knitting', 'AP', NULL, '', 'INTERNET', '', ''),
(507, '192.168.2.253', 'AP-10', 'WIRELESS AP Greige', 'AP', NULL, '', 'INTERNET', '', ''),
(508, '192.168.2.254', 'AP-11', 'AP Cadangan', 'AP', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbljenishardware`
--

CREATE TABLE IF NOT EXISTS `tbljenishardware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `tbljenishardware`
--

INSERT INTO `tbljenishardware` (`id`, `jenis`) VALUES
(1, 'AKSES POINT'),
(2, 'BARCODE SCANNER'),
(3, 'HARDDISK'),
(4, 'KEYBOARD'),
(5, 'LAN CARD'),
(6, 'MAINBOARD'),
(7, 'MEMORY'),
(8, 'MONITOR TABUNG'),
(9, 'MONITOR LCD/LED'),
(10, 'MOUSE'),
(11, 'POWER SUPPLY'),
(12, 'PRINTER'),
(13, 'PROSESOR'),
(14, 'SCANNER'),
(15, 'SWITCH/HUB'),
(16, 'UPS'),
(17, 'LAIN-LAIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbljeniskerusakan`
--

CREATE TABLE IF NOT EXISTS `tbljeniskerusakan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kerusakan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbljeniskerusakan`
--

INSERT INTO `tbljeniskerusakan` (`id`, `kerusakan`) VALUES
(1, 'RINGAN'),
(2, 'BERAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblkategori`
--

CREATE TABLE IF NOT EXISTS `tblkategori` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tblkategori`
--

INSERT INTO `tblkategori` (`id`, `kategori`) VALUES
(1, 'HARDWARE'),
(2, 'SOFTWARE'),
(3, 'SISTEM ONLINE'),
(4, 'KONEKSI JARINGAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblopentiket`
--

CREATE TABLE IF NOT EXISTS `tblopentiket` (
  `notiket` varchar(8) NOT NULL,
  `dept` varchar(3) DEFAULT NULL,
  `tglopen` datetime DEFAULT NULL,
  `namapelapor` varchar(30) DEFAULT NULL,
  `permasalahan` text,
  `tglfollowup` datetime DEFAULT NULL,
  `penyelesaian` text,
  `admin` varchar(30) DEFAULT NULL,
  `catatan` text,
  `status` varchar(15) DEFAULT NULL,
  `tglclose` datetime DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `kategori` varchar(10) DEFAULT NULL,
  `kerusakan` varchar(10) DEFAULT NULL,
  `hardware` varchar(30) DEFAULT NULL,
  `nomesin` varchar(20) DEFAULT NULL,
  `mesin` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`notiket`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblopentiket`
--

INSERT INTO `tblopentiket` (`notiket`, `dept`, `tglopen`, `namapelapor`, `permasalahan`, `tglfollowup`, `penyelesaian`, `admin`, `catatan`, `status`, `tglclose`, `email`, `kategori`, `kerusakan`, `hardware`, `nomesin`, `mesin`) VALUES
('DIT0001', 'DIT', '2014-07-22 14:24:06', 'Nilo', 'komputer tidak bisa masuk windows', '2014-07-22 14:24:06', 'Restart komputer, cabut batre CMOS', 'Nilo', '', '4', '2014-07-22 14:24:06', '', '2', '1', '17', NULL, NULL),
('MKT1648', 'MKT', '2014-07-22 14:24:06', 'Nia', 'mouse selalu double klik, waluapun perintahnya hanya 1  kali klik.', '2014-07-22 14:24:06', 'bersihkan komponen hardwear mouse', 'eko', '', '2', '2014-07-22 14:30:06', 'nia@indotaichen.com', '1', '1', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpenggunaan`
--

CREATE TABLE IF NOT EXISTS `tblpenggunaan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDbarang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblspek`
--

CREATE TABLE IF NOT EXISTS `tblspek` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tglkeyin` date DEFAULT NULL,
  `dept` varchar(10) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `compname` varchar(20) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `OS` varchar(20) DEFAULT NULL,
  `OSversion` varchar(20) DEFAULT NULL,
  `mainboard` varchar(50) DEFAULT NULL,
  `prosesor` varchar(50) DEFAULT NULL,
  `ramtype` varchar(10) DEFAULT NULL,
  `rambyte` varchar(30) DEFAULT NULL,
  `HDD` int(11) DEFAULT NULL,
  `monitortype` varchar(6) DEFAULT NULL,
  `monitormerk` varchar(20) DEFAULT NULL,
  `ups` varchar(50) DEFAULT NULL,
  `printer` varchar(50) DEFAULT NULL,
  `catatan` text,
  `thnbeli` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

--
-- Dumping data untuk tabel `tblspek`
--

INSERT INTO `tblspek` (`ID`, `tglkeyin`, `dept`, `user`, `compname`, `IP`, `macaddress`, `OS`, `OSversion`, `mainboard`, `prosesor`, `ramtype`, `rambyte`, `HDD`, `monitortype`, `monitormerk`, `ups`, `printer`, `catatan`, `thnbeli`) VALUES
(3, '2013-04-08', 'DIT', 'komputer alarm', 'DIT8', '192.168.0.254', '00:24:88:10:18:45', 'WIN 8 x86', 'Profesional', 'ASUSTEK P5G41T-M LX', 'Intel Core 2 Duo E7500', 'DDR3', '2GB PC3 10700 (667MHz)', 80, 'LCD', 'Acer', 'APC RS500', '', '', '2011'),
(5, '2013-04-10', 'PPC', 'arie', 'arie', '192.168.0.98', '38-60-77-93-59-57', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', '', '', '-', '', '-'),
(6, '2013-04-10', 'PPC', 'HILDA', 'HILDA', '192.168.0.46', '00-11-11-1A-3E-37', 'WIN XP x86', 'Profesional', 'INTEL D845GVSR', 'INTEL PENTIUM 4', 'DDR', '512 MB', 80, 'TABUNG', '', '-', '-', '', '-'),
(7, '2013-04-10', 'PPC', 'RIZKY', 'PPC_166', '192.168.0.166', '1c-6f-65-60-9d-d3', 'WIN XP x86', 'Profesional', 'Gigabyte G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 250, 'LCD', '', '-', '-', '', '-'),
(8, '2013-04-10', 'PPC', 'DIRMAN', 'DIRMAN_PC', '192.168.0.106', '36-60-77-7C-82-F2', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', '-', '-', '-', '', '-'),
(9, '2013-04-10', 'PPC', 'SURYATI', 'SURYATI', '192.168.0.54', '38-60-77-7C-27-D5', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', '-', '-', 'EPSON LQ-2190 ', '', '-'),
(10, '2013-04-10', 'PPC', 'MUSLIMAH', 'ARIS', '192.168.0.47', '6C-F0-49-69-9E-C4', 'WIN XP x86', 'Profesional', 'Gigabyte G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '3 GB', 160, 'TABUNG', '-', '-', '-', '', '-'),
(11, '2013-04-10', 'PPC', 'DANAR', 'YOYOK_PPC', '192.168.0.56', '00-11-11-1A-3E-23', 'WIN XP x86', 'Profesional', 'INTEL D845GVSR', 'INTEL PENTIUM 4', 'DDR', '512 MB', 80, 'TABUNG', '-', '-', '-', '', '-'),
(12, '2013-04-10', 'PPC', 'ROSE', 'ROSE-049FB787B3', '192.168.0.34', '36-60-77-7C-27-81', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'TABUNG', '-', '-', '-', '', '-'),
(13, '2013-04-10', 'PPC', 'HUSNI', 'HUSNI', '192.168.0.44', '36-60-77-4E-8F-34', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', '-', '-', 'CANONE IP2770', '', '-'),
(14, '2013-04-10', 'PPC', 'ARIS', 'ARIS-PPC', '192.168.0.53', '38-60-77-7C-27-8D', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', '-', '-', 'LQ-2190', '', '-'),
(15, '2013-04-10', 'PPC', 'YOYOK', 'YOYOK_PPC', '192.168.0.49', '6C-F0-49-44-1C-10', 'WIN XP x86', 'Profesional', 'INTEL PENTIUM', 'INTEL PENTIUM', 'DDR2', '3 GB', 160, 'LCD', '-', '-', '-', '', '-'),
(16, '2013-04-10', 'PPC', 'HENDRA', 'HENDRA', '192.168.0.52', '00-24-01-EF-FB-32', 'WIN XP x86', 'Profesional', 'INTEL PENTIUM', 'INTEL PENTIUM', 'DDR2', '2 GB', 160, 'LCD', '-', '-', '-', '', '-'),
(17, '2013-04-10', 'PPC', 'RIZAL', 'MKT1', '192.168.0.97', '38-60-77-93-71-3B', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', '-', '-', '-', '', '-'),
(18, '2013-04-10', 'PPC', 'VINA', 'ROSS', '192.168.0.92', '', 'WIN XP x86', 'Profesional', 'INTEL DG41RQ', 'INTEL PENTIUM', 'DDR2', '3 GB', 160, 'TABUNG', '-', '-', '-', '', '-'),
(19, '2013-04-10', 'PPC', 'BAYU', 'BAYU', '192.168.0.164', '1c-6f-65-61-30-8D', 'WIN XP x86', 'Profesional', 'Gigabyte G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2,5 GB', 160, 'LCD', 'ADVANCE', '-', '-', '', '-'),
(20, '2013-04-10', 'PPC', '-', 'TEGUH-PPC', '192.168.0.60', '-', 'WIN XP x86', 'Profesional', 'INTEL(R)4 CPU 3.06 GHZ', 'INTEL PENTIUM 4', 'DDR', '3 GB', 260, 'TABUNG', '-', '-', '-', '', '-'),
(21, '2013-04-10', 'PPC', 'TUTI', 'TUTI', '192.168.0.168', '1c-6f-65-60-AD-A5', 'WIN XP x86', 'Profesional', 'INTEL G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 260, 'LCD', 'VIEW SONIC', '-', 'CANON IP2770', '', '-'),
(22, '2013-04-10', 'PPC', 'DIDIK', 'DIDIK', '192.168.0.167', '1c-6f-65-61-5A-54', 'WIN XP x86', 'Profesional', 'INTEL G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 260, 'LCD', 'ADVANCE', '-', '-', '', '-'),
(23, '2013-04-10', 'PPC', 'EKO', 'EKO', '192.168.0.45', '1c-6f-65-61-32-A9', 'WIN XP x86', 'Profesional', 'INTEL G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 260, 'LCD', 'ADVANCE', '-', '-', '', '-'),
(24, '2013-04-10', 'PPC', 'YUDI', 'YUDI', '192.168.0.58', '1c-6f-65-61-2E-B8', 'WIN XP x86', 'Profesional', 'INTEL G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 260, 'LCD', 'ADVANCE', '-', '-', '', '-'),
(25, '2013-04-10', 'PPC', 'ALEX', 'ALEX-PPC', '192.168.0.37', '1c-6f-65-61-32-9A', 'WIN XP x86', 'Profesional', 'INTEL G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 260, 'LCD', 'ADVANCE', '-', '-', '', '-'),
(26, '2013-04-10', 'PPC', 'HELSI', 'HELSI', '192.168.0.109', '38-60-77-87-8C-16', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', 'SAMSUNG', '-', 'EPSON LQ-2180', '', '-'),
(27, '2013-04-10', 'MKT', 'ARDY', 'ARDY', '192.168.0.29', '1c-6f-65-61-67-0D', 'WIN XP x86', 'Profesional', 'Gigabyte G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 160, 'LCD', 'LG', 'APC ES500', '-', '', '-'),
(28, '2013-04-11', 'LAB', 'LA1000-SERVER', 'LA1000-Master', '192.168.0.72', '1C-6F-65-95-59-A9', 'WIN XP x86', 'Profesional', 'GIGABYTE H55M-S2', 'INTEL CORE i3 530', 'DDR2', '2GB', 250, 'LCD', 'LG FLATRON L177WSB', 'ICA', 'EPSON LX300+II', '', ''),
(29, '2013-04-11', 'YDY', 'buka resep yarndye', 'yanrday', '192.168.2.192', '00-1E-90-CD-C0-53', 'WIN XP x86', 'Profesional', 'ECS 945GCT-M2', 'Intel Pentium D ', 'DDR2', '512MB PC2-5300 (333MHZ)', 80, 'TABUNG', 'SAMSUNG', 'ICA', 'EPSON LX300+II', '', ''),
(30, '2013-04-11', 'MKT', 'bunbun', 'bunbun', '192.168.0.215', '00-19-D1-24-10-30', 'WIN XP x86', 'Profesional', 'INTEL D945GCL', 'INTEL PENTIUM D915', 'DDR2', '512 MB', 160, 'LCD', 'SAMSUNG', 'APC ES500', '-', '', '-'),
(31, '2013-04-12', 'MKT', 'dadan', 'mkt', '192.168.0.91', '38-60-77-92-91-c1', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', 'SAMSUNG', 'APC ES 500', '-', '', '2012'),
(32, '2013-04-12', 'MKT', 'richard', 'richard-d3086ed.', '192.168.0.226', '00-19-d1-87-cc-a6', 'WIN XP x86', 'Profesional', 'intel D945GCNL', 'intel pentium D 925', 'DDR2', '2560 MB', 160, 'LCD', 'ViewSonic', 'APC ES500', '-', '', '-'),
(33, '2013-04-12', 'MKT', 'marcel', 'marcel', '192.168.0.61', '4C-72-B9-7B-AF-ED', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'TABUNG', 'SAMSUNG', 'APC ES 500', 'HP Deskjet 3940', '', '2012'),
(34, '2013-04-12', 'MKT', 'wasis', 'frans', '192.168.0.199', '00-04-75-DA-20-32', 'WIN XP x86', 'Profesional', 'intel D102GGCC2', 'intel pentium D 925', 'DDR2', '2048 MB', 160, 'LCD', 'LG', 'APC ES 500', '-', '', '-'),
(35, '2013-04-12', 'MKT', 'ronny', 'ronny', '192.168.0.39', 'E0-69-95-DD-20-56', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', 'SAMSUNG ', 'APC ES 500', 'HP LaserJet P1505', '', ''),
(36, '2013-04-12', 'MKT', 'ridwan', 'ridwan', '192.168.0.121', '38-60-77-93-46-03', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2GB', 250, 'LCD', 'LG', 'APC ES 500', '-', '', '2012'),
(37, '2013-04-12', 'MKT', 'noiviana', 'andri-97d5d9949.', '192.168.0.16', '00-24-8C-A7-75-A5', 'WIN XP x86', 'Profesional', 'asustek komputer INC P5KPL-AM SE', 'INTEL CORE 2 DUO', 'DDR2', '1024 MB', 160, 'LCD', 'LG', 'APC ES 500', '-', '', '-'),
(38, '2013-04-12', 'MKT', 'cucu', 'cucu', '192.168.0.40', '00-19-D1-84-6A-A0', 'WIN XP x86', 'Profesional', 'INTEL D945GCNL', 'INTEL PENTIUM E2140', 'DDR', '1536 MB', 80, 'TABUNG', 'GTC', 'APC ES 500', 'EPSON LQ-2180', '', '-'),
(39, '2013-04-13', 'LAB', 'Anang relawan', 'laborat-36e184f.', '192.168.0.74', '38-60-77-9C-16-AF', 'WIN XP x86', 'Profesional', 'INTEL DHW61WW', 'Core i3', 'DDR3', '2G', 260, 'LCD', 'LG ', 'APC', '', '', ''),
(40, '2013-04-13', 'LAB', 'lab-02', 'lab-02', '192.168.0.67', '40-61-86-97-CE-3B', 'WIN XP x86', 'Profesional', 'G31TM-P31', 'Core 2 Duo', 'DDR2', '2G', 260, 'LCD', 'LG', 'APC', 'HP DESKJET 1000', '', '2012'),
(41, '2013-04-13', 'LAB', 'Laborat', 'Laborat', '192.168.0.73', '00-1C-C0-DE-AC', 'WIN XP x86', 'Profesional', 'INTEL DG41RQ', 'CORE 2 DUO', 'DDR2', '1G', 260, 'LCD', 'LG', 'APC', 'HP DESKJET D1660', '', ''),
(42, '2013-04-13', 'LAB', 'SONIA', 'SONIA', '192.168.0.143', '00-24-01-ED-1F-CB', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'CORE I3', 'DDR3', '2G', 260, 'LCD', 'LG', 'APC', '', '', '2012'),
(43, '2013-04-13', 'LAB', 'lab-dcserver.', 'lab-dcserver.', '192.168.0.84', '', 'WIN XP x86', 'Profesional', 'INTEL DP55WB', 'CORE I7', 'DDR3', '3G', 500, 'LCD', 'ADVANCE', 'APC', '', '', '2012'),
(44, '2013-04-13', 'LAB', 'lab2', 'lab2', '192.168.0.72', '1C-6F-65-95-59-A9', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'CORE I3', 'DDR3', '2G', 260, 'LCD', 'LG', 'APC', 'LX300', '', ''),
(45, '2013-04-13', 'LAB', 'LAB-01', 'LAB-01', '192.168.0.70', '', 'WIN XP x86', 'Profesional', 'INTEL DG31PR', 'CORE 2 DUO', 'DDR2', '1G', 160, 'LCD', 'LG', 'APC', '', '', ''),
(46, '2013-04-15', 'LAB', 'WAHINI', 'LAB1', '192.168.0.71', '1C-6F-65-EC-E5-C8', 'WIN XP x86', 'Profesional', 'INTEL D845GVJR', 'CORE 2 DUO', 'DDR2', '2G', 250, 'LCD', 'LG', 'SURGE PROTECTION', '', '', ''),
(47, '2013-04-15', 'LAB', 'LA-601', 'LA-601', '192.168.0.86', '1C-6F-65-61-32-A8', 'WIN XP x86', 'Profesional', 'INTEL D845GVJR', 'CORE 2 DUO', 'DDR2', '2G', 250, 'TABUNG', 'SAMSUNG', 'ICA', 'LX-300+II', '', ''),
(48, '2013-04-15', 'LAB', 'DISPENSER', 'CASDSMG', '192.168.0.88', 'E0-69-95-DD-F3-DB', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'CORE I 3', 'DDR3', '2G', 250, 'LCD', 'LG', 'ICA', 'LX-300+II', '', ''),
(49, '2013-04-15', 'LAB', 'DISPENSER', 'ADMIN LA-600', '192.168.0.88', '-', 'WIN XP x86', 'Profesional', 'INTEL COLERON', 'COLERON', 'DDR', '512MB', 40, 'LCD', 'LG', '', '', '', ''),
(50, '2013-04-15', 'LAB', 'DISPENSER', 'CADSMG2', '192.168.0.87', '-', 'WIN XP x86', 'Home', 'INTEL D845GVJR', 'CORE 2 DUO', 'DDR2', '1G', 80, 'TABUNG', 'KVIEW', 'ICA', '', '', ''),
(51, '2013-04-16', 'TAS', 'dian', 'dian_tas', '192.168.0.80', '1c-6f-65-61-12-9c', 'WIN XP x86', 'Profesional', 'Gigabyte technologi G31M-ES2L', 'INTEL CORE  2 DUO', 'DDR2', '2048 MB', 160, 'LCD', 'SAMSUNG', 'APC ES 500', 'HP Deskjet D2566', '', '-'),
(52, '2013-04-16', 'DYE', 'dyieng', 'dyieng-03', '192.168.0.137', '1C-6F-65-EC-E0-68', 'WIN XP x86', 'Profesional', 'Gigabyte technologi G41MT-S2', 'INTEL CORE 2 DUO', 'DDR2', '2048 MB', 160, 'TABUNG', 'ViewSonic', '-', 'HP Deskjet J1000', '', '-'),
(53, '2013-04-16', 'DYE', 'dyeing', 'dyeing-01', '192.168.0.196', '38-60-77-7C-27-3C', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '1925 MB', 250, 'LCD', 'ACER', '-', 'HP Deksjet J1000', '', '-'),
(54, '2013-04-16', 'DYE', 'dyeing', 'dyeing-02', '192.168.0.77', '00-21-97-71-01-EC', 'WIN XP x86', 'Profesional', 'ECS G31T-M7', 'INTEL CORE 2 DUO E6500', 'DDR2', '512 MB', 160, 'LCD', 'LG', '-', 'HP DESKJET J1000', '', '-'),
(55, '2013-04-16', 'DYE', 'nyoman', 'user-PC', '192.168.0.138', '38-60-77-7C-25-3C', 'WIN XP x86', 'Profesional', 'intel DH61WW', 'intel core I3', 'DDR3', '1952 MB', 250, 'LCD', 'LG', '-', '-', '', '-'),
(56, '2013-04-16', 'DYE', 'siswanto', 'dyeing-731c9b09.', '192.168.0.75', '6C-62-6D-60-5F-39', 'WIN XP x86', 'Profesional', 'MICRO-STAR INTERNATIONAL G31TM-P31 (MS7529)', 'INTEL CORE 2 DUO', 'DDR2', '1024 MB', 160, 'LCD', 'SAMSUNG', '-', 'HP DESKJET D1360', '', '-'),
(57, '2013-04-16', 'DYE', 'jejen', 'jejen', '192.168.0.78', '38-60-77-92-a5-30', 'WIN XP x86', 'Profesional', 'intel DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', 'SAMSUNG', '-', 'HP DEKJET D1660', '', '-'),
(58, '2013-04-26', 'GRK', 'GARUK-02', 'GARUK-02', '192.168.0.135', '', 'WIN XP x86', 'Profesional', 'INTEL DG31PR', 'INTEL CORE 2 DUO', 'DDR2', '1G', 160, 'TABUNG', 'VIEWSONIC', 'APC', '', '', ''),
(59, '2013-04-26', 'MKT', 'pendi', 'pendi', '192.168.0.36', '00-19-D1-84-6A-47', 'WIN XP x86', 'Profesional', 'Intel D945GCNL', 'Intel Pentium E2140', 'DDR2', '512 MB', 160, 'TABUNG', 'ViewSonic', 'Backup-ups ES 500', 'Hp Deskjet D2666', '', '-'),
(60, '2013-04-26', 'FIN', 'andi ermansyah', 'andie', '192.168.2.27', '00-1C-C0-63-9B-B2', 'WIN XP x86', 'Profesional', 'Intel DG31PR', 'Intel Core 2 Duo E6500', 'DDR2', '1GB', 160, 'LCD', 'ViewSonic', 'Backup-ups ES500', '-', '', '-'),
(61, '2013-04-26', 'FIN', 'andie Yanuarsyah', 'finishing', '192.168.2.20', '00-1C-C0-63-A3-99', 'WIN XP x86', 'Profesional', 'Intel DG31PR', 'Intel core 2 duo E6500', 'DDR2', '1524 MB', 160, 'LCD', 'LG', '-', '-', '', '-'),
(62, '2013-04-26', 'FIN', 'kristian budiarto', 'dit_2-1', '192.168.2.23', '00-21-97-71-08-3F', 'WIN XP x86', 'Profesional', 'ECS G31T-M7', 'Intel core 2 duo', 'DDR2', '2 GB', 160, 'LCD', 'ACER', 'Backup-ups ES500', '-', '', '-'),
(63, '2013-04-26', 'FIN', 'yayan', 'FIN-05', '192.168.2.24', '00-1C-C0-73-2B-1A', 'WIN XP x86', 'Profesional', 'Intel DG31PR', 'Intel core 2 duo', 'DDR2', '1 GB', 80, 'LCD', 'ViewSonic', 'Backup-ups ES500', 'HP Deskjet j1000', '', '-'),
(64, '2013-04-26', 'QCF', 'mamik', 'qcf-aefd940ebf7.', '192.168.2.58', '00-1C-C0-01-D3-E4', 'WIN XP x86', 'Profesional', 'Intel DG31PR', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 80, 'LCD', 'ACER', 'ICA', 'HP DESKJET 3920', '', '-'),
(65, '2013-04-26', 'QCF', 'tusil', 'TUSIL_QCF05.', '192.168.2.59', '00-03-99-88-46-B9', 'WIN XP x86', 'Profesional', 'intel D845GVSR', 'INTEL PENTIUM 4', 'DDR', '2 GB', 80, 'LCD', 'LG', 'ICA', '-', '', '-'),
(66, '2013-04-26', 'FIN', 'ade', 'ade-finishing.', '192.168.2.22', '00-1C-C0-63-A2-56', 'WIN XP x86', 'Profesional', 'intel DG31PR', 'Intel core 2 duo E6500', 'DDR2', '2 GB', 160, 'LCD', 'LG', '-', '-', '', '-'),
(67, '2013-04-26', 'QCF', 'cristin', 'cristin-qcf12.', '192.168.2.66', '38-60-77-87-7F-44', 'WIN XP x86', 'Profesional', 'Intel DH61WW', 'Intel ore I3', 'DDR3', '2 GB', 250, 'LCD', 'ACER', '-', '-', '', '-'),
(68, '2013-04-26', 'QCF', 'dani', 'dadan.', '192.168.2.71', '1C-6F-65-68-1D-D7', 'WIN XP x86', 'Profesional', 'GIGABYTE TECHNOLOGY G41MT-S2', 'INTEL CORE 2 DUO', 'DDR2', '2 GB', 60, 'LCD', 'ViewSonic', 'back-ups RS 500', '-', '', '-'),
(69, '2013-04-26', 'QCF', 'ali maulana yusuf', 'ali.', '192.168.2.65', '20-CF-30-AC-C6-CD', 'WIN XP x86', 'Profesional', 'ASUSTEK computer P5G41T-MLX', 'INTEL CORE 2 DUO', 'DDR2', '2GB', 160, 'LCD', 'LG', 'BACKUP-UPS ES500', 'HP DESKJET D2666', '', '-'),
(70, '2013-04-30', 'MKT', 'fendi chen', 'Aan.', '192.3168.0.25', '00-19-D1-84-9B-AC', 'WIN XP x86', 'Profesional', 'InteL D945GCNL', 'InteL Pentium E2140', 'DDR2', '512 MB', 80, 'TABUNG', 'ViewSonic', '-', '-', '', '-'),
(71, '2013-05-03', 'TAS', 'komp.sublimation print', 'alu', '192.168.2.50', '-', 'WIN XP x86', 'Profesional', 'intel D845WN', 'intel pentium 4', 'SDRAM', '512 MB', 40, 'TABUNG', 'GTC', '-', 'HP Deskjet 3745', '', '-'),
(72, '2013-05-16', 'PRT', 'lia', 'user', '192.168.0.3.49', '', 'WIN XP x86', 'Profesional', 'INTEL G31TM-P31', 'INTEL CORE 2 DUO', 'DDR2', '1G', 260, 'LCD', 'VIEW SONIC', '', '', '', ''),
(73, '2013-05-16', 'PRT', 'LAB', 'user', '192.168.3.46', '00-27-0E-23-EC-CF', 'WIN XP x86', 'Profesional', 'INTEL  P31', 'INTEL CORE 2 DUO', 'DDR2', '2G', 260, 'LCD', 'SAMSUNG', 'APC', 'HP DESKJET D2666', '', ''),
(74, '2013-05-16', 'PRT', 'fendi-Pc', 'fendi-pc', '192.168.3.45', '00-1C-C0-CC-4B-7D', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2GB', 500, 'LCD', 'DELL', 'BACK-UPS ES 500', '-', '', '-'),
(75, '2013-05-16', 'GKJ', 'gkjp2', 'gkjp2', '192.168.2.142', '00-11-5B-32-D4-35', 'WIN XP x86', 'Profesional', 'PM800-M2', 'INTEL PENTIUM 4', 'DDR', '448MB', 40, 'TABUNG', 'GLC', 'APC', '', '', ''),
(76, '2013-05-16', 'PRT', 'PRINTING1-pc', 'PRINTING1-Pc', '192.168.3.8', '00-1C-C0-CC-4B-3E', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'SAMSUNG', 'BACK-UPS ES 500', 'PRINTER HP COLOR LASERJET 5550dn', '', '-'),
(77, '2013-05-16', 'GKJ', 'GDB', 'GDB-06', '192.168.2.132', '00-26-18-E1-19-87', 'WIN XP x86', 'Profesional', 'INTEL', 'INTEL CORE 2 DUO', 'DDR2', '1G', 260, 'TABUNG', 'MULTIMAX', '', 'EPSON LX-300+II', '', ''),
(78, '2013-05-16', 'PRT', 'citra', 'citra-pc', '192.168.3.41', '00-1C-C0-CC-4B-45', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(79, '2013-05-16', 'PRT', 'NURI', 'Nury12-PC', '192.168.3.43', '00-1C-C0-CC-60-37', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(80, '2013-05-16', 'PRT', 'vetty', 'ilhan', '192.168.3.5', '00-19-d1-84-9b-c1', 'WIN XP x86', 'Profesional', 'INTEL D945GCNL', 'INTEL DUAL CORE', 'DDR2', '1G', 250, 'LCD', 'VIEW SONIC', '', 'HP DESKJET D2666', '', ''),
(81, '2013-05-16', 'PRT', 'PRINTING10-PC', 'PRINTING10-PC', '192.168.3.42', '00-1C-C0-CC-4B-59', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(82, '2013-05-16', 'PRT', 'PRINTING10-Pc', 'PRINTING10-PC', '192.168.3.42', '00-1C-C0-CC-4B-59', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(83, '2013-05-16', 'PRT', 'PRINTING10-Pc', 'PRINTING10-pC', '192.168.3.42', '00-1C-C0-CC-4B-59', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(84, '2013-05-16', 'PRT', '-', 'PRINTING10-PC', '192.168.3.42', '00-1C-C0-CC-4B-59', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(85, '2013-05-16', 'PRT', 'waris', 'user', '192.168.3.47', '40-61-86-be-30-16', 'WIN XP x86', 'Profesional', 'INTEL D945GCNL', 'intel dual core', 'DDR2', '1G', 250, 'LCD', 'VIEW SONIC', '', '', '', ''),
(86, '2013-05-16', 'PRT', '-', 'PRINTING10-PC', '192.168.3.42', '00-1C-C0-CC-4B-59', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(87, '2013-05-16', 'PRT', 'NON USER', 'PRINTING10-PC', '192.168.3.42', '00-1C-C0-CC-4B-59', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(88, '2013-05-16', 'PRT', 'USER', 'PRINTING10-PC', '192.168.3.42', '00-1C-C0-CC-4B-59', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(89, '2013-05-16', 'PRT', 'ady', 'user', '192.168.3.10', '1c-6f-65-e8-10-fb', 'WIN XP x86', 'Profesional', 'INTEL G41MT-M2', 'INTEL PENTIUM 4', 'DDR', '2G', 260, 'LCD', 'VIEW SONIC', '', '', '', ''),
(90, '2013-05-16', 'GDB', 'SIRAJUDIN', 'GDB-4', '192.168.3.3', '00:1C:C0:73:2F:7A', 'WIN XP x86', 'Profesional', 'INTEL', 'INTEL CORE 2 DUO', 'DDR2', '1G', 160, 'TABUNG', 'VIEW SONIC', 'APC', '', '', ''),
(91, '2013-05-16', 'PRT', 'ANNA', 'herdi-printing', '192.168.3.40', '00-27-0E-23-AF-BC', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(92, '2013-05-16', 'PRT', 'NITA', 'PRT-PC', '192.168.3.55', '00-1C-C0-CC-4B-75', 'WIN 7 x86', 'Profesional', 'Intel Dekstop DG43RK', 'Intel Core2Quard', 'DDR3', '2 GB', 500, 'LCD', 'DELL', 'BACKUP-UPS ES 500', '-', '', '-'),
(93, '2013-05-16', 'GDB', 'lucia2', 'asmentppc', '192.168.2.14', '00-65-6f-65-3c-d9-ea', 'WIN XP x86', 'Profesional', 'intel', 'INTEL CORE 2 DUO', 'DDR2', '2g', 160, 'LCD', 'samsung', 'apc', '', '', ''),
(94, '2013-05-16', 'GDB', 'BAMBANG', 'BAMBANG', '192.168.3.12', '6C-F0-49-A7-BA-28', 'WIN XP x86', 'Profesional', 'GYGABYTE G31ME-S2L', 'INTELCORE 2 DUO', 'DDR2', '1G', 160, 'TABUNG', 'GLC', '', '', '', ''),
(95, '2013-05-16', 'PRT', 'ismi', 'printing', '192.168.3.39', '40-61-86-BE-30-6F', 'WIN XP x86', 'Profesional', 'MICRO-STAR INTERNATIONAL G31TM-P31', 'intel core 2 duo', 'DDR2', '1 GB', 160, 'LCD', 'LG', 'BACKUP-UPS ES 500', '-', '', '-'),
(96, '2013-05-16', 'GDB', 'tia', 'gdg-01', '192.168.3.15', '00-1c--c0-63-9b-7b', 'WIN XP x86', 'Profesional', 'intel DG31PR', 'INTEL CORE 2 DUO', 'DDR2', '1G', 160, 'LCD', 'ADVANCE', '', 'EPSON LX-300+II', '', ''),
(97, '2013-05-16', 'PRT', 'agung', 'user', '192.168.3.38', '00-27-0e-23-b0-e0', 'WIN XP x86', 'Profesional', 'MICRO-STAR INTERNATIONAL G31TM-P31', 'intel core 2 duo', 'DDR2', '1 gb', 160, 'LCD', 'samsung', 'backup-ups es 500', 'Hp deskjet D2666', '', '-'),
(98, '2013-05-16', 'GDB', 'uun', 'gdb-05', '192.168.3.14', '00-1c-c0-63-9b-8e', 'WIN XP x86', 'Profesional', 'intel dg31pr', 'INTEL CORE 2 DUO', 'DDR2', '1G', 160, 'TABUNG', 'VIEW SONIC', 'APC', 'EPSON LX-300-II', '', ''),
(99, '2013-05-16', 'GKJ', 'JASMANTO', 'gdg-05', '192.168.3.26', '00-1c-c0-63-9e-a6', 'WIN XP x86', 'Profesional', 'intel', 'core 2 duo', 'DDR2', '1g', 160, 'TABUNG', 'VIEW SONIC', 'APC', '', '', ''),
(100, '2013-05-16', 'GKJ', 'novi', 'GKJ-PRODUKSI', '192.168.3.24', '4C-72-B9-B1-C1-CE', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', 'GTC', 'BACKUP-UPS RS 500', '-', '', '-'),
(101, '2013-05-16', 'TSP', 'halimah', 'halimah', '192.168.3.25', '00-19-21-23-5a-75', 'WIN XP x86', 'Profesional', 'PAM800PRO-M2', 'INTEL PENTIUM 4', 'DDR', '512', 80, 'LCD', 'LG', 'APC', 'HP DESKJET D1360', '', ''),
(102, '2013-05-16', 'GKJ', 'gadis', 'gadis', '192.168.3.22', '1c-6f-65-63-70', 'WIN XP x86', 'Profesional', 'intel g31m-es2l', 'intel core 2 duo', 'DDR2', '2g', 500, 'LED', 'lg', 'apc', 'canon ip2770', '', ''),
(103, '2013-05-16', 'GKJ', 'iid', 'user', '192.168.3.23', '00-1e-90-e2-37-c5', 'WIN XP x86', 'Profesional', 'ECS 945GCT', 'INTEL PENTIUM ', 'DDR2', '1536 MB', 80, 'TABUNG', 'blast', 'ica', 'canone ip 2770', '', '-'),
(104, '2013-05-16', 'GDB', 'ratna', 'ratna', '192.168.3.13', 'e8-40-f2-06-2e-d6', 'WIN XP x86', 'Profesional', 'intel dh61ww', 'intel core i3', 'DDR3', '2g', 250, 'LCD', 'lg', 'ica', 'cannon ip2770', '', ''),
(105, '2013-05-16', 'MTC', 'indra', 'indra', '192.168.2.162', '38-60-77-7c-25-39', 'WIN 7 x86', 'Ultimate', 'intel dh61ww', 'intel core i3', 'DDR3', '4g', 500, 'LCD', 'lg', '', 'epson l100', '', ''),
(106, '2013-05-16', 'MTC', 'yuni', 'yuni', '192.168.2.164', 'E8-40-F2-3C-24-DA', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', 'VIEWSONIC', 'ICA', 'HP DESWKJET 3535', '', '-'),
(107, '2013-05-16', 'MTC', 'rifai', 'mtc-ad246efe975.', '192.168.2.167', 'E8-40-F2-3C-26-D1', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2 GB', 250, 'LCD', 'LG', 'ICA', '-', '', '-'),
(108, '2013-05-16', 'MTC', 'ria', 'ria', '192.168.2.163', '00-e5-49-10-de-35', 'WIN XP x86', 'Profesional', 'gygabyte g41mt-s2p', 'intel core 2 duo', 'DDR2', '2g', 250, 'TABUNG', 'multimax', '', '', '', ''),
(109, '2013-05-16', 'MTC', 'pandi', 'pandi', '192.168.2.168', 'd0-27-88-b4-52-14', 'WIN XP x86', 'Profesional', 'intel dh61ww', 'core i3', 'DDR3', '2g', 250, 'LCD', 'lg', 'apc', '', '', ''),
(110, '2013-05-17', 'QAI', 'AGUS', 'QAI-02', '192.168.2.37', '1C-AF-F7-7C-FD-77', 'WIN XP x86', 'Profesional', 'INTEL DG41RQ', 'INTEL CORE 2 DUO', 'DDR2', '1G', 320, 'LCD', 'GIC ', 'APC', 'HP DESKJET INKADVANCE', '', ''),
(111, '2013-05-17', 'QAI', 'FARAH', 'FARAH', '192.168.2.40', '1C-6F-65-68-1E-58', 'WIN XP x86', 'Profesional', 'GYGABITE G41MT-S2', 'INTEL CORE 2 DUO', 'DDR2', '2G', 250, 'LCD', 'SAMSUNG', 'APC', '', '', ''),
(112, '2013-05-17', 'QAI', 'NANI', 'MASPC', '192.168.2.39', '50-E5-49-29-FA9A', 'WIN XP x86', 'Profesional', 'INTEL', 'INTEL CORE 2 DUO', 'DDR2', '2G', 250, 'LCD', 'LG', 'APC', '', '', ''),
(113, '2013-05-17', 'QAI', 'GAMMA', 'QAI', '192.168.2.41', '90-2B-34-4C-C5-81', 'WIN XP x86', 'Profesional', 'GYGABITE H61M-DS2', 'INTEL CORE I3', 'DDR3', '2G', 250, 'LCD', 'LG', 'APC', '', '', ''),
(114, '2013-05-17', 'QAI', 'fitri', 'RIKKY', '192.168.2.42', '00-24-01-31-2A-2D', 'WIN XP x86', 'Profesional', 'INTEL D865GBF', 'INTEL COLERON', 'DDR', '640MB', 40, 'TABUNG', 'GIC', 'APC', '', '', ''),
(115, '2013-05-17', 'MAS', 'ika', 'ika', '192.168.2.30', '4C-72-B9-B1-C1-CB', 'WIN XP x86', 'Profesional', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR3', '2G', 250, 'TABUNG', 'LG', 'APC', '', '', ''),
(116, '2013-05-17', 'MAS', 'RUDIYANTO', 'RUDIYANTO', '192.168.2.29', '1C-6F-65-EC-1B-9B', 'WIN XP x86', 'Profesional', 'GYGABITE G41MT-S2', 'INTEL CORE 2 DUO', 'DDR2', '2G', 250, 'LCD', 'SAMSUNG', 'APC', 'HP DESKJET D2466', '', ''),
(117, '2013-05-17', 'GRK', 'brushing', 'ANIS', '192.168.2.11', '00-1C-C0-63-9F-3C', 'WIN XP x86', 'Profesional', 'INTEL DG31PR', 'INTEL CORE 2 DUO', 'DDR2', '1 G', 160, 'TABUNG', 'VIEW SONIC', 'ICA', '', '', ''),
(118, '2013-05-17', 'GRK', 'andre', 'brs-05', '192.168.2.53', '90-2B-343-B0-B1-C5', 'WIN XP x86', 'Profesional', 'GIGABYTE H61M-DS2', 'INTEL CORE I3', 'DDR3', '2 G', 250, 'LCD', 'LG', 'APC', 'HP DESKJET D2666', '', ''),
(119, '2013-05-17', 'GRK', 'yayan', 'yayan', '192.168.2.10', '00-11-5b-2e-59-0c', 'WIN XP x86', 'Profesional', 'INTEL PM800-M2', 'INTEL PENTIUM 4', 'DDR', '512', 40, 'TABUNG', 'GIC', 'APC', '', '', ''),
(120, '2013-05-17', 'MAS', 'UNKNOWN USER', 'EVI', '192.168.2.28', '1C-6F-65-EE-7D-9D', 'WIN XP x86', 'Profesional', 'INTEL', 'INTEL CORE I3', 'DDR2', '2G', 160, 'LCD', 'LG', 'APC', '', '', ''),
(121, '2013-05-17', 'GRK', 'BUNTIAN', 'buntian-pc', '192.168.2.28', '00:1C:C0:73:2D:10', 'WIN XP x86', 'Profesional', 'INTEL ', 'INTEL CORE 2 DUO', 'DDR2', '1 G', 160, 'LCD', 'VIEW SONIC', 'APC', '', '', ''),
(122, '2013-05-17', 'PCS', 'anty', 'mudiono', '192.168.2.49', '50-E5-49-A3-FB-AD', 'WIN XP x86', 'Profesional', 'GIGABYTE G41MT-S2PT', 'INTEL CORE 2 DUO', 'DDR2', '2G', 160, 'TABUNG', 'VIEW SONIC', 'APC', 'HP DEKSJET 2000', '', ''),
(123, '2013-05-17', 'PCS', 'mudiono', 'anty', '192.168.2.46', '6c-f0-49-a8-62-cf', 'WIN XP x86', 'Profesional', 'GIGABYTE G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '1G', 160, 'TABUNG', 'SPC', 'APC', '', '', ''),
(124, '2013-05-17', 'PCS', 'ERFI', 'ERFI', '192.168.2.52', '00-16-EC-2C-FC-CC', 'WIN XP x86', 'Profesional', 'INTEL P4M800-8237', 'INTEL COLERON', 'DDR', '1G', 40, 'TABUNG', 'GIC', 'APC', 'EPSON LX-300+II', '', ''),
(125, '2013-05-17', 'PCS', 'SHARRAH', 'PCS', '192.168.2.50', '6C-F0-49-A7-2C-47', 'WIN XP x86', 'Profesional', 'GIGABYTE G31M-ES2L', 'INTEL CORE 2 DUO', 'DDR2', '1G', 40, 'LCD', 'LG', '', 'EPSON FX-1170', '', ''),
(126, '2013-05-17', 'PCS', 'salis', 'SALIS', '192.168.2.47', '6C-F0-49-E3-43-42', 'WIN XP x86', 'Profesional', 'GIGABYTE G31M-ES2L', 'INTEL DUAL CORE', 'DDR2', '1G', 160, 'LCD', 'VIEW SONIC', 'APC', 'HP DESKJET 2000', '', ''),
(127, '2013-05-22', 'DYE', 'KETUT', 'WINDOWS_7', '192.168.0.197', '', 'WIN 7 x86', 'Ultimate', 'INTEL DH61WW', 'INTEL CORE I3', 'DDR2', '2G', 250, 'LCD', 'SAMSUNG', 'APC', 'HP DESKJET 1000', '', '2013'),
(128, '2013-10-11', 'MKT', 'Septy', 'septy', '192.168.0.43', '00:11:11:35:F4:5C', 'WIN XP x86', 'Profesional', '-', 'Intel Pentium 4', 'DDR', '768 MB', 40, 'TABUNG', '', '', '', 'septy sudah resign belum tau mau buat siapa', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblstatus`
--

CREATE TABLE IF NOT EXISTS `tblstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tblstatus`
--

INSERT INTO `tblstatus` (`id`, `status`) VALUES
(1, 'OPEN'),
(2, 'IN PROGRESS'),
(3, 'PENDING'),
(4, 'CLOSE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `ID_UNIQUE` (`ID`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `tbluser`
--

INSERT INTO `tbluser` (`ID`, `username`, `password`, `nama`, `status`) VALUES
(1, 'uwi', '64e623a92934d8dda6483c1d79eaf782', 'bintoro', 'admin'),
(3, 'manager', '1d0258c2440a8d19e716292b231e3190', 'setiawan tjoa', 'user'),
(4, 'eko', '027dc74f0bbf09a61a36ec7f0d9e08ca', 'Eko Galih apriyanto', 'admin'),
(5, 'mamik', 'd0239e1d2f47577ed85376e8b64af0a6', 'mamik', 'admin'),
(7, 'dit', '704b037a97fa9b25522b7c014c300f8a', 'DIT', 'admin'),
(8, 'zaelani', 'cb3d0a7cb1192da69e7fc8c344aa618e', 'zaelani', 'admin'),
(9, 'nilo', '123', 'nilo', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempgrafik0`
--

CREATE TABLE IF NOT EXISTS `tempgrafik0` (
  `status` varchar(20) DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tempgrafik0`
--

INSERT INTO `tempgrafik0` (`status`, `jumlah`) VALUES
('Follow up', '96.26'),
('Close', '93.46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempgrafik1`
--

CREATE TABLE IF NOT EXISTS `tempgrafik1` (
  `kategori` varchar(20) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tempgrafik1`
--

INSERT INTO `tempgrafik1` (`kategori`, `jumlah`) VALUES
('Hardware', 8),
('Software', 7),
('Jaringan', 7),
('Online', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempgrafikbatang1`
--

CREATE TABLE IF NOT EXISTS `tempgrafikbatang1` (
  `status` varchar(20) DEFAULT NULL,
  `jmh1` double(10,2) DEFAULT NULL,
  `jmh2` double(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tempgrafikbatang1`
--

INSERT INTO `tempgrafikbatang1` (`status`, `jmh1`, `jmh2`) VALUES
('Follow up', 6.25, 93.75),
('Close Ringan', 9.09, 90.91),
('Close Berat', 0.00, 100.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
