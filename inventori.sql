-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Nov 2024 pada 20.30
-- Versi server: 10.6.20-MariaDB
-- Versi PHP: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'sepatu', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detstockop`
--

CREATE TABLE `detstockop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `id_products` bigint(20) UNSIGNED NOT NULL,
  `stok_real` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `kondisi` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detstockop`
--

INSERT INTO `detstockop` (`id`, `tanggal`, `id_products`, `stok_real`, `keterangan`, `kondisi`, `status`, `created_at`, `updated_at`) VALUES
(1, '2024-11-06', 1, 200, 'apa aja dah', 'baik', 'approved', '2024-11-06 06:27:29', '2024-11-17 03:53:52'),
(2, '2024-11-06', 2, 110, 'fsfgfsdgdsg', 'tidak_layak_pakai', 'pending', '2024-11-06 07:49:45', '2024-11-12 09:16:36'),
(4, '2024-11-13', 1, 1, 'Hjr', 'hilang', 'rejected', '2024-11-12 21:01:16', '2024-11-17 03:53:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_01_081100_create_categories_table', 1),
(6, '2023_11_01_081314_create_products_table', 1),
(7, '2023_11_01_081345_create_suppliers_table', 1),
(8, '2023_11_14_034705_create_product_supplies_table', 1),
(9, '2024_10_23_072057_create_detstockop_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `stock`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'NIKE AIR FORCE 1 WHITE', '50', 2789000, 'products/1730905038_nike-air-force-1-le-gs.jpg', '2024-11-06 06:25:33', '2024-11-06 07:57:18'),
(2, 1, 'Sepatu Hiking Eiger Art.4903 Pollock 2.0 28 gunung - Olive, 39', '34', 1399000, 'products/1730904550_Cuplikan layar 2024-11-06 213830.png', '2024-11-06 07:49:10', '2024-11-06 07:51:15'),
(3, 1, 'Run Swift 3 Shoes', '10', 1129000, 'products/1731428887_shopping.webp', '2024-11-12 09:28:07', '2024-11-12 09:28:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_supplies`
--

CREATE TABLE `product_supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` enum('income','outcome') NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product_supplies`
--

INSERT INTO `product_supplies` (`id`, `created_at`, `updated_at`, `product_id`, `user_id`, `supplier_id`, `quantity`, `type`, `date`) VALUES
(1, '2024-11-06 06:26:32', '2024-11-06 06:26:32', 1, 3, 1, 100, 'income', '2024-11-06'),
(2, '2024-11-06 06:26:46', '2024-11-06 06:26:46', 1, 3, 1, 50, 'outcome', '2024-11-06'),
(3, '2024-11-06 07:49:22', '2024-11-06 07:49:22', 2, 3, 2, 75, 'income', '2024-11-06'),
(4, '2024-11-06 07:51:15', '2024-11-06 07:51:15', 2, 3, 2, 41, 'outcome', '2024-11-06'),
(5, '2024-11-12 09:28:39', '2024-11-12 09:28:39', 3, 3, 2, 10, 'income', '2024-11-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'PT PBW', 'Jakarta', '08123456789', 'pbw@gmailcom', NULL, NULL),
(2, 'PT PBW2', 'Surabaya', '08123456789', 'pbw2@gmailcom', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$o.oPy3Xcv5FINYc6Jb8Qqu8fEsZpjuez8Ji9ug0Vufincz6fGmhNu', 'admin', NULL, NULL, NULL),
(2, 'Officer', 'officer@gmail.com', NULL, '$2y$12$ZY.TzH./myP/Uf/Chiosfe.eLJyUQ20S1ozzVuK34kt54Y/vUHjZ.', 'officer', NULL, NULL, NULL),
(3, 'Kepala Gudang', 'kepalagudang@gmail.com', NULL, '$2y$12$ZxKdR2OcrfYCi9dztulBOeygvrBOLHQU7e0sil7/88Qo2UhWVH1jG', 'kepalagudang', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detstockop`
--
ALTER TABLE `detstockop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detstockop_id_products_foreign` (`id_products`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `product_supplies`
--
ALTER TABLE `product_supplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_supplies_product_id_foreign` (`product_id`),
  ADD KEY `product_supplies_user_id_foreign` (`user_id`),
  ADD KEY `product_supplies_supplier_id_foreign` (`supplier_id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detstockop`
--
ALTER TABLE `detstockop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `product_supplies`
--
ALTER TABLE `product_supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detstockop`
--
ALTER TABLE `detstockop`
  ADD CONSTRAINT `detstockop_id_products_foreign` FOREIGN KEY (`id_products`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_supplies`
--
ALTER TABLE `product_supplies`
  ADD CONSTRAINT `product_supplies_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_supplies_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_supplies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
