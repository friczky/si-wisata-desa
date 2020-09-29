-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2020 at 08:39 AM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pasarloegood`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog`
--

CREATE TABLE `tb_blog` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `konten` text NOT NULL,
  `createat` varchar(200) DEFAULT NULL,
  `updateat` varchar(200) DEFAULT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_blog`
--

INSERT INTO `tb_blog` (`id`, `judul`, `kategori`, `foto`, `konten`, `createat`, `updateat`, `slug`) VALUES
(4, 'Harga makanan', 'Berita', 'night-4336403_19201.jpg', '<p>Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>\r\n', '2020-09-23 22:49:27', '2020-09-29 08:38:44', 'harga-makanan.html'),
(5, 'Kopi Panas Studio', 'Wisata', 'screenshot_3.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '2020-09-24 04:58:55', '2020-09-29 08:38:36', 'kopi-panas-studio.html'),
(6, 'JSG Property', 'Wisata', 'screenshot_4.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '2020-09-24 04:59:30', '2020-09-29 08:38:30', 'jsg-property.html'),
(7, 'Kopi Panas Studio', 'Berita', 'IMG_8158e.JPG', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '2020-09-27 01:26:40', '2020-09-28 04:45:50', 'kopi-panas-studio.html');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blogkategori`
--

CREATE TABLE `tb_blogkategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_blogkategori`
--

INSERT INTO `tb_blogkategori` (`id`, `nama`, `deskripsi`) VALUES
(3, 'Wisata', 'Kategori untuk tema wisata'),
(4, 'Berita', 'Kategori untuk informasi berita'),
(5, 'Harga', 'Kategori untuk harga'),
(6, 'Produk', 'Kategori untuk produk'),
(7, 'Spotfoto', 'Kategori untuk spotfoto');

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto`
--

CREATE TABLE `tb_foto` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_foto`
--

INSERT INTO `tb_foto` (`id`, `nama`, `deskripsi`, `file`) VALUES
(10, 'ss', 'ss', 'hands-600497_1920.jpg'),
(11, 'Wisata A', 'Ini adalah pemandangan Wisata A', 'camel-4948299_1920.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `nomer` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kontak`
--

INSERT INTO `tb_kontak` (`id`, `alamat`, `email`, `nomer`, `file`) VALUES
(1, 'Alamat', 'email', '+62896-7388-1528', 'open1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengurus`
--

CREATE TABLE `tb_pengurus` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kontak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengurus`
--

INSERT INTO `tb_pengurus` (`id`, `nama`, `jabatan`, `foto`, `kontak`) VALUES
(2, 'Fadilah Riczky', 'Ketua', 'PASFOTOSQUARE.jpg', '089673881528'),
(3, 'Muhammad Syahrul Nizam', 'Wakil Ketua', 'PASFOTOSQUARE1.jpg', '089977882211');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah`
--

CREATE TABLE `tb_sejarah` (
  `id` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `sejarah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sejarah`
--

INSERT INTO `tb_sejarah` (`id`, `foto`, `sejarah`) VALUES
(1, 'IMG-20191020-WA00451.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting`
--

CREATE TABLE `tb_setting` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tentang` varchar(200) NOT NULL,
  `peta` text NOT NULL,
  `favicon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_setting`
--

INSERT INTO `tb_setting` (`id`, `nama`, `tentang`, `peta`, `favicon`) VALUES
(1, 'PLG', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3954.6250025257605!2d110.4017133142082!3d-7.615719294508683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a611002bbedaf%3A0x8af8074e6ba18796!2sTEGAL%20LOEGOOD!5e0!3m2!1sen!2sid!4v1601211242624!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'IMG-20191020-WA0045.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id` int(11) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `subjudul` varchar(200) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id`, `foto`, `judul`, `subjudul`, `link`) VALUES
(1, 'books-1163695_1920.jpg', 'PASARLOEGOOD', 'Wisata Alam', 'https://pasarloegood.com'),
(2, 'old-1130731_1920.jpg', 'SPOT FOTO', 'Wisata Alam', 'https://pasarloegood.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sosmed`
--

CREATE TABLE `tb_sosmed` (
  `id` int(11) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sosmed`
--

INSERT INTO `tb_sosmed` (`id`, `facebook`, `instagram`, `youtube`, `email`) VALUES
(1, 'https://facebook.com', 'https://instagram.com', 'https://youtube.com', 'pasarloegood@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `email`, `password`, `role`, `foto`) VALUES
(1, 'Fadilah Riczky', 'friczky@gmail.com', 'e172dd95f4feb21412a692e73929961e', 'Staff', 'PASFOTOSQUARE.jpg'),
(4, 'admin', 'admin@admin.com', 'd41d8cd98f00b204e9800998ecf8427e', 'Administrator', 'flasklogo1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_video`
--

CREATE TABLE `tb_video` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_video`
--

INSERT INTO `tb_video` (`id`, `nama`, `deskripsi`, `file`) VALUES
(3, 'Startera', 'sasqaaaa', 'vokoscreen-2020-09-25_23-01-06.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_blog`
--
ALTER TABLE `tb_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_blogkategori`
--
ALTER TABLE `tb_blogkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sejarah`
--
ALTER TABLE `tb_sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_video`
--
ALTER TABLE `tb_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_blog`
--
ALTER TABLE `tb_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_blogkategori`
--
ALTER TABLE `tb_blogkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_foto`
--
ALTER TABLE `tb_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_video`
--
ALTER TABLE `tb_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
