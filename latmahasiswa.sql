-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 08:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latmahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `name`, `matkul`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 1221115, 'Serenity Sawayn', 'TBO', '193 Ramona Forest Suite 412\nZiemannland, LA 60759-2113', '2020-12-03 18:13:52', '2020-12-03 18:13:52'),
(2, 1221115, 'Carlotta Streich DDS', 'SISTER', '80861 Dach Locks Suite 461\nWest Hugh, NM 73153-4890', '2020-12-03 18:13:52', '2020-12-03 18:13:52'),
(3, 1221115, 'Deja Green', 'SISTER', '86937 Kenna Fall Apt. 154\nEast Brannonland, LA 04257', '2020-12-03 18:13:52', '2020-12-03 18:13:52'),
(4, 1221115, 'Guillermo Yundt', 'TBO', '816 Conroy Radial\nJaleelburgh, IL 93418', '2020-12-03 18:13:52', '2020-12-03 18:13:52'),
(5, 1221115, 'Carolyne Hammes', 'SISTER', '467 Preston Crest Suite 418\nVidatown, IN 91501-4634', '2020-12-03 18:13:52', '2020-12-03 18:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npm` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `npm`, `name`, `class`, `organization`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 187006010, 'Harley Haley', 'c', 'BEM FAKULTAS', '3991 Bartoletti Trail\nLeonardhaven, KY 39673-3641', '2020-12-03 10:18:51', '2020-12-03 10:18:51'),
(2, 187006010, 'Marty Kertzmann', 'b', 'BEM UNIVERSITAS', '72665 Bednar Route Apt. 964\nPort Elyseside, AR 49721-9443', '2020-12-03 10:18:51', '2020-12-03 10:18:51'),
(3, 187006011, 'Mona Hoeger', 'a', 'BEM UNIVERSITAS', '48853 Hoppe Spring Suite 628\nNew Zoie, AR 25896-6006', '2020-12-03 10:18:51', '2020-12-03 10:18:51'),
(4, 187006010, 'Raoul Volkman V', 'c', 'BEM UNIVERSITAS', '3443 Walker Trail\nWest Bradenfurt, ND 91519-1196', '2020-12-03 10:18:51', '2020-12-03 10:18:51'),
(5, 187006011, 'Tess Osinski', 'c', 'himpunan', '43356 Rau Groves\nModestahaven, TN 00541', '2020-12-03 10:18:51', '2020-12-03 10:18:51');

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
(4, '2020_12_03_165243_create_mahasiswa_table', 2),
(5, '2020_12_04_005725_create_dosen_table', 3),
(6, '2020_12_04_130708_create_organization_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_org` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wali` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `nama_org`, `jabatan`, `periode`, `wali`, `alamat`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Katelyn Ruecker', 'bendahara', 'liberalis', 'pak alam', '268 Sage Summit\nSouth Callieburgh, DC 12980', 'eemmerich@shanahan.com', '2020-12-04 06:39:14', '2020-12-04 06:39:14'),
(2, 'Joshuah Mann', 'sekretaris', 'diktator', 'pak alam', '21117 Buckridge Forges Suite 318\nKellifurt, OH 91401', 'towne.magnus@hotmail.com', '2020-12-04 06:39:14', '2020-12-04 06:39:14'),
(3, 'Mr. Lindsey Schneider', 'sekretaris', 'liberalis', 'bu rahmi', '97319 Monahan Centers\nRaynorland, MA 87157', 'yolanda95@yahoo.com', '2020-12-04 06:39:14', '2020-12-04 06:39:14'),
(4, 'Leilani Spencer', 'ketua', 'liberalis', 'pak alam', '21649 Dallas Forges\nEast Isabellstad, NH 39624-0741', 'jedediah.huels@langworth.com', '2020-12-04 06:39:14', '2020-12-04 06:39:14'),
(5, 'Prof. Oswaldo Gorczany DDS', 'ketua', 'diktator', 'pak nur', '6421 Jermaine Mews Apt. 897\nNew Adrienneside, ND 17111', 'xmccullough@koss.com', '2020-12-04 06:39:14', '2020-12-04 06:39:14');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lutfi', 'lutfi@jagat.com', NULL, '$2y$10$jsD6iMIQrWDXuxEOZz1.m.lj6uqldNlLjo6/Xk2d0SOdTGEFfsyeO', 'vAHxuxlT0sKlqI0xfoLmk7JQAmHYFqUaRAuvJ9O6D82LqgXLH1JXilkMF7ap', '2020-12-03 01:52:55', '2020-12-03 01:52:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
