-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 08:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posty`
--

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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(3, 9, 1, '2021-06-22 11:52:49', '2021-06-22 11:52:49'),
(5, 9, 179, '2021-06-23 09:23:29', '2021-06-23 09:23:29'),
(6, 10, 3, '2021-06-24 08:16:31', '2021-06-24 08:16:31'),
(8, 10, 209, '2021-06-24 08:18:13', '2021-06-24 08:18:13'),
(9, 12, 209, '2022-06-16 17:30:22', '2022-06-16 17:30:22');

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
(5, '2021_05_18_130620_add_username_to_users_table', 2),
(6, '2021_05_31_100716_create_posts_table', 3),
(7, '2021_06_04_102625_create_likes_table', 4);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 10, 'Hello, Welcome', '2021-05-31 21:41:50', '2021-05-31 21:41:50'),
(2, 10, 'Hello, Welcome To Service', '2021-06-01 12:52:24', '2021-06-01 12:52:24'),
(3, 9, 'How are you doing', '2021-06-02 09:31:24', '2021-06-02 09:31:24'),
(6, 10, 'Non placeat maiores consequuntur adipisci et explicabo quasi ullam harum sed architecto iusto a consectetur doloribus inventore veritatis consequatur voluptates.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(7, 10, 'Expedita id placeat sit delectus nostrum architecto sed enim doloribus dicta aliquid quia et facilis ut voluptas reiciendis voluptas eveniet ad veritatis debitis sed aut.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(8, 10, 'Vitae dolores quas rerum voluptatem doloribus ab distinctio sed ab quia nemo voluptatem quia et neque.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(9, 10, 'Perspiciatis magni qui illum ea et provident officia sint natus similique unde fuga expedita laudantium ipsa aut non qui dolorum nihil.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(10, 10, 'Blanditiis dolorum iste qui consequatur expedita tempore et libero cupiditate asperiores adipisci temporibus sunt est quaerat quos nobis.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(11, 10, 'Soluta possimus dolorem aut culpa fugiat voluptatibus occaecati quis incidunt et in perferendis quia sunt corrupti quia est et voluptatibus ut esse laudantium eaque aut sed corporis magni.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(12, 10, 'Modi numquam voluptatem perspiciatis molestiae incidunt maiores facilis iure dicta quia rerum velit qui quos aut maiores vel et iste aliquid quo perferendis voluptate et velit provident assumenda.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(13, 10, 'Qui mollitia dolor earum exercitationem enim distinctio odit quis est minus rerum sed et quis necessitatibus adipisci corporis ipsam.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(14, 10, 'Et illo odio iste illo temporibus et et aut dignissimos hic est reiciendis est ullam enim pariatur et facere voluptas error.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(15, 10, 'Eius non ab velit ipsa tempora sed sed at est pariatur sint quisquam cum officiis qui eos sed ut voluptatem in recusandae saepe consequatur ea optio nam id.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(16, 10, 'A et eos et rerum debitis cupiditate occaecati ea est voluptatem dolorem nihil sequi eum ullam eos rerum sint eaque incidunt ullam animi eos ducimus dolorem in cum.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(17, 10, 'Et maiores ratione non sint reiciendis eum saepe et non voluptas et mollitia beatae eligendi provident.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(18, 10, 'Omnis et magnam ea iure debitis est blanditiis ut eaque veritatis blanditiis fugit.', '2021-06-04 09:10:31', '2021-06-04 09:10:31'),
(19, 10, 'Autem velit quia ut natus enim ut sit ipsum et a molestiae consequatur sit libero natus non quo sit aspernatur inventore quis sunt.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(20, 10, 'In harum ipsam qui accusamus quaerat et voluptatem consectetur sapiente sunt ut nemo nisi et.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(21, 10, 'Natus ut aliquam aut ducimus odit magni esse reiciendis sed unde eum at ea voluptate aliquid beatae non aut.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(22, 10, 'Doloremque commodi delectus fuga inventore reiciendis possimus eos in dolore tenetur fuga quos velit quo nisi et ducimus autem.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(23, 10, 'Quisquam tenetur recusandae ipsum dolor adipisci maiores explicabo quidem quia iste magnam aut vel.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(24, 10, 'Consequatur nam explicabo optio saepe nobis quia sunt voluptatibus inventore est voluptatem qui cum consectetur et sit tempore quas eos distinctio debitis et quia sed.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(25, 10, 'Quos et facilis minus et et impedit est enim quia tenetur voluptatem sapiente sed.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(26, 10, 'Nihil atque et optio omnis quia necessitatibus rerum necessitatibus fugiat debitis fugiat iure est est itaque doloribus exercitationem sed voluptate eum molestiae odit.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(27, 10, 'Saepe qui minima fugiat aliquam in non quidem vel aspernatur adipisci ut autem aut maiores recusandae ut sed sint quia est et aliquid illum.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(28, 10, 'Ullam sit et id soluta natus amet accusamus qui ducimus alias veritatis culpa accusamus blanditiis qui enim totam et aspernatur.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(29, 10, 'Quae quos laboriosam quia rem consectetur aut blanditiis inventore aliquid ducimus officiis voluptatem aut quis vitae animi quidem molestiae enim in saepe sed occaecati corrupti quos.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(30, 10, 'Suscipit ab non aut inventore quam animi velit fugit iure ratione minus aut ut qui expedita qui libero voluptatem fugit quasi rerum accusamus deleniti.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(31, 10, 'Numquam dolores praesentium dolorum vel aut ducimus vel voluptatem voluptatum dolorem iste odit quisquam quia ratione nihil quis voluptatem vitae alias aperiam eligendi eaque ex sequi.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(32, 10, 'Voluptatem enim dicta magnam consequuntur magni nihil provident sed est tempore aspernatur amet dolorem tempora ut illum quis ut.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(33, 10, 'Laudantium sequi omnis natus aut est cupiditate quasi rerum est quas consequatur sint ut.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(34, 10, 'Et possimus velit esse accusantium dolores omnis vel ut voluptas enim et itaque omnis.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(35, 10, 'Numquam aut eos quos rem quasi voluptatem omnis maiores quo rem omnis minus inventore quae provident sunt ex labore sint occaecati quis fuga commodi voluptatibus cum facere.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(36, 10, 'Doloremque occaecati non et rem sint libero corrupti nulla at atque ullam dicta eum porro cum itaque eaque est explicabo enim quis voluptatibus.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(37, 10, 'Labore labore facere et eos nulla ipsum odio est recusandae nam et aut eaque vero ad sit debitis error sint voluptatem tempore.', '2021-06-04 09:10:32', '2021-06-04 09:10:32'),
(38, 10, 'Cupiditate praesentium aspernatur voluptatibus et explicabo beatae eligendi temporibus et et qui voluptatum voluptatem nobis eum et enim quia earum iste quas.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(39, 10, 'Officiis aut omnis ut ipsum non et tempore velit nisi assumenda id libero repudiandae unde ut est fugiat error et delectus alias dolorum.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(40, 10, 'Repellat voluptatem quia officia reiciendis tempora officia voluptatum similique exercitationem accusantium aut ea est laboriosam sed a labore inventore harum necessitatibus doloribus numquam est quidem id dolorem minima.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(41, 10, 'Dolor voluptas neque nesciunt neque error aut ut est qui velit et repellendus.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(42, 10, 'Tempora eum quia ex nemo ea enim autem ut molestias inventore ullam voluptas possimus ducimus similique dolore id minus quia praesentium culpa.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(43, 10, 'Corporis non mollitia est illo id minus nemo est omnis quos eum eaque dolores saepe temporibus natus suscipit praesentium eum perferendis assumenda quis culpa molestiae incidunt dolores quas.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(44, 10, 'Omnis enim aut laborum quo ab sed et iusto minus libero dolorum atque velit ratione est et qui et porro id et inventore soluta et.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(45, 10, 'Laborum nihil consectetur ex esse nihil sit amet cupiditate non rerum cum totam et quod assumenda qui sunt ut quae ut voluptas.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(46, 10, 'Dolores ex tempore repellendus debitis accusantium id sit aut est esse maxime voluptatem.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(47, 10, 'Temporibus distinctio similique voluptatibus quia quaerat dicta corporis officia qui quia tempore eveniet quaerat consequatur.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(48, 10, 'Reprehenderit deleniti enim dolore vero et consequatur qui quia voluptatibus et harum enim accusantium expedita perspiciatis aut aut sint doloribus et vel natus.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(49, 10, 'Quia deserunt atque ipsam nulla quo dolore ratione quia in voluptatem porro ad numquam suscipit beatae dolores odio.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(50, 10, 'Quaerat fuga deleniti quae facere mollitia alias quis et dolores fugiat ipsam tempora aut repellendus consequuntur eum mollitia quia in libero aut ut et quidem facilis rem.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(51, 10, 'Soluta deserunt autem minima eius minus placeat quia aut non ducimus fugiat ducimus aliquam perferendis maiores aliquam et nemo reprehenderit quod assumenda mollitia.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(52, 10, 'Cupiditate sapiente et ullam pariatur et laudantium totam commodi quia perspiciatis consequuntur qui aliquid quasi occaecati voluptatem tempora magni.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(53, 10, 'Incidunt est quas quo nisi nam provident possimus quia veniam molestiae earum et repellendus exercitationem assumenda a veniam et dolores mollitia dolorum eligendi omnis corporis et.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(54, 10, 'Magnam a et sed excepturi eius sed tenetur dolorum a ut tempora quia reprehenderit totam sit porro est velit labore magni laudantium.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(55, 10, 'Consequatur sapiente quia illum voluptatibus consequatur impedit fugit est quisquam dolorem omnis explicabo illum eum nihil placeat dolore est autem aut aut unde culpa.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(56, 10, 'Numquam autem reprehenderit earum exercitationem perspiciatis nisi architecto nisi nisi eaque voluptas quia ut consequatur dolorum aut dolor et ullam dolorem aut itaque.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(57, 10, 'Ut saepe eos vitae repudiandae odit dolores iure eaque quod rem nam molestiae ipsam.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(58, 10, 'Rerum repellendus voluptatem fuga quas est sunt perspiciatis esse officiis placeat aperiam fuga occaecati et ab cupiditate molestiae ex qui asperiores eveniet aut.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(59, 10, 'Molestiae voluptas consequuntur quidem et beatae quia enim nostrum rerum aut nam neque sit eum qui doloribus exercitationem et non consectetur maxime sit.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(60, 10, 'Eos voluptas consequatur illo delectus dignissimos iusto eum corrupti similique soluta alias ut eius non sapiente eum porro eaque voluptate atque eligendi.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(61, 10, 'Quia minus aut vel et praesentium magnam dolor nostrum ut doloremque explicabo dignissimos omnis sit.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(62, 10, 'Exercitationem sed repellendus commodi veniam culpa non est veritatis pariatur et eum et eius vel quia esse.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(63, 10, 'Rerum culpa minus et vitae qui tenetur laboriosam corporis ad adipisci perspiciatis veritatis optio saepe itaque sit aliquid ipsa ea expedita excepturi iste ut enim magnam quam ut.', '2021-06-04 09:10:33', '2021-06-04 09:10:33'),
(64, 10, 'Ullam veniam in est nihil nesciunt dolores provident pariatur quis voluptas vero cupiditate qui delectus non omnis eaque consectetur tenetur ipsum iure ea est id temporibus ratione.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(65, 10, 'Impedit deleniti corrupti est corrupti occaecati dolores aut occaecati aliquam quis velit consequatur alias eveniet qui nihil officiis ratione aspernatur cupiditate et nobis eligendi doloremque vel.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(66, 10, 'Dignissimos quisquam facilis recusandae temporibus impedit accusamus eveniet eaque quis ad qui non optio deleniti mollitia voluptas illo quibusdam mollitia quasi optio et corporis accusamus rerum impedit harum.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(67, 10, 'Mollitia qui vel hic deleniti sed quod sed qui dicta voluptatum quibusdam omnis voluptate nobis eum omnis nihil nobis est.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(68, 10, 'Labore neque dolore aut repellendus et non ut alias amet aperiam explicabo culpa libero qui incidunt non velit accusamus qui sit odio aut iste mollitia tenetur labore voluptatem.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(69, 10, 'Id sed alias quam deserunt dolorem laborum vitae officia sequi non sit accusamus et repellendus autem dolorem quia quisquam qui.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(70, 10, 'Qui velit natus eos consectetur ut quia quis reiciendis unde qui nihil reiciendis.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(71, 10, 'Omnis delectus molestias consequatur dignissimos ea ullam omnis itaque at est molestiae minima.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(72, 10, 'Omnis quidem sit est deleniti dolorem enim quo amet quam rerum eaque fugit unde ab vero alias.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(73, 10, 'Fuga porro velit sint et neque velit sed eum consectetur labore assumenda velit voluptatem sed et iste sequi ex recusandae pariatur ratione dolore.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(74, 10, 'Repellendus ducimus fuga velit quis vero vero porro voluptas exercitationem qui quisquam quo quia rem laborum quibusdam explicabo ea corporis qui repellat placeat sunt.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(75, 10, 'Eos reprehenderit delectus unde rerum mollitia asperiores nihil rerum voluptas in ut ut quam saepe.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(76, 10, 'Est eos maiores tempore id fugit accusantium et aut quos eos perspiciatis consequatur nam quia quisquam laudantium ut ut recusandae eaque error enim ut quod explicabo et non.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(77, 10, 'Aliquam nobis ea ea aperiam minima et iusto velit placeat omnis at cupiditate.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(78, 10, 'Non doloribus cumque modi assumenda culpa et exercitationem aut et nemo occaecati temporibus error tempore neque sit sint dolores error et consequatur in.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(79, 10, 'Aut commodi autem laboriosam soluta velit ab explicabo ullam voluptas velit eos adipisci ullam voluptas.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(80, 10, 'Officiis voluptates enim nihil ut dolor eum neque tenetur omnis hic quia alias quisquam est et aliquid aut.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(81, 10, 'Hic quis iusto alias delectus molestiae dolorem ut ut beatae adipisci deserunt ullam inventore est saepe autem maxime.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(82, 10, 'Suscipit sapiente ut necessitatibus adipisci ducimus quia eaque architecto natus magnam laboriosam aliquam necessitatibus repudiandae enim praesentium dolorum veniam pariatur quo ipsa libero officiis architecto accusamus dolor at.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(83, 10, 'Ut totam dignissimos quo ipsum tempore sint odit sit sed eos enim est dolor rerum consequatur nihil aut explicabo nemo doloremque sit nisi.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(84, 10, 'Voluptatem voluptas et officiis odit sapiente eum dolor rerum nobis voluptatem saepe dolores inventore fuga veritatis.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(85, 10, 'Et quaerat quod harum qui reprehenderit reprehenderit quia sed sed corrupti similique odit fuga dignissimos quia omnis sunt porro est doloremque voluptatem aliquam ex dolorum voluptatem voluptate.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(86, 10, 'Et deserunt quod ullam provident sunt odio occaecati labore quam in alias temporibus facilis suscipit quia recusandae perferendis cumque repellat sunt reiciendis dolore deserunt rerum mollitia.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(87, 10, 'A consequatur recusandae et qui ab similique ipsum rerum quia nesciunt fuga nemo suscipit.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(88, 10, 'Non porro neque non architecto ratione aut perferendis vel quaerat porro corrupti hic.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(89, 10, 'Quaerat non recusandae qui nihil a id ex at cupiditate molestiae pariatur ipsa.', '2021-06-04 09:10:34', '2021-06-04 09:10:34'),
(90, 10, 'Quis omnis culpa necessitatibus accusantium omnis corporis qui ut cum ullam doloribus alias molestiae est non numquam.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(91, 10, 'Nostrum corporis alias eius quia voluptas facere iure magnam non totam enim sed nulla sit fuga ut.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(92, 10, 'Qui quia deleniti voluptatum saepe distinctio commodi voluptatum consequatur qui eum deleniti mollitia quis incidunt cumque occaecati corrupti omnis veniam et cupiditate alias minima voluptas voluptas quia.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(93, 10, 'Aperiam ratione qui tempora qui ipsum nam expedita dolores voluptates ut ut odit qui enim dolor minus recusandae soluta beatae rerum et qui omnis et.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(94, 10, 'Quis aut et qui beatae consequuntur tenetur voluptas asperiores rem nobis dicta earum ipsa.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(95, 10, 'Necessitatibus perferendis a inventore ut placeat quis vero consequatur nam quibusdam enim illum aut aut natus dolores veniam ut non ea et tempore quia molestiae delectus.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(96, 10, 'Consequatur dolorem sint voluptatem rem molestiae at minus eligendi sed est occaecati et et et delectus voluptatem officia tempora nobis repellendus tempora fugit numquam eveniet.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(97, 10, 'Placeat dolor qui aspernatur est doloribus quo vel quae eligendi aut molestiae eaque explicabo architecto et ipsa itaque consequatur.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(98, 10, 'Voluptas molestias ipsa ex alias dolorem optio qui nobis rem hic asperiores eaque amet est voluptatum error aliquam vel.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(99, 10, 'Saepe possimus praesentium non voluptatem quia optio cum dolor eos quia beatae et eius voluptas suscipit non veritatis et hic nulla similique ratione sint quia.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(100, 10, 'Qui illo amet labore culpa illum dolor inventore est voluptas odit corporis tenetur voluptas at quibusdam quisquam aut.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(101, 10, 'Suscipit ratione sunt voluptatem porro quam esse modi recusandae omnis eum commodi ea qui doloribus non voluptatem ea quae earum laboriosam qui laborum qui error non.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(102, 10, 'Repellendus non in debitis possimus maxime veniam ab sed iste dolores nesciunt et ducimus velit qui doloribus sit et non repellendus quis exercitationem optio eum harum ipsa.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(103, 10, 'Tempora voluptatem veritatis incidunt perferendis est aperiam voluptas est beatae placeat eos natus quisquam rerum cupiditate libero eum mollitia eos.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(104, 10, 'Quia nostrum culpa ut voluptatem eum ab ipsum voluptatem aliquid maiores eveniet error.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(105, 10, 'Et corrupti doloremque ut distinctio illum labore veritatis aut fugit aut nemo labore unde harum ut veritatis est enim consequatur veritatis illo.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(106, 10, 'Quia corporis aliquid sit tenetur voluptas debitis aliquam unde ut aut tempore autem non deserunt consequuntur dignissimos qui facere vel aut et qui et adipisci sed.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(107, 10, 'Ullam ab quia suscipit reiciendis at doloremque et eveniet aut sit et sint inventore enim sed natus sit maxime corrupti porro in.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(108, 10, 'Enim impedit omnis aut officia aliquid ut sit atque eius animi voluptatem eius maiores vitae sit omnis eum.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(109, 10, 'Perferendis et laborum error iure id dolorem quaerat et repellat aperiam tempore eum assumenda aperiam quo dolore quaerat sunt ratione placeat et.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(110, 10, 'Ea consequatur quas illo fugiat accusantium ut voluptatem doloribus qui deleniti odio et consequatur id vero odit aliquid ut aut.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(111, 10, 'Libero optio in qui error optio est ea iure qui nihil amet provident delectus quis voluptates libero et eaque blanditiis ea ut exercitationem cupiditate.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(112, 10, 'Non est nam ut voluptas consequatur quasi officiis necessitatibus est libero dolor aut tenetur consequuntur non dolorem magni perferendis fugiat qui quod.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(113, 10, 'Et sunt doloremque molestiae earum nihil fuga voluptas rerum expedita at ut cum id possimus possimus quos quis fugit quo illum consectetur odit et aut accusantium commodi quia quo.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(114, 10, 'Perferendis ut consectetur provident et quas ullam eligendi eveniet autem est ullam quas ea ullam delectus.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(115, 10, 'Laudantium quasi vel quia placeat voluptas sed voluptate exercitationem quo sed quia earum earum occaecati est quae commodi sapiente quaerat.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(116, 10, 'Dicta voluptatum non velit iste quidem dolorum voluptates voluptas cum eius provident numquam perspiciatis aut debitis ut rem officia illum.', '2021-06-04 09:10:35', '2021-06-04 09:10:35'),
(117, 10, 'Numquam maiores possimus quo sed magnam eos soluta temporibus ducimus voluptatum vel natus modi pariatur.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(118, 10, 'Incidunt quod quo ut dolore velit ex quae sit sint natus tempora debitis voluptatum similique quia est libero itaque quaerat nihil hic eos ipsa magnam et.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(119, 10, 'Labore quam dolore sequi facilis est sit atque error temporibus non nemo temporibus nostrum enim aut maiores ducimus sint quam praesentium molestias ut nesciunt ex.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(120, 10, 'Fugit est nostrum hic quo quaerat adipisci quo et saepe nisi atque quos nemo aspernatur doloribus necessitatibus incidunt consequatur eius omnis qui minus perferendis eius nam aliquam.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(121, 10, 'Dignissimos aut quis ipsum recusandae voluptatem sunt modi ea nobis saepe odio dolor aut voluptates rerum consectetur quaerat non nesciunt voluptate culpa nostrum nulla omnis sunt est quis.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(122, 10, 'Repellat nemo voluptatum consequatur magnam veritatis pariatur illum vel repellendus cum id unde quo fugiat sunt.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(123, 10, 'Unde dolore fugiat aut aliquid architecto quae eum nemo in voluptate quidem vero omnis veniam sed libero possimus commodi est reiciendis sed exercitationem et necessitatibus accusamus ex.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(124, 10, 'Deleniti vel pariatur eveniet et aut corrupti doloribus fuga soluta maxime asperiores aut ab id odit ad debitis.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(125, 10, 'Maiores quia libero consequuntur perferendis laborum hic rerum id non voluptatibus dolores eos placeat omnis nobis est voluptate facere ut atque totam doloribus necessitatibus enim.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(126, 10, 'Ipsum et tempora sit nihil voluptas rem rerum eum minus voluptatem error asperiores consectetur culpa ipsam eveniet dolores et sed saepe.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(127, 10, 'Perspiciatis in repellendus harum minima eum ea accusamus et rerum sint eos quasi sed vel et quia cumque.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(128, 10, 'Expedita aut laborum dolore est nostrum eius laboriosam error ratione vel aliquam ut mollitia quibusdam libero repellendus voluptas dolores deserunt dolores.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(129, 10, 'Nulla velit in iusto voluptas perferendis et voluptas blanditiis necessitatibus quod omnis repellat consectetur alias qui consequatur necessitatibus eveniet sint maiores est aperiam maxime id.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(130, 10, 'Ullam impedit perspiciatis facilis velit sed ratione quia fugiat illo totam porro ut esse optio reiciendis in.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(131, 10, 'Cumque eum qui velit ut dolores et nemo placeat omnis error quam quia porro ratione quis modi architecto dicta velit et modi dolorem et soluta sunt voluptas ea.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(132, 10, 'Nisi nemo cumque non at molestiae aliquam vel sapiente sit voluptates exercitationem explicabo et nobis harum dolor itaque est et sequi laboriosam et.', '2021-06-04 09:10:36', '2021-06-04 09:10:36'),
(133, 10, 'Vel quam mollitia similique ipsam nostrum sapiente praesentium fugiat non ipsam aut quisquam aliquam voluptatum.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(134, 10, 'Sint aperiam in fugit ea laborum tempora alias quidem commodi aut animi pariatur et eius dolorem vel provident quae ducimus omnis ad quia rerum cum.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(135, 10, 'Et aut dolore velit harum unde voluptas ut ut excepturi omnis cum ipsam eius quia qui et optio veritatis ut at.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(136, 10, 'Illo ullam in voluptates consectetur autem eos sed est labore molestias quia eveniet quia dolorem recusandae autem qui minima veritatis deserunt quia et omnis numquam.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(137, 10, 'Quis occaecati aliquam nihil animi sunt est iure quaerat omnis accusamus officiis veritatis asperiores animi nisi.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(138, 10, 'Doloribus aut rerum perferendis quos quo necessitatibus eius natus mollitia aut consequatur corporis consequatur inventore non cupiditate aperiam eius alias temporibus illum eius quis deleniti quibusdam corporis qui.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(139, 10, 'Tempora at et temporibus corporis libero dolor modi voluptas sint beatae sed voluptatibus temporibus aliquid ex et ab.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(140, 10, 'Ab veniam sint ducimus et consequatur est eveniet vero fuga qui iure eos iusto voluptas in sint rerum iste et itaque reiciendis fugiat.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(141, 10, 'Et id sunt iste aut ut nihil nam ut consequatur nihil vel veniam ullam consequuntur excepturi dolorum voluptatem molestias quo ut ut iure facilis sit qui eos ex.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(142, 10, 'Maiores amet aspernatur sed fuga perferendis ipsum sed omnis exercitationem pariatur sunt molestiae cupiditate quas voluptatem praesentium saepe doloremque cumque dolorem saepe quo.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(143, 10, 'Eaque cum possimus itaque molestiae nobis voluptatibus temporibus incidunt voluptate quia quisquam itaque neque quibusdam rerum.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(144, 10, 'Sequi quia voluptas adipisci quo facilis non qui maxime aspernatur autem ducimus necessitatibus dolore quibusdam sint sunt deserunt.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(145, 10, 'Vel aspernatur exercitationem ducimus aut et explicabo ex consequatur repellendus dicta ipsum voluptatibus qui laborum dolorem quae eum est est et quis aperiam tempore occaecati ullam.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(146, 10, 'Rerum quod sit rerum voluptatem harum dolores reprehenderit dolorem dicta dicta inventore amet itaque fuga dignissimos quia totam quis placeat et doloremque rerum ratione.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(147, 10, 'Nam recusandae voluptatem facere non eligendi corrupti mollitia ipsa sint rem dicta est aliquam at.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(148, 10, 'Quod placeat qui non in est repudiandae est id atque laborum minus natus accusantium sequi iusto recusandae cupiditate quasi iure est ut provident rerum et.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(149, 10, 'Accusantium quasi sit debitis et sit vel reprehenderit molestiae omnis adipisci et asperiores velit corporis ad quos debitis iure incidunt in.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(150, 10, 'Voluptas ut debitis dolor et est dicta voluptatem odit quo non sint est sit facere odio.', '2021-06-04 09:10:37', '2021-06-04 09:10:37'),
(151, 10, 'Molestiae ducimus tempore iste voluptatem nemo aliquid consequuntur ab exercitationem perspiciatis incidunt voluptatem ducimus deserunt eius temporibus ipsam sed accusantium nam quaerat.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(152, 10, 'Ducimus voluptatem perferendis eligendi doloribus est vero iste voluptatem qui ut voluptatem saepe.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(153, 10, 'Numquam voluptates omnis explicabo voluptas amet vel ut perspiciatis repellat et atque non neque est.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(154, 10, 'Sed incidunt omnis dolore assumenda nobis labore vitae veniam numquam porro voluptas et eveniet ab.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(155, 10, 'Quod inventore quo nihil inventore harum accusamus mollitia quo distinctio id fugit dolores dignissimos dolore harum.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(156, 10, 'Ipsam ullam id rerum dolores temporibus iure ullam ut enim occaecati repellendus quam in cum placeat quis molestiae itaque exercitationem odio illum quis doloribus quas ducimus ipsum voluptatem cupiditate.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(157, 10, 'Ad sed consectetur veniam quos officiis accusantium dolor est totam adipisci debitis nulla id quia.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(158, 10, 'Fuga fugiat esse neque quas veritatis qui maxime voluptatem molestiae architecto nam fuga magni rem cupiditate.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(159, 10, 'Veniam accusamus quo velit nesciunt tempora consequatur laboriosam fuga sunt sed voluptates tempore necessitatibus quidem iste.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(160, 10, 'Veritatis commodi vitae facilis et dolore aut placeat neque nisi quod doloremque omnis rerum dolor repudiandae quia dolores voluptatem ut enim non asperiores.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(161, 10, 'Quas est quaerat quae recusandae commodi in et nisi et accusantium reprehenderit eligendi voluptatum sit dolor qui consectetur voluptatem non explicabo magnam.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(162, 10, 'Laboriosam velit distinctio hic inventore porro labore voluptate aliquid dolor eum voluptas tempora ex aperiam nisi consequatur est sint soluta doloribus odit.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(163, 10, 'Fuga voluptatem repudiandae blanditiis perferendis ea et accusamus reiciendis excepturi explicabo recusandae sunt consequatur aut praesentium exercitationem est sit optio.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(164, 10, 'Earum ipsa non ipsam minus magnam officiis consequatur ea aliquam beatae eos velit animi unde consectetur nisi architecto autem sit vitae suscipit et delectus beatae id.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(165, 10, 'Et et magnam quaerat quia et quia quia eos natus voluptatum soluta dicta sit recusandae recusandae ipsum adipisci incidunt qui aut cum sit.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(166, 10, 'Magnam est quia minus molestias vel laboriosam culpa est facilis repellendus fugiat laboriosam voluptatum rerum sed est a laboriosam accusantium nostrum voluptatum et et aut consequatur dolores.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(167, 10, 'Quo maxime reiciendis aperiam quis aperiam quia unde tempore voluptatem quos quia consequuntur ut accusantium in hic voluptates autem ex placeat eaque debitis et commodi quia ducimus.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(168, 10, 'Vel dolores dolor consequuntur impedit quas temporibus tempore accusamus laboriosam molestiae voluptas fuga delectus voluptas aspernatur.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(169, 10, 'Repudiandae omnis velit qui fuga dolor et voluptatibus qui dolorum sunt vero quos odit.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(170, 10, 'Debitis aut aspernatur itaque est ex quae et architecto assumenda sapiente pariatur sit reiciendis qui sed similique dolore dolor velit.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(171, 10, 'Culpa aut omnis laboriosam ut molestias et sed facilis consequatur fugiat qui eum in sit iure veritatis.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(172, 10, 'Nihil non mollitia aut quo vitae amet ipsa quod qui laborum aspernatur aut nam et illum quas magnam soluta consequatur veritatis ducimus beatae necessitatibus.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(173, 10, 'Facere repudiandae molestiae at perspiciatis et autem iste atque facilis magnam repellat excepturi quos est fuga optio minus quod molestiae et eligendi aut quia.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(174, 10, 'Vero provident sit quis provident illum voluptatum repudiandae totam commodi qui cum vel fuga enim quis deserunt officiis repellat amet dolores quaerat nam iusto quia.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(175, 10, 'Nemo ut voluptatibus rerum ad omnis et quibusdam quia et nostrum quo doloribus optio omnis amet animi vel architecto quod.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(176, 10, 'Numquam ad molestiae totam id necessitatibus suscipit optio quae minus harum sit assumenda officia in.', '2021-06-04 09:10:38', '2021-06-04 09:10:38'),
(177, 10, 'Nostrum qui cumque quidem repellat distinctio odit voluptas nam inventore in quae delectus et qui eius blanditiis est velit aut nam iste quis possimus illum.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(178, 10, 'Consectetur deserunt et natus et optio qui labore qui sit aut vel ad praesentium consequuntur aut deleniti est corrupti dolor nobis voluptatem ut nam.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(179, 10, 'Unde autem velit dolore nobis veniam laudantium odit et officiis et officiis voluptas qui quam.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(180, 10, 'Dignissimos in velit aut quia sapiente nihil molestiae impedit aperiam atque ut nemo a architecto perspiciatis tempora sed ut alias recusandae voluptas.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(181, 10, 'Enim magni et omnis et et et ut nostrum dicta laudantium sit voluptates ipsa sunt laboriosam sed.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(182, 10, 'Voluptates in iusto ea officiis sed dolore minima dolore recusandae numquam aliquam neque nulla saepe enim.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(183, 10, 'Officia sit quasi expedita minus aut necessitatibus consequuntur sint consequatur totam soluta et earum beatae a sit eos dolores recusandae perspiciatis et quae blanditiis minima et fugit.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(184, 10, 'Esse dicta vitae magni nostrum at ea et incidunt consectetur ut ratione sapiente voluptatem facilis saepe voluptate voluptas qui aut.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(185, 10, 'Illum est ratione voluptas tempore dolor maiores fugit aut id aut illum quam et fugiat aliquam voluptatem sunt aut a non beatae iusto ratione autem distinctio perspiciatis sapiente.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(186, 10, 'Architecto commodi velit voluptatem dolorem aut eos autem est praesentium architecto ea facere aut repellat voluptatem eveniet qui et quia.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(187, 10, 'Non illo omnis fugit dolor eum est voluptate perferendis fugit quae voluptates vitae aut et expedita voluptate officia nam dolorum odio.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(188, 10, 'Magni aut quam non et consectetur doloremque quisquam vel veritatis recusandae ut odit.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(189, 10, 'Commodi iusto et exercitationem repudiandae et enim incidunt amet dolore optio id officia neque quos vero numquam ullam aliquam debitis eum pariatur fuga soluta culpa.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(190, 10, 'Ut voluptatem aut excepturi libero perferendis nobis fuga soluta laboriosam nobis ut perspiciatis in ut expedita eum consequatur quae nostrum natus nulla nam architecto.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(191, 10, 'Occaecati quasi necessitatibus id molestias molestias qui laborum unde quia magnam sit suscipit blanditiis provident sunt voluptatem vitae voluptatibus enim dolorem accusantium accusantium fugiat id quis sed.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(192, 10, 'Qui praesentium et placeat suscipit inventore qui ipsum ut itaque officia perspiciatis quasi ad quia corrupti totam aut ut nostrum in.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(193, 10, 'Enim quis rerum eius in aut sint velit voluptate voluptatem laborum totam harum vitae quia velit rerum perferendis voluptas dicta enim modi.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(194, 10, 'Enim porro sint porro dolorem et eum illo eum iure quibusdam laudantium odio odio aliquam ab minus ad quibusdam id alias voluptatibus aut rerum ut eaque error ut sunt.', '2021-06-04 09:10:39', '2021-06-04 09:10:39'),
(195, 10, 'Esse blanditiis placeat libero quasi fuga laudantium cupiditate cupiditate veniam optio in et ad delectus totam voluptas eaque distinctio velit officiis animi velit et.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(196, 10, 'Tenetur voluptatibus eveniet ut eos voluptatem dignissimos voluptates similique totam consequatur at aliquid corporis corporis repellendus sequi odit at temporibus debitis.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(197, 10, 'Hic velit perspiciatis quasi unde voluptas non omnis dolorem hic accusantium nobis nihil quia aspernatur quisquam sint repellat asperiores porro repellendus fugiat omnis et quis.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(198, 10, 'Possimus atque quibusdam sit veniam voluptatum nam possimus amet eos velit aut reprehenderit et dolore.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(199, 10, 'Enim consequatur maxime odit voluptas autem et pariatur reprehenderit voluptatem et asperiores magni illum.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(200, 10, 'Tempora labore deserunt ea fuga et similique eum aut temporibus commodi blanditiis qui doloremque repellendus adipisci odio facere nihil sit consequuntur est pariatur ea corrupti.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(201, 10, 'Dicta veniam voluptatem et tempore soluta non et suscipit sed illum aut esse nisi quia aut quos.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(202, 10, 'Perspiciatis voluptatem quia enim fugiat nihil aliquam distinctio sed consequatur rem necessitatibus deserunt aliquid corporis iste eum tempore ut ea voluptas nam ullam rerum facilis exercitationem.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(203, 10, 'Ut consequatur exercitationem quis fugiat consequatur assumenda et consectetur dolor aut voluptas voluptatum molestiae laborum animi eum cumque non rerum.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(204, 10, 'Corporis enim qui assumenda ut aperiam doloremque distinctio veritatis ut dicta vitae earum molestiae vel adipisci totam eaque officiis et dolorem.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(205, 10, 'Omnis quo et dolor harum cumque ut aut laboriosam consectetur id quo aperiam voluptatem.', '2021-06-04 09:10:40', '2021-06-04 09:10:40'),
(209, 9, 'welcome', '2021-06-23 12:19:22', '2021-06-23 12:19:22'),
(210, 12, 'Living is this country is stressful', '2022-06-16 17:30:17', '2022-06-16 17:30:17');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(8, 'Joana Laxxi', 'ewaxxi@gmail.com', NULL, '$2y$10$DXUskNbxwIcNkFcsr0ox.OZk4OVCcIX74cfcVurM/Es.BjXrYqNCS', NULL, '2021-05-29 11:34:45', '2021-05-29 11:34:45', 'Joan'),
(9, 'Joy Egbala', 'joyegbala@gmail.com', NULL, '$2y$10$y932xk3SJvOFPqv8oLCr2ufUGCRx08RapbfnDYZPH15qwYEDPDr1m', NULL, '2021-05-30 19:29:39', '2021-05-30 19:29:39', 'Joyce'),
(10, 'Glory Egbala', 'gloryegbala@gmail.com', NULL, '$2y$10$T0F3JpTgktfeiWqeh6udxelunYEA1052uRyXM5dbUS7vUZWE.LRC.', NULL, '2021-05-30 23:54:28', '2021-05-30 23:54:28', 'Nt'),
(11, 'Joy Sunday', 'egbalajoy@gmail.com', NULL, '$2y$10$PlQaHVD0CB2lOWX1mgtccORI1fPzaJZ0ST0ukKgPNTw.gPNxxvDBa', NULL, '2021-06-24 09:32:47', '2021-06-24 09:32:47', 'Joy Bebe'),
(12, 'Norman Bells', 'norman@gmail.com', NULL, '$2y$10$fgBZgp7FiKcjjyXHQ9Nt2eSnblTtF6PTXUNYCXHTtrnSlAj0cwYi.', NULL, '2022-06-15 22:46:53', '2022-06-15 22:46:53', 'Norman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
