-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2016 at 05:23 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'evan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `berita1`
--

CREATE TABLE IF NOT EXISTS `berita1` (
`id` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(2000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `berita1`
--

INSERT INTO `berita1` (`id`, `tanggal`, `judul`, `gambar`, `keterangan`) VALUES
(1, '0000-00-00', 'heati2jafhhfak', 'Mamasa-House.jpg', 'hhehheheajahealrreeeeeeeeeeeeeeeeehlahflhalflfalbacbcancaakavablllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllabvajjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj'),
(2, '2012-12-12', 'hshsh', 'Untitled.png', 'ahjdhja'),
(3, '0000-00-00', 'hshsh', 'binary-1414324_1920.jpg', 'hsssjhdjdsjdhsjd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita1`
--
ALTER TABLE `berita1`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `berita1`
--
ALTER TABLE `berita1`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
`id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `cpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`id` int(11) NOT NULL,
  `msgdate` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msgdate`, `name`, `phone`, `msg`) VALUES
(1, '03.06.16 05:02', 'Vincent Nyabuto', '0708222536', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `name` text NOT NULL,
  `avator` blob NOT NULL,
  `password` text NOT NULL,
  `id_no` text NOT NULL,
  `plate_no` text NOT NULL,
`id` int(11) NOT NULL,
  `pl_booked` text NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `phone`, `name`, `avator`, `password`, `id_no`, `plate_no`, `id`, `pl_booked`, `access`) VALUES
('Vincent', '', '0708222536', 'Vincent Nyabutos', '', '123123', '29222343', 'KAC 456B', 1, 'YES', 0),
('Ednah', '', '0712312312', 'Ednah Obese', '', '123123', '20203434', 'KAB 555A', 2, 'YES', 2),
('Daniel', '', '0708222500', 'Daniel Mose', '', '123666', '', '', 3, '', 2),
('Felstley', '', '0708222537', 'Felstley Okumu', '', '123123', '', '', 5, '', 1),
('evan apriaanjaan', 'evan@gmail.om', '0968686747', 'evan apriaanjaan evan', '', 'mamasa', '', 'pl002', 6, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `street` text NOT NULL,
  `plot` text NOT NULL,
  `status` text NOT NULL,
  `model` text NOT NULL,
  `vehicle` text NOT NULL,
  `platenumber` text NOT NULL,
  `email` text NOT NULL,
  `account` text NOT NULL,
  `d1` text NOT NULL,
  `d2` text NOT NULL,
  `charge` text NOT NULL,
`id` int(5) NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`street`, `plot`, `status`, `model`, `vehicle`, `platenumber`, `email`, `account`, `d1`, `d2`, `charge`, `id`, `phone`) VALUES
('CITY HALL', 'PL 001', 'RESERVED', 'BMW', 'volvo', 'KAB 123B', 'vinny@yahoo.com', 'TGF12322', '02.11.2014 11:05AM', '02.11.2014 12:05AM', '60', 1, ''),
('KIJABE STREET', 'PL 001', 'RESERVED', 'BMW', 'volvo', 'KAB 123B', '', 'GHZ', '02.11.2014 11:05AM', '02.11.2014 12:05AM', '120', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
 ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `culture`
--

-- --------------------------------------------------------

--
-- Table structure for table `budaya`
--

CREATE TABLE IF NOT EXISTS `budaya` (
`id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `budaya`
--

INSERT INTO `budaya` (`id`, `judul`, `isi`, `gambar`) VALUES
(1, 'Rumah Tongkonan Mamasa', 'inilah gambar rumah adat tongkonan mamasa', 'Tarjetas042.png');

-- --------------------------------------------------------

--
-- Table structure for table `informssi`
--

CREATE TABLE IF NOT EXISTS `informssi` (
`id` int(11) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(30) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `informssi`
--

INSERT INTO `informssi` (`id`, `Judul`, `isi`, `gambar`, `tgl`) VALUES
(1, 'Perampokan terjadi di kota mamasa', 'pelaku di tangkap', 'conto.png', '2016-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `icon`, `is_active`, `is_parent`) VALUES
(1, 'Menu Managenet', 'menu', 'ion-ios-albums', 1, 0),
(2, 'budaya', 'budaya', 'ion-navicon-round', 1, 0),
(3, 'informasi', 'informssi', 'ion-speakerphone', 1, 0),
(4, 'wisata', 'wisata', 'ion-ios-paw', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE IF NOT EXISTS `wisata` (
`id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `judul`, `isi`, `gambar`) VALUES
(1, 'Tempat rekreasi', 'rahasia tempat rekreasi warga mamasa', 'Grap7.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budaya`
--
ALTER TABLE `budaya`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informssi`
--
ALTER TABLE `informssi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budaya`
--
ALTER TABLE `budaya`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `informssi`
--
ALTER TABLE `informssi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
`id` int(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `file` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `judul`, `file`, `user`) VALUES
(5, 'Tutorial Belajar Visual Basic', 'TutorialVB2.pdf', 'admin'),
(6, 'Desain Template HTML dan CSS', 'template.pdf', 'admin'),
(8, 'Membuat Jam Digital dengan JavaScript', 'jamdigital.rar', 'admin'),
(10, 'Tutorial Halaman Dinamis dg PHP', 'HalamanDinamis.pdf', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblcms`
--

CREATE TABLE IF NOT EXISTS `tblcms` (
`id` int(15) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `idkategori` varchar(10) NOT NULL,
  `content` text NOT NULL,
  `user` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tblcms`
--

INSERT INTO `tblcms` (`id`, `judul`, `idkategori`, `content`, `user`, `status`) VALUES
(1, 'Home', 'Tidak Dika', '<h2 style="text-align: center; color: #330000">Selamat datang di Website Berita Online</h2>\r\n<h2 style="text-align: center; color: #0033cc"><img src="http://localhost./cms/tinymcpuk/gambar/Image/multazam.jpg" alt=" " width="100" height="155" align="left" /></h2>\r\n<p style="color: #000000" align="justify">\r\nWebsite sederhana ini dibuat berbasis CMS (<span style="font-style: italic">Content Management System</span>) dengan menggunakan bahasa pemrograman PHP dan MySQL. Website ini saya buat dengan tujuan sebagai dasar pembelajaran script PHP bagi pemula yang baru mengenal CMS (<span style="font-style: italic">Content Managemement System</span>), baik umum, siswa maupun mahasiswa. CMS Merupakan teknologi web yang semakin berkembang saat ini. CMS sendiri dibuat berdasarkan pola pemikiran bagaimana pengguna atau pemilik web mengelola semua content melalui admin area, tanpa direpotkan dengan&nbsp; bahasa script atau coding.\r\n</p>\r\n<p style="color: #000000" align="justify">\r\nDi dalam script berita ini terdapat 4 tabel yaitu tabel user, kategori, berita dan download. Beberapa fasilitas yang sudah saya buat adalah :\r\n</p>\r\n<ul style="color: #000000">\r\n	<li>Halaman home (yang anda baca saat ini) dibuat lewat admin area.<br />\r\n	</li>\r\n	<li>Halaman berita singkat setiap kategori</li>\r\n	<li>Halaman berita lengkap</li>\r\n	<li>Modul 5 berita terbaru</li>\r\n	<li>Modul 5 file download terbaru</li>\r\n	<li>Halaman download file.</li>\r\n	<li>Hit counter dengan gambar</li>\r\n	<li>Modul Kalender</li>\r\n	<li>Modul Social Media (FB dan twitter).</li>\r\n	<li>Kelola kategori, file dan berita via admin.</li>\r\n	<li>Editor WYSIWYG (What You See Is What You Get).</li>\r\n</ul>\r\n<p style="text-align: justify; color: #000000">\r\nNamun demikian, script ini masih butuh banyak pengembangan. Mungkin tugas anda bisa mengembangkannya agar lebih sempurna misalnya adalah : Akses multiuser sehingga orang lain bisa memasukkan berita, fasilitas pencarian berita, serta berita populer.. Khusus buat mahasiswa saya di AMIKOM Mataram, script ini bisa dijadikan salah satu referensi sederhana pembuatan tugas akhir.\r\n</p>\r\n<p style="color: #000000">\r\nSelamat belajar dan semoga sukses.\r\n</p>\r\n<p style="color: #000000">\r\nDeveloper,\r\n</p>\r\n<p style="color: #000000">\r\n&nbsp;\r\n</p>\r\n<p style="color: #000000">\r\n<strong>M. Multazam, S.Kom</strong><br />\r\nwebsite : <a href="http://www.pijaronline.com/" target="_blank">http://www.pijaronline.com</a><br />\r\ndan <a href="http://www.belajarilmukomputer.com/" target="_blank">http://www.belajarilmukomputer.com</a>\r\n</p>\r\n', 'admin', 'Y'),
(11, 'Hantam Laos 6-0, Indonesia Masuk Semifinal', '11', '<p style="text-align: justify">\r\n<img src="http://localhost./cms/tinymcpuk/gambar/Image/1bachdim.jpg" alt=" " width="200" height="144" align="left" />Indonesia menang meyakinkan atas Laos. Enam\r\ngol mereka lesakkan, membuat mereka lolos ke semifinal dengan status \r\njuara Grup A. Di stadion Gelora Bung Karno, Sabtu (4/12/2010), \r\nIndonesia langsung menekan sejak awal laga. Lewat sebuah serangan balik,\r\nIndonesia mengancam pertahanan Laos melalui M. Ridwan di sisi sayap \r\nkanan. Tapi umpan silang Ridwan masih bisa dihalau. Sepak pojok untuk \r\nIndonesia.\r\n</p>\r\n<p style="text-align: justify">\r\nPada menit ketujuh, Ridwan kembali mencoba \r\nperuntungannya. Tapi tendangan kaki kananannya dari luar kotak penalti \r\nmembentur tubuh pemain Laos. Kembali, Indonesia mendapatkan sepak pojok.<br />\r\n<br />\r\nSemenit\r\nberselang, umpan silang Firman Utina di sayap kiri diterima oleh Hamka \r\nHamzah di tiang jauh. Sial bagi Hamka, sundulannya masih melenceng \r\ntipis.<br />\r\n<br />\r\nOoh! Laos mendapatkan kesempatan emas pertamanya dalam \r\nlaga ini. Sepakan Kaysone Soukhavong dari luar kotak penalti membentur \r\ntiang gawang Indonesia. Nyaris.<br />\r\n<br />\r\nPenalti untuk Indonesia! Cristian\r\nGonzales dijatuhkan di dalam kotak penalti ketika memggiring bola di \r\ndalam kotak penalti.<br />\r\n<br />\r\nFirman Utina maju menjadi eksekutornya, dan \r\nkapten Indonesia ini berhasil mengecoh kiper Sengphachan Bounthisanh \r\nuntuk membawa Indonesia unggul 1-0.<br />\r\n<br />\r\nGol lagi untuk Indonesia! \r\nAksi Ridwan, usai memanfaatkan blunder operan Kitsada, membawa Indonesia\r\nunggul 2-0 atas Laos.<br />\r\n<br />\r\nRidwan membawa bola sendirian ke dalam \r\nkotak penalti, ia mengecoh kiper Bounthisanh, dan menceploskan bola ke \r\ndalam gawang, meski sempat terpeleset. <br />\r\n<br />\r\nIndonesia memulai babak \r\nkedua dengan baik, dan tepat pada menit 49 &#39;Garuda&#39; kembali membobol \r\njala Laos. Kembali Firman yang menjadi pencetak golnya.<br />\r\n<br />\r\nGol \r\ntersebut diawali oleh operan satu-dua dengan Ridan di luar kotak \r\npenalti. Begitu kembali menerima bola, Firman melepaskan sepakan kaki \r\nkanan ke tiang jauh. Indonesia unggul 3-0.<br />\r\n<br />\r\nKeunggulan Indonesia \r\nbertambah besar menjadi 4-0 di menit 51 dan yang menjadi pendulangnya \r\nadalah Irfan Bachdim. Ini adalah gol keduanya dalam turnamen ini.<br />\r\n<br />\r\nGol\r\nkeempat Indonesia itu tercipta setelah Irfan melakukan operan satu-dua \r\ndengan Cristian Gonzales. Lewat satu sepakan kaki kanan ke tiang jauh, \r\nIrfan pun membobol jala Laos.<br />\r\n<br />\r\nTekanan Indonesia ke pertahana Laos\r\nakhirnya kembali berbuah hasil di menit 76. Berawal dari umpan lambung \r\nFirman, terjadi kemelut di dalam kotak penalti Laos.<br />\r\n<br />\r\nSepakan \r\nHamka masih bisa ditepis Bounthisanh, tapi bola disambar oleh Arief \r\nSuyono dan terciptalah gol kelima Indonesia. Ini adalah gol kedua Arief \r\ndalam turnamen ini.<br />\r\n<br />\r\nGol lagi! Indonesia unggul jauh 6-0 atas Laos\r\ndi menit 80 dengan diawali oleh umpan terobosan Irfan kepada Okto \r\nManiani. Lewat kecepatannya, Okto mengungguli dua pemain Laos dan \r\nmelepaskan tendangan kaki kiri ke tiang dekat. Si pemain nomor 10 ini \r\nakhirnya mencetak gol.<br />\r\n<br />\r\nAksi Okto itu kemudian menjadi gol penutup\r\ndalam pertandingan ini. Indonesia menang enam gol tanpa balas dan \r\nberhak melaju ke semifinal dengan status juara Grup A. \r\n</p>\r\n', 'admin', 'Y'),
(12, 'Lionel Messi', '11', '<p style="text-align: justify">\r\n<img src="http://localhost./cms/tinymcpuk/gambar/Image/51messi.jpg" alt=" " width="200" height="144" align="left" />Tanpa ampun Lionel Messi menggelontor gawang Arsenal dengan empat gol\r\ndi Camp Nou. Dengan gol-gol itu, si andalan Barcelona pun bikin\r\nsejumlah raihan positif.<br />\r\n<br />\r\nDi hadapan sekitar 95 ribu penonton yang memadati Camp Nou, Rabu \r\n(7/4/2010) dinihari WIB, Barca memastikan laju ke semifinal usai Messi \r\nmenjebol gawang Manuel Almunia pada menit 21,\r\n37, 42 dan 88. Arsenal sendiri hanya sempat membalas lewat gol Nicklas\r\nBendtner pada menit 18.<br />\r\n<br />\r\nDengan penampilan apik berbuah gol-gol\r\ntersebut, Messi dicatat situs Barca membuat sejumlah capaian. Berikut\r\ncapaian-capaian tersebut:<br />\r\n</p>\r\n<ul style="text-align: justify">\r\n	<li>\r\n	Ini adalah kali pertama Messi bikin\r\n	empat gol dalam satu pertandingan untuk Barca. Sebelumnya, si pemain\r\n	Argentina itu &quot;cuma&quot; bisa bikin lima hat-trick dan 18 kali membuat\r\n	sepasang gol dalam satu laga.</li>\r\n	<li>Messi menjadi pemain pertama musim ini yang berhasil membuat empat gol dalam satu laga di Liga Champions.</li>\r\n	<li>Messi menjadi satu dari enam pemain di dalam sejarah kompetisi ini\r\n	untuk membuat empat gol di satu partai. Sebelumnya telah ada Marco Van\r\n	Basten (AC Milan), Simone Inzaghi (Lazio), Dado Prso (M&ograve;naco), Ruud Van\r\n	Nistelroy (M. United) dan Andriy Shevchenko (AC Milan). Artinya, Messi\r\n	juga menjadi pemain pertama Barca yang melakukannya.</li>\r\n	<li>Berkat\r\n	tiga gol di paruh pertama, Messi menjadi satu dari sembilan pemain yang\r\n	mampu bikin hat-trick di babak pertama partai Liga Champions. Messi\r\n	adalah pemain pertama yang melakukannya musim ini.</li>\r\n	<li>Tambahan\r\n	empat gol ke gawang Arsenal membuat total gol Messi di Liga Champions\r\n	menjadi 25 gol. Ini menyamai pundi gol mantan pemain Barca, Rivaldo,\r\n	yang juga topskorer Barca dalam kompetisi tersebut.</li>\r\n	<li>Dengan\r\n	empat gol ke gawang Arsenal di satu partai, Messi membuat klub London\r\n	tersebut menjadi tim yang paling banyak dia bobol gawangnya di Eropa.\r\n	Sevilla dan Atletico Madrid adalah lumbung gol kesukaan Messi di La\r\n	Liga Primera dengan tujuh gol.</li>\r\n	<li>Dengan tambahan empat gol,\r\n	Messi kini menjadi topskorer sementara Liga Champions dengan delapan\r\n	gol. Pesaing terdekatnya adalah andalan Real Madrid --yang sudah\r\n	tersingkir-- Cristiano Ronaldo (tujuh gol) dan bintang Manchester\r\n	United Wayne Rooney (lima gol).</li>\r\n	<li>Messi sudah mengoleksi total\r\n	39 gol musim ini. Jumlah itu lebih banyak satu gol ketimbang musim\r\n	lalu. Messi kini bahkan melakukannya hanya dalam 42 laga, delapan\r\n	partai lebih sedikit dibandingkan musim lalu.</li>\r\n	<li>Empat gol ke\r\n	gawang Arsenal juga menambah catatan gol Messi di kandang Barca, yang\r\n	kini menjadi 67 gol. Sejumlah 52 gol lain dia buat di laga tandang.\r\n	</li>\r\n</ul>\r\n<p style="text-align: justify">\r\n(sumber: <span style="font-weight: bold">detiksport.com)</span> \r\n</p>\r\n', 'admin', 'Y'),
(13, 'Editor TextArea Ala Ms Word', '8', '<div style="text-align: justify">\r\n</div>\r\n<div style="text-align: justify">\r\n</div>\r\n<div style="text-align: justify">\r\n</div>\r\n<p style="text-align: justify">\r\nSecara standar, textarea akan ditampilkan apa adanya, artinya teks yang \r\ndiketik tidak bisa diatur formatnya, misalnya apabila kita ingin kalimat\r\ntertentu ditebalkan, dimiringkan atau diatur jenis dan ukuran hurufnya.\r\nHal ini tidak bisa dilakukan dalam textarea standar, kecuali Anda hapal\r\nperintah HTML, kemudian menuliskannya secara manual di textarea \r\ntersebut, namun bagi reporter atau user yang awam tentu hal ini cukup \r\nmenyulitkan mereka.<br />\r\n<br />\r\nSolusinya, gunakan editor <strong>WYSIWYG</strong> (<em>What You See Is What You Get</em>)\r\n&ndash; Apa yang kau lihat adalah apa yang kau dapatkan. Menurut pengertian \r\ndari Wikipedia, WYSIWYG adalah suatu editor yang memungkinkan user untuk\r\nmenentukan format, ukuran dan jenis huruf, menambahkan hyperlink dan \r\ntabel, dan juga bisa mengupload file, gambar, animasi flash, dan video.<br />\r\n</p>\r\n<div style="text-align: center">\r\n<img src="http://localhost./cms/tinymcpuk/gambar/Image/cktini.jpg" alt=" " width="326" height="72" />\r\n</div>\r\n<p style="text-align: justify">\r\nSaat ini banyak sekali editor WYSIWYG, tapi daripada bingung memilih, saya sarankan untuk menggunakan <strong>TinyMCE</strong> atau <strong>CKEditor</strong>,\r\nkarena kedua open source editor WYSIWYG tersebut sudah teruji di CMS \r\nsekelas Joomla dan Wordpress. Alasan lainnya, karena kelengkapan \r\ndokumentasi, kaya fiturnya, kompatibilitas browser, dukungan forum, \r\nupdate, dan plugins. \r\n</p>\r\n<p style="text-align: justify">\r\nSaat searching di Google, saya ketemu sama yang namanya <strong>tinyFCK</strong> (<a href="http://p4a2.crealabsfoundation.org/tinyfck" target="_blank">http://p4a2.crealabsfoundation.org/tinyfck</a>), editor WYSIWYG yang menggabungkan kelebihan dari TinyMCE dan CKEditor, atau yang lebih kompleks lagi, yaitu <strong>TinyMCPUK</strong>,\r\nkarena selain menggabungkan kelebihan dari TinyMCE dan CKEditor, juga \r\nditambahkan image manager yang berguna untuk memanipulasi gambar.\r\n</p>\r\n', 'admin', 'Y'),
(14, 'Pemilik Facebook akan Dibuat Filmnya', '8', '<p style="text-align: justify">\r\nSutradara David Fincher nampak jeli melihat peluang di tengah booming \r\nfenomena Facebook. Fincher akan menghadirkan sebuah film yang \r\nmenceritakan tentang Mark Zuckerberg dan Facebook bagi para pencinta \r\nfilm dan Facebook tentunya.\r\n</p>\r\n<p style="text-align: justify">\r\n<img src="http://localhost./cms/tinymcpuk/gambar/Image/17mark_zuckerberg.jpg" alt=" " width="200" height="150" align="left" />Fincher mengaku rencana pembuatan film ini masih dinegosiasikan dengan \r\npihak Zuckerberg. Dia hanya menyebutkan, filmya akan fokus menceritakan \r\nMark Zuckerberg yang awalnya merancang Facebook sebatas untuk keperluan \r\nmahasiswa Universitas Harvard.\r\n</p>\r\n<p style="text-align: justify">\r\nFilm ini memaparkan bagaimana setelah itu Facebook kemudian berkembang \r\nmenjadi fenomena yang mendunia sejak diluncurkan pada 2004.\r\n</p>\r\n<p style="text-align: justify">\r\nDalam penggarapan film ini, Fincher mengajak serta orang-orang kompeten \r\ndi bidang film. Antara lain Aaron Sorkin, yang merupakan penulis naskah \r\nacara serial televisi ternama The West Wing.\r\n</p>\r\n<p style="text-align: justify">\r\nSementara itu, Columbia Pictures yang menamai film ini &quot;The Social \r\nNetwork&quot; dipercaya untuk memulai produksi film pada akhir tahun ini.\r\n</p>\r\n<p style="text-align: justify">\r\nSebagian orang menilai kehadiran film ini nantinya akan mengorek kembali\r\nkasus lama dimana tiga teman Zuckerberg, Cameron dan Tyler Winklevoss \r\nserta Divya Narendra mengklaim Zuckerberg telah mencuri ide mereka untuk\r\nmembuat Facebook.\r\n</p>\r\n<p style="text-align: justify">\r\nPada saat Zuckerberg meluncurkan Facebook, mereka menuntut perkara atas \r\nZuckerberg. Awal tahun ini, pengadilan AS memutuskan Facebook harus \r\nmembayar USD65 juta untuk melunasi perkara ini.\r\n</p>\r\n', 'admin', 'Y'),
(15, 'Penanganan Gempa Berjalan Cepat, Presiden SBY Puas', '13', '<p style="text-align: justify">\r\nPresiden\r\nSusilo Bambang Yudhoyono (SBY) mengaku puas atas reaksi\r\ninstansi-instansi terkait dalam menangani gempa di Nanggroe Aceh\r\nDarussalam dan beberapa daerah di Sumatera pada Rabu (7/4) pukul 05.15\r\nWIB. Menurut Presiden, sistem reaksi cepat penanggulangan bencana telah\r\nberjalan dengan baik.<br />\r\n<br />\r\n<img src="http://localhost./cms/tinymcpuk/gambar/Image/58sby.jpg" alt=" " width="200" height="144" align="left" />&quot;Saya juga senang bahwa sistem telah\r\nberjalan karena begitu diterima gempa, satuan reaksi cepat\r\npenanggulangan bencana siap di Halim,&quot; kata Presiden di Bandara Halim\r\nPerdanakusuma, Rabu (7/4). Presiden menyampaikan hal itu sebelum\r\nbertolak menuju Hanoi, Vietnam untuk menghadiri KTT ASEAN hingga Sabtu\r\n(10/4).<br />\r\n<br />\r\nPresiden mengatakan, dirinya langsung berkomunikasi\r\nKetua Badan Nasional Penanggulangan Bencana (BNPB), Gubernur NAD, dan\r\nGubernur Sumatera Utara. Melalui komunikasi itu, Presiden mendapat\r\ninformasi bahwa kerusakan yang ditimbulkan tergolong ringan dan\r\npemadaman listrik sudah berakhir. Presiden mengucapkan terima kasih\r\natas kerja sigap instansi terkait.<br />\r\n<br />\r\nDalam kesempatan sama,\r\nMenteri Sosial, Salim Segaf Aljufri, mengatakan, dampak dari gempa di\r\nAceh itu tergolong ringan, tidak banyak bangunan yang rusak berat.\r\n&quot;Luka berat empat orang, seluruhnya 12 orang yang dirawat di rumah\r\nsakit,&quot; kata mantan Dubes RI di Arab Saudi ini.<br />\r\n<br />\r\nSalim\r\nmengatakan, gempa itu juga masih bisa ditangani oleh pemerintah daerah.\r\nAlasannya, stok bantuan bahan pangan di daerah masih mencukupi,\r\nkhususnya beras dan lauk pauk. &quot;Buffer stock kita di provinsi cukup,\r\nberas ada 50 ton,&quot; ujar Salim. Penyaluran bantuan pun belum ada kendala\r\nberarti.\r\n</p>\r\n<p style="text-align: justify">\r\n(sumber: <span style="font-weight: bold">republika.co.id</span>) \r\n</p>\r\n', 'admin', 'Y'),
(16, 'Dalam Dua Pekan, KCB 2 Ditonton 1,5 Juta Penonton', '12', '<p style="text-align: justify">\r\nFilm Ketika Cinta Bertasbih (KCB) 2 diyakini bakal mereguk sukses \r\nseperti sekuel pertamanya Sejak diputar perdana tanggal 17 September \r\nlalu atau selama 15 hari, film garapan SinemArt telah disaksikan 1,5 \r\njuta penonton. \r\n</p>\r\n<p style="text-align: justify">\r\nRekor yang sama juga dialami KCB 1. &quot;Pada pemutaran KCB 1 kami bisa \r\nmemecah rekor pemutaran film di Indonesia, yaitu mendapat penonton \r\nsebanyak 100.000 perhari,&quot; ungkap Frans dari SinemArt saat promo film \r\nKCB 2 di Royal Plaza, Minggu (4/10).\r\n</p>\r\n<p style="text-align: justify">\r\n<img src="http://localhost./cms/tinymcpuk/gambar/Image/54kcb2.jpg" alt=" " width="180" height="135" align="left" />Pihak SinemArt berharap KCB 2 bisa meraih prestasi minimal sama dengan \r\nKCB 1 dengan total 3 juta penonton. Untuk mencapai target tersebut, \r\npihak SinemArt tak henti melakukan serangkaian promo di sejumlah kota di\r\nTanah Air maupun di mancanegara.\r\n</p>\r\n<p style="text-align: justify">\r\n&quot;Hari ini (Minggu, 4/10), Kholidi (Kholidi Asadil Alam, pemeran Azzam) \r\ndan Oki (Oki Setiana Dewi pemeran Anna) ke Hongkong untuk promo di \r\nsana,&quot; imbuh Frans. Pekan depan (10-12 Oktober 2009), giliran Meyda \r\nSefira berangkat ke Makau untuk kegiatan yang sama.\r\n</p>\r\n<p style="text-align: justify">\r\nFilm besutan sutradara Chaerul Umam ini juga dijadwalkan diputar di Aceh\r\npada tanggal 11-12 Oktober mendatang. Menurut Frans, pemutaran KCB 1 di\r\nkota yang dikenal dengan sebutan Serambi Mekkah ini ditonton 8.000 \r\norang.\r\n</p>\r\n<p style="text-align: justify">\r\nPadahal di kota tersebut sama sekali tidak ada gedung bioskop. Karena \r\nitu kru SinemArt terpaksa mengusung peralatan khusus dari Jakarta dan \r\nmemutar di sebuah gedung khusus selama dua hari dalam tujuh kali show.\r\n</p>\r\n<p style="text-align: justify">\r\nBertutur tentang kesan berperan di KCB 2, Kholidi beberapa waktu lalu \r\nmengaku paling terkesan dengan adegan kecelakaan saat membonceng Bu&#39;e \r\n(Ninik L Karim). Karena ketika sepeda motornya terjatuh dia harus teriak\r\nmemanggil ibundanya. &quot;Bu&#39;eee! Wah itu lumayan sulit,&quot; ungkap Kholidi.\r\n</p>\r\n<p style="text-align: justify">\r\nAdegan lain yang cukup berkesan adalah ketika pria asal Pasuruan ini \r\nterkapar di rumah sakit paska kecelakaan yang dia alami. &quot;Ekspresi orang\r\nsakitnya kan harus dapat. Terus suaranya juga harus disesuaikan, tidak \r\nseperti kita ngomong biasa, jadi agak sedikit tertahan di tenggorokan, \r\npowernya tidak full seperti ngomong biasanya,&quot; bebernya.\r\n</p>\r\n<p style="text-align: justify">\r\nUntuk adegan itu Kholidi yang kini menempuh pendidikan di Universitas Al\r\nAzhar, Jakarta melakukan observasi pada beberapa orang yang pernah \r\nmengalami kecelakaan. &quot;Aku juga tanya-tanya ke dokter. Ternyata di \r\ntempat tidurnya nggak bisa pakai bantal, posisi badannya harus lurus. \r\nTerus kalau ada gips di kaki, posisi jalan kita akan seperti apa. Biar \r\nnantinya terlihat lebih reel lah adengannya,&quot;  pungkas Kholidi. (sumber:\r\n<a href="http://surya.co.id">surya.co.id</a>) \r\n</p>\r\n', 'admin', 'Y'),
(24, 'Ini Judul berita', '8', 'Ini adalah isi berita Ini adalah isi berita Ini adalah isi berita Ini adalah isi berita <br />\r\n', 'test', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `tblkategori`
--

CREATE TABLE IF NOT EXISTS `tblkategori` (
`idkategori` int(5) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblkategori`
--

INSERT INTO `tblkategori` (`idkategori`, `kategori`) VALUES
(11, 'Olahraga'),
(8, 'Komputer'),
(13, 'Politik'),
(12, 'Hiburan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telp_hp` varchar(15) NOT NULL,
  `level` varchar(25) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama_lengkap`, `email`, `telp_hp`, `level`, `status`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@pijaronline.com', '081805727985', 'admin', 'Y'),
('test', '202cb962ac59075b964b07152d234b70', 'Tes aja', 'tes@gmail.com', '08135667889', 'user', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `download`
--
ALTER TABLE `download`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcms`
--
ALTER TABLE `tblcms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkategori`
--
ALTER TABLE `tblkategori`
 ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tblcms`
--
ALTER TABLE `tblcms`
MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tblkategori`
--
ALTER TABLE `tblkategori`
MODIFY `idkategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;--
-- Database: `datagereja`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_kk`
--

CREATE TABLE IF NOT EXISTS `table_kk` (
`id_k` int(3) NOT NULL,
  `nm_kk` varchar(34) NOT NULL,
  `tmp_lhr` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `nm_istri` varchar(40) NOT NULL,
  `tmpt_lhr` varchar(20) NOT NULL,
  `alamt` varchar(40) NOT NULL,
  `peker` varchar(30) NOT NULL,
  `jumlh_ank` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `table_kk`
--

INSERT INTO `table_kk` (`id_k`, `nm_kk`, `tmp_lhr`, `alamat`, `pekerjaan`, `nm_istri`, `tmpt_lhr`, `alamt`, `peker`, `jumlh_ank`) VALUES
(1, 'Bpk.Evan', 'mamasa19 april 1995', 'jln adyaksa baru', 'mahasiswa', 'odo', 'mamasa19 april 1994', 'jln adyaksa baru', 'Art', '3'),
(2, 'Bpk Agus', 'mamasa 20 maret 1995', 'mamasa', 'pns', 'arru', 'mamasa03 april 1991', 'mamasa', 'art', '4');

-- --------------------------------------------------------

--
-- Table structure for table `table_pp`
--

CREATE TABLE IF NOT EXISTS `table_pp` (
`id_pm` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmp_lhr` varchar(20) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamt` varchar(30) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `anak_dari` varchar(20) NOT NULL,
  `Sttus` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `table_pp`
--

INSERT INTO `table_pp` (`id_pm`, `nama`, `tmp_lhr`, `jk`, `alamt`, `pekerjaan`, `anak_dari`, `Sttus`) VALUES
(1, 'evan apranjaan', 'mamasa 10 april 1995', 'L', 'mamasa', 'mahasisswa', 'bapak Deppasarri', 'lajang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_kk`
--
ALTER TABLE `table_kk`
 ADD PRIMARY KEY (`id_k`);

--
-- Indexes for table `table_pp`
--
ALTER TABLE `table_pp`
 ADD PRIMARY KEY (`id_pm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_kk`
--
ALTER TABLE `table_kk`
MODIFY `id_k` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `table_pp`
--
ALTER TABLE `table_pp`
MODIFY `id_pm` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `db_cat`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE IF NOT EXISTS `m_admin` (
`id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(14, 'guru6', '21232f297a57a5a743894a0e4a801fc3', 'guru', 6),
(15, 'siswa9', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 9);

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE IF NOT EXISTS `m_guru` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nama`) VALUES
(6, 'DR.evan');

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE IF NOT EXISTS `m_mapel` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(5, 'C++'),
(6, 'paskal');

-- --------------------------------------------------------

--
-- Table structure for table `m_siswa`
--

CREATE TABLE IF NOT EXISTS `m_siswa` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`) VALUES
(9, 'evan aprianjaan', '2013020023', 'Teknik informatika');

-- --------------------------------------------------------

--
-- Table structure for table `m_soal`
--

CREATE TABLE IF NOT EXISTS `m_soal` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `bobot` int(2) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext NOT NULL,
  `opsi_b` longtext NOT NULL,
  `opsi_c` longtext NOT NULL,
  `opsi_d` longtext NOT NULL,
  `opsi_e` longtext NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `gambar`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`) VALUES
(1, 1, 1, 1, '', 'Indonesia menggunakan bahasa resmi bahasa .... ', 'Indonesia', 'Inggris', 'Prancis', 'Portugis', 'Melayu', 'A', '2015-08-27 18:20:22'),
(2, 1, 1, 1, '70thIndonesiaMerdeka.jpg', 'Gambar disamping adalah logo kemerdekaan Indonesia ke.. ', '67', '68', '69', '70', '71', 'D', '2015-08-27 18:21:02'),
(3, 1, 1, 1, '', 'Slogan peringatan HUT RI ke 70 adalah ...', 'Ayo makan.', 'Ayo minum', 'Ayo bermain', 'Ayo kerja', 'Ayo berbelanja', 'D', '2015-08-27 18:21:55'),
(4, 1, 1, 1, '', 'Bahasa Indonesia ditetapkan sebagai bahasa resmi pada tanggal ..', '20 Mei 1927', '28 Oktober 1928', '20 Mei 1928', '28 Mei 1920', '21 Juni 1917', 'B', '2015-08-27 18:23:13'),
(5, 1, 1, 1, '', 'Kalimat minimal terdiri dari pola ..', 'S-P-O', 'S-P-K', 'S-P-O-K', 'S-K', 'S-P', 'E', '2015-08-27 18:24:05'),
(6, 2, 2, 1, '', 'Table = .... (Indonesia)', 'Meja', 'Kursi', 'Lemari', 'Pintu', 'Jendela', 'A', '2015-08-27 18:24:44'),
(7, 2, 2, 1, '', 'Big = ... (indonesia)', 'Tinggi', 'Kurus', 'Panjang', 'Besar', 'Keras', 'D', '2015-08-27 18:25:22'),
(8, 2, 2, 1, '', 'Bola = .... (inggris)', 'ballon', 'ball', 'table', 'book', 'paper', 'B', '2015-08-27 18:25:57'),
(9, 2, 2, 1, '', 'I go to school by ...', 'road', 'field', 'shoes', 'drink', 'bus', 'E', '2015-08-27 18:26:48'),
(10, 2, 2, 1, '', 'Who is USA president now...', 'Ir. Jokowi', 'Angela Merkel', 'Barrack Obama', 'Tony Abbot', 'John F Kennedy', 'C', '2015-08-27 18:27:48'),
(11, 5, 3, 1, '', '2+3 = ...', '1', '2', '3', '4', '5', 'E', '2015-08-27 18:28:12'),
(12, 5, 3, 1, '', '1, 3, ..., ...., 9, 11', '4, 5', '4, 6', '5, 7', '6, 7', '1, 5', 'C', '2015-08-27 18:29:06'),
(13, 5, 3, 1, '', '(2 + 3) * 4 = ....', '20', '21', '22', '23', '24', 'A', '2015-08-27 18:29:34'),
(14, 5, 3, 1, '', '(90 / 10 ) - 5 = ...', '1', '2', '3', '4', '5', 'D', '2015-08-27 18:30:03'),
(15, 5, 3, 1, '', 'Akar dari 81 adalah ...', '7', '8', '9', '10', '11', 'C', '2015-08-27 18:30:27'),
(16, 4, 4, 1, '', 'Benda cair contohnya .. ?', 'es', 'batu', 'sirup', 'meja', 'udara', 'C', '2015-08-27 18:31:02'),
(17, 4, 4, 1, '', 'Perubahan bentuk dari cair menjadi padat disebut ...', 'menyublim', 'membeku', 'menguap', 'menghilang', 'magic', 'B', '2015-08-27 18:31:53'),
(18, 4, 4, 1, '', 'Uap air termasuk jenis benda ... ', 'gas', 'cair', 'padat', 'tidak nampak', 'panas', 'A', '2015-08-27 18:32:39'),
(19, 4, 4, 1, '', 'Yang menemukan hukum Newton adalah ...', 'George Washington', 'Georde Groban', 'George Bush', 'Issac Newton', 'Steven Gerrard', 'D', '2015-08-27 18:33:29'),
(20, 4, 4, 1, 'harga-kaca.jpg', 'Gambar di samping merupakan contoh benda ..', 'padat', 'cair', 'tak nampak', 'gas ', 'ghaib', 'A', '2015-08-27 18:34:18'),
(21, 1, 1, 1, 'images.jpg', 'Gambar di sampig adalah gambar ..', 'roti', 'batu bata', 'batu', 'kerupuk', 'nasi merah', 'B', '2015-08-27 18:46:11'),
(22, 4, 1, 1, '', 'soal', 'jawaban a', 'jawaban b', 'jawaban c', 'jawaban d', 'jawaban e', 'A', '2015-09-05 09:41:24'),
(23, 1, 1, 1, '20160229_095922.jpg', 'manaka anda.?', 'kiri', 'kana', 'atas', 'bawa', 'semua jawaban benar', 'C', '2016-06-06 21:29:56'),
(25, 6, 5, 2, 'binary-1414324_19201.jpg', 'gambar apaka ini.?\r\n', 'kapocino', 'hah', 'ahah', 'ahah', '31', 'A', '2016-06-06 21:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 4),
(4, 5, 3),
(5, 4, 1),
(6, 6, 5),
(7, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_tes`
--

CREATE TABLE IF NOT EXISTS `tr_guru_tes` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`) VALUES
(1, 1, 1, 'UTS bahasa indonesia', 6, 1, 'acak', ''),
(2, 2, 2, 'UTS Bahasa Inggris', 5, 1, 'acak', ''),
(3, 1, 1, 'Ujian', 5, 1, 'acak', ''),
(4, 6, 5, 'open book', 1, 1, 'acak', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ikut_ujian`
--

CREATE TABLE IF NOT EXISTS `tr_ikut_ujian` (
`id` int(6) NOT NULL,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` int(6) NOT NULL,
  `nilai_bobot` int(6) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(1, 3, 1, '4,3,5,22,1', '4:,3:,5:,22:,1:', 0, 0, 0, '2015-10-10 11:48:53', '2015-10-10 11:49:53', 'Y'),
(2, 1, 1, '22,1,2,5,21,3', '22:A,1:A,2:D,5:A,21:B,3:D', 5, 83, 5, '2016-06-06 21:32:53', '2016-06-06 21:33:53', 'N'),
(3, 4, 9, '25', '25:A', 1, 100, 2, '2016-06-06 21:51:24', '2016-06-06 21:52:24', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tr_siswa_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_siswa_mapel` (
`id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tr_siswa_mapel`
--

INSERT INTO `tr_siswa_mapel` (`id`, `id_siswa`, `id_mapel`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 2),
(5, 3, 3),
(6, 4, 2),
(7, 4, 3),
(8, 5, 3),
(9, 5, 4),
(10, 9, 5),
(11, 9, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_siswa_mapel`
--
ALTER TABLE `tr_siswa_mapel`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tr_siswa_mapel`
--
ALTER TABLE `tr_siswa_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;--
-- Database: `db_spk_siswaberprestasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aturan_fuzzy`
--

CREATE TABLE IF NOT EXISTS `tbl_aturan_fuzzy` (
  `id_aturan` int(5) NOT NULL,
  `aturan_ke` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aturan_fuzzy`
--

INSERT INTO `tbl_aturan_fuzzy` (`id_aturan`, `aturan_ke`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtl_aturan_fuzzy`
--

CREATE TABLE IF NOT EXISTS `tbl_dtl_aturan_fuzzy` (
  `id_detil` int(5) NOT NULL,
  `fk_aturan_fuzzy` int(3) NOT NULL,
  `level` int(2) DEFAULT NULL,
  `tipe` enum('anteseden','konsekuen') DEFAULT NULL,
  `fk_variabel` varchar(5) DEFAULT NULL,
  `fk_himpunan` varchar(5) DEFAULT NULL,
  `tanda_kurung` varchar(10) DEFAULT NULL,
  `jenis_kurung` enum('buka','tutup','kosong') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dtl_aturan_fuzzy`
--

INSERT INTO `tbl_dtl_aturan_fuzzy` (`id_detil`, `fk_aturan_fuzzy`, `level`, `tipe`, `fk_variabel`, `fk_himpunan`, `tanda_kurung`, `jenis_kurung`) VALUES
(1, 1, 1, 'anteseden', '1', '1', '', 'kosong'),
(2, 1, 2, 'anteseden', '2', '4', '(', 'buka'),
(3, 1, 3, 'anteseden', '3', '7', '(', 'buka'),
(4, 1, 3, 'anteseden', '4', '10', '))', 'tutup'),
(5, 1, 1, 'konsekuen', '5', '13', '', 'kosong'),
(6, 2, 1, 'anteseden', '1', '1', '', 'kosong'),
(7, 2, 2, 'anteseden', '2', '4', '(', 'buka'),
(8, 2, 3, 'anteseden', '3', '7', '(', 'buka'),
(9, 2, 3, 'anteseden', '4', '11', '))', 'tutup'),
(10, 2, 1, 'konsekuen', '5', '13', '', 'kosong'),
(11, 3, 1, 'anteseden', '1', '1', '', 'kosong'),
(12, 3, 2, 'anteseden', '2', '4', '(', 'buka'),
(13, 3, 3, 'anteseden', '3', '7', '(', 'buka'),
(14, 3, 3, 'anteseden', '4', '12', '))', 'tutup'),
(15, 3, 1, 'konsekuen', '5', '13', '', 'kosong'),
(16, 4, 1, 'anteseden', '1', '1', '', 'kosong'),
(17, 4, 2, 'anteseden', '2', '4', '(', 'buka'),
(18, 4, 3, 'anteseden', '3', '8', '(', 'buka'),
(19, 4, 3, 'anteseden', '4', '10', '))', 'tutup'),
(20, 4, 1, 'konsekuen', '5', '13', '', 'kosong'),
(21, 5, 1, 'anteseden', '1', '1', '', 'kosong'),
(22, 5, 2, 'anteseden', '2', '4', '(', 'buka'),
(23, 5, 3, 'anteseden', '3', '8', '(', 'buka'),
(24, 5, 3, 'anteseden', '4', '11', '))', 'tutup'),
(25, 5, 1, 'konsekuen', '5', '13', '', 'kosong'),
(26, 6, 1, 'anteseden', '1', '1', '', 'kosong'),
(27, 6, 2, 'anteseden', '2', '4', '(', 'buka'),
(28, 6, 3, 'anteseden', '3', '8', '(', 'buka'),
(29, 6, 3, 'anteseden', '4', '12', '))', 'tutup'),
(30, 6, 1, 'konsekuen', '5', '13', '', 'kosong'),
(31, 7, 1, 'anteseden', '1', '1', '', 'kosong'),
(32, 7, 2, 'anteseden', '2', '4', '(', 'buka'),
(33, 7, 3, 'anteseden', '3', '9', '(', 'buka'),
(34, 7, 3, 'anteseden', '4', '10', '))', 'tutup'),
(35, 7, 1, 'konsekuen', '5', '13', '', 'kosong'),
(36, 8, 1, 'anteseden', '1', '1', '', 'kosong'),
(37, 8, 2, 'anteseden', '2', '4', '(', 'buka'),
(38, 8, 3, 'anteseden', '3', '9', '(', 'buka'),
(39, 8, 3, 'anteseden', '4', '11', '))', 'tutup'),
(40, 8, 1, 'konsekuen', '5', '13', '', 'kosong'),
(41, 9, 1, 'anteseden', '1', '1', '', 'kosong'),
(42, 9, 2, 'anteseden', '2', '4', '(', 'buka'),
(43, 9, 3, 'anteseden', '3', '9', '(', 'buka'),
(44, 9, 3, 'anteseden', '4', '12', '))', 'tutup'),
(45, 9, 1, 'konsekuen', '5', '13', '', 'kosong'),
(46, 10, 1, 'anteseden', '1', '1', '', 'kosong'),
(47, 10, 2, 'anteseden', '2', '5', '(', 'buka'),
(48, 10, 3, 'anteseden', '3', '7', '(', 'buka'),
(49, 10, 3, 'anteseden', '4', '10', '))', 'tutup'),
(50, 10, 1, 'konsekuen', '5', '13', '', 'kosong'),
(51, 11, 1, 'anteseden', '1', '1', '', 'kosong'),
(52, 11, 2, 'anteseden', '2', '5', '(', 'buka'),
(53, 11, 3, 'anteseden', '3', '7', '(', 'buka'),
(54, 11, 3, 'anteseden', '4', '11', '))', 'tutup'),
(55, 11, 1, 'konsekuen', '5', '13', '', 'kosong'),
(56, 12, 1, 'anteseden', '1', '1', '', 'kosong'),
(57, 12, 2, 'anteseden', '2', '5', '(', 'buka'),
(58, 12, 3, 'anteseden', '3', '7', '(', 'buka'),
(59, 12, 3, 'anteseden', '4', '12', '))', 'tutup'),
(60, 12, 1, 'konsekuen', '5', '13', '', 'kosong'),
(61, 13, 1, 'anteseden', '1', '1', '', 'kosong'),
(62, 13, 2, 'anteseden', '2', '5', '(', 'buka'),
(63, 13, 3, 'anteseden', '3', '8', '(', 'buka'),
(64, 13, 3, 'anteseden', '4', '10', '))', 'tutup'),
(65, 13, 1, 'konsekuen', '5', '13', '', 'kosong'),
(66, 14, 1, 'anteseden', '1', '1', '', 'kosong'),
(67, 14, 2, 'anteseden', '2', '5', '(', 'buka'),
(68, 14, 3, 'anteseden', '3', '8', '(', 'buka'),
(69, 14, 3, 'anteseden', '4', '11', '))', 'tutup'),
(70, 14, 1, 'konsekuen', '5', '13', '', 'kosong'),
(71, 15, 1, 'anteseden', '1', '1', '', 'kosong'),
(72, 15, 2, 'anteseden', '2', '5', '(', 'buka'),
(73, 15, 3, 'anteseden', '3', '8', '(', 'buka'),
(74, 15, 3, 'anteseden', '4', '12', '))', 'tutup'),
(75, 15, 1, 'konsekuen', '5', '13', '', 'kosong'),
(76, 16, 1, 'anteseden', '1', '1', '', 'kosong'),
(77, 16, 2, 'anteseden', '2', '5', '(', 'buka'),
(78, 16, 3, 'anteseden', '3', '9', '(', 'buka'),
(79, 16, 3, 'anteseden', '4', '10', '))', 'tutup'),
(80, 16, 1, 'konsekuen', '5', '13', '', 'kosong'),
(81, 17, 1, 'anteseden', '1', '1', '', 'kosong'),
(82, 17, 2, 'anteseden', '2', '5', '(', 'buka'),
(83, 17, 3, 'anteseden', '3', '9', '(', 'buka'),
(84, 17, 3, 'anteseden', '4', '11', '))', 'tutup'),
(85, 17, 1, 'konsekuen', '5', '13', '', 'kosong'),
(86, 18, 1, 'anteseden', '1', '1', '', 'kosong'),
(87, 18, 2, 'anteseden', '2', '5', '(', 'buka'),
(88, 18, 3, 'anteseden', '3', '9', '(', 'buka'),
(89, 18, 3, 'anteseden', '4', '12', '))', 'tutup'),
(90, 18, 1, 'konsekuen', '5', '13', '', 'kosong'),
(91, 19, 1, 'anteseden', '1', '1', '', 'kosong'),
(92, 19, 2, 'anteseden', '2', '6', '(', 'buka'),
(93, 19, 3, 'anteseden', '3', '7', '(', 'buka'),
(94, 19, 3, 'anteseden', '4', '10', '))', 'tutup'),
(95, 19, 1, 'konsekuen', '5', '13', '', 'kosong'),
(96, 20, 1, 'anteseden', '1', '1', '', 'kosong'),
(97, 20, 2, 'anteseden', '2', '6', '(', 'buka'),
(98, 20, 3, 'anteseden', '3', '7', '(', 'buka'),
(99, 20, 3, 'anteseden', '4', '11', '))', 'tutup'),
(100, 20, 1, 'konsekuen', '5', '13', '', 'kosong'),
(101, 21, 1, 'anteseden', '1', '1', '', 'kosong'),
(102, 21, 2, 'anteseden', '2', '6', '(', 'buka'),
(103, 21, 3, 'anteseden', '3', '7', '(', 'buka'),
(104, 21, 3, 'anteseden', '4', '12', '))', 'tutup'),
(105, 21, 1, 'konsekuen', '5', '13', '', 'kosong'),
(106, 22, 1, 'anteseden', '1', '1', '', 'kosong'),
(107, 22, 2, 'anteseden', '2', '6', '(', 'buka'),
(108, 22, 3, 'anteseden', '3', '8', '(', 'buka'),
(109, 22, 3, 'anteseden', '4', '10', '))', 'tutup'),
(110, 22, 1, 'konsekuen', '5', '13', '', 'kosong'),
(111, 23, 1, 'anteseden', '1', '1', '', 'kosong'),
(112, 23, 2, 'anteseden', '2', '6', '(', 'buka'),
(113, 23, 3, 'anteseden', '3', '8', '(', 'buka'),
(114, 23, 3, 'anteseden', '4', '11', '))', 'tutup'),
(115, 23, 1, 'konsekuen', '5', '13', '', 'kosong'),
(116, 24, 1, 'anteseden', '1', '1', '', 'kosong'),
(117, 24, 2, 'anteseden', '2', '6', '(', 'buka'),
(118, 24, 3, 'anteseden', '3', '8', '(', 'buka'),
(119, 24, 3, 'anteseden', '4', '12', '))', 'tutup'),
(120, 24, 1, 'konsekuen', '5', '13', '', 'kosong'),
(121, 25, 1, 'anteseden', '1', '1', '', 'kosong'),
(122, 25, 2, 'anteseden', '2', '6', '(', 'buka'),
(123, 25, 3, 'anteseden', '3', '9', '(', 'buka'),
(124, 25, 3, 'anteseden', '4', '10', '))', 'tutup'),
(125, 25, 1, 'konsekuen', '5', '13', '', 'kosong'),
(126, 26, 1, 'anteseden', '1', '1', '', 'kosong'),
(127, 26, 2, 'anteseden', '2', '6', '(', 'buka'),
(128, 26, 3, 'anteseden', '3', '9', '(', 'buka'),
(129, 26, 3, 'anteseden', '4', '11', '))', 'tutup'),
(130, 26, 1, 'konsekuen', '5', '13', '', 'kosong'),
(131, 27, 1, 'anteseden', '1', '1', '', 'kosong'),
(132, 27, 2, 'anteseden', '2', '6', '(', 'buka'),
(133, 27, 3, 'anteseden', '3', '9', '(', 'buka'),
(134, 27, 3, 'anteseden', '4', '12', '))', 'tutup'),
(135, 27, 1, 'konsekuen', '5', '13', '', 'kosong'),
(136, 28, 1, 'anteseden', '1', '2', '', 'kosong'),
(137, 28, 2, 'anteseden', '2', '4', '(', 'buka'),
(138, 28, 3, 'anteseden', '3', '7', '(', 'buka'),
(139, 28, 3, 'anteseden', '4', '10', '))', 'tutup'),
(140, 28, 1, 'konsekuen', '5', '13', '', 'kosong'),
(141, 29, 1, 'anteseden', '1', '2', '', 'kosong'),
(142, 29, 2, 'anteseden', '2', '4', '(', 'buka'),
(143, 29, 3, 'anteseden', '3', '7', '(', 'buka'),
(144, 29, 3, 'anteseden', '4', '11', '))', 'tutup'),
(145, 29, 1, 'konsekuen', '5', '13', '', 'kosong'),
(146, 30, 1, 'anteseden', '1', '2', '', 'kosong'),
(147, 30, 2, 'anteseden', '2', '4', '(', 'buka'),
(148, 30, 3, 'anteseden', '3', '7', '(', 'buka'),
(149, 30, 3, 'anteseden', '4', '12', '))', 'tutup'),
(150, 30, 1, 'konsekuen', '5', '13', '', 'kosong'),
(151, 31, 1, 'anteseden', '1', '2', '', 'kosong'),
(152, 31, 2, 'anteseden', '2', '4', '(', 'buka'),
(153, 31, 3, 'anteseden', '3', '8', '(', 'buka'),
(154, 31, 3, 'anteseden', '4', '10', '))', 'tutup'),
(155, 31, 1, 'konsekuen', '5', '13', '', 'kosong'),
(156, 32, 1, 'anteseden', '1', '2', '', 'kosong'),
(157, 32, 2, 'anteseden', '2', '4', '(', 'buka'),
(158, 32, 3, 'anteseden', '3', '8', '(', 'buka'),
(159, 32, 3, 'anteseden', '4', '11', '))', 'tutup'),
(160, 32, 1, 'konsekuen', '5', '13', '', 'kosong'),
(161, 33, 1, 'anteseden', '1', '2', '', 'kosong'),
(162, 33, 2, 'anteseden', '2', '4', '(', 'buka'),
(163, 33, 3, 'anteseden', '3', '8', '(', 'buka'),
(164, 33, 3, 'anteseden', '4', '12', '))', 'tutup'),
(165, 33, 1, 'konsekuen', '5', '13', '', 'kosong'),
(166, 34, 1, 'anteseden', '1', '2', '', 'kosong'),
(167, 34, 2, 'anteseden', '2', '4', '(', 'buka'),
(168, 34, 3, 'anteseden', '3', '9', '(', 'buka'),
(169, 34, 3, 'anteseden', '4', '10', '))', 'tutup'),
(170, 34, 1, 'konsekuen', '5', '13', '', 'kosong'),
(171, 35, 1, 'anteseden', '1', '2', '', 'kosong'),
(172, 35, 2, 'anteseden', '2', '4', '(', 'buka'),
(173, 35, 3, 'anteseden', '3', '9', '(', 'buka'),
(174, 35, 3, 'anteseden', '4', '11', '))', 'tutup'),
(175, 35, 1, 'konsekuen', '5', '13', '', 'kosong'),
(176, 36, 1, 'anteseden', '1', '2', '', 'kosong'),
(177, 36, 2, 'anteseden', '2', '4', '(', 'buka'),
(178, 36, 3, 'anteseden', '3', '9', '(', 'buka'),
(179, 36, 3, 'anteseden', '4', '12', '))', 'tutup'),
(180, 36, 1, 'konsekuen', '5', '13', '', 'kosong'),
(181, 37, 1, 'anteseden', '1', '2', '', 'kosong'),
(182, 37, 2, 'anteseden', '2', '5', '(', 'buka'),
(183, 37, 3, 'anteseden', '3', '7', '(', 'buka'),
(184, 37, 3, 'anteseden', '4', '10', '))', 'tutup'),
(185, 37, 1, 'konsekuen', '5', '13', '', 'kosong'),
(186, 38, 1, 'anteseden', '1', '2', '', 'kosong'),
(187, 38, 2, 'anteseden', '2', '5', '(', 'buka'),
(188, 38, 3, 'anteseden', '3', '7', '(', 'buka'),
(189, 38, 3, 'anteseden', '4', '11', '))', 'tutup'),
(190, 38, 1, 'konsekuen', '5', '13', '', 'kosong'),
(191, 39, 1, 'anteseden', '1', '2', '', 'kosong'),
(192, 39, 2, 'anteseden', '2', '5', '(', 'buka'),
(193, 39, 3, 'anteseden', '3', '7', '(', 'buka'),
(194, 39, 3, 'anteseden', '4', '12', '))', 'tutup'),
(195, 39, 1, 'konsekuen', '5', '13', '', 'kosong'),
(196, 40, 1, 'anteseden', '1', '2', '', 'kosong'),
(197, 40, 2, 'anteseden', '2', '5', '(', 'buka'),
(198, 40, 3, 'anteseden', '3', '8', '(', 'buka'),
(199, 40, 3, 'anteseden', '4', '10', '))', 'tutup'),
(200, 40, 1, 'konsekuen', '5', '13', '', 'kosong'),
(201, 41, 1, 'anteseden', '1', '2', '', 'kosong'),
(202, 41, 2, 'anteseden', '2', '5', '(', 'buka'),
(203, 41, 3, 'anteseden', '3', '8', '(', 'buka'),
(204, 41, 3, 'anteseden', '4', '11', '))', 'tutup'),
(205, 41, 1, 'konsekuen', '5', '13', '', 'kosong'),
(206, 42, 1, 'anteseden', '1', '2', '', 'kosong'),
(207, 42, 2, 'anteseden', '2', '5', '(', 'buka'),
(208, 42, 3, 'anteseden', '3', '8', '(', 'buka'),
(209, 42, 3, 'anteseden', '4', '12', '))', 'tutup'),
(210, 42, 1, 'konsekuen', '5', '13', '', 'kosong'),
(211, 43, 1, 'anteseden', '1', '2', '', 'kosong'),
(212, 43, 2, 'anteseden', '2', '5', '(', 'buka'),
(213, 43, 3, 'anteseden', '3', '8', '(', 'buka'),
(214, 43, 3, 'anteseden', '4', '12', '))', 'tutup'),
(215, 43, 1, 'konsekuen', '5', '13', '', 'kosong'),
(216, 44, 1, 'anteseden', '1', '2', '', 'kosong'),
(217, 44, 2, 'anteseden', '2', '5', '(', 'buka'),
(218, 44, 3, 'anteseden', '3', '9', '(', 'buka'),
(219, 44, 3, 'anteseden', '4', '10', '))', 'tutup'),
(220, 44, 1, 'konsekuen', '5', '13', '', 'kosong'),
(221, 45, 1, 'anteseden', '1', '2', '', 'kosong'),
(222, 45, 2, 'anteseden', '2', '5', '(', 'buka'),
(223, 45, 3, 'anteseden', '3', '9', '(', 'buka'),
(224, 45, 3, 'anteseden', '4', '11', '))', 'tutup'),
(225, 45, 1, 'konsekuen', '5', '13', '', 'kosong'),
(226, 46, 1, 'anteseden', '1', '2', '', 'kosong'),
(227, 46, 2, 'anteseden', '2', '5', '(', 'buka'),
(228, 46, 3, 'anteseden', '3', '9', '(', 'buka'),
(229, 46, 3, 'anteseden', '4', '12', '))', 'tutup'),
(230, 46, 1, 'konsekuen', '5', '13', '', 'kosong'),
(231, 47, 1, 'anteseden', '1', '2', '', 'kosong'),
(232, 47, 2, 'anteseden', '2', '6', '(', 'buka'),
(233, 47, 3, 'anteseden', '3', '7', '(', 'buka'),
(234, 47, 3, 'anteseden', '4', '10', '))', 'tutup'),
(235, 47, 1, 'konsekuen', '5', '13', '', 'kosong'),
(236, 48, 1, 'anteseden', '1', '2', '', 'kosong'),
(237, 48, 2, 'anteseden', '2', '6', '(', 'buka'),
(238, 48, 3, 'anteseden', '3', '7', '(', 'buka'),
(239, 48, 3, 'anteseden', '4', '11', '))', 'tutup'),
(240, 48, 1, 'konsekuen', '5', '13', '', 'kosong'),
(241, 49, 1, 'anteseden', '1', '2', '', 'kosong'),
(242, 49, 2, 'anteseden', '2', '6', '(', 'buka'),
(243, 49, 3, 'anteseden', '3', '7', '(', 'buka'),
(244, 49, 3, 'anteseden', '4', '12', '))', 'tutup'),
(245, 49, 1, 'konsekuen', '5', '13', '', 'kosong'),
(246, 50, 1, 'anteseden', '1', '2', '', 'kosong'),
(247, 50, 2, 'anteseden', '2', '6', '(', 'buka'),
(248, 50, 3, 'anteseden', '3', '8', '(', 'buka'),
(249, 50, 3, 'anteseden', '4', '10', '))', 'tutup'),
(250, 50, 1, 'konsekuen', '5', '13', '', 'kosong'),
(251, 51, 1, 'anteseden', '1', '2', '', 'kosong'),
(252, 51, 2, 'anteseden', '2', '6', '(', 'buka'),
(253, 51, 3, 'anteseden', '3', '8', '(', 'buka'),
(254, 51, 3, 'anteseden', '4', '11', '))', 'tutup'),
(255, 51, 1, 'konsekuen', '5', '13', '', 'kosong'),
(256, 52, 1, 'anteseden', '1', '2', '', 'kosong'),
(257, 52, 2, 'anteseden', '2', '6', '(', 'buka'),
(258, 52, 3, 'anteseden', '3', '8', '(', 'buka'),
(259, 52, 3, 'anteseden', '4', '12', '))', 'tutup'),
(260, 52, 1, 'konsekuen', '5', '14', '', 'kosong'),
(261, 53, 1, 'anteseden', '1', '2', '', 'kosong'),
(262, 53, 2, 'anteseden', '2', '6', '(', 'buka'),
(263, 53, 3, 'anteseden', '3', '9', '(', 'buka'),
(264, 53, 3, 'anteseden', '4', '10', '))', 'tutup'),
(265, 53, 1, 'konsekuen', '5', '13', '', 'kosong'),
(266, 54, 1, 'anteseden', '1', '2', '', 'kosong'),
(267, 54, 2, 'anteseden', '2', '6', '(', 'buka'),
(268, 54, 3, 'anteseden', '3', '9', '(', 'buka'),
(269, 54, 3, 'anteseden', '4', '11', '))', 'tutup'),
(270, 54, 1, 'konsekuen', '5', '13', '', 'kosong'),
(271, 55, 1, 'anteseden', '1', '2', '', 'kosong'),
(272, 55, 2, 'anteseden', '2', '6', '(', 'buka'),
(273, 55, 3, 'anteseden', '3', '9', '(', 'buka'),
(274, 55, 3, 'anteseden', '4', '12', '))', 'tutup'),
(275, 55, 1, 'konsekuen', '5', '14', '', 'kosong'),
(276, 56, 1, 'anteseden', '1', '3', '', 'kosong'),
(277, 56, 2, 'anteseden', '2', '4', '(', 'buka'),
(278, 56, 3, 'anteseden', '3', '7', '(', 'buka'),
(279, 56, 3, 'anteseden', '4', '10', '))', 'tutup'),
(280, 56, 1, 'konsekuen', '5', '13', '', 'kosong'),
(281, 57, 1, 'anteseden', '1', '3', '', 'kosong'),
(282, 57, 2, 'anteseden', '2', '4', '(', 'buka'),
(283, 57, 3, 'anteseden', '3', '7', '(', 'buka'),
(284, 57, 3, 'anteseden', '4', '11', '))', 'tutup'),
(285, 57, 1, 'konsekuen', '5', '13', '', 'kosong'),
(286, 58, 1, 'anteseden', '1', '3', '', 'kosong'),
(287, 58, 2, 'anteseden', '2', '4', '(', 'buka'),
(288, 58, 3, 'anteseden', '3', '7', '(', 'buka'),
(289, 58, 3, 'anteseden', '4', '12', '))', 'tutup'),
(290, 58, 1, 'konsekuen', '5', '13', '', 'kosong'),
(291, 59, 1, 'anteseden', '1', '3', '', 'kosong'),
(292, 59, 2, 'anteseden', '2', '4', '(', 'buka'),
(293, 59, 3, 'anteseden', '3', '8', '(', 'buka'),
(294, 59, 3, 'anteseden', '4', '10', '))', 'tutup'),
(295, 59, 1, 'konsekuen', '5', '13', '', 'kosong'),
(296, 60, 1, 'anteseden', '1', '3', '', 'kosong'),
(297, 60, 2, 'anteseden', '2', '4', '(', 'buka'),
(298, 60, 3, 'anteseden', '3', '8', '(', 'buka'),
(299, 60, 3, 'anteseden', '4', '11', '))', 'tutup'),
(300, 60, 1, 'konsekuen', '5', '13', '', 'kosong'),
(301, 61, 1, 'anteseden', '1', '3', '', 'kosong'),
(302, 61, 2, 'anteseden', '2', '4', '(', 'buka'),
(303, 61, 3, 'anteseden', '3', '8', '(', 'buka'),
(304, 61, 3, 'anteseden', '4', '12', '))', 'tutup'),
(305, 61, 1, 'konsekuen', '5', '13', '', 'kosong'),
(306, 62, 1, 'anteseden', '1', '3', '', 'kosong'),
(307, 62, 2, 'anteseden', '2', '4', '(', 'buka'),
(308, 62, 3, 'anteseden', '3', '9', '(', 'buka'),
(309, 62, 3, 'anteseden', '4', '10', '))', 'tutup'),
(310, 62, 1, 'konsekuen', '5', '13', '', 'kosong'),
(311, 63, 1, 'anteseden', '1', '3', '', 'kosong'),
(312, 63, 2, 'anteseden', '2', '4', '(', 'buka'),
(313, 63, 3, 'anteseden', '3', '9', '(', 'buka'),
(314, 63, 3, 'anteseden', '4', '11', '))', 'tutup'),
(315, 63, 1, 'konsekuen', '5', '13', '', 'kosong'),
(316, 64, 1, 'anteseden', '1', '3', '', 'kosong'),
(317, 64, 2, 'anteseden', '2', '4', '(', 'buka'),
(318, 64, 3, 'anteseden', '3', '9', '(', 'buka'),
(319, 64, 3, 'anteseden', '4', '12', '))', 'tutup'),
(320, 64, 1, 'konsekuen', '5', '13', '', 'kosong'),
(321, 65, 1, 'anteseden', '1', '3', '', 'kosong'),
(322, 65, 2, 'anteseden', '2', '5', '(', 'buka'),
(323, 65, 3, 'anteseden', '3', '7', '(', 'buka'),
(324, 65, 3, 'anteseden', '4', '10', '))', 'tutup'),
(325, 65, 1, 'konsekuen', '5', '13', '', 'kosong'),
(326, 66, 1, 'anteseden', '1', '3', '', 'kosong'),
(327, 66, 2, 'anteseden', '2', '5', '(', 'buka'),
(328, 66, 3, 'anteseden', '3', '7', '(', 'buka'),
(329, 66, 3, 'anteseden', '4', '11', '))', 'tutup'),
(330, 66, 1, 'konsekuen', '5', '13', '', 'kosong'),
(331, 67, 1, 'anteseden', '1', '3', '', 'kosong'),
(332, 67, 2, 'anteseden', '2', '5', '(', 'buka'),
(333, 67, 3, 'anteseden', '3', '7', '(', 'buka'),
(334, 67, 3, 'anteseden', '4', '12', '))', 'tutup'),
(335, 67, 1, 'konsekuen', '5', '13', '', 'kosong'),
(336, 68, 1, 'anteseden', '1', '3', '', 'kosong'),
(337, 68, 2, 'anteseden', '2', '5', '(', 'buka'),
(338, 68, 3, 'anteseden', '3', '8', '(', 'buka'),
(339, 68, 3, 'anteseden', '4', '10', '))', 'tutup'),
(340, 68, 1, 'konsekuen', '5', '13', '', 'kosong'),
(341, 69, 1, 'anteseden', '1', '3', '', 'kosong'),
(342, 69, 2, 'anteseden', '2', '5', '(', 'buka'),
(343, 69, 3, 'anteseden', '3', '8', '(', 'buka'),
(344, 69, 3, 'anteseden', '4', '11', '))', 'tutup'),
(345, 69, 1, 'konsekuen', '5', '13', '', 'kosong'),
(346, 70, 1, 'anteseden', '1', '3', '', 'kosong'),
(347, 70, 2, 'anteseden', '2', '5', '(', 'buka'),
(348, 70, 3, 'anteseden', '3', '9', '(', 'buka'),
(349, 70, 3, 'anteseden', '4', '10', '))', 'tutup'),
(350, 70, 1, 'konsekuen', '5', '13', '', 'kosong'),
(351, 71, 1, 'anteseden', '1', '3', '', 'kosong'),
(352, 71, 2, 'anteseden', '2', '5', '(', 'buka'),
(353, 71, 3, 'anteseden', '3', '9', '(', 'buka'),
(354, 71, 3, 'anteseden', '4', '11', '))', 'tutup'),
(355, 71, 1, 'konsekuen', '5', '13', '', 'kosong'),
(356, 72, 1, 'anteseden', '1', '3', '', 'kosong'),
(357, 72, 2, 'anteseden', '2', '5', '(', 'buka'),
(358, 72, 3, 'anteseden', '3', '9', '(', 'buka'),
(359, 72, 3, 'anteseden', '4', '12', '))', 'tutup'),
(360, 72, 1, 'konsekuen', '5', '13', '', 'kosong'),
(361, 73, 1, 'anteseden', '1', '3', '', 'kosong'),
(362, 73, 2, 'anteseden', '2', '6', '(', 'buka'),
(363, 73, 3, 'anteseden', '3', '7', '(', 'buka'),
(364, 73, 3, 'anteseden', '4', '10', '))', 'tutup'),
(365, 73, 1, 'konsekuen', '5', '13', '', 'kosong'),
(366, 74, 1, 'anteseden', '1', '3', '', 'kosong'),
(367, 74, 2, 'anteseden', '2', '6', '(', 'buka'),
(368, 74, 3, 'anteseden', '3', '7', '(', 'buka'),
(369, 74, 3, 'anteseden', '4', '11', '))', 'tutup'),
(370, 74, 1, 'konsekuen', '5', '13', '', 'kosong'),
(371, 75, 1, 'anteseden', '1', '3', '', 'kosong'),
(372, 75, 2, 'anteseden', '2', '6', '(', 'buka'),
(373, 75, 3, 'anteseden', '3', '7', '(', 'buka'),
(374, 75, 3, 'anteseden', '4', '12', '))', 'tutup'),
(375, 75, 1, 'konsekuen', '5', '13', '', 'kosong'),
(376, 76, 1, 'anteseden', '1', '3', '', 'kosong'),
(377, 76, 2, 'anteseden', '2', '6', '(', 'buka'),
(378, 76, 3, 'anteseden', '3', '8', '(', 'buka'),
(379, 76, 3, 'anteseden', '4', '10', '))', 'tutup'),
(380, 76, 1, 'konsekuen', '5', '13', '', 'kosong'),
(381, 77, 1, 'anteseden', '1', '3', '', 'kosong'),
(382, 77, 2, 'anteseden', '2', '6', '(', 'buka'),
(383, 77, 3, 'anteseden', '3', '8', '(', 'buka'),
(384, 77, 3, 'anteseden', '4', '10', '))', 'tutup'),
(385, 77, 1, 'konsekuen', '5', '13', '', 'kosong'),
(386, 78, 1, 'anteseden', '1', '3', '', 'kosong'),
(387, 78, 2, 'anteseden', '2', '6', '(', 'buka'),
(388, 78, 3, 'anteseden', '3', '8', '(', 'buka'),
(389, 78, 3, 'anteseden', '4', '11', '))', 'tutup'),
(390, 78, 1, 'konsekuen', '5', '13', '', 'kosong'),
(391, 79, 1, 'anteseden', '1', '3', '', 'kosong'),
(392, 79, 2, 'anteseden', '2', '6', '(', 'buka'),
(393, 79, 3, 'anteseden', '3', '8', '(', 'buka'),
(394, 79, 3, 'anteseden', '4', '12', '))', 'tutup'),
(395, 79, 1, 'konsekuen', '5', '14', '', 'kosong'),
(396, 80, 1, 'anteseden', '1', '3', '', 'kosong'),
(397, 80, 2, 'anteseden', '2', '6', '(', 'buka'),
(398, 80, 3, 'anteseden', '3', '9', '(', 'buka'),
(399, 80, 3, 'anteseden', '4', '10', '))', 'tutup'),
(400, 80, 1, 'konsekuen', '5', '13', '', 'kosong'),
(401, 81, 1, 'anteseden', '1', '3', '', 'kosong'),
(402, 81, 2, 'anteseden', '2', '6', '(', 'buka'),
(403, 81, 3, 'anteseden', '3', '9', '(', 'buka'),
(404, 81, 3, 'anteseden', '4', '11', '))', 'tutup'),
(405, 81, 1, 'konsekuen', '5', '13', '', 'kosong'),
(406, 82, 1, 'anteseden', '1', '3', '', 'kosong'),
(407, 82, 2, 'anteseden', '2', '6', '(', 'buka'),
(408, 82, 3, 'anteseden', '3', '9', '(', 'buka'),
(409, 82, 3, 'anteseden', '4', '11', '))', 'tutup'),
(410, 82, 1, 'konsekuen', '5', '13', '', 'kosong'),
(411, 83, 1, 'anteseden', '1', '3', '', 'kosong'),
(412, 83, 2, 'anteseden', '2', '6', '(', 'buka'),
(413, 83, 3, 'anteseden', '3', '9', '(', 'buka'),
(414, 83, 3, 'anteseden', '4', '12', '))', 'tutup'),
(415, 83, 1, 'konsekuen', '5', '14', '', 'kosong');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtl_hasil_fuzzy`
--

CREATE TABLE IF NOT EXISTS `tbl_dtl_hasil_fuzzy` (
  `id_detil` int(10) NOT NULL,
  `fk_hasil` int(10) DEFAULT NULL,
  `nis` varchar(20) NOT NULL,
  `nilai` float(6,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dtl_hasil_fuzzy`
--

INSERT INTO `tbl_dtl_hasil_fuzzy` (`id_detil`, `fk_hasil`, `nis`, `nilai`) VALUES
(1, 1, '1001', 73.6111),
(2, 1, '1002', 48.8889),
(3, 1, '1003', 46.4957),
(4, 1, '1004', 54.4444),
(5, 1, '1005', 40.2317),
(6, 2, '1006', 55.1111),
(7, 2, '1007', 47.9710),
(8, 2, '1008', 48.4444),
(9, 2, '1009', 47.3725),
(10, 2, '1010', 40.7735),
(11, 3, '1011', 51.3118),
(12, 3, '1012', 53.8889),
(13, 3, '1013', 50.1667),
(14, 3, '1014', 56.2735),
(15, 3, '1015', 54.3210),
(16, 4, '2001', 77.7778),
(17, 4, '2002', 35.8020),
(18, 4, '2003', 42.8376),
(19, 4, '2004', 40.2963),
(20, 4, '2005', 53.8562),
(21, 5, '2006', 45.4902),
(22, 5, '2007', 54.2222),
(23, 5, '2008', 53.8272),
(24, 5, '2009', 35.8974),
(25, 5, '2010', 53.8889),
(26, 6, '2011', 77.7778),
(27, 6, '2012', 73.6111),
(28, 6, '2013', 35.8974),
(29, 6, '2014', 54.4444),
(30, 6, '2015', 53.8889),
(31, 7, '3001', 54.2222),
(32, 7, '3002', 53.7778),
(33, 7, '3003', 54.2222),
(34, 7, '3004', 53.8562),
(35, 7, '3005', 45.1680),
(42, 9, '1001', 73.6111),
(43, 9, '1006', 55.1111),
(44, 9, '1014', 56.2735),
(45, 10, '2001', 77.7778),
(46, 10, '2007', 54.2222),
(47, 10, '2011', 77.7778),
(48, 11, '3006', 54.9542),
(49, 11, '3007', 40.0000),
(50, 11, '3008', 54.2222),
(51, 11, '3009', 54.4444),
(52, 11, '3010', 53.8562),
(53, 11, '3011', 43.2184),
(54, 12, '3001', 54.2222),
(55, 12, '3006', 54.9542),
(56, 13, '1001', 73.6111),
(57, 13, '2001', 77.7778),
(58, 13, '3006', 54.9542);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtl_hasil_nilaikeanggotaan`
--

CREATE TABLE IF NOT EXISTS `tbl_dtl_hasil_nilaikeanggotaan` (
  `id_detil` int(10) NOT NULL,
  `fk_hasil` int(10) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `variabel` varchar(100) NOT NULL,
  `himpunan` varchar(100) NOT NULL,
  `nilai` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dtl_hasil_nilaikeanggotaan`
--

INSERT INTO `tbl_dtl_hasil_nilaikeanggotaan` (`id_detil`, `fk_hasil`, `nis`, `variabel`, `himpunan`, `nilai`) VALUES
(1, 1, '1001', '1', '1', 0.00),
(2, 1, '1001', '1', '2', 0.00),
(3, 1, '1001', '1', '3', 0.78),
(4, 1, '1002', '1', '1', 0.00),
(5, 1, '1002', '1', '2', 0.00),
(6, 1, '1002', '1', '3', 0.56),
(7, 1, '1003', '1', '1', 0.00),
(8, 1, '1003', '1', '2', 0.00),
(9, 1, '1003', '1', '3', 0.78),
(10, 1, '1004', '1', '1', 0.00),
(11, 1, '1004', '1', '2', 0.56),
(12, 1, '1004', '1', '3', 0.33),
(13, 1, '1005', '1', '1', 0.00),
(14, 1, '1005', '1', '2', 0.78),
(15, 1, '1005', '1', '3', 0.44),
(16, 1, '1001', '2', '4', 0.00),
(17, 1, '1001', '2', '5', 0.00),
(18, 1, '1001', '2', '6', 0.56),
(19, 1, '1002', '2', '4', 0.00),
(20, 1, '1002', '2', '5', 0.56),
(21, 1, '1002', '2', '6', 0.33),
(22, 1, '1003', '2', '4', 0.00),
(23, 1, '1003', '2', '5', 0.00),
(24, 1, '1003', '2', '6', 0.56),
(25, 1, '1004', '2', '4', 0.00),
(26, 1, '1004', '2', '5', 0.56),
(27, 1, '1004', '2', '6', 0.33),
(28, 1, '1005', '2', '4', 0.00),
(29, 1, '1005', '2', '5', 0.78),
(30, 1, '1005', '2', '6', 0.44),
(31, 1, '1001', '3', '7', 0.00),
(32, 1, '1001', '3', '8', 0.56),
(33, 1, '1001', '3', '9', 0.33),
(34, 1, '1002', '3', '7', 0.00),
(35, 1, '1002', '3', '8', 0.33),
(36, 1, '1002', '3', '9', 0.00),
(37, 1, '1003', '3', '7', 0.00),
(38, 1, '1003', '3', '8', 0.56),
(39, 1, '1003', '3', '9', 0.33),
(40, 1, '1004', '3', '7', 0.00),
(41, 1, '1004', '3', '8', 0.11),
(42, 1, '1004', '3', '9', 0.11),
(43, 1, '1005', '3', '7', 0.00),
(44, 1, '1005', '3', '8', 0.00),
(45, 1, '1005', '3', '9', 0.56),
(46, 1, '1001', '4', '10', 0.00),
(47, 1, '1001', '4', '11', 0.00),
(48, 1, '1001', '4', '12', 0.56),
(49, 1, '1002', '4', '10', 0.00),
(50, 1, '1002', '4', '11', 0.56),
(51, 1, '1002', '4', '12', 0.33),
(52, 1, '1003', '4', '10', 0.00),
(53, 1, '1003', '4', '11', 0.33),
(54, 1, '1003', '4', '12', 0.22),
(55, 1, '1004', '4', '10', 0.00),
(56, 1, '1004', '4', '11', 0.00),
(57, 1, '1004', '4', '12', 0.56),
(58, 1, '1005', '4', '10', 0.00),
(59, 1, '1005', '4', '11', 0.91),
(60, 1, '1005', '4', '12', 0.51),
(61, 2, '1006', '1', '1', 0.00),
(62, 2, '1006', '1', '2', 0.00),
(63, 2, '1006', '1', '3', 0.78),
(64, 2, '1007', '1', '1', 0.00),
(65, 2, '1007', '1', '2', 0.00),
(66, 2, '1007', '1', '3', 0.56),
(67, 2, '1008', '1', '1', 0.00),
(68, 2, '1008', '1', '2', 0.91),
(69, 2, '1008', '1', '3', 0.51),
(70, 2, '1009', '1', '1', 0.00),
(71, 2, '1009', '1', '2', 0.33),
(72, 2, '1009', '1', '3', 0.00),
(73, 2, '1010', '1', '1', 0.00),
(74, 2, '1010', '1', '2', 0.00),
(75, 2, '1010', '1', '3', 0.78),
(76, 2, '1006', '2', '4', 0.00),
(77, 2, '1006', '2', '5', 0.00),
(78, 2, '1006', '2', '6', 0.56),
(79, 2, '1007', '2', '4', 0.00),
(80, 2, '1007', '2', '5', 0.82),
(81, 2, '1007', '2', '6', 0.47),
(82, 2, '1008', '2', '4', 0.00),
(83, 2, '1008', '2', '5', 0.33),
(84, 2, '1008', '2', '6', 0.22),
(85, 2, '1009', '2', '4', 0.00),
(86, 2, '1009', '2', '5', 0.42),
(87, 2, '1009', '2', '6', 0.27),
(88, 2, '1010', '2', '4', 0.00),
(89, 2, '1010', '2', '5', 0.91),
(90, 2, '1010', '2', '6', 0.51),
(91, 2, '1006', '3', '7', 0.00),
(92, 2, '1006', '3', '8', 0.82),
(93, 2, '1006', '3', '9', 0.47),
(94, 2, '1007', '3', '7', 0.00),
(95, 2, '1007', '3', '8', 0.00),
(96, 2, '1007', '3', '9', 0.73),
(97, 2, '1008', '3', '7', 0.00),
(98, 2, '1008', '3', '8', 0.00),
(99, 2, '1008', '3', '9', 0.78),
(100, 2, '1009', '3', '7', 0.00),
(101, 2, '1009', '3', '8', 0.00),
(102, 2, '1009', '3', '9', 0.78),
(103, 2, '1010', '3', '7', 0.00),
(104, 2, '1010', '3', '8', 0.91),
(105, 2, '1010', '3', '9', 0.51),
(106, 2, '1006', '4', '10', 0.00),
(107, 2, '1006', '4', '11', 0.07),
(108, 2, '1006', '4', '12', 0.02),
(109, 2, '1007', '4', '10', 0.00),
(110, 2, '1007', '4', '11', 0.00),
(111, 2, '1007', '4', '12', 0.78),
(112, 2, '1008', '4', '10', 0.00),
(113, 2, '1008', '4', '11', 0.00),
(114, 2, '1008', '4', '12', 0.71),
(115, 2, '1009', '4', '10', 0.00),
(116, 2, '1009', '4', '11', 0.42),
(117, 2, '1009', '4', '12', 0.27),
(118, 2, '1010', '4', '10', 0.00),
(119, 2, '1010', '4', '11', 0.42),
(120, 2, '1010', '4', '12', 0.27),
(121, 3, '1011', '1', '1', 0.00),
(122, 3, '1011', '1', '2', 0.56),
(123, 3, '1011', '1', '3', 0.33),
(124, 3, '1012', '1', '1', 0.00),
(125, 3, '1012', '1', '2', 0.00),
(126, 3, '1012', '1', '3', 0.56),
(127, 3, '1013', '1', '1', 0.00),
(128, 3, '1013', '1', '2', 0.42),
(129, 3, '1013', '1', '3', 0.27),
(130, 3, '1014', '1', '1', 0.00),
(131, 3, '1014', '1', '2', 0.56),
(132, 3, '1014', '1', '3', 0.33),
(133, 3, '1015', '1', '1', 0.00),
(134, 3, '1015', '1', '2', 0.11),
(135, 3, '1015', '1', '3', 0.11),
(136, 3, '1011', '2', '4', 0.00),
(137, 3, '1011', '2', '5', 0.00),
(138, 3, '1011', '2', '6', 0.56),
(139, 3, '1012', '2', '4', 0.00),
(140, 3, '1012', '2', '5', 0.96),
(141, 3, '1012', '2', '6', 0.53),
(142, 3, '1013', '2', '4', 0.00),
(143, 3, '1013', '2', '5', 0.00),
(144, 3, '1013', '2', '6', 0.78),
(145, 3, '1014', '2', '4', 0.00),
(146, 3, '1014', '2', '5', 0.56),
(147, 3, '1014', '2', '6', 0.33),
(148, 3, '1015', '2', '4', 0.00),
(149, 3, '1015', '2', '5', 0.00),
(150, 3, '1015', '2', '6', 0.56),
(151, 3, '1011', '3', '7', 0.00),
(152, 3, '1011', '3', '8', 0.42),
(153, 3, '1011', '3', '9', 0.27),
(154, 3, '1012', '3', '7', 0.00),
(155, 3, '1012', '3', '8', 0.91),
(156, 3, '1012', '3', '9', 0.51),
(157, 3, '1013', '3', '7', 0.00),
(158, 3, '1013', '3', '8', 0.91),
(159, 3, '1013', '3', '9', 0.51),
(160, 3, '1014', '3', '7', 0.00),
(161, 3, '1014', '3', '8', 0.00),
(162, 3, '1014', '3', '9', 0.73),
(163, 3, '1015', '3', '7', 0.00),
(164, 3, '1015', '3', '8', 0.56),
(165, 3, '1015', '3', '9', 0.33),
(166, 3, '1011', '4', '10', 0.00),
(167, 3, '1011', '4', '11', 0.56),
(168, 3, '1011', '4', '12', 0.33),
(169, 3, '1012', '4', '10', 0.00),
(170, 3, '1012', '4', '11', 0.11),
(171, 3, '1012', '4', '12', 0.11),
(172, 3, '1013', '4', '10', 0.00),
(173, 3, '1013', '4', '11', 0.56),
(174, 3, '1013', '4', '12', 0.33),
(175, 3, '1014', '4', '10', 0.00),
(176, 3, '1014', '4', '11', 0.02),
(177, 3, '1014', '4', '12', 0.04),
(178, 3, '1015', '4', '10', 0.00),
(179, 3, '1015', '4', '11', 0.11),
(180, 3, '1015', '4', '12', 0.11),
(181, 4, '2001', '1', '1', 0.00),
(182, 4, '2001', '1', '2', 0.00),
(183, 4, '2001', '1', '3', 0.56),
(184, 4, '2002', '1', '1', 0.00),
(185, 4, '2002', '1', '2', 0.00),
(186, 4, '2002', '1', '3', 0.56),
(187, 4, '2003', '1', '1', 0.00),
(188, 4, '2003', '1', '2', 0.91),
(189, 4, '2003', '1', '3', 0.51),
(190, 4, '2004', '1', '1', 0.00),
(191, 4, '2004', '1', '2', 0.00),
(192, 4, '2004', '1', '3', 0.56),
(193, 4, '2005', '1', '1', 0.00),
(194, 4, '2005', '1', '2', 0.56),
(195, 4, '2005', '1', '3', 0.33),
(196, 4, '2001', '2', '4', 0.00),
(197, 4, '2001', '2', '5', 0.00),
(198, 4, '2001', '2', '6', 0.56),
(199, 4, '2002', '2', '4', 0.00),
(200, 4, '2002', '2', '5', 0.91),
(201, 4, '2002', '2', '6', 0.51),
(202, 4, '2003', '2', '4', 0.00),
(203, 4, '2003', '2', '5', 0.56),
(204, 4, '2003', '2', '6', 0.33),
(205, 4, '2004', '2', '4', 0.00),
(206, 4, '2004', '2', '5', 0.91),
(207, 4, '2004', '2', '6', 0.51),
(208, 4, '2005', '2', '4', 0.00),
(209, 4, '2005', '2', '5', 0.42),
(210, 4, '2005', '2', '6', 0.27),
(211, 4, '2001', '3', '7', 0.00),
(212, 4, '2001', '3', '8', 0.00),
(213, 4, '2001', '3', '9', 0.56),
(214, 4, '2002', '3', '7', 0.00),
(215, 4, '2002', '3', '8', 0.00),
(216, 4, '2002', '3', '9', 0.78),
(217, 4, '2003', '3', '7', 0.00),
(218, 4, '2003', '3', '8', 0.91),
(219, 4, '2003', '3', '9', 0.51),
(220, 4, '2004', '3', '7', 0.00),
(221, 4, '2004', '3', '8', 0.00),
(222, 4, '2004', '3', '9', 0.56),
(223, 4, '2005', '3', '7', 0.00),
(224, 4, '2005', '3', '8', 0.11),
(225, 4, '2005', '3', '9', 0.11),
(226, 4, '2001', '4', '10', 0.00),
(227, 4, '2001', '4', '11', 0.00),
(228, 4, '2001', '4', '12', 0.56),
(229, 4, '2002', '4', '10', 0.00),
(230, 4, '2002', '4', '11', 0.56),
(231, 4, '2002', '4', '12', 0.33),
(232, 4, '2003', '4', '10', 0.00),
(233, 4, '2003', '4', '11', 0.00),
(234, 4, '2003', '4', '12', 0.56),
(235, 4, '2004', '4', '10', 0.00),
(236, 4, '2004', '4', '11', 0.42),
(237, 4, '2004', '4', '12', 0.27),
(238, 4, '2005', '4', '10', 0.00),
(239, 4, '2005', '4', '11', 0.56),
(240, 4, '2005', '4', '12', 0.33),
(241, 5, '2006', '1', '1', 0.00),
(242, 5, '2006', '1', '2', 0.00),
(243, 5, '2006', '1', '3', 0.56),
(244, 5, '2007', '1', '1', 0.00),
(245, 5, '2007', '1', '2', 0.56),
(246, 5, '2007', '1', '3', 0.33),
(247, 5, '2008', '1', '1', 0.00),
(248, 5, '2008', '1', '2', 0.11),
(249, 5, '2008', '1', '3', 0.11),
(250, 5, '2009', '1', '1', 0.00),
(251, 5, '2009', '1', '2', 0.00),
(252, 5, '2009', '1', '3', 0.78),
(253, 5, '2010', '1', '1', 0.00),
(254, 5, '2010', '1', '2', 0.00),
(255, 5, '2010', '1', '3', 0.56),
(256, 5, '2006', '2', '4', 0.00),
(257, 5, '2006', '2', '5', 0.00),
(258, 5, '2006', '2', '6', 0.56),
(259, 5, '2007', '2', '4', 0.00),
(260, 5, '2007', '2', '5', 0.00),
(261, 5, '2007', '2', '6', 0.56),
(262, 5, '2008', '2', '4', 0.00),
(263, 5, '2008', '2', '5', 0.56),
(264, 5, '2008', '2', '6', 0.33),
(265, 5, '2009', '2', '4', 0.00),
(266, 5, '2009', '2', '5', 0.00),
(267, 5, '2009', '2', '6', 0.56),
(268, 5, '2010', '2', '4', 0.00),
(269, 5, '2010', '2', '5', 0.91),
(270, 5, '2010', '2', '6', 0.51),
(271, 5, '2006', '3', '7', 0.00),
(272, 5, '2006', '3', '8', 0.56),
(273, 5, '2006', '3', '9', 0.33),
(274, 5, '2007', '3', '7', 0.00),
(275, 5, '2007', '3', '8', 0.00),
(276, 5, '2007', '3', '9', 0.56),
(277, 5, '2008', '3', '7', 0.00),
(278, 5, '2008', '3', '8', 0.00),
(279, 5, '2008', '3', '9', 0.56),
(280, 5, '2009', '3', '7', 0.00),
(281, 5, '2009', '3', '8', 0.00),
(282, 5, '2009', '3', '9', 0.56),
(283, 5, '2010', '3', '7', 0.00),
(284, 5, '2010', '3', '8', 0.11),
(285, 5, '2010', '3', '9', 0.11),
(286, 5, '2006', '4', '10', 0.00),
(287, 5, '2006', '4', '11', 0.56),
(288, 5, '2006', '4', '12', 0.33),
(289, 5, '2007', '4', '10', 0.00),
(290, 5, '2007', '4', '11', 0.11),
(291, 5, '2007', '4', '12', 0.11),
(292, 5, '2008', '4', '10', 0.00),
(293, 5, '2008', '4', '11', 0.56),
(294, 5, '2008', '4', '12', 0.33),
(295, 5, '2009', '4', '10', 0.00),
(296, 5, '2009', '4', '11', 0.56),
(297, 5, '2009', '4', '12', 0.33),
(298, 5, '2010', '4', '10', 0.00),
(299, 5, '2010', '4', '11', 0.56),
(300, 5, '2010', '4', '12', 0.33),
(301, 6, '2011', '1', '1', 0.00),
(302, 6, '2011', '1', '2', 0.00),
(303, 6, '2011', '1', '3', 0.56),
(304, 6, '2012', '1', '1', 0.00),
(305, 6, '2012', '1', '2', 0.56),
(306, 6, '2012', '1', '3', 0.33),
(307, 6, '2013', '1', '1', 0.00),
(308, 6, '2013', '1', '2', 0.00),
(309, 6, '2013', '1', '3', 0.78),
(310, 6, '2014', '1', '1', 0.00),
(311, 6, '2014', '1', '2', 0.56),
(312, 6, '2014', '1', '3', 0.33),
(313, 6, '2015', '1', '1', 0.00),
(314, 6, '2015', '1', '2', 0.00),
(315, 6, '2015', '1', '3', 0.56),
(316, 6, '2011', '2', '4', 0.00),
(317, 6, '2011', '2', '5', 0.00),
(318, 6, '2011', '2', '6', 0.56),
(319, 6, '2012', '2', '4', 0.00),
(320, 6, '2012', '2', '5', 0.00),
(321, 6, '2012', '2', '6', 0.56),
(322, 6, '2013', '2', '4', 0.00),
(323, 6, '2013', '2', '5', 0.00),
(324, 6, '2013', '2', '6', 0.56),
(325, 6, '2014', '2', '4', 0.00),
(326, 6, '2014', '2', '5', 0.56),
(327, 6, '2014', '2', '6', 0.33),
(328, 6, '2015', '2', '4', 0.00),
(329, 6, '2015', '2', '5', 0.56),
(330, 6, '2015', '2', '6', 0.33),
(331, 6, '2011', '3', '7', 0.00),
(332, 6, '2011', '3', '8', 0.00),
(333, 6, '2011', '3', '9', 0.78),
(334, 6, '2012', '3', '7', 0.00),
(335, 6, '2012', '3', '8', 0.00),
(336, 6, '2012', '3', '9', 0.56),
(337, 6, '2013', '3', '7', 0.00),
(338, 6, '2013', '3', '8', 0.00),
(339, 6, '2013', '3', '9', 0.56),
(340, 6, '2014', '3', '7', 0.00),
(341, 6, '2014', '3', '8', 0.11),
(342, 6, '2014', '3', '9', 0.11),
(343, 6, '2015', '3', '7', 0.00),
(344, 6, '2015', '3', '8', 0.11),
(345, 6, '2015', '3', '9', 0.11),
(346, 6, '2011', '4', '10', 0.00),
(347, 6, '2011', '4', '11', 0.00),
(348, 6, '2011', '4', '12', 0.56),
(349, 6, '2012', '4', '10', 0.00),
(350, 6, '2012', '4', '11', 0.00),
(351, 6, '2012', '4', '12', 0.56),
(352, 6, '2013', '4', '10', 0.00),
(353, 6, '2013', '4', '11', 0.56),
(354, 6, '2013', '4', '12', 0.33),
(355, 6, '2014', '4', '10', 0.00),
(356, 6, '2014', '4', '11', 0.00),
(357, 6, '2014', '4', '12', 0.56),
(358, 6, '2015', '4', '10', 0.00),
(359, 6, '2015', '4', '11', 0.56),
(360, 6, '2015', '4', '12', 0.33),
(361, 7, '3001', '1', '1', 0.00),
(362, 7, '3001', '1', '2', 0.00),
(363, 7, '3001', '1', '3', 0.56),
(364, 7, '3002', '1', '1', 0.00),
(365, 7, '3002', '1', '2', 0.00),
(366, 7, '3002', '1', '3', 0.56),
(367, 7, '3003', '1', '1', 0.00),
(368, 7, '3003', '1', '2', 0.11),
(369, 7, '3003', '1', '3', 0.00),
(370, 7, '3004', '1', '1', 0.00),
(371, 7, '3004', '1', '2', 0.56),
(372, 7, '3004', '1', '3', 0.33),
(373, 7, '3005', '1', '1', 0.00),
(374, 7, '3005', '1', '2', 0.56),
(375, 7, '3005', '1', '3', 0.33),
(376, 7, '3001', '2', '4', 0.00),
(377, 7, '3001', '2', '5', 0.00),
(378, 7, '3001', '2', '6', 0.56),
(379, 7, '3002', '2', '4', 0.00),
(380, 7, '3002', '2', '5', 0.56),
(381, 7, '3002', '2', '6', 0.33),
(382, 7, '3003', '2', '4', 0.00),
(383, 7, '3003', '2', '5', 0.11),
(384, 7, '3003', '2', '6', 0.11),
(385, 7, '3004', '2', '4', 0.00),
(386, 7, '3004', '2', '5', 0.56),
(387, 7, '3004', '2', '6', 0.33),
(388, 7, '3005', '2', '4', 0.00),
(389, 7, '3005', '2', '5', 0.56),
(390, 7, '3005', '2', '6', 0.33),
(391, 7, '3001', '3', '7', 0.00),
(392, 7, '3001', '3', '8', 0.56),
(393, 7, '3001', '3', '9', 0.33),
(394, 7, '3002', '3', '7', 0.00),
(395, 7, '3002', '3', '8', 0.00),
(396, 7, '3002', '3', '9', 0.56),
(397, 7, '3003', '3', '7', 0.00),
(398, 7, '3003', '3', '8', 0.87),
(399, 7, '3003', '3', '9', 0.49),
(400, 7, '3004', '3', '7', 0.00),
(401, 7, '3004', '3', '8', 0.78),
(402, 7, '3004', '3', '9', 0.44),
(403, 7, '3005', '3', '7', 0.00),
(404, 7, '3005', '3', '8', 0.56),
(405, 7, '3005', '3', '9', 0.33),
(406, 7, '3001', '4', '10', 0.00),
(407, 7, '3001', '4', '11', 0.11),
(408, 7, '3001', '4', '12', 0.11),
(409, 7, '3002', '4', '10', 0.00),
(410, 7, '3002', '4', '11', 0.11),
(411, 7, '3002', '4', '12', 0.11),
(412, 7, '3003', '4', '10', 0.00),
(413, 7, '3003', '4', '11', 0.00),
(414, 7, '3003', '4', '12', 0.67),
(415, 7, '3004', '4', '10', 0.00),
(416, 7, '3004', '4', '11', 0.11),
(417, 7, '3004', '4', '12', 0.11),
(418, 7, '3005', '4', '10', 0.00),
(419, 7, '3005', '4', '11', 0.33),
(420, 7, '3005', '4', '12', 0.22),
(493, 9, '1001', '1', '1', 0.00),
(494, 9, '1001', '1', '2', 0.00),
(495, 9, '1001', '1', '3', 0.78),
(496, 9, '1006', '1', '1', 0.00),
(497, 9, '1006', '1', '2', 0.00),
(498, 9, '1006', '1', '3', 0.78),
(499, 9, '1014', '1', '1', 0.00),
(500, 9, '1014', '1', '2', 0.56),
(501, 9, '1014', '1', '3', 0.33),
(502, 9, '1001', '2', '4', 0.00),
(503, 9, '1001', '2', '5', 0.00),
(504, 9, '1001', '2', '6', 0.56),
(505, 9, '1006', '2', '4', 0.00),
(506, 9, '1006', '2', '5', 0.00),
(507, 9, '1006', '2', '6', 0.56),
(508, 9, '1014', '2', '4', 0.00),
(509, 9, '1014', '2', '5', 0.56),
(510, 9, '1014', '2', '6', 0.33),
(511, 9, '1001', '3', '7', 0.00),
(512, 9, '1001', '3', '8', 0.56),
(513, 9, '1001', '3', '9', 0.33),
(514, 9, '1006', '3', '7', 0.00),
(515, 9, '1006', '3', '8', 0.82),
(516, 9, '1006', '3', '9', 0.47),
(517, 9, '1014', '3', '7', 0.00),
(518, 9, '1014', '3', '8', 0.00),
(519, 9, '1014', '3', '9', 0.73),
(520, 9, '1001', '4', '10', 0.00),
(521, 9, '1001', '4', '11', 0.00),
(522, 9, '1001', '4', '12', 0.56),
(523, 9, '1006', '4', '10', 0.00),
(524, 9, '1006', '4', '11', 0.07),
(525, 9, '1006', '4', '12', 0.02),
(526, 9, '1014', '4', '10', 0.00),
(527, 9, '1014', '4', '11', 0.02),
(528, 9, '1014', '4', '12', 0.04),
(529, 10, '2001', '1', '1', 0.00),
(530, 10, '2001', '1', '2', 0.00),
(531, 10, '2001', '1', '3', 0.56),
(532, 10, '2007', '1', '1', 0.00),
(533, 10, '2007', '1', '2', 0.56),
(534, 10, '2007', '1', '3', 0.33),
(535, 10, '2011', '1', '1', 0.00),
(536, 10, '2011', '1', '2', 0.00),
(537, 10, '2011', '1', '3', 0.56),
(538, 10, '2001', '2', '4', 0.00),
(539, 10, '2001', '2', '5', 0.00),
(540, 10, '2001', '2', '6', 0.56),
(541, 10, '2007', '2', '4', 0.00),
(542, 10, '2007', '2', '5', 0.00),
(543, 10, '2007', '2', '6', 0.56),
(544, 10, '2011', '2', '4', 0.00),
(545, 10, '2011', '2', '5', 0.00),
(546, 10, '2011', '2', '6', 0.56),
(547, 10, '2001', '3', '7', 0.00),
(548, 10, '2001', '3', '8', 0.00),
(549, 10, '2001', '3', '9', 0.56),
(550, 10, '2007', '3', '7', 0.00),
(551, 10, '2007', '3', '8', 0.00),
(552, 10, '2007', '3', '9', 0.56),
(553, 10, '2011', '3', '7', 0.00),
(554, 10, '2011', '3', '8', 0.00),
(555, 10, '2011', '3', '9', 0.78),
(556, 10, '2001', '4', '10', 0.00),
(557, 10, '2001', '4', '11', 0.00),
(558, 10, '2001', '4', '12', 0.56),
(559, 10, '2007', '4', '10', 0.00),
(560, 10, '2007', '4', '11', 0.11),
(561, 10, '2007', '4', '12', 0.11),
(562, 10, '2011', '4', '10', 0.00),
(563, 10, '2011', '4', '11', 0.00),
(564, 10, '2011', '4', '12', 0.56),
(565, 11, '3006', '1', '1', 0.00),
(566, 11, '3006', '1', '2', 0.56),
(567, 11, '3006', '1', '3', 0.33),
(568, 11, '3007', '1', '1', 0.00),
(569, 11, '3007', '1', '2', 0.00),
(570, 11, '3007', '1', '3', 0.78),
(571, 11, '3008', '1', '1', 0.00),
(572, 11, '3008', '1', '2', 0.00),
(573, 11, '3008', '1', '3', 0.56),
(574, 11, '3009', '1', '1', 0.00),
(575, 11, '3009', '1', '2', 0.33),
(576, 11, '3009', '1', '3', 0.00),
(577, 11, '3010', '1', '1', 0.00),
(578, 11, '3010', '1', '2', 0.56),
(579, 11, '3010', '1', '3', 0.33),
(580, 11, '3011', '1', '1', 0.00),
(581, 11, '3011', '1', '2', 0.56),
(582, 11, '3011', '1', '3', 0.33),
(583, 11, '3006', '2', '4', 0.00),
(584, 11, '3006', '2', '5', 0.00),
(585, 11, '3006', '2', '6', 0.56),
(586, 11, '3007', '2', '4', 0.00),
(587, 11, '3007', '2', '5', 0.00),
(588, 11, '3007', '2', '6', 0.56),
(589, 11, '3008', '2', '4', 0.00),
(590, 11, '3008', '2', '5', 0.00),
(591, 11, '3008', '2', '6', 0.56),
(592, 11, '3009', '2', '4', 0.00),
(593, 11, '3009', '2', '5', 0.00),
(594, 11, '3009', '2', '6', 0.56),
(595, 11, '3010', '2', '4', 0.00),
(596, 11, '3010', '2', '5', 0.56),
(597, 11, '3010', '2', '6', 0.33),
(598, 11, '3011', '2', '4', 0.00),
(599, 11, '3011', '2', '5', 0.56),
(600, 11, '3011', '2', '6', 0.33),
(601, 11, '3006', '3', '7', 0.00),
(602, 11, '3006', '3', '8', 0.07),
(603, 11, '3006', '3', '9', 0.02),
(604, 11, '3007', '3', '7', 0.00),
(605, 11, '3007', '3', '8', 0.56),
(606, 11, '3007', '3', '9', 0.33),
(607, 11, '3008', '3', '7', 0.00),
(608, 11, '3008', '3', '8', 0.56),
(609, 11, '3008', '3', '9', 0.33),
(610, 11, '3009', '3', '7', 0.00),
(611, 11, '3009', '3', '8', 0.56),
(612, 11, '3009', '3', '9', 0.33),
(613, 11, '3010', '3', '7', 0.00),
(614, 11, '3010', '3', '8', 0.56),
(615, 11, '3010', '3', '9', 0.33),
(616, 11, '3011', '3', '7', 0.00),
(617, 11, '3011', '3', '8', 0.00),
(618, 11, '3011', '3', '9', 0.56),
(619, 11, '3006', '4', '10', 0.00),
(620, 11, '3006', '4', '11', 0.11),
(621, 11, '3006', '4', '12', 0.11),
(622, 11, '3007', '4', '10', 0.00),
(623, 11, '3007', '4', '11', 0.33),
(624, 11, '3007', '4', '12', 0.00),
(625, 11, '3008', '4', '10', 0.00),
(626, 11, '3008', '4', '11', 0.11),
(627, 11, '3008', '4', '12', 0.11),
(628, 11, '3009', '4', '10', 0.00),
(629, 11, '3009', '4', '11', 0.11),
(630, 11, '3009', '4', '12', 0.11),
(631, 11, '3010', '4', '10', 0.00),
(632, 11, '3010', '4', '11', 0.11),
(633, 11, '3010', '4', '12', 0.11),
(634, 11, '3011', '4', '10', 0.00),
(635, 11, '3011', '4', '11', 0.56),
(636, 11, '3011', '4', '12', 0.33),
(637, 12, '3001', '1', '1', 0.00),
(638, 12, '3001', '1', '2', 0.00),
(639, 12, '3001', '1', '3', 0.56),
(640, 12, '3006', '1', '1', 0.00),
(641, 12, '3006', '1', '2', 0.56),
(642, 12, '3006', '1', '3', 0.33),
(643, 12, '3001', '2', '4', 0.00),
(644, 12, '3001', '2', '5', 0.00),
(645, 12, '3001', '2', '6', 0.56),
(646, 12, '3006', '2', '4', 0.00),
(647, 12, '3006', '2', '5', 0.00),
(648, 12, '3006', '2', '6', 0.56),
(649, 12, '3001', '3', '7', 0.00),
(650, 12, '3001', '3', '8', 0.56),
(651, 12, '3001', '3', '9', 0.33),
(652, 12, '3006', '3', '7', 0.00),
(653, 12, '3006', '3', '8', 0.07),
(654, 12, '3006', '3', '9', 0.02),
(655, 12, '3001', '4', '10', 0.00),
(656, 12, '3001', '4', '11', 0.11),
(657, 12, '3001', '4', '12', 0.11),
(658, 12, '3006', '4', '10', 0.00),
(659, 12, '3006', '4', '11', 0.11),
(660, 12, '3006', '4', '12', 0.11),
(661, 13, '1001', '1', '1', 0.00),
(662, 13, '1001', '1', '2', 0.00),
(663, 13, '1001', '1', '3', 0.78),
(664, 13, '2001', '1', '1', 0.00),
(665, 13, '2001', '1', '2', 0.00),
(666, 13, '2001', '1', '3', 0.56),
(667, 13, '3006', '1', '1', 0.00),
(668, 13, '3006', '1', '2', 0.56),
(669, 13, '3006', '1', '3', 0.33),
(670, 13, '1001', '2', '4', 0.00),
(671, 13, '1001', '2', '5', 0.00),
(672, 13, '1001', '2', '6', 0.56),
(673, 13, '2001', '2', '4', 0.00),
(674, 13, '2001', '2', '5', 0.00),
(675, 13, '2001', '2', '6', 0.56),
(676, 13, '3006', '2', '4', 0.00),
(677, 13, '3006', '2', '5', 0.00),
(678, 13, '3006', '2', '6', 0.56),
(679, 13, '1001', '3', '7', 0.00),
(680, 13, '1001', '3', '8', 0.56),
(681, 13, '1001', '3', '9', 0.33),
(682, 13, '2001', '3', '7', 0.00),
(683, 13, '2001', '3', '8', 0.00),
(684, 13, '2001', '3', '9', 0.56),
(685, 13, '3006', '3', '7', 0.00),
(686, 13, '3006', '3', '8', 0.07),
(687, 13, '3006', '3', '9', 0.02),
(688, 13, '1001', '4', '10', 0.00),
(689, 13, '1001', '4', '11', 0.00),
(690, 13, '1001', '4', '12', 0.56),
(691, 13, '2001', '4', '10', 0.00),
(692, 13, '2001', '4', '11', 0.00),
(693, 13, '2001', '4', '12', 0.56),
(694, 13, '3006', '4', '10', 0.00),
(695, 13, '3006', '4', '11', 0.11),
(696, 13, '3006', '4', '12', 0.11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtl_nilai`
--

CREATE TABLE IF NOT EXISTS `tbl_dtl_nilai` (
  `id_detil` int(10) NOT NULL,
  `fk_nilai` int(10) NOT NULL,
  `fk_variabel` int(5) DEFAULT NULL,
  `nilai` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dtl_nilai`
--

INSERT INTO `tbl_dtl_nilai` (`id_detil`, `fk_nilai`, `fk_variabel`, `nilai`) VALUES
(1, 1, 1, 90),
(2, 1, 2, 80),
(3, 1, 3, 70),
(4, 1, 4, 80),
(5, 2, 1, 80),
(6, 2, 2, 70),
(7, 2, 3, 50),
(8, 2, 4, 70),
(9, 3, 1, 90),
(10, 3, 2, 80),
(11, 3, 3, 70),
(12, 3, 4, 65),
(13, 4, 1, 70),
(14, 4, 2, 70),
(15, 4, 3, 60),
(16, 4, 4, 80),
(17, 5, 1, 75),
(18, 5, 2, 75),
(19, 5, 3, 80),
(20, 5, 4, 78),
(21, 6, 1, 90),
(22, 6, 2, 80),
(23, 6, 3, 76),
(24, 6, 4, 56),
(25, 7, 1, 80),
(26, 7, 2, 76),
(27, 7, 3, 88),
(28, 7, 4, 90),
(29, 8, 1, 78),
(30, 8, 2, 65),
(31, 8, 3, 90),
(32, 8, 4, 87),
(33, 9, 1, 50),
(34, 9, 2, 67),
(35, 9, 3, 90),
(36, 9, 4, 67),
(37, 10, 1, 90),
(38, 10, 2, 78),
(39, 10, 3, 78),
(40, 10, 4, 67),
(41, 11, 1, 70),
(42, 11, 2, 80),
(43, 11, 3, 67),
(44, 11, 4, 70),
(45, 12, 1, 80),
(46, 12, 2, 79),
(47, 12, 3, 78),
(48, 12, 4, 60),
(49, 13, 1, 67),
(50, 13, 2, 90),
(51, 13, 3, 78),
(52, 13, 4, 70),
(53, 14, 1, 70),
(54, 14, 2, 70),
(55, 14, 3, 88),
(56, 14, 4, 57),
(57, 15, 1, 60),
(58, 15, 2, 80),
(59, 15, 3, 70),
(60, 15, 4, 60),
(61, 16, 1, 80),
(62, 16, 2, 80),
(63, 16, 3, 80),
(64, 16, 4, 80),
(65, 17, 1, 80),
(66, 17, 2, 78),
(67, 17, 3, 90),
(68, 17, 4, 70),
(69, 18, 1, 78),
(70, 18, 2, 70),
(71, 18, 3, 78),
(72, 18, 4, 80),
(73, 19, 1, 80),
(74, 19, 2, 78),
(75, 19, 3, 80),
(76, 19, 4, 67),
(77, 20, 1, 70),
(78, 20, 2, 67),
(79, 20, 3, 60),
(80, 20, 4, 70),
(81, 21, 1, 80),
(82, 21, 2, 80),
(83, 21, 3, 70),
(84, 21, 4, 70),
(85, 22, 1, 70),
(86, 22, 2, 80),
(87, 22, 3, 80),
(88, 22, 4, 60),
(89, 23, 1, 60),
(90, 23, 2, 70),
(91, 23, 3, 80),
(92, 23, 4, 70),
(93, 24, 1, 90),
(94, 24, 2, 80),
(95, 24, 3, 80),
(96, 24, 4, 70),
(97, 25, 1, 80),
(98, 25, 2, 78),
(99, 25, 3, 60),
(100, 25, 4, 70),
(101, 26, 1, 80),
(102, 26, 2, 80),
(103, 26, 3, 90),
(104, 26, 4, 80),
(105, 27, 1, 70),
(106, 27, 2, 80),
(107, 27, 3, 80),
(108, 27, 4, 80),
(109, 28, 1, 90),
(110, 28, 2, 80),
(111, 28, 3, 80),
(112, 28, 4, 70),
(113, 29, 1, 70),
(114, 29, 2, 70),
(115, 29, 3, 60),
(116, 29, 4, 80),
(117, 30, 1, 80),
(118, 30, 2, 70),
(119, 30, 3, 60),
(120, 30, 4, 70),
(121, 31, 1, 80),
(122, 31, 2, 80),
(123, 31, 3, 70),
(124, 31, 4, 60),
(125, 32, 1, 80),
(126, 32, 2, 70),
(127, 32, 3, 80),
(128, 32, 4, 60),
(129, 33, 1, 55),
(130, 33, 2, 60),
(131, 33, 3, 77),
(132, 33, 4, 85),
(133, 34, 1, 70),
(134, 34, 2, 70),
(135, 34, 3, 75),
(136, 34, 4, 60),
(137, 35, 1, 70),
(138, 35, 2, 70),
(139, 35, 3, 70),
(140, 35, 4, 65),
(141, 36, 1, 70),
(142, 36, 2, 80),
(143, 36, 3, 56),
(144, 36, 4, 60),
(145, 37, 1, 90),
(146, 37, 2, 80),
(147, 37, 3, 70),
(148, 37, 4, 50),
(149, 38, 1, 80),
(150, 38, 2, 80),
(151, 38, 3, 70),
(152, 38, 4, 60),
(153, 39, 1, 50),
(154, 39, 2, 80),
(155, 39, 3, 70),
(156, 39, 4, 60),
(157, 40, 1, 70),
(158, 40, 2, 70),
(159, 40, 3, 70),
(160, 40, 4, 60),
(161, 41, 1, 70),
(162, 41, 2, 70),
(163, 41, 3, 80),
(164, 41, 4, 70);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dummy`
--

CREATE TABLE IF NOT EXISTS `tbl_dummy` (
  `nama` char(250) DEFAULT NULL,
  `jk` char(5) NOT NULL,
  `agama` char(10) NOT NULL,
  `hp` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dummy`
--

INSERT INTO `tbl_dummy` (`nama`, `jk`, `agama`, `hp`) VALUES
('M. Takdir Hasan Saleh', 'l', 'Islam', ''),
('DARMAWATY.M', 'p', 'Islam', ''),
('Agustina Renny Samola', 'p', 'Islam', ''),
('Rasmi', 'p', 'Islam', ''),
('Suardi', 'l', 'Islam', ''),
('Muh.Rusdin', 'l', 'Islam', ''),
('Irawaty', 'p', 'Islam', ''),
('Sukmawati T', 'l', 'Islam', ''),
('HARRYMAN HERDIANTO', 'l', 'Islam', ''),
('A.Darmawati', 'p', 'Islam', ''),
('Hudflin Swaneke Jonas', 'l', 'Protestan', ''),
(' IBunga', 'p', 'Islam', ''),
('St. Hadijah', 'p', 'Islam', ''),
('Haerul Wahyudin', 'l', 'Islam', ''),
('Andi Riomata Panawan', 'l', 'Islam', ''),
('Yusuf Cristanto', 'l', 'Islam', ''),
('Muh. Amiruddin', 'l', 'Islam', ''),
('Abdul Rauf', 'l', 'Islam', ''),
('ISWADY', 'l', 'Islam', ''),
('Burhanuddin', 'l', 'Islam', ''),
('Sulkarnaen Sjamsul', 'l', 'Islam', ''),
('Mufti Adi Nugraha', 'l', 'Islam', ''),
('Adriyanto Adnan', 'l', 'Islam', ''),
('Kemal Abdullah Saud', 'l', 'Islam', ''),
('Nila Dwi Sari', 'p', 'Islam', ''),
('Rismawaty', 'p', 'Islam', ''),
('Reni Dahniar', 'p', 'Islam', ''),
('Aminuddin', 'l', 'Islam', ''),
('Nurmaeli', 'p', 'Islam', ''),
('Muh. Ansar', 'l', 'Islam', ''),
('Suhara', 'p', 'Islam', ''),
('A.Muh Asdian', 'l', 'Islam', ''),
('Muhammad Guntur', 'l', 'Islam', ''),
('A. M Natsir Halid', 'l', 'Islam', ''),
('Karyadi Kadar', 'l', 'Islam', ''),
('Muliana', 'p', 'Islam', ''),
('Andi Ulleng. M', 'p', 'Islam', ''),
('Nur Farida Alimuddin', 'p', 'Islam', ''),
('RAHMAN  HABU', 'l', 'Islam', ''),
('Kurniaty.R', 'p', 'Islam', ''),
('Rahmawati Radjab', 'p', 'Islam', ''),
('Marfida.  A.M', 'p', 'Islam', ''),
('Nurlina', 'p', 'Islam', ''),
('Widi Asnita Sigalotang', 'l', 'Islam', ''),
('Jakaria', 'p', 'Islam', ''),
('A. Taufiq Nadsir', 'l', 'Islam', ''),
('Nurhaedah', 'l', 'Islam', ''),
('Muh. Amran AT', 'l', 'Islam', ''),
('Muh. Rizal', 'l', 'Islam', ''),
('Andi Rivai', 'l', 'Islam', ''),
('A Badi Sommeng', 'l', 'Islam', ''),
('Amal Mahyuddin. M', 'l', 'Islam', ''),
('Syahruddin', 'l', 'Islam', ''),
('Hartati', 'p', 'Islam', ''),
('A. Herry Susanto', 'l', 'Islam', ''),
('Bahar Syamsuddin', 'l', 'Islam', ''),
('Muh. Ambar Sallatu', 'l', 'Islam', ''),
('Masdulhaq', 'l', 'Islam', ''),
('Wiwin Suryani', 'p', 'Islam', ''),
('Ansar', 'l', 'Islam', ''),
('Mustamar', 'l', 'Islam', ''),
('Tajuddin. T', 'l', 'Islam', ''),
('Hastuti', 'p', 'Islam', ''),
('Samsuddin. M', 'l', 'Islam', ''),
('Hasanuddin. A', 'l', 'Islam', ''),
('A.Baso Toto', 'l', 'Islam', ''),
('Amiruddin', 'l', 'Islam', ''),
('Fatah Yasin', 'l', 'Islam', ''),
('Ilham R', 'l', 'Islam', ''),
('Faisal Jafar', 'l', 'Islam', ''),
('Melyana Zumbrina', 'p', 'Islam', ''),
('Ahmad', 'l', 'Islam', ''),
('Edman Budiman', 'l', 'Islam', ''),
('Shachrir', 'l', 'Islam', ''),
('Husni Mubarak', 'l', 'Islam', ''),
('Adnan M. Diah', 'l', 'Islam', ''),
('Syarifuddin', 'l', 'Islam', ''),
('Ishak. M', 'l', 'Islam', ''),
('Lis Yuni Ismail', 'p', 'Islam', ''),
('Masdar', 'p', 'Islam', ''),
('Hasmiati', 'p', 'Islam', ''),
('M. Basri', 'l', 'Islam', ''),
('Muh. Ridwan', 'l', 'Islam', ''),
('Agusalim', 'l', 'Islam', ''),
(' Swiknyo HS', 'l', 'Islam', ''),
('Hamna Faisal', 'l', 'Islam', ''),
('A.Rosdianah', 'p', 'Islam', ''),
('Andi Asminullah', 'l', 'Islam', ''),
('Irianys.A.Rays', 'p', 'Islam', ''),
('Thabrani', 'l', 'Islam', ''),
('Diana', 'p', 'Islam', ''),
('Ilham Budi Santosa', 'l', 'Islam', ''),
('Endah Kartika', 'p', 'Islam', ''),
('Dahliah', 'p', 'Islam', ''),
('Irnawati', 'p', 'Islam', ''),
('Ismail', 'l', 'Islam', ''),
('Murniati', 'p', 'Islam', ''),
('Fara Ariyana', 'p', 'Islam', ''),
('Safriady', 'l', 'Islam', ''),
('A. Mappanyukki', 'l', 'Islam', ''),
('A.Iwan. B. Djemma', 'l', 'Islam', ''),
('Syarifuddin Saleh', 'l', 'Islam', ''),
('St. Asni', 'p', 'Islam', ''),
('Aryani Malik', 'p', 'Islam', ''),
('Abd. Haris. D', 'l', 'Islam', ''),
('Hernawati', 'p', 'Islam', ''),
('Chaerul Susanto Asgar', 'l', 'Islam', ''),
('Shalwiyati. M', 'p', 'Islam', ''),
('Syamsinar Abunawas', 'p', 'Islam', ''),
('Giyanto', 'l', 'Islam', ''),
('Nur Asia', 'p', 'Islam', ''),
('Hamsina', 'p', 'Islam', ''),
('Nining Sulastri', 'p', 'Islam', ''),
('Syafrin MD', 'l', 'Islam', ''),
('St. Hafsah', 'p', 'Islam', ''),
('Muh. Thamrin', 'l', 'Islam', ''),
('Nasruddin', 'l', 'Islam', ''),
('St. Nurjayani Rahim', 'p', 'Islam', ''),
('Iswahyudi Badawing', 'l', 'Islam', ''),
('Andi Amran.M', 'l', 'Islam', ''),
('Fajar Lintang', 'l', 'Islam', ''),
('Sukri Arifin,', 'l', 'Islam', ''),
('Ivana Mursalin', 'p', 'Islam', ''),
('Anton', 'l', 'Islam', ''),
('Hamzah', 'l', 'Islam', ''),
('Artati', 'p', 'Islam', ''),
('Cynthia Dwi Alyza', 'p', 'Islam', ''),
('Suryani Maliga', 'p', 'Islam', ''),
('Sarnani', 'p', 'Islam', ''),
('Umar SA Mansyur', 'l', 'Islam', ''),
('Edhi Agustianto', 'l', 'Islam', '-'),
('Kamaria', 'l', 'Islam', ''),
('Muh. Taufik R.A', 'l', 'Islam', ''),
('abd Muis Ewa', 'l', 'Islam', ''),
('La Ode Muh. Ahmad', 'l', 'Islam', ''),
('Sukmawati', 'p', 'Islam', ''),
('Rahman', 'l', 'Islam', ''),
('Lasmi Mushar', 'p', 'Islam', ''),
('Herman', 'l', 'Islam', ''),
('Sukri', 'l', 'Islam', ''),
('Achmad Suryana. R', 'l', 'Islam', ''),
('Putri Wulandani', 'p', 'Islam', ''),
('Riza Nurfaizah', 'p', 'Islam', ''),
('Agus Indarta', 'l', 'Islam', ''),
('H. Nusul', 'l', 'Islam', ''),
('Andi Rosdiana', 'p', 'Islam', ''),
('Abd. Kadir', 'l', 'Islam', ''),
('Cristiyono Ari Prawoto', 'l', 'Islam', ''),
('Muh, Jalil FA', 'l', 'Islam', ''),
('Fadrianty', 'p', 'Islam', ''),
('Laode Rasyid', 'l', 'Islam', ''),
('M.Syarif', 'l', 'Islam', ''),
('Muakiz. M', 'l', 'Islam', ''),
('Harniaty Rahim Naba', 'p', 'Katolik', ''),
('Zaldi Julian Nugraha', 'l', 'Islam', ''),
('Syahraeni', 'p', 'Islam', ''),
('Satriany Latif', 'p', 'Islam', ''),
('Khairun Rizjal Azis', 'l', 'Islam', ''),
('Indirwan Dermayasair', 'l', 'Islam', '082189629888'),
('Ismail', 'l', 'Islam', ''),
('Muh. Syarifuddin', 'l', 'Islam', ''),
('syarifuddun akbar', 'l', 'Islam', ''),
('Usman M Sadjim', 'l', 'Islam', ''),
('Ambo Upe', 'l', 'Islam', ''),
('Yuslinra', 'l', 'Islam', ''),
('wawan rahdian', 'l', 'Islam', ''),
('M. Amri Alwi', 'l', 'Islam', ''),
('A.Moch Achmad', 'l', 'Islam', ''),
('Abdul Syukur', 'l', 'Islam', ''),
('Kiki Fatmala', 'p', 'Islam', ''),
('Moh Asrul. A', 'l', 'Islam', ''),
('Andi Irvandi', 'l', 'Islam', ''),
('Arfan Amirullah', 'l', 'Islam', ''),
('Dian Eka Putra', 'l', 'Islam', ''),
('Muh. Nawir', 'l', 'Islam', ''),
('Muh. Syarifuddin', 'l', 'Islam', ''),
('Tasbih Mursalim', 'l', 'Islam', ''),
('Nurul Dwi Utami', 'p', 'Islam', ''),
('Radikal Gunther T.A.P', 'l', 'Katolik', ''),
('Wahyu Muis', 'l', 'Islam', ''),
('Nurul Anisa', 'p', 'Islam', ''),
('Fachrul Walinono. Z', 'l', 'Islam', ''),
('Akbarullah Takdir', 'l', 'Islam', ''),
('Andi Haswira', 'p', 'Islam', ''),
('Asdar L', 'l', 'Islam', ''),
('Irna', 'p', 'Islam', ''),
('Dion Edo Saputra', 'l', 'Islam', ''),
('Maya Marlina Rauf', 'p', 'Islam', ''),
('Karmila Atjo', 'p', 'Islam', ''),
('Hawatia', 'p', 'Islam', ''),
('Ainun Mutmainna Rivai', 'p', 'Islam', ''),
('H. Lompi', 'l', 'Islam', ''),
(' MS. Udin', 'l', 'Islam', ''),
('Sultan Sjamsul', 'l', 'Islam', ''),
('Ibnu Mubaraq', 'l', 'Islam', ''),
('Rukminy Yusuf', 'p', 'Islam', ''),
('Muh. Nur', 'l', 'Islam', ''),
('Suharny Sutte', 'p', 'Islam', ''),
('A. Diana Bachtiar', 'p', 'Islam', ''),
('Muhadi S', 'l', 'Islam', ''),
('Ashar Alam', 'l', 'Islam', ''),
('Muhammad Faisal', 'l', 'Islam', ''),
('Alief Iqbal', 'l', 'Islam', ''),
('Patima', 'p', 'Islam', ''),
('Alham Arly', 'l', 'Islam', ''),
('Rahmat Fajar Rahim', 'l', 'Islam', ''),
('Andi Misbahuddin', 'l', 'Islam', ''),
('Tri Cahaya Mentari', 'p', 'Islam', ''),
('Abd. Rasyid Gassing', 'l', 'Islam', ''),
('Irman', 'l', 'Islam', ''),
('Sukma Khaerunnisaa', 'l', 'Islam', ''),
('Sunawar Arisal', 'l', 'Islam', ''),
('Lestari Parmawati', 'p', 'Islam', ''),
('Toto Mursalin', 'l', 'Islam', ''),
('Fitriana Wawo', 'p', 'Islam', ''),
('Muh. Syamsir', 'l', 'Islam', ''),
('Laily Nuzlikha Azis', 'p', 'Islam', ''),
('Muh. Pajriansa', 'p', 'Islam', ''),
('Purnomo', 'l', 'Islam', ''),
('Raodah Majid', 'p', 'Islam', ''),
('Burhan Said', 'l', 'Islam', ''),
('Daoho Ade Pantoga', 'l', 'Islam', ''),
('Ratnawati', 'p', 'Islam', ''),
('Baharuddin', 'l', 'Islam', ''),
('Fatmawati', 'p', 'Islam', ''),
('Rahmat Bahagia', 'l', 'Islam', ''),
('Ramli Muhadir', 'l', 'Islam', ''),
('Alamsyah Rauf', 'l', 'Islam', ''),
('Rakhmat Hidayat', 'l', 'Islam', ''),
('Sri Aryani Supomo Guntur', 'p', 'Islam', ''),
('Iskandar Zulkarnaen', 'l', 'Islam', ''),
('Rostina', 'p', 'Islam', ''),
('Jhonny BR', 'l', 'Islam', ''),
('Burhanuddin', 'l', 'Islam', ''),
('Ruslan', 'l', 'Islam', ''),
('Budi Mawardhani. M', 'l', 'Islam', ''),
('Sitti Aisyah', 'p', 'Islam', ''),
('Nurrizal', 'l', 'Islam', ''),
('Muh. Arifandi Aziz', 'l', 'Islam', ''),
('Anhar', 'l', 'Islam', ''),
('Triska', 'p', 'Islam', ''),
('Auliyana Faisal', 'p', 'Islam', ''),
('Michel Welson T', 'l', 'Katolik', ''),
('Abd. Rachmad', 'l', 'Islam', ''),
('Andi Mallarangeng', 'l', 'Islam', ''),
('Felisia DM', 'p', 'Islam', ''),
('Marwan', 'l', 'Islam', ''),
('A.Riswanda Eka Putra', 'p', 'Islam', ''),
('Nurhayati', 'p', 'Islam', ''),
('Mursida', 'p', 'Islam', ''),
('Erninawati', 'p', 'Islam', ''),
('Firman', 'l', 'Islam', ''),
('Muh. Rheza Edman', 'l', 'Islam', ''),
('Nurul Admira Pratiwi Rizal', 'p', 'Islam', ''),
('Reni Humbasari', 'p', 'Islam', ''),
('Andi Tenri Uleng', 'p', 'Islam', ''),
('Ratna Sari Dewi Zainal', 'p', 'Islam', ''),
('Andi Haeril', 'l', 'Islam', ''),
('Vivi novianti', 'p', 'Islam', ''),
('Rio Wiratama', 'l', 'Islam', ''),
('Fachril Haris', 'l', 'Islam', ''),
('Rajiv Rifky Affandy', 'p', 'Islam', ''),
('Shinta Wulandari', 'l', 'Islam', ''),
('Muh. Imrad Ambi', 'l', 'Islam', ''),
('Robert Sinaga', 'l', 'Islam', ''),
('Rio Hariyadi', 'l', 'Islam', ''),
('Yeni Fitriani', 'p', 'Islam', ''),
('Maynard Kahlil Ershad', 'l', 'Islam', ''),
('Putri Nurul Lailya', 'l', 'Islam', ''),
('Rezky Ajeng Pratiwi', 'l', 'Islam', ''),
('Syahrul Aqsa', 'l', 'Islam', ''),
('Agus Salim. AR', 'l', 'Islam', ''),
('Rasniati', 'p', 'Islam', ''),
('Ratnawati', 'p', 'Islam', ''),
('Marsi Sisong', 'l', 'Islam', ''),
('St. Syamsiah', 'p', 'Islam', ''),
('Muh. Wahyullin. B', 'l', 'Islam', ''),
('Sri Hajriana', 'l', 'Islam', ''),
('Arfandi Idris', 'l', 'Islam', ''),
('Andy Maskapen', 'l', 'Islam', ''),
('Ulfa Sri Alang', 'p', 'Islam', ''),
('H. A. M. Aras Halid', 'l', 'Islam', ''),
('Suriba Adriani', 'l', 'Islam', ''),
('Muh. Iqbal', 'l', 'Islam', ''),
('Ahmad Suardi', 'l', 'Islam', ''),
('Laode Muh. Ismail', 'l', 'Islam', ''),
('Hafsah', 'p', 'Islam', ''),
('Moh. Gilang Anugrah', 'l', 'Islam', ''),
('Wahyudi Daud', 'l', 'Islam', ''),
('Alif Nadia Jamaluddin', 'l', 'Islam', ''),
('Rizal', 'l', 'Islam', ''),
('Anwar', 'l', 'Islam', ''),
('M. Ismet Surandar. B', 'l', 'Islam', ''),
('Faisal Mustafa', 'l', 'Islam', ''),
('Ilham Wijaya', 'l', 'Islam', ''),
('Idil Fitri', 'l', 'Islam', ''),
('Fardiansyah', 'l', 'Islam', ''),
('Nurlela Jaisman', 'p', 'Islam', ''),
('Hetty Margaretha', 'p', 'Islam', ''),
('Wahyu Prayitno', 'l', 'Islam', ''),
('Salma', 'p', 'Islam', ''),
('Samsiani', 'p', 'Islam', ''),
('A. Andry Zaslim', 'l', 'Islam', ''),
('Hildayanti', 'p', 'Islam', ''),
('Andi Tenri Uji', 'p', 'Islam', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil_spk`
--

CREATE TABLE IF NOT EXISTS `tbl_hasil_spk` (
  `id_hasil` int(10) NOT NULL,
  `thn_ajaran` char(10) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  `tanggal` date NOT NULL,
  `tipe` enum('intern_kelas','antar_kelas','global') DEFAULT NULL,
  `kelas_dinilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hasil_spk`
--

INSERT INTO `tbl_hasil_spk` (`id_hasil`, `thn_ajaran`, `semester`, `tanggal`, `tipe`, `kelas_dinilai`) VALUES
(1, '2015-2016', 'ganjil', '2015-09-19', 'intern_kelas', 'A01'),
(2, '2015-2016', 'ganjil', '2015-09-19', 'intern_kelas', 'A02'),
(3, '2015-2016', 'ganjil', '2015-09-19', 'intern_kelas', 'A03'),
(4, '2015-2016', 'ganjil', '2015-09-19', 'intern_kelas', 'B01'),
(5, '2015-2016', 'ganjil', '2015-09-19', 'intern_kelas', 'B02'),
(6, '2015-2016', 'ganjil', '2015-09-19', 'intern_kelas', 'B03'),
(7, '2015-2016', 'ganjil', '2015-09-19', 'intern_kelas', 'C01'),
(9, '2015-2016', 'ganjil', '2015-09-19', 'antar_kelas', '10'),
(10, '2015-2016', 'ganjil', '2015-09-19', 'antar_kelas', '11'),
(11, '2015-2016', 'ganjil', '2015-09-21', 'intern_kelas', 'C02'),
(12, '2015-2016', 'ganjil', '2015-09-21', 'antar_kelas', '12'),
(13, '2015-2016', 'ganjil', '2015-09-21', 'global', 'globa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_himpunan`
--

CREATE TABLE IF NOT EXISTS `tbl_himpunan` (
  `id_himpunan` varchar(5) NOT NULL,
  `fk_variabel` int(5) DEFAULT NULL,
  `nm_himpunan` varchar(100) DEFAULT NULL,
  `nilai_bawah` int(12) NOT NULL,
  `nilai_atas` int(12) NOT NULL,
  `posisi` enum('bawah','tengah','atas') NOT NULL,
  `modifiable` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_himpunan`
--

INSERT INTO `tbl_himpunan` (`id_himpunan`, `fk_variabel`, `nm_himpunan`, `nilai_bawah`, `nilai_atas`, `posisi`, `modifiable`) VALUES
('1', 1, 'Rendah', 0, 45, 'bawah', 'yes'),
('10', 4, 'Tidak Sopan', 0, 45, 'bawah', 'yes'),
('11', 4, 'Kurang Sopan', 35, 80, 'tengah', 'yes'),
('12', 4, 'Sopan', 55, 100, 'atas', 'yes'),
('13', 5, 'Rendah', 0, 60, 'bawah', 'no'),
('14', 5, 'Tinggi', 50, 100, 'atas', 'no'),
('2', 1, 'Sedang', 35, 80, 'tengah', 'yes'),
('3', 1, 'Tinggi', 55, 100, 'atas', 'yes'),
('4', 2, 'Tidak Disiplin', 0, 45, 'bawah', 'yes'),
('5', 2, 'Kurang Disiplin', 35, 80, 'tengah', 'yes'),
('6', 2, 'Disiplin', 55, 100, 'atas', 'yes'),
('7', 3, 'Tidak Aktif', 0, 45, 'bawah', 'yes'),
('8', 3, 'Cukup Aktif', 35, 80, 'tengah', 'yes'),
('9', 3, 'Aktif', 55, 100, 'atas', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info_sistem`
--

CREATE TABLE IF NOT EXISTS `tbl_info_sistem` (
  `id_info` int(1) NOT NULL,
  `nm_sistem` varchar(100) NOT NULL,
  `deskripsi_sistem` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_info_sistem`
--

INSERT INTO `tbl_info_sistem` (`id_info`, `nm_sistem`, `deskripsi_sistem`) VALUES
(1, 'Sistem Pendukung Keputusan Pemilihan Siswa Berprestasi', 'Sistem dalam tahap pengembangan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE IF NOT EXISTS `tbl_kelas` (
  `id_kelas` char(5) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `jenjang` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `kelas`, `jenjang`) VALUES
('A01', 'X-1', 10),
('A02', 'X-2', 10),
('A03', 'X-3', 10),
('B01', 'XI-1', 11),
('B02', 'XI-2', 11),
('B03', 'XI-3', 11),
('C01', 'XII-1', 12),
('C02', 'XII-2', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi_aturan`
--

CREATE TABLE IF NOT EXISTS `tbl_klasifikasi_aturan` (
  `id_klasifikasi` int(5) NOT NULL,
  `fk_aturan_fuzzy` int(5) NOT NULL,
  `level` int(2) DEFAULT NULL,
  `operator` enum('and','or') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_klasifikasi_aturan`
--

INSERT INTO `tbl_klasifikasi_aturan` (`id_klasifikasi`, `fk_aturan_fuzzy`, `level`, `operator`) VALUES
(1, 1, 1, 'and'),
(2, 1, 2, 'and'),
(3, 1, 3, 'and'),
(4, 2, 1, 'and'),
(5, 2, 2, 'and'),
(6, 2, 3, 'and'),
(7, 3, 1, 'and'),
(8, 3, 2, 'and'),
(9, 3, 3, 'and'),
(10, 4, 1, 'and'),
(11, 4, 2, 'and'),
(12, 4, 3, 'and'),
(13, 5, 1, 'and'),
(14, 5, 2, 'and'),
(15, 5, 3, 'and'),
(16, 6, 1, 'and'),
(17, 6, 2, 'and'),
(18, 6, 3, 'and'),
(19, 7, 1, 'and'),
(20, 7, 2, 'and'),
(21, 7, 3, 'and'),
(22, 8, 1, 'and'),
(23, 8, 2, 'and'),
(24, 8, 3, 'and'),
(25, 9, 1, 'and'),
(26, 9, 2, 'and'),
(27, 9, 3, 'and'),
(28, 10, 1, 'and'),
(29, 10, 2, 'and'),
(30, 10, 3, 'and'),
(31, 11, 1, 'and'),
(32, 11, 2, 'and'),
(33, 11, 3, 'and'),
(34, 12, 1, 'and'),
(35, 12, 2, 'and'),
(36, 12, 3, 'and'),
(37, 13, 1, 'and'),
(38, 13, 2, 'and'),
(39, 13, 3, 'and'),
(40, 14, 1, 'and'),
(41, 14, 2, 'and'),
(42, 14, 3, 'and'),
(43, 15, 1, 'and'),
(44, 15, 2, 'and'),
(45, 15, 3, 'and'),
(46, 16, 1, 'and'),
(47, 16, 2, 'and'),
(48, 16, 3, 'and'),
(49, 17, 1, 'and'),
(50, 17, 2, 'and'),
(51, 17, 3, 'and'),
(52, 18, 1, 'and'),
(53, 18, 2, 'and'),
(54, 18, 3, 'and'),
(55, 19, 1, 'and'),
(56, 19, 2, 'and'),
(57, 19, 3, 'and'),
(58, 20, 1, 'and'),
(59, 20, 2, 'and'),
(60, 20, 3, 'and'),
(61, 21, 1, 'and'),
(62, 21, 2, 'and'),
(63, 21, 3, 'and'),
(64, 22, 1, 'and'),
(65, 22, 2, 'and'),
(66, 22, 3, 'and'),
(67, 23, 1, 'and'),
(68, 23, 2, 'and'),
(69, 23, 3, 'and'),
(70, 24, 1, 'and'),
(71, 24, 2, 'and'),
(72, 24, 3, 'and'),
(73, 25, 1, 'and'),
(74, 25, 2, 'and'),
(75, 25, 3, 'and'),
(76, 26, 1, 'and'),
(77, 26, 2, 'and'),
(78, 26, 3, 'and'),
(79, 27, 1, 'and'),
(80, 27, 2, 'and'),
(81, 27, 3, 'and'),
(82, 28, 1, 'and'),
(83, 28, 2, 'and'),
(84, 28, 3, 'and'),
(85, 29, 1, 'and'),
(86, 29, 2, 'and'),
(87, 29, 3, 'and'),
(88, 30, 1, 'and'),
(89, 30, 2, 'and'),
(90, 30, 3, 'and'),
(91, 31, 1, 'and'),
(92, 31, 2, 'and'),
(93, 31, 3, 'and'),
(94, 32, 1, 'and'),
(95, 32, 2, 'and'),
(96, 32, 3, 'and'),
(97, 33, 1, 'and'),
(98, 33, 2, 'and'),
(99, 33, 3, 'and'),
(100, 34, 1, 'and'),
(101, 34, 2, 'and'),
(102, 34, 3, 'and'),
(103, 35, 1, 'and'),
(104, 35, 2, 'and'),
(105, 35, 3, 'and'),
(106, 36, 1, 'and'),
(107, 36, 2, 'and'),
(108, 36, 3, 'and'),
(109, 37, 1, 'and'),
(110, 37, 2, 'and'),
(111, 37, 3, 'and'),
(112, 38, 1, 'and'),
(113, 38, 2, 'and'),
(114, 38, 3, 'and'),
(115, 39, 1, 'and'),
(116, 39, 2, 'and'),
(117, 39, 3, 'and'),
(118, 40, 1, 'and'),
(119, 40, 2, 'and'),
(120, 40, 3, 'and'),
(121, 41, 1, 'and'),
(122, 41, 2, 'and'),
(123, 41, 3, 'and'),
(124, 42, 1, 'and'),
(125, 42, 2, 'and'),
(126, 42, 3, 'and'),
(127, 43, 1, 'and'),
(128, 43, 2, 'and'),
(129, 43, 3, 'and'),
(130, 44, 1, 'and'),
(131, 44, 2, 'and'),
(132, 44, 3, 'and'),
(133, 45, 1, 'and'),
(134, 45, 2, 'and'),
(135, 45, 3, 'and'),
(136, 46, 1, 'and'),
(137, 46, 2, 'and'),
(138, 46, 3, 'and'),
(139, 47, 1, 'and'),
(140, 47, 2, 'and'),
(141, 47, 3, 'and'),
(142, 48, 1, 'and'),
(143, 48, 2, 'and'),
(144, 48, 3, 'and'),
(145, 49, 1, 'and'),
(146, 49, 2, 'and'),
(147, 49, 3, 'and'),
(148, 49, 1, 'and'),
(149, 49, 2, 'and'),
(150, 49, 3, 'and'),
(151, 50, 1, 'and'),
(152, 50, 2, 'and'),
(153, 50, 3, 'and'),
(154, 51, 1, 'and'),
(155, 51, 2, 'and'),
(156, 51, 3, 'and'),
(157, 52, 1, 'and'),
(158, 52, 2, 'and'),
(159, 52, 3, 'and'),
(160, 53, 1, 'and'),
(161, 53, 2, 'and'),
(162, 53, 3, 'and'),
(163, 54, 1, 'and'),
(164, 54, 2, 'and'),
(165, 54, 3, 'and'),
(166, 55, 1, 'and'),
(167, 55, 2, 'and'),
(168, 55, 3, 'and'),
(169, 56, 1, 'and'),
(170, 56, 2, 'and'),
(171, 56, 3, 'and'),
(172, 57, 1, 'and'),
(173, 57, 2, 'and'),
(174, 57, 3, 'and'),
(175, 58, 1, 'and'),
(176, 58, 2, 'and'),
(177, 58, 3, 'and'),
(178, 59, 1, 'and'),
(179, 59, 2, 'and'),
(180, 59, 3, 'and'),
(181, 60, 1, 'and'),
(182, 60, 2, 'and'),
(183, 60, 3, 'and'),
(184, 61, 1, 'and'),
(185, 61, 2, 'and'),
(186, 61, 3, 'and'),
(187, 62, 1, 'and'),
(188, 62, 2, 'and'),
(189, 62, 3, 'and'),
(190, 63, 1, 'and'),
(191, 63, 2, 'and'),
(192, 63, 3, 'and'),
(193, 63, 1, 'and'),
(194, 63, 2, 'and'),
(195, 63, 3, 'and'),
(196, 64, 1, 'and'),
(197, 64, 2, 'and'),
(198, 64, 3, 'and'),
(199, 65, 1, 'and'),
(200, 65, 2, 'and'),
(201, 65, 3, 'and'),
(202, 66, 1, 'and'),
(203, 66, 2, 'and'),
(204, 66, 3, 'and'),
(205, 67, 1, 'and'),
(206, 67, 2, 'and'),
(207, 67, 3, 'and'),
(208, 68, 1, 'and'),
(209, 68, 2, 'and'),
(210, 68, 3, 'and'),
(211, 69, 1, 'and'),
(212, 69, 2, 'and'),
(213, 69, 3, 'and'),
(214, 70, 1, 'and'),
(215, 70, 2, 'and'),
(216, 70, 3, 'and'),
(217, 71, 1, 'and'),
(218, 71, 2, 'and'),
(219, 71, 3, 'and'),
(220, 71, 1, 'and'),
(221, 71, 2, 'and'),
(222, 71, 3, 'and'),
(223, 72, 1, 'and'),
(224, 72, 2, 'and'),
(225, 72, 3, 'and'),
(226, 73, 1, 'and'),
(227, 73, 2, 'and'),
(228, 73, 3, 'and'),
(229, 74, 1, 'and'),
(230, 74, 2, 'and'),
(231, 74, 3, 'and'),
(232, 75, 1, 'and'),
(233, 75, 2, 'and'),
(234, 75, 3, 'and'),
(235, 75, 1, 'and'),
(236, 75, 2, 'and'),
(237, 75, 3, 'and'),
(238, 76, 1, 'and'),
(239, 76, 2, 'and'),
(240, 76, 3, 'and'),
(241, 77, 1, 'and'),
(242, 77, 2, 'and'),
(243, 77, 3, 'and'),
(244, 78, 1, 'and'),
(245, 78, 2, 'and'),
(246, 78, 3, 'and'),
(247, 79, 1, 'and'),
(248, 79, 2, 'and'),
(249, 79, 3, 'and'),
(250, 80, 1, 'and'),
(251, 80, 2, 'and'),
(252, 80, 3, 'and'),
(253, 81, 1, 'and'),
(254, 81, 2, 'and'),
(255, 81, 3, 'and'),
(256, 82, 1, 'and'),
(257, 82, 2, 'and'),
(258, 82, 3, 'and'),
(259, 83, 1, 'and'),
(260, 83, 2, 'and'),
(261, 83, 3, 'and');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_access_user`
--

CREATE TABLE IF NOT EXISTS `tbl_log_access_user` (
`id_login` int(10) NOT NULL,
  `level` enum('admin','web_user') NOT NULL,
  `id_user` char(10) DEFAULT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL,
  `ip_address` char(20) NOT NULL,
  `rand_session` char(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `tbl_log_access_user`
--

INSERT INTO `tbl_log_access_user` (`id_login`, `level`, `id_user`, `tgl`, `jam`, `ip_address`, `rand_session`) VALUES
(1, 'admin', '1', '2015-08-16', '14:53:32', '::1', '961026119ce0ad2f30fe7d4d789d9968'),
(2, 'admin', '1', '2015-08-16', '18:19:20', '::1', 'f21d2c7e4e5c53ecebcb8c9a8a078572'),
(3, 'admin', '1', '2015-08-17', '04:33:33', '::1', '415cdcefd110464e8a470a5224f51a2b'),
(4, 'admin', '1', '2015-08-17', '10:24:21', '::1', '573c47a011c3f342102ffbc496560a3e'),
(5, 'admin', '1', '2015-08-17', '18:06:01', '::1', '0dba697d65b1182d487654b6c266e4d3'),
(6, 'admin', '1', '2015-08-17', '23:24:15', '::1', 'dd2338a9fb803e209a18eabe13cebc4d'),
(7, 'admin', '1', '2015-08-18', '06:10:06', '::1', 'bd9f74fb57a5ed1c16d3d83197cb69f5'),
(8, 'admin', '1', '2015-08-18', '06:11:25', '::1', '23a00697c3743cd83248e80c0ad374c5'),
(9, 'admin', '1', '2015-08-18', '15:11:40', '::1', 'c66780b79d67d7139429aceceaf5e91a'),
(10, 'admin', '1', '2015-08-18', '20:30:53', '::1', '0b1a75e5437e2c62e49f6006f56d0df8'),
(11, 'admin', '1', '2015-08-19', '06:14:25', '::1', 'c9af03d323405213bbf0d131efa83e52'),
(12, 'admin', '1', '2015-08-21', '13:51:57', '::1', '82995cb1152f83773ca44f6df1309bc5'),
(13, 'admin', '1', '2015-08-22', '23:18:59', '::1', '345919c8ee920d3b2acc231e82224625'),
(14, 'admin', '1', '2015-08-24', '02:04:54', '::1', 'c6fd0e4fbd3f16ac7917d8ce2def6eec'),
(15, 'admin', '1', '2015-08-26', '12:21:15', '::1', '30c2843f61ccc2114007684636aca427'),
(16, 'admin', '1', '2015-08-27', '01:57:16', '::1', '182cd10c67bb6d077d153e2eebd62491'),
(17, 'admin', '1', '2015-08-27', '06:47:46', '::1', '21b1156028c02a7851272f50ed7d04ee'),
(18, 'admin', '1', '2015-08-27', '08:33:58', '::1', 'fd0ddb6c090717c852a5fe5d085028dd'),
(19, 'admin', '1', '2015-08-28', '00:12:22', '::1', '7c4923503bd0276e51a9945b24738bbb'),
(20, 'admin', '1', '2015-08-28', '02:31:33', '::1', '02fa23d083a27af42aa38dc9cad3b442'),
(21, 'admin', '1', '2015-08-28', '05:54:29', '::1', '8ba4c4103d6ba343060077c63d236459'),
(22, 'admin', '1', '2015-08-28', '23:47:59', '::1', '081926842f92b3c08403f1547fb71e6a'),
(23, 'admin', '1', '2015-08-29', '05:55:00', '::1', 'e77cce4c2fbdddd1f981c2429f7aaa08'),
(24, 'admin', '1', '2015-08-29', '10:03:17', '::1', '4361d9598fcdd27735038c5ddd14db32'),
(25, 'admin', '1', '2015-08-29', '13:18:25', '::1', 'ca4e4ad831bedf1db72a6e1ff88f28c3'),
(26, 'admin', '1', '2015-08-29', '15:28:26', '::1', '073b65c619708b02548a4385e427c4a7'),
(27, 'admin', '1', '2015-08-30', '04:07:04', '::1', 'f29d8329903ec592c4aa7c291abfc689'),
(28, 'admin', '1', '2015-08-31', '04:45:18', '::1', 'f6cc33635d75df6f2381a2c9e0334064'),
(29, 'admin', '1', '2015-08-31', '06:52:58', '::1', '017c0fade2c05f6140484550c06667c3'),
(30, 'admin', '1', '2015-08-31', '12:17:06', '::1', '800812a094c58d7b8df85b4c072994d4'),
(31, 'admin', '1', '2015-09-01', '06:22:16', '::1', '4622cbdc62e7730b976c5598e2c240e4'),
(32, 'admin', '1', '2015-09-01', '12:26:19', '::1', '98b610e77025be59d4fe423fe5bea099'),
(33, 'admin', '1', '2015-09-01', '21:15:21', '::1', '4a6e1f1377077356f274e7bc29e8f165'),
(34, 'admin', '1', '2015-09-02', '07:03:14', '::1', '2f95a81751f2e8627ea435de2090a54d'),
(35, 'admin', '1', '2015-09-02', '21:02:54', '::1', '6803798d560c05943af9e0fcf316a9f1'),
(36, 'admin', '1', '2015-09-05', '18:47:26', '::1', '0465f6a5503e7d69722159a810b958cf'),
(37, 'admin', '1', '2015-09-06', '01:23:07', '::1', '4bc7d4d7014aac5136e6fec90babcbf4'),
(38, 'admin', '1', '2015-09-06', '14:29:32', '::1', '24d022253bb581cf479575d21011cb3a'),
(39, 'admin', '1', '2015-09-07', '14:44:21', '::1', 'f739321d74bccc8b6acc66a0ee0bbf2f'),
(40, 'admin', '1', '2015-09-07', '22:55:51', '::1', 'ce2f94464e4f161294cd9e7a5007eb66'),
(41, 'admin', '1', '2015-09-08', '15:20:35', '::1', '79876783f2495280983c96344d773886'),
(42, 'admin', '1', '2015-09-09', '13:23:54', '::1', 'b45cade58de21090013c4f72dc46f77b'),
(43, 'admin', '1', '2015-09-09', '17:14:38', '::1', '4687cda0be59be216332d4f7b1063ed8'),
(44, 'admin', '1', '2015-09-10', '03:38:16', '::1', '4237cc94e74ef7b1f4d8558b60cb85d8'),
(45, 'admin', '1', '2015-09-10', '15:06:26', '::1', 'ed5f193d7563e2f7dd6d3900eec54a29'),
(46, 'admin', '1', '2015-09-11', '15:39:01', '::1', '887694c4bc43b45690820fe909196eff'),
(47, 'admin', '1', '2015-09-11', '22:08:29', '::1', '15f823a374a9e9b65f69ccbc6ee63e1c'),
(48, 'admin', '1', '2015-09-11', '23:24:49', '::1', '592f0e4b6ef630ea6f634a638b8eae42'),
(49, 'admin', '1', '2015-09-12', '00:34:23', '192.168.43.119', '30ea652486d864266990384952f6b59b'),
(50, 'admin', '1', '2015-09-12', '00:50:04', '192.168.43.222', '51390ff17de5753292219a058ba21ee5'),
(51, 'admin', '1', '2015-09-12', '01:00:09', '192.168.43.119', '7156a0dab1f57bc3ae68864aceab8e57'),
(52, 'admin', '1', '2015-09-13', '04:38:12', '127.0.0.1', 'f359a412ffeb9df2ec32f7789267a83b'),
(53, 'admin', '1', '2015-09-13', '16:27:46', '127.0.0.1', '36047c62ed2e21394eb9cb0a34ef2fd8'),
(54, 'admin', '1', '2015-09-13', '20:43:32', '127.0.0.1', '5296ca6e289bf9e2d3e6aab3a6ee395d'),
(55, 'admin', '1', '2015-09-14', '03:29:27', '127.0.0.1', 'c39ecba2f49045461198fa4a2c6dea3e'),
(56, 'admin', '4', '2015-09-14', '04:29:30', '127.0.0.1', '1a3636b523c008cfd93859d24af04ed5'),
(57, 'admin', '1', '2015-09-14', '04:29:46', '127.0.0.1', '9518293d1242f32cf55bbb1f4ecf8087'),
(58, 'admin', '1', '2015-09-14', '08:09:36', '127.0.0.1', '4bafc6f8c3150c75f246783d79db16f3'),
(59, 'admin', '1', '2015-09-15', '07:38:54', '127.0.0.1', '8f7e1c19a5006641dce06e84f4fdcb5d'),
(60, 'admin', '1', '2015-09-15', '13:49:17', '127.0.0.1', '79876783f2495280983c96344d773886'),
(61, 'admin', '1', '2015-09-16', '06:46:49', '127.0.0.1', '06e6d4a9d5fd3882c8a8174e96636b93'),
(62, 'admin', '1', '2015-09-18', '03:22:48', '127.0.0.1', 'a1a3e684abf1fb7783512bbca850ae87'),
(63, 'admin', '1', '2015-09-18', '07:10:13', '::1', 'f51f50b19c69e041def260d210a2e43c'),
(64, 'admin', '1', '2015-09-18', '17:29:58', '127.0.0.1', '9f39be913fdcbad459abf56b19a1bcc5'),
(65, 'admin', '1', '2015-09-19', '04:56:43', '127.0.0.1', '6e84284ceb737059946cbb4144e6020b'),
(66, 'admin', '1', '2015-09-19', '09:40:17', '127.0.0.1', 'bcde6cbdd05b39b60c0ba0df8218b3d2'),
(67, 'admin', '1', '2015-09-21', '07:57:28', '127.0.0.1', 'b21f8161e1c249a27ecc3cc9231559fb'),
(68, 'admin', '1', '2015-09-21', '17:14:41', '127.0.0.1', '07c050c938ef48b65f4e58a6f7e54d4a'),
(69, 'admin', '1', '2015-09-21', '21:09:10', '::1', 'ea90b378071aac73f1dfbbfe7fb17d04'),
(70, 'admin', '1', '2015-09-22', '00:29:09', '::1', 'fefcbc6cf7e4069115721eca43fef5fa'),
(71, 'admin', '1', '2015-09-22', '06:29:58', '127.0.0.1', 'ea9f4d62d951ed1b97b26a7dfd2e1d30'),
(72, 'admin', '3', '2016-06-07', '08:50:28', '::1', '3e1a8aa3d9dc4ddd73812cc174e81480');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE IF NOT EXISTS `tbl_nilai` (
  `id_nilai` int(10) NOT NULL,
  `thn_ajaran` char(10) DEFAULT NULL,
  `semester` enum('ganjil','genap') DEFAULT NULL,
  `fk_kelas` char(5) NOT NULL,
  `nis` char(20) NOT NULL,
  `nilai_mean` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `thn_ajaran`, `semester`, `fk_kelas`, `nis`, `nilai_mean`) VALUES
(1, '2015-2016', 'ganjil', 'A01', '1001', 80),
(2, '2015-2016', 'ganjil', 'A01', '1002', 68),
(3, '2015-2016', 'ganjil', 'A01', '1003', 76),
(4, '2015-2016', 'ganjil', 'A01', '1004', 70),
(5, '2015-2016', 'ganjil', 'A01', '1005', 77),
(6, '2015-2016', 'ganjil', 'A02', '1006', 76),
(7, '2015-2016', 'ganjil', 'A02', '1007', 84),
(8, '2015-2016', 'ganjil', 'A02', '1008', 80),
(9, '2015-2016', 'ganjil', 'A02', '1009', 69),
(10, '2015-2016', 'ganjil', 'A02', '1010', 78),
(11, '2015-2016', 'ganjil', 'A03', '1011', 72),
(12, '2015-2016', 'ganjil', 'A03', '1012', 74),
(13, '2015-2016', 'ganjil', 'A03', '1013', 76),
(14, '2015-2016', 'ganjil', 'A03', '1014', 71),
(15, '2015-2016', 'ganjil', 'A03', '1015', 68),
(16, '2015-2016', 'ganjil', 'B01', '2001', 80),
(17, '2015-2016', 'ganjil', 'B01', '2002', 80),
(18, '2015-2016', 'ganjil', 'B01', '2003', 77),
(19, '2015-2016', 'ganjil', 'B01', '2004', 76),
(20, '2015-2016', 'ganjil', 'B01', '2005', 67),
(21, '2015-2016', 'ganjil', 'B02', '2006', 75),
(22, '2015-2016', 'ganjil', 'B02', '2007', 73),
(23, '2015-2016', 'ganjil', 'B02', '2008', 70),
(24, '2015-2016', 'ganjil', 'B02', '2009', 80),
(25, '2015-2016', 'ganjil', 'B02', '2010', 72),
(26, '2015-2016', 'ganjil', 'B03', '2011', 83),
(27, '2015-2016', 'ganjil', 'B03', '2012', 78),
(28, '2015-2016', 'ganjil', 'B03', '2013', 80),
(29, '2015-2016', 'ganjil', 'B03', '2014', 70),
(30, '2015-2016', 'ganjil', 'B03', '2015', 70),
(31, '2015-2016', 'ganjil', 'C01', '3001', 73),
(32, '2015-2016', 'ganjil', 'C01', '3002', 73),
(33, '2015-2016', 'ganjil', 'C01', '3003', 69),
(34, '2015-2016', 'ganjil', 'C01', '3004', 69),
(35, '2015-2016', 'ganjil', 'C01', '3005', 69),
(36, '2015-2016', 'ganjil', 'C02', '3006', 67),
(37, '2015-2016', 'ganjil', 'C02', '3007', 73),
(38, '2015-2016', 'ganjil', 'C02', '3008', 73),
(39, '2015-2016', 'ganjil', 'C02', '3009', 65),
(40, '2015-2016', 'ganjil', 'C02', '3010', 68),
(41, '2015-2016', 'ganjil', 'C02', '3011', 73);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_periode_akademik`
--

CREATE TABLE IF NOT EXISTS `tbl_periode_akademik` (
  `id_periode` int(5) NOT NULL,
  `thn_ajaran` char(10) NOT NULL,
  `semester` enum('ganjil','genap') DEFAULT NULL,
  `status` enum('active','non_active') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_periode_akademik`
--

INSERT INTO `tbl_periode_akademik` (`id_periode`, `thn_ajaran`, `semester`, `status`) VALUES
(1, '2015-2016', 'ganjil', 'non_active'),
(3, '2016-2017', 'genap', 'active'),
(4, '2017-2018', 'ganjil', 'non_active'),
(5, '2015-2016', 'ganjil', 'non_active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE IF NOT EXISTS `tbl_siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` enum('l','p') DEFAULT NULL,
  `tpt_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fk_kelas` varchar(5) NOT NULL,
  `thn_masuk` char(4) NOT NULL,
  `active` enum('yes','no') NOT NULL,
  `thn_lulus_skl_asal` varchar(255) NOT NULL DEFAULT '',
  `sekolah_asal` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `jk`, `tpt_lahir`, `tgl_lahir`, `agama`, `alamat`, `no_tlp`, `email`, `fk_kelas`, `thn_masuk`, `active`, `thn_lulus_skl_asal`, `sekolah_asal`) VALUES
('1001', 'fachri', 'l', 'pangkajene', '1991-11-28', 'Islam', 'jl.karaeng barasa', '082343671949', 'arydjohran@gmail.com', 'A01', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1002', 'dessy', 'p', 'namlea', '1993-11-27', 'Islam', 'cv.dewi', '085243434384', 'dessychy@gmail.com', 'A01', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1003', 'firha', 'p', 'ambon', '1990-12-02', 'Kristen Ka', 'batua raya', '987545567', 'firha@gmail.com', 'A01', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1004', 'kahar', 'l', 'sinjai', '1992-02-01', 'Islam', 'tamalate', '09876', 'kahar@gmail.com', 'A01', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1005', 'ikhsan', 'l', 'pangkep', '1992-09-15', 'Islam', 'pangkep', '09876543', 'iccank@gmail.com', 'A01', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1006', 'hasra', 'p', 'mamuju', '1993-09-01', 'Islam', 'cv dewi', '65546054574987', 'hasra@gmail.com', 'A02', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1007', 'sughira', 'p', 'bone', '1993-01-03', 'Islam', 'jl. deponegoro', '7528768', 'irha@gmail.com', 'A02', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1008', 'andika', 'l', 'makassar', '1993-01-04', 'Islam', 'jl. citra daya', '875645', 'andika@yahoo.com', 'A02', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1009', 'wadhy', 'l', 'sul-teng', '1993-01-05', 'Islam', 'tamalate', '57587877634', 'wadhy@ymail.com', 'A02', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1010', 'thamrin pratama', 'l', 'pangkep', '1993-01-06', 'Islam', 'btp perintis kemerdekaan', '67765644653', 'tamrin@gmail.com', 'A02', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1011', 'masrudy', 'l', 'bone', '1993-02-01', 'Islam', 'gowa', '74723687548', 'rudy@yahooo.com', 'A03', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1012', 'wandi wahyudi', 'l', 'topoyo', '1993-02-02', 'Islam', 'btn paropo', '74627629', 'wandi@gmail.com', 'A03', '2015', 'yes', '2015', 'SMPN 2 Pangkep'),
('1013', 'ikram', 'l', 'piinrang', '1993-02-03', 'Islam', 'abdesir', '65764353', 'ikram@gmail.com', 'A03', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1014', 'fahri', 'l', 'bulukumba', '1993-02-06', 'Islam', 'gowa', '646534528', 'fahri@gmail.com', 'A03', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('1015', 'alim', 'l', 'barru', '1993-02-07', 'Islam', 'jl.penjernihan', '76674543422', 'alim@gmail.com', 'A03', '2015', 'yes', '2015', 'SMPN 5 makassar'),
('2001', 'gale', 'l', 'pangkajene', '1991-11-28', 'Islam', 'daya', '69575', 'arydjohran@gmail.com', 'B01', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2002', 'misbahuddin', 'l', 'belawa', '1989-10-11', 'Islam', 'aspol panaikang', '74837537', 'chiba@gmail.com', 'B01', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2003', 'rivan alviadi', 'l', 'makassar', '1993-01-12', 'Islam', 'antang', '669632', 'ivan@gmail.com', 'B01', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2004', 'syahril m.', 'l', 'malino', '1992-01-12', 'Islam', 'pampang', '987654234', 'ariel@gmail.co.id', 'B01', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2005', 'adham abdurrahman', 'l', 'makassar', '1992-02-13', 'Islam', 'jl.tol biringkanayya', '79843587340', 'adham@gmail.com', 'B01', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2006', 'siska seleng', 'p', 'toraja', '1992-02-14', 'Kristen Ka', 'abdesir', '87987986', 'siska@ymail.com', 'B02', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2007', 'wasiah', 'p', 'makassa', '1992-02-15', 'Islam', 'toddopuli', '9898867', 'cia@gmail.com', 'B02', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2008', 'pratiwi novianti', 'p', 'toraja', '1992-02-16', 'Kristen Pr', 'abdesir', '65543343', 'novi@yahoo.com', 'B02', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2009', 'elisabeth lamere', 'p', 'ambon', '1992-02-17', 'Kristen Ka', 'gowa', '9876543456789', 'iche@gmail.com', 'B02', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2010', 'suwanda', 'l', 'belawa', '1992-02-18', 'Islam', 'aspol panaikang', '879878797', 'wanda@gmail.com', 'B02', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2011', 'lisnawati', 'p', 'makassar', '1992-02-19', 'Islam', 'maros', '7867643', 'lis@gmail.com', 'B03', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2012', 'dwi eriyanto yakob', 'l', 'bulukumba', '1991-03-20', 'Kristen Ka', 'cendrawasi', '89809834343', 'anto@yahoo.com', 'B03', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2013', 'fadhreza', 'l', 'makassar', '1991-03-21', 'Islam', 'minasaupa', '098765434567', 'echa@ymail.com', 'B03', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2014', 'rahmat ika', 'l', 'mamuju', '1991-03-23', 'Islam', 'pamppang', '87879754545', 'rahmat@gmail.com', 'B03', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('2015', 'wari sorawati', 'p', 'toraja', '1991-03-22', 'Kristen Ka', 'kampung rama', '98674333', 'wari@gmail.com', 'B03', '2014', 'yes', '2014', 'SMPN 4 makassar'),
('3001', 'rudy kamran', 'l', 'tarakang', '1989-05-01', 'Islam', 'hertasning', '773527495', 'rudy@yahoo.com', 'C01', '2013', 'yes', '2013', 'SMPN 5 makassar'),
('3002', 'dermawan', 'l', 'mamuju', '1989-05-02', 'Islam', 'adyaksa baru 1', '8435437', 'wawan@yahoo.com', 'C01', '2013', 'yes', '2013', 'SMPN 5 makassar'),
('3003', 'fitriyani', 'p', 'mamuju', '1989-05-03', 'Islam', 'jl.sunu', '09876542345678', 'fitry@ymail.com', 'C01', '2013', 'yes', '2013', 'SMPN 4 makassar'),
('3004', 'andriani abudi', 'p', 'manado', '1989-05-06', 'Kristen Pr', 'jl.sungai limboto', '1234567098765', 'ani@gmail.com', 'C01', '2013', 'yes', '2013', 'SMPN 2 Pangkep'),
('3005', 'nurul annisa', 'p', 'palopo', '1989-05-07', 'Islam', 'abdesir', '6763642469', 'nunu@yahoo.com', 'C01', '2013', 'yes', '2013', 'SMPN 2 Pangkep'),
('3006', 'andi mutiara', 'p', 'yogyakarta', '1989-06-08', 'Islam', 'jl bontoa', '7867523243', 'tiara@gmail.com', 'C02', '2013', 'yes', '2013', 'SMPN 2 Pangkep'),
('3007', 'titik', 'p', 'barru', '1989-06-09', 'Islam', 'jl.bung', '98667438977', 'titik@gmail.com', 'C02', '2013', 'yes', '2013', 'SMPN 2 Pangkep'),
('3008', 'marhlyn', 'p', 'toraja', '1989-05-20', 'Kristen Pr', 'jl. bukit khatulistiwa', '1234509756', 'lhyn@gmail.com', 'C02', '2013', 'yes', '2013', 'SMPN 2 Pangkep'),
('3009', 'mayasari', 'p', 'barru', '1989-05-21', 'Islam', 'manuruki', '54658347587284', 'maya@gmail.com', 'C02', '2013', 'yes', '2013', 'SMPN 2 Pangkep'),
('3010', 'ayumi', 'p', 'barru', '1989-05-23', 'Islam', 'alauddin', '7878873242', 'ayu@gmail.com', 'C02', '2013', 'yes', '2013', 'SMPN 2 Pangkep'),
('3011', 'beny fardianto', 'l', 'manado', '1991-08-27', 'Kristen Ka', 'jl. faisal I', '987657897', 'beny@gmail.com', 'C02', '2013', 'yes', '2013', 'SMPN 2 Pangkep');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` enum('developer','root','high','low') DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `updated_by` varchar(20) NOT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_time` time DEFAULT NULL,
  `modifiable` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `email`, `level`, `created_by`, `created_date`, `created_time`, `updated_by`, `updated_date`, `updated_time`, `modifiable`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'ian.deziva@gmail.com', 'developer', 'developer', '2015-08-16', '12:53:00', '', NULL, NULL, 'no'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'evanreze@gmail.com', 'developer', 'evan', '2016-06-07', '12:40:25', 'evan', '2016-06-08', '08:14:13', 'yes'),
(4, 'admin1', '0192023a7bbd73250516f069df18b500', 'fachristmikh@gmail.com', 'high', 'admin', '2015-09-14', '04:28:12', '', '0000-00-00', '00:00:00', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_variabel`
--

CREATE TABLE IF NOT EXISTS `tbl_variabel` (
  `id_variabel` varchar(5) NOT NULL,
  `nm_variabel` varchar(100) NOT NULL,
  `nilai_bawah` int(12) NOT NULL,
  `nilai_atas` int(12) NOT NULL,
  `utama` enum('yes','no') NOT NULL,
  `modifiable` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_variabel`
--

INSERT INTO `tbl_variabel` (`id_variabel`, `nm_variabel`, `nilai_bawah`, `nilai_atas`, `utama`, `modifiable`) VALUES
('1', 'Nilai Akademik', 0, 100, 'no', 'yes'),
('2', 'Kehadiran', 0, 100, 'no', 'yes'),
('3', 'Extrakurikuler', 0, 100, 'no', 'yes'),
('4', 'Sikap dan Perilaku', 0, 100, 'no', 'yes'),
('5', 'Prestasi', 0, 100, 'yes', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aturan_fuzzy`
--
ALTER TABLE `tbl_aturan_fuzzy`
 ADD PRIMARY KEY (`id_aturan`);

--
-- Indexes for table `tbl_dtl_aturan_fuzzy`
--
ALTER TABLE `tbl_dtl_aturan_fuzzy`
 ADD PRIMARY KEY (`id_detil`);

--
-- Indexes for table `tbl_dtl_hasil_fuzzy`
--
ALTER TABLE `tbl_dtl_hasil_fuzzy`
 ADD PRIMARY KEY (`id_detil`);

--
-- Indexes for table `tbl_dtl_hasil_nilaikeanggotaan`
--
ALTER TABLE `tbl_dtl_hasil_nilaikeanggotaan`
 ADD PRIMARY KEY (`id_detil`);

--
-- Indexes for table `tbl_dtl_nilai`
--
ALTER TABLE `tbl_dtl_nilai`
 ADD PRIMARY KEY (`id_detil`);

--
-- Indexes for table `tbl_hasil_spk`
--
ALTER TABLE `tbl_hasil_spk`
 ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tbl_himpunan`
--
ALTER TABLE `tbl_himpunan`
 ADD PRIMARY KEY (`id_himpunan`);

--
-- Indexes for table `tbl_info_sistem`
--
ALTER TABLE `tbl_info_sistem`
 ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_klasifikasi_aturan`
--
ALTER TABLE `tbl_klasifikasi_aturan`
 ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_log_access_user`
--
ALTER TABLE `tbl_log_access_user`
 ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
 ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_periode_akademik`
--
ALTER TABLE `tbl_periode_akademik`
 ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_variabel`
--
ALTER TABLE `tbl_variabel`
 ADD PRIMARY KEY (`id_variabel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_log_access_user`
--
ALTER TABLE `tbl_log_access_user`
MODIFY `id_login` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
`id_hubungi` int(5) NOT NULL,
  `id_kustomer` int(5) NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `id_kustomer`, `subjek`, `pesan`, `tanggal`) VALUES
(18, 8, 'komputer', 'lenovo', '2016-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'Printer'),
(5, 'Internet'),
(6, 'Laptop Seken'),
(7, 'Laptop Baru'),
(9, 'Flashdisk'),
(10, 'Mouse'),
(13, 'Komputer (PC)');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
`id_kota` int(3) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `ongkos_kirim`) VALUES
(12, 'Makassar', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE IF NOT EXISTS `kustomer` (
`id_kustomer` int(5) NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `password`, `nama_lengkap`, `alamat`, `email`, `telpon`, `id_kota`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'Lukmanul Hakim', 'Jl. Prof. Dr. Soepomo No. 178, Tebet, Jakarta Timur 17280', 'algosigma@gmail.com', '081804396000', 1),
(2, 'cec1de94b66011a1cfed0a45f8ba8e16', 'budiono', 'Jl. Dipenogoro', 'budiono_114@yahoo.com', '083242233323', 5),
(3, '4b0cf71ac4f5267ae87e1092e98395ba', 'budionokompas1', 'Jl. Dorak, Selatpanjang1', 'budiono.115@gmail.com', '081275371724', 3),
(4, '4b0cf71ac4f5267ae87e1092e98395ba', 'budionokompas', 'tes', 'budiono.114@gmail.com', '081275371724', 5),
(8, '6f29c3da540e2f25f3de821a5a694fd6', 'evan aprianjaan', 'makassar', 'evan@gmail.om', '858859439393', 3);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
`id_modul` int(5) NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=58 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id_orders` int(5) NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kustomer` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `status_order`, `tgl_order`, `jam_order`, `id_kustomer`) VALUES
(26, 'Baru', '2016-05-16', '12:11:19', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(26, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
`id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=182 ;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(27, 7, 'Asus A450CA-WX103D - 14" - Merah', '<p>\r\n<strong>Spesifikasi : \r\n</strong>\r\n</p>\r\n<p>\r\nSKU 	\r\nAS100ELACFEAANID-131894\r\nModel 	A450CA-WX103D\r\nUkuran (L x W x H cm) 	34.8 x 24.1 x 2.48 cm\r\nBerat (kg) 	2.4\r\nWarna 	Merah\r\nUkuran Layar (in) 	14.0\r\nHard Disk 	500\r\nRAM 	2\r\nFitur 	Bluetooth|Wi-Fi|DVD\r\nGaransi produk 	1 Tahun Garansi Spare-Part &amp; Servis\r\nKoneksi Nirkabel 	Bluetooth|WiFi\r\n</p>\r\n<p>\r\n<strong>Ulasan :&nbsp;\r\n</strong>\r\n</p>\r\n<p>\r\nDidesain dengan konsep untuk membuat laptop lebih personal, Asus \r\nA450CA-WX103D - 14&quot; - Biru hadir dengan layar sebesar 14&quot;. Ukurannya \r\nyang kompak membuat notebook ini menjadi lebih ringan dengan bobot 2.4 \r\nkg. Tampil dengan desain yang modern serta dinamis, laptop ini sangat \r\ncocok untuk menemani kegiatan Anda bersama pekerjaan sehari-hari. \r\n</p>\r\n<div class="prd-package-content rfloat box">\r\n<h3 class="txtLight">Apa yang ada di dalam kotak:</h3>\r\n<ul class="ui-listBulleted">\r\n	<li><span>Asus A450CA-WX103D - 14&quot; - Merah</span></li>\r\n	<li><span>Charger</span></li>\r\n	<li><span>Driver</span></li>\r\n	<li><span>Manual Book</span></li>\r\n	<li><span>Kartu Garansi</span></li>\r\n	<li><span>Tas Laptop</span></li>\r\n</ul>\r\n</div>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 4199000, 14, '2.40', '2014-04-14', '56asus.jpg', 1, 10),
(28, 7, 'HP Pavillion 1000 - 1432TU - Hitam', '<p>\r\nHP Pavillion 1000 -1432TU merupakan laptop performa tinggi dengan harga \r\nyang terjangkau. Dirancang khusus memenuhi tuntutan komputasi Anda. \r\nDibekali dengan prosesor Intel Celeron Dual Core berkecepatan 1.8 GHz, 2\r\nGB RAM serta 320 GB HDD, Anda dapat dengan mudah melakukan multitasking\r\ndimana saja. Dengan desainnya yang ramping dan ringan, notebook dengan \r\nukuran 14&quot; ini dirancang bagi Anda yang membutuhkan kemudahan \r\nportabilitas tanpa mengorbankan pengalaman komputasi yang optimal.\r\n</p>\r\n<p>\r\n<strong>Spesifikasi</strong> : SKU 	\r\nHP467ELACITLANID-137484\r\nModel 	Pavillion 1000 - 1432TU\r\nUkuran (L x W x H cm) 	15 x 50 x 37\r\nBerat (kg) 	2.2 kg\r\nWarna 	Hitam\r\nGaransi produk 	1 Tahun Garansi Resmi HP\r\n</p>\r\n', 3799000, 50, '2.20', '2014-04-14', '67hp-0945-507711-2-zoom.jpg', 1, 8),
(29, 7, 'ASUS X200CA-KX184D DOS Putih - 11.6" - 500 GB', '<p>\r\nASUS X200CA-KX184D hadir dengan desain yang kompak dan dikemas dengan \r\nlayar berukuran 11.6&quot;. Dengan bobot dibawah 3 kg, Asus menyertakan \r\nberbagai teknologi yang hanya terdapat pada produknya seperti \r\nSonicMaster, Instan On, juga Ice Cool.<br />\r\n<br />\r\n<strong>Kinerja Optimal</strong><br />\r\nLaptop ini didukung dengan prosesor Dual Core 1007 berkecepatan 1.5 \r\nGHz, memori 2 GB RAM akan memberikan kemudahan bagi Anda dalam \r\nmengerjakan pekerjaan yang multitasking. Untuk grafisnya dibekali dengan\r\nIntel HD Graphics 4000. Dengan kapasitas memori penyimpanan 500 GB, \r\nAnda memiliki ruang penyimpanan yang cukup besar untuk menyimpan \r\nberbagai data berharga Anda.\r\n</p>\r\n<p>\r\n<strong>&nbsp;Spesifikasi :</strong>\r\n</p>\r\nSKU 	\r\nAS100ELABQVKANID-91057\r\nUkuran (L x W x H cm) 	1x1x1\r\nBerat (kg) 	-\r\nWarna 	Putih\r\nUkuran Layar (in) 	11.6\r\nKecepatan CPU 	1.50\r\nSistem Operasi 	Free DOS \r\nFitur Tampilan 	HD\r\nFitur 	Dual Core\r\nGaransi produk 	2 Tahun Garansi Global\r\nInput 	USB|LAN\r\nKoneksi Nirkabel 	WiFi\r\nKamera 	Ya\r\nBuilt in Memory 	2GB\r\nKapasitas Penyimpanan 	500GB\r\nTipe Processor 	Dual Core 1007\r\n', 3379000, 8, '2.00', '2014-04-14', '64asus-9605-88418-1-.jpg', 1, 0),
(30, 12, 'Epson L210 - All In One', 'Sistem tinta Epson L210 akan memberikan Anda performa yang lebih baik dengan biaya yang sangat rendah.<br />\r\n<div id="prd-detail-page">\r\n<div>\r\n<div id="prodinfo" class="l-main prd-detail-wrapper">\r\n<div class="prd-description">\r\n<p style="text-align: justify">\r\n&nbsp;\r\n</p>\r\n<p style="text-align: justify">\r\n<strong>Desain Minimalis</strong><br />\r\nPrinter Epson L210 memiliki desain yang kompak untuk kemudahan dalam \r\npenempatannya, membutuhkan sedikit ruang jika dibanding dengan printer \r\nlain, sehingga Anda bisa dengan mudah menempatkannya dimana saja.<br />\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img style="width: 420px; height: 257px; display: inline" class="productlazyimage" src="https://lh6.googleusercontent.com/-RFz10r4mtbg/UhbV0ZKVZEI/AAAAAAAAETY/syfejVnThHw/w420-h257-no/Epson+L210+%25281%2529.png" alt="" />\r\n</p>\r\n<p style="text-align: justify">\r\n<br />\r\n<strong>Hemat Tinta</strong><br />\r\nDengan menggunakan tinta asli dari Epson, Anda bisa melakukan \r\npenghematan hingga 4.000 halaman (tinta hitam) dengan biaya yang sangat \r\nmurah. Selain itu juga printer ini memiliki sistem pengisian tinta yang \r\nsangat mudah dilakukan.\r\n</p>\r\n</div>\r\n</div>\r\n<div class="l-main prd-detail-wrapper">\r\n<div id="productDetails" class="prd-descriptionWrapper" style="display: block">\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 2100000, 4, '4.40', '2014-04-14', '76Epson L210 (32).jpg', 1, 10),
(31, 12, 'Canon Pixma iP2770', '<p>\r\n<strong>Spesifikasi Canon Pixma iP2770 - Inkjet - Hitam</strong>\r\n</p>\r\n<p>\r\nSKU 	\r\nCA189EL61JZEALID-6738\r\nModel 	Printer Inkjet\r\nUkuran (L x W x H cm) 	44.5 x 25 x 13 cm\r\nBerat (kg) 	1\r\nWarna 	Hitam\r\nTipe 	Canon Pixma iP2770\r\nGaransi produk 	1 Tahun Garansi (Spare-part dan Servis)\r\nInput 	USB\r\nKonsumsi Daya 	11 W\r\nMetode Cetak 	Inkjet\r\nResolusi Cetak Maksimum (warna) 	4800 x 1200 dpi\r\nResolusi Cetak Maksimum (monokrom) 	4800 x 1200 dpi\r\nKecepatan Cetak (warna) 	4.8 ipm\r\nKecepatan Cetak (monokrom) 	7 ipm\r\nTipe Media 	A4, Letter, Legal, A5, B5, Envelope\r\nKapasitas Tray 	100 Lembar\r\n</p>\r\n<p style="text-align: justify">\r\nCanon Pixma iP2770 dapat mampu mencetak dengan kecepatan hingga 4,8 ipm,\r\nuntuk tinta warna dan 7.0 ipm untuk tinta hitam. Produk tersebut juga \r\ndilengkapi fitur Auto Photo Fix II pada printer yang dapat diakses \r\nmelalui software EX-Cetak EasyPhoto, untuk dapat mengkoreksi gambar \r\nsehingga Anda dapat mendapatkan kualitas gambar terbaik dan dengan \r\nmaksimal resolusi sebesar 4800x1200 dpi.<br />\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img style="display: inline" class="productlazyimage" src="https://lh5.googleusercontent.com/-qQbdQh34AqU/Uh7NNppvf9I/AAAAAAAAEhU/oa1Kp892TIY/w958-h574-no/Canon%252BPIXMA%252BiP36801.jpg" alt="" width="313" height="145" />\r\n</p>\r\n<p style="text-align: justify">\r\n<br />\r\n<strong>Teknologi FINE&trade; print head</strong><br />\r\nSesuatu yang unik dalam dunia percetakan, teknologi FINE&trade; print head \r\nmilik Canon memungkinkan photolab untuk menghasilkan kualitas dengan \r\ndetail yang jelas tanpa mengorbankan kecepatan. Tetesan ejeksi yang \r\nstabil, kualitas luar biasa dan daya tahan yang lama telah dicapai untuk\r\nmenghasilkan gambar dengan kualitas tertinggi.\r\n</p>\r\n<p style="text-align: justify">\r\n&nbsp;\r\n</p>\r\n<p style="text-align: justify">\r\n<strong><img style="float: left; margin: 5px 10px; display: block" class="productlazyimage" src="https://lh6.googleusercontent.com/-UdjQ9Toorrw/UdY3k-8JofI/AAAAAAAAC5Q/K0xV_LW_P6Y/w209-h100-no/pixma-usb2highspeed.jpg" alt="" width="265" height="126" />Mencetak A4 Tanpa Batas</strong><br />\r\nMencetak foto yang indah dan gambar hingga ukuran A4 dengan fungsi \r\npencetakan tanpa batas - memudahkan Anda membuat album foto profesional,\r\nmenu gambar, presentasi bisnis dan banyak lagi.\r\n</p>\r\n<p style="text-align: justify">\r\n<br />\r\n<strong>USB 2.0</strong><br />\r\nDengan koneksi built-in USB 2.0 berkecepatan tinggi, Anda dapat dengan \r\nmudah dan transfer dengan kecepatan penuh antara perangkat dan printer \r\nPIXMA tanpa jeda waktu atau keterlambatan. Anda cukup memasukkan kabel \r\nuntuk printer dan secara langsung akan melakukan setting.\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 627000, 5, '1.00', '2014-04-14', '17canon-4163-8376-2-zoom.jpg', 1, 17),
(32, 13, 'Lenovo M70e (Tower) DOS + LCD - 18.5"', '<p>\r\nLenovo menghadirkan PC Lenovo M70e (Tower) untuk memenuhi kebutuhan \r\npersonal komputer yang akan membantu Anda dalam kegiatan komputasi \r\nsehari-hari baik di rumah maupun di kantor. Dilengkapi dengan layar 18.5\r\nkeyboard dan mouse, personal komputer ini dapat menjadi pilihan bagi \r\nyang mencari PC dengan kinerja optimal dan handal.<br />\r\n<br />\r\n<strong>Kinerja Optimal</strong><br />\r\nAnda dapat dengan mudah melakukan banyak tugas tanpa masalah karena PC \r\nLenovo M70e (Tower) menawarkan Processor Dual Core E5800 3.2Ghz 2MB L2 \r\nCache 800Mhz, Memory 2GB DDR3, Chipset G41, Hard Disk 500GB, DVDRW, \r\nIntegrated Video GMA 4500, Gigabit Ethernet, Keyboard Scroll Lock, \r\nMouse,&nbsp; LCD 18.5&quot;, dan dilengkapi pula dengan DOS<br />\r\n<br />\r\n<strong>Konektivitas</strong><br />\r\nTerdapat berbagai pilihan konektivitas dalam laptop ini antara lain port\r\nUSB 2.0 dan Bluetooth. Anda juga dapat menemukan 6-in-1 Card Reader \r\nuntuk membaca berbagai macam kartu memori milik Anda. Untuk keperluan \r\njaringan, laptop ini dilengkapi dengan Ethernet LAN dan Wireless LAN \r\nyang memungkinkan Anda untuk berbagi data dengan kecepatan tinggi dan \r\nterhubung ke internet.\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<strong>Spesifikasi Lengkap :</strong>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\nSKU 	\r\nLE629ELABPDSANID-87405\r\nUkuran (L x W x H cm) 	107.1 x.40.6 x 98.5 cm\r\nBerat (kg) 	12\r\nWarna 	Hitam\r\nTipe 	Lenovo M70e\r\nUkuran Layar (in) 	18.5\r\nHard Disk 	500\r\nRAM 	2\r\nKapasitas Penyimpanan 	500\r\nMemori Grafis 	2\r\nKecepatan CPU 	3.20\r\nSistem Operasi 	Free DOS \r\nGaransi produk 	3 Tahun Garansi (Spare-part dan Servis)\r\nInput 	USB|Card Reader|LAN\r\nOutput 	3.5mm jack|USB\r\nKoneksi Nirkabel 	Bluetooth|WiFi\r\nTipe Memori 	DDR3\r\nBuilt in Memory 	2 GB RAM\r\nTipe Layar 	LCD\r\nKapasitas Penyimpanan 	500 GB\r\nKecepatan Processor 	3.2 GHz\r\nTipe Processor 	Processor Dual Core E5800\r\n</p>\r\n', 5150000, 14, '12.00', '2014-04-14', '15lenovo-9079-25597-1-zoom.jpg', 2, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
 ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
 ADD PRIMARY KEY (`id_kustomer`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
 ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
 ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
MODIFY `id_kustomer` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
`id_berita` int(3) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(30) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi`, `gambar`, `tgl`) VALUES
(1, 'pemerkosaa', 'ahadhdhadkahahda', 'asa', '2012-04-11'),
(2, 'hdghaajhd', 'peprpepperp', 'conto.png', '2012-04-11'),
(3, 'keluaraga', 'anta kaira', 'Graphic2.png', '2016-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
`id_jurusan` int(11) NOT NULL,
  `jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'teknik informatika'),
(2, 'teknik mesin'),
(3, 'teknik otomotif'),
(4, 'teknik kimia');

-- --------------------------------------------------------

--
-- Table structure for table `kariawan`
--

CREATE TABLE IF NOT EXISTS `kariawan` (
`id_kariawan` int(3) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `jenkel` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
`id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `id_jurusan`) VALUES
(2, 'desi hadayani', 1),
(3, 'nuris akbar', 2),
(4, 'muhammad hafidz muzakki', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'admin@admin.com', '233', '233', 122, '1223', 322, 2233, 122, 'evna', 'ass', 'makassar', '89128922');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
 ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
 ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kariawan`
--
ALTER TABLE `kariawan`
 ADD PRIMARY KEY (`id_kariawan`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`), ADD KEY `fk_users_groups_users1_idx` (`user_id`), ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
MODIFY `id_berita` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kariawan`
--
ALTER TABLE `kariawan`
MODIFY `id_kariawan` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `dn_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(45) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
`id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE IF NOT EXISTS `fashion` (
`id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olaraga`
--

CREATE TABLE IF NOT EXISTS `olaraga` (
`id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fashion`
--
ALTER TABLE `fashion`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `olaraga`
--
ALTER TABLE `olaraga`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fashion`
--
ALTER TABLE `fashion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olaraga`
--
ALTER TABLE `olaraga`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
`id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
`id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=190 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'datagereja', 'table_kk', 'id_k', '', '', '_', ''),
(2, 'datagereja', 'table_kk', 'nm_kk', '', '', '_', ''),
(3, 'datagereja', 'table_kk', 'tmp_lhr', '', '', '_', ''),
(189, 'dn_portal', 'fashion', 'ket', '', '', '_', ''),
(5, 'datagereja', 'table_kk', 'alamat', '', '', '_', ''),
(6, 'datagereja', 'table_kk', 'pekerjaan', '', '', '_', ''),
(7, 'datagereja', 'table_kk', 'nm_istri', '', '', '_', ''),
(8, 'datagereja', 'table_kk', 'tmpt_lhr', '', '', '_', ''),
(188, 'dn_portal', 'fashion', 'gambar', '', '', '_', ''),
(10, 'datagereja', 'table_kk', 'alamt', '', '', '_', ''),
(11, 'datagereja', 'table_kk', 'peker', '', '', '_', ''),
(12, 'datagereja', 'table_kk', 'jumlh_ank', '', '', '_', ''),
(13, 'datagereja', 'table_pp', 'id_pm', '', '', '_', ''),
(14, 'datagereja', 'table_pp', 'nama', '', '', '_', ''),
(15, 'datagereja', 'table_pp', 'tmp_lhr', '', '', '_', ''),
(16, 'datagereja', 'table_pp', 'jk', '', '', '_', ''),
(17, 'datagereja', 'table_pp', 'alamt', '', '', '_', ''),
(18, 'datagereja', 'table_pp', 'pekerjaan', '', '', '_', ''),
(19, 'datagereja', 'table_pp', 'anak_dari', '', '', '_', ''),
(20, 'datagereja', 'table_pp', 'Sttus', '', '', '_', ''),
(187, 'dn_portal', 'fashion', 'isi', '', '', '_', ''),
(78, 'berita', 'berita1', 'keterangan', '', '', '_', ''),
(77, 'berita', 'berita1', 'gambar', '', '', '_', ''),
(76, 'berita', 'berita1', 'judul', '', '', '_', ''),
(75, 'berita', 'berita1', 'tanggal', '', '', '_', ''),
(74, 'berita', 'berita1', 'id', '', '', '_', ''),
(73, 'berita', 'admin', 'password', '', '', '_', ''),
(72, 'berita', 'admin', 'username', '', '', '_', ''),
(71, 'berita', 'admin', 'id', '', '', '_', ''),
(70, 'portal', 'tbl_berita', 'gambar', '', '', '_', ''),
(69, 'portal', 'tbl_berita', 'tanggal', '', '', '_', ''),
(68, 'portal', 'tbl_berita', 'isi', '', '', '_', ''),
(67, 'portal', 'tbl_berita', 'judul', '', '', '_', ''),
(66, 'portal', 'tbl_berita', 'id_berita', '', '', '_', ''),
(186, 'dn_portal', 'fashion', 'judul', '', '', '_', ''),
(185, 'dn_portal', 'fashion', 'tgl', '', '', '_', ''),
(184, 'dn_portal', 'fashion', 'id', '', '', '_', ''),
(183, 'dn_portal', 'olaraga', 'ket', '', '', '_', ''),
(182, 'dn_portal', 'olaraga', 'gambar', '', '', '_', ''),
(181, 'dn_portal', 'olaraga', 'isi', '', '', '_', ''),
(180, 'dn_portal', 'olaraga', 'judul', '', '', '_', ''),
(179, 'dn_portal', 'olaraga', 'tgl', '', '', '_', ''),
(178, 'dn_portal', 'olaraga', 'id', '', '', '_', ''),
(177, 'dn_portal', 'berita', 'ket', '', '', '_', ''),
(176, 'dn_portal', 'berita', 'gambar', '', '', '_', ''),
(144, 'culture', 'menu', 'id', '', '', '_', ''),
(145, 'culture', 'menu', 'name', '', '', '_', ''),
(146, 'culture', 'menu', 'link', '', '', '_', ''),
(147, 'culture', 'menu', 'icon', '', '', '_', ''),
(148, 'culture', 'menu', 'is_active', '', '', '_', ''),
(149, 'culture', 'menu', 'is_parent', '', '', '_', ''),
(150, 'culture', 'informssi', 'id', '', '', '_', ''),
(151, 'culture', 'informssi', 'Judul', '', '', '_', ''),
(152, 'culture', 'informssi', 'isi', '', '', '_', ''),
(153, 'culture', 'informssi', 'gambar', '', '', '_', ''),
(154, 'culture', 'informssi', 'tgl', '', '', '_', ''),
(155, 'culture', 'budaya', 'id', '', '', '_', ''),
(156, 'culture', 'budaya', 'judul', '', '', '_', ''),
(157, 'culture', 'budaya', 'isi', '', '', '_', ''),
(158, 'culture', 'budaya', 'gambar', '', '', '_', ''),
(159, 'culture', 'wisata', 'id', '', '', '_', ''),
(160, 'culture', 'wisata', 'judul', '', '', '_', ''),
(161, 'culture', 'wisata', 'isi', '', '', '_', ''),
(162, 'culture', 'wisata', 'gambar', '', '', '_', ''),
(175, 'dn_portal', 'berita', 'isi', '', '', '_', ''),
(168, 'dn_portal', 'admin', 'id', '', '', '_', ''),
(169, 'dn_portal', 'admin', 'username', '', '', '_', ''),
(170, 'dn_portal', 'admin', 'password', '', '', '_', ''),
(171, 'dn_portal', 'admin', 'time', '', '', '_', ''),
(172, 'dn_portal', 'berita', 'id', '', '', '_', ''),
(173, 'dn_portal', 'berita', 'tgl', '', '', '_', ''),
(174, 'dn_portal', 'berita', 'judul', '', '', '_', ''),
(143, 'demo', 'berita', 'tgl', '', '', '_', ''),
(142, 'demo', 'berita', 'gambar', '', '', '_', ''),
(141, 'demo', 'berita', 'isi', '', '', '_', ''),
(140, 'demo', 'berita', 'judul', '', '', '_', ''),
(139, 'demo', 'berita', 'id_berita', '', '', '_', ''),
(138, 'demo', 'kariawan', 'jenkel', '', '', '_', ''),
(137, 'demo', 'kariawan', 'alamat', '', '', '_', ''),
(136, 'demo', 'kariawan', 'nama', '', '', '_', ''),
(135, 'demo', 'kariawan', 'id_kariawan', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
`id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
`page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"dn_portal","table":"fashion"},{"db":"dn_portal","table":"olaraga"},{"db":"dn_portal","table":"berita"},{"db":"berita","table":"berita1"},{"db":"dn_portal","table":"admin"},{"db":"culture","table":"menu"},{"db":"db_spk_siswaberprestasi","table":"tbl_siswa"},{"db":"db_spk_siswaberprestasi","table":"tbl_periode_akademik"},{"db":"db_spk_siswaberprestasi","table":"tbl_nilai"},{"db":"db_spk_siswaberprestasi","table":"tbl_dtl_hasil_fuzzy"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
`id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-04-21 12:49:19', '{"collation_connection":"utf8mb4_general_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
 ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
 ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
 ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
 ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
 ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
 ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
 ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE IF NOT EXISTS `tbl_berita` (
`id_berita` int(10) NOT NULL,
  `judul` varchar(35) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `judul`, `isi`, `tanggal`, `gambar`) VALUES
(1, '', '', '01 Jun 2016 16:04', ''),
(2, 'hehe', 'hekekekl', '02 Jun 2016 13:59', 'gambar/binary-1414324_1920.jpg'),
(3, 'hhh', 'hh', '02 Jun 2016 14:01', 'gambar/brand.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
 ADD PRIMARY KEY (`id_berita`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `psb_mamasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `u` varchar(20) NOT NULL,
  `p` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`u`, `p`) VALUES
('admin', 'ADMIN'),
('admin', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE IF NOT EXISTS `master` (
`id_daftar` int(5) NOT NULL,
  `s_nama` varchar(150) NOT NULL,
  `s_jk` int(1) NOT NULL,
  `s_agama` int(1) NOT NULL,
  `s_tmp_lahir` varchar(100) NOT NULL,
  `s_tgl_lahir` date NOT NULL,
  `s_alamat` varchar(200) NOT NULL,
  `s_stat_anak` int(1) NOT NULL,
  `s_anak_ke` int(2) NOT NULL,
  `s_jum_sdr` int(2) NOT NULL,
  `k_nama_ay` varchar(100) NOT NULL,
  `k_pend_ay` int(1) NOT NULL,
  `k_pkj_ay` int(1) NOT NULL,
  `k_nama_ib` varchar(100) NOT NULL,
  `k_pend_ib` int(1) NOT NULL,
  `k_pkj_ib` int(1) NOT NULL,
  `thn_lulus` year(4) NOT NULL,
  `no_ijazah` varchar(25) NOT NULL,
  `sc_asal_skl` varchar(100) NOT NULL,
  `sc_status` int(11) NOT NULL,
  `sc_alamat` varchar(150) NOT NULL,
  `sc_kepsek` varchar(100) NOT NULL,
  `nil_1_bing` float NOT NULL,
  `nil_2_bind` float NOT NULL,
  `nil_3_mtk` float NOT NULL,
  `nil_4_ipa` float NOT NULL,
  `nil_pres1_nama` varchar(100) NOT NULL,
  `nil_pres1_tkt` int(1) NOT NULL,
  `nil_pres1` float NOT NULL,
  `nil_pres2_nama` varchar(100) NOT NULL,
  `nil_pres2_tkt` int(11) NOT NULL,
  `nil_pres2` float NOT NULL,
  `nil_pres3_nama` varchar(100) NOT NULL,
  `nil_pres3_tkt` int(1) NOT NULL,
  `nil_pres3` float NOT NULL,
  `nil_seleksi` float NOT NULL,
  `jrsn_pil1` int(2) NOT NULL,
  `jrsn_pil2` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `ip` varchar(50) NOT NULL,
  `u` varchar(20) NOT NULL,
  `p` varchar(20) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `s_hp` varchar(100) NOT NULL,
  `hobi` varchar(100) NOT NULL,
  `penghasilan` varchar(100) NOT NULL,
  `o_hp` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id_daftar`, `s_nama`, `s_jk`, `s_agama`, `s_tmp_lahir`, `s_tgl_lahir`, `s_alamat`, `s_stat_anak`, `s_anak_ke`, `s_jum_sdr`, `k_nama_ay`, `k_pend_ay`, `k_pkj_ay`, `k_nama_ib`, `k_pend_ib`, `k_pkj_ib`, `thn_lulus`, `no_ijazah`, `sc_asal_skl`, `sc_status`, `sc_alamat`, `sc_kepsek`, `nil_1_bing`, `nil_2_bind`, `nil_3_mtk`, `nil_4_ipa`, `nil_pres1_nama`, `nil_pres1_tkt`, `nil_pres1`, `nil_pres2_nama`, `nil_pres2_tkt`, `nil_pres2`, `nil_pres3_nama`, `nil_pres3_tkt`, `nil_pres3`, `nil_seleksi`, `jrsn_pil1`, `jrsn_pil2`, `status`, `tgl_daftar`, `ip`, `u`, `p`, `nisn`, `s_hp`, `hobi`, `penghasilan`, `o_hp`) VALUES
(1, 'EVAN APRIANJAAN', 1, 3, 'mamasa', '2006-04-12', 'mamasa', 1, 1, 4, 'deppa', 3, 1, 'roswato', 4, 10, 2013, '3728739283', 'smp negeri 1 mamasa', 1, 'mamasa', 'ibusskak', 50, 50, 50, 50, 'mama', 1, 1, 'ams', 2, 2, 'ams', 3, 3, 206, 0, 0, 0, '2016-06-05 21:47:37', '::1', '7387328', 'CcWyY', '7387328', '8928429048', 'memasak', '320020', '8324908402');

-- --------------------------------------------------------

--
-- Table structure for table `t_agama`
--

CREATE TABLE IF NOT EXISTS `t_agama` (
`id_agama` int(1) NOT NULL,
  `agama` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `t_agama`
--

INSERT INTO `t_agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen Katolik'),
(3, 'Kristen Protestan'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `t_jurusan`
--

CREATE TABLE IF NOT EXISTS `t_jurusan` (
`id_jur` int(2) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `t_jurusan`
--

INSERT INTO `t_jurusan` (`id_jur`, `jurusan`) VALUES
(2, 'Teknik Komputer dan Jaringan'),
(3, 'Teknik Elektronika Industri'),
(4, 'Akuntansi'),
(5, 'Teknik Kendaraan Ringan');

-- --------------------------------------------------------

--
-- Table structure for table `t_penddk`
--

CREATE TABLE IF NOT EXISTS `t_penddk` (
`id_penddk` int(2) NOT NULL,
  `penddk` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `t_penddk`
--

INSERT INTO `t_penddk` (`id_penddk`, `penddk`) VALUES
(1, 'Tidak Sekolah'),
(2, 'SD/MI'),
(3, 'SMP/MTs'),
(4, 'SMA/SMK/MAN'),
(5, 'Diploma'),
(6, 'Sarjana'),
(7, 'S-2'),
(9, 'S-3');

-- --------------------------------------------------------

--
-- Table structure for table `t_pkj`
--

CREATE TABLE IF NOT EXISTS `t_pkj` (
`id_pkj` int(2) NOT NULL,
  `pkj` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `t_pkj`
--

INSERT INTO `t_pkj` (`id_pkj`, `pkj`) VALUES
(1, 'Tani'),
(2, 'Karyawan Swasta'),
(3, 'Wiraswasta'),
(4, 'PNS'),
(5, 'TNI/Polri'),
(6, 'Perangkat Desa'),
(7, 'Buruh'),
(8, 'Nelayan'),
(10, 'IRT (Ibu Rumah Tangga)'),
(11, 'Lain-lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `t_prestasi`
--

CREATE TABLE IF NOT EXISTS `t_prestasi` (
`id_prestasi` int(1) NOT NULL,
  `prestasi` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t_prestasi`
--

INSERT INTO `t_prestasi` (`id_prestasi`, `prestasi`) VALUES
(1, 'Kabupaten'),
(2, 'Provinsi'),
(3, 'Nasional'),
(4, 'Internasional');

-- --------------------------------------------------------

--
-- Table structure for table `t_sekolah`
--

CREATE TABLE IF NOT EXISTS `t_sekolah` (
`id` int(1) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `kepsek` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `flag` int(1) NOT NULL,
  `beranda` longtext NOT NULL,
  `prosedur` longtext NOT NULL,
  `admin` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `t_sekolah`
--

INSERT INTO `t_sekolah` (`id`, `nama_sekolah`, `alamat`, `tahun_ajaran`, `kepsek`, `logo`, `flag`, `beranda`, `prosedur`, `admin`) VALUES
(1, 'MTs N Sidoharjo', 'Sumoroto, Sidoharjo, Samigaluh, Kulonprogo', '2015/2016', 'DRS. SUKARLAN', 'logo.jpg', 1, '<font size="4"><b>Selamat Datang di Penerimaan Siswa Baru MTs Negeri Sidoharjo Tahun Ajaran 2015/2016</b></font>															', 'Prosedur Penerimaan Siswa baru adalah sebagai berikut :<br>1. Mengisi formulir pendaftaran secara online.<br>2. Ijazah asli dan foto copy yang dilegalisir.<br>3. SKHUN asli dan foto copy yang dilegalisir.<br>4. Pas photo 3x4<br>', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `t_skolah`
--

CREATE TABLE IF NOT EXISTS `t_skolah` (
`id_skolah` int(3) NOT NULL,
  `skolah` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_skolah`
--

INSERT INTO `t_skolah` (`id_skolah`, `skolah`, `status`, `alamat`, `kepsek`) VALUES
(1, 'SDN Sumoroto', 1, 'Sumoroto, Sidoharjo, Samigaluh', 'Drs. Tulus'),
(2, 'smp negeri 1 mamasa', 1, 'mamasa', 'ibusskak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master`
--
ALTER TABLE `master`
 ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `t_agama`
--
ALTER TABLE `t_agama`
 ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
 ADD PRIMARY KEY (`id_jur`);

--
-- Indexes for table `t_penddk`
--
ALTER TABLE `t_penddk`
 ADD PRIMARY KEY (`id_penddk`);

--
-- Indexes for table `t_pkj`
--
ALTER TABLE `t_pkj`
 ADD PRIMARY KEY (`id_pkj`);

--
-- Indexes for table `t_prestasi`
--
ALTER TABLE `t_prestasi`
 ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `t_sekolah`
--
ALTER TABLE `t_sekolah`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_skolah`
--
ALTER TABLE `t_skolah`
 ADD PRIMARY KEY (`id_skolah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
MODIFY `id_daftar` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_agama`
--
ALTER TABLE `t_agama`
MODIFY `id_agama` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
MODIFY `id_jur` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_penddk`
--
ALTER TABLE `t_penddk`
MODIFY `id_penddk` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `t_pkj`
--
ALTER TABLE `t_pkj`
MODIFY `id_pkj` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `t_prestasi`
--
ALTER TABLE `t_prestasi`
MODIFY `id_prestasi` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_sekolah`
--
ALTER TABLE `t_sekolah`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_skolah`
--
ALTER TABLE `t_skolah`
MODIFY `id_skolah` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `ujian`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE IF NOT EXISTS `m_admin` (
`id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(2, 'guru1', '21232f297a57a5a743894a0e4a801fc3', 'guru', 1),
(3, 'guru2', '21232f297a57a5a743894a0e4a801fc3', 'guru', 2),
(4, 'guru4', '21232f297a57a5a743894a0e4a801fc3', 'guru', 4),
(5, 'guru5', '21232f297a57a5a743894a0e4a801fc3', 'guru', 5),
(6, 'siswa1', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 1),
(7, 'siswa2', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 2),
(8, 'siswa3', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 3),
(9, 'siswa4', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 4),
(10, 'siswa5', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 5),
(11, 'siswa6', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 6),
(12, 'siswa7', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 7);

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE IF NOT EXISTS `m_guru` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nama`) VALUES
(1, 'Dr. Susilo Bambang Yudhoyono'),
(2, 'Ir. Joko Widodo'),
(4, 'Dr. Abdulrahman Wahid'),
(5, 'Ir. Baharudin Jusuf Habibie');

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE IF NOT EXISTS `m_mapel` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Bahasa Inggris'),
(3, 'Matematika'),
(4, 'IPA');

-- --------------------------------------------------------

--
-- Table structure for table `m_siswa`
--

CREATE TABLE IF NOT EXISTS `m_siswa` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`) VALUES
(1, 'Agus Yudhoyono', '12090671', 'Teknik Informatika'),
(2, 'Edi Baskoro Yudhoyono', '12090672', 'Teknik Informatika'),
(3, 'Puan Maharani', '11090673', 'Sistem Informasi'),
(4, 'Kaesang Pangarep', '11090674', 'Sistem Informasi'),
(5, 'Anisa Pohan', '12090675', 'Teknik Informatika'),
(6, 'Gibran Rakabuming Raka', '11090676', 'Sistem Informasi'),
(7, 'Kahiyang Ayu', '12090677', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `m_soal`
--

CREATE TABLE IF NOT EXISTS `m_soal` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `bobot` int(2) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext NOT NULL,
  `opsi_b` longtext NOT NULL,
  `opsi_c` longtext NOT NULL,
  `opsi_d` longtext NOT NULL,
  `opsi_e` longtext NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `gambar`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`) VALUES
(1, 1, 1, 1, '', 'Indonesia menggunakan bahasa resmi bahasa .... ', 'Indonesia', 'Inggris', 'Prancis', 'Portugis', 'Melayu', 'A', '2015-08-27 18:20:22'),
(2, 1, 1, 1, '70thIndonesiaMerdeka.jpg', 'Gambar disamping adalah logo kemerdekaan Indonesia ke.. ', '67', '68', '69', '70', '71', 'D', '2015-08-27 18:21:02'),
(3, 1, 1, 1, '', 'Slogan peringatan HUT RI ke 70 adalah ...', 'Ayo makan.', 'Ayo minum', 'Ayo bermain', 'Ayo kerja', 'Ayo berbelanja', 'D', '2015-08-27 18:21:55'),
(4, 1, 1, 1, '', 'Bahasa Indonesia ditetapkan sebagai bahasa resmi pada tanggal ..', '20 Mei 1927', '28 Oktober 1928', '20 Mei 1928', '28 Mei 1920', '21 Juni 1917', 'B', '2015-08-27 18:23:13'),
(5, 1, 1, 1, '', 'Kalimat minimal terdiri dari pola ..', 'S-P-O', 'S-P-K', 'S-P-O-K', 'S-K', 'S-P', 'E', '2015-08-27 18:24:05'),
(6, 2, 2, 1, '', 'Table = .... (Indonesia)', 'Meja', 'Kursi', 'Lemari', 'Pintu', 'Jendela', 'A', '2015-08-27 18:24:44'),
(7, 2, 2, 1, '', 'Big = ... (indonesia)', 'Tinggi', 'Kurus', 'Panjang', 'Besar', 'Keras', 'D', '2015-08-27 18:25:22'),
(8, 2, 2, 1, '', 'Bola = .... (inggris)', 'ballon', 'ball', 'table', 'book', 'paper', 'B', '2015-08-27 18:25:57'),
(9, 2, 2, 1, '', 'I go to school by ...', 'road', 'field', 'shoes', 'drink', 'bus', 'E', '2015-08-27 18:26:48'),
(10, 2, 2, 1, '', 'Who is USA president now...', 'Ir. Jokowi', 'Angela Merkel', 'Barrack Obama', 'Tony Abbot', 'John F Kennedy', 'C', '2015-08-27 18:27:48'),
(11, 5, 3, 1, '', '2+3 = ...', '1', '2', '3', '4', '5', 'E', '2015-08-27 18:28:12'),
(12, 5, 3, 1, '', '1, 3, ..., ...., 9, 11', '4, 5', '4, 6', '5, 7', '6, 7', '1, 5', 'C', '2015-08-27 18:29:06'),
(13, 5, 3, 1, '', '(2 + 3) * 4 = ....', '20', '21', '22', '23', '24', 'A', '2015-08-27 18:29:34'),
(14, 5, 3, 1, '', '(90 / 10 ) - 5 = ...', '1', '2', '3', '4', '5', 'D', '2015-08-27 18:30:03'),
(15, 5, 3, 1, '', 'Akar dari 81 adalah ...', '7', '8', '9', '10', '11', 'C', '2015-08-27 18:30:27'),
(16, 4, 4, 1, '', 'Benda cair contohnya .. ?', 'es', 'batu', 'sirup', 'meja', 'udara', 'C', '2015-08-27 18:31:02'),
(17, 4, 4, 1, '', 'Perubahan bentuk dari cair menjadi padat disebut ...', 'menyublim', 'membeku', 'menguap', 'menghilang', 'magic', 'B', '2015-08-27 18:31:53'),
(18, 4, 4, 1, '', 'Uap air termasuk jenis benda ... ', 'gas', 'cair', 'padat', 'tidak nampak', 'panas', 'A', '2015-08-27 18:32:39'),
(19, 4, 4, 1, '', 'Yang menemukan hukum Newton adalah ...', 'George Washington', 'Georde Groban', 'George Bush', 'Issac Newton', 'Steven Gerrard', 'D', '2015-08-27 18:33:29'),
(20, 4, 4, 1, 'harga-kaca.jpg', 'Gambar di samping merupakan contoh benda ..', 'padat', 'cair', 'tak nampak', 'gas ', 'ghaib', 'A', '2015-08-27 18:34:18'),
(21, 1, 1, 1, 'images.jpg', 'Gambar di sampig adalah gambar ..', 'roti', 'batu bata', 'batu', 'kerupuk', 'nasi merah', 'B', '2015-08-27 18:46:11'),
(22, 4, 1, 1, '', 'soal', 'jawaban a', 'jawaban b', 'jawaban c', 'jawaban d', 'jawaban e', 'A', '2015-09-05 09:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 4),
(4, 5, 3),
(5, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_tes`
--

CREATE TABLE IF NOT EXISTS `tr_guru_tes` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`) VALUES
(1, 1, 1, 'UTS bahasa indonesia', 6, 1, 'acak', ''),
(2, 2, 2, 'UTS Bahasa Inggris', 5, 1, 'acak', ''),
(3, 1, 1, 'Ujian', 5, 1, 'acak', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ikut_ujian`
--

CREATE TABLE IF NOT EXISTS `tr_ikut_ujian` (
`id` int(6) NOT NULL,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` int(6) NOT NULL,
  `nilai_bobot` int(6) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(1, 3, 1, '4,3,5,22,1', '4:,3:,5:,22:,1:', 0, 0, 0, '2015-10-10 11:48:53', '2015-10-10 11:49:53', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tr_siswa_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_siswa_mapel` (
`id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tr_siswa_mapel`
--

INSERT INTO `tr_siswa_mapel` (`id`, `id_siswa`, `id_mapel`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 2),
(5, 3, 3),
(6, 4, 2),
(7, 4, 3),
(8, 5, 3),
(9, 5, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_siswa_mapel`
--
ALTER TABLE `tr_siswa_mapel`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tr_siswa_mapel`
--
ALTER TABLE `tr_siswa_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
 ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
