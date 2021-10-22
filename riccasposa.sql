-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 19 2021 г., 19:36
-- Версия сервера: 5.7.26
-- Версия PHP: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `riccasposa`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-10-17 17:18:54', '2021-10-17 14:18:54', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'riccasposa', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'without1481@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:152:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"dresses/?$\";s:27:\"index.php?post_type=dresses\";s:40:\"dresses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=dresses&feed=$matches[1]\";s:35:\"dresses/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=dresses&feed=$matches[1]\";s:27:\"dresses/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=dresses&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:37:\"index.php?type=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?type=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:26:\"index.php?type=$matches[1]\";s:52:\"collections/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?collections=$matches[1]&feed=$matches[2]\";s:47:\"collections/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?collections=$matches[1]&feed=$matches[2]\";s:28:\"collections/([^/]+)/embed/?$\";s:44:\"index.php?collections=$matches[1]&embed=true\";s:40:\"collections/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?collections=$matches[1]&paged=$matches[2]\";s:22:\"collections/([^/]+)/?$\";s:33:\"index.php?collections=$matches[1]\";s:45:\"sale/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?sale=$matches[1]&feed=$matches[2]\";s:40:\"sale/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?sale=$matches[1]&feed=$matches[2]\";s:21:\"sale/([^/]+)/embed/?$\";s:37:\"index.php?sale=$matches[1]&embed=true\";s:33:\"sale/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?sale=$matches[1]&paged=$matches[2]\";s:15:\"sale/([^/]+)/?$\";s:26:\"index.php?sale=$matches[1]\";s:51:\"silhouette/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?silhouette=$matches[1]&feed=$matches[2]\";s:46:\"silhouette/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?silhouette=$matches[1]&feed=$matches[2]\";s:27:\"silhouette/([^/]+)/embed/?$\";s:43:\"index.php?silhouette=$matches[1]&embed=true\";s:39:\"silhouette/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?silhouette=$matches[1]&paged=$matches[2]\";s:21:\"silhouette/([^/]+)/?$\";s:32:\"index.php?silhouette=$matches[1]\";s:35:\"dresses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"dresses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"dresses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"dresses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"dresses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"dresses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"dresses/([^/]+)/embed/?$\";s:40:\"index.php?dresses=$matches[1]&embed=true\";s:28:\"dresses/([^/]+)/trackback/?$\";s:34:\"index.php?dresses=$matches[1]&tb=1\";s:48:\"dresses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?dresses=$matches[1]&feed=$matches[2]\";s:43:\"dresses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?dresses=$matches[1]&feed=$matches[2]\";s:36:\"dresses/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?dresses=$matches[1]&paged=$matches[2]\";s:43:\"dresses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?dresses=$matches[1]&cpage=$matches[2]\";s:32:\"dresses/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?dresses=$matches[1]&page=$matches[2]\";s:24:\"dresses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"dresses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"dresses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"dresses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"dresses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"dresses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"exchange/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"exchange/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"exchange/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"exchange/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"exchange/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"exchange/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"exchange/([^/]+)/embed/?$\";s:41:\"index.php?exchange=$matches[1]&embed=true\";s:29:\"exchange/([^/]+)/trackback/?$\";s:35:\"index.php?exchange=$matches[1]&tb=1\";s:37:\"exchange/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?exchange=$matches[1]&paged=$matches[2]\";s:44:\"exchange/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?exchange=$matches[1]&cpage=$matches[2]\";s:33:\"exchange/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?exchange=$matches[1]&page=$matches[2]\";s:25:\"exchange/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"exchange/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"exchange/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"exchange/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"exchange/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"exchange/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:42:\"page-scroll-to-id/malihu-pagescroll2id.php\";i:3;s:32:\"wp-google-fonts/google-fonts.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ricca-sposa', 'yes'),
(41, 'stylesheet', 'ricca-sposa', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1650032334', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"filter_taxonomy\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1634674734;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1634696334;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1634739534;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634739558;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634739560;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635171534;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:5:{s:18:\"custom_css_post_id\";i:39;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:0;}s:11:\"custom_logo\";i:18;s:16:\"background_color\";s:6:\"c48e8e\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1634482736;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(132, '_site_transient_timeout_browser_172fa1e3a570972a9523880f0431118d', '1635085159', 'no'),
(133, '_site_transient_browser_172fa1e3a570972a9523880f0431118d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.71\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_09014c84783552a9b699e7274e96a72d', '1635085160', 'no'),
(135, '_site_transient_php_check_09014c84783552a9b699e7274e96a72d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(152, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(158, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(159, 'site_logo', '18', 'yes'),
(162, 'theme_mods_ricca-sposa', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}}', 'yes'),
(163, 'theme_switch_menu_locations', 'a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:0;}', 'yes'),
(164, 'current_theme', '', 'yes'),
(165, 'theme_switched', '', 'yes'),
(166, 'theme_switched_via_customizer', '', 'yes'),
(167, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(170, 'recently_activated', 'a:2:{s:44:\"reading-progress-bar/reading-progressbar.php\";i:1634504289;s:35:\"google-site-kit/google-site-kit.php\";i:1634493190;}', 'yes'),
(189, 'acf_version', '5.10.2', 'yes'),
(204, 'googlesitekit_db_version', '1.3.0', 'yes'),
(205, 'googlesitekit_has_connected_admins', '0', 'yes'),
(206, 'googlefonts_options', 'a:75:{s:17:\"googlefonts_font1\";s:0:\"\";s:17:\"googlefonts_font2\";s:0:\"\";s:17:\"googlefonts_font3\";s:0:\"\";s:17:\"googlefonts_font4\";s:0:\"\";s:17:\"googlefonts_font5\";s:0:\"\";s:17:\"googlefonts_font6\";s:0:\"\";s:15:\"googlefont1_css\";s:1:\" \";s:20:\"googlefont1_heading1\";s:9:\"unchecked\";s:20:\"googlefont1_heading2\";s:9:\"unchecked\";s:20:\"googlefont1_heading3\";s:9:\"unchecked\";s:20:\"googlefont1_heading4\";s:9:\"unchecked\";s:20:\"googlefont1_heading5\";s:9:\"unchecked\";s:20:\"googlefont1_heading6\";s:9:\"unchecked\";s:16:\"googlefont1_body\";s:9:\"unchecked\";s:22:\"googlefont1_blockquote\";s:9:\"unchecked\";s:13:\"googlefont1_p\";s:9:\"unchecked\";s:14:\"googlefont1_li\";s:9:\"unchecked\";s:15:\"googlefont2_css\";s:1:\" \";s:20:\"googlefont2_heading1\";s:9:\"unchecked\";s:20:\"googlefont2_heading2\";s:9:\"unchecked\";s:20:\"googlefont2_heading3\";s:9:\"unchecked\";s:20:\"googlefont2_heading4\";s:9:\"unchecked\";s:20:\"googlefont2_heading5\";s:9:\"unchecked\";s:20:\"googlefont2_heading6\";s:9:\"unchecked\";s:16:\"googlefont2_body\";s:9:\"unchecked\";s:22:\"googlefont2_blockquote\";s:9:\"unchecked\";s:13:\"googlefont2_p\";s:9:\"unchecked\";s:14:\"googlefont2_li\";s:9:\"unchecked\";s:15:\"googlefont3_css\";s:1:\" \";s:20:\"googlefont3_heading1\";s:9:\"unchecked\";s:20:\"googlefont3_heading2\";s:9:\"unchecked\";s:20:\"googlefont3_heading3\";s:9:\"unchecked\";s:20:\"googlefont3_heading4\";s:9:\"unchecked\";s:20:\"googlefont3_heading5\";s:9:\"unchecked\";s:20:\"googlefont3_heading6\";s:9:\"unchecked\";s:16:\"googlefont3_body\";s:9:\"unchecked\";s:22:\"googlefont3_blockquote\";s:9:\"unchecked\";s:13:\"googlefont3_p\";s:9:\"unchecked\";s:14:\"googlefont3_li\";s:9:\"unchecked\";s:15:\"googlefont4_css\";s:1:\" \";s:20:\"googlefont4_heading1\";s:9:\"unchecked\";s:20:\"googlefont4_heading2\";s:9:\"unchecked\";s:20:\"googlefont4_heading3\";s:9:\"unchecked\";s:20:\"googlefont4_heading4\";s:9:\"unchecked\";s:20:\"googlefont4_heading5\";s:9:\"unchecked\";s:20:\"googlefont4_heading6\";s:9:\"unchecked\";s:16:\"googlefont4_body\";s:9:\"unchecked\";s:22:\"googlefont4_blockquote\";s:9:\"unchecked\";s:13:\"googlefont4_p\";s:9:\"unchecked\";s:14:\"googlefont4_li\";s:9:\"unchecked\";s:15:\"googlefont5_css\";s:1:\" \";s:20:\"googlefont5_heading1\";s:9:\"unchecked\";s:20:\"googlefont5_heading2\";s:9:\"unchecked\";s:20:\"googlefont5_heading3\";s:9:\"unchecked\";s:20:\"googlefont5_heading4\";s:9:\"unchecked\";s:20:\"googlefont5_heading5\";s:9:\"unchecked\";s:20:\"googlefont5_heading6\";s:9:\"unchecked\";s:16:\"googlefont5_body\";s:9:\"unchecked\";s:22:\"googlefont5_blockquote\";s:9:\"unchecked\";s:13:\"googlefont5_p\";s:9:\"unchecked\";s:14:\"googlefont5_li\";s:9:\"unchecked\";s:15:\"googlefont6_css\";s:1:\" \";s:20:\"googlefont6_heading1\";s:9:\"unchecked\";s:20:\"googlefont6_heading2\";s:9:\"unchecked\";s:20:\"googlefont6_heading3\";s:9:\"unchecked\";s:20:\"googlefont6_heading4\";s:9:\"unchecked\";s:20:\"googlefont6_heading5\";s:9:\"unchecked\";s:20:\"googlefont6_heading6\";s:9:\"unchecked\";s:16:\"googlefont6_body\";s:9:\"unchecked\";s:22:\"googlefont6_blockquote\";s:9:\"unchecked\";s:13:\"googlefont6_p\";s:9:\"unchecked\";s:14:\"googlefont6_li\";s:9:\"unchecked\";s:20:\"googlefont_data_time\";i:1634493390;s:21:\"googlefont_selections\";a:6:{s:11:\"googlefont1\";a:3:{s:6:\"family\";s:10:\"Montserrat\";s:8:\"variants\";a:1:{i:0;s:7:\"regular\";}s:7:\"subsets\";a:1:{i:0;s:5:\"latin\";}}s:11:\"googlefont2\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont3\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont4\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont5\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}s:11:\"googlefont6\";a:3:{s:6:\"family\";s:0:\"\";s:8:\"variants\";a:0:{}s:7:\"subsets\";a:0:{}}}s:25:\"googlefont_data_converted\";b:1;}', 'yes'),
(207, 'wp_google_fonts_global_notification', '0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(221, 'widget_malihupagescroll2idwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'page_scroll_to_id_version', '1.7.4', 'no'),
(223, 'page_scroll_to_id_instances', 'a:1:{s:17:\"mPS2id_instance_0\";a:35:{s:8:\"selector\";a:10:{s:5:\"value\";s:28:\"a[href*=\'#\']:not([href=\'#\'])\";s:6:\"values\";N;s:2:\"id\";s:28:\"page_scroll_to_id_0_selector\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:11:\"Selector(s)\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:662:\"Set the links (in the form of <a href=\"http://www.w3.org/TR/css3-selectors/\" target=\"_blank\">CSS selectors</a>) that will scroll the page when clicked (default value: any link with a non-empty hash (<code>#</code>) value in its URL) <br /><small>In addition to selectors above, the plugin is enabled automatically on links (or links contained within elements) with class <code>ps2id</code></small> <br /><small><a class=\"button button-small mPS2id-show-option-common-values\" href=\"#\">Show common values</a><span>For all links: <code>a[href*=\'#\']:not([href=\'#\'])</code><br />For menu links only: <code>.menu-item a[href*=\'#\']:not([href=\'#\'])</code></span></small>\";s:7:\"wrapper\";N;}s:21:\"autoSelectorMenuLinks\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:41:\"page_scroll_to_id_0_autoSelectorMenuLinks\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:30:\"Enable on WordPress Menu links\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:185:\"Automatically enable the plugin on custom links (containing <code>#</code> in their URL) created in Appearance &rarr; Menus <br /><small>Requires WordPress version 3.6 or higher</small>\";s:7:\"wrapper\";s:8:\"fieldset\";}s:15:\"excludeSelector\";a:10:{s:5:\"value\";s:166:\"a[href^=\'#tab-\'], a[href^=\'#tabs-\'], a[data-toggle]:not([data-toggle=\'tooltip\']), a[data-slide], a[data-vc-tabs], a[data-vc-accordion], a.screen-reader-text.skip-link\";s:6:\"values\";N;s:2:\"id\";s:35:\"page_scroll_to_id_0_excludeSelector\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:22:\"selectors are excluded\";s:11:\"description\";s:512:\"Set the links (in the form of <a href=\"http://www.w3.org/TR/css3-selectors/\" target=\"_blank\">CSS selectors</a>) that will be excluded from plugin&apos;s selectors (the plugin will not hanlde these links) <br /><small><a class=\"button button-small mPS2id-show-option-common-values\" href=\"#\">Show common values</a><span><code>a[href^=\'#tab-\'], a[href^=\'#tabs-\'], a[data-toggle]:not([data-toggle=\'tooltip\']), a[data-slide], a[data-vc-tabs], a[data-vc-accordion], a.screen-reader-text.skip-link</code></span></small>\";s:7:\"wrapper\";N;}s:11:\"scrollSpeed\";a:10:{s:5:\"value\";i:800;s:6:\"values\";N;s:2:\"id\";s:31:\"page_scroll_to_id_0_scrollSpeed\";s:10:\"field_type\";s:12:\"text-integer\";s:5:\"label\";s:15:\"Scroll duration\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:12:\"milliseconds\";s:11:\"description\";s:99:\"Scroll animation duration (i.e. scrolling speed) in milliseconds (1000 milliseconds equal 1 second)\";s:7:\"wrapper\";N;}s:15:\"autoScrollSpeed\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:35:\"page_scroll_to_id_0_autoScrollSpeed\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:30:\"Auto-adjust scrolling duration\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:104:\"Enable to let the plugin fine-tune scrolling duration/speed according to target and page scroll position\";s:7:\"wrapper\";s:8:\"fieldset\";}s:12:\"scrollEasing\";a:10:{s:5:\"value\";s:14:\"easeInOutQuint\";s:6:\"values\";s:406:\"linear,swing,easeInQuad,easeOutQuad,easeInOutQuad,easeInCubic,easeOutCubic,easeInOutCubic,easeInQuart,easeOutQuart,easeInOutQuart,easeInQuint,easeOutQuint,easeInOutQuint,easeInExpo,easeOutExpo,easeInOutExpo,easeInSine,easeOutSine,easeInOutSine,easeInCirc,easeOutCirc,easeInOutCirc,easeInElastic,easeOutElastic,easeInOutElastic,easeInBack,easeOutBack,easeInOutBack,easeInBounce,easeOutBounce,easeInOutBounce\";s:2:\"id\";s:32:\"page_scroll_to_id_0_scrollEasing\";s:10:\"field_type\";s:6:\"select\";s:5:\"label\";s:18:\"Scroll type/easing\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:192:\"Scroll animation easing (<a href=\"http://manos.malihu.gr/page-scroll-to-id-for-wordpress/#ps2id-duration-easings-demo\" target=\"_blank\">visual representation &amp; demo of all easing types</a>)\";s:7:\"wrapper\";N;}s:15:\"scrollingEasing\";a:10:{s:5:\"value\";s:12:\"easeOutQuint\";s:6:\"values\";s:406:\"linear,swing,easeInQuad,easeOutQuad,easeInOutQuad,easeInCubic,easeOutCubic,easeInOutCubic,easeInQuart,easeOutQuart,easeInOutQuart,easeInQuint,easeOutQuint,easeInOutQuint,easeInExpo,easeOutExpo,easeInOutExpo,easeInSine,easeOutSine,easeInOutSine,easeInCirc,easeOutCirc,easeInOutCirc,easeInElastic,easeOutElastic,easeInOutElastic,easeInBack,easeOutBack,easeInOutBack,easeInBounce,easeOutBounce,easeInOutBounce\";s:2:\"id\";s:35:\"page_scroll_to_id_0_scrollingEasing\";s:10:\"field_type\";s:6:\"select\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:98:\"Alternative animation easing (applied when a link is clicked while the page is animated/scrolling)\";s:7:\"wrapper\";N;}s:17:\"forceScrollEasing\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:37:\"page_scroll_to_id_0_forceScrollEasing\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:24:\"Force scroll type/easing\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:132:\"Enable if the selected animation easing does not seem to take effect and/or there\'s conflict with other easing libraries and plugins\";s:7:\"wrapper\";s:8:\"fieldset\";}s:19:\"pageEndSmoothScroll\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:39:\"page_scroll_to_id_0_pageEndSmoothScroll\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:15:\"Scroll behavior\";s:14:\"checkbox_label\";s:65:\"Always scroll smoothly when reaching the end of the page/document\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:22:\"stopScrollOnUserAction\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:42:\"page_scroll_to_id_0_stopScrollOnUserAction\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:49:\"Stop page scrolling on mouse-wheel or touch-swipe\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:127:\"Enable if you want to stop page scrolling when the user tries to scroll the page manually (e.g. via mouse-wheel or touch-swipe)\";s:7:\"wrapper\";s:8:\"fieldset\";}s:17:\"autoCorrectScroll\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:37:\"page_scroll_to_id_0_autoCorrectScroll\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:99:\"Verify target position and readjust scrolling (if necessary), after scrolling animation is complete\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:23:\"autoCorrectScrollExtend\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:43:\"page_scroll_to_id_0_autoCorrectScrollExtend\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:138:\"Extend target position verification and scrolling adjustment for lazy-load scripts (images, iframes etc.) and changes in document\'s length\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:6:\"layout\";a:10:{s:5:\"value\";s:8:\"vertical\";s:6:\"values\";s:24:\"vertical,horizontal,auto\";s:2:\"id\";s:26:\"page_scroll_to_id_0_layout\";s:10:\"field_type\";s:5:\"radio\";s:5:\"label\";s:11:\"Page layout\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";s:24:\"vertical|horizontal|auto\";s:10:\"field_info\";N;s:11:\"description\";s:346:\"Restrict page scrolling to top-bottom (vertical) or left-right (horizontal) accordingly. For both vertical and horizontal scrolling select <code>auto</code> <br /><small>Please note that \"Layout\" option does not transform your theme&#8217;s templates layout (i.e. it won&#8217;t change your theme/page design from vertical to horizontal).</small>\";s:7:\"wrapper\";s:8:\"fieldset\";}s:6:\"offset\";a:10:{s:5:\"value\";i:0;s:6:\"values\";N;s:2:\"id\";s:26:\"page_scroll_to_id_0_offset\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:6:\"Offset\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:6:\"pixels\";s:11:\"description\";s:189:\"Offset scroll-to position by x amount of pixels (positive or negative) or by <a href=\"http://www.w3.org/TR/css3-selectors/\" target=\"_blank\">selector</a> (e.g. <code>#navigation-menu</code>)\";s:7:\"wrapper\";N;}s:11:\"dummyOffset\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:31:\"page_scroll_to_id_0_dummyOffset\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:54:\"Auto-generate <code>#ps2id-dummy-offset</code> element\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:393:\"Enable if you want the plugin to create a hidden element and use its selector as offset. The element that will be created is: <code>#ps2id-dummy-offset</code> <br /><small>You should use the <code>#ps2id-dummy-offset</code> value in the <b>Offset</b> option above. You should then use the same selector/value and in your CSS and give it a height equal to the amount of offset you want.</small>\";s:7:\"wrapper\";s:8:\"fieldset\";}s:17:\"highlightSelector\";a:10:{s:5:\"value\";s:0:\"\";s:6:\"values\";N;s:2:\"id\";s:37:\"page_scroll_to_id_0_highlightSelector\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:21:\"Highlight selector(s)\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:181:\"Set the links (in the form of <a href=\"http://www.w3.org/TR/css3-selectors/\" target=\"_blank\">CSS selectors</a>) that will be eligible for highlighting (leave empty to highlight all)\";s:7:\"wrapper\";N;}s:12:\"clickedClass\";a:10:{s:5:\"value\";s:14:\"mPS2id-clicked\";s:6:\"values\";N;s:2:\"id\";s:32:\"page_scroll_to_id_0_clickedClass\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:31:\"Classes &amp; highlight options\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:10:\"class name\";s:11:\"description\";s:124:\"Class of the clicked link. You can use this class (e.g. <code>.mPS2id-clicked</code>) in your CSS to style the clicked link.\";s:7:\"wrapper\";N;}s:11:\"targetClass\";a:10:{s:5:\"value\";s:13:\"mPS2id-target\";s:6:\"values\";N;s:2:\"id\";s:31:\"page_scroll_to_id_0_targetClass\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:10:\"class name\";s:11:\"description\";s:413:\"Class of the (current) target element. You can use this class (e.g. <code>.mPS2id-target</code>) in your CSS to style the highlighted target element(s). <br />If multiple elements are highlighted, you can use the <code>-first</code> or <code>-last</code> suffix in the class name (e.g. <code>.mPS2id-target-first</code>, <code>.mPS2id-target-last</code>) to style the first or last highlighted element accordingly\";s:7:\"wrapper\";N;}s:14:\"highlightClass\";a:10:{s:5:\"value\";s:16:\"mPS2id-highlight\";s:6:\"values\";N;s:2:\"id\";s:34:\"page_scroll_to_id_0_highlightClass\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:10:\"class name\";s:11:\"description\";s:409:\"Class of the (current) highlighted link. You can use this class (e.g. <code>.mPS2id-highlight</code>) in your CSS to style the highlighted link(s). <br />If multiple links are highlighted, you can use the <code>-first</code> or <code>-last</code> suffix in the class name (e.g. <code>.mPS2id-highlight-first</code>, <code>.mPS2id-highlight-last</code>) to style the first or last highlighted links accordingly\";s:7:\"wrapper\";N;}s:20:\"forceSingleHighlight\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:40:\"page_scroll_to_id_0_forceSingleHighlight\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:44:\"Allow only one highlighted element at a time\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:22:\"keepHighlightUntilNext\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:42:\"page_scroll_to_id_0_keepHighlightUntilNext\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:123:\"Keep the current element highlighted until the next one comes into view (i.e. always keep at least one element highlighted)\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:21:\"highlightByNextTarget\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:41:\"page_scroll_to_id_0_highlightByNextTarget\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:24:\"Highlight by next target\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:118:\"Set targets length according to their next adjacent target position (useful when target elements have zero dimensions)\";s:7:\"wrapper\";s:8:\"fieldset\";}s:10:\"appendHash\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:30:\"page_scroll_to_id_0_appendHash\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:14:\"Links behavior\";s:14:\"checkbox_label\";s:101:\"Append the clicked link&#8217;s hash value (e.g. <code>#id</code>) to browser&#8217;s URL/address bar\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:12:\"scrollToHash\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:32:\"page_scroll_to_id_0_scrollToHash\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:70:\"Scroll from/to different pages (i.e. scroll to target when page loads)\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:18:\"scrollToHashForAll\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:38:\"page_scroll_to_id_0_scrollToHashForAll\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:96:\"Enable different pages scrolling on all links (even the ones that are not handled by the plugin)\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:17:\"scrollToHashDelay\";a:10:{s:5:\"value\";i:0;s:6:\"values\";N;s:2:\"id\";s:37:\"page_scroll_to_id_0_scrollToHashDelay\";s:10:\"field_type\";s:12:\"text-integer\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:55:\"milliseconds delay for scrolling to target on page load\";s:11:\"description\";N;s:7:\"wrapper\";N;}s:26:\"scrollToHashUseElementData\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:46:\"page_scroll_to_id_0_scrollToHashUseElementData\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:87:\"Use element&apos;s custom offset (if it exists) when scrolling from/to different pages.\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:25:\"scrollToHashRemoveUrlHash\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:45:\"page_scroll_to_id_0_scrollToHashRemoveUrlHash\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:123:\"Remove URL hash (i.e. the <code>#some-id</code> part in browser&apos;s address bar) when scrolling from/to different pages.\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";N;s:7:\"wrapper\";s:8:\"fieldset\";}s:18:\"disablePluginBelow\";a:10:{s:5:\"value\";i:0;s:6:\"values\";N;s:2:\"id\";s:38:\"page_scroll_to_id_0_disablePluginBelow\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:20:\"Disable plugin below\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";s:11:\"screen-size\";s:11:\"description\";s:135:\"Set the width,height screen-size (in pixels), below which the plugin will be disabled (e.g. <code>1024</code> or <code>1024,600</code>)\";s:7:\"wrapper\";N;}s:21:\"adminDisplayWidgetsId\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:41:\"page_scroll_to_id_0_adminDisplayWidgetsId\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:14:\"Administration\";s:14:\"checkbox_label\";s:28:\"Display widgets id attribute\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:65:\"Show the id attribute of each widget in Appearance &rarr; Widgets\";s:7:\"wrapper\";s:8:\"fieldset\";}s:19:\"adminTinyMCEbuttons\";a:10:{s:5:\"value\";s:4:\"true\";s:6:\"values\";N;s:2:\"id\";s:39:\"page_scroll_to_id_0_adminTinyMCEbuttons\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:55:\"Enable insert link/target buttons in post visual editor\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:55:\"<small>Requires WordPress version 3.9 or higher</small>\";s:7:\"wrapper\";s:8:\"fieldset\";}s:26:\"unbindUnrelatedClickEvents\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:46:\"page_scroll_to_id_0_unbindUnrelatedClickEvents\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:16:\"Advanced options\";s:14:\"checkbox_label\";s:70:\"Prevent other scripts from handling plugin&#8217;s links (if possible)\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:159:\"Enable if another plugin or a theme script handles page scrolling and conflicts with \"Page scroll to id\" (removes other scripts js click events from the links)\";s:7:\"wrapper\";s:8:\"fieldset\";}s:34:\"unbindUnrelatedClickEventsSelector\";a:10:{s:5:\"value\";s:0:\"\";s:6:\"values\";N;s:2:\"id\";s:54:\"page_scroll_to_id_0_unbindUnrelatedClickEventsSelector\";s:10:\"field_type\";s:4:\"text\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";N;s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:68:\"Prevent other scripts from handling plugin&#8217;s links selector(s)\";s:7:\"wrapper\";N;}s:27:\"normalizeAnchorPointTargets\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:47:\"page_scroll_to_id_0_normalizeAnchorPointTargets\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:30:\"Normalize anchor-point targets\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:86:\"Force zero dimensions (via CSS) on targets created with <code>[ps2id]</code> shortcode\";s:7:\"wrapper\";s:8:\"fieldset\";}s:11:\"encodeLinks\";a:10:{s:5:\"value\";s:5:\"false\";s:6:\"values\";N;s:2:\"id\";s:31:\"page_scroll_to_id_0_encodeLinks\";s:10:\"field_type\";s:8:\"checkbox\";s:5:\"label\";s:0:\"\";s:14:\"checkbox_label\";s:38:\"Encode unicode characters on links URL\";s:12:\"radio_labels\";N;s:10:\"field_info\";N;s:11:\"description\";s:115:\"Enable if you have links that have encoded unicode characters (e.g. on internationalized domain names) in their URL\";s:7:\"wrapper\";s:8:\"fieldset\";}}}', 'yes'),
(224, 'ps2id_plugin_admin_notice_dismiss_notice', 'true', 'yes'),
(231, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:64:\"http://downloads.wordpress.org/release/ru_RU/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:64:\"http://downloads.wordpress.org/release/ru_RU/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1634653166;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(233, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634653174;s:7:\"checked\";a:1:{s:11:\"ricca-sposa\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(238, 'rp_settings', 'a:7:{s:15:\"rp_field_height\";s:1:\"8\";s:17:\"rp_field_fg_color\";s:7:\"#727272\";s:17:\"rp_field_bg_color\";s:7:\"#dd3333\";s:17:\"rp_field_position\";s:6:\"bottom\";s:24:\"rp_field_custom_position\";s:6:\"header\";s:18:\"rp_field_templates\";a:3:{s:4:\"home\";s:1:\"1\";s:4:\"blog\";s:1:\"1\";s:6:\"single\";s:1:\"1\";}s:18:\"rp_field_posttypes\";a:3:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";s:7:\"dresses\";s:1:\"1\";}}', 'yes'),
(263, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":6,\"critical\":1}', 'yes'),
(267, 'category_children', 'a:0:{}', 'yes'),
(288, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634653181;s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"17.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.17.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:42:\"page-scroll-to-id/malihu-pagescroll2id.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/page-scroll-to-id\";s:4:\"slug\";s:17:\"page-scroll-to-id\";s:6:\"plugin\";s:42:\"page-scroll-to-id/malihu-pagescroll2id.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/page-scroll-to-id/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/page-scroll-to-id.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/page-scroll-to-id/assets/icon-256x256.png?rev=1401043\";s:2:\"1x\";s:70:\"https://ps.w.org/page-scroll-to-id/assets/icon-128x128.png?rev=1401043\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/page-scroll-to-id/assets/banner-1544x500.png?rev=1587981\";s:2:\"1x\";s:72:\"https://ps.w.org/page-scroll-to-id/assets/banner-772x250.png?rev=1587981\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:44:\"reading-progress-bar/reading-progressbar.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/reading-progress-bar\";s:4:\"slug\";s:20:\"reading-progress-bar\";s:6:\"plugin\";s:44:\"reading-progress-bar/reading-progressbar.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/reading-progress-bar/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/reading-progress-bar.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/reading-progress-bar/assets/icon-256x256.png?rev=1563180\";s:2:\"1x\";s:73:\"https://ps.w.org/reading-progress-bar/assets/icon-128x128.png?rev=1563180\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/reading-progress-bar/assets/banner-1544x500.png?rev=1563180\";s:2:\"1x\";s:75:\"https://ps.w.org/reading-progress-bar/assets/banner-772x250.png?rev=1563180\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"google-site-kit/google-site-kit.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/google-site-kit\";s:4:\"slug\";s:15:\"google-site-kit\";s:6:\"plugin\";s:35:\"google-site-kit/google-site-kit.php\";s:11:\"new_version\";s:6:\"1.43.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/google-site-kit/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/google-site-kit.1.43.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/google-site-kit/assets/icon-256x256.png?rev=2181376\";s:2:\"1x\";s:68:\"https://ps.w.org/google-site-kit/assets/icon-128x128.png?rev=2181376\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/google-site-kit/assets/banner-1544x500.png?rev=2513620\";s:2:\"1x\";s:70:\"https://ps.w.org/google-site-kit/assets/banner-772x250.png?rev=2513620\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:49:\"wp-meta-data-filter-and-taxonomy-filter/index.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:53:\"w.org/plugins/wp-meta-data-filter-and-taxonomy-filter\";s:4:\"slug\";s:39:\"wp-meta-data-filter-and-taxonomy-filter\";s:6:\"plugin\";s:49:\"wp-meta-data-filter-and-taxonomy-filter/index.php\";s:11:\"new_version\";s:5:\"1.2.9\";s:3:\"url\";s:70:\"https://wordpress.org/plugins/wp-meta-data-filter-and-taxonomy-filter/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/wp-meta-data-filter-and-taxonomy-filter.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:92:\"https://ps.w.org/wp-meta-data-filter-and-taxonomy-filter/assets/icon-256x256.png?rev=1473283\";s:2:\"1x\";s:92:\"https://ps.w.org/wp-meta-data-filter-and-taxonomy-filter/assets/icon-128x128.png?rev=1474877\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:94:\"https://ps.w.org/wp-meta-data-filter-and-taxonomy-filter/assets/banner-772x250.png?rev=2413966\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.1.0\";}s:32:\"wp-google-fonts/google-fonts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wp-google-fonts\";s:4:\"slug\";s:15:\"wp-google-fonts\";s:6:\"plugin\";s:32:\"wp-google-fonts/google-fonts.php\";s:11:\"new_version\";s:6:\"v3.1.4\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-google-fonts/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-google-fonts.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-google-fonts/assets/icon-256x256.png?rev=2223099\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-fonts/assets/icon-128x128.png?rev=2223099\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-google-fonts/assets/banner-772x250.png?rev=2223099\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"2.0.2\";}s:56:\"simple-taxonomy-ordering/yikes-custom-taxonomy-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-taxonomy-ordering\";s:4:\"slug\";s:24:\"simple-taxonomy-ordering\";s:6:\"plugin\";s:56:\"simple-taxonomy-ordering/yikes-custom-taxonomy-order.php\";s:11:\"new_version\";s:5:\"2.3.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-taxonomy-ordering/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-taxonomy-ordering.2.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-taxonomy-ordering/assets/icon-256x256.jpg?rev=2489936\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-taxonomy-ordering/assets/icon-128x128.jpg?rev=2489936\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-taxonomy-ordering/assets/banner-772x250.jpg?rev=2489936\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";}}s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:42:\"page-scroll-to-id/malihu-pagescroll2id.php\";s:5:\"1.7.4\";s:44:\"reading-progress-bar/reading-progressbar.php\";s:3:\"1.3\";s:35:\"google-site-kit/google-site-kit.php\";s:6:\"1.43.0\";s:49:\"wp-meta-data-filter-and-taxonomy-filter/index.php\";s:5:\"1.2.9\";s:32:\"wp-google-fonts/google-fonts.php\";s:6:\"v3.1.4\";s:56:\"simple-taxonomy-ordering/yikes-custom-taxonomy-order.php\";s:5:\"2.3.3\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"17.3\";}}', 'no'),
(295, '_site_transient_timeout_theme_roots', '1634666112', 'no'),
(296, '_site_transient_theme_roots', 'a:1:{s:11:\"ricca-sposa\";s:7:\"/themes\";}', 'no'),
(297, '_site_transient_timeout_wp_remote_block_patterns_abb70994035adb0d850b14d620e3d9c1', '1634668636', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(298, '_site_transient_wp_remote_block_patterns_abb70994035adb0d850b14d620e3d9c1', 'a:26:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:4385;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:103:\"Большой заголовок с выравниванием текста по левому краю\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1273:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Лес</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Даже ребенок знает, насколько ценен лес. Свежий, захватывающий дух запах деревьев. Эхо птиц, летящих над этой плотной звездой. Стабильный климат, устойчивая разнообразная жизнь и источник культуры. Тем не менее, леса и другие экосистемы висят на волоске и могут превратиться в пахотные земли, пастбища и плантации.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:73:\"Изображение на обложке с цитатой сверху\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1864:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Лес</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Даже ребенок знает, насколько ценен лес. Свежий, захватывающий дух запах деревьев. Эхо птиц, летящих над этой плотной звездой. Стабильный климат, устойчивая разнообразная жизнь и источник культуры. Тем не менее, леса и другие экосистемы висят на волоске и могут превратиться в пахотные земли, пастбища и плантации.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:4384;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:69:\"Большой заголовок с текстом и кнопкой\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1162:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>За границей:</em></strong><br><strong><em>1500–1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">Выставка о различных представлениях океана во времени, между шестнадцатым и двадцатым веками. Проходит в нашей открытой комнате на <em>этаже 2</em>.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Посетить</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:124:\"Большой заголовок с фоновым изображением, текстом и кнопкой сверху.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1972:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>За границей:</em></strong><br><strong><em>1500–1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">Выставка о различных представлениях океана во времени, между шестнадцатым и двадцатым веками. Проходит в нашей открытой комнате на <em>этаже 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Посетить</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:4395;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Два изображения в ряд\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:728:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"Вид с воздуха на волны, разбивающиеся о берег.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"Аэрофотоснимок поля. Дорога проходит через правый верхний угол.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:101:\"Галерея изображений с двумя изображениями для примера.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:818:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"Вид с воздуха на волны, разбивающиеся о берег.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"Аэрофотоснимок поля. Дорога проходит через правый верхний угол.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:4380;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:79:\"Два столбца текста со смещенным заголовком\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2476:\"\n<div class=\"wp-container-616f0239dacff wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Океанское вдохновение</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Обмотав головы вуалью, женщины вышли на палубу. Теперь они неуклонно двигались вниз по реке, минуя темные силуэты кораблей на якоре, и Лондон представлял собой рой огней с нависшим над ним бледно-желтым куполом. Это были огни больших театров, огни длинных улиц, огни, указывающие на огромные площади домашнего уюта, огни, которые висели высоко в воздухе.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Никакая тьма никогда не осядет на этих светильниках, поскольку никакая тьма не села на них сотни лет. Казалось ужасным, что город вечно пылает на одном и том же месте; ужасен, по крайней мере, для людей, отправляющихся в путешествие по морю и созерцающих его как ограниченный холм, вечно выжженный, вечно покрытый шрамами. С палубы корабля город казался как трусливая фигура, сидячий скряга.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:80:\"Два столбца текста со смещенным заголовком.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3398:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Океанское вдохновение</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Обмотав головы вуалью, женщины вышли на палубу. Теперь они неуклонно двигались вниз по реке, минуя темные силуэты кораблей на якоре, и Лондон представлял собой рой огней с нависшим над ним бледно-желтым куполом. Это были огни больших театров, огни длинных улиц, огни, указывающие на огромные площади домашнего уюта, огни, которые висели высоко в воздухе.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Никакая тьма никогда не осядет на этих светильниках, поскольку никакая тьма не села на них сотни лет. Казалось ужасным, что город вечно пылает на одном и том же месте; ужасен, по крайней мере, для людей, отправляющихся в путешествие по морю и созерцающих его как ограниченный холм, вечно выжженный, вечно покрытый шрамами. С палубы корабля город казался как трусливая фигура, сидячий скряга.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:4394;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:56:\"Две колонки текста и заголовка\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2096:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>Путешествие началось и началось счастливо с мягкого голубого неба и спокойного моря.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">Они последовали за ней на палубу. Весь дым и дома исчезли, и корабль оказался в открытом море, очень свежем и чистом, хотя и бледном в раннем свете. Они оставили Лондон сидеть в грязи. На горизонте сужалась очень тонкая линия тени, едва достаточная для того, чтобы выдержать бремя Парижа, которое, тем не менее, лежало на нем. Они были свободны от дорог, от человечества, и все они были взволнованы своей свободой.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">Корабль неуклонно продвигался сквозь небольшие волны, которые ударили по ней, а затем шипели, как бурлящая вода, оставляя с обеих сторон небольшую границу из пузырьков и пены. Бесцветное октябрьское небо над головой было тонко затянуто облаками, словно шлейфом от костра, а воздух был чудесно соленым и живым. На самом деле было слишком холодно, чтобы стоять на месте. Миссис Эмброуз взяла мужа за руку, и когда они двинулись прочь, по тому, как ее щека повернулась к его щеке, было видно, что у нее есть что сказать личное.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:94:\"Два столбца текста с длинным заголовком перед ними.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2476:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>Путешествие началось и началось счастливо с мягкого голубого неба и спокойного моря.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">Они последовали за ней на палубу. Весь дым и дома исчезли, и корабль оказался в открытом море, очень свежем и чистом, хотя и бледном в раннем свете. Они оставили Лондон сидеть в грязи. На горизонте сужалась очень тонкая линия тени, едва достаточная для того, чтобы выдержать бремя Парижа, которое, тем не менее, лежало на нем. Они были свободны от дорог, от человечества, и все они были взволнованы своей свободой.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">Корабль неуклонно продвигался сквозь небольшие волны, которые ударили по ней, а затем шипели, как бурлящая вода, оставляя с обеих сторон небольшую границу из пузырьков и пены. Бесцветное октябрьское небо над головой было тонко затянуто облаками, словно шлейфом от костра, а воздух был чудесно соленым и живым. На самом деле было слишком холодно, чтобы стоять на месте. Миссис Эмброуз взяла мужа за руку, и когда они двинулись прочь, по тому, как ее щека повернулась к его щеке, было видно, что у нее есть что сказать личное.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:4387;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:18:\"Заголовок\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:484:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">Мы &#8212; студия в Берлине с международной практикой в ​​области архитектуры, городского планирования и дизайна интерьеров. Мы верим в обмен знаниями и продвижение диалога для увеличения творческого потенциала сотрудничества.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Текст заголовка\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:596:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">Мы - студия в Берлине с международной практикой в ​​области архитектуры, городского планирования и дизайна интерьеров. Мы верим в обмен знаниями и продвижение диалога для увеличения творческого потенциала сотрудничества.</h2>\n<!-- /wp:heading -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:4381;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:77:\"Медиа и текст в полноразмерном контейнере\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1527:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Крупный план засохшей потрескавшейся земли.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>В чем проблема?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Сегодня деревья важнее, чем когда-либо прежде. Сообщается, что из деревьев изготовлено более 10 000 изделий. Посредством химии из скромной поленницы получаются химические вещества, пластмассы и ткани, о которых невозможно было даже представить, когда топор впервые срубил техасское дерево.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Узнать больше</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:130:\"Медиа и текстовый блок с изображением слева и текстом и кнопкой справа.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2197:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Крупный план засохшей потрескавшейся земли.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>В чем проблема?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Сегодня деревья важнее, чем когда-либо прежде. Сообщается, что из деревьев изготовлено более 10 000 изделий. Посредством химии из скромной поленницы получаются химические вещества, пластмассы и ткани, о которых невозможно было даже представить, когда топор впервые срубил техасское дерево.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Узнать больше</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:4383;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:63:\"Медиа и текст с изображением слева\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:644:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Крупный план, абстрактный вид архитектуры.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Открытые пространства</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Посмотрите тематическое исследование ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:112:\"Медиа и текстовый блок с изображением слева и текстом справа.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:951:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Крупный план, абстрактный вид архитектуры.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Открытые пространства</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Посмотрите тематическое исследование ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:4382;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:65:\"Медиа и текст с изображением справа\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:830:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"Зелено-коричневый сельский пейзаж, ведущий в ярко-синий океан и слегка облачное небо, выполненный масляными красками.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Берег синего моря</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Элеонора Харрис&nbsp;(Американка, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:112:\"Медиа и текстовый блок с изображением справа и текстом слева.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1283:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"Зелено-коричневый сельский пейзаж, ведущий в ярко-синий океан и слегка облачное небо, выполненный масляными красками.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Берег синего моря</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Элеонора Харрис&nbsp;(Американка, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:4379;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:69:\"Три колонки с изображениями и текстом\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3405:\"\n<div class=\"wp-container-616f0239dea35 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ЭКОСИСТЕМА</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Положительный рост.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Природа</em> в обычном смысле слова относится к сущностям, неизменным человеком; космос, воздух, река, лист. <em>Искусство</em> применяется к смеси его воли с теми же вещами, как в доме, канале, статуе, картине. Но его операции, взятые вместе, настолько незначительны, это небольшое измельчение, выпечка, заплатка и стирка, что в таком грандиозном впечатлении, как мир, в человеческом сознании, они не меняют результата.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Солнце садится сквозь густой лес деревьев.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Ветровые турбины, стоящие на травянистой равнине, против голубого неба\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Солнце светит над гребнем, спускающимся к берегу. Вдалеке по дороге едет машина.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Несомненно, у нас нет вопросов, на которые невозможно ответить. Мы должны доверять совершенству творения настолько, чтобы верить в то, что какое бы любопытство ни пробудил в наших умах порядок вещей, порядок вещей может удовлетворить. Состояние каждого человека &#8212; это иероглифическое решение тех вопросов, которые он задавал.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:142:\"Три столбца с изображениями и текстом с интервалом по вертикали для смещения.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:4739:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ЭКОСИСТЕМА</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Положительный рост.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Природа</em> в обычном смысле слова относится к сущностям, неизменным человеком; космос, воздух, река, лист. <em>Искусство</em> применяется к смеси его воли с теми же вещами, как в доме, канале, статуе, картине. Но его операции, взятые вместе, настолько незначительны, это небольшое измельчение, выпечка, заплатка и стирка, что в таком грандиозном впечатлении, как мир, в человеческом сознании, они не меняют результата.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Солнце садится сквозь густой лес деревьев.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Ветровые турбины, стоящие на травянистой равнине, против голубого неба\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Солнце светит над гребнем, спускающимся к берегу. Вдалеке по дороге едет машина.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Несомненно, у нас нет вопросов, на которые невозможно ответить. Мы должны доверять совершенству творения настолько, чтобы верить в то, что какое бы любопытство ни пробудил в наших умах порядок вещей, порядок вещей может удовлетворить. Состояние каждого человека - это иероглифическое решение тех вопросов, которые он задавал.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:4377;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:74:\"Три колонки со смещенными изображениями\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1222:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Крупный план, абстрактный вид геометрической архитектуры.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Крупным планом вид окна белого здания под углом.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Крупный план угла белого геометрического здания с острыми и скругленными углами.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:75:\"Три колонки со смещенными изображениями.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1898:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Крупный план, абстрактный вид геометрической архитектуры.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Крупным планом вид окна белого здания под углом.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Крупный план угла белого геометрического здания с острыми и скругленными углами.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:4378;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Три колонки текста\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1041:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Виртуальный тур ↗</a></strong></h3>\n\n\n\n<p>Примите участие в виртуальной экскурсии по музею. Идеально подходит для школ и мероприятий.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Текущие шоу ↗</a></strong></h3>\n\n\n\n<p>Будьте в курсе и смотрите наши текущие выставки здесь.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Полезная информация ↗</a></strong></h3>\n\n\n\n<p>Узнайте о времени работы, ценах на билеты и скидках.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:35:\"Три колонки текста.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1736:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Виртуальный тур ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Примите участие в виртуальной экскурсии по музею. Идеально подходит для школ и мероприятий.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Текущие шоу ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Будьте в курсе и смотрите наши текущие выставки здесь.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Полезная информация ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Узнайте о времени работы, ценах на билеты и скидках.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:4391;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:12:\"Цитата\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:771:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"Боковой профиль женщины в коричневой водолазке и белой сумке. Она смотрит с закрытыми глазами.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>«Участие заставляет меня чувствовать, что я полезен планете».</p><cite>&#8212; Анна Вонг,<em>Волонтер</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"ru_RU\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1139:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"Боковой профиль женщины в коричневой водолазке и белой сумке. Она смотрит с закрытыми глазами.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>«Участие заставляет меня чувствовать, что я полезен планете».</p><cite>- Анна Вонг,<em>Волонтер</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:13;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:290:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:402:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:14;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1019:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:15;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1055:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:16;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1194:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:17;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:18;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:19;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:654:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#171;Contributing makes me feel like I&#8217;m being useful to the planet.&#187;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:20;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:801:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:21;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2646:\"\n<div class=\"wp-container-616f0239e69a9 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3980:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:22;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:23;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1337:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:24;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1915:\"\n<div class=\"wp-container-616f0239e8e99 wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:25;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_customize_draft_post_name', '%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%b9%d1%82%d0%b5-%d0%b2%d0%b0%d1%88-%d1%81%d0%b0%d0%b9%d1%82-%d1%81-%d0%bf%d0%be%d0%bc%d0%be%d1%89%d1%8c%d1%8e-%d0%b1%d0%bb%d0%be%d0%ba%d0%be%d0%b2'),
(4, 5, '_customize_changeset_uuid', 'dd59ff79-d59d-4463-a63e-2c45c034a5e1'),
(5, 6, '_customize_draft_post_name', '%d0%be-%d0%bd%d0%b0%d1%81'),
(6, 6, '_customize_changeset_uuid', 'dd59ff79-d59d-4463-a63e-2c45c034a5e1'),
(7, 7, '_customize_draft_post_name', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(8, 7, '_customize_changeset_uuid', 'dd59ff79-d59d-4463-a63e-2c45c034a5e1'),
(9, 8, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(10, 8, '_customize_changeset_uuid', 'dd59ff79-d59d-4463-a63e-2c45c034a5e1'),
(12, 10, '_customize_changeset_uuid', '77aa59c4-825a-43f9-8993-15fe6ed3fa08'),
(14, 11, '_customize_changeset_uuid', '77aa59c4-825a-43f9-8993-15fe6ed3fa08'),
(16, 12, '_customize_changeset_uuid', '77aa59c4-825a-43f9-8993-15fe6ed3fa08'),
(18, 13, '_customize_changeset_uuid', '77aa59c4-825a-43f9-8993-15fe6ed3fa08'),
(19, 14, '_edit_lock', '1634481025:1'),
(21, 15, '_customize_changeset_uuid', '77aa59c4-825a-43f9-8993-15fe6ed3fa08'),
(23, 16, '_customize_changeset_uuid', '77aa59c4-825a-43f9-8993-15fe6ed3fa08'),
(24, 17, '_wp_attached_file', '2021/10/logo.png'),
(25, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:66;s:4:\"file\";s:16:\"2021/10/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 18, '_wp_attached_file', '2021/10/cropped-logo.png'),
(27, 18, '_wp_attachment_context', 'custom-logo'),
(28, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:66;s:4:\"file\";s:24:\"2021/10/cropped-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 25, '_menu_item_type', 'custom'),
(30, 25, '_menu_item_menu_item_parent', '0'),
(31, 25, '_menu_item_object_id', '25'),
(32, 25, '_menu_item_object', 'custom'),
(33, 25, '_menu_item_target', ''),
(34, 25, '_menu_item_classes', 'a:1:{i:0;s:6:\"hidden\";}'),
(35, 25, '_menu_item_xfn', ''),
(36, 25, '_menu_item_url', 'http://localhost/'),
(61, 29, '_menu_item_type', 'custom'),
(62, 29, '_menu_item_menu_item_parent', '0'),
(63, 29, '_menu_item_object_id', '29'),
(64, 29, '_menu_item_object', 'custom'),
(65, 29, '_menu_item_target', ''),
(66, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 29, '_menu_item_xfn', ''),
(68, 29, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(69, 30, '_menu_item_type', 'custom'),
(70, 30, '_menu_item_menu_item_parent', '0'),
(71, 30, '_menu_item_object_id', '30'),
(72, 30, '_menu_item_object', 'custom'),
(73, 30, '_menu_item_target', ''),
(74, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 30, '_menu_item_xfn', ''),
(76, 30, '_menu_item_url', 'https://twitter.com/wordpress'),
(77, 31, '_menu_item_type', 'custom'),
(78, 31, '_menu_item_menu_item_parent', '0'),
(79, 31, '_menu_item_object_id', '31'),
(80, 31, '_menu_item_object', 'custom'),
(81, 31, '_menu_item_target', ''),
(82, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 31, '_menu_item_xfn', ''),
(84, 31, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(85, 32, '_menu_item_type', 'custom'),
(86, 32, '_menu_item_menu_item_parent', '0'),
(87, 32, '_menu_item_object_id', '32'),
(88, 32, '_menu_item_object', 'custom'),
(89, 32, '_menu_item_target', ''),
(90, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 32, '_menu_item_xfn', ''),
(92, 32, '_menu_item_url', 'mailto:wordpress@example.com'),
(109, 14, '_wp_trash_meta_status', 'publish'),
(110, 14, '_wp_trash_meta_time', '1634481031'),
(111, 9, '_customize_restore_dismissed', '1'),
(112, 35, '_edit_lock', '1634481341:1'),
(114, 36, '_customize_changeset_uuid', 'bd00f8e8-a6fc-4260-b8ad-fb99859f2bbf'),
(123, 35, '_wp_trash_meta_status', 'publish'),
(124, 35, '_wp_trash_meta_time', '1634481358'),
(125, 41, '_wp_trash_meta_status', 'publish'),
(126, 41, '_wp_trash_meta_time', '1634481402'),
(127, 43, '_wp_trash_meta_status', 'publish'),
(128, 43, '_wp_trash_meta_time', '1634481703'),
(129, 44, '_wp_trash_meta_status', 'publish'),
(130, 44, '_wp_trash_meta_time', '1634482736'),
(131, 10, '_edit_lock', '1634578123:1'),
(132, 2, '_edit_lock', '1634483426:1'),
(133, 2, '_wp_trash_meta_status', 'publish'),
(134, 2, '_wp_trash_meta_time', '1634483573'),
(135, 2, '_wp_desired_post_slug', 'sample-page'),
(136, 3, '_edit_lock', '1634483434:1'),
(137, 3, '_wp_trash_meta_status', 'draft'),
(138, 3, '_wp_trash_meta_time', '1634483588'),
(139, 3, '_wp_desired_post_slug', 'privacy-policy'),
(140, 13, '_wp_trash_meta_status', 'publish'),
(141, 13, '_wp_trash_meta_time', '1634483594'),
(142, 13, '_wp_desired_post_slug', '%d0%b1%d0%bb%d0%be%d0%b3'),
(143, 15, '_edit_lock', '1634483457:1'),
(144, 36, '_edit_lock', '1634578115:1'),
(145, 10, '_edit_last', '1'),
(146, 10, '_wp_page_template', 'templates/homepage.php'),
(147, 52, '_edit_last', '1'),
(148, 52, '_edit_lock', '1634579993:1'),
(149, 60, '_wp_attached_file', '2021/10/main_page_1.jpg'),
(150, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:825;s:4:\"file\";s:23:\"2021/10/main_page_1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"main_page_1-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"main_page_1-1024x587.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"main_page_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"main_page_1-768x440.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 62, '_wp_attached_file', '2021/10/main_page_3.jpg'),
(154, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:822;s:4:\"file\";s:23:\"2021/10/main_page_3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"main_page_3-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"main_page_3-1024x585.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"main_page_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"main_page_3-768x438.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 63, '_wp_attached_file', '2021/10/main_page_4.jpg'),
(156, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:822;s:4:\"file\";s:23:\"2021/10/main_page_4.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"main_page_4-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"main_page_4-1024x585.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"main_page_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"main_page_4-768x438.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 10, 'block_1_image1', '60'),
(158, 10, '_block_1_image1', 'field_616c4612b911f'),
(159, 10, 'block_1_image2', '61'),
(160, 10, '_block_1_image2', 'field_616c46d8b9122'),
(161, 10, 'block_1_image3', '62'),
(162, 10, '_block_1_image3', 'field_616c46e7b9123'),
(163, 10, 'block_1_image4', '63'),
(164, 10, '_block_1_image4', 'field_616c46eeb9124'),
(165, 10, 'block_1', ''),
(166, 10, '_block_1', 'field_616c45dab911e'),
(167, 10, 'price_uah', '0'),
(168, 10, '_price_uah', ''),
(169, 64, 'block_1_image1', '60'),
(170, 64, '_block_1_image1', 'field_616c4612b911f'),
(171, 64, 'block_1_image2', '61'),
(172, 64, '_block_1_image2', 'field_616c46d8b9122'),
(173, 64, 'block_1_image3', '62'),
(174, 64, '_block_1_image3', 'field_616c46e7b9123'),
(175, 64, 'block_1_image4', '63'),
(176, 64, '_block_1_image4', 'field_616c46eeb9124'),
(177, 64, 'block_1', ''),
(178, 64, '_block_1', 'field_616c45dab911e'),
(179, 64, 'price_uah', '0'),
(180, 64, '_price_uah', ''),
(181, 10, 'block_1_title', 'NEW COLLECTION'),
(182, 10, '_block_1_title', 'field_616c49ea1e9bd'),
(183, 10, 'block_1_subtitle', 'Maison De Couture <br> <br> Parisienne'),
(184, 10, '_block_1_subtitle', 'field_616c49f01e9be'),
(185, 10, 'block_1_image', '60'),
(186, 10, '_block_1_image', 'field_616c4612b911f'),
(187, 10, 'block_2_title', 'SHOP ONLINE'),
(188, 10, '_block_2_title', 'field_616c4a159c9f3'),
(189, 10, 'block_2_subtitle', 'by Ricca Sposa'),
(190, 10, '_block_2_subtitle', 'field_616c4a159c9f4'),
(191, 10, 'block_2_image', '82'),
(192, 10, '_block_2_image', 'field_616c4a159c9f5'),
(193, 10, 'block_2', ''),
(194, 10, '_block_2', 'field_616c4a159c9f2'),
(195, 10, 'block_3_title', 'NEW COLLECTION'),
(196, 10, '_block_3_title', 'field_616c4a1b9c9f7'),
(197, 10, 'block_3_subtitle', 'Royal Collection'),
(198, 10, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(199, 10, 'block_3_image', '63'),
(200, 10, '_block_3_image', 'field_616c4a1b9c9f9'),
(201, 10, 'block_3', ''),
(202, 10, '_block_3', 'field_616c4a1a9c9f6'),
(203, 10, 'block_4_title', 'NIGHT COLLECTION'),
(204, 10, '_block_4_title', 'field_616c4a1c9c9fb'),
(205, 10, 'block_4_subtitle', ' MAGIC CHIC '),
(206, 10, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(207, 10, 'block_4_image', '62'),
(208, 10, '_block_4_image', 'field_616c4a1c9c9fd'),
(209, 10, 'block_4', ''),
(210, 10, '_block_4', 'field_616c4a1c9c9fa'),
(211, 79, 'block_1_image1', '60'),
(212, 79, '_block_1_image1', 'field_616c4612b911f'),
(213, 79, 'block_1_image2', '61'),
(214, 79, '_block_1_image2', 'field_616c46d8b9122'),
(215, 79, 'block_1_image3', '62'),
(216, 79, '_block_1_image3', 'field_616c46e7b9123'),
(217, 79, 'block_1_image4', '63'),
(218, 79, '_block_1_image4', 'field_616c46eeb9124'),
(219, 79, 'block_1', ''),
(220, 79, '_block_1', 'field_616c45dab911e'),
(221, 79, 'price_uah', '0'),
(222, 79, '_price_uah', ''),
(223, 79, 'block_1_title', 'NEW COLLECTION'),
(224, 79, '_block_1_title', 'field_616c49ea1e9bd'),
(225, 79, 'block_1_subtitle', 'Maison De Couture Parisienne'),
(226, 79, '_block_1_subtitle', 'field_616c49f01e9be'),
(227, 79, 'block_1_image', '60'),
(228, 79, '_block_1_image', 'field_616c4612b911f'),
(229, 79, 'block_2_title', 'SHOP ONLINE'),
(230, 79, '_block_2_title', 'field_616c4a159c9f3'),
(231, 79, 'block_2_subtitle', 'by Ricca Sposa'),
(232, 79, '_block_2_subtitle', 'field_616c4a159c9f4'),
(233, 79, 'block_2_image', '61'),
(234, 79, '_block_2_image', 'field_616c4a159c9f5'),
(235, 79, 'block_2', ''),
(236, 79, '_block_2', 'field_616c4a159c9f2'),
(237, 79, 'block_3_title', 'NEW COLLECTION'),
(238, 79, '_block_3_title', 'field_616c4a1b9c9f7'),
(239, 79, 'block_3_subtitle', 'Royal Collection'),
(240, 79, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(241, 79, 'block_3_image', '63'),
(242, 79, '_block_3_image', 'field_616c4a1b9c9f9'),
(243, 79, 'block_3', ''),
(244, 79, '_block_3', 'field_616c4a1a9c9f6'),
(245, 79, 'block_4_title', 'NIGHT COLLECTION'),
(246, 79, '_block_4_title', 'field_616c4a1c9c9fb'),
(247, 79, 'block_4_subtitle', ' MAGIC CHIC '),
(248, 79, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(249, 79, 'block_4_image', '62'),
(250, 79, '_block_4_image', 'field_616c4a1c9c9fd'),
(251, 79, 'block_4', ''),
(252, 79, '_block_4', 'field_616c4a1c9c9fa'),
(253, 80, 'block_1_image1', '60'),
(254, 80, '_block_1_image1', 'field_616c4612b911f'),
(255, 80, 'block_1_image2', '61'),
(256, 80, '_block_1_image2', 'field_616c46d8b9122'),
(257, 80, 'block_1_image3', '62'),
(258, 80, '_block_1_image3', 'field_616c46e7b9123'),
(259, 80, 'block_1_image4', '63'),
(260, 80, '_block_1_image4', 'field_616c46eeb9124'),
(261, 80, 'block_1', ''),
(262, 80, '_block_1', 'field_616c45dab911e'),
(263, 80, 'price_uah', '0'),
(264, 80, '_price_uah', ''),
(265, 80, 'block_1_title', 'NEW COLLECTION'),
(266, 80, '_block_1_title', 'field_616c49ea1e9bd'),
(267, 80, 'block_1_subtitle', 'Maison De Couture Parisienne'),
(268, 80, '_block_1_subtitle', 'field_616c49f01e9be'),
(269, 80, 'block_1_image', '60'),
(270, 80, '_block_1_image', 'field_616c4612b911f'),
(271, 80, 'block_2_title', 'SHOP ONLINE'),
(272, 80, '_block_2_title', 'field_616c4a159c9f3'),
(273, 80, 'block_2_subtitle', 'by Ricca Sposa'),
(274, 80, '_block_2_subtitle', 'field_616c4a159c9f4'),
(275, 80, 'block_2_image', '61'),
(276, 80, '_block_2_image', 'field_616c4a159c9f5'),
(277, 80, 'block_2', ''),
(278, 80, '_block_2', 'field_616c4a159c9f2'),
(279, 80, 'block_3_title', 'NEW COLLECTION'),
(280, 80, '_block_3_title', 'field_616c4a1b9c9f7'),
(281, 80, 'block_3_subtitle', 'Royal Collection'),
(282, 80, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(283, 80, 'block_3_image', '63'),
(284, 80, '_block_3_image', 'field_616c4a1b9c9f9'),
(285, 80, 'block_3', ''),
(286, 80, '_block_3', 'field_616c4a1a9c9f6'),
(287, 80, 'block_4_title', 'NIGHT COLLECTION'),
(288, 80, '_block_4_title', 'field_616c4a1c9c9fb'),
(289, 80, 'block_4_subtitle', ' MAGIC CHIC '),
(290, 80, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(291, 80, 'block_4_image', '62'),
(292, 80, '_block_4_image', 'field_616c4a1c9c9fd'),
(293, 80, 'block_4', ''),
(294, 80, '_block_4', 'field_616c4a1c9c9fa'),
(295, 81, 'block_1_image1', '60'),
(296, 81, '_block_1_image1', 'field_616c4612b911f'),
(297, 81, 'block_1_image2', '61'),
(298, 81, '_block_1_image2', 'field_616c46d8b9122'),
(299, 81, 'block_1_image3', '62'),
(300, 81, '_block_1_image3', 'field_616c46e7b9123'),
(301, 81, 'block_1_image4', '63'),
(302, 81, '_block_1_image4', 'field_616c46eeb9124'),
(303, 81, 'block_1', ''),
(304, 81, '_block_1', 'field_616c45dab911e'),
(305, 81, 'price_uah', '0'),
(306, 81, '_price_uah', ''),
(307, 81, 'block_1_title', 'NEW COLLECTION'),
(308, 81, '_block_1_title', 'field_616c49ea1e9bd'),
(309, 81, 'block_1_subtitle', 'Maison De Couture <br> Parisienne'),
(310, 81, '_block_1_subtitle', 'field_616c49f01e9be'),
(311, 81, 'block_1_image', '60'),
(312, 81, '_block_1_image', 'field_616c4612b911f'),
(313, 81, 'block_2_title', 'SHOP ONLINE'),
(314, 81, '_block_2_title', 'field_616c4a159c9f3'),
(315, 81, 'block_2_subtitle', 'by Ricca Sposa'),
(316, 81, '_block_2_subtitle', 'field_616c4a159c9f4'),
(317, 81, 'block_2_image', '61'),
(318, 81, '_block_2_image', 'field_616c4a159c9f5'),
(319, 81, 'block_2', ''),
(320, 81, '_block_2', 'field_616c4a159c9f2'),
(321, 81, 'block_3_title', 'NEW COLLECTION'),
(322, 81, '_block_3_title', 'field_616c4a1b9c9f7'),
(323, 81, 'block_3_subtitle', 'Royal Collection'),
(324, 81, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(325, 81, 'block_3_image', '63'),
(326, 81, '_block_3_image', 'field_616c4a1b9c9f9'),
(327, 81, 'block_3', ''),
(328, 81, '_block_3', 'field_616c4a1a9c9f6'),
(329, 81, 'block_4_title', 'NIGHT COLLECTION'),
(330, 81, '_block_4_title', 'field_616c4a1c9c9fb'),
(331, 81, 'block_4_subtitle', ' MAGIC CHIC '),
(332, 81, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(333, 81, 'block_4_image', '62'),
(334, 81, '_block_4_image', 'field_616c4a1c9c9fd'),
(335, 81, 'block_4', ''),
(336, 81, '_block_4', 'field_616c4a1c9c9fa'),
(337, 82, '_wp_attached_file', '2021/10/main_page_2.jpg'),
(338, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:824;s:4:\"file\";s:23:\"2021/10/main_page_2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"main_page_2-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"main_page_2-1024x586.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:586;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"main_page_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"main_page_2-768x439.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 83, 'block_1_image1', '60'),
(340, 83, '_block_1_image1', 'field_616c4612b911f'),
(341, 83, 'block_1_image2', '61'),
(342, 83, '_block_1_image2', 'field_616c46d8b9122'),
(343, 83, 'block_1_image3', '62'),
(344, 83, '_block_1_image3', 'field_616c46e7b9123'),
(345, 83, 'block_1_image4', '63'),
(346, 83, '_block_1_image4', 'field_616c46eeb9124'),
(347, 83, 'block_1', ''),
(348, 83, '_block_1', 'field_616c45dab911e'),
(349, 83, 'price_uah', '0'),
(350, 83, '_price_uah', ''),
(351, 83, 'block_1_title', 'NEW COLLECTION'),
(352, 83, '_block_1_title', 'field_616c49ea1e9bd'),
(353, 83, 'block_1_subtitle', 'Maison De Couture <br> Parisienne'),
(354, 83, '_block_1_subtitle', 'field_616c49f01e9be'),
(355, 83, 'block_1_image', '60'),
(356, 83, '_block_1_image', 'field_616c4612b911f'),
(357, 83, 'block_2_title', 'SHOP ONLINE'),
(358, 83, '_block_2_title', 'field_616c4a159c9f3'),
(359, 83, 'block_2_subtitle', 'by Ricca Sposa'),
(360, 83, '_block_2_subtitle', 'field_616c4a159c9f4'),
(361, 83, 'block_2_image', '82'),
(362, 83, '_block_2_image', 'field_616c4a159c9f5'),
(363, 83, 'block_2', ''),
(364, 83, '_block_2', 'field_616c4a159c9f2'),
(365, 83, 'block_3_title', 'NEW COLLECTION'),
(366, 83, '_block_3_title', 'field_616c4a1b9c9f7'),
(367, 83, 'block_3_subtitle', 'Royal Collection'),
(368, 83, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(369, 83, 'block_3_image', '63'),
(370, 83, '_block_3_image', 'field_616c4a1b9c9f9'),
(371, 83, 'block_3', ''),
(372, 83, '_block_3', 'field_616c4a1a9c9f6'),
(373, 83, 'block_4_title', 'NIGHT COLLECTION'),
(374, 83, '_block_4_title', 'field_616c4a1c9c9fb'),
(375, 83, 'block_4_subtitle', ' MAGIC CHIC '),
(376, 83, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(377, 83, 'block_4_image', '62'),
(378, 83, '_block_4_image', 'field_616c4a1c9c9fd'),
(379, 83, 'block_4', ''),
(380, 83, '_block_4', 'field_616c4a1c9c9fa'),
(381, 84, 'block_1_image1', '60'),
(382, 84, '_block_1_image1', 'field_616c4612b911f'),
(383, 84, 'block_1_image2', '61'),
(384, 84, '_block_1_image2', 'field_616c46d8b9122'),
(385, 84, 'block_1_image3', '62'),
(386, 84, '_block_1_image3', 'field_616c46e7b9123'),
(387, 84, 'block_1_image4', '63'),
(388, 84, '_block_1_image4', 'field_616c46eeb9124'),
(389, 84, 'block_1', ''),
(390, 84, '_block_1', 'field_616c45dab911e'),
(391, 84, 'price_uah', '0'),
(392, 84, '_price_uah', ''),
(393, 84, 'block_1_title', 'NEW COLLECTION'),
(394, 84, '_block_1_title', 'field_616c49ea1e9bd'),
(395, 84, 'block_1_subtitle', 'Maison De Couture <br> Parisienne'),
(396, 84, '_block_1_subtitle', 'field_616c49f01e9be'),
(397, 84, 'block_1_image', '60'),
(398, 84, '_block_1_image', 'field_616c4612b911f'),
(399, 84, 'block_2_title', 'SHOP ONLINE'),
(400, 84, '_block_2_title', 'field_616c4a159c9f3'),
(401, 84, 'block_2_subtitle', 'by Ricca Sposa'),
(402, 84, '_block_2_subtitle', 'field_616c4a159c9f4'),
(403, 84, 'block_2_image', '61'),
(404, 84, '_block_2_image', 'field_616c4a159c9f5'),
(405, 84, 'block_2', ''),
(406, 84, '_block_2', 'field_616c4a159c9f2'),
(407, 84, 'block_3_title', 'NEW COLLECTION'),
(408, 84, '_block_3_title', 'field_616c4a1b9c9f7'),
(409, 84, 'block_3_subtitle', 'Royal Collection'),
(410, 84, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(411, 84, 'block_3_image', '63'),
(412, 84, '_block_3_image', 'field_616c4a1b9c9f9'),
(413, 84, 'block_3', ''),
(414, 84, '_block_3', 'field_616c4a1a9c9f6'),
(415, 84, 'block_4_title', 'NIGHT COLLECTION'),
(416, 84, '_block_4_title', 'field_616c4a1c9c9fb'),
(417, 84, 'block_4_subtitle', ' MAGIC CHIC '),
(418, 84, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(419, 84, 'block_4_image', '62'),
(420, 84, '_block_4_image', 'field_616c4a1c9c9fd'),
(421, 84, 'block_4', ''),
(422, 84, '_block_4', 'field_616c4a1c9c9fa'),
(423, 85, 'block_1_image1', '60'),
(424, 85, '_block_1_image1', 'field_616c4612b911f'),
(425, 85, 'block_1_image2', '61'),
(426, 85, '_block_1_image2', 'field_616c46d8b9122'),
(427, 85, 'block_1_image3', '62'),
(428, 85, '_block_1_image3', 'field_616c46e7b9123'),
(429, 85, 'block_1_image4', '63'),
(430, 85, '_block_1_image4', 'field_616c46eeb9124'),
(431, 85, 'block_1', ''),
(432, 85, '_block_1', 'field_616c45dab911e'),
(433, 85, 'price_uah', '0'),
(434, 85, '_price_uah', ''),
(435, 85, 'block_1_title', 'NEW COLLECTION'),
(436, 85, '_block_1_title', 'field_616c49ea1e9bd'),
(437, 85, 'block_1_subtitle', 'Maison De Couture <br> Parisienne'),
(438, 85, '_block_1_subtitle', 'field_616c49f01e9be'),
(439, 85, 'block_1_image', '60'),
(440, 85, '_block_1_image', 'field_616c4612b911f'),
(441, 85, 'block_2_title', 'SHOP ONLINE'),
(442, 85, '_block_2_title', 'field_616c4a159c9f3'),
(443, 85, 'block_2_subtitle', 'by Ricca Sposa'),
(444, 85, '_block_2_subtitle', 'field_616c4a159c9f4'),
(445, 85, 'block_2_image', '82'),
(446, 85, '_block_2_image', 'field_616c4a159c9f5'),
(447, 85, 'block_2', ''),
(448, 85, '_block_2', 'field_616c4a159c9f2'),
(449, 85, 'block_3_title', 'NEW COLLECTION'),
(450, 85, '_block_3_title', 'field_616c4a1b9c9f7'),
(451, 85, 'block_3_subtitle', 'Royal Collection'),
(452, 85, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(453, 85, 'block_3_image', '63'),
(454, 85, '_block_3_image', 'field_616c4a1b9c9f9'),
(455, 85, 'block_3', ''),
(456, 85, '_block_3', 'field_616c4a1a9c9f6'),
(457, 85, 'block_4_title', 'NIGHT COLLECTION'),
(458, 85, '_block_4_title', 'field_616c4a1c9c9fb'),
(459, 85, 'block_4_subtitle', ' MAGIC CHIC '),
(460, 85, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(461, 85, 'block_4_image', '62'),
(462, 85, '_block_4_image', 'field_616c4a1c9c9fd'),
(463, 85, 'block_4', ''),
(464, 85, '_block_4', 'field_616c4a1c9c9fa'),
(465, 87, 'block_1_image1', '60'),
(466, 87, '_block_1_image1', 'field_616c4612b911f'),
(467, 87, 'block_1_image2', '61'),
(468, 87, '_block_1_image2', 'field_616c46d8b9122'),
(469, 87, 'block_1_image3', '62'),
(470, 87, '_block_1_image3', 'field_616c46e7b9123'),
(471, 87, 'block_1_image4', '63'),
(472, 87, '_block_1_image4', 'field_616c46eeb9124'),
(473, 87, 'block_1', ''),
(474, 87, '_block_1', 'field_616c45dab911e'),
(475, 87, 'price_uah', '0'),
(476, 87, '_price_uah', ''),
(477, 87, 'block_1_title', 'NEW COLLECTION'),
(478, 87, '_block_1_title', 'field_616c49ea1e9bd'),
(479, 87, 'block_1_subtitle', 'Maison De Couture <br> <br> Parisienne'),
(480, 87, '_block_1_subtitle', 'field_616c49f01e9be'),
(481, 87, 'block_1_image', '60'),
(482, 87, '_block_1_image', 'field_616c4612b911f'),
(483, 87, 'block_2_title', 'SHOP ONLINE'),
(484, 87, '_block_2_title', 'field_616c4a159c9f3'),
(485, 87, 'block_2_subtitle', 'by Ricca Sposa'),
(486, 87, '_block_2_subtitle', 'field_616c4a159c9f4'),
(487, 87, 'block_2_image', '82'),
(488, 87, '_block_2_image', 'field_616c4a159c9f5'),
(489, 87, 'block_2', ''),
(490, 87, '_block_2', 'field_616c4a159c9f2'),
(491, 87, 'block_3_title', 'NEW COLLECTION'),
(492, 87, '_block_3_title', 'field_616c4a1b9c9f7'),
(493, 87, 'block_3_subtitle', 'Royal Collection'),
(494, 87, '_block_3_subtitle', 'field_616c4a1b9c9f8'),
(495, 87, 'block_3_image', '63'),
(496, 87, '_block_3_image', 'field_616c4a1b9c9f9'),
(497, 87, 'block_3', ''),
(498, 87, '_block_3', 'field_616c4a1a9c9f6'),
(499, 87, 'block_4_title', 'NIGHT COLLECTION'),
(500, 87, '_block_4_title', 'field_616c4a1c9c9fb'),
(501, 87, 'block_4_subtitle', ' MAGIC CHIC '),
(502, 87, '_block_4_subtitle', 'field_616c4a1c9c9fc'),
(503, 87, 'block_4_image', '62'),
(504, 87, '_block_4_image', 'field_616c4a1c9c9fd'),
(505, 87, 'block_4', ''),
(506, 87, '_block_4', 'field_616c4a1c9c9fa'),
(507, 15, '_wp_trash_meta_status', 'publish'),
(508, 15, '_wp_trash_meta_time', '1634578294'),
(509, 15, '_wp_desired_post_slug', 'about-us'),
(510, 36, '_wp_trash_meta_status', 'publish'),
(511, 36, '_wp_trash_meta_time', '1634578294'),
(512, 36, '_wp_desired_post_slug', 'collections'),
(513, 16, '_wp_trash_meta_status', 'publish'),
(514, 16, '_wp_trash_meta_time', '1634578294'),
(515, 16, '_wp_desired_post_slug', 'contacts'),
(516, 12, '_wp_trash_meta_status', 'publish'),
(517, 12, '_wp_trash_meta_time', '1634578294'),
(518, 12, '_wp_desired_post_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(519, 11, '_wp_trash_meta_status', 'publish'),
(520, 11, '_wp_trash_meta_time', '1634578294'),
(521, 11, '_wp_desired_post_slug', '%d0%be-%d0%bd%d0%b0%d1%81'),
(522, 92, '_edit_last', '1'),
(523, 92, '_edit_lock', '1634668493:1'),
(524, 120, '_edit_lock', '1634666793:1'),
(525, 120, '_edit_last', '1'),
(526, 120, '_wp_page_template', 'templates/about-page.php'),
(527, 123, '_menu_item_type', 'post_type'),
(528, 123, '_menu_item_menu_item_parent', '0'),
(529, 123, '_menu_item_object_id', '120'),
(530, 123, '_menu_item_object', 'page'),
(531, 123, '_menu_item_target', ''),
(532, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(533, 123, '_menu_item_xfn', ''),
(534, 123, '_menu_item_url', ''),
(535, 122, '_wp_trash_meta_status', 'publish'),
(536, 122, '_wp_trash_meta_time', '1634628574'),
(538, 124, '_customize_changeset_uuid', '8a55912b-eb60-44fb-ae91-135ec0a73c5b'),
(539, 125, '_edit_lock', '1634628678:1'),
(541, 126, '_customize_changeset_uuid', '8a55912b-eb60-44fb-ae91-135ec0a73c5b'),
(543, 127, '_customize_changeset_uuid', '8a55912b-eb60-44fb-ae91-135ec0a73c5b'),
(545, 128, '_customize_changeset_uuid', '8a55912b-eb60-44fb-ae91-135ec0a73c5b'),
(547, 129, '_customize_changeset_uuid', '8a55912b-eb60-44fb-ae91-135ec0a73c5b'),
(548, 135, '_menu_item_type', 'post_type'),
(549, 135, '_menu_item_menu_item_parent', '0'),
(550, 135, '_menu_item_object_id', '124'),
(551, 135, '_menu_item_object', 'page'),
(552, 135, '_menu_item_target', ''),
(553, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(554, 135, '_menu_item_xfn', ''),
(555, 135, '_menu_item_url', ''),
(556, 136, '_menu_item_type', 'post_type'),
(557, 136, '_menu_item_menu_item_parent', '0'),
(558, 136, '_menu_item_object_id', '126'),
(559, 136, '_menu_item_object', 'page'),
(560, 136, '_menu_item_target', ''),
(561, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(562, 136, '_menu_item_xfn', ''),
(563, 136, '_menu_item_url', ''),
(564, 137, '_menu_item_type', 'post_type'),
(565, 137, '_menu_item_menu_item_parent', '0'),
(566, 137, '_menu_item_object_id', '127'),
(567, 137, '_menu_item_object', 'page'),
(568, 137, '_menu_item_target', ''),
(569, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(570, 137, '_menu_item_xfn', ''),
(571, 137, '_menu_item_url', ''),
(572, 138, '_menu_item_type', 'post_type'),
(573, 138, '_menu_item_menu_item_parent', '0'),
(574, 138, '_menu_item_object_id', '128'),
(575, 138, '_menu_item_object', 'page'),
(576, 138, '_menu_item_target', ''),
(577, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(578, 138, '_menu_item_xfn', ''),
(579, 138, '_menu_item_url', ''),
(580, 139, '_menu_item_type', 'post_type'),
(581, 139, '_menu_item_menu_item_parent', '0'),
(582, 139, '_menu_item_object_id', '129'),
(583, 139, '_menu_item_object', 'page'),
(584, 139, '_menu_item_target', ''),
(585, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(586, 139, '_menu_item_xfn', ''),
(587, 139, '_menu_item_url', ''),
(588, 125, '_wp_trash_meta_status', 'publish'),
(589, 125, '_wp_trash_meta_time', '1634628688'),
(590, 140, '_wp_attached_file', '2021/10/about_us.jpg'),
(591, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:697;s:6:\"height\";i:440;s:4:\"file\";s:20:\"2021/10/about_us.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"about_us-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"about_us-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(592, 120, 'block_1_img', '140'),
(593, 120, '_block_1_img', 'field_616db20a472f4'),
(594, 120, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. <br><br> The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(595, 120, '_block_1_description', 'field_616db21f472f5'),
(596, 120, 'block_1_title', 'About Us'),
(597, 120, '_block_1_title', 'field_616db22f472f6'),
(598, 120, 'block_1', ''),
(599, 120, '_block_1', 'field_616db1e7472f3'),
(600, 120, 'block_2_garant_title', 'We value our unblemished reputation greatly and that is why confidently guarantee:'),
(601, 120, '_block_2_garant_title', 'field_616db2dac4a8c'),
(602, 120, 'block_2_garants_garant-1_title', 'order is completed in the minimum period'),
(603, 120, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(604, 120, 'block_2_garants_garant-1_icon_name', 'garant-1.svg'),
(605, 120, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(606, 120, 'block_2_garants_garant-1', ''),
(607, 120, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(608, 120, 'block_2_garants_garant-2_title', 'careful selection of materials'),
(609, 120, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(610, 120, 'block_2_garants_garant-2_icon_name', 'garant-2.svg'),
(611, 120, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(612, 120, 'block_2_garants_garant-2', ''),
(613, 120, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(614, 120, 'block_2_garants_garant-3_title', 'delicate details and a unique cut style'),
(615, 120, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(616, 120, 'block_2_garants_garant-3_icon_name', 'garant-3.svg'),
(617, 120, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(618, 120, 'block_2_garants_garant-3', ''),
(619, 120, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(620, 120, 'block_2_garants_garant-4_title', 'excellent quality of products'),
(621, 120, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(622, 120, 'block_2_garants_garant-4_icon_name', 'garant-4.svg'),
(623, 120, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(624, 120, 'block_2_garants_garant-4', ''),
(625, 120, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(626, 120, 'block_2_garants_garant-5_title', 'changes in the model according to your wishes'),
(627, 120, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(628, 120, 'block_2_garants_garant-5_icon_name', 'garant-5.svg'),
(629, 120, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(630, 120, 'block_2_garants_garant-5', ''),
(631, 120, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(632, 120, 'block_2_garants_garant-6_title', 'optimally reasonable balance between price and quality'),
(633, 120, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(634, 120, 'block_2_garants_garant-6_icon_name', 'garant-6.svg'),
(635, 120, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(636, 120, 'block_2_garants_garant-6', ''),
(637, 120, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(638, 120, 'block_2_garants', ''),
(639, 120, '_block_2_garants', 'field_616db3aec4a8d'),
(640, 120, 'block_2', ''),
(641, 120, '_block_2', 'field_616db2c7c4a8b'),
(642, 120, 'price_uah', '0'),
(643, 120, '_price_uah', ''),
(644, 141, 'block_1_img', '140'),
(645, 141, '_block_1_img', 'field_616db20a472f4'),
(646, 141, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. We believe that we are justly proud of each collection launched. After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(647, 141, '_block_1_description', 'field_616db21f472f5'),
(648, 141, 'block_1_title', 'About Us'),
(649, 141, '_block_1_title', 'field_616db22f472f6'),
(650, 141, 'block_1', ''),
(651, 141, '_block_1', 'field_616db1e7472f3'),
(652, 141, 'block_2_garant_title', ''),
(653, 141, '_block_2_garant_title', 'field_616db2dac4a8c'),
(654, 141, 'block_2_garants_garant-1_title', ''),
(655, 141, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(656, 141, 'block_2_garants_garant-1_icon_name', ''),
(657, 141, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(658, 141, 'block_2_garants_garant-1', ''),
(659, 141, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(660, 141, 'block_2_garants_garant-2_title', ''),
(661, 141, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(662, 141, 'block_2_garants_garant-2_icon_name', ''),
(663, 141, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(664, 141, 'block_2_garants_garant-2', ''),
(665, 141, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(666, 141, 'block_2_garants_garant-3_title', ''),
(667, 141, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(668, 141, 'block_2_garants_garant-3_icon_name', ''),
(669, 141, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(670, 141, 'block_2_garants_garant-3', ''),
(671, 141, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(672, 141, 'block_2_garants_garant-4_title', ''),
(673, 141, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(674, 141, 'block_2_garants_garant-4_icon_name', ''),
(675, 141, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(676, 141, 'block_2_garants_garant-4', ''),
(677, 141, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(678, 141, 'block_2_garants_garant-5_title', ''),
(679, 141, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(680, 141, 'block_2_garants_garant-5_icon_name', ''),
(681, 141, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(682, 141, 'block_2_garants_garant-5', ''),
(683, 141, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(684, 141, 'block_2_garants_garant-6_title', ''),
(685, 141, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(686, 141, 'block_2_garants_garant-6_icon_name', ''),
(687, 141, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(688, 141, 'block_2_garants_garant-6', ''),
(689, 141, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(690, 141, 'block_2_garants', ''),
(691, 141, '_block_2_garants', 'field_616db3aec4a8d'),
(692, 141, 'block_2', ''),
(693, 141, '_block_2', 'field_616db2c7c4a8b'),
(694, 141, 'price_uah', '0'),
(695, 141, '_price_uah', ''),
(696, 142, 'block_1_img', '140'),
(697, 142, '_block_1_img', 'field_616db20a472f4'),
(698, 142, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(699, 142, '_block_1_description', 'field_616db21f472f5'),
(700, 142, 'block_1_title', 'About Us'),
(701, 142, '_block_1_title', 'field_616db22f472f6'),
(702, 142, 'block_1', ''),
(703, 142, '_block_1', 'field_616db1e7472f3'),
(704, 142, 'block_2_garant_title', ''),
(705, 142, '_block_2_garant_title', 'field_616db2dac4a8c'),
(706, 142, 'block_2_garants_garant-1_title', ''),
(707, 142, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(708, 142, 'block_2_garants_garant-1_icon_name', ''),
(709, 142, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(710, 142, 'block_2_garants_garant-1', ''),
(711, 142, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(712, 142, 'block_2_garants_garant-2_title', ''),
(713, 142, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(714, 142, 'block_2_garants_garant-2_icon_name', ''),
(715, 142, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(716, 142, 'block_2_garants_garant-2', ''),
(717, 142, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(718, 142, 'block_2_garants_garant-3_title', ''),
(719, 142, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(720, 142, 'block_2_garants_garant-3_icon_name', ''),
(721, 142, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(722, 142, 'block_2_garants_garant-3', ''),
(723, 142, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(724, 142, 'block_2_garants_garant-4_title', ''),
(725, 142, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(726, 142, 'block_2_garants_garant-4_icon_name', ''),
(727, 142, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(728, 142, 'block_2_garants_garant-4', ''),
(729, 142, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(730, 142, 'block_2_garants_garant-5_title', ''),
(731, 142, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(732, 142, 'block_2_garants_garant-5_icon_name', ''),
(733, 142, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(734, 142, 'block_2_garants_garant-5', ''),
(735, 142, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(736, 142, 'block_2_garants_garant-6_title', ''),
(737, 142, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(738, 142, 'block_2_garants_garant-6_icon_name', ''),
(739, 142, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(740, 142, 'block_2_garants_garant-6', ''),
(741, 142, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(742, 142, 'block_2_garants', ''),
(743, 142, '_block_2_garants', 'field_616db3aec4a8d'),
(744, 142, 'block_2', ''),
(745, 142, '_block_2', 'field_616db2c7c4a8b'),
(746, 142, 'price_uah', '0'),
(747, 142, '_price_uah', ''),
(748, 143, 'block_1_img', '140'),
(749, 143, '_block_1_img', 'field_616db20a472f4'),
(750, 143, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. <br><br> The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(751, 143, '_block_1_description', 'field_616db21f472f5'),
(752, 143, 'block_1_title', 'About Us'),
(753, 143, '_block_1_title', 'field_616db22f472f6'),
(754, 143, 'block_1', ''),
(755, 143, '_block_1', 'field_616db1e7472f3'),
(756, 143, 'block_2_garant_title', ''),
(757, 143, '_block_2_garant_title', 'field_616db2dac4a8c'),
(758, 143, 'block_2_garants_garant-1_title', ''),
(759, 143, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(760, 143, 'block_2_garants_garant-1_icon_name', ''),
(761, 143, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(762, 143, 'block_2_garants_garant-1', ''),
(763, 143, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(764, 143, 'block_2_garants_garant-2_title', ''),
(765, 143, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(766, 143, 'block_2_garants_garant-2_icon_name', ''),
(767, 143, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(768, 143, 'block_2_garants_garant-2', ''),
(769, 143, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(770, 143, 'block_2_garants_garant-3_title', ''),
(771, 143, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(772, 143, 'block_2_garants_garant-3_icon_name', ''),
(773, 143, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(774, 143, 'block_2_garants_garant-3', ''),
(775, 143, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(776, 143, 'block_2_garants_garant-4_title', ''),
(777, 143, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(778, 143, 'block_2_garants_garant-4_icon_name', ''),
(779, 143, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(780, 143, 'block_2_garants_garant-4', ''),
(781, 143, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(782, 143, 'block_2_garants_garant-5_title', ''),
(783, 143, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(784, 143, 'block_2_garants_garant-5_icon_name', ''),
(785, 143, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(786, 143, 'block_2_garants_garant-5', ''),
(787, 143, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(788, 143, 'block_2_garants_garant-6_title', ''),
(789, 143, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(790, 143, 'block_2_garants_garant-6_icon_name', ''),
(791, 143, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(792, 143, 'block_2_garants_garant-6', ''),
(793, 143, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(794, 143, 'block_2_garants', ''),
(795, 143, '_block_2_garants', 'field_616db3aec4a8d'),
(796, 143, 'block_2', ''),
(797, 143, '_block_2', 'field_616db2c7c4a8b'),
(798, 143, 'price_uah', '0'),
(799, 143, '_price_uah', ''),
(800, 144, 'block_1_img', '140'),
(801, 144, '_block_1_img', 'field_616db20a472f4'),
(802, 144, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. <br><br> The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(803, 144, '_block_1_description', 'field_616db21f472f5'),
(804, 144, 'block_1_title', 'About Us'),
(805, 144, '_block_1_title', 'field_616db22f472f6'),
(806, 144, 'block_1', ''),
(807, 144, '_block_1', 'field_616db1e7472f3'),
(808, 144, 'block_2_garant_title', 'We value our unblemished reputation greatly and that is why confidently guarantee:'),
(809, 144, '_block_2_garant_title', 'field_616db2dac4a8c'),
(810, 144, 'block_2_garants_garant-1_title', ''),
(811, 144, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(812, 144, 'block_2_garants_garant-1_icon_name', ''),
(813, 144, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(814, 144, 'block_2_garants_garant-1', ''),
(815, 144, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(816, 144, 'block_2_garants_garant-2_title', ''),
(817, 144, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(818, 144, 'block_2_garants_garant-2_icon_name', ''),
(819, 144, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(820, 144, 'block_2_garants_garant-2', ''),
(821, 144, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(822, 144, 'block_2_garants_garant-3_title', ''),
(823, 144, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(824, 144, 'block_2_garants_garant-3_icon_name', ''),
(825, 144, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(826, 144, 'block_2_garants_garant-3', ''),
(827, 144, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(828, 144, 'block_2_garants_garant-4_title', ''),
(829, 144, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(830, 144, 'block_2_garants_garant-4_icon_name', ''),
(831, 144, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(832, 144, 'block_2_garants_garant-4', ''),
(833, 144, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(834, 144, 'block_2_garants_garant-5_title', ''),
(835, 144, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(836, 144, 'block_2_garants_garant-5_icon_name', ''),
(837, 144, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(838, 144, 'block_2_garants_garant-5', ''),
(839, 144, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(840, 144, 'block_2_garants_garant-6_title', ''),
(841, 144, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(842, 144, 'block_2_garants_garant-6_icon_name', ''),
(843, 144, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(844, 144, 'block_2_garants_garant-6', ''),
(845, 144, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(846, 144, 'block_2_garants', ''),
(847, 144, '_block_2_garants', 'field_616db3aec4a8d'),
(848, 144, 'block_2', ''),
(849, 144, '_block_2', 'field_616db2c7c4a8b'),
(850, 144, 'price_uah', '0'),
(851, 144, '_price_uah', ''),
(852, 145, 'block_1_img', '140'),
(853, 145, '_block_1_img', 'field_616db20a472f4');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(854, 145, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. <br><br> The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(855, 145, '_block_1_description', 'field_616db21f472f5'),
(856, 145, 'block_1_title', 'About Us'),
(857, 145, '_block_1_title', 'field_616db22f472f6'),
(858, 145, 'block_1', ''),
(859, 145, '_block_1', 'field_616db1e7472f3'),
(860, 145, 'block_2_garant_title', 'We value our unblemished reputation greatly and that is why confidently guarantee:'),
(861, 145, '_block_2_garant_title', 'field_616db2dac4a8c'),
(862, 145, 'block_2_garants_garant-1_title', 'order is completed in the minimum period'),
(863, 145, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(864, 145, 'block_2_garants_garant-1_icon_name', ''),
(865, 145, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(866, 145, 'block_2_garants_garant-1', ''),
(867, 145, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(868, 145, 'block_2_garants_garant-2_title', 'careful selection of materials'),
(869, 145, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(870, 145, 'block_2_garants_garant-2_icon_name', ''),
(871, 145, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(872, 145, 'block_2_garants_garant-2', ''),
(873, 145, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(874, 145, 'block_2_garants_garant-3_title', 'delicate details and a unique cut style'),
(875, 145, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(876, 145, 'block_2_garants_garant-3_icon_name', ''),
(877, 145, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(878, 145, 'block_2_garants_garant-3', ''),
(879, 145, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(880, 145, 'block_2_garants_garant-4_title', 'excellent quality of products'),
(881, 145, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(882, 145, 'block_2_garants_garant-4_icon_name', ''),
(883, 145, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(884, 145, 'block_2_garants_garant-4', ''),
(885, 145, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(886, 145, 'block_2_garants_garant-5_title', 'changes in the model according to your wishes'),
(887, 145, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(888, 145, 'block_2_garants_garant-5_icon_name', ''),
(889, 145, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(890, 145, 'block_2_garants_garant-5', ''),
(891, 145, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(892, 145, 'block_2_garants_garant-6_title', 'optimally reasonable balance between price and quality'),
(893, 145, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(894, 145, 'block_2_garants_garant-6_icon_name', ''),
(895, 145, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(896, 145, 'block_2_garants_garant-6', ''),
(897, 145, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(898, 145, 'block_2_garants', ''),
(899, 145, '_block_2_garants', 'field_616db3aec4a8d'),
(900, 145, 'block_2', ''),
(901, 145, '_block_2', 'field_616db2c7c4a8b'),
(902, 145, 'price_uah', '0'),
(903, 145, '_price_uah', ''),
(904, 146, 'block_1_img', '140'),
(905, 146, '_block_1_img', 'field_616db20a472f4'),
(906, 146, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. <br><br> The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(907, 146, '_block_1_description', 'field_616db21f472f5'),
(908, 146, 'block_1_title', 'About Us'),
(909, 146, '_block_1_title', 'field_616db22f472f6'),
(910, 146, 'block_1', ''),
(911, 146, '_block_1', 'field_616db1e7472f3'),
(912, 146, 'block_2_garant_title', 'We value our unblemished reputation greatly and that is why confidently guarantee:'),
(913, 146, '_block_2_garant_title', 'field_616db2dac4a8c'),
(914, 146, 'block_2_garants_garant-1_title', 'order is completed in the minimum period'),
(915, 146, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(916, 146, 'block_2_garants_garant-1_icon_name', 'garant-1.png'),
(917, 146, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(918, 146, 'block_2_garants_garant-1', ''),
(919, 146, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(920, 146, 'block_2_garants_garant-2_title', 'careful selection of materials'),
(921, 146, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(922, 146, 'block_2_garants_garant-2_icon_name', 'garant-2.png'),
(923, 146, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(924, 146, 'block_2_garants_garant-2', ''),
(925, 146, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(926, 146, 'block_2_garants_garant-3_title', 'delicate details and a unique cut style'),
(927, 146, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(928, 146, 'block_2_garants_garant-3_icon_name', 'garant-3.png'),
(929, 146, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(930, 146, 'block_2_garants_garant-3', ''),
(931, 146, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(932, 146, 'block_2_garants_garant-4_title', 'excellent quality of products'),
(933, 146, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(934, 146, 'block_2_garants_garant-4_icon_name', 'garant-4.png'),
(935, 146, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(936, 146, 'block_2_garants_garant-4', ''),
(937, 146, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(938, 146, 'block_2_garants_garant-5_title', 'changes in the model according to your wishes'),
(939, 146, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(940, 146, 'block_2_garants_garant-5_icon_name', 'garant-5.png'),
(941, 146, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(942, 146, 'block_2_garants_garant-5', ''),
(943, 146, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(944, 146, 'block_2_garants_garant-6_title', 'optimally reasonable balance between price and quality'),
(945, 146, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(946, 146, 'block_2_garants_garant-6_icon_name', 'garant-6.png'),
(947, 146, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(948, 146, 'block_2_garants_garant-6', ''),
(949, 146, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(950, 146, 'block_2_garants', ''),
(951, 146, '_block_2_garants', 'field_616db3aec4a8d'),
(952, 146, 'block_2', ''),
(953, 146, '_block_2', 'field_616db2c7c4a8b'),
(954, 146, 'price_uah', '0'),
(955, 146, '_price_uah', ''),
(956, 147, 'block_1_img', '140'),
(957, 147, '_block_1_img', 'field_616db20a472f4'),
(958, 147, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. <br><br> The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(959, 147, '_block_1_description', 'field_616db21f472f5'),
(960, 147, 'block_1_title', 'About Us'),
(961, 147, '_block_1_title', 'field_616db22f472f6'),
(962, 147, 'block_1', ''),
(963, 147, '_block_1', 'field_616db1e7472f3'),
(964, 147, 'block_2_garant_title', 'We value our unblemished reputation greatly and that is why confidently guarantee:'),
(965, 147, '_block_2_garant_title', 'field_616db2dac4a8c'),
(966, 147, 'block_2_garants_garant-1_title', 'order is completed in the minimum period'),
(967, 147, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(968, 147, 'block_2_garants_garant-1_icon_name', 'garant-1.png'),
(969, 147, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(970, 147, 'block_2_garants_garant-1', ''),
(971, 147, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(972, 147, 'block_2_garants_garant-2_title', 'careful selection of materials'),
(973, 147, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(974, 147, 'block_2_garants_garant-2_icon_name', 'garant-2.png'),
(975, 147, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(976, 147, 'block_2_garants_garant-2', ''),
(977, 147, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(978, 147, 'block_2_garants_garant-3_title', 'delicate details and a unique cut style'),
(979, 147, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(980, 147, 'block_2_garants_garant-3_icon_name', 'garant-3.png'),
(981, 147, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(982, 147, 'block_2_garants_garant-3', ''),
(983, 147, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(984, 147, 'block_2_garants_garant-4_title', 'excellent quality of products'),
(985, 147, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(986, 147, 'block_2_garants_garant-4_icon_name', 'garant-4.png'),
(987, 147, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(988, 147, 'block_2_garants_garant-4', ''),
(989, 147, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(990, 147, 'block_2_garants_garant-5_title', 'changes in the model according to your wishes'),
(991, 147, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(992, 147, 'block_2_garants_garant-5_icon_name', 'garant-5.png'),
(993, 147, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(994, 147, 'block_2_garants_garant-5', ''),
(995, 147, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(996, 147, 'block_2_garants_garant-6_title', 'optimally reasonable balance between price and quality'),
(997, 147, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(998, 147, 'block_2_garants_garant-6_icon_name', 'garant-6.png'),
(999, 147, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(1000, 147, 'block_2_garants_garant-6', ''),
(1001, 147, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(1002, 147, 'block_2_garants', ''),
(1003, 147, '_block_2_garants', 'field_616db3aec4a8d'),
(1004, 147, 'block_2', ''),
(1005, 147, '_block_2', 'field_616db2c7c4a8b'),
(1006, 147, 'price_uah', '0'),
(1007, 147, '_price_uah', ''),
(1008, 148, 'block_1_img', '140'),
(1009, 148, '_block_1_img', 'field_616db20a472f4'),
(1010, 148, 'block_1_description', 'RiccaSposa – is a rapidly growing brand in the industry of wedding fashion. We are focused on the creation of wedding, evening and kids’ clothing. <br><br> The history of our brand started more than five years ago. During this time RiccaSposa dresses found their proud owners in the stores of Eastern and Western Europe. The number of stores, which duly appreciate the products of our company, significantly increases with the launch of each new collection. <br><br> The answer to the question, “What makes us special and fancied?”, is rather easy. Fashion, Exclusiveness, Quality and Individuality – are the main guidelines that accurately lead us to new heights. <br><br> We believe that we are justly proud of each collection launched.  <br><br> After all, our dresses are the result of creative work of dozens of professionals along with a unique combination of fabrics, lace, stones and hand-embroidery. <br><br> From the very beginning of work on a dress until it is fully ready, we pay attention to every detail for the bride, the future owner of it, to be truly unique and dazzling on her wedding day. And most important of all, we want her to feel comfortable that is possible owing to a special cut and a perfect fit for every body shape.'),
(1011, 148, '_block_1_description', 'field_616db21f472f5'),
(1012, 148, 'block_1_title', 'About Us'),
(1013, 148, '_block_1_title', 'field_616db22f472f6'),
(1014, 148, 'block_1', ''),
(1015, 148, '_block_1', 'field_616db1e7472f3'),
(1016, 148, 'block_2_garant_title', 'We value our unblemished reputation greatly and that is why confidently guarantee:'),
(1017, 148, '_block_2_garant_title', 'field_616db2dac4a8c'),
(1018, 148, 'block_2_garants_garant-1_title', 'order is completed in the minimum period'),
(1019, 148, '_block_2_garants_garant-1_title', 'field_616db61eedc63'),
(1020, 148, 'block_2_garants_garant-1_icon_name', 'garant-1.svg'),
(1021, 148, '_block_2_garants_garant-1_icon_name', 'field_616db624edc64'),
(1022, 148, 'block_2_garants_garant-1', ''),
(1023, 148, '_block_2_garants_garant-1', 'field_616db5d6edc62'),
(1024, 148, 'block_2_garants_garant-2_title', 'careful selection of materials'),
(1025, 148, '_block_2_garants_garant-2_title', 'field_616db64674dbe'),
(1026, 148, 'block_2_garants_garant-2_icon_name', 'garant-2.svg'),
(1027, 148, '_block_2_garants_garant-2_icon_name', 'field_616db64674dbf'),
(1028, 148, 'block_2_garants_garant-2', ''),
(1029, 148, '_block_2_garants_garant-2', 'field_616db64674dbd'),
(1030, 148, 'block_2_garants_garant-3_title', 'delicate details and a unique cut style'),
(1031, 148, '_block_2_garants_garant-3_title', 'field_616db65374dc1'),
(1032, 148, 'block_2_garants_garant-3_icon_name', 'garant-3.svg'),
(1033, 148, '_block_2_garants_garant-3_icon_name', 'field_616db65374dc2'),
(1034, 148, 'block_2_garants_garant-3', ''),
(1035, 148, '_block_2_garants_garant-3', 'field_616db65374dc0'),
(1036, 148, 'block_2_garants_garant-4_title', 'excellent quality of products'),
(1037, 148, '_block_2_garants_garant-4_title', 'field_616db66274dc4'),
(1038, 148, 'block_2_garants_garant-4_icon_name', 'garant-4.svg'),
(1039, 148, '_block_2_garants_garant-4_icon_name', 'field_616db66274dc5'),
(1040, 148, 'block_2_garants_garant-4', ''),
(1041, 148, '_block_2_garants_garant-4', 'field_616db66274dc3'),
(1042, 148, 'block_2_garants_garant-5_title', 'changes in the model according to your wishes'),
(1043, 148, '_block_2_garants_garant-5_title', 'field_616db66c74dc7'),
(1044, 148, 'block_2_garants_garant-5_icon_name', 'garant-5.svg'),
(1045, 148, '_block_2_garants_garant-5_icon_name', 'field_616db66c74dc8'),
(1046, 148, 'block_2_garants_garant-5', ''),
(1047, 148, '_block_2_garants_garant-5', 'field_616db66b74dc6'),
(1048, 148, 'block_2_garants_garant-6_title', 'optimally reasonable balance between price and quality'),
(1049, 148, '_block_2_garants_garant-6_title', 'field_616db67474dca'),
(1050, 148, 'block_2_garants_garant-6_icon_name', 'garant-6.svg'),
(1051, 148, '_block_2_garants_garant-6_icon_name', 'field_616db67474dcb'),
(1052, 148, 'block_2_garants_garant-6', ''),
(1053, 148, '_block_2_garants_garant-6', 'field_616db67474dc9'),
(1054, 148, 'block_2_garants', ''),
(1055, 148, '_block_2_garants', 'field_616db3aec4a8d'),
(1056, 148, 'block_2', ''),
(1057, 148, '_block_2', 'field_616db2c7c4a8b'),
(1058, 148, 'price_uah', '0'),
(1059, 148, '_price_uah', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-10-17 17:18:54', '2021-10-17 14:18:54', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2021-10-17 17:18:54', '2021-10-17 14:18:54', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2021-10-17 17:18:54', '2021-10-17 14:18:54', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-10-17 18:12:53', '2021-10-17 15:12:53', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-10-17 17:18:54', '2021-10-17 14:18:54', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-10-17 18:13:08', '2021-10-17 15:13:08', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-10-17 17:19:20', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-10-17 17:19:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 0, 'post', '', 0),
(5, 1, '2021-10-17 17:20:03', '0000-00-00 00:00:00', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Создайте ваш сайт с помощью блоков</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://localhost/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Мальвы&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://localhost/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;В Булонском лесу&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://localhost/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Молодая женщина в фиолетовом&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Добавьте паттерны блоков</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Паттерны блоков - заранее оформленные группы блоков. Для того, чтобы добавить такую группу, выберите кнопку добавления блока [+] в панели инструментов в верхней части редактора. Переключите вкладку на &quot;Паттерны&quot; под строкой поиска и выберите паттерн.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Кадрируйте ваши изображения</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает стильные границы для содержимого. Выделив блок изображения, откройте &quot;Стили&quot; на боковой панели. Выберите стиль блока &quot;Кадр&quot; для активации.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Перекрывающиеся столбцы</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает перекрывающийся стиль для блоков столбцов. Выделив блок столбца, откройте &quot;Стили&quot; на боковой панели редактора. Выберите стиль &quot;Перекрытие&quot;.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Нужна помощь?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Прочитайте документацию темы</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Посетите форум поддержки</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Создайте ваш сайт с помощью блоков', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-17 17:20:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-10-17 17:20:03', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-17 17:20:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-10-17 17:20:03', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-17 17:20:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-10-17 17:20:03', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-17 17:20:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-10-17 17:20:03', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://localhost/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:20:03\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'dd59ff79-d59d-4463-a63e-2c45c034a5e1', '', '', '2021-10-17 17:20:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'Main', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2021-10-17 22:47:11', '2021-10-17 19:47:11', '', 0, 'http://localhost/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'trash', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81__trashed', '', '', '2021-10-18 20:31:34', '2021-10-18 17:31:34', '', 0, 'http://localhost/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'trash', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b__trashed', '', '', '2021-10-18 20:31:34', '2021-10-18 17:31:34', '', 0, 'http://localhost/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'Блог', '', 'trash', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%be%d0%b3__trashed', '', '', '2021-10-17 18:13:14', '2021-10-17 15:13:14', '', 0, 'http://localhost/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            10,\n            11,\n            12,\n            13,\n            15,\n            16\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:25:12\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:30:31\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"COLLECTIONS\",\n            \"url\": \"http://localhost/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:23:39\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"SHOP\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:23:39\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"DEALERS\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:24:20\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"PARTNERSHIP\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:24:56\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:21:53\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:30:31\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:30:31\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:30:31\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:30:31\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:30:31\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:25:53\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:21:53\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:21:53\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:21:53\"\n    },\n    \"nav_menu_item[-527393735983089660]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"ABOUT US\",\n            \"url\": \"http://localhost/?page_id=15\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ABOUT US\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:25:04\"\n    },\n    \"nav_menu_item[-1339808313728964600]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"CONTACTS\",\n            \"url\": \"http://localhost/?page_id=16\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"CONTACTS\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:25:12\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:26:38\"\n    },\n    \"twentytwentyone::custom_logo\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:28:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77aa59c4-825a-43f9-8993-15fe6ed3fa08', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 0, 'http://localhost/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'ABOUT US', '', 'trash', 'closed', 'closed', '', 'about-us__trashed', '', '', '2021-10-18 20:31:34', '2021-10-18 17:31:34', '', 0, 'http://localhost/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'CONTACTS', '', 'trash', 'closed', 'closed', '', 'contacts__trashed', '', '', '2021-10-18 20:31:34', '2021-10-18 17:31:34', '', 0, 'http://localhost/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-10-17 17:27:44', '2021-10-17 14:27:44', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-10-17 17:27:44', '2021-10-17 14:27:44', '', 0, 'http://localhost/wp-content/uploads/2021/10/logo.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2021-10-17 17:27:58', '2021-10-17 14:27:58', 'http://localhost/wp-content/uploads/2021/10/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2021-10-17 17:27:58', '2021-10-17 14:27:58', '', 0, 'http://localhost/wp-content/uploads/2021/10/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Создайте ваш сайт с помощью блоков</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://localhost/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Мальвы&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://localhost/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;В Булонском лесу&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://localhost/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Молодая женщина в фиолетовом&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Добавьте паттерны блоков</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Паттерны блоков - заранее оформленные группы блоков. Для того, чтобы добавить такую группу, выберите кнопку добавления блока [+] в панели инструментов в верхней части редактора. Переключите вкладку на &quot;Паттерны&quot; под строкой поиска и выберите паттерн.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Кадрируйте ваши изображения</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает стильные границы для содержимого. Выделив блок изображения, откройте &quot;Стили&quot; на боковой панели. Выберите стиль блока &quot;Кадр&quot; для активации.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Перекрывающиеся столбцы</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает перекрывающийся стиль для блоков столбцов. Выделив блок столбца, откройте &quot;Стили&quot; на боковой панели редактора. Выберите стиль &quot;Перекрытие&quot;.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Нужна помощь?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Прочитайте документацию темы</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Посетите форум поддержки</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Создайте ваш сайт с помощью блоков', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 10, 'http://localhost/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 11, 'http://localhost/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 12, 'http://localhost/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 13, 'http://localhost/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 15, 'http://localhost/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'CONTACTS', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 16, 'http://localhost/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-10-17 17:35:58', '2021-10-17 14:30:31', '', 'MAIN', '', 'publish', 'closed', 'closed', '', 'collections', '', '', '2021-10-17 17:35:58', '2021-10-17 14:35:58', '', 0, 'http://localhost/2021/10/17/collections/', 1, 'nav_menu_item', '', 0),
(29, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 0, 'http://localhost/2021/10/17/facebook/', 0, 'nav_menu_item', '', 0),
(30, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 0, 'http://localhost/2021/10/17/twitter/', 1, 'nav_menu_item', '', 0),
(31, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 0, 'http://localhost/2021/10/17/instagram/', 2, 'nav_menu_item', '', 0),
(32, 1, '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2021-10-17 17:30:31', '2021-10-17 14:30:31', '', 0, 'http://localhost/2021/10/17/email/', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(35, 1, '2021-10-17 17:35:58', '2021-10-17 14:35:58', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:31:29\"\n    },\n    \"twentytwentyone::background_color\": {\n        \"value\": \"#3a5447\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:31:42\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            36\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:18\"\n    },\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"MAIN\",\n            \"url\": \"http://localhost/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"hidden\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    },\n    \"nav_menu_item[-1824553650596886500]\": {\n        \"value\": {\n            \"object_id\": 36,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"COLLECTIONS\",\n            \"url\": \"http://localhost/?page_id=36\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"COLLECTIONS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    },\n    \"custom_css[twentytwentyone]\": {\n        \"value\": \".hidden {\\n\\tdisplay:none\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    },\n    \"nav_menu_item[26]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"SHOP\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    },\n    \"nav_menu_item[27]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"DEALERS\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    },\n    \"nav_menu_item[28]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"PARTNERSHIP\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    },\n    \"nav_menu_item[33]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"ABOUT US\",\n            \"url\": \"http://localhost/?page_id=15\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ABOUT US\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    },\n    \"nav_menu_item[34]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"CONTACTS\",\n            \"url\": \"http://localhost/?page_id=16\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"CONTACTS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:35:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd00f8e8-a6fc-4260-b8ad-fb99859f2bbf', '', '', '2021-10-17 17:35:58', '2021-10-17 14:35:58', '', 0, 'http://localhost/?p=35', 0, 'customize_changeset', '', 0),
(36, 1, '2021-10-17 17:35:58', '2021-10-17 14:35:58', '', 'COLLECTIONS', '', 'trash', 'closed', 'closed', '', 'collections__trashed', '', '', '2021-10-18 20:31:34', '2021-10-18 17:31:34', '', 0, 'http://localhost/?page_id=36', 0, 'page', '', 0),
(37, 1, '2021-10-17 17:35:58', '2021-10-17 14:35:58', '', 'COLLECTIONS', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-10-17 17:35:58', '2021-10-17 14:35:58', '', 36, 'http://localhost/?p=37', 0, 'revision', '', 0),
(39, 1, '2021-10-17 17:35:58', '2021-10-17 14:35:58', '.hidden {\n	display:none!important\n}', 'twentytwentyone', '', 'publish', 'closed', 'closed', '', 'twentytwentyone', '', '', '2021-10-17 17:36:42', '2021-10-17 14:36:42', '', 0, 'http://localhost/2021/10/17/twentytwentyone/', 0, 'custom_css', '', 0),
(40, 1, '2021-10-17 17:35:58', '2021-10-17 14:35:58', '.hidden {\n	display:none\n}', 'twentytwentyone', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-10-17 17:35:58', '2021-10-17 14:35:58', '', 39, 'http://localhost/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-10-17 17:36:42', '2021-10-17 14:36:42', '{\n    \"custom_css[twentytwentyone]\": {\n        \"value\": \".hidden {\\n\\tdisplay:none!important\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:36:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bbd0c206-5ce1-4e5a-b028-f30c57dec607', '', '', '2021-10-17 17:36:42', '2021-10-17 14:36:42', '', 0, 'http://localhost/2021/10/17/bbd0c206-5ce1-4e5a-b028-f30c57dec607/', 0, 'customize_changeset', '', 0),
(42, 1, '2021-10-17 17:36:42', '2021-10-17 14:36:42', '.hidden {\n	display:none!important\n}', 'twentytwentyone', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-10-17 17:36:42', '2021-10-17 14:36:42', '', 39, 'http://localhost/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-10-17 17:41:43', '2021-10-17 14:41:43', '{\n    \"twentytwentyone::background_color\": {\n        \"value\": \"#c48e8e\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:41:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ec57dbf-d419-42d9-ab1e-0d2482c4e13a', '', '', '2021-10-17 17:41:43', '2021-10-17 14:41:43', '', 0, 'http://localhost/2021/10/17/6ec57dbf-d419-42d9-ab1e-0d2482c4e13a/', 0, 'customize_changeset', '', 0),
(44, 1, '2021-10-17 17:58:56', '2021-10-17 14:58:56', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\"\n            ],\n            \"sidebar-2\": [\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:58:56\"\n    },\n    \"ricca-sposa::nav_menu_locations[main_menu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-17 14:58:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8dffcd7a-af07-4fb1-8309-ed7b29bc394b', '', '', '2021-10-17 17:58:56', '2021-10-17 14:58:56', '', 0, 'http://localhost/2021/10/17/8dffcd7a-af07-4fb1-8309-ed7b29bc394b/', 0, 'customize_changeset', '', 0),
(46, 1, '2021-10-17 18:09:38', '2021-10-17 15:09:38', '', 'Создайте ваш сайт с помощью блоков', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 18:09:38', '2021-10-17 15:09:38', '', 10, 'http://localhost/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-10-17 18:12:53', '2021-10-17 15:12:53', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-10-17 18:12:53', '2021-10-17 15:12:53', '', 2, 'http://localhost/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-10-17 18:13:08', '2021-10-17 15:13:08', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-10-17 18:13:08', '2021-10-17 15:13:08', '', 3, 'http://localhost/?p=48', 0, 'revision', '', 0),
(50, 1, '2021-10-17 18:18:07', '2021-10-17 15:18:07', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 18:18:07', '2021-10-17 15:18:07', '', 10, 'http://localhost/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-10-17 18:43:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-17 18:43:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf-field-group&p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2021-10-17 18:53:29', '2021-10-17 15:53:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Main', 'main', 'publish', 'closed', 'closed', '', 'group_616c45d892f06', '', '', '2021-10-18 20:27:41', '2021-10-18 17:27:41', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2021-10-17 18:53:29', '2021-10-17 15:53:29', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Блок 1', 'block_1', 'publish', 'closed', 'closed', '', 'field_616c45dab911e', '', '', '2021-10-17 22:34:18', '2021-10-17 19:34:18', '', 52, 'http://localhost/?post_type=acf-field&#038;p=53', 0, 'acf-field', '', 0),
(54, 1, '2021-10-17 18:53:29', '2021-10-17 15:53:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_616c4612b911f', '', '', '2021-10-17 22:15:28', '2021-10-17 19:15:28', '', 53, 'http://localhost/?post_type=acf-field&#038;p=54', 2, 'acf-field', '', 0),
(60, 1, '2021-10-17 19:04:28', '2021-10-17 16:04:28', '', 'main_page_1', '', 'inherit', 'open', 'closed', '', 'main_page_1', '', '', '2021-10-17 19:04:28', '2021-10-17 16:04:28', '', 10, 'http://localhost/wp-content/uploads/2021/10/main_page_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-10-17 19:04:30', '2021-10-17 16:04:30', '', 'main_page_3', '', 'inherit', 'open', 'closed', '', 'main_page_3', '', '', '2021-10-17 19:04:30', '2021-10-17 16:04:30', '', 10, 'http://localhost/wp-content/uploads/2021/10/main_page_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-10-17 19:04:31', '2021-10-17 16:04:31', '', 'main_page_4', '', 'inherit', 'open', 'closed', '', 'main_page_4', '', '', '2021-10-17 19:04:31', '2021-10-17 16:04:31', '', 10, 'http://localhost/wp-content/uploads/2021/10/main_page_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-10-17 19:05:10', '2021-10-17 16:05:10', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 19:05:10', '2021-10-17 16:05:10', '', 10, 'http://localhost/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-10-17 19:06:24', '2021-10-17 16:06:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616c49ea1e9bd', '', '', '2021-10-17 19:06:43', '2021-10-17 16:06:43', '', 53, 'http://localhost/?post_type=acf-field&#038;p=65', 0, 'acf-field', '', 0),
(66, 1, '2021-10-17 19:06:24', '2021-10-17 16:06:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_616c49f01e9be', '', '', '2021-10-17 19:06:43', '2021-10-17 16:06:43', '', 53, 'http://localhost/?post_type=acf-field&#038;p=66', 1, 'acf-field', '', 0),
(67, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Блок 2', 'block_2', 'publish', 'closed', 'closed', '', 'field_616c4a159c9f2', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 52, 'http://localhost/?post_type=acf-field&p=67', 1, 'acf-field', '', 0),
(68, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616c4a159c9f3', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 67, 'http://localhost/?post_type=acf-field&p=68', 0, 'acf-field', '', 0),
(69, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_616c4a159c9f4', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 67, 'http://localhost/?post_type=acf-field&p=69', 1, 'acf-field', '', 0),
(70, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_616c4a159c9f5', '', '', '2021-10-17 22:15:28', '2021-10-17 19:15:28', '', 67, 'http://localhost/?post_type=acf-field&#038;p=70', 2, 'acf-field', '', 0),
(71, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Блок 3', 'block_3', 'publish', 'closed', 'closed', '', 'field_616c4a1a9c9f6', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 52, 'http://localhost/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(72, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616c4a1b9c9f7', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 71, 'http://localhost/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_616c4a1b9c9f8', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 71, 'http://localhost/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_616c4a1b9c9f9', '', '', '2021-10-17 22:15:28', '2021-10-17 19:15:28', '', 71, 'http://localhost/?post_type=acf-field&#038;p=74', 2, 'acf-field', '', 0),
(75, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Блок 4', 'block_4', 'publish', 'closed', 'closed', '', 'field_616c4a1c9c9fa', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 52, 'http://localhost/?post_type=acf-field&p=75', 3, 'acf-field', '', 0),
(76, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616c4a1c9c9fb', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 75, 'http://localhost/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_616c4a1c9c9fc', '', '', '2021-10-17 19:06:55', '2021-10-17 16:06:55', '', 75, 'http://localhost/?post_type=acf-field&p=77', 1, 'acf-field', '', 0),
(78, 1, '2021-10-17 19:06:55', '2021-10-17 16:06:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_616c4a1c9c9fd', '', '', '2021-10-17 22:15:28', '2021-10-17 19:15:28', '', 75, 'http://localhost/?post_type=acf-field&#038;p=78', 2, 'acf-field', '', 0),
(79, 1, '2021-10-17 19:09:48', '2021-10-17 16:09:48', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 19:09:48', '2021-10-17 16:09:48', '', 10, 'http://localhost/?p=79', 0, 'revision', '', 0),
(80, 1, '2021-10-17 19:35:11', '2021-10-17 16:35:11', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 19:35:11', '2021-10-17 16:35:11', '', 10, 'http://localhost/?p=80', 0, 'revision', '', 0),
(81, 1, '2021-10-17 22:01:12', '2021-10-17 19:01:12', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 22:01:12', '2021-10-17 19:01:12', '', 10, 'http://localhost/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-10-17 22:11:46', '2021-10-17 19:11:46', '', 'main_page_2', '', 'inherit', 'open', 'closed', '', 'main_page_2', '', '', '2021-10-17 22:11:46', '2021-10-17 19:11:46', '', 10, 'http://localhost/wp-content/uploads/2021/10/main_page_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2021-10-17 22:11:59', '2021-10-17 19:11:59', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 22:11:59', '2021-10-17 19:11:59', '', 10, 'http://localhost/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-10-17 22:13:26', '2021-10-17 19:13:26', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 22:13:26', '2021-10-17 19:13:26', '', 10, 'http://localhost/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-10-17 22:18:10', '2021-10-17 19:18:10', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 22:18:10', '2021-10-17 19:18:10', '', 10, 'http://localhost/?p=85', 0, 'revision', '', 0),
(87, 1, '2021-10-17 22:47:11', '2021-10-17 19:47:11', '', 'Main', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-17 22:47:11', '2021-10-17 19:47:11', '', 10, 'http://localhost/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-10-18 20:21:43', '2021-10-18 17:21:43', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_616dace167f48', '', '', '2021-10-18 20:27:41', '2021-10-18 17:27:41', '', 53, 'http://localhost/?post_type=acf-field&#038;p=88', 3, 'acf-field', '', 0),
(89, 1, '2021-10-18 20:21:43', '2021-10-18 17:21:43', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_616dacfd67f49', '', '', '2021-10-18 20:21:43', '2021-10-18 17:21:43', '', 67, 'http://localhost/?post_type=acf-field&p=89', 3, 'acf-field', '', 0),
(90, 1, '2021-10-18 20:21:43', '2021-10-18 17:21:43', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_616dad0d67f4a', '', '', '2021-10-18 20:21:43', '2021-10-18 17:21:43', '', 71, 'http://localhost/?post_type=acf-field&p=90', 3, 'acf-field', '', 0),
(91, 1, '2021-10-18 20:21:43', '2021-10-18 17:21:43', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_616dad1c67f4b', '', '', '2021-10-18 20:21:43', '2021-10-18 17:21:43', '', 75, 'http://localhost/?post_type=acf-field&p=91', 3, 'acf-field', '', 0),
(92, 1, '2021-10-18 20:45:41', '2021-10-18 17:45:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"120\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ABOUT US', 'about-us', 'publish', 'closed', 'closed', '', 'group_616db1dd9c5b8', '', '', '2021-10-19 15:44:56', '2021-10-19 12:44:56', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=92', 0, 'acf-field-group', '', 0),
(93, 1, '2021-10-18 20:45:41', '2021-10-18 17:45:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'block_1', 'block_1', 'publish', 'closed', 'closed', '', 'field_616db1e7472f3', '', '', '2021-10-18 20:45:41', '2021-10-18 17:45:41', '', 92, 'http://localhost/?post_type=acf-field&p=93', 0, 'acf-field', '', 0),
(94, 1, '2021-10-18 20:45:41', '2021-10-18 17:45:41', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_616db20a472f4', '', '', '2021-10-18 20:45:41', '2021-10-18 17:45:41', '', 93, 'http://localhost/?post_type=acf-field&p=94', 0, 'acf-field', '', 0),
(95, 1, '2021-10-18 20:45:41', '2021-10-18 17:45:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'description', 'description', 'publish', 'closed', 'closed', '', 'field_616db21f472f5', '', '', '2021-10-18 20:45:41', '2021-10-18 17:45:41', '', 93, 'http://localhost/?post_type=acf-field&p=95', 1, 'acf-field', '', 0),
(96, 1, '2021-10-18 20:45:41', '2021-10-18 17:45:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616db22f472f6', '', '', '2021-10-19 15:44:56', '2021-10-19 12:44:56', '', 93, 'http://localhost/?post_type=acf-field&#038;p=96', 2, 'acf-field', '', 0),
(97, 1, '2021-10-18 20:55:41', '2021-10-18 17:55:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'block_2', 'block_2', 'publish', 'closed', 'closed', '', 'field_616db2c7c4a8b', '', '', '2021-10-18 20:55:41', '2021-10-18 17:55:41', '', 92, 'http://localhost/?post_type=acf-field&p=97', 1, 'acf-field', '', 0),
(98, 1, '2021-10-18 20:55:41', '2021-10-18 17:55:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'garant_title', 'garant_title', 'publish', 'closed', 'closed', '', 'field_616db2dac4a8c', '', '', '2021-10-18 20:55:41', '2021-10-18 17:55:41', '', 97, 'http://localhost/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2021-10-18 20:55:41', '2021-10-18 17:55:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'garants', 'garants', 'publish', 'closed', 'closed', '', 'field_616db3aec4a8d', '', '', '2021-10-18 20:55:41', '2021-10-18 17:55:41', '', 97, 'http://localhost/?post_type=acf-field&p=99', 1, 'acf-field', '', 0),
(102, 1, '2021-10-18 21:00:29', '2021-10-18 18:00:29', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'garant-1', 'garant-1', 'publish', 'closed', 'closed', '', 'field_616db5d6edc62', '', '', '2021-10-18 21:00:29', '2021-10-18 18:00:29', '', 99, 'http://localhost/?post_type=acf-field&p=102', 0, 'acf-field', '', 0),
(103, 1, '2021-10-18 21:00:29', '2021-10-18 18:00:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616db61eedc63', '', '', '2021-10-18 21:00:29', '2021-10-18 18:00:29', '', 102, 'http://localhost/?post_type=acf-field&p=103', 0, 'acf-field', '', 0),
(104, 1, '2021-10-18 21:00:29', '2021-10-18 18:00:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon_name', 'icon_name', 'publish', 'closed', 'closed', '', 'field_616db624edc64', '', '', '2021-10-18 21:00:29', '2021-10-18 18:00:29', '', 102, 'http://localhost/?post_type=acf-field&p=104', 1, 'acf-field', '', 0),
(105, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'garant-2', 'garant-2', 'publish', 'closed', 'closed', '', 'field_616db64674dbd', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 99, 'http://localhost/?post_type=acf-field&p=105', 1, 'acf-field', '', 0),
(106, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616db64674dbe', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 105, 'http://localhost/?post_type=acf-field&p=106', 0, 'acf-field', '', 0),
(107, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon_name', 'icon_name', 'publish', 'closed', 'closed', '', 'field_616db64674dbf', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 105, 'http://localhost/?post_type=acf-field&p=107', 1, 'acf-field', '', 0),
(108, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'garant-3', 'garant-3', 'publish', 'closed', 'closed', '', 'field_616db65374dc0', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 99, 'http://localhost/?post_type=acf-field&p=108', 2, 'acf-field', '', 0),
(109, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616db65374dc1', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 108, 'http://localhost/?post_type=acf-field&p=109', 0, 'acf-field', '', 0),
(110, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon_name', 'icon_name', 'publish', 'closed', 'closed', '', 'field_616db65374dc2', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 108, 'http://localhost/?post_type=acf-field&p=110', 1, 'acf-field', '', 0),
(111, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'garant-4', 'garant-4', 'publish', 'closed', 'closed', '', 'field_616db66274dc3', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 99, 'http://localhost/?post_type=acf-field&p=111', 3, 'acf-field', '', 0),
(112, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616db66274dc4', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 111, 'http://localhost/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(113, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon_name', 'icon_name', 'publish', 'closed', 'closed', '', 'field_616db66274dc5', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 111, 'http://localhost/?post_type=acf-field&p=113', 1, 'acf-field', '', 0),
(114, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'garant-5', 'garant-5', 'publish', 'closed', 'closed', '', 'field_616db66b74dc6', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 99, 'http://localhost/?post_type=acf-field&p=114', 4, 'acf-field', '', 0),
(115, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616db66c74dc7', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 114, 'http://localhost/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon_name', 'icon_name', 'publish', 'closed', 'closed', '', 'field_616db66c74dc8', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 114, 'http://localhost/?post_type=acf-field&p=116', 1, 'acf-field', '', 0),
(117, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'garant-6', 'garant-6', 'publish', 'closed', 'closed', '', 'field_616db67474dc9', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 99, 'http://localhost/?post_type=acf-field&p=117', 5, 'acf-field', '', 0),
(118, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_616db67474dca', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 117, 'http://localhost/?post_type=acf-field&p=118', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(119, 1, '2021-10-18 21:01:32', '2021-10-18 18:01:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon_name', 'icon_name', 'publish', 'closed', 'closed', '', 'field_616db67474dcb', '', '', '2021-10-18 21:01:32', '2021-10-18 18:01:32', '', 117, 'http://localhost/?post_type=acf-field&p=119', 1, 'acf-field', '', 0),
(120, 1, '2021-10-18 21:02:32', '2021-10-18 18:02:32', '', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-10-19 20:54:50', '2021-10-19 17:54:50', '', 0, 'http://localhost/?page_id=120', 0, 'page', '', 0),
(121, 1, '2021-10-18 21:02:32', '2021-10-18 18:02:32', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-18 21:02:32', '2021-10-18 18:02:32', '', 120, 'http://localhost/?p=121', 0, 'revision', '', 0),
(122, 1, '2021-10-19 10:29:34', '2021-10-19 07:29:34', '{\n    \"nav_menu_item[38]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:29:34\"\n    },\n    \"nav_menu_item[26]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:29:34\"\n    },\n    \"nav_menu_item[27]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:29:34\"\n    },\n    \"nav_menu_item[28]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:29:34\"\n    },\n    \"nav_menu_item[33]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:29:34\"\n    },\n    \"nav_menu_item[34]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:29:34\"\n    },\n    \"nav_menu_item[-7568068212225847000]\": {\n        \"value\": {\n            \"object_id\": 120,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"ABOUT US\",\n            \"url\": \"http://localhost/about-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ABOUT US\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:29:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '16c0788b-68ee-4cd1-91c2-a445365fa0c8', '', '', '2021-10-19 10:29:34', '2021-10-19 07:29:34', '', 0, 'http://localhost/2021/10/19/16c0788b-68ee-4cd1-91c2-a445365fa0c8/', 0, 'customize_changeset', '', 0),
(123, 1, '2021-10-19 10:31:28', '2021-10-19 07:29:34', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2021-10-19 10:31:28', '2021-10-19 07:31:28', '', 0, 'http://localhost/2021/10/19/123/', 6, 'nav_menu_item', '', 0),
(124, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'COLLECTIONS', '', 'publish', 'closed', 'closed', '', 'collections', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/?page_id=124', 0, 'page', '', 0),
(125, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            124,\n            126,\n            127,\n            128,\n            129\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:31:18\"\n    },\n    \"nav_menu_item[-2852174098979121000]\": {\n        \"value\": {\n            \"object_id\": 124,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"COLLECTIONS\",\n            \"url\": \"http://localhost/?page_id=124\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"COLLECTIONS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:31:27\"\n    },\n    \"nav_menu_item[-6602232515774065000]\": {\n        \"value\": {\n            \"object_id\": 126,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"SHOP\",\n            \"url\": \"http://localhost/?page_id=126\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"SHOP\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:31:27\"\n    },\n    \"nav_menu_item[-3632839868013973500]\": {\n        \"value\": {\n            \"object_id\": 127,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"DEALERS\",\n            \"url\": \"http://localhost/?page_id=127\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"DEALERS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:31:27\"\n    },\n    \"nav_menu_item[-5863453005624429000]\": {\n        \"value\": {\n            \"object_id\": 128,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"PARTNERSHIP\",\n            \"url\": \"http://localhost/?page_id=128\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"PARTNERSHIP\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:31:27\"\n    },\n    \"nav_menu_item[-6675605129754982000]\": {\n        \"value\": {\n            \"object_id\": 129,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"CONTACTS\",\n            \"url\": \"http://localhost/?page_id=129\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"CONTACTS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:31:18\"\n    },\n    \"nav_menu_item[123]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 120,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://localhost/about-us/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"ABOUT US\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 07:31:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8a55912b-eb60-44fb-ae91-135ec0a73c5b', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/?p=125', 0, 'customize_changeset', '', 0),
(126, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'SHOP', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/?page_id=126', 0, 'page', '', 0),
(127, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'DEALERS', '', 'publish', 'closed', 'closed', '', 'dealers', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/?page_id=127', 0, 'page', '', 0),
(128, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'PARTNERSHIP', '', 'publish', 'closed', 'closed', '', 'partnership', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/?page_id=128', 0, 'page', '', 0),
(129, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'CONTACTS', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/?page_id=129', 0, 'page', '', 0),
(130, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'COLLECTIONS', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 124, 'http://localhost/?p=130', 0, 'revision', '', 0),
(131, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'SHOP', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 126, 'http://localhost/?p=131', 0, 'revision', '', 0),
(132, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'DEALERS', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 127, 'http://localhost/?p=132', 0, 'revision', '', 0),
(133, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'PARTNERSHIP', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 128, 'http://localhost/?p=133', 0, 'revision', '', 0),
(134, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 'CONTACTS', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 129, 'http://localhost/?p=134', 0, 'revision', '', 0),
(135, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/2021/10/19/135/', 2, 'nav_menu_item', '', 0),
(136, 1, '2021-10-19 10:31:27', '2021-10-19 07:31:27', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2021-10-19 10:31:27', '2021-10-19 07:31:27', '', 0, 'http://localhost/2021/10/19/136/', 3, 'nav_menu_item', '', 0),
(137, 1, '2021-10-19 10:31:28', '2021-10-19 07:31:28', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2021-10-19 10:31:28', '2021-10-19 07:31:28', '', 0, 'http://localhost/2021/10/19/137/', 4, 'nav_menu_item', '', 0),
(138, 1, '2021-10-19 10:31:28', '2021-10-19 07:31:28', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2021-10-19 10:31:28', '2021-10-19 07:31:28', '', 0, 'http://localhost/2021/10/19/138/', 5, 'nav_menu_item', '', 0),
(139, 1, '2021-10-19 10:31:28', '2021-10-19 07:31:28', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2021-10-19 10:31:28', '2021-10-19 07:31:28', '', 0, 'http://localhost/2021/10/19/139/', 7, 'nav_menu_item', '', 0),
(140, 1, '2021-10-19 15:45:10', '2021-10-19 12:45:10', '', 'about_us', '', 'inherit', 'open', 'closed', '', 'about_us', '', '', '2021-10-19 15:45:10', '2021-10-19 12:45:10', '', 120, 'http://localhost/wp-content/uploads/2021/10/about_us.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2021-10-19 15:45:31', '2021-10-19 12:45:31', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 15:45:31', '2021-10-19 12:45:31', '', 120, 'http://localhost/?p=141', 0, 'revision', '', 0),
(142, 1, '2021-10-19 16:23:48', '2021-10-19 13:23:48', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 16:23:48', '2021-10-19 13:23:48', '', 120, 'http://localhost/?p=142', 0, 'revision', '', 0),
(143, 1, '2021-10-19 16:24:21', '2021-10-19 13:24:21', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 16:24:21', '2021-10-19 13:24:21', '', 120, 'http://localhost/?p=143', 0, 'revision', '', 0),
(144, 1, '2021-10-19 20:25:05', '2021-10-19 17:25:05', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 20:25:05', '2021-10-19 17:25:05', '', 120, 'http://localhost/?p=144', 0, 'revision', '', 0),
(145, 1, '2021-10-19 20:37:13', '2021-10-19 17:37:13', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 20:37:13', '2021-10-19 17:37:13', '', 120, 'http://localhost/?p=145', 0, 'revision', '', 0),
(146, 1, '2021-10-19 20:42:35', '2021-10-19 17:42:35', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 20:42:35', '2021-10-19 17:42:35', '', 120, 'http://localhost/?p=146', 0, 'revision', '', 0),
(147, 1, '2021-10-19 20:42:57', '2021-10-19 17:42:57', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 20:42:57', '2021-10-19 17:42:57', '', 120, 'http://localhost/?p=147', 0, 'revision', '', 0),
(148, 1, '2021-10-19 20:54:50', '2021-10-19 17:54:50', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-10-19 20:54:50', '2021-10-19 17:54:50', '', 120, 'http://localhost/?p=148', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Основное меню', '%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Дополнительное меню', '%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 2, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(123, 2, 0),
(135, 2, 0),
(136, 2, 0),
(137, 2, 0),
(138, 2, 0),
(139, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'riccasposa'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ce662e4d815293724048a54adbeaafe4514330b7841c7196febf6a53ef3ac384\";a:4:{s:10:\"expiration\";i:1635689957;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36\";s:5:\"login\";i:1634480357;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list&editor=tinymce&widgets_access=on&hidetb=0&post_dfw=off'),
(18, 1, 'wp_user-settings-time', '1634486250'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:78:\"dashboard_php_nag,dashboard_site_health,dashboard_activity,dashboard_right_now\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-collections\";i:2;s:8:\"add-type\";i:3;s:8:\"add-sale\";i:4;s:14:\"add-silhouette\";}'),
(26, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:2:{i:0;s:7:\"acf-key\";i:1;s:12:\"acf-location\";}'),
(27, 1, 'edit_acf-field-group_per_page', '20'),
(28, 1, 'closedpostboxes_page', 'a:0:{}'),
(29, 1, 'metaboxhidden_page', 'a:0:{}'),
(30, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}'),
(31, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(32, 1, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(33, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(34, 1, 'screen_layout_acf-field-group', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'riccasposa', '$P$Bsn420Kys2V58rrNnxQrDNCsGNuEnw1', 'riccasposa', 'without1481@gmail.com', 'http://localhost', '2021-10-17 14:18:54', '', 0, 'riccasposa');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1060;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;