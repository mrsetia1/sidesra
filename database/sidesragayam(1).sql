-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 05:34 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidesragayam`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Kegiatan', '#fcba03', '2020-01-07 17:00:00', '2020-01-13 17:00:00'),
(2, 'Keuangan', '#11a7d9', '2020-01-14 17:00:00', '2020-01-14 17:00:00'),
(4, 'Pendidikan', '#80ff00', '2020-01-28 05:01:19', '2020-01-28 05:01:19'),
(5, 'Berita', '#00ffff', '2020-01-28 05:01:45', '2020-01-28 05:01:45'),
(6, 'Peraturan', '#000000', '2020-01-28 05:01:59', '2020-01-28 05:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `author_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'test comment', 2, 1, NULL, NULL),
(2, 'test', 1, 1, NULL, NULL),
(3, 'test', 1, 1, NULL, NULL),
(4, 'test', 1, 1, NULL, NULL),
(5, 'test', 1, 1, NULL, NULL),
(6, 'test', 1, 1, NULL, NULL),
(7, 'test', 1, 1, NULL, NULL),
(8, 'test', 1, 1, NULL, NULL),
(9, 'test', 1, 1, NULL, NULL),
(10, 'test', 1, 1, NULL, NULL),
(11, 'test', 1, 1, NULL, NULL),
(12, 'test', 1, 1, NULL, NULL),
(13, 'test', 1, 1, NULL, NULL),
(14, 'test', 1, 1, NULL, NULL),
(15, 'test', 1, 1, NULL, NULL),
(16, 'test', 1, 1, NULL, NULL),
(17, 'test', 1, 1, NULL, NULL),
(18, 'test', 1, 1, NULL, NULL),
(19, 'test', 1, 1, NULL, NULL),
(20, 'test', 1, 1, NULL, NULL),
(21, 'test', 1, 1, NULL, NULL),
(22, 'test', 1, 1, NULL, NULL),
(23, 'test', 1, 1, NULL, NULL),
(24, 'test', 1, 1, NULL, NULL),
(25, 'test', 1, 1, NULL, NULL),
(26, 'test', 1, 1, NULL, NULL),
(27, 'test', 1, 1, NULL, NULL),
(28, 'test', 1, 1, NULL, NULL),
(29, 'test', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(5) NOT NULL,
  `nama_desa` varchar(100) NOT NULL,
  `nama_kepala_desa` varchar(100) NOT NULL,
  `nip_kepala_desa` varchar(100) NOT NULL,
  `kode_pos` varchar(6) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `nama_kepala_camat` varchar(100) NOT NULL,
  `nip_kepala_camat` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `nama_propinsi` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lng` varchar(20) DEFAULT NULL,
  `zoom` tinyint(4) DEFAULT NULL,
  `map_tipe` varchar(20) DEFAULT NULL,
  `path` text DEFAULT NULL,
  `alamat_kantor` varchar(200) DEFAULT NULL,
  `email_desa` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `nama_desa`, `nama_kepala_desa`, `nip_kepala_desa`, `kode_pos`, `nama_kecamatan`, `nama_kepala_camat`, `nip_kepala_camat`, `nama_kabupaten`, `nama_propinsi`, `logo`, `lat`, `lng`, `zoom`, `map_tipe`, `path`, `alamat_kantor`, `email_desa`, `telepon`, `website`) VALUES
(1, 'Kertajaya', 'Syamsudin', '--', '52271', 'Cibatu', 'Cecep Aji Suganda', '-', 'Garut', 'Jawa Barat', 'tonjong__sid__5nglfuT.jpg', '-7.183310814175431', '109.01360571384431', 18, 'HYBRID', '[[[-7.166257801801025,109.01432991027833],[-7.1707234413924255,109.01480197906496],[-7.179700739124557,109.01338577270509],[-7.179329706170024,109.00686264038087],[-7.173794417889493,108.99493217468263],[-7.168641164288404,109.00291442871095]]]', 'Jl. Raya Kertajaya No. 1', 'mail@email.com', '+62-000000', 'www.desakukertajaya.com');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `category_id` int(10) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `category_id`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans. ', 1, '2020-01-24 11:38:32', '0000-00-00 00:00:00'),
(2, 1, 'Ada tumpukan sampah di RT 2 samping rumah bapak Anu', 1, '2020-01-24 11:54:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kategori`
--

CREATE TABLE `laporan_kategori` (
  `id` int(5) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` int(4) NOT NULL DEFAULT 1,
  `sorting` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `parent` tinyint(4) NOT NULL DEFAULT 0,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_kategori`
--

INSERT INTO `laporan_kategori` (`id`, `category`, `type`, `sorting`, `enabled`, `parent`, `icon`) VALUES
(1, 'Laporan', 1, 0, 1, 0, ''),
(2, 'Saran', 1, 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_status`
--

CREATE TABLE `laporan_status` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `enabled` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_status`
--

INSERT INTO `laporan_status` (`id`, `status`, `icon`, `enabled`) VALUES
(1, 'Laporan Baru', 'fas fa-bullhorn', 1),
(2, 'Laporan Diproses', 'fas fa-cogs', 1),
(3, 'Laporan Selesai', 'fas fa-thumbs-up', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_28_033338_create_posts_table', 1),
(5, '2020_01_28_034725_create_categories_table', 1),
(6, '2020_01_28_035012_create_comments_table', 1),
(7, '2020_01_28_035245_create_images_table', 1),
(8, '2020_01_28_035638_create_videos_table', 1),
(9, '2020_01_28_035806_create_tags_table', 1),
(10, '2020_01_28_040435_create_posts_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` decimal(16,0) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_kk` int(11) DEFAULT 0,
  `kk_level` tinyint(2) NOT NULL DEFAULT 0,
  `id_rtm` varchar(30) DEFAULT NULL,
  `rtm_level` int(11) DEFAULT NULL,
  `sex` tinyint(4) UNSIGNED DEFAULT NULL,
  `tempatlahir` varchar(100) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `agama_id` int(1) DEFAULT NULL,
  `pendidikan_kk_id` int(1) DEFAULT NULL,
  `pendidikan_sedang_id` int(1) DEFAULT NULL,
  `pekerjaan_id` int(1) DEFAULT NULL,
  `status_kawin` tinyint(4) DEFAULT NULL,
  `warganegara_id` tinyint(4) NOT NULL DEFAULT 1,
  `dokumen_pasport` varchar(45) DEFAULT NULL,
  `dokumen_kitas` int(10) DEFAULT NULL,
  `ayah_nik` varchar(16) DEFAULT NULL,
  `ibu_nik` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `golongan_darah_id` int(11) DEFAULT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `alamat_sebelumnya` varchar(200) DEFAULT NULL,
  `alamat_sekarang` varchar(200) DEFAULT NULL,
  `status_dasar` tinyint(4) NOT NULL DEFAULT 1,
  `hamil` int(1) DEFAULT NULL,
  `cacat_id` int(11) DEFAULT NULL,
  `sakit_menahun_id` int(11) DEFAULT NULL,
  `akta_lahir` varchar(40) DEFAULT NULL,
  `akta_perkawinan` varchar(40) DEFAULT NULL,
  `tanggalperkawinan` date DEFAULT NULL,
  `akta_perceraian` varchar(40) DEFAULT NULL,
  `tanggalperceraian` date DEFAULT NULL,
  `cara_kb_id` tinyint(2) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `tanggal_akhir_paspor` date DEFAULT NULL,
  `no_kk_sebelumnya` varchar(30) DEFAULT NULL,
  `ktp_el` tinyint(4) DEFAULT NULL,
  `status_rekam` tinyint(4) DEFAULT NULL,
  `waktu_lahir` varchar(5) DEFAULT NULL,
  `tempat_dilahirkan` tinyint(2) DEFAULT NULL,
  `jenis_kelahiran` tinyint(2) DEFAULT NULL,
  `kelahiran_anak_ke` tinyint(2) DEFAULT NULL,
  `penolong_kelahiran` tinyint(2) DEFAULT NULL,
  `berat_lahir` smallint(6) DEFAULT NULL,
  `panjang_lahir` varchar(10) DEFAULT NULL,
  `tag_id_card` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `id_asuransi` tinyint(5) DEFAULT NULL,
  `no_asuransi` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id`, `nama`, `nik`, `user_id`, `id_kk`, `kk_level`, `id_rtm`, `rtm_level`, `sex`, `tempatlahir`, `tanggallahir`, `agama_id`, `pendidikan_kk_id`, `pendidikan_sedang_id`, `pekerjaan_id`, `status_kawin`, `warganegara_id`, `dokumen_pasport`, `dokumen_kitas`, `ayah_nik`, `ibu_nik`, `nama_ayah`, `nama_ibu`, `foto`, `golongan_darah_id`, `status`, `alamat_sebelumnya`, `alamat_sekarang`, `status_dasar`, `hamil`, `cacat_id`, `sakit_menahun_id`, `akta_lahir`, `akta_perkawinan`, `tanggalperkawinan`, `akta_perceraian`, `tanggalperceraian`, `cara_kb_id`, `telepon`, `tanggal_akhir_paspor`, `no_kk_sebelumnya`, `ktp_el`, `status_rekam`, `waktu_lahir`, `tempat_dilahirkan`, `jenis_kelahiran`, `kelahiran_anak_ke`, `penolong_kelahiran`, `berat_lahir`, `panjang_lahir`, `tag_id_card`, `created_at`, `created_by`, `updated_at`, `updated_by`, `id_asuransi`, `no_asuransi`) VALUES
(2, 'AHMAD ALLIF RIZKI', '5201140706966997', 0, 1, 4, '0', 0, 1, 'MANGSIT', '1995-06-07', 1, 1, 18, 1, 1, 1, '', 0, '', '', 'AHLUL', 'RUSDAH', 'team-1.jpg', 13, 1, '', '', 1, 0, 0, 0, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, 0, 0, '', NULL, '2019-05-28 15:45:28', 0, '2020-01-22 01:01:51', 1, NULL, NULL),
(59, 'MUHAMMAD WIRDA MAULANA IBRAHIM', '5201143112417056', 0, 23, 1, '0', 0, 1, 'SENGGIGI', '1940-12-31', 1, 1, 18, 9, 2, 1, NULL, NULL, '', '', 'AMAQ SUN -ALM-', 'INAQ SUN -ALM-', '', 13, 1, '', '', 1, NULL, NULL, 0, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, 0, 0, 0, 0, '', NULL, '2019-05-28 15:45:28', 0, '2019-05-28 15:45:28', 0, NULL, NULL),
(97, 'ULFA WIDIAWATI', '5201145203896994', 0, 0, 0, '0', 0, 2, 'JOHAR PELITA', '1988-03-12', 1, 5, 18, 88, 2, 1, NULL, NULL, '', '', 'ZAMHARIN', 'SITIYAH', '', 13, 1, '', '', 1, NULL, NULL, 0, '', '', NULL, '', NULL, NULL, NULL, NULL, '5201140211117003', 0, 0, '', 0, 0, 0, 0, 0, '', NULL, '2019-05-28 15:45:28', 0, '2020-01-07 09:42:29', 1, NULL, NULL),
(99, 'MUHAMMAD RIZAL SETIAWAN', '3329060810900002', 0, 0, 0, NULL, NULL, 1, 'BREBES', '2020-01-14', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cianjur', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-20 07:13:03', NULL, '2020-01-20 07:16:52', NULL, NULL, NULL),
(103, 'JAKA', '5201140706966997', 5, 0, 0, NULL, NULL, 1, 'BREBES', '2019-12-10', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-20 07:54:43', NULL, '2020-01-20 07:54:43', NULL, NULL, NULL),
(129, 'A', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'MANGSIT', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:05:31', NULL, '2020-01-23 09:05:31', NULL, NULL, NULL),
(130, 'B', '5201143112417060', NULL, 0, 0, NULL, NULL, NULL, 'SENGGIGI', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:05:31', NULL, '2020-01-23 09:05:31', NULL, NULL, NULL),
(131, 'C', '5201145203896990', NULL, 0, 0, NULL, NULL, NULL, 'JOHAR PELITA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:05:31', NULL, '2020-01-23 09:05:31', NULL, NULL, NULL),
(132, 'D', '3329060810900000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:05:31', NULL, '2020-01-23 09:05:31', NULL, NULL, NULL),
(133, 'E', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:05:31', NULL, '2020-01-23 09:05:31', NULL, NULL, NULL),
(134, 'A', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'MANGSIT', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:07:57', NULL, '2020-01-23 09:07:57', NULL, NULL, NULL),
(135, 'B', '5201143112417060', NULL, 0, 0, NULL, NULL, NULL, 'SENGGIGI', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:07:57', NULL, '2020-01-23 09:07:57', NULL, NULL, NULL),
(136, 'C', '5201145203896990', NULL, 0, 0, NULL, NULL, NULL, 'JOHAR PELITA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:07:57', NULL, '2020-01-23 09:07:57', NULL, NULL, NULL),
(137, 'D', '3329060810900000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:07:57', NULL, '2020-01-23 09:07:57', NULL, NULL, NULL),
(138, 'E', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:07:57', NULL, '2020-01-23 09:07:57', NULL, NULL, NULL),
(139, 'A', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'MANGSIT', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:09:18', NULL, '2020-01-23 09:09:18', NULL, NULL, NULL),
(140, 'B', '5201143112417060', NULL, 0, 0, NULL, NULL, NULL, 'SENGGIGI', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:09:18', NULL, '2020-01-23 09:09:18', NULL, NULL, NULL),
(141, 'C', '5201145203896990', NULL, 0, 0, NULL, NULL, NULL, 'JOHAR PELITA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:09:18', NULL, '2020-01-23 09:09:18', NULL, NULL, NULL),
(142, 'D', '3329060810900000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:09:18', NULL, '2020-01-23 09:09:18', NULL, NULL, NULL),
(143, 'E', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:09:18', NULL, '2020-01-23 09:09:18', NULL, NULL, NULL),
(144, 'A', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'MANGSIT', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:19:31', NULL, '2020-01-23 09:19:31', NULL, NULL, NULL),
(145, 'B', '5201143112417060', NULL, 0, 0, NULL, NULL, NULL, 'SENGGIGI', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:19:31', NULL, '2020-01-23 09:19:31', NULL, NULL, NULL),
(146, 'C', '5201145203896990', NULL, 0, 0, NULL, NULL, NULL, 'JOHAR PELITA', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:19:31', NULL, '2020-01-23 09:19:31', NULL, NULL, NULL),
(147, 'D', '3329060810900000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:19:31', NULL, '2020-01-23 09:19:31', NULL, NULL, NULL),
(148, 'E', '5201140706967000', NULL, 0, 0, NULL, NULL, NULL, 'BREBES', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-23 09:19:31', NULL, '2020-01-23 09:19:31', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_agama`
--

CREATE TABLE `penduduk_agama` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk_agama`
--

INSERT INTO `penduduk_agama` (`id`, `nama`) VALUES
(1, 'ISLAM'),
(2, 'KRISTEN'),
(3, 'KATHOLIK'),
(4, 'HINDU'),
(5, 'BUDHA'),
(6, 'KHONGHUCU'),
(7, 'Kepercayaan Terhadap Tuhan YME / Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_golongandarah`
--

CREATE TABLE `penduduk_golongandarah` (
  `id` int(11) NOT NULL,
  `nama` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penduduk_golongandarah`
--

INSERT INTO `penduduk_golongandarah` (`id`, `nama`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'AB'),
(4, 'O'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-'),
(9, 'AB+'),
(10, 'AB-'),
(11, 'O+'),
(12, 'O-'),
(13, 'TIDAK TAHU');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_jeniskelamin`
--

CREATE TABLE `penduduk_jeniskelamin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk_jeniskelamin`
--

INSERT INTO `penduduk_jeniskelamin` (`id`, `nama`) VALUES
(1, 'LAKI-LAKI'),
(2, 'PEREMPUAN');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_kawin`
--

CREATE TABLE `penduduk_kawin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk_kawin`
--

INSERT INTO `penduduk_kawin` (`id`, `nama`) VALUES
(1, 'BELUM KAWIN'),
(2, 'KAWIN'),
(3, 'CERAI HIDUP'),
(4, 'CERAI MATI');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_pekerjaan`
--

CREATE TABLE `penduduk_pekerjaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk_pekerjaan`
--

INSERT INTO `penduduk_pekerjaan` (`id`, `nama`) VALUES
(1, 'BELUM/TIDAK BEKERJA'),
(2, 'MENGURUS RUMAH TANGGA'),
(3, 'PELAJAR/MAHASISWA'),
(4, 'PENSIUNAN'),
(5, 'PEGAWAI NEGERI SIPIL (PNS)'),
(6, 'TENTARA NASIONAL INDONESIA (TNI)'),
(7, 'KEPOLISIAN RI (POLRI)'),
(8, 'PERDAGANGAN'),
(9, 'PETANI/PEKEBUN'),
(10, 'PETERNAK'),
(11, 'NELAYAN/PERIKANAN'),
(12, 'INDUSTRI'),
(13, 'KONSTRUKSI'),
(14, 'TRANSPORTASI'),
(15, 'KARYAWAN SWASTA'),
(16, 'KARYAWAN BUMN'),
(17, 'KARYAWAN BUMD'),
(18, 'KARYAWAN HONORER'),
(19, 'BURUH HARIAN LEPAS'),
(20, 'BURUH TANI/PERKEBUNAN'),
(21, 'BURUH NELAYAN/PERIKANAN'),
(22, 'BURUH PETERNAKAN'),
(23, 'PEMBANTU RUMAH TANGGA'),
(24, 'TUKANG CUKUR'),
(25, 'TUKANG LISTRIK'),
(26, 'TUKANG BATU'),
(27, 'TUKANG KAYU'),
(28, 'TUKANG SOL SEPATU'),
(29, 'TUKANG LAS/PANDAI BESI'),
(30, 'TUKANG JAHIT'),
(31, 'TUKANG GIGI'),
(32, 'PENATA RIAS'),
(33, 'PENATA BUSANA'),
(34, 'PENATA RAMBUT'),
(35, 'MEKANIK'),
(36, 'SENIMAN'),
(37, 'TABIB'),
(38, 'PARAJI'),
(39, 'PERANCANG BUSANA'),
(40, 'PENTERJEMAH'),
(41, 'IMAM MASJID'),
(42, 'PENDETA'),
(43, 'PASTOR'),
(44, 'WARTAWAN'),
(45, 'USTADZ/MUBALIGH'),
(46, 'JURU MASAK'),
(47, 'PROMOTOR ACARA'),
(48, 'ANGGOTA DPR-RI'),
(49, 'ANGGOTA DPD'),
(50, 'ANGGOTA BPK'),
(51, 'PRESIDEN'),
(52, 'WAKIL PRESIDEN'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI'),
(54, 'ANGGOTA KABINET KEMENTERIAN'),
(55, 'DUTA BESAR'),
(56, 'GUBERNUR'),
(57, 'WAKIL GUBERNUR'),
(58, 'BUPATI'),
(59, 'WAKIL BUPATI'),
(60, 'WALIKOTA'),
(61, 'WAKIL WALIKOTA'),
(62, 'ANGGOTA DPRD PROVINSI'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA'),
(64, 'DOSEN'),
(65, 'GURU'),
(66, 'PILOT'),
(67, 'PENGACARA'),
(68, 'NOTARIS'),
(69, 'ARSITEK'),
(70, 'AKUNTAN'),
(71, 'KONSULTAN'),
(72, 'DOKTER'),
(73, 'BIDAN'),
(74, 'PERAWAT'),
(75, 'APOTEKER'),
(76, 'PSIKIATER/PSIKOLOG'),
(77, 'PENYIAR TELEVISI'),
(78, 'PENYIAR RADIO'),
(79, 'PELAUT'),
(80, 'PENELITI'),
(81, 'SOPIR'),
(82, 'PIALANG'),
(83, 'PARANORMAL'),
(84, 'PEDAGANG'),
(85, 'PERANGKAT DESA'),
(86, 'KEPALA DESA'),
(87, 'BIARAWATI'),
(88, 'WIRASWASTA'),
(89, 'LAINNYA');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_pendidikan`
--

CREATE TABLE `penduduk_pendidikan` (
  `id` tinyint(3) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk_pendidikan`
--

INSERT INTO `penduduk_pendidikan` (`id`, `nama`) VALUES
(1, 'BELUM MASUK TK/KELOMPOK BERMAIN'),
(2, 'SEDANG TK/KELOMPOK BERMAIN'),
(3, 'TIDAK PERNAH SEKOLAH'),
(4, 'SEDANG SD/SEDERAJAT'),
(5, 'TIDAK TAMAT SD/SEDERAJAT'),
(6, 'SEDANG SLTP/SEDERAJAT'),
(7, 'SEDANG SLTA/SEDERAJAT'),
(8, 'SEDANG  D-1/SEDERAJAT'),
(9, 'SEDANG D-2/SEDERAJAT'),
(10, 'SEDANG D-3/SEDERAJAT'),
(11, 'SEDANG  S-1/SEDERAJAT'),
(12, 'SEDANG S-2/SEDERAJAT'),
(13, 'SEDANG S-3/SEDERAJAT'),
(14, 'SEDANG SLB A/SEDERAJAT'),
(15, 'SEDANG SLB B/SEDERAJAT'),
(16, 'SEDANG SLB C/SEDERAJAT'),
(17, 'TIDAK DAPAT MEMBACA DAN MENULIS HURUF LATIN/ARAB'),
(18, 'TIDAK SEDANG SEKOLAH');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_status`
--

CREATE TABLE `penduduk_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penduduk_status`
--

INSERT INTO `penduduk_status` (`id`, `nama`) VALUES
(1, 'TETAP'),
(2, 'TIDAK AKTIF'),
(3, 'PENDATANG');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_statusktp`
--

CREATE TABLE `penduduk_statusktp` (
  `id` tinyint(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ktp_el` tinyint(4) NOT NULL,
  `status_rekam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk_statusktp`
--

INSERT INTO `penduduk_statusktp` (`id`, `nama`, `ktp_el`, `status_rekam`) VALUES
(1, 'BELUM REKAM', 1, '2'),
(2, 'SUDAH REKAM', 2, '3'),
(3, 'CARD PRINTED', 2, '4'),
(4, 'PRINT READY RECORD', 2, '5'),
(5, 'CARD SHIPPED', 2, '6'),
(6, 'SENT FOR CARD PRINTING', 2, '7'),
(7, 'CARD ISSUED', 2, '8');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_umur`
--

CREATE TABLE `penduduk_umur` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `dari` int(11) DEFAULT NULL,
  `sampai` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penduduk_umur`
--

INSERT INTO `penduduk_umur` (`id`, `nama`, `dari`, `sampai`, `status`) VALUES
(1, 'BALITA', 0, 5, 0),
(2, 'ANAK-ANAK', 6, 17, 0),
(3, 'DEWASA', 18, 30, 0),
(4, 'TUA', 31, 120, 0),
(6, 'Di bawah 1 Tahun', 0, 1, 1),
(9, '2 s/d 4 Tahun', 2, 4, 1),
(12, '5 s/d 9 Tahun', 5, 9, 1),
(13, '10 s/d 14 Tahun', 10, 14, 1),
(14, '15 s/d 19 Tahun', 15, 19, 1),
(15, '20 s/d 24 Tahun', 20, 24, 1),
(16, '25 s/d 29 Tahun', 25, 29, 1),
(17, '30 s/d 34 Tahun', 30, 34, 1),
(18, '35 s/d 39 Tahun ', 35, 39, 1),
(19, '40 s/d 44 Tahun', 40, 44, 1),
(20, '45 s/d 49 Tahun', 45, 49, 1),
(21, '50 s/d 54 Tahun', 50, 54, 1),
(22, '55 s/d 59 Tahun', 55, 59, 1),
(23, '60 s/d 64 Tahun', 60, 64, 1),
(24, '65 s/d 69 Tahun', 65, 69, 1),
(25, '70 s/d 74 Tahun', 70, 74, 1),
(26, 'Di atas 75 Tahun', 75, 99999, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_warganegara`
--

CREATE TABLE `penduduk_warganegara` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penduduk_warganegara`
--

INSERT INTO `penduduk_warganegara` (`id`, `nama`) VALUES
(1, 'WNI'),
(2, 'WNA'),
(3, 'DUA KEWARGANEGARAAN');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `post_type`, `author_id`, `category_id`, `slug`, `meta_data`, `created_at`, `updated_at`) VALUES
(1, 'Post Pertama', 'Isi', 'text', 1, 1, 'sample', NULL, '2020-01-14 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'desa', NULL, NULL),
(2, 'sidesra', '2020-01-28 05:37:36', '2020-01-28 05:37:36'),
(3, 'pelayanan', '2020-01-28 05:41:19', '2020-01-28 05:41:19'),
(4, 'info desa', '2020-01-28 05:41:27', '2020-01-28 05:41:27'),
(5, 'gayam', '2020-01-28 05:41:35', '2020-01-28 05:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `liked_posts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `disliked_posts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `favourite_posts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `favourite_categories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar1.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `user_type`, `liked_posts`, `disliked_posts`, `favourite_posts`, `favourite_categories`, `preferences`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Cooper Ondricka Jr.', 'kovacek.elyse@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'febcd4a59d8c6c63489679fdf3b434d413cfe9187b9824e2c7352d791bf5', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?50934', '150kU5ksUvfDBIeNzArJUrqEGKHbPHnvpIK0Qxum87t0P9tK6OJFVPxRaeF6', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(2, 'Lorine Carroll', 'ktowne@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '489889829995cb5a857fc5fd922ed4851ecc18cb8b3af6f9833dbf66cd5c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?75445', 'SCAQhaNBrm', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(3, 'Chet Batz', 'turcotte.clifton@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ed7e338e20612e58e2b8e1edeaabb29845131db5ae7e2b148d787c26a8a6', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?86326', 'VcYeYS1JEE', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(4, 'Dr. Jordane Wilderman', 'elna.bartoletti@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b547ca3d0773b2a863f2f09bdfd34f086bcadd9a585127e9d9cd085dff2b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?55230', 'bEi6x9TLrX', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(5, 'Imelda Ernser I', 'fmills@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '07efa69ac222413da70b9f427371a9d41cddc6013657cd7bf7de88903af0', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?87290', 'KFDgLgV3Iu', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(6, 'Laverna Mosciski II', 'bkulas@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9c5507a0638d19a34caf442185b5e7f37a1b0ffddc07ff86b94e4fa66869', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?53365', 'eFTi1JWkTy', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(7, 'Bell Mertz', 'kelvin07@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e93e44eda525d620a56c5379e6dfc9d59ca10550f76759f63bbae13b73b8', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?45779', 'Ur2lgyUp4C', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(8, 'Nikki Streich II', 'jackie05@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c8bc89865340c3f3abd7ce7b34980fab4c4cb70dc0344f3cf810efd48d6a', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?48261', 'ha5wjPtwmk', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(9, 'Christina Metz', 'block.jan@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '31e506cb8d2802afc687256fac5d953c2c9c31e9bff51869d608d3395620', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?18139', 'U6bGgZDjzI', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(10, 'Marisol Padberg', 'armando.ondricka@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '27dd984f4eadc17069daaf58c0961561df9c4129694e89ce5d5d32cefc8e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?42473', 'v6L9usbUcK', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(11, 'Enrique Wiegand', 'deckow.roxanne@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd8060aa5d56a72cb9dba26949cc4a2d2ad3b3da42b29b4a517d257537e93', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?40126', 'GyVTN1vbwl', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(12, 'Deondre Dach', 'blanche39@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '42ccfbc7d0f99261e021d1a0173fde4183a79a719d51357c63b5855c5324', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?34750', 'qQpU8CKB4k', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(13, 'Uriel Wintheiser III', 'neva56@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a6ef5a15ef913ce5fe6367ceebcd22bceea4e60671072867844d6ef00ef6', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?50968', 'rO1dTnCHXA', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(14, 'Chester Hoeger', 'winston85@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8b1e94f35597f993bffad91df872ae11b4d370d31319d09e717cf6c083b9', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?16326', 'VWgZCgWBkv', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(15, 'Francisco Jerde Jr.', 'ukuhlman@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '777fbc186e214e63914577b92c39d6d30c32332168f99d109b44357876c1', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?54825', 'OJR4fXHvKn', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(16, 'Trevor Wiegand', 'bbode@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7fa93b6fb475d3da046934b3ce6dfc096184c8e7a755075efcebb6da5131', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?11505', '4H2JQoaEON', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(17, 'Mohamed Hansen', 'tkohler@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1fc3cf7529a4f1398c9ac8fc8fcc629bbf2e5ce24ed984e0fddb08d217f2', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?16842', '4XNK5OrBc1', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(18, 'Lulu Predovic', 'lhegmann@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '30ff9b459936ac3585a7b8e146f8ade048ce3616a34977c755fd788bb5fb', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?84470', 'gOrnC9zwIJ', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(19, 'Jazmin Lindgren', 'gislason.grover@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '482a7593062f8e385d7743e956d7259db6b3106e5fcf196823bea1c996d2', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?18516', 'IvKtWdaWUu', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(20, 'Mr. Blaise Dooley', 'dallin.waters@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a81f050f5895f46cb186c12b54bf594e997504f32e26b176297b9db64fba', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?33904', 'nBv7rAowOr', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(21, 'Zachariah Kub IV', 'glenna70@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '33d96944d196a2e9bcba8b1400cd0e8e322cbcd763c47566a598a05a42f3', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?13958', 'bvWaKKRs5E', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(22, 'Elbert Price Jr.', 'isidro89@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0a1c5b4c235554d91174ceeb576f6d75bcc064d18bbf33f06206cb7bc8c8', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?82238', 'FjiBYSseZp', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(23, 'Keegan Smith', 'maynard.damore@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a1a82d10cfb75dbc72e62865e740e81d855215eb063a3633700395e635d1', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?83367', 'Qy408n79n0', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(24, 'Ms. Clementina Kertzmann DVM', 'gia.goodwin@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9e08f225e3bcfe9cd24c6f97ed835b6cf31ae349869d2e6cc44d3525b350', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?59356', 'cvgu5Hia5Z', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(25, 'Carolanne Kuhlman', 'justen.strosin@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aa24d75fb97d3eef3e8a01ed31cdaa56f391170745174e80ad0ce9b2f6b7', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?40593', 'gRnV6ZZI7X', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(26, 'Miss Daniela Tillman', 'quinn.ledner@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bc0b6603c76615edd8414bdf82a88ec0d818f659695545c794398cbab49b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?50939', 'RDYfNEXS36', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(27, 'Miss Teresa Kerluke DVM', 'zboncak.emanuel@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8f596eed71908c9984cf1b5ceefed43d9fd3f8e17025393792cd72356c2b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?89927', 'QDDsCBDTO9', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(28, 'Daniela Crona', 'janelle45@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4c8a4e014fde05c73370963fee3ec9af53ad30401dbf81676df75c890df4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?68494', 'UIDM33NcWQ', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(29, 'Mrs. Greta Collins', 'lambert62@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b4e717940ce9ab989c5844ec441665baf8cec1615479f3ed31604aa70f95', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?20158', 'UbTiFwGYgc', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(30, 'Aliya Padberg', 'nicholas.sauer@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2c53f4cc3b9bbc86e6425fc7896138fa0ea478c9564f82adcea144afc9a4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?78463', 'xptYrNAU5O', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(31, 'Maude Herzog', 'bartoletti.dejah@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '74edc129c4cff5abd194b804b089a3b58970eec8edffb93ca8857a636dc4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?43062', 'qV9ic2KmJy', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(32, 'Katlynn Wisoky', 'feest.muhammad@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fcf36c18f3f255be78d17f0585c2994d14634e8986be55c78eeef962d08b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?43454', 'b7C3j364Ry', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(33, 'Prof. Lauriane Casper', 'cjohnson@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1a431fad0ef770915f12d73be3f0955c95eea19de51d4560fc6be376c936', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?92316', 'wkYCOyP66h', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(34, 'Mina Abernathy Jr.', 'adrienne.fahey@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8f59b765fef662f26a27870c27708924272f631075c9f1078f0e83423a2b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?59854', 'qNiD6GRAB6', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(35, 'Alison Lang', 'weissnat.leatha@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b489432cee0629e9ae1f551fefa68578613835ca4b4a9484751363f572d0', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?98720', 'boe8qkSguq', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(36, 'Angelita Hauck', 'bogisich.myrna@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '30c529f074435a261d07c6fc4e4f02de17f87ea83edb926a44fad527c8cc', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?70790', 'xJgYLcAfvl', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(37, 'Hobart Heidenreich PhD', 'easton65@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2bd588671950f302f3c1b653a0fe728e245f62bef06dc2331e4513fd73e0', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?83850', 'KIwg3tsGM7', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(38, 'Jean Schuppe III', 'koss.cierra@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '987e0ff4d46ce840c1a8aefb421d6dfdeec8ffeb728339f59a214c44d9fa', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?93263', 'FwIqAGF3VJ', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(39, 'Alexandre Murray', 'esperanza.mcdermott@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f945a6e676a0b1b76d1b2add7bfe0b663f9a72e896e7e4dfac35c73a0eb0', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?13444', 'DKwWzqMt2b', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(40, 'Haylee Cummings', 'walsh.adele@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2c8ef17ed845c8ee7f726d65f3473715aa1e2e2353b5fdeeb6c2842cd1d1', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?78624', 'rqDyi4Nb9j', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(41, 'Prof. Mathew Marquardt I', 'sadie84@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a4fdf07e2304f368f111728bd3297f394adf3c3d74af12fe29ec0f6bf7ba', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?68267', 'ip7J4lJpb8', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(42, 'Ned Heller PhD', 'nedra.jaskolski@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '925061d5c781858975e005e086cf3117ae4f9ff0c0dcbeb2b3f651b7f0fb', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?88224', 'bpA2NhOfqM', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(43, 'Zachery Kutch', 'curt93@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71d96fdf63670b18b9218ff9944384da327408e12a9f5209ea552ec8733f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?44913', 'TsUfQFfhZx', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(44, 'Prof. Meta Cummerata PhD', 'ardella70@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eee412bdb6d648be3a1494f1c523b56b91b3eb574649bd0d1ee75f670c66', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?76439', 't9Q1pU0lUr', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(45, 'Lelia Ebert', 'bthiel@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0b5b70fd105eaca0ecca7033010da79926cd00f5afce385b3e2bc443307f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?84301', '3y4yKsWArp', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(46, 'Mrs. Mckayla Raynor III', 'norma25@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '69bdba27a8d4f372e2a4f6ee3f82f3fb7c04a09357050569ec2444f0cd32', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?76169', 'mxnIId8DLG', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(47, 'Spencer Huels', 'jane.bednar@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '40f10dbbc10885d6265693e0ae08dc6aa700ca41c299493a34905e0b274c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?60042', '5A62vAe8l5', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(48, 'Janelle Greenfelder', 'bogan.ivah@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3573e9032fb5c450cdd4d4ba62dab379707de0a77c99f85a4e804162b172', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?56983', 'xjcWWDPGIK', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(49, 'Dr. Doug Ferry V', 'oda20@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '54de8e2283df5b95d2ac18072708b7bd47ac26eab261af6b9a77368ef249', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?47724', 'N6uYawSUFC', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(50, 'Irving Beer', 'mireya42@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f5aa0fb1ecc8aaca3cd288bc7612b059418005080dce16592b6d3bd8575d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?55309', '44mNvn7TUQ', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(51, 'Jayce Nikolaus', 'rempel.bridget@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '68e4ea7c025286ed0884d65f210afffbb3d5f33420ea2e76176417860a2f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?46812', 'sDe6vcB4he', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(52, 'Mr. Reynold Rowe', 'leonardo26@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e128e9d2734f7e091046bab1910db0f205ef43649d4eeb8f1f73c9a625f3', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?88359', 'OxtfJrs2zf', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(53, 'Madonna Schmitt', 'lorena.jakubowski@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '46137199b13cc908f796a161eb5c13977dd52188a5ffd654c4ae9b90eb01', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?71732', 'UigMdzWfB0', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(54, 'Prof. Reid Cremin MD', 'swest@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ae708f9ec8b833de13b57566d1ccbebf8986cd6290f6c35a26442d28b0c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?13974', 'Dbz62c5jWJ', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(55, 'Orval Schaefer Jr.', 'lstoltenberg@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '503e2a3a039b3e1bd75a449e36d346db2a6d2d3f8d281bf65e781ce72023', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?76698', 'Kp1sq6g8Qv', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(56, 'Benny Goyette', 'janae81@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6dd85e95206828d32ce9385d266479936cdb6aa3dd1e76700c6db4360f14', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?92943', 'dPa87UQnJV', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(57, 'Eileen Pacocha PhD', 'schneider.adrien@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '90be718816b637fa14fd1cf50a012348b6ec0dbb6023d371dc4811596292', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?84330', '2VM51olai5', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(58, 'Ellie Sawayn Jr.', 'lulu.white@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '793e3b14820540b243c70d3e1ba5685c9effed7529a5bee03da34cec30cf', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?71649', 'pQfBFL5LPr', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(59, 'Luella Stracke', 'ian76@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e9d5391fc51384ca235f0ad602569991986d9e092702c999cbb5f6a11861', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?37457', 'uQXZC6H6UF', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(60, 'Bobbie West Sr.', 'callie.stokes@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b87982e8af86803ac5a1337708207cccc9a5ae84cfb409a3d35735110f8d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?80862', 'ND809ikaZn', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(61, 'Roy Abbott', 'rdamore@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9f2d6245c276e196484d885749e519365abc2c496c9b6402ab330281433c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?12950', '3xeUTqfOBG', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(62, 'Gus Breitenberg DVM', 'erika49@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c11e0b283b0c708311fc5b0267db391558c7e8cc31e7dda1e1f750e46981', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?24792', '1q1BgY5J90', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(63, 'Adalberto Armstrong', 'torp.freddie@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '939c2134cec0d90416cb7757a8d4a37412b3e9ca88a8c156bb8e0b865334', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?23681', 'AYScafvQgL', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(64, 'Dr. Otilia Rolfson', 'labadie.ocie@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6783512803f97c930aef6f50a024db95113c389ca065b7b49674a124f410', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?39342', 'k9sKCo3RJb', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(65, 'Dr. Scottie Reichel IV', 'kkoelpin@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c314696a8192d4050d0a285658c66972709b1c4dcea17f623b872cab9c77', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?41591', 'oxAz1ryaNC', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(66, 'Bertram Ondricka', 'kiara37@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '270d80eea70b252ade6eeb51e6856d9439b51f559c6e25e4ceb9704dc0da', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?84044', 'Vin78z6eoT', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(67, 'Macie Gottlieb', 'bemard@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '94ac20262a72c391942ca014a9a72785f13fe61825fedb983d7a16d471f2', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?45782', 'ROW7ovNE9X', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(68, 'Lorine Fritsch', 'louvenia.lesch@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '109f4652c128f56d804291290f4940a70b74a854a4df4b884814672feb80', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?39421', 'pTpuE0XFNA', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(69, 'Jairo Fahey', 'ziemann.leatha@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '96c2b788565355612d2f5b6d7617d406a6aeb1527ce0aae03aa044d0098a', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?83711', 'hhtWMxTFDK', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(70, 'Maverick Purdy', 'rylan.smitham@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'acf226d06aa508007c219b4360b759b71a2013d4f5c8db77ca39c60de70c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?69482', 'pdzvoB8kHZ', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(71, 'Craig Aufderhar', 'acorkery@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b4c0ffebdb517fe96316fd08e0e2df11a49a308931b61a6b61aeb697f64c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?59937', 'LwzppzjJNL', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(72, 'Raheem Weimann', 'gerardo97@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f3df4083180c9ea272af02a780d308b234b57e76b0fb23fd8e726e465fcc', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?36536', 'P0fyvOzeBm', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(73, 'Ms. Burnice Daugherty', 'lennie60@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '80aba16b43be26edb7f6420d6a3f59d78a4ba0d20da95044cc31f81417f9', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?29281', 'HoFvrY5VSC', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(74, 'Ms. Dayna Mills Jr.', 'collins.jewel@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3d4cdfbd209364a517273d4ef895247c41e92e74281bfc45f2bed4cedd4f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?15140', 'MAd8bbTpi8', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(75, 'Niko Terry IV', 'vivianne.langworth@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '44278e33d9ace4939540eb101f3baecf2c9fd2c83697768dee947438ea28', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?66877', 'KWAFtg3FRz', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(76, 'Cassidy Jakubowski', 'hester93@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bb9208be9475c8f2621d2d07be76c6f36a3dfd15a7ba9bd97c9d96173a93', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?63606', 'dcJ1fn0Rcp', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(77, 'Erwin Ankunding', 'chad.walsh@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '12a9e18de78e5285c060e20716605d003af9734bf465074241bbc922b4f9', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?52411', 'jwmgjQGrpd', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(78, 'Dr. Stevie McCullough', 'oswaldo.rau@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aaefa9c66cbc5c5ae82f3b21ad0d9c74bcb61987717eb4ca7dda7facf424', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?44636', 'ftaeqmBoIG', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(79, 'Wyman Johnston', 'leonel80@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5ddcaa34339e834789d339b2b7bbc814c16b74cdb63a04c3f746f703ca06', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?70008', 'UfLanumyVx', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(80, 'Calista Bergnaum', 'parisian.maggie@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '60be1ed651f455a0f18215869bd7fa8415cdd1a35f4f88e6ec422580a6ae', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?38814', 'PuLU18wZoE', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(81, 'Elinor Swaniawski', 'hazle08@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7246d2476a07587df7351318ccb589d18d7d4882ef06ae4fab2b45889b85', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?65777', 'mcTpUL2e4F', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(82, 'Ms. Kira Muller', 'hirthe.antonia@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9f870fb4779dd297f874b94cb03ba2a17ea53e624ceeb7ca480ffd3e397c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?50217', 'gQJHIWpWOP', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(83, 'Antonietta Kutch', 'thuel@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c7487ac729aaf6c082e1dc2b5b26638dc5c1825d1df6fd79be4ea1fb85e6', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?54149', 'lHK0cGAMxL', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(84, 'Kari Spinka', 'aniya77@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7f1148970106276bbc016f089e23d74fe3b30eddf6bfae2b105a27b8f4af', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?71604', 'XcNWmvCwJd', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(85, 'Reina Beahan', 'ross43@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '30e9aaeadb50beae77b9b2bc603a071989e618803bf3391533f4accd5653', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?83802', 'z1YG9TnU9V', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(86, 'Miss Winnifred Paucek Sr.', 'edmund.dach@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0781939ffa4380d039110fe409c0c92a28f775ea96d367166a89a35720ea', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?54078', 'lo3IUFx4MU', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(87, 'Dr. Rosendo O\'Kon II', 'corwin.jayson@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f99f6877db3a633202390b605a71a9a0b8710c4119cd88c72f81165f11c4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?81795', 'Yuij4buT0m', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(88, 'Fletcher Borer', 'gutmann.freida@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f1d740d53b262e636504686ab358c1b646070067e7ec9780f60a380b571b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?96212', 'wKqe7EVLrH', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(89, 'Prof. Antonietta Brekke', 'garland48@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '548335a5e42c0e4cce8b1a9dc6fe4a64115aa5fa0f44ca54168eb85b2edc', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?60150', 'JvKSEXsYHp', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(90, 'Sabina Ryan MD', 'klocko.vicenta@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c592742667d49d1564a496807f202b2412f18e3ca1dfdcc7cfcab615e6f5', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?71755', 'zcZdpmIjlh', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(91, 'Jacinto Senger', 'gullrich@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e7f809032e6368be2dcd4362bc1c07ef0e62f07ec3f26c2d429720860aa6', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?97172', 'HcCmTzuitY', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(92, 'Jeanette Blanda', 'kailyn.funk@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a3c689df20ecf266227c2a2077709ec4a26372be90e1eb10e26b0f0ae7c1', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?21109', 'mBgXNhp7Yu', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(93, 'Laverne Kirlin', 'lola.harris@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5a4d77f8475ca2f4036bd70ea1815b05479c62de87955898d051919f7bdb', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?99935', 'q91HakOOiR', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(94, 'Wilton King MD', 'orlo54@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4dd5ccdb4d2c24cbba8bd4f30428548262d87faa5dfd80430f7bf60f78ae', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?88884', 'gIpD6JzBgc', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(95, 'Laron Ryan', 'hbechtelar@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '68495d994ef5d897e95e9abdb52eca982632d1433a99ce7f961bb72b3d49', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?79083', 'z1y2KAds6W', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(96, 'Prof. Orland Lehner', 'mia.kozey@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b9104673506d8de388f0caf6e8e3d3e7cedd5098e5cd53ec3d87c0edafff', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?54907', 'QZBW8i8tI1', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(97, 'Arvid Oberbrunner Sr.', 'leilani.kiehn@example.com', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8c7d7e915a0947d1c537c59df1e58c40d90db22dfdb057d1827f21482c90', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?80283', 'qPH9qQJTdZ', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(98, 'Cynthia Stoltenberg', 'dan.wyman@example.net', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '75a7f06383578b1d7b39bed4ba04abeb907591708ddb2a42bef26c8fccb4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?28956', 'thn4Tn3zVf', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(99, 'Otis Howell', 'kurtis77@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c7355b86e26445d365898694c5261ebb14572f3402743ac9a44b1db36e3a', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?88580', 'I7Og4GUdRB', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(100, 'Mr. Raoul Hammes Sr.', 'collins.monte@example.org', '2020-01-27 22:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '02a975119b3aca986e80027ecd40254ad77cebbc511de835260a75a7c59e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?46722', 'SvU7TF2upv', '2020-01-27 22:29:51', '2020-01-27 22:29:51'),
(101, 'Dennis Cummings MD', 'taya01@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '38496d6619d6bc05770ff3a9991c41e01a18974b96bc98602124568cc276', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?98370', 'GB6GZw1jXg', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(102, 'Ressie Hagenes', 'jeffrey95@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '20fc858b2473ada6708b65e28a9de0410f30c14b630f1515e6fd52a22eaf', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?25151', 'NKAWoTFzgd', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(103, 'Ms. Jolie O\'Hara Jr.', 'amiya.glover@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '047a480e1219dc3ea7794945d3d3fd9587985c473f4b75d0dd552e57ed0f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?72820', 'DqzJiFQwbV', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(104, 'Ephraim Wisozk', 'kamille.lebsack@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ef59f451b51d4d1dcd7aea23170de39217a63b94eead0fbf3259d42f6b99', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?67150', 'NSgHhSplu4', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(105, 'Mrs. Alverta Ortiz', 'dale58@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b82b3965ec3b5a62c4c99148c59f3cc8212bd3f9fe11f8e7efa0e904225d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?93341', 'ift1lOQFHS', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(106, 'Valentin Koelpin', 'hweissnat@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '728a150479f3da1c06f2fad88678d0fbe6352988a2504d0f756ffc96c61b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?34318', '8dzFDG71Jv', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(107, 'Dane Zulauf', 'bernardo.little@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2b5cf7347531eba1b6220bd92d4c8584ecf51c097e708e43ebae4f18603d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?77838', 'u9gYUFDyUH', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(108, 'Johanna Conn', 'breanna.emard@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2a78ce27e21568e47f862eedca62304e8a7641a15faa6b7a9ada3604b51e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?70390', '0gbARppEQI', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(109, 'Ms. Frieda Dare III', 'alexie15@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f519a3246cb15bca96b7074ae622b3ff590fe7775193f8d534fe907441ad', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?16550', 'iWr6I5jlZa', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(110, 'Arnoldo Russel', 'keeling.nia@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c238f433eafdb16e12866eb0dfe5eb8e033b2aff939bf2a871328f8e1c4f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?66801', 'PLnwNokTjc', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(111, 'Grayson Miller IV', 'vicente.bahringer@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '096b3f72e922eb17fa9e3bcddaf8d9fcdf7818fcdf42aa7514657eeb12d9', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?77059', '9e001hvuo8', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(112, 'Judah Kris', 'paxton44@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '28b4d0372a991f88f6c4de0205ef1ebf36d1265e4a48b8fba40a8fdb172e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?35139', 'uQng6f6Bnt', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(113, 'Dashawn Luettgen', 'yemard@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '634e9b4f1556776209298b82036a4df95805c96bbb4f705796e999d63fda', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?40013', 'FbRE3Geago', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(114, 'Rosemarie Haag', 'nettie98@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '391f8dcd79145717ddf8728cd92accc1706403d6e09f2528fa879ce7bc39', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?71166', 'ueNtxIKzFz', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(115, 'Miss Kelli Kling', 'gerlach.leila@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '05d03a91964a312dffc98ec7409f0eba8af76c0ea1ad9f38dc1b1ccaa4a4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?33797', 'q8unWCJDwP', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(116, 'Arno Beer', 'obrown@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c25c153a3f6d0cbd57774440cea66bbbee32628ff422dd7c6c86047a12a4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?34766', 'YJjOsIhIYV', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(117, 'Prof. Lennie Kling', 'mitchell.mona@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3fb6b0b9227aff51c2ab434d09c548fe93208937b1eb08bebb75b3cebdab', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?89883', 'lysh9G2Duk', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(118, 'Dr. Granville Langosh I', 'stiedemann.ernestine@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '74f2a0e9b95afed59eb12fbe87fa9a8c69a2edadbc1a01bb8db9869e4e5e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?48356', 'he4ZJ4H4Xr', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(119, 'Erin Heaney Sr.', 'heather.johnston@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '11f16f5ae0f694b55605c534e06d5e65d93ec96fcf50d777ef4cabbe4bc1', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?98868', 'xF1xUK7qaA', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(120, 'Chauncey Dach', 'melody63@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd2d227b4bec8fd3055d9760bc6896c12c0aeb4b9d64e416738d97562a015', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?60041', 'aQic4NaQWs', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(121, 'Camden Deckow', 'rahsaan72@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a02d903b8b9da869a0d7fe6f70faa16f38f4209eca51d24b9b533434e57a', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?89481', 'veqQmREQLz', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(122, 'Jed Kreiger', 'koch.tess@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6bc46894e3e89f30709822e405f6f67745e6e2b9b561453cf3aa8967b92a', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?83678', '5EToJS2nxw', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(123, 'Matilde Lynch Jr.', 'wbauch@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '97d5406ff155ef8887deea99da6d76afd9757a183b698a7b4b72aab166bd', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?49798', 'YHEWHIDWhD', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(124, 'Elisabeth Yundt', 'cnolan@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '55f8d86f57668fca3f3edb9cec89242c00e65c3876458a7e147171e3c288', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?55667', 'NR85IhMhKk', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(125, 'Dr. Jeromy Bernhard', 'veronica.nader@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd4597f04807e77395a8ad1b5425fa07d2eb95a6aa8992678f8319a8ce251', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?92245', '0UW2kgVoyP', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(126, 'Dr. Margarete Bode', 'spencer.isabella@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a0b628fc7689bf69c1a130fc04e15a43d98a543f5d93ac88edc4d5df4983', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?36026', '3v7Bq7sXTX', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(127, 'Miss Marilyne Sporer MD', 'hayes.walton@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '91ca13d3a89ac6d97d4c6cccf37f444d2a83655ab3d1185d0b0a364cbf38', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?33186', 'VdeVqrFkXN', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(128, 'Austen Schultz', 'eprosacco@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5844905806a8abec0ba8713510698cb74192b74c8f211d53acec76ae3a66', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?69080', 'zsA8DyGY62', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(129, 'Tracey Baumbach MD', 'saige.schaden@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2b025858d73031facd9d3439d7887309af35f5fffa3e648307903c9179d5', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?83216', 'b8L49kVBJZ', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(130, 'Prof. Vance Von', 'udeckow@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9871dd8e46b7d19242659efe745b25ed16cfe6399c93a5d039ee9799647e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?94348', 'JONbNdHrEg', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(131, 'Dr. Johnathon Botsford', 'hannah.mosciski@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4a8e8546ed0cf7b0b22a75835b5a8a57bfede09543fecf45a05f546f0892', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?76173', 'UX5GWRKuFt', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(132, 'Emie Balistreri', 'sawayn.brannon@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fdffd7350f3079932715c43b7a8e9cb75637b6eec932cf4804493dad6b1c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?19856', 'T2obUuxC7s', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(133, 'Wava Wisoky', 'dane81@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b60dc6c97f8ca1111e118a8067df2c96a18f4c62ed907077b584afcac958', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?25086', 'aQIaC2NdGe', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(134, 'Ardella Baumbach', 'jast.shanna@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bc64044ece556eea8c99b5657d8db91a6845838239981510799efa9119ce', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?91553', 'vSIFfg43HO', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(135, 'Aida Stiedemann Sr.', 'vveum@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e718772e429cbb10d88dd84a44633a85782f199d0950e10e89e45440c8a5', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?86884', 'q0eB6dubdv', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(136, 'Mr. Ulises Kautzer MD', 'gryan@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c98b6e8d37e154cf9d31c1dfb95737eb46a9752900e1f074a7b5848b2827', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?23228', 'TPVLjlE6kW', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(137, 'Kaelyn Crooks', 'molly97@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'da825800691851313cb7d2f854d084943d85dd1ab06904b74da07116329e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?91190', 'PWvBKDg2HY', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(138, 'Miss Freida Gleason', 'hamill.tyler@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '64ee9d61ae54be352a901698c232023cf4815a8f14542c2d3c462339c4bb', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?26765', 'jFR10o5WVj', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(139, 'Melody King', 'terence.treutel@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '56cc07675f85adbafffc2a3fcada011b3c227430da5bc06adc61f9e2fd3b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?61427', 'oXLPLWS2hd', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(140, 'Dr. Virgie Klocko DDS', 'brice29@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd543aab850780114d1455a028a309c96e6ff530c92fbf71120b70acb0c6b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?49832', 'IRM0IZi0x2', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(141, 'Novella Stoltenberg MD', 'gusikowski.charity@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6a76138d845b2fa74aee6a08b433dd665a04387d737e336e6c5cf072833d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?80484', 'vL1jUFwE93', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(142, 'Ivy Kihn', 'jbernier@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '320a7e6eeb4fd2593472862a67cc534f98cd7a24d6c945b86432620e0f45', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?27131', 'Z64NDI6xas', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(143, 'Cindy Schmitt', 'bruen.andrew@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9bd8772b1270e6b1c97749ab1390ca28a956422066a989c29dbb6e664066', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?51824', 'IbatNcAJLJ', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(144, 'Dr. Jacey Grady', 'stillman@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ecb2fb2720b45c26c9215b2957dd76e7dcdcb6acc9ac2fa3df1c143457eb', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?25736', 'P8VNVrFkxe', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(145, 'Mrs. Clarabelle Huel', 'velda59@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '40337b7e80f808d02aa481b527fd7927fcf33b548744848290f64210db78', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?87860', '6YJJGWgy9x', '2020-01-27 23:27:31', '2020-01-27 23:27:31');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `user_type`, `liked_posts`, `disliked_posts`, `favourite_posts`, `favourite_categories`, `preferences`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(146, 'Kayley Shanahan', 'payton14@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '43045fa08d1d305b0322fbcf65166093cf0cb5588ec9d6ef7657ab6a029b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?20721', 'H0IXfIbORh', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(147, 'Davion Berge', 'major26@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8fdf7debbe0c5316a6708acdb81040296df5cf81345e26355b50b0638f3b', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?87405', '2j9eqOyWEE', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(148, 'Miss Katelyn Connelly IV', 'zemlak.angel@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b30766233592bb7c628b52e396c9496136afacc1be392a7a425fa347506f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?72139', 'QkKEzIgXHa', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(149, 'Miss Alvena Mayert', 'esther65@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd292ccbd93d15e6952a4ae82b45711a10c106f28a972cfd0eb592cc55a81', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?46808', 'wK1rOo0De0', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(150, 'Dr. Ola Hane', 'ekovacek@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b11956dbd667272160cd5b8a398f986ab48bea275a9fdd2c4140e80e18a8', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?51740', 'idq0NIGvl9', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(151, 'Mr. Fernando Conroy III', 'bullrich@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aff51b323c77f0f3359edf131fc97d3d21ecb6c0ffb96516c192ff825729', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?67796', 'V6rbyCSdev', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(152, 'Matilde Anderson', 'margarete.terry@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '471519b4608009a9e650f1d88fbefa66b1a614b2cda56d9d1e3b69867ad5', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?50183', 'yToQ4ON7KO', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(153, 'Elaina Quigley', 'jasper.rosenbaum@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4aaf11524a7434cc02b13e8bead713559fba5540e8e7eb3ec8886075d900', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?38610', '0sYXH92aD5', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(154, 'Prof. Cheyenne Dooley II', 'afranecki@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e3fcf0a09d2e53b975ecf8b6a9e9f318524f7be98f1b806251a3be60c425', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?70315', 'mo20f5J4YG', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(155, 'Ferne Lesch', 'katrine75@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'feef53483636e731eeb5a7ea46676a5889367d7a701c8d799810c4e8289d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?79240', '9EFyF5qiM9', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(156, 'Ms. Samantha Lebsack', 'joshuah34@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2a93c9db001aec484e5a9c391a0a6a07bec59df5a500d4106932b3c41798', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?30092', 'Bv928G1SVw', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(157, 'Brisa Hoeger', 'kamron00@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5bbf543b5fb36f56a3e3c3c844046aa6bba6f6d749370a1d07becb11e098', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?91464', '5cLj8aYNsd', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(158, 'Jensen Fisher', 'bruen.margarette@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '07d46aaf24e56129d330adfaa9d1579d5d0d8665c11cda8107540c29e037', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?30420', '5NixHZioRu', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(159, 'Dr. Martina Blanda MD', 'mason.collins@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5542537dc65cd91603e685fb1d4c9ada3e64e5231c3b6b9866f22b0b6ad8', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?68238', '1CkVJ7KSk5', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(160, 'Lacy Murphy', 'othiel@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4791f64124b95a79b593ef7992793c79f0073c54eb8e4f6d9f718fd4a3b7', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?52405', 'H1PYCOT2xe', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(161, 'Rupert Pfannerstill', 'madge09@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '087ffa4383842a7e0d65f256edaea3aff06535c26ebef78903934d57426d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?20364', 'YeJGMojrRL', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(162, 'Eusebio Turner', 'greenholt.tyreek@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '46e6fbfa0c803fc224d331cbb03e4d54e0b1c956e8e9fe4a2dc265188110', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?36662', 'vqC6u2k99r', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(163, 'Jefferey Littel', 'skyla.kunde@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6737598bc70052c2869eecfc138650f4fb7c8d90f063dc41808f26fa21d4', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?91520', 'jsiQ3biFr5', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(164, 'Korey Herzog', 'qtreutel@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dbdaca9f917a09b6eaba839feb6a6206105f01d300d8e00a10372cce6916', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?30382', 'Frw4ged5V1', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(165, 'Adolphus Nader', 'felix.conn@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '596f9cbaa6f5d341258bd642acd011a0c3e41e810f0f2fd378b31293f46c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?72098', '70d5DSmfdV', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(166, 'Nichole Bartell', 'mkihn@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '231856ecb9dfa62ee097be574342e257b2bfd75b594d204767841d52ca4a', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?54653', 'ZHlEDLNWOZ', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(167, 'Dorothea Trantow', 'reinger.elinor@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '707f6c58443e5bd6300ee45f21fd0688e983e2b3d426c933039994fea787', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?68005', 'wCdlX3UekI', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(168, 'Retta Kertzmann', 'jensen57@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0c87d45a99fad97d1c5dcd857697060eab95b3a0c033b5f850784d71eb56', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?72210', 'VgssEF2t9e', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(169, 'Ole Cartwright DDS', 'olen41@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '582f691f9a12fa7aa6ec2b070f4808e56cfbb8b4b5699f199c34e85e4895', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?32137', 'RH3k0deeJa', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(170, 'Ruby McGlynn', 'yklein@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd8fbc68f093aa429c59f17907f13827770facc2cba1f4f368630424021f2', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?42345', 'VU0yVO8ae5', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(171, 'Osbaldo Greenholt', 'rwintheiser@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3e9cba89c780a66cb5940da14d76c44d9cb197218b51b8f28dad98f948a2', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?77610', 'cdY6f6Jsh6', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(172, 'Adelle Ortiz', 'emmerich.ben@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd818bec3f0662218eb3bb169f4ac47cd31e7c7a774203290f9c18d99844d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?51446', '2LXjHVIFt5', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(173, 'Dr. Winfield Kirlin V', 'bechtelar.keely@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9d6270d4a8ef9ba99899a75b84491d0749465a6e3a3a2cc22df5ba6c0a3c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?78825', 'ozUzaX4O37', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(174, 'Felix Effertz', 'xander.jakubowski@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '46ccbaf049447faf624d3676a39d5653e7e16bbc34759573649af8ffdb3c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?38045', 'DcGgJtzQ3P', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(175, 'Miss Teresa Bechtelar II', 'heidenreich.abdullah@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '036ac6ed243797ea6478e75851a177f45ddab5e5811d81191c821bf6f53e', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?79683', 'pS4EjNMcoB', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(176, 'Ella Graham I', 'danial.goodwin@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '31ba24d54a3025cbb109fd7df8794cfbafb8313d6b69a5cb0201fb5a1147', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?13880', 'BudBK6aO0U', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(177, 'Prof. Loy Predovic DDS', 'sonny.crist@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '555932d7ef8cd04365ddcc528c7cbc674bcbcb608ece373e0d37da25e431', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?43037', 'X0qTzHKZfz', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(178, 'Dr. Genevieve Cronin DVM', 'ddeckow@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '58722556bd3ca94a01ce66d92a446cca19309ccc29a1d4b44a39a494ccdc', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?79193', '9ShHdoiTx0', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(179, 'Kenny Block Jr.', 'boris.dooley@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '48be424c8963ee4c0175d70b0e296c8af7c2100a268143ec9f68284f225d', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?41122', 'l1YGnGStjU', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(180, 'Roy Shanahan', 'kuvalis.genesis@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd3588d08095cab4295e1382ac62ee184e8955913ac66b2906ed3c1c7b8ac', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?45029', 'vDTwNJSilL', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(181, 'Carmine Wilderman', 'kassulke.elenor@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '161bbe058660bdfb5590198953ab37f67eb3d0bb0ad913634294786bbe3f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?42120', 'vM87zS5WOe', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(182, 'Wallace Dare', 'ankunding.heath@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ef512ac4c4c65e4109e5033f8cd0750d9557c6d1675af49c23f4fde132f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?29036', 'GoJ5KF4F0I', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(183, 'Marlee Veum', 'mrosenbaum@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e5f533e88c3333f6065e5dd292fc8f10b62b9fa0e195c6a260e3ae7bc90c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?46796', 'H14TsMSNUw', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(184, 'Brennon Gottlieb', 'karine50@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4cf2df7948999ed1198baf0596f36db9165c2081e37c5a7418bfe5292e53', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?95414', 'y9qH6EvTLP', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(185, 'Dr. Lina Walker DVM', 'beier.carmelo@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '98e9e602435ca6d0782a5a3f773a1478dfd0b40d90d0bd501b2a04b08928', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?39148', 'bnz0Z2i22U', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(186, 'Warren Roob V', 'jnienow@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '61ee7e8046567cf0b5eb26b9161cc860ad4b70710a8c5e88e73ec1b54034', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?50322', 'yewVYv8hXy', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(187, 'Ulices Ledner', 'korey.schowalter@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3a30bddd84954b72c91db87b0645ad7b422dbf1128ec552e2ef4d13b465f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?16375', 'UsFa7pi3w3', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(188, 'Odie Towne', 'vida39@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ef82cb6db0e53bd858c120f00c35602d2ac7ab6ba4bbe70181df7313301', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?76333', 'jzri8UxD7w', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(189, 'Prof. Guy Greenfelder V', 'ricky85@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '50d4fe9f90baa8c002e7ddfece89c25c1ac85232e85e1d7f41b90cfde6b9', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?10381', 'jDCoUdNTyp', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(190, 'Sophia Beatty', 'aida.powlowski@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd3305b433cfbc9801cf8e720cddc83a0f5563b48e765ef56a80a5a2f7c6c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?68890', 'dwu8jPQRzG', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(191, 'Else Bernier', 'ybeer@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6d3324bc4a98449994a6a7a213806c9669642ae40cb83ce90e97bc357d5f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?97315', '70Me4qFlza', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(192, 'Markus Swaniawski', 'gmacejkovic@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e3e403819d7f3fc9a4347551546a7612dc7e507d82b05f488a6f159877e0', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?32248', 'C9fhlZGA6o', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(193, 'Kathleen Toy', 'vhansen@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9c631b80f3b181cfd1d62781f470d4e2cd6d9009120097f0105e9b142a83', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?55414', 'gibkam1XWP', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(194, 'Dr. Drake Hegmann', 'chaz10@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f52a7ad64448b3d1f0b66b9ab651b0a100111d1fae6cee88b943c34f6a47', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?37096', '3eEwwC9WAT', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(195, 'Janessa Kris', 'heller.mozell@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6623ebde50fb2bab61c536bb0d79705767574ef3cfa1d1a4feb7f302d69a', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?23187', 's4xDE8bfoN', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(196, 'Sigurd Mann', 'tyler30@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a2fc4f02601a86d684501ae1d413593cb27901ec23b4505dbeb06895c2c2', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?85235', 'NAlB0xnuUv', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(197, 'Natalie Emmerich', 'rdickinson@example.org', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a281fb734fce922c603f6d62bd5d40e208c254502d6aff2c67735cadb41c', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?36534', 'jTH5ZrmC3E', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(198, 'Rhianna Auer', 'turcotte.ramon@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7cf89f6e488d011511b49d10ab597f6dfcd3b831bf25a9baa20747092fa6', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?92431', 'AyPJh86BIX', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(199, 'Mrs. Rosetta Schuster', 'lizzie.rohan@example.net', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cab3f72b8d85a8e381849b033f770b04a3a9f87ee5d29c06c4729c66c80f', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?38598', 'eyr7npu3fP', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(200, 'Elizabeth Frami', 'gracie.nicolas@example.com', '2020-01-27 23:27:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3c5fce12e686deec15aa0869c238e436708f272a4e916ed52996abb3ad12', 'user', NULL, NULL, NULL, NULL, NULL, 'https://lorempixel.com/100/100/?55698', 'LYzoZsDCRr', '2020-01-27 23:27:31', '2020-01-27 23:27:31'),
(201, 'Muhammad Rizal Setiawan', 'mrsetia1@gmail.com', NULL, '$2y$10$eophYTCHjxAQ2EpZQd9AUOlmcxVV3T.pXLT/7YEYNhpEf9aFAVVKm', 'ae14a13983f4c4584034113063833e4f121ad4231f9857040c5ddff0dcfe', 'admin', NULL, NULL, NULL, NULL, NULL, 'avatar1.png', NULL, '2020-01-28 09:30:50', '2020-01-28 09:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_kategori`
--
ALTER TABLE `laporan_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_status`
--
ALTER TABLE `laporan_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_agama`
--
ALTER TABLE `penduduk_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_golongandarah`
--
ALTER TABLE `penduduk_golongandarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_jeniskelamin`
--
ALTER TABLE `penduduk_jeniskelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_kawin`
--
ALTER TABLE `penduduk_kawin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_pekerjaan`
--
ALTER TABLE `penduduk_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_pendidikan`
--
ALTER TABLE `penduduk_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_status`
--
ALTER TABLE `penduduk_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_statusktp`
--
ALTER TABLE `penduduk_statusktp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_umur`
--
ALTER TABLE `penduduk_umur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk_warganegara`
--
ALTER TABLE `penduduk_warganegara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan_kategori`
--
ALTER TABLE `laporan_kategori`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `penduduk_agama`
--
ALTER TABLE `penduduk_agama`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penduduk_golongandarah`
--
ALTER TABLE `penduduk_golongandarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `penduduk_jeniskelamin`
--
ALTER TABLE `penduduk_jeniskelamin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penduduk_kawin`
--
ALTER TABLE `penduduk_kawin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penduduk_pekerjaan`
--
ALTER TABLE `penduduk_pekerjaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `penduduk_pendidikan`
--
ALTER TABLE `penduduk_pendidikan`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `penduduk_status`
--
ALTER TABLE `penduduk_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penduduk_statusktp`
--
ALTER TABLE `penduduk_statusktp`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penduduk_umur`
--
ALTER TABLE `penduduk_umur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `penduduk_warganegara`
--
ALTER TABLE `penduduk_warganegara`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
