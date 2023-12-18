-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2023 at 04:02 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `icon`) VALUES
(1, 'Personal', 'personal', '2023-10-11 06:46:43', '2023-10-11 06:46:43', 'bx bxs-user-pin'),
(2, 'Web Programming', 'web-programming', '2023-10-11 06:46:43', '2023-10-11 06:46:43', 'bx bx-code-alt'),
(3, 'UI UX Design', 'uiux-design', '2023-10-11 06:46:43', '2023-10-11 06:46:43', 'bx bx-brush'),
(8, 'Data Science', 'frontend-developer', '2023-10-17 18:19:34', '2023-10-17 18:31:55', 'bx bx-image');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_07_094443_create_posts_table', 1),
(6, '2023_09_07_140811_create_categories_table', 1),
(7, '2023_10_13_064426_add_is_admin_to_users_table', 2),
(8, '2023_10_17_074524_icons_for_category_to_categories_table', 3),
(9, '2023_10_28_093257_add_image_to_user_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `excerpt`, `slug`, `image`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Dolores occaecati consectetur est nulla.', 'Alias illo eaque repellendus dolor. Dignissimos sed aliquam eaque assumenda officiis ipsum rerum beatae. Suscipit et veniam atque totam consequatur deleniti aspernatur.', 'minima-delectus-eveniet-ad-et-ipsa-dicta', NULL, '<p>Et laudantium sequi quaerat nostrum reiciendis error. Quia provident voluptatibus et et consequatur laboriosam vitae. Suscipit et aut voluptatem perspiciatis.</p><p>Laudantium cum qui quaerat sunt eligendi ut. Fugiat asperiores qui qui eveniet exercitationem doloribus cum. Autem ducimus id odit laborum nesciunt molestias. Magni id vitae aut praesentium eum iure asperiores quo.</p><p>Dolor est necessitatibus aut quia tenetur aspernatur. Enim veritatis fugit qui quos. Perferendis id porro dolores voluptate.</p><p>Assumenda est ea unde tempore omnis expedita deserunt. Vel natus dolores in consequatur dolore eaque. Sed ut nam at non quia natus nesciunt. Vel cumque alias id alias qui corrupti non.</p><p>Vel autem vel ut occaecati. Rem magnam beatae aut rerum natus iste. Deserunt ipsa aut accusamus quae possimus tempora.</p><p>Et explicabo laudantium voluptas quis possimus nam. Blanditiis quos voluptas eaque ut magni dicta eius.</p><p>Exercitationem laboriosam autem odio fugit. Voluptatem ullam sit saepe voluptas aspernatur. Quod dolores totam quaerat explicabo sint expedita beatae.</p><p>Sit sint voluptas autem odit sit. Error illum explicabo fugit quibusdam et officiis. Incidunt rerum quis ut molestiae. Laudantium saepe est quia debitis dolor est.</p><p>Optio unde facilis et quia exercitationem eos omnis sit. Autem amet dignissimos nam alias. Similique pariatur magni ut sed minima sint. Sequi nesciunt sapiente et quaerat non alias.</p><p>Consequatur earum voluptas sit et nostrum. Asperiores tempore atque mollitia. Et ut explicabo quia.</p><p>Aut ad quibusdam necessitatibus distinctio doloremque non consequatur et. Quis pariatur et accusantium eos. Exercitationem cumque distinctio eum non.</p><p>Non et ut atque quis sapiente dolores aut. Non veniam praesentium ea debitis dolorem. Sint repudiandae facilis eos soluta est qui. Voluptatem ut excepturi voluptatem ea maiores.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(8, 1, 3, 'Placeat delectus mollitia molestiae tempore possimus illo.', 'Quia eaque optio non tempore totam labore. Nobis voluptatem adipisci nisi. Ab sequi fugit sit voluptatibus iusto est. Impedit dolore dolor nulla pariatur nulla natus placeat.', 'dolorem-tenetur-blanditiis-dolorem-non-aut-beatae-hic', NULL, '<p>Qui tempora inventore perspiciatis sed fugit. Veniam iusto modi odio vel perferendis. Odio ab aut rerum totam fuga autem.</p><p>Dicta ullam nihil quam ratione. Voluptatem reiciendis sed vitae. Possimus deleniti vel quidem nesciunt maiores iusto cum.</p><p>Architecto saepe quos rerum eum facilis. Autem nemo qui magnam. Totam ratione delectus cupiditate voluptatem porro non eaque. Iste quia fugit architecto dolores ratione.</p><p>Est qui harum et consequuntur aut consectetur cupiditate. Quae inventore accusantium magnam repudiandae assumenda provident. Architecto corporis beatae tenetur iste debitis soluta. Minima dolor dolores et sed quam.</p><p>Eum cum non quibusdam in consequatur. Aliquid eveniet illo odit consequatur. Ut eum quod laborum iure minima at occaecati iure. Eius delectus quaerat explicabo voluptatem dolor.</p><p>Nemo voluptatem cum recusandae aut unde rerum. Atque qui eius ut unde voluptatem quia sit reiciendis. Maiores velit soluta id est ipsam.</p><p>Non quia quod dolore iusto omnis necessitatibus labore. Sit doloribus amet quo praesentium iste hic voluptas. Impedit quia quod qui. Voluptatibus ipsa officia est dolorem nisi quidem debitis.</p><p>Possimus ipsa sed sequi qui. Quia in perferendis sapiente iste. Distinctio ut enim sit nostrum ut.</p><p>Ducimus quae natus accusantium voluptatem dolor eaque est minus. Quae explicabo quis perferendis quibusdam cumque nisi.</p><p>Enim eum rerum unde aut. Ad et laudantium atque dignissimos. Commodi nihil reprehenderit alias eum fugiat eaque dignissimos rem. Et illo optio eveniet non non.</p><p>Quia laudantium voluptas veritatis eius sed. Voluptates laudantium sit cumque dolorum corrupti. Ex odio voluptatem corporis laborum.</p><p>Officia sequi optio corporis iusto dolores a quia. Ut corporis amet dolorem sequi aut voluptates ipsa. Omnis porro qui voluptatum vel aut at.</p><p>Totam reprehenderit dolorem molestiae. Quos ut sapiente et voluptas consequuntur minima sit. Ut eum nostrum consequuntur. Fugiat similique voluptas ad reiciendis laborum.</p><p>Aut quos quos accusamus ea et est non. Necessitatibus repellat quibusdam voluptas voluptates dolorem. Quidem repellat ut illum odio est. Nesciunt itaque vel error nostrum qui qui.</p><p>Sint mollitia voluptate unde dolorem id ea. Dolores aut sit quae. Necessitatibus repellendus alias ea est corrupti. Optio consequatur sit dignissimos quae in.</p><p>Ut fuga omnis incidunt autem qui dignissimos rerum. Enim non facilis exercitationem. Eum quo fuga quaerat rerum consequatur.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(9, 3, 2, 'Molestias qui minus sunt.', 'Molestias aut ratione quod. Nihil voluptates expedita sed omnis sit sunt eum. Harum illo ea sequi molestias occaecati impedit voluptatem.', 'praesentium-voluptas-accusamus-itaque-sit', NULL, '<p>Ea occaecati eum quo quidem suscipit necessitatibus est. Dolore voluptatem nihil ullam aut non. Maiores sit et aut omnis. Eos consequuntur laudantium fugiat aperiam. Accusamus rerum veniam vero sint ea tenetur.</p><p>Natus est non quidem nam et aut. Qui esse odio omnis sed commodi sequi maiores. Quibusdam vitae voluptate consequatur possimus sit quia. Recusandae non omnis fuga dolores beatae. Optio perferendis ad fuga nihil impedit.</p><p>Ipsum ut iure laborum aut sequi deserunt sed. Pariatur animi nostrum dolores autem velit debitis. Mollitia unde eveniet hic sed omnis.</p><p>Fugiat dolor ut tempora similique et. Magnam quo et voluptatem cumque nemo. Officia qui quo nemo voluptatem minima autem ipsa et.</p><p>Qui consequatur expedita consequatur adipisci consequatur quaerat. Labore tempora et ipsa dicta illo distinctio dicta. Deleniti quo dolorum et eveniet. Dolorem iure voluptatibus ut omnis.</p><p>Non animi exercitationem consequatur nisi. Et qui enim quasi amet quibusdam aut corporis. Hic esse quia ut est ratione est.</p><p>Iusto itaque et quidem quod. Aut nam sit repudiandae vero. Occaecati ex nisi ea cupiditate enim. Quaerat temporibus aut ratione dicta aut modi quo.</p><p>Nihil molestias non quis molestias sed. Non vel adipisci voluptatem maiores incidunt. Aut earum atque quia et perspiciatis. At est magni sit at.</p><p>Ad et qui saepe cupiditate sed eum occaecati illo. Aperiam velit distinctio totam debitis est. Autem quos dolorem deleniti quo id.</p><p>Delectus cum fugit delectus ut et aliquid. Quisquam cum autem sequi impedit architecto et. Cupiditate quisquam rerum placeat reiciendis iusto et minima illum.</p><p>Deleniti ducimus velit voluptatibus reiciendis quam. Dolores possimus doloribus amet nulla eveniet maiores voluptatibus. Possimus ut aut sed impedit quidem.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(11, 2, 3, 'Non sit nam beatae.', 'Et quia recusandae qui et voluptatem atque quasi accusantium. Occaecati laboriosam ullam perspiciatis nihil voluptas totam cupiditate. Qui iste et officiis officia ipsum.', 'ut-qui-dolore-omnis-delectus-quo', NULL, '<p>Et in amet repudiandae nobis ipsam. Ea nihil quia adipisci velit tempora. Deserunt est saepe ea.</p><p>Sunt doloribus perspiciatis rerum. Et cupiditate dolores magnam voluptatibus pariatur enim. In earum sed voluptatem est.</p><p>Ea et sapiente atque maxime consequatur nihil. Et deleniti sit fugiat mollitia iste voluptate sequi. Est id hic autem voluptatem voluptas. Esse rerum culpa qui minus sed sunt. Vitae hic nihil eveniet mollitia animi.</p><p>Enim fugiat consequuntur soluta hic labore hic. Et saepe non nihil dolor error. Voluptatem quasi amet ipsa et. Natus perferendis cum esse aut nihil aut.</p><p>Dignissimos est cumque quo. Mollitia odit quam qui repellat.</p><p>Vero veritatis recusandae omnis aut. Tempora ut maiores occaecati quia veritatis labore minus. Magnam quod doloribus ut excepturi aut sunt doloremque. Quis vel accusamus est officiis.</p><p>Ut non iste sint et aut voluptatem nesciunt. Nam minus enim laborum quibusdam. Ut amet tempora facere quasi eos sequi.</p><p>Eligendi aut sint possimus. Temporibus consequuntur ad non voluptas nihil dolores sit earum. Quasi quisquam ea dolorem accusantium ut illo.</p><p>Aut recusandae quas numquam laudantium corporis perferendis nobis sint. Adipisci autem assumenda et rerum. Deserunt natus similique sapiente ex.</p><p>Eum itaque sit consectetur animi itaque. Nemo voluptas suscipit in alias cum harum placeat minima. Autem ut iste iste perferendis necessitatibus consequatur et. Saepe esse quis qui ut voluptatem ullam iusto.</p><p>Molestiae id accusantium modi aspernatur quis culpa reprehenderit. Odio voluptatem quaerat et nemo hic. Facere libero qui maiores officia dicta.</p><p>Praesentium at dolore ducimus voluptas exercitationem ducimus mollitia in. Commodi eaque ea sunt est voluptas. Rerum soluta id quia qui nesciunt. Voluptas sint et velit soluta mollitia est quae.</p><p>Praesentium ipsam consectetur ea incidunt ea et deserunt. Minus quia fuga beatae maiores. Voluptatem dolorem est id molestiae.</p><p>Cum et ut possimus porro cum. Accusamus omnis cupiditate omnis ipsam possimus dolorem. Temporibus unde unde nesciunt et alias sunt nihil.</p><p>Iusto quae et tempore et officia debitis natus. Voluptas velit vitae ea facere sed unde et. Nihil minus placeat vitae harum. Nihil dolores sint est alias. Explicabo ea quia ipsum aliquid.</p><p>Laborum molestiae temporibus commodi autem. Voluptatem et laudantium explicabo voluptatum et aut. Id omnis voluptatem nihil quidem incidunt adipisci est.</p><p>Iure deleniti debitis harum consequatur. Impedit molestias incidunt perferendis nobis sequi repudiandae minus. Adipisci a reiciendis sint dignissimos. Aut unde nesciunt velit voluptas.</p><p>Optio qui quibusdam mollitia voluptatem. Earum vitae laboriosam hic explicabo fugiat ea ea aut. Eos ex asperiores eos aliquam illum.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(14, 1, 3, 'Rerum inventore nesciunt occaecati consequatur accusantium qui consequuntur saepe aut rerum.', 'Et molestiae aut repudiandae quasi. Maiores atque consequatur corrupti vero recusandae. Nihil a amet ut nulla commodi.', 'quidem-totam-consequuntur-modi-rerum', NULL, '<p>Fugiat corrupti asperiores error cumque laboriosam. Quia omnis dicta porro et consectetur. Nulla occaecati numquam eos voluptates. Necessitatibus nihil facere vel qui temporibus quos pariatur.</p><p>Et esse laborum sed ut quis. Enim tempore quam eveniet cumque fuga odio dolor. Sit omnis sequi quis mollitia.</p><p>Voluptas voluptatem sit quam eos. Distinctio inventore non nisi qui cupiditate numquam sunt. Ipsa numquam repudiandae officia enim laboriosam exercitationem. Illo nihil voluptas voluptatem neque. Hic dolor quia voluptatum ullam.</p><p>Dolor vel velit illo est qui dolorem laboriosam ut. Assumenda quia porro enim.</p><p>Est fugit doloremque accusantium perferendis dignissimos omnis atque. Quo consequatur quae et ullam at aspernatur. Voluptas voluptatem qui officiis laborum enim nihil sed distinctio. Temporibus inventore aliquam quia sunt et placeat.</p><p>Veniam consequatur enim fugiat debitis. Magnam consectetur totam qui quia magni ut. Nihil saepe quisquam doloremque hic quia fugit velit.</p><p>Hic enim odio unde. Quisquam repellendus voluptatem nemo consequuntur. Beatae voluptatum dolorum id vero vitae in sit asperiores. Tempora aut vitae consequatur in.</p><p>Velit beatae at perspiciatis quis. Id voluptatem quo deleniti sequi quia quasi illum. Tempora aut distinctio libero enim sit totam ut. Sint quia labore autem ab.</p><p>Blanditiis culpa et sunt minus. Necessitatibus magnam vel sed rerum fugit.</p><p>Eaque aperiam iure eaque temporibus qui repellendus voluptatum delectus. Harum eius molestiae facilis cum asperiores earum. Aut ratione aperiam fugiat est.</p><p>Nostrum deserunt ab tempora quos illo et consequuntur. Non dolorum soluta sed blanditiis.</p><p>Sequi labore aliquam possimus facere dolor cumque. Asperiores fugiat eveniet qui necessitatibus. Dolores est alias et rerum. At enim debitis rerum error.</p><p>Aliquid facilis ea maxime expedita incidunt. Fuga est pariatur temporibus corrupti aut.</p><p>Maxime temporibus sapiente excepturi aliquam reiciendis. Ullam nostrum maxime fuga harum facilis aut quidem. Eius non voluptatem velit quod distinctio nam illum. Quod excepturi ut magni voluptas est a.</p><p>Suscipit dolor ipsa sint blanditiis dolorem quod sed. Illo sed natus deleniti inventore sint. Vel debitis cumque et excepturi consequatur aliquam iusto. Voluptate incidunt a quidem unde veritatis quisquam.</p><p>Nihil numquam reprehenderit occaecati dolorum ea. Rem explicabo sapiente aliquam non inventore ea. Culpa sit non earum ut soluta.</p><p>Esse itaque error nobis ut. Est consequatur repellendus accusamus vitae qui explicabo aut. Repellendus quae aut voluptatem ex. Iure est quo voluptatum excepturi voluptates minima.</p><p>Itaque provident dolorem soluta sed tempora ad cupiditate. Omnis sed molestias quos numquam. Nisi illo libero modi aperiam. Praesentium aliquam repellat deleniti impedit.</p><p>Placeat nulla ratione reiciendis non doloremque autem. Aperiam non eum quas facere nulla. Ut quasi est aut molestias quod dolorem consequatur beatae.</p><p>Totam commodi minima molestiae autem necessitatibus dolor doloribus error. Ea qui quidem quis enim magni. Animi perspiciatis et at iste sint veniam molestias quos. Quis doloremque fuga blanditiis officia nisi blanditiis enim natus.</p><p>Et in provident officia consequatur. Eius blanditiis est quasi dolores dolor iusto corporis. Maxime dolores eaque nam laboriosam delectus aliquam quasi. Magni qui similique provident dicta voluptas adipisci.</p><p>Facilis vel possimus aut. Delectus deleniti voluptatem id sequi hic. Consectetur magnam omnis quasi. Sit et id ipsam molestiae quibusdam.</p><p>Eligendi explicabo atque praesentium architecto quis. Iste rerum eum qui quos iste eaque non. Quia dolores molestiae voluptatem corrupti incidunt eum minus sunt.</p><p>Non voluptatem et sunt ullam sed velit consequuntur. Voluptatem asperiores maiores ut aut consequatur sed dolores. Aliquid aut minus eum reiciendis atque et. Explicabo voluptatem sunt exercitationem.</p><p>Enim voluptatem excepturi suscipit error molestias. Aut voluptas quidem eum ex earum commodi. Omnis dicta laborum sit consequatur aspernatur in. Inventore inventore accusamus mollitia iste quos repudiandae inventore voluptatem.</p><p>Enim omnis et porro id. Minus modi qui quaerat. Eum error aliquid dignissimos eaque similique dolorem.</p><p>Odio porro natus nihil. Unde quae ut voluptatem labore laborum et. Accusantium laborum eos ut minus asperiores ut nostrum. Eveniet dolorum quis similique et molestiae amet.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(16, 2, 3, 'Explicabo quam qui quaerat non.', 'Quam enim consequuntur et aut non et. Iste ullam sed ipsa beatae occaecati itaque. Hic voluptatem doloremque aliquam veritatis nulla quam ea. Maiores aut saepe accusantium eaque veritatis.', 'laboriosam-beatae-sit-quos-rerum', NULL, '<p>Alias illo qui sunt suscipit non. Velit cumque eius nemo ullam praesentium dignissimos sint blanditiis. Temporibus et quo voluptas quas. Earum ut ut aspernatur iste aut tenetur error harum.</p><p>Minima at corporis qui quis. Incidunt incidunt nesciunt voluptates ab impedit et. Maiores quis rem minus eum. At est eveniet maiores ab voluptatum doloribus sed. Accusantium sapiente autem nihil reiciendis.</p><p>Debitis dolor quibusdam excepturi rem et rerum rerum. Consequatur iste reiciendis quis qui. Distinctio molestias quas explicabo. Rem dolor mollitia ipsa distinctio a expedita qui a.</p><p>Quam mollitia dignissimos inventore consectetur incidunt. Sed alias amet quia autem eos ipsum. Nobis ea animi non eos pariatur et.</p><p>Et ut magni velit maiores repellat. Consequatur minus et blanditiis quia dolores cumque. Quibusdam perspiciatis esse quo.</p><p>Sint esse nostrum omnis odit. Incidunt excepturi ratione consequuntur voluptatem eius numquam quo. Nam ipsam similique sed adipisci autem. Quo culpa iusto facilis recusandae facilis earum rem illo.</p><p>Sunt nostrum quo est accusamus. Incidunt officiis consequuntur placeat.</p><p>Dolor est aut delectus tenetur earum natus dolor. Eaque iusto qui aut non ut. Delectus doloribus tenetur officia sit voluptate officiis.</p><p>Blanditiis quia corporis sint et. Voluptatem fugiat sunt deserunt voluptatem amet non quia velit. Rerum enim dolorum quo et.</p><p>Totam veritatis debitis sint sunt eum id. Rem enim qui repellat aut aperiam tempore ducimus. Dolores aliquid et non distinctio magni. Consequatur nihil nisi est ut repellat fugiat.</p><p>Sed tenetur dignissimos et est officiis. Cumque nobis molestias corporis provident.</p><p>Voluptatem cum temporibus voluptatem doloremque aut provident. Ut ad dicta delectus et. Quia iste voluptate laborum ratione.</p><p>Ut voluptatibus in vel. Qui quas dolores consequatur sint voluptas eum voluptas. Reiciendis rerum in fugit non incidunt explicabo. Ipsum facilis nostrum ratione non quos. Velit ipsam natus ab praesentium nesciunt aspernatur.</p><p>Magni quaerat suscipit corporis et autem. Corporis consequatur totam blanditiis soluta reiciendis voluptas suscipit. Aut tenetur quasi et cupiditate qui animi voluptatem.</p><p>Corrupti ut iste et tempore ea omnis in eum. Reprehenderit sint sit quae consequatur ex. Id aspernatur consequatur blanditiis eos sed. Ut distinctio quis esse tempora aspernatur.</p><p>Ut quo hic eveniet aspernatur eos blanditiis sed. Sapiente voluptatem non harum asperiores. Eos nam qui iure in architecto quos in. Nulla aperiam provident nostrum laborum illum. Animi dignissimos eligendi praesentium perferendis ratione sunt accusantium.</p><p>Vel temporibus ea sit ut ex et nihil. Et qui laudantium est et. Error est explicabo aut facere et.</p><p>Numquam quaerat rem sed et cum voluptatem quis impedit. Animi at nihil praesentium commodi. Voluptas velit officia ipsam accusamus adipisci rem ut. Doloremque laboriosam explicabo praesentium sit.</p><p>Neque quae deserunt et. Vitae autem sequi et repellendus eaque sit.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(18, 1, 3, 'Aut dolor.', 'Occaecati ducimus incidunt tenetur ducimus expedita in. Quia deserunt animi eveniet expedita et officiis eum. Alias rerum in amet vel. Repudiandae enim repudiandae distinctio error omnis amet quia. Officiis facere unde quibusdam aut sunt.', 'rerum-laboriosam-impedit-aut-dolorem-qui-nam-dicta-iusto', NULL, '<p>Esse quaerat aut architecto aut quisquam eius. Porro expedita facilis cumque eaque quis repellendus nesciunt. Cupiditate consequuntur quidem reiciendis qui optio. Exercitationem id praesentium illo ut fuga.</p><p>Quis saepe perferendis cum officia labore consequatur. Voluptate ex ea est delectus aliquam. Delectus dolorem cupiditate est dolor architecto molestiae. Officia sed perspiciatis quia et itaque laboriosam accusantium. Vero dolores rerum autem in ipsum repudiandae.</p><p>Nemo ab veritatis impedit molestiae. Quo occaecati aperiam quos tempore. Labore tempora eum ipsum.</p><p>Ut sunt expedita repellat eos voluptatem cum totam. Consequatur fuga hic quia labore. Quibusdam pariatur mollitia qui sit quia quisquam non.</p><p>Perferendis natus ut sit iste officiis culpa nesciunt. Animi ipsam molestiae ipsum voluptatum. Optio quia quos dolor omnis voluptate.</p><p>Alias eos rerum fugiat rerum voluptas atque excepturi libero. Corporis quis aut earum. Ad optio mollitia neque qui explicabo. Cumque labore excepturi similique impedit velit maxime ducimus.</p><p>Officiis aut laudantium ab quam. At dicta deserunt ullam est voluptatem officiis. Perspiciatis cupiditate voluptate hic quibusdam. Id ipsam ipsa ratione placeat.</p><p>Culpa delectus quo sint labore totam et eaque. In ad porro consequatur consectetur molestias voluptatum laborum fuga. Eos architecto voluptas voluptatum fugit quis et. Aut consequatur ut autem aliquam nostrum dolor cupiditate fugit.</p><p>Inventore enim enim facilis autem. Quod adipisci voluptate reiciendis cum repudiandae quis. Voluptatem eius unde ducimus.</p><p>Quia quasi excepturi quasi temporibus inventore. Quo voluptatem et fugiat sit minima officiis sed.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(19, 1, 2, 'Incidunt ea commodi delectus quas odit hic.', 'Qui laborum sint incidunt dolor. Qui est quisquam ut dolor maxime. Similique nostrum voluptatem expedita sit aut vitae animi. Est autem magnam aut dicta incidunt est.', 'sunt-reprehenderit-et-ab-non-quaerat-tenetur-natus', NULL, '<p>Voluptas suscipit minima eius porro similique sint consequatur aut. At minus aperiam nesciunt dolores perspiciatis perferendis alias. Odit quas odio dolore iure. Sint eum quidem id veniam.</p><p>Unde nobis eos velit distinctio libero. Fuga totam fuga magnam. Minus itaque velit aut. Magnam praesentium et enim sit. Tenetur maiores dolor vero qui est eum esse.</p><p>Eos aut omnis reiciendis consequatur commodi sed accusantium. Inventore sit aut nesciunt in quidem sint est praesentium. Quia quod voluptatibus ut libero. Culpa perferendis quod porro itaque omnis est aut.</p><p>Quo hic nemo ut ut aut. Est aperiam aut et excepturi. Fuga sit dolorum nihil voluptas laborum.</p><p>Fuga ab itaque ipsum sit quis aut esse. Soluta ullam quo deserunt quae fuga. Suscipit quam provident labore illum corrupti consequatur.</p><p>Velit fugiat molestiae voluptatem est enim. Blanditiis necessitatibus expedita reiciendis quaerat qui sint fugiat molestiae.</p><p>Qui eos nihil eum mollitia. Sunt et omnis porro vero voluptatem.</p><p>Voluptatum quas architecto ut. Explicabo sit similique soluta dignissimos ducimus et harum. Quidem enim quia fugit qui. Cumque rem error nam tempore quia.</p><p>Officia dolorem necessitatibus voluptates voluptas distinctio omnis. Qui molestias exercitationem quibusdam. Eos aliquam est minima doloremque sit ut.</p><p>Dolore vel qui architecto quisquam est accusamus. Beatae officia officia tempore. Voluptas ut impedit quod rem aut.</p><p>Vero quo temporibus harum fugit. Nisi totam vero est culpa est quidem alias. Molestiae molestiae praesentium dolorum dolore cumque labore voluptas. Et vitae quos voluptatem quos corporis repudiandae.</p><p>Id placeat quod asperiores voluptates iste at. Delectus qui pariatur qui aut explicabo. Saepe ut eius est officiis velit dolorem.</p><p>Facilis soluta cum voluptas et voluptatem id fugit. Aut ut voluptatem iste. Voluptate accusamus ullam enim necessitatibus sed culpa aut. Porro molestias deserunt est in corporis aperiam aperiam. Eos molestiae architecto accusamus voluptatem ea voluptatem sed.</p><p>Dolores quos voluptatibus est placeat molestias ad voluptas. Nemo officia quae recusandae ut consequuntur. Nostrum quia quia aut eos dolores. Qui laboriosam reprehenderit quibusdam odio natus voluptas itaque.</p><p>Officiis quos velit voluptas. Autem fugiat quia modi et odit. Aliquid ut aut est dolores vel facilis id.</p><p>Id beatae unde quis enim quisquam suscipit aut. Reprehenderit debitis soluta repellendus qui. Laboriosam quo nulla aliquam iusto et nihil.</p><p>Sint provident quaerat aut dolorum ut in reiciendis. Corrupti labore nostrum corporis suscipit qui vel itaque. Nesciunt iure consequuntur ut ratione ea voluptas alias.</p><p>Numquam voluptate quia iure dolorum et consequuntur sapiente. Optio est voluptatum vero veniam. Iste quidem quia nesciunt suscipit ea. Est quia et explicabo.</p><p>Ex dolorem consequuntur est et provident aspernatur ullam. Fugiat minima sed quis similique assumenda. Accusamus et et aliquam quisquam. Asperiores sint in mollitia mollitia aut cum voluptatem.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(20, 1, 3, 'Recusandae deleniti laboriosam quas similique ab aut quae illo optio.', 'Eveniet beatae nostrum tenetur beatae molestiae. Rerum ad soluta ab. Sit exercitationem enim quia. Expedita at tempore voluptates.', 'natus-facere-qui-atque', NULL, '<p>Iure molestias sit aliquid quasi sed est. Et repellat similique consequatur molestias. Vel perspiciatis nihil optio explicabo. Beatae iure tempora rem asperiores.</p><p>Nisi eius sint voluptas necessitatibus libero expedita. Natus omnis repudiandae amet accusamus qui. Ducimus sunt aut hic voluptatem perspiciatis.</p><p>Ex necessitatibus suscipit eum sed. Repellat doloremque magnam numquam unde nesciunt. Est rerum suscipit tempore sint aut nulla. Nesciunt possimus quo ut dolore error recusandae quam.</p><p>A impedit molestiae reprehenderit. Facilis repellat qui corrupti laudantium. Sint voluptatem est et voluptatem dolor. Nihil nihil occaecati nam sed aut asperiores sit.</p><p>Totam laudantium ut sint. Unde voluptas est hic ducimus officia minus. Id architecto corporis et sint occaecati.</p><p>Accusamus quaerat sit eligendi aliquid corrupti. Omnis nam laboriosam sed nulla mollitia temporibus perspiciatis vero. Reprehenderit est iure voluptas aliquid dicta et odio. Neque voluptas hic commodi magni.</p><p>Voluptatum itaque enim doloribus vero dolorem quod. Et sed et neque illum ipsam. Fugiat voluptas et qui est.</p><p>Magnam aut est molestiae porro sit. Inventore dolorem soluta ad placeat enim. Sapiente autem rerum est perferendis mollitia est ex molestias.</p><p>Laboriosam est quis soluta labore ad. Modi perspiciatis provident harum facere earum corporis. Autem illum corporis veritatis perspiciatis est.</p><p>Dignissimos voluptatem rerum sint. Quaerat sit deleniti aliquid. Nulla officiis tenetur eos dicta blanditiis est et. Quod in qui est maxime nostrum quia.</p><p>Veritatis velit velit necessitatibus et omnis exercitationem. Illum numquam et porro enim facilis. Eaque sit soluta sequi ad nulla.</p><p>Placeat explicabo quidem quisquam suscipit nam. Nostrum quaerat repellendus rem. Eum aspernatur quo pariatur assumenda nisi. Architecto dolore error reiciendis in sit optio odio enim.</p><p>Sint quis quod ut animi. Distinctio magnam voluptatem perferendis quos ut et. Dolor vero atque corporis adipisci. Perferendis recusandae quos eligendi. Nihil voluptatem perspiciatis culpa commodi illum.</p><p>Quod sapiente ea et rem itaque. Aut qui ut corrupti soluta pariatur eum. Et distinctio laborum nesciunt aliquam error iste inventore.</p><p>Corrupti veritatis nulla omnis ratione nobis qui quod. Dolor soluta totam ut possimus. Temporibus asperiores aliquid et ut ex inventore. Ut non fugit quo impedit rem sunt cupiditate.</p><p>Vel delectus esse quaerat quam et autem architecto. Maxime omnis aspernatur quae sit quaerat. Et ex nam ut et. Nulla totam dolores dolorem.</p><p>Possimus saepe molestias est quas. Necessitatibus dolore commodi eligendi voluptas molestiae natus sint.</p><p>Id placeat praesentium molestiae quis consequatur. Porro molestias autem ipsa odit nemo. Placeat natus consequatur ipsum voluptates ipsum beatae nostrum. Incidunt aut quibusdam qui impedit. Quam aut fugit nobis tempora placeat.</p><p>Qui fugiat aut vel qui ut. Aut placeat ad quibusdam cupiditate. Quidem omnis sint facere occaecati.</p><p>Totam non et vitae omnis. Accusamus ullam dolore soluta enim. Sequi rerum eum libero tempore quas sint.</p><p>Quo consequatur et sint et. Neque maxime omnis aut nam. Ipsum nostrum recusandae esse corrupti numquam modi ea nemo.</p><p>Amet placeat placeat adipisci veniam excepturi sunt magnam. Consequatur error non et ipsa dolorem est sit illum. Corrupti rerum ut voluptatem quia temporibus corporis.</p><p>Nulla odit iusto sed sint. Tempore velit dolorem in autem corrupti dolor. Id ea nemo nulla repellat similique.</p><p>Accusamus quia et non cupiditate ut sit voluptatem. Rerum velit vel voluptas tempora animi id. Sint non eligendi et iste.</p><p>Velit velit velit eos aut voluptate occaecati dolore. Et porro omnis consectetur dicta debitis perspiciatis. Est dolor ab magnam qui magni commodi. Praesentium accusamus nulla ad inventore et.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(24, 3, 3, 'aku adalah', 'aku&nbsp;', 'aku-adalah', 'post-images/QYF4AHy8gGpBWUc9StJpVVbbKZx4qNsFNDSwEBsx.jpg', '<div>aku&nbsp;</div>', NULL, '2023-10-16 20:07:32', '2023-10-16 20:07:32'),
(25, 8, 3, 'mau apa', 'aaaaa', 'mau-apa', 'post-images/vo62OLZK2nouicFR3B850NXGDOpIk5DYL9RTot3U.webp', '<div>aaaaa</div>', NULL, '2023-10-16 20:14:51', '2023-10-16 20:14:51'),
(26, 8, 3, 'akauaud ada', 'fsfsf', 'akauaud-ada', 'post-images/Kl2wVNy03YJG4QTYHvbVVIwqPpupEQYsBcWmJdRK.webp', '<div>fsfsf</div>', NULL, '2023-10-16 20:15:46', '2023-10-16 20:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `image_profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `image_profile`) VALUES
(2, 'Indra Firmansyah M.TI.', 'wnajmudin', 'hendri.andriani@example.net', '2023-10-11 13:46:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kMf7EX2eKkjmu9yPQm9EdQFSS8EzaMEhDWLKXOBkxV67Gvbd2tdTzx46cVBc', '2023-10-11 06:46:43', '2023-10-11 06:46:43', 0, 'profile.jpg'),
(3, 'Rafli Rifaldi', 'rafli', 'rafli12@gmail.com', '2023-10-11 13:46:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dXwrtFVBBuEBXZ0DUztduNaXFnlNPfLpB5MuLqYEikgdq02EWbpJdz9DZJfz', '2023-10-11 06:46:43', '2023-10-11 06:46:43', 1, 'profile.jpg'),
(4, 'Rafli Rifaldi', 'rafliRifaldi', 'rafli@gmail.com', NULL, '$2y$10$XpAW2p3yo5G61oKus6BBb.5QREY7k9J4M3Hbd1IZ9/mlfakvQvdBG', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43', 0, 'profile.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
