-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 06:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahans`
--

CREATE TABLE `bahans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `resep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_24_112410_create_reseps_table', 1),
(6, '2024_07_24_112432_create_bahans_table', 1),
(7, '2024_07_24_134520_add_deskripsi_to_bahans_table', 1),
(8, '2024_07_25_130619_add_photo_to_reseps_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseps`
--

CREATE TABLE `reseps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseps`
--

INSERT INTO `reseps` (`id`, `name`, `deskripsi`, `user_id`, `created_at`, `updated_at`, `photo`) VALUES
(2, 'Rendang', 'Berikut adalah resep rendang daging yang lezat dan mudah diikuti:\r\n\r\nBahan-Bahan:\r\n- 1 kg daging sapi (bagian yang cocok untuk rendang, seperti bagian chuck atau brisket), potong dadu\r\n- 400 ml santan kental\r\n- 200 ml santan encer\r\n- 3 lembar daun salam\r\n- 2 batang serai, memarkan\r\n- 4 lembar daun jeruk, buang tulangnya\r\n- 1 cm lengkuas, memarkan\r\n- 1 cm jahe, memarkan\r\n- 2 sendok makan air asam jawa (bisa juga menggunakan asam kandis atau asam gelugur)\r\n- 2 sendok makan gula merah serut\r\n- 1 sendok makan garam (atau sesuai selera)\r\n- 1 sendok teh penyedap rasa (opsional)\r\n\r\nBumbu Halus:\r\n- 6 siung bawang merah\r\n- 4 siung bawang putih\r\n- 5 buah cabai merah besar (buang biji untuk rasa pedas lebih ringan, jika suka pedas bisa tambah cabai rawit)\r\n- 2 cm kunyit, bakar atau panggang\r\n- 2 cm jahe\r\n- 2 cm lengkuas\r\n- 1 sendok teh ketumbar bubuk\r\n- 1 sendok teh jintan bubuk\r\n- 1 sendok teh merica bubuk\r\n\r\nCara Membuat:\r\n\r\n1. Persiapan Bumbu Halus: Haluskan semua bumbu halus menggunakan blender atau ulekan hingga benar-benar halus. Sisihkan.\r\n\r\n2. Tumis Bumbu: Panaskan sedikit minyak dalam wajan besar atau panci. Tumis bumbu halus hingga harum dan matang, biasanya sekitar 5-7 menit.\r\n\r\n3. Masukkan Daging: Tambahkan potongan daging sapi ke dalam wajan bersama bumbu tumis. Aduk rata hingga daging berubah warna.\r\n\r\n4. Tambahkan Santan dan Bumbu Lain: Tuangkan santan encer ke dalam wajan, lalu aduk rata. Masukkan daun salam, serai, daun jeruk, lengkuas, dan jahe. Aduk hingga semuanya tercampur rata.\r\n\r\n5. Masak dengan Api Kecil: Masak dengan api kecil sambil sesekali diaduk. Tambahkan air asam jawa, gula merah, garam, dan penyedap rasa (jika digunakan). Biarkan rendang memasak perlahan hingga daging empuk dan bumbu meresap. Proses ini memakan waktu sekitar 2-3 jam tergantung pada potongan daging dan besar api.\r\n\r\n6. Tambahkan Santan Kental: Setelah daging empuk dan kuah mulai mengental, tuangkan santan kental ke dalam wajan. Masak dengan api kecil hingga kuah mengental dan daging benar-benar meresap bumbu. Aduk sesekali untuk mencegah santan pecah.\r\n\r\n7. Penyelesaian: Setelah rendang mengental dan daging sudah benar-benar empuk, matikan api. Diamkan sejenak sebelum disajikan agar bumbu lebih meresap.\r\n\r\n8. Sajikan: Sajikan rendang dengan nasi putih hangat. Rendang juga bisa dinikmati dengan ketupat atau lontong.\r\n\r\nSelamat mencoba resep rendang ini! Semoga hasilnya lezat dan sesuai dengan selera Anda.', NULL, '2024-07-28 03:47:54', '2024-07-30 21:35:15', 'photos/Fmgt5m0J75eVuDZ5baW3jAweTb8vjm60jm4kzh0Q.jpg'),
(3, 'Telur Balado', 'Berikut adalah resep telur balado yang sederhana namun lezat:\r\n\r\nBahan-Bahan:\r\n- 8 butir telur ayam, rebus dan kupas kulitnya\r\n- 3 sendok makan minyak goreng (untuk menumis)\r\n\r\nBumbu Halus:\r\n- 6 siung bawang merah\r\n- 4 siung bawang putih\r\n- 6 buah cabai merah besar (buang biji jika ingin pedas lebih ringan, tambahkan cabai rawit jika suka pedas)\r\n- 2 buah tomat merah, potong-potong\r\n- 1 sendok teh terasi (panggang atau bakar sebentar)\r\n- 1 sendok teh gula merah serut (bisa diganti dengan gula pasir)\r\n- 1 sendok makan air asam jawa (bisa diganti dengan asam kandis atau asam gelugur)\r\n\r\nCara Membuat:\r\n\r\n1. Rebus Telur: Rebus telur hingga matang, biasanya selama 10-12 menit. Setelah matang, tiriskan dan kupas kulitnya. Untuk mendapatkan kulit yang halus, bisa merendam telur dalam air dingin setelah direbus.\r\n\r\n2. Bumbu Halus: Haluskan bawang merah, bawang putih, cabai merah, tomat, dan terasi menggunakan blender atau ulekan hingga benar-benar halus.\r\n\r\n3. Tumis Bumbu: Panaskan minyak goreng dalam wajan dengan api sedang. Tumis bumbu halus hingga harum dan matang, sekitar 5-7 menit. Pastikan bumbu sudah tidak langu dan terlihat mengeluarkan minyak.\r\n\r\n4. Tambahkan Gula dan Asam Jawa: Masukkan gula merah dan air asam jawa ke dalam tumisan bumbu. Aduk rata dan masak sebentar hingga gula larut dan bumbu agak mengental.\r\n\r\n5. Masukkan Telur: Tambahkan telur rebus yang sudah dikupas ke dalam wajan. Aduk rata hingga telur terbalut dengan bumbu. Biarkan beberapa menit agar bumbu meresap ke dalam telur.\r\n\r\n6. Penyelesaian: Koreksi rasa, tambahkan garam jika diperlukan. Masak sebentar hingga bumbu meresap dan kuah sedikit mengental.\r\n\r\n7. Sajikan: Angkat dan sajikan telur balado dengan nasi putih hangat atau sebagai pelengkap hidangan lainnya.\r\n\r\nSelamat mencoba resep telur balado ini! Semoga rasanya sesuai dengan selera Anda.', NULL, '2024-07-28 03:49:31', '2024-07-28 21:01:35', 'photos/gHWXX64llr7oXfex3wDCwUkRWi1fIGUSVFZcoBCm.jpg'),
(7, 'Sop Buntut', 'Sop buntut dengan rempah pilihan.', NULL, '2024-07-28 04:17:45', '2024-07-28 17:46:38', 'photos/YzsiGTOhwcL3ndkU008XOXm7aAdoFq5Nzx0nbh7M.jpg'),
(9, 'Gado-Gado', 'Salad sayur dengan bumbu kacang.', NULL, '2024-07-28 04:17:46', '2024-07-28 17:58:57', 'photos/VhMgWUkIZSy364ceS2c7bjCNWP7cR3z2BlusR20d.jpg'),
(10, 'Soto Ayam', 'Bahan-bahan:\r\n- 1 ekor ayam, potong menjadi 4 bagian\r\n- 2 liter air\r\n- 2 lembar daun salam\r\n- 2 batang serai, memarkan\r\n- 3 lembar daun jeruk\r\n- 1 ruas lengkuas, memarkan\r\n- 4 butir cengkeh\r\n- 1 batang kayu manis\r\n- Garam dan gula secukupnya\r\n- Minyak untuk menumis\r\n\r\nBumbu Halus:\r\n- 8 siung bawang putih\r\n- 6 siung bawang merah\r\n- 3 butir kemiri, sangrai\r\n- 1 ruas kunyit, bakar\r\n- 1 ruas jahe\r\n\r\nPelengkap:\r\n- 100 gram tauge, seduh air panas\r\n- 2 butir telur rebus, belah dua\r\n- 2 batang daun bawang, iris tipis\r\n- 2 batang seledri, iris halus\r\n- Bawang goreng secukupnya\r\n- Jeruk nipis, potong-potong\r\n- Sambal rawit secukupnya\r\n\r\nCara Membuat:\r\n1. Rebus Ayam:\r\n   - Rebus ayam bersama air hingga mendidih. Angkat ayam dan sisihkan, saring air rebusan untuk kaldu.\r\n  \r\n2. Tumis Bumbu Halus:\r\n   - Panaskan sedikit minyak dalam wajan, tumis bumbu halus hingga harum.\r\n   - Masukkan daun salam, serai, daun jeruk, lengkuas, cengkeh, dan kayu manis. Tumis hingga bumbu matang dan harum.\r\n\r\n3. Masak Soto:\r\n   - Masukkan bumbu yang sudah ditumis ke dalam kaldu ayam.\r\n   - Rebus kembali kaldu dengan api sedang.\r\n   - Masukkan potongan ayam yang telah direbus tadi ke dalam kaldu.\r\n   - Tambahkan garam dan gula secukupnya, masak hingga bumbu meresap dan ayam empuk.\r\n\r\n4. Sajikan:\r\n   - Siapkan mangkuk, tata tauge, potongan ayam, telur rebus, daun bawang, dan seledri.\r\n   - Siram dengan kuah soto panas.\r\n   - Taburi dengan bawang goreng.\r\n   - Sajikan bersama jeruk nipis dan sambal rawit sesuai selera.', NULL, '2024-07-28 07:05:32', '2024-07-28 17:45:10', 'photos/XaVHuRyyFwyS57jRObF5aSLwR7udlhZKbAeqKyz4.jpg'),
(12, 'Sambal mata', 'Bahan Sambal Matah:\r\n\r\nBawang merah 50 gram\r\nCabai rawit merah 10 gram\r\nCabai rawit hijau 10 gram\r\nSerai 3 batang\r\nDaun Jeruk 6 lembar\r\nJeruk nipis 2 buah\r\nGaram 5 gram\r\nMerica 3 gram\r\nGula 3 gram \r\nTerasi 1 sdm\r\nMinyak goreng\r\nCara Membuat Sambal Matah:\r\n\r\n1. Pertama rendam bawang merah, cabai rawit merah dan cabai rawit hijau, supaya lebih bersih, segar, dan warnanya akan lebih keluar.\r\n\r\nBaca juga: Resep Udang Bumbu Rujak ala Hotel Bintang 5 di Jakarta\r\n\r\n2. Tumis terasi hingga harum lalu sisihkan. Kemudian iris bawang merah, iris tidak terlalu tipis agak tebal saja. Lalu iris cabai merah dan cabai hijaunya.\r\n\r\n3. Setelah diiris, cabai bisa diayak agar bijinya tidak masuk semua ke dalam sambal. Lalu iris daun jeruk, tulang daun jeruk bisa dibuang, lalu iris tipis daunnya.\r\n\r\nSelanjutnya iris tipis batang serai bagian dalam. Bagian dalam serai memiliki tekstur yang lembut dan aroma yang tidak begitu menyengat.\r\n\r\nBaca juga: Resep Sop Buntut ala Hotel Bintang 5, Coba Yuk\r\n\r\n4. Potong jeruk nipis, peras dan masukkan ke dalam campuran sambal. Kemudian aduk rata semua bahan yang dicampur tadi.\r\n\r\n5. Lalu beri bumbu berupa, garam, penyedap, merica, gula secukupnya. Selanjutnya aduk kembali. Tuangkan terasi yang sudah ditumis dengan minyak, satu sendok makan saja.\r\n\r\n6. Terakhir masukan minyak goreng dan aduk rata, setelah itu sisihkan sebentar agar bumbunya meresap.', NULL, '2024-08-04 18:16:39', '2024-08-04 18:16:39', 'photos/U5cWIVA7XdYoCoZrrTjtB2qRA5MRC7Pv254yo1vT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahans`
--
ALTER TABLE `bahans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bahans_resep_id_foreign` (`resep_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reseps`
--
ALTER TABLE `reseps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseps_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `bahans`
--
ALTER TABLE `bahans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseps`
--
ALTER TABLE `reseps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bahans`
--
ALTER TABLE `bahans`
  ADD CONSTRAINT `bahans_resep_id_foreign` FOREIGN KEY (`resep_id`) REFERENCES `reseps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseps`
--
ALTER TABLE `reseps`
  ADD CONSTRAINT `reseps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
