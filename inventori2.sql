-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Okt 2024 pada 05.29
-- Versi server: 8.0.30
-- Versi PHP: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsms`
--
CREATE DATABASE IF NOT EXISTS `bpsms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bpsms`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Yamaha', 'uploads/brands/1.png?v=1642731446', 0, 1, '2022-01-21 10:03:12', '2022-01-21 10:17:26'),
(2, 'Kawasaki', 'uploads/brands/2.png?v=1642731379', 0, 1, '2022-01-21 10:10:24', '2022-01-21 10:16:19'),
(3, 'BMW', 'uploads/brands/3.png?v=1642731467', 0, 1, '2022-01-21 10:17:47', '2022-01-21 10:17:47'),
(4, 'Harley Davidson', 'uploads/brands/4.png?v=1642731495', 0, 1, '2022-01-21 10:18:15', '2022-01-21 10:18:15'),
(5, 'Ducati', 'uploads/brands/5.png?v=1642731515', 0, 1, '2022-01-21 10:18:35', '2022-01-21 10:18:35'),
(6, 'Oil Company', 'uploads/brands/6.jpg?v=1642744467', 0, 1, '2022-01-21 13:54:27', '2022-01-21 13:54:27'),
(7, 'Maxxis', 'uploads/brands/7.jpg?v=1642744509', 0, 1, '2022-01-21 13:55:09', '2022-01-21 13:55:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`, `date_added`) VALUES
(14, 1, 3, 2, '2022-01-25 11:08:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Accessories', 1, 0, '2021-09-30 09:42:40'),
(2, 'Chassis', 1, 0, '2021-09-30 09:43:00'),
(3, 'Tools', 1, 0, '2021-09-30 09:43:48'),
(5, 'Tires', 1, 0, '2022-01-21 10:33:07'),
(6, 'Mugs', 1, 0, '2022-01-21 10:33:31'),
(7, 'Oils', 1, 0, '2022-01-21 10:33:47'),
(8, 'Machine Parts', 1, 0, '2022-01-21 10:34:07'),
(9, 'Body Parts', 1, 0, '2022-01-21 13:55:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `client_list`
--

CREATE TABLE `client_list` (
  `id` int NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_added` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'John', 'D', 'Smith', 'Male', '09123456897', 'This is my sample address only', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 1, 0, '2022-01-24 13:33:44', '2022-01-25 13:15:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'Mike Williams', '09123456789', 'mwilliams@sample.com', 1, '2021-09-30 10:26:11'),
(2, 'George Wilson', '09112355799', 'gwilson@gmail.com', 1, '2021-09-30 10:30:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` float NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `date_added`) VALUES
(8, 6, 1, 1, '2022-01-24 16:37:18'),
(9, 6, 4, 2, '2022-01-24 16:37:18'),
(10, 7, 4, 2, '2022-01-25 10:43:19'),
(11, 7, 3, 4, '2022-01-25 10:43:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_list`
--

CREATE TABLE `order_list` (
  `id` int NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int NOT NULL,
  `total_amount` float NOT NULL DEFAULT '0',
  `delivery_address` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(6, '202201-00001', 1, 11500, 'This is my sample address only', 5, '2022-01-24 16:37:18', '2022-01-24 17:09:42'),
(7, '202201-00002', 1, 11080, 'This is my sample address only', 2, '2022-01-25 10:43:19', '2022-01-25 10:58:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_list`
--

CREATE TABLE `product_list` (
  `id` int NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `models` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 3, 'Crash Guard', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;L', 2500, 1, 'uploads/products/1.png?v=1642735227', 0, '2022-01-21 11:20:27', '2022-01-21 11:21:50'),
(2, 5, 3, 'Steering Dumper', 'Sample', '&lt;p&gt;sample&lt;/p&gt;', 15000, 1, 'uploads/products/2.png?v=1642736907', 1, '2022-01-21 11:48:27', '2022-01-21 11:53:41'),
(3, 3, 7, 'Oil 4T 10W-40 (1L)', 'Sample', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; varchar(10', 520, 1, 'uploads/products/3.png?v=1642828345', 0, '2022-01-21 13:57:15', '2022-01-22 14:20:40'),
(4, 7, 5, 'Tire 101 110/70/17', 'Any', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; varchar(10', 4500, 1, 'uploads/products/4.jpg?v=1642745034', 0, '2022-01-21 14:03:54', '2022-01-21 14:03:54'),
(5, 5, 6, 'Product 101', 'Any', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; varchar(10', 10000, 1, 'uploads/products/5.png?v=1642828905', 0, '2022-01-22 13:21:45', '2022-01-22 13:21:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int NOT NULL,
  `meta_field` varchar(100) NOT NULL,
  `meta_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(5, 'vehicle_type', 'Sample 102'),
(5, 'vehicle_name', 'Sample'),
(5, 'vehicle_registration_number', 'TEST123'),
(5, 'vehicle_model', 'test'),
(5, 'service_id', '3'),
(5, 'pickup_address', 'Sample Address'),
(4, 'vehicle_type', 'Sample'),
(4, 'vehicle_name', 'Yamaha Nmax V2'),
(4, 'vehicle_registration_number', 'GCN 2306'),
(4, 'vehicle_model', '2021'),
(4, 'service_id', '1,2,4'),
(4, 'pickup_address', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_list`
--

CREATE TABLE `service_list` (
  `id` int NOT NULL,
  `service` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Change Oil', '&lt;p&gt;&lt;span style=&quot;varchar(100)-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, cons', 1, 0, '2021-09-30 14:11:21'),
(2, 'Overall Checkup', '&lt;p&gt;&lt;span style=&quot;varchar(100)-align: justify;&quot;&gt;Curabitur nec viverra tellus. Do', 1, 0, '2021-09-30 14:11:38'),
(3, 'Engine Tune up', '&lt;p&gt;&lt;span style=&quot;varchar(100)-align: justify;&quot;&gt;Sed ultrices fermentum augue. Du', 1, 0, '2021-09-30 14:12:03'),
(4, 'Tire Replacement', '&lt;p&gt;&lt;span style=&quot;varchar(100)-align: justify;&quot;&gt;Nullam pretium eu justo ac tinci', 1, 0, '2021-09-30 14:12:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `mechanic_id` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(4, 1, 'Drop Off', 2, 3, '2022-01-25 09:47:31'),
(5, 1, 'Pick Up', NULL, 4, '2022-01-25 10:25:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` float NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(1, 1, 10, 1, '2022-01-21 13:07:47'),
(2, 1, 5, 1, '2022-01-21 13:07:55'),
(4, 3, 30, 1, '2022-01-24 14:17:28'),
(5, 5, 25, 1, '2022-01-24 14:17:35'),
(8, 4, 50, 1, '2022-01-24 15:49:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int NOT NULL,
  `meta_field` varchar(100) NOT NULL,
  `meta_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Motorcycle Parts & Services Shop Management System'),
(6, 'short_name', 'MPSSMS- PHP'),
(11, 'logo', 'uploads/1642728480_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1643082720_bike-cover-2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(6, 'Claire', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/1632990840_ava.jpg', NULL, 2, '2021-09-30 16:34:02', '2021-09-30 16:35:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indeks untuk tabel `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indeks untuk tabel `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indeks untuk tabel `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
--
-- Database: `bukutamu2`
--
CREATE DATABASE IF NOT EXISTS `bukutamu2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bukutamu2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id` int UNSIGNED NOT NULL,
  `tgl_bertemu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tamu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keperluan` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_07_100944_create_jabatan_table', 1),
(7, '2024_03_07_101024_create_buku_tamu_table', 1),
(8, '2024_03_07_101045_create_tamu_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$12$kcxkNMnh8GI8k7/4d0160OxY6/Nt6GHbsAo5IhtJIOJ05XQ0ujmgq', NULL, '2024-10-10 12:41:14', '2024-10-10 12:41:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
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
-- AUTO_INCREMENT untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `inventori`
--
CREATE DATABASE IF NOT EXISTS `inventori` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `inventori`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `commodities`
--

CREATE TABLE `commodities` (
  `id` bigint UNSIGNED NOT NULL,
  `school_operational_assistance_id` bigint UNSIGNED NOT NULL,
  `commodity_location_id` bigint UNSIGNED NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_of_purchase` bigint NOT NULL,
  `condition` tinyint NOT NULL,
  `quantity` bigint NOT NULL,
  `price` bigint NOT NULL,
  `price_per_item` bigint NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `commodities`
--

INSERT INTO `commodities` (`id`, `school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, 19, 'BRG-6298554', 'Rak Peralatan Sekolah', 'Olympic', 'Kayu Solid', 2016, 1, 192, 233430, 39290, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(2, 2, 10, 'BRG-7339149', 'Penghapus Papan Tulis Putih', 'IKEA', 'MDF (Medium Density Fibreboard)', 2019, 1, 152, 316234, 74227, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(3, 2, 23, 'BRG-2816277', 'Rak Peralatan Sekolah', 'IKEA', 'Partikel', 2022, 2, 177, 184768, 126244, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(4, 1, 20, 'BRG-5006790', 'Rak Sepatu', 'IKEA', 'Blockboard', 2020, 2, 92, 70740, 110588, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(5, 2, 22, 'BRG-6521542', 'Kipas Dinding', 'Olympic', 'Partikel', 2013, 3, 170, 84333, 145768, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(6, 1, 22, 'BRG-4060620', 'Lemari Sepatu', 'Dove\'s', 'Melaminto', 2020, 3, 150, 372107, 26344, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(7, 2, 5, 'BRG-2624517', 'Kipas Dinding', 'Dove\'s', 'Rotan', 2020, 2, 159, 303050, 113190, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(8, 2, 7, 'BRG-4298293', 'Rak Sepatu', 'Olympic', 'Rotan', 2013, 1, 181, 446319, 147423, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(9, 1, 9, 'BRG-2080614', 'Papan Tulis Hitam', 'Funika', 'Blockboard', 2024, 1, 91, 75111, 69456, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(10, 1, 16, 'BRG-8592870', 'Papan Tulis Putih', 'Atria', 'Kayu Lapis (Plywood/Multipleks)', 2024, 3, 90, 50523, 14140, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(11, 1, 1, 'BRG-6561787', 'Kursi', 'Livien', 'Blockboard', 2018, 3, 160, 289371, 64052, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(12, 1, 24, 'BRG-7008202', 'Lemari Buku', 'Red Sun', 'Partikel', 2020, 2, 106, 302439, 82810, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(13, 2, 18, 'BRG-2628302', 'Kipas Dinding', 'IKEA', 'MDF (Medium Density Fibreboard)', 2012, 3, 65, 324756, 32325, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(14, 2, 21, 'BRG-5819215', 'Papan Tulis Hitam', 'Atria', 'Partikel', 2023, 1, 63, 113421, 27327, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(15, 2, 9, 'BRG-8696267', 'Meja Guru', 'Olympic', 'Blockboard', 2024, 2, 183, 190827, 147107, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(16, 1, 13, 'BRG-7175600', 'Rak Sepatu', 'Funika', 'Partikel', 2024, 1, 65, 353676, 53720, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(17, 2, 18, 'BRG-3980238', 'Rak Helm', 'Dove\'s', 'MDF (Medium Density Fibreboard)', 2011, 3, 62, 257827, 66147, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(18, 2, 4, 'BRG-8549852', 'Penghapus Papan Tulis Putih', 'IKEA', 'Kayu Lapis (Plywood/Multipleks)', 2011, 1, 157, 459199, 62549, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(19, 2, 23, 'BRG-8263701', 'Kipas Dinding', 'Atria', 'MDF (Medium Density Fibreboard)', 2019, 1, 142, 127431, 33651, 'Keterangan barang', '2024-10-10 16:20:06', '2024-10-10 16:20:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `commodity_locations`
--

CREATE TABLE `commodity_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `commodity_locations`
--

INSERT INTO `commodity_locations` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Kepala Sekolah', 'Ruangan 1', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(2, 'Ruang Staff Tata Usaha (TU)', 'Ruangan 2', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(3, 'Ruang Gudang', 'Ruangan 3', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(4, 'Perpustakaan Bawah', 'Ruangan 4', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(5, 'Perpustakaan Atas', 'Ruangan 5', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(6, 'Ruang OSIS', 'Ruangan 6', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(7, 'Ruang Laboratorium', 'Ruangan 7', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(8, 'Ruang Unit Kesehatan Sekolah (UKS)', 'Ruangan 8', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(9, 'Ruang Kantin', 'Ruangan 9', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(10, 'Ruang Koperasi', 'Ruangan 10', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(11, 'Ruang Satpam/Pos Satpam', 'Ruangan 11', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(12, 'Ruang Salat', 'Ruangan 12', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(13, 'Ruang Kepala Tata Usaha (TU)', 'Ruangan 13', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(14, 'Ruang Seni Musik', 'Ruangan 14', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(15, 'Ruang Wakil Kepala Sekolah', 'Ruangan 15', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(16, 'Ruang Komputer', 'Ruangan 16', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(17, 'Ruang Praktek', 'Ruangan 17', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(18, 'Ruang Serba Guna', 'Ruangan 18', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(19, 'Ruangan Guru BP (Bimbingan Penyuluhan)', 'Ruangan 19', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(20, 'Ruang Kegiatan Ekstrakurikuler', 'Ruangan 20', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(21, 'Kelas 1', 'Ruangan Kelas 1', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(22, 'Kelas 2', 'Ruangan Kelas 2', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(23, 'Kelas 3', 'Ruangan Kelas 3', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(24, 'Kelas 4', 'Ruangan Kelas 4', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(25, 'Kelas 5', 'Ruangan Kelas 5', '2024-10-10 16:20:06', '2024-10-10 16:20:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_08_100000_create_telescope_entries_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_07_02_044956_create_school_operational_assistances_table', 1),
(7, '2020_07_02_045203_create_commodity_locations_table', 1),
(8, '2020_07_03_061038_create_commodities_table', 1),
(9, '2020_07_25_134054_remove_kode_register_from_commodities_table', 1),
(10, '2024_03_08_125451_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'tambah barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(2, 'lihat barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(3, 'detail barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(4, 'ubah barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(5, 'hapus barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(6, 'tambah bos', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(7, 'lihat bos', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(8, 'detail bos', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(9, 'ubah bos', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(10, 'hapus bos', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(11, 'tambah ruangan', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(12, 'lihat ruangan', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(13, 'detail ruangan', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(14, 'ubah ruangan', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(15, 'hapus ruangan', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(16, 'tambah pengguna', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(17, 'lihat pengguna', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(18, 'detail pengguna', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(19, 'ubah pengguna', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(20, 'hapus pengguna', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(21, 'import barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(22, 'export barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(23, 'import ruangan', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(24, 'export ruangan', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(25, 'print barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(26, 'print individual barang', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(27, 'mengatur profile', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(28, 'lihat peran dan hak akses', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(29, 'tambah peran dan hak akses', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(30, 'ubah peran dan hak akses', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(31, 'hapus peran dan hak akses', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(2, 'Staff TU (Tata Usaha)', 'web', '2024-10-10 16:20:06', '2024-10-10 16:20:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(18, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `school_operational_assistances`
--

CREATE TABLE `school_operational_assistances` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `school_operational_assistances`
--

INSERT INTO `school_operational_assistances` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'BOSDA', 'Deskripsi BOSDA', '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(2, 'BOSNAS', 'Deskripsi BOSNAS', '2024-10-10 16:20:06', '2024-10-10 16:20:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '9d367d92-8c1c-4e84-82f9-19cb81f2e151', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'inventori\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"7.51\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"ee8b92d3e054593e5193820233fe01e0\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(2, '9d367d92-a048-41d9-ae3c-88234501559f', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `migrations` (`id` int unsigned not null auto_increment primary key, `migration` varchar(255) not null, `batch` int not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"32.11\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"246242198a8fbc1beb167611385ac644\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(3, '9d367d92-a4fc-4d33-bdc1-a8573525155e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'inventori\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"2.94\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"ee8b92d3e054593e5193820233fe01e0\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(4, '9d367d92-a7a4-4e9e-bb2f-3d3323a70fbf', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"2.61\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(5, '9d367d92-a8a0-44ea-a81f-b167b75a9c10', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.40\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(6, '9d367d92-cfef-4a6f-9cea-42a7121cfdc8', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.51\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(7, '9d367d92-d521-4264-a6a6-8debb63fc778', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `users` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(255) not null, `email` varchar(255) not null, `email_verified_at` timestamp null, `password` varchar(255) not null, `remember_token` varchar(100) null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"9.99\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2014_10_12_000000_create_users_table.php\",\"line\":16,\"hash\":\"47c20151560e04dbf058d1eaaf31fc80\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(8, '9d367d92-dafe-4c6a-ba25-6b72c64bb18a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add unique `users_email_unique`(`email`)\",\"time\":\"14.36\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2014_10_12_000000_create_users_table.php\",\"line\":16,\"hash\":\"0648806a3d18c0f5b81e2257de64675e\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(9, '9d367d92-deb6-4c6f-bf65-6126a9c91368', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2014_10_12_000000_create_users_table\', 1)\",\"time\":\"1.65\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(10, '9d367d92-e24a-4fc1-9b3a-a6e04f30066d', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `password_resets` (`email` varchar(255) not null, `token` varchar(255) not null, `created_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"8.22\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2014_10_12_100000_create_password_resets_table.php\",\"line\":16,\"hash\":\"6a64d07661eabf9849c9a4281ec344ad\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(11, '9d367d92-e5f5-402e-bb27-aa159a71a78e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `password_resets` add index `password_resets_email_index`(`email`)\",\"time\":\"8.87\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2014_10_12_100000_create_password_resets_table.php\",\"line\":16,\"hash\":\"e47bfd004ad9142afc1b2460960fbe08\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(12, '9d367d92-e929-4be6-a53b-fbe91e288dad', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2014_10_12_100000_create_password_resets_table\', 1)\",\"time\":\"1.13\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(13, '9d367d92-ed77-4de2-81bd-c04c50a4d15c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"9.57\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(14, '9d367d92-f3db-48e9-848a-69f60eb77eda', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"15.72\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(15, '9d367d92-f739-46ec-b1a0-de293f84d0c6', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"8.01\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(16, '9d367d92-fac4-4670-af7f-e0ff5220c7ca', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"8.51\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(17, '9d367d92-fdd2-4453-be50-8236a0482a67', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"7.33\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(18, '9d367d93-0137-4b59-9f5b-c7439063950e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"8.23\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(19, '9d367d93-0696-4fd8-bcbe-8806cca4a706', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null, primary key (`entry_uuid`, `tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"12.79\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f8c7e1e3c3d557b70e7a918609f839f2\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(20, '9d367d93-0c33-4486-a8df-ec73e1a6bc75', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"13.79\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(21, '9d367d93-18a4-494b-bd80-c880b20af72a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"31.20\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(22, '9d367d93-1b60-4dfc-a304-f6553247f45f', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null, primary key (`tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"6.18\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"18d1fa09eade84a80848982d91caec5c\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(23, '9d367d93-1e3e-4a6d-9bd7-c5e31c95748e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_08_08_100000_create_telescope_entries_table\', 1)\",\"time\":\"1.13\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(24, '9d367d93-216c-43fb-bc99-5374731d0e0d', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `failed_jobs` (`id` bigint unsigned not null auto_increment primary key, `connection` text not null, `queue` text not null, `payload` longtext not null, `exception` longtext not null, `failed_at` timestamp not null default CURRENT_TIMESTAMP) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"6.63\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2019_08_19_000000_create_failed_jobs_table.php\",\"line\":16,\"hash\":\"13a6deba992215f617451f2f1382694e\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(25, '9d367d93-24af-435a-9268-1fbc70fe934e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2019_08_19_000000_create_failed_jobs_table\', 1)\",\"time\":\"1.19\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(26, '9d367d93-28a0-4d48-ab0a-33f2ef050725', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `personal_access_tokens` (`id` bigint unsigned not null auto_increment primary key, `tokenable_type` varchar(255) not null, `tokenable_id` bigint unsigned not null, `name` varchar(255) not null, `token` varchar(64) not null, `abilities` text null, `last_used_at` timestamp null, `expires_at` timestamp null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"8.52\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"c3ce2064f6541373814860c9a7e44c89\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(27, '9d367d93-30a3-43b7-a36d-7b822092d442', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `personal_access_tokens` add index `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`)\",\"time\":\"19.92\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"23e16d13faedc7fd756b258a984d3cad\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(28, '9d367d93-3399-4bbb-99b6-7a2ba2dda8ae', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `personal_access_tokens` add unique `personal_access_tokens_token_unique`(`token`)\",\"time\":\"6.78\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"6d0025967d6eebfcb6fddf6dcb6ed14c\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(29, '9d367d93-3619-43b3-b72e-b0a8e18e1c14', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2019_12_14_000001_create_personal_access_tokens_table\', 1)\",\"time\":\"0.95\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(30, '9d367d93-3946-4bb0-b14d-5d6814ed4a82', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `school_operational_assistances` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(255) not null, `description` longtext null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"7.29\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2020_07_02_044956_create_school_operational_assistances_table.php\",\"line\":16,\"hash\":\"73df905a8b5cd9a434af5b5480418502\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(31, '9d367d93-3bc6-41ee-96f2-b863aa7c8f1a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_07_02_044956_create_school_operational_assistances_table\', 1)\",\"time\":\"1.10\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(32, '9d367d93-3ee0-4f68-9343-6935012e7b3b', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `commodity_locations` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(255) not null, `description` longtext null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"6.98\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2020_07_02_045203_create_commodity_locations_table.php\",\"line\":16,\"hash\":\"6681f2b5d648ace41ab4ea602f6a79d0\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(33, '9d367d93-41ce-4662-b7f0-d10a82420049', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_07_02_045203_create_commodity_locations_table\', 1)\",\"time\":\"1.47\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(34, '9d367d93-4619-47de-857e-fbe4d994fb87', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `commodities` (`id` bigint unsigned not null auto_increment primary key, `school_operational_assistance_id` bigint unsigned not null, `commodity_location_id` bigint unsigned not null, `item_code` varchar(255) not null, `register` varchar(255) not null, `name` varchar(255) not null, `brand` varchar(255) not null, `material` varchar(255) not null, `year_of_purchase` bigint not null, `condition` tinyint not null, `quantity` bigint not null, `price` bigint not null, `price_per_item` bigint not null, `note` longtext null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"9.49\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2020_07_03_061038_create_commodities_table.php\",\"line\":16,\"hash\":\"66e3619d16f2ad3ed2ff11e74fb9fe14\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:05'),
(35, '9d367d93-5408-4a25-86b0-0c18a4e62a90', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `commodities` add constraint `commodities_school_operational_assistance_id_foreign` foreign key (`school_operational_assistance_id`) references `school_operational_assistances` (`id`) on delete CASCADE\",\"time\":\"34.96\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2020_07_03_061038_create_commodities_table.php\",\"line\":16,\"hash\":\"3f7924300a5f58312d6ba71f7122e94c\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(36, '9d367d93-6203-483d-9e2b-66d10c8a7172', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `commodities` add constraint `commodities_commodity_location_id_foreign` foreign key (`commodity_location_id`) references `commodity_locations` (`id`) on delete CASCADE\",\"time\":\"35.23\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2020_07_03_061038_create_commodities_table.php\",\"line\":16,\"hash\":\"8a3619adbfba8c3d76db4d34047755ce\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(37, '9d367d93-72ac-4afe-9c13-9568b5700892', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `commodities` add unique `commodities_item_code_unique`(`item_code`)\",\"time\":\"42.10\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2020_07_03_061038_create_commodities_table.php\",\"line\":16,\"hash\":\"0804dc7c3a79217957a50444a4fec515\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(38, '9d367d93-75ba-4bc5-80f5-e2f574cedcbc', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_07_03_061038_create_commodities_table\', 1)\",\"time\":\"1.17\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(39, '9d367d93-7a21-4bdf-9d5b-6ba48cf97d63', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `commodities` drop `register`\",\"time\":\"10.58\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2020_07_25_134054_remove_kode_register_from_commodities_table.php\",\"line\":16,\"hash\":\"f188736d6fbcf265bef89ebeb11fcba3\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(40, '9d367d93-7c96-4b8a-b608-eb0680fda935', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_07_25_134054_remove_kode_register_from_commodities_table\', 1)\",\"time\":\"1.34\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(41, '9d367d93-8032-455d-9de9-e8c2880dd6f1', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `permissions` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(255) not null, `guard_name` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"7.65\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":27,\"hash\":\"eb63c3583de582a709a51b49c078ca03\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(42, '9d367d93-860e-41a1-af0d-280c7dec128b', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `permissions` add unique `permissions_name_guard_name_unique`(`name`, `guard_name`)\",\"time\":\"14.44\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":27,\"hash\":\"5238fb7ac2ac0c6531d371b983681d76\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(43, '9d367d93-8933-4042-ae27-006fdf925ee7', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `roles` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(255) not null, `guard_name` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"7.23\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":36,\"hash\":\"c8fbd6ab203ec575e47ce2d7e4f07910\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(44, '9d367d93-8f26-4d92-b668-634e9ea1435b', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `roles` add unique `roles_name_guard_name_unique`(`name`, `guard_name`)\",\"time\":\"14.69\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":36,\"hash\":\"476aef0b952e50c5926ba8cdc0c9bfa6\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(45, '9d367d93-9227-41d0-b453-258db6ca7751', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `model_has_permissions` (`permission_id` bigint unsigned not null, `model_type` varchar(255) not null, `model_id` bigint unsigned not null, primary key (`permission_id`, `model_id`, `model_type`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"6.91\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":52,\"hash\":\"ec1b8cf686b6562712dee3002dd401c3\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(46, '9d367d93-98c8-4cb4-ba27-a02bfc6c9cb6', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `model_has_permissions` add index `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`)\",\"time\":\"16.48\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":52,\"hash\":\"799c3262f33663c6bf50078fe1c8ce02\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(47, '9d367d93-a2ed-4c18-a1fc-6d95b7104cca', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `model_has_permissions` add constraint `model_has_permissions_permission_id_foreign` foreign key (`permission_id`) references `permissions` (`id`) on delete cascade\",\"time\":\"25.38\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":52,\"hash\":\"2c922be382fed48d8023537e84ccdd66\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(48, '9d367d93-a5dc-4943-ac10-03cd8dc6aba8', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `model_has_roles` (`role_id` bigint unsigned not null, `model_type` varchar(255) not null, `model_id` bigint unsigned not null, primary key (`role_id`, `model_id`, `model_type`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"6.62\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":76,\"hash\":\"ed1930e13e87605cce4ebc47dc397bb8\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(49, '9d367d93-a90c-456f-bf58-19664889371c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `model_has_roles` add index `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`)\",\"time\":\"7.61\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":76,\"hash\":\"b5fc483eb06997eadd0a189cdb6820fd\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(50, '9d367d93-b358-4419-b2ae-bd5596531562', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `model_has_roles` add constraint `model_has_roles_role_id_foreign` foreign key (`role_id`) references `roles` (`id`) on delete cascade\",\"time\":\"25.87\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":76,\"hash\":\"13a9f5419fe9cfd65c84f44a9af8aebe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(51, '9d367d93-b5e2-4a8f-864a-b1e2693b697e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `role_has_permissions` (`permission_id` bigint unsigned not null, `role_id` bigint unsigned not null, primary key (`permission_id`, `role_id`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"5.77\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":99,\"hash\":\"92e8ce6598a3d32430f6a20647e75cc6\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(52, '9d367d93-bbf1-451c-bde4-1f4abf6e049a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_has_permissions` add constraint `role_has_permissions_permission_id_foreign` foreign key (`permission_id`) references `permissions` (`id`) on delete cascade\",\"time\":\"14.94\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":99,\"hash\":\"09327a2ff7df4421191b9fdf2a1cce9e\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(53, '9d367d93-c8fe-4e3e-bd8a-a2d9b027003a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_has_permissions` add constraint `role_has_permissions_role_id_foreign` foreign key (`role_id`) references `roles` (`id`) on delete cascade\",\"time\":\"32.77\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\migrations\\\\2024_03_08_125451_create_permission_tables.php\",\"line\":99,\"hash\":\"4ad12bf8366b7b214265d1ff60544e17\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(54, '9d367d93-cc14-4f61-a232-5f81bd62112f', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2024_03_08_125451_create_permission_tables\', 1)\",\"time\":\"1.19\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(55, '9d367d93-e769-4535-aa4b-2640af214614', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `users` (`name`, `email`, `password`, `updated_at`, `created_at`) values (\'Administrator\', \'admin@mail.com\', \'y$h12c5K7uoCc45beKmgJozuLlt1O8612jrAi6zNixkeMLstfQhd3tq\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.66\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":18,\"hash\":\"deb3b16f8b357711b85f0c04a8532ebd\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(56, '9d367d93-e7aa-45e8-a29c-bdb49bfc9aa4', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\User:1\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(57, '9d367d93-fd0d-4def-8912-b818cf81d5aa', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `users` (`name`, `email`, `password`, `updated_at`, `created_at`) values (\'Staff TU (Tata Usaha)\', \'stafftu@mail.com\', \'yVnupBuAfmimqoAopuuIkeMVqPYRpW0nY\\/NDblmRzCLJnie\\/zifGK\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.93\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":24,\"hash\":\"deb3b16f8b357711b85f0c04a8532ebd\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(58, '9d367d93-fd2e-4162-aca8-ecc0aad69e5b', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\User:2\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(59, '9d367d93-ff4b-45c1-b060-42ed978634b9', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Kepala Sekolah\', \'Ruangan 1\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.40\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(60, '9d367d93-ffce-4e1e-8679-77abb11b6b1a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Staff Tata Usaha (TU)\', \'Ruangan 2\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.94\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(61, '9d367d94-0033-4207-9778-a2da08b5575c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Gudang\', \'Ruangan 3\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.72\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(62, '9d367d94-009d-4191-9c85-f51a9cc053b0', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Perpustakaan Bawah\', \'Ruangan 4\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.76\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(63, '9d367d94-0104-46c3-bca6-3ceccd8addd5', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Perpustakaan Atas\', \'Ruangan 5\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.70\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(64, '9d367d94-0177-41b8-b702-610d92173376', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang OSIS\', \'Ruangan 6\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.80\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(65, '9d367d94-01e0-4d2d-8a69-fafd91b2528a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Laboratorium\', \'Ruangan 7\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.71\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(66, '9d367d94-0246-4709-9207-5dc2432be3ec', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Unit Kesehatan Sekolah (UKS)\', \'Ruangan 8\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.73\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(67, '9d367d94-02aa-4d36-a5e4-dd5f03ad9659', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Kantin\', \'Ruangan 9\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.66\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(68, '9d367d94-030e-406a-8a48-ddd23a9446bd', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Koperasi\', \'Ruangan 10\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.69\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(69, '9d367d94-037b-42b2-83e7-6065ead357d1', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Satpam\\/Pos Satpam\', \'Ruangan 11\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(70, '9d367d94-0404-4742-ac3c-dcacc03a3276', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Salat\', \'Ruangan 12\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(71, '9d367d94-0487-4a2d-8edd-9c2baf1dbad4', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Kepala Tata Usaha (TU)\', \'Ruangan 13\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.98\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(72, '9d367d94-0501-43ab-81b3-c93ed6a92d92', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Seni Musik\', \'Ruangan 14\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.93\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(73, '9d367d94-0589-41c8-8f8f-472cfb8f0c32', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Wakil Kepala Sekolah\', \'Ruangan 15\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.07\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(74, '9d367d94-0619-4e63-bf01-1dc2b18f98bf', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Komputer\', \'Ruangan 16\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.05\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(75, '9d367d94-0686-42e3-8e08-a0e3b1d7daa6', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Praktek\', \'Ruangan 17\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(76, '9d367d94-06f2-4839-a380-205def8fcc43', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Serba Guna\', \'Ruangan 18\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.73\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(77, '9d367d94-0760-4540-820f-0d207f181e2e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruangan Guru BP (Bimbingan Penyuluhan)\', \'Ruangan 19\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(78, '9d367d94-07c5-432d-b49c-ecae60366590', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Ruang Kegiatan Ekstrakurikuler\', \'Ruangan 20\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.67\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":42,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(79, '9d367d94-083b-431a-9c51-209d7834a1bb', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Kelas 1\', \'Ruangan Kelas 1\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.83\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":51,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(80, '9d367d94-08a9-4bbc-b9a4-1f05cc4d742c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Kelas 2\', \'Ruangan Kelas 2\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.76\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":51,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(81, '9d367d94-0914-41c0-878e-a9c499cf2ebc', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Kelas 3\', \'Ruangan Kelas 3\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.78\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":51,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(82, '9d367d94-0988-4f08-b8e9-0fb3633c9ffb', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Kelas 4\', \'Ruangan Kelas 4\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.81\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":51,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(83, '9d367d94-09f0-4814-bd45-630f6049f9a3', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodity_locations` (`name`, `description`, `created_at`, `updated_at`) values (\'Kelas 5\', \'Ruangan Kelas 5\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.72\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommodityLocationSeeder.php\",\"line\":51,\"hash\":\"32d049ef84e6aa60779fc72adb4d7667\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(84, '9d367d94-0c0f-4847-aebc-595f9296862e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `school_operational_assistances` (`name`, `description`, `created_at`, `updated_at`) values (\'BOSDA\', \'Deskripsi BOSDA\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.35\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\SchoolOperationalAssistanceSeeder.php\",\"line\":17,\"hash\":\"eda2a33e3108b54062d6725c04195863\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(85, '9d367d94-0c7a-4950-8e58-60153636d6cf', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `school_operational_assistances` (`name`, `description`, `created_at`, `updated_at`) values (\'BOSNAS\', \'Deskripsi BOSNAS\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\SchoolOperationalAssistanceSeeder.php\",\"line\":24,\"hash\":\"eda2a33e3108b54062d6725c04195863\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(86, '9d367d94-0e27-4060-aaab-92887b89a12e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodity_locations`\",\"time\":\"0.34\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":22,\"hash\":\"19c7a19c6ee17d416e02aa0f088af023\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(87, '9d367d94-0e47-459a-af40-934a8dbe8d4c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\CommodityLocation\",\"count\":25,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(88, '9d367d94-1005-4cae-a411-901ada2bbc71', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 19, \'BRG-6298554\', \'Rak Peralatan Sekolah\', \'Olympic\', \'Kayu Solid\', 2016, 1, 192, 233430, 39290, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.56\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(89, '9d367d94-109d-4bf3-9c6e-85e2e027723e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 10, \'BRG-7339149\', \'Penghapus Papan Tulis Putih\', \'IKEA\', \'MDF (Medium Density Fibreboard)\', 2019, 1, 152, 316234, 74227, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"1.06\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(90, '9d367d94-1121-40f6-b17c-5b2c3a3a2437', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 23, \'BRG-2816277\', \'Rak Peralatan Sekolah\', \'IKEA\', \'Partikel\', 2022, 2, 177, 184768, 126244, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(91, '9d367d94-1196-475c-ba67-ca12308140fc', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (1, 20, \'BRG-5006790\', \'Rak Sepatu\', \'IKEA\', \'Blockboard\', 2020, 2, 92, 70740, 110588, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.82\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(92, '9d367d94-120e-4bce-a964-b3b6c2587219', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 22, \'BRG-6521542\', \'Kipas Dinding\', \'Olympic\', \'Partikel\', 2013, 3, 170, 84333, 145768, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.83\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(93, '9d367d94-1289-4e58-8845-53f288c69266', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (1, 22, \'BRG-4060620\', \'Lemari Sepatu\', \'Dove\\\\\'s\', \'Melaminto\', 2020, 3, 150, 372107, 26344, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(94, '9d367d94-1300-4374-84a9-c427cfedf849', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 5, \'BRG-2624517\', \'Kipas Dinding\', \'Dove\\\\\'s\', \'Rotan\', 2020, 2, 159, 303050, 113190, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.79\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(95, '9d367d94-1377-4abd-b45b-1cc5f8512a28', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 7, \'BRG-4298293\', \'Rak Sepatu\', \'Olympic\', \'Rotan\', 2013, 1, 181, 446319, 147423, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.85\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(96, '9d367d94-13e9-40a7-9ec9-bf41ebedd1c8', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (1, 9, \'BRG-2080614\', \'Papan Tulis Hitam\', \'Funika\', \'Blockboard\', 2024, 1, 91, 75111, 69456, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.80\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(97, '9d367d94-145e-45dd-8005-adb9b5a0305c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (1, 16, \'BRG-8592870\', \'Papan Tulis Putih\', \'Atria\', \'Kayu Lapis (Plywood\\/Multipleks)\', 2024, 3, 90, 50523, 14140, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.78\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(98, '9d367d94-14d9-4931-a00f-e86119195d82', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (1, 1, \'BRG-6561787\', \'Kursi\', \'Livien\', \'Blockboard\', 2018, 3, 160, 289371, 64052, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.82\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(99, '9d367d94-1549-4b0d-9ace-9e3cf8e22fb9', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (1, 24, \'BRG-7008202\', \'Lemari Buku\', \'Red Sun\', \'Partikel\', 2020, 2, 106, 302439, 82810, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(100, '9d367d94-15b8-46a4-8df2-9c8142d7b26e', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 18, \'BRG-2628302\', \'Kipas Dinding\', \'IKEA\', \'MDF (Medium Density Fibreboard)\', 2012, 3, 65, 324756, 32325, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.80\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(101, '9d367d94-163d-4994-b79a-eed877bffcd6', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 21, \'BRG-5819215\', \'Papan Tulis Hitam\', \'Atria\', \'Partikel\', 2023, 1, 63, 113421, 27327, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.97\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(102, '9d367d94-16b9-4c05-94ff-90fe7ac6a4de', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 9, \'BRG-8696267\', \'Meja Guru\', \'Olympic\', \'Blockboard\', 2024, 2, 183, 190827, 147107, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.86\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(103, '9d367d94-174c-44e6-acc3-fa0e7c6e7a85', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (1, 13, \'BRG-7175600\', \'Rak Sepatu\', \'Funika\', \'Partikel\', 2024, 1, 65, 353676, 53720, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.92\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(104, '9d367d94-17c3-42f2-9e42-6ac6dfb4d111', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 18, \'BRG-3980238\', \'Rak Helm\', \'Dove\\\\\'s\', \'MDF (Medium Density Fibreboard)\', 2011, 3, 62, 257827, 66147, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.83\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(105, '9d367d94-1838-4459-8865-c816cc63ccb7', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 4, \'BRG-8549852\', \'Penghapus Papan Tulis Putih\', \'IKEA\', \'Kayu Lapis (Plywood\\/Multipleks)\', 2011, 1, 157, 459199, 62549, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.82\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(106, '9d367d94-18aa-443c-a576-dc49ede31ca1', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `commodities` (`school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `material`, `year_of_purchase`, `condition`, `quantity`, `price`, `price_per_item`, `note`, `created_at`, `updated_at`) values (2, 23, \'BRG-8263701\', \'Kipas Dinding\', \'Atria\', \'MDF (Medium Density Fibreboard)\', 2019, 1, 142, 127431, 33651, \'Keterangan barang\', \'2024-10-10 23:20:06\', \'2024-10-10 23:20:06\')\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\CommoditySeeder.php\",\"line\":71,\"hash\":\"62228014514f633bc98e790e1f2ef3fe\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(107, '9d367d94-1bba-40b2-9208-0b2f9e94e9c7', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`created_at`, `guard_name`, `name`, `updated_at`) values (\'2024-10-10 23:20:06\', \'web\', \'Administrator\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'Staff TU (Tata Usaha)\', \'2024-10-10 23:20:06\')\",\"time\":\"2.69\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\RoleSeeder.php\",\"line\":29,\"hash\":\"e47c964cc85f7512a4fd573c520ed2d9\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(108, '9d367d94-1ea8-4b96-b61e-bbabdd12afd2', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `permissions` (`created_at`, `guard_name`, `name`, `updated_at`) values (\'2024-10-10 23:20:06\', \'web\', \'tambah barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'lihat barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'detail barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'ubah barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'hapus barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'tambah bos\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'lihat bos\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'detail bos\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'ubah bos\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'hapus bos\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'tambah ruangan\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'lihat ruangan\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'detail ruangan\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'ubah ruangan\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'hapus ruangan\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'tambah pengguna\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'lihat pengguna\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'detail pengguna\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'ubah pengguna\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'hapus pengguna\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'import barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'export barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'import ruangan\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'export ruangan\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'print barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'print individual barang\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'mengatur profile\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'lihat peran dan hak akses\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'tambah peran dan hak akses\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'ubah peran dan hak akses\', \'2024-10-10 23:20:06\'), (\'2024-10-10 23:20:06\', \'web\', \'hapus peran dan hak akses\', \'2024-10-10 23:20:06\')\",\"time\":\"2.29\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\PermissionSeeder.php\",\"line\":44,\"hash\":\"64f3aac98f4a7060926533a30cb3a321\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(109, '9d367d94-204b-47b9-9e39-107c3860b796', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` limit 2\",\"time\":\"0.55\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserRoleSeeder.php\",\"line\":16,\"hash\":\"2cf4f2e0977edb8b5662ed9bb5f82847\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(110, '9d367d94-206a-4bcd-99fd-9fd63f6e8c42', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":2,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(111, '9d367d94-20d5-460b-846c-6603230eea9c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` where `name` = \'Administrator\' and `guard_name` = \'web\' limit 1\",\"time\":\"0.27\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserRoleSeeder.php\",\"line\":18,\"hash\":\"de1bc7a62331e87ecc91f3ab3855091f\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(112, '9d367d94-20ef-4481-8b9b-5ff1205eeb7c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":4,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(113, '9d367d94-22de-4b12-8eaa-3d168fa68e59', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` = 1 and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"1.17\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserRoleSeeder.php\",\"line\":18,\"hash\":\"eb2635dbf27540ab6ab19dc9db8a2961\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(114, '9d367d94-236e-4f94-9662-8fe418c75e2a', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `model_has_roles` (`model_id`, `model_type`, `role_id`) values (1, \'App\\\\User\', 1)\",\"time\":\"0.85\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserRoleSeeder.php\",\"line\":18,\"hash\":\"b40636c8a9886b7fb107e3eb7dd2c0eb\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(115, '9d367d94-23bb-458e-be8f-3ba8d927080c', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` where `name` = \'Staff TU (Tata Usaha)\' and `guard_name` = \'web\' limit 1\",\"time\":\"0.27\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserRoleSeeder.php\",\"line\":19,\"hash\":\"de1bc7a62331e87ecc91f3ab3855091f\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(116, '9d367d94-241c-4f3c-8a38-67c493e72341', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` = 2 and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"0.31\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserRoleSeeder.php\",\"line\":19,\"hash\":\"eb2635dbf27540ab6ab19dc9db8a2961\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(117, '9d367d94-24a3-4df4-ad66-fba99d2870cf', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `model_has_roles` (`model_id`, `model_type`, `role_id`) values (2, \'App\\\\User\', 2)\",\"time\":\"0.84\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\UserRoleSeeder.php\",\"line\":19,\"hash\":\"b40636c8a9886b7fb107e3eb7dd2c0eb\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(118, '9d367d94-2648-4116-88e9-590ada162524', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions`\",\"time\":\"0.41\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\RolePermissionSeeder.php\",\"line\":17,\"hash\":\"c61ac84cc59cece74af9165092fde0b3\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(119, '9d367d94-2667-40db-be48-f4f5be47e9e8', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Permission\",\"count\":31,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(120, '9d367d94-2705-4dfa-a642-c969fe6795f1', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles`\",\"time\":\"0.27\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\RolePermissionSeeder.php\",\"line\":26,\"hash\":\"e7c1dcb1707dc1017a4baf56676b2f28\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(121, '9d367d94-27c7-4dba-98d8-cdd6ee4302e3', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `role_has_permissions` where `role_has_permissions`.`role_id` = 1\",\"time\":\"0.90\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\RolePermissionSeeder.php\",\"line\":29,\"hash\":\"8766f2d178fe13af72604c4a29807ba7\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(122, '9d367d94-28c5-4097-ba16-ca812e1315c2', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `role_has_permissions` (`permission_id`, `role_id`) values (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1), (21, 1), (22, 1), (23, 1), (24, 1), (25, 1), (26, 1), (27, 1), (28, 1), (29, 1), (30, 1), (31, 1)\",\"time\":\"1.39\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\RolePermissionSeeder.php\",\"line\":29,\"hash\":\"2213afdf48f4bbf9ab9df349444a487a\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(123, '9d367d94-2938-4f9c-bf7a-7aae5d899650', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `role_has_permissions` where `role_has_permissions`.`role_id` = 2\",\"time\":\"0.27\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\RolePermissionSeeder.php\",\"line\":32,\"hash\":\"8766f2d178fe13af72604c4a29807ba7\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(124, '9d367d94-2a00-4e8a-90f1-655d7b1a0e39', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `role_has_permissions` (`permission_id`, `role_id`) values (1, 2), (2, 2), (3, 2), (4, 2), (5, 2), (6, 2), (7, 2), (8, 2), (9, 2), (10, 2), (11, 2), (12, 2), (13, 2), (14, 2), (15, 2), (18, 2), (21, 2), (22, 2), (23, 2), (24, 2), (25, 2), (26, 2), (27, 2)\",\"time\":\"1.09\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\database\\\\seeders\\\\RolePermissionSeeder.php\",\"line\":32,\"hash\":\"1bd50e6ced264f3e02a7cc055ed2fe04\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(125, '9d367d94-2b3a-4ca1-9f2f-1f95bf51eed3', '9d367d94-2bff-4c91-a008-39bee67c08ca', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":true,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:06'),
(126, '9d367d99-69fb-4a9f-a3d6-86da12ee7249', '9d367d99-a942-4c8b-b838-8777b7492d4b', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:10'),
(127, '9d367d99-8f3d-4487-b429-bd63aea15ed7', '9d367d99-a942-4c8b-b838-8777b7492d4b', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:10'),
(128, '9d367d99-9f5b-498e-b64b-f476bc34a81d', '9d367d99-a942-4c8b-b838-8777b7492d4b', NULL, 1, 'view', '{\"name\":\"layouts.partials.greetings\",\"path\":\"\\\\resources\\\\views\\/layouts\\/partials\\/greetings.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:10'),
(129, '9d367d99-a859-4e79-9d31-c9b812c94d30', '9d367d99-a942-4c8b-b838-8777b7492d4b', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\"},\"payload\":[],\"session\":{\"_token\":\"CqW9uGP79Sl7yh2lXC6ZSwOrh48PmvK66Sim58t8\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":403,\"memory\":22,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:10'),
(130, '9d367dba-e9e2-439b-9be3-6c4d071725fc', '9d367dbb-063e-43a5-891e-39990bec6973', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `email` = \'admin@mail.com\' limit 1\",\"time\":\"4.85\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\LoginController.php\",\"line\":17,\"hash\":\"747ef04de752900539e8a3a1aee036ac\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:31'),
(131, '9d367dba-ebca-4165-8855-d75419a69d2f', '9d367dbb-063e-43a5-891e-39990bec6973', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:31'),
(132, '9d367dbb-0513-4eb1-acc1-c821904bb31a', '9d367dbb-063e-43a5-891e-39990bec6973', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\LoginController@login\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"content-length\":\"86\",\"cache-control\":\"max-age=0\",\"origin\":\"http:\\/\\/inven-bs.test\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Iml3SGhDSU1VajRyU0lvQjNubmpjOVE9PSIsInZhbHVlIjoiZXFmOThsVXBxWVAvelF3aUY4U3YwV1gxcmpKcjcvc1VYNkM2RlhxdmtVK2o5RFdIWTFGZTVYUG9kQWFWQmNDTUgzQmtZNkNPcU1VK2s1a3hJdjNIaEN2NlFnM3Fmc0MzcHRra2xROUtIelZlUU5yUm1wTnhVem9EK3cydC9oZmQiLCJtYWMiOiI4MGZlOWE5ODUzODUyN2JkMTA1ZjliOTljMDYxMDMzOTlhNTA3NDk3OGEyZGY2MmI4MzhhNDIwNzZjYzVjNDcwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkdDVTk0eVV3Z3A0c3QxbUdkcXQzcGc9PSIsInZhbHVlIjoib0s2bGJhazVDKzY4cHppTS9wS1BEWXpiNk9zNHdtekpwUVUrVHpDODVCVjlNRmlUR2pYVWlCSHFMVlpZaVl6YW9BbGpDQk1WRmhmYWVra2NKTWZ3N2UzVlNrQlJNK2VGaHoyczA2R1krMHIwYytaOW5URHcyaCtqY1F2RG9TOWciLCJtYWMiOiIxMjdkMGU2MzcyZmZjNmJhYTEzMWIxNzM3N2EyMWZlOTRmYmMzZmQ4OTYzNTg2OTZmNTQxYzlkMjgzYWQ3NmZkIiwidGFnIjoiIn0%3D\"},\"payload\":{\"_token\":\"CqW9uGP79Sl7yh2lXC6ZSwOrh48PmvK66Sim58t8\",\"email\":\"admin@mail.com\",\"password\":\"********\"},\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/inven-bs.test\\/dashboard\",\"duration\":303,\"memory\":22,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(133, '9d367dbb-78c3-4a20-bce8-dc0b767bf747', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"26.39\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:32'),
(134, '9d367dbb-7b1b-42a2-906a-a78167e41614', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:32'),
(135, '9d367dbb-7d3c-49d0-868a-fe4780f03c1e', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodities` order by `price` desc limit 5\",\"time\":\"2.39\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\HomeController.php\",\"line\":32,\"hash\":\"bfc8cd56b2fc2df972c1827ca011f3a5\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(136, '9d367dbb-7d6f-442f-9425-14cec1b64c14', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Commodity\",\"count\":32,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(137, '9d367dbb-7dfe-459c-9a95-77177d5c329e', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `condition`, COUNT(`condition`) AS count from `commodities` group by `condition`\",\"time\":\"0.62\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Repositories\\\\CommodityRepository.php\",\"line\":21,\"hash\":\"baad0ce4ee8a58af943bfd3137db74b4\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(138, '9d367dbb-7e55-4044-b56f-b0dde00c42be', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select COUNT(`year_of_purchase`) AS count, year_of_purchase from `commodities` group by `year_of_purchase` order by `year_of_purchase` asc\",\"time\":\"0.30\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Repositories\\\\CommodityRepository.php\",\"line\":32,\"hash\":\"51f02f2272b587f256c430140e89ee3b\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(139, '9d367dbb-80c8-49e3-a54b-a2627eba9342', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `commodity_locations`.*, (select count(*) from `commodities` where `commodity_locations`.`id` = `commodities`.`commodity_location_id`) as `commodities_count` from `commodity_locations` where exists (select * from `commodities` where `commodity_locations`.`id` = `commodities`.`commodity_location_id`)\",\"time\":\"2.99\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\HomeController.php\",\"line\":48,\"hash\":\"901ca31fab8a4a7aef6091222cf5c1d5\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(140, '9d367dbb-80fa-4fe4-8146-6388756db429', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\CommodityLocation\",\"count\":15,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(141, '9d367dbb-81c7-4faf-8c3e-f7fc8078476d', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `school_operational_assistances`.*, (select count(*) from `commodities` where `school_operational_assistances`.`id` = `commodities`.`school_operational_assistance_id`) as `commodities_count` from `school_operational_assistances`\",\"time\":\"0.98\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Repositories\\\\SchoolOperationalAssistanceRepository.php\",\"line\":19,\"hash\":\"487e3de92223bd17bab42dfc0c64caf2\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(142, '9d367dbb-81fa-45d3-837b-275ce63eb4bf', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\SchoolOperationalAssistance\",\"count\":2,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(143, '9d367dbb-8287-4ecf-a10d-7c8685ff2ed8', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select COUNT(`material`) AS count, material from `commodities` group by `material` order by `material` asc\",\"time\":\"1.01\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Repositories\\\\CommodityRepository.php\",\"line\":43,\"hash\":\"8c46894e8b2a493036c0cef4cff5edc3\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(144, '9d367dbb-82e1-4557-96ae-8d1ab581921f', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select COUNT(`brand`) AS count, brand from `commodities` group by `brand` order by `brand` asc\",\"time\":\"0.32\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Repositories\\\\CommodityRepository.php\",\"line\":54,\"hash\":\"f6ee48fbd4f70baab13687255dc197a8\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(145, '9d367dbb-8720-46ce-b716-829f497600d0', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"home\",\"path\":\"\\\\resources\\\\views\\/home.blade.php\",\"data\":[\"commodity_order_by_price\",\"commodity_counts\",\"charts\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(146, '9d367dbc-3bb0-4b30-847c-2379596d1fbb', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"components.bar-chart\",\"path\":\"\\\\resources\\\\views\\/components\\/bar-chart.blade.php\",\"data\":[\"chartTitle\",\"chartID\",\"series\",\"categories\",\"colors\",\"componentName\",\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(147, '9d367dbc-45da-4bc2-aefe-f8b55f31667d', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"spatie.permission.cache\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(148, '9d367dbc-46db-4735-ad5a-d0c37b1ff4d0', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions`\",\"time\":\"1.29\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hash\":\"c61ac84cc59cece74af9165092fde0b3\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(149, '9d367dbc-470a-4ca7-a5e1-fa7a22272406', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Permission\",\"count\":31,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(150, '9d367dbc-49f8-4ff3-897a-0b4476ad7f47', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `role_has_permissions`.`permission_id` as `pivot_permission_id`, `role_has_permissions`.`role_id` as `pivot_role_id` from `roles` inner join `role_has_permissions` on `roles`.`id` = `role_has_permissions`.`role_id` where `role_has_permissions`.`permission_id` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31)\",\"time\":\"1.47\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hash\":\"0b6ceeb6110333411b473daa9e10a5f2\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(151, '9d367dbc-4a2b-4600-b53b-0d9ab6ff181c', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":55,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(152, '9d367dbc-4c69-4e61-b698-fef4417d1644', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'cache', '{\"type\":\"set\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"expiration\":86400,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(153, '9d367dbc-4e63-4376-a591-009628f2f7cb', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"2.17\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(154, '9d367dbc-4f49-4805-8c2a-41db30760a7b', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"1.19\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(155, '9d367dbc-5060-4505-a724-73ee112cc197', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(156, '9d367dbc-50b1-4349-b12a-87df17b5fbbb', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(157, '9d367dbc-50e0-4251-9052-85bdb5dca2a8', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(158, '9d367dbc-5104-4c27-9903-7ac531db0e5d', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(159, '9d367dbc-5126-45cc-ab3f-5299fdfc1a51', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":117,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(160, '9d367dbc-5147-42ec-8e8b-40e4f865bb58', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\c288aecacd3f3abbc0863a4a72429278.php\",\"line\":127,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(161, '9d367dbc-51e8-4b1b-bdfb-862f9647ab58', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"components.bar-chart\",\"path\":\"\\\\resources\\\\views\\/components\\/bar-chart.blade.php\",\"data\":[\"chartTitle\",\"chartID\",\"series\",\"categories\",\"colors\",\"componentName\",\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(162, '9d367dbc-522b-4543-a997-adcf2441e357', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"components.pie-chart\",\"path\":\"\\\\resources\\\\views\\/components\\/pie-chart.blade.php\",\"data\":[\"chartTitle\",\"chartID\",\"series\",\"categories\",\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(163, '9d367dbc-5af3-458e-b02a-0fee5f2e3eaa', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"components.pie-chart\",\"path\":\"\\\\resources\\\\views\\/components\\/pie-chart.blade.php\",\"data\":[\"chartTitle\",\"chartID\",\"series\",\"categories\",\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(164, '9d367dbc-5b89-47ee-9083-38d3b4e97dae', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"components.pie-chart\",\"path\":\"\\\\resources\\\\views\\/components\\/pie-chart.blade.php\",\"data\":[\"chartTitle\",\"chartID\",\"series\",\"categories\",\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(165, '9d367dbc-5bd6-4844-9b90-930bca32fa8a', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"components.bar-chart\",\"path\":\"\\\\resources\\\\views\\/components\\/bar-chart.blade.php\",\"data\":[\"chartTitle\",\"chartID\",\"series\",\"categories\",\"colors\",\"componentName\",\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(166, '9d367dbc-5c10-422b-bde0-b9f68d5421be', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"commodities.modal.show\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/show.blade.php\",\"data\":[\"commodity_order_by_price\",\"commodity_counts\",\"charts\",\"component\",\"__currentLoopData\",\"order_by_price\",\"key\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(167, '9d367dbc-6328-4a97-8cfd-9beb426e1b48', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"_script\",\"path\":\"\\\\resources\\\\views\\/_script.blade.php\",\"data\":[\"commodity_order_by_price\",\"commodity_counts\",\"charts\",\"component\",\"__currentLoopData\",\"order_by_price\",\"key\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(168, '9d367dbc-6cf4-4f52-a7f0-4ef8768d70c4', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:32'),
(169, '9d367dbc-a64c-410e-b9e6-521f62c35cb5', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(170, '9d367dbc-a6a5-4afa-81ab-37a4b11c7242', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(171, '9d367dbc-a6d6-4d88-ba74-748123e49ccc', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(172, '9d367dbc-a701-4198-9c19-fb0806a1706c', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(173, '9d367dbc-a72f-4b6d-bdd3-57001fd27229', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(174, '9d367dbc-a75b-49df-b91e-0d43de465f9c', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(175, '9d367dbc-a785-482f-8d0e-0efbe2d481d2', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(176, '9d367dbc-a8b1-4653-ace4-0f69aa5409cd', '9d367dbc-aa00-47cf-bedd-71953db71913', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/dashboard\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@index\",\"middleware\":[\"web\",\"auth\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkljcGo4TzVVZ2xRaHNrNDZHZHBkL3c9PSIsInZhbHVlIjoiUWZ6TVFHV1lackVQZVl4ZUZrelQzVE9sdEdXYUFzK3FVQVhNSnQvTU5VeEJSN0tLRkpFMXB5aklPZEorUWw1VmxtTDd6cmczd3RMWE5uMlBwenJBdmgyNUtDYVoyQTRJd2xxMUFYNTJyQmpUQUtvSVluRC95YzFacVNGcFNIQm4iLCJtYWMiOiJjYWI0NTE3NTJiNjBiYWZlYzc5ZjFjOWE3YmE2MTEwNjE3YWU5NGQwNTM0NDVkMWVlNTQ1OWUwYjQ3ZDFiYjhlIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlJZYndtL0xteTVRTXJkYUt4c0NpQXc9PSIsInZhbHVlIjoiUzQyY1BMc05xMzdvWDZ3TlQ1Z0Mvd1J3SllZdWZQRFZIMGhiQkhFeEl5cXlZREQwSllvNWVyNjlxaWJHOXpmUFVVeGFZcUZsVllESmlSSlEzM3E1R08xdC85M21YYVYwMWwwNGxiWCtPY2NncmNtT3l6SGx5eHQxZGlyWTJWSnIiLCJtYWMiOiJjYjU5MTg1ZWY2ODk5NWU2YTc5NzE0NWMxYzg4OGJiYjlmOWYyZWNlYzc1MTM1YzU1N2ZiYzNjMDUwMzMzMzNiIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/dashboard\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/home.blade.php\",\"data\":{\"commodity_order_by_price\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":18,\"school_operational_assistance_id\":2,\"commodity_location_id\":4,\"item_code\":\"BRG-8549852\",\"name\":\"Penghapus Papan Tulis Putih\",\"brand\":\"IKEA\",\"material\":\"Kayu Lapis (Plywood\\/Multipleks)\",\"year_of_purchase\":2011,\"condition\":1,\"quantity\":157,\"price\":459199,\"price_per_item\":62549,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":8,\"school_operational_assistance_id\":2,\"commodity_location_id\":7,\"item_code\":\"BRG-4298293\",\"name\":\"Rak Sepatu\",\"brand\":\"Olympic\",\"material\":\"Rotan\",\"year_of_purchase\":2013,\"condition\":1,\"quantity\":181,\"price\":446319,\"price_per_item\":147423,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":6,\"school_operational_assistance_id\":1,\"commodity_location_id\":22,\"item_code\":\"BRG-4060620\",\"name\":\"Lemari Sepatu\",\"brand\":\"Dove\'s\",\"material\":\"Melaminto\",\"year_of_purchase\":2020,\"condition\":3,\"quantity\":150,\"price\":372107,\"price_per_item\":26344,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":16,\"school_operational_assistance_id\":1,\"commodity_location_id\":13,\"item_code\":\"BRG-7175600\",\"name\":\"Rak Sepatu\",\"brand\":\"Funika\",\"material\":\"Partikel\",\"year_of_purchase\":2024,\"condition\":1,\"quantity\":65,\"price\":353676,\"price_per_item\":53720,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":13,\"school_operational_assistance_id\":2,\"commodity_location_id\":18,\"item_code\":\"BRG-2628302\",\"name\":\"Kipas Dinding\",\"brand\":\"IKEA\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2012,\"condition\":3,\"quantity\":65,\"price\":324756,\"price_per_item\":32325,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]},\"commodity_counts\":{\"commodity_in_total\":19,\"commodity_in_good_condition\":8,\"commodity_in_not_good_condition\":5,\"commodity_in_heavily_damage_condition\":6},\"charts\":{\"commodity_condition_count\":{\"categories\":[\"Baik\",\"Kurang Baik\",\"Rusak Berat\"],\"series\":[8,5,6]},\"commodity_each_year_of_purchase_count\":{\"categories\":[2011,2012,2013,2016,2018,2019,2020,2022,2023,2024],\"series\":[2,1,2,1,1,2,4,1,1,4]},\"commodity_each_location_count\":{\"categories\":[\"Ruang Kepala Sekolah\",\"Perpustakaan Bawah\",\"Perpustakaan Atas\",\"Ruang Laboratorium\",\"Ruang Kantin\",\"Ruang Koperasi\",\"Ruang Kepala Tata Usaha (TU)\",\"Ruang Komputer\",\"Ruang Serba Guna\",\"Ruangan Guru BP (Bimbingan Penyuluhan)\",\"Ruang Kegiatan Ekstrakurikuler\",\"Kelas 1\",\"Kelas 2\",\"Kelas 3\",\"Kelas 4\"],\"series\":[1,1,1,1,2,1,1,1,2,1,1,1,2,2,1]},\"commodity_by_school_operational_assistance_count\":{\"categories\":[\"BOSDA\",\"BOSNAS\"],\"series\":[7,12]},\"commodity_by_material_count\":{\"categories\":[\"Blockboard\",\"Kayu Lapis (Plywood\\/Multipleks)\",\"Kayu Solid\",\"MDF (Medium Density Fibreboard)\",\"Melaminto\",\"Partikel\",\"Rotan\"],\"series\":[4,2,1,4,1,5,2]},\"commodity_by_brand_count\":{\"categories\":[\"Atria\",\"Dove\'s\",\"Funika\",\"IKEA\",\"Livien\",\"Olympic\",\"Red Sun\"],\"series\":[3,3,2,5,1,4,1]}}}},\"duration\":1063,\"memory\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:33'),
(177, '9d367dc2-b1be-4929-90d2-cc85a8e5ac50', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"2.93\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:37'),
(178, '9d367dc2-b3e4-47bb-a2ce-08d71d6beede', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:37'),
(179, '9d367dc2-b599-4589-8d47-c6b2d27981cd', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(180, '9d367dc2-b8aa-4c42-8412-6756d26e11f2', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"1.82\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityPolicy.php\",\"line\":16,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(181, '9d367dc2-b956-4032-a69e-1dc51ef871d0', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"0.72\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityPolicy.php\",\"line\":16,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(182, '9d367dc2-b978-4e4f-a1d1-5c843f540bfd', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(183, '9d367dc2-ba24-40c2-830a-35a9d2110953', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityPolicy.php\",\"line\":16,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(184, '9d367dc2-ba63-4c1d-b076-5bdfb66c5dbf', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"viewAny\",\"result\":\"allowed\",\"arguments\":[\"App\\\\Commodity\"],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(185, '9d367dc2-baff-42e3-9e1b-0d4f3dede025', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodities` order by `created_at` desc\",\"time\":\"0.95\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":54,\"hash\":\"8c6e535f56a14aa57a5b948c0f6d6485\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(186, '9d367dc2-bb23-421a-98c7-c216f079e1c4', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Commodity\",\"count\":19,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(187, '9d367dc2-bb8a-4657-a6b0-537c2a5cb4c4', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `year_of_purchase` from `commodities`\",\"time\":\"0.32\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":55,\"hash\":\"fc817363fcd4672f8b3e6eb696a3059c\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(188, '9d367dc2-bbd3-49e6-b28a-8aa5e668b888', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `brand` from `commodities`\",\"time\":\"0.25\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":56,\"hash\":\"08d72535bdd31dd7991b9c55e179fbaf\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(189, '9d367dc2-bc14-46ae-b030-f611d266bb8e', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `material` from `commodities`\",\"time\":\"0.26\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":57,\"hash\":\"c7074b87b057ff41ab9d745089733f86\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(190, '9d367dc2-bc9b-4dfb-b3e9-ce62b99e6667', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `school_operational_assistances` order by `name` asc\",\"time\":\"0.56\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":58,\"hash\":\"17014ab3095d8d378e684a761258a17a\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(191, '9d367dc2-bcbb-41c2-9e16-4729860c3b04', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\SchoolOperationalAssistance\",\"count\":2,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(192, '9d367dc2-bd56-4897-b6e3-c235fa9d82eb', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodity_locations` order by `name` asc\",\"time\":\"0.78\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":59,\"hash\":\"6be74585ea201e74c97d0866e19683be\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(193, '9d367dc2-bd7e-4fba-8e0f-84fcb57dc275', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\CommodityLocation\",\"count\":25,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(194, '9d367dc2-c0fe-46d1-ae18-691abbb34b45', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"commodities.index\",\"path\":\"\\\\resources\\\\views\\/commodities\\/index.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(195, '9d367dc3-3ceb-46de-b8da-7315aa7d6e0b', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(196, '9d367dc3-3d8e-4edc-886f-310ac669c57b', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"import barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":19,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(197, '9d367dc3-3db7-4edd-849c-ff13c9e7ecfc', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"export barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(198, '9d367dc3-3e17-424f-9f06-ff9ef51ebfcd', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"tambah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":37,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(199, '9d367dc3-3e3e-497e-ba25-75302b37449e', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":44,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(200, '9d367dc3-3ea5-4679-80d4-201be4f3f451', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"components.filter.index\",\"path\":\"\\\\resources\\\\views\\/components\\/filter\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"resetFilterURL\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(201, '9d367dc3-43fe-40e7-bd29-c6193e283aa9', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(202, '9d367dc3-443e-40cc-9247-1b8bad1c3e03', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(203, '9d367dc3-4468-4bef-83e3-e880c24ea663', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(204, '9d367dc3-4492-4308-91df-8c64de5577e9', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(205, '9d367dc3-44bb-4b77-82c7-6c2d56c05582', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(206, '9d367dc3-44df-4835-99c3-870576a3ea2b', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(207, '9d367dc3-4504-4b56-9068-08a1b245a81c', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(208, '9d367dc3-4528-4128-a642-3f6d824fa13a', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(209, '9d367dc3-454f-4eff-90a7-34f64d53e882', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(210, '9d367dc3-4570-4d9b-bfa5-2f3341a3a19a', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(211, '9d367dc3-4598-47b5-811f-565a18264751', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(212, '9d367dc3-45bc-47a3-9422-dd5e8ffb3eeb', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(213, '9d367dc3-45e3-4fb8-82e1-33c7cb3595a2', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(214, '9d367dc3-4609-4949-8c0a-7d7c4d41d7c1', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(215, '9d367dc3-4642-4098-91cf-b29f703b19b4', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(216, '9d367dc3-468a-4145-aade-60ed123c1f5e', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(217, '9d367dc3-46c8-485c-b396-57bbbd13a373', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(218, '9d367dc3-46f9-41e9-af94-74011d025b27', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(219, '9d367dc3-472f-434e-b878-02017520bdba', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(220, '9d367dc3-4762-4aef-ac33-45651ea23ec1', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(221, '9d367dc3-478e-4a47-b623-e7e02d5daf70', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(222, '9d367dc3-47b1-409b-bedc-5419d49710c3', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(223, '9d367dc3-47d7-46d3-b6ea-4a15daed49aa', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(224, '9d367dc3-47fd-4736-a82a-33431c04cbeb', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(225, '9d367dc3-4824-45f3-b979-232017e8947b', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(226, '9d367dc3-4846-42c1-949c-b0bc39d3260c', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(227, '9d367dc3-486b-4f0b-9da7-75f824239119', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(228, '9d367dc3-4890-4378-8880-94a5fedbe4ac', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(229, '9d367dc3-48b8-4380-beaf-82e5258e1151', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(230, '9d367dc3-48da-408b-bd19-3698d6f9a531', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(231, '9d367dc3-48fe-4685-b1ea-0f853ee44d56', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(232, '9d367dc3-4923-47e7-bf2e-e0a7aaba3eba', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(233, '9d367dc3-494c-4e5e-8fa6-4bed76649695', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(234, '9d367dc3-496e-450e-8648-2d12e542418d', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(235, '9d367dc3-4992-4b66-8845-8caf8768e860', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(236, '9d367dc3-49b8-4f43-a27d-2faa16033da8', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(237, '9d367dc3-49df-4c20-9599-d77cfffe85ae', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(238, '9d367dc3-4a00-4193-b167-ced9124813c9', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(239, '9d367dc3-4a25-426c-a178-5eb965ac26d7', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(240, '9d367dc3-4a4a-441f-9092-ab5d5cf1e092', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(241, '9d367dc3-4a7c-451a-b798-642a6770330e', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(242, '9d367dc3-4aa0-4a55-bdca-a5a4838edf8d', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(243, '9d367dc3-4ac7-4611-9d75-d6b2665694b0', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(244, '9d367dc3-4aee-42b0-a56e-d3b82342bcc5', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(245, '9d367dc3-4b18-4b7d-a646-97781be590ec', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(246, '9d367dc3-4b3a-4049-bc81-27a37d3d272f', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(247, '9d367dc3-4b63-4420-9abb-5214cbc7a58b', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(248, '9d367dc3-4b88-40b9-835e-581356b54dd7', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(249, '9d367dc3-4baf-403f-9dd7-d6e862b1ba39', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(250, '9d367dc3-4bd1-4e46-bae4-76ff130f8c40', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(251, '9d367dc3-4bfa-4ea5-ad9e-c0fab0fd2697', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(252, '9d367dc3-4c20-44ae-9cd7-9717e372baa1', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(253, '9d367dc3-4c4b-4ef4-b260-466e0fceeab2', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(254, '9d367dc3-4c73-4d43-af09-48d7acf5f8f4', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(255, '9d367dc3-4c98-459e-8753-dda81920bc96', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(256, '9d367dc3-4cbd-499d-95da-ac75c6ca72e3', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(257, '9d367dc3-4ce3-4a71-a20d-8ad53e67a2d6', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(258, '9d367dc3-4d05-41da-8082-7aedaa5b7e95', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(259, '9d367dc3-4d2a-4d5f-affe-284644b05485', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(260, '9d367dc3-4d4f-4483-97a0-aa01997fdc77', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(261, '9d367dc3-4d76-4820-b1a5-04bce9786911', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(262, '9d367dc3-4d97-4626-80a1-d116b024537f', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(263, '9d367dc3-4dbc-4ed5-97bf-61f81a4a5851', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(264, '9d367dc3-4de0-493b-986f-d9f1e576bf72', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(265, '9d367dc3-4e08-44a8-9620-d56c4d91129b', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(266, '9d367dc3-4e29-4335-b831-e4b381aec4ab', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(267, '9d367dc3-4e4d-4029-8663-8c9c4a0d880e', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(268, '9d367dc3-4e70-408b-a7b2-e230af8fffd6', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(269, '9d367dc3-4e97-4f78-bca7-572111d289bd', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(270, '9d367dc3-4eb9-4d03-bfba-53babc8b2543', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(271, '9d367dc3-4edd-420b-aa20-19496f68e6bd', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(272, '9d367dc3-4f01-47a1-9617-b1328ec73402', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(273, '9d367dc3-4f27-4124-8122-c565f4d8f068', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(274, '9d367dc3-4f48-4aa7-ba36-2b01ce994cc6', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(275, '9d367dc3-4f6c-40f9-b265-e11cb603903d', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(276, '9d367dc3-4f90-46b0-9da6-5a32c5dae78a', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(277, '9d367dc3-4fb3-4bab-9463-ce76108a14fb', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"components.datatable.index\",\"path\":\"\\\\resources\\\\views\\/components\\/datatable\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(278, '9d367dc3-5c76-4396-a591-afc7d00c5c78', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"commodities.modal.show\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/show.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(279, '9d367dc3-5cbe-408e-ad31-e3c6c9cbf257', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"commodities.modal.create\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/create.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(280, '9d367dc3-b091-48e8-ac14-2e1ce1e9981c', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"commodities.modal.edit\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/edit.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(281, '9d367dc3-beb0-482c-81f0-8db14443dbf1', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"commodities.modal.import\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/import.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(282, '9d367dc3-c4e2-4ee7-9f58-27d977910bc4', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"commodities._script\",\"path\":\"\\\\resources\\\\views\\/commodities\\/_script.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(283, '9d367dc3-cc76-473d-b7d3-c94b9059d932', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(284, '9d367dc3-cd63-4a12-af1e-5cda96f563ee', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(285, '9d367dc3-cd99-4519-aa73-4c3cc440ade7', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(286, '9d367dc3-cdc0-4b07-a255-63e96faf2762', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(287, '9d367dc3-cde8-42bb-bbd0-a1b0235e3dc8', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(288, '9d367dc3-ce10-47a2-8747-945e82c19e82', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(289, '9d367dc3-ce3a-4e5a-99f0-e5bbeb04ba25', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(290, '9d367dc3-ce63-4e99-968e-53b054754b19', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(291, '9d367dc3-d100-4ef0-9fe4-94d84666a478', '9d367dc3-d1c4-401c-af9b-f6947bd41702', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/barang\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\CommodityController@index\",\"middleware\":[\"web\",\"auth\",\"can:viewAny,App\\\\Commodity\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/dashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlJNR0YyOU1ONG1QTDR0V1pqTmxpdlE9PSIsInZhbHVlIjoielY3ZnRQVWJkUXZRSmpMZ1FrUjVsNzkzdnNwbWVDc041WGRLLzZ1UGZ0NFo1bFVlWnBSWFQ0RUFYaWVQL2NjNW52WjlFa3V2c2xwUGduYm44U0xyRjZ5R1oybDNVZURSRkVjSjEzVjJmZk9pNlllTkxCYWk5KzJOdnBiZHpBRTEiLCJtYWMiOiIxMmY3ZDU2NmVkY2ZiZjcxZDY1MmY1OGVkYTg3MDEwYzAxNGUxNGI4MmE4YTlhMWNjMDI1MzI2YTMxNzIxYmZiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBrM1JFQ0dUb281N1pjUW9NTkRSWXc9PSIsInZhbHVlIjoialdrTUtpS2lWSkE4VGtLRUpNOHFCVVRhak9wYTZZZ3RHWnpGMktoS0s3Q2xicTgwQWpJWVhLWFhBcUpidVZGeXVvVkNrQUQyZkNTSUVuaGw0cHFKU09MUUpaZkRmdG91RE1uTlduc1B1Yy94d3B2K04yUDB3NldTOUxGZ2x0RWciLCJtYWMiOiI1NGM0NWVlZWRhNjIzNTc1MjA4NzhhMTRlZmE4NjIwYWUwYTQyOWNlOTAxNzBmN2E2ZTcxNTdiNmNlNmMxNTA1IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/barang\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/commodities\\/index.blade.php\",\"data\":{\"commodities\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"school_operational_assistance_id\":2,\"commodity_location_id\":19,\"item_code\":\"BRG-6298554\",\"name\":\"Rak Peralatan Sekolah\",\"brand\":\"Olympic\",\"material\":\"Kayu Solid\",\"year_of_purchase\":2016,\"condition\":1,\"quantity\":192,\"price\":233430,\"price_per_item\":39290,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"school_operational_assistance_id\":2,\"commodity_location_id\":10,\"item_code\":\"BRG-7339149\",\"name\":\"Penghapus Papan Tulis Putih\",\"brand\":\"IKEA\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2019,\"condition\":1,\"quantity\":152,\"price\":316234,\"price_per_item\":74227,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":3,\"school_operational_assistance_id\":2,\"commodity_location_id\":23,\"item_code\":\"BRG-2816277\",\"name\":\"Rak Peralatan Sekolah\",\"brand\":\"IKEA\",\"material\":\"Partikel\",\"year_of_purchase\":2022,\"condition\":2,\"quantity\":177,\"price\":184768,\"price_per_item\":126244,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":4,\"school_operational_assistance_id\":1,\"commodity_location_id\":20,\"item_code\":\"BRG-5006790\",\"name\":\"Rak Sepatu\",\"brand\":\"IKEA\",\"material\":\"Blockboard\",\"year_of_purchase\":2020,\"condition\":2,\"quantity\":92,\"price\":70740,\"price_per_item\":110588,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":5,\"school_operational_assistance_id\":2,\"commodity_location_id\":22,\"item_code\":\"BRG-6521542\",\"name\":\"Kipas Dinding\",\"brand\":\"Olympic\",\"material\":\"Partikel\",\"year_of_purchase\":2013,\"condition\":3,\"quantity\":170,\"price\":84333,\"price_per_item\":145768,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":6,\"school_operational_assistance_id\":1,\"commodity_location_id\":22,\"item_code\":\"BRG-4060620\",\"name\":\"Lemari Sepatu\",\"brand\":\"Dove\'s\",\"material\":\"Melaminto\",\"year_of_purchase\":2020,\"condition\":3,\"quantity\":150,\"price\":372107,\"price_per_item\":26344,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":7,\"school_operational_assistance_id\":2,\"commodity_location_id\":5,\"item_code\":\"BRG-2624517\",\"name\":\"Kipas Dinding\",\"brand\":\"Dove\'s\",\"material\":\"Rotan\",\"year_of_purchase\":2020,\"condition\":2,\"quantity\":159,\"price\":303050,\"price_per_item\":113190,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":8,\"school_operational_assistance_id\":2,\"commodity_location_id\":7,\"item_code\":\"BRG-4298293\",\"name\":\"Rak Sepatu\",\"brand\":\"Olympic\",\"material\":\"Rotan\",\"year_of_purchase\":2013,\"condition\":1,\"quantity\":181,\"price\":446319,\"price_per_item\":147423,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":9,\"school_operational_assistance_id\":1,\"commodity_location_id\":9,\"item_code\":\"BRG-2080614\",\"name\":\"Papan Tulis Hitam\",\"brand\":\"Funika\",\"material\":\"Blockboard\",\"year_of_purchase\":2024,\"condition\":1,\"quantity\":91,\"price\":75111,\"price_per_item\":69456,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":10,\"school_operational_assistance_id\":1,\"commodity_location_id\":16,\"item_code\":\"BRG-8592870\",\"name\":\"Papan Tulis Putih\",\"brand\":\"Atria\",\"material\":\"Kayu Lapis (Plywood\\/Multipleks)\",\"year_of_purchase\":2024,\"condition\":3,\"quantity\":90,\"price\":50523,\"price_per_item\":14140,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":11,\"school_operational_assistance_id\":1,\"commodity_location_id\":1,\"item_code\":\"BRG-6561787\",\"name\":\"Kursi\",\"brand\":\"Livien\",\"material\":\"Blockboard\",\"year_of_purchase\":2018,\"condition\":3,\"quantity\":160,\"price\":289371,\"price_per_item\":64052,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":12,\"school_operational_assistance_id\":1,\"commodity_location_id\":24,\"item_code\":\"BRG-7008202\",\"name\":\"Lemari Buku\",\"brand\":\"Red Sun\",\"material\":\"Partikel\",\"year_of_purchase\":2020,\"condition\":2,\"quantity\":106,\"price\":302439,\"price_per_item\":82810,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":13,\"school_operational_assistance_id\":2,\"commodity_location_id\":18,\"item_code\":\"BRG-2628302\",\"name\":\"Kipas Dinding\",\"brand\":\"IKEA\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2012,\"condition\":3,\"quantity\":65,\"price\":324756,\"price_per_item\":32325,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":14,\"school_operational_assistance_id\":2,\"commodity_location_id\":21,\"item_code\":\"BRG-5819215\",\"name\":\"Papan Tulis Hitam\",\"brand\":\"Atria\",\"material\":\"Partikel\",\"year_of_purchase\":2023,\"condition\":1,\"quantity\":63,\"price\":113421,\"price_per_item\":27327,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":15,\"school_operational_assistance_id\":2,\"commodity_location_id\":9,\"item_code\":\"BRG-8696267\",\"name\":\"Meja Guru\",\"brand\":\"Olympic\",\"material\":\"Blockboard\",\"year_of_purchase\":2024,\"condition\":2,\"quantity\":183,\"price\":190827,\"price_per_item\":147107,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":16,\"school_operational_assistance_id\":1,\"commodity_location_id\":13,\"item_code\":\"BRG-7175600\",\"name\":\"Rak Sepatu\",\"brand\":\"Funika\",\"material\":\"Partikel\",\"year_of_purchase\":2024,\"condition\":1,\"quantity\":65,\"price\":353676,\"price_per_item\":53720,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":17,\"school_operational_assistance_id\":2,\"commodity_location_id\":18,\"item_code\":\"BRG-3980238\",\"name\":\"Rak Helm\",\"brand\":\"Dove\'s\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2011,\"condition\":3,\"quantity\":62,\"price\":257827,\"price_per_item\":66147,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":18,\"school_operational_assistance_id\":2,\"commodity_location_id\":4,\"item_code\":\"BRG-8549852\",\"name\":\"Penghapus Papan Tulis Putih\",\"brand\":\"IKEA\",\"material\":\"Kayu Lapis (Plywood\\/Multipleks)\",\"year_of_purchase\":2011,\"condition\":1,\"quantity\":157,\"price\":459199,\"price_per_item\":62549,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":19,\"school_operational_assistance_id\":2,\"commodity_location_id\":23,\"item_code\":\"BRG-8263701\",\"name\":\"Kipas Dinding\",\"brand\":\"Atria\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2019,\"condition\":1,\"quantity\":142,\"price\":127431,\"price_per_item\":33651,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]},\"school_operational_assistances\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"BOSDA\",\"description\":\"Deskripsi BOSDA\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"BOSNAS\",\"description\":\"Deskripsi BOSNAS\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]},\"commodity_locations\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":21,\"name\":\"Kelas 1\",\"description\":\"Ruangan Kelas 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":22,\"name\":\"Kelas 2\",\"description\":\"Ruangan Kelas 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":23,\"name\":\"Kelas 3\",\"description\":\"Ruangan Kelas 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":24,\"name\":\"Kelas 4\",\"description\":\"Ruangan Kelas 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":25,\"name\":\"Kelas 5\",\"description\":\"Ruangan Kelas 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":5,\"name\":\"Perpustakaan Atas\",\"description\":\"Ruangan 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":4,\"name\":\"Perpustakaan Bawah\",\"description\":\"Ruangan 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":3,\"name\":\"Ruang Gudang\",\"description\":\"Ruangan 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":9,\"name\":\"Ruang Kantin\",\"description\":\"Ruangan 9\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":20,\"name\":\"Ruang Kegiatan Ekstrakurikuler\",\"description\":\"Ruangan 20\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":1,\"name\":\"Ruang Kepala Sekolah\",\"description\":\"Ruangan 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":13,\"name\":\"Ruang Kepala Tata Usaha (TU)\",\"description\":\"Ruangan 13\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":16,\"name\":\"Ruang Komputer\",\"description\":\"Ruangan 16\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":10,\"name\":\"Ruang Koperasi\",\"description\":\"Ruangan 10\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":7,\"name\":\"Ruang Laboratorium\",\"description\":\"Ruangan 7\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":6,\"name\":\"Ruang OSIS\",\"description\":\"Ruangan 6\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":17,\"name\":\"Ruang Praktek\",\"description\":\"Ruangan 17\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":12,\"name\":\"Ruang Salat\",\"description\":\"Ruangan 12\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":11,\"name\":\"Ruang Satpam\\/Pos Satpam\",\"description\":\"Ruangan 11\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":14,\"name\":\"Ruang Seni Musik\",\"description\":\"Ruangan 14\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":18,\"name\":\"Ruang Serba Guna\",\"description\":\"Ruangan 18\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"Ruang Staff Tata Usaha (TU)\",\"description\":\"Ruangan 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":8,\"name\":\"Ruang Unit Kesehatan Sekolah (UKS)\",\"description\":\"Ruangan 8\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":15,\"name\":\"Ruang Wakil Kepala Sekolah\",\"description\":\"Ruangan 15\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":19,\"name\":\"Ruangan Guru BP (Bimbingan Penyuluhan)\",\"description\":\"Ruangan 19\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]},\"year_of_purchases\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":{\"16\":2011,\"12\":2012,\"4\":2013,\"0\":2016,\"10\":2018,\"1\":2019,\"3\":2020,\"2\":2022,\"13\":2023,\"8\":2024}},\"commodity_brands\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":{\"9\":\"Atria\",\"5\":\"Dove\'s\",\"8\":\"Funika\",\"1\":\"IKEA\",\"10\":\"Livien\",\"0\":\"Olympic\",\"11\":\"Red Sun\"}},\"commodity_materials\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":{\"3\":\"Blockboard\",\"9\":\"Kayu Lapis (Plywood\\/Multipleks)\",\"0\":\"Kayu Solid\",\"1\":\"MDF (Medium Density Fibreboard)\",\"5\":\"Melaminto\",\"2\":\"Partikel\",\"6\":\"Rotan\"}}}},\"duration\":973,\"memory\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:37'),
(292, '9d367dca-1f89-4074-98c8-a4b44f661ce5', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"24.32\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:41'),
(293, '9d367dca-2155-48df-8dbf-08ebfee3b868', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:41'),
(294, '9d367dca-22b7-4d71-b798-3b439ebbcb43', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(295, '9d367dca-255a-479e-88a2-e39c64e344f0', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"1.16\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\SchoolOperationalAssistancePolicy.php\",\"line\":16,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(296, '9d367dca-26a7-4a87-b3f2-a272196afeca', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"2.40\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\SchoolOperationalAssistancePolicy.php\",\"line\":16,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(297, '9d367dca-26cc-463e-b85f-81da527fcda4', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(298, '9d367dca-2762-4011-a12a-160834549bdb', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\SchoolOperationalAssistancePolicy.php\",\"line\":16,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(299, '9d367dca-279e-471a-b3bf-1658494cd75a', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"viewAny\",\"result\":\"allowed\",\"arguments\":[\"App\\\\SchoolOperationalAssistance\"],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(300, '9d367dca-2812-42d7-9430-78571dbfac5c', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `school_operational_assistances` order by `name` asc\",\"time\":\"0.63\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\SchoolOperationalAssistanceController.php\",\"line\":21,\"hash\":\"17014ab3095d8d378e684a761258a17a\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(301, '9d367dca-282e-4622-8f00-9e90be703dd2', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\SchoolOperationalAssistance\",\"count\":2,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(302, '9d367dca-2b1b-4c4c-943a-4c3f7d6e9f6e', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.index\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/index.blade.php\",\"data\":[\"school_operational_assistances\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:41'),
(303, '9d367dca-715e-4162-9675-772df2393ccc', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"school_operational_assistances\",\"component\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(304, '9d367dca-71fa-4973-ac0c-2141c2324bfc', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"tambah bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":18,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(305, '9d367dca-722f-4c87-82a5-c5fe771321ac', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"detail bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":59,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(306, '9d367dca-7256-480e-bb8d-6ac8aadbd8fe', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"ubah bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":66,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(307, '9d367dca-727c-4fc2-b853-29760acfdfa5', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"hapus bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":73,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(308, '9d367dca-72e8-4afb-bedc-92b0d7b5447d', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"detail bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":59,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(309, '9d367dca-7310-45c0-997e-c00fc65df212', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"ubah bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":66,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(310, '9d367dca-7335-480a-9368-34ae2581bb50', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"hapus bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":73,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(311, '9d367dca-7357-495b-94d5-e391db516901', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"components.datatable.index\",\"path\":\"\\\\resources\\\\views\\/components\\/datatable\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(312, '9d367dca-7391-4e91-99c2-7f927c679974', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.modal.create\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/modal\\/create.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(313, '9d367dca-880b-46fa-aa3a-6a7535dd1979', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.modal.show\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/modal\\/show.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(314, '9d367dca-8d5f-498e-9807-91c30ce9bdf7', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.modal.edit\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/modal\\/edit.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(315, '9d367dca-937f-4307-a28c-bd1c6a5c7761', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"school-operational-assistances._script\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/_script.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(316, '9d367dca-9c56-4146-b6d5-5835e09a1873', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(317, '9d367dca-9d03-47f6-81b1-23144beb404b', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(318, '9d367dca-9d34-4442-835c-a1c202ae160d', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(319, '9d367dca-9d60-42e3-99af-1aa147524a06', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(320, '9d367dca-9d86-4ad1-8b50-225c963eabbe', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(321, '9d367dca-9dac-41bd-a1ba-7473856f72a6', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(322, '9d367dca-9dda-4680-a7fd-c3fe3970b6e9', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(323, '9d367dca-9e02-450c-9055-ccd132c2b229', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(324, '9d367dca-9eee-4274-8b3c-a3469089b6fe', '9d367dca-9f8c-49dd-817e-844e050e53d8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/bantuan-dana-operasional\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\SchoolOperationalAssistanceController@index\",\"middleware\":[\"web\",\"auth\",\"can:viewAny,App\\\\SchoolOperationalAssistance\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/barang\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlhKY21Yc2c3MHBNL01xa2ZZNnJpVWc9PSIsInZhbHVlIjoic0dTc2ZudTVJWndlNlhRMVIyOG4vV01TRldSaVE5Y2RyK2k0SWJqem54SDdOT3RPbDF0QTVHUlZQd25CZGFMMGNrMEhYSm1PaEF5SEtKNFg5VWxoa1VNNnlxekN5V0tFNFdPNkNUVXZ2NDMzTnJjRWlMK1VseU5MQXM4cTRqWlAiLCJtYWMiOiI4MmU2MDA3MzU5ZDgyNzdkNWFhMTIyZmRkNzE5NDE0YTZlYjllOTQwMzFjOGY0MTU0MDM2MzI1NDI0YzhiNWIxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InA4cnBmK09IY1diZ2lwRTBnc0I2dGc9PSIsInZhbHVlIjoiNjNIMzlQU3NDOC9vQWxVZm9uR1pudFhndTVTY200TGE4d1cvOXJ5SU1PYmdjYStjWDl3cnU3WjlrN2NlUkFtb0p5TzRlRThwMDU0VXB4eW96dkRod2VlZGlsck5XTUViYmNDR3lrc25ScGpSWjBiejBMaGx6cEo5eE04TDlRbkMiLCJtYWMiOiJhMmU1ZGFhNTY5OGJlNjMwYTJlODU3ODVmZTY0OWVlM2I1ZTJmNmFlZjBjM2FjY2ZkNWYzZjJjYTBhYjk2Njc0IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/bantuan-dana-operasional\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/school-operational-assistances\\/index.blade.php\",\"data\":{\"school_operational_assistances\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"BOSDA\",\"description\":\"Deskripsi BOSDA\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"BOSNAS\",\"description\":\"Deskripsi BOSNAS\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]}}},\"duration\":558,\"memory\":24,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:42'),
(325, '9d367dcc-14d0-49dd-a1fc-84d194c7ccb5', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"25.48\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:43'),
(326, '9d367dcc-1686-4099-9bd6-0decdb1cba5f', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:43'),
(327, '9d367dcc-17d3-4910-8e4f-9dc1701afbd1', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(328, '9d367dcc-1a52-4de1-ac84-a78eb2a2d916', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"1.09\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityLocationPolicy.php\",\"line\":16,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(329, '9d367dcc-1b22-4a7f-817e-c9a94d76fb4d', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"1.18\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityLocationPolicy.php\",\"line\":16,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(330, '9d367dcc-1b58-463d-8c3d-73afbceefe93', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(331, '9d367dcc-1bf4-4982-918d-65508e762f74', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityLocationPolicy.php\",\"line\":16,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(332, '9d367dcc-1c2b-4c89-b842-951a3f1fdc52', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"viewAny\",\"result\":\"allowed\",\"arguments\":[\"App\\\\CommodityLocation\"],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(333, '9d367dcc-1ca8-4129-9ddc-02a4ff653c94', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodity_locations` order by `name` asc\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityLocationController.php\",\"line\":25,\"hash\":\"6be74585ea201e74c97d0866e19683be\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(334, '9d367dcc-1cc5-4605-a343-a17175fd3256', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\CommodityLocation\",\"count\":25,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(335, '9d367dcc-1fa4-4eef-98ab-bf98b6d21dd4', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"commodity-locations.index\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/index.blade.php\",\"data\":[\"commodity_locations\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(336, '9d367dcc-5d6d-4aa4-8d3d-c4d5ca51d4b6', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"commodity_locations\",\"component\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(337, '9d367dcc-5dfc-4507-b00d-26d0d7e477a1', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"import ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":19,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(338, '9d367dcc-5e24-4641-9ca8-a296010dad30', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"export ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(339, '9d367dcc-5e89-4aef-92dc-11c0ba4550f8', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"tambah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":37,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(340, '9d367dcc-5ebc-4a7c-9c14-e4e161fb71aa', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(341, '9d367dcc-5ee4-4f27-89fb-7d154ac23e69', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(342, '9d367dcc-5f08-4f34-ac3d-36fd5ac17c54', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(343, '9d367dcc-5f32-4103-9225-a7cd36084044', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(344, '9d367dcc-5f57-4d96-aeb4-eb0b31dd3aea', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(345, '9d367dcc-5f79-4f29-8e9d-22de9f172b3e', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(346, '9d367dcc-5fa2-456e-aca3-81ef662f5d91', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(347, '9d367dcc-5fc6-45a9-97c5-287118c98daf', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(348, '9d367dcc-5fe8-4ecb-abfe-5fede05977aa', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(349, '9d367dcc-6012-4695-a864-707f6dbab39a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(350, '9d367dcc-6034-41c0-8153-0afadd16bd8e', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(351, '9d367dcc-6056-426f-89e9-81e6478f3e6a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(352, '9d367dcc-6080-4ff4-8481-1dcbd7975d54', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(353, '9d367dcc-60a2-44d7-b4bf-a315a877ef56', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(354, '9d367dcc-60c4-4dee-b632-621a9d676959', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(355, '9d367dcc-60f3-4344-a55f-def786275129', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(356, '9d367dcc-6115-4a7e-b627-955787324e42', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(357, '9d367dcc-6138-4865-8f5a-3ffbc468def5', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(358, '9d367dcc-6161-4b8c-86cd-4a3bd8276405', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(359, '9d367dcc-6184-4195-8781-d3618bd0dca3', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(360, '9d367dcc-61a7-436e-94b1-caadb9fc8918', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(361, '9d367dcc-61cf-484a-84bc-9fcba25c7769', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(362, '9d367dcc-61f1-4799-856a-7a5d8ba951ea', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(363, '9d367dcc-6212-4954-b0cc-9a8cdd0228c9', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(364, '9d367dcc-623e-4fc4-9ffa-72bd9a8816c9', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(365, '9d367dcc-6261-4c0f-b10b-47b9d2e9376f', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(366, '9d367dcc-6283-4fcc-b340-a102c4c2c4bf', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(367, '9d367dcc-62af-44b8-818b-b4293e9d1c83', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(368, '9d367dcc-62d2-4438-b866-3349e190844c', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(369, '9d367dcc-62f6-4b44-b1a9-0a04bebe3a0b', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(370, '9d367dcc-631e-49f1-8b99-46d0d3e9c95a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(371, '9d367dcc-6341-483c-9a4d-4ec77752082a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(372, '9d367dcc-6362-442e-99e6-c595b722da3f', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(373, '9d367dcc-638a-41bd-b189-e68cf3b53d38', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(374, '9d367dcc-63ac-4ce3-b280-585b75dabdc7', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(375, '9d367dcc-63ce-42cd-bad2-1e15941000f3', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(376, '9d367dcc-63f5-4e93-bf76-db677551d8a7', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(377, '9d367dcc-6418-472c-9af8-803a25be52f5', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(378, '9d367dcc-643a-4b3c-83b2-51136e24d21a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(379, '9d367dcc-646f-4727-bedf-b815326f21df', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(380, '9d367dcc-64a3-4a9c-801d-d9295eed4ba2', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(381, '9d367dcc-64d3-4b85-9a02-a164535df12e', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(382, '9d367dcc-6501-41c6-a5cd-3078f33c2abd', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(383, '9d367dcc-6527-4fc3-bd4b-79aa0ced1b3e', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(384, '9d367dcc-654a-42b4-b419-8a83a7f0d5e4', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(385, '9d367dcc-6574-4743-a3dc-040f44bb3070', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(386, '9d367dcc-6597-4465-814e-d6aef0e47149', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(387, '9d367dcc-65ba-4248-9a50-c34c05998a05', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(388, '9d367dcc-65e7-4782-8222-98f614d27cfd', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(389, '9d367dcc-660a-4eae-b641-8a380124bd62', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(390, '9d367dcc-662f-4266-b1f9-304f7a968996', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(391, '9d367dcc-665a-49bc-ac69-acb754f78181', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(392, '9d367dcc-667d-4a4e-8040-7be3e0edcfe0', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(393, '9d367dcc-669f-431c-afe2-05bee81d9a50', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(394, '9d367dcc-66c8-4e3e-a989-af56598d86b6', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(395, '9d367dcc-66ea-4594-8fd5-9d1122fe446a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(396, '9d367dcc-670b-48d4-a26e-d5d565c7dc8a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(397, '9d367dcc-6734-45d5-abdf-bd1146116645', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(398, '9d367dcc-6756-4344-b296-ea26bfbcd5c0', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(399, '9d367dcc-6778-4239-965d-cfca73a9bb60', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(400, '9d367dcc-67a0-4214-8d02-a05c4422eee6', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(401, '9d367dcc-67c2-4149-a4f3-76464b31ad15', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(402, '9d367dcc-67e7-4e2a-abbc-8afccadb81c1', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(403, '9d367dcc-680f-4ba6-8a62-fd79c18f696e', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(404, '9d367dcc-6831-4462-9c86-ef8760efb9cf', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(405, '9d367dcc-6853-4687-ad34-67110996b7c2', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(406, '9d367dcc-687b-4bc0-8d94-df3e049fbb2d', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(407, '9d367dcc-689e-4f9d-9eb3-187511e620a5', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(408, '9d367dcc-68c0-465c-9648-970968d0d9c7', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(409, '9d367dcc-68e8-449a-b52e-fac696680816', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(410, '9d367dcc-690b-4255-a3cf-afffc87f5bc0', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(411, '9d367dcc-692c-45c9-b185-c296cf681f1f', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(412, '9d367dcc-6955-4316-a26a-77c3a082494a', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(413, '9d367dcc-6978-4c12-8307-ae1a18d48ac1', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(414, '9d367dcc-699a-4b38-b6be-ef605c310925', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(415, '9d367dcc-69ba-4fb8-9815-ac2d96df6b9e', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"components.datatable.index\",\"path\":\"\\\\resources\\\\views\\/components\\/datatable\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(416, '9d367dcc-69f4-41df-aa81-a6ab39f8824c', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.create\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/create.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(417, '9d367dcc-7aab-4ae8-b92f-0e5443c810d4', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.show\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/show.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(418, '9d367dcc-7f96-4e74-9c1d-15602185f072', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.edit\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/edit.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(419, '9d367dcc-8431-4f44-8a63-4a7c36bb915b', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.import\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/import.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(420, '9d367dcc-8a3b-41e5-96d3-a061aa915199', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"commodity-locations._script\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/_script.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(421, '9d367dcc-9233-4cc6-848e-ec776a18b26f', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(422, '9d367dcc-92f5-4daa-9995-3224fa6e2335', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(423, '9d367dcc-9325-4cc4-949a-f774fc8d9ebb', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(424, '9d367dcc-934a-4b53-a531-1f43d5caa240', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(425, '9d367dcc-9370-4248-a865-efa59e023962', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(426, '9d367dcc-9395-489b-b1d0-a85d508dfdfa', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(427, '9d367dcc-93bb-47e4-bca9-791344a65370', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(428, '9d367dcc-93e1-4209-97a6-0ac4c18843ae', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(429, '9d367dcc-9589-4587-a781-4986a2e46297', '9d367dcc-9636-47c0-b548-51b379ff2a5e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/ruangan\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\CommodityLocationController@index\",\"middleware\":[\"web\",\"auth\",\"can:viewAny,App\\\\CommodityLocation\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/bantuan-dana-operasional\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InpEUWlZeTlyVHNZOExpdW1GUWdqRkE9PSIsInZhbHVlIjoia2FLbVl5RWgxQklEUU1LazZIaEliY3poWnBhbE83NXJpUXMzeXhZQnB4U0dtaG91THRLdlhaNUlhdGpzalVKL1hlTFdEQVhzV1BSQzZVdUVMeGkweGs1M0E0dk40MXFVZHcwZS9FYjkyOCtIbGRRUWtZMW5DV0lwNElqQjNTbXQiLCJtYWMiOiI5ZWVmNWE4NTU1ZmY2ZWY5NTFmYTU3ZGUyMTcxNGE1NTM5OWUwODk0ZjViNWU3Y2U5NWRmZTllOWMyZjIyYmM5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlFPdUtMZWJSREtiOHhzT3Y3RC91TEE9PSIsInZhbHVlIjoiZzNLa09RVGJaQ1ovbnl3MTJrcXQyOE80T0lqUE1obHBuMzl3VktXcVgwMGVkalRTeHJyY1ROaU92aUpZVFpqVXpwUm1DZEVoVCt1N21YdUtlZmdBVUZsOEE3dFlmN3VmcXY3OVRMQWg0R2JqbDZsazNNd0JCWWswbjc3UjFjVVIiLCJtYWMiOiI3NzIyYTE1MmZmZDEwODc3NGM1NTFiODczNzNjMjQ3M2U3MWFhZWIwOWUzZjA5NzVkOThhNTc1OTA5MjdiMjQ3IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/ruangan\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/commodity-locations\\/index.blade.php\",\"data\":{\"commodity_locations\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":21,\"name\":\"Kelas 1\",\"description\":\"Ruangan Kelas 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":22,\"name\":\"Kelas 2\",\"description\":\"Ruangan Kelas 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":23,\"name\":\"Kelas 3\",\"description\":\"Ruangan Kelas 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":24,\"name\":\"Kelas 4\",\"description\":\"Ruangan Kelas 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":25,\"name\":\"Kelas 5\",\"description\":\"Ruangan Kelas 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":5,\"name\":\"Perpustakaan Atas\",\"description\":\"Ruangan 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":4,\"name\":\"Perpustakaan Bawah\",\"description\":\"Ruangan 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":3,\"name\":\"Ruang Gudang\",\"description\":\"Ruangan 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":9,\"name\":\"Ruang Kantin\",\"description\":\"Ruangan 9\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":20,\"name\":\"Ruang Kegiatan Ekstrakurikuler\",\"description\":\"Ruangan 20\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":1,\"name\":\"Ruang Kepala Sekolah\",\"description\":\"Ruangan 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":13,\"name\":\"Ruang Kepala Tata Usaha (TU)\",\"description\":\"Ruangan 13\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":16,\"name\":\"Ruang Komputer\",\"description\":\"Ruangan 16\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":10,\"name\":\"Ruang Koperasi\",\"description\":\"Ruangan 10\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":7,\"name\":\"Ruang Laboratorium\",\"description\":\"Ruangan 7\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":6,\"name\":\"Ruang OSIS\",\"description\":\"Ruangan 6\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":17,\"name\":\"Ruang Praktek\",\"description\":\"Ruangan 17\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":12,\"name\":\"Ruang Salat\",\"description\":\"Ruangan 12\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":11,\"name\":\"Ruang Satpam\\/Pos Satpam\",\"description\":\"Ruangan 11\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":14,\"name\":\"Ruang Seni Musik\",\"description\":\"Ruangan 14\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":18,\"name\":\"Ruang Serba Guna\",\"description\":\"Ruangan 18\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"Ruang Staff Tata Usaha (TU)\",\"description\":\"Ruangan 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":8,\"name\":\"Ruang Unit Kesehatan Sekolah (UKS)\",\"description\":\"Ruangan 8\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":15,\"name\":\"Ruang Wakil Kepala Sekolah\",\"description\":\"Ruangan 15\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":19,\"name\":\"Ruangan Guru BP (Bimbingan Penyuluhan)\",\"description\":\"Ruangan 19\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]}}},\"duration\":542,\"memory\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:43'),
(430, '9d367dde-d29d-47c8-9722-2b933c09a19b', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"22.88\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:55'),
(431, '9d367dde-d4dd-4358-98c5-cbe4ca9c3e97', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":3,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:20:55'),
(432, '9d367dde-d68a-446f-a25a-78738bbeb28e', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(433, '9d367dde-d9ba-47e9-a612-e8a8e5e6c7db', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"1.55\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\UserPolicy.php\",\"line\":15,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(434, '9d367dde-da57-49a0-b343-3f8b2fec2083', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"0.61\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\UserPolicy.php\",\"line\":15,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(435, '9d367dde-da79-47f8-aea5-775ab375ed04', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":4,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(436, '9d367dde-db1a-4c2d-af59-1e984494c912', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\UserPolicy.php\",\"line\":15,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(437, '9d367dde-db5a-42e3-9c63-49d744fa389d', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"viewAny\",\"result\":\"allowed\",\"arguments\":[\"App\\\\User\"],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(438, '9d367dde-dbac-4c85-a276-c12f0a7146ad', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users`\",\"time\":\"0.43\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\UserController.php\",\"line\":22,\"hash\":\"fced8a1723187ff8d7a4c304f420360f\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(439, '9d367dde-dc58-4514-b927-da78c93f278e', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, (select count(*) from `users` inner join `model_has_roles` on `users`.`id` = `model_has_roles`.`model_id` where `roles`.`id` = `model_has_roles`.`role_id` and `model_has_roles`.`model_type` = \'App\\\\User\') as `users_count` from `roles`\",\"time\":\"0.51\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\UserController.php\",\"line\":23,\"hash\":\"3fe9c960361fc8309c67b295b6981258\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(440, '9d367dde-e013-4a55-b8ee-7b05fea8c644', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"users.index\",\"path\":\"\\\\resources\\\\views\\/users\\/index.blade.php\",\"data\":[\"users\",\"roles\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(441, '9d367ddf-22d3-4c13-976e-682f39b9cb24', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"users\",\"roles\",\"component\",\"__currentLoopData\",\"role\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(442, '9d367ddf-2380-4068-97f9-4983ebf20ace', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"tambah pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\17e5f33f044a5499b21c21808211170c.php\",\"line\":38,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(443, '9d367ddf-240a-427c-9891-0e2157e304bf', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (2) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"0.67\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\17e5f33f044a5499b21c21808211170c.php\",\"line\":74,\"hash\":\"90c0167c230352f7217dd0a9761021b0\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(444, '9d367ddf-2475-4236-9643-65e0374ecc96', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"detail pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\17e5f33f044a5499b21c21808211170c.php\",\"line\":78,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(445, '9d367ddf-249d-4add-88ea-95b58ed90410', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"ubah pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\17e5f33f044a5499b21c21808211170c.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(446, '9d367ddf-24cc-4904-b0ce-5feba66f5d52', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"hapus pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\17e5f33f044a5499b21c21808211170c.php\",\"line\":90,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(447, '9d367ddf-255e-4c23-be8c-f00d21b1f1b7', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"components.datatable.index\",\"path\":\"\\\\resources\\\\views\\/components\\/datatable\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(448, '9d367ddf-259b-4865-afe8-dfdb8bd0fa7b', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"users.modal.create\",\"path\":\"\\\\resources\\\\views\\/users\\/modal\\/create.blade.php\",\"data\":[\"users\",\"roles\",\"component\",\"__currentLoopData\",\"role\",\"loop\",\"user\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(449, '9d367ddf-5259-4520-9ec1-6ca4a367f3dd', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"users.modal.show\",\"path\":\"\\\\resources\\\\views\\/users\\/modal\\/show.blade.php\",\"data\":[\"users\",\"roles\",\"component\",\"__currentLoopData\",\"role\",\"loop\",\"user\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(450, '9d367ddf-5891-40c0-a297-df5fd1fc1882', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"users.modal.edit\",\"path\":\"\\\\resources\\\\views\\/users\\/modal\\/edit.blade.php\",\"data\":[\"users\",\"roles\",\"component\",\"__currentLoopData\",\"role\",\"loop\",\"user\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(451, '9d367ddf-69b8-4b20-add4-8b3173f7707f', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"users._script\",\"path\":\"\\\\resources\\\\views\\/users\\/_script.blade.php\",\"data\":[\"users\",\"roles\",\"component\",\"__currentLoopData\",\"role\",\"loop\",\"user\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(452, '9d367ddf-728b-4ce8-9345-59b7ef88b108', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(453, '9d367ddf-736a-42ba-8ef2-fd2cbfe3f75a', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(454, '9d367ddf-739e-4300-898f-adedc5540200', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(455, '9d367ddf-73c7-4a97-987f-8a8ef8828fd5', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(456, '9d367ddf-73ef-4e3d-89f6-c7fed91b926d', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(457, '9d367ddf-7416-4315-b03d-44cd99b661bb', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(458, '9d367ddf-743d-4c11-813a-2a294dc5b07c', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(459, '9d367ddf-7467-4c4d-bf47-0c4107c88ebf', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(460, '9d367ddf-759d-49a1-9b38-bc7c8544ffb1', '9d367ddf-7662-40fd-9650-ec8319974020', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/pengguna\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\UserController@index\",\"middleware\":[\"web\",\"auth\",\"can:viewAny,App\\\\User\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/ruangan\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ik05LzhjbHhKUURhT0hFYnY4VUxmaVE9PSIsInZhbHVlIjoidno3V3QzOUhLMTF6UTdBMDRSQS9sWmRKQ3U1QjlOaVVUZUZXc3pkMjQrbXpFdnF0amdYdTBUZEcwUm1BOWdnei9RNldmVXdBNjdxTkpCd2tibjJYMGdNQS9FNVk4bTdFT0RLRzQwbkVZVVk0WW5wNjQxeElYbTA3dzhyR0V1cnIiLCJtYWMiOiIxOWFmY2U0ZWEzZDNjOTBlZjRiYTJmOGYyODNhNWRmN2E1N2RjMTQyY2QwMDY4ZGVjNjc3NjI0ZDgwYzdjODY4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IllYSmxPa01ob1NkeVFQYk9QdDdGb2c9PSIsInZhbHVlIjoiWXJmYVpJV1RzNmFwcEwrR1Uyc3U3OWd2b3EyQWNnc3gxczBxa0taMWtyWDY5a2ZNRVBkeG40QnJFcjBMbE9zaVE4KzJRZGxMUEJpWTBsVm5EZUFwRllIZlhIVGF5bWRDU3F5K0NjWmRZSE5HRmVNZnFDS1V3amRBckhUaDRMODgiLCJtYWMiOiI3MjYyNDMyZmRhZmJhOTc1OTZhMTg2MzdkZDE4ZGRjN2Y0NDg5NWM0YzE4ZDEzZmRkMDI2NTI3MjgwMWZmY2RlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/pengguna\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/users\\/index.blade.php\",\"data\":{\"users\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":2,\"name\":\"Staff TU (Tata Usaha)\",\"email\":\"stafftu@mail.com\",\"email_verified_at\":null,\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\",\"roles\":[{\"id\":2,\"name\":\"Staff TU (Tata Usaha)\",\"guard_name\":\"web\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\",\"pivot\":{\"model_type\":\"App\\\\User\",\"model_id\":2,\"role_id\":2}}]}]},\"roles\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Administrator\",\"guard_name\":\"web\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\",\"users_count\":1},{\"id\":2,\"name\":\"Staff TU (Tata Usaha)\",\"guard_name\":\"web\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\",\"users_count\":1}]}}},\"duration\":685,\"memory\":24,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:20:55'),
(461, '9d367df3-5f37-4cae-8ab5-cbc9d6bc8eab', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"4.07\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:08'),
(462, '9d367df3-6293-4785-b0b0-0db52a1e0102', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:08'),
(463, '9d367df3-64dd-4a56-8d95-4da0ad617a45', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:08'),
(464, '9d367df3-68b8-484d-a018-61d2a09d75b2', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"2.54\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\ProfileController.php\",\"line\":15,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:08'),
(465, '9d367df3-69a5-48bb-8388-20225e1d1543', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"1.02\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\ProfileController.php\",\"line\":15,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:08'),
(466, '9d367df3-69d2-417d-bc79-a8bd1d6594bf', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:08'),
(467, '9d367df3-6aa5-4c92-a362-9cce54fcf5af', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\ProfileController.php\",\"line\":15,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:08'),
(468, '9d367df3-7002-4986-b159-4c99c2b04ff3', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'view', '{\"name\":\"profile\",\"path\":\"\\\\resources\\\\views\\/profile.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(469, '9d367df3-dbf6-4d04-88c6-a4942c2d5a0b', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"component\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(470, '9d367df3-dd77-4029-a613-7da6532270bc', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(471, '9d367df3-de70-47f6-ae0b-e253b608d515', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(472, '9d367df3-debc-45cf-91d5-212bbc6ad50c', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(473, '9d367df3-deee-443b-ac88-ec95460b7fa5', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(474, '9d367df3-df23-4238-a1fa-ca358152a98a', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(475, '9d367df3-df60-4aec-9ca2-1ad1d3743c82', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(476, '9d367df3-df8d-4da3-a77f-4320757b408e', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(477, '9d367df3-dfbf-4198-8966-951b154f09a0', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(478, '9d367df3-e118-4965-b7ef-e56bd0e3346f', '9d367df3-e252-45fc-a06d-49410574ddc4', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/profile\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ProfileController@index\",\"middleware\":[\"web\",\"auth\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/pengguna\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjQ0WW50RThnYytKb0cybm82cnROYWc9PSIsInZhbHVlIjoiM25qS001dzU4UDh1QURkNGpYcnUxWmFPSnVwRS9KQVJJQ1A2cW5qUHpDQUZlUFpGWFdvNXRkU0lVVUNmcUYzc1VKdk9IVXBkbE5TQlk0UnlTdkpuZHVHOVpLcmEvUzN5c09xeG1ac3gzVjgwa2pwZkhyc1JmM2UyNTJaMS9pYkYiLCJtYWMiOiJmMjhjMzIzNGEyZTU3NTVkMzNjOGRlMTk2M2MwYmVlZWQyYjc0ZWI3YjBhY2I5NWNhN2QyMGE2NjU3NjdhMmRmIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjJLclBKQjQzM3lLQVZiSldQaGJNQWc9PSIsInZhbHVlIjoiL0xxME1XMFRwanhzRURCajZGVzVGQkFJdWxKMWxUWkdKejFMQUxGTUloRHkraitsZUpqajZtNVV3Z3psQ01FcUNqRG9qSUEwYkhVQTFpUlV3bXkxWlc2b0lJR2crVUhMWUdwWm9NN0FVc0pyWk1PZ3ZEOFhoTmtkU2Z5WlFiQlciLCJtYWMiOiIwZmVmZTk0N2Q5MjI5ZWE2ZTE1MTBjMzIxMjdlZTkwZmRmMTQ5ZDM1YWFmMjZmOWQyNWM1MTY0NTMyYTc5NDUzIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/profile\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/profile.blade.php\",\"data\":[]},\"duration\":668,\"memory\":24,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:09'),
(479, '9d367df6-90de-40e8-9cfb-af4c51fd27c0', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"29.97\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:11'),
(480, '9d367df6-92dc-40b8-8a7f-1c674b859ca7', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:11'),
(481, '9d367df6-9522-4d3b-95f8-52338a42b901', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(482, '9d367df6-97fa-4775-9dfe-9fb1c6e323bb', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"0.99\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityLocationPolicy.php\",\"line\":16,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(483, '9d367df6-98c0-4412-9884-34a05256e566', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"0.97\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityLocationPolicy.php\",\"line\":16,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(484, '9d367df6-98fa-422e-b3aa-09cbc4cf8655', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(485, '9d367df6-998b-45bf-b450-0c2cfa19a1a7', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityLocationPolicy.php\",\"line\":16,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(486, '9d367df6-99be-4622-b047-c928ce5ae59e', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"viewAny\",\"result\":\"allowed\",\"arguments\":[\"App\\\\CommodityLocation\"],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(487, '9d367df6-9a47-46a1-b0ef-63e8a6a1b841', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodity_locations` order by `name` asc\",\"time\":\"0.80\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityLocationController.php\",\"line\":25,\"hash\":\"6be74585ea201e74c97d0866e19683be\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(488, '9d367df6-9a7d-489f-8638-3fa3037a40b1', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\CommodityLocation\",\"count\":25,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(489, '9d367df6-9db9-47f0-b139-e96ae50290ee', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"commodity-locations.index\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/index.blade.php\",\"data\":[\"commodity_locations\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(490, '9d367df6-9ec6-4694-b271-2becbd938321', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"commodity_locations\",\"component\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(491, '9d367df6-9f8d-4212-a3bf-6144d3b71696', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"import ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":19,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(492, '9d367df6-9fcf-481a-9ef5-cc37d399ef38', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"export ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(493, '9d367df6-a070-4af9-afd6-5cd403fe1ea7', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"tambah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":37,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(494, '9d367df6-a0b0-4989-8ba7-641020a0d8cd', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(495, '9d367df6-a0da-498e-bae1-687fe7c09a09', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(496, '9d367df6-a100-406f-905f-673cd53e7e3a', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(497, '9d367df6-a12f-45e4-bd16-cbf53d9464ff', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(498, '9d367df6-a154-4717-a497-14aa3c2c52d9', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(499, '9d367df6-a178-41b6-a332-398a37602258', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(500, '9d367df6-a1aa-4916-bce7-f0503a9f43ed', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(501, '9d367df6-a1cf-4b8d-8398-8e4dacb774ab', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(502, '9d367df6-a1f3-4d56-a8c5-2b87c2ac27aa', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(503, '9d367df6-a21f-4fcf-b53e-f044cd037fad', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(504, '9d367df6-a242-4e69-a253-fc99aa96170e', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(505, '9d367df6-a270-45e5-b74a-01db1a489b68', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(506, '9d367df6-a2ac-4a43-803f-a1de39216b15', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(507, '9d367df6-a2dc-4bfe-82a1-9b8184d4f711', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(508, '9d367df6-a310-4dd4-97b1-d7483a76f45f', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(509, '9d367df6-a34d-455d-a865-38490da35db8', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(510, '9d367df6-a381-4f03-8e95-dec42318eff5', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(511, '9d367df6-a3b7-468e-9fae-396225fe7276', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(512, '9d367df6-a3f8-47bf-87d2-e04b42354292', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(513, '9d367df6-a430-4059-ab12-ba62c5988242', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(514, '9d367df6-a469-4323-b599-8a17ffe7b522', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(515, '9d367df6-a4ab-4ec6-9edd-aae5995c036e', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(516, '9d367df6-a4e3-43cc-bd38-c65c1ac05eb0', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(517, '9d367df6-a515-4e86-9acb-c0d3ea180d1f', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(518, '9d367df6-a550-447f-bbd5-76848754e6c1', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(519, '9d367df6-a57b-44a8-b259-2a29d0cbe14b', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(520, '9d367df6-a5a1-4c57-b96f-6362876bb7b3', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(521, '9d367df6-a5dc-4958-a1fa-10a6f90005a6', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(522, '9d367df6-a60c-4761-a550-d705922a250c', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(523, '9d367df6-a63c-4da8-92a5-43e33357e91b', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(524, '9d367df6-a679-4a6d-9e5b-75b16bdefd85', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(525, '9d367df6-a6b0-48be-92cf-f143ce47f7c0', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(526, '9d367df6-a6e7-4778-8975-7fb7285272f5', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(527, '9d367df6-a727-40e8-af08-a9a1c7ae121f', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(528, '9d367df6-a75d-4e5d-818f-3af93e119737', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(529, '9d367df6-a791-4185-9923-e1a48e7eb690', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(530, '9d367df6-a7cf-4df7-b696-b76d299f43af', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(531, '9d367df6-a806-4c24-88ae-452ee1b79f8d', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(532, '9d367df6-a83e-4e8b-ad38-3a0880f3a4b0', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(533, '9d367df6-a884-4e57-931c-08677af08670', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(534, '9d367df6-a8bb-44d0-83fe-d94563e04bd2', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(535, '9d367df6-a8f2-493e-be2b-21680fc2b2b5', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(536, '9d367df6-a933-4eb9-9d0e-3621b0986c05', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(537, '9d367df6-a96a-4b1f-b357-7dc007e4cb89', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(538, '9d367df6-a9a0-476f-bccd-3a28ff450fb6', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(539, '9d367df6-a9e0-422a-9eb3-f31d01a8305c', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(540, '9d367df6-aa13-4714-9ca3-a3c49cde6319', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(541, '9d367df6-aa47-4189-b9a6-3368f7ffa10b', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(542, '9d367df6-aa8e-4a0e-ac5f-e9b9636e78da', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(543, '9d367df6-aab8-43ac-a3b2-a7ee3ab4d884', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(544, '9d367df6-aae1-4f48-9c95-44b9d0468612', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(545, '9d367df6-ab16-4ebc-9fff-d2e5d558bd20', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(546, '9d367df6-ab48-43c0-8662-d27fe1b19491', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(547, '9d367df6-ab6d-4bd2-a425-2f25b11ef7a6', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(548, '9d367df6-abb4-4983-997d-b8e3a33f14d7', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(549, '9d367df6-abde-4729-ba84-af505b51a1ca', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(550, '9d367df6-ac04-4b1f-ade5-366db5152453', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(551, '9d367df6-ac33-4777-b99a-7ceff0cb2925', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(552, '9d367df6-ac58-4739-99e3-f2a18a70f5d6', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(553, '9d367df6-ac7c-45cb-9dd4-d16bdf3d4012', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(554, '9d367df6-aca7-4696-b76c-367111dd4e78', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(555, '9d367df6-acca-47e1-8c5f-77f1a4ba7658', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(556, '9d367df6-aced-45ac-94a4-c0a525337f6f', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(557, '9d367df6-ad16-4bfa-8eea-6b8d66ac25e8', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(558, '9d367df6-ad39-4c5d-bcdc-386e33ce5eca', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(559, '9d367df6-ad5b-4bef-b268-af31d6e37564', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(560, '9d367df6-ad84-4a00-891a-deff3ef09457', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(561, '9d367df6-ada6-4701-b8e3-c8fce0f0b8c0', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(562, '9d367df6-adca-40bd-be12-d72e155064a8', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(563, '9d367df6-adf5-40f2-9a3b-661d67a7118e', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(564, '9d367df6-ae18-4dc0-9df1-265fa3a52280', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(565, '9d367df6-ae3c-4bbf-8a95-57bc13c93cc1', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(566, '9d367df6-ae69-4627-9369-c2e364d7d963', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"detail ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":76,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(567, '9d367df6-ae8d-4ebd-99e4-2d454595d77b', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"ubah ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":82,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(568, '9d367df6-aeaf-4d8e-b697-a358f556d725', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"hapus ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\dac8b2c0442cb676fcc903a2fccaf1da.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(569, '9d367df6-aed0-4c9f-8c83-a7f7ca309b0f', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"components.datatable.index\",\"path\":\"\\\\resources\\\\views\\/components\\/datatable\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(570, '9d367df6-af13-4a2f-a2ed-686bb68be2d0', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.create\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/create.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(571, '9d367df6-af68-48cc-a41c-979f4fb3e43b', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.show\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/show.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(572, '9d367df6-afaa-4c80-a928-8abf44e60f39', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.edit\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/edit.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(573, '9d367df6-afe3-46f6-a1d3-218f90f6dab3', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"commodity-locations.modal.import\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/modal\\/import.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(574, '9d367df6-b027-4e00-a427-7d0413b7d3d2', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"commodity-locations._script\",\"path\":\"\\\\resources\\\\views\\/commodity-locations\\/_script.blade.php\",\"data\":[\"commodity_locations\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(575, '9d367df6-b07d-4b67-a76e-b997abfc59c5', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(576, '9d367df6-b128-4139-9b68-cd57f30a3825', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(577, '9d367df6-b15a-4a09-ba5a-8a96c37a5e04', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(578, '9d367df6-b180-486d-8eb5-59ee74a1092e', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(579, '9d367df6-b1ad-408a-954b-302e0aaa2952', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(580, '9d367df6-b1d4-4207-8752-c286b0aca778', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(581, '9d367df6-b1fc-4edb-b931-dbdd8886f54d', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(582, '9d367df6-b224-40a6-94a9-6a611637da14', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(583, '9d367df6-b443-4bc1-8233-5f5fb2ec456b', '9d367df6-b521-4746-8969-8d68720492d4', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/ruangan\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\CommodityLocationController@index\",\"middleware\":[\"web\",\"auth\",\"can:viewAny,App\\\\CommodityLocation\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/profile\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ijg5YnlvWmJhcFVyaTBwZW1EOURhMEE9PSIsInZhbHVlIjoiTURrWkhjaWtUYXdVejRpZjByaVVXeU5xSjJkcXFGL3JmRzBTVTI0bWI3ajJuT1hsQnVYYzVZeVlmQTBmTmdvZTF3Vlg5ZU5zd1RjdWhJd2pWQWhUdlFMc01mVGRHUXFZa3hyTzF6Q1hKVUpTdk5NeTMzcmJTc2JlSUNsdEU3RGwiLCJtYWMiOiIwODI5ZWI4ZjBiYzg5MDhhM2JjMGI3ZDUwNDVlMDg4MjZhNTgwMzkzMjEwMDMxZjA0ZWFiNDJjMzc0Yzc4M2RiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImZjbncyRkFKc25EUGd0UGFibFpncWc9PSIsInZhbHVlIjoiQlA2cmxEeU1mbWJNYURmUmMzL1ZCbjJKNldQbmtOUGFTdkJvdEZwdStlU1Fqdm5pZE9QOThnM2lUb25Ka0p6WHhDMytWd0x6NlJwTkZYY2lWUmtQejk3TE13cEtKMzdlblNVWjdnWDNLKzFtM2hiUWFsOTU2QXJpZUJHellYUGEiLCJtYWMiOiI1ZWE0NmU5ZWUxMzExOGVhMTIwNmQxZWZlMzRkNjZjNDA0YTQwZDA5YjhlMzI5M2M2YWJjODZjOGEzN2NiMjVkIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/ruangan\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/commodity-locations\\/index.blade.php\",\"data\":{\"commodity_locations\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":21,\"name\":\"Kelas 1\",\"description\":\"Ruangan Kelas 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":22,\"name\":\"Kelas 2\",\"description\":\"Ruangan Kelas 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":23,\"name\":\"Kelas 3\",\"description\":\"Ruangan Kelas 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":24,\"name\":\"Kelas 4\",\"description\":\"Ruangan Kelas 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":25,\"name\":\"Kelas 5\",\"description\":\"Ruangan Kelas 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":5,\"name\":\"Perpustakaan Atas\",\"description\":\"Ruangan 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":4,\"name\":\"Perpustakaan Bawah\",\"description\":\"Ruangan 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":3,\"name\":\"Ruang Gudang\",\"description\":\"Ruangan 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":9,\"name\":\"Ruang Kantin\",\"description\":\"Ruangan 9\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":20,\"name\":\"Ruang Kegiatan Ekstrakurikuler\",\"description\":\"Ruangan 20\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":1,\"name\":\"Ruang Kepala Sekolah\",\"description\":\"Ruangan 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":13,\"name\":\"Ruang Kepala Tata Usaha (TU)\",\"description\":\"Ruangan 13\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":16,\"name\":\"Ruang Komputer\",\"description\":\"Ruangan 16\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":10,\"name\":\"Ruang Koperasi\",\"description\":\"Ruangan 10\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":7,\"name\":\"Ruang Laboratorium\",\"description\":\"Ruangan 7\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":6,\"name\":\"Ruang OSIS\",\"description\":\"Ruangan 6\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":17,\"name\":\"Ruang Praktek\",\"description\":\"Ruangan 17\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":12,\"name\":\"Ruang Salat\",\"description\":\"Ruangan 12\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":11,\"name\":\"Ruang Satpam\\/Pos Satpam\",\"description\":\"Ruangan 11\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":14,\"name\":\"Ruang Seni Musik\",\"description\":\"Ruangan 14\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":18,\"name\":\"Ruang Serba Guna\",\"description\":\"Ruangan 18\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"Ruang Staff Tata Usaha (TU)\",\"description\":\"Ruangan 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":8,\"name\":\"Ruang Unit Kesehatan Sekolah (UKS)\",\"description\":\"Ruangan 8\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":15,\"name\":\"Ruang Wakil Kepala Sekolah\",\"description\":\"Ruangan 15\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":19,\"name\":\"Ruangan Guru BP (Bimbingan Penyuluhan)\",\"description\":\"Ruangan 19\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]}}},\"duration\":375,\"memory\":24,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:11'),
(584, '9d367dff-d4fa-4c0f-8a30-896d10d5265c', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"3.31\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:17'),
(585, '9d367dff-d6ce-430f-a8c2-6cf11f649622', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:17'),
(586, '9d367dff-d84f-4b8b-96ec-08212fc328cf', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(587, '9d367dff-db30-44e6-9db1-c73ba6e22ac6', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"1.68\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\SchoolOperationalAssistancePolicy.php\",\"line\":16,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(588, '9d367dff-dbf6-4eda-930c-2d020a30f428', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"1.19\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\SchoolOperationalAssistancePolicy.php\",\"line\":16,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(589, '9d367dff-dc1c-49de-ac02-41b8ff72cfa3', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(590, '9d367dff-dcb4-4c2a-972a-f29a62acef49', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\SchoolOperationalAssistancePolicy.php\",\"line\":16,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(591, '9d367dff-dcf5-4d06-8187-3455aae0c6a0', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"viewAny\",\"result\":\"allowed\",\"arguments\":[\"App\\\\SchoolOperationalAssistance\"],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(592, '9d367dff-dd8b-46b6-8612-b17dff7c09fa', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `school_operational_assistances` order by `name` asc\",\"time\":\"0.79\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\SchoolOperationalAssistanceController.php\",\"line\":21,\"hash\":\"17014ab3095d8d378e684a761258a17a\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(593, '9d367dff-ddb1-454e-958a-37fad9b3f462', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\SchoolOperationalAssistance\",\"count\":2,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(594, '9d367dff-e0d5-4dda-95ce-acd6defc7ecd', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.index\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/index.blade.php\",\"data\":[\"school_operational_assistances\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(595, '9d367dff-e1cd-40eb-9c40-a6c44c2a5a1d', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"school_operational_assistances\",\"component\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(596, '9d367dff-e252-45ed-b2d7-09119bfd8e53', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"tambah bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":18,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(597, '9d367dff-e288-4849-977d-08b4e8bf00f0', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"detail bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":59,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(598, '9d367dff-e2ad-4f5f-abd8-abb2a4aee00c', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"ubah bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":66,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(599, '9d367dff-e2d1-47f9-aeb0-52bf0fb17742', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"hapus bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":73,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(600, '9d367dff-e33a-452e-806e-c14a2c07bcc9', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"detail bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":59,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(601, '9d367dff-e35f-49b8-b50f-a50e0ab28220', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"ubah bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":66,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(602, '9d367dff-e383-47f6-a7b7-3afcf944ad23', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"hapus bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\43ca7e99ff1be2c2d6acefb83a67d7da.php\",\"line\":73,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(603, '9d367dff-e3a2-49d4-bd07-752900225ead', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"components.datatable.index\",\"path\":\"\\\\resources\\\\views\\/components\\/datatable\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(604, '9d367dff-e3d0-4c52-a70a-c0cfbd621264', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.modal.create\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/modal\\/create.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(605, '9d367dff-e418-4243-8781-b69f7f273f85', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.modal.show\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/modal\\/show.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(606, '9d367dff-e457-4cbc-a914-f1a9759dc374', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"school-operational-assistances.modal.edit\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/modal\\/edit.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(607, '9d367dff-e49e-4e06-a918-65c7de1681a6', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"school-operational-assistances._script\",\"path\":\"\\\\resources\\\\views\\/school-operational-assistances\\/_script.blade.php\",\"data\":[\"school_operational_assistances\",\"component\",\"__currentLoopData\",\"school_operational_assistance\",\"loop\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(608, '9d367dff-e4ec-41cf-b0ff-c515a4c10e88', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(609, '9d367dff-e56d-4dda-bec9-339221c343e2', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(610, '9d367dff-e59a-438c-9326-ab6e8301aa7e', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(611, '9d367dff-e5c0-4dd6-acd0-711b3d72ab73', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(612, '9d367dff-e5e8-44a3-b391-59bf4021b743', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(613, '9d367dff-e610-40a0-b3a2-e57503c89e63', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(614, '9d367dff-e637-4097-84b1-3c0db16adff8', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(615, '9d367dff-e65f-4c11-af75-3d4d42b67ff8', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(616, '9d367dff-e737-46ed-a705-ad56de946e34', '9d367dff-e7d4-49d3-8a98-3de94a8552e0', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/bantuan-dana-operasional\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\SchoolOperationalAssistanceController@index\",\"middleware\":[\"web\",\"auth\",\"can:viewAny,App\\\\SchoolOperationalAssistance\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/ruangan\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Inh0bHlaVmUzdjNRMFpTQU13aFZxZnc9PSIsInZhbHVlIjoiSDFnT3dTU2FJNDVoYVZnMW5QR3k4c0U5TnFteG9MTStmbmJNSHNZbFBaTEtyUm81NTFSclVIYlhXVDczSVgzbkg5QlhkeG5SenIzRmU2QjlvOG9Sa1UvS1UwYkk4eEFyNlI1Wm11N202cDVvMzNXQWFlc1gyT0EyaTErRUVzclAiLCJtYWMiOiJjZDlkNDMwOWZiM2JhOTZiZTYzNGJmNzc3NDAxNGY3NDAwZjQ2MjI0YzkzY2U3MDBjMTg5YmI4MzkwZDgzZTA0IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkNONVd2U2cyVi9XUm1kVEtQNCtPSlE9PSIsInZhbHVlIjoiNkRDRW9SN1UrMVA3NkhSOVNHNDhkdDRKWTBteFd6REJBbTlabkpaNUpYMytPRjFQWlA5OEVNOHNlTk50VlJ0Z3hoZ01ESlI3c1RQY3dQbnByc0ptM0M2U05ZVkJqOSsxcXUxM1JJczhDa1hpTjZOSjJ4ZXBlMWlvQVlURkxOcmUiLCJtYWMiOiJmYjVjZGJmZjY3ZWM1NmIyMjhjMWJlZDM3MGU3YzZkNWIzN2RmMTE1ODE0YzU5ODgyYmNhYzczMWI2MjQ3Y2JiIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/bantuan-dana-operasional\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/school-operational-assistances\\/index.blade.php\",\"data\":{\"school_operational_assistances\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"BOSDA\",\"description\":\"Deskripsi BOSDA\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"BOSNAS\",\"description\":\"Deskripsi BOSNAS\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]}}},\"duration\":250,\"memory\":24,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:17'),
(617, '9d367e02-e197-4ec4-9947-e2a30b90f07e', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"20.84\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:19'),
(618, '9d367e02-e337-44c4-b6c4-353161bd3e3b', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:21:19'),
(619, '9d367e02-e4c4-46db-a45d-e0d9cd3be055', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"spatie.permission.cache\",\"value\":{\"alias\":{\"a\":\"id\",\"b\":\"name\",\"c\":\"guard_name\",\"r\":\"roles\"},\"permissions\":[{\"a\":1,\"b\":\"tambah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":2,\"b\":\"lihat barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":3,\"b\":\"detail barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":4,\"b\":\"ubah barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":5,\"b\":\"hapus barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":6,\"b\":\"tambah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":7,\"b\":\"lihat bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":8,\"b\":\"detail bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":9,\"b\":\"ubah bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":10,\"b\":\"hapus bos\",\"c\":\"web\",\"r\":[1,2]},{\"a\":11,\"b\":\"tambah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":12,\"b\":\"lihat ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":13,\"b\":\"detail ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":14,\"b\":\"ubah ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":15,\"b\":\"hapus ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":16,\"b\":\"tambah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":17,\"b\":\"lihat pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":18,\"b\":\"detail pengguna\",\"c\":\"web\",\"r\":[1,2]},{\"a\":19,\"b\":\"ubah pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":20,\"b\":\"hapus pengguna\",\"c\":\"web\",\"r\":[1]},{\"a\":21,\"b\":\"import barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":22,\"b\":\"export barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":23,\"b\":\"import ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":24,\"b\":\"export ruangan\",\"c\":\"web\",\"r\":[1,2]},{\"a\":25,\"b\":\"print barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":26,\"b\":\"print individual barang\",\"c\":\"web\",\"r\":[1,2]},{\"a\":27,\"b\":\"mengatur profile\",\"c\":\"web\",\"r\":[1,2]},{\"a\":28,\"b\":\"lihat peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":29,\"b\":\"tambah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":30,\"b\":\"ubah peran dan hak akses\",\"c\":\"web\",\"r\":[1]},{\"a\":31,\"b\":\"hapus peran dan hak akses\",\"c\":\"web\",\"r\":[1]}],\"roles\":[{\"a\":1,\"b\":\"Administrator\",\"c\":\"web\"},{\"a\":2,\"b\":\"Staff TU (Tata Usaha)\",\"c\":\"web\"}]},\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(620, '9d367e02-e735-4734-8d62-c01259c74dc0', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `permissions`.*, `model_has_permissions`.`model_id` as `pivot_model_id`, `model_has_permissions`.`permission_id` as `pivot_permission_id`, `model_has_permissions`.`model_type` as `pivot_model_type` from `permissions` inner join `model_has_permissions` on `permissions`.`id` = `model_has_permissions`.`permission_id` where `model_has_permissions`.`model_id` = 1 and `model_has_permissions`.`model_type` = \'App\\\\User\'\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityPolicy.php\",\"line\":16,\"hash\":\"5b20d5268110993bb84c6c0fa17a15fc\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(621, '9d367e02-e7d0-4ded-a22b-f22f67821048', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = \'App\\\\User\'\",\"time\":\"0.71\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityPolicy.php\",\"line\":16,\"hash\":\"30e651e0e2d06e58b62d2416b9bec300\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(622, '9d367e02-e7f3-4e3c-9cbf-5cb302d32b4c', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(623, '9d367e02-e874-4c4c-9ba2-a29b0e551e0c', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Policies\\\\CommodityPolicy.php\",\"line\":16,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(624, '9d367e02-e8a4-4367-9ad3-b5dfeb40cbea', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"viewAny\",\"result\":\"allowed\",\"arguments\":[\"App\\\\Commodity\"],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(625, '9d367e02-e90c-4e0f-991d-2109f4f8770c', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodities` order by `created_at` desc\",\"time\":\"0.55\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":54,\"hash\":\"8c6e535f56a14aa57a5b948c0f6d6485\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(626, '9d367e02-e927-4a9c-b6a4-784e1dd9bb33', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Commodity\",\"count\":19,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(627, '9d367e02-e982-45b6-872f-382c8fdb57f7', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `year_of_purchase` from `commodities`\",\"time\":\"0.28\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":55,\"hash\":\"fc817363fcd4672f8b3e6eb696a3059c\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(628, '9d367e02-e9c2-421c-9e9b-eb002c6c05d0', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `brand` from `commodities`\",\"time\":\"0.28\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":56,\"hash\":\"08d72535bdd31dd7991b9c55e179fbaf\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(629, '9d367e02-e9fc-4801-b3e2-43106c8cbfff', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `material` from `commodities`\",\"time\":\"0.25\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":57,\"hash\":\"c7074b87b057ff41ab9d745089733f86\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(630, '9d367e02-ea5d-4ba2-872d-f3f4e999aedb', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `school_operational_assistances` order by `name` asc\",\"time\":\"0.33\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":58,\"hash\":\"17014ab3095d8d378e684a761258a17a\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(631, '9d367e02-ea77-4662-bf34-8e9f41ffb474', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\SchoolOperationalAssistance\",\"count\":2,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(632, '9d367e02-eaf4-42b1-86cb-96a585dae20a', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `commodity_locations` order by `name` asc\",\"time\":\"0.69\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\app\\\\Http\\\\Controllers\\\\CommodityController.php\",\"line\":59,\"hash\":\"6be74585ea201e74c97d0866e19683be\",\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(633, '9d367e02-eb0e-47c5-8125-7d5713c2f743', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\CommodityLocation\",\"count\":25,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(634, '9d367e02-ee2c-4e26-8878-1b6fa6d938a5', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"commodities.index\",\"path\":\"\\\\resources\\\\views\\/commodities\\/index.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(635, '9d367e02-ef19-4e74-9b8a-934e9873f1f1', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(636, '9d367e02-efa5-4ec6-93b7-5c42714738b7', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"import barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":19,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(637, '9d367e02-efd7-4147-9f73-673f71293e5b', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"export barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(638, '9d367e02-f035-4090-a05b-0eb1d724107b', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"tambah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":37,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(639, '9d367e02-f05c-45d6-a79f-a38df66afd9e', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":44,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(640, '9d367e02-f0c1-46db-b310-f8e76aa7d62f', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"components.filter.index\",\"path\":\"\\\\resources\\\\views\\/components\\/filter\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"resetFilterURL\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(641, '9d367e02-f111-4426-aa1b-bd62b76f86d6', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(642, '9d367e02-f140-4bce-8195-ccd081e246fc', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(643, '9d367e02-f16f-43cc-a921-2368fe1aafa8', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(644, '9d367e02-f19d-430b-a85e-35c82532e688', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(645, '9d367e02-f1c6-41ce-9707-69f38e2b4f06', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(646, '9d367e02-f1e8-4e3e-b700-2b8697eab5dd', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(647, '9d367e02-f20c-47f4-9487-7ae821b0b4ea', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(648, '9d367e02-f230-443b-a555-0518b5743018', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(649, '9d367e02-f257-4896-b1bc-045e24a70f50', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(650, '9d367e02-f278-4b3c-8af3-c20264cf3e58', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(651, '9d367e02-f29c-4700-a112-44e326269310', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(652, '9d367e02-f2c0-48cc-a806-e659a1fbbfc4', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(653, '9d367e02-f2e5-4eac-870d-bad13b598e34', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(654, '9d367e02-f307-4396-ac60-09e5dd1c4386', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(655, '9d367e02-f32b-40e2-9a6c-de1073b9f51e', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(656, '9d367e02-f34e-4806-8c36-ecf6f4249f2a', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(657, '9d367e02-f374-436c-b85a-3b5bf3c12c64', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(658, '9d367e02-f394-4411-8f84-a27c7ab54545', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(659, '9d367e02-f3b8-4353-8a92-b35a4f4f84a8', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(660, '9d367e02-f3db-4d86-adde-dcfd34714e2c', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(661, '9d367e02-f401-4db4-ab92-2a6e10426f3a', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(662, '9d367e02-f422-4380-9fbc-a426b15367ea', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(663, '9d367e02-f445-406e-ae28-5594650ed326', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(664, '9d367e02-f46a-4193-a8ad-a71b03476dfc', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(665, '9d367e02-f490-4c9c-bfcf-47017f7d97e3', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(666, '9d367e02-f4b0-4f22-b8b0-3f23fd1a40e3', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(667, '9d367e02-f4d6-456a-9427-a9131fa7a8a9', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(668, '9d367e02-f4f9-4e99-99fa-46efa7855c43', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(669, '9d367e02-f51e-429a-acbe-6e1c3dfb14b3', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(670, '9d367e02-f53f-40a3-a164-4dd94595b98d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(671, '9d367e02-f562-437d-93e0-87cc6737b60d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(672, '9d367e02-f587-4cee-a5fc-e2d1a89f2428', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(673, '9d367e02-f5ac-475b-8880-151f41b1d1d4', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(674, '9d367e02-f5cd-4c2f-b350-ec2042c599a0', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(675, '9d367e02-f5f6-4fdb-a5c0-c57349f57ae3', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(676, '9d367e02-f61b-4ad7-beb3-39bf33aa376d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(677, '9d367e02-f642-44d7-b11d-f9e66b8c5d92', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(678, '9d367e02-f663-4717-9b59-204e764a1d41', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(679, '9d367e02-f687-4ad4-bce0-35dc713a921a', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(680, '9d367e02-f6aa-47d9-9eca-6675630670a9', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(681, '9d367e02-f6d0-4cfb-bc5a-8b4a25a7d396', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(682, '9d367e02-f6f0-4c87-a210-399a9b2c705d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(683, '9d367e02-f716-4925-b468-31c618366f35', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(684, '9d367e02-f739-48f0-b82a-22bd8bfc6cde', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(685, '9d367e02-f761-4c95-b82d-fb2591febbc9', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(686, '9d367e02-f783-4096-9488-f6f843066d42', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(687, '9d367e02-f7a7-45ff-8c05-1cbb7f042b73', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(688, '9d367e02-f7ca-4452-bdf5-61ee6e36b2de', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(689, '9d367e02-f7f2-4f2a-89a3-7d20a4b936ee', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(690, '9d367e02-f812-43f2-879e-7b205d1e331d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(691, '9d367e02-f836-4d22-9dfb-500d58c7ce76', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(692, '9d367e02-f85a-4499-afcd-4a0a246e77c5', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(693, '9d367e02-f880-49f6-9d8c-b288cef2aaf6', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(694, '9d367e02-f8a1-461d-b9be-57075548b06f', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(695, '9d367e02-f8c4-418c-8903-f8d0d0232ce7', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(696, '9d367e02-f8e7-48ca-8b42-a4aed0450360', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(697, '9d367e02-f90e-4bec-b7ac-59a08c5f0b7d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(698, '9d367e02-f92f-4d16-9b09-b965d316a3d7', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(699, '9d367e02-f953-43b7-842a-2aefc24bb604', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(700, '9d367e02-f976-4e4d-b5ba-e757733c0a2e', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(701, '9d367e02-f99c-4177-99e0-e3baaba97f1c', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(702, '9d367e02-f9bc-4862-99a1-aeaf6a190af7', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(703, '9d367e02-f9e0-4085-b152-1564ee5f9bec', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(704, '9d367e02-fa03-4c95-a752-02cdacad5bb7', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(705, '9d367e02-fa29-47fc-8154-5b9d4ddfd115', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(706, '9d367e02-fa49-4cc3-bf7d-5b58f3060260', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(707, '9d367e02-fa6d-4042-a011-41902d767796', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(708, '9d367e02-fa90-4fbe-9985-8f89209bfaed', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(709, '9d367e02-fab6-4e63-9694-581a95812b7d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(710, '9d367e02-fad7-4067-9799-d0b6c7897ba0', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(711, '9d367e02-fafd-4a7e-bb07-64693ef9d0aa', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(712, '9d367e02-fb20-4bbe-a4b1-b30f7d5e7100', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(713, '9d367e02-fb48-4dd8-9e79-ed9282b1b029', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"detail barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":214,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(714, '9d367e02-fb6a-43e4-8325-981cf801babf', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"ubah barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":221,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(715, '9d367e02-fb8d-46ef-bc23-814abb890450', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"print individual barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":228,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(716, '9d367e02-fbb0-426c-a4e6-ca68dc3efe36', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"hapus barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\ef07b17ee3773dd6a308b53d23f42c04.php\",\"line\":237,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(717, '9d367e02-fbd5-4760-9702-fb69878ed52f', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"components.datatable.index\",\"path\":\"\\\\resources\\\\views\\/components\\/datatable\\/index.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(718, '9d367e02-fc0c-40b3-9d04-52f5ea3bdab8', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"commodities.modal.show\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/show.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(719, '9d367e02-fc5d-43b6-9e73-21802f2dba14', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"commodities.modal.create\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/create.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(720, '9d367e02-fd3e-47b6-bdd4-b9e1d9758612', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"commodities.modal.edit\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/edit.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(721, '9d367e02-fd91-4b48-94a5-1186928dc7fc', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"commodities.modal.import\",\"path\":\"\\\\resources\\\\views\\/commodities\\/modal\\/import.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(722, '9d367e02-fdcb-449c-baf7-dce2a3da2b31', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"commodities._script\",\"path\":\"\\\\resources\\\\views\\/commodities\\/_script.blade.php\",\"data\":[\"commodities\",\"school_operational_assistances\",\"commodity_locations\",\"year_of_purchases\",\"commodity_brands\",\"commodity_materials\",\"component\",\"__currentLoopData\",\"commodity_location\",\"loop\",\"school_operational_assistance\",\"year_of_purchase\",\"material\",\"brand\",\"commodity\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(723, '9d367e02-fe05-4620-a12f-cca390561ee2', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\\\resources\\\\views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"title\",\"page_heading\",\"__laravel_slots\"],\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(724, '9d367e02-fe85-4b73-8892-c5a49d8e59c7', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":47,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(725, '9d367e02-feb2-47df-87ae-c5afa2964a91', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"lihat barang\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":79,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(726, '9d367e02-fed6-43a6-9c0e-1b495ac8c33d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"lihat bos\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":84,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(727, '9d367e02-fefc-4efe-ba92-1dccb52a3cc4', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"lihat ruangan\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":89,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(728, '9d367e02-ff21-4e12-b71f-c7dc8f00b90d', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"lihat pengguna\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":94,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(729, '9d367e02-ff47-4f03-88fd-064ef1e0a4eb', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"mengatur profile\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":101,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(730, '9d367e02-ff6d-4c68-89d9-787598e00634', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'gate', '{\"ability\":\"lihat peran dan hak akses\",\"result\":\"allowed\",\"arguments\":[],\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\storage\\\\framework\\\\views\\\\05817522c523666852e093ff44c46bb3.php\",\"line\":106,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(731, '9d367e03-01f0-4a2e-b8e4-e6132b169dcc', '9d367e03-02ac-4191-bad7-36541755e1ae', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/barang\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\CommodityController@index\",\"middleware\":[\"web\",\"auth\",\"can:viewAny,App\\\\Commodity\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/bantuan-dana-operasional\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImUzUVo1cmE3QXo3ay85V1k4TlFVT0E9PSIsInZhbHVlIjoiQWQ3VE9ScXhmWEVqd2U3QUpOQVN0Q3haWTh3WXc0Rmtta0JqRFovd0QzbjZwV2RzSWtGd2VHQ3ZVcVJ6OEJJaHFmOHMxak11ME9iTHFGVUNualhtbHZzeG83ZFBRRHorTVVaVUtMY21LS01OSWVrM1Y3OUNoVHllaGwwZ09hREMiLCJtYWMiOiJmYzllZTJiYmU5OTUzNWYyZmYzZGMwNzEzMGZhODM5NTkyOTYzMGYxNWE3MTllZjY1ZWZkNzU0MjQ4ZGQzNjBlIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlFGNXI3bUZLUjUvVUZQZmxuYS9JQWc9PSIsInZhbHVlIjoidDdPQTJyU1RuL3Uzb1Eyc3ZrUWlvZUdxemJ5VTRUU2xrdk1GQXNpcnY1a21BZU53WTQzSjcvWXo2dlZMZFpuRnZPNGIxejdWTnVsb0UxeEM4UlBzc1pYNkVvODF1anI4M2N4bXFyMHM1SDFUZkplOVQzTWVIb1YvQ252UGttdHYiLCJtYWMiOiJmM2I0NmI2NWU3MTE5ZWYzNGUxOWRmOTFkMDc0NzA1OTZjNGM2NTMzZjA3YzQwYWY0OTJlYzA0ZDAwZjRhMGNhIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/barang\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/commodities\\/index.blade.php\",\"data\":{\"commodities\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"school_operational_assistance_id\":2,\"commodity_location_id\":19,\"item_code\":\"BRG-6298554\",\"name\":\"Rak Peralatan Sekolah\",\"brand\":\"Olympic\",\"material\":\"Kayu Solid\",\"year_of_purchase\":2016,\"condition\":1,\"quantity\":192,\"price\":233430,\"price_per_item\":39290,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"school_operational_assistance_id\":2,\"commodity_location_id\":10,\"item_code\":\"BRG-7339149\",\"name\":\"Penghapus Papan Tulis Putih\",\"brand\":\"IKEA\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2019,\"condition\":1,\"quantity\":152,\"price\":316234,\"price_per_item\":74227,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":3,\"school_operational_assistance_id\":2,\"commodity_location_id\":23,\"item_code\":\"BRG-2816277\",\"name\":\"Rak Peralatan Sekolah\",\"brand\":\"IKEA\",\"material\":\"Partikel\",\"year_of_purchase\":2022,\"condition\":2,\"quantity\":177,\"price\":184768,\"price_per_item\":126244,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":4,\"school_operational_assistance_id\":1,\"commodity_location_id\":20,\"item_code\":\"BRG-5006790\",\"name\":\"Rak Sepatu\",\"brand\":\"IKEA\",\"material\":\"Blockboard\",\"year_of_purchase\":2020,\"condition\":2,\"quantity\":92,\"price\":70740,\"price_per_item\":110588,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":5,\"school_operational_assistance_id\":2,\"commodity_location_id\":22,\"item_code\":\"BRG-6521542\",\"name\":\"Kipas Dinding\",\"brand\":\"Olympic\",\"material\":\"Partikel\",\"year_of_purchase\":2013,\"condition\":3,\"quantity\":170,\"price\":84333,\"price_per_item\":145768,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":6,\"school_operational_assistance_id\":1,\"commodity_location_id\":22,\"item_code\":\"BRG-4060620\",\"name\":\"Lemari Sepatu\",\"brand\":\"Dove\'s\",\"material\":\"Melaminto\",\"year_of_purchase\":2020,\"condition\":3,\"quantity\":150,\"price\":372107,\"price_per_item\":26344,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":7,\"school_operational_assistance_id\":2,\"commodity_location_id\":5,\"item_code\":\"BRG-2624517\",\"name\":\"Kipas Dinding\",\"brand\":\"Dove\'s\",\"material\":\"Rotan\",\"year_of_purchase\":2020,\"condition\":2,\"quantity\":159,\"price\":303050,\"price_per_item\":113190,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":8,\"school_operational_assistance_id\":2,\"commodity_location_id\":7,\"item_code\":\"BRG-4298293\",\"name\":\"Rak Sepatu\",\"brand\":\"Olympic\",\"material\":\"Rotan\",\"year_of_purchase\":2013,\"condition\":1,\"quantity\":181,\"price\":446319,\"price_per_item\":147423,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":9,\"school_operational_assistance_id\":1,\"commodity_location_id\":9,\"item_code\":\"BRG-2080614\",\"name\":\"Papan Tulis Hitam\",\"brand\":\"Funika\",\"material\":\"Blockboard\",\"year_of_purchase\":2024,\"condition\":1,\"quantity\":91,\"price\":75111,\"price_per_item\":69456,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":10,\"school_operational_assistance_id\":1,\"commodity_location_id\":16,\"item_code\":\"BRG-8592870\",\"name\":\"Papan Tulis Putih\",\"brand\":\"Atria\",\"material\":\"Kayu Lapis (Plywood\\/Multipleks)\",\"year_of_purchase\":2024,\"condition\":3,\"quantity\":90,\"price\":50523,\"price_per_item\":14140,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":11,\"school_operational_assistance_id\":1,\"commodity_location_id\":1,\"item_code\":\"BRG-6561787\",\"name\":\"Kursi\",\"brand\":\"Livien\",\"material\":\"Blockboard\",\"year_of_purchase\":2018,\"condition\":3,\"quantity\":160,\"price\":289371,\"price_per_item\":64052,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":12,\"school_operational_assistance_id\":1,\"commodity_location_id\":24,\"item_code\":\"BRG-7008202\",\"name\":\"Lemari Buku\",\"brand\":\"Red Sun\",\"material\":\"Partikel\",\"year_of_purchase\":2020,\"condition\":2,\"quantity\":106,\"price\":302439,\"price_per_item\":82810,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":13,\"school_operational_assistance_id\":2,\"commodity_location_id\":18,\"item_code\":\"BRG-2628302\",\"name\":\"Kipas Dinding\",\"brand\":\"IKEA\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2012,\"condition\":3,\"quantity\":65,\"price\":324756,\"price_per_item\":32325,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":14,\"school_operational_assistance_id\":2,\"commodity_location_id\":21,\"item_code\":\"BRG-5819215\",\"name\":\"Papan Tulis Hitam\",\"brand\":\"Atria\",\"material\":\"Partikel\",\"year_of_purchase\":2023,\"condition\":1,\"quantity\":63,\"price\":113421,\"price_per_item\":27327,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":15,\"school_operational_assistance_id\":2,\"commodity_location_id\":9,\"item_code\":\"BRG-8696267\",\"name\":\"Meja Guru\",\"brand\":\"Olympic\",\"material\":\"Blockboard\",\"year_of_purchase\":2024,\"condition\":2,\"quantity\":183,\"price\":190827,\"price_per_item\":147107,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":16,\"school_operational_assistance_id\":1,\"commodity_location_id\":13,\"item_code\":\"BRG-7175600\",\"name\":\"Rak Sepatu\",\"brand\":\"Funika\",\"material\":\"Partikel\",\"year_of_purchase\":2024,\"condition\":1,\"quantity\":65,\"price\":353676,\"price_per_item\":53720,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":17,\"school_operational_assistance_id\":2,\"commodity_location_id\":18,\"item_code\":\"BRG-3980238\",\"name\":\"Rak Helm\",\"brand\":\"Dove\'s\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2011,\"condition\":3,\"quantity\":62,\"price\":257827,\"price_per_item\":66147,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":18,\"school_operational_assistance_id\":2,\"commodity_location_id\":4,\"item_code\":\"BRG-8549852\",\"name\":\"Penghapus Papan Tulis Putih\",\"brand\":\"IKEA\",\"material\":\"Kayu Lapis (Plywood\\/Multipleks)\",\"year_of_purchase\":2011,\"condition\":1,\"quantity\":157,\"price\":459199,\"price_per_item\":62549,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":19,\"school_operational_assistance_id\":2,\"commodity_location_id\":23,\"item_code\":\"BRG-8263701\",\"name\":\"Kipas Dinding\",\"brand\":\"Atria\",\"material\":\"MDF (Medium Density Fibreboard)\",\"year_of_purchase\":2019,\"condition\":1,\"quantity\":142,\"price\":127431,\"price_per_item\":33651,\"note\":\"Keterangan barang\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]},\"school_operational_assistances\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"BOSDA\",\"description\":\"Deskripsi BOSDA\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"BOSNAS\",\"description\":\"Deskripsi BOSNAS\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]},\"commodity_locations\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":21,\"name\":\"Kelas 1\",\"description\":\"Ruangan Kelas 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":22,\"name\":\"Kelas 2\",\"description\":\"Ruangan Kelas 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":23,\"name\":\"Kelas 3\",\"description\":\"Ruangan Kelas 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":24,\"name\":\"Kelas 4\",\"description\":\"Ruangan Kelas 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":25,\"name\":\"Kelas 5\",\"description\":\"Ruangan Kelas 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":5,\"name\":\"Perpustakaan Atas\",\"description\":\"Ruangan 5\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":4,\"name\":\"Perpustakaan Bawah\",\"description\":\"Ruangan 4\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":3,\"name\":\"Ruang Gudang\",\"description\":\"Ruangan 3\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":9,\"name\":\"Ruang Kantin\",\"description\":\"Ruangan 9\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":20,\"name\":\"Ruang Kegiatan Ekstrakurikuler\",\"description\":\"Ruangan 20\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":1,\"name\":\"Ruang Kepala Sekolah\",\"description\":\"Ruangan 1\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":13,\"name\":\"Ruang Kepala Tata Usaha (TU)\",\"description\":\"Ruangan 13\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":16,\"name\":\"Ruang Komputer\",\"description\":\"Ruangan 16\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":10,\"name\":\"Ruang Koperasi\",\"description\":\"Ruangan 10\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":7,\"name\":\"Ruang Laboratorium\",\"description\":\"Ruangan 7\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":6,\"name\":\"Ruang OSIS\",\"description\":\"Ruangan 6\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":17,\"name\":\"Ruang Praktek\",\"description\":\"Ruangan 17\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":12,\"name\":\"Ruang Salat\",\"description\":\"Ruangan 12\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":11,\"name\":\"Ruang Satpam\\/Pos Satpam\",\"description\":\"Ruangan 11\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":14,\"name\":\"Ruang Seni Musik\",\"description\":\"Ruangan 14\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":18,\"name\":\"Ruang Serba Guna\",\"description\":\"Ruangan 18\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":2,\"name\":\"Ruang Staff Tata Usaha (TU)\",\"description\":\"Ruangan 2\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":8,\"name\":\"Ruang Unit Kesehatan Sekolah (UKS)\",\"description\":\"Ruangan 8\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":15,\"name\":\"Ruang Wakil Kepala Sekolah\",\"description\":\"Ruangan 15\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"},{\"id\":19,\"name\":\"Ruangan Guru BP (Bimbingan Penyuluhan)\",\"description\":\"Ruangan 19\",\"created_at\":\"2024-10-10T15:20:06.000000Z\",\"updated_at\":\"2024-10-10T15:20:06.000000Z\"}]},\"year_of_purchases\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":{\"16\":2011,\"12\":2012,\"4\":2013,\"0\":2016,\"10\":2018,\"1\":2019,\"3\":2020,\"2\":2022,\"13\":2023,\"8\":2024}},\"commodity_brands\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":{\"9\":\"Atria\",\"5\":\"Dove\'s\",\"8\":\"Funika\",\"1\":\"IKEA\",\"10\":\"Livien\",\"0\":\"Olympic\",\"11\":\"Red Sun\"}},\"commodity_materials\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":{\"3\":\"Blockboard\",\"9\":\"Kayu Lapis (Plywood\\/Multipleks)\",\"0\":\"Kayu Solid\",\"1\":\"MDF (Medium Density Fibreboard)\",\"5\":\"Melaminto\",\"2\":\"Partikel\",\"6\":\"Rotan\"}}}},\"duration\":297,\"memory\":26,\"hostname\":\"LAPTOP-S4K34FSD\",\"user\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@mail.com\"}}', '2024-10-10 23:21:19'),
(732, '9d367ffc-aae4-4856-a0ff-03bf2de4c6b0', '9d367ffc-b3c3-430d-93e7-7837aae75287', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"4.57\",\"slow\":false,\"file\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\public\\\\index.php\",\"line\":54,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:26:50'),
(733, '9d367ffc-ae21-47e9-8d81-103dbefe7c10', '9d367ffc-b3c3-430d-93e7-7837aae75287', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\User\",\"count\":1,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:26:50'),
(734, '9d367ffc-b285-4431-b7cf-974f52272e9a', '9d367ffc-b3c3-430d-93e7-7837aae75287', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/logout\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\LogoutController\",\"middleware\":[\"web\",\"auth\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"content-length\":\"47\",\"cache-control\":\"max-age=0\",\"origin\":\"http:\\/\\/inven-bs.test\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/barang\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlEvMUk3TmRnR0Q3NjZZdzhyUzRxN0E9PSIsInZhbHVlIjoiUndnSS84Zzl4K2V0NGVKQUU4MkZRNjhiMmRyeVFNTk45UGd1RHlvNkRBWWxuVDNBSHQ4Vk5tbEM0K0tSaXNQL3FVajNxdnRtRTF4bUVYQS9lakx4cDR0ZGxnamF6TCtZRStqUEJ2ZzlIalVwc3ZSNEhjV3UwSXlzVGZ5aENnYUIiLCJtYWMiOiI1YmU1NzI4YzQ4MDc1ZjBjMjM1OWVhZGM4YWExMDNkZWU5ZWUxMmEzYWM1ZmE0MjA2YmNiYjQ0MjVhNTk3NDYyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjhBdFNkR2JPVmNGVTQzeXRKWWdXbVE9PSIsInZhbHVlIjoiOG1ITi9vNDY3RmwvMzZJYWxxVGhjck55RjlBd2c0NTcyRWVoTXN1NkhjbWx0SFlwNDRVbG5iWjNIUVNndlNVUXpPWEZzOTltZFJSNEZRYUFUWWg1NlVRU09GV3NMWGQ5cGVhZTlkMEdraldzVnlhS3JhOW1MRVA0TWlERWxMVEgiLCJtYWMiOiJhODBiNWFmYWFkMjM4ZmY2ZWQzY2RlNjk0MDBlM2NmNTU2ZjFmMDI4NGJmMzVhYWZiYzljMjA1NmQ1MmVkZGYzIiwidGFnIjoiIn0%3D\"},\"payload\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\"},\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/barang\"},\"_flash\":{\"old\":[\"success\"],\"new\":[]},\"success\":\"Berhasil keluar dari aplikasi!\"},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/inven-bs.test\\/login\",\"duration\":371,\"memory\":24,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:26:50'),
(735, '9d367ffd-08e3-44e0-8a2e-075b9f6093b1', '9d367ffd-0e0e-48f5-b17b-52a7a4390ed1', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:26:50'),
(736, '9d367ffd-0b38-4500-8a4b-73b397110947', '9d367ffd-0e0e-48f5-b17b-52a7a4390ed1', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:26:50'),
(737, '9d367ffd-0c50-4847-a33e-87b2415d6465', '9d367ffd-0e0e-48f5-b17b-52a7a4390ed1', NULL, 1, 'view', '{\"name\":\"layouts.partials.greetings\",\"path\":\"\\\\resources\\\\views\\/layouts\\/partials\\/greetings.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:26:50'),
(738, '9d367ffd-0d14-41ef-8623-a6f729ea72ed', '9d367ffd-0e0e-48f5-b17b-52a7a4390ed1', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/inven-bs.test\\/barang\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjFsSU5PeTN0NHNzbjAxOHh4bWd1U3c9PSIsInZhbHVlIjoicStPemJDTTBmcGx5UGkzejFiWWg1enhFZ05IY0ExNFhTWmVWNXNOMFFsS1lYZFpXZUliazhNV0VCa24raUdXdVdTL1h5YkllZWlOcTIrb0xUeEtuVXBtMS8wRFFOaE5JY3UwQXNUdGM5UHRzb25VVTNYb2I5ZElkZmR2OXVVeEQiLCJtYWMiOiJmNmU0YmE4NzRiZmYxNTdjMTVhNTNmMGIyODQyNGI2Mjk5MzUyMzVlZjhhMjM4YjkxODJjN2U4YmU1Nzg4YTQ5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjkxK3VYTW9wSERsTmQza2xmWTh1d3c9PSIsInZhbHVlIjoieXdWZXk0aGxIMXNQcHVteGtHYU9OazV0RFhMeDVwWmxHcElEMmw4ZXFZZjZ4bFVYR3RuSGZvYU90N3NYRThtYUczSWV6OFBiVUZpVGxCVU4yK3k1L1B1N1cwMDZRK2dJVDc5bmNkL1FqaWhQYWNCR3NPVm1VOXpIU2VoRUlzZjciLCJtYWMiOiIzYTQ0NTNhZmZlOWE2NzBmZDZhMDdiMWE1MDQ1ZDVlMDljNWNjMDIzYzI5OGIxZWJlZjU1YzdmZGNjYWExYTljIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"XROHovHlIk9GJhgJakObDRRpubGBTGsuA429jNNI\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\\/login\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":223,\"memory\":22,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-10 23:26:50'),
(739, '9d36c5bc-d890-40f5-b352-854df88bf69f', '9d36c5bd-f2a0-4a3a-9f09-7ddc1ce202dc', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-11 02:41:53'),
(740, '9d36c5bd-75f6-475c-996f-1417bca7dcf6', '9d36c5bd-f2a0-4a3a-9f09-7ddc1ce202dc', NULL, 1, 'view', '{\"name\":\"utilities.alert\",\"path\":\"\\\\resources\\\\views\\/utilities\\/alert.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-11 02:41:53'),
(741, '9d36c5bd-a0d7-4914-a34b-f2dde9302afb', '9d36c5bd-f2a0-4a3a-9f09-7ddc1ce202dc', NULL, 1, 'view', '{\"name\":\"layouts.partials.greetings\",\"path\":\"\\\\resources\\\\views\\/layouts\\/partials\\/greetings.blade.php\",\"data\":[],\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-11 02:41:53'),
(742, '9d36c5bd-bab5-4b79-addb-6b51adf75a2b', '9d36c5bd-f2a0-4a3a-9f09-7ddc1ce202dc', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"inven-bs.test\",\"connection\":\"keep-alive\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/129.0.0.0 Safari\\/537.36 Edg\\/129.0.0.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"id,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\"},\"payload\":[],\"session\":{\"_token\":\"dAzu8GnDZm1IT6F8dcntPhq2f5FbcX6z2kvH17mF\",\"_previous\":{\"url\":\"http:\\/\\/inven-bs.test\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"D:\\\\laragon\\\\www\\\\inven-bs\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":8589,\"memory\":22,\"hostname\":\"LAPTOP-S4K34FSD\"}', '2024-10-11 02:41:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('9d367dbb-7d6f-442f-9425-14cec1b64c14', 'App\\Commodity'),
('9d367dc2-bb23-421a-98c7-c216f079e1c4', 'App\\Commodity'),
('9d367e02-e927-4a9c-b6a4-784e1dd9bb33', 'App\\Commodity'),
('9d367d94-0e47-459a-af40-934a8dbe8d4c', 'App\\CommodityLocation'),
('9d367dbb-80fa-4fe4-8146-6388756db429', 'App\\CommodityLocation'),
('9d367dc2-bd7e-4fba-8e0f-84fcb57dc275', 'App\\CommodityLocation'),
('9d367dcc-1cc5-4605-a343-a17175fd3256', 'App\\CommodityLocation'),
('9d367df6-9a7d-489f-8638-3fa3037a40b1', 'App\\CommodityLocation'),
('9d367e02-eb0e-47c5-8125-7d5713c2f743', 'App\\CommodityLocation'),
('9d367dbb-81fa-45d3-837b-275ce63eb4bf', 'App\\SchoolOperationalAssistance'),
('9d367dc2-bcbb-41c2-9e16-4729860c3b04', 'App\\SchoolOperationalAssistance'),
('9d367dca-282e-4622-8f00-9e90be703dd2', 'App\\SchoolOperationalAssistance'),
('9d367dff-ddb1-454e-958a-37fad9b3f462', 'App\\SchoolOperationalAssistance'),
('9d367e02-ea77-4662-bf34-8e9f41ffb474', 'App\\SchoolOperationalAssistance'),
('9d367d94-206a-4bcd-99fd-9fd63f6e8c42', 'App\\User'),
('9d367dba-ebca-4165-8855-d75419a69d2f', 'App\\User'),
('9d367dbb-7b1b-42a2-906a-a78167e41614', 'App\\User'),
('9d367dc2-b3e4-47bb-a2ce-08d71d6beede', 'App\\User'),
('9d367dca-2155-48df-8dbf-08ebfee3b868', 'App\\User'),
('9d367dcc-1686-4099-9bd6-0decdb1cba5f', 'App\\User'),
('9d367dde-d4dd-4358-98c5-cbe4ca9c3e97', 'App\\User'),
('9d367df3-6293-4785-b0b0-0db52a1e0102', 'App\\User'),
('9d367df6-92dc-40b8-8a7f-1c674b859ca7', 'App\\User'),
('9d367dff-d6ce-430f-a8c2-6cf11f649622', 'App\\User'),
('9d367e02-e337-44c4-b6c4-353161bd3e3b', 'App\\User'),
('9d367ffc-ae21-47e9-8d81-103dbefe7c10', 'App\\User'),
('9d367d93-e7aa-45e8-a29c-bdb49bfc9aa4', 'App\\User:1'),
('9d367d93-fd2e-4162-aca8-ecc0aad69e5b', 'App\\User:2'),
('9d367dbb-0513-4eb1-acc1-c821904bb31a', 'Auth:1'),
('9d367dbb-7d3c-49d0-868a-fe4780f03c1e', 'Auth:1'),
('9d367dbb-7d6f-442f-9425-14cec1b64c14', 'Auth:1'),
('9d367dbb-7dfe-459c-9a95-77177d5c329e', 'Auth:1'),
('9d367dbb-7e55-4044-b56f-b0dde00c42be', 'Auth:1'),
('9d367dbb-80c8-49e3-a54b-a2627eba9342', 'Auth:1'),
('9d367dbb-80fa-4fe4-8146-6388756db429', 'Auth:1'),
('9d367dbb-81c7-4faf-8c3e-f7fc8078476d', 'Auth:1'),
('9d367dbb-81fa-45d3-837b-275ce63eb4bf', 'Auth:1'),
('9d367dbb-8287-4ecf-a10d-7c8685ff2ed8', 'Auth:1'),
('9d367dbb-82e1-4557-96ae-8d1ab581921f', 'Auth:1'),
('9d367dbb-8720-46ce-b716-829f497600d0', 'Auth:1'),
('9d367dbc-3bb0-4b30-847c-2379596d1fbb', 'Auth:1'),
('9d367dbc-45da-4bc2-aefe-f8b55f31667d', 'Auth:1'),
('9d367dbc-46db-4735-ad5a-d0c37b1ff4d0', 'Auth:1'),
('9d367dbc-470a-4ca7-a5e1-fa7a22272406', 'Auth:1'),
('9d367dbc-49f8-4ff3-897a-0b4476ad7f47', 'Auth:1'),
('9d367dbc-4a2b-4600-b53b-0d9ab6ff181c', 'Auth:1'),
('9d367dbc-4c69-4e61-b698-fef4417d1644', 'Auth:1'),
('9d367dbc-4e63-4376-a591-009628f2f7cb', 'Auth:1'),
('9d367dbc-4f49-4805-8c2a-41db30760a7b', 'Auth:1'),
('9d367dbc-5060-4505-a724-73ee112cc197', 'Auth:1'),
('9d367dbc-50b1-4349-b12a-87df17b5fbbb', 'Auth:1'),
('9d367dbc-50e0-4251-9052-85bdb5dca2a8', 'Auth:1'),
('9d367dbc-5104-4c27-9903-7ac531db0e5d', 'Auth:1'),
('9d367dbc-5126-45cc-ab3f-5299fdfc1a51', 'Auth:1'),
('9d367dbc-5147-42ec-8e8b-40e4f865bb58', 'Auth:1'),
('9d367dbc-51e8-4b1b-bdfb-862f9647ab58', 'Auth:1'),
('9d367dbc-522b-4543-a997-adcf2441e357', 'Auth:1'),
('9d367dbc-5af3-458e-b02a-0fee5f2e3eaa', 'Auth:1'),
('9d367dbc-5b89-47ee-9083-38d3b4e97dae', 'Auth:1'),
('9d367dbc-5bd6-4844-9b90-930bca32fa8a', 'Auth:1'),
('9d367dbc-5c10-422b-bde0-b9f68d5421be', 'Auth:1'),
('9d367dbc-6328-4a97-8cfd-9beb426e1b48', 'Auth:1'),
('9d367dbc-6cf4-4f52-a7f0-4ef8768d70c4', 'Auth:1'),
('9d367dbc-a64c-410e-b9e6-521f62c35cb5', 'Auth:1'),
('9d367dbc-a6a5-4afa-81ab-37a4b11c7242', 'Auth:1'),
('9d367dbc-a6d6-4d88-ba74-748123e49ccc', 'Auth:1'),
('9d367dbc-a701-4198-9c19-fb0806a1706c', 'Auth:1'),
('9d367dbc-a72f-4b6d-bdd3-57001fd27229', 'Auth:1'),
('9d367dbc-a75b-49df-b91e-0d43de465f9c', 'Auth:1'),
('9d367dbc-a785-482f-8d0e-0efbe2d481d2', 'Auth:1'),
('9d367dbc-a8b1-4653-ace4-0f69aa5409cd', 'Auth:1'),
('9d367dc2-b599-4589-8d47-c6b2d27981cd', 'Auth:1'),
('9d367dc2-b8aa-4c42-8412-6756d26e11f2', 'Auth:1'),
('9d367dc2-b956-4032-a69e-1dc51ef871d0', 'Auth:1'),
('9d367dc2-b978-4e4f-a1d1-5c843f540bfd', 'Auth:1'),
('9d367dc2-ba24-40c2-830a-35a9d2110953', 'Auth:1'),
('9d367dc2-ba63-4c1d-b076-5bdfb66c5dbf', 'Auth:1'),
('9d367dc2-baff-42e3-9e1b-0d4f3dede025', 'Auth:1'),
('9d367dc2-bb23-421a-98c7-c216f079e1c4', 'Auth:1'),
('9d367dc2-bb8a-4657-a6b0-537c2a5cb4c4', 'Auth:1'),
('9d367dc2-bbd3-49e6-b28a-8aa5e668b888', 'Auth:1'),
('9d367dc2-bc14-46ae-b030-f611d266bb8e', 'Auth:1'),
('9d367dc2-bc9b-4dfb-b3e9-ce62b99e6667', 'Auth:1'),
('9d367dc2-bcbb-41c2-9e16-4729860c3b04', 'Auth:1'),
('9d367dc2-bd56-4897-b6e3-c235fa9d82eb', 'Auth:1'),
('9d367dc2-bd7e-4fba-8e0f-84fcb57dc275', 'Auth:1'),
('9d367dc2-c0fe-46d1-ae18-691abbb34b45', 'Auth:1'),
('9d367dc3-3ceb-46de-b8da-7315aa7d6e0b', 'Auth:1'),
('9d367dc3-3d8e-4edc-886f-310ac669c57b', 'Auth:1'),
('9d367dc3-3db7-4edd-849c-ff13c9e7ecfc', 'Auth:1'),
('9d367dc3-3e17-424f-9f06-ff9ef51ebfcd', 'Auth:1'),
('9d367dc3-3e3e-497e-ba25-75302b37449e', 'Auth:1'),
('9d367dc3-3ea5-4679-80d4-201be4f3f451', 'Auth:1'),
('9d367dc3-43fe-40e7-bd29-c6193e283aa9', 'Auth:1'),
('9d367dc3-443e-40cc-9247-1b8bad1c3e03', 'Auth:1'),
('9d367dc3-4468-4bef-83e3-e880c24ea663', 'Auth:1'),
('9d367dc3-4492-4308-91df-8c64de5577e9', 'Auth:1'),
('9d367dc3-44bb-4b77-82c7-6c2d56c05582', 'Auth:1'),
('9d367dc3-44df-4835-99c3-870576a3ea2b', 'Auth:1'),
('9d367dc3-4504-4b56-9068-08a1b245a81c', 'Auth:1'),
('9d367dc3-4528-4128-a642-3f6d824fa13a', 'Auth:1'),
('9d367dc3-454f-4eff-90a7-34f64d53e882', 'Auth:1'),
('9d367dc3-4570-4d9b-bfa5-2f3341a3a19a', 'Auth:1'),
('9d367dc3-4598-47b5-811f-565a18264751', 'Auth:1'),
('9d367dc3-45bc-47a3-9422-dd5e8ffb3eeb', 'Auth:1'),
('9d367dc3-45e3-4fb8-82e1-33c7cb3595a2', 'Auth:1'),
('9d367dc3-4609-4949-8c0a-7d7c4d41d7c1', 'Auth:1'),
('9d367dc3-4642-4098-91cf-b29f703b19b4', 'Auth:1'),
('9d367dc3-468a-4145-aade-60ed123c1f5e', 'Auth:1'),
('9d367dc3-46c8-485c-b396-57bbbd13a373', 'Auth:1'),
('9d367dc3-46f9-41e9-af94-74011d025b27', 'Auth:1'),
('9d367dc3-472f-434e-b878-02017520bdba', 'Auth:1'),
('9d367dc3-4762-4aef-ac33-45651ea23ec1', 'Auth:1'),
('9d367dc3-478e-4a47-b623-e7e02d5daf70', 'Auth:1'),
('9d367dc3-47b1-409b-bedc-5419d49710c3', 'Auth:1'),
('9d367dc3-47d7-46d3-b6ea-4a15daed49aa', 'Auth:1'),
('9d367dc3-47fd-4736-a82a-33431c04cbeb', 'Auth:1'),
('9d367dc3-4824-45f3-b979-232017e8947b', 'Auth:1'),
('9d367dc3-4846-42c1-949c-b0bc39d3260c', 'Auth:1'),
('9d367dc3-486b-4f0b-9da7-75f824239119', 'Auth:1'),
('9d367dc3-4890-4378-8880-94a5fedbe4ac', 'Auth:1'),
('9d367dc3-48b8-4380-beaf-82e5258e1151', 'Auth:1'),
('9d367dc3-48da-408b-bd19-3698d6f9a531', 'Auth:1'),
('9d367dc3-48fe-4685-b1ea-0f853ee44d56', 'Auth:1'),
('9d367dc3-4923-47e7-bf2e-e0a7aaba3eba', 'Auth:1'),
('9d367dc3-494c-4e5e-8fa6-4bed76649695', 'Auth:1'),
('9d367dc3-496e-450e-8648-2d12e542418d', 'Auth:1'),
('9d367dc3-4992-4b66-8845-8caf8768e860', 'Auth:1'),
('9d367dc3-49b8-4f43-a27d-2faa16033da8', 'Auth:1'),
('9d367dc3-49df-4c20-9599-d77cfffe85ae', 'Auth:1'),
('9d367dc3-4a00-4193-b167-ced9124813c9', 'Auth:1'),
('9d367dc3-4a25-426c-a178-5eb965ac26d7', 'Auth:1'),
('9d367dc3-4a4a-441f-9092-ab5d5cf1e092', 'Auth:1'),
('9d367dc3-4a7c-451a-b798-642a6770330e', 'Auth:1'),
('9d367dc3-4aa0-4a55-bdca-a5a4838edf8d', 'Auth:1'),
('9d367dc3-4ac7-4611-9d75-d6b2665694b0', 'Auth:1'),
('9d367dc3-4aee-42b0-a56e-d3b82342bcc5', 'Auth:1'),
('9d367dc3-4b18-4b7d-a646-97781be590ec', 'Auth:1'),
('9d367dc3-4b3a-4049-bc81-27a37d3d272f', 'Auth:1'),
('9d367dc3-4b63-4420-9abb-5214cbc7a58b', 'Auth:1'),
('9d367dc3-4b88-40b9-835e-581356b54dd7', 'Auth:1'),
('9d367dc3-4baf-403f-9dd7-d6e862b1ba39', 'Auth:1'),
('9d367dc3-4bd1-4e46-bae4-76ff130f8c40', 'Auth:1'),
('9d367dc3-4bfa-4ea5-ad9e-c0fab0fd2697', 'Auth:1'),
('9d367dc3-4c20-44ae-9cd7-9717e372baa1', 'Auth:1'),
('9d367dc3-4c4b-4ef4-b260-466e0fceeab2', 'Auth:1'),
('9d367dc3-4c73-4d43-af09-48d7acf5f8f4', 'Auth:1'),
('9d367dc3-4c98-459e-8753-dda81920bc96', 'Auth:1'),
('9d367dc3-4cbd-499d-95da-ac75c6ca72e3', 'Auth:1'),
('9d367dc3-4ce3-4a71-a20d-8ad53e67a2d6', 'Auth:1'),
('9d367dc3-4d05-41da-8082-7aedaa5b7e95', 'Auth:1'),
('9d367dc3-4d2a-4d5f-affe-284644b05485', 'Auth:1'),
('9d367dc3-4d4f-4483-97a0-aa01997fdc77', 'Auth:1'),
('9d367dc3-4d76-4820-b1a5-04bce9786911', 'Auth:1'),
('9d367dc3-4d97-4626-80a1-d116b024537f', 'Auth:1'),
('9d367dc3-4dbc-4ed5-97bf-61f81a4a5851', 'Auth:1'),
('9d367dc3-4de0-493b-986f-d9f1e576bf72', 'Auth:1'),
('9d367dc3-4e08-44a8-9620-d56c4d91129b', 'Auth:1'),
('9d367dc3-4e29-4335-b831-e4b381aec4ab', 'Auth:1'),
('9d367dc3-4e4d-4029-8663-8c9c4a0d880e', 'Auth:1'),
('9d367dc3-4e70-408b-a7b2-e230af8fffd6', 'Auth:1'),
('9d367dc3-4e97-4f78-bca7-572111d289bd', 'Auth:1'),
('9d367dc3-4eb9-4d03-bfba-53babc8b2543', 'Auth:1'),
('9d367dc3-4edd-420b-aa20-19496f68e6bd', 'Auth:1'),
('9d367dc3-4f01-47a1-9617-b1328ec73402', 'Auth:1'),
('9d367dc3-4f27-4124-8122-c565f4d8f068', 'Auth:1'),
('9d367dc3-4f48-4aa7-ba36-2b01ce994cc6', 'Auth:1'),
('9d367dc3-4f6c-40f9-b265-e11cb603903d', 'Auth:1'),
('9d367dc3-4f90-46b0-9da6-5a32c5dae78a', 'Auth:1'),
('9d367dc3-4fb3-4bab-9463-ce76108a14fb', 'Auth:1'),
('9d367dc3-5c76-4396-a591-afc7d00c5c78', 'Auth:1'),
('9d367dc3-5cbe-408e-ad31-e3c6c9cbf257', 'Auth:1'),
('9d367dc3-b091-48e8-ac14-2e1ce1e9981c', 'Auth:1'),
('9d367dc3-beb0-482c-81f0-8db14443dbf1', 'Auth:1'),
('9d367dc3-c4e2-4ee7-9f58-27d977910bc4', 'Auth:1'),
('9d367dc3-cc76-473d-b7d3-c94b9059d932', 'Auth:1'),
('9d367dc3-cd63-4a12-af1e-5cda96f563ee', 'Auth:1'),
('9d367dc3-cd99-4519-aa73-4c3cc440ade7', 'Auth:1'),
('9d367dc3-cdc0-4b07-a255-63e96faf2762', 'Auth:1'),
('9d367dc3-cde8-42bb-bbd0-a1b0235e3dc8', 'Auth:1'),
('9d367dc3-ce10-47a2-8747-945e82c19e82', 'Auth:1'),
('9d367dc3-ce3a-4e5a-99f0-e5bbeb04ba25', 'Auth:1'),
('9d367dc3-ce63-4e99-968e-53b054754b19', 'Auth:1'),
('9d367dc3-d100-4ef0-9fe4-94d84666a478', 'Auth:1'),
('9d367dca-22b7-4d71-b798-3b439ebbcb43', 'Auth:1'),
('9d367dca-255a-479e-88a2-e39c64e344f0', 'Auth:1'),
('9d367dca-26a7-4a87-b3f2-a272196afeca', 'Auth:1'),
('9d367dca-26cc-463e-b85f-81da527fcda4', 'Auth:1'),
('9d367dca-2762-4011-a12a-160834549bdb', 'Auth:1'),
('9d367dca-279e-471a-b3bf-1658494cd75a', 'Auth:1'),
('9d367dca-2812-42d7-9430-78571dbfac5c', 'Auth:1'),
('9d367dca-282e-4622-8f00-9e90be703dd2', 'Auth:1'),
('9d367dca-2b1b-4c4c-943a-4c3f7d6e9f6e', 'Auth:1'),
('9d367dca-715e-4162-9675-772df2393ccc', 'Auth:1'),
('9d367dca-71fa-4973-ac0c-2141c2324bfc', 'Auth:1'),
('9d367dca-722f-4c87-82a5-c5fe771321ac', 'Auth:1'),
('9d367dca-7256-480e-bb8d-6ac8aadbd8fe', 'Auth:1'),
('9d367dca-727c-4fc2-b853-29760acfdfa5', 'Auth:1'),
('9d367dca-72e8-4afb-bedc-92b0d7b5447d', 'Auth:1'),
('9d367dca-7310-45c0-997e-c00fc65df212', 'Auth:1'),
('9d367dca-7335-480a-9368-34ae2581bb50', 'Auth:1'),
('9d367dca-7357-495b-94d5-e391db516901', 'Auth:1'),
('9d367dca-7391-4e91-99c2-7f927c679974', 'Auth:1'),
('9d367dca-880b-46fa-aa3a-6a7535dd1979', 'Auth:1'),
('9d367dca-8d5f-498e-9807-91c30ce9bdf7', 'Auth:1'),
('9d367dca-937f-4307-a28c-bd1c6a5c7761', 'Auth:1'),
('9d367dca-9c56-4146-b6d5-5835e09a1873', 'Auth:1'),
('9d367dca-9d03-47f6-81b1-23144beb404b', 'Auth:1'),
('9d367dca-9d34-4442-835c-a1c202ae160d', 'Auth:1'),
('9d367dca-9d60-42e3-99af-1aa147524a06', 'Auth:1'),
('9d367dca-9d86-4ad1-8b50-225c963eabbe', 'Auth:1'),
('9d367dca-9dac-41bd-a1ba-7473856f72a6', 'Auth:1'),
('9d367dca-9dda-4680-a7fd-c3fe3970b6e9', 'Auth:1'),
('9d367dca-9e02-450c-9055-ccd132c2b229', 'Auth:1'),
('9d367dca-9eee-4274-8b3c-a3469089b6fe', 'Auth:1'),
('9d367dcc-17d3-4910-8e4f-9dc1701afbd1', 'Auth:1'),
('9d367dcc-1a52-4de1-ac84-a78eb2a2d916', 'Auth:1'),
('9d367dcc-1b22-4a7f-817e-c9a94d76fb4d', 'Auth:1'),
('9d367dcc-1b58-463d-8c3d-73afbceefe93', 'Auth:1'),
('9d367dcc-1bf4-4982-918d-65508e762f74', 'Auth:1'),
('9d367dcc-1c2b-4c89-b842-951a3f1fdc52', 'Auth:1'),
('9d367dcc-1ca8-4129-9ddc-02a4ff653c94', 'Auth:1'),
('9d367dcc-1cc5-4605-a343-a17175fd3256', 'Auth:1'),
('9d367dcc-1fa4-4eef-98ab-bf98b6d21dd4', 'Auth:1'),
('9d367dcc-5d6d-4aa4-8d3d-c4d5ca51d4b6', 'Auth:1'),
('9d367dcc-5dfc-4507-b00d-26d0d7e477a1', 'Auth:1'),
('9d367dcc-5e24-4641-9ca8-a296010dad30', 'Auth:1'),
('9d367dcc-5e89-4aef-92dc-11c0ba4550f8', 'Auth:1'),
('9d367dcc-5ebc-4a7c-9c14-e4e161fb71aa', 'Auth:1'),
('9d367dcc-5ee4-4f27-89fb-7d154ac23e69', 'Auth:1'),
('9d367dcc-5f08-4f34-ac3d-36fd5ac17c54', 'Auth:1'),
('9d367dcc-5f32-4103-9225-a7cd36084044', 'Auth:1'),
('9d367dcc-5f57-4d96-aeb4-eb0b31dd3aea', 'Auth:1'),
('9d367dcc-5f79-4f29-8e9d-22de9f172b3e', 'Auth:1'),
('9d367dcc-5fa2-456e-aca3-81ef662f5d91', 'Auth:1'),
('9d367dcc-5fc6-45a9-97c5-287118c98daf', 'Auth:1'),
('9d367dcc-5fe8-4ecb-abfe-5fede05977aa', 'Auth:1'),
('9d367dcc-6012-4695-a864-707f6dbab39a', 'Auth:1'),
('9d367dcc-6034-41c0-8153-0afadd16bd8e', 'Auth:1'),
('9d367dcc-6056-426f-89e9-81e6478f3e6a', 'Auth:1'),
('9d367dcc-6080-4ff4-8481-1dcbd7975d54', 'Auth:1'),
('9d367dcc-60a2-44d7-b4bf-a315a877ef56', 'Auth:1'),
('9d367dcc-60c4-4dee-b632-621a9d676959', 'Auth:1'),
('9d367dcc-60f3-4344-a55f-def786275129', 'Auth:1'),
('9d367dcc-6115-4a7e-b627-955787324e42', 'Auth:1'),
('9d367dcc-6138-4865-8f5a-3ffbc468def5', 'Auth:1'),
('9d367dcc-6161-4b8c-86cd-4a3bd8276405', 'Auth:1'),
('9d367dcc-6184-4195-8781-d3618bd0dca3', 'Auth:1'),
('9d367dcc-61a7-436e-94b1-caadb9fc8918', 'Auth:1'),
('9d367dcc-61cf-484a-84bc-9fcba25c7769', 'Auth:1'),
('9d367dcc-61f1-4799-856a-7a5d8ba951ea', 'Auth:1'),
('9d367dcc-6212-4954-b0cc-9a8cdd0228c9', 'Auth:1'),
('9d367dcc-623e-4fc4-9ffa-72bd9a8816c9', 'Auth:1'),
('9d367dcc-6261-4c0f-b10b-47b9d2e9376f', 'Auth:1'),
('9d367dcc-6283-4fcc-b340-a102c4c2c4bf', 'Auth:1'),
('9d367dcc-62af-44b8-818b-b4293e9d1c83', 'Auth:1'),
('9d367dcc-62d2-4438-b866-3349e190844c', 'Auth:1'),
('9d367dcc-62f6-4b44-b1a9-0a04bebe3a0b', 'Auth:1'),
('9d367dcc-631e-49f1-8b99-46d0d3e9c95a', 'Auth:1'),
('9d367dcc-6341-483c-9a4d-4ec77752082a', 'Auth:1'),
('9d367dcc-6362-442e-99e6-c595b722da3f', 'Auth:1'),
('9d367dcc-638a-41bd-b189-e68cf3b53d38', 'Auth:1'),
('9d367dcc-63ac-4ce3-b280-585b75dabdc7', 'Auth:1'),
('9d367dcc-63ce-42cd-bad2-1e15941000f3', 'Auth:1'),
('9d367dcc-63f5-4e93-bf76-db677551d8a7', 'Auth:1'),
('9d367dcc-6418-472c-9af8-803a25be52f5', 'Auth:1'),
('9d367dcc-643a-4b3c-83b2-51136e24d21a', 'Auth:1'),
('9d367dcc-646f-4727-bedf-b815326f21df', 'Auth:1'),
('9d367dcc-64a3-4a9c-801d-d9295eed4ba2', 'Auth:1'),
('9d367dcc-64d3-4b85-9a02-a164535df12e', 'Auth:1'),
('9d367dcc-6501-41c6-a5cd-3078f33c2abd', 'Auth:1'),
('9d367dcc-6527-4fc3-bd4b-79aa0ced1b3e', 'Auth:1'),
('9d367dcc-654a-42b4-b419-8a83a7f0d5e4', 'Auth:1'),
('9d367dcc-6574-4743-a3dc-040f44bb3070', 'Auth:1'),
('9d367dcc-6597-4465-814e-d6aef0e47149', 'Auth:1'),
('9d367dcc-65ba-4248-9a50-c34c05998a05', 'Auth:1'),
('9d367dcc-65e7-4782-8222-98f614d27cfd', 'Auth:1'),
('9d367dcc-660a-4eae-b641-8a380124bd62', 'Auth:1'),
('9d367dcc-662f-4266-b1f9-304f7a968996', 'Auth:1'),
('9d367dcc-665a-49bc-ac69-acb754f78181', 'Auth:1'),
('9d367dcc-667d-4a4e-8040-7be3e0edcfe0', 'Auth:1'),
('9d367dcc-669f-431c-afe2-05bee81d9a50', 'Auth:1'),
('9d367dcc-66c8-4e3e-a989-af56598d86b6', 'Auth:1'),
('9d367dcc-66ea-4594-8fd5-9d1122fe446a', 'Auth:1'),
('9d367dcc-670b-48d4-a26e-d5d565c7dc8a', 'Auth:1'),
('9d367dcc-6734-45d5-abdf-bd1146116645', 'Auth:1'),
('9d367dcc-6756-4344-b296-ea26bfbcd5c0', 'Auth:1'),
('9d367dcc-6778-4239-965d-cfca73a9bb60', 'Auth:1'),
('9d367dcc-67a0-4214-8d02-a05c4422eee6', 'Auth:1'),
('9d367dcc-67c2-4149-a4f3-76464b31ad15', 'Auth:1'),
('9d367dcc-67e7-4e2a-abbc-8afccadb81c1', 'Auth:1'),
('9d367dcc-680f-4ba6-8a62-fd79c18f696e', 'Auth:1'),
('9d367dcc-6831-4462-9c86-ef8760efb9cf', 'Auth:1'),
('9d367dcc-6853-4687-ad34-67110996b7c2', 'Auth:1'),
('9d367dcc-687b-4bc0-8d94-df3e049fbb2d', 'Auth:1'),
('9d367dcc-689e-4f9d-9eb3-187511e620a5', 'Auth:1'),
('9d367dcc-68c0-465c-9648-970968d0d9c7', 'Auth:1'),
('9d367dcc-68e8-449a-b52e-fac696680816', 'Auth:1'),
('9d367dcc-690b-4255-a3cf-afffc87f5bc0', 'Auth:1'),
('9d367dcc-692c-45c9-b185-c296cf681f1f', 'Auth:1'),
('9d367dcc-6955-4316-a26a-77c3a082494a', 'Auth:1'),
('9d367dcc-6978-4c12-8307-ae1a18d48ac1', 'Auth:1'),
('9d367dcc-699a-4b38-b6be-ef605c310925', 'Auth:1'),
('9d367dcc-69ba-4fb8-9815-ac2d96df6b9e', 'Auth:1'),
('9d367dcc-69f4-41df-aa81-a6ab39f8824c', 'Auth:1'),
('9d367dcc-7aab-4ae8-b92f-0e5443c810d4', 'Auth:1'),
('9d367dcc-7f96-4e74-9c1d-15602185f072', 'Auth:1'),
('9d367dcc-8431-4f44-8a63-4a7c36bb915b', 'Auth:1'),
('9d367dcc-8a3b-41e5-96d3-a061aa915199', 'Auth:1'),
('9d367dcc-9233-4cc6-848e-ec776a18b26f', 'Auth:1'),
('9d367dcc-92f5-4daa-9995-3224fa6e2335', 'Auth:1'),
('9d367dcc-9325-4cc4-949a-f774fc8d9ebb', 'Auth:1'),
('9d367dcc-934a-4b53-a531-1f43d5caa240', 'Auth:1'),
('9d367dcc-9370-4248-a865-efa59e023962', 'Auth:1'),
('9d367dcc-9395-489b-b1d0-a85d508dfdfa', 'Auth:1'),
('9d367dcc-93bb-47e4-bca9-791344a65370', 'Auth:1'),
('9d367dcc-93e1-4209-97a6-0ac4c18843ae', 'Auth:1'),
('9d367dcc-9589-4587-a781-4986a2e46297', 'Auth:1'),
('9d367dde-d68a-446f-a25a-78738bbeb28e', 'Auth:1'),
('9d367dde-d9ba-47e9-a612-e8a8e5e6c7db', 'Auth:1'),
('9d367dde-da57-49a0-b343-3f8b2fec2083', 'Auth:1'),
('9d367dde-da79-47f8-aea5-775ab375ed04', 'Auth:1'),
('9d367dde-db1a-4c2d-af59-1e984494c912', 'Auth:1'),
('9d367dde-db5a-42e3-9c63-49d744fa389d', 'Auth:1'),
('9d367dde-dbac-4c85-a276-c12f0a7146ad', 'Auth:1'),
('9d367dde-dc58-4514-b927-da78c93f278e', 'Auth:1'),
('9d367dde-e013-4a55-b8ee-7b05fea8c644', 'Auth:1'),
('9d367ddf-22d3-4c13-976e-682f39b9cb24', 'Auth:1'),
('9d367ddf-2380-4068-97f9-4983ebf20ace', 'Auth:1'),
('9d367ddf-240a-427c-9891-0e2157e304bf', 'Auth:1'),
('9d367ddf-2475-4236-9643-65e0374ecc96', 'Auth:1'),
('9d367ddf-249d-4add-88ea-95b58ed90410', 'Auth:1'),
('9d367ddf-24cc-4904-b0ce-5feba66f5d52', 'Auth:1'),
('9d367ddf-255e-4c23-be8c-f00d21b1f1b7', 'Auth:1'),
('9d367ddf-259b-4865-afe8-dfdb8bd0fa7b', 'Auth:1'),
('9d367ddf-5259-4520-9ec1-6ca4a367f3dd', 'Auth:1'),
('9d367ddf-5891-40c0-a297-df5fd1fc1882', 'Auth:1'),
('9d367ddf-69b8-4b20-add4-8b3173f7707f', 'Auth:1'),
('9d367ddf-728b-4ce8-9345-59b7ef88b108', 'Auth:1'),
('9d367ddf-736a-42ba-8ef2-fd2cbfe3f75a', 'Auth:1'),
('9d367ddf-739e-4300-898f-adedc5540200', 'Auth:1'),
('9d367ddf-73c7-4a97-987f-8a8ef8828fd5', 'Auth:1'),
('9d367ddf-73ef-4e3d-89f6-c7fed91b926d', 'Auth:1'),
('9d367ddf-7416-4315-b03d-44cd99b661bb', 'Auth:1'),
('9d367ddf-743d-4c11-813a-2a294dc5b07c', 'Auth:1'),
('9d367ddf-7467-4c4d-bf47-0c4107c88ebf', 'Auth:1'),
('9d367ddf-759d-49a1-9b38-bc7c8544ffb1', 'Auth:1'),
('9d367df3-64dd-4a56-8d95-4da0ad617a45', 'Auth:1'),
('9d367df3-68b8-484d-a018-61d2a09d75b2', 'Auth:1'),
('9d367df3-69a5-48bb-8388-20225e1d1543', 'Auth:1'),
('9d367df3-69d2-417d-bc79-a8bd1d6594bf', 'Auth:1'),
('9d367df3-6aa5-4c92-a362-9cce54fcf5af', 'Auth:1'),
('9d367df3-7002-4986-b159-4c99c2b04ff3', 'Auth:1'),
('9d367df3-dbf6-4d04-88c6-a4942c2d5a0b', 'Auth:1'),
('9d367df3-dd77-4029-a613-7da6532270bc', 'Auth:1'),
('9d367df3-de70-47f6-ae0b-e253b608d515', 'Auth:1'),
('9d367df3-debc-45cf-91d5-212bbc6ad50c', 'Auth:1'),
('9d367df3-deee-443b-ac88-ec95460b7fa5', 'Auth:1'),
('9d367df3-df23-4238-a1fa-ca358152a98a', 'Auth:1'),
('9d367df3-df60-4aec-9ca2-1ad1d3743c82', 'Auth:1'),
('9d367df3-df8d-4da3-a77f-4320757b408e', 'Auth:1'),
('9d367df3-dfbf-4198-8966-951b154f09a0', 'Auth:1'),
('9d367df3-e118-4965-b7ef-e56bd0e3346f', 'Auth:1'),
('9d367df6-9522-4d3b-95f8-52338a42b901', 'Auth:1'),
('9d367df6-97fa-4775-9dfe-9fb1c6e323bb', 'Auth:1'),
('9d367df6-98c0-4412-9884-34a05256e566', 'Auth:1'),
('9d367df6-98fa-422e-b3aa-09cbc4cf8655', 'Auth:1'),
('9d367df6-998b-45bf-b450-0c2cfa19a1a7', 'Auth:1'),
('9d367df6-99be-4622-b047-c928ce5ae59e', 'Auth:1'),
('9d367df6-9a47-46a1-b0ef-63e8a6a1b841', 'Auth:1'),
('9d367df6-9a7d-489f-8638-3fa3037a40b1', 'Auth:1'),
('9d367df6-9db9-47f0-b139-e96ae50290ee', 'Auth:1'),
('9d367df6-9ec6-4694-b271-2becbd938321', 'Auth:1'),
('9d367df6-9f8d-4212-a3bf-6144d3b71696', 'Auth:1'),
('9d367df6-9fcf-481a-9ef5-cc37d399ef38', 'Auth:1'),
('9d367df6-a070-4af9-afd6-5cd403fe1ea7', 'Auth:1'),
('9d367df6-a0b0-4989-8ba7-641020a0d8cd', 'Auth:1'),
('9d367df6-a0da-498e-bae1-687fe7c09a09', 'Auth:1'),
('9d367df6-a100-406f-905f-673cd53e7e3a', 'Auth:1'),
('9d367df6-a12f-45e4-bd16-cbf53d9464ff', 'Auth:1'),
('9d367df6-a154-4717-a497-14aa3c2c52d9', 'Auth:1'),
('9d367df6-a178-41b6-a332-398a37602258', 'Auth:1'),
('9d367df6-a1aa-4916-bce7-f0503a9f43ed', 'Auth:1'),
('9d367df6-a1cf-4b8d-8398-8e4dacb774ab', 'Auth:1'),
('9d367df6-a1f3-4d56-a8c5-2b87c2ac27aa', 'Auth:1'),
('9d367df6-a21f-4fcf-b53e-f044cd037fad', 'Auth:1'),
('9d367df6-a242-4e69-a253-fc99aa96170e', 'Auth:1'),
('9d367df6-a270-45e5-b74a-01db1a489b68', 'Auth:1'),
('9d367df6-a2ac-4a43-803f-a1de39216b15', 'Auth:1'),
('9d367df6-a2dc-4bfe-82a1-9b8184d4f711', 'Auth:1'),
('9d367df6-a310-4dd4-97b1-d7483a76f45f', 'Auth:1'),
('9d367df6-a34d-455d-a865-38490da35db8', 'Auth:1'),
('9d367df6-a381-4f03-8e95-dec42318eff5', 'Auth:1'),
('9d367df6-a3b7-468e-9fae-396225fe7276', 'Auth:1'),
('9d367df6-a3f8-47bf-87d2-e04b42354292', 'Auth:1'),
('9d367df6-a430-4059-ab12-ba62c5988242', 'Auth:1'),
('9d367df6-a469-4323-b599-8a17ffe7b522', 'Auth:1'),
('9d367df6-a4ab-4ec6-9edd-aae5995c036e', 'Auth:1'),
('9d367df6-a4e3-43cc-bd38-c65c1ac05eb0', 'Auth:1'),
('9d367df6-a515-4e86-9acb-c0d3ea180d1f', 'Auth:1'),
('9d367df6-a550-447f-bbd5-76848754e6c1', 'Auth:1'),
('9d367df6-a57b-44a8-b259-2a29d0cbe14b', 'Auth:1'),
('9d367df6-a5a1-4c57-b96f-6362876bb7b3', 'Auth:1'),
('9d367df6-a5dc-4958-a1fa-10a6f90005a6', 'Auth:1'),
('9d367df6-a60c-4761-a550-d705922a250c', 'Auth:1'),
('9d367df6-a63c-4da8-92a5-43e33357e91b', 'Auth:1'),
('9d367df6-a679-4a6d-9e5b-75b16bdefd85', 'Auth:1'),
('9d367df6-a6b0-48be-92cf-f143ce47f7c0', 'Auth:1'),
('9d367df6-a6e7-4778-8975-7fb7285272f5', 'Auth:1'),
('9d367df6-a727-40e8-af08-a9a1c7ae121f', 'Auth:1'),
('9d367df6-a75d-4e5d-818f-3af93e119737', 'Auth:1'),
('9d367df6-a791-4185-9923-e1a48e7eb690', 'Auth:1'),
('9d367df6-a7cf-4df7-b696-b76d299f43af', 'Auth:1'),
('9d367df6-a806-4c24-88ae-452ee1b79f8d', 'Auth:1'),
('9d367df6-a83e-4e8b-ad38-3a0880f3a4b0', 'Auth:1'),
('9d367df6-a884-4e57-931c-08677af08670', 'Auth:1'),
('9d367df6-a8bb-44d0-83fe-d94563e04bd2', 'Auth:1'),
('9d367df6-a8f2-493e-be2b-21680fc2b2b5', 'Auth:1'),
('9d367df6-a933-4eb9-9d0e-3621b0986c05', 'Auth:1'),
('9d367df6-a96a-4b1f-b357-7dc007e4cb89', 'Auth:1'),
('9d367df6-a9a0-476f-bccd-3a28ff450fb6', 'Auth:1'),
('9d367df6-a9e0-422a-9eb3-f31d01a8305c', 'Auth:1'),
('9d367df6-aa13-4714-9ca3-a3c49cde6319', 'Auth:1'),
('9d367df6-aa47-4189-b9a6-3368f7ffa10b', 'Auth:1'),
('9d367df6-aa8e-4a0e-ac5f-e9b9636e78da', 'Auth:1'),
('9d367df6-aab8-43ac-a3b2-a7ee3ab4d884', 'Auth:1'),
('9d367df6-aae1-4f48-9c95-44b9d0468612', 'Auth:1'),
('9d367df6-ab16-4ebc-9fff-d2e5d558bd20', 'Auth:1'),
('9d367df6-ab48-43c0-8662-d27fe1b19491', 'Auth:1'),
('9d367df6-ab6d-4bd2-a425-2f25b11ef7a6', 'Auth:1'),
('9d367df6-abb4-4983-997d-b8e3a33f14d7', 'Auth:1'),
('9d367df6-abde-4729-ba84-af505b51a1ca', 'Auth:1'),
('9d367df6-ac04-4b1f-ade5-366db5152453', 'Auth:1'),
('9d367df6-ac33-4777-b99a-7ceff0cb2925', 'Auth:1'),
('9d367df6-ac58-4739-99e3-f2a18a70f5d6', 'Auth:1'),
('9d367df6-ac7c-45cb-9dd4-d16bdf3d4012', 'Auth:1'),
('9d367df6-aca7-4696-b76c-367111dd4e78', 'Auth:1'),
('9d367df6-acca-47e1-8c5f-77f1a4ba7658', 'Auth:1'),
('9d367df6-aced-45ac-94a4-c0a525337f6f', 'Auth:1'),
('9d367df6-ad16-4bfa-8eea-6b8d66ac25e8', 'Auth:1'),
('9d367df6-ad39-4c5d-bcdc-386e33ce5eca', 'Auth:1'),
('9d367df6-ad5b-4bef-b268-af31d6e37564', 'Auth:1'),
('9d367df6-ad84-4a00-891a-deff3ef09457', 'Auth:1'),
('9d367df6-ada6-4701-b8e3-c8fce0f0b8c0', 'Auth:1'),
('9d367df6-adca-40bd-be12-d72e155064a8', 'Auth:1'),
('9d367df6-adf5-40f2-9a3b-661d67a7118e', 'Auth:1'),
('9d367df6-ae18-4dc0-9df1-265fa3a52280', 'Auth:1'),
('9d367df6-ae3c-4bbf-8a95-57bc13c93cc1', 'Auth:1'),
('9d367df6-ae69-4627-9369-c2e364d7d963', 'Auth:1'),
('9d367df6-ae8d-4ebd-99e4-2d454595d77b', 'Auth:1'),
('9d367df6-aeaf-4d8e-b697-a358f556d725', 'Auth:1'),
('9d367df6-aed0-4c9f-8c83-a7f7ca309b0f', 'Auth:1'),
('9d367df6-af13-4a2f-a2ed-686bb68be2d0', 'Auth:1'),
('9d367df6-af68-48cc-a41c-979f4fb3e43b', 'Auth:1'),
('9d367df6-afaa-4c80-a928-8abf44e60f39', 'Auth:1'),
('9d367df6-afe3-46f6-a1d3-218f90f6dab3', 'Auth:1'),
('9d367df6-b027-4e00-a427-7d0413b7d3d2', 'Auth:1'),
('9d367df6-b07d-4b67-a76e-b997abfc59c5', 'Auth:1'),
('9d367df6-b128-4139-9b68-cd57f30a3825', 'Auth:1'),
('9d367df6-b15a-4a09-ba5a-8a96c37a5e04', 'Auth:1'),
('9d367df6-b180-486d-8eb5-59ee74a1092e', 'Auth:1'),
('9d367df6-b1ad-408a-954b-302e0aaa2952', 'Auth:1'),
('9d367df6-b1d4-4207-8752-c286b0aca778', 'Auth:1'),
('9d367df6-b1fc-4edb-b931-dbdd8886f54d', 'Auth:1'),
('9d367df6-b224-40a6-94a9-6a611637da14', 'Auth:1'),
('9d367df6-b443-4bc1-8233-5f5fb2ec456b', 'Auth:1'),
('9d367dff-d84f-4b8b-96ec-08212fc328cf', 'Auth:1'),
('9d367dff-db30-44e6-9db1-c73ba6e22ac6', 'Auth:1'),
('9d367dff-dbf6-4eda-930c-2d020a30f428', 'Auth:1'),
('9d367dff-dc1c-49de-ac02-41b8ff72cfa3', 'Auth:1'),
('9d367dff-dcb4-4c2a-972a-f29a62acef49', 'Auth:1'),
('9d367dff-dcf5-4d06-8187-3455aae0c6a0', 'Auth:1'),
('9d367dff-dd8b-46b6-8612-b17dff7c09fa', 'Auth:1'),
('9d367dff-ddb1-454e-958a-37fad9b3f462', 'Auth:1'),
('9d367dff-e0d5-4dda-95ce-acd6defc7ecd', 'Auth:1'),
('9d367dff-e1cd-40eb-9c40-a6c44c2a5a1d', 'Auth:1'),
('9d367dff-e252-45ed-b2d7-09119bfd8e53', 'Auth:1'),
('9d367dff-e288-4849-977d-08b4e8bf00f0', 'Auth:1'),
('9d367dff-e2ad-4f5f-abd8-abb2a4aee00c', 'Auth:1'),
('9d367dff-e2d1-47f9-aeb0-52bf0fb17742', 'Auth:1'),
('9d367dff-e33a-452e-806e-c14a2c07bcc9', 'Auth:1'),
('9d367dff-e35f-49b8-b50f-a50e0ab28220', 'Auth:1'),
('9d367dff-e383-47f6-a7b7-3afcf944ad23', 'Auth:1'),
('9d367dff-e3a2-49d4-bd07-752900225ead', 'Auth:1'),
('9d367dff-e3d0-4c52-a70a-c0cfbd621264', 'Auth:1'),
('9d367dff-e418-4243-8781-b69f7f273f85', 'Auth:1'),
('9d367dff-e457-4cbc-a914-f1a9759dc374', 'Auth:1'),
('9d367dff-e49e-4e06-a918-65c7de1681a6', 'Auth:1'),
('9d367dff-e4ec-41cf-b0ff-c515a4c10e88', 'Auth:1'),
('9d367dff-e56d-4dda-bec9-339221c343e2', 'Auth:1'),
('9d367dff-e59a-438c-9326-ab6e8301aa7e', 'Auth:1'),
('9d367dff-e5c0-4dd6-acd0-711b3d72ab73', 'Auth:1'),
('9d367dff-e5e8-44a3-b391-59bf4021b743', 'Auth:1'),
('9d367dff-e610-40a0-b3a2-e57503c89e63', 'Auth:1'),
('9d367dff-e637-4097-84b1-3c0db16adff8', 'Auth:1'),
('9d367dff-e65f-4c11-af75-3d4d42b67ff8', 'Auth:1'),
('9d367dff-e737-46ed-a705-ad56de946e34', 'Auth:1'),
('9d367e02-e4c4-46db-a45d-e0d9cd3be055', 'Auth:1'),
('9d367e02-e735-4734-8d62-c01259c74dc0', 'Auth:1'),
('9d367e02-e7d0-4ded-a22b-f22f67821048', 'Auth:1'),
('9d367e02-e7f3-4e3c-9cbf-5cb302d32b4c', 'Auth:1'),
('9d367e02-e874-4c4c-9ba2-a29b0e551e0c', 'Auth:1'),
('9d367e02-e8a4-4367-9ad3-b5dfeb40cbea', 'Auth:1'),
('9d367e02-e90c-4e0f-991d-2109f4f8770c', 'Auth:1'),
('9d367e02-e927-4a9c-b6a4-784e1dd9bb33', 'Auth:1'),
('9d367e02-e982-45b6-872f-382c8fdb57f7', 'Auth:1'),
('9d367e02-e9c2-421c-9e9b-eb002c6c05d0', 'Auth:1'),
('9d367e02-e9fc-4801-b3e2-43106c8cbfff', 'Auth:1'),
('9d367e02-ea5d-4ba2-872d-f3f4e999aedb', 'Auth:1'),
('9d367e02-ea77-4662-bf34-8e9f41ffb474', 'Auth:1'),
('9d367e02-eaf4-42b1-86cb-96a585dae20a', 'Auth:1'),
('9d367e02-eb0e-47c5-8125-7d5713c2f743', 'Auth:1'),
('9d367e02-ee2c-4e26-8878-1b6fa6d938a5', 'Auth:1'),
('9d367e02-ef19-4e74-9b8a-934e9873f1f1', 'Auth:1'),
('9d367e02-efa5-4ec6-93b7-5c42714738b7', 'Auth:1'),
('9d367e02-efd7-4147-9f73-673f71293e5b', 'Auth:1'),
('9d367e02-f035-4090-a05b-0eb1d724107b', 'Auth:1'),
('9d367e02-f05c-45d6-a79f-a38df66afd9e', 'Auth:1'),
('9d367e02-f0c1-46db-b310-f8e76aa7d62f', 'Auth:1'),
('9d367e02-f111-4426-aa1b-bd62b76f86d6', 'Auth:1'),
('9d367e02-f140-4bce-8195-ccd081e246fc', 'Auth:1'),
('9d367e02-f16f-43cc-a921-2368fe1aafa8', 'Auth:1'),
('9d367e02-f19d-430b-a85e-35c82532e688', 'Auth:1'),
('9d367e02-f1c6-41ce-9707-69f38e2b4f06', 'Auth:1'),
('9d367e02-f1e8-4e3e-b700-2b8697eab5dd', 'Auth:1'),
('9d367e02-f20c-47f4-9487-7ae821b0b4ea', 'Auth:1'),
('9d367e02-f230-443b-a555-0518b5743018', 'Auth:1'),
('9d367e02-f257-4896-b1bc-045e24a70f50', 'Auth:1'),
('9d367e02-f278-4b3c-8af3-c20264cf3e58', 'Auth:1'),
('9d367e02-f29c-4700-a112-44e326269310', 'Auth:1'),
('9d367e02-f2c0-48cc-a806-e659a1fbbfc4', 'Auth:1'),
('9d367e02-f2e5-4eac-870d-bad13b598e34', 'Auth:1'),
('9d367e02-f307-4396-ac60-09e5dd1c4386', 'Auth:1'),
('9d367e02-f32b-40e2-9a6c-de1073b9f51e', 'Auth:1'),
('9d367e02-f34e-4806-8c36-ecf6f4249f2a', 'Auth:1'),
('9d367e02-f374-436c-b85a-3b5bf3c12c64', 'Auth:1'),
('9d367e02-f394-4411-8f84-a27c7ab54545', 'Auth:1'),
('9d367e02-f3b8-4353-8a92-b35a4f4f84a8', 'Auth:1'),
('9d367e02-f3db-4d86-adde-dcfd34714e2c', 'Auth:1'),
('9d367e02-f401-4db4-ab92-2a6e10426f3a', 'Auth:1'),
('9d367e02-f422-4380-9fbc-a426b15367ea', 'Auth:1'),
('9d367e02-f445-406e-ae28-5594650ed326', 'Auth:1'),
('9d367e02-f46a-4193-a8ad-a71b03476dfc', 'Auth:1'),
('9d367e02-f490-4c9c-bfcf-47017f7d97e3', 'Auth:1'),
('9d367e02-f4b0-4f22-b8b0-3f23fd1a40e3', 'Auth:1'),
('9d367e02-f4d6-456a-9427-a9131fa7a8a9', 'Auth:1'),
('9d367e02-f4f9-4e99-99fa-46efa7855c43', 'Auth:1'),
('9d367e02-f51e-429a-acbe-6e1c3dfb14b3', 'Auth:1'),
('9d367e02-f53f-40a3-a164-4dd94595b98d', 'Auth:1'),
('9d367e02-f562-437d-93e0-87cc6737b60d', 'Auth:1'),
('9d367e02-f587-4cee-a5fc-e2d1a89f2428', 'Auth:1'),
('9d367e02-f5ac-475b-8880-151f41b1d1d4', 'Auth:1'),
('9d367e02-f5cd-4c2f-b350-ec2042c599a0', 'Auth:1'),
('9d367e02-f5f6-4fdb-a5c0-c57349f57ae3', 'Auth:1'),
('9d367e02-f61b-4ad7-beb3-39bf33aa376d', 'Auth:1'),
('9d367e02-f642-44d7-b11d-f9e66b8c5d92', 'Auth:1'),
('9d367e02-f663-4717-9b59-204e764a1d41', 'Auth:1'),
('9d367e02-f687-4ad4-bce0-35dc713a921a', 'Auth:1'),
('9d367e02-f6aa-47d9-9eca-6675630670a9', 'Auth:1'),
('9d367e02-f6d0-4cfb-bc5a-8b4a25a7d396', 'Auth:1'),
('9d367e02-f6f0-4c87-a210-399a9b2c705d', 'Auth:1'),
('9d367e02-f716-4925-b468-31c618366f35', 'Auth:1'),
('9d367e02-f739-48f0-b82a-22bd8bfc6cde', 'Auth:1'),
('9d367e02-f761-4c95-b82d-fb2591febbc9', 'Auth:1'),
('9d367e02-f783-4096-9488-f6f843066d42', 'Auth:1'),
('9d367e02-f7a7-45ff-8c05-1cbb7f042b73', 'Auth:1'),
('9d367e02-f7ca-4452-bdf5-61ee6e36b2de', 'Auth:1'),
('9d367e02-f7f2-4f2a-89a3-7d20a4b936ee', 'Auth:1'),
('9d367e02-f812-43f2-879e-7b205d1e331d', 'Auth:1'),
('9d367e02-f836-4d22-9dfb-500d58c7ce76', 'Auth:1'),
('9d367e02-f85a-4499-afcd-4a0a246e77c5', 'Auth:1'),
('9d367e02-f880-49f6-9d8c-b288cef2aaf6', 'Auth:1'),
('9d367e02-f8a1-461d-b9be-57075548b06f', 'Auth:1'),
('9d367e02-f8c4-418c-8903-f8d0d0232ce7', 'Auth:1'),
('9d367e02-f8e7-48ca-8b42-a4aed0450360', 'Auth:1'),
('9d367e02-f90e-4bec-b7ac-59a08c5f0b7d', 'Auth:1'),
('9d367e02-f92f-4d16-9b09-b965d316a3d7', 'Auth:1'),
('9d367e02-f953-43b7-842a-2aefc24bb604', 'Auth:1'),
('9d367e02-f976-4e4d-b5ba-e757733c0a2e', 'Auth:1'),
('9d367e02-f99c-4177-99e0-e3baaba97f1c', 'Auth:1'),
('9d367e02-f9bc-4862-99a1-aeaf6a190af7', 'Auth:1'),
('9d367e02-f9e0-4085-b152-1564ee5f9bec', 'Auth:1'),
('9d367e02-fa03-4c95-a752-02cdacad5bb7', 'Auth:1'),
('9d367e02-fa29-47fc-8154-5b9d4ddfd115', 'Auth:1'),
('9d367e02-fa49-4cc3-bf7d-5b58f3060260', 'Auth:1'),
('9d367e02-fa6d-4042-a011-41902d767796', 'Auth:1'),
('9d367e02-fa90-4fbe-9985-8f89209bfaed', 'Auth:1'),
('9d367e02-fab6-4e63-9694-581a95812b7d', 'Auth:1'),
('9d367e02-fad7-4067-9799-d0b6c7897ba0', 'Auth:1'),
('9d367e02-fafd-4a7e-bb07-64693ef9d0aa', 'Auth:1'),
('9d367e02-fb20-4bbe-a4b1-b30f7d5e7100', 'Auth:1'),
('9d367e02-fb48-4dd8-9e79-ed9282b1b029', 'Auth:1'),
('9d367e02-fb6a-43e4-8325-981cf801babf', 'Auth:1'),
('9d367e02-fb8d-46ef-bc23-814abb890450', 'Auth:1'),
('9d367e02-fbb0-426c-a4e6-ca68dc3efe36', 'Auth:1'),
('9d367e02-fbd5-4760-9702-fb69878ed52f', 'Auth:1'),
('9d367e02-fc0c-40b3-9d04-52f5ea3bdab8', 'Auth:1'),
('9d367e02-fc5d-43b6-9e73-21802f2dba14', 'Auth:1'),
('9d367e02-fd3e-47b6-bdd4-b9e1d9758612', 'Auth:1'),
('9d367e02-fd91-4b48-94a5-1186928dc7fc', 'Auth:1'),
('9d367e02-fdcb-449c-baf7-dce2a3da2b31', 'Auth:1'),
('9d367e02-fe05-4620-a12f-cca390561ee2', 'Auth:1'),
('9d367e02-fe85-4b73-8892-c5a49d8e59c7', 'Auth:1'),
('9d367e02-feb2-47df-87ae-c5afa2964a91', 'Auth:1'),
('9d367e02-fed6-43a6-9c0e-1b495ac8c33d', 'Auth:1'),
('9d367e02-fefc-4efe-ba92-1dccb52a3cc4', 'Auth:1'),
('9d367e02-ff21-4e12-b71f-c7dc8f00b90d', 'Auth:1'),
('9d367e02-ff47-4f03-88fd-064ef1e0a4eb', 'Auth:1'),
('9d367e02-ff6d-4c68-89d9-787598e00634', 'Auth:1'),
('9d367e03-01f0-4a2e-b8e4-e6132b169dcc', 'Auth:1'),
('9d367d94-2667-40db-be48-f4f5be47e9e8', 'Spatie\\Permission\\Models\\Permission'),
('9d367dbc-470a-4ca7-a5e1-fa7a22272406', 'Spatie\\Permission\\Models\\Permission'),
('9d367d94-20ef-4481-8b9b-5ff1205eeb7c', 'Spatie\\Permission\\Models\\Role'),
('9d367dbc-4a2b-4600-b53b-0d9ab6ff181c', 'Spatie\\Permission\\Models\\Role'),
('9d367dc2-b978-4e4f-a1d1-5c843f540bfd', 'Spatie\\Permission\\Models\\Role'),
('9d367dca-26cc-463e-b85f-81da527fcda4', 'Spatie\\Permission\\Models\\Role'),
('9d367dcc-1b58-463d-8c3d-73afbceefe93', 'Spatie\\Permission\\Models\\Role'),
('9d367dde-da79-47f8-aea5-775ab375ed04', 'Spatie\\Permission\\Models\\Role'),
('9d367df3-69d2-417d-bc79-a8bd1d6594bf', 'Spatie\\Permission\\Models\\Role'),
('9d367df6-98fa-422e-b3aa-09cbc4cf8655', 'Spatie\\Permission\\Models\\Role'),
('9d367dff-dc1c-49de-ac02-41b8ff72cfa3', 'Spatie\\Permission\\Models\\Role'),
('9d367e02-e7f3-4e3c-9cbf-5cb302d32b4c', 'Spatie\\Permission\\Models\\Role');

-- --------------------------------------------------------

--
-- Struktur dari tabel `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@mail.com', NULL, '$2y$10$h12c5K7uoCc45beKmgJozuLlt1O8612jrAi6zNixkeMLstfQhd3tq', NULL, '2024-10-10 16:20:06', '2024-10-10 16:20:06'),
(2, 'Staff TU (Tata Usaha)', 'stafftu@mail.com', NULL, '$2y$10$1VnupBuAfmimqoAopuuIkeMVqPYRpW0nY/NDblmRzCLJnie/zifGK', NULL, '2024-10-10 16:20:06', '2024-10-10 16:20:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `commodities`
--
ALTER TABLE `commodities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `commodities_item_code_unique` (`item_code`),
  ADD KEY `commodities_school_operational_assistance_id_foreign` (`school_operational_assistance_id`),
  ADD KEY `commodities_commodity_location_id_foreign` (`commodity_location_id`);

--
-- Indeks untuk tabel `commodity_locations`
--
ALTER TABLE `commodity_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `school_operational_assistances`
--
ALTER TABLE `school_operational_assistances`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indeks untuk tabel `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD PRIMARY KEY (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indeks untuk tabel `telescope_monitoring`
--
ALTER TABLE `telescope_monitoring`
  ADD PRIMARY KEY (`tag`);

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
-- AUTO_INCREMENT untuk tabel `commodities`
--
ALTER TABLE `commodities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `commodity_locations`
--
ALTER TABLE `commodity_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `school_operational_assistances`
--
ALTER TABLE `school_operational_assistances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=743;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `commodities`
--
ALTER TABLE `commodities`
  ADD CONSTRAINT `commodities_commodity_location_id_foreign` FOREIGN KEY (`commodity_location_id`) REFERENCES `commodity_locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commodities_school_operational_assistance_id_foreign` FOREIGN KEY (`school_operational_assistance_id`) REFERENCES `school_operational_assistances` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
--
-- Database: `inventori2`
--
CREATE DATABASE IF NOT EXISTS `inventori2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `inventori2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sembako', NULL, NULL),
(2, 'Makanan', NULL, NULL),
(3, 'Sayuran', NULL, NULL),
(4, 'Daging', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(8, '2023_11_14_034705_create_product_supplies_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL DEFAULT '0',
  `price` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_supplies`
--

CREATE TABLE `product_supplies` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `type` enum('income','outcome') NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'PT Hendy Kaya Raya', 'Ngawi', '08123456789', 'heendykayaraya@gmailcom', NULL, NULL),
(2, 'PT Hendy Sukses Selalu', 'Jember', '08123456789', 'hendysukses@gmailcom', NULL, NULL),
(3, 'PT Hendy Sultan Semesta', 'Surabaya', '08123456789', 'hendysultan@gmailcom', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hendy Setiawan', 'hendysetiawan@gmail.com', NULL, '$2y$12$4sT/G3MkPVtlWgdDuiqzBuMc/hzLUrkppsdF95gL0QqNtm2dDmUh2', 'admin', NULL, NULL, NULL),
(2, 'Budi Setiawan', 'budisetiawan@gmail.com', NULL, '$2y$12$6MEjEnmm7kVm2vH6qr9QzeQodaP4mJK0GL3n10b3GnWtmLcvHbWDm', 'officer', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_supplies`
--
ALTER TABLE `product_supplies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `product_supplies`
--
ALTER TABLE `product_supplies`
  ADD CONSTRAINT `product_supplies_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_supplies_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `product_supplies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
