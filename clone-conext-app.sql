-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: db
-- Thời gian đã tạo: Th1 29, 2021 lúc 05:59 AM
-- Phiên bản máy phục vụ: 8.0.22
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `clone-conext-app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` decimal(8,2) NOT NULL,
  `latitude` decimal(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `business_types`
--

CREATE TABLE `business_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `business_types`
--

INSERT INTO `business_types` (`id`, `name`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Incubator/Accelerator', 1, NULL, NULL, NULL),
(2, 'Startup', 1, NULL, NULL, NULL),
(3, 'Corporate', 1, NULL, NULL, NULL),
(4, 'Investor/Venture', 1, NULL, NULL, NULL),
(5, 'Startup eco-system', 1, NULL, NULL, NULL),
(6, 'Government', 1, NULL, NULL, NULL),
(7, 'Freelancer', 1, NULL, NULL, NULL),
(8, 'Other', 1, NULL, NULL, NULL),
(9, 'Software Development', 1, NULL, '2021-01-28 14:35:30', '2021-01-28 14:35:30'),
(11, 'sssđssd', 1, '2021-01-29 05:02:50', '2021-01-29 04:36:05', '2021-01-29 05:02:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `name`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Argentina', 1, NULL, NULL, NULL),
(2, 'Brazil', 1, NULL, NULL, NULL),
(3, 'Germary', 1, NULL, NULL, NULL),
(4, 'Japan', 1, NULL, NULL, NULL),
(5, 'Viet Nam', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_day` datetime NOT NULL,
  `end_day` datetime NOT NULL,
  `online_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `title`, `image`, `start_day`, `end_day`, `online_event`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Roundtable: Marketing for Startups | Day 3 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/75484029_30486229_78227126_81085093.png', '2021-01-27 17:00:00', '2021-01-27 18:30:00', 'online event', 1, NULL, NULL, NULL),
(2, 'Roundtable: Equity and Fundraising | Day 3 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/55063696_27015733_72519007_53929857.png', '2021-01-27 19:00:00', '2021-01-27 20:30:00', 'online event', 1, NULL, NULL, NULL),
(3, 'Accelerator startups: Where are they now? | Day 4 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png', '2021-01-28 19:30:00', '2021-01-28 20:30:00', 'online event', 1, NULL, NULL, NULL),
(4, 'Codeup | Learn to Code Workshop: Python (Intro to Data Science)', 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png', '2021-01-30 23:00:00', '2021-01-31 00:30:00', 'online event', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expertises`
--

CREATE TABLE `expertises` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `expertises`
--

INSERT INTO `expertises` (`id`, `name`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Artificial intelligence', 1, NULL, NULL, NULL),
(2, 'Internet of Things', 1, NULL, NULL, NULL),
(3, 'NGO', 1, NULL, NULL, NULL),
(4, 'Hospitality', 1, NULL, NULL, NULL),
(5, 'Real estate', 1, NULL, NULL, NULL),
(6, 'Investment', 1, NULL, NULL, NULL),
(7, 'Legacy', 1, NULL, NULL, NULL),
(8, 'Marketing', 1, NULL, NULL, NULL),
(9, 'Business & Management', 1, NULL, NULL, NULL),
(12, 'Software Development', 1, NULL, '2021-01-28 14:06:27', '2021-01-28 14:10:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `explores`
--

CREATE TABLE `explores` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-Unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `explores`
--

INSERT INTO `explores` (`id`, `title`, `image`, `is_active`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Startups', 'https://storage.googleapis.com/conext-production/startup.jpg', 1, NULL, NULL, NULL, NULL),
(2, 'Investments', 'https://storage.googleapis.com/conext-production/investments.jpg', 1, NULL, NULL, NULL, NULL),
(3, 'Hot Needs', 'https://conext.asia/hot-needs', 1, NULL, NULL, NULL, NULL),
(4, 'Get Vouchers', 'https://conext.asia/get-vouchers', 1, NULL, NULL, NULL, NULL),
(5, 'Events', 'https://storage.googleapis.com/conext-production/bg_event.png', 1, NULL, NULL, NULL, NULL),
(6, 'Workplaces', 'https://conext.asia/workplaces', 1, NULL, NULL, NULL, NULL),
(7, 'Remote workers', 'https://storage.googleapis.com/conext-production/remote_worker.jpg', 1, NULL, NULL, NULL, NULL),
(8, 'Coliving', 'https://coliving.com/', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_01_27_150618_create_business_types_table', 1),
(4, '2021_01_27_150950_create_contacts_table', 1),
(5, '2021_01_27_152955_create_countries_table', 1),
(6, '2021_01_27_153400_create_events_table', 1),
(7, '2021_01_27_153526_create_expertises_table', 1),
(8, '2021_01_27_154654_create_places_table', 1),
(9, '2021_01_27_155630_create_vouchers_table', 1),
(10, '2021_01_27_160919_create_work_places_table', 1),
(11, '2021_01_27_161306_create_addresses_table', 1),
(12, '2021_01_28_072751_create_explores_table', 1),
(13, '2021_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `places`
--

CREATE TABLE `places` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `places`
--

INSERT INTO `places` (`id`, `name`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ha Noi', 1, NULL, NULL, NULL),
(2, 'Da Nang', 1, NULL, NULL, NULL),
(3, 'Ho Chi Minh', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `expertise_id` bigint UNSIGNED NOT NULL,
  `business_type_id` bigint UNSIGNED NOT NULL,
  `work_place_id` bigint UNSIGNED NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `avatar`, `seek`, `place_id`, `country_id`, `expertise_id`, `business_type_id`, `work_place_id`, `introduction`, `password`, `is_active`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fanny Cassin', 'devin83@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Quos praesentium ullam perferendis quis. Voluptas iure ipsum et. Possimus deleniti iusto adipisci.', 1, 4, 3, 1, 4, 'Ut sint qui magni quia nisi unde. Neque animi nihil ipsum. Ullam hic aut animi fugit sed ab.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'dhdQByqjtG', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(2, 'Rodolfo Murray', 'igleason@example.com', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Eligendi autem cumque voluptatibus minus illo. Assumenda ipsum et nisi necessitatibus omnis. Aut omnis unde et exercitationem molestiae. Ducimus voluptate hic quibusdam eaque omnis sunt.', 3, 4, 1, 1, 2, 'Omnis et odit molestiae nisi. Animi aliquid ut praesentium et suscipit. Aliquid suscipit alias ratione veniam eius sed sunt. Tenetur doloremque fugit enim in ullam.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'C019oX3s1d', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(3, 'Damien Schmidt', 'noel72@example.com', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Mollitia modi error non laboriosam reiciendis. Et vitae dolor consequatur. Et hic perspiciatis iusto et voluptatibus.', 3, 4, 1, 1, 1, 'Facilis deserunt quaerat commodi aliquid est possimus ut. Dolores aliquam id et eaque. Sit ut culpa enim a.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'F1cONNCOMI', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(4, 'Jacquelyn Runolfsson', 'shaniya.bergnaum@example.net', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Alias eos quas voluptatem fugit quo. Nisi ratione sint veniam harum maiores nihil. Atque cum deserunt et doloribus aut. Amet corporis officia deserunt voluptate architecto quis nobis.', 1, 2, 1, 5, 4, 'Ut excepturi et natus voluptas fugiat vel. Exercitationem quas recusandae temporibus voluptas nostrum. Pariatur consequatur expedita beatae et maxime voluptatem cum.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'oXrJTAK5IM', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(5, 'Verna Glover', 'pamela.stamm@example.net', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Est dolorem hic blanditiis sit omnis reprehenderit consequatur. Corrupti ut vitae dicta non. Aut quaerat corrupti totam incidunt. Totam voluptas tenetur molestiae.', 2, 3, 3, 3, 5, 'Fugiat odit quo sint nesciunt. Accusantium nostrum qui ea officia. Animi incidunt sit eveniet. Et rerum atque facilis placeat.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'AguX0MWTGB', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(6, 'Dr. Rocky Dickinson DVM', 'ujakubowski@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Perferendis beatae quibusdam voluptatem qui optio sapiente eaque. Quia voluptatem eius pariatur quos consectetur voluptatem. Recusandae dolores repellat est. Cum perspiciatis itaque labore.', 2, 3, 2, 2, 4, 'Id laboriosam nobis ipsa blanditiis et eum. Sed aut eos non voluptatum unde. Officia sequi repellat harum odit et magnam tempora.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'divuRA4SPG', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(7, 'Juana Cummings', 'zdibbert@example.com', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'In velit quidem asperiores tenetur id. Quod atque ab tempore accusamus natus voluptas. Atque cumque quis labore possimus qui. Aut eum beatae repellat cumque accusamus aut iusto debitis.', 3, 5, 5, 2, 5, 'Quia fuga sit saepe dolorem. Qui architecto corrupti voluptates amet voluptas. Occaecati eaque et in mollitia nihil ea et ut.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'aGnWKaUHsc', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(8, 'Prof. Gilbert Crooks Jr.', 'labernathy@example.net', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Et velit ex rerum ullam distinctio recusandae veritatis sit. Nam vel est quidem et ipsum ut. Pariatur occaecati voluptatem magni veritatis. Ea voluptas quo voluptatem velit consequatur in.', 3, 2, 4, 1, 1, 'Ea laborum tempore nulla eaque sapiente. Cumque dicta non ut. Quod mollitia eaque excepturi et blanditiis repellendus id.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, '83QpvcRYFL', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(9, 'Mr. Favian Berge', 'torp.adan@example.com', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Molestiae ut praesentium voluptatem saepe et omnis alias corporis. Sapiente est architecto corporis iure quia. Inventore dignissimos cupiditate voluptas officiis.', 2, 4, 3, 2, 3, 'Dolorem et autem hic molestias velit distinctio autem. Sed sunt quam reiciendis eum.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'lYJrg3crY5', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(10, 'Mr. Ali Hessel', 'hspinka@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Consequatur et reiciendis est. Quaerat voluptatem quia velit consequuntur beatae. Nobis provident neque vel et et enim libero tempora. Non magni facilis cum ducimus. In et est veniam incidunt.', 1, 5, 4, 3, 2, 'Debitis in ut ut hic explicabo. Alias voluptas enim nemo quibusdam qui.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'ZemFypbSf2', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(11, 'Janiya Sanford', 'nhermann@example.net', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Blanditiis labore et ipsam sequi ad cum. Qui exercitationem dolorem omnis possimus ex. Ut id quia eveniet dolor et. Reiciendis enim quia est quam. Nemo quibusdam enim facere rerum eum.', 3, 3, 3, 2, 1, 'Enim ad sed quasi tempore nobis. Totam totam fuga assumenda sequi ut est. Quia ex cupiditate assumenda suscipit ducimus. Vel repudiandae provident omnis.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'hDrj7km0o3', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(12, 'Barry Legros IV', 'diego.rau@example.net', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Vel dolor corrupti odio sapiente optio incidunt et. Et sit ut rerum et ut sit velit. Tempore quis quisquam voluptas.', 3, 1, 5, 2, 3, 'Voluptatem quas voluptatem sit quia ipsum molestiae. Quis nihil officia et fugit rem in. Et maxime et architecto et. Qui dolor id repellendus nihil et.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'I65U0QXQ0z', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(13, 'Greg Maggio', 'agustina68@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Quo a et fugiat. Nostrum hic et maxime perspiciatis temporibus iusto. Maxime sunt tenetur praesentium et quaerat itaque. Enim quia error aperiam quo.', 3, 5, 3, 5, 4, 'Esse voluptatem autem sed quidem beatae voluptas nihil. Ab natus autem laboriosam vitae. Beatae illum blanditiis iste commodi. Eum quaerat id sunt at aspernatur.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, '7DMf3lycrx', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(14, 'Vaughn Batz', 'carmella.denesik@example.com', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Pariatur amet sit ullam assumenda quas. Sed cum aut aut est repellendus. Ab quo a ut laborum quasi. Ullam sed aspernatur ipsam quia delectus.', 1, 1, 1, 4, 4, 'Odio tempore et et dolorum odit. Fuga veritatis numquam ut rerum odio minus eos. Dignissimos perferendis eum labore debitis ipsam molestias.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'QY4v8JKXhF', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(15, 'Dave Boyle', 'macejkovic.mina@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Harum quos praesentium at qui. Est amet officiis eum reprehenderit. Veniam consectetur sed voluptas optio voluptatibus at repellat.', 2, 5, 5, 3, 3, 'Aliquam expedita vel modi assumenda at temporibus. Voluptas excepturi iste aut quo modi officiis. Provident sequi facere et ut.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'jnatKCQ21W', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(16, 'Cortez Hilpert', 'hbergstrom@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Nihil nulla expedita nihil et sed. Ipsa illo odio sapiente quo aliquam. Et delectus dolorem non cupiditate. Velit consectetur corrupti officiis dignissimos impedit.', 1, 4, 5, 5, 1, 'Corrupti in sapiente sit corporis. Nobis enim nostrum hic sequi aut. Dolorum et qui animi error. Error aut et dolor sit sint.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'ZebRUfg0vI', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(17, 'Prof. Antonietta Shanahan', 'pascale24@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Velit perferendis sit quibusdam numquam numquam. Aliquid nam eos neque dignissimos tempora recusandae deleniti. Sequi libero non maiores eligendi deserunt rem hic.', 1, 5, 4, 3, 4, 'Labore molestias doloribus sed voluptatum ipsam. Ut eveniet voluptatibus vitae ipsam sunt. Sed deserunt non voluptatem. Fugit voluptatem expedita voluptatibus esse tenetur explicabo consequatur.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'u6sgdQ3n8C', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(18, 'Maritza Schoen', 'kessler.jacey@example.com', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Quo occaecati magni vitae iusto. Dolorem quis rerum quas architecto cum provident animi culpa. Debitis reprehenderit dolor enim odit et vel accusamus omnis.', 3, 3, 5, 1, 4, 'Consequatur sunt delectus sunt molestiae. Magni aut ex velit similique molestiae voluptatem. Sapiente non porro ut sed molestiae.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'F2uT4otO2O', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(19, 'Gardner Lynch', 'patience93@example.net', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Non iste unde saepe dolor. Itaque est iusto sint nulla accusantium deleniti rerum alias. Laborum voluptatem animi ipsa. Sit ut et deserunt dolores quo. Et atque temporibus facere quibusdam.', 3, 4, 4, 3, 1, 'Ipsam blanditiis numquam deserunt unde quam velit sequi. Impedit quas ipsam sequi non et. Sunt molestiae sit reprehenderit optio. Libero totam nulla tenetur praesentium.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, '6GIGyRbLDN', '2021-01-29 03:50:04', '2021-01-29 03:50:04'),
(20, 'Rosalia Marks', 'keyon29@example.org', 'male', 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png', 'Possimus aut rerum deserunt ipsa modi. Et consequatur distinctio corrupti. Dolorum a distinctio nobis. Voluptate at iusto qui quibusdam quos.', 1, 5, 1, 3, 2, 'Est et in eos est aperiam. Vero cum doloremque pariatur nisi sit et. Pariatur deleniti quos voluptatibus numquam. Totam commodi et ex nesciunt facere autem.', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'H09HO4VQVQ', '2021-01-29 03:50:04', '2021-01-29 03:50:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_expired` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id`, `title`, `is_expired`, `image`, `description`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '[BeansWorkspace] GET FREE 2-DAY PASS TICKETS for CoNextor', '2020-12-31', 'https://storage.googleapis.com/conext-production/19108943_99406985_35790756_17780126.png', 'Welcome CoNextor to BeansWorkspace Beans offers customers 2-day free for using Workspace.', 1, NULL, NULL, NULL),
(2, '[Hoian]15% discount when order food at Weavers Restaurant Hoi An', '2020-11-30', 'https://storage.googleapis.com/conext-production/64997444_46246574_77800462_16390180.png', 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext and just use it at Weavers Hoi An.', 1, NULL, NULL, NULL),
(3, '20% off for every coffee orders at Nomad Space', '2020-11-30', 'https://storage.googleapis.com/conext-production/15670774_70835628_34663649_14782329.png', 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext.', 1, NULL, NULL, NULL),
(4, '[ENOUVO SPACE] GET PROMO CODE 10% DISCOUNT FOR DAILY PASS', '2020-10-30', 'https://storage.googleapis.com/conext-production/33562622_75803936_48752140_46239508.png', 'Enouvo Space is running a special discount for member of Conext community in May 2020 with 10% off for daily pass. ', 1, NULL, NULL, NULL),
(5, '[DNC] Get promo code 20% discount for daily pass', '2020-08-30', 'https://storage.googleapis.com/conext-production/61151640_41063916_81769667_72704808.png', 'Conextor Daily pass with Only 60,000 VND (original price is 75,000 VND)', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `work_places`
--

CREATE TABLE `work_places` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addresses_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-actived, 0-notActived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `work_places`
--

INSERT INTO `work_places` (`id`, `name`, `price`, `image`, `addresses_id`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DNC Danang Coworking Space', '75,000', 'https://storage.googleapis.com/conext-production/64775483_39945853_39110715_46208967.png', 1, 1, NULL, NULL, NULL),
(2, 'IOT Space', '80,000', 'https://storage.googleapis.com/conext-production/16396435_63068963_50684597_26582124.png', 2, 1, NULL, NULL, NULL),
(3, 'Beans Workspace', '80,000', 'https://storage.googleapis.com/conext-production/71602096_36013824_15011473_55468966.png', 3, 1, NULL, NULL, NULL),
(4, 'Enouvo Space', '100,000', 'https://storage.googleapis.com/conext-production/27416586_12779950_26466304_11311539.png', 4, 1, NULL, NULL, NULL),
(5, 'Nomad Space', '120,000', 'https://storage.googleapis.com/conext-production/69329038_61346515_30906458_22557038.png', 5, 1, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `expertises`
--
ALTER TABLE `expertises`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `explores`
--
ALTER TABLE `explores`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_place_id_foreign` (`place_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_expertise_id_foreign` (`expertise_id`),
  ADD KEY `users_business_type_id_foreign` (`business_type_id`),
  ADD KEY `users_work_place_id_foreign` (`work_place_id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `work_places`
--
ALTER TABLE `work_places`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `expertises`
--
ALTER TABLE `expertises`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `explores`
--
ALTER TABLE `explores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `work_places`
--
ALTER TABLE `work_places`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_business_type_id_foreign` FOREIGN KEY (`business_type_id`) REFERENCES `business_types` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `users_expertise_id_foreign` FOREIGN KEY (`expertise_id`) REFERENCES `expertises` (`id`),
  ADD CONSTRAINT `users_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `users_work_place_id_foreign` FOREIGN KEY (`work_place_id`) REFERENCES `work_places` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
