-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2020 pada 12.35
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spkmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-01-20 02:29:43', '2020-01-20 02:29:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'model_id', 'text', 'Model Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'model_id', 'text', 'Model Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(68, 8, 'value', 'text', 'Value', 0, 1, 1, 1, 1, 1, '{}', 6),
(69, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(70, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(71, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 9, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(76, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 10, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(78, 10, 'status_id', 'text', 'Status Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(79, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 10, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, '{}', 5),
(81, 10, 'contact_number', 'text', 'Contact Number', 1, 1, 1, 1, 1, 1, '{}', 6),
(82, 10, 'total_amount', 'number', 'Total Amount', 1, 1, 1, 1, 1, 1, '{}', 7),
(83, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(84, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(85, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(86, 11, 'order_id', 'text', 'Order Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(87, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(88, 11, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(89, 11, 'value', 'number', 'Value', 1, 1, 1, 1, 1, 1, '{}', 5),
(90, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(91, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(92, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(94, 12, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 12, 'document', 'file', 'Document', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(98, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(99, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 13, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(102, 13, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(103, 13, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(104, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(105, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(106, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 14, 'model_id', 'text', 'Model Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(108, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(109, 14, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(110, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(111, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(112, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 15, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(114, 15, 'home_address', 'text', 'Home Address', 0, 1, 1, 1, 1, 1, '{}', 3),
(115, 15, 'identity_number', 'text', 'Identity Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(116, 15, 'contact_number', 'text', 'Contact Number', 0, 1, 1, 1, 1, 1, '{}', 5),
(117, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(118, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(119, 7, 'model_color_belongsto_product_model_relationship', 'relationship', 'Model Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProductModel\",\"table\":\"product_models\",\"type\":\"belongsTo\",\"column\":\"model_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(120, 8, 'model_feature_belongsto_product_model_relationship', 'relationship', 'Model Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProductModel\",\"table\":\"product_models\",\"type\":\"belongsTo\",\"column\":\"model_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(121, 10, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(122, 10, 'order_belongsto_order_status_relationship', 'relationship', 'Status Pesanan', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\OrderStatus\",\"table\":\"order_statuses\",\"type\":\"belongsTo\",\"column\":\"status_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(123, 11, 'payment_belongsto_order_relationship', 'relationship', 'ID Pesanan', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(124, 13, 'product_spesification_belongsto_product_relationship', 'relationship', 'Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(125, 15, 'profile_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(126, 14, 'product_belongsto_product_model_relationship', 'relationship', 'Model Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProductModel\",\"table\":\"product_models\",\"type\":\"belongsTo\",\"column\":\"model_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(127, 12, 'output_year', 'text', 'Output Year', 0, 1, 1, 1, 1, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(7, 'model_colors', 'model-colors', 'Warna Model', 'Warna Model', 'voyager-new', 'App\\ModelColor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:30:26', '2020-01-20 02:35:15'),
(8, 'model_features', 'model-features', 'Fitur Model', 'Fitur Model', 'voyager-new', 'App\\ModelFeature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:30:48', '2020-01-20 02:35:49'),
(9, 'order_statuses', 'order-statuses', 'Status Pesanan', 'Status Pesanan', 'voyager-new', 'App\\OrderStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-01-20 02:31:13', '2020-01-20 02:31:13'),
(10, 'orders', 'orders', 'Pesanan', 'Pesanan', 'voyager-new', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:31:46', '2020-01-20 02:36:52'),
(11, 'payments', 'payments', 'Pembayaran', 'Pembayaran', 'voyager-new', 'App\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:32:09', '2020-01-20 02:37:51'),
(12, 'product_models', 'product-models', 'Model Product', 'Model Produk', 'voyager-new', 'App\\ProductModel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:32:37', '2020-01-21 00:06:05'),
(13, 'product_spesifications', 'product-spesifications', 'Produk Spesifikasi', 'Produk Spesifikasi', 'voyager-new', 'App\\ProductSpesification', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:33:01', '2020-01-20 02:38:36'),
(14, 'products', 'products', 'Produk', 'Produk', 'voyager-new', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:33:20', '2020-01-20 02:46:07'),
(15, 'profiles', 'profiles', 'Profil', 'Profil', 'voyager-new', 'App\\Profile', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-20 02:33:41', '2020-01-20 02:39:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-20 02:29:42', '2020-01-20 02:29:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-01-20 02:29:42', '2020-01-20 02:29:42', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-01-20 02:29:42', '2020-01-20 02:29:42', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-01-20 02:29:43', '2020-01-20 02:29:43', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-01-20 02:29:43', '2020-01-20 02:29:43', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-01-20 02:29:43', '2020-01-20 02:29:43', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-01-20 02:29:43', '2020-01-20 02:29:43', 'voyager.hooks', NULL),
(15, 1, 'Warna Model', '', '_self', 'voyager-new', NULL, NULL, 15, '2020-01-20 02:30:26', '2020-01-20 02:30:26', 'voyager.model-colors.index', NULL),
(16, 1, 'Fitur Model', '', '_self', 'voyager-new', NULL, NULL, 16, '2020-01-20 02:30:48', '2020-01-20 02:30:48', 'voyager.model-features.index', NULL),
(17, 1, 'Status Pesanan', '', '_self', 'voyager-new', NULL, NULL, 17, '2020-01-20 02:31:13', '2020-01-20 02:31:13', 'voyager.order-statuses.index', NULL),
(18, 1, 'Pesanan', '', '_self', 'voyager-new', NULL, NULL, 18, '2020-01-20 02:31:46', '2020-01-20 02:31:46', 'voyager.orders.index', NULL),
(19, 1, 'Pembayaran', '', '_self', 'voyager-new', NULL, NULL, 19, '2020-01-20 02:32:09', '2020-01-20 02:32:09', 'voyager.payments.index', NULL),
(20, 1, 'Model Produk', '', '_self', 'voyager-new', NULL, NULL, 20, '2020-01-20 02:32:37', '2020-01-20 02:32:37', 'voyager.product-models.index', NULL),
(21, 1, 'Produk Spesifikasi', '', '_self', 'voyager-new', NULL, NULL, 21, '2020-01-20 02:33:01', '2020-01-20 02:33:01', 'voyager.product-spesifications.index', NULL),
(22, 1, 'Produk', '', '_self', 'voyager-new', NULL, NULL, 22, '2020-01-20 02:33:20', '2020-01-20 02:33:20', 'voyager.products.index', NULL),
(23, 1, 'Profil', '', '_self', 'voyager-new', NULL, NULL, 23, '2020-01-20 02:33:41', '2020-01-20 02:33:41', 'voyager.profiles.index', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(10, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(11, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(12, '2016_06_01_000004_create_oauth_clients_table', 1),
(13, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(14, '2016_10_21_190000_create_roles_table', 1),
(15, '2016_10_21_190000_create_settings_table', 1),
(16, '2016_11_30_135954_create_permission_table', 1),
(17, '2016_11_30_141208_create_permission_role_table', 1),
(18, '2016_12_26_201236_data_types__add__server_side', 1),
(19, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(20, '2017_01_14_005015_create_translations_table', 1),
(21, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(22, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(23, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(24, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(25, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(26, '2017_08_05_000000_add_group_to_settings_table', 1),
(27, '2017_11_26_013050_add_user_role_relationship', 1),
(28, '2017_11_26_015000_create_user_roles_table', 1),
(29, '2018_03_11_000000_add_user_settings', 1),
(30, '2018_03_14_000000_add_details_to_data_types_table', 1),
(31, '2018_03_16_000000_make_settings_value_nullable', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 1),
(33, '2020_01_16_084228_create_profiles_table', 1),
(34, '2020_01_16_090353_create_order_statuses_table', 1),
(35, '2020_01_16_090459_create_orders_table', 1),
(36, '2020_01_16_090522_create_payments_table', 1),
(37, '2020_01_16_090625_create_product_models_table', 1),
(38, '2020_01_16_090643_create_model_colors_table', 1),
(39, '2020_01_16_090657_create_model_features_table', 1),
(40, '2020_01_16_090714_create_products_table', 1),
(41, '2020_01_16_090737_create_product_spesifications_table', 1),
(42, '2020_01_16_090754_create_order_products_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_colors`
--

CREATE TABLE `model_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_colors`
--

INSERT INTO `model_colors` (`id`, `model_id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Glistening Grey Metallic', 'model-colors\\January2020\\j8FgE1yjssucW9vpV1Z1.jpg', NULL, '2020-01-20 02:41:12', '2020-01-20 02:41:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_features`
--

CREATE TABLE `model_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_features`
--

INSERT INTO `model_features` (`id`, `model_id`, `name`, `image`, `description`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Eksterior', 'model-features\\January2020\\6u4Abo1397UaYTt2y38G.jpg', 'IGNIS hadirkan desain baru bercita rasa SUV yang sporty dan stylish. Membuatnya tampil menonjol di antara para pesaingnya.', NULL, '2020-01-20 02:42:08', '2020-01-20 02:42:08'),
(2, 1, 'Interior', 'model-features\\January2020\\RKLE91uKlPCpYLM7qIdY.jpg', '\"Memasuki kabin IGNIS, kesan lapang, modern, unik, futuristik, dan nyaman langsung terasa. Ditambah lagi dengan detail-detail yang berkelas dan sporty.', NULL, '2020-01-20 02:42:37', '2020-01-20 02:42:37'),
(3, 1, 'Performa', 'model-features\\January2020\\0vREa0cRhwLfbNMBdO09.jpg', 'IGNIS mendukung mobilitas perkotaan yang dinamis baik dari sisi kenyamanan, keamanan, dan power.', NULL, '2020-01-20 02:43:01', '2020-01-20 02:43:01'),
(4, 1, 'Keamanan', 'model-features\\January2020\\10pvPoZrup2eaV66WxzY.jpg', 'Melalui berbagai teknologi keamanan terkini, IGNIS berikan ketenangan serta kenyamanan saat mengendara.', NULL, '2020-01-20 02:43:25', '2020-01-20 02:43:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status_id`, `description`, `shipping_address`, `contact_number`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:39:13', '2020-01-20 03:39:13'),
(2, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:39:27', '2020-01-20 03:39:27'),
(3, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:39:37', '2020-01-20 03:39:37'),
(4, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:41:44', '2020-01-20 03:41:44'),
(5, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:42:18', '2020-01-20 03:42:18'),
(6, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:43:34', '2020-01-20 03:43:34'),
(7, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:45:32', '2020-01-20 03:45:32'),
(8, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:45:53', '2020-01-20 03:45:53'),
(22, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-20 03:55:30', '2020-01-20 03:55:30'),
(23, 1, 2, NULL, NULL, NULL, 167000000, '2020-01-21 00:04:29', '2020-01-21 00:04:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `model_color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `model_color_id`, `color`, `quantity`, `created_at`, `updated_at`) VALUES
(18, 22, 1, NULL, 'Glistening Grey Metallic', 0, '2020-01-20 03:55:30', '2020-01-20 03:55:30'),
(19, 23, 1, NULL, 'Glistening Grey Metallic', 0, '2020-01-21 00:04:29', '2020-01-21 00:04:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Pending', 'Pending', NULL, NULL),
(3, 'Lunas', 'Lunas', '2020-01-20 02:44:49', '2020-01-20 02:44:49'),
(4, 'Belum Lunas', 'Nunggak/ Kredit', '2020-01-20 02:44:59', '2020-01-20 02:44:59'),
(5, 'Batal', 'Batal', '2020-01-20 02:45:08', '2020-01-20 02:45:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-01-20 02:29:43', '2020-01-20 02:29:43');

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
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(2, 'browse_bread', NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(3, 'browse_database', NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(4, 'browse_media', NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(5, 'browse_compass', NULL, '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(6, 'browse_menus', 'menus', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(7, 'read_menus', 'menus', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(8, 'edit_menus', 'menus', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(9, 'add_menus', 'menus', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(10, 'delete_menus', 'menus', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(11, 'browse_roles', 'roles', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(12, 'read_roles', 'roles', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(13, 'edit_roles', 'roles', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(14, 'add_roles', 'roles', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(15, 'delete_roles', 'roles', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(16, 'browse_users', 'users', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(17, 'read_users', 'users', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(18, 'edit_users', 'users', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(19, 'add_users', 'users', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(20, 'delete_users', 'users', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(21, 'browse_settings', 'settings', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(22, 'read_settings', 'settings', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(23, 'edit_settings', 'settings', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(24, 'add_settings', 'settings', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(25, 'delete_settings', 'settings', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(26, 'browse_categories', 'categories', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(27, 'read_categories', 'categories', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(28, 'edit_categories', 'categories', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(29, 'add_categories', 'categories', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(30, 'delete_categories', 'categories', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(31, 'browse_posts', 'posts', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(32, 'read_posts', 'posts', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(33, 'edit_posts', 'posts', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(34, 'add_posts', 'posts', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(35, 'delete_posts', 'posts', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(36, 'browse_pages', 'pages', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(37, 'read_pages', 'pages', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(38, 'edit_pages', 'pages', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(39, 'add_pages', 'pages', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(40, 'delete_pages', 'pages', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(41, 'browse_hooks', NULL, '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(42, 'browse_model_colors', 'model_colors', '2020-01-20 02:30:26', '2020-01-20 02:30:26'),
(43, 'read_model_colors', 'model_colors', '2020-01-20 02:30:26', '2020-01-20 02:30:26'),
(44, 'edit_model_colors', 'model_colors', '2020-01-20 02:30:26', '2020-01-20 02:30:26'),
(45, 'add_model_colors', 'model_colors', '2020-01-20 02:30:26', '2020-01-20 02:30:26'),
(46, 'delete_model_colors', 'model_colors', '2020-01-20 02:30:26', '2020-01-20 02:30:26'),
(47, 'browse_model_features', 'model_features', '2020-01-20 02:30:48', '2020-01-20 02:30:48'),
(48, 'read_model_features', 'model_features', '2020-01-20 02:30:48', '2020-01-20 02:30:48'),
(49, 'edit_model_features', 'model_features', '2020-01-20 02:30:48', '2020-01-20 02:30:48'),
(50, 'add_model_features', 'model_features', '2020-01-20 02:30:48', '2020-01-20 02:30:48'),
(51, 'delete_model_features', 'model_features', '2020-01-20 02:30:48', '2020-01-20 02:30:48'),
(52, 'browse_order_statuses', 'order_statuses', '2020-01-20 02:31:13', '2020-01-20 02:31:13'),
(53, 'read_order_statuses', 'order_statuses', '2020-01-20 02:31:13', '2020-01-20 02:31:13'),
(54, 'edit_order_statuses', 'order_statuses', '2020-01-20 02:31:13', '2020-01-20 02:31:13'),
(55, 'add_order_statuses', 'order_statuses', '2020-01-20 02:31:13', '2020-01-20 02:31:13'),
(56, 'delete_order_statuses', 'order_statuses', '2020-01-20 02:31:13', '2020-01-20 02:31:13'),
(57, 'browse_orders', 'orders', '2020-01-20 02:31:46', '2020-01-20 02:31:46'),
(58, 'read_orders', 'orders', '2020-01-20 02:31:46', '2020-01-20 02:31:46'),
(59, 'edit_orders', 'orders', '2020-01-20 02:31:46', '2020-01-20 02:31:46'),
(60, 'add_orders', 'orders', '2020-01-20 02:31:46', '2020-01-20 02:31:46'),
(61, 'delete_orders', 'orders', '2020-01-20 02:31:46', '2020-01-20 02:31:46'),
(62, 'browse_payments', 'payments', '2020-01-20 02:32:09', '2020-01-20 02:32:09'),
(63, 'read_payments', 'payments', '2020-01-20 02:32:09', '2020-01-20 02:32:09'),
(64, 'edit_payments', 'payments', '2020-01-20 02:32:09', '2020-01-20 02:32:09'),
(65, 'add_payments', 'payments', '2020-01-20 02:32:09', '2020-01-20 02:32:09'),
(66, 'delete_payments', 'payments', '2020-01-20 02:32:09', '2020-01-20 02:32:09'),
(67, 'browse_product_models', 'product_models', '2020-01-20 02:32:37', '2020-01-20 02:32:37'),
(68, 'read_product_models', 'product_models', '2020-01-20 02:32:37', '2020-01-20 02:32:37'),
(69, 'edit_product_models', 'product_models', '2020-01-20 02:32:37', '2020-01-20 02:32:37'),
(70, 'add_product_models', 'product_models', '2020-01-20 02:32:37', '2020-01-20 02:32:37'),
(71, 'delete_product_models', 'product_models', '2020-01-20 02:32:37', '2020-01-20 02:32:37'),
(72, 'browse_product_spesifications', 'product_spesifications', '2020-01-20 02:33:01', '2020-01-20 02:33:01'),
(73, 'read_product_spesifications', 'product_spesifications', '2020-01-20 02:33:01', '2020-01-20 02:33:01'),
(74, 'edit_product_spesifications', 'product_spesifications', '2020-01-20 02:33:01', '2020-01-20 02:33:01'),
(75, 'add_product_spesifications', 'product_spesifications', '2020-01-20 02:33:01', '2020-01-20 02:33:01'),
(76, 'delete_product_spesifications', 'product_spesifications', '2020-01-20 02:33:01', '2020-01-20 02:33:01'),
(77, 'browse_products', 'products', '2020-01-20 02:33:20', '2020-01-20 02:33:20'),
(78, 'read_products', 'products', '2020-01-20 02:33:20', '2020-01-20 02:33:20'),
(79, 'edit_products', 'products', '2020-01-20 02:33:20', '2020-01-20 02:33:20'),
(80, 'add_products', 'products', '2020-01-20 02:33:20', '2020-01-20 02:33:20'),
(81, 'delete_products', 'products', '2020-01-20 02:33:20', '2020-01-20 02:33:20'),
(82, 'browse_profiles', 'profiles', '2020-01-20 02:33:41', '2020-01-20 02:33:41'),
(83, 'read_profiles', 'profiles', '2020-01-20 02:33:41', '2020-01-20 02:33:41'),
(84, 'edit_profiles', 'profiles', '2020-01-20 02:33:41', '2020-01-20 02:33:41'),
(85, 'add_profiles', 'profiles', '2020-01-20 02:33:41', '2020-01-20 02:33:41'),
(86, 'delete_profiles', 'profiles', '2020-01-20 02:33:41', '2020-01-20 02:33:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-01-20 02:29:43', '2020-01-20 02:29:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `model_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'GL MT', 167000000, '2020-01-20 02:46:26', '2020-01-20 02:46:26'),
(2, 1, 'GL AGS', 177000000, '2020-01-20 02:46:45', '2020-01-20 02:46:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_models`
--

CREATE TABLE `product_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `output_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_models`
--

INSERT INTO `product_models` (`id`, `name`, `description`, `document`, `image`, `created_at`, `updated_at`, `output_year`) VALUES
(1, 'Ignis', NULL, '[{\"download_link\":\"product-models\\\\January2020\\\\uVScbzOHb8wtaWnA9V2Q.pdf\",\"original_name\":\"BrosurIgnis2019.pdf\"}]', 'product-models\\January2020\\0LZfgqxx838745CPWsGT.jpg', '2020-01-20 02:40:00', '2020-01-21 00:06:21', 2014);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_spesifications`
--

CREATE TABLE `product_spesifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `home_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-01-20 02:29:42', '2020-01-20 02:29:42'),
(2, 'user', 'Normal User', '2020-01-20 02:29:42', '2020-01-20 02:29:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-01-20 02:29:43', '2020-01-20 02:29:43'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-01-20 02:29:43', '2020-01-20 02:29:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$R89B3J.h0cil/XJmdtS.5.N9DaT1SLadfaM92N.8iQJ7SKWnSeV2i', '7Dx0rLH1clCxB5gLX9vxzkc5jolci73JkBznL0qR5NW3lAJGZ43DoGb0j9m7', NULL, '2020-01-20 02:29:43', '2020-01-20 02:29:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_colors`
--
ALTER TABLE `model_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_colors_model_id_foreign` (`model_id`);

--
-- Indeks untuk tabel `model_features`
--
ALTER TABLE `model_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_features_model_id_foreign` (`model_id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`),
  ADD KEY `order_products_model_color_id_foreign` (`model_color_id`);

--
-- Indeks untuk tabel `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_model_id_foreign` (`model_id`);

--
-- Indeks untuk tabel `product_models`
--
ALTER TABLE `product_models`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_spesifications`
--
ALTER TABLE `product_spesifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `model_colors`
--
ALTER TABLE `model_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `model_features`
--
ALTER TABLE `model_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `product_models`
--
ALTER TABLE `product_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `product_spesifications`
--
ALTER TABLE `product_spesifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_colors`
--
ALTER TABLE `model_colors`
  ADD CONSTRAINT `model_colors_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `product_models` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_features`
--
ALTER TABLE `model_features`
  ADD CONSTRAINT `model_features_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `product_models` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_model_color_id_foreign` FOREIGN KEY (`model_color_id`) REFERENCES `model_colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `product_models` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
