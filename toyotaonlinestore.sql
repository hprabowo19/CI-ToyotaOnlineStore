-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2017 at 06:51 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toyotaonlinestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
`berita_id` int(11) NOT NULL,
  `berita_kategori_id` int(11) DEFAULT NULL,
  `judul` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `isi` longtext NOT NULL,
  `tanggal` datetime NOT NULL,
  `jenis` enum('berita','halaman') NOT NULL,
  `status` enum('draft','publish') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`berita_id`, `berita_kategori_id`, `judul`, `slug`, `isi`, `tanggal`, `jenis`, `status`, `user_id`) VALUES
(5, NULL, 'Kontak Kami', 'kontak-kami', '<p><strong>Nama : Nurhayat Muhammad Aghna</strong></p>\r\n\r\n<p><strong>Sms / Telp&nbsp;: 081321027019</strong></p>\r\n\r\n<p><strong>WhatsApp : 085798947019</strong></p>\r\n\r\n<p><strong>Email : nurhayataghna@gmail.com</strong></p>\r\n', '2016-05-13 14:54:33', 'halaman', 'publish', 4),
(7, NULL, 'Kredit Mobil', 'konfirmasi-pembayaran', '<p><strong>Syarat-syarat yang harus di penuhi :</strong></p>\r\n\r\n<ol>\r\n	<li>Fotocopy KTP Suami &amp; Istri.</li>\r\n	<li>Fotocopy Kartu Keluarga.</li>\r\n	<li>Fotocopy PBB Rumah.&nbsp;<em>* tidak perlu jika status rumah sewa / kontrak</em></li>\r\n	<li>Fotocopy Rekening Tabungan / Koran 3 bulan terakhir.</li>\r\n	<li>Fotocopy Slip Gaji Terakhir.&nbsp;<em>* khusus karyawan</em></li>\r\n</ol>\r\n\r\n<p>Untuk lebih jelasnya anda bisa menghubungi Marketing Mobil Toyota Bandung di nomor&nbsp;<strong>081321027019 </strong>atau<strong>&nbsp;085798947019</strong></p>\r\n', '2016-05-13 14:55:07', 'halaman', 'publish', 4),
(12, NULL, 'Catatan', 'daftar-harga-mobil-toyota-bandung', '<table border="0" cellpadding="0" cellspacing="0" style="width:390px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Note :</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1. Harga sewaktu-waktu dapat berubah.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2. Hilux, Dyna, Hi Ace sudah termasuk Keur.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3. Harga tidak termasuk PilNop</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2017-10-21 19:47:34', 'halaman', 'draft', 1),
(11, NULL, 'Bonus ?', 'bonus', '<p><strong>Bonus yang di dapat:</strong></p>\r\n\r\n<ol>\r\n	<li>Cover jok karpet dasar anti karat</li>\r\n	<li>Kaca film</li>\r\n	<li>Talang air</li>\r\n	<li>Astra world 5 tahun</li>\r\n	<li>Free jasa service 4 tahun</li>\r\n	<li>Garansi mesin 3 tahun</li>\r\n	<li>Garansi aki 1 tahun</li>\r\n</ol>\r\n', '2017-10-28 21:36:23', 'halaman', 'publish', 4),
(10, NULL, 'Alur Proses', 'alur-proses', '<p><strong>Alur proses pemesanan:</strong></p>\r\n\r\n<ol>\r\n	<li>SPK (Surat Pemesanan Kendaraan)</li>\r\n	<li>Calon Konsumen Memberikan Booking Fee Rp. 1.000.000 - Rp. 5.000.000</li>\r\n	<li>Proses Survey Leasing Dalam Kota 3 Hari Kerja, Luar Kota 5-7 Hari Kerja</li>\r\n	<li>Setelah Ada Persetujuan / PO Leasing</li>\r\n	<li>Masukan Kembali sisa Total Dp nya</li>\r\n	<li>Buka Faktur : Jika PO Leasing Sudah Ada, Uang Sisa Dp Sudah Masuk, Dan Unit Sudah Matching</li>\r\n	<li>Delivery barang 7 hari dari pelunasan Dp</li>\r\n</ol>\r\n', '2017-10-28 21:39:08', 'halaman', 'publish', 4);

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategori`
--

CREATE TABLE IF NOT EXISTS `berita_kategori` (
`berita_kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita_kategori`
--

INSERT INTO `berita_kategori` (`berita_kategori_id`, `nama_kategori`, `slug`) VALUES
(4, 'Penjualan Mobil', 'humor'),
(5, 'Awas Penipuan', 'awas-penipuan');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE IF NOT EXISTS `konfigurasi` (
`konfigurasi_id` int(11) NOT NULL,
  `nama_key` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `tipe` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`konfigurasi_id`, `nama_key`, `isi`, `tipe`) VALUES
(1, 'nama-aplikasi', 'Online Store', 'umum'),
(2, 'company-name', 'Toyota ', 'umum'),
(3, 'company-address', 'Jl Jendral Gatot Subroto No.109 - 111, Samoja, Batununggal, Kota Bandung, Jawa Barat 40273', 'umum'),
(4, 'company-phone', '(022) 7312994', 'umum'),
(5, 'company-email', 'nurhayataghna@gmail.com', 'umum'),
(6, 'tema-aktif', 'lte', 'tema'),
(7, 'tema-logo', 'logo-c4ca4238a0b923820dcc509a6f75849b.JPG', 'tema');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_kota`
--

