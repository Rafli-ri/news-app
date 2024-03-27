-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2024 at 02:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.4

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
(8, 'Data Science', 'frontend-developer', '2023-10-17 18:19:34', '2023-10-17 18:31:55', 'bx bx-image'),
(9, 'Artificial Intelligence', 'artificial-inteligence', '2024-03-26 06:51:18', '2024-03-26 06:55:32', NULL);

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
(1, 2, 3, 'Apa Itu Web Programing', 'Web programming, juga dikenal sebagai pengembangan web, merupakan proses pembuatan dan pemeliharaan aplikasi web yang berjalan di internet.Ini melibatkan penggunaan berbagai bahasa pemrograman, teknol...', 'apa-itu-web-programing', NULL, '<div>Web programming, juga dikenal sebagai pengembangan web, merupakan proses pembuatan dan pemeliharaan aplikasi web yang berjalan di internet.Ini melibatkan penggunaan berbagai bahasa pemrograman, teknologi, dan alat untuk menciptakan situs web dan aplikasi web yang fungsional dan menarik.Bahasa pemrograman utama yang digunakan dalam web programming termasuk HTML, CSS, dan JavaScript, yang membentuk dasar dari halaman web modern.Selain itu, kerangka kerja seperti React, Angular, dan Vue.js digunakan untuk mempercepat pengembangan dan meningkatkan kinerja aplikasi web.<br><br>Dalam proses pengembangan web, penting untuk memperhatikan prinsip-prinsip desain web responsif untuk memastikan situs dapat diakses dan digunakan dengan baik di berbagai perangkat dan layar.<br>Keamanan juga menjadi perhatian utama dalam pengembangan web, dengan praktik-praktik seperti enkripsi data, perlindungan terhadap serangan cyber, dan manajemen keamanan yang ketat diterapkan.<br>Selain itu, aspek UX (User Experience) juga penting dalam pengembangan web untuk memastikan pengalaman pengguna yang positif dan memuaskan.Selama bertahun-tahun, web programming telah berkembang pesat dengan adopsi teknologi baru seperti PWA (Progressive Web Apps), AI (Artificial Intelligence), dan AR/VR (Augmented Reality/Virtual Reality).<br><br>Penerapan teknologi ini telah memungkinkan pengembang untuk menciptakan pengalaman web yang lebih interaktif, responsif, dan memikat.Salah satu tren terbaru dalam web programming adalah JAMstack, yang menawarkan pendekatan modern untuk pengembangan situs web yang cepat, aman, dan mudah dikelola.Selain itu, konsep seperti serverless computing dan headless CMS juga semakin populer dalam pengembangan web.Pendidikan dan pelatihan dalam bidang web programming semakin diminati, dengan banyak program kursus dan sertifikasi yang tersedia secara online.Perkembangan teknologi dan peningkatan permintaan akan aplikasi web yang inovatif menjanjikan prospek karir yang cerah bagi para profesional web programmer.<br><br>Dengan terus berkembangnya internet dan perangkat digital, web programming diharapkan akan tetap menjadi salah satu bidang yang paling penting dan berkembang dalam industri teknologi.<br>Oleh karena itu, penting bagi para pengembang web untuk terus memperbarui keterampilan mereka dan tetap up-to-date dengan perkembangan terbaru dalam industri.</div>', NULL, '2023-10-11 06:46:43', '2024-03-26 19:24:36'),
(8, 2, 3, 'Dasar-dasar pemrograman web', 'Dasar-dasar Pemrograman Web: Memulai Perjalanan Anda Menuju Pembuatan Situs WebPemrograman web adalah kunci untuk membangun situs web yang interaktif dan dinamis di internet. Artikel ini akan membahas...', 'dolorem-tenetur-blanditiis-dolorem-non-aut-beatae-hic', NULL, '<div><strong>Dasar-dasar Pemrograman Web: Memulai Perjalanan Anda Menuju Pembuatan Situs Web<br><br></strong>Pemrograman web adalah kunci untuk membangun situs web yang interaktif dan dinamis di internet. Artikel ini akan membahas dasar-dasar pemrograman web serta menyajikan contoh kode untuk membantu Anda memulai.<br><br></div><ol><li><strong>HTML (HyperText Markup Language)</strong>: HTML adalah bahasa markup yang digunakan untuk membuat struktur dan konten dasar sebuah halaman web. Berikut adalah contoh kode HTML untuk membuat elemen dasar sebuah halaman web:</li></ol><pre>&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n    &lt;title&gt;Contoh Halaman Web&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Selamat Datang di Situs Web Saya!&lt;/h1&gt;\r\n    &lt;p&gt;Ini adalah contoh paragraf.&lt;/p&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;<br></pre><div><br></div><ol><li><strong>CSS (Cascading Style Sheets)</strong>: CSS digunakan untuk mempercantik tampilan situs web dengan menambahkan gaya dan desain. Berikut adalah contoh kode CSS untuk memberi gaya pada elemen yang ada di halaman web:</li></ol><pre>body {\r\n    font-family: Arial, sans-serif;\r\n    background-color: #f0f0f0;\r\n}\r\n\r\nh1 {\r\n    color: #333;\r\n}\r\n\r\np {\r\n    color: #666;\r\n}</pre><ol><li><strong>JavaScript</strong>: JavaScript adalah bahasa pemrograman yang digunakan untuk membuat situs web menjadi interaktif. Berikut adalah contoh kode JavaScript yang digunakan untuk memberi efek interaktif pada halaman web:</li></ol><pre>document.addEventListener(\'DOMContentLoaded\', function() {\r\n    var header = document.querySelector(\'h1\');\r\n    header.addEventListener(\'click\', function() {\r\n        alert(\'Anda mengklik judul halaman!\');\r\n    });\r\n});</pre><div>Dengan memahami dasar-dasar pemrograman web seperti HTML, CSS, JavaScript, dan Bootstrap, Anda dapat memulai perjalanan Anda dalam membangun situs web yang menarik dan fungsional. Semoga artikel ini memberi Anda pemahaman yang lebih baik tentang dunia pemrograman web!</div>', NULL, '2023-10-11 06:46:43', '2024-03-26 19:29:11'),
(9, 3, 3, 'Memahami Pentingnya UI/UX Design dalam Pembangunan Situs Web dan Aplikasi', 'UI/UX Design (User Interface/User Experience Design) adalah aspek penting dalam pengembangan situs web dan aplikasi yang tidak boleh diabaikan. Artikel ini akan menjelaskan mengapa UI/UX Design sangat...', 'memahami-pentingnya-ui-ux-design-dalam-pembangunan-situs-web-dan-aplikasi', NULL, '<div>UI/UX Design (User Interface/User Experience Design) adalah aspek penting dalam pengembangan situs web dan aplikasi yang tidak boleh diabaikan. Artikel ini akan menjelaskan mengapa UI/UX Design sangat penting dan bagaimana ia memengaruhi pengalaman pengguna.<br><br></div><ol><li><strong>Apa itu UI/UX Design?</strong>: UI merujuk pada tampilan visual dari situs web atau aplikasi, sementara UX merujuk pada pengalaman pengguna secara keseluruhan saat menggunakan produk tersebut. UI/UX Design adalah tentang menciptakan antarmuka yang mudah digunakan dan menarik untuk pengguna.</li><li><strong>Pentingnya UI/UX Design</strong>: UI/UX Design sangat penting karena:<ul><li><strong>Meningkatkan Kepuasan Pengguna</strong>: Desain yang baik meningkatkan kemudahan penggunaan dan kepuasan pengguna.</li><li><strong>Meningkatkan Retensi Pengguna</strong>: Pengalaman pengguna yang baik membuat pengguna cenderung kembali menggunakan situs web atau aplikasi.</li><li><strong>Membangun Citra Merek yang Kuat</strong>: Desain yang menarik memperkuat citra merek dan menciptakan kesan positif pada pengguna.</li><li><strong>Meningkatkan Konversi</strong>: Desain yang baik dapat meningkatkan konversi pengguna menjadi pelanggan atau pengguna berlangganan.</li></ul></li><li><strong>Prinsip-prinsip UI/UX Design</strong>: Beberapa prinsip dasar dalam UI/UX Design meliputi:<ul><li><strong>Keterpaduan</strong>: Desain harus konsisten di seluruh situs web atau aplikasi.</li><li><strong>Keterbacaan</strong>: Teks harus mudah dibaca dan dimengerti.</li><li><strong>Navigasi yang Intuitif</strong>: Pengguna harus dapat dengan mudah menavigasi situs web atau aplikasi tanpa bingung.</li><li><strong>Responsif</strong>: Desain harus responsif dan dapat beradaptasi dengan berbagai perangkat dan ukuran layar.</li></ul></li><li><strong>Alat dan Teknik UI/UX Design</strong>: Ada banyak alat dan teknik yang digunakan dalam UI/UX Design, termasuk:<ul><li><strong>Wireframing</strong>: Membuat kerangka dasar situs web atau aplikasi.</li><li><strong>Prototyping</strong>: Membuat prototipe interaktif untuk menguji desain sebelum implementasi.</li><li><strong>A/B Testing</strong>: Menguji dua versi desain untuk melihat mana yang lebih efektif.</li></ul></li><li><strong>Tren dalam UI/UX Design</strong>: Beberapa tren terbaru dalam UI/UX Design termasuk:<ul><li><strong>Desain Minimalis</strong>: Menghilangkan elemen yang tidak perlu untuk memfokuskan perhatian pada yang penting.</li><li><strong>Animasi Subtansial</strong>: Penggunaan animasi untuk meningkatkan interaktivitas dan memberikan umpan balik visual kepada pengguna.</li><li><strong>Tema Gelap</strong>: Desain dengan latar belakang gelap yang semakin populer karena peningkatan kenyamanan dan peningkatan kontras.</li></ul></li></ol><div><br>Dengan memahami pentingnya UI/UX Design dan menerapkan prinsip-prinsip desain yang baik, pengembang dapat menciptakan pengalaman pengguna yang memuaskan dan membangun produk yang sukses.</div>', NULL, '2023-10-11 06:46:43', '2024-03-26 19:34:52'),
(11, 2, 3, 'Non sit nam beatae.', 'Et quia recusandae qui et voluptatem atque quasi accusantium. Occaecati laboriosam ullam perspiciatis nihil voluptas totam cupiditate. Qui iste et officiis officia ipsum.', 'ut-qui-dolore-omnis-delectus-quo', NULL, '<p>Et in amet repudiandae nobis ipsam. Ea nihil quia adipisci velit tempora. Deserunt est saepe ea.</p><p>Sunt doloribus perspiciatis rerum. Et cupiditate dolores magnam voluptatibus pariatur enim. In earum sed voluptatem est.</p><p>Ea et sapiente atque maxime consequatur nihil. Et deleniti sit fugiat mollitia iste voluptate sequi. Est id hic autem voluptatem voluptas. Esse rerum culpa qui minus sed sunt. Vitae hic nihil eveniet mollitia animi.</p><p>Enim fugiat consequuntur soluta hic labore hic. Et saepe non nihil dolor error. Voluptatem quasi amet ipsa et. Natus perferendis cum esse aut nihil aut.</p><p>Dignissimos est cumque quo. Mollitia odit quam qui repellat.</p><p>Vero veritatis recusandae omnis aut. Tempora ut maiores occaecati quia veritatis labore minus. Magnam quod doloribus ut excepturi aut sunt doloremque. Quis vel accusamus est officiis.</p><p>Ut non iste sint et aut voluptatem nesciunt. Nam minus enim laborum quibusdam. Ut amet tempora facere quasi eos sequi.</p><p>Eligendi aut sint possimus. Temporibus consequuntur ad non voluptas nihil dolores sit earum. Quasi quisquam ea dolorem accusantium ut illo.</p><p>Aut recusandae quas numquam laudantium corporis perferendis nobis sint. Adipisci autem assumenda et rerum. Deserunt natus similique sapiente ex.</p><p>Eum itaque sit consectetur animi itaque. Nemo voluptas suscipit in alias cum harum placeat minima. Autem ut iste iste perferendis necessitatibus consequatur et. Saepe esse quis qui ut voluptatem ullam iusto.</p><p>Molestiae id accusantium modi aspernatur quis culpa reprehenderit. Odio voluptatem quaerat et nemo hic. Facere libero qui maiores officia dicta.</p><p>Praesentium at dolore ducimus voluptas exercitationem ducimus mollitia in. Commodi eaque ea sunt est voluptas. Rerum soluta id quia qui nesciunt. Voluptas sint et velit soluta mollitia est quae.</p><p>Praesentium ipsam consectetur ea incidunt ea et deserunt. Minus quia fuga beatae maiores. Voluptatem dolorem est id molestiae.</p><p>Cum et ut possimus porro cum. Accusamus omnis cupiditate omnis ipsam possimus dolorem. Temporibus unde unde nesciunt et alias sunt nihil.</p><p>Iusto quae et tempore et officia debitis natus. Voluptas velit vitae ea facere sed unde et. Nihil minus placeat vitae harum. Nihil dolores sint est alias. Explicabo ea quia ipsum aliquid.</p><p>Laborum molestiae temporibus commodi autem. Voluptatem et laudantium explicabo voluptatum et aut. Id omnis voluptatem nihil quidem incidunt adipisci est.</p><p>Iure deleniti debitis harum consequatur. Impedit molestias incidunt perferendis nobis sequi repudiandae minus. Adipisci a reiciendis sint dignissimos. Aut unde nesciunt velit voluptas.</p><p>Optio qui quibusdam mollitia voluptatem. Earum vitae laboriosam hic explicabo fugiat ea ea aut. Eos ex asperiores eos aliquam illum.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(16, 2, 3, 'Explicabo quam qui quaerat non.', 'Quam enim consequuntur et aut non et. Iste ullam sed ipsa beatae occaecati itaque. Hic voluptatem doloremque aliquam veritatis nulla quam ea. Maiores aut saepe accusantium eaque veritatis.', 'laboriosam-beatae-sit-quos-rerum', NULL, '<p>Alias illo qui sunt suscipit non. Velit cumque eius nemo ullam praesentium dignissimos sint blanditiis. Temporibus et quo voluptas quas. Earum ut ut aspernatur iste aut tenetur error harum.</p><p>Minima at corporis qui quis. Incidunt incidunt nesciunt voluptates ab impedit et. Maiores quis rem minus eum. At est eveniet maiores ab voluptatum doloribus sed. Accusantium sapiente autem nihil reiciendis.</p><p>Debitis dolor quibusdam excepturi rem et rerum rerum. Consequatur iste reiciendis quis qui. Distinctio molestias quas explicabo. Rem dolor mollitia ipsa distinctio a expedita qui a.</p><p>Quam mollitia dignissimos inventore consectetur incidunt. Sed alias amet quia autem eos ipsum. Nobis ea animi non eos pariatur et.</p><p>Et ut magni velit maiores repellat. Consequatur minus et blanditiis quia dolores cumque. Quibusdam perspiciatis esse quo.</p><p>Sint esse nostrum omnis odit. Incidunt excepturi ratione consequuntur voluptatem eius numquam quo. Nam ipsam similique sed adipisci autem. Quo culpa iusto facilis recusandae facilis earum rem illo.</p><p>Sunt nostrum quo est accusamus. Incidunt officiis consequuntur placeat.</p><p>Dolor est aut delectus tenetur earum natus dolor. Eaque iusto qui aut non ut. Delectus doloribus tenetur officia sit voluptate officiis.</p><p>Blanditiis quia corporis sint et. Voluptatem fugiat sunt deserunt voluptatem amet non quia velit. Rerum enim dolorum quo et.</p><p>Totam veritatis debitis sint sunt eum id. Rem enim qui repellat aut aperiam tempore ducimus. Dolores aliquid et non distinctio magni. Consequatur nihil nisi est ut repellat fugiat.</p><p>Sed tenetur dignissimos et est officiis. Cumque nobis molestias corporis provident.</p><p>Voluptatem cum temporibus voluptatem doloremque aut provident. Ut ad dicta delectus et. Quia iste voluptate laborum ratione.</p><p>Ut voluptatibus in vel. Qui quas dolores consequatur sint voluptas eum voluptas. Reiciendis rerum in fugit non incidunt explicabo. Ipsum facilis nostrum ratione non quos. Velit ipsam natus ab praesentium nesciunt aspernatur.</p><p>Magni quaerat suscipit corporis et autem. Corporis consequatur totam blanditiis soluta reiciendis voluptas suscipit. Aut tenetur quasi et cupiditate qui animi voluptatem.</p><p>Corrupti ut iste et tempore ea omnis in eum. Reprehenderit sint sit quae consequatur ex. Id aspernatur consequatur blanditiis eos sed. Ut distinctio quis esse tempora aspernatur.</p><p>Ut quo hic eveniet aspernatur eos blanditiis sed. Sapiente voluptatem non harum asperiores. Eos nam qui iure in architecto quos in. Nulla aperiam provident nostrum laborum illum. Animi dignissimos eligendi praesentium perferendis ratione sunt accusantium.</p><p>Vel temporibus ea sit ut ex et nihil. Et qui laudantium est et. Error est explicabo aut facere et.</p><p>Numquam quaerat rem sed et cum voluptatem quis impedit. Animi at nihil praesentium commodi. Voluptas velit officia ipsam accusamus adipisci rem ut. Doloremque laboriosam explicabo praesentium sit.</p><p>Neque quae deserunt et. Vitae autem sequi et repellendus eaque sit.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(19, 1, 3, 'Incidunt ea commodi delectus quas odit hic.', 'Qui laborum sint incidunt dolor. Qui est quisquam ut dolor maxime. Similique nostrum voluptatem expedita sit aut vitae animi. Est autem magnam aut dicta incidunt est.', 'sunt-reprehenderit-et-ab-non-quaerat-tenetur-natus', NULL, '<p>Voluptas suscipit minima eius porro similique sint consequatur aut. At minus aperiam nesciunt dolores perspiciatis perferendis alias. Odit quas odio dolore iure. Sint eum quidem id veniam.</p><p>Unde nobis eos velit distinctio libero. Fuga totam fuga magnam. Minus itaque velit aut. Magnam praesentium et enim sit. Tenetur maiores dolor vero qui est eum esse.</p><p>Eos aut omnis reiciendis consequatur commodi sed accusantium. Inventore sit aut nesciunt in quidem sint est praesentium. Quia quod voluptatibus ut libero. Culpa perferendis quod porro itaque omnis est aut.</p><p>Quo hic nemo ut ut aut. Est aperiam aut et excepturi. Fuga sit dolorum nihil voluptas laborum.</p><p>Fuga ab itaque ipsum sit quis aut esse. Soluta ullam quo deserunt quae fuga. Suscipit quam provident labore illum corrupti consequatur.</p><p>Velit fugiat molestiae voluptatem est enim. Blanditiis necessitatibus expedita reiciendis quaerat qui sint fugiat molestiae.</p><p>Qui eos nihil eum mollitia. Sunt et omnis porro vero voluptatem.</p><p>Voluptatum quas architecto ut. Explicabo sit similique soluta dignissimos ducimus et harum. Quidem enim quia fugit qui. Cumque rem error nam tempore quia.</p><p>Officia dolorem necessitatibus voluptates voluptas distinctio omnis. Qui molestias exercitationem quibusdam. Eos aliquam est minima doloremque sit ut.</p><p>Dolore vel qui architecto quisquam est accusamus. Beatae officia officia tempore. Voluptas ut impedit quod rem aut.</p><p>Vero quo temporibus harum fugit. Nisi totam vero est culpa est quidem alias. Molestiae molestiae praesentium dolorum dolore cumque labore voluptas. Et vitae quos voluptatem quos corporis repudiandae.</p><p>Id placeat quod asperiores voluptates iste at. Delectus qui pariatur qui aut explicabo. Saepe ut eius est officiis velit dolorem.</p><p>Facilis soluta cum voluptas et voluptatem id fugit. Aut ut voluptatem iste. Voluptate accusamus ullam enim necessitatibus sed culpa aut. Porro molestias deserunt est in corporis aperiam aperiam. Eos molestiae architecto accusamus voluptatem ea voluptatem sed.</p><p>Dolores quos voluptatibus est placeat molestias ad voluptas. Nemo officia quae recusandae ut consequuntur. Nostrum quia quia aut eos dolores. Qui laboriosam reprehenderit quibusdam odio natus voluptas itaque.</p><p>Officiis quos velit voluptas. Autem fugiat quia modi et odit. Aliquid ut aut est dolores vel facilis id.</p><p>Id beatae unde quis enim quisquam suscipit aut. Reprehenderit debitis soluta repellendus qui. Laboriosam quo nulla aliquam iusto et nihil.</p><p>Sint provident quaerat aut dolorum ut in reiciendis. Corrupti labore nostrum corporis suscipit qui vel itaque. Nesciunt iure consequuntur ut ratione ea voluptas alias.</p><p>Numquam voluptate quia iure dolorum et consequuntur sapiente. Optio est voluptatum vero veniam. Iste quidem quia nesciunt suscipit ea. Est quia et explicabo.</p><p>Ex dolorem consequuntur est et provident aspernatur ullam. Fugiat minima sed quis similique assumenda. Accusamus et et aliquam quisquam. Asperiores sint in mollitia mollitia aut cum voluptatem.</p>', NULL, '2023-10-11 06:46:43', '2023-10-11 06:46:43'),
(29, 9, 3, 'Kecerdasan Buatan', 'Membahas Kecerdasan Buatan: Menggali Dunia Teknologi yang MenakjubkanKecerdasan Buatan (Artificial Intelligence atau AI) telah menjadi topik yang sangat penting dalam dunia teknologi modern. Artikel i...', 'kecerdasan-buatan', NULL, '<div><strong>Membahas Kecerdasan Buatan: Menggali Dunia Teknologi yang Menakjubkan<br></strong><br></div><div>Kecerdasan Buatan (Artificial Intelligence atau AI) telah menjadi topik yang sangat penting dalam dunia teknologi modern. Artikel ini akan menjelaskan dasar-dasar AI serta beberapa aplikasinya yang menarik.<br><br></div><ol><li><strong>Apa Itu Kecerdasan Buatan?</strong>: Kecerdasan Buatan adalah bidang ilmu komputer yang bertujuan untuk menciptakan sistem yang mampu belajar, berpikir, dan bertindak seperti manusia. Ini melibatkan penggunaan algoritma dan teknik komputasi untuk menyelesaikan masalah kompleks.</li><li><strong>Jenis-jenis Kecerdasan Buatan</strong>: Ada beberapa jenis kecerdasan buatan, termasuk:<ul><li><strong>Kecerdasan Buatan Konvensional</strong>: Ini mencakup sistem yang didesain untuk menyelesaikan tugas spesifik, seperti pengenalan wajah atau penerjemahan bahasa.</li><li><strong>Machine Learning</strong>: Ini adalah cabang dari AI di mana sistem belajar dari data tanpa perlu diprogram secara eksplisit.</li><li><strong>Deep Learning</strong>: Ini adalah teknik machine learning yang menggunakan jaringan saraf tiruan dengan banyak lapisan untuk memahami dan menganalisis data.</li></ul></li><li><strong>Aplikasi Kecerdasan Buatan</strong>: AI memiliki banyak aplikasi di berbagai industri, termasuk:<ul><li><strong>Teknologi Medis</strong>: AI digunakan dalam diagnosis medis, penelitian obat-obatan, dan perawatan pasien.</li><li><strong>Otomatisasi Industri</strong>: Di sektor manufaktur, AI digunakan untuk otomatisasi proses produksi dan pemeliharaan prediktif.</li><li><strong>Pengolahan Bahasa Alami</strong>: AI memungkinkan komputer untuk memahami, menganalisis, dan menghasilkan bahasa manusia secara alami, seperti dalam asisten virtual dan terjemahan otomatis.</li><li><strong>Kendaraan Otonom</strong>: AI digunakan dalam pengembangan mobil otonom untuk mengontrol dan mengarahkan kendaraan tanpa perlu campur tangan manusia.</li></ul></li><li><strong>Tantangan dan Etika</strong>: Meskipun AI menawarkan banyak manfaat, ada juga tantangan dan pertanyaan etika yang perlu diatasi. Misalnya, isu privasi data, keamanan, dan potensi penggantian pekerjaan oleh robot dan otomatisasi.</li><li><strong>Masa Depan Kecerdasan Buatan</strong>: Dengan terus berkembangnya teknologi, kita dapat mengharapkan lebih banyak inovasi dalam bidang kecerdasan buatan di masa depan. Kemajuan dalam AI dapat mengubah cara kita hidup, bekerja, dan berinteraksi dengan dunia di sekitar kita.</li></ol><div><br>Dengan demikian, kecerdasan buatan adalah bidang yang menarik dan memiliki dampak yang signifikan dalam berbagai aspek kehidupan manusia. Dengan pemahaman yang lebih baik tentang AI, kita dapat mempersiapkan diri untuk menghadapi masa depan yang semakin didominasi oleh teknologi ini.</div>', NULL, '2024-03-26 06:51:55', '2024-03-26 19:33:15'),
(30, 8, 3, 'Data science', 'Data science telah menjadi salah satu bidang yang paling penting dan berkembang pesat dalam dunia teknologi modern.Dengan memanfaatkan berbagai metode, algoritma, dan teknologi, data science membantu...', 'data-science', 'post-images/UtMqjhbAPODxKdDB49qzSNnuYOmLgRt9ug3QlcwW.jpg', '<div>Data science telah menjadi salah satu bidang yang paling penting dan berkembang pesat dalam dunia teknologi modern.Dengan memanfaatkan berbagai metode, algoritma, dan teknologi, data science membantu organisasi dalam mengambil keputusan yang didasarkan pada data.Tujuan utama dari data science adalah untuk mengungkap pola, tren, dan wawasan berharga dari data yang ada.<br><br>Proses data science melibatkan pengumpulan, pembersihan, analisis, dan interpretasi data untuk memperoleh pemahaman yang lebih dalam tentang masalah yang sedang dihadapi. Alat dan teknik seperti machine learning, data mining, dan analisis statistik digunakan dalam praktik data science untuk menghasilkan prediksi yang akurat dan solusi yang efektif.<br><br>Data science telah diterapkan di berbagai industri, termasuk keuangan, kesehatan, e-commerce, dan manufaktur, untuk meningkatkan efisiensi operasional dan membuat keputusan yang lebih cerdas.<br>Dalam dunia bisnis, data science digunakan untuk memahami perilaku pelanggan, meningkatkan retensi, dan mengoptimalkan strategi pemasaran.Selain itu, data science juga memiliki peran penting dalam pengembangan produk dan layanan baru.&nbsp;<br><br>Keterampilan yang diperlukan dalam data science termasuk pemrograman, analisis statistik, pemahaman domain bisnis, dan kemampuan komunikasi yang kuat. Profesi data scientist menjadi semakin dicari karena kemampuan mereka untuk mengubah data menjadi wawasan berharga yang dapat digunakan untuk membuat keputusan yang didukung oleh bukti. Penting untuk diingat bahwa etika dan keamanan data juga merupakan bagian integral dari praktik data science yang baik. Sementara data science menjanjikan potensi besar, tantangan seperti keterbatasan data, privasi, dan keandalan model juga perlu diatasi.<br><br>Dengan terus berkembangnya teknologi dan ketersediaan data yang semakin melimpah, data science diharapkan akan terus menjadi salah satu bidang yang paling relevan dan penting dalam dunia digital.<br>Dengan demikian, pemahaman tentang konsep dan praktik data science akan menjadi semakin berharga bagi individu dan organisasi di masa mendatang.</div>', NULL, '2024-03-26 07:12:50', '2024-03-26 19:23:02');

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
(2, 'Indra Firmansyah M.TI.', 'wnajmudin', 'user@test.com', '2023-10-11 13:46:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kMf7EX2eKkjmu9yPQm9EdQFSS8EzaMEhDWLKXOBkxV67Gvbd2tdTzx46cVBc', '2023-10-11 06:46:43', '2023-10-11 06:46:43', 0, 'profile.jpg'),
(3, 'Rafli Rifaldi', 'rafli', 'admin@test.com', '2023-10-11 13:46:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4hikaau0AoZPaLWt9pZMjhYm7GurMiohcp2dj7ivwyQgoHFE8nXMCwYWd6qA', '2023-10-11 06:46:43', '2023-10-11 06:46:43', 1, 'profile.jpg');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
