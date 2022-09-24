-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2022 at 04:34 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_sim`
--

-- --------------------------------------------------------

--
-- Table structure for table `id_akses`
--

CREATE TABLE `id_akses` (
  `id_akses` int(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_akses`
--

INSERT INTO `id_akses` (`id_akses`, `level`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(100) NOT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `pusat` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `keterangan` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `kota`, `kabupaten`, `pusat`, `gambar`, `keterangan`) VALUES
(1, 'Bangkalan', 'Kabupaten Bangkalan', 'Bangkalan', 'bangkalan.jpeg', 'Bangkalan adalah sebuah kabupaten di Pulau Madura, Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Bangkalan. Kabupaten ini terletak di ujung paling barat Pulau Madura, berbatasan dengan Laut Jawa di utara, Kabupaten Sampang di timur serta Selat Madura di selatan dan barat.'),
(2, 'Banyuwangi', 'Kabupaten Banyuwangi', 'Banyuwangi', 'banyuwangi.jpeg', 'Banyuwangi adalah sebuah  kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Kota Banyuwangi. Kabupaten ini terletak di ujung paling timur pulau Jawa, di kawasan Tapal Kuda, dan berbatasan dengan Kabupaten Situbondo di utara, Selat Bali di timur, Samudra Hindia di selatan serta Kabupaten Jember dan Kabupaten Bondowoso di barat.'),
(3, 'Blitar', 'Kabupaten Blitar', 'Blitar', 'blitar.jpeg', 'Blitar adalah salah satu kabupaten di Provinsi Jawa Timur, Indonesia. Pusat pemerintahan kabupaten ini berada di Kanigoro setelah sebelumnya satu wilayah dengan Kota Blitar.'),
(4, 'Bojonegoro', 'Kabupaten Bojonegoro', 'Bojonegoro', 'bojonegoro.jpeg', 'Bojonegoro adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Bojonegoro. Kabupaten ini berbatasan dengan Kabupaten Tuban di utara, Kabupaten Lamongan di timur, Kabupaten Nganjuk, Kabupaten Madiun, dan Kabupaten Ngawi di selatan, serta Kabupaten Blora (Jawa Tengah) di barat. Bagian barat Bojonegoro (perbatasan dengan Jawa Tengah) merupakan bagian dari Blok Cepu.'),
(5, 'Bondowoso', 'Kabupaten Bondowoso', 'Bondowoso', 'bondowoso.jpeg', 'Bondowoso, adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Bondowoso. Ibu kota kabupaten Bondowoso berada di persimpangan jalur dari Besuki dan Situbondo menuju Jember. Kabupaten Bondowoso merupakan satu-satunya kabupaten yang tidak memiliki wilayah laut (terkurung daratan) di wilayah Tapal Kuda, Jawa Timur.'),
(6, 'Gresik', 'Kabupaten Gresik', 'Gresik', 'gresik.jpeg', 'Gresik adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Gresik. Kabupaten Gresik berbatasan dengan Kota Surabaya dan Selat Madura di sebelah timur, Kabupaten Lamongan di sebelah barat, Laut Jawa di sebelah utara, serta Kabupaten Sidoarjo dan Mojokerto di sebelah selatan. Gresik dikenal sebagai kota tempat berdirinya pabrik semen pertama dan perusahaan semen terbesar di Indonesia, yaitu Semen Gresik.'),
(7, 'Jember', 'Kabupaten Jember', 'Jember', 'jember.jpeg', 'Jember adalah kabupaten di Provinsi Jawa Timur, Indonesia yang beribukota di Jember. Kabupaten ini berbatasan dengan Kabupaten Probolinggo dan Kabupaten Bondowoso di utara, Kabupaten Banyuwangi di timur, Samudera Hindia di selatan, dan Kabupaten Lumajang di barat. Kabupaten Jember terdiri dari 31 kecamatan. Kabupaten Jember terletak di wilayah Tapal Kuda, Jawa Timur.'),
(8, 'Jombang', 'Kabupaten Jombang', 'Jombang', 'jombang.jpeg', 'Jombang adalah sebuah kabupaten yang terletak di bagian tengah Provinsi  Jawa Timur. Pusat pemerintahan Kabupaten Jombang terletak di tengah-tengah wilayah kabupaten,  ibu kota Provinsi Jawa Timur. Kabupaten Jombang memiliki posisi yang sangat strategis, karena berada di persimpangan jalur lintas utara, dan selatan Pulau Jawa.'),
(9, 'Kediri', 'Kabupaten Kediri', 'Kediri', 'kediri.jpeg', 'Kediri adalah kabupaten di Provinsi Jawa Timur, Indonesia. Pusat pemerintahan berada di Kediri meskipun pemindahan pusat pemerintahan ke Pare telah lama direncanakan dan bahkan sekarang dibatalkan. Akhirnya pada saat ini ibu kota Kabupaten Kediri secara de jure berada di Kecamatan Ngasem. Kabupaten ini berbatasan dengan Kabupaten Jombang di utara, Kabupaten Malang di timur, Kabupaten Blitar dan Kabupaten Tulungagung di selatan, serta Kabupaten Nganjuk di barat dan utara.'),
(10, 'Lamongan', 'Kabupaten Lamongan', 'Lamongan', 'lamongan.jpeg', 'Lamongan adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Lamongan. Kabupaten ini berbatasan dengan Laut Jawa di utara, Kabupaten Gresik di timur, Kabupaten Mojokerto dan Kabupaten Jombang di selatan, serta Kabupaten Bojonegoro dan Kabupaten Tuban di barat. Pusat pemerintahan Kabupaten Lamongan terletak 50 km sebelah barat Kota Surabaya, ibu kota Provinsi Jawa Timur. Kabupaten Lamongan merupakan salah satu wilayah yang masuk dalam kawasan metropolitan Surabaya, yaitu Gerbangkertosusila.'),
(11, 'Lumajang', 'Kabupaten Lumajang', 'Lumajang', 'lumajang.jpeg', 'Lumajang, adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Lumajang. Kabupaten ini berbatasan dengan Kabupaten Probolinggo di utara, Kabupaten Jember di timur, Samudra Hindia di selatan, serta Kabupaten Malang di barat. Kabupaten Lumajang terletak di wilayah Tapal Kuda, Jawa Timur.'),
(12, 'Madiun', 'Kabupaten Madiun', 'Madiun', 'madiun.jpeg', 'Madiun adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Kabupaten ini berbatasan dengan Kabupaten Bojonegoro di utara, Kabupaten Nganjuk di timur, Kabupaten Ponorogo di selatan, serta Kabupaten Magetan, dan Kabupaten Ngawi di barat. Ibukotanya adalah Kecamatan Mejayan sesuai dengan Peraturan Pemerintah No.52 Tahun 2010. Sebagian gedung-gedung pemerintahan sudah berada di wilayah Caruban yang merupakan bagian dari Kecamatan Mejayan.'),
(13, 'Magetan', 'Kabupaten Magetan', 'Magetan', 'magetan.jpeg', 'Magetan adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Magetan. Kabupaten ini berbatasan dengan Kabupaten Ngawi di utara, Kota Madiun dan Kabupaten Madiun di timur, Kabupaten Ponorogo, serta Kabupaten Karanganyar dan Kabupaten Wonogiri (keduanya termasuk provinsi Jawa Tengah).'),
(14, 'Malang', 'Kabupaten Malang', 'Malang', 'malang.jpeg', 'Malang adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Kabupaten Malang adalah kabupaten terluas kedua di Jawa Timur setelah Kabupaten Banyuwangi dan merupakan kabupaten dengan populasi terbesar di Jawa Timur. Kabupaten Malang juga merupakan kabupaten terluas ketiga di Pulau Jawa setelah Kabupaten Banyuwangi dan Kabupaten Sukabumi di Provinsi Jawa Barat. Ibu kota Kabupaten Malang adalah Kepanjen.'),
(15, 'Mojokerto', 'Kabupaten Mojokerto', 'Mojokerto', 'mojokerto.jpeg', 'Mojokerto adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Kabupaten yang secara resmi didirikan pada tanggal 9 Mei 1293 ini merupakan wilayah tertua ke-10 di Provinsi Jawa Timur. Kabupaten ini berbatasan dengan Kabupaten Lamongan di utara, Kabupaten Gresik; Kabupaten Sidoarjo; dan Kabupaten Pasuruan di timur, Kabupaten Malang dan Kota Batu di selatan, serta Kabupaten Jombang di barat.'),
(16, 'Nganjuk', 'Kabupaten Nganjuk', 'Nganjuk', 'nganjuk.jpeg', 'Nganjuk adalah sebuah kabupaten di Provinsi Jawa Timur. Kabupaten ini berbatasan dengan Kabupaten Bojonegoro di utara, Kabupaten Jombang di timur, Kabupaten Kediri dan Kabupaten Ponorogo di selatan, serta Kabupaten Madiun di barat. Pada zaman Kerajaan Medang, Nganjuk dikenal dengan nama Anjuk Ladang yaitu Tanah kemenangan. Nganjuk juga dikenal dengan julukan Kota Angin.'),
(17, 'Ngawi', 'Kabupaten Ngawi', 'Ngawi', 'ngawi.jpeg', 'Ngawi adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Kecamatan Ngawi. Kabupaten ini terletak di bagian barat Provinsi Jawa Timur yang berbatasan langsung dengan Provinsi Jawa Tengah. Kabupaten ini berbatasan dengan Kabupaten Grobogan, Kabupaten Blora (keduanya termasuk wilayah Provinsi Jawa Tengah), dan Kabupaten Bojonegoro di utara, Kabupaten Madiun di timur, Kabupaten Magetan dan Kabupaten Madiun di selatan, serta Kabupaten Sragen (Jawa Tengah) di barat.'),
(18, 'Pacitan', 'Kabupaten Pacitan', 'Pacitan', 'pacitan.jpeg', 'Pacitan adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Pacitan. Kabupaten Pacitan terletak di ujung barat daya Provinsi Jawa Timur. Wilayahnya berbatasan dengan Kabupaten Ponorogo di utara, Kabupaten Trenggalek di timur, Samudra Hindia di selatan, serta Kabupaten Wonogiri (Jawa Tengah) di barat. Sebagian besar wilayahnya berupa pegunungan kapur.'),
(19, 'Pamekasan', 'Kabupaten Pamekasan', 'Pamekasan', 'pamekasan.jpeg', 'Pamekasan adalah sebuah kabupaten di Pulau Madura, Provinsi Jawa Timur, Indonesia. Ibukotanya adalah Pamekasan. Kabupaten ini berbatasan dengan Laut Jawa di utara, Selat Madura di selatan, Kabupaten Sampang di barat, dan Kabupaten Sumenep di timur.  Kabupaten Pamekasan terdiri atas 13 kecamatan, yang dibagi lagi atas 178 desa dan 11 kelurahan. Pusat pemerintahannya ada di Kecamatan Pamekasan.'),
(20, 'Pasuruan', 'Kabupaten Pasuruan', 'Pasuruan', 'pasuruan.jpeg', 'Pasuruan adalah kabupaten di Provinsi Jawa Timur, Indonesia. Pusat pemerintah berlokasi di Bangil, Pasuruan. Kabupaten ini berbatasan dengan Kabupaten Sidoarjo dan Laut Jawa di utara, Kabupaten Probolinggo di Timur, Kabupaten Malang di selatan, Kota Batu di barat daya, serta Kabupaten Mojokerto di barat. Kabupaten ini dikenal sebagai daerah perindustrian, pertanian, dan tujuan wisata. Kompleks pegunungan Tengger dengan Gunung Bromo merupakan atraksi wisata utama di Kabupaten Pasuruan. Wilayah timur Kabupaten Pasuruan termasuk ke dalam wilayah Tapal Kuda, Jawa Timur. Wilayah yang terluas di Kabupaten Pasuruan adalah Kecamatan Lumbang.'),
(21, 'Ponorogo', 'Kabupaten Ponorogo', 'Ponorogo', 'ponorogo.jpeg', 'Ponorogo adalah sebuah kabupaten di provinsi Jawa Timur, Indonesia.  Kabupaten ini terletak di sebelah barat dari provinsi Jawa Timur dan berbatasan langsung dengan provinsi Jawa Tengah atau lebih tepatnya 220 km arah barat daya dari ibu kota provinsi Jawa Timur,  '),
(22, 'Probolinggo', 'Kabupaten Probolinggo', 'Probolinggo', 'probolinggo.jpeg', 'Probolinggo adalah salah satu kabupaten di Provinsi Jawa Timur, Indonesia dengan ibu kota dan pusat pemerintahan kabupaten berada di Kraksaan. Kabupaten Probolinggo merupakan salah satu kabupaten yang terletak di wilayah Tapal Kuda, Jawa Timur. Kabupaten ini dikelilingi oleh pegunungan Tengger, Gunung Semeru, dan Gunung Argopuro.'),
(23, 'Sampang', 'Kabupaten Sampang', 'Sampang', 'sampang.jpeg', 'Sampang adalah sebuah kabupaten yang ada di sebelah utara bagian timur dari pulau Jawa tepatnya di Pulau Madura, Provinsi Jawa Timur, Indonesia. Ibukotanya adalah Sampang.'),
(24, 'Sidoarjo', 'Kabupaten Sidoarjo', 'Sidoarjo', 'sidoarjo.jpeg', 'Sidoarjo adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Sidoarjo. Kabupaten ini berbatasan dengan Kota Surabaya dan Kabupaten Gresik di utara, Selat Madura di timur, Kabupaten Pasuruan di selatan, serta Kabupaten Mojokerto di barat. Bersama dengan Gresik, Sidoarjo merupakan salah satu penyangga utama Kota Surabaya, dan termasuk dalam kawasan Gerbangkertosusila.'),
(25, 'Situbondo', 'Kabupaten Situbondo', 'Situbondo', 'situbondo.jpeg', 'Situbondo adalah sebuah kabupaten di Jawa Timur, Indonesia dengan pusat pemerintahan dan ibu kota kabupaten terletak di Kecamatan Situbondo. Kabupaten ini terletak di daerah pesisir utara pulau Jawa, di kawasan Tapal Kuda dan dikelilingi oleh perkebunan tebu, tembakau, hutan lindung Baluran dan lokasi usaha perikanan. Dengan letaknya yang strategis, di tengah jalur transportasi darat Jawa-Bali, kegiatan perekonomiannya tampak aktif. Situbondo mempunyai pelabuhan Panarukan yang terkenal sebagai ujung timur dari Jalan Raya Pos Anyer-Panarukan di pulau Jawa yang dibangun oleh Daendels pada era kolonial Belanda.'),
(26, 'Sumenep', 'Kabupaten Sumenep', 'Sumenep', 'sumenep.jpeg', 'Sumenep adalah sebuah kabupaten di provinsi Jawa Timur, Indonesia. Ibu kotanya ialah Kota Sumenep. Sumenep terletak di ujung timur Pulau Madura, provinsi Jawa Timur. Sebelum tergabung dalam wilayah Negara Kesatuan Republik Indonesia, Sumenep diperintah oleh Adipati ( Rato atau Raja dalam konteks masyarakat lokal Madura ) di bawah pengaruh kerajaan-kerajaan besar yang pernah berdiri di Pulau Jawa.'),
(27, 'Trenggalek', 'Kabupaten Trenggalek', 'Trenggalek', 'trenggalek.jpeg', 'Trenggalek adalah sebuah kabupaten di Provinsi Jawa Timur, Indonesia. Letaknya di pesisir pantai selatan dan mempunyai batas wilayah sebelah utara dengan Kabupaten Ponorogo; sebelah timur dengan Kabupaten Tulungagung; sebelah selatan dengan Samudera Hindia ; dan sebelah barat dengan Kabupaten Pacitan.'),
(29, 'Tulungagung', 'Kabupaten Tulungagung', 'Tulungagung', 'tulungagung.jpeg', 'Tulungagung adalah salah satu kabupaten yang terletak di Provinsi Jawa Timur, Indonesia. Pusat pemerintahan Kabupaten Tulungagung berada di Kecamatan Tulungagung. Tulungagung terkenal sebagai satu dari beberapa daerah penghasil marmer terbesar di Indonesia, dan terletak terletak 154 km barat daya Kota Surabaya, ibu kota Provinsi Jawa Timur.'),
(30, 'jkvdbhjs', 'mbwdfm', 'msdbf', '01.jpg', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_makanan`
--

CREATE TABLE `jenis_makanan` (
  `id` int(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `makanan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_makanan`
--

INSERT INTO `jenis_makanan` (`id`, `kota`, `makanan`, `gambar`, `keterangan`) VALUES
(2, 'Bangkalan', 'Sate Madura', 'satebangkalan.jpeg', 'Sate ini biasanya terbuat dari sapi. Bumbunya adalah campuran kacang yang ditumbuk halus petis dan sedikit bawang merah. Sate bumbu sendiri, sepintas tidak jauh berbeda dengan sate-sate lain yang biasanya ada di daerah lain. Sate ayam dan yang lain langsung dipanggang atau hanya dibumbuin kecap untuk sate bumbu. Sebelum dibakar, daging sapi dilumuri atau diolesi oleh bumbu yang terbuat dari rempah dan palawija khusus.'),
(3, 'Bangkalan', 'Soto Madura', 'sotobangkalan.jpeg', 'Ada banyak ragam soto madura. Setiap daerah punya keunikan sendiri. Nah, berhubung almarhum dari Bangkalan, di sini aku tampilkan yang biasa kusantap. Selain menggunakan daging sapi dalam olahannya, kadang kala soto Bangkalan juga memakain daging ayam atau jeroan sapi untuk isiannya. Ini lho istimewanya. Jeroan! Hahahahaâ€¦ Disajikan dengan taburan kentang goreng, soto Bangkalan ini di siram dengan kuah yang terdiri dari dua jenis, kuah bening dan kuah kuning. Kamu bisa memilih sesuai selera, atau bisa mencoba dua-duanya.'),
(5, 'Bangkalan', 'Kaldu Kokot', 'kadulbangkalan.jpeg', 'Makanan khas ini merupakan makanan sejenis sop dengan bahan utama kacang hijau yang di masak dengan direbus di tambahkan berbagai macam bumbu rempah-rempah khas jawa seperti bawang merah, bawang putih, jahe, pala, dan daun bawang. Makanan ini kuahnya agak kental dengan tambahan potongan kikil kaki sapi, yang suka tulang juga ada yang menyajikannya dengan tulang kaki sapi, kemudian ditambah dengan bumbu dari ulegan kacang dan petis.'),
(7, 'Banyuwangi', 'Sego Tempong ', 'tempongbanyuwangi.jpeg', 'Buat pecinta pedas wajib cicip Sego Tempong. Nasi putih panas, di nikmati dengan sayur-sayuran rebus plus sambel mentah yang dikenal dengan nama sambal tempong yang artinya menampar.  Untuk lauknya tinggal pilih mulai dari gimbal jagung, ikan asin, pepes ikan laut, ayam goreng, telur dadar tinggal pilih. Rasa segar dan pedasnya Sego Tempong Banyuwangi in tetap makan lagi dan lagi. '),
(8, 'Banyuwangi', 'Sego Cawuk', 'cawukbanyuwangi.jpeg', 'Sego cawuk wajib kamu coba ketika berada di Banyuwangi. Masakan ini merupakan perpaduan antara nasi, kuah, dan juga parutan kelapa. Disajikan dengan tambahan lauk berupa dendeng, telur, pepes ikan, dan lauk lainnya. Satu porsi sego cawuk bisa kamu dapatkan dengan harga 6 ribu rupiah saja.'),
(10, 'Banyuwangi', 'Uyah Asem Pitik', 'uyahbanyuwangi.jpeg', 'Kuliner khas Banyuwangi yang satu ini memiliki cita rasa khas segar dan asam seperti namanya. Terbuat dari olahan ayam kampung yang dicampur dengan bongkot kecombrang. Makanan khas Banyuwangi dan cara pembuatannya cukup mudah. Pertama tumis bumbu bumbu yang dibutuhkan hingga harum kemudian rebus ayam di air dan masukkan bumbu tersebut sampai tekstur ayam menjadi empuk. Terakhir masukkan kacang panjang, belimbing wuluh, dan bongkot lucu yang sudah diiris kecil. Didihkan dan tunggu matang. Masakan siap disajikan.'),
(11, 'Blitar', 'Nasi Ampok', 'ampokblitar.jpeg', 'Nasi Ampok adalah nasi jagung khas Blitar. Nasi ampok merupakan makanan pokok pengganti nasi yang terbuat dari jagung. Kamu bisa menjumpai kuliner ini di sekitar alun-alun Blitar, hanya dengan merogoh kocek 4.000 rupiah kamu bisa mendapatkan kelezatan dan kandungan manfaat dari nasi ampok.  Untuk menambah cita rasa, nasi ampok akan lebih nikmat jika disajikan dengan sambal tomat, sayur rebus, serta ditambah dengan ikan asin. Nah kalo udah lengkap begitu, mulut kamu enggak bakal bisa diam, rasanya ingin ngunyah terus. Pokokâ€™e Muanteeep rek.'),
(12, 'Blitar', 'Sego Pecel', 'pecel_blitar.jpeg', 'Nasi Pecel ini mungkin sudah menjadi kuliner khas di beberapa daerah. Namun, ada perbedaan sedikit dengan nasi pecel yang merupakan kuliner khas Blitar ini. Nasi pecel khas Blitar memiliki perbedaan pada rasanya yang tidak terlalu manis dan kacangnya tidak dihaluskan dengan lembut.  Bahan-bahan yang digunakan untuk membuat sambal pecelnya masih seperti pada umumnya, yaitu kacang tanah sangrai, kencur, cabai rawit, daun jeruk purut, bawang putih, gula merah, garam, dan asam jawa.'),
(13, 'Blitar', 'Ikan Uceng', 'uceng_blitar.jpeg', 'Ikan Uceng adalah bahan makanan khas di Blitar. Ikan Uceng dapat disajikan dalam beberapa menu seperti Sayur Uceng, Bothok Uceng dan Uceng Goreng. Kamu juga bisa memakannya dengan nasi hangat ditemani dengan sambal. Rasanya yang gurih pastinya membuat kamu ketagihan dan ketagihan lagi.'),
(14, 'Bojonegoro', 'Ledre Bojonegoro', 'ledre_bojonegoro.jpeg', 'makanan khas Bojonegoro Jawa Timur yang sangat populer dan terkenal hampir dikalangan para pecinta kuliner.  Ledre terbuat dari bahan yang sangat sederhana, yaitu campuran tepung terigu, tepung beras dan juga gula. Sedangkan bahan utama untuk membuat ledre ini berasal dari pisang, khususnya pisang raja yang juga menjadi sumber aroma khas dari makanan bernama ledre ini. '),
(15, 'Bojonegoro', 'Putu', 'putu_bojonegoro.jpeg', 'Tidak kalah populer dari jajanan lainnya, Putu ini sangat enak di makan saat masih hangat â€“ hangatnya. bahan dasar pembuatan jajanan Putu ini yaitu terbuat dari tepung beras buturan kasar, gula jawa dan parutan kelapa. Cara pembuatan Puti ini yaitu dengan di masukkan ke dalam potongan bambu lalu di masak menggunakan uap panas. Putu Khas Bojonegoro ini memiliki citarasa yang sangat enak, manis yang berasal dari gula merah, gurih dari parutan kelapa dan bertekstur lembut saat di makan.'),
(16, 'Bojonegoro', 'Klepon', 'klepon_bojonegoro.jpeg', ' Klepon ini hampir sama dengan bahan untuk membuat Putu, cuma proses masaknya saja yang berbeda. jajanan klepon ini memiliki rasa manis dan gurih dengan tekstur yang kenyal saat memaknya. yang sangat enak saat memakan klepon ini yaitu ketika gula merah yang mejadi isi an klepon ini pecah dimulut sehingga muncul rasa manis gula merah yang manis dan nikmat.'),
(17, 'Gresik', 'Sego Krawu', 'krawu_gresik.jpeg', 'Nasi Krawu adalah makanan khas Gresik yang menjadi andalan dan disukai banyak kalangan sampai saat ini. Maksud saya, benar-benar sangat dinikmati penikmat makanan khas Gresik.  Apa yang menjadi pembeda dari sego-sego atau nasi-nasi yang lainnya adalah kepulenan, yang setelah itu disajikan dengan daun pisang. Beuh.  Lauk yang disertakan ke dalam Nasi Krawu biasanya berupa semur daging, sisitan daging sapi, sampal terasi, jeroan sapi, dan serungan.'),
(18, 'Gresik', 'Otak - Otak Bandeng', 'bandeng_gresik.jpeg', 'Otak-otang Bandeng adalah makanan khas Gresik yang terbuat dari Ikan Bandeng yang sebelumnya sudah dipisahkan daging dan kulitnya untuk kemudian dihaluskan. Setelah halus, daging bandeng diberi bumbu-bumbu khas Gresik yang rahasia. Lalu setelah daging diberi bumbu-bumbu, dimasukkan lagi ke dalam badan ikan. Dikukus sampai matang.'),
(19, 'Gresik', 'Sego Karak', 'karak_gresik.jpeg', 'Sego Karak / Nasi Karak ini dulunya dibuat dengan nasi sisa-sisa. Tetapi sekarang ini tidak. Sego Karak sudah dibuat dengan nasi yang masak dan baru.  Nasi tersebut kemudian dikeringkan lalu dimasak kembali bareng dengan ketan hitam. Rasa Sego Karak ini sangat nikmat dan khas; enak disajikan dengan lauk-lauk lain seperti rempeyek, tempe goreng, kerupuk, dll.'),
(20, 'Jember', 'Pecel Gudeg', 'pecel_jember.jpeg', 'Makanan khas Jember Jawa Timur ini cukup unik karena merupakan kolaborasi antara nasi pecel dengan gudeg, cecek, potongan daging, rempeyek, kacang panjang, dan sambal pecel yang khas. Gudeg yang merupakan makanan khas Yogyakarta berpadu dengan pecel yang menjadi makanan khas wilayah Jawatimuran. Satu porsi pecel gudeg disajikan bersama dengan lauk yang dapat kamu pilih sendiri sesuai dengan selera'),
(21, 'Jember', 'Prol Tape', 'tape_jember.jpeg', 'Makanan khas Jember bernama prol tape adalah kudapan yang dibuat dari tape yang diinovasikan oleh masyarakat Jember. Saat ini, prol tape terdiri dari rasa coklat, kismis, keju, dan original. Prol tape pas disajikan saat kamu sedang berkumpul dengan keluarga. Bahan yang digunakan dalam membuat prol tape diantaranya tepung terigu, tape singkong, susu, margarin, dan juga telur. Rasa khas prol tape adalah perpaduan antara manis, kecut, dan gurih.'),
(22, 'Jember', 'Suwar - Suwir', 'suwir_jember.jpeg', 'Suwar suwir ini terbuat dari tape yang diolah dengan cara tertentu sehingga menghasilkan makanan seperti dodol namun lebih keras. Suwar suwir ini berbahan dasar tape singkong dan gula. Legit, demikian rasa yang terkandung dalam panganan itu. Awalnya suwar-suwir ini dibuat dengan campuran buah sirsak. akan tetapi di era modern ini, telah dibuat berbagai macam rasa,seperti coklat, kacang, susu dan strawberry.'),
(23, 'Jombang', 'Ketan Merdeka', 'ketan_jombang.jpeg', 'Ketan merdeka ini memiliki warna yang banyak sekali jenisnya. Ada ketan hitam, ketan putih dan masih banyak lainnya. Sehingga apabila Anda berkunjung ke Jombang dan saat pagi hari ingin mendapatkan asupan karbohidrat yang sehat bisa menyantap ketan ini. Bukan dari pagi dan jam tujuh pagi sudah habis.'),
(24, 'Jombang', 'Tahu Pong Gloria', 'tahu_jombang.jpeg', 'Tahu pong ini menjadi makanan khas Jombang yang bisa menjadi oleh-oleh untuk orang tercinta. Untuk mengkonsumsinya bisa ditambahkan dengan saus cabe atau cabe mentah dan juga teh hangat. Rasa dari tahu ini enak, gurih dan juga memiliki tekstur yang renyah. Sehingga Anda bisa mengkonsumsinya saat hangat. Dengan demikian akan membantu dalam membangkitkan selera makan yang dimiliki.'),
(25, 'Jombang', 'Sego Kikil', 'kikil_jombang.jpeg', 'Kikil sendiri adalah kakinya sapi atau kerbau. kikil ini merupakan baan dasar makanan khas kiki jombang ini, Kikil dimasak dengan suhu tinggi dan dengan waktu yang lumayan lama, ditambah dengan bumbu-bumbu khas, dikasih santan dan bahan-bahan pendukung. Jadilah makanan khas kikil Jombang. Kikil ini akan terasa lebih enak jika dimakan pakai nasi. Untuk tambahan nasi kikil ditambah dengan kering tempe atau tahu, diberi sayur bung/bambu yang masi muda dan empal daging atau jeroan sapi yang dimasak bacem.'),
(26, 'Kediri', 'Sate Bekicot', 'bekicot_kediri.jpeg', ' kamu bisa juga menemukan makanan olahan bekicot lainnya, seperti oseng-oseng, keripik, dan krengsengan bekicot. Sate bekicot di luaran sana dijual dengan harga tinggi. Sedangkan di Indonesia, tepatnya Kediri, sate bekicot bisa diperoleh hanya dengan merogoh kocek mulai dari Rp15.000 per bungkus yang satu bungkusnya bisa berisi 50an tusuk. Murah, nikmat, dan kenyang, itulah sate bekicot.'),
(27, 'Kediri', 'Tahu Takwa', 'tahu_kediri.jpeg', 'Tahu takwa yang merupakan hasil olah tahu khas Kediri mempunyai tekstur yang lembut dan kenyal saat di makan. Bentuk dari tahu takwa kotak segi empat dan bertubuh ramping.  Tahu takwa mempunyai rasa yang sangat gurih dan tidak sedikit pun timbul rasa asam seperti tahu-tahu di daerah lain. Kuliner satu ini selalu menjadi buruan warga lokal ataupun bukan. Para penikmatnya akan dibuat ketagihan dengan renyah tahu di bagian luar dan tekstur lembut di bagian dalamnya.'),
(28, 'Kediri', 'Sego Goreng Arang', 'nasi_kediri.jpeg', 'ika selama ini lidah kamu dimanja dengan nasi goreng yang dimasak dengan kompor gas, maka sudah saatnya kamu yang lagi di Kediri untuk menjajal nasi goreng arang. menjadikan pelanggan jatuh hati dan rela menunggu lama saat memesan adalah karena nasi goreng arang dibuat tanpa bahan penyedap. Sebagai penggantinya, digunakan bumbu yang muri diracik dari berbagai rempah, garam, dan kecap. Satu lagi yang menjadikan makanan khas Kediri ini terasa lebih istimewa adalah penggunaan daging ayam yang berasal dari ayam kampung.'),
(29, 'Lamongan', 'Soto Lamongan', 'soto_lamongan.jpeg', 'Ciri khas dari Soto Lamongan ini adalah kuahnya berwarna kuning berminyak dan ditambah dengan berbagai rempah di dalamnya.  Kuah soto yang berwarna kuning bening dengan rasa gurih dan khas terbuat dari bumbu halus, seperti bawang putih, ketumbar sangria, merica, kemiri sangrai dan kunyit.  Biasanya didalam soto ini terdapat suwiran daging ayam, irisan kol, tomat, daun bawang, mie bihun, dan irisan telur telur ayam.  Terkadang juga ditambah dengan ceker ayam, kulit ayam dan sayap ayam untuk menambah kesan menarik dan istimewanya Soto Lamongan ini. Dalam penyajiannya juga ditambahkan bawang goreng, jeruk nipis dan sambal serta krupuk udang .'),
(30, 'Lamongan', 'Tahu Campur Lamongan', 'tahu_lamongan.jpeg', 'Biasanya tahu campur Lamongan ini dijual di waktu malam di pinggiran kota Lamongan.  Tahu Campur yang satu terbuat dari tahu, lontong, dan perkedel ketela pohon, bihun, serta daging sapi yang dipadukan dengan sayuran berupa daun selada dan kecambah (toge). Makanan ini disajikan dengan kuah yang sudah dicampur dengan petis udang.'),
(31, 'Lamongan', 'Sego Boranan', 'buronan_lamongan.jpeg', 'Kata boranan berasal dari sebutan untuk tempat menyimpan nasinya yaitu  â€œboranâ€, itulah mengapa disebut Nasi Boranan.  Nasi Boranan merupakan salah satu makanan khas kota Lamongan yang wajib Anda coba. Makanan khas ini terdiri dari nasi, lauk, bumbu dan rempeyek (sejenis krupuk yang terbuat dari tepung beras yang dibumbui dan digoreng).'),
(32, 'Lumajang', 'Lontong Petis ', 'lontong_lumajang.jpeg', 'Lontong petis. Sebenarnya yang membedakan bukan hanya tahu dan lontongnya saja.  Bumbu dan cara penyajiannya juga berbeda dari tahu petis, di Lumajang lontong petis biasa dikolaborasikan dengan sayur daging ayam, telur ayam, tahu dan lainnya. Lontong petis bisa sebagai pengganjal di saat perut kamu kosong. Kamu juga bisa mendapati nya dengan harga yang murah.'),
(33, 'Lumajang', 'Tape Pisang', 'tape_lumajang.jpeg', 'Tapi pisang ini merupakan makanan khas lumajang yang berbahan dari pisang dan juga fermentasi singkong yaitu tape yang di oleh dengan cara pisang di bungkus dengan rasa tape sehingga menghasilkan makanan yang unik satu ini. Untuk rasa dari Tape Pisang ini sangat nikmat, manisnya legit dan juga memiliki tekstur yang lembut.'),
(34, 'Lumajang', 'Bledus Lumajang', 'bledus_lumajang.jpeg', 'Bledus ini merupakan salah satu makanan khas Lumajang yang masih banyak di minati hingga sekarang. bahan pembuatan bledus ini berbahan dasar dari jagung pipil kering yang di rendang terlebih dahulu semalaman, setalah itu di rebus hingga matang sampai jadilah bledus khas lumajang. Tapi dalam penyajiannya, sebelum di makan bledus ditaburi atau ditambahkan kelapa parut yang pastinya akan menambah rasa dan tampilan yang unik.'),
(35, 'Madiun', 'Bleder Cokro Madiun', 'bluder_madiun.jpeg', 'Makanan khas Madiun bluder sangatlah populer dan sering dijadikan oleh-oleh khas Madiun. Bluder cokro ini didirikan oleh Nyonya Susana sejak 19 Agustus 1889. Pada awalnya Nyonya Susana mendapat resepnya dari orang Belanda dan dibuat hanya untuk dibagikan ke saudara dan kerabat hingga akhirnya berkembang sampai saat ini. Bluder cokro ini memiliki 14 varian rasa antara lain kismis, coklat, keju, original, mix match, kacang, fruty tam, abon, smooked beef, nutela, selai nanas, strawberry, dan blueberry. Rasa yang manis dan tekstur bluder cokro yang lembut membuat roti ini sangat cocok dijadikan sebagai oleh-oleh'),
(36, 'Madiun', 'Madumongso Madiun', 'madu_madiun.jpeg', 'Madumongso merupakan salah satu jajanan khas Madiun yang juga populer dan banyak digemari. Madumongso ini dibuat dari bahan dasar ketan hitam yang diolah hingga menjadi tape melalui proses fermentasi. Setelah itu, dimasak dicampur dengan gula dan santan hingga menyerupai dodol. Pengemasanya pun unik, biasanya madumongso dibungkus dengan kertas minyak warna-warni ada yang berbentuk bulat dan ada yang berbentuk lonjong seperti dodol. Jajanan madumongso ini rasanya manis sedikit asam dan saangat nagih saat kamu selesai memakannya.'),
(37, 'Madiun', 'Sego Pecel Madiun', 'pecel_madiun.jpeg', 'Makanan khas Madiun nasi pecel ini merupakan satu dari sekian banyak sajian khas Madiun yang populer. Hampir setiap kota di Jawa Timur mmpunyai varian pecel yang sesuai dengan daerahnya masing-masing. Namun, pecel di Madiun agak berbeda dari daerah ain karena adanya Kembang Turi dan Lempeng. Di daerah lain biasanya menggunakan rempeyek untuk kerupuknya. Untuk penyajiannya biasanya menggunakan pincuk serta dinikmati dengan lauk tambahan seperti empal dan jerohan.'),
(38, 'Magetan', 'Tepo Tahu', 'tahu_magetan.jpeg', 'Makanan ini adalah makanan asli magetan.  Yaitu sebuah tepo atau seperti halnya lontong, yang diiris tipis yang dicampur dengan tahu, tempe dan bumbu lainnya. Agar lebih menambah nafsu makan, dalam penyajiannya ditambahkan taburan bawang goreng diatasnya.'),
(39, 'Magetan', 'Sate Kelinci Magetan', 'sate_magetan.jpeg', 'Sate kelinci sama dengan sate ayam pada umumnya, yaitu daging kelinci yang dibakar dan kemudian ditambah dengan sambal kacang yang ditungkan diatasnya. Untuk memuaskan perut pelanggannya, sate kelinci disajikan bersama lontong yang di iris tipis-tipis. '),
(40, 'Magetan', 'Kue Bolu Magetan', 'bolu_magetan.jpeg', 'Kue bolu atau yang sering disebut roti telur oleh orang magetan adalah roti yang memiliki rasa khas dan tesktur yang empuk. Seperti namanya kue ini berbentuk lonjong menyerupai telur ayam.  Sama seperti gethuk lindri, kue bolu ini sangat cocok untuk anda jadikan buat tangan untuk keluarga anda di rumah. Kue ini akan banyak anda temukan diberbagai tempat oleh-oleh khas magetan.'),
(41, 'Malang', 'Orem - Orem ', 'orem_malang.jpeg', 'Orem-orem, makanan yang disajikan dengan ketupat, tempe yang dipotong kecil-kecil dan telur asin diatasnya ini memiliki rasa yang lezat sekali. Memang tampaknya terlihat sepintas seperti opor atau sayur lodeh, tapi makanan ini disajikan dengan kuah kaldu ayam yang sangat kental.'),
(42, 'Malang', 'Cwie Mie Malang', 'mie_malang.jpeg', 'Sekilas Cwie Mie Malang ini terlihat mirip dengan mie ayam biasa. Yang membedakan Cwie Mie adalah daging ayam yang disajikan lebih halus menyerupai abon dan rasanya pun sangat unik. Kalau biasanya Mie Ayam disajikan dengan sawi dan pangsit goreng diatasnya, beda dengan Cwie Mie yang menggunakan selada segar'),
(43, 'Malang', 'Sego Goreng Mawut', 'sego_malang.jpeg', 'Sego Goreng Mawut ini memiliki rasa yang lezat sekali. Mungkin buat kamu para pecinta nasi goreng, tentunya sudah pernah merasakan makanan yang satu ini. Mengapa bisa disebut dengan Mawut, karena makanan yang berasal dari nasi goreng dan mie goreng ini dipadukan menjadi satu dengan citarasa yang sangat lezat. Sama seperti pada nasi goreng seperti biasanya, yang disajikan dengan sayur dan acar di atasnya'),
(44, 'Mojokerto', 'Kerupuk Rambak', 'kerupuk_mojokerto.jpeg', 'Kerupuk rambak merupakan kerupuk yang dibuat dari kulit sapi kering kemudian diolah dengan cara khusus dan bumbu khas sehingga menghasilkan jajanan berjenis kerupuk. Kerupuk rambak bisa dengan mudah anda temukan di pinggir pinggir jalan. Satu plastik kerupuk rambak pas dijadikan teman untuk berkeliling Kota Mojokerto'),
(45, 'Mojokerto', 'Gulai mentok', 'gulai_mojokerto.jpeg', 'Kerupuk rambak merupakan kerupuk yang dibuat dari kulit sapi kering kemudian diolah dengan cara khusus dan bumbu khas sehingga menghasilkan jajanan berjenis kerupuk. Kerupuk rambak bisa dengan mudah anda temukan di pinggir pinggir jalan. Satu plastik kerupuk rambak pas dijadikan teman untuk berkeliling Kota Mojokerto Makanan khas Ngoro Mojokerto ini terbuat dari daging itik atau daging menthok. Menthok memang banyak diternakkan di sekitar Jawa Timur. Karena tekstur dagingnya yang tebal, maka daging menthok ini cocok diolah menjadi gulai.'),
(46, 'Mojokerto', 'Kerupuk Upil', 'upil_mojokerto.jpeg', ' Namanya mungkin sedikit unik, namun anda tenang saja karena kerupuk ini tidaklah terbuat dari upil. Dinamakan kerupuk upil karena proses penggorengannya tidak menggunakan minyak goreng akan tetapi menggunakan pasir.  Anda dapat mengonsumsi kerupuk upil ini dengan disandingkan petis sehingga terasa lebih nikmat. Kerupuk upil ini dapat anda bawa pulang untuk dijadikan oleh-oleh.'),
(47, 'Nganjuk', 'Sego Becek', 'sego_nganjuk.jpeg', 'Nasi Becek ini merupakan salah satu makanan yang sangat mirip dengan kari kambing. Namun isi dari Nasi Becek atau yang biasa dikenal dengan sebutan Sego Becek ini hampir sama dengan soto babat.  Nasi Becek ini berisi potongan sate kambing yang dagingnya telah dilepas dari tusuk satenya. Makanan khas dari kota Nganjuk ini memiliki cita rasa yang hampir mirip dengan makanan serupa yang berada di daerah Solo dan Jawa Tengah yakni cenderung manis dan tidak terlalu asin.'),
(48, 'Nganjuk', 'Dumbleg', 'dumbleg_nganjuk.jpeg', 'Dumbleg ini adalah salah satu makanan khas Kota Nganjuk yang berbentuk sepeti dodol. Makanan ini terbuat dari tepung ketan, gula jawa, dan tentunya santan kelapa. Namun bisa juga kita buta dari bahan tepung beras.  Makanan khas Nganjuk ini memiliki cita rasa yang dominan manis dan legit. Bagi kamu yang penasaran dengan makanan Khas Kota Nganjuk yang satu ini, kamu bisa menemukan makanan ini di banyak penjual makanan yang ada di pasar gondang.'),
(49, 'Nganjuk', 'Sego Pecel Nganjuk', 'pecel_nganjuk.jpeg', 'Makanan khas Kota nganjuk yang selanjutnya adalah Nasi Pecel. Memang dari segi penyajiannya makanan khas Nganjuk yang satu ini tidak jauh beda dengan nasi pecel di daerah lainnya.  Yang menjadi ciri khas dari Nasi pecel khas Kota Nganjuk ini adalah ditambahkannya kulupan kembang turi. Dalam penyajiannya, Nasi Pecel khas Kota Nganjuk ini diberi sambal kuah kacang dan tempe sebagai pelengkapnya.'),
(50, 'Ngawi', 'Lethok Ngawi', 'lethok_ngawi.jpeg', 'Makanan ini terbuat dari tempe semangit yang dicampur dengan bumbu-bumbu dapur yang sangat nikmat jika disantap.  Tempe semangit sendiri adalah tempe yang sudah dibiarkan busuk terlebih dahulu sebelum dibuat Lothek. Makanan ini biasa dihidangkan pedas sehingga cocok untuk teman yang suka yang pedas-pedas.'),
(51, 'Ngawi', 'Kripik Tempe', 'kripik_ngawi.jpeg', 'Kripik ngawi mempunyai rasa yang gurih dan cocok untuk menemani waktu luang kamu di sore hari sambil menikmati segelas teh hangat. Pada kripik tempe di Ngawi terdapat campuran rasa yang dihasilkan dari perpaduan daun jeruk, kencur, dan cabai yang menjadikan kripik Ngawi ini mempunyai rasa pedas.'),
(52, 'Ngawi', 'Ledre Ngawi', 'ledre_ngawi.jpeg', 'Ledre merupakan salah satu menu oleh-oleh khas Ngawi yang banyak diminati para wisatawan yang sedang berkunjung ke Kota Ngawi. Ledre ini pun telah memiliki banyak varian sehingga dapat memenuhi permintaan akan rasa dadri para penikmatnya.'),
(54, 'Pacitan', 'Tahu Kupat Pacitan', 'tahu_pacitan.jpeg', 'Kupat tahu adalah makanan yang berisi potongan-potongan kupat (lontong) dan juga tahu. Dalam penyajiannya ditambahkan taburan kacang goreng, seledri dan taoge serta disiram dengan kuah penuh bumbu yang nikmat. Umumnya kupat tahu di Pacitan dimakan dengan kerupuk udang.'),
(55, 'Pacitan', 'Soto Pacitan', 'soto_pacitan.jpeg', 'Soto adalah menu makanan yang hampir ada di setiap daerah. Begitu juga Pacitan, kabupaten ini memiliki yang namanya Soto Pacitan. Apa yang membedakan dengan soto lainnya? Soto yang berasal dari kota kelahiran SBY ini disajikan dengan tambahan seledri, bawang goreng, kecambah, kecap dan kacang goreng. Nah adanya kacang goreng inilah yang menjadi pembeda dengan soto-soto lainnya.'),
(56, 'Pacitan', 'Jadah Bakar Pacitan', 'jadah_pacitan.jpeg', 'Jadah Bakar Mungkin masih banyak orang yang belum tahu makanan bernama jadah.jadah adalah makanan yang bentuknya seperti punten hanya saja terbuat dari ketan. Kalau di Pacitan dikenal yang namanya jadah bakar yaitu jadah yang dipanggang layaknya memanggang daging ayam. Setelah itu dimakan dengan dengan gula pasir menghasilkan kombinasi rasa gurih dan manis.'),
(57, 'Pamekasan', 'Nasi Jhajhan', 'nasi_pamekasan.jpeg', 'â€ Naseâ€™ Jhajhan â€ terletak pada menu lauknya yang beraneka ragan dan di bungkus daun pisang sehingga aroma dan rasanya tidak berubah walaupun dibawa sebagai bekal perjalanan ke luarkota. Lauk dari â€ Naseâ€™ Jhajhan â€ terdiri dari daging bumbu yang gurih,  telur kuah petis, dendeng serudeng dan ditambah lagi sambal pedas. Perpaduan rasanya semakin menambah selera yang menikmati.'),
(58, 'Pamekasan', 'Soto Lorjuk Pamekasan', 'soto_pamekasan.jpeg', 'Soto lorjuk khas pamekasan ini merupakan soto yang penyajiannya dicampur lorjuk namun sebenarnya soto ini tidak jauh beda dengan soto pada biasanya yaitu penyajian degan lontong, mihun, kecambah goreng dan rebus, remasan rempeyek dan ditaburi bawang goreng. akan tetapi yang menjadikan khanya soto ini di campur lorjuk dengan yang lain adalah buburan kerang lorjuk yang kemudian disiram dengan kuah gurih dan petis yang juga terbuat dari kerang lorjuk.'),
(59, 'Pamekasan', 'Rujak Tajin Pamekasan', 'rujak_pamekasan.jpeg', 'Rujak tajin khas pamekasan ini adalah, Bubur beras yang dimasak dengan santan sampai lunak yang kemudian ditambahkan irisan bawang daun (bukan bawang prei) dan sedikit garam, Untuk bumbu rujaknya sendiri dari Petis Ikan yang diulek dengan cabe rawit, yang di tambahkan sedikit garam dan gula, sebagai tambahan aga rujak tajin ini semakin mak nyos bisa ditambahkan tomat, cacahan timun dan tauge matang. yang terahir guyur dengan Bumbu rujaknya.'),
(60, 'Pasuruan', 'Rawon Sate Komo ', 'sate_pasuruan.jpeg', 'Rawon adalah makanan khas Pasuruan yang terbuat dari daging dan berkuah hitam dengan bumbu campuran bawang putih, bawang merah, tumbar, jinten, daun jeruk purut, sere laos, kunir dan tidak ketinggalan kluwek yang membuat kuah menjadi hitam. Nasi Rawon sangat nikmat dihidangkan dalam keadaan hangat dengan lauk Sate Komo dan tidak ketinggalan taoge pendek, sambal dan kerupuk udang.'),
(61, 'Pasuruan', 'Klepon Pasuruan', 'klepon_pasuruan.jpeg', 'Klepon khas Pasuruan ini terbuat dari tepung beras ketan yang dibentuk bulatan kecil dengan isian gula merah, dibentuk bulat dan kemudian adonan klepon direbus dalam air yang mendidih. Klepon khas pasuruan ini disajikan dengan parutan kelapa di atasnya. Juga biasanya penjual kreatif menambahkan parutan keju chedar sebagai penarik minat pembeli. Dengan sensasi kenyal adonan bercampur dengan letusan gula merah yang menjadikan uniknya makanan khas ini.'),
(62, 'Pasuruan', 'Cenil Pasuruan', 'cenil_pasuruan.jpeg', 'Cenil Pasuruan ini terbuat dari tepung tapioka atau ketela pohon. bentuk cenil dibentuk bulat, bulat memanjang ataupun bisa kotak dengan ragam warna cerah seperti merah, kuning dan hijau muda. Setelah dibentuk, adonan cenil kemudian direbus ke dalam air yang mendidih. Cenil ini biasanya di sajikan dengan klepon, Dengan taburan kelapa parut di atasnya.'),
(63, 'Ponorogo', 'Sego Tahu', 'tahu_ponorogo.jpeg', 'Makanan berat khas Ponorogo lain yang patut kamu coba ada Sego Tahu (Nasi Tahu). Sego Tahu terdiri dari nasi putih (bisa juga diganti dengan lontong) dan bumbu tahu. Tahu putih yang dikopyok dengan telur digoreng setengah matang kemudian dipotong-potong dan dicampur bawang goreng, kacang goreng, seledri, dan kecap manis. Untuk penyuka pedas bisa menambahkan sambal yang disediakan terpisah. Rasa gurih dari tahu dan manis dari kecap serta pedas dari sambal akan menjadi perpaduan yang unik dan mengenyangkan.'),
(64, 'Ponorogo', 'Gado - Gado Ponorogo', 'gado_ponorogo.jpeg', 'Kalau kamu penggemar Gado-gado, kamu harus mencoba Rujak Petis khas Ponorogo ini. Berbeda dengan Gado-gado, Rujak Petis terasa lebih gurih karena Petis yang ditambahkan dalam sambal. Rujak Petis mirip dengan Rujak Cingur yang asli Surabaya, tapi tidak memakai cingur (moncong) dan kaki kambing.'),
(65, 'Ponorogo', 'Pecel Ponorogo', 'pecel_ponorogo.jpeg', 'Menu Pecel boleh ada di mana-mana, tapi Ponorogo punya pecel yang khas, yaitu pecel tumpuk. Yang berbeda dari Pecel Ponorogo adalah sambal kacangnya yang kental dan lebih pedas. Sayurannya juga lebih lengkap mulai dari sayur hijau, mentimun, daun kemangi, tauge, dan lamtoro (petai cina). Pecel Tumpuk biasanya disajikan bersama oseng (tumis) mie dan kacang pedas. Lauk untuk pecel tumpuk juga beragam, bisa tempe goreng, piya-piya (bakwan), dan bermacam gorengan lainnya.'),
(66, 'Probolinggo', 'Soto Probolinggo', 'soto_probolinggo.jpeg', 'Makanan khas probolinggo yang pertama adalah soto kraksaan, yang menjadikan khasnya soto ini adalah bahan bumbunya yang berbeda pada umumnya, bahan daging ayam yang dipakai adalah ayam jantan dengan bumbu santan yang dilengkapi dengan serbuk kelapa yang disangrai, sebagai pelengkap Soto Kraksaan ini dilengkapi dengan irisan kentang yang di kukus di tambahkan kerupuk udang sebagai pelengkap. '),
(67, 'Probolinggo', 'Sego Glepungan', 'sego_probolinggo.jpeg', 'Makanan khas probolingo yang ke dua adalah nasi glepungan, nasi ini dalam penyajianya terdapat lauk yang tradisional, dengan ragam olahan tradisional ada Ikan Asin, tempe dan tahu penyet, Lalapan, Sambel pedas, Nasi glepungan (Sari-sari jagung), smua di taruh di atas nasi dan siap untuk di santap.'),
(68, 'Probolinggo', 'Kepiting Olok', 'kepiting_probolinggo.jpeg', 'kepiting Olok, olo sendiri merupakan kepiting muda yang terdapar di pantai. untuk di jadikanya makanan khas kepiting muda ini diolah dan diberi campuran udang dan bumbu khas. yang kemudian dimasukkan lagi ke dalam cangkang kepiting yang berukuran besar. kepiting ini rasanya gurih karena kepiting ini kpiting muda.'),
(70, 'Sampang', 'Kaldu Sum - Sum Sampang', 'kaldu_sampang.jpeg', 'Kaldu sumsum ini merupakan mkanan khas sampang yang di buat dengan bahan dasar rempah-rempah dan daging sapi, dalam pembuatanya pun cukup lama, karena untuk proses perebusan bisa memakan waktu hingga 6 jam, Proses perebusan di awali dari dengkul sapi dicuci sampai bersih dulu. sewaktu kaldu sumsum setengah matang, selanjutnya taburi bumbu yang sudah ditumis yang  terdiri dari rempah-rempah bawang putih, bawang merah, jahe, merica dan sedikit pala. untuk hidangan bisasanya dinikmati mengÂ­gunakan sedotan,'),
(71, 'Sampang', 'Nasi Jagung Sampang', 'nasi_sampang.jpeg', 'Nasi jagung khas sampang tentunya merupakan makanan yang terbuat dari bahan dasar jagung, Nasi jagung (nasek empog) Khas sampang ini berbeda dengan nasi jagung khas kediri, nasi jagung khas sampang ini terdiri dari nasi putih yang dicampur dengan biji jagung, untuk menikmatinya bisasanya di tambahkan lauk-pauk seperti telur petis, daging tolotoh, kering kentang, pindang tongkol dimasak pedas dan sambal mangga untuk lebih nikmatnya.'),
(72, 'Sampang', 'Nasi Kobel Sampang', 'kobel_sampang.jpeg', 'Nasi ini merupakan makanan sederhana yang menjadi cirikhas daerah sampang, makanan khas ini awalnya merupakan bekal yang dibuat oleh istri nelayan seketika suaminya pergi melaut. dengan menu sederhana yaitu nasi yang di beri lauk ikan laut, sambal kelapa dan sambal Buje cabbih/Garam dan Cabe yang di ulek tanpa air, yang menjadikan khas makanan kobel ini adalah sambal kelapanya. Sambak kelapa untuk nasi kobel ini panggang di atas cowek.'),
(73, 'Sidoarjo', 'Lontong Kupang Sidoarjo', 'kupang_sidoarjo.jpeg', 'Kupang sendiri merupakan hewan kecil yang masuk dalam kelas tiram. Makanan olahan kupangini sangat terkenal di Sidoarjo dan daerah yang dekat pantai seperti Kenjeran, Surabaya. Kupang Lontong ini merupakan sajian yang harus dimakan selagi panas, dengan komposisi bahan berupa irisan lontong, kupang, dan lento. Lento adalah gorengan yang menyerupai perkedel dan terbuat dari singkong yang kering dan menambah tekstur tersendiri saat memakan kupang yang legit gurih. Semua komposisi bahan tadi di siram dengan kuah dari kupang dengan bumbu petis dan bawang putih. Akan lebih nikmat bila menggunakan petis pedas yang dicampur cabe rawit yang dihaluskan.'),
(74, 'Sidoarjo', 'Bandeng Asap Sidoarjo', 'bandeng_sidoarjo.jpeg', 'Bandeng Asap ini merupakan makanan yang akan selalu ada di setiap toko oleh â€“ oleh di Sidoarjo. Bandeng asap ini adalah komoditas utama produk perikanan di Sidoarjo ini di matangkan dengan proses pengasapan. Setelah siap di jual, bandeng akan dijual di dalam box khusus dengan saus pendamping saat ini siap di santap. Produk oleh-oleh bandeng asap ini sama lakunya dengan beberapa produk yang lain seperti petis udang, terasi udang, dan kerupuk ikan atau udang. Semuanya adalah produk Sidoarjo yang tak boleh untuk dilewatkan saat datang ke Kota Delta ini.'),
(75, 'Sidoarjo', 'Sate Kerang Sidoarjo', 'sate_sidoarjo.jpeg', 'Sate kerang ini berbahan dasar kerang yang sudah dikupas kulitnya, kecap manis, margarin, garam dan bawang putih. trakir di tusuk dengan tusuk. Nah untuk itu jika kalian berkunjung ke kota Sidoarjo jangan lupa untuk mencicipi lontong kupang dan sate kerang ini. banyak kedai2 atau warung makan yang menyediakan makanan ini.'),
(76, 'Situbondo', 'Soto Situbondo', 'soto_situbondo.jpeg', 'Namun, Soto Situbondo memiliki ciri khas dibanding soto-soto yang lain.  Ada dua jenis Soto Situbondo, ialah soto ayam dan soto daging. Soto ayam memiliki komposisi kuah yang lebih bening, namun kaya akan bumbu dan rempah-rempah. Begitu pula dengan soto daging. '),
(77, 'Situbondo', 'Sate Olean Situbondo', 'sate_situbondo.jpeg', 'Sate adalah salah satu kuliner Indonesia yang tak susah dijumpai, tak terkecuali di Situbondo. Di Situbondo, sate legendaris adalah milik Hj Ilmi Mufiddah. Terkenal akan cita rasa sate yang diolah empuk. Rupanya, ada resep khusus yang membuat Sate Olean bertekstur daging yang empuk menggigit.  Bukan hanya soal cara memasak, pemilik rumah makan memiliki kriteria terhadap daging kambing yang akan diolah menjadi sate. Usia kambing dipilih dalam rentan waktu 1-2 tahun. Sebab dalam usia ini, daging masih empuk untuk diolah.'),
(78, 'Situbondo', 'Nasi Bukhori', 'nasi_situbondo.jpeg', 'Nasi bukhori yang fenomenal di Situbondo ini disajikan bersamaan dengan sepotong daging kambing. Daging kambingnya pun khusus bagian paha atas. Dalam pengolahan nasi bukhori, air rebusan kambing tidak dibuang, melainkan digunakan sebagai campuran menanak nasi bersamaan dengan campuran rempah-rempah.'),
(79, 'Trenggalek', 'Nasi Anglo', 'nasi_trenggalek.jpeg', 'Nasi goreng anglo trenggalek atau sering disebut nasi goreng jawa. jika dilihat sekilas nasi goreng ini sama saja dengan nasi goreng pada umumnya yakni nasi dengan tambahan sayuran dan mie.  Akan tetapi, yang membedakan nasi goreng anglo dengan nasi goreng pada umumnya adalah alat memasaknya.'),
(80, 'Trenggalek', 'Sego Tiwul', 'sego_tiwul.jpeg', 'Sego tiwul (nasi tiwul)m jika biasanya kita menemui nasi pada umumnya adalah berbahan baku padi tapi beda dengan nasi tiwul ini. Nasi tiwul ini merupakan makanan tradisional turun-temurun khas trenggalek berbahan baku ketela yang telah dikeringkan kemudian secara tradisional.'),
(81, 'Trenggalek', 'Nasi Gegok', 'gegok_trenggalek.jpeg', 'Jika anda adalah seorang pecinta kuliner dengan citarasa pedas,  jangan lewatkan untuk mencicipi makanan khas Trenggalek yang satu ini â€œsego gegogâ€ atau â€œnasi gegogâ€.  Nasi gegog ini cukup populer di masyarakat trenggalek, nasi putih yang di taburi dengan sambel teri, parutan kelapa dan dibungkus menggunakan daun pisang kemudian dikukus.'),
(82, 'Tuban', 'Rajungan Tuban', 'rajungan_tuban.jpeg', 'Tuban memanfaakan kondisi di pinggir laut dengan cara mengambil hewan yang memang sedang populer saat ini di Indonesia yaitu, Rajungan.  Rajungan adalah hewan laut yang mirip dengan kepiting, di Tuban rajungan dijadikan makanan khas dan diolah menjadi rajungan kari manunggal.'),
(83, 'Tuban', 'Belut Goreng', 'belut_tuban.jpeg', 'Belut yang disediakan sudah melalui seleksi dijamin bersih, belut dijadikan sebagai salah satu makanan khas Tuban. Jika kamu pusing memilih warung belut yang enak dan gurih kamu bisa datang ke warung bagong yang terdapat di desa Pruggahan Tuban.  Belut di warung begong sudah terjamin kualitasnya yang gurih karena warung begong ini memiliki bumbu rahasia yang pastinya tidak ada di warung lain. Biasanya untuk menikmati satu porsi belut goreng dilengkapi dengan nasi jagung.'),
(84, 'Tuban', 'Cumi - Cumi Hitam ', 'cumi_tuban.jpeg', 'Cumi-cumi hitam, cumi-cumi hitam adalah makanan yang banyak dicari dan menjadi makanan favorit wisatawan yang berkunjung ke Tuban, baik itu wisatawan lokal maupun asing.  Penyajian cumi-cumi hitam ini disajikan di atas daun jati dan campur nasi putih yang hangat dan pulen, selain itu ada juga sayur cumi yang pastinya menambah nafsu makan dan perut lebih kenyang.'),
(85, 'Tulungagung', 'Kue Sagon', 'kue_tulungagung.jpeg', 'Salah satu kue tradisional khas Tulungagung yang juga dapat anda temui di beberapa daerah lain di Indonesia adalah kue sagon. Kue sagon memiliki cita rasa manis dan gurih serta aroma yang wangi. Bahan dasar membuat kue sagon adalah dari kelapa yang dicampur dengan tepung ketan, tepung sagu ataupun tepung kanji. Meskipun nama kue sagon berarti kue yang terbuat dari sagu. Kue sagon banyak disajikan menjelang hari raya lebaran atau hari hari besar lainnya.'),
(86, 'Tulungagung', 'Kepiting ', 'kepiting_tulungagung.jpeg', 'Menu andalan salah satu tempat makan yang mampu menggoyang lidah ini disajikan juga di Kafe AG One yang terletak di Jalan MT Haryono Nomor 77B, Kabupaten Tulungagung. Sajian kepiting sambal ijo di kafe ini menggunakan kepiting fresh berukuran besar yang dilah dengan bumbu khas yang bisa membuat anda ketagihan. Satu porsi kepiting sambal ijo bisa disantap beramai ramai dengan teman nongkrong anda. Cukup mengenyangkan dan tentunya mampu membuat lidah bergoyang karena citarasanya.'),
(87, 'Tulungagung', 'Sego Sompil', 'sompil_tulungagung.jpeg', 'Sompil adalah makanan khas Tulungagung yang disuguhkan bersama dengan irisan lontong dan tambahan lotho. Biasanya, sompil juga disajikan dengan tambahan topping bumbu kedelai yang rasanya lezat. Cocok bagi anda yang menyukai masakan pedas karena sompil ini lebih enak disajikan dalam cita rasa pedas yang menggugah selera.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `tipe`) VALUES
(1, 'dimas', 'polinema', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipe` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `tipe`) VALUES
(28, 'bagus', 'polinema', 2),
(31, 'wahyu', 'polinema', 2),
(32, 'coba', 'coba', 2),
(33, 'danil', 'polinema', 2),
(34, 'fufu', '1234', 2),
(35, 'yuli', 'yuli', 2),
(36, 'bagus', 'polinema', 2),
(37, 'bagus', '123', 2),
(38, 'asd', 'asd', 2),
(39, 'bagus', 'polinema', 2),
(40, 'bagus', 'polinema', 2),
(41, 'dimas', 'dimas', 2),
(42, 'dimas', 'polinema', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `id_akses`
--
ALTER TABLE `id_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_makanan`
--
ALTER TABLE `jenis_makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `id_akses`
--
ALTER TABLE `id_akses`
  MODIFY `id_akses` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jenis_makanan`
--
ALTER TABLE `jenis_makanan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