CREATE TABLE IF NOT EXISTS `lokasi_kota` (
`kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=502 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi_kota`
--

INSERT INTO `lokasi_kota` (`kota_id`, `provinsi_id`, `nama_kota`) VALUES
(17, 1, 'Badung'),
(32, 1, 'Bangli'),
(94, 1, 'Buleleng'),
(114, 1, 'Denpasar'),
(128, 1, 'Gianyar'),
(161, 1, 'Jembrana'),
(170, 1, 'Karangasem'),
(197, 1, 'Klungkung'),
(447, 1, 'Tabanan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(334, 2, 'Pangkal Pinang'),
(106, 3, 'Cilegon'),
(232, 3, 'Lebak'),
(331, 3, 'Pandeglang'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(175, 4, 'Kaur'),
(183, 4, 'Kepahiang'),
(233, 4, 'Lebong'),
(294, 4, 'Muko Muko'),
(379, 4, 'Rejang Lebong'),
(397, 4, 'Seluma'),
(39, 5, 'Bantul'),
(135, 5, 'Gunung Kidul'),
(210, 5, 'Kulon Progo'),
(419, 5, 'Sleman'),
(501, 5, 'Yogyakarta'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(189, 6, 'Kepulauan Seribu'),
(77, 7, 'Boalemo'),
(88, 7, 'Bone Bolango'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(361, 7, 'Pohuwato'),
(50, 8, 'Batang Hari'),
(97, 8, 'Bungo'),
(156, 8, 'Jambi'),
(194, 8, 'Kerinci'),
(280, 8, 'Merangin'),
(293, 8, 'Muaro Jambi'),
(393, 8, 'Sarolangun'),
(442, 8, 'Sungaipenuh'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(471, 8, 'Tebo'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(34, 9, 'Banjar'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(115, 9, 'Depok'),
(126, 9, 'Garut'),
(149, 9, 'Indramayu'),
(171, 9, 'Karawang'),
(211, 9, 'Kuningan'),
(252, 9, 'Majalengka'),
(332, 9, 'Pangandaran'),
(376, 9, 'Purwakarta'),
(428, 9, 'Subang'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(440, 9, 'Sumedang'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(37, 10, 'Banjarnegara'),
(41, 10, 'Banyumas'),
(49, 10, 'Batang'),
(76, 10, 'Blora'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(105, 10, 'Cilacap'),
(113, 10, 'Demak'),
(134, 10, 'Grobogan'),
(163, 10, 'Jepara'),
(169, 10, 'Karanganyar'),
(177, 10, 'Kebumen'),
(181, 10, 'Kendal'),
(196, 10, 'Klaten'),
(209, 10, 'Kudus'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(344, 10, 'Pati'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(352, 10, 'Pemalang'),
(375, 10, 'Purbalingga'),
(377, 10, 'Purworejo'),
(380, 10, 'Rembang'),
(386, 10, 'Salatiga'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(427, 10, 'Sragen'),
(433, 10, 'Sukoharjo'),
(445, 10, 'Surakarta (Solo)'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(476, 10, 'Temanggung'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(31, 11, 'Bangkalan'),
(42, 11, 'Banyuwangi'),
(51, 11, 'Batu'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(80, 11, 'Bojonegoro'),
(86, 11, 'Bondowoso'),
(133, 11, 'Gresik'),
(160, 11, 'Jember'),
(164, 11, 'Jombang'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(222, 11, 'Lamongan'),
(243, 11, 'Lumajang'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(251, 11, 'Magetan'),
(256, 11, 'Malang'),
(255, 11, 'Malang'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(317, 11, 'Pacitan'),
(330, 11, 'Pamekasan'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(363, 11, 'Ponorogo'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(390, 11, 'Sampang'),
(409, 11, 'Sidoarjo'),
(418, 11, 'Situbondo'),
(441, 11, 'Sumenep'),
(444, 11, 'Surabaya'),
(487, 11, 'Trenggalek'),
(489, 11, 'Tuban'),
(492, 11, 'Tulungagung'),
(61, 12, 'Bengkayang'),
(168, 12, 'Kapuas Hulu'),
(176, 12, 'Kayong Utara'),
(195, 12, 'Ketapang'),
(208, 12, 'Kubu Raya'),
(228, 12, 'Landak'),
(279, 12, 'Melawi'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(388, 12, 'Sambas'),
(391, 12, 'Sanggau'),
(395, 12, 'Sekadau'),
(415, 12, 'Singkawang'),
(417, 12, 'Sintang'),
(18, 13, 'Balangan'),
(33, 13, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(43, 13, 'Barito Kuala'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(203, 13, 'Kotabaru'),
(446, 13, 'Tabalong'),
(452, 13, 'Tanah Bumbu'),
(454, 13, 'Tanah Laut'),
(466, 13, 'Tapin'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(136, 14, 'Gunung Mas'),
(167, 14, 'Kapuas'),
(174, 14, 'Katingan'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(221, 14, 'Lamandau'),
(296, 14, 'Murung Raya'),
(326, 14, 'Palangka Raya'),
(371, 14, 'Pulang Pisau'),
(405, 14, 'Seruyan'),
(432, 14, 'Sukamara'),
(19, 15, 'Balikpapan'),
(66, 15, 'Berau'),
(89, 15, 'Bontang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(341, 15, 'Paser'),
(354, 15, 'Penajam Paser Utara'),
(387, 15, 'Samarinda'),
(96, 16, 'Bulungan (Bulongan)'),
(257, 16, 'Malinau'),
(311, 16, 'Nunukan'),
(450, 16, 'Tana Tidung'),
(467, 16, 'Tarakan'),
(48, 17, 'Batam'),
(71, 17, 'Bintan'),
(172, 17, 'Karimun'),
(184, 17, 'Kepulauan Anambas'),
(237, 17, 'Lingga'),
(302, 17, 'Natuna'),
(462, 17, 'Tanjung Pinang'),
(21, 18, 'Bandar Lampung'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(368, 18, 'Pringsewu'),
(458, 18, 'Tanggamus'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(496, 18, 'Way Kanan'),
(14, 19, 'Ambon'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(185, 19, 'Kepulauan Aru'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(488, 19, 'Tual'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(191, 20, 'Kepulauan Sula'),
(372, 20, 'Pulau Morotai'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(20, 21, 'Banda Aceh'),
(59, 21, 'Bener Meriah'),
(72, 21, 'Bireuen'),
(127, 21, 'Gayo Lues'),
(230, 21, 'Langsa'),
(235, 21, 'Lhokseumawe'),
(300, 21, 'Nagan Raya'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(384, 21, 'Sabang'),
(414, 21, 'Simeulue'),
(429, 21, 'Subulussalam'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(118, 22, 'Dompu'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(276, 22, 'Mataram'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(13, 23, 'Alor'),
(58, 23, 'Belu'),
(122, 23, 'Ende'),
(125, 23, 'Flores Timur'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(234, 23, 'Lembata'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(301, 23, 'Nagekeo'),
(304, 23, 'Ngada'),
(383, 23, 'Rote Ndao'),
(385, 23, 'Sabu Raijua'),
(412, 23, 'Sikka'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(16, 24, 'Asmat'),
(67, 24, 'Biak Numfor'),
(90, 24, 'Boven Digoel'),
(111, 24, 'Deiyai (Deliyai)'),
(117, 24, 'Dogiyai'),
(150, 24, 'Intan Jaya'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(180, 24, 'Keerom'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(231, 24, 'Lanny Jaya'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(274, 24, 'Mappi'),
(281, 24, 'Merauke'),
(284, 24, 'Mimika'),
(299, 24, 'Nabire'),
(303, 24, 'Nduga'),
(335, 24, 'Paniai'),
(347, 24, 'Pegunungan Bintang'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(392, 24, 'Sarmi'),
(443, 24, 'Supiori'),
(484, 24, 'Tolikara'),
(495, 24, 'Waropen'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(124, 25, 'Fakfak'),
(165, 25, 'Kaimana'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(277, 25, 'Maybrat'),
(346, 25, 'Pegunungan Arfak'),
(378, 25, 'Raja Ampat'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(449, 25, 'Tambrauw'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(60, 26, 'Bengkalis'),
(120, 26, 'Dumai'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(166, 26, 'Kampar'),
(187, 26, 'Kepulauan Meranti'),
(207, 26, 'Kuantan Singingi'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(406, 26, 'Siak'),
(253, 27, 'Majene'),
(262, 27, 'Mamasa'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(362, 27, 'Polewali Mandar'),
(38, 28, 'Bantaeng'),
(47, 28, 'Barru'),
(87, 28, 'Bone'),
(95, 28, 'Bulukumba'),
(123, 28, 'Enrekang'),
(132, 28, 'Gowa'),
(162, 28, 'Jeneponto'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(254, 28, 'Makassar'),
(275, 28, 'Maros'),
(328, 28, 'Palopo'),
(333, 28, 'Pangkajene Kepulauan'),
(336, 28, 'Parepare'),
(360, 28, 'Pinrang'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(416, 28, 'Sinjai'),
(423, 28, 'Soppeng'),
(448, 28, 'Takalar'),
(451, 28, 'Tana Toraja'),
(486, 28, 'Toraja Utara'),
(493, 28, 'Wajo'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(98, 29, 'Buol'),
(119, 29, 'Donggala'),
(291, 29, 'Morowali'),
(329, 29, 'Palu'),
(338, 29, 'Parigi Moutong'),
(366, 29, 'Poso'),
(410, 29, 'Sigi'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(53, 30, 'Bau-Bau'),
(85, 30, 'Bombana'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(182, 30, 'Kendari'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(295, 30, 'Muna'),
(494, 30, 'Wakatobi'),
(73, 31, 'Bitung'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(188, 31, 'Kepulauan Sangihe'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(192, 31, 'Kepulauan Talaud'),
(204, 31, 'Kotamobagu'),
(267, 31, 'Manado'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(485, 31, 'Tomohon'),
(12, 32, 'Agam'),
(93, 32, 'Bukittinggi'),
(116, 32, 'Dharmasraya'),
(186, 32, 'Kepulauan Mentawai'),
(236, 32, 'Lima Puluh Koto/Kota'),
(318, 32, 'Padang'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(337, 32, 'Pariaman'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(345, 32, 'Payakumbuh'),
(357, 32, 'Pesisir Selatan'),
(394, 32, 'Sawah Lunto'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(453, 32, 'Tanah Datar'),
(40, 33, 'Banyuasin'),
(121, 33, 'Empat Lawang'),
(220, 33, 'Lahat'),
(242, 33, 'Lubuk Linggau'),
(292, 33, 'Muara Enim'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(324, 33, 'Pagar Alam'),
(327, 33, 'Palembang'),
(367, 33, 'Prabumulih'),
(15, 34, 'Asahan'),
(52, 34, 'Batu Bara'),
(70, 34, 'Binjai'),
(110, 34, 'Dairi'),
(112, 34, 'Deli Serdang'),
(137, 34, 'Gunungsitoli'),
(146, 34, 'Humbang Hasundutan'),
(173, 34, 'Karo'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(229, 34, 'Langkat'),
(268, 34, 'Mandailing Natal'),
(278, 34, 'Medan'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(323, 34, 'Padang Sidempuan'),
(325, 34, 'Pakpak Bharat'),
(353, 34, 'Pematang Siantar'),
(389, 34, 'Samosir'),
(404, 34, 'Serdang Bedagai'),
(407, 34, 'Sibolga'),
(413, 34, 'Simalungun'),
(459, 34, 'Tanjung Balai'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(470, 34, 'Tebing Tinggi'),
(481, 34, 'Toba Samosir');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_provinsi`
--

CREATE TABLE IF NOT EXISTS `lokasi_provinsi` (
`provinsi_id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi_provinsi`
--

INSERT INTO `lokasi_provinsi` (`provinsi_id`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
`pelanggan_id` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `kota` varchar(60) NOT NULL,
  `tanya` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `nama_pelanggan`, `alamat`, `hp`, `email`, `kota`, `tanya`, `user_id`) VALUES
(1, 'Mamih', 'Bogor', '456', 'mamih@yahoo.com', '78', '', 8),
(2, 'Papih', 'Depok', '123', 'papih@gmail.com', '115', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`produk_id` int(11) NOT NULL,
  `kode_produk` varchar(30) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `merek_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `kode_produk`, `nama_produk`, `merek_id`, `kategori_id`, `deskripsi`, `harga`) VALUES
(1, 'NV01', 'New VIOS', 1, 5, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW VIOS E M/T</td>\r\n   <td> NSP15EM/T</td>\r\n   <td>         279,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW VIOS E CVT</td>\r\n   <td> NSP15EA/T</td>\r\n   <td>         292,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW VIOS G M/T</td>\r\n   <td> NSP15GM/T</td>\r\n   <td>         297,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW VIOS G CVT</td>\r\n   <td> NSP15GA/T</td>\r\n   <td>         313,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW VIOS G M/T TRD</td>\r\n   <td> NSP15GM/TTRD</td>\r\n   <td>         314,100,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW VIOS G CVT TRD</td>\r\n   <td> NSP15GA/TTRD</td>\r\n   <td>         330,000,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 279300000),
(2, 'NC01', 'New COROLLA', 2, 5, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW COROLLA ALTIS 1.8 G M/T</td>\r\n   <td> ZE172GM/T20M</td>\r\n   <td>         426,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW COROLLA ALTIS 1.8 V A/T</td>\r\n   <td> ZE172VA/T20M</td>\r\n   <td>         461,400,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 426600000),
(3, 'NC01', 'New CAMRY', 3, 5, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW CAMRY 2.5 G A/T</td>\r\n   <td> AS50GA/T12M</td>\r\n   <td>         586,250,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW CAMRY 2.5 V A/T</td>\r\n   <td> AS50VA/T12M</td>\r\n   <td>         613,250,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW CAMRY 2.5 L A/T HYBRID</td>\r\n   <td> AV50LA/T12M</td>\r\n   <td>         775,300,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 586250000),
(4, 'NA01', 'New AGYA', 4, 1, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW AGYA 1.0 G M/T</td>\r\n   <td> B100GM/T </td>\r\n   <td>         140,033,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW AGYA 1.2 G M/T</td>\r\n   <td> B101GM/T </td>\r\n   <td>         144,133,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW AGYA 1.2 G M/T TRD</td>\r\n   <td> B101GM/T01 </td>\r\n   <td>         147,333,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW AGYA 1.2 G A/T</td>\r\n   <td> B101GA/T </td>\r\n   <td>         158,133,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW AGYA 1.2 G A/T TRD</td>\r\n   <td> B101GA/T01 </td>\r\n   <td>         160,433,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 140033000),
(5, 'ET01', 'ETIOS', 5, 1, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> ETIOS 1.2 JX M/T</td>\r\n   <td> NG10JXM/T10M</td>\r\n   <td>         152,550,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> ETIOS 1.2 E M/T</td>\r\n   <td> NG10EM/T10M</td>\r\n   <td>         166,450,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> ETIOS 1.2 E M/T TOM&#39;s</td>\r\n   <td> NG10EM/T11M</td>\r\n   <td>         179,550,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> ETIOS 1.2 G M/T</td>\r\n   <td> NG10GM/T10M</td>\r\n   <td>         178,050,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 152550000),
(6, 'NY01', 'New YARIS', 6, 1, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW YARIS E M/T</td>\r\n   <td> NSR15EM/T</td>\r\n   <td>         238,550,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW YARIS E CVT</td>\r\n   <td> NSR15EA/T</td>\r\n   <td>         249,450,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW YARIS G M/T</td>\r\n   <td> NSR15GM/T</td>\r\n   <td>         246,650,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW YARIS G CVT</td>\r\n   <td> NSR15GA/T</td>\r\n   <td>         257,550,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW YARIS S M/T TRD</td>\r\n   <td> NSR15SM/TTRD</td>\r\n   <td>         268,450,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW YARIS S CVT TRD</td>\r\n   <td> NSR15SA/TTRD</td>\r\n   <td>         280,150,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW YARIS S M/T TRD HEYKERS</td>\r\n   <td> NSR15SM/TTRDX</td>\r\n   <td>         275,450,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW YARIS S CVT TRD HEYKERS</td>\r\n   <td> NSR15SA/TTRDX</td>\r\n   <td>         287,150,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 238550000),
(7, 'NKI01', 'New KIJANG INNOVA', 7, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 G M/T </td>\r\n   <td> TGN40GM/T10 </td>\r\n   <td>         304,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 G A/T </td>\r\n   <td> TGN40GA/T10 </td>\r\n   <td>         324,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 G M/T LUX </td>\r\n   <td> TGN40GM/T10L </td>\r\n   <td>         309,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 G A/T LUX </td>\r\n   <td> TGN40GA/T10L </td>\r\n   <td>         329,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 V M/T </td>\r\n   <td> TGN40VM/T10 </td>\r\n   <td>         350,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 V A/T </td>\r\n   <td> TGN40VA/T10 </td>\r\n   <td>         370,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 V M/T LUX </td>\r\n   <td> TGN40VM/T10L </td>\r\n   <td>         356,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 V A/T LUX </td>\r\n   <td> TGN40VA/T10L </td>\r\n   <td>         376,100,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 Q M/T </td>\r\n   <td> TGN40QM/T10 </td>\r\n   <td>         389,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 Q A/T </td>\r\n   <td> TGN40QA/T10 </td>\r\n   <td>         410,100,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 Q M/T VENTURER </td>\r\n   <td> TGN40QM/T12 </td>\r\n   <td>         398,100,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.0 Q A/T VENTURER </td>\r\n   <td> TGN40QA/T12 </td>\r\n   <td>         424,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 G M/T DIESEL </td>\r\n   <td> GUN42GM/T10 </td>\r\n   <td>         334,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 G A/T DIESEL </td>\r\n   <td> GUN42GA/T10 </td>\r\n   <td>         356,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 G M/T DIESEL LUX </td>\r\n   <td> GUN42GM/T10L </td>\r\n   <td>         338,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 G A/T DIESEL LUX </td>\r\n   <td> GUN42GA/T10L </td>\r\n   <td>         360,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 V M/T DIESEL </td>\r\n   <td> GUN42VM/T10 </td>\r\n   <td>         384,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 V A/T DIESEL </td>\r\n   <td> GUN42VA/T10 </td>\r\n   <td>         404,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 V M/T DIESEL LUX </td>\r\n   <td> GUN42VM/T10L </td>\r\n   <td>         390,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 V A/T DIESEL LUX </td>\r\n   <td> GUN42VA/T10L </td>\r\n   <td>         410,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 Q M/T DIESEL VENTURER </td>\r\n   <td> GUN42QM/T12 </td>\r\n   <td>         443,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW KIJANG INNOVA 2.4 Q A/T DIESEL VENTURER </td>\r\n   <td> GUN42QA/T12 </td>\r\n   <td>         457,400,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 304600000),
(8, 'NAV01', 'NAV1', 8, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NAV1 G A/T</td>\r\n   <td> ZRR70GA/TM</td>\r\n   <td>         403,350,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NAV1 V A/T LIMITED</td>\r\n   <td> ZRR70VA/TM</td>\r\n   <td>         422,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NAV1 G A/T LUX</td>\r\n   <td> ZRR70GA/TLUXM</td>\r\n   <td>         409,850,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NAV1 V A/T LIMITED LUX</td>\r\n   <td> ZRR70VA/TLUXM</td>\r\n   <td>         431,300,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 403350000),
(9, 'VX01', 'VOXY', 9, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> VOXY 2.0 A/T</td>\r\n   <td> ZRR80A/T</td>\r\n   <td>         452,700,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 452700000),
(10, 'CLY01', 'CALYA', 10, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> CALYA 1.2 E STD M/T</td>\r\n   <td> B40EM/T01</td>\r\n   <td>         140,460,500</td>\r\n  </tr>\r\n  <tr>\r\n   <td> CALYA 1.2 E M/T</td>\r\n   <td> B40EM/T00</td>\r\n   <td>         143,260,500</td>\r\n  </tr>\r\n  <tr>\r\n   <td> CALYA 1.2 G M/T</td>\r\n   <td> B40GM/T00</td>\r\n   <td>         148,860,500</td>\r\n  </tr>\r\n  <tr>\r\n   <td> CALYA 1.2 G A/T</td>\r\n   <td> B40GA/T00</td>\r\n   <td>         160,860,500</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 140460500),
(11, 'AVZ01', 'AVANZA', 11, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> AVANZA 1.3 E STD M/T</td>\r\n   <td> F53EM/T01</td>\r\n   <td>         193,815,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 E STD A/T</td>\r\n   <td> F53EA/T01</td>\r\n   <td>         205,015,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 E M/T</td>\r\n   <td> F53EM/T</td>\r\n   <td>         196,315,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 E A/T</td>\r\n   <td> F53EA/T</td>\r\n   <td>         207,515,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 G M/T</td>\r\n   <td> F53GM/T</td>\r\n   <td>         214,415,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 G A/T</td>\r\n   <td> F53GA/T</td>\r\n   <td>         225,115,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.5 G M/T</td>\r\n   <td> F54GM/T</td>\r\n   <td>         226,715,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 VELOZ M/T</td>\r\n   <td> F53VM/T</td>\r\n   <td>         219,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 VELOZ A/T</td>\r\n   <td> F53VA/T</td>\r\n   <td>         231,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.5 VELOZ M/T</td>\r\n   <td> F54VM/T</td>\r\n   <td>         230,100,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.5 VELOZ A/T</td>\r\n   <td> F54VA/T</td>\r\n   <td>         241,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 G M/T BASIC</td>\r\n   <td> F53GM/TB</td>\r\n   <td>         208,400,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 193815000),
(12, 'NF01', 'New FORTUNER', 12, 7, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.7 SRZ A/T BSN LUX</td>\r\n   <td>TGN66SRZA/T10</td>\r\n   <td>         549,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 G M/T DSL LUX</td>\r\n   <td>GUN65GM/T10</td>\r\n   <td>         475,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 G A/T DSL LUX</td>\r\n   <td>GUN65GA/T10</td>\r\n   <td>         493,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 VRZ A/T DSL LUX</td>\r\n   <td>GUN65VRZA/T10</td>\r\n   <td>         524,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x4 2.4 G A/T DSL LUX</td>\r\n   <td>GUN55GA/T10</td>\r\n   <td>         595,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x4 2.4 VRZ A/T DSL LUX</td>\r\n   <td>GUN55VRZA/T10</td>\r\n   <td>         667,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 VRZ A/T DSL LUX TRD</td>\r\n   <td>GUN65VRZA/T11</td>\r\n   <td>         536,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.7 SRZ A/T BSN LUX TRD</td>\r\n   <td>TGN66SRZA/T11</td>\r\n   <td>         561,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.7 SRZ A/T BSN</td>\r\n   <td>TGN66SRZA/T10B</td>\r\n   <td>         546,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 G M/T DSL</td>\r\n   <td>GUN65GM/T10B</td>\r\n   <td>         471,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 G A/T DSL</td>\r\n   <td>GUN65GA/T10B</td>\r\n   <td>         489,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 VRZ A/T DSL</td>\r\n   <td>GUN65VRZA/T10B</td>\r\n   <td>         520,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x4 2.4 G A/T DSL</td>\r\n   <td>GUN55GA/T10B</td>\r\n   <td>         592,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x4 2.4 VRZ A/T DSL</td>\r\n   <td>GUN55VRZA/T10B</td>\r\n   <td>         663,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.4 VRZ A/T DSL TRD</td>\r\n   <td>GUN65VRZA/T11B</td>\r\n   <td>         532,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td>NEW FORTUNER 4x2 2.7 SRZ A/T BSN TRD</td>\r\n   <td>TGN66SRZA/T11B</td>\r\n   <td>         558,000,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 549600000),
(13, 'NA01', 'New AVANZA', 13, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> AVANZA 1.3 E STD M/T</td>\r\n   <td> F53EM/T01</td>\r\n   <td>         193,815,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 E STD A/T</td>\r\n   <td> F53EA/T01</td>\r\n   <td>         205,015,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 E M/T</td>\r\n   <td> F53EM/T</td>\r\n   <td>         196,315,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 E A/T</td>\r\n   <td> F53EA/T</td>\r\n   <td>         207,515,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 G M/T</td>\r\n   <td> F53GM/T</td>\r\n   <td>         214,415,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 G A/T</td>\r\n   <td> F53GA/T</td>\r\n   <td>         225,115,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.5 G M/T</td>\r\n   <td> F54GM/T</td>\r\n   <td>         226,715,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 VELOZ M/T</td>\r\n   <td> F53VM/T</td>\r\n   <td>         219,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 VELOZ A/T</td>\r\n   <td> F53VA/T</td>\r\n   <td>         231,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.5 VELOZ M/T</td>\r\n   <td> F54VM/T</td>\r\n   <td>         230,100,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.5 VELOZ A/T</td>\r\n   <td> F54VA/T</td>\r\n   <td>         241,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> AVANZA 1.3 G M/T BASIC</td>\r\n   <td> F53GM/TB</td>\r\n   <td>         208,400,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 193815000),
(14, 'HLX01', 'HILUX', 14, 7, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> HILUX SINGLE CABIN 2.0 L M/T BENSIN</td>\r\n   <td> TG11SCM/T</td>\r\n   <td>         202,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> HILUX SINGLE CABIN 2.5 M/T DIESEL</td>\r\n   <td> KU11SCM/T</td>\r\n   <td>         219,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> HILUX EXTRA CABIN 2.5 E (4X4) M/T DIESEL</td>\r\n   <td> KU12CCEM/T</td>\r\n   <td>         327,050,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> HILUX DOUBLE CABIN 2.5 E (4X4) M/T DIESEL</td>\r\n   <td> KU12DCEM/T</td>\r\n   <td>         387,350,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> HILUX DOUBLE CABIN 2.5 G (4X4) M/T DIESEL</td>\r\n   <td> KU12DCGM/T</td>\r\n   <td>         408,150,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> HILUX DOUBLE CABIN 2.5 V (4x4) A/T DIESEL</td>\r\n   <td> KU12DCVA/T</td>\r\n   <td>         443,850,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 202200000),
(15, 'NH01', 'New HILUX', 15, 7, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW HILUX EXTRA CABIN 2.4 E (4X4) M/T DIESEL</td>\r\n   <td> GUN12CCEM/T</td>\r\n   <td>         332,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW HILUX DOUBLE CABIN 2.4 E (4X4) M/T DIESEL</td>\r\n   <td> GUN12DCEM/T</td>\r\n   <td>         394,700,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW HILUX DOUBLE CABIN 2.4 G (4X4) M/T DIESEL</td>\r\n   <td> GUN12DCGM/T</td>\r\n   <td>         415,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW HILUX DOUBLE CABIN 2.4 V (4x4) A/T DIESEL</td>\r\n   <td> GUN12DCVA/T</td>\r\n   <td>         452,900,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 332500000),
(16, 'NLC01', 'New LAND CRUISER', 16, 7, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW LAND CRUISER 200 STD SPEC A/T DIESEL</td>\r\n   <td> VJ200STDA/T40M</td>\r\n   <td>      1,933,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW LAND CRUISER 200 FULL SPEC A/T DIESEL</td>\r\n   <td> VJ200FSA/T41M</td>\r\n   <td>      2,266,500,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 1933300000),
(17, 'SNT01', 'SIENTA', 17, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> SIENTA 1.5 E M/T (BLACK TRIM)</td>\r\n   <td> NSP70EM/T00</td>\r\n   <td>         234,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 E CVT (BLACK TRIM)</td>\r\n   <td> NSP70EA/T00</td>\r\n   <td>         252,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 G M/T (BLACK TRIM)</td>\r\n   <td> NSP70GM/T00</td>\r\n   <td>         246,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 G CVT (BLACK TRIM)</td>\r\n   <td> NSP70GA/T00</td>\r\n   <td>         264,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 V M/T (BLACK TRIM)</td>\r\n   <td> NSP70VM/T00</td>\r\n   <td>         261,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 V M/T (FROMAGE TRIM)</td>\r\n   <td> NSP70VM/T02</td>\r\n   <td>         261,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 V CVT (BLACK TRIM)</td>\r\n   <td> NSP70VA/T00</td>\r\n   <td>         279,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 V CVT (FROMAGE TRIM)</td>\r\n   <td> NSP70VA/T02</td>\r\n   <td>         279,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 Q CVT (BLACK TRIM)</td>\r\n   <td> NSP70QA/T00</td>\r\n   <td>         299,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> SIENTA 1.5 Q CVT (FROMAGE TRIM)</td>\r\n   <td> NSP70QA/T02</td>\r\n   <td>         299,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW SIENTA 1.5 Q CVT (BLACK TRIM)</td>\r\n   <td> NSP70QA/T04</td>\r\n   <td>         300,700,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW SIENTA 1.5 Q CVT (FROMAGE TRIM)</td>\r\n   <td> NSP70QA/T05</td>\r\n   <td>         300,700,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW SIENTA 1.5 Q CVT (BLACK TRIM) LIMITED</td>\r\n   <td> NSP70QA/T06</td>\r\n   <td>         324,700,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 234900000),
(18, 'HAC01', 'HI ACE', 18, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> HI ACE STD MANUAL</td>\r\n   <td> KD22M/T21STDM</td>\r\n   <td>         423,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> HI ACE COMMUTER MANUAL</td>\r\n   <td> KD22M/T03COMM</td>\r\n   <td>         458,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW HI ACE COMMUTER MANUAL LUXURY</td>\r\n   <td> KD22M/T14COMM</td>\r\n   <td>         642,900,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 423500000),
(19, 'NFT01', 'New FT86', 19, 6, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW FT 86 MANUAL</td>\r\n   <td> FT86M/T00/01EM</td>\r\n   <td>         711,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW FT 86 AUTOMATIC</td>\r\n   <td> FT86A/T00/01EM</td>\r\n   <td>         718,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW FT 86 AUTOMATIC TRD</td>\r\n   <td> FT86A/TTRD02/04EM</td>\r\n   <td>         752,000,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 711900000),
(20, 'RSH01', 'RUSH', 20, 7, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> RUSH 1.5 G M/T LUX</td>\r\n   <td> F70GM/T30M</td>\r\n   <td>         248,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 G A/T LUX</td>\r\n   <td> F70GA/T30M</td>\r\n   <td>         258,700,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S M/T TRD SPORTIVO LUX</td>\r\n   <td> F70SM/T40TRDM</td>\r\n   <td>         259,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S A/T TRD SPORTIVO LUX</td>\r\n   <td> F70SA/T40TRDM</td>\r\n   <td>         273,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S M/T TRD SPORTIVO ULTIMO LUX</td>\r\n   <td> F70SM/T41TRDM</td>\r\n   <td>         263,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S A/T TRD SPORTIVO ULTIMO LUX</td>\r\n   <td> F70SA/T41TRDM</td>\r\n   <td>         276,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S M/T TRD SPORTIVO DRESS UP</td>\r\n   <td> F70SM/T40TRDUM</td>\r\n   <td>         263,350,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S A/T TRD SPORTIVO DRESS UP</td>\r\n   <td> F70SA/T40TRDUM</td>\r\n   <td>         276,650,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S M/T TRD SPORTIVO ULTIMO DRESS UP</td>\r\n   <td> F70SM/T41TRDUM</td>\r\n   <td>         266,650,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S A/T TRD SPORTIVO ULTIMO DRESS UP</td>\r\n   <td> F70SA/T41TRDUM</td>\r\n   <td>         279,950,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 G M/T</td>\r\n   <td> F70GM/T30MB</td>\r\n   <td>         245,500,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 G A/T</td>\r\n   <td> F70GA/T30MB</td>\r\n   <td>         255,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S M/T TRD SPORTIVO</td>\r\n   <td> F70SM/T40TRDMB</td>\r\n   <td>         256,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S A/T TRD SPORTIVO</td>\r\n   <td> F70SA/T40TRDMB</td>\r\n   <td>         270,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S M/T TRD SPORTIVO ULTIMO</td>\r\n   <td> F70SM/T41TRDMB</td>\r\n   <td>         260,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> RUSH 1.5 S A/T TRD SPORTIVO ULTIMO</td>\r\n   <td> F70SA/T41TRDMB</td>\r\n   <td>         273,500,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 248800000),
(21, 'ND01', 'New DYNA', 21, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> NEW DYNA 110 ST 4X2 M/T </td>\r\n   <td>  WU30ST10S </td>\r\n   <td>         267,000,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 110 ST LONG 4X2 M/T </td>\r\n   <td>  WU34ST10S </td>\r\n   <td>         275,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 110 ST BUS 4X2 M/T </td>\r\n   <td>  WU30ST10BS </td>\r\n   <td>         273,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 110 ST BUS LONG 4X2 M/T </td>\r\n   <td>  WU34ST11S </td>\r\n   <td>         285,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 110 FT 4X2 M/T </td>\r\n   <td>  WU34FT10S </td>\r\n   <td>         297,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 110 FT LONG 4X2 M/T </td>\r\n   <td>  WU35FT10S </td>\r\n   <td>         308,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 110 ET 4X2 M/T </td>\r\n   <td>  WU34ET10S </td>\r\n   <td>         304,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 XT 4X2 M/T </td>\r\n   <td>  WU34XT10S </td>\r\n   <td>         318,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 XT LONG 4X2 M/T </td>\r\n   <td>  WU35XT10S </td>\r\n   <td>         328,800,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 XT LONG HI-GEAR 4X2 M/T </td>\r\n   <td>  WU35XT11S </td>\r\n   <td>         329,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 XT BUS LONG 4X2 M/T </td>\r\n   <td>  WU35XT12S </td>\r\n   <td>         320,200,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 HT EKSPEDISI 4X2 M/T </td>\r\n   <td>  WU34HTE00S </td>\r\n   <td>         325,300,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 HT LONG EKSPEDISI 4X2 M/T </td>\r\n   <td>  WU35HTE00S </td>\r\n   <td>         335,900,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 HT LONG EKSPEDISI HI-GEAR 4X2 M/T </td>\r\n   <td>  WU35HTE01S </td>\r\n   <td>         336,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 HT HI-GEAR 4X2 M/T </td>\r\n   <td>  WU34HT21S </td>\r\n   <td>         326,100,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 HT EXTREME HI-GEAR 4X2 M/T </td>\r\n   <td>  WU34HT22S </td>\r\n   <td>         328,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 HT OFF ROAD HI-GEAR 4X2 M/T </td>\r\n   <td>  WU34HT23S </td>\r\n   <td>         348,600,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> NEW DYNA 130 HT 4X2 M/T </td>\r\n   <td>  WU34HT20S </td>\r\n   <td>         323,500,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 267000000),
(22, 'VF01', 'VELLFIRE', 22, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> VELLFIRE 2.5 G A/T</td>\r\n   <td> VE30GA/T</td>\r\n   <td>      1,050,050,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> VELLFIRE 2.5 G A/T LIMITED</td>\r\n   <td> VE30GA/T02</td>\r\n   <td>      1,110,050,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 1050050000),
(23, 'ALP01', 'ALPHARD', 23, 4, '<table border="0" cellpadding="0" cellspacing="0" xss=removed>\r\n <tbody>\r\n  <tr>\r\n   <td> ALPHARD 2.5 X A/T</td>\r\n   <td> AL30XA/T</td>\r\n   <td>         903,400,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> ALPHARD 2.5 G A/T</td>\r\n   <td> AL30GA/T</td>\r\n   <td>      1,050,550,000</td>\r\n  </tr>\r\n  <tr>\r\n   <td> ALPHARD 3.5 Q A/T</td>\r\n   <td> AL30QA/T</td>\r\n   <td>      1,717,000,000</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', 903400000);

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE IF NOT EXISTS `produk_kategori` (
`kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`kategori_id`, `nama_kategori`) VALUES
(1, 'HATCHBACK'),
(2, 'HYBIRD'),
(3, 'KOMERSIAL'),
(4, 'Multi Purpose Vehicle (MPV)'),
(5, 'SEDAN'),
(6, 'SPORT'),
(7, 'Sport Utility Vehicle (SUV)');

-- --------------------------------------------------------

--
-- Table structure for table `produk_merek`
--

CREATE TABLE IF NOT EXISTS `produk_merek` (
`merek_id` int(11) NOT NULL,
  `nama_merek` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_merek`
--

INSERT INTO `produk_merek` (`merek_id`, `nama_merek`) VALUES
(1, 'New VIOS'),
(2, 'New COROLLA'),
(3, 'New CAMRY'),
(4, 'New AGYA'),
(5, 'ETIOS'),
(6, 'New YARIS'),
(7, 'New KIJANG INNOVA'),
(8, 'NAV'),
(9, 'VOXY'),
(10, 'CALYA'),
(11, 'AVANZA'),
(12, 'New FORTUNER'),
(13, 'New AVANZA'),
(14, 'HILUX'),
(15, 'New HILUX'),
(16, 'New LAND CRUISER'),
(17, 'SIENTA'),
(18, 'HI ACE'),
(19, 'New FT86'),
(20, 'RUSH'),
(21, 'New DYNA'),
(22, 'VELLFIRE'),
(23, 'ALPHARD');

-- --------------------------------------------------------

--
-- Table structure for table `produk_photo`
--

CREATE TABLE IF NOT EXISTS `produk_photo` (
`photo_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_photo`
--

INSERT INTO `produk_photo` (`photo_id`, `produk_id`, `photo`) VALUES
(1, 4, 'produk_4-1.jpg'),
(2, 4, 'produk_4-2.jpg'),
(3, 1, 'produk_1-1.jpg'),
(4, 1, 'produk_1-2.jpg'),
(5, 2, 'produk_2-1.jpg'),
(6, 3, 'produk_3-1.jpg'),
(7, 3, 'produk_3-2.jpg'),
(8, 4, 'produk_4-1.jpg'),
(9, 4, 'produk_4-2.jpg'),
(10, 5, 'produk_5-1.jpg'),
(11, 5, 'produk_5-2.jpg'),
(12, 6, 'produk_6-1.jpg'),
(13, 6, 'produk_6-2.jpg'),
(14, 7, 'produk_7-1.jpg'),
(15, 7, 'produk_7-2.jpg'),
(16, 8, 'produk_8-1.jpg'),
(17, 8, 'produk_8-2.jpg'),
(18, 9, 'produk_9-1.jpg'),
(19, 9, 'produk_9-2.jpg'),
(20, 10, 'produk_10-1.jpg'),
(21, 10, 'produk_10-2.jpg'),
(22, 11, 'produk_11-1.jpg'),
(23, 11, 'produk_11-2.jpg'),
(24, 12, 'produk_12-1.jpg'),
(25, 12, 'produk_12-2.jpg'),
(26, 13, 'produk_13-1.jpg'),
(27, 13, 'produk_13-2.jpg'),
(28, 14, 'produk_14-1.jpg'),
(29, 14, 'produk_14-2.jpg'),
(30, 15, 'produk_15-1.jpg'),
(31, 15, 'produk_15-2.jpg'),
(32, 16, 'produk_16-1.jpg'),
(33, 16, 'produk_16-2.jpg'),
(34, 17, 'produk_17-1.jpg'),
(35, 17, 'produk_17-2.jpg'),
(36, 18, 'produk_18-1.jpg'),
(37, 18, 'produk_18-2.jpg'),
(38, 19, 'produk_19-1.jpg'),
(39, 19, 'produk_19-2.jpg'),
(40, 20, 'produk_20-1.jpg'),
(41, 20, 'produk_20-2.jpg'),
(42, 21, 'produk_21-1.jpg'),
(43, 21, 'produk_21-2.jpg'),
(44, 22, 'produk_22-1.jpg'),
(45, 22, 'produk_22-2.jpg'),
(46, 23, 'produk_23-1.jpg'),
(47, 23, 'produk_23-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `produk_stok`
--

CREATE TABLE IF NOT EXISTS `produk_stok` (
`stok_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_mutasi` int(11) NOT NULL,
  `stok_jual` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_stok`
--

INSERT INTO `produk_stok` (`stok_id`, `produk_id`, `toko_id`, `stok`, `stok_mutasi`, `stok_jual`) VALUES
(9, 7, 1, 41, 1, 0),
(10, 8, 1, 32, 0, 0),
(11, 9, 1, 5, 0, 1),
(12, 10, 1, 60, 0, 3),
(14, 7, 3, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk_ukuran`
--

CREATE TABLE IF NOT EXISTS `produk_ukuran` (
`ukuran_id` int(11) NOT NULL,
  `nama_ukuran` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE IF NOT EXISTS `promo` (
`promo_id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `nilai` bigint(20) NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `banner_gambar` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`promo_id`, `judul`, `deskripsi`, `nilai`, `mulai`, `selesai`, `banner_gambar`) VALUES
(1, 'Promo Lebaran', '<p>Promo Lebaran</p>\r\n', 30000, '2016-06-02', '2016-07-10', 'promo-c4ca4238a0b923820dcc509a6f75849b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `promo_data`
--

CREATE TABLE IF NOT EXISTS `promo_data` (
`promo_data_id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_data`
--

INSERT INTO `promo_data` (`promo_data_id`, `promo_id`, `produk_id`) VALUES
(1, 1, 7),
(2, 1, 8),
(3, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE IF NOT EXISTS `toko` (
`toko_id` int(11) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `tipe` enum('pusat','cabang') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`toko_id`, `nama_toko`, `alamat`, `telepon`, `kota`, `tipe`) VALUES
(1, 'Ivo Clothes Pusat', 'Jalan Gunung pangilun', '12345', '318', 'pusat'),
(3, 'Ivo Bukittinggi', 'Jalan Bukittinggi', '55555', '93', 'cabang');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
`user_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `akses` enum('admin','member','op','bos','supplier') NOT NULL,
  `photo` varchar(100) NOT NULL,
  `status` enum('aktif','banned') NOT NULL,
  `terakhir_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `toko_id` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`user_id`, `nama`, `username`, `password`, `akses`, `photo`, `status`, `terakhir_login`, `toko_id`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'ava-c4ca4238a0b923820dcc509a6f75849b.JPG', 'aktif', '2017-10-28 21:44:08', NULL),
(4, 'Operator', 'op', '11d8c28a64490a987612f2332502467f', 'op', '', 'aktif', '2017-10-28 21:40:14', NULL),
(5, 'Pimpinan', 'bos', '15fc4a53992beba40ae91e5244e79dff', 'bos', '', 'aktif', '2017-10-27 23:15:01', NULL),
(9, 'Papih', 'papih', 'f56c8816e51522b49322944aca95915d', 'member', '', 'aktif', '2017-10-27 21:06:02', NULL),
(8, 'Mamih', 'mamih', '0fa13461f352bc6e6beb2a3e3c9b84a1', 'member', '', 'aktif', '2017-10-21 21:22:36', NULL),
(12, 'Supplier', 's1', '8ddf878039b70767c4a5bcf4f0c4f65e', 'supplier', '', 'aktif', '2017-10-23 16:07:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
 ADD PRIMARY KEY (`berita_id`), ADD KEY `berita_kategori_id` (`berita_kategori_id`);

--
-- Indexes for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
 ADD PRIMARY KEY (`berita_kategori_id`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
 ADD PRIMARY KEY (`konfigurasi_id`), ADD UNIQUE KEY `nama_key` (`nama_key`);

--
-- Indexes for table `lokasi_kota`
--
ALTER TABLE `lokasi_kota`
 ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `lokasi_provinsi`
--
ALTER TABLE `lokasi_provinsi`
 ADD PRIMARY KEY (`provinsi_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
 ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
 ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `produk_merek`
--
ALTER TABLE `produk_merek`
 ADD PRIMARY KEY (`merek_id`);

--
-- Indexes for table `produk_photo`
--
ALTER TABLE `produk_photo`
 ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `produk_stok`
--
ALTER TABLE `produk_stok`
 ADD PRIMARY KEY (`stok_id`);

--
-- Indexes for table `produk_ukuran`
--
ALTER TABLE `produk_ukuran`
 ADD PRIMARY KEY (`ukuran_id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
 ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `promo_data`
--
ALTER TABLE `promo_data`
 ADD PRIMARY KEY (`promo_data_id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
 ADD PRIMARY KEY (`toko_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
MODIFY `berita_kategori_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
MODIFY `konfigurasi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lokasi_kota`
--
ALTER TABLE `lokasi_kota`
MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `lokasi_provinsi`
--
ALTER TABLE `lokasi_provinsi`
MODIFY `provinsi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `produk_merek`
--
ALTER TABLE `produk_merek`
MODIFY `merek_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `produk_photo`
--
ALTER TABLE `produk_photo`
MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `produk_stok`
--
ALTER TABLE `produk_stok`
MODIFY `stok_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `produk_ukuran`
--
ALTER TABLE `produk_ukuran`
MODIFY `ukuran_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `promo_data`
--
ALTER TABLE `promo_data`
MODIFY `promo_data_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
MODIFY `toko_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
