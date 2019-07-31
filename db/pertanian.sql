-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2019 at 04:43 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertanian`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `produk_id`, `qty`, `pesanan_id`) VALUES
(20, 5, 1, 26),
(21, 13, 2, 26),
(23, 13, 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `info_pembayaran`
--

CREATE TABLE `info_pembayaran` (
  `id` int(11) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_pembayaran`
--

INSERT INTO `info_pembayaran` (`id`, `info`) VALUES
(1, 'Transaksi pembayaran bisa di bayar DP 50% dulu sebelum hari H.\r\njika tidak maka transaksi akan di batalkan .\r\n\r\nPembayaran Transaksi Bisa Melalui Rekening Di Bawah Ini\r\nBCA =  atas nama Fatin Batrisyia\r\n\r\nkemudian konfirmasi pembayaran bisa di menu pembayaran.Terima Kasih.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`, `deskripsi`) VALUES
(6, 'Sayuran', ''),
(7, 'Bahan Dapur', ''),
(8, 'Buah-Buahan', ''),
(9, 'Bahan Pokok', '');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subjek`, `pesan`) VALUES
(22, '', 'aku@gmail.com', '', ''),
(24, '', 'fatin.batrisya@yahoo.com', '', ''),
(25, '', 'fatin.batrisya@yahoo.com', '', ''),
(26, '', 'fatin.batrisya@yahoo.com', '', ''),
(27, '', 'fatinimut@gmail.com', '', ''),
(28, 'fatinimut', 'fatinimut@gmail.com', 'Pembatalan', 'tolong batalin pesanan saya.'),
(29, 'fatinimut', 'fatinimut@gmail.com', 'kds', 'jhcsk'),
(30, '', 'fatin.batrisya@yahoo.com', '', ''),
(31, '', 'fatin.batrisya@yahoo.com', '', ''),
(32, '', 'ftnbat@gmail.com', '', ''),
(33, '', 'fatinimut@gmail.com', '', ''),
(34, '', 'fatinimut@gmail.com', '', ''),
(35, 'fatinimut', 'fatinimut@gmail.com', 'apaya', 'banyakin sayurnya dong'),
(36, '', 'fatin.batrisya@yahoo.com', '', ''),
(37, '', 'fatin.batrisya@yahoo.com', '', ''),
(38, '', 'fatinimut@gmail.com', '', ''),
(39, '', 'fatinimut@gmail.com', '', ''),
(40, '', 'fatinimut@gmail.com', '', ''),
(41, '', 'fatinimut@gmail.com', '', ''),
(42, '', 'fatinimut@gmail.com', '', ''),
(43, '', 'fatinimut@gmail.com', '', ''),
(44, '', 'fatinimut@gmail.com', '', ''),
(45, '', 'fatinimut@gmail.com', '', ''),
(46, '', 'fatinimut@gmail.com', '', ''),
(47, '', 'fatinimut@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`, `ongkir`) VALUES
(2, 'Medan', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_pengeluaran` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `Tanggal_pengeluaran` date NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_pengeluaran`, `nama_barang`, `Tanggal_pengeluaran`, `harga`, `jumlah`, `total`) VALUES
(44, 'Beras', '2019-07-25', '100000', 2, 200000),
(45, 'Sawi Hijau', '2019-07-25', '3000', 1, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','verified','','') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_pesanan`, `id_user`, `file`, `total`, `status`, `keterangan`, `created_at`) VALUES
(3, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad45.jpg', 200000, 'verified', 'Contoh Pembayaran', '0000-00-00 00:00:00'),
(4, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 200000, 'verified', 'Pembayaran Ke Dua', '2016-09-30 15:58:35'),
(5, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 107500, 'verified', 'Terakhir', '2016-09-30 16:10:33'),
(6, 18, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 300000, 'verified', 'Bukti Pembayaran', '2016-09-30 16:16:32'),
(7, 18, 4, '49eb6a44db57cba8d66b3404fa9f0ad44.jpg', 40000, 'verified', 'Pembayaran Terakhir', '2016-09-30 16:24:01'),
(8, 19, 4, '49eb6a44db57cba8d66b3404fa9f0ad4buttons.png', 520000, 'verified', 'Bukti Pembayaran', '2016-09-30 16:34:54'),
(9, 25, 6, '49eb6a44db57cba8d66b3404fa9f0ad4urmain.exe', 740000, 'verified', 'ngaceng', '2017-12-04 09:14:10'),
(10, 26, 3, '49eb6a44db57cba8d66b3404fa9f0ad4IMG_7045.JPG', 210000, 'verified', 'sudah lunas', '2019-07-25 01:28:45'),
(11, 26, 3, '49eb6a44db57cba8d66b3404fa9f0ad411.JPG', 210000, 'verified', 'LUNAS', '2019-07-25 01:31:29'),
(12, 27, 3, '49eb6a44db57cba8d66b3404fa9f0ad4XMDA5687.JPEG', 245, 'pending', 'lunas', '2019-07-30 18:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_digunakan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal_pesan`, `tanggal_digunakan`, `user_id`, `nama`, `alamat`, `kota`, `ongkir`, `telephone`, `read`, `status`) VALUES
(26, '2019-07-24 20:20:59', '2019-07-28 00:00:00', 3, 'fatinimut', 'medan', 'Medan', 5000, '08985432330', '1', 'lunas'),
(27, '2019-07-30 13:37:09', '2019-08-03 09:00:00', 3, 'fatinimut', 'medan', 'Medan', 5000, '08985432330', '1', 'belum lunas'),
(28, '2019-07-31 06:12:50', '2019-08-03 00:00:00', 3, 'fatinimut', 'medan', 'Medan', 5000, '08985432330', '0', 'belum lunas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `gambar`, `harga`, `kategori_produk_id`) VALUES
(4, 'Bayam / Ikat', 'Sayur bayam hasil dari petani Indonesia,sayur yang mengandung banyak manfaat,antara lain dapat menjaga kesehatan tubuh,mata,mencegah asma,anemia dan kanker.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4bayam.jpg', '3500', 6),
(5, 'Sawi Hijau / Kg', 'Sawi hasil dari petani Indonesia,memiliki manfaat antara lain sumber vitamin dan mineral,kaya antioksidan,membantu detoks tubuh dan mencegah kanker', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4sawi.jpg', '12000', 6),
(6, 'Kangkung / Ikat', 'sayur kangkung hasil pertanian Indonesia,memiliki banyak manfaat antara lain melawan kerusakan hati,menjega diabetes,mengatasi anemia dan antiradang.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4kangkung.jpg', '1500', 6),
(7, 'Bawang Merah / Kg', 'Bawang merah bermanfaat untuk menjega kanker,menurunkan tekanan darah,membantu diet,memperkuat sistem kekebalan tubuh dan mengandung vit C.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4merah.jpg', '50000', 7),
(8, 'Bawang Putih / Kg', 'Bawang Putih bermanfaat untuk menurunkan kolestrol,menyehatkan jantung,mengendalikan tekanan darah,mengatasi jerawat dan memperkuat tulang.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4putih.jpg', '40000', 7),
(9, 'Cabai Merah / Kg', 'Cabai memiliki manfaat untuk meningkatkan imunitas,menurunkan berat badan,mencegah diabetes,meredakan sakit kepala dan pegal.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4cabai.jpg', '90000', 7),
(10, 'Jambu Kristal / Kg', 'Manfaat Jambu Kristal yaitu menjaga kesehatan mata,mengobati sariawan,menjaga kesehatan tubuh dan mencegah virus dan infeksi.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4jambu.jpg', '15000', 8),
(11, 'Semangka / Kg', 'Manfaat semangka yaitu menyehatkan jantung dan tulang,mengontrol diabetes,mengobati gangguan ginjal dan mengatur tekanan darah.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4semangka.jpg', '10000', 8),
(12, 'Alpukat / Kg', 'Manfaat Alpukat yaitu untuk menurunkan kolestrol,mengatasi kanker,melindungi mata dan menurunkan stres.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4alpo.jpg', '15000', 8),
(13, 'Beras Putih / Kg', 'Manfaat Beras Putih yaitu mencegah pengumpalan darah,mencegah kanker,baik untuk tulang dan gigi,mengecilkan pori-pori.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4beras.jpg', '10000', 9),
(15, 'Singkong / Kg', 'Manfaat Singkong yaitu memiliki banyak karbohidrat,vitamin,protein dan mineral.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4sing.jpg', '6000', 9),
(16, 'Beras Merah / Kg', 'Manfaat beras merah bagi kesehatan yang pertama adalah untuk mengontrol penyakit diabetes pada penderita diabetes dan individu hiperglikemik.', '49eb6a44db57cba8d66b3404fa9f0ad449eb6a44db57cba8d66b3404fa9f0ad4bemer.jpg', '12000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telephone`, `alamat`, `password`, `status`) VALUES
(3, 'fatinimut', 'fatinimut@gmail.com', '08985432330', 'medan', '1ca52cd120891fea4e88915f578519c2', 'user'),
(6, 'aku', 'aku@gmail.com', '12345678', 'bromo', '1aef0a62ed84bb165989ab32f0ba56c2', 'user'),
(7, 'fatin', 'fatin.batrisya@yahoo.com', '1705114010', 'bromo', 'b85e855f8996a26c728ff1df739203f4', 'admin'),
(8, 'Fatin aja', 'ftnbat@gmail.com', '0324739538', 'beromo', '10587f00825d9570e49f0aa23e250cd0', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`,`produk_id`,`pesanan_id`),
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`,`kategori_produk_id`),
  ADD KEY `kategori_produk_id` (`kategori_produk_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pesanan_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
