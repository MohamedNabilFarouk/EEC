-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2022 at 09:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_eec`
--

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
(4, '2021_10_12_124343_create_products_table', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(3, 'pharmacy 1', 'العاشر من رمضان', '2022-08-19 05:20:43', '2022-08-19 05:20:43'),
(5, 'pharmacy 2', 'مصر الجديدة', '2022-08-19 05:20:43', '2022-08-19 05:20:43'),
(7, 'Ea fuga nobis.', 'Est quia distinctio veritatis laboriosam.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(8, 'Voluptas ex ullam et autem.', 'Aspernatur laborum aut optio consequatur corporis.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(9, 'Nihil ad ut recusandae iusto.', 'Esse possimus labore ut labore dolorem.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(10, 'Doloribus sint enim.', 'Modi quam aut saepe.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(11, 'Similique velit quis.', 'Aut nihil expedita dolor exercitationem blanditiis explicabo pariatur.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(12, 'Soluta aut omnis commodi.', 'Optio animi vero qui quis qui et.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(13, 'Omnis laboriosam impedit.', 'Nemo dolor incidunt veniam repellendus quas adipisci.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(14, 'Reiciendis ut sit veniam.', 'Aperiam ut distinctio temporibus.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(15, 'Eius quia commodi.', 'Ut qui recusandae harum.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(16, 'Ipsa dolores iste.', 'Enim nesciunt qui similique commodi ut.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(17, 'Veritatis quo sed cupiditate.', 'Aut architecto ut eveniet odio.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(18, 'Qui quia.', 'Pariatur dolores iure qui repellat voluptatum sed.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(19, 'Aspernatur explicabo eaque.', 'Praesentium voluptatibus quae reiciendis.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(20, 'Aliquid excepturi molestiae.', 'Quibusdam dolor maxime accusantium occaecati aperiam non.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(21, 'Vitae eum.', 'Quis incidunt est consequatur.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(22, 'Incidunt exercitationem temporibus.', 'Inventore vitae omnis excepturi doloribus dolor.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(23, 'Ab vero est ipsa.', 'Fugiat veniam placeat voluptatum veniam.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(24, 'Consequuntur qui et.', 'Numquam veritatis molestiae voluptatem nulla.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(25, 'Commodi quas consequatur.', 'Consequatur aut pariatur et praesentium.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(26, 'Nesciunt vel placeat et.', 'Delectus consectetur veritatis non perspiciatis et.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(27, 'Eaque recusandae tempore a.', 'Magni nihil quia voluptatem sapiente.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(28, 'Ut blanditiis ad.', 'Vitae non animi aliquid ut.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(29, 'Eveniet deleniti suscipit.', 'Consequuntur non qui aliquid aliquam magnam.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(30, 'Labore in assumenda id iusto.', 'Quia voluptas et ut magni voluptatem ut.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(31, 'Atque nostrum provident.', 'Nihil ea libero dignissimos et ab.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(32, 'Tempora quaerat accusantium.', 'Libero voluptatem facilis molestiae.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(33, 'Fuga voluptatem assumenda.', 'Esse libero neque eos voluptatem.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(34, 'Quia quis eveniet ea.', 'Occaecati quo eum expedita nostrum.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(35, 'Aliquam tenetur nihil laudantium.', 'Aliquam a voluptas rerum error ut accusamus.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(36, 'Voluptatem sequi voluptas.', 'Quae quisquam fuga tempora sint.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(37, 'Ut et incidunt dolor.', 'Aut placeat illum quisquam.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(38, 'Adipisci cum harum vel.', 'Dolorem non consectetur ratione impedit corporis.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(39, 'Aut sunt est velit.', 'Vel rerum qui molestiae ut.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(40, 'Porro eum distinctio.', 'Beatae omnis fugiat dolor ipsa non blanditiis.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(41, 'Sint sint debitis.', 'Repellendus eius quos adipisci.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(42, 'Autem incidunt voluptas harum.', 'Ut officiis ratione ut molestiae.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(43, 'Impedit aut aut dolores.', 'Provident suscipit molestiae reiciendis praesentium quo est.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(44, 'Pariatur reprehenderit voluptatum omnis.', 'Non at voluptatem quidem molestiae.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(45, 'Ea qui sit cupiditate.', 'Dolorem nobis accusamus laboriosam assumenda voluptates.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(46, 'Dolor autem hic molestiae.', 'Est non quaerat ratione aperiam hic.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(47, 'Rem mollitia delectus fuga reprehenderit.', 'Exercitationem dicta facilis accusantium culpa facilis cumque.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(48, 'Quas ab nisi recusandae.', 'Voluptas iusto aperiam rem dolorum quo.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(49, 'Sunt praesentium beatae ipsam.', 'Praesentium ab ut nihil optio fugiat quis.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(50, 'Amet at magnam.', 'Velit unde magni fugiat.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(51, 'Dolore qui et.', 'Id voluptatum autem sit officiis magni.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(52, 'Dicta est quia quas.', 'Nostrum rem autem soluta veritatis excepturi.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(53, 'Fugiat quae ducimus eos.', 'Recusandae sit labore nesciunt dolor et.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(54, 'Necessitatibus rerum repellat explicabo.', 'Quis corporis possimus iste repellat.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(55, 'Vero enim sed.', 'Ut in non dolor.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(56, 'Dolorem eos natus.', 'Dolorem doloribus ipsa quas dolores possimus esse.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(57, 'Ipsa vero perspiciatis.', 'Nisi dolores at voluptatem.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(58, 'Corrupti atque.', 'Quia omnis laudantium deserunt.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(59, 'Voluptatibus beatae ut cum.', 'Quae quo totam qui minus.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(60, 'Voluptatibus magnam dignissimos distinctio.', 'Qui laboriosam sed aperiam laudantium adipisci.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(61, 'Ea ex alias cupiditate.', 'Et ea voluptate architecto omnis.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(62, 'Architecto veritatis explicabo ut dignissimos.', 'Consequatur dolor labore aperiam.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(63, 'Provident ut placeat.', 'Natus quia facilis nostrum fuga ut qui.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(64, 'Amet veritatis quia officiis et.', 'Voluptate quam quam ducimus similique.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(65, 'Numquam quia.', 'Accusantium at aut velit.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(66, 'Et quas voluptatem provident.', 'Sit ut repellendus esse.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(67, 'Alias aspernatur et magni.', 'Aut dolores maiores eligendi.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(68, 'Saepe perspiciatis.', 'Omnis temporibus magnam quaerat ut sapiente.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(69, 'Ut voluptas.', 'Est ipsa voluptatem maiores error voluptates aut.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(70, 'Placeat et aliquam et.', 'Libero ipsa porro nobis.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(71, 'Ex repellat sunt.', 'Illum voluptas quibusdam est vitae beatae.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(72, 'Id natus blanditiis eaque omnis.', 'Deserunt fuga ad odit animi.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(73, 'Voluptatem natus praesentium maiores.', 'Iure saepe voluptas incidunt voluptatibus harum.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(74, 'Saepe facilis nobis.', 'Sed tempora totam quidem autem iste illum.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(75, 'Quis et nihil.', 'Veritatis vel consequatur pariatur.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(76, 'Ea nihil et et.', 'Voluptatem quia fuga sunt.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(77, 'Veniam voluptatem aut.', 'Ut dolores ut et.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(78, 'Iusto quas provident.', 'Rerum distinctio dolor voluptatem et harum.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(79, 'In at sint.', 'Qui aliquid eaque et repellat eveniet aut.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(80, 'Amet eum dolore.', 'Nostrum hic nostrum quia.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(81, 'Enim cupiditate excepturi.', 'Saepe iure est quo.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(82, 'Ipsa dolorem ex.', 'Quibusdam quia quam et illo.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(83, 'Aut voluptates nobis perspiciatis.', 'Nihil voluptate nisi neque.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(84, 'Aliquid et quis autem.', 'Rerum suscipit aut numquam vel veritatis tenetur.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(85, 'Ut consectetur quis.', 'Ipsa et magnam quae et numquam id.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(86, 'Et culpa.', 'Velit inventore nihil repudiandae eveniet vero occaecati.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(87, 'Saepe quae delectus.', 'Provident ab eum non quidem est.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(88, 'Illum veniam.', 'Qui itaque magni iusto harum.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(89, 'Libero et voluptatem autem.', 'Quos animi eius rerum explicabo aliquam ea.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(90, 'Culpa incidunt et eos.', 'At qui blanditiis eos et sequi sit.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(91, 'Reprehenderit nemo.', 'Quo harum ex hic.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(92, 'Nobis itaque assumenda est.', 'Explicabo sint dolorem et in perferendis nam.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(93, 'Commodi dolores corrupti sit.', 'Non non ut provident aperiam labore.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(94, 'Impedit a.', 'Perferendis quia omnis magni error nulla.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(95, 'Voluptates voluptatem doloribus.', 'Velit cumque quasi sint.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(96, 'Id ut veritatis repellendus.', 'Fuga illum quasi nihil.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(97, 'Labore a libero.', 'Est autem velit eum et qui.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(98, 'Porro rem veniam voluptas.', 'Repellat ex aut laborum modi eveniet.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(99, 'Pariatur quos aut omnis.', 'Esse doloribus molestiae sequi doloremque.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(100, 'Et labore culpa ad.', 'Beatae libero illo neque.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(101, 'Omnis odio non molestiae.', 'Aut molestias explicabo dolor.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(102, 'Blanditiis tempora dolorem.', 'Ut inventore in optio esse dolorem earum.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(103, 'Non repellendus sint.', 'In qui amet sint dignissimos repellendus.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(104, 'Eaque eos voluptate non.', 'Corrupti et sed consequuntur magni et officia.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(105, 'Expedita officia aperiam suscipit.', 'Odio voluptas temporibus nostrum dolore quas natus.', '2022-08-20 08:02:51', '2022-08-20 08:02:51'),
(106, 'Quaerat qui iure explicabo.', 'Id accusantium veniam excepturi quae distinctio.', '2022-08-20 08:02:51', '2022-08-20 08:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `des`, `image`, `created_at`, `updated_at`) VALUES
(27, 'Expedita illum recusandae laborum voluptate.', 'Qui doloribus sit.', 'tETOyyNwSceGpROENQoaA2Rr0wqIYIdIx8om8YTE.jpg', '2022-08-20 08:37:42', '2022-08-20 08:37:42'),
(28, 'Doloribus rerum quia hic.', 'Similique amet qui.', 'tETOyyNwSceGpROENQoaA2Rr0wqIYIdIx8om8YTE.jpg', '2022-08-20 08:37:42', '2022-08-20 08:37:42'),
(29, 'Iusto reiciendis et sed.', 'Sit dolorem aut.', 'tETOyyNwSceGpROENQoaA2Rr0wqIYIdIx8om8YTE.jpg', '2022-08-20 08:37:42', '2022-08-20 08:37:42'),
(30, 'Omnis quas.', 'Facilis earum odio.', 'tETOyyNwSceGpROENQoaA2Rr0wqIYIdIx8om8YTE.jpg', '2022-08-20 08:37:42', '2022-08-20 08:37:42'),
(31, 'Excepturi aspernatur voluptas.', 'Labore et.', 'tETOyyNwSceGpROENQoaA2Rr0wqIYIdIx8om8YTE.jpg', '2022-08-20 08:37:42', '2022-08-20 08:37:42'),
(32, 'Eius.', 'Dolorum omnis.', 'product07.png', '2022-08-20 08:45:35', '2022-08-20 08:45:35'),
(33, 'In.', 'Perspiciatis est.', 'product07.png', '2022-08-20 08:45:35', '2022-08-20 08:45:35'),
(34, 'Illo.', 'A ex eum sed sunt.', 'product07.png', '2022-08-20 08:45:35', '2022-08-20 08:45:35'),
(35, 'Vel.', 'Rem totam.', 'product07.png', '2022-08-20 08:45:35', '2022-08-20 08:45:35'),
(36, 'Modi.', 'Pariatur odit.', 'product07.png', '2022-08-20 08:45:35', '2022-08-20 08:45:35'),
(37, 'Lilla Kertzmann', 'Non vel molestiae earum repellendus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(38, 'Boyd Weimann', 'Facere non dolorem repellendus hic quis.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(39, 'Randall Stamm', 'Iure vel qui nam quia.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(40, 'Mariane Lueilwitz I', 'Accusantium distinctio minima sed dolore.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(41, 'Ms. Maryse Kihn I', 'Sequi sint tempore cumque ut eum doloremque.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(42, 'Vickie Konopelski', 'Sit ipsum et itaque consequatur possimus id.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(43, 'Lionel Ward', 'Dicta sed repellat dicta qui dolores eos.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(44, 'Dr. Nicola Baumbach II', 'Qui praesentium corporis accusamus voluptatem.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(45, 'Dr. Henderson Fay DDS', 'Voluptatem dolores qui minima incidunt.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(46, 'Stephan Hansen', 'Saepe qui explicabo nisi dolor.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(47, 'Prof. Roselyn Hane V', 'Ad sunt repellendus eos error ad.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(48, 'Annabell Bins', 'Quo et animi deserunt praesentium provident qui.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(49, 'Maureen DuBuque', 'Reiciendis molestias tenetur dolorum nesciunt.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(50, 'Elroy O\'Hara', 'Eos ut quasi ea iure qui tenetur expedita.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(51, 'Nyasia Emmerich', 'Libero ullam ullam voluptate beatae.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(52, 'Rowan Olson', 'Architecto voluptatum quidem in dolores ea.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(53, 'Miss Gina Ledner DDS', 'In optio deleniti accusamus voluptatum.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(54, 'Ms. Emie Von', 'Placeat sint possimus suscipit quia natus et.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(55, 'Prof. Keara Bradtke DVM', 'Quas reprehenderit et magnam cupiditate in.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(56, 'Ms. Reta Eichmann MD', 'Eos quod quam dolorem eum eos omnis consequatur.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(57, 'Lue Gusikowski', 'Aliquid ducimus fugiat et sit est.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(58, 'Kaya Durgan', 'Sit sequi non dolor atque.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(59, 'Terrence Cormier', 'Nulla inventore illo sit.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(60, 'Brigitte Borer', 'Quia et culpa nam amet a aspernatur eos.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(61, 'Miss Breanna Hermann III', 'Quo iusto dolore ab quia et id non cumque.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(62, 'Kolby Barton', 'Totam ea sit sed qui.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(63, 'Florian Herman I', 'Nemo quibusdam adipisci voluptas accusamus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(64, 'Oliver Collier', 'Omnis laudantium voluptas dolorem nulla minus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(65, 'Prof. Gerry Moore III', 'Nihil consectetur eos aliquid voluptatum porro.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(66, 'Dr. Nellie Schuster DDS', 'Et accusamus ad molestiae sit velit et enim.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(67, 'Nathanial Parker', 'Delectus accusamus maxime sint eius.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(68, 'Jeanne Abbott', 'Adipisci soluta et magni.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(69, 'Shania Dibbert Sr.', 'Molestiae quos saepe et expedita dolor quo.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(70, 'Gayle Hoppe', 'Vel dicta nemo quidem.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(71, 'Ansley Hoppe', 'Sint quaerat harum dolorum ratione labore.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(72, 'Milan Thiel', 'Aut dolorem quae reiciendis sit et.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(73, 'Dr. Nickolas Schiller DVM', 'Ea incidunt placeat voluptas repellendus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(74, 'Gerda Little V', 'Qui recusandae ducimus culpa ut.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(75, 'Ms. Melyssa Lang', 'Saepe modi mollitia maiores non cumque.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(76, 'Prof. Jazmin Larkin IV', 'Sapiente a laborum nisi praesentium quos nihil.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(77, 'Kailey Morar', 'Aut et animi qui aperiam et aut ut.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(78, 'Jacinto Stark PhD', 'Quasi dolorem eum ab dolorem.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(79, 'Kaelyn Brown', 'Provident quia mollitia reprehenderit quasi quia.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(80, 'Johnpaul Quigley', 'Laborum dolorem unde qui ut dolores aut corrupti.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(81, 'Mrs. Rozella Kris V', 'Dolorem sit facilis quis delectus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(82, 'Raymundo Abbott', 'Eum est aut eaque est.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(83, 'Dr. Roderick Bashirian', 'Odio consequatur tempore aut a.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(84, 'Jessika Wintheiser', 'Dolorum eos dolor error a saepe omnis.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(85, 'Rozella Lang', 'Laborum ipsum cumque delectus dolorum.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(86, 'Ms. Sunny Grady IV', 'Voluptatem est quo quia voluptas.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(87, 'Jerrod Strosin', 'Non nihil voluptas quia qui ullam.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(88, 'Prof. Luis Haag', 'Assumenda sed rerum qui rem ipsum aut.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(89, 'Prof. Maritza Mosciski Sr.', 'Eos voluptates architecto repudiandae officia id.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(90, 'Lorenz Johnson DVM', 'Voluptate a ab cumque nesciunt dolorem.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(91, 'Ms. Alanis Kunde DVM', 'Nemo quidem non ut vero.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(92, 'Prof. Webster Reinger', 'Facilis quos quasi laboriosam quas veniam.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(93, 'Elisabeth Terry', 'Est aut dolor sint sunt ut dolorem.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(94, 'Prof. Jaunita Schmeler', 'Rerum consequatur rerum sint et.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(95, 'Oral Parker', 'Optio et aliquam et nulla.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(96, 'Evans Weimann', 'Veritatis dolores eum et at sit doloremque hic.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(97, 'Twila Roberts', 'Eum et dolore ut minus repellat aut delectus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(98, 'Mr. Garnet Blanda', 'Hic est ad vel nulla.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(99, 'Chad Gottlieb', 'Doloribus eum quis delectus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(100, 'Prof. Ricardo O\'Keefe', 'Sit et mollitia eos.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(101, 'Prof. Elouise Crona DDS', 'Ipsum est deleniti commodi dolorem totam.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(102, 'Leslie Armstrong V', 'Dolorem et vel et similique rem eius deserunt.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(103, 'Kathleen Veum', 'Non sed autem accusamus non.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(104, 'Kamron Hamill', 'Qui voluptatem est ea cumque ipsum illo.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(105, 'Dr. Orion Orn Jr.', 'Itaque nihil repellat ad animi culpa.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(106, 'Dr. Imani Bednar', 'Aliquid iste aut et.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(107, 'Roscoe O\'Conner', 'Qui praesentium quia ab maiores aut illo.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(108, 'Reagan Konopelski Jr.', 'Voluptas voluptatibus expedita itaque quia.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(109, 'Wellington King', 'Impedit qui eos fuga.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(110, 'Dylan Rutherford', 'Aliquid soluta facere et.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(111, 'Norma Wyman MD', 'Ut laboriosam cupiditate magnam qui non sed.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(112, 'Timmothy Wintheiser', 'Ea eligendi expedita atque fugit rerum dolorum.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(113, 'Alan Olson', 'Ex dicta velit aut inventore.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(114, 'Mr. Jedidiah Kovacek Jr.', 'Earum officiis eos consequatur repudiandae nemo.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(115, 'Prof. Ben Greenfelder PhD', 'Soluta ut dolor eum quam.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(116, 'Darrin Fritsch', 'Eum molestiae distinctio nulla eveniet.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(117, 'Clinton Kunze', 'Delectus quia blanditiis voluptate earum.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(118, 'Mr. Eldon Parker PhD', 'Natus minima corporis saepe.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(119, 'Mr. Randal Kulas II', 'Voluptatem ut animi rerum consequatur.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(120, 'Prof. Brenda Langworth', 'Alias doloribus culpa dignissimos.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(121, 'Mr. Darron Braun', 'Officia atque fuga consectetur ullam illo saepe.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(122, 'Edward Willms', 'Eum eius voluptatem voluptatem animi et quae.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(123, 'Mrs. Ida Kub DVM', 'Commodi voluptas natus asperiores voluptatum.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(124, 'Grant Fadel', 'Est neque nam ullam.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(125, 'Miss Jessica Lowe MD', 'Natus et recusandae quo nostrum.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(126, 'Christelle Jerde', 'Animi culpa maxime dignissimos consequuntur.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(127, 'Dr. Trevor Wyman III', 'Ut et quidem ut repellat velit in facilis.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(128, 'Angela Kassulke', 'Enim facilis iste et maiores.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(129, 'Javonte Wunsch', 'Minus delectus quaerat totam magnam sunt.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(130, 'Deshaun Friesen', 'Consequatur voluptatem dicta praesentium enim.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(131, 'Mrs. Samara Lesch MD', 'Voluptatibus est sed quos quos delectus.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(132, 'Yasmine D\'Amore', 'Et et porro quia possimus ut et delectus ipsam.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(133, 'Miss Tyra Kerluke Jr.', 'Sed maiores necessitatibus quis est quae.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(134, 'Miss Pinkie Quigley DVM', 'Dolores ab nostrum qui at amet id rem velit.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(135, 'Miss Lavada Gorczany', 'Nulla iste voluptate consequatur.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58'),
(136, 'Dr. Kane Schmitt', 'Unde nulla nostrum sunt iste enim sit.', 'product07.png', '2022-08-20 08:46:58', '2022-08-20 08:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `products_pharmacies`
--

CREATE TABLE `products_pharmacies` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_pharmacies`
--

INSERT INTO `products_pharmacies` (`id`, `product_id`, `pharmacy_id`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(47, 27, 3, 100, 10, '2022-08-20 10:58:08', '2022-08-20 10:58:08'),
(48, 27, 5, 30, 5, '2022-08-20 10:58:08', '2022-08-20 10:58:08'),
(50, 35, 55, 20, 10, '2022-08-20 10:59:24', '2022-08-20 10:59:24'),
(51, 35, 23, 100, 70, '2022-08-20 10:59:24', '2022-08-20 10:59:24'),
(52, 35, 23, 1000, 2, '2022-08-20 10:59:24', '2022-08-20 10:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, NULL, NULL),
(2, 'moderator', 'Moderator', NULL, NULL, NULL),
(3, 'customer', 'Customer', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_pharmacies`
--
ALTER TABLE `products_pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `products_pharmacies`
--
ALTER TABLE `products_pharmacies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
