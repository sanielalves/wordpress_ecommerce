-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/01/2018 às 16:47
-- Versão do servidor: 10.1.29-MariaDB
-- Versão do PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wordpress_ecommerce`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-23 15:07:02', '2018-01-23 17:07:02', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(5, 186, 'WooCommerce', '', '', '', '2018-01-24 18:55:53', '2018-01-24 20:55:53', 'PagSeguro: The buyer initiated the transaction, but so far the PagSeguro not received any payment information. Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 186, 'admin', 'saniel_alves@hotmail.com', '', '', '2018-01-24 19:21:27', '2018-01-24 21:21:27', 'Status do pedido alterado de Aguardando para Processando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 186, 'admin', 'saniel_alves@hotmail.com', '', '', '2018-01-24 19:21:30', '2018-01-24 21:21:30', 'Status do pedido alterado de Processando para Concluído.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 188, 'WooCommerce', '', '', '', '2018-01-25 01:54:21', '2018-01-25 03:54:21', 'PagSeguro: The buyer initiated the transaction, but so far the PagSeguro not received any payment information. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 189, 'WooCommerce', '', '', '', '2018-01-25 11:43:22', '2018-01-25 13:43:22', 'Pedido cancelado por falta de pagamento - tempo limite ultrapassado. Status do pedido alterado de Pagamento pendente para Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress_ecommerce', 'yes'),
(2, 'home', 'http://localhost/wordpress_ecommerce', 'yes'),
(3, 'blogname', 'TOUCHIC MODAS', 'yes'),
(4, 'blogdescription', 'Um estilo para cada dia', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'saniel_alves@hotmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:55:\"(([^/]+/)*lista-de-desejos)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:38:\"(([^/]+/)*lista-de-desejos)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categoria-produto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categoria-produto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categoria-produto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"produto-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"produto-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"produto-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/ordens(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&ordens=$matches[3]\";s:36:\"(.?.+?)/Visualizar-ordens(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&Visualizar-ordens=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/editar-conta(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&editar-conta=$matches[3]\";s:36:\"(.?.+?)/editar-endereços(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&editar-endereços=$matches[3]\";s:39:\"(.?.+?)/metodos-de-pagamento(/(.*))?/?$\";s:63:\"index.php?pagename=$matches[1]&metodos-de-pagamento=$matches[3]\";s:34:\"(.?.+?)/recuperar-senha(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&recuperar-senha=$matches[3]\";s:23:\"(.?.+?)/sair(/(.*))?/?$\";s:47:\"index.php?pagename=$matches[1]&sair=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:63:\"minmax-quantity-for-woocommerce/woocommerce-minmax-quantity.php\";i:1;s:45:\"woocommerce-correios/woocommerce-correios.php\";i:2;s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";i:3;s:51:\"woocommerce-mercadopago/woocommerce-mercadopago.php\";i:4;s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";i:5;s:45:\"woocommerce-parcelas/woocommerce-parcelas.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'accesspress-store', 'yes'),
(41, 'stylesheet', 'accesspress-store', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:10:{i:1;a:0:{}i:3;a:4:{s:5:\"title\";s:18:\"Header Call To Box\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:18:\"AP: Promo Widget 1\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:183:\"<img class=\"alignnone size-medium wp-image-38\" src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/camiseta-vulkanic-3-300x188.jpg\" alt=\"\" width=\"300\" height=\"188\" />\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:14:\"Promo Widget 2\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:12;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:180:\"<img class=\"alignnone size-medium wp-image-151\" src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-Full-300x60.jpg\" alt=\"\" width=\"300\" height=\"60\" />\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:14;a:4:{s:5:\"title\";s:6:\"teste2\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:15;a:4:{s:5:\"title\";s:36:\"Atacadão TOUCHIC: Peças em atacado\";s:4:\"text\";s:139:\"<ul>\r\n 	<li><b>Peças em atacado não são vendidas no varejo. Verifique os múltiplos da peça antes de efetuar a compra!</b></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:63:\"minmax-quantity-for-woocommerce/woocommerce-minmax-quantity.php\";a:2:{i:0;s:20:\"BeRocket_MM_Quantity\";i:1;s:12:\"deactivation\";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'cron', 'a:11:{i:1517242076;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1517245643;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1517245644;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1517245671;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517245672;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517247747;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"dcd81238052527a29f1d46ebb65f2a39\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:295;}}}}i:1517248404;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517277600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517280523;a:2:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1517875200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(115, '_site_transient_timeout_browser_f4b342427dc93e6e5fd5c14ef1fb74ec', '1517332057', 'no'),
(116, '_site_transient_browser_f4b342427dc93e6e5fd5c14ef1fb74ec', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"57.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(125, 'recently_activated', 'a:1:{s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";i:1516935713;}', 'yes'),
(132, 'woocommerce_store_address', 'Rua primeiro de maio, Centro, 579', 'yes'),
(133, 'woocommerce_store_address_2', '', 'yes'),
(134, 'woocommerce_store_city', 'João Lisboa', 'yes'),
(135, 'woocommerce_default_country', 'BR:MA', 'yes'),
(136, 'woocommerce_store_postcode', '65922000', 'yes'),
(137, 'woocommerce_allowed_countries', 'all', 'yes'),
(138, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(140, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(141, 'woocommerce_ship_to_countries', '', 'yes'),
(143, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(145, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(147, 'woocommerce_calc_taxes', 'no', 'yes'),
(149, 'woocommerce_demo_store', 'no', 'yes'),
(151, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(152, 'woocommerce_currency', 'BRL', 'yes'),
(153, 'woocommerce_currency_pos', 'left_space', 'yes'),
(154, 'woocommerce_price_thousand_sep', ',', 'yes'),
(155, 'woocommerce_price_decimal_sep', '.', 'yes'),
(156, 'woocommerce_price_num_decimals', '2', 'yes'),
(157, 'woocommerce_weight_unit', 'kg', 'yes'),
(158, 'woocommerce_dimension_unit', 'cm', 'yes'),
(159, 'woocommerce_enable_reviews', 'yes', 'yes'),
(160, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(161, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(162, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(163, 'woocommerce_review_rating_required', 'yes', 'no'),
(164, 'woocommerce_shop_page_id', '107', 'yes'),
(165, 'woocommerce_shop_page_display', '', 'yes'),
(166, 'woocommerce_category_archive_display', '', 'yes'),
(167, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(168, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(169, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(170, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}', 'yes'),
(171, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}', 'yes'),
(172, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}', 'yes'),
(173, 'woocommerce_manage_stock', 'yes', 'yes'),
(174, 'woocommerce_hold_stock_minutes', '60', 'no'),
(175, 'woocommerce_notify_low_stock', 'yes', 'no'),
(176, 'woocommerce_notify_no_stock', 'yes', 'no'),
(177, 'woocommerce_stock_email_recipient', 'saniel_alves@hotmail.com', 'no'),
(178, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(179, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(180, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(181, 'woocommerce_stock_format', '', 'yes'),
(182, 'woocommerce_file_download_method', 'force', 'no'),
(183, 'woocommerce_downloads_require_login', 'no', 'no'),
(184, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(185, 'woocommerce_prices_include_tax', 'no', 'yes'),
(186, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(187, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(188, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(189, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(190, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(191, 'woocommerce_tax_display_cart', 'excl', 'no'),
(192, 'woocommerce_price_display_suffix', '', 'yes'),
(193, 'woocommerce_tax_total_display', 'itemized', 'no'),
(194, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(195, 'woocommerce_shipping_cost_requires_address', 'yes', 'no'),
(196, 'woocommerce_ship_to_destination', 'billing', 'no'),
(197, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(198, 'woocommerce_enable_coupons', 'yes', 'yes'),
(199, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(200, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(201, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(202, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(203, 'woocommerce_cart_page_id', '85', 'yes'),
(204, 'woocommerce_checkout_page_id', '2', 'yes'),
(205, 'woocommerce_terms_page_id', '', 'no'),
(206, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(207, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(208, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(209, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(210, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(211, 'woocommerce_myaccount_page_id', '103', 'yes'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(214, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(215, 'woocommerce_registration_generate_username', 'yes', 'no'),
(216, 'woocommerce_registration_generate_password', 'no', 'no'),
(217, 'woocommerce_myaccount_orders_endpoint', 'ordens', 'yes'),
(218, 'woocommerce_myaccount_view_order_endpoint', 'Visualizar-ordens', 'yes'),
(219, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(220, 'woocommerce_myaccount_edit_account_endpoint', 'editar-conta', 'yes'),
(221, 'woocommerce_myaccount_edit_address_endpoint', 'editar-endereços', 'yes'),
(222, 'woocommerce_myaccount_payment_methods_endpoint', 'metodos-de-pagamento', 'yes'),
(223, 'woocommerce_myaccount_lost_password_endpoint', 'recuperar-senha', 'yes'),
(224, 'woocommerce_logout_endpoint', 'sair', 'yes'),
(225, 'woocommerce_email_from_name', 'TOUCHIC MODAS', 'no'),
(226, 'woocommerce_email_from_address', 'saniel_alves@hotmail.com', 'no'),
(227, 'woocommerce_email_header_image', '', 'no'),
(228, 'woocommerce_email_footer_text', 'TOUCHIC MODAS', 'no'),
(229, 'woocommerce_email_base_color', '#96588a', 'no'),
(230, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(231, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(232, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(233, 'woocommerce_api_enabled', 'yes', 'yes'),
(234, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(236, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(237, 'widget_woocommerce_widget_cart', 'a:3:{i:3;a:2:{s:5:\"title\";s:23:\"Seu carrinho de compras\";s:13:\"hide_if_empty\";i:0;}i:4;a:2:{s:5:\"title\";s:23:\"Seu carrinho de compras\";s:13:\"hide_if_empty\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'widget_woocommerce_layered_nav_filters', 'a:3:{i:3;a:0:{}i:4;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'widget_woocommerce_layered_nav', 'a:2:{i:2;a:4:{s:5:\"title\";s:11:\"Filtrar por\";s:9:\"attribute\";s:0:\"\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(240, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:18:\"Filtrar por preço\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(241, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:10:\"Categorias\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'widget_woocommerce_product_search', 'a:3:{i:3;a:0:{}i:4;a:1:{s:5:\"title\";s:14:\"Buscar produto\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(243, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(245, 'widget_woocommerce_recently_viewed_products', 'a:3:{i:2;a:2:{s:5:\"title\";s:28:\"Produtos vistos recentemente\";s:6:\"number\";i:4;}i:3;a:2:{s:5:\"title\";s:25:\"Itens vistos recentemente\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'widget_woocommerce_top_rated_products', 'a:3:{i:3;a:2:{s:5:\"title\";s:31:\"Produtos melhores classificados\";s:6:\"number\";i:1;}i:4;a:2:{s:5:\"title\";s:22:\"Produtos mais vendidos\";s:6:\"number\";i:4;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_woocommerce_recent_reviews', 'a:3:{i:3;a:0:{}i:4;a:2:{s:5:\"title\";s:21:\"Avaliações recentes\";s:6:\"number\";i:4;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_woocommerce_rating_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:22:\"Classificação média\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(251, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(252, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1516727338;s:4:\"data\";a:0:{}}}', 'yes'),
(253, 'current_theme', 'AccessPress Store', 'yes'),
(254, 'theme_mods_accesspress-store', 'a:41:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:17;}s:18:\"custom_css_post_id\";i:-1;s:30:\"accesspress_widget_layout_type\";s:15:\"title_style_one\";s:30:\"accesspress_header_layout_type\";s:9:\"headerone\";s:11:\"show_slider\";i:1;s:10:\"show_pager\";i:1;s:13:\"show_controls\";i:1;s:15:\"auto_transition\";i:1;s:12:\"show_caption\";i:1;s:13:\"slider_1_post\";i:1;s:19:\"slider1_button_link\";s:14:\"www.google.com\";s:19:\"slider1_button_text\";s:16:\"Botão de ação\";s:13:\"slider_2_post\";i:17;s:19:\"slider2_button_link\";s:23:\"www.torrentseriados.net\";s:19:\"slider2_button_text\";s:18:\"Botão de ação 2\";s:12:\"slider_speed\";s:4:\"1000\";s:24:\"accesspress_ticker_title\";s:11:\"Ei psiu! ;)\";s:24:\"accesspress_ticker_text1\";s:77:\"Frete GRÁTIS em compras acima de RS 150,00 reais ou em produtos selecionados\";s:24:\"accesspress_ticker_text2\";s:42:\"Parcele suas compras em até 10x sem juros\";s:24:\"accesspress_ticker_text3\";s:51:\"Troca em até 15 dias. A primeira troca é GRÁTIS!\";s:16:\"background_image\";s:0:\"\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_attachment\";s:6:\"scroll\";s:16:\"header_textcolor\";s:5:\"blank\";s:26:\"hide_header_product_search\";i:0;s:18:\"custom_placeholder\";s:0:\"\";s:24:\"breadcrumb_archive_image\";s:87:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pin-1691674_960_720.jpg\";s:18:\"single_post_layout\";s:12:\"left-sidebar\";s:18:\"single_page_layout\";s:12:\"left-sidebar\";s:19:\"archive_page_layout\";s:12:\"left-sidebar\";s:22:\"archive_page_view_type\";s:4:\"grid\";s:16:\"background_color\";s:6:\"fefefe\";s:27:\"accesspress_ticker_checkbox\";i:1;s:24:\"accesspress_ticker_text4\";s:45:\"Pague com a segurança do PAYPAL ou PAGSEGURO\";s:25:\"breadcrumb_options_single\";i:1;s:23:\"breadcrumb_options_page\";i:1;s:21:\"breadcrumb_page_image\";s:95:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/clothes-pins-984176_960_720.jpg\";s:23:\"breadcrumb_single_image\";s:87:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pin-1691674_960_720.jpg\";s:12:\"header_image\";s:96:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-3.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:271;s:3:\"url\";s:96:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-3.jpg\";s:13:\"thumbnail_url\";s:96:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-3.jpg\";s:6:\"height\";i:70;s:5:\"width\";i:300;}}', 'yes'),
(255, 'theme_switched', '', 'yes'),
(256, 'widget_accesspress_store_icon_text', 'a:8:{i:3;a:5:{s:15:\"icon_text_title\";s:27:\"Esse é o título do ícone\";s:17:\"icon_text_content\";s:30:\"Esse é o conteúdo do ícone.\";s:14:\"icon_text_icon\";s:11:\"fa fa-music\";s:18:\"icon_text_readmore\";s:4:\"Text\";s:23:\"icon_text_readmore_link\";s:8:\"http://#\";}i:5;a:0:{}i:6;a:5:{s:15:\"icon_text_title\";s:14:\"Forma de envio\";s:17:\"icon_text_content\";s:94:\"PAC e SEDEX. Frete GRÁTIS em compras a partir de R$ 150,00 reais ou em produtos selecionados!\";s:14:\"icon_text_icon\";s:11:\"fa fa-truck\";s:18:\"icon_text_readmore\";s:30:\"Ver produtos com frete grátis\";s:23:\"icon_text_readmore_link\";s:0:\"\";}i:7;a:5:{s:15:\"icon_text_title\";s:29:\"Parcele em até 10x sem Juros\";s:17:\"icon_text_content\";s:154:\"Pague com VISA, MASTERCARD, ELO, AMERICAN EXPRESS, TRANSFERÊNCIA BANCÁRIA ou BOLETO, contando com a segurança que só o PAYPAL ou o PAGSEGURO oferecem!\";s:14:\"icon_text_icon\";s:17:\"fa fa-credit-card\";s:18:\"icon_text_readmore\";s:0:\"\";s:23:\"icon_text_readmore_link\";s:0:\"\";}i:10;a:5:{s:15:\"icon_text_title\";s:13:\"Acompanhe-nos\";s:17:\"icon_text_content\";s:31:\"Curta nossa página no facebook\";s:14:\"icon_text_icon\";s:21:\"fa fa-facebook-square\";s:18:\"icon_text_readmore\";s:13:\"Visitar agora\";s:23:\"icon_text_readmore_link\";s:0:\"\";}i:12;a:5:{s:15:\"icon_text_title\";s:22:\"Troque em até 15 dias\";s:17:\"icon_text_content\";s:23:\"com a 1ª troca GRÁTIS\";s:14:\"icon_text_icon\";s:12:\"fa fa-repeat\";s:18:\"icon_text_readmore\";s:0:\"\";s:23:\"icon_text_readmore_link\";s:0:\"\";}i:13;a:5:{s:15:\"icon_text_title\";s:12:\"Fale conosco\";s:17:\"icon_text_content\";s:71:\"Problemas, dúvidas ou sugestões entre em contato. Queremos lhe ouvir!\";s:14:\"icon_text_icon\";s:14:\"fa fa-bullhorn\";s:18:\"icon_text_readmore\";s:8:\"Contatar\";s:23:\"icon_text_readmore_link\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_accesspress_cta_simple', 'a:2:{i:3;a:5:{s:16:\"cta_simple_title\";s:15:\"Titulo de teste\";s:15:\"cta_simple_desc\";s:20:\"Descrição de teste\";s:19:\"cta_simple_btn_text\";s:15:\"Botão de teste\";s:22:\"cta_simple_font_awsome\";s:6:\"botão\";s:18:\"cta_simple_btn_url\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(258, 'widget_accesspress_storemo', 'a:9:{i:3;a:5:{s:11:\"promo_title\";s:15:\"20% de desconto\";s:11:\"promo_image\";s:82:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-1.jpg\";s:10:\"promo_desc\";s:0:\"\";s:14:\"promo_link_btn\";s:11:\"Ver mais...\";s:10:\"promo_link\";s:0:\"\";}i:4;a:5:{s:11:\"promo_title\";s:0:\"\";s:11:\"promo_image\";s:82:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-2.jpg\";s:10:\"promo_desc\";s:0:\"\";s:14:\"promo_link_btn\";s:8:\"Confira!\";s:10:\"promo_link\";s:0:\"\";}i:6;a:0:{}i:8;a:5:{s:11:\"promo_title\";s:0:\"\";s:11:\"promo_image\";s:82:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-1.jpg\";s:10:\"promo_desc\";s:0:\"\";s:14:\"promo_link_btn\";s:10:\"Aproveite!\";s:10:\"promo_link\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:10;a:5:{s:11:\"promo_title\";s:5:\"teste\";s:11:\"promo_image\";s:95:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/clothes-pins-984176_960_720.jpg\";s:10:\"promo_desc\";s:13:\"testo exemplo\";s:14:\"promo_link_btn\";s:17:\"Botão de ações\";s:10:\"promo_link\";s:0:\"\";}i:11;a:5:{s:11:\"promo_title\";s:22:\"Calçados & Sandálias\";s:11:\"promo_image\";s:84:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-2-1.jpg\";s:10:\"promo_desc\";s:35:\"Conforte e qualidade aos seus pés!\";s:14:\"promo_link_btn\";s:8:\"Confira!\";s:10:\"promo_link\";s:0:\"\";}i:12;a:5:{s:11:\"promo_title\";s:15:\"20% de desconto\";s:11:\"promo_image\";s:82:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-1.jpg\";s:10:\"promo_desc\";s:30:\"usando o código HELLO_WORD ;)\";s:14:\"promo_link_btn\";s:10:\"Aproveite!\";s:10:\"promo_link\";s:0:\"\";}i:14;a:5:{s:11:\"promo_title\";s:5:\"Teste\";s:11:\"promo_image\";s:84:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-1-1.jpg\";s:10:\"promo_desc\";s:15:\"Teste de widget\";s:14:\"promo_link_btn\";s:6:\"Botão\";s:10:\"promo_link\";s:0:\"\";}}', 'yes'),
(259, 'widget_accesspress_store_product', 'a:6:{i:3;a:4:{s:13:\"product_title\";s:14:\"Ofertas do Dia\";s:12:\"product_type\";s:8:\"category\";s:16:\"product_category\";s:2:\"22\";s:14:\"number_of_prod\";i:8;}i:5;a:4:{s:13:\"product_title\";s:18:\"Coleção feminina\";s:12:\"product_type\";s:8:\"category\";s:16:\"product_category\";s:2:\"15\";s:14:\"number_of_prod\";i:8;}i:7;a:4:{s:13:\"product_title\";s:4:\"asdf\";s:12:\"product_type\";s:8:\"category\";s:16:\"product_category\";s:2:\"15\";s:14:\"number_of_prod\";i:6;}i:8;a:0:{}i:9;a:4:{s:13:\"product_title\";s:19:\"Coleção Masculina\";s:12:\"product_type\";s:8:\"category\";s:16:\"product_category\";s:2:\"15\";s:14:\"number_of_prod\";i:12;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_accesspress_store_product2', 'a:5:{i:3;a:2:{s:17:\"product_alignment\";s:10:\"left_align\";s:16:\"product_category\";s:2:\"15\";}i:6;a:2:{s:17:\"product_alignment\";s:11:\"right_align\";s:16:\"product_category\";s:2:\"15\";}i:10;a:2:{s:17:\"product_alignment\";s:11:\"right_align\";s:16:\"product_category\";s:2:\"15\";}i:11;a:2:{s:17:\"product_alignment\";s:10:\"left_align\";s:16:\"product_category\";s:2:\"23\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_accesspress_cta_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_accesspress_store_full_promo', 'a:4:{i:3;a:7:{s:11:\"promo_title\";s:13:\"Moda Feminina\";s:11:\"promo_image\";s:85:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-Full.png\";s:11:\"promo_style\";s:9:\"style_one\";s:15:\"promo_title_sub\";s:34:\"Confira todas as nossas novidades!\";s:10:\"promo_desc\";s:57:\"Não é a toa que a peça mais forte do jogo é uma dama!\";s:14:\"promo_link_btn\";s:0:\"\";s:10:\"promo_link\";s:0:\"\";}i:5;a:7:{s:11:\"promo_title\";s:13:\"Moda feminina\";s:11:\"promo_image\";s:85:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/dress-864107_1280.jpg\";s:11:\"promo_style\";s:9:\"style_one\";s:15:\"promo_title_sub\";s:34:\"Confira todas as nossas novidades!\";s:10:\"promo_desc\";s:57:\"Não é a toa que a peça mais forte do jogo é uma dama!\";s:14:\"promo_link_btn\";s:0:\"\";s:10:\"promo_link\";s:0:\"\";}i:7;a:7:{s:11:\"promo_title\";s:24:\"Moda Feminina na TOUCHIC\";s:11:\"promo_image\";s:92:\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pink-hair-1450045_1280-2.jpg\";s:11:\"promo_style\";s:9:\"style_one\";s:15:\"promo_title_sub\";s:24:\"Confira nossas novidades\";s:10:\"promo_desc\";s:57:\"Não é a toa que a peça mais forte do jogo é uma dama!\";s:14:\"promo_link_btn\";s:0:\"\";s:10:\"promo_link\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'accesspressstore_plugin_installed_notif', '0', 'yes'),
(264, '_transient_timeout_external_ip_address_::1', '1517332155', 'no'),
(265, '_transient_external_ip_address_::1', '189.90.32.152', 'no'),
(275, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'woocommerce_permalinks', 'a:4:{s:13:\"category_base\";s:0:\"\";s:8:\"tag_base\";s:0:\"\";s:14:\"attribute_base\";s:0:\"\";s:12:\"product_base\";s:0:\"\";}', 'yes'),
(301, 'sidebars_widgets', 'a:17:{s:19:\"wp_inactive_widgets\";a:12:{i:0;s:6:\"text-3\";i:1;s:29:\"accesspress_store_icon_text-3\";i:2;s:28:\"woocommerce_recent_reviews-3\";i:3;s:6:\"text-5\";i:4;s:6:\"text-7\";i:5;s:28:\"accesspress_store_product2-3\";i:6;s:28:\"accesspress_store_product2-6\";i:7;s:25:\"woocommerce_widget_cart-3\";i:8;s:21:\"accesspress_storemo-4\";i:9;s:21:\"accesspress_storemo-8\";i:10;s:30:\"accesspress_store_full_promo-5\";i:11;s:30:\"accesspress_store_full_promo-3\";}s:13:\"sidebar-right\";a:2:{i:0;s:25:\"woocommerce_widget_cart-4\";i:1;s:38:\"woocommerce_recently_viewed_products-3\";}s:12:\"sidebar-left\";a:1:{i:0;s:7:\"text-14\";}s:4:\"shop\";a:9:{i:0;s:26:\"woocommerce_price_filter-2\";i:1;s:25:\"woocommerce_layered_nav-2\";i:2;s:27:\"woocommerce_rating_filter-2\";i:3;s:33:\"woocommerce_layered_nav_filters-4\";i:4;s:32:\"woocommerce_product_categories-2\";i:5;s:38:\"woocommerce_recently_viewed_products-2\";i:6;s:28:\"woocommerce_recent_reviews-4\";i:7;s:32:\"woocommerce_top_rated_products-4\";i:8;s:28:\"woocommerce_product_search-4\";}s:20:\"header-callto-action\";a:0:{}s:14:\"promo-widget-1\";a:3:{i:0;s:22:\"accesspress_storemo-11\";i:1;s:22:\"accesspress_storemo-12\";i:2;s:22:\"accesspress_storemo-14\";}s:16:\"product-widget-1\";a:1:{i:0;s:27:\"accesspress_store_product-3\";}s:14:\"promo-widget-2\";a:1:{i:0;s:30:\"accesspress_store_full_promo-7\";}s:16:\"product-widget-2\";a:2:{i:0;s:27:\"accesspress_store_product-5\";i:1;s:27:\"accesspress_store_product-9\";}s:9:\"cta-video\";a:2:{i:0;s:29:\"accesspress_store_icon_text-6\";i:1;s:29:\"accesspress_store_icon_text-7\";}s:16:\"product-widget-3\";a:3:{i:0;s:7:\"text-15\";i:1;s:29:\"accesspress_store_product2-10\";i:2;s:29:\"accesspress_store_product2-11\";}s:14:\"promo-widget-3\";a:3:{i:0;s:30:\"accesspress_store_icon_text-12\";i:1;s:30:\"accesspress_store_icon_text-13\";i:2;s:30:\"accesspress_store_icon_text-10\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(329, '_transient_timeout_wc_addons_sections', '1517337091', 'no'),
(331, '_transient_wc_addons_sections', 'O:8:\"stdClass\":10:{s:8:\"featured\";O:8:\"stdClass\":2:{s:5:\"title\";s:8:\"Featured\";s:8:\"endpoint\";s:59:\"https://d3t0oesq8995hv.cloudfront.net/section/featured.json\";}s:7:\"popular\";O:8:\"stdClass\":2:{s:5:\"title\";s:7:\"Popular\";s:8:\"endpoint\";s:58:\"https://d3t0oesq8995hv.cloudfront.net/section/popular.json\";}s:16:\"payment_gateways\";O:8:\"stdClass\":2:{s:5:\"title\";s:16:\"Payment Gateways\";s:8:\"endpoint\";s:67:\"https://d3t0oesq8995hv.cloudfront.net/section/payment_gateways.json\";}s:16:\"shipping_methods\";O:8:\"stdClass\":2:{s:5:\"title\";s:16:\"Shipping Methods\";s:8:\"endpoint\";s:67:\"https://d3t0oesq8995hv.cloudfront.net/section/shipping_methods.json\";}s:13:\"import_export\";O:8:\"stdClass\":2:{s:5:\"title\";s:13:\"Import/Export\";s:8:\"endpoint\";s:64:\"https://d3t0oesq8995hv.cloudfront.net/section/import_export.json\";}s:10:\"accounting\";O:8:\"stdClass\":2:{s:5:\"title\";s:10:\"Accounting\";s:8:\"endpoint\";s:61:\"https://d3t0oesq8995hv.cloudfront.net/section/accounting.json\";}s:9:\"marketing\";O:8:\"stdClass\":2:{s:5:\"title\";s:9:\"Marketing\";s:8:\"endpoint\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/section/marketing.json\";}s:7:\"product\";O:8:\"stdClass\":2:{s:5:\"title\";s:8:\"Products\";s:8:\"endpoint\";s:58:\"https://d3t0oesq8995hv.cloudfront.net/section/product.json\";}s:4:\"free\";O:8:\"stdClass\":2:{s:5:\"title\";s:4:\"Free\";s:8:\"endpoint\";s:55:\"https://d3t0oesq8995hv.cloudfront.net/section/free.json\";}s:11:\"third_party\";O:8:\"stdClass\":2:{s:5:\"title\";s:11:\"Third-party\";s:8:\"endpoint\";s:62:\"https://d3t0oesq8995hv.cloudfront.net/section/third_party.json\";}}', 'no'),
(333, '_transient_timeout_wc_addons_featured', '1517337091', 'no'),
(335, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:140:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:115:\"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"Square + WooCommerce\";s:11:\"description\";s:176:\"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:120:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:6:\"button\";s:9:\"From: $79\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}}}}}', 'no'),
(341, '_transient_product_query-transient-version', '1517240697', 'yes'),
(344, '_transient_product-transient-version', '1517240699', 'yes'),
(396, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(412, '_transient_shipping-transient-version', '1516907341', 'yes'),
(443, 'woocommerce_gateway_order', 'a:8:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:22:\"woo-mercado-pago-basic\";i:4;s:23:\"woo-mercado-pago-custom\";i:5;s:23:\"woo-mercado-pago-ticket\";i:6;s:29:\"woo-mercado-pago-subscription\";i:7;}', 'yes'),
(460, '_transient_timeout_wc_addons_section_payment_gateways', '1517362696', 'no'),
(461, '_transient_wc_addons_section_payment_gateways', 'O:8:\"stdClass\":1:{s:8:\"products\";a:24:{i:0;O:8:\"stdClass\":5:{s:5:\"title\";s:6:\"Stripe\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2016/08/stripe.png\";s:7:\"excerpt\";s:103:\"Accept Visa, MasterCard, American Express, Discover, JCB, and Diners Club cards directly on your store.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/stripe/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:1;O:8:\"stdClass\":5:{s:5:\"title\";s:10:\"Amazon Pay\";s:5:\"image\";s:88:\"https://woocommerce.com/wp-content/uploads/2013/08/logo-amazonpay-fullcolor-dark-rgb.png\";s:7:\"excerpt\";s:131:\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via Amazon widgets, so the buyer never leaves your site.\";s:4:\"link\";s:108:\"https://woocommerce.com/products/pay-with-amazon/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:2;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"PayFast Payment Gateway\";s:5:\"image\";s:84:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2011/09/payfast2x.png\";s:7:\"excerpt\";s:70:\"Take payments on your WooCommerce store via PayFast (redirect method).\";s:4:\"link\";s:116:\"https://woocommerce.com/products/payfast-payment-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:3;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Authorize.Net AIM\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2011/09/auth1.png\";s:7:\"excerpt\";s:112:\"Take credit card payments direct on your checkout using the Authorize.net (AIM) payment gateway for WooCommerce.\";s:4:\"link\";s:110:\"https://woocommerce.com/products/authorize-net-aim/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:4;O:8:\"stdClass\":5:{s:5:\"title\";s:27:\"PayPal Powered by Braintree\";s:5:\"image\";s:72:\"https://woocommerce.com/wp-content/uploads/2016/02/pp_bt_v_rgb_150px.png\";s:7:\"excerpt\";s:115:\"Accept PayPal, credit cards and debit cards with a single payment gateway solution — PayPal Powered by Braintree.\";s:4:\"link\";s:140:\"https://woocommerce.com/products/woocommerce-gateway-paypal-powered-by-braintree/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:5;O:8:\"stdClass\":5:{s:5:\"title\";s:10:\"PayPal Pro\";s:5:\"image\";s:65:\"https://woocommerce.com/wp-content/uploads/2011/09/paypal-pro.png\";s:7:\"excerpt\";s:69:\"Take credit card payments directly on your checkout using PayPal Pro.\";s:4:\"link\";s:103:\"https://woocommerce.com/products/paypal-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:6;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Authorize.Net CIM\";s:5:\"image\";s:73:\"https://woocommerce.com/wp-content/uploads/2013/04/authorize-net-logo.png\";s:7:\"excerpt\";s:68:\"Authorize CIM gateway with support for pre-orders and subscriptions.\";s:4:\"link\";s:110:\"https://woocommerce.com/products/authorize-net-cim/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:7;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"PayPal Express Checkout\";s:5:\"image\";s:69:\"https://woocommerce.com/wp-content/uploads/2016/04/paypal-gold-60.png\";s:7:\"excerpt\";s:75:\"Add PayPal to your web checkout so your customers can pay from any device.\";s:4:\"link\";s:136:\"https://woocommerce.com/products/woocommerce-gateway-paypal-express-checkout/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:8;O:8:\"stdClass\":5:{s:5:\"title\";s:6:\"Klarna\";s:5:\"image\";s:91:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2011/12/klarna_main-logo.png\";s:7:\"excerpt\";s:103:\"Give your customers the simplest buying experience with Klarna and achieve amazing checkout conversions\";s:4:\"link\";s:99:\"https://woocommerce.com/products/klarna/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:9;O:8:\"stdClass\":5:{s:5:\"title\";s:9:\"FirstData\";s:5:\"image\";s:64:\"https://woocommerce.com/wp-content/uploads/2012/09/firstdata.jpg\";s:7:\"excerpt\";s:33:\"FirstData gateway for WooCommerce\";s:4:\"link\";s:102:\"https://woocommerce.com/products/firstdata/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:10;O:8:\"stdClass\":5:{s:5:\"title\";s:22:\"Square for WooCommerce\";s:5:\"image\";s:74:\"https://woocommerce.com/wp-content/uploads/2016/07/square-logo-black-1.png\";s:7:\"excerpt\";s:158:\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:11;O:8:\"stdClass\":5:{s:5:\"title\";s:15:\"PayPal Advanced\";s:5:\"image\";s:89:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2012/09/paypaladvanced.png\";s:7:\"excerpt\";s:105:\"Take credit card payments securely via Paypal Payments Advanced (Payflow) keeping customers on your site.\";s:4:\"link\";s:108:\"https://woocommerce.com/products/paypal-advanced/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;99.00\";}i:12;O:8:\"stdClass\":5:{s:5:\"title\";s:8:\"WorldPay\";s:5:\"image\";s:63:\"https://woocommerce.com/wp-content/uploads/2012/09/worldpay.jpg\";s:7:\"excerpt\";s:26:\"Take payments via WorldPay\";s:4:\"link\";s:101:\"https://woocommerce.com/products/worldpay/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:13;O:8:\"stdClass\":5:{s:5:\"title\";s:29:\"SagePay Form / SagePay Direct\";s:5:\"image\";s:67:\"https://woocommerce.com/wp-content/uploads/2011/10/sage-cropped.png\";s:7:\"excerpt\";s:61:\"Take payments on your WooCommerce store via SagePay. UK only.\";s:4:\"link\";s:106:\"https://woocommerce.com/products/sage-pay-form/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:14;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Authorize.Net DPM\";s:5:\"image\";s:82:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2012/02/authdpm.png\";s:7:\"excerpt\";s:123:\"Take credit card payments safely and securely using the Authorize.net (Direct Post Method) payment gateway for WooCommerce.\";s:4:\"link\";s:110:\"https://woocommerce.com/products/authorize-net-dpm/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:15;O:8:\"stdClass\":5:{s:5:\"title\";s:28:\"Intuit Payments/QBMS Gateway\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:95:\"Allow customers to securely save multiple payment methods to their account for faster checkout.\";s:4:\"link\";s:104:\"https://woocommerce.com/products/intuit-qbms/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:16;O:8:\"stdClass\":5:{s:5:\"title\";s:4:\"eWAY\";s:5:\"image\";s:59:\"https://woocommerce.com/wp-content/uploads/2012/09/eway.gif\";s:7:\"excerpt\";s:104:\"Take credit card payments securely via eWay (US, SG, MY, HK, AU, and NZ) keeping customers on your site.\";s:4:\"link\";s:97:\"https://woocommerce.com/products/eway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:17;O:8:\"stdClass\":5:{s:5:\"title\";s:33:\"Conditional Shipping and Payments\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:124:\"Use conditional logic to control the payment gateways, shipping methods and shipping countries/states available at checkout.\";s:4:\"link\";s:126:\"https://woocommerce.com/products/conditional-shipping-and-payments/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:18;O:8:\"stdClass\":5:{s:5:\"title\";s:18:\"WooCommerce Mollie\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2012/09/mollie.png\";s:7:\"excerpt\";s:106:\"Process secure iDEAL, credit card, Mister Cash, PayPal, and paysafecard payments using WooCommerce Mollie.\";s:4:\"link\";s:111:\"https://woocommerce.com/products/woocommerce-mollie/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:19;O:8:\"stdClass\":5:{s:5:\"title\";s:31:\"Elavon Converge Payment Gateway\";s:5:\"image\";s:82:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2012/07/images.jpeg\";s:7:\"excerpt\";s:93:\"Take credit card payments with Elavon, the fourth largest merchant acquirer in North America.\";s:4:\"link\";s:118:\"https://woocommerce.com/products/elavon-vm-payment-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:20;O:8:\"stdClass\":5:{s:5:\"title\";s:37:\"Role-Based Payment / Shipping Methods\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:67:\"Limit different user roles to specific payment and shipping methods\";s:4:\"link\";s:128:\"https://woocommerce.com/products/role-based-payment-shipping-methods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:21;O:8:\"stdClass\":5:{s:5:\"title\";s:15:\"Moneris Gateway\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2012/09/moneris.gif\";s:7:\"excerpt\";s:32:\"Take payments online via Moneris\";s:4:\"link\";s:108:\"https://woocommerce.com/products/moneris-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:22;O:8:\"stdClass\":5:{s:5:\"title\";s:22:\"Sofort Payment Gateway\";s:5:\"image\";s:81:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2012/06/200x75.png\";s:7:\"excerpt\";s:60:\"Online bank transfer powered by the Sofort payment provider.\";s:4:\"link\";s:115:\"https://woocommerce.com/products/sofort-payment-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:23;O:8:\"stdClass\":5:{s:5:\"title\";s:31:\"Realex Redirect Payment Gateway\";s:5:\"image\";s:81:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2012/09/realex.png\";s:7:\"excerpt\";s:106:\"Accept credit card payments via Realex (redirect) and WooCommerce without the need for an SSL certificate.\";s:4:\"link\";s:124:\"https://woocommerce.com/products/realex-redirect-payment-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}}}', 'no'),
(462, '_transient_timeout_wc_addons_section_import_export', '1517362849', 'no'),
(463, '_transient_wc_addons_section_import_export', 'O:8:\"stdClass\":1:{s:8:\"products\";a:6:{i:0;O:8:\"stdClass\":5:{s:5:\"title\";s:39:\"WooCommerce Customer / Order CSV Export\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:106:\"Export orders and customers from WooCommerce to a CSV file with ease manually or on an automatic schedule.\";s:4:\"link\";s:117:\"https://woocommerce.com/products/ordercustomer-csv-export/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:1;O:8:\"stdClass\":5:{s:5:\"title\";s:24:\"Product CSV Import Suite\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:91:\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\";s:4:\"link\";s:117:\"https://woocommerce.com/products/product-csv-import-suite/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:2;O:8:\"stdClass\":5:{s:5:\"title\";s:38:\"Customer/Order/Coupon CSV Import Suite\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:66:\"Import both customers and orders into WooCommerce from a CSV file.\";s:4:\"link\";s:123:\"https://woocommerce.com/products/customerorder-csv-import-suite/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:3;O:8:\"stdClass\":5:{s:5:\"title\";s:45:\"WooCommerce Customer / Order XML Export Suite\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:107:\"Easily export orders and customers from your WooCommerce to XML to download or automatically on a schedule.\";s:4:\"link\";s:123:\"https://woocommerce.com/products/customerorder-xml-export-suite/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;99.00\";}i:4;O:8:\"stdClass\":5:{s:5:\"title\";s:9:\"Cart2Cart\";s:5:\"image\";s:81:\"https://woocommerce.com/wp-content/uploads/2011/10/cart2cart_logo_white.png?w=470\";s:7:\"excerpt\";s:129:\"Switch your store to WooCommerce with Cart2Cart and migrate product, customer and order data from many other eCommerce platforms.\";s:4:\"link\";s:102:\"https://woocommerce.com/products/cart2cart/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:5;O:8:\"stdClass\":5:{s:5:\"title\";s:25:\"osCommerce to WooCommerce\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:62:\"Import product data from your osCommerce store to WooCommerce.\";s:4:\"link\";s:118:\"https://woocommerce.com/products/oscommerce-to-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}}}', 'no'),
(464, '_transient_timeout_wc_addons_section_accounting', '1517362859', 'no'),
(465, '_transient_wc_addons_section_accounting', 'O:8:\"stdClass\":1:{s:8:\"products\";a:14:{i:0;O:8:\"stdClass\":5:{s:5:\"title\";s:28:\"Sequential Order Numbers Pro\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:98:\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes / suffixes\";s:4:\"link\";s:121:\"https://woocommerce.com/products/sequential-order-numbers-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:1;O:8:\"stdClass\":5:{s:5:\"title\";s:18:\"WooCommerce Zapier\";s:5:\"image\";s:87:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2013/09/zapier-logo1.png\";s:7:\"excerpt\";s:169:\"<span style=\"font-weight: 400;\">Bring the power of Zapier to WooCommerce. Integrate your store with more than 750 services to save time and increase productivity.</span>\";s:4:\"link\";s:111:\"https://woocommerce.com/products/woocommerce-zapier/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;59.00\";}i:2;O:8:\"stdClass\":5:{s:5:\"title\";s:4:\"Xero\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2012/08/xero2.png\";s:7:\"excerpt\";s:72:\"Save time with automated sync between WooCommerce and your Xero account.\";s:4:\"link\";s:97:\"https://woocommerce.com/products/xero/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:3;O:8:\"stdClass\":5:{s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:103:\"<span style=\"font-weight: 400\">Easily track profit by including  cost of goods in your reports </span>\";s:4:\"link\";s:118:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:4;O:8:\"stdClass\":5:{s:5:\"title\";s:22:\"WooCommerce FreshBooks\";s:5:\"image\";s:65:\"https://woocommerce.com/wp-content/uploads/2012/09/freshbooks.png\";s:7:\"excerpt\";s:50:\"Integrate WooCommerce with your FreshBooks account\";s:4:\"link\";s:115:\"https://woocommerce.com/products/woocommerce-freshbooks/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:5;O:8:\"stdClass\":5:{s:5:\"title\";s:22:\"WooCommerce Anti-Fraud\";s:5:\"image\";s:89:\"https://woocommerce.com/wp-content/uploads/2014/09/wc_anti-fraud_featured_image.jpg?w=167\";s:7:\"excerpt\";s:65:\"Quickly detect fraudulent transactions on your WooCommerce store.\";s:4:\"link\";s:115:\"https://woocommerce.com/products/woocommerce-anti-fraud/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:6;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"Authorize.Net Reporting\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:113:\"This WooCommerce extension allows you to Get Daily Transaction Reports via Email for your Authorize.net account.\";s:4:\"link\";s:128:\"https://woocommerce.com/products/woocommerce-authorize-net-reporting/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:7;O:8:\"stdClass\":5:{s:5:\"title\";s:26:\"WooCommerce Smart Refunder\";s:5:\"image\";s:89:\"https://woocommerce.com/wp-content/uploads/2015/06/customer-refund-request-form.png?w=488\";s:7:\"excerpt\";s:81:\"Empower your customers to request refunds directly from their My Account screen.\";s:4:\"link\";s:119:\"https://woocommerce.com/products/woocommerce-smart-refunder/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:8;O:8:\"stdClass\":5:{s:5:\"title\";s:20:\"US Export Compliance\";s:5:\"image\";s:127:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2013/06/woothemes-woocommerce-us-export-ecommerce-compliance.jpg\";s:7:\"excerpt\";s:119:\"Increase comfort and security of your online transactions by making your shop compliant with the US Export regulations.\";s:4:\"link\";s:113:\"https://woocommerce.com/products/us-export-compliance/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;129.00\";}i:9;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"OneSaas for WooCommerce\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/uploads/2016/04/OneSaas-Transparent-Logo-x2000.png\";s:7:\"excerpt\";s:173:\"Save time and money by integrating your WooCommerce store and having it automatically share data with your accounting, shipping, and other apps you use to run your business.\";s:4:\"link\";s:116:\"https://woocommerce.com/products/onesaas-for-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:10;O:8:\"stdClass\":5:{s:5:\"title\";s:5:\"Unify\";s:5:\"image\";s:65:\"https://woocommerce.com/wp-content/uploads/2016/04/Unify-logo.png\";s:7:\"excerpt\";s:71:\"Unify easily integrates WooCommerce with QuickBooks, Xero, and NetSuite\";s:4:\"link\";s:98:\"https://woocommerce.com/products/unify/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:11;O:8:\"stdClass\":5:{s:5:\"title\";s:8:\"Quaderno\";s:5:\"image\";s:68:\"https://woocommerce.com/wp-content/uploads/2016/05/quaderno-logo.png\";s:7:\"excerpt\";s:79:\"Save hours every month by putting your invoicing and tax handling on autopilot.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/quaderno/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:12;O:8:\"stdClass\":5:{s:5:\"title\";s:13:\"Smart Manager\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:124:\"Smart Manager is a unique, revolutionary tool that gives you the power to efficiently manage products, customers and orders.\";s:4:\"link\";s:106:\"https://woocommerce.com/products/smart-manager/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;149.00\";}i:13;O:8:\"stdClass\":5:{s:5:\"title\";s:9:\"Q-Invoice\";s:5:\"image\";s:97:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2014/06/q_invoice_large-300x75.jpg\";s:7:\"excerpt\";s:111:\"With q-invoice you can send professional looking invoices to your customers while updating your administration.\";s:4:\"link\";s:102:\"https://woocommerce.com/products/q-invoice/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}}}', 'no'),
(466, '_transient_timeout_wc_addons_section_marketing', '1517362868', 'no'),
(467, '_transient_wc_addons_section_marketing', 'O:8:\"stdClass\":1:{s:8:\"products\";a:24:{i:0;O:8:\"stdClass\":5:{s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:93:\"https://woocommerce.com/wp-content/uploads/2017/04/open-graph-fb-for-woocommerce2x2.jpg?w=980\";s:7:\"excerpt\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:1;O:8:\"stdClass\":5:{s:5:\"title\";s:28:\"WooCommerce Google Analytics\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:167:\"<span style=\"font-weight: 400;\">Understand your customers and increase revenue with world’s leading analytics platform - integrated with WooCommerce for free.</span>\";s:4:\"link\";s:121:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:2;O:8:\"stdClass\":5:{s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:48:\"Bulk discounts, role-based pricing and much more\";s:4:\"link\";s:108:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;129.00\";}i:3;O:8:\"stdClass\":5:{s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:146:\"<span style=\"font-weight: 400;\">Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more. </span>\";s:4:\"link\";s:106:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;99.00\";}i:4;O:8:\"stdClass\":5:{s:5:\"title\";s:10:\"Follow Ups\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:180:\"<span style=\"font-weight: 400;\">Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind. </span>\";s:4:\"link\";s:109:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;99.00\";}i:5;O:8:\"stdClass\":5:{s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:99:\"<span style=\"font-weight: 400\">Let customers find you when shopping for products via Google.</span>\";s:4:\"link\";s:112:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:6;O:8:\"stdClass\":5:{s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:4:\"link\";s:123:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;129.00\";}i:7;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:4:\"link\";s:116:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:8;O:8:\"stdClass\":5:{s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:67:\"https://woocommerce.com/wp-content/uploads/2016/01/ga-pro-small.png\";s:7:\"excerpt\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:4:\"link\";s:125:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:9;O:8:\"stdClass\":5:{s:5:\"title\";s:12:\"PDF Invoices\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:94:\"Automatically create and attach a fully customizable PDF invoice to the completed order email.\";s:4:\"link\";s:105:\"https://woocommerce.com/products/pdf-invoices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:10;O:8:\"stdClass\":5:{s:5:\"title\";s:11:\"URL Coupons\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:135:\"Add a unique URL to a coupon code that automatically applies a discount and (optionally) adds products to the customer\'s shopping cart.\";s:4:\"link\";s:104:\"https://woocommerce.com/products/url-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:11;O:8:\"stdClass\":5:{s:5:\"title\";s:12:\"Cart Reports\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:105:\"<span style=\"font-weight: 400;\">Get real-time reports on what customers are leaving in their cart.</span>\";s:4:\"link\";s:117:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:12;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Free Gift Coupons\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:94:\"Give away a free item to any customer with the coupon code With WooCommerce Free Gift Coupons.\";s:4:\"link\";s:110:\"https://woocommerce.com/products/free-gift-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:13;O:8:\"stdClass\":5:{s:5:\"title\";s:20:\"PDF Product Vouchers\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:57:\"Customize and sell downloadable PDF vouchers for products\";s:4:\"link\";s:113:\"https://woocommerce.com/products/pdf-product-vouchers/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;129.00\";}i:14;O:8:\"stdClass\":5:{s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:4:\"link\";s:105:\"https://woocommerce.com/products/store-credit/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:15;O:8:\"stdClass\":5:{s:5:\"title\";s:30:\"Aweber Newsletter Subscription\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:53:\"Allow customers to opt-in to your AWeber mailing list\";s:4:\"link\";s:123:\"https://woocommerce.com/products/aweber-newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:16;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"eBay Sync for Australia\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:93:\"Sell your products on eBay Australia, the place where Australians start their online shopping\";s:4:\"link\";s:114:\"https://woocommerce.com/products/woocommerce-ebay-sync/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:17;O:8:\"stdClass\":5:{s:5:\"title\";s:19:\"Review for Discount\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:43:\"Reward your reviewers with discount coupons\";s:4:\"link\";s:112:\"https://woocommerce.com/products/review-for-discount/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:18;O:8:\"stdClass\":5:{s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:4:\"link\";s:121:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:19;O:8:\"stdClass\":5:{s:5:\"title\";s:27:\"ConstantContact Integration\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:55:\"Build Your Constant Contact Email List with WooCommerce\";s:4:\"link\";s:121:\"https://woocommerce.com/products/woocommerce-constant-contact/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:20;O:8:\"stdClass\":5:{s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:4:\"link\";s:121:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:21;O:8:\"stdClass\":5:{s:5:\"title\";s:25:\"MailChimp for WooCommerce\";s:5:\"image\";s:137:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2017/09/mailchimp_logo_e70269b17ad2c251266f6c8a8322ddab-e1479845203725.png\";s:7:\"excerpt\";s:108:\"MailChimp for WooCommerce is a free plugin that connects your WooCommerce store with your MailChimp account.\";s:4:\"link\";s:118:\"https://woocommerce.com/products/mailchimp-for-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:22;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Email Attachments\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:42:\"Add attachments to your WooCommerce emails\";s:4:\"link\";s:110:\"https://woocommerce.com/products/email-attachments/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:23;O:8:\"stdClass\":5:{s:5:\"title\";s:13:\"Account Funds\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:122:\"Account Funds will allow your customers to deposit funds into their accounts for which you can reward them with discounts.\";s:4:\"link\";s:106:\"https://woocommerce.com/products/account-funds/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}}}', 'no'),
(468, '_transient_timeout_wc_addons_section_free', '1517362875', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(469, '_transient_wc_addons_section_free', 'O:8:\"stdClass\":1:{s:8:\"products\";a:24:{i:0;O:8:\"stdClass\":5:{s:5:\"title\";s:6:\"Stripe\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2016/08/stripe.png\";s:7:\"excerpt\";s:103:\"Accept Visa, MasterCard, American Express, Discover, JCB, and Diners Club cards directly on your store.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/stripe/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:1;O:8:\"stdClass\":5:{s:5:\"title\";s:10:\"Amazon Pay\";s:5:\"image\";s:88:\"https://woocommerce.com/wp-content/uploads/2013/08/logo-amazonpay-fullcolor-dark-rgb.png\";s:7:\"excerpt\";s:131:\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via Amazon widgets, so the buyer never leaves your site.\";s:4:\"link\";s:108:\"https://woocommerce.com/products/pay-with-amazon/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:2;O:8:\"stdClass\":5:{s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:93:\"https://woocommerce.com/wp-content/uploads/2017/04/open-graph-fb-for-woocommerce2x2.jpg?w=980\";s:7:\"excerpt\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:3;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"PayFast Payment Gateway\";s:5:\"image\";s:84:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2011/09/payfast2x.png\";s:7:\"excerpt\";s:70:\"Take payments on your WooCommerce store via PayFast (redirect method).\";s:4:\"link\";s:116:\"https://woocommerce.com/products/payfast-payment-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:4;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"ShipStation Integration\";s:5:\"image\";s:59:\"https://woocommerce.com/wp-content/uploads/2012/08/blue.png\";s:7:\"excerpt\";s:161:\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation, the #1 choice for online retailers. Try it free for 30 days today!\";s:4:\"link\";s:116:\"https://woocommerce.com/products/shipstation-integration/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:5;O:8:\"stdClass\":5:{s:5:\"title\";s:28:\"WooCommerce Google Analytics\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:167:\"<span style=\"font-weight: 400;\">Understand your customers and increase revenue with world’s leading analytics platform - integrated with WooCommerce for free.</span>\";s:4:\"link\";s:121:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:6;O:8:\"stdClass\":5:{s:5:\"title\";s:27:\"PayPal Powered by Braintree\";s:5:\"image\";s:72:\"https://woocommerce.com/wp-content/uploads/2016/02/pp_bt_v_rgb_150px.png\";s:7:\"excerpt\";s:115:\"Accept PayPal, credit cards and debit cards with a single payment gateway solution — PayPal Powered by Braintree.\";s:4:\"link\";s:140:\"https://woocommerce.com/products/woocommerce-gateway-paypal-powered-by-braintree/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:7;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"PayPal Express Checkout\";s:5:\"image\";s:69:\"https://woocommerce.com/wp-content/uploads/2016/04/paypal-gold-60.png\";s:7:\"excerpt\";s:75:\"Add PayPal to your web checkout so your customers can pay from any device.\";s:4:\"link\";s:136:\"https://woocommerce.com/products/woocommerce-gateway-paypal-express-checkout/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:8;O:8:\"stdClass\":5:{s:5:\"title\";s:6:\"Klarna\";s:5:\"image\";s:91:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2011/12/klarna_main-logo.png\";s:7:\"excerpt\";s:103:\"Give your customers the simplest buying experience with Klarna and achieve amazing checkout conversions\";s:4:\"link\";s:99:\"https://woocommerce.com/products/klarna/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:9;O:8:\"stdClass\":5:{s:5:\"title\";s:20:\"WooCommerce Shipping\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:97:\"Get live rates, discounted labels, tracking numbers, and more – without leaving your dashboard.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/shipping/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:10;O:8:\"stdClass\":5:{s:5:\"title\";s:18:\"WooCommerce Taxamo\";s:5:\"image\";s:71:\"https://woocommerce.com/wp-content/uploads/2014/12/Taxamo_logo-copy.jpg\";s:7:\"excerpt\";s:83:\"Manage and track EU VAT rules to keep your shop in line with the new European law.\";s:4:\"link\";s:111:\"https://woocommerce.com/products/woocommerce-taxamo/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:11;O:8:\"stdClass\":5:{s:5:\"title\";s:34:\"WooCommerce Accommodation Bookings\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:76:\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\";s:4:\"link\";s:127:\"https://woocommerce.com/products/woocommerce-accommodation-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:12;O:8:\"stdClass\":5:{s:5:\"title\";s:18:\"WooCommerce AvaTax\";s:5:\"image\";s:77:\"https://woocommerce.com/wp-content/uploads/2016/01/avalara-logo-rgb-small.jpg\";s:7:\"excerpt\";s:142:\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\";s:4:\"link\";s:111:\"https://woocommerce.com/products/woocommerce-avatax/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:13;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"eBay Sync for Australia\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:93:\"Sell your products on eBay Australia, the place where Australians start their online shopping\";s:4:\"link\";s:114:\"https://woocommerce.com/products/woocommerce-ebay-sync/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:14;O:8:\"stdClass\":5:{s:5:\"title\";s:6:\"TaxJar\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/uploads/2014/10/TJ_logo_color_clear-background.png\";s:7:\"excerpt\";s:132:\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, collection, and filing.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/taxjar/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:15;O:8:\"stdClass\":5:{s:5:\"title\";s:26:\"Product Details Customiser\";s:5:\"image\";s:88:\"https://woocommerce.com/wp-content/uploads/2013/05/product-details-customiser.jpeg?w=348\";s:7:\"excerpt\";s:132:\"Customise WooCommerce product details pages. Show / Hide core components like product imagery, tabs, upsells &amp; related products.\";s:4:\"link\";s:119:\"https://woocommerce.com/products/product-details-customiser/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:16;O:8:\"stdClass\":5:{s:5:\"title\";s:30:\"MailPoet Checkout Subscription\";s:5:\"image\";s:75:\"https://woocommerce.com/wp-content/uploads/2014/10/mailpoet-woocommerce.png\";s:7:\"excerpt\";s:96:\"A user-friendly newsletter plugin which allows you to use MailPoet with your WooCommerce store.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/mailpoet/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:17;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"OneSaas for WooCommerce\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/uploads/2016/04/OneSaas-Transparent-Logo-x2000.png\";s:7:\"excerpt\";s:173:\"Save time and money by integrating your WooCommerce store and having it automatically share data with your accounting, shipping, and other apps you use to run your business.\";s:4:\"link\";s:116:\"https://woocommerce.com/products/onesaas-for-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;29.00\";}i:18;O:8:\"stdClass\":5:{s:5:\"title\";s:16:\"Novalnet Gateway\";s:5:\"image\";s:74:\"https://woocommerce.com/wp-content/uploads/2014/09/novalnet-logo.jpg?w=245\";s:7:\"excerpt\";s:80:\"Take payment via Novalnet Payment Solutions Worldwide on your WooCommerce store.\";s:4:\"link\";s:109:\"https://woocommerce.com/products/novalnet-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:19;O:8:\"stdClass\":5:{s:5:\"title\";s:5:\"Unify\";s:5:\"image\";s:65:\"https://woocommerce.com/wp-content/uploads/2016/04/Unify-logo.png\";s:7:\"excerpt\";s:71:\"Unify easily integrates WooCommerce with QuickBooks, Xero, and NetSuite\";s:4:\"link\";s:98:\"https://woocommerce.com/products/unify/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:20;O:8:\"stdClass\":5:{s:5:\"title\";s:18:\"Order Notes Window\";s:5:\"image\";s:72:\"https://woocommerce.com/wp-content/uploads/2013/07/order-notes.png?w=772\";s:7:\"excerpt\";s:129:\"Overrides the default behaviour when clicking on Order notes button so that modal window with order notes is displayed instantly.\";s:4:\"link\";s:111:\"https://woocommerce.com/products/order-notes-window/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:21;O:8:\"stdClass\":5:{s:5:\"title\";s:8:\"Printful\";s:5:\"image\";s:88:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2015/03/printful-logo.png\";s:7:\"excerpt\";s:109:\"Connect your WooCommerce store with Printful to automatically print and ship all of your print product orders\";s:4:\"link\";s:101:\"https://woocommerce.com/products/printful/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:22;O:8:\"stdClass\":5:{s:5:\"title\";s:9:\"Conversio\";s:5:\"image\";s:68:\"https://woocommerce.com/wp-content/uploads/2016/11/conversio-big.png\";s:7:\"excerpt\";s:442:\"<span style=\"font-weight: 400;\">Conversio is the all-in-one marketing dashboard for your WooCommerce store. You can send all types of emails (receipts, newsletters, followups &amp; cart recovery), as well as use our on-site widgets (product recommendations, product reviews, customer feedback and supercharged search) all from the same intelligent, automated dashboard. </span><i><span style=\"font-weight: 400;\">Sell More. Do Less.</span></i>\";s:4:\"link\";s:102:\"https://woocommerce.com/products/conversio/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:23;O:8:\"stdClass\":5:{s:5:\"title\";s:20:\"Yotpo Social Reviews\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2013/07/Yotpo.png\";s:7:\"excerpt\";s:117:\"Build your shoppers confidence with trustworthy reviews. Yotpo is free and getting started takes less than 5 minutes.\";s:4:\"link\";s:113:\"https://woocommerce.com/products/yotpo-social-reviews/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}}}', 'no'),
(470, '_transient_timeout_wc_addons_section_popular', '1517362895', 'no'),
(471, '_transient_wc_addons_section_popular', 'O:8:\"stdClass\":1:{s:8:\"products\";a:25:{i:0;O:8:\"stdClass\":5:{s:5:\"title\";s:19:\"WooCommerce iOS App\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:217:\"Keep your finger on the pulse of your online shop with WooCommerce iOS. All of your shop\'s catalog & performance reports are now just a tap away - quickly accessible & beautifully presented right there on your iPhone.\";s:4:\"link\";s:100:\"http://www.woothemes.com/woocommerce-ios/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;4.99\";}i:1;O:8:\"stdClass\":5:{s:5:\"title\";s:6:\"Stripe\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2016/08/stripe.png\";s:7:\"excerpt\";s:103:\"Accept Visa, MasterCard, American Express, Discover, JCB, and Diners Club cards directly on your store.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/stripe/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:2;O:8:\"stdClass\":5:{s:5:\"title\";s:10:\"Amazon Pay\";s:5:\"image\";s:88:\"https://woocommerce.com/wp-content/uploads/2013/08/logo-amazonpay-fullcolor-dark-rgb.png\";s:7:\"excerpt\";s:131:\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via Amazon widgets, so the buyer never leaves your site.\";s:4:\"link\";s:108:\"https://woocommerce.com/products/pay-with-amazon/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:3;O:8:\"stdClass\":5:{s:5:\"title\";s:15:\"Product Add-Ons\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:121:\"<span style=\"font-weight: 400;\">Give your customers the option to customize their purchase or add personalization.</span>\";s:4:\"link\";s:108:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:4;O:8:\"stdClass\":5:{s:5:\"title\";s:25:\"WooCommerce Subscriptions\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2012/09/woosubs.png\";s:7:\"excerpt\";s:138:\"<span style=\"font-weight: 400;\">Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis. </span>\";s:4:\"link\";s:118:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;199.00\";}i:5;O:8:\"stdClass\":5:{s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:93:\"https://woocommerce.com/wp-content/uploads/2017/04/open-graph-fb-for-woocommerce2x2.jpg?w=980\";s:7:\"excerpt\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:6;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"PayFast Payment Gateway\";s:5:\"image\";s:84:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2011/09/payfast2x.png\";s:7:\"excerpt\";s:70:\"Take payments on your WooCommerce store via PayFast (redirect method).\";s:4:\"link\";s:116:\"https://woocommerce.com/products/payfast-payment-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:7;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"ShipStation Integration\";s:5:\"image\";s:59:\"https://woocommerce.com/wp-content/uploads/2012/08/blue.png\";s:7:\"excerpt\";s:161:\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation, the #1 choice for online retailers. Try it free for 30 days today!\";s:4:\"link\";s:116:\"https://woocommerce.com/products/shipstation-integration/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:8;O:8:\"stdClass\":5:{s:5:\"title\";s:28:\"WooCommerce Google Analytics\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:167:\"<span style=\"font-weight: 400;\">Understand your customers and increase revenue with world’s leading analytics platform - integrated with WooCommerce for free.</span>\";s:4:\"link\";s:121:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:9;O:8:\"stdClass\":5:{s:5:\"title\";s:20:\"USPS Shipping Method\";s:5:\"image\";s:59:\"https://woocommerce.com/wp-content/uploads/2012/09/usps.jpg\";s:7:\"excerpt\";s:91:\"Get shipping rates from the USPS API which handles both domestic and international parcels.\";s:4:\"link\";s:113:\"https://woocommerce.com/products/usps-shipping-method/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:10;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Authorize.Net AIM\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/uploads/woocommerce_uploads/2011/09/auth1.png\";s:7:\"excerpt\";s:112:\"Take credit card payments direct on your checkout using the Authorize.net (AIM) payment gateway for WooCommerce.\";s:4:\"link\";s:110:\"https://woocommerce.com/products/authorize-net-aim/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:11;O:8:\"stdClass\":5:{s:5:\"title\";s:39:\"WooCommerce Customer / Order CSV Export\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:106:\"Export orders and customers from WooCommerce to a CSV file with ease manually or on an automatic schedule.\";s:4:\"link\";s:117:\"https://woocommerce.com/products/ordercustomer-csv-export/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:12;O:8:\"stdClass\":5:{s:5:\"title\";s:19:\"UPS Shipping Method\";s:5:\"image\";s:58:\"https://woocommerce.com/wp-content/uploads/2012/09/ups.jpg\";s:7:\"excerpt\";s:90:\"Get shipping rates from the UPS API which handles both domestic and international parcels.\";s:4:\"link\";s:112:\"https://woocommerce.com/products/ups-shipping-method/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:13;O:8:\"stdClass\":5:{s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:50:\"Offer customizable bundles and assembled products.\";s:4:\"link\";s:108:\"https://woocommerce.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:14;O:8:\"stdClass\":5:{s:5:\"title\";s:19:\"Table Rate Shipping\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:123:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\";s:4:\"link\";s:112:\"https://woocommerce.com/products/table-rate-shipping/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;99.00\";}i:15;O:8:\"stdClass\":5:{s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:48:\"Bulk discounts, role-based pricing and much more\";s:4:\"link\";s:108:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;129.00\";}i:16;O:8:\"stdClass\":5:{s:5:\"title\";s:27:\"PayPal Powered by Braintree\";s:5:\"image\";s:72:\"https://woocommerce.com/wp-content/uploads/2016/02/pp_bt_v_rgb_150px.png\";s:7:\"excerpt\";s:115:\"Accept PayPal, credit cards and debit cards with a single payment gateway solution — PayPal Powered by Braintree.\";s:4:\"link\";s:140:\"https://woocommerce.com/products/woocommerce-gateway-paypal-powered-by-braintree/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:17;O:8:\"stdClass\":5:{s:5:\"title\";s:46:\"WooCommerce Print Invoices &amp; Packing lists\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:77:\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\";s:4:\"link\";s:121:\"https://woocommerce.com/products/print-invoices-packing-lists/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:18;O:8:\"stdClass\":5:{s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:4:\"link\";s:126:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}i:19;O:8:\"stdClass\":5:{s:5:\"title\";s:10:\"PayPal Pro\";s:5:\"image\";s:65:\"https://woocommerce.com/wp-content/uploads/2011/09/paypal-pro.png\";s:7:\"excerpt\";s:69:\"Take credit card payments directly on your checkout using PayPal Pro.\";s:4:\"link\";s:103:\"https://woocommerce.com/products/paypal-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:20;O:8:\"stdClass\":5:{s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:146:\"<span style=\"font-weight: 400;\">Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more. </span>\";s:4:\"link\";s:106:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;99.00\";}i:21;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"WooCommerce Memberships\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:116:\"<span style=\"font-weight: 400;\">Give members access to restricted content or products, for a fee or for free.</span>\";s:4:\"link\";s:116:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:11:\"&#36;149.00\";}i:22;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Authorize.Net CIM\";s:5:\"image\";s:73:\"https://woocommerce.com/wp-content/uploads/2013/04/authorize-net-logo.png\";s:7:\"excerpt\";s:68:\"Authorize CIM gateway with support for pre-orders and subscriptions.\";s:4:\"link\";s:110:\"https://woocommerce.com/products/authorize-net-cim/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;79.00\";}i:23;O:8:\"stdClass\":5:{s:5:\"title\";s:23:\"PayPal Express Checkout\";s:5:\"image\";s:69:\"https://woocommerce.com/wp-content/uploads/2016/04/paypal-gold-60.png\";s:7:\"excerpt\";s:75:\"Add PayPal to your web checkout so your customers can pay from any device.\";s:4:\"link\";s:136:\"https://woocommerce.com/products/woocommerce-gateway-paypal-express-checkout/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:9:\"&#36;0.00\";}i:24;O:8:\"stdClass\":5:{s:5:\"title\";s:17:\"Shipment Tracking\";s:5:\"image\";s:0:\"\";s:7:\"excerpt\";s:48:\"Add shipment tracking information to your orders\";s:4:\"link\";s:110:\"https://woocommerce.com/products/shipment-tracking/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:5:\"price\";s:10:\"&#36;49.00\";}}}', 'no'),
(487, '_site_transient_timeout_browser_b876c8fd7fc402e60530b64622320f7a', '1517363821', 'no'),
(488, '_site_transient_browser_b876c8fd7fc402e60530b64622320f7a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(492, '_test_user_v0', '', 'yes'),
(493, '_site_id_v0', '', 'yes'),
(494, '_collector_id_v0', '', 'yes'),
(495, '_all_payment_methods_v0', 'a:0:{}', 'yes'),
(496, '_test_user_v1', '', 'yes'),
(497, '_site_id_v1', '', 'yes'),
(498, '_collector_id_v1', '', 'yes'),
(499, '_all_payment_methods_ticket', '[]', 'yes'),
(504, '_transient_orders-transient-version', '1516887801', 'yes'),
(512, 'woocommerce_version', '3.2.6', 'yes'),
(513, 'woocommerce_db_version', '3.2.6', 'yes'),
(573, '_transient_timeout_external_ip_address_192.168.0.104', '1517408527', 'no'),
(574, '_transient_external_ip_address_192.168.0.104', '189.90.32.152', 'no'),
(713, 'woocommerce_pagseguro_settings', 'a:20:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:9:\"PagSeguro\";s:11:\"description\";s:17:\"Pay via PagSeguro\";s:11:\"integration\";s:0:\"\";s:6:\"method\";s:11:\"transparent\";s:7:\"sandbox\";s:2:\"no\";s:5:\"email\";s:24:\"saniel_alves@hotmail.com\";s:5:\"token\";s:32:\"33325FADFCD94FBF8145BC92DAD1E4F5\";s:13:\"sandbox_email\";s:0:\"\";s:13:\"sandbox_token\";s:0:\"\";s:20:\"transparent_checkout\";s:0:\"\";s:9:\"tc_credit\";s:3:\"yes\";s:11:\"tc_transfer\";s:3:\"yes\";s:9:\"tc_ticket\";s:3:\"yes\";s:17:\"tc_ticket_message\";s:3:\"yes\";s:8:\"behavior\";s:0:\"\";s:15:\"send_only_total\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:2:\"no\";}', 'yes'),
(715, 'woocommerce_cheque_settings', 'a:4:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:14:\"Check payments\";s:11:\"description\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";s:12:\"instructions\";s:0:\"\";}', 'yes'),
(724, 'wcbcf_settings', 'a:7:{s:11:\"person_type\";i:1;s:10:\"cell_phone\";i:1;s:9:\"mailcheck\";i:1;s:11:\"maskedinput\";i:1;s:15:\"addresscomplete\";i:1;s:12:\"validate_cpf\";i:1;s:13:\"validate_cnpj\";i:1;}', 'yes'),
(725, 'wcbcf_version', '3.6.0', 'yes'),
(735, 'fswp_settings', 'a:51:{s:19:\"enable_installments\";s:1:\"1\";s:18:\"installment_prefix\";s:10:\"Parcele em\";s:15:\"installment_qty\";s:2:\"10\";s:18:\"installment_suffix\";s:8:\"s/ juros\";s:25:\"installment_minimum_value\";s:1:\"5\";s:14:\"in_cash_prefix\";s:2:\"ou\";s:16:\"in_cash_discount\";s:1:\"5\";s:21:\"in_cash_discount_type\";s:1:\"0\";s:14:\"in_cash_suffix\";s:9:\"no boleto\";s:17:\"in_loop_alignment\";s:6:\"center\";s:19:\"in_single_alignment\";s:4:\"left\";s:21:\"fswp_in_loop_position\";s:38:\"woocommerce_after_shop_loop_item_title\";s:27:\"fswp_in_loop_position_level\";s:2:\"15\";s:23:\"fswp_in_single_position\";s:34:\"woocommerce_single_product_summary\";s:29:\"fswp_in_single_position_level\";s:2:\"15\";s:33:\"installments_in_loop_prefix_color\";s:0:\"\";s:39:\"installments_in_loop_prefix_font-weight\";s:7:\"inherit\";s:37:\"installments_in_loop_prefix_font-size\";s:0:\"\";s:33:\"installments_in_loop_amount_color\";s:0:\"\";s:39:\"installments_in_loop_amount_font-weight\";s:7:\"inherit\";s:37:\"installments_in_loop_amount_font-size\";s:0:\"\";s:33:\"installments_in_loop_suffix_color\";s:0:\"\";s:39:\"installments_in_loop_suffix_font-weight\";s:7:\"inherit\";s:37:\"installments_in_loop_suffix_font-size\";s:0:\"\";s:35:\"installments_in_single_prefix_color\";s:0:\"\";s:41:\"installments_in_single_prefix_font-weight\";s:7:\"inherit\";s:39:\"installments_in_single_prefix_font-size\";s:0:\"\";s:35:\"installments_in_single_amount_color\";s:0:\"\";s:41:\"installments_in_single_amount_font-weight\";s:7:\"inherit\";s:39:\"installments_in_single_amount_font-size\";s:0:\"\";s:35:\"installments_in_single_suffix_color\";s:0:\"\";s:41:\"installments_in_single_suffix_font-weight\";s:7:\"inherit\";s:39:\"installments_in_single_suffix_font-size\";s:0:\"\";s:28:\"in_cash_in_loop_prefix_color\";s:0:\"\";s:34:\"in_cash_in_loop_prefix_font-weight\";s:7:\"inherit\";s:32:\"in_cash_in_loop_prefix_font-size\";s:0:\"\";s:28:\"in_cash_in_loop_amount_color\";s:0:\"\";s:34:\"in_cash_in_loop_amount_font-weight\";s:7:\"inherit\";s:32:\"in_cash_in_loop_amount_font-size\";s:0:\"\";s:28:\"in_cash_in_loop_suffix_color\";s:0:\"\";s:34:\"in_cash_in_loop_suffix_font-weight\";s:7:\"inherit\";s:32:\"in_cash_in_loop_suffix_font-size\";s:0:\"\";s:30:\"in_cash_in_single_prefix_color\";s:0:\"\";s:36:\"in_cash_in_single_prefix_font-weight\";s:7:\"inherit\";s:34:\"in_cash_in_single_prefix_font-size\";s:0:\"\";s:30:\"in_cash_in_single_amount_color\";s:0:\"\";s:36:\"in_cash_in_single_amount_font-weight\";s:7:\"inherit\";s:34:\"in_cash_in_single_amount_font-size\";s:0:\"\";s:30:\"in_cash_in_single_suffix_color\";s:0:\"\";s:36:\"in_cash_in_single_suffix_font-weight\";s:7:\"inherit\";s:34:\"in_cash_in_single_suffix_font-size\";s:0:\"\";}', 'yes'),
(813, '_transient_timeout_wc_report_sales_by_date', '1517320916', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(814, '_transient_wc_report_sales_by_date', 'a:156:{s:32:\"e9b0457055ab0844897135440a2f8d81\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"321c83b15f160b1ed5df13544f11ac53\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"102d14a38b7c591b1283cb9ce54f1aa4\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"988665f5fa24a7a2c6cb4ac7b93529e1\";N;s:32:\"aa37a1fe5e76d68ae3824363bee0b8b6\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"e2ebe62fad4192b50a4e0474988acf4e\";a:0:{}s:32:\"81c097d42c21b6dd343ad9d4db5c0f93\";a:0:{}s:32:\"1f8e3a97bb358ea15dbe80f8e6045773\";a:0:{}s:32:\"41e5dfedeb71b963390061364ad6cd47\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"db74e8919f1d18a30defa423e8efa5ca\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"21df20e18362e35bf51a6b3c8bca03d3\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"752f16989ba150cf9f8977a161e1ee80\";N;s:32:\"a8ef2d73269567cecb16e9059f765d91\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"16746e05a7473fef5f68f00863347805\";a:0:{}s:32:\"a532a42f543c81cbd7486b42c59004aa\";a:0:{}s:32:\"04d0dc8915675f8a74655313eb72664b\";a:0:{}s:32:\"95f9a716d7679f531debb72b99c36105\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"9894b882c8bd07857df22f050621118b\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"731c55b03408b2bf00af2d76144e81c2\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"2f0da9372c5011931c42c4e92bd6db55\";N;s:32:\"1c5d391b129d2a3280ff4903784cc931\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"58fdadbebf8e8e83dd9654e5b2c7517f\";a:0:{}s:32:\"325e04b0f5c3313b018b64c289689180\";a:0:{}s:32:\"233212d42ff31a148b5b9532aa20d418\";a:0:{}s:32:\"31563da5fa2ed3351f7a1e88ae9b1e54\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"b48cd984705ab22fbd10887ec756f8ea\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"d0af3032fada6e3acfc500757a10ebef\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"44822ec351f5fe3bfb9a8c5b2c37bc1d\";N;s:32:\"5ae21c533914dee0f3d25c4fc4b39c33\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"77e44e3f97e59bc62748ead8551c4d83\";a:0:{}s:32:\"5604aeb6b40eb69c0ac7ef9a752f7ca0\";a:0:{}s:32:\"d6a44c91340c601ac0977df340d348c3\";a:0:{}s:32:\"8186647c0ac035e3fa616583fe107bcf\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"5f160babe995ec4d1cdc2ec19a343aba\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"1217fd2a1daeb37401f05fbbe62ffc81\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"65faa0985eb34af3dfe7af0d4a3ecf2b\";N;s:32:\"b0ca4542fe268cefcc8e28f9f2c8bd3e\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"6259ca77cee4ca251be4502897a6f8a7\";a:0:{}s:32:\"80b590fa13056397c48ed0725d492f2a\";a:0:{}s:32:\"6a7bfcaa7976e82089e19d78f8b853ed\";a:0:{}s:32:\"1399ea7207ea995620667aa89a16392f\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"167606b47cfc0a191b4d5175a2c1ad45\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"426faffb219a6853c4fd05531960ffb6\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"51715d9cfeae9ae0f3faab431ae33f8a\";N;s:32:\"b23142efbc263532406f6efaca128a5f\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"b062b5f3c197a856f52a0eb1c39ada9b\";a:0:{}s:32:\"5c1c50a227fc129ba5d2dd061ab06e11\";a:0:{}s:32:\"d6a62608665be3b313435960ff8ff00a\";a:0:{}s:32:\"f73502a8abce1d045977947124a6e8db\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"bcbf8d1666bf6276dc44e0a8b82438f6\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"87fb9b9052abab7489f3c14e9d9a605e\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"306330c3ad29f902110c0c4847f8a3ec\";N;s:32:\"ad74488073e28515ba879050f8ef8489\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"3223f4397f590a0fe876ed280c875e8b\";a:0:{}s:32:\"5912e58bbcf79e7343267e6548b2e531\";a:0:{}s:32:\"6a84d609793a544c9ca32e4b9967164a\";a:0:{}s:32:\"bf84fb7152c56e1917b99506d9a2574b\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"4a638c12806c6f3deec080f1a71116e0\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"e9297725d3dfc3e5890e2ba1243964fc\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"bda140d236d1ef7ea6520cced6bf9979\";N;s:32:\"bc14caef1f21730df1590f2cbf85b299\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"9e23c2dc6b691131928426e46afb9645\";a:0:{}s:32:\"f47518157f1ce732f41399a3b67cbff1\";a:0:{}s:32:\"c92e9337b701fb70f4b4fc430df791e9\";a:0:{}s:32:\"d9142fb7cb4e7d7bf0c5a5908dedfcf0\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"39cee461e09c1da12add2c6295ff0d3a\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"aaebf87289389f94199ff5dac0291090\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"4d7efff48c8c26ee2acdde08529b72e4\";N;s:32:\"027a8454c73333d4d35e38d7e76b738e\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"69cf34b6ed2fc6e4ab2070bbe510cbc7\";a:0:{}s:32:\"3397e881b6b335f5c26c3565c758fe2c\";a:0:{}s:32:\"b81e5282dc39c8b721c7f1ecdede42b5\";a:0:{}s:32:\"b288235cb5f1ddea919397fe8a789f20\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"634a1979f9a6495d9e0cff385a390d05\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"06ba344d7d22978edd6684662cf84f22\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"dc8c172d788ce7c7fe5ee066837810e5\";N;s:32:\"013da8273b555f2ea51ef6fd09ca2e7f\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"31026595256364a96dd1f1e0b9fad3a2\";a:0:{}s:32:\"353e62ce1b1c7b27a8ef73bdb217479b\";a:0:{}s:32:\"c1c002b0f280e2ba2a45177b0d5ec7a6\";a:0:{}s:32:\"fe202a51bf8b144e929210e1497d3efe\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"cd007049e7c260f8e89201ac5d4acbcc\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"6c5249ed442d6191afc71b52b9c55ca1\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"9a7036962ebd7f71e9728695a50757fa\";N;s:32:\"8e850a1122fa448444f32fd07be0e5ac\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"dcc99214a62ac422b3eea228b1c94529\";a:0:{}s:32:\"f7a468d59173e5617ac0d5d3c1e85dab\";a:0:{}s:32:\"eaa3e6f87bd6445b029cbad17b8a98cb\";a:0:{}s:32:\"83dfe6654de8f6e4f74dfb701f2b01f5\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"ac8d88cd92644c91573528dff5fc39c7\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"319933e1959aaef842811c29e60021d8\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"abde9e1d27651d2aab6bec26a86e729d\";N;s:32:\"3f476da4b6bfc3705e79232c790e907e\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"3040294bd253014eb476b3e634b209d0\";a:0:{}s:32:\"5caf8696756b6be0e1380208cb6d9db3\";a:0:{}s:32:\"3bf6a5e07c2ceeae1d075cebb971ab71\";a:0:{}s:32:\"5a715c057b473024c9b11cc7ed9237df\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"2134e7fbabc990e81eeb2d8a18b44a64\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"f0474e6605f9448ddd43d46c00d4147f\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"01839dca877ea4b3082c5d0dc379caab\";N;s:32:\"6f0fbe0e41848bee4c6911aeb82c1006\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"573ba57f3d76a33a2a9ca7046dd70942\";a:0:{}s:32:\"85774b991a5b1b7f4be5e443267fed39\";a:0:{}s:32:\"adf50971147e7f8713f7ccee2679c083\";a:0:{}s:32:\"629cfcda34fa9a4e45d96fcab91a1d44\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"18a951670da21fcbae98fddf9735d0fc\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"127397d2e3a60e8a82e83c191d5563cc\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"677febc41185ee53b31aba395830fe08\";N;s:32:\"ec64eb51b72f7adae88f361919a0e0ef\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"5f917460053cf813d63a48bd5da9d15b\";a:0:{}s:32:\"9e3692ebb75b32706f67d438fa40104a\";a:0:{}s:32:\"74bc8a3f03a1a84a40e00f50ec6cd0e9\";a:0:{}s:32:\"d8189d0bf15c17a502f375c23612e13e\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"be13dfcd7a224ed291023346f10a2e4a\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"a39bb7dbdceb6efdd4e11c9b6fd97480\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"426718b158c91217b557348dfaf1d42b\";N;s:32:\"fe4607aea2de6e41efe6a28b9c700f12\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"35391798b32e2c38cf57fb7866f95e2b\";a:0:{}s:32:\"e51b9224f320f77f88528a988697c933\";a:0:{}s:32:\"5a4f6eae88403124c08cdf1590bf3c87\";a:0:{}s:32:\"4502cfa8a89a31d0eef9ee9800b28fe0\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"17ef832f8e91319ea9e1448c54584cfd\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"ecb374b60690d1e9b061b45f67897b39\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"f701e489c02733cf29ed81f654f543e6\";N;s:32:\"c694a65467feeec3dea97c738e26300e\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"9a2bc509ef5fbd707508d931c67a330a\";a:0:{}s:32:\"743eca64d33df8d54d51720db2f614e7\";a:0:{}s:32:\"a077dfec9e504a35c50f79cb029810d9\";a:0:{}s:32:\"6f15585fbf7fe57877d34cf8d53127c2\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"034cd10b87e9355bb2e99dd5d3da9e6b\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"b334251475c3bf65364bd56a8848f20b\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"49b98ed0de59a47510f7c0314cdb97a2\";N;s:32:\"ff751f979c30afdc561638e70331513e\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"31f8ca88073b6646c04b340a8f3e085d\";a:0:{}s:32:\"db6d7924e1c9a435a8297ed7e97eb0e4\";a:0:{}s:32:\"1a9e0c20e7eee8eff14f5efe0e1bc6a2\";a:0:{}s:32:\"4e545eb8df4253c033cc9a6345442df2\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"5daaa334bfdf556c8d7edf16383ea6d4\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"f5863951387ca363f2c45119d4f06ef2\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"1436ae9fc99693cf4a99e5b0bc64d9ec\";N;s:32:\"d3d0c3e413153eff8395ddf654d52b98\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"4f3624a50160865a2aa466bcf9b53233\";a:0:{}s:32:\"4d5543590666193ecb203396f6b75da3\";a:0:{}s:32:\"9da89695c6a1f71b9bd5d52cbab6116b\";a:0:{}s:32:\"f1b7d4c2fea0b9e911c0af3688e62009\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"e7c21c149a3bec214b026e66f21a8cf0\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"9cfef03e6c2e768afda096244b78fa3d\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"6aeed6e0b8645101fdf4121177e869e2\";N;s:32:\"aba125d94c3721a02d5b2a67704d790e\";a:2:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"fa6dfce9d2b21be5249bdba8ef3a10f7\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"hello_word\";s:15:\"discount_amount\";s:3:\"2.7\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}}s:32:\"a10dec92d467c09b8bcfb900aecf9ccb\";a:2:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"3\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"a18ff5fbb54743aadaf088b19735391d\";N;s:32:\"08a9340f6d58f7bc2d9e38495a99f3f0\";a:2:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"24.3\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"40.5\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"0dc73a450ca962011c78e5c6e1b2271a\";a:0:{}s:32:\"f457b78b55c2f0b97a39ae7f1a7b4387\";a:0:{}s:32:\"d5e6304abf6e3c55b556c9ceff709f03\";a:0:{}}', 'no'),
(884, '_transient_timeout_wc_shipping_method_count_1_1516905801', '1519497819', 'no'),
(885, '_transient_wc_shipping_method_count_1_1516905801', '3', 'no'),
(888, 'woocommerce_correios-pac_1_settings', 'a:24:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:3:\"PAC\";s:16:\"behavior_options\";s:0:\"\";s:15:\"origin_postcode\";s:8:\"65922000\";s:17:\"shipping_class_id\";s:2:\"-1\";s:18:\"show_delivery_time\";s:3:\"yes\";s:15:\"additional_time\";s:1:\"2\";s:3:\"fee\";s:0:\"\";s:17:\"optional_services\";s:0:\"\";s:14:\"receipt_notice\";s:2:\"no\";s:9:\"own_hands\";s:2:\"no\";s:13:\"declare_value\";s:3:\"yes\";s:15:\"service_options\";s:0:\"\";s:11:\"custom_code\";s:0:\"\";s:12:\"service_type\";s:12:\"conventional\";s:5:\"login\";s:0:\"\";s:8:\"password\";s:0:\"\";s:16:\"package_standard\";s:0:\"\";s:14:\"minimum_height\";s:1:\"2\";s:13:\"minimum_width\";s:2:\"11\";s:14:\"minimum_length\";s:2:\"16\";s:12:\"extra_weight\";s:1:\"0\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:3:\"yes\";}', 'yes'),
(890, 'woocommerce_correios-sedex_2_settings', 'a:24:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:5:\"SEDEX\";s:16:\"behavior_options\";s:0:\"\";s:15:\"origin_postcode\";s:8:\"65922000\";s:17:\"shipping_class_id\";s:2:\"-1\";s:18:\"show_delivery_time\";s:3:\"yes\";s:15:\"additional_time\";s:1:\"2\";s:3:\"fee\";s:0:\"\";s:17:\"optional_services\";s:0:\"\";s:14:\"receipt_notice\";s:2:\"no\";s:9:\"own_hands\";s:2:\"no\";s:13:\"declare_value\";s:3:\"yes\";s:15:\"service_options\";s:0:\"\";s:11:\"custom_code\";s:0:\"\";s:12:\"service_type\";s:12:\"conventional\";s:5:\"login\";s:0:\"\";s:8:\"password\";s:0:\"\";s:16:\"package_standard\";s:0:\"\";s:14:\"minimum_height\";s:1:\"2\";s:13:\"minimum_width\";s:2:\"11\";s:14:\"minimum_length\";s:2:\"16\";s:12:\"extra_weight\";s:1:\"0\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:3:\"yes\";}', 'yes'),
(907, '_transient_timeout_wc_shipping_method_count_1_1516907341', '1519499348', 'no'),
(908, '_transient_wc_shipping_method_count_1_1516907341', '3', 'no'),
(950, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:32:\"ti-woocommerce-wishlist/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.2.2.9\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1516935781;s:11:\"plugin_path\";s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";}}s:7:\"abspath\";s:36:\"C:\\xampp\\htdocs\\wordpress_ecommerce/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:8:\"sdk_path\";s:32:\"ti-woocommerce-wishlist/freemius\";s:7:\"version\";s:7:\"1.2.2.9\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1516935781;}}', 'yes'),
(951, 'fs_debug_mode', '', 'yes'),
(952, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:839;a:3:{s:4:\"slug\";s:23:\"ti-woocommerce-wishlist\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:106:\"C:/xampp/htdocs/wordpress_ecommerce/wp-content/plugins/ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";}}s:13:\"file_slug_map\";a:1:{s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:23:\"ti-woocommerce-wishlist\";}s:11:\"plugin_data\";a:1:{s:23:\"ti-woocommerce-wishlist\";a:15:{s:17:\"install_timestamp\";i:1516932605;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:7:\"1.2.2.9\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"1.5.14\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1516932605;s:7:\"version\";s:6:\"1.5.14\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1516932723;s:7:\"version\";s:6:\"1.5.14\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"7\";s:4:\"info\";s:10:\"porque sim\";s:12:\"is_anonymous\";b:0;}}}s:7:\"plugins\";a:1:{s:23:\"ti-woocommerce-wishlist\";O:9:\"FS_Plugin\":16:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:27:\"WooCommerce Wishlist Plugin\";s:4:\"slug\";s:23:\"ti-woocommerce-wishlist\";s:4:\"type\";s:6:\"plugin\";s:4:\"file\";s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:7:\"version\";s:6:\"1.5.14\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_1944d351ab27040c8f65c72d1e7e7\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"839\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"206120ba789cfa740c57be5c02602749\";s:13:\"admin_notices\";a:1:{s:23:\"ti-woocommerce-wishlist\";a:0:{}}}', 'yes'),
(953, 'fs_api_cache', 'a:0:{}', 'yes'),
(973, 'ti_admin_notice_rating', 'a:1:{i:0;s:195:\"<p>Woo-Ha! It has been a month since the first wishlist was created with <strong>WooCommerce WishList plugin</strong>!</p><p>What do you think about our plugin?</p><p>Share your love with us.</p>\";}', 'yes'),
(974, 'ti_admin_notice_trigger_rating', 'a:1:{s:32:\"74950159917226a697f42cf6865056cb\";a:4:{i:0;s:10:\"admin_init\";i:1;s:31:\"tinvwl_rating_notice_trigger_30\";i:2;i:10;i:3;i:1;}}', 'yes'),
(975, 'tinvwl_utm_source', 'wordpress_org', 'yes'),
(976, 'tinvwl_utm_medium', 'organic', 'yes'),
(977, 'tinvwl_utm_campaign', 'organic', 'yes'),
(978, 'widget_widget_top_wishlist', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(980, 'ti_admin_shownotices', 'a:1:{s:6:\"rating\";a:0:{}}', 'yes'),
(981, 'ti_admin_notices', 'a:1:{i:0;s:6:\"rating\";}', 'yes'),
(984, 'tinvwl-template_checker', 'a:3:{s:5:\"theme\";s:17:\"accesspress-store\";s:7:\"checked\";b:1;s:4:\"time\";i:1516932654;}', 'yes'),
(998, '_transient_yoast_i18n_ti-woocommerce-wishlist_promo_hide', '1', 'yes'),
(1019, 'yit_recently_activated', 'a:0:{}', 'yes'),
(1020, 'yith_wcwl_frontend_css_colors', 's:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";', 'yes'),
(1021, 'yith_wcwl_wishlist_title', 'Acompanhe todos os produtos adicionados a lista de desejos! ;)', 'yes'),
(1022, 'yith-wcwl-page-id', '211', 'yes'),
(1023, 'yith_wcwl_wishlist_page_id', '211', 'yes'),
(1024, 'yith_wcwl_version', '2.2.0', 'yes'),
(1025, 'yith_wcwl_db_version', '2.0.0', 'yes'),
(1026, 'yith_wcwl_general_videobox', 'a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:112:\"http://localhost/wordpress_ecommerce/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:78:\"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(1027, 'yith_wcwl_enabled', 'yes', 'yes'),
(1028, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(1029, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(1030, 'yith_wcwl_add_to_wishlist_text', 'Add aos desejos', 'yes'),
(1031, 'yith_wcwl_browse_wishlist_text', 'Ver desejos', 'yes'),
(1032, 'yith_wcwl_already_in_wishlist_text', 'Esse produto já se encontra na sua lista de desejos!', 'yes'),
(1033, 'yith_wcwl_product_added_text', 'Produto adicionado a lista de desejos!', 'yes'),
(1034, 'yith_wcwl_add_to_cart_text', 'Adicionar ao Carrinho', 'yes'),
(1035, 'yith_wcwl_price_show', 'yes', 'yes'),
(1036, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(1037, 'yith_wcwl_stock_show', 'yes', 'yes'),
(1038, 'yith_wcwl_show_dateadded', 'yes', 'yes'),
(1039, 'yith_wcwl_repeat_remove_button', 'yes', 'yes'),
(1040, 'yith_wcwl_share_fb', 'yes', 'yes'),
(1041, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(1042, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(1043, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(1044, 'yith_wcwl_share_email', 'yes', 'yes'),
(1045, 'yith_wcwl_socials_title', 'teste teste teste', 'yes'),
(1046, 'yith_wcwl_socials_text', '', 'yes'),
(1047, 'yith_wcwl_socials_image_url', '', 'yes'),
(1048, 'yith_wfbt_enable_integration', 'no', 'yes'),
(1049, 'yith_wcwl_use_button', 'no', 'yes'),
(1050, 'yith_wcwl_custom_css', '', 'yes'),
(1051, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(1052, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(1053, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(1054, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(1055, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(1069, 'yith_wcwl_button_position', 'add-to-cart', 'yes'),
(1146, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1245, '_transient_timeout_wc_admin_report', '1517254647', 'no'),
(1246, '_transient_wc_admin_report', 'a:2:{s:32:\"575607d164a4aa68ad9c604057aea6df\";a:2:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:4:\"24.3\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:4:\"40.5\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}s:32:\"3c6f28cf0133311d4caba8315ba69339\";a:2:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:3:\"148\";s:15:\"sparkline_value\";s:1:\"2\";s:9:\"post_date\";s:19:\"2018-01-24 18:53:54\";}i:1;O:8:\"stdClass\":3:{s:10:\"product_id\";s:3:\"148\";s:15:\"sparkline_value\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-01-25 01:45:47\";}}}', 'no'),
(1271, '_transient_timeout_settings_errors', '1517239086', 'no'),
(1272, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:23:\"Configurações salvas.\";s:4:\"type\";s:7:\"updated\";}}', 'no'),
(1331, '_transient_timeout_wc_related_148', '1517282476', 'no'),
(1332, '_transient_wc_related_148', 'a:4:{i:0;s:2:\"35\";i:1;s:2:\"79\";i:2;s:3:\"147\";i:3;s:3:\"164\";}', 'no'),
(1375, 'product_cat_children', 'a:2:{i:15;a:4:{i:0;i:16;i:1;i:18;i:2;i:19;i:3;i:20;}i:23;a:4:{i:0;i:24;i:1;i:25;i:2;i:26;i:3;i:27;}}', 'yes'),
(1497, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.2\";s:7:\"version\";s:5:\"4.9.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1517240550;s:15:\"version_checked\";s:5:\"4.9.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1498, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1517240556;s:7:\"checked\";a:6:{s:17:\"accesspress-store\";s:5:\"2.2.4\";s:15:\"eightstore-lite\";s:6:\"1.0.85\";s:15:\"shophistic-lite\";s:6:\"1.0.17\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:15:\"eightstore-lite\";a:4:{s:5:\"theme\";s:15:\"eightstore-lite\";s:11:\"new_version\";s:6:\"1.0.86\";s:3:\"url\";s:45:\"https://wordpress.org/themes/eightstore-lite/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/eightstore-lite.1.0.86.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1514, '_transient_timeout_yith_wcwl_wishlist_count_FY6ZL7E0OACE', '1517808290', 'no'),
(1515, '_transient_yith_wcwl_wishlist_count_FY6ZL7E0OACE', '2', 'no'),
(1516, '_transient_timeout_yith_wcwl_user_default_count_1', '1517808298', 'no'),
(1517, '_transient_yith_wcwl_user_default_count_1', '2', 'no'),
(1527, '_transient_timeout__woocommerce_helper_updates', '1517277766', 'no'),
(1528, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1517234566;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1529, '_transient_timeout_plugin_slugs', '1517326967', 'no'),
(1530, '_transient_plugin_slugs', 'a:9:{i:0;s:19:\"akismet/akismet.php\";i:1;s:63:\"minmax-quantity-for-woocommerce/woocommerce-minmax-quantity.php\";i:2;s:27:\"woocommerce/woocommerce.php\";i:3;s:45:\"woocommerce-correios/woocommerce-correios.php\";i:4;s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";i:5;s:51:\"woocommerce-mercadopago/woocommerce-mercadopago.php\";i:6;s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";i:7;s:45:\"woocommerce-parcelas/woocommerce-parcelas.php\";i:8;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'no'),
(1680, '_transient_timeout_wc_shipping_method_count_0_1516907341', '1519830654', 'no'),
(1681, '_transient_wc_shipping_method_count_0_1516907341', '3', 'no'),
(1712, '_transient_timeout__woocommerce_helper_subscriptions', '1517241384', 'no'),
(1713, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1714, '_site_transient_timeout_theme_roots', '1517242284', 'no'),
(1715, '_site_transient_theme_roots', 'a:6:{s:17:\"accesspress-store\";s:7:\"/themes\";s:15:\"eightstore-lite\";s:7:\"/themes\";s:15:\"shophistic-lite\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1716, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1517251321', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1717, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4421;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2547;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2533;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2391;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1856;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1626;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1624;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1445;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1377;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1376;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1368;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1293;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1282;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1177;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1081;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1056;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1009;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:982;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:855;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:849;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:819;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:791;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:786;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:683;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:683;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:678;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:669;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:669;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:653;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:648;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:638;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:625;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:624;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:602;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:600;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:594;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:593;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:584;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:582;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:575;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:552;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:539;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:534;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:524;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:515;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:508;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:507;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:501;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:487;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:485;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:482;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:475;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:470;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:463;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:460;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:455;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:450;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:449;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:432;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:421;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:418;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:414;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:409;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:409;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:407;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:400;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:391;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:387;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:382;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:361;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:359;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:354;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:351;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:340;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:339;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:337;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:337;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:333;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:332;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:331;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:331;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:328;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:326;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:325;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:316;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:311;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:308;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:302;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:298;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:293;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:288;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:288;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:286;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:286;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:284;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:282;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:280;}}', 'no'),
(1719, 'berocket_admin_notices', 'a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";i:2;s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:129:\"http://localhost/wordpress_ecommerce/wp-content/plugins/minmax-quantity-for-woocommerce/includes/../images/ad_white_on_orange.png\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.423728813559322;}}}}}}', 'yes'),
(1720, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1517240565;s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:63:\"minmax-quantity-for-woocommerce/woocommerce-minmax-quantity.php\";s:7:\"1.0.9.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.2.6\";s:45:\"woocommerce-correios/woocommerce-correios.php\";s:5:\"3.6.0\";s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";s:5:\"3.6.0\";s:51:\"woocommerce-mercadopago/woocommerce-mercadopago.php\";s:5:\"3.0.9\";s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";s:6:\"2.12.5\";s:45:\"woocommerce-parcelas/woocommerce-parcelas.php\";s:7:\"1.2.9.1\";s:34:\"yith-woocommerce-wishlist/init.php\";s:5:\"2.2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:44:\"woocommerce-extra-checkout-fields-for-brazil\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.6.0\";s:7:\"updated\";s:19:\"2017-05-13 20:37:50\";s:7:\"package\";s:111:\"https://downloads.wordpress.org/translation/plugin/woocommerce-extra-checkout-fields-for-brazil/3.6.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:23:\"woocommerce-mercadopago\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.0.8\";s:7:\"updated\";s:19:\"2017-12-20 14:08:54\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/woocommerce-mercadopago/3.0.8/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:21:\"woocommerce-pagseguro\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"2.12.5\";s:7:\"updated\";s:19:\"2017-04-10 04:10:25\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/woocommerce-pagseguro/2.12.5/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:9:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"minmax-quantity-for-woocommerce/woocommerce-minmax-quantity.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/minmax-quantity-for-woocommerce\";s:4:\"slug\";s:31:\"minmax-quantity-for-woocommerce\";s:6:\"plugin\";s:63:\"minmax-quantity-for-woocommerce/woocommerce-minmax-quantity.php\";s:11:\"new_version\";s:7:\"1.0.9.1\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/minmax-quantity-for-woocommerce/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/minmax-quantity-for-woocommerce.1.0.9.1.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:86:\"https://ps.w.org/minmax-quantity-for-woocommerce/assets/banner-772x250.png?rev=1474646\";s:7:\"default\";s:86:\"https://ps.w.org/minmax-quantity-for-woocommerce/assets/banner-772x250.png?rev=1474646\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-correios/woocommerce-correios.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-correios\";s:4:\"slug\";s:20:\"woocommerce-correios\";s:6:\"plugin\";s:45:\"woocommerce-correios/woocommerce-correios.php\";s:11:\"new_version\";s:5:\"3.6.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-correios/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woocommerce-correios.3.6.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-correios/assets/icon-128x128.png?rev=1356952\";s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-correios/assets/icon-256x256.png?rev=1356952\";s:7:\"default\";s:73:\"https://ps.w.org/woocommerce-correios/assets/icon-256x256.png?rev=1356952\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-correios/assets/banner-1544x500.png?rev=1356952\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-correios/assets/banner-772x250.png?rev=1356952\";s:7:\"default\";s:76:\"https://ps.w.org/woocommerce-correios/assets/banner-1544x500.png?rev=1356952\";}s:11:\"banners_rtl\";a:0:{}}s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:58:\"w.org/plugins/woocommerce-extra-checkout-fields-for-brazil\";s:4:\"slug\";s:44:\"woocommerce-extra-checkout-fields-for-brazil\";s:6:\"plugin\";s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";s:11:\"new_version\";s:5:\"3.6.0\";s:3:\"url\";s:75:\"https://wordpress.org/plugins/woocommerce-extra-checkout-fields-for-brazil/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-extra-checkout-fields-for-brazil.3.6.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:97:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/icon-128x128.png?rev=1356956\";s:2:\"2x\";s:97:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/icon-256x256.png?rev=1356956\";s:7:\"default\";s:97:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/icon-256x256.png?rev=1356956\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:100:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/banner-1544x500.png?rev=1356956\";s:2:\"1x\";s:99:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/banner-772x250.png?rev=1356956\";s:7:\"default\";s:100:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/banner-1544x500.png?rev=1356956\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"woocommerce-mercadopago/woocommerce-mercadopago.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/woocommerce-mercadopago\";s:4:\"slug\";s:23:\"woocommerce-mercadopago\";s:6:\"plugin\";s:51:\"woocommerce-mercadopago/woocommerce-mercadopago.php\";s:11:\"new_version\";s:5:\"3.0.9\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/woocommerce-mercadopago/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/woocommerce-mercadopago.3.0.9.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:76:\"https://ps.w.org/woocommerce-mercadopago/assets/icon-128x128.png?rev=1735600\";s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-mercadopago/assets/icon-256x256.png?rev=1735600\";s:7:\"default\";s:76:\"https://ps.w.org/woocommerce-mercadopago/assets/icon-256x256.png?rev=1735600\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-mercadopago/assets/banner-1544x500.png?rev=1765340\";s:2:\"1x\";s:78:\"https://ps.w.org/woocommerce-mercadopago/assets/banner-772x250.png?rev=1765340\";s:7:\"default\";s:79:\"https://ps.w.org/woocommerce-mercadopago/assets/banner-1544x500.png?rev=1765340\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/woocommerce-pagseguro\";s:4:\"slug\";s:21:\"woocommerce-pagseguro\";s:6:\"plugin\";s:47:\"woocommerce-pagseguro/woocommerce-pagseguro.php\";s:11:\"new_version\";s:6:\"2.12.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/woocommerce-pagseguro/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/woocommerce-pagseguro.2.12.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:74:\"https://ps.w.org/woocommerce-pagseguro/assets/icon-128x128.png?rev=1356960\";s:2:\"2x\";s:74:\"https://ps.w.org/woocommerce-pagseguro/assets/icon-256x256.png?rev=1356960\";s:7:\"default\";s:74:\"https://ps.w.org/woocommerce-pagseguro/assets/icon-256x256.png?rev=1356960\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/woocommerce-pagseguro/assets/banner-1544x500.png?rev=1356960\";s:2:\"1x\";s:76:\"https://ps.w.org/woocommerce-pagseguro/assets/banner-772x250.png?rev=1356960\";s:7:\"default\";s:77:\"https://ps.w.org/woocommerce-pagseguro/assets/banner-1544x500.png?rev=1356960\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-parcelas/woocommerce-parcelas.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-parcelas\";s:4:\"slug\";s:20:\"woocommerce-parcelas\";s:6:\"plugin\";s:45:\"woocommerce-parcelas/woocommerce-parcelas.php\";s:11:\"new_version\";s:7:\"1.2.9.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-parcelas/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/woocommerce-parcelas.1.2.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-parcelas/assets/icon-128x128.png?rev=1174655\";s:7:\"default\";s:73:\"https://ps.w.org/woocommerce-parcelas/assets/icon-128x128.png?rev=1174655\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-parcelas/assets/banner-772x250.jpg?rev=1153048\";s:7:\"default\";s:75:\"https://ps.w.org/woocommerce-parcelas/assets/banner-772x250.jpg?rev=1153048\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";s:0:\"\";s:76:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-64x64.jpg?rev=1461336\";s:7:\"default\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";s:7:\"default\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1721, 'berocket_current_displayed_notice', '', 'yes'),
(1722, 'berocket_last_close_notices_time', '1517240644', 'yes'),
(1723, '_transient_is_multi_author', '0', 'yes'),
(1725, '_transient_timeout_wc_term_counts', '1519832701', 'no'),
(1726, '_transient_wc_term_counts', 'a:13:{i:22;s:1:\"5\";i:28;s:1:\"1\";i:15;s:1:\"5\";i:16;s:1:\"3\";i:23;s:1:\"2\";i:18;s:1:\"2\";i:21;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:24;s:0:\"\";i:25;s:0:\"\";i:26;s:0:\"\";i:27;s:0:\"\";}', 'no'),
(1727, '_transient_wc_related_164', 'a:4:{i:0;s:2:\"35\";i:1;s:2:\"79\";i:2;s:3:\"147\";i:3;s:3:\"148\";}', 'no'),
(1728, '_transient_timeout_wc_product_children_164', '1519832701', 'no'),
(1729, '_transient_wc_product_children_164', 'a:2:{s:3:\"all\";a:3:{i:0;i:293;i:1;i:292;i:2;i:294;}s:7:\"visible\";a:3:{i:0;i:293;i:1;i:292;i:2;i:294;}}', 'no'),
(1730, '_transient_timeout_wc_var_prices_164', '1519832712', 'no'),
(1731, '_transient_wc_var_prices_164', '{\"version\":\"1517240699\",\"06277b05744691151edfde48e66f23fe\":{\"price\":{\"292\":\"13.50\"},\"regular_price\":{\"292\":\"13.50\"},\"sale_price\":{\"292\":\"13.50\"}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 4, '_wp_trash_meta_status', 'publish'),
(2, 4, '_wp_trash_meta_time', '1516729896'),
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1516729910'),
(5, 6, '_wp_trash_meta_status', 'publish'),
(6, 6, '_wp_trash_meta_time', '1516729925'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1516808984:1'),
(9, 7, '_wp_page_template', 'template-home.php'),
(10, 7, 'accesspress_store_sidebar_layout', 'left-sidebar'),
(11, 9, '_wp_trash_meta_status', 'publish'),
(12, 9, '_wp_trash_meta_time', '1516730149'),
(13, 11, '_edit_lock', '1516730485:1'),
(14, 11, '_wp_trash_meta_status', 'publish'),
(15, 11, '_wp_trash_meta_time', '1516730487'),
(16, 1, '_edit_lock', '1517158182:1'),
(17, 12, '_edit_lock', '1516730768:1'),
(18, 12, '_wp_trash_meta_status', 'publish'),
(19, 12, '_wp_trash_meta_time', '1516730770'),
(22, 1, '_edit_last', '1'),
(28, 1, '_wp_old_slug', 'ola-mundo'),
(29, 17, '_edit_last', '1'),
(30, 17, '_edit_lock', '1517158494:1'),
(38, 21, '_wp_trash_meta_status', 'publish'),
(39, 21, '_wp_trash_meta_time', '1516731449'),
(44, 25, '_wp_trash_meta_status', 'publish'),
(45, 25, '_wp_trash_meta_time', '1516731785'),
(46, 26, '_wp_trash_meta_status', 'publish'),
(47, 26, '_wp_trash_meta_time', '1516731828'),
(48, 27, '_wp_trash_meta_status', 'publish'),
(49, 27, '_wp_trash_meta_time', '1516731869'),
(50, 28, '_wp_trash_meta_status', 'publish'),
(51, 28, '_wp_trash_meta_time', '1516731896'),
(52, 29, '_edit_lock', '1516732270:1'),
(53, 29, '_wp_trash_meta_status', 'publish'),
(54, 29, '_wp_trash_meta_time', '1516732271'),
(55, 30, '_menu_item_type', 'post_type'),
(56, 30, '_menu_item_menu_item_parent', '0'),
(57, 30, '_menu_item_object_id', '7'),
(58, 30, '_menu_item_object', 'page'),
(59, 30, '_menu_item_target', ''),
(60, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 30, '_menu_item_xfn', ''),
(62, 30, '_menu_item_url', ''),
(63, 30, '_menu_item_orphaned', '1516732363'),
(64, 31, '_menu_item_type', 'post_type'),
(65, 31, '_menu_item_menu_item_parent', '0'),
(66, 31, '_menu_item_object_id', '2'),
(67, 31, '_menu_item_object', 'page'),
(68, 31, '_menu_item_target', ''),
(69, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 31, '_menu_item_xfn', ''),
(71, 31, '_menu_item_url', ''),
(72, 31, '_menu_item_orphaned', '1516732364'),
(73, 32, '_menu_item_type', 'post_type'),
(74, 32, '_menu_item_menu_item_parent', '0'),
(75, 32, '_menu_item_object_id', '7'),
(76, 32, '_menu_item_object', 'page'),
(77, 32, '_menu_item_target', ''),
(78, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 32, '_menu_item_xfn', ''),
(80, 32, '_menu_item_url', ''),
(81, 32, '_menu_item_orphaned', '1516732365'),
(82, 33, '_menu_item_type', 'post_type'),
(83, 33, '_menu_item_menu_item_parent', '0'),
(84, 33, '_menu_item_object_id', '7'),
(85, 33, '_menu_item_object', 'page'),
(86, 33, '_menu_item_target', ''),
(87, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 33, '_menu_item_xfn', ''),
(89, 33, '_menu_item_url', ''),
(90, 33, '_menu_item_orphaned', '1516732427'),
(91, 34, '_menu_item_type', 'post_type'),
(92, 34, '_menu_item_menu_item_parent', '0'),
(93, 34, '_menu_item_object_id', '7'),
(94, 34, '_menu_item_object', 'page'),
(95, 34, '_menu_item_target', ''),
(96, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 34, '_menu_item_xfn', ''),
(98, 34, '_menu_item_url', ''),
(99, 34, '_menu_item_orphaned', '1516732432'),
(100, 35, '_wc_review_count', '0'),
(101, 35, '_wc_rating_count', 'a:0:{}'),
(102, 35, '_wc_average_rating', '0'),
(103, 35, '_edit_last', '1'),
(104, 35, '_edit_lock', '1517190918:1'),
(105, 36, '_wp_attached_file', '2018/01/camiseta-vulkanic.jpg'),
(106, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2018/01/camiseta-vulkanic.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:29:\"camiseta-vulkanic-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 35, '_thumbnail_id', '36'),
(108, 35, '_sku', ''),
(109, 35, '_regular_price', '25.00'),
(110, 35, '_sale_price', '13.50'),
(111, 35, '_sale_price_dates_from', ''),
(112, 35, '_sale_price_dates_to', ''),
(113, 35, 'total_sales', '1'),
(114, 35, '_tax_status', 'taxable'),
(115, 35, '_tax_class', ''),
(116, 35, '_manage_stock', 'no'),
(117, 35, '_backorders', 'no'),
(118, 35, '_sold_individually', 'no'),
(119, 35, '_weight', ''),
(120, 35, '_length', ''),
(121, 35, '_width', ''),
(122, 35, '_height', ''),
(123, 35, '_upsell_ids', 'a:0:{}'),
(124, 35, '_crosssell_ids', 'a:0:{}'),
(125, 35, '_purchase_note', ''),
(126, 35, '_default_attributes', 'a:0:{}'),
(127, 35, '_virtual', 'no'),
(128, 35, '_downloadable', 'no'),
(129, 35, '_product_image_gallery', '37,38,39'),
(130, 35, '_download_limit', '-1'),
(131, 35, '_download_expiry', '-1'),
(132, 35, '_stock', NULL),
(133, 35, '_stock_status', 'instock'),
(134, 35, '_product_version', '3.2.6'),
(135, 35, '_price', '13.50'),
(136, 37, '_wp_attached_file', '2018/01/camiseta-vulkanic-2.jpg'),
(137, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/01/camiseta-vulkanic-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-2-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 38, '_wp_attached_file', '2018/01/camiseta-vulkanic-3.jpg'),
(139, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/01/camiseta-vulkanic-3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-3-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 39, '_wp_attached_file', '2018/01/camiseta-vulkanic-4.jpg'),
(141, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:734;s:6:\"height\";i:830;s:4:\"file\";s:31:\"2018/01/camiseta-vulkanic-4.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-265x300.jpg\";s:5:\"width\";i:265;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-734x300.jpg\";s:5:\"width\";i:734;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:31:\"camiseta-vulkanic-4-734x570.jpg\";s:5:\"width\";i:734;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 40, '_edit_lock', '1516733885:1'),
(143, 40, '_wp_trash_meta_status', 'publish'),
(144, 40, '_wp_trash_meta_time', '1516733886'),
(147, 41, '_customize_restore_dismissed', '1'),
(148, 42, '_edit_lock', '1516735932:1'),
(174, 42, '_customize_restore_dismissed', '1'),
(175, 49, '_wp_trash_meta_status', 'publish'),
(176, 49, '_wp_trash_meta_time', '1516736082'),
(182, 51, '_edit_lock', '1516736209:1'),
(183, 51, '_wp_trash_meta_status', 'auto-draft'),
(184, 51, '_wp_trash_meta_time', '1516736210'),
(185, 52, '_wp_trash_meta_status', 'publish'),
(186, 52, '_wp_trash_meta_time', '1516736264'),
(187, 53, '_wp_trash_meta_status', 'publish'),
(188, 53, '_wp_trash_meta_time', '1516736384'),
(196, 56, '_edit_lock', '1516736999:1'),
(202, 56, '_wp_trash_meta_status', 'publish'),
(203, 56, '_wp_trash_meta_time', '1516737000'),
(211, 60, '_edit_lock', '1516737593:1'),
(212, 60, '_wp_trash_meta_status', 'publish'),
(213, 60, '_wp_trash_meta_time', '1516737594'),
(221, 63, '_wp_trash_meta_status', 'publish'),
(222, 63, '_wp_trash_meta_time', '1516739046'),
(235, 67, '_edit_lock', '1516740102:1'),
(239, 67, '_customize_restore_dismissed', '1'),
(258, 71, '_menu_item_type', 'post_type'),
(259, 71, '_menu_item_menu_item_parent', '0'),
(260, 71, '_menu_item_object_id', '7'),
(261, 71, '_menu_item_object', 'page'),
(262, 71, '_menu_item_target', ''),
(263, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 71, '_menu_item_xfn', ''),
(265, 71, '_menu_item_url', ''),
(266, 71, '_menu_item_orphaned', '1516740438'),
(267, 72, '_menu_item_type', 'custom'),
(268, 72, '_menu_item_menu_item_parent', '0'),
(269, 72, '_menu_item_object_id', '72'),
(270, 72, '_menu_item_object', 'custom'),
(271, 72, '_menu_item_target', ''),
(272, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(273, 72, '_menu_item_xfn', ''),
(274, 72, '_menu_item_url', 'http://www.google.com'),
(276, 73, '_menu_item_type', 'custom'),
(277, 73, '_menu_item_menu_item_parent', '0'),
(278, 73, '_menu_item_object_id', '73'),
(279, 73, '_menu_item_object', 'custom'),
(280, 73, '_menu_item_target', ''),
(281, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 73, '_menu_item_xfn', ''),
(283, 73, '_menu_item_url', 'http://www.google.com'),
(284, 53, '_edit_lock', '1516749039:1'),
(294, 77, '_edit_lock', '1516749073:1'),
(295, 77, '_wp_trash_meta_status', 'publish'),
(296, 77, '_wp_trash_meta_time', '1516749074'),
(297, 78, '_edit_lock', '1516749855:1'),
(298, 78, '_wp_trash_meta_status', 'publish'),
(299, 78, '_wp_trash_meta_time', '1516749856'),
(300, 79, '_wc_review_count', '0'),
(301, 79, '_wc_rating_count', 'a:0:{}'),
(302, 79, '_wc_average_rating', '0'),
(303, 79, '_edit_last', '1'),
(304, 79, '_edit_lock', '1517181654:1'),
(305, 80, '_wp_attached_file', '2018/01/Bermuda-Masculina-Color-1.jpg'),
(306, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:37:\"2018/01/Bermuda-Masculina-Color-1.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-1-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-1-1200x570.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 81, '_wp_attached_file', '2018/01/Bermuda-Masculina-Color-2.jpg'),
(308, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:37:\"2018/01/Bermuda-Masculina-Color-2.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-2-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-2-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-2-1200x570.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 82, '_wp_attached_file', '2018/01/Bermuda-Masculina-Color-3.jpg'),
(310, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:1080;s:4:\"file\";s:37:\"2018/01/Bermuda-Masculina-Color-3.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-3-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-3-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-3-810x570.jpg\";s:5:\"width\";i:810;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 83, '_wp_attached_file', '2018/01/Bermuda-Masculina-Color-4.jpg'),
(312, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:37:\"2018/01/Bermuda-Masculina-Color-4.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-4-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:37:\"Bermuda-Masculina-Color-4-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:38:\"Bermuda-Masculina-Color-4-1200x570.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 79, '_thumbnail_id', '80'),
(314, 79, '_sku', ''),
(315, 79, '_regular_price', '75'),
(316, 79, '_sale_price', '60'),
(317, 79, '_sale_price_dates_from', ''),
(318, 79, '_sale_price_dates_to', ''),
(319, 79, 'total_sales', '0'),
(320, 79, '_tax_status', 'taxable'),
(321, 79, '_tax_class', ''),
(322, 79, '_price', '60'),
(323, 79, '_manage_stock', 'no'),
(324, 79, '_backorders', 'no'),
(325, 79, '_sold_individually', 'no'),
(326, 79, '_weight', ''),
(327, 79, '_length', ''),
(328, 79, '_width', ''),
(329, 79, '_height', ''),
(330, 79, '_upsell_ids', 'a:0:{}'),
(331, 79, '_crosssell_ids', 'a:0:{}'),
(332, 79, '_purchase_note', ''),
(333, 79, '_default_attributes', 'a:0:{}'),
(334, 79, '_virtual', 'no'),
(335, 79, '_downloadable', 'no'),
(336, 79, '_product_image_gallery', '83,82,81'),
(337, 79, '_download_limit', '-1'),
(338, 79, '_download_expiry', '-1'),
(339, 79, '_stock', NULL),
(340, 79, '_stock_status', 'outofstock'),
(341, 79, '_product_version', '3.2.6'),
(342, 85, '_edit_last', '1'),
(343, 85, '_edit_lock', '1516851448:1'),
(344, 85, '_wp_page_template', 'default'),
(345, 85, 'accesspress_store_sidebar_layout', 'no-sidebar'),
(400, 2, '_edit_lock', '1516934520:1'),
(401, 2, '_edit_last', '1'),
(402, 2, '_wp_page_template', 'default'),
(403, 2, 'accesspress_store_sidebar_layout', 'no-sidebar'),
(404, 102, '_edit_last', '1'),
(405, 102, 'discount_type', 'percent'),
(406, 102, 'coupon_amount', '10'),
(407, 102, 'individual_use', 'no'),
(408, 102, 'product_ids', ''),
(409, 102, 'exclude_product_ids', ''),
(410, 102, 'usage_limit', '0'),
(411, 102, 'usage_limit_per_user', '0'),
(412, 102, 'limit_usage_to_x_items', '0'),
(413, 102, 'usage_count', '1'),
(414, 102, 'date_expires', '1516845600'),
(415, 102, 'expiry_date', '2018-01-25'),
(416, 102, 'free_shipping', 'yes'),
(417, 102, 'product_categories', 'a:0:{}'),
(418, 102, 'exclude_product_categories', 'a:0:{}'),
(419, 102, 'exclude_sale_items', 'no'),
(420, 102, 'minimum_amount', ''),
(421, 102, 'maximum_amount', ''),
(422, 102, 'customer_email', 'a:0:{}'),
(423, 102, '_edit_lock', '1516763714:1'),
(424, 103, '_edit_last', '1'),
(425, 103, '_edit_lock', '1516765259:1'),
(426, 103, '_wp_page_template', 'default'),
(427, 103, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(428, 105, '_edit_lock', '1516764872:1'),
(429, 105, '_wp_trash_meta_status', 'publish'),
(430, 105, '_wp_trash_meta_time', '1516764872'),
(475, 107, '_edit_lock', '1516847613:1'),
(482, 107, '_edit_last', '1'),
(483, 107, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(484, 110, '_menu_item_type', 'custom'),
(485, 110, '_menu_item_menu_item_parent', '202'),
(486, 110, '_menu_item_object_id', '110'),
(487, 110, '_menu_item_object', 'custom'),
(488, 110, '_menu_item_target', ''),
(489, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(490, 110, '_menu_item_xfn', ''),
(491, 110, '_menu_item_url', 'http://www.google.com'),
(511, 113, '_menu_item_type', 'custom'),
(512, 113, '_menu_item_menu_item_parent', '202'),
(513, 113, '_menu_item_object_id', '113'),
(514, 113, '_menu_item_object', 'custom'),
(515, 113, '_menu_item_target', ''),
(516, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(517, 113, '_menu_item_xfn', ''),
(518, 113, '_menu_item_url', 'http://localhost/wordpress_ecommerce/categoria-produto/masculino/calca/'),
(520, 114, '_menu_item_type', 'custom'),
(521, 114, '_menu_item_menu_item_parent', '202'),
(522, 114, '_menu_item_object_id', '114'),
(523, 114, '_menu_item_object', 'custom'),
(524, 114, '_menu_item_target', ''),
(525, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(526, 114, '_menu_item_xfn', ''),
(527, 114, '_menu_item_url', 'http://localhost/wordpress_ecommerce/categoria-produto/masculino/camiseta/'),
(529, 115, '_menu_item_type', 'custom'),
(530, 115, '_menu_item_menu_item_parent', '110'),
(531, 115, '_menu_item_object_id', '115'),
(532, 115, '_menu_item_object', 'custom'),
(533, 115, '_menu_item_target', ''),
(534, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(535, 115, '_menu_item_xfn', ''),
(536, 115, '_menu_item_url', 'http://#'),
(538, 116, '_menu_item_type', 'custom'),
(539, 116, '_menu_item_menu_item_parent', '110'),
(540, 116, '_menu_item_object_id', '116'),
(541, 116, '_menu_item_object', 'custom'),
(542, 116, '_menu_item_target', ''),
(543, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(544, 116, '_menu_item_xfn', ''),
(545, 116, '_menu_item_url', 'http://#'),
(547, 117, '_menu_item_type', 'custom'),
(548, 117, '_menu_item_menu_item_parent', '202'),
(549, 117, '_menu_item_object_id', '117'),
(550, 117, '_menu_item_object', 'custom'),
(551, 117, '_menu_item_target', ''),
(552, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(553, 117, '_menu_item_xfn', ''),
(554, 117, '_menu_item_url', 'http://localhost/wordpress_ecommerce/categoria-produto/masculino/polo/'),
(556, 118, '_menu_item_type', 'custom'),
(557, 118, '_menu_item_menu_item_parent', '72'),
(558, 118, '_menu_item_object_id', '118'),
(559, 118, '_menu_item_object', 'custom'),
(560, 118, '_menu_item_target', ''),
(561, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(562, 118, '_menu_item_xfn', ''),
(563, 118, '_menu_item_url', 'http://#'),
(565, 119, '_menu_item_type', 'custom'),
(566, 119, '_menu_item_menu_item_parent', '72'),
(567, 119, '_menu_item_object_id', '119'),
(568, 119, '_menu_item_object', 'custom'),
(569, 119, '_menu_item_target', ''),
(570, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(571, 119, '_menu_item_xfn', ''),
(572, 119, '_menu_item_url', 'http://#'),
(574, 120, '_menu_item_type', 'custom'),
(575, 120, '_menu_item_menu_item_parent', '72'),
(576, 120, '_menu_item_object_id', '120'),
(577, 120, '_menu_item_object', 'custom'),
(578, 120, '_menu_item_target', ''),
(579, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(580, 120, '_menu_item_xfn', ''),
(581, 120, '_menu_item_url', 'http://#'),
(583, 121, '_menu_item_type', 'custom'),
(584, 121, '_menu_item_menu_item_parent', '72'),
(585, 121, '_menu_item_object_id', '121'),
(586, 121, '_menu_item_object', 'custom'),
(587, 121, '_menu_item_target', ''),
(588, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(589, 121, '_menu_item_xfn', ''),
(590, 121, '_menu_item_url', 'http://#'),
(592, 122, '_menu_item_type', 'custom'),
(593, 122, '_menu_item_menu_item_parent', '121'),
(594, 122, '_menu_item_object_id', '122'),
(595, 122, '_menu_item_object', 'custom'),
(596, 122, '_menu_item_target', ''),
(597, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(598, 122, '_menu_item_xfn', ''),
(599, 122, '_menu_item_url', 'http://#'),
(601, 123, '_menu_item_type', 'custom'),
(602, 123, '_menu_item_menu_item_parent', '121'),
(603, 123, '_menu_item_object_id', '123'),
(604, 123, '_menu_item_object', 'custom'),
(605, 123, '_menu_item_target', ''),
(606, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(607, 123, '_menu_item_xfn', ''),
(608, 123, '_menu_item_url', 'http://#'),
(610, 124, '_menu_item_type', 'custom'),
(611, 124, '_menu_item_menu_item_parent', '110'),
(612, 124, '_menu_item_object_id', '124'),
(613, 124, '_menu_item_object', 'custom'),
(614, 124, '_menu_item_target', ''),
(615, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(616, 124, '_menu_item_xfn', ''),
(617, 124, '_menu_item_url', 'http://#'),
(619, 125, '_menu_item_type', 'custom'),
(620, 125, '_menu_item_menu_item_parent', '121'),
(621, 125, '_menu_item_object_id', '125'),
(622, 125, '_menu_item_object', 'custom'),
(623, 125, '_menu_item_target', ''),
(624, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(625, 125, '_menu_item_xfn', ''),
(626, 125, '_menu_item_url', 'http://#'),
(628, 126, '_menu_item_type', 'custom'),
(629, 126, '_menu_item_menu_item_parent', '72'),
(630, 126, '_menu_item_object_id', '126'),
(631, 126, '_menu_item_object', 'custom'),
(632, 126, '_menu_item_target', ''),
(633, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(634, 126, '_menu_item_xfn', ''),
(635, 126, '_menu_item_url', 'http://#'),
(637, 127, '_edit_lock', '1516770561:1'),
(638, 127, '_wp_trash_meta_status', 'publish'),
(639, 127, '_wp_trash_meta_time', '1516770562'),
(640, 128, '_edit_lock', '1516770657:1'),
(641, 128, '_wp_trash_meta_status', 'publish'),
(642, 128, '_wp_trash_meta_time', '1516770658'),
(643, 129, '_edit_lock', '1516804779:1'),
(644, 129, '_wp_trash_meta_status', 'publish'),
(645, 129, '_wp_trash_meta_time', '1516804323'),
(646, 130, '_wp_trash_meta_status', 'publish'),
(647, 130, '_wp_trash_meta_time', '1516804398'),
(648, 130, '_edit_lock', '1516804402:1'),
(649, 131, '_wp_trash_meta_status', 'publish'),
(650, 131, '_wp_trash_meta_time', '1516804475'),
(651, 131, '_edit_lock', '1516804480:1'),
(652, 132, '_edit_lock', '1516804914:1'),
(653, 132, '_wp_trash_meta_status', 'publish'),
(654, 132, '_wp_trash_meta_time', '1516804915'),
(655, 133, '_edit_lock', '1516805767:1'),
(656, 134, '_menu_item_type', 'custom'),
(657, 134, '_menu_item_menu_item_parent', '0'),
(658, 134, '_menu_item_object_id', '134'),
(659, 134, '_menu_item_object', 'custom'),
(660, 134, '_menu_item_target', ''),
(661, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(662, 134, '_menu_item_xfn', ''),
(663, 134, '_menu_item_url', 'http://#'),
(664, 133, '_wp_trash_meta_status', 'publish'),
(665, 133, '_wp_trash_meta_time', '1516805771'),
(666, 135, '_edit_lock', '1516806343:1'),
(667, 135, '_customize_restore_dismissed', '1'),
(668, 135, '_wp_trash_meta_status', 'publish'),
(669, 135, '_wp_trash_meta_time', '1516806344'),
(670, 136, '_wp_trash_meta_status', 'publish'),
(671, 136, '_wp_trash_meta_time', '1516806511'),
(672, 137, '_edit_lock', '1516806652:1'),
(673, 137, '_edit_lock', '1516806652:1'),
(674, 137, '_wp_trash_meta_status', 'publish'),
(675, 137, '_wp_trash_meta_time', '1516806649'),
(676, 138, '_edit_lock', '1516807018:1'),
(677, 138, '_customize_restore_dismissed', '1'),
(678, 139, '_edit_lock', '1516807962:1'),
(679, 139, '_wp_trash_meta_status', 'publish'),
(680, 139, '_wp_trash_meta_time', '1516807963'),
(681, 140, '_edit_lock', '1516808132:1'),
(682, 140, '_wp_trash_meta_status', 'publish'),
(683, 140, '_wp_trash_meta_time', '1516808134'),
(688, 143, '_edit_lock', '1516808947:1'),
(689, 143, '_wp_trash_meta_status', 'publish'),
(690, 143, '_wp_trash_meta_time', '1516808948'),
(691, 147, '_sku', ''),
(692, 147, '_regular_price', '75'),
(693, 147, '_sale_price', '60'),
(694, 147, '_sale_price_dates_from', ''),
(695, 147, '_sale_price_dates_to', ''),
(696, 147, 'total_sales', '0'),
(697, 147, '_tax_status', 'taxable'),
(698, 147, '_tax_class', ''),
(699, 147, '_manage_stock', 'no'),
(700, 147, '_backorders', 'no'),
(701, 147, '_sold_individually', 'no'),
(702, 147, '_weight', ''),
(703, 147, '_length', ''),
(704, 147, '_width', ''),
(705, 147, '_height', ''),
(706, 147, '_upsell_ids', 'a:0:{}'),
(707, 147, '_crosssell_ids', 'a:0:{}'),
(708, 147, '_purchase_note', ''),
(709, 147, '_default_attributes', 'a:0:{}'),
(710, 147, '_virtual', 'no'),
(711, 147, '_downloadable', 'no'),
(712, 147, '_product_image_gallery', '83,82,81'),
(713, 147, '_download_limit', '-1'),
(714, 147, '_download_expiry', '-1'),
(715, 147, '_thumbnail_id', '81'),
(716, 147, '_stock', NULL),
(717, 147, '_stock_status', 'outofstock'),
(718, 147, '_wc_average_rating', '0'),
(719, 147, '_wc_rating_count', 'a:0:{}'),
(720, 147, '_wc_review_count', '0'),
(721, 147, '_downloadable_files', 'a:0:{}'),
(722, 147, '_product_attributes', 'a:0:{}'),
(723, 147, '_product_version', '3.2.6'),
(724, 147, '_price', '60'),
(725, 147, '_edit_lock', '1517181369:1'),
(726, 147, '_edit_last', '1'),
(727, 147, '_mp_recurring_is_recurrent', ''),
(728, 147, '_mp_recurring_frequency', '1'),
(729, 147, '_mp_recurring_frequency_type', 'days'),
(730, 147, '_mp_recurring_end_date', ''),
(731, 35, '_mp_recurring_is_recurrent', ''),
(732, 35, '_mp_recurring_frequency', '1'),
(733, 35, '_mp_recurring_frequency_type', 'days'),
(734, 35, '_mp_recurring_end_date', ''),
(735, 148, '_sku', ''),
(736, 148, '_regular_price', '25.00'),
(737, 148, '_sale_price', '13.50'),
(738, 148, '_sale_price_dates_from', ''),
(739, 148, '_sale_price_dates_to', ''),
(740, 148, 'total_sales', '3'),
(741, 148, '_tax_status', 'taxable'),
(742, 148, '_tax_class', ''),
(743, 148, '_manage_stock', 'no'),
(744, 148, '_backorders', 'no'),
(745, 148, '_sold_individually', 'no'),
(746, 148, '_weight', ''),
(747, 148, '_length', ''),
(748, 148, '_width', ''),
(749, 148, '_height', ''),
(750, 148, '_upsell_ids', 'a:0:{}'),
(751, 148, '_crosssell_ids', 'a:0:{}'),
(752, 148, '_purchase_note', ''),
(753, 148, '_default_attributes', 'a:0:{}'),
(754, 148, '_virtual', 'no'),
(755, 148, '_downloadable', 'no'),
(756, 148, '_product_image_gallery', '37,38,39'),
(757, 148, '_download_limit', '-1'),
(758, 148, '_download_expiry', '-1'),
(759, 148, '_thumbnail_id', '37'),
(760, 148, '_stock', NULL),
(761, 148, '_stock_status', 'instock'),
(762, 148, '_wc_average_rating', '0'),
(763, 148, '_wc_rating_count', 'a:0:{}'),
(764, 148, '_wc_review_count', '0'),
(765, 148, '_downloadable_files', 'a:0:{}'),
(766, 148, '_product_attributes', 'a:0:{}'),
(767, 148, '_product_version', '3.2.6'),
(768, 148, '_price', '13.50'),
(769, 148, '_mp_recurring_is_recurrent', ''),
(770, 148, '_mp_recurring_frequency', '1'),
(771, 148, '_mp_recurring_frequency_type', 'days'),
(772, 148, '_mp_recurring_end_date', ''),
(773, 148, '_edit_lock', '1517181343:1'),
(774, 148, '_edit_last', '1'),
(775, 150, '_edit_lock', '1516810816:1'),
(778, 150, '_wp_trash_meta_status', 'publish'),
(779, 150, '_wp_trash_meta_time', '1516810812'),
(780, 152, '_wp_trash_meta_status', 'publish'),
(781, 152, '_wp_trash_meta_time', '1516810869'),
(782, 153, '_wp_trash_meta_status', 'publish'),
(783, 153, '_wp_trash_meta_time', '1516810940'),
(784, 154, '_edit_lock', '1516811244:1'),
(785, 154, '_wp_trash_meta_status', 'publish'),
(786, 154, '_wp_trash_meta_time', '1516811237'),
(787, 155, '_edit_lock', '1516811405:1'),
(788, 155, '_wp_trash_meta_status', 'publish'),
(789, 155, '_wp_trash_meta_time', '1516811406'),
(792, 157, '_edit_lock', '1516811771:1'),
(793, 157, '_wp_trash_meta_status', 'publish'),
(794, 157, '_wp_trash_meta_time', '1516811772'),
(795, 158, '_wp_trash_meta_status', 'publish'),
(796, 158, '_wp_trash_meta_time', '1516812038'),
(797, 159, '_edit_lock', '1516812246:1'),
(798, 159, '_wp_trash_meta_status', 'publish'),
(799, 159, '_wp_trash_meta_time', '1516812248'),
(802, 161, '_edit_lock', '1516812861:1'),
(803, 161, '_wp_trash_meta_status', 'publish'),
(804, 161, '_wp_trash_meta_time', '1516812862'),
(805, 162, '_edit_lock', '1516813220:1'),
(806, 162, '_wp_trash_meta_status', 'publish'),
(807, 162, '_wp_trash_meta_time', '1516813222'),
(808, 163, '_wp_trash_meta_status', 'publish'),
(809, 163, '_wp_trash_meta_time', '1516813458'),
(810, 164, '_sku', '1'),
(811, 164, '_regular_price', '13.50'),
(812, 164, '_sale_price', ''),
(813, 164, '_sale_price_dates_from', ''),
(814, 164, '_sale_price_dates_to', ''),
(815, 164, 'total_sales', '1'),
(816, 164, '_tax_status', 'taxable'),
(817, 164, '_tax_class', ''),
(818, 164, '_manage_stock', 'no'),
(819, 164, '_backorders', 'no'),
(820, 164, '_sold_individually', 'no'),
(821, 164, '_weight', ''),
(822, 164, '_length', ''),
(823, 164, '_width', ''),
(824, 164, '_height', ''),
(825, 164, '_upsell_ids', 'a:0:{}'),
(826, 164, '_crosssell_ids', 'a:0:{}'),
(827, 164, '_purchase_note', ''),
(828, 164, '_default_attributes', 'a:0:{}'),
(829, 164, '_virtual', 'no'),
(830, 164, '_downloadable', 'no'),
(831, 164, '_product_image_gallery', '37,38,39'),
(832, 164, '_download_limit', '-1'),
(833, 164, '_download_expiry', '-1'),
(834, 164, '_thumbnail_id', '37'),
(835, 164, '_stock', NULL),
(836, 164, '_stock_status', 'instock'),
(837, 164, '_wc_average_rating', '0'),
(838, 164, '_wc_rating_count', 'a:0:{}'),
(839, 164, '_wc_review_count', '0'),
(840, 164, '_downloadable_files', 'a:0:{}'),
(841, 164, '_product_attributes', 'a:2:{s:3:\"cor\";a:6:{s:4:\"name\";s:3:\"Cor\";s:5:\"value\";s:23:\"Azul | Vermelho | Verde\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}s:7:\"tamanho\";a:6:{s:4:\"name\";s:7:\"Tamanho\";s:5:\"value\";s:27:\"38 | 40 | 42 | 44 | 46 | 48\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(842, 164, '_product_version', '3.2.6'),
(844, 164, '_mp_recurring_is_recurrent', ''),
(845, 164, '_mp_recurring_frequency', '2'),
(846, 164, '_mp_recurring_frequency_type', 'days'),
(847, 164, '_mp_recurring_end_date', ''),
(848, 164, '_edit_lock', '1517240703:1'),
(849, 164, '_edit_last', '1'),
(850, 165, '_wp_trash_meta_status', 'publish'),
(851, 165, '_wp_trash_meta_time', '1516814087'),
(852, 166, '_wp_trash_meta_status', 'publish'),
(853, 166, '_wp_trash_meta_time', '1516814097'),
(854, 167, '_wp_trash_meta_status', 'publish'),
(855, 167, '_wp_trash_meta_time', '1516814114'),
(856, 167, '_edit_lock', '1516814253:1'),
(857, 168, '_edit_lock', '1516814479:1'),
(858, 168, '_wp_trash_meta_status', 'publish'),
(859, 168, '_wp_trash_meta_time', '1516814482'),
(860, 169, '_wp_trash_meta_status', 'publish'),
(861, 169, '_wp_trash_meta_time', '1516814530'),
(862, 170, '_edit_lock', '1516814616:1'),
(863, 170, '_wp_trash_meta_status', 'publish'),
(864, 170, '_wp_trash_meta_time', '1516814617'),
(865, 171, '_wp_trash_meta_status', 'publish'),
(866, 171, '_wp_trash_meta_time', '1516819683'),
(867, 172, '_wp_trash_meta_status', 'publish'),
(868, 172, '_wp_trash_meta_time', '1516819739'),
(869, 173, '_wp_trash_meta_status', 'publish'),
(870, 173, '_wp_trash_meta_time', '1516819802'),
(871, 174, '_wp_trash_meta_status', 'publish'),
(872, 174, '_wp_trash_meta_time', '1516819826'),
(874, 175, '_edit_lock', '1516820573:1'),
(880, 175, '_customize_restore_dismissed', '1'),
(881, 178, '_wp_trash_meta_status', 'publish'),
(882, 178, '_wp_trash_meta_time', '1516820361'),
(883, 179, '_wp_trash_meta_status', 'publish'),
(884, 179, '_wp_trash_meta_time', '1516820435'),
(885, 179, '_edit_lock', '1516820436:1'),
(886, 175, '_wp_trash_meta_status', 'publish'),
(887, 175, '_wp_trash_meta_time', '1516820571'),
(888, 180, '_wp_trash_meta_status', 'publish'),
(889, 180, '_wp_trash_meta_time', '1516820629'),
(934, 182, '_wp_trash_meta_status', 'publish'),
(935, 182, '_wp_trash_meta_time', '1516821381'),
(936, 183, '_wp_trash_meta_status', 'publish'),
(937, 183, '_wp_trash_meta_time', '1516821449'),
(990, 186, '_order_key', 'wc_order_5a68f262668db'),
(991, 186, '_customer_user', '1'),
(992, 186, '_payment_method', 'pagseguro'),
(993, 186, '_payment_method_title', 'PagSeguro'),
(994, 186, '_transaction_id', ''),
(995, 186, '_customer_ip_address', '::1'),
(996, 186, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:57.0) gecko/20100101 firefox/57.0'),
(997, 186, '_created_via', 'checkout'),
(998, 186, '_date_completed', '1516828888'),
(999, 186, '_completed_date', '2018-01-24 19:21:28'),
(1000, 186, '_date_paid', '1516828884'),
(1001, 186, '_paid_date', '2018-01-24 19:21:24'),
(1002, 186, '_cart_hash', '5df2a5c110b7711c441754d724eced9c'),
(1003, 186, '_billing_first_name', 'Saniel'),
(1004, 186, '_billing_last_name', 'Barros Alves'),
(1005, 186, '_billing_company', ''),
(1006, 186, '_billing_address_1', 'Rua primeiro de maio, centro, 579'),
(1007, 186, '_billing_address_2', ''),
(1008, 186, '_billing_city', 'João Lisboa'),
(1009, 186, '_billing_state', 'MA'),
(1010, 186, '_billing_postcode', '65922-000'),
(1011, 186, '_billing_country', 'BR'),
(1012, 186, '_billing_email', 'sammara_barros@hotmail.com'),
(1013, 186, '_billing_phone', '(99) 99205-5305'),
(1014, 186, '_shipping_first_name', ''),
(1015, 186, '_shipping_last_name', ''),
(1016, 186, '_shipping_company', ''),
(1017, 186, '_shipping_address_1', ''),
(1018, 186, '_shipping_address_2', ''),
(1019, 186, '_shipping_city', ''),
(1020, 186, '_shipping_state', ''),
(1021, 186, '_shipping_postcode', ''),
(1022, 186, '_shipping_country', ''),
(1023, 186, '_order_currency', 'BRL'),
(1024, 186, '_cart_discount', '2.7'),
(1025, 186, '_cart_discount_tax', '0'),
(1026, 186, '_order_shipping', '0.00'),
(1027, 186, '_order_shipping_tax', '0'),
(1028, 186, '_order_tax', '0'),
(1029, 186, '_order_total', '24.30'),
(1030, 186, '_order_version', '3.2.6'),
(1031, 186, '_prices_include_tax', 'no'),
(1032, 186, '_billing_address_index', 'Saniel Barros Alves  Rua primeiro de maio, centro, 579  João Lisboa MA 65922-000 BR sammara_barros@hotmail.com (99) 99205-5305 579 Centro'),
(1033, 186, '_shipping_address_index', '          '),
(1046, 186, '_billing_persontype', '1'),
(1047, 186, '_billing_cpf', '608.226.463-07'),
(1048, 186, '_billing_cnpj', ''),
(1049, 186, '_billing_number', '579'),
(1050, 186, '_billing_neighborhood', 'Centro'),
(1051, 186, '_billing_cellphone', ''),
(1052, 186, 'Payer email', 'sammara_barros@hotmail.com'),
(1053, 186, 'Payer name', 'Saniel Barros Alves'),
(1054, 186, 'Payment type', 'Billet'),
(1055, 186, 'Payment method', 'Billet Santander'),
(1056, 186, 'Installments', '1'),
(1057, 186, 'Payment URL', 'https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=161b1c748a556e66df4e922e852eb4b8caa6b46835d9a94d69f4cda08d2faa469f50dfa9457c3ac2'),
(1058, 186, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:2;s:6:\"method\";s:16:\"Billet Santander\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:148:\"https://pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=161b1c748a556e66df4e922e852eb4b8caa6b46835d9a94d69f4cda08d2faa469f50dfa9457c3ac2\";}'),
(1059, 186, '_recorded_sales', 'yes'),
(1060, 186, '_recorded_coupon_usage_counts', 'yes'),
(1061, 102, '_used_by', '1'),
(1062, 186, '_download_permissions_granted', 'yes'),
(1063, 186, '_edit_lock', '1517018454:1'),
(1076, 164, 'fswp_post_meta', 'a:2:{s:15:\"disable_in_cash\";s:1:\"0\";s:20:\"disable_installments\";s:1:\"0\";}'),
(1077, 188, '_order_key', 'wc_order_5a6952eb137e6'),
(1078, 188, '_customer_user', '1'),
(1079, 188, '_payment_method', 'pagseguro'),
(1080, 188, '_payment_method_title', 'PagSeguro'),
(1081, 188, '_transaction_id', ''),
(1082, 188, '_customer_ip_address', '::1'),
(1083, 188, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:57.0) gecko/20100101 firefox/57.0'),
(1084, 188, '_created_via', 'checkout'),
(1085, 188, '_date_completed', ''),
(1086, 188, '_completed_date', ''),
(1087, 188, '_date_paid', ''),
(1088, 188, '_paid_date', ''),
(1089, 188, '_cart_hash', '93d2e0e653c9101d6d41f604b7dc642c'),
(1090, 188, '_billing_first_name', 'Saniel'),
(1091, 188, '_billing_last_name', 'Barros Alves'),
(1092, 188, '_billing_company', ''),
(1093, 188, '_billing_address_1', 'Rua primeiro de maio, centro, 579'),
(1094, 188, '_billing_address_2', ''),
(1095, 188, '_billing_city', 'João Lisboa'),
(1096, 188, '_billing_state', 'MA'),
(1097, 188, '_billing_postcode', '65922-000'),
(1098, 188, '_billing_country', 'BR'),
(1099, 188, '_billing_email', 'sammara_barros@hotmail.com'),
(1100, 188, '_billing_phone', '(99) 99205-5305'),
(1101, 188, '_shipping_first_name', ''),
(1102, 188, '_shipping_last_name', ''),
(1103, 188, '_shipping_company', ''),
(1104, 188, '_shipping_address_1', ''),
(1105, 188, '_shipping_address_2', ''),
(1106, 188, '_shipping_city', ''),
(1107, 188, '_shipping_state', ''),
(1108, 188, '_shipping_postcode', ''),
(1109, 188, '_shipping_country', ''),
(1110, 188, '_order_currency', 'BRL'),
(1111, 188, '_cart_discount', '0'),
(1112, 188, '_cart_discount_tax', '0'),
(1113, 188, '_order_shipping', '0.00'),
(1114, 188, '_order_shipping_tax', '0'),
(1115, 188, '_order_tax', '0'),
(1116, 188, '_order_total', '40.50'),
(1117, 188, '_order_version', '3.2.6'),
(1118, 188, '_prices_include_tax', 'no'),
(1119, 188, '_billing_address_index', 'Saniel Barros Alves  Rua primeiro de maio, centro, 579  João Lisboa MA 65922-000 BR sammara_barros@hotmail.com (99) 99205-5305 579 Centro'),
(1120, 188, '_shipping_address_index', '          '),
(1145, 188, '_billing_persontype', '1'),
(1146, 188, '_billing_cpf', '608.226.463-07'),
(1147, 188, '_billing_cnpj', ''),
(1148, 188, '_billing_number', '579'),
(1149, 188, '_billing_neighborhood', 'Centro'),
(1150, 188, '_billing_cellphone', ''),
(1151, 188, 'Payer email', 'sammara_barros@hotmail.com'),
(1152, 188, 'Payer name', 'Saniel Barros Alves'),
(1153, 188, 'Payment type', 'Transferência bancária'),
(1154, 188, 'Payment method', 'Transferência Bancária Banco do Brasil'),
(1155, 188, 'Parcelamento', '1'),
(1156, 188, 'Payment URL', 'https://pagseguro.uol.com.br/checkout/payment/eft/print.jhtml?c=6a35136c4f9ef328959c79bf3817f94925e3e54ba0a8e90530097ff0a86dd152ae38a03c179af387'),
(1157, 188, '_wc_pagseguro_payment_data', 'a:4:{s:4:\"type\";i:3;s:6:\"method\";s:40:\"Transferência Bancária Banco do Brasil\";s:12:\"installments\";s:1:\"1\";s:4:\"link\";s:144:\"https://pagseguro.uol.com.br/checkout/payment/eft/print.jhtml?c=6a35136c4f9ef328959c79bf3817f94925e3e54ba0a8e90530097ff0a86dd152ae38a03c179af387\";}'),
(1158, 188, '_recorded_sales', 'yes'),
(1159, 188, '_recorded_coupon_usage_counts', 'yes'),
(1160, 189, '_order_key', 'wc_order_5a6967d1d0a5e'),
(1161, 189, '_customer_user', '1'),
(1162, 189, '_payment_method', 'paypal'),
(1163, 189, '_payment_method_title', 'PayPal'),
(1164, 189, '_transaction_id', ''),
(1165, 189, '_customer_ip_address', '::1'),
(1166, 189, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:57.0) gecko/20100101 firefox/57.0'),
(1167, 189, '_created_via', 'checkout'),
(1168, 189, '_date_completed', ''),
(1169, 189, '_completed_date', ''),
(1170, 189, '_date_paid', ''),
(1171, 189, '_paid_date', ''),
(1172, 189, '_cart_hash', 'eb59432e521ae7dd7bbbc48edd50c60e'),
(1173, 189, '_billing_first_name', 'Saniel'),
(1174, 189, '_billing_last_name', 'Barros Alves'),
(1175, 189, '_billing_company', ''),
(1176, 189, '_billing_address_1', 'Rua primeiro de maio, Centro'),
(1177, 189, '_billing_address_2', ''),
(1178, 189, '_billing_city', 'João Lisboa'),
(1179, 189, '_billing_state', 'MA');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1180, 189, '_billing_postcode', '65922-000'),
(1181, 189, '_billing_country', 'BR'),
(1182, 189, '_billing_email', 'sammara_barros@hotmail.com'),
(1183, 189, '_billing_phone', '(99) 99205-5305'),
(1184, 189, '_shipping_first_name', ''),
(1185, 189, '_shipping_last_name', ''),
(1186, 189, '_shipping_company', ''),
(1187, 189, '_shipping_address_1', ''),
(1188, 189, '_shipping_address_2', ''),
(1189, 189, '_shipping_city', ''),
(1190, 189, '_shipping_state', ''),
(1191, 189, '_shipping_postcode', ''),
(1192, 189, '_shipping_country', ''),
(1193, 189, '_order_currency', 'BRL'),
(1194, 189, '_cart_discount', '0'),
(1195, 189, '_cart_discount_tax', '0'),
(1196, 189, '_order_shipping', '0.00'),
(1197, 189, '_order_shipping_tax', '0'),
(1198, 189, '_order_tax', '0'),
(1199, 189, '_order_total', '13.50'),
(1200, 189, '_order_version', '3.2.6'),
(1201, 189, '_prices_include_tax', 'no'),
(1202, 189, '_billing_address_index', 'Saniel Barros Alves  Rua primeiro de maio, Centro  João Lisboa MA 65922-000 BR sammara_barros@hotmail.com (99) 99205-5305 579 Centro'),
(1203, 189, '_shipping_address_index', '          '),
(1204, 189, '_billing_persontype', '1'),
(1205, 189, '_billing_cpf', '608.226.463-07'),
(1206, 189, '_billing_cnpj', ''),
(1207, 189, '_billing_number', '579'),
(1208, 189, '_billing_neighborhood', 'Centro'),
(1209, 189, '_billing_cellphone', ''),
(1210, 190, '_customize_restore_dismissed', '1'),
(1211, 191, '_edit_lock', '1516888849:1'),
(1212, 191, '_wp_trash_meta_status', 'publish'),
(1213, 191, '_wp_trash_meta_time', '1516888850'),
(1217, 193, '_edit_lock', '1516890467:1'),
(1218, 194, '_wp_attached_file', '2018/01/clothes-pins-984176_960_720.jpg'),
(1219, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:39:\"2018/01/clothes-pins-984176_960_720.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:39:\"clothes-pins-984176_960_720-960x570.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1222, 193, '_wp_trash_meta_status', 'publish'),
(1223, 193, '_wp_trash_meta_time', '1516890467'),
(1224, 196, '_wp_trash_meta_status', 'publish'),
(1225, 196, '_wp_trash_meta_time', '1516890687'),
(1226, 197, '_wp_trash_meta_status', 'publish'),
(1227, 197, '_wp_trash_meta_time', '1516890765'),
(1228, 198, '_wp_attached_file', '2018/01/pin-1691674_960_720.jpg'),
(1229, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:623;s:4:\"file\";s:31:\"2018/01/pin-1691674_960_720.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:31:\"pin-1691674_960_720-960x570.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 700D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1230, 199, '_wp_trash_meta_status', 'publish'),
(1231, 199, '_wp_trash_meta_time', '1516891084'),
(1232, 200, '_wp_trash_meta_status', 'publish'),
(1233, 200, '_wp_trash_meta_time', '1516893463'),
(1234, 35, '_product_attributes', 'a:2:{s:10:\"atributo-1\";a:6:{s:4:\"name\";s:10:\"Atributo 1\";s:5:\"value\";s:20:\"Camiseta | Masculino\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:10:\"atributo-2\";a:6:{s:4:\"name\";s:10:\"Atributo 2\";s:5:\"value\";s:13:\"Teste | Teste\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(1235, 35, 'fswp_post_meta', 'a:2:{s:15:\"disable_in_cash\";s:1:\"0\";s:20:\"disable_installments\";s:1:\"0\";}'),
(1236, 79, '_mp_recurring_is_recurrent', ''),
(1237, 79, '_mp_recurring_frequency', '1'),
(1238, 79, '_mp_recurring_frequency_type', 'days'),
(1239, 79, '_mp_recurring_end_date', ''),
(1240, 79, 'fswp_post_meta', 'a:2:{s:15:\"disable_in_cash\";s:1:\"0\";s:20:\"disable_installments\";s:1:\"0\";}'),
(1241, 201, '_menu_item_type', 'custom'),
(1242, 201, '_menu_item_menu_item_parent', '202'),
(1243, 201, '_menu_item_object_id', '201'),
(1244, 201, '_menu_item_object', 'custom'),
(1245, 201, '_menu_item_target', ''),
(1246, 201, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1247, 201, '_menu_item_xfn', ''),
(1248, 201, '_menu_item_url', 'http://localhost/wordpress_ecommerce/categoria-produto/masculino/bermuda/'),
(1250, 202, '_menu_item_type', 'custom'),
(1251, 202, '_menu_item_menu_item_parent', '0'),
(1252, 202, '_menu_item_object_id', '202'),
(1253, 202, '_menu_item_object', 'custom'),
(1254, 202, '_menu_item_target', ''),
(1255, 202, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1256, 202, '_menu_item_xfn', ''),
(1257, 202, '_menu_item_url', '?php%20$_SERVER%5B\'REQUEST_URI\'%5D?/categoria-produto/masculino/'),
(1259, 204, '_edit_lock', '1516935012:1'),
(1260, 204, '_edit_last', '1'),
(1261, 204, '_wp_page_template', 'default'),
(1262, 204, 'accesspress_store_sidebar_layout', 'no-sidebar'),
(1263, 209, '_edit_last', '1'),
(1264, 209, '_wp_page_template', 'default'),
(1265, 209, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(1266, 209, '_edit_lock', '1516935038:1'),
(1267, 209, '_wp_trash_meta_status', 'publish'),
(1268, 209, '_wp_trash_meta_time', '1516935233'),
(1269, 209, '_wp_desired_post_slug', 'teste'),
(1270, 203, '_customize_restore_dismissed', '1'),
(1271, 211, '_edit_lock', '1516935859:1'),
(1272, 204, '_wp_trash_meta_status', 'publish'),
(1273, 204, '_wp_trash_meta_time', '1516935928'),
(1274, 204, '_wp_desired_post_slug', 'lista-de-desejos'),
(1275, 211, '_edit_last', '1'),
(1276, 211, '_wp_page_template', 'default'),
(1277, 211, 'accesspress_store_sidebar_layout', 'no-sidebar'),
(1278, 213, '_wp_trash_meta_status', 'publish'),
(1279, 213, '_wp_trash_meta_time', '1516970467'),
(1280, 214, '_edit_lock', '1516970514:1'),
(1281, 214, '_wp_trash_meta_status', 'publish'),
(1282, 214, '_wp_trash_meta_time', '1516970516'),
(1283, 215, '_edit_lock', '1517080639:1'),
(1284, 215, '_wp_trash_meta_status', 'publish'),
(1285, 215, '_wp_trash_meta_time', '1517080640'),
(1297, 220, '_wp_trash_meta_status', 'publish'),
(1298, 220, '_wp_trash_meta_time', '1517155072'),
(1301, 222, '_wp_attached_file', '2018/01/cropped-logo-touchic-modas-2.png'),
(1302, 222, '_wp_attachment_context', 'custom-header'),
(1303, 222, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:70;s:4:\"file\";s:40:\"2018/01/cropped-logo-touchic-modas-2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-2-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-2-300x70.png\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-2-180x70.png\";s:5:\"width\";i:180;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-2-300x70.png\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:217;}'),
(1304, 222, '_wp_attachment_custom_header_last_used_accesspress-store', '1517155171'),
(1305, 222, '_wp_attachment_is_custom_header', 'accesspress-store'),
(1306, 223, '_edit_lock', '1517155597:1'),
(1314, 223, '_wp_trash_meta_status', 'publish'),
(1315, 223, '_wp_trash_meta_time', '1517155598'),
(1323, 228, '_wp_trash_meta_status', 'publish'),
(1324, 228, '_wp_trash_meta_time', '1517155979'),
(1325, 229, '_wp_attached_file', '2018/01/zip-390862_960_720.jpg'),
(1326, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:639;s:4:\"file\";s:30:\"2018/01/zip-390862_960_720.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:30:\"zip-390862_960_720-960x570.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1354, 237, '_wp_attached_file', '2018/01/zipper-574008_960_720.jpg'),
(1355, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:360;s:4:\"file\";s:33:\"2018/01/zipper-574008_960_720.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-768x288.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-562x360.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:33:\"zipper-574008_960_720-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1356, 1, '_thumbnail_id', '237'),
(1361, 239, '_wp_attached_file', '2018/01/time-3076138_1280.jpg'),
(1362, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:360;s:4:\"file\";s:29:\"2018/01/time-3076138_1280.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-768x288.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-562x360.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:29:\"time-3076138_1280-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1363, 17, '_thumbnail_id', '239'),
(1366, 240, '_wp_trash_meta_status', 'publish'),
(1367, 240, '_wp_trash_meta_time', '1517158807'),
(1368, 241, '_edit_lock', '1517159091:1'),
(1369, 241, '_wp_trash_meta_status', 'publish'),
(1370, 241, '_wp_trash_meta_time', '1517159092'),
(1371, 242, '_edit_lock', '1517159514:1'),
(1372, 243, '_wp_attached_file', '2018/01/Promo-Widget-2-1.jpg'),
(1373, 243, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:272;s:4:\"file\";s:28:\"2018/01/Promo-Widget-2-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-2-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-2-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-2-1-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-2-1-363x252.jpg\";s:5:\"width\";i:363;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1374, 242, '_wp_trash_meta_status', 'publish'),
(1375, 242, '_wp_trash_meta_time', '1517159516'),
(1378, 245, '_edit_lock', '1517159674:1'),
(1379, 246, '_wp_attached_file', '2018/01/Promo-Widget-1.jpg'),
(1380, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:272;s:4:\"file\";s:26:\"2018/01/Promo-Widget-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Promo-Widget-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Promo-Widget-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"Promo-Widget-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"Promo-Widget-1-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:26:\"Promo-Widget-1-363x252.jpg\";s:5:\"width\";i:363;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1381, 245, '_wp_trash_meta_status', 'publish'),
(1382, 245, '_wp_trash_meta_time', '1517159676'),
(1383, 247, '_edit_lock', '1517159847:1'),
(1384, 247, '_wp_trash_meta_status', 'publish'),
(1385, 247, '_wp_trash_meta_time', '1517159848'),
(1389, 249, '_edit_lock', '1517160160:1'),
(1391, 250, '_wp_attached_file', '2018/01/Promo-Widget-1-1.jpg'),
(1392, 250, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:272;s:4:\"file\";s:28:\"2018/01/Promo-Widget-1-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-1-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-1-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-1-1-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:28:\"Promo-Widget-1-1-363x252.jpg\";s:5:\"width\";i:363;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1393, 249, '_wp_trash_meta_status', 'publish'),
(1394, 249, '_wp_trash_meta_time', '1517160162'),
(1395, 251, '_wp_trash_meta_status', 'publish'),
(1396, 251, '_wp_trash_meta_time', '1517160268'),
(1399, 253, '_edit_lock', '1517160557:1'),
(1400, 254, '_wp_attached_file', '2018/01/dress-864107_1280.jpg'),
(1401, 254, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:852;s:4:\"file\";s:29:\"2018/01/dress-864107_1280.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"dress-864107_1280-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:29:\"dress-864107_1280-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:30:\"dress-864107_1280-1280x570.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1402, 253, '_wp_trash_meta_status', 'publish'),
(1403, 253, '_wp_trash_meta_time', '1517160555'),
(1404, 255, '_edit_lock', '1517160819:1'),
(1407, 255, '_wp_trash_meta_status', 'publish'),
(1408, 255, '_wp_trash_meta_time', '1517160820'),
(1409, 257, '_wp_trash_meta_status', 'publish'),
(1410, 257, '_wp_trash_meta_time', '1517160924'),
(1411, 258, '_wp_trash_meta_status', 'publish'),
(1412, 258, '_wp_trash_meta_time', '1517160970'),
(1415, 260, '_wc_review_count', '0'),
(1416, 261, '_wc_review_count', '0'),
(1417, 260, '_wc_rating_count', 'a:0:{}'),
(1418, 261, '_wc_rating_count', 'a:0:{}'),
(1419, 261, '_wc_average_rating', '0'),
(1420, 260, '_wc_average_rating', '0'),
(1421, 262, '_wp_attached_file', '2018/01/black-and-white-2558273_1280.jpg'),
(1422, 262, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:854;s:4:\"file\";s:40:\"2018/01/black-and-white-2558273_1280.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"black-and-white-2558273_1280-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:40:\"black-and-white-2558273_1280-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:41:\"black-and-white-2558273_1280-1280x570.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D810\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1428, 264, '_wp_trash_meta_status', 'publish'),
(1429, 264, '_wp_trash_meta_time', '1517175632'),
(1430, 265, '_wp_attached_file', '2018/01/pink-hair-1450045_1280-2.jpg'),
(1431, 265, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1279;s:6:\"height\";i:347;s:4:\"file\";s:36:\"2018/01/pink-hair-1450045_1280-2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"pink-hair-1450045_1280-2-300x81.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-768x208.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"pink-hair-1450045_1280-2-1024x278.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-600x347.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-562x347.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:36:\"pink-hair-1450045_1280-2-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1432, 148, 'fswp_post_meta', 'a:2:{s:15:\"disable_in_cash\";s:1:\"0\";s:20:\"disable_installments\";s:1:\"0\";}'),
(1433, 266, '_wp_attached_file', '2018/01/logo-touchic-modas.jpg'),
(1434, 266, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:285;s:4:\"file\";s:30:\"2018/01/logo-touchic-modas.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"logo-touchic-modas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"logo-touchic-modas-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"logo-touchic-modas-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"logo-touchic-modas-300x285.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:30:\"logo-touchic-modas-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1435, 267, '_wp_attached_file', '2018/01/cropped-logo-touchic-modas-2.jpg'),
(1436, 267, '_wp_attachment_context', 'custom-header'),
(1437, 267, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:141;s:4:\"file\";s:40:\"2018/01/cropped-logo-touchic-modas-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-touchic-modas-2-150x141.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-logo-touchic-modas-2-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-touchic-modas-2-180x141.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"cropped-logo-touchic-modas-2-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:266;}'),
(1440, 268, '_edit_lock', '1517180613:1'),
(1441, 268, '_wp_trash_meta_status', 'publish'),
(1442, 268, '_wp_trash_meta_time', '1517180614'),
(1443, 269, '_wp_trash_meta_status', 'publish'),
(1444, 269, '_wp_trash_meta_time', '1517180726'),
(1445, 270, '_edit_lock', '1517180848:1'),
(1446, 271, '_wp_attached_file', '2018/01/cropped-logo-touchic-modas-3.jpg'),
(1447, 271, '_wp_attachment_context', 'custom-header'),
(1448, 271, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:70;s:4:\"file\";s:40:\"2018/01/cropped-logo-touchic-modas-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-3-150x70.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-3-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-3-180x70.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"cropped-logo-touchic-modas-3-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:266;}'),
(1449, 271, '_wp_attachment_custom_header_last_used_accesspress-store', '1517180849'),
(1450, 271, '_wp_attachment_is_custom_header', 'accesspress-store'),
(1451, 270, '_wp_trash_meta_status', 'publish'),
(1452, 270, '_wp_trash_meta_time', '1517180849'),
(1453, 272, '_edit_lock', '1517181088:1'),
(1454, 272, '_wp_trash_meta_status', 'publish'),
(1455, 272, '_wp_trash_meta_time', '1517181089'),
(1456, 273, '_edit_lock', '1517181234:1'),
(1457, 273, '_wp_trash_meta_status', 'publish'),
(1458, 273, '_wp_trash_meta_time', '1517181235'),
(1459, 274, '_wp_trash_meta_status', 'publish'),
(1460, 274, '_wp_trash_meta_time', '1517181269'),
(1461, 275, '_wp_trash_meta_status', 'publish'),
(1462, 275, '_wp_trash_meta_time', '1517181306'),
(1463, 276, '_wp_trash_meta_status', 'publish'),
(1464, 276, '_wp_trash_meta_time', '1517181340'),
(1465, 147, 'fswp_post_meta', 'a:2:{s:15:\"disable_in_cash\";s:1:\"0\";s:20:\"disable_installments\";s:1:\"0\";}'),
(1466, 277, '_wp_trash_meta_status', 'publish'),
(1467, 277, '_wp_trash_meta_time', '1517182344'),
(1468, 278, '_wp_trash_meta_status', 'publish'),
(1469, 278, '_wp_trash_meta_time', '1517182376'),
(1470, 279, '_wp_trash_meta_status', 'publish'),
(1471, 279, '_wp_trash_meta_time', '1517182483'),
(1472, 280, '_edit_lock', '1517182755:1'),
(1473, 280, '_wp_trash_meta_status', 'publish'),
(1474, 280, '_wp_trash_meta_time', '1517182754'),
(1475, 281, '_wp_trash_meta_status', 'publish'),
(1476, 281, '_wp_trash_meta_time', '1517184687'),
(1477, 282, '_edit_lock', '1517194135:1'),
(1478, 282, '_edit_last', '1'),
(1479, 282, '_wp_page_template', 'default'),
(1480, 282, 'accesspress_store_sidebar_layout', 'no-sidebar'),
(1481, 284, '_edit_lock', '1517194939:1'),
(1482, 284, '_wp_trash_meta_status', 'publish'),
(1483, 284, '_wp_trash_meta_time', '1517194940'),
(1484, 285, '_menu_item_type', 'post_type'),
(1485, 285, '_menu_item_menu_item_parent', '0'),
(1486, 285, '_menu_item_object_id', '282'),
(1487, 285, '_menu_item_object', 'page'),
(1488, 285, '_menu_item_target', ''),
(1489, 285, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1490, 285, '_menu_item_xfn', ''),
(1491, 285, '_menu_item_url', ''),
(1493, 286, '_menu_item_type', 'custom'),
(1494, 286, '_menu_item_menu_item_parent', '0'),
(1495, 286, '_menu_item_object_id', '286'),
(1496, 286, '_menu_item_object', 'custom'),
(1497, 286, '_menu_item_target', ''),
(1498, 286, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1499, 286, '_menu_item_xfn', ''),
(1500, 286, '_menu_item_url', 'http://#'),
(1502, 164, '_product_url', 'http://edpolos.com/index.php?acao=produto&#038;id=132'),
(1503, 164, '_button_text', 'Levar'),
(1504, 164, '_children', 'a:2:{i:0;i:148;i:1;i:35;}'),
(1506, 287, '_wc_review_count', '0'),
(1507, 287, '_wc_rating_count', 'a:0:{}'),
(1508, 287, '_wc_average_rating', '0'),
(1509, 288, '_wc_review_count', '0'),
(1510, 288, '_wc_rating_count', 'a:0:{}'),
(1511, 288, '_wc_average_rating', '0'),
(1512, 289, '_wc_review_count', '0'),
(1513, 289, '_wc_rating_count', 'a:0:{}'),
(1514, 289, '_wc_average_rating', '0'),
(1515, 290, '_wp_attached_file', '2018/01/FRETE-GRATIS.jpg'),
(1516, 290, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:228;s:6:\"height\";i:74;s:4:\"file\";s:24:\"2018/01/FRETE-GRATIS.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"FRETE-GRATIS-150x74.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"FRETE-GRATIS-180x74.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1517, 291, '_wp_attached_file', '2018/01/icone_setor_atacado.png'),
(1518, 291, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:134;s:4:\"file\";s:31:\"2018/01/icone_setor_atacado.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1519, 164, 'date_expires', 'hoje'),
(1520, 164, 'Parcelamento', '3'),
(1525, 292, '_variation_description', ''),
(1526, 292, '_sku', ''),
(1527, 292, '_regular_price', '13.50'),
(1528, 292, '_sale_price', ''),
(1529, 292, '_sale_price_dates_from', ''),
(1530, 292, '_sale_price_dates_to', ''),
(1531, 292, 'total_sales', '0'),
(1532, 292, '_tax_status', 'taxable'),
(1533, 292, '_tax_class', ''),
(1534, 292, '_manage_stock', 'no'),
(1535, 292, '_backorders', 'no'),
(1536, 292, '_sold_individually', 'no'),
(1537, 292, '_weight', ''),
(1538, 292, '_length', ''),
(1539, 292, '_width', ''),
(1540, 292, '_height', ''),
(1541, 292, '_upsell_ids', 'a:0:{}'),
(1542, 292, '_crosssell_ids', 'a:0:{}'),
(1543, 292, '_purchase_note', ''),
(1544, 292, '_default_attributes', 'a:0:{}'),
(1545, 292, '_virtual', 'no'),
(1546, 292, '_downloadable', 'no'),
(1547, 292, '_product_image_gallery', ''),
(1548, 292, '_download_limit', '-1'),
(1549, 292, '_download_expiry', '-1'),
(1550, 292, '_stock', NULL),
(1551, 292, '_stock_status', 'instock'),
(1552, 292, '_wc_average_rating', '0'),
(1553, 292, '_wc_rating_count', 'a:0:{}'),
(1554, 292, '_wc_review_count', '0'),
(1555, 292, '_downloadable_files', 'a:0:{}'),
(1556, 292, '_price', '13.50'),
(1557, 292, '_product_version', '3.2.6'),
(1558, 292, 'attribute_cor', 'Azul'),
(1559, 293, '_variation_description', ''),
(1560, 293, '_sku', ''),
(1561, 293, '_regular_price', ''),
(1562, 293, '_sale_price', ''),
(1563, 293, '_sale_price_dates_from', ''),
(1564, 293, '_sale_price_dates_to', ''),
(1565, 293, 'total_sales', '0'),
(1566, 293, '_tax_status', 'taxable'),
(1567, 293, '_tax_class', ''),
(1568, 293, '_manage_stock', 'no'),
(1569, 293, '_backorders', 'no'),
(1570, 293, '_sold_individually', 'no'),
(1571, 293, '_weight', ''),
(1572, 293, '_length', ''),
(1573, 293, '_width', ''),
(1574, 293, '_height', ''),
(1575, 293, '_upsell_ids', 'a:0:{}'),
(1576, 293, '_crosssell_ids', 'a:0:{}'),
(1577, 293, '_purchase_note', ''),
(1578, 293, '_default_attributes', 'a:0:{}'),
(1579, 293, '_virtual', 'no'),
(1580, 293, '_downloadable', 'no'),
(1581, 293, '_product_image_gallery', ''),
(1582, 293, '_download_limit', '-1'),
(1583, 293, '_download_expiry', '-1'),
(1584, 293, '_stock', NULL),
(1585, 293, '_stock_status', 'outofstock'),
(1586, 293, '_wc_average_rating', '0'),
(1587, 293, '_wc_rating_count', 'a:0:{}'),
(1588, 293, '_wc_review_count', '0'),
(1589, 293, '_downloadable_files', 'a:0:{}'),
(1590, 293, 'attribute_cor', 'Vermelho'),
(1591, 293, '_price', ''),
(1592, 293, '_product_version', '3.2.6'),
(1593, 294, '_variation_description', ''),
(1594, 294, '_sku', ''),
(1595, 294, '_regular_price', ''),
(1596, 294, '_sale_price', ''),
(1597, 294, '_sale_price_dates_from', ''),
(1598, 294, '_sale_price_dates_to', ''),
(1599, 294, 'total_sales', '0'),
(1600, 294, '_tax_status', 'taxable'),
(1601, 294, '_tax_class', ''),
(1602, 294, '_manage_stock', 'no'),
(1603, 294, '_backorders', 'no'),
(1604, 294, '_sold_individually', 'no'),
(1605, 294, '_weight', ''),
(1606, 294, '_length', ''),
(1607, 294, '_width', ''),
(1608, 294, '_height', ''),
(1609, 294, '_upsell_ids', 'a:0:{}'),
(1610, 294, '_crosssell_ids', 'a:0:{}'),
(1611, 294, '_purchase_note', ''),
(1612, 294, '_default_attributes', 'a:0:{}'),
(1613, 294, '_virtual', 'no'),
(1614, 294, '_downloadable', 'no'),
(1615, 294, '_product_image_gallery', ''),
(1616, 294, '_download_limit', '-1'),
(1617, 294, '_download_expiry', '-1'),
(1618, 294, '_stock', NULL),
(1619, 294, '_stock_status', 'instock'),
(1620, 294, '_wc_average_rating', '0'),
(1621, 294, '_wc_rating_count', 'a:0:{}'),
(1622, 294, '_wc_review_count', '0'),
(1623, 294, '_downloadable_files', 'a:0:{}'),
(1624, 294, 'attribute_cor', 'Verde'),
(1625, 294, '_price', ''),
(1626, 294, '_product_version', '3.2.6'),
(1629, 164, '_price', '13.50'),
(1632, 164, 'min_quantity', ''),
(1633, 164, 'max_quantity', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-23 15:07:02', '2018-01-23 17:07:02', 'Conforto, qualidade e preço justo. Confira as tendências da Hollister!', 'Camiseta Hollister P', '', 'publish', 'open', 'open', '', 'banner1-1350x570', '', '', '2018-01-28 14:49:36', '2018-01-28 16:49:36', '', 0, 'http://localhost/wordpress_ecommerce/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-23 15:07:02', '2018-01-23 17:07:02', '[woocommerce_checkout]', 'Finalizar Compra', '', 'publish', 'closed', 'open', '', 'finalizar-compra', '', '', '2018-01-25 01:40:09', '2018-01-25 03:40:09', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-01-23 15:07:38', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-23 15:07:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=3', 0, 'post', '', 0),
(4, 1, '2018-01-23 15:51:36', '2018-01-23 17:51:36', '{\n    \"accesspress-store::accesspress_widget_layout_type\": {\n        \"value\": \"title_style_one\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:51:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9c4993c-e0ba-40d4-8943-1ba322ceacd7', '', '', '2018-01-23 15:51:36', '2018-01-23 17:51:36', '', 0, 'http://localhost/wordpress_ecommerce/?p=4', 0, 'customize_changeset', '', 0),
(5, 1, '2018-01-23 15:51:50', '2018-01-23 17:51:50', '{\n    \"accesspress-store::accesspress_header_layout_type\": {\n        \"value\": \"headertwo\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:51:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6574ac3a-07a8-4114-b320-89b450fe57a9', '', '', '2018-01-23 15:51:50', '2018-01-23 17:51:50', '', 0, 'http://localhost/wordpress_ecommerce/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2018-01-23 15:52:04', '2018-01-23 17:52:04', '{\n    \"accesspress-store::accesspress_header_layout_type\": {\n        \"value\": \"headerone\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:52:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '049b3f2c-39f3-4ca5-8f5d-d737f59f3acf', '', '', '2018-01-23 15:52:04', '2018-01-23 17:52:04', '', 0, 'http://localhost/wordpress_ecommerce/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2018-01-23 15:53:53', '2018-01-23 17:53:53', '', 'Página inicial', '', 'publish', 'closed', 'closed', '', 'pagina-inicial', '', '', '2018-01-24 12:44:35', '2018-01-24 14:44:35', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-01-23 15:53:53', '2018-01-23 17:53:53', '', 'Página inicial', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-01-23 15:53:53', '2018-01-23 17:53:53', '', 7, 'http://localhost/wordpress_ecommerce/?p=8', 0, 'revision', '', 0),
(9, 1, '2018-01-23 15:55:49', '2018-01-23 17:55:49', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:55:49\"\n    },\n    \"page_on_front\": {\n        \"value\": \"7\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:55:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b8ba09e2-b351-40c5-860d-67cf87676ca5', '', '', '2018-01-23 15:55:49', '2018-01-23 17:55:49', '', 0, 'http://localhost/wordpress_ecommerce/b8ba09e2-b351-40c5-860d-67cf87676ca5/', 0, 'customize_changeset', '', 0),
(10, 1, '2018-01-23 15:56:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-23 15:56:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-01-23 16:01:26', '2018-01-23 18:01:26', '{\n    \"sidebars_widgets[header-callto-action]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:58:14\"\n    },\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:58:14\"\n    },\n    \"widget_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE4OiJIZWFkZXIgQ2FsbCBUbyBCb3giO3M6NDoidGV4dCI7czowOiIiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Header Call To Box\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1f241a14dac18c1225a82626a4df67d1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:58:14\"\n    },\n    \"widget_text[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE4OiJBUDogUHJvbW8gV2lkZ2V0IDEiO3M6NDoidGV4dCI7czowOiIiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"AP: Promo Widget 1\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"576cc611962292c5db6213d6c38e20d7\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:58:14\"\n    },\n    \"sidebars_widgets[product-widget-1]\": {\n        \"value\": [\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:59:14\"\n    },\n    \"sidebars_widgets[promo-widget-2]\": {\n        \"value\": [\n            \"text-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:59:14\"\n    },\n    \"widget_text[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjI4OiJBUDogUHJvZHVjdCBMaXN0aW5nIFdpZGdldCAxIjtzOjQ6InRleHQiO3M6MDoiIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"AP: Product Listing Widget 1\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55258b524f781289de286d0010df9cc6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:59:14\"\n    },\n    \"widget_text[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJQcm9tbyBXaWRnZXQgMiI7czo0OiJ0ZXh0IjtzOjA6IiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Promo Widget 2\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7888883577ada4ae6877efecebcc1551\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 17:59:14\"\n    },\n    \"sidebars_widgets[product-widget-2]\": {\n        \"value\": [\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:00:14\"\n    },\n    \"sidebars_widgets[cta-video]\": {\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:00:14\"\n    },\n    \"widget_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjI4OiJBUDogUHJvZHVjdCBMaXN0aW5nIFdpZGdldCAyIjtzOjQ6InRleHQiO3M6MDoiIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"AP: Product Listing Widget 2\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7b85c714c9e5795ab223e5f84cb7a5c0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:00:14\"\n    },\n    \"widget_text[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjI0OiJBUDogVmlkZW8gQ2FsbCB0byBBY3Rpb24iO3M6NDoidGV4dCI7czowOiIiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"AP: Video Call to Action\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"59b09bca1db67a9c348fc78fd3980afe\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:00:14\"\n    },\n    \"sidebars_widgets[product-widget-3]\": {\n        \"value\": [\n            \"text-9\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:01:14\"\n    },\n    \"sidebars_widgets[promo-widget-3]\": {\n        \"value\": [\n            \"text-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:01:14\"\n    },\n    \"widget_text[9]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjI4OiJBUDogUHJvZHVjdCBMaXN0aW5nIFdpZGdldCAzIjtzOjQ6InRleHQiO3M6MDoiIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"AP: Product Listing Widget 3\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5fa4e07c274956497f0dca77f21cd0a3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:01:14\"\n    },\n    \"widget_text[10]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE4OiJBUDogUHJvbW8gV2lkZ2V0IDMiO3M6NDoidGV4dCI7czowOiIiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"AP: Promo Widget 3\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"10e5826ecbf63c78daa307474a8a57f2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:01:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b2e152cc-e538-4ac2-86ff-c0de24950d0c', '', '', '2018-01-23 16:01:26', '2018-01-23 18:01:26', '', 0, 'http://localhost/wordpress_ecommerce/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2018-01-23 16:06:08', '2018-01-23 18:06:08', '{\n    \"accesspress-store::show_slider\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    },\n    \"accesspress-store::show_pager\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    },\n    \"accesspress-store::show_controls\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    },\n    \"accesspress-store::auto_transition\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    },\n    \"accesspress-store::show_caption\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    },\n    \"accesspress-store::slider_1_post\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    },\n    \"accesspress-store::slider1_button_link\": {\n        \"value\": \"www.google.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    },\n    \"accesspress-store::slider1_button_text\": {\n        \"value\": \"Bot\\u00e3o de a\\u00e7\\u00e3o\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:06:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c28d4a88-edf4-4de0-a916-e8a1fbca344b', '', '', '2018-01-23 16:06:08', '2018-01-23 18:06:08', '', 0, 'http://localhost/wordpress_ecommerce/?p=12', 0, 'customize_changeset', '', 0),
(14, 1, '2018-01-28 14:49:11', '2018-01-28 16:49:11', 'Conforto, qualidade e preço justo. Confira as tendências da Hollister!', 'Ba', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-01-28 14:49:11', '2018-01-28 16:49:11', '', 1, 'http://localhost/wordpress_ecommerce/1-autosave-v1/', 0, 'revision', '', 0),
(15, 1, '2018-01-23 16:09:05', '2018-01-23 18:09:05', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-23 16:09:05', '2018-01-23 18:09:05', '', 1, 'http://localhost/wordpress_ecommerce/1-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-01-23 16:14:48', '2018-01-23 18:14:48', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'banner1-1350x570', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-23 16:14:48', '2018-01-23 18:14:48', '', 1, 'http://localhost/wordpress_ecommerce/1-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-01-23 16:16:15', '2018-01-23 18:16:15', 'Seja descolado e curta o melhor que a vida tem a oferecer!', 'Relógios importados', '', 'publish', 'open', 'open', '', 'banner2-1350x570', '', '', '2018-01-28 14:55:47', '2018-01-28 16:55:47', '', 0, 'http://localhost/wordpress_ecommerce/?p=17', 0, 'post', '', 0),
(20, 1, '2018-01-23 16:16:15', '2018-01-23 18:16:15', '', 'banner2-1350x570', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-01-23 16:16:15', '2018-01-23 18:16:15', '', 17, 'http://localhost/wordpress_ecommerce/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-01-23 16:17:28', '2018-01-23 18:17:28', '{\n    \"accesspress-store::slider_2_post\": {\n        \"value\": \"17\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:17:28\"\n    },\n    \"accesspress-store::slider2_button_link\": {\n        \"value\": \"www.torrentseriados.net\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:17:28\"\n    },\n    \"accesspress-store::slider2_button_text\": {\n        \"value\": \"Bot\\u00e3o de a\\u00e7\\u00e3o 2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:17:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9fe63048-41cb-4d99-854f-5c87c4ac7c35', '', '', '2018-01-23 16:17:28', '2018-01-23 18:17:28', '', 0, 'http://localhost/wordpress_ecommerce/9fe63048-41cb-4d99-854f-5c87c4ac7c35/', 0, 'customize_changeset', '', 0),
(22, 1, '2018-01-23 16:19:29', '2018-01-23 18:19:29', 'Conforto, qualidade e preço justo. Confira as tendências da Hollister!', 'Camiseta Hollister', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-23 16:19:29', '2018-01-23 18:19:29', '', 1, 'http://localhost/wordpress_ecommerce/1-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-01-23 16:21:41', '2018-01-23 18:21:41', 'Seja descolado e curta o melhor que a vida tem a o\n<div id=\"SL_balloon_obj\" style=\"display: block;\">\n<div id=\"SL_button\" class=\"SL_ImTranslatorLogo\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/imtranslator-s.png\') repeat scroll 0% 0%; display: none; opacity: 1;\"></div>\n<div id=\"SL_shadow_translation_result2\" style=\"display: none;\"></div>\n<div id=\"SL_shadow_translator\" style=\"display: none;\">\n<div id=\"SL_planshet\">\n<div id=\"SL_arrow_up\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/up.png\') repeat scroll 0% 0%;\"></div>\n<div id=\"SL_Bproviders\">\n<div id=\"SL_P0\" class=\"SL_BL_LABLE_ON\" title=\"Google\">G</div>\n<div id=\"SL_P1\" class=\"SL_BL_LABLE_ON\" title=\"Microsoft\">M</div>\n<div id=\"SL_P2\" class=\"SL_BL_LABLE_ON\" title=\"Translator\">T</div>\n</div>\n<div id=\"SL_alert_bbl\" style=\"display: none;\">\n<div id=\"SLHKclose\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/delete.png\') repeat scroll 0% 0%;\"></div>\n<div id=\"SL_alert_cont\"></div>\n</div>\n<div id=\"SL_TB\">\n<table id=\"SL_tables\" cellspacing=\"1\">\n<tr>\n<td class=\"SL_td\" align=\"right\" width=\"10%\"><input id=\"SL_locer\" title=\"Lock-in language\" type=\"checkbox\" /></td>\n<td class=\"SL_td\" align=\"left\" width=\"20%\"><select id=\"SL_lng_from\" style=\"background: #ffffff url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/select.png\') no-repeat scroll 100% 0px;\">\n<option value=\"auto\">Detect language</option>\n<option value=\"af\">Afrikaans</option>\n<option value=\"sq\">Albanian</option>\n<option value=\"ar\">Arabic</option>\n<option value=\"hy\">Armenian</option>\n<option value=\"az\">Azerbaijani</option>\n<option value=\"eu\">Basque</option>\n<option value=\"be\">Belarusian</option>\n<option value=\"bn\">Bengali</option>\n<option value=\"bs\">Bosnian</option>\n<option value=\"bg\">Bulgarian</option>\n<option value=\"ca\">Catalan</option>\n<option value=\"ceb\">Cebuano</option>\n<option value=\"ny\">Chichewa</option>\n<option value=\"zh-CN\">Chinese (Simplified)</option>\n<option value=\"zh-TW\">Chinese (Traditional)</option>\n<option value=\"hr\">Croatian</option>\n<option value=\"cs\">Czech</option>\n<option value=\"da\">Danish</option>\n<option value=\"nl\">Dutch</option>\n<option value=\"en\">English</option>\n<option value=\"eo\">Esperanto</option>\n<option value=\"et\">Estonian</option>\n<option value=\"tl\">Filipino</option>\n<option value=\"fi\">Finnish</option>\n<option value=\"fr\">French</option>\n<option value=\"gl\">Galician</option>\n<option value=\"ka\">Georgian</option>\n<option value=\"de\">German</option>\n<option value=\"el\">Greek</option>\n<option value=\"gu\">Gujarati</option>\n<option value=\"ht\">Haitian Creole</option>\n<option value=\"ha\">Hausa</option>\n<option value=\"iw\">Hebrew</option>\n<option value=\"hi\">Hindi</option>\n<option value=\"hmn\">Hmong</option>\n<option value=\"hu\">Hungarian</option>\n<option value=\"is\">Icelandic</option>\n<option value=\"ig\">Igbo</option>\n<option value=\"id\">Indonesian</option>\n<option value=\"ga\">Irish</option>\n<option value=\"it\">Italian</option>\n<option value=\"ja\">Japanese</option>\n<option value=\"jw\">Javanese</option>\n<option value=\"kn\">Kannada</option>\n<option value=\"kk\">Kazakh</option>\n<option value=\"km\">Khmer</option>\n<option value=\"ko\">Korean</option>\n<option value=\"lo\">Lao</option>\n<option value=\"la\">Latin</option>\n<option value=\"lv\">Latvian</option>\n<option value=\"lt\">Lithuanian</option>\n<option value=\"mk\">Macedonian</option>\n<option value=\"mg\">Malagasy</option>\n<option value=\"ms\">Malay</option>\n<option value=\"ml\">Malayalam</option>\n<option value=\"mt\">Maltese</option>\n<option value=\"mi\">Maori</option>\n<option value=\"mr\">Marathi</option>\n<option value=\"mn\">Mongolian</option>\n<option value=\"my\">Myanmar (Burmese)</option>\n<option value=\"ne\">Nepali</option>\n<option value=\"no\">Norwegian</option>\n<option value=\"fa\">Persian</option>\n<option value=\"pl\">Polish</option>\n<option value=\"pt\">Portuguese</option>\n<option value=\"pa\">Punjabi</option>\n<option value=\"ro\">Romanian</option>\n<option value=\"ru\">Russian</option>\n<option value=\"sr\">Serbian</option>\n<option value=\"st\">Sesotho</option>\n<option value=\"si\">Sinhala</option>\n<option value=\"sk\">Slovak</option>\n<option value=\"sl\">Slovenian</option>\n<option value=\"so\">Somali</option>\n<option value=\"es\">Spanish</option>\n<option value=\"su\">Sundanese</option>\n<option value=\"sw\">Swahili</option>\n<option value=\"sv\">Swedish</option>\n<option value=\"tg\">Tajik</option>\n<option value=\"ta\">Tamil</option>\n<option value=\"te\">Telugu</option>\n<option value=\"th\">Thai</option>\n<option value=\"tr\">Turkish</option>\n<option value=\"uk\">Ukrainian</option>\n<option value=\"ur\">Urdu</option>\n<option value=\"uz\">Uzbek</option>\n<option value=\"vi\">Vietnamese</option>\n<option value=\"cy\">Welsh</option>\n<option value=\"yi\">Yiddish</option>\n<option value=\"yo\">Yoruba</option>\n<option value=\"zu\">Zulu</option>\n</select></td>\n<td class=\"SL_td\" align=\"center\" width=\"3\">\n<div id=\"SL_switch_b\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/switchb.png\') repeat scroll 0% 0%;\" title=\"Switch languages\"></div></td>\n<td class=\"SL_td\" align=\"left\" width=\"20%\"><select id=\"SL_lng_to\" style=\"background: #ffffff url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/select.png\') no-repeat scroll 100% 0px;\">\n<option value=\"af\">Afrikaans</option>\n<option value=\"sq\">Albanian</option>\n<option value=\"ar\">Arabic</option>\n<option value=\"hy\">Armenian</option>\n<option value=\"az\">Azerbaijani</option>\n<option value=\"eu\">Basque</option>\n<option value=\"be\">Belarusian</option>\n<option value=\"bn\">Bengali</option>\n<option value=\"bs\">Bosnian</option>\n<option value=\"bg\">Bulgarian</option>\n<option value=\"ca\">Catalan</option>\n<option value=\"ceb\">Cebuano</option>\n<option value=\"ny\">Chichewa</option>\n<option value=\"zh-CN\">Chinese (Simplified)</option>\n<option value=\"zh-TW\">Chinese (Traditional)</option>\n<option value=\"hr\">Croatian</option>\n<option value=\"cs\">Czech</option>\n<option value=\"da\">Danish</option>\n<option value=\"nl\">Dutch</option>\n<option selected=\"selected\" value=\"en\">English</option>\n<option value=\"eo\">Esperanto</option>\n<option value=\"et\">Estonian</option>\n<option value=\"tl\">Filipino</option>\n<option value=\"fi\">Finnish</option>\n<option value=\"fr\">French</option>\n<option value=\"gl\">Galician</option>\n<option value=\"ka\">Georgian</option>\n<option value=\"de\">German</option>\n<option value=\"el\">Greek</option>\n<option value=\"gu\">Gujarati</option>\n<option value=\"ht\">Haitian Creole</option>\n<option value=\"ha\">Hausa</option>\n<option value=\"iw\">Hebrew</option>\n<option value=\"hi\">Hindi</option>\n<option value=\"hmn\">Hmong</option>\n<option value=\"hu\">Hungarian</option>\n<option value=\"is\">Icelandic</option>\n<option value=\"ig\">Igbo</option>\n<option value=\"id\">Indonesian</option>\n<option value=\"ga\">Irish</option>\n<option value=\"it\">Italian</option>\n<option value=\"ja\">Japanese</option>\n<option value=\"jw\">Javanese</option>\n<option value=\"kn\">Kannada</option>\n<option value=\"kk\">Kazakh</option>\n<option value=\"km\">Khmer</option>\n<option value=\"ko\">Korean</option>\n<option value=\"lo\">Lao</option>\n<option value=\"la\">Latin</option>\n<option value=\"lv\">Latvian</option>\n<option value=\"lt\">Lithuanian</option>\n<option value=\"mk\">Macedonian</option>\n<option value=\"mg\">Malagasy</option>\n<option value=\"ms\">Malay</option>\n<option value=\"ml\">Malayalam</option>\n<option value=\"mt\">Maltese</option>\n<option value=\"mi\">Maori</option>\n<option value=\"mr\">Marathi</option>\n<option value=\"mn\">Mongolian</option>\n<option value=\"my\">Myanmar (Burmese)</option>\n<option value=\"ne\">Nepali</option>\n<option value=\"no\">Norwegian</option>\n<option value=\"fa\">Persian</option>\n<option value=\"pl\">Polish</option>\n<option value=\"pt\">Portuguese</option>\n<option value=\"pa\">Punjabi</option>\n<option value=\"ro\">Romanian</option>\n<option value=\"ru\">Russian</option>\n<option value=\"sr\">Serbian</option>\n<option value=\"st\">Sesotho</option>\n<option value=\"si\">Sinhala</option>\n<option value=\"sk\">Slovak</option>\n<option value=\"sl\">Slovenian</option>\n<option value=\"so\">Somali</option>\n<option value=\"es\">Spanish</option>\n<option value=\"su\">Sundanese</option>\n<option value=\"sw\">Swahili</option>\n<option value=\"sv\">Swedish</option>\n<option value=\"tg\">Tajik</option>\n<option value=\"ta\">Tamil</option>\n<option value=\"te\">Telugu</option>\n<option value=\"th\">Thai</option>\n<option value=\"tr\">Turkish</option>\n<option value=\"uk\">Ukrainian</option>\n<option value=\"ur\">Urdu</option>\n<option value=\"uz\">Uzbek</option>\n<option value=\"vi\">Vietnamese</option>\n<option value=\"cy\">Welsh</option>\n<option value=\"yi\">Yiddish</option>\n<option value=\"yo\">Yoruba</option>\n<option value=\"zu\">Zulu</option>\n</select></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_TTS_voice\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/ttsvoice.png\') repeat scroll 0% 0%;\" title=\"Listen to the translation\"></div></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_copy\" class=\"SL_copy\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/copy.png\') repeat scroll 0% 0%;\" title=\"Copy translation\"></div></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_bbl_font_patch\"></div>\n<div id=\"SL_bbl_font\" class=\"SL_bbl_font\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/font.png\') repeat scroll 0% 0%;\" title=\"Font size\"></div></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_bbl_help\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/bhelp.png\') repeat scroll 0% 0%;\" title=\"Help\"></div></td>\n<td class=\"SL_td\" align=\"right\" width=\"15%\">\n<div id=\"SL_pin\" class=\"SL_pin_off\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/pin-on.png\') repeat scroll 0% 0%;\" title=\"Pin pop-up bubble\"></div></td>\n</tr>\n</table>\n</div>\n</div>\n<div id=\"SL_shadow_translation_result\" style=\"visibility: visible;\"></div>\n<div id=\"SL_loading\" class=\"SL_loading\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/loading.gif\') repeat scroll 0% 0%;\"></div>\n<div id=\"SL_player2\"></div>\n<div id=\"SL_alert100\">Text-to-speech function is limited to 200 characters</div>\n<div id=\"SL_Balloon_options\" style=\"background: #ffffff url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/bg3.png\') repeat scroll 0% 0%;\">\n<div id=\"SL_arrow_down\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/down.png\') repeat scroll 0% 0%;\"></div>\n<table id=\"SL_tbl_opt\" width=\"100%\">\n<tr>\n<td align=\"center\" width=\"5%\"><input id=\"SL_BBL_locer\" title=\"Show Translator\'s button 3 second(s)\" checked=\"checked\" type=\"checkbox\" /></td>\n<td align=\"left\" width=\"5%\">\n<div id=\"SL_BBL_IMG\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/bbl-logo.png\') repeat scroll 0% 0%;\" title=\"Show Translator\'s button 3 second(s)\"></div></td>\n<td align=\"center\" width=\"70%\"><a class=\"SL_options\" title=\"Show options\" href=\"moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/html/options/options.html?bbl\" target=\"_blank\" rel=\"noopener\">Options</a> : <a class=\"SL_options\" title=\"Translation History\" href=\"moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/html/options/options.html?hist\" target=\"_blank\" rel=\"noopener\">History</a> : <a class=\"SL_options\" title=\"ImTranslator Feedback\" href=\"moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/html/options/options.html?feed\" target=\"_blank\" rel=\"noopener\">Feedback</a> : <a class=\"SL_options\" title=\"Make a small contribution\" href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=GD9D8CPW8HFA2\" target=\"_blank\" rel=\"noopener\">Donate</a></td>\n<td align=\"right\" width=\"15%\"><span id=\"SL_Balloon_Close\" title=\"Close\">Close</span></td>\n</tr>\n</table>\n</div>\n</div>\n</div>', 'Relógios importados', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2018-01-23 16:21:41', '2018-01-23 18:21:41', '', 17, 'http://localhost/wordpress_ecommerce/17-autosave-v1/', 0, 'revision', '', 0),
(24, 1, '2018-01-23 16:21:54', '2018-01-23 18:21:54', 'Seja descolado e curta o melhor que a vida tem a oferecer!', 'Relógios importados', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-01-23 16:21:54', '2018-01-23 18:21:54', '', 17, 'http://localhost/wordpress_ecommerce/17-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-01-23 16:23:04', '2018-01-23 18:23:04', '{\n    \"accesspress-store::slider_speed\": {\n        \"value\": \"100\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:23:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '46c64b06-8ead-43d7-b4a0-96c38358c9df', '', '', '2018-01-23 16:23:04', '2018-01-23 18:23:04', '', 0, 'http://localhost/wordpress_ecommerce/46c64b06-8ead-43d7-b4a0-96c38358c9df/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-01-23 16:23:47', '2018-01-23 18:23:47', '{\n    \"accesspress-store::slider_speed\": {\n        \"value\": \"500\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:23:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '416c433c-60d6-408f-a18d-669d6b1bca11', '', '', '2018-01-23 16:23:47', '2018-01-23 18:23:47', '', 0, 'http://localhost/wordpress_ecommerce/416c433c-60d6-408f-a18d-669d6b1bca11/', 0, 'customize_changeset', '', 0),
(27, 1, '2018-01-23 16:24:28', '2018-01-23 18:24:28', '{\n    \"accesspress-store::slider_speed\": {\n        \"value\": \"800\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:24:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cc64db4b-9be5-436a-baf9-1a46c9935d79', '', '', '2018-01-23 16:24:28', '2018-01-23 18:24:28', '', 0, 'http://localhost/wordpress_ecommerce/cc64db4b-9be5-436a-baf9-1a46c9935d79/', 0, 'customize_changeset', '', 0),
(28, 1, '2018-01-23 16:24:55', '2018-01-23 18:24:55', '{\n    \"accesspress-store::slider_speed\": {\n        \"value\": \"1000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:24:55\"\n    },\n    \"accesspress-store::show_caption\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:24:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2a34ab7-8486-4f26-9775-08aa0bfec57c', '', '', '2018-01-23 16:24:55', '2018-01-23 18:24:55', '', 0, 'http://localhost/wordpress_ecommerce/f2a34ab7-8486-4f26-9775-08aa0bfec57c/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-01-23 16:31:10', '2018-01-23 18:31:10', '{\n    \"accesspress-store::accesspress_ticker_title\": {\n        \"value\": \"Ei, psiu! ;-)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:27:59\"\n    },\n    \"accesspress-store::accesspress_ticker_text1\": {\n        \"value\": \"Utilize o c\\u00f3digo HELLO_WORD para descontos de at\\u00e9 20% em qualquer pe\\u00e7a!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:28:59\"\n    },\n    \"accesspress-store::accesspress_ticker_text2\": {\n        \"value\": \"Black Friday com promo\\u00e7\\u00f5es imperd\\u00edveis. Aguarde...\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:29:59\"\n    },\n    \"accesspress-store::accesspress_ticker_text3\": {\n        \"value\": \"O que voc\\u00ea est\\u00e1 achando do Varal de Roupas? Deixe-nos saber!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:29:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66e10227-7fe4-48bd-ad38-783b0a726e12', '', '', '2018-01-23 16:31:10', '2018-01-23 18:31:10', '', 0, 'http://localhost/wordpress_ecommerce/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2018-01-23 16:32:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-23 16:32:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-01-23 16:32:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-23 16:32:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-01-23 16:32:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-23 16:32:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-01-23 16:33:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-23 16:33:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-01-23 16:33:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-23 16:33:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-01-23 16:55:47', '2018-01-23 18:55:47', 'Confeccionadas com malha fio 30.1 com 100% de algodão em sua composição gerando mais conforto ao cliente.', 'Camiseta Vulkanic Bordada', '<strong>U</strong>ma marca criada para atender clientes exigentes que procuram peças diferenciadas, com efeitos inusitados misturando bordados com estampas.', 'publish', 'open', 'closed', '', 'camiseta-vulkanic-bordada', '', '', '2018-01-28 21:23:33', '2018-01-28 23:23:33', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2018-01-23 16:42:30', '2018-01-23 18:42:30', '', 'camiseta vulkanic', '', 'inherit', 'open', 'closed', '', 'camiseta-vulkanic', '', '', '2018-01-23 16:42:30', '2018-01-23 18:42:30', '', 35, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/camiseta-vulkanic.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-01-23 16:52:39', '2018-01-23 18:52:39', '', 'camiseta vulkanic 2', '', 'inherit', 'open', 'closed', '', 'camiseta-vulkanic-2', '', '', '2018-01-23 16:52:39', '2018-01-23 18:52:39', '', 35, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/camiseta-vulkanic-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-01-23 16:52:40', '2018-01-23 18:52:40', '', 'camiseta vulkanic 3', '', 'inherit', 'open', 'closed', '', 'camiseta-vulkanic-3', '', '', '2018-01-23 16:52:40', '2018-01-23 18:52:40', '', 35, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/camiseta-vulkanic-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-01-23 16:52:42', '2018-01-23 18:52:42', '', 'camiseta vulkanic 4', '', 'inherit', 'open', 'closed', '', 'camiseta-vulkanic-4', '', '', '2018-01-23 16:52:42', '2018-01-23 18:52:42', '', 35, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/camiseta-vulkanic-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-01-23 16:58:05', '2018-01-23 18:58:05', '{\n    \"sidebars_widgets[product-widget-1]\": {\n        \"value\": [\n            \"text-5\",\n            \"accesspress_store_product-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:58:00\"\n    },\n    \"widget_accesspress_store_product[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjEzOiJwcm9kdWN0X3RpdGxlIjtzOjA6IiI7czoxMjoicHJvZHVjdF90eXBlIjtzOjg6ImNhdGVnb3J5IjtzOjE2OiJwcm9kdWN0X2NhdGVnb3J5IjtzOjI6IjE1IjtzOjE0OiJudW1iZXJfb2ZfcHJvZCI7aToxNjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f85b8ba76bf79eddbbc1d64b9cec1f04\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 18:58:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9fff3d2a-3421-43e6-8709-91654818f61a', '', '', '2018-01-23 16:58:05', '2018-01-23 18:58:05', '', 0, 'http://localhost/wordpress_ecommerce/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2018-01-23 17:08:45', '0000-00-00 00:00:00', '{\n    \"accesspress-store::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:06:45\"\n    },\n    \"accesspress-store::accesspress_background_type\": {\n        \"value\": \"pattern\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:06:45\"\n    },\n    \"accesspress-store::accesspress_background_image_pattern\": {\n        \"value\": \"pattern1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:08:45\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f942d9b3-e0a5-47ce-adad-dd137e5e646d', '', '', '2018-01-23 17:08:45', '2018-01-23 19:08:45', '', 0, 'http://localhost/wordpress_ecommerce/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2018-01-23 17:31:49', '0000-00-00 00:00:00', '{\n    \"accesspress-store::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:26:25\"\n    },\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-2.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:30:42\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-2.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-2.png\",\n            \"timestamp\": 1516735807846,\n            \"attachment_id\": 48,\n            \"width\": 300,\n            \"height\": 89\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:30:42\"\n    },\n    \"accesspress-store::accesspress_background_type\": {\n        \"value\": \"pattern\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:31:49\"\n    },\n    \"accesspress-store::accesspress_background_image_pattern\": {\n        \"value\": \"pattern6\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:31:49\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8b0b2e8c-a54e-42bb-98c7-54e3faa89407', '', '', '2018-01-23 17:31:49', '2018-01-23 19:31:49', '', 0, 'http://localhost/wordpress_ecommerce/?p=42', 0, 'customize_changeset', '', 0),
(49, 1, '2018-01-23 17:34:41', '2018-01-23 19:34:41', '{\n    \"accesspress-store::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:34:41\"\n    },\n    \"accesspress-store::background_repeat\": {\n        \"value\": \"repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:34:41\"\n    },\n    \"accesspress-store::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:34:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2668c202-becd-4606-9d3b-af4c122bdda2', '', '', '2018-01-23 17:34:41', '2018-01-23 19:34:41', '', 0, 'http://localhost/wordpress_ecommerce/2668c202-becd-4606-9d3b-af4c122bdda2/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-01-23 17:36:28', '0000-00-00 00:00:00', '{\n    \"accesspress-store::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:36:28\"\n    },\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-3.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:36:28\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-3.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-3.png\",\n            \"timestamp\": 1516736162688,\n            \"attachment_id\": 50,\n            \"width\": 300,\n            \"height\": 81\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:36:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f27334ed-3fd6-4b40-a039-6151596d3405', '', '', '2018-01-23 17:36:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2018-01-23 17:37:43', '2018-01-23 19:37:43', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-3.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:37:43\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"attachment_id\": 50,\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-3.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas-3.png\",\n            \"alt_text\": \"\",\n            \"attachment_parent\": 45,\n            \"width\": 300,\n            \"height\": 81,\n            \"timestamp\": [\n                \"1516736163\"\n            ]\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:37:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e82f8e04-8df5-4594-bd93-c7da1c9783c9', '', '', '2018-01-23 17:37:43', '2018-01-23 19:37:43', '', 0, 'http://localhost/wordpress_ecommerce/e82f8e04-8df5-4594-bd93-c7da1c9783c9/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-01-23 17:39:43', '2018-01-23 19:39:43', '{\n    \"accesspress-store::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:39:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e2ebb352-a4aa-4e80-8d80-10b477ea2d6f', '', '', '2018-01-23 17:39:43', '2018-01-23 19:39:43', '', 0, 'http://localhost/wordpress_ecommerce/e2ebb352-a4aa-4e80-8d80-10b477ea2d6f/', 0, 'customize_changeset', '', 0),
(56, 1, '2018-01-23 17:49:59', '2018-01-23 19:49:59', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-varal-de-roupas-2-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:49:45\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-varal-de-roupas-2-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-varal-de-roupas-2-1.jpg\",\n            \"timestamp\": 1516736978840,\n            \"attachment_id\": 57,\n            \"width\": 300,\n            \"height\": 107\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:49:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3244b9b8-2c39-4386-9e0b-2aed2934cd83', '', '', '2018-01-23 17:49:59', '2018-01-23 19:49:59', '', 0, 'http://localhost/wordpress_ecommerce/?p=56', 0, 'customize_changeset', '', 0),
(60, 1, '2018-01-23 17:59:53', '2018-01-23 19:59:53', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:59:44\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-Varal-de-roupas.png\",\n            \"timestamp\": 1516737569990,\n            \"attachment_id\": 59,\n            \"width\": 300,\n            \"height\": 94\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 19:59:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e17868e-c4bb-484a-8521-9df0bd182205', '', '', '2018-01-23 17:59:53', '2018-01-23 19:59:53', '', 0, 'http://localhost/wordpress_ecommerce/?p=60', 0, 'customize_changeset', '', 0),
(63, 1, '2018-01-23 18:24:06', '2018-01-23 20:24:06', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-teste.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 20:24:06\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-teste.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-teste.png\",\n            \"timestamp\": 1516739025467,\n            \"attachment_id\": 62,\n            \"width\": 300,\n            \"height\": 79\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 20:24:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ff64a2f-2eea-42dd-88c8-e9c322410769', '', '', '2018-01-23 18:24:06', '2018-01-23 20:24:06', '', 0, 'http://localhost/wordpress_ecommerce/6ff64a2f-2eea-42dd-88c8-e9c322410769/', 0, 'customize_changeset', '', 0),
(67, 1, '2018-01-23 18:41:42', '0000-00-00 00:00:00', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 20:41:42\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 20:41:42\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '3a801901-f8d3-413a-8411-508701c5b703', '', '', '2018-01-23 18:41:42', '2018-01-23 20:41:42', '', 0, 'http://localhost/wordpress_ecommerce/?p=67', 0, 'customize_changeset', '', 0),
(71, 1, '2018-01-23 18:47:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-23 18:47:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2018-01-23 18:50:06', '2018-01-23 20:50:06', '', 'Feminino', '', 'publish', 'closed', 'closed', '', 'feminino', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=72', 10, 'nav_menu_item', '', 0),
(73, 1, '2018-01-23 18:50:06', '2018-01-23 20:50:06', '', 'Infantil', '', 'publish', 'closed', 'closed', '', 'infantil', '', '', '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 0, 'http://localhost/wordpress_ecommerce/?p=73', 19, 'nav_menu_item', '', 0),
(77, 1, '2018-01-23 21:11:14', '2018-01-23 23:11:14', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-teste-alterado.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:10:41\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-teste-alterado.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-teste-alterado.png\",\n            \"timestamp\": 1516749022508,\n            \"attachment_id\": 76,\n            \"width\": 300,\n            \"height\": 79\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:10:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '859968e7-3d6d-4c78-b314-0dac2c171a01', '', '', '2018-01-23 21:11:14', '2018-01-23 23:11:14', '', 0, 'http://localhost/wordpress_ecommerce/?p=77', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2018-01-23 21:24:16', '2018-01-23 23:24:16', '{\n    \"accesspress-store::hide_header_product_search\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:14:56\"\n    },\n    \"accesspress-store::custom_placeholder\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:18:47\"\n    },\n    \"accesspress-store::breadcrumb_archive_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:21:58\"\n    },\n    \"accesspress-store::single_post_layout\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:22:58\"\n    },\n    \"accesspress-store::single_page_layout\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:23:58\"\n    },\n    \"accesspress-store::archive_page_layout\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:23:58\"\n    },\n    \"accesspress-store::archive_page_view_type\": {\n        \"value\": \"grid\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-23 23:23:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '39e492b9-e36a-4e18-a284-24c096f74fb3', '', '', '2018-01-23 21:24:16', '2018-01-23 23:24:16', '', 0, 'http://localhost/wordpress_ecommerce/?p=78', 0, 'customize_changeset', '', 0),
(79, 1, '2018-01-23 21:38:30', '2018-01-23 23:38:30', 'Bermudas em Brim', 'Bermuda Masculina Color', 'Bermudas em Brim\r\n\r\nCores e marcas já vem sortidas', 'publish', 'open', 'closed', '', 'bermuda-masculina-color', '', '', '2018-01-28 21:19:00', '2018-01-28 23:19:00', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2018-01-23 21:37:31', '2018-01-23 23:37:31', '', 'Bermuda Masculina Color 1', '', 'inherit', 'open', 'closed', '', 'bermuda-masculina-color-1', '', '', '2018-01-23 21:37:31', '2018-01-23 23:37:31', '', 79, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Bermuda-Masculina-Color-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-01-23 21:37:34', '2018-01-23 23:37:34', '', 'Bermuda Masculina Color 2', '', 'inherit', 'open', 'closed', '', 'bermuda-masculina-color-2', '', '', '2018-01-23 21:37:34', '2018-01-23 23:37:34', '', 79, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Bermuda-Masculina-Color-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-01-23 21:37:37', '2018-01-23 23:37:37', '', 'Bermuda Masculina Color 3', '', 'inherit', 'open', 'closed', '', 'bermuda-masculina-color-3', '', '', '2018-01-23 21:37:37', '2018-01-23 23:37:37', '', 79, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Bermuda-Masculina-Color-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-01-23 21:37:40', '2018-01-23 23:37:40', '', 'Bermuda Masculina Color 4', '', 'inherit', 'open', 'closed', '', 'bermuda-masculina-color-4', '', '', '2018-01-23 21:37:40', '2018-01-23 23:37:40', '', 79, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Bermuda-Masculina-Color-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-01-23 21:39:43', '2018-01-23 23:39:43', 'teste\n<div id=\"SL_balloon_obj\" style=\"display: block;\">\n<div id=\"SL_button\" class=\"SL_ImTranslatorLogo\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/imtranslator-s.png\') repeat scroll 0% 0%; display: none; opacity: 1;\"></div>\n<div id=\"SL_shadow_translation_result2\" style=\"display: none;\"></div>\n<div id=\"SL_shadow_translator\" style=\"display: none;\">\n<div id=\"SL_planshet\">\n<div id=\"SL_arrow_up\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/up.png\') repeat scroll 0% 0%;\"></div>\n<div id=\"SL_Bproviders\">\n<div id=\"SL_P0\" class=\"SL_BL_LABLE_ON\" title=\"Google\">G</div>\n<div id=\"SL_P1\" class=\"SL_BL_LABLE_ON\" title=\"Microsoft\">M</div>\n<div id=\"SL_P2\" class=\"SL_BL_LABLE_ON\" title=\"Translator\">T</div>\n</div>\n<div id=\"SL_alert_bbl\" style=\"display: none;\">\n<div id=\"SLHKclose\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/delete.png\') repeat scroll 0% 0%;\"></div>\n<div id=\"SL_alert_cont\"></div>\n</div>\n<div id=\"SL_TB\">\n<table id=\"SL_tables\" cellspacing=\"1\">\n<tr>\n<td class=\"SL_td\" align=\"right\" width=\"10%\"><input id=\"SL_locer\" title=\"Lock-in language\" type=\"checkbox\" /></td>\n<td class=\"SL_td\" align=\"left\" width=\"20%\"><select id=\"SL_lng_from\" style=\"background: #ffffff url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/select.png\') no-repeat scroll 100% 0px;\">\n<option value=\"auto\">Detect language</option>\n<option value=\"af\">Afrikaans</option>\n<option value=\"sq\">Albanian</option>\n<option value=\"ar\">Arabic</option>\n<option value=\"hy\">Armenian</option>\n<option value=\"az\">Azerbaijani</option>\n<option value=\"eu\">Basque</option>\n<option value=\"be\">Belarusian</option>\n<option value=\"bn\">Bengali</option>\n<option value=\"bs\">Bosnian</option>\n<option value=\"bg\">Bulgarian</option>\n<option value=\"ca\">Catalan</option>\n<option value=\"ceb\">Cebuano</option>\n<option value=\"ny\">Chichewa</option>\n<option value=\"zh-CN\">Chinese (Simplified)</option>\n<option value=\"zh-TW\">Chinese (Traditional)</option>\n<option value=\"hr\">Croatian</option>\n<option value=\"cs\">Czech</option>\n<option value=\"da\">Danish</option>\n<option value=\"nl\">Dutch</option>\n<option value=\"en\">English</option>\n<option value=\"eo\">Esperanto</option>\n<option value=\"et\">Estonian</option>\n<option value=\"tl\">Filipino</option>\n<option value=\"fi\">Finnish</option>\n<option value=\"fr\">French</option>\n<option value=\"gl\">Galician</option>\n<option value=\"ka\">Georgian</option>\n<option value=\"de\">German</option>\n<option value=\"el\">Greek</option>\n<option value=\"gu\">Gujarati</option>\n<option value=\"ht\">Haitian Creole</option>\n<option value=\"ha\">Hausa</option>\n<option value=\"iw\">Hebrew</option>\n<option value=\"hi\">Hindi</option>\n<option value=\"hmn\">Hmong</option>\n<option value=\"hu\">Hungarian</option>\n<option value=\"is\">Icelandic</option>\n<option value=\"ig\">Igbo</option>\n<option value=\"id\">Indonesian</option>\n<option value=\"ga\">Irish</option>\n<option value=\"it\">Italian</option>\n<option value=\"ja\">Japanese</option>\n<option value=\"jw\">Javanese</option>\n<option value=\"kn\">Kannada</option>\n<option value=\"kk\">Kazakh</option>\n<option value=\"km\">Khmer</option>\n<option value=\"ko\">Korean</option>\n<option value=\"lo\">Lao</option>\n<option value=\"la\">Latin</option>\n<option value=\"lv\">Latvian</option>\n<option value=\"lt\">Lithuanian</option>\n<option value=\"mk\">Macedonian</option>\n<option value=\"mg\">Malagasy</option>\n<option value=\"ms\">Malay</option>\n<option value=\"ml\">Malayalam</option>\n<option value=\"mt\">Maltese</option>\n<option value=\"mi\">Maori</option>\n<option value=\"mr\">Marathi</option>\n<option value=\"mn\">Mongolian</option>\n<option value=\"my\">Myanmar (Burmese)</option>\n<option value=\"ne\">Nepali</option>\n<option value=\"no\">Norwegian</option>\n<option value=\"fa\">Persian</option>\n<option value=\"pl\">Polish</option>\n<option value=\"pt\">Portuguese</option>\n<option value=\"pa\">Punjabi</option>\n<option value=\"ro\">Romanian</option>\n<option value=\"ru\">Russian</option>\n<option value=\"sr\">Serbian</option>\n<option value=\"st\">Sesotho</option>\n<option value=\"si\">Sinhala</option>\n<option value=\"sk\">Slovak</option>\n<option value=\"sl\">Slovenian</option>\n<option value=\"so\">Somali</option>\n<option value=\"es\">Spanish</option>\n<option value=\"su\">Sundanese</option>\n<option value=\"sw\">Swahili</option>\n<option value=\"sv\">Swedish</option>\n<option value=\"tg\">Tajik</option>\n<option value=\"ta\">Tamil</option>\n<option value=\"te\">Telugu</option>\n<option value=\"th\">Thai</option>\n<option value=\"tr\">Turkish</option>\n<option value=\"uk\">Ukrainian</option>\n<option value=\"ur\">Urdu</option>\n<option value=\"uz\">Uzbek</option>\n<option value=\"vi\">Vietnamese</option>\n<option value=\"cy\">Welsh</option>\n<option value=\"yi\">Yiddish</option>\n<option value=\"yo\">Yoruba</option>\n<option value=\"zu\">Zulu</option>\n</select></td>\n<td class=\"SL_td\" align=\"center\" width=\"3\">\n<div id=\"SL_switch_b\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/switchb.png\') repeat scroll 0% 0%;\" title=\"Switch languages\"></div></td>\n<td class=\"SL_td\" align=\"left\" width=\"20%\"><select id=\"SL_lng_to\" style=\"background: #ffffff url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/select.png\') no-repeat scroll 100% 0px;\">\n<option value=\"af\">Afrikaans</option>\n<option value=\"sq\">Albanian</option>\n<option value=\"ar\">Arabic</option>\n<option value=\"hy\">Armenian</option>\n<option value=\"az\">Azerbaijani</option>\n<option value=\"eu\">Basque</option>\n<option value=\"be\">Belarusian</option>\n<option value=\"bn\">Bengali</option>\n<option value=\"bs\">Bosnian</option>\n<option value=\"bg\">Bulgarian</option>\n<option value=\"ca\">Catalan</option>\n<option value=\"ceb\">Cebuano</option>\n<option value=\"ny\">Chichewa</option>\n<option value=\"zh-CN\">Chinese (Simplified)</option>\n<option value=\"zh-TW\">Chinese (Traditional)</option>\n<option value=\"hr\">Croatian</option>\n<option value=\"cs\">Czech</option>\n<option value=\"da\">Danish</option>\n<option value=\"nl\">Dutch</option>\n<option selected=\"selected\" value=\"en\">English</option>\n<option value=\"eo\">Esperanto</option>\n<option value=\"et\">Estonian</option>\n<option value=\"tl\">Filipino</option>\n<option value=\"fi\">Finnish</option>\n<option value=\"fr\">French</option>\n<option value=\"gl\">Galician</option>\n<option value=\"ka\">Georgian</option>\n<option value=\"de\">German</option>\n<option value=\"el\">Greek</option>\n<option value=\"gu\">Gujarati</option>\n<option value=\"ht\">Haitian Creole</option>\n<option value=\"ha\">Hausa</option>\n<option value=\"iw\">Hebrew</option>\n<option value=\"hi\">Hindi</option>\n<option value=\"hmn\">Hmong</option>\n<option value=\"hu\">Hungarian</option>\n<option value=\"is\">Icelandic</option>\n<option value=\"ig\">Igbo</option>\n<option value=\"id\">Indonesian</option>\n<option value=\"ga\">Irish</option>\n<option value=\"it\">Italian</option>\n<option value=\"ja\">Japanese</option>\n<option value=\"jw\">Javanese</option>\n<option value=\"kn\">Kannada</option>\n<option value=\"kk\">Kazakh</option>\n<option value=\"km\">Khmer</option>\n<option value=\"ko\">Korean</option>\n<option value=\"lo\">Lao</option>\n<option value=\"la\">Latin</option>\n<option value=\"lv\">Latvian</option>\n<option value=\"lt\">Lithuanian</option>\n<option value=\"mk\">Macedonian</option>\n<option value=\"mg\">Malagasy</option>\n<option value=\"ms\">Malay</option>\n<option value=\"ml\">Malayalam</option>\n<option value=\"mt\">Maltese</option>\n<option value=\"mi\">Maori</option>\n<option value=\"mr\">Marathi</option>\n<option value=\"mn\">Mongolian</option>\n<option value=\"my\">Myanmar (Burmese)</option>\n<option value=\"ne\">Nepali</option>\n<option value=\"no\">Norwegian</option>\n<option value=\"fa\">Persian</option>\n<option value=\"pl\">Polish</option>\n<option value=\"pt\">Portuguese</option>\n<option value=\"pa\">Punjabi</option>\n<option value=\"ro\">Romanian</option>\n<option value=\"ru\">Russian</option>\n<option value=\"sr\">Serbian</option>\n<option value=\"st\">Sesotho</option>\n<option value=\"si\">Sinhala</option>\n<option value=\"sk\">Slovak</option>\n<option value=\"sl\">Slovenian</option>\n<option value=\"so\">Somali</option>\n<option value=\"es\">Spanish</option>\n<option value=\"su\">Sundanese</option>\n<option value=\"sw\">Swahili</option>\n<option value=\"sv\">Swedish</option>\n<option value=\"tg\">Tajik</option>\n<option value=\"ta\">Tamil</option>\n<option value=\"te\">Telugu</option>\n<option value=\"th\">Thai</option>\n<option value=\"tr\">Turkish</option>\n<option value=\"uk\">Ukrainian</option>\n<option value=\"ur\">Urdu</option>\n<option value=\"uz\">Uzbek</option>\n<option value=\"vi\">Vietnamese</option>\n<option value=\"cy\">Welsh</option>\n<option value=\"yi\">Yiddish</option>\n<option value=\"yo\">Yoruba</option>\n<option value=\"zu\">Zulu</option>\n</select></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_TTS_voice\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/ttsvoice.png\') repeat scroll 0% 0%;\" title=\"Listen to the translation\"></div></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_copy\" class=\"SL_copy\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/copy.png\') repeat scroll 0% 0%;\" title=\"Copy translation\"></div></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_bbl_font_patch\"></div>\n<div id=\"SL_bbl_font\" class=\"SL_bbl_font\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/font.png\') repeat scroll 0% 0%;\" title=\"Font size\"></div></td>\n<td class=\"SL_td\" align=\"center\" width=\"8%\">\n<div id=\"SL_bbl_help\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/bhelp.png\') repeat scroll 0% 0%;\" title=\"Help\"></div></td>\n<td class=\"SL_td\" align=\"right\" width=\"15%\">\n<div id=\"SL_pin\" class=\"SL_pin_off\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/pin-on.png\') repeat scroll 0% 0%;\" title=\"Pin pop-up bubble\"></div></td>\n</tr>\n</table>\n</div>\n</div>\n<div id=\"SL_shadow_translation_result\" style=\"visibility: visible;\"></div>\n<div id=\"SL_loading\" class=\"SL_loading\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/loading.gif\') repeat scroll 0% 0%;\"></div>\n<div id=\"SL_player2\"></div>\n<div id=\"SL_alert100\">Text-to-speech function is limited to 200 characters</div>\n<div id=\"SL_Balloon_options\" style=\"background: #ffffff url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/bg3.png\') repeat scroll 0% 0%;\">\n<div id=\"SL_arrow_down\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/down.png\') repeat scroll 0% 0%;\"></div>\n<table id=\"SL_tbl_opt\" width=\"100%\">\n<tr>\n<td align=\"center\" width=\"5%\"><input id=\"SL_BBL_locer\" title=\"Show Translator\'s button 3 second(s)\" checked=\"checked\" type=\"checkbox\" /></td>\n<td align=\"left\" width=\"5%\">\n<div id=\"SL_BBL_IMG\" style=\"background: rgba(0, 0, 0, 0) url(\'moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/img/util/bbl-logo.png\') repeat scroll 0% 0%;\" title=\"Show Translator\'s button 3 second(s)\"></div></td>\n<td align=\"center\" width=\"70%\"><a class=\"SL_options\" title=\"Show options\" href=\"moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/html/options/options.html?bbl\" target=\"_blank\" rel=\"noopener\">Options</a> : <a class=\"SL_options\" title=\"Translation History\" href=\"moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/html/options/options.html?hist\" target=\"_blank\" rel=\"noopener\">History</a> : <a class=\"SL_options\" title=\"ImTranslator Feedback\" href=\"moz-extension://efceffef-e365-4ad4-9583-f3c933aeb86c/content/html/options/options.html?feed\" target=\"_blank\" rel=\"noopener\">Feedback</a> : <a class=\"SL_options\" title=\"Make a small contribution\" href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=GD9D8CPW8HFA2\" target=\"_blank\" rel=\"noopener\">Donate</a></td>\n<td align=\"right\" width=\"15%\"><span id=\"SL_Balloon_Close\" title=\"Close\">Close</span></td>\n</tr>\n</table>\n</div>\n</div>\n</div>', 'Bermuda Masculina Color', 'Bermudas em Brim\n\nCores e marcas já vem sortidas<img class=\"alignnone size-medium wp-image-80\" src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Bermuda-Masculina-Color-1-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />', 'inherit', 'closed', 'closed', '', '79-autosave-v1', '', '', '2018-01-23 21:39:43', '2018-01-23 23:39:43', '', 79, 'http://localhost/wordpress_ecommerce/79-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2018-01-23 22:01:23', '2018-01-24 00:01:23', '[woocommerce_cart]', 'Carrinho', '', 'publish', 'closed', 'closed', '', 'carrinho', '', '', '2018-01-24 01:08:12', '2018-01-24 03:08:12', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=85', 0, 'page', '', 0),
(86, 1, '2018-01-23 22:01:23', '2018-01-24 00:01:23', '', 'Checkout', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-01-23 22:01:23', '2018-01-24 00:01:23', '', 85, 'http://localhost/wordpress_ecommerce/85-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-01-23 22:16:05', '2018-01-24 00:16:05', '', 'Carrinho de Compras', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-01-23 22:16:05', '2018-01-24 00:16:05', '', 85, 'http://localhost/wordpress_ecommerce/85-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-01-23 23:24:11', '2018-01-24 01:24:11', '', 'Carrinho de Compras', '', 'inherit', 'closed', 'closed', '', '85-autosave-v1', '', '', '2018-01-23 23:24:11', '2018-01-24 01:24:11', '', 85, 'http://localhost/wordpress_ecommerce/85-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2018-01-23 23:25:06', '2018-01-24 01:25:06', '', 'WooCommerce_Cart', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-01-23 23:25:06', '2018-01-24 01:25:06', '', 85, 'http://localhost/wordpress_ecommerce/85-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-01-23 23:27:30', '2018-01-24 01:27:30', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\r\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins-de-semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\r\n...ou algo como:\r\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\r\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/wordpress_ecommerce/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'WooCommerce_Checkout', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-23 23:27:30', '2018-01-24 01:27:30', '', 2, 'http://localhost/wordpress_ecommerce/2-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-01-24 00:15:00', '2018-01-24 02:15:00', '', 'Carrinho', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-01-24 00:15:00', '2018-01-24 02:15:00', '', 85, 'http://localhost/wordpress_ecommerce/85-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-01-24 00:16:31', '2018-01-24 02:16:31', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\r\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins-de-semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\r\n...ou algo como:\r\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\r\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/wordpress_ecommerce/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Finalizar Compra', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-24 00:16:31', '2018-01-24 02:16:31', '', 2, 'http://localhost/wordpress_ecommerce/2-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-01-24 01:06:11', '2018-01-24 03:06:11', '[Woocommerce_cart]', 'Carrinho', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-01-24 01:06:11', '2018-01-24 03:06:11', '', 85, 'http://localhost/wordpress_ecommerce/85-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-01-24 01:08:12', '2018-01-24 03:08:12', '[woocommerce_cart]', 'Carrinho', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-01-24 01:08:12', '2018-01-24 03:08:12', '', 85, 'http://localhost/wordpress_ecommerce/85-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-01-24 01:11:13', '2018-01-24 03:11:13', '[woocommerce_checkout]', 'Finalizar Compra', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-24 01:11:13', '2018-01-24 03:11:13', '', 2, 'http://localhost/wordpress_ecommerce/2-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-01-24 01:16:57', '2018-01-24 03:16:57', '', 'HELLO_WORD', '', 'publish', 'closed', 'closed', '', '102', '', '', '2018-01-24 01:17:29', '2018-01-24 03:17:29', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=shop_coupon&#038;p=102', 0, 'shop_coupon', '', 0),
(103, 1, '2018-01-24 01:25:07', '2018-01-24 03:25:07', '[woocommerce_my_account]', 'Minha Conta', '', 'publish', 'closed', 'closed', '', 'minha-conta', '', '', '2018-01-24 01:25:07', '2018-01-24 03:25:07', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=103', 0, 'page', '', 0),
(104, 1, '2018-01-24 01:25:07', '2018-01-24 03:25:07', '[woocommerce_my_account]', 'Minha Conta', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-01-24 01:25:07', '2018-01-24 03:25:07', '', 103, 'http://localhost/wordpress_ecommerce/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-01-24 01:34:32', '2018-01-24 03:34:32', '{\n    \"accesspress-store::background_color\": {\n        \"value\": \"#fefefe\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 03:34:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7037528-a3cb-4219-b2c5-fd569452a7bf', '', '', '2018-01-24 01:34:32', '2018-01-24 03:34:32', '', 0, 'http://localhost/wordpress_ecommerce/?p=105', 0, 'customize_changeset', '', 0),
(107, 1, '2018-01-24 02:15:28', '2018-01-24 04:15:28', '', 'Descrição do produto', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-01-24 14:00:05', '2018-01-24 16:00:05', '', 0, 'http://localhost/wordpress_ecommerce/shop/', 0, 'page', '', 0),
(108, 1, '2018-01-24 02:20:34', '2018-01-24 04:20:34', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-01-24 02:20:34', '2018-01-24 04:20:34', '', 107, 'http://localhost/wordpress_ecommerce/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-01-24 02:24:27', '2018-01-24 04:24:27', '', 'Buscar produto', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-01-24 02:24:27', '2018-01-24 04:24:27', '', 107, 'http://localhost/wordpress_ecommerce/107-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-01-24 02:44:57', '2018-01-24 04:44:57', '', 'Acessórios', '', 'publish', 'closed', 'closed', '', 'acessorios', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=110', 6, 'nav_menu_item', '', 0),
(113, 1, '2018-01-24 02:47:47', '2018-01-24 04:47:47', '', 'Calça', '', 'publish', 'closed', 'closed', '', 'calcas', '', '', '2018-01-29 01:04:51', '2018-01-29 03:04:51', '', 0, 'http://localhost/wordpress_ecommerce/?p=113', 2, 'nav_menu_item', '', 0),
(114, 1, '2018-01-24 02:47:47', '2018-01-24 04:47:47', '', 'Camiseta', '', 'publish', 'closed', 'closed', '', 'camisetas', '', '', '2018-01-29 01:04:51', '2018-01-29 03:04:51', '', 0, 'http://localhost/wordpress_ecommerce/?p=114', 4, 'nav_menu_item', '', 0),
(115, 1, '2018-01-24 02:55:40', '2018-01-24 04:55:40', '', 'Carteira', '', 'publish', 'closed', 'closed', '', 'carteira', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=115', 7, 'nav_menu_item', '', 0),
(116, 1, '2018-01-24 02:55:41', '2018-01-24 04:55:41', '', 'Cinto', '', 'publish', 'closed', 'closed', '', 'cinto', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=116', 8, 'nav_menu_item', '', 0),
(117, 1, '2018-01-24 02:55:40', '2018-01-24 04:55:40', '', 'Polo', '', 'publish', 'closed', 'closed', '', 'polo', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=117', 5, 'nav_menu_item', '', 0),
(118, 1, '2018-01-24 02:55:42', '2018-01-24 04:55:42', '', 'Calça', '', 'publish', 'closed', 'closed', '', 'calcas-2', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=118', 11, 'nav_menu_item', '', 0),
(119, 1, '2018-01-24 02:55:43', '2018-01-24 04:55:43', '', 'Camiseta', '', 'publish', 'closed', 'closed', '', 'camisetas-2', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=119', 12, 'nav_menu_item', '', 0),
(120, 1, '2018-01-24 02:55:43', '2018-01-24 04:55:43', '', 'Polo', '', 'publish', 'closed', 'closed', '', 'polo-2', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=120', 13, 'nav_menu_item', '', 0),
(121, 1, '2018-01-24 02:55:44', '2018-01-24 04:55:44', '', 'Acessórios', '', 'publish', 'closed', 'closed', '', 'acessorios-2', '', '', '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 0, 'http://localhost/wordpress_ecommerce/?p=121', 15, 'nav_menu_item', '', 0),
(122, 1, '2018-01-24 02:55:45', '2018-01-24 04:55:45', '', 'Bolsa', '', 'publish', 'closed', 'closed', '', 'bolsa', '', '', '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 0, 'http://localhost/wordpress_ecommerce/?p=122', 16, 'nav_menu_item', '', 0),
(123, 1, '2018-01-24 02:55:47', '2018-01-24 04:55:47', '', 'Óculos', '', 'publish', 'closed', 'closed', '', 'oculos-2', '', '', '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 0, 'http://localhost/wordpress_ecommerce/?p=123', 18, 'nav_menu_item', '', 0),
(124, 1, '2018-01-24 02:55:41', '2018-01-24 04:55:41', '', 'Óculos', '', 'publish', 'closed', 'closed', '', 'oculos', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=124', 9, 'nav_menu_item', '', 0),
(125, 1, '2018-01-24 02:55:45', '2018-01-24 04:55:45', '', 'Cinto', '', 'publish', 'closed', 'closed', '', 'cinto-2', '', '', '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 0, 'http://localhost/wordpress_ecommerce/?p=125', 17, 'nav_menu_item', '', 0),
(126, 1, '2018-01-24 02:55:44', '2018-01-24 04:55:44', '', 'Vestido', '', 'publish', 'closed', 'closed', '', 'vestidos', '', '', '2018-01-29 01:04:52', '2018-01-29 03:04:52', '', 0, 'http://localhost/wordpress_ecommerce/?p=126', 14, 'nav_menu_item', '', 0),
(127, 1, '2018-01-24 03:09:22', '2018-01-24 05:09:22', '{\n    \"accesspress-store::accesspress_ticker_checkbox\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 05:08:39\"\n    },\n    \"accesspress-store::accesspress_ticker_text4\": {\n        \"value\": \"Os rel\\u00f3gios mais \\u00edncriveis est\\u00e3o aqui na Varal de Roupas. Confira!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 05:09:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c609595-2918-4a22-9a90-b8a9a60bd834', '', '', '2018-01-24 03:09:22', '2018-01-24 05:09:22', '', 0, 'http://localhost/wordpress_ecommerce/?p=127', 0, 'customize_changeset', '', 0),
(128, 1, '2018-01-24 03:10:57', '2018-01-24 05:10:57', '{\n    \"accesspress-store::accesspress_ticker_text3\": {\n        \"value\": \"O que voc\\u00ea est\\u00e1 achando da Varal de Roupas? Deixe-nos saber!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 05:10:57\"\n    },\n    \"accesspress-store::accesspress_ticker_text4\": {\n        \"value\": \"Os rel\\u00f3gios mais \\u00edncriveis est\\u00e3o aqui na loja Varal de Roupas. Confira!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 05:10:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f435a0a4-cd40-450c-b2f2-27a3f9793233', '', '', '2018-01-24 03:10:57', '2018-01-24 05:10:57', '', 0, 'http://localhost/wordpress_ecommerce/?p=128', 0, 'customize_changeset', '', 0),
(129, 1, '2018-01-24 12:32:03', '2018-01-24 14:32:03', '{\n    \"sidebars_widgets[header-callto-action]\": {\n        \"value\": [\n            \"accesspress_store_icon_text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:18:09\"\n    },\n    \"widget_accesspress_store_icon_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6NDoiYXNkZiI7czoxNzoiaWNvbl90ZXh0X2NvbnRlbnQiO3M6NDoiYXNkZiI7czoxNDoiaWNvbl90ZXh0X2ljb24iO3M6MTE6ImZhIGZhLW11c2ljIjtzOjE4OiJpY29uX3RleHRfcmVhZG1vcmUiO3M6MTQ6IlJlYWQgTW9yZSBUZXh0IjtzOjIzOiJpY29uX3RleHRfcmVhZG1vcmVfbGluayI7czoyNToiaHR0cDovL1JlYWQlMjBNb3JlJTIwTGluayI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1fbc553cb0cb3740d7544c21b4465afe\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:32:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9bae1abb-f2b4-4231-9395-ad71b7be08eb', '', '', '2018-01-24 12:32:03', '2018-01-24 14:32:03', '', 0, 'http://localhost/wordpress_ecommerce/?p=129', 0, 'customize_changeset', '', 0),
(130, 1, '2018-01-24 12:33:18', '2018-01-24 14:33:18', '{\n    \"widget_accesspress_store_icon_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6NDoiYXNkZiI7czoxNzoiaWNvbl90ZXh0X2NvbnRlbnQiO3M6NDoiYXNkZiI7czoxNDoiaWNvbl90ZXh0X2ljb24iO3M6MTE6ImZhIGZhLW11c2ljIjtzOjE4OiJpY29uX3RleHRfcmVhZG1vcmUiO3M6NDoiVGV4dCI7czoyMzoiaWNvbl90ZXh0X3JlYWRtb3JlX2xpbmsiO3M6ODoiaHR0cDovLyMiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7add8f05696dbdcdd190aff734fc53b4\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:33:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4ac2d826-ff5e-4da6-9939-c6b47e2381d1', '', '', '2018-01-24 12:33:18', '2018-01-24 14:33:18', '', 0, 'http://localhost/wordpress_ecommerce/4ac2d826-ff5e-4da6-9939-c6b47e2381d1/', 0, 'customize_changeset', '', 0),
(131, 1, '2018-01-24 12:34:35', '2018-01-24 14:34:35', '{\n    \"widget_accesspress_store_icon_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6Mjc6IkVzc2Ugw6kgbyB0w610dWxvIGRvIMOtY29uZSI7czoxNzoiaWNvbl90ZXh0X2NvbnRlbnQiO3M6MzA6IkVzc2Ugw6kgbyBjb250ZcO6ZG8gZG8gw61jb25lLiI7czoxNDoiaWNvbl90ZXh0X2ljb24iO3M6MTE6ImZhIGZhLW11c2ljIjtzOjE4OiJpY29uX3RleHRfcmVhZG1vcmUiO3M6NDoiVGV4dCI7czoyMzoiaWNvbl90ZXh0X3JlYWRtb3JlX2xpbmsiO3M6ODoiaHR0cDovLyMiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ba7bc73bb4a6555097ee743de5732ba8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:34:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '63e68555-adae-46c6-9c8b-268299cd745b', '', '', '2018-01-24 12:34:35', '2018-01-24 14:34:35', '', 0, 'http://localhost/wordpress_ecommerce/63e68555-adae-46c6-9c8b-268299cd745b/', 0, 'customize_changeset', '', 0),
(132, 1, '2018-01-24 12:41:54', '2018-01-24 14:41:54', '{\n    \"sidebars_widgets[header-callto-action]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:35:45\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:35:45\"\n    },\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"text-4\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:36:44\"\n    },\n    \"widget_woocommerce_widget_cart[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjEyOiJTZXUgY2FycmluaG8iO3M6MTM6ImhpZGVfaWZfZW1wdHkiO2k6MDt9\",\n            \"title\": \"Seu carrinho\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1ba7c250d0832db54a035b18575f53af\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:41:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9de10f0f-4123-4763-b1dc-64bfa568bac3', '', '', '2018-01-24 12:41:54', '2018-01-24 14:41:54', '', 0, 'http://localhost/wordpress_ecommerce/?p=132', 0, 'customize_changeset', '', 0),
(133, 1, '2018-01-24 12:56:08', '2018-01-24 14:56:08', '{\n    \"accesspress-store::breadcrumb_options_single\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:49:43\"\n    },\n    \"accesspress-store::breadcrumb_options_page\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:52:45\"\n    },\n    \"accesspress-store::breadcrumb_page_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-teste.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:56:08\"\n    },\n    \"nav_menu_item[111]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 111,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Link personalizado\",\n            \"title\": \"Fale conosco\",\n            \"url\": \"http://www.google.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 17,\n            \"position\": 20,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:56:08\"\n    },\n    \"nav_menu_item[-51599122]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 19,\n            \"type\": \"custom\",\n            \"title\": \"Marcas\",\n            \"url\": \"http://#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Marcas\",\n            \"nav_menu_term_id\": 17,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:56:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25d41d12-06ab-4b4e-a69c-ec9e95d9b4c1', '', '', '2018-01-24 12:56:08', '2018-01-24 14:56:08', '', 0, 'http://localhost/wordpress_ecommerce/?p=133', 0, 'customize_changeset', '', 0),
(134, 1, '2018-01-24 12:56:09', '2018-01-24 14:56:09', '', 'Beleza e perfume', '', 'publish', 'closed', 'closed', '', 'marcas', '', '', '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 0, 'http://localhost/wordpress_ecommerce/marcas/', 20, 'nav_menu_item', '', 0),
(135, 1, '2018-01-24 13:05:43', '2018-01-24 15:05:43', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"text-4\",\n            \"woocommerce_widget_cart-3\",\n            \"woocommerce_recent_reviews-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:05:43\"\n    },\n    \"widget_woocommerce_top_rated_products[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjMxOiJQcm9kdXRvcyBtZWxob3JlcyBjbGFzc2lmaWNhZG9zIjtzOjY6Im51bWJlciI7aToxO30=\",\n            \"title\": \"Produtos melhores classificados\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9f763a0b355a0b401c01385f7432fe2d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 14:59:09\"\n    },\n    \"widget_woocommerce_layered_nav_filters[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:03:14\"\n    },\n    \"widget_woocommerce_product_search[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:05:13\"\n    },\n    \"widget_woocommerce_recent_reviews[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:05:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '07ac761f-a303-4cdf-97a6-75b15b74135b', '', '', '2018-01-24 13:05:43', '2018-01-24 15:05:43', '', 0, 'http://localhost/wordpress_ecommerce/?p=135', 0, 'customize_changeset', '', 0),
(136, 1, '2018-01-24 13:08:30', '2018-01-24 15:08:30', '{\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:08:30\"\n    },\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"text-4\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:08:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a86eba6f-aff9-4d1f-b309-c6930f823559', '', '', '2018-01-24 13:08:30', '2018-01-24 15:08:30', '', 0, 'http://localhost/wordpress_ecommerce/a86eba6f-aff9-4d1f-b309-c6930f823559/', 0, 'customize_changeset', '', 0),
(137, 1, '2018-01-24 13:10:48', '2018-01-24 15:10:48', '{\n    \"widget_text[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjE4MzoiPGltZyBjbGFzcz0iYWxpZ25ub25lIHNpemUtbWVkaXVtIHdwLWltYWdlLTM4IiBzcmM9Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9jYW1pc2V0YS12dWxrYW5pYy0zLTMwMHgxODguanBnIiBhbHQ9IiIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIxODgiIC8+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"72bffc8352fdcc0dc4394b3a7ef0b28c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:09:59\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:09:59\"\n    },\n    \"sidebars_widgets[product-widget-1]\": {\n        \"value\": [\n            \"accesspress_store_product-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:09:59\"\n    },\n    \"widget_accesspress_store_product[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjEzOiJwcm9kdWN0X3RpdGxlIjtzOjI4OiJBUDogUHJvZHVjdCBMaXN0aW5nIFdpZGdldCAxIjtzOjEyOiJwcm9kdWN0X3R5cGUiO3M6ODoiY2F0ZWdvcnkiO3M6MTY6InByb2R1Y3RfY2F0ZWdvcnkiO3M6MjoiMTUiO3M6MTQ6Im51bWJlcl9vZl9wcm9kIjtpOjg7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"de9fc7a229dad4c4ecb3e469cadc114d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:10:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e5c297f3-86bf-4946-99f5-88ce16af791e', '', '', '2018-01-24 13:10:48', '2018-01-24 15:10:48', '', 0, 'http://localhost/wordpress_ecommerce/?p=137', 0, 'customize_changeset', '', 0),
(138, 1, '2018-01-24 13:16:57', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"text-4\",\n            \"woocommerce_widget_cart-3\",\n            \"woocommerce_products-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:16:48\"\n    },\n    \"widget_woocommerce_products[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:16:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'be4cc8c2-e808-41f3-866f-102702581587', '', '', '2018-01-24 13:16:57', '2018-01-24 15:16:57', '', 0, 'http://localhost/wordpress_ecommerce/?p=138', 0, 'customize_changeset', '', 0),
(139, 1, '2018-01-24 13:32:43', '2018-01-24 15:32:43', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-3\",\n            \"accesspress_storemo-4\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:27:54\"\n    },\n    \"widget_accesspress_store_icon_text[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:19:36\"\n    },\n    \"widget_accesspress_storemo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNzoiQ2FtaXNldGEgVnVsY2FuaWMiO3M6MTE6InByb21vX2ltYWdlIjtzOjg3OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvY2FtaXNldGEtdnVsa2FuaWMtMy5qcGciO3M6MTA6InByb21vX2Rlc2MiO3M6NTA6IkFzIG1lbGhvcmVzIHByb21vw6fDtWVzIHBhcmEgYXMgY2FtaXNldGFzIFZ1bGNhbmljIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czoxMToiVmVyIG1haXMuLi4iO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"894caf41b3a64a3656671689a7f0d59d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:25:50\"\n    },\n    \"widget_accesspress_storemo[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoyMzoiQmVybXVkYSBNYXNjdWxpbmEgQ29sb3IiO3M6MTE6InByb21vX2ltYWdlIjtzOjkzOiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvQmVybXVkYS1NYXNjdWxpbmEtQ29sb3ItMi5qcGciO3M6MTA6InByb21vX2Rlc2MiO3M6NTY6IkJlcm11ZGFzIGRlIGNvcmVzIHNvcnRpZGFzLCBhcHJvdmVpdGUgZXNzYSBvcG9ydHVuaWRhZGUhIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czoxMToiVmVyIG1haXMuLi4iO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4b041fd4394949a3f34c0b4964f81f12\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:31:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a3eceef-9a72-40bd-8409-76ea2aa4479e', '', '', '2018-01-24 13:32:43', '2018-01-24 15:32:43', '', 0, 'http://localhost/wordpress_ecommerce/?p=139', 0, 'customize_changeset', '', 0),
(140, 1, '2018-01-24 13:35:33', '2018-01-24 15:35:33', '{\n    \"widget_accesspress_storemo[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNzoiQ2FtaXNldGEgVnVsY2FuaWMiO3M6MTE6InByb21vX2ltYWdlIjtzOjg1OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvY2FtaXNldGEtdnVsa2FuaWMuanBnIjtzOjEwOiJwcm9tb19kZXNjIjtzOjQ3OiJBcyBtZWxob3JlcyBwcm9tb8Onw7VlcyBwYXJhIGNhbWlzZXRhcyBWdWxjYW5pYyI7czoxNDoicHJvbW9fbGlua19idG4iO3M6MTE6IlZlciBtYWlzLi4uIjtzOjEwOiJwcm9tb19saW5rIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e464594c6572de92419166e1021dddb8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:35:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '569ffddf-8ff5-43de-8cd9-4ffa58262930', '', '', '2018-01-24 13:35:33', '2018-01-24 15:35:33', '', 0, 'http://localhost/wordpress_ecommerce/?p=140', 0, 'customize_changeset', '', 0),
(143, 1, '2018-01-24 13:49:07', '2018-01-24 15:49:07', '{\n    \"widget_accesspress_storemo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNToiMjAlIGRlIGRlc2NvbnRvIjtzOjExOiJwcm9tb19pbWFnZSI7czo4MjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC0xLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czo4NjoiVXNlIG8gY8OzZGlnbyBIRUxMT19XT1JEIGUgZ2FuaGUgMjAlIGRlIGRlc2NvbnRvIGVtIHF1YWxxdWVyIGNvbXByYSBhcXVpIG5hIFZhcmFsISA7ICkiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjExOiJWZXIgbWFpcy4uLiI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"803e9e6202730a47b4b17b4c70451474\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:46:42\"\n    },\n    \"widget_accesspress_storemo[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoyNDoiQ2Fsw6dhZG9zLCBTYW5kw6FsaWFzLi4uIjtzOjExOiJwcm9tb19pbWFnZSI7czo4MjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC0yLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czozNjoiQSBWYXJhbCB0YW1iw6ltIGNvbnRhIGNvbSBjYWzDp2Fkb3MuIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czo4OiJDb25maXJhISI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ec7114b48af5696265f193be9f6fbcad\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 15:48:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69a3f817-d46d-4ba0-a398-91283708a14b', '', '', '2018-01-24 13:49:07', '2018-01-24 15:49:07', '', 0, 'http://localhost/wordpress_ecommerce/?p=143', 0, 'customize_changeset', '', 0),
(144, 1, '2018-01-24 13:57:38', '2018-01-24 15:57:38', '', 'Veja o produto', '', 'inherit', 'closed', 'closed', '', '107-autosave-v1', '', '', '2018-01-24 13:57:38', '2018-01-24 15:57:38', '', 107, 'http://localhost/wordpress_ecommerce/107-autosave-v1/', 0, 'revision', '', 0),
(145, 1, '2018-01-24 13:58:16', '2018-01-24 15:58:16', '', 'Anúncio do produto', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-01-24 13:58:16', '2018-01-24 15:58:16', '', 107, 'http://localhost/wordpress_ecommerce/107-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-01-24 14:00:05', '2018-01-24 16:00:05', '', 'Descrição do produto', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-01-24 14:00:05', '2018-01-24 16:00:05', '', 107, 'http://localhost/wordpress_ecommerce/107-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(147, 1, '2018-01-24 14:01:20', '2018-01-24 16:01:20', 'Bermudas em Brim', 'Bermuda Masculina Color (Copy)', 'Bermudas em Brim\r\n\r\nCores e marcas já vem sortidas', 'publish', 'open', 'closed', '', 'bermuda-masculina-color-copy', '', '', '2018-01-28 21:18:22', '2018-01-28 23:18:22', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2018-01-24 14:04:48', '2018-01-24 16:04:48', 'Confeccionadas com malha fio 30.1 com 100% de algodão em sua composição gerando mais conforto ao cliente.', 'Camiseta Vulkanic Bordada (Copy)', '<strong>U</strong>ma marca criada para atender clientes exigentes que procuram peças diferenciadas, com efeitos inusitados misturando bordados com estampas.', 'publish', 'open', 'closed', '', 'camiseta-vulkanic-bordada-copy', '', '', '2018-01-28 21:17:47', '2018-01-28 23:17:47', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2018-01-24 14:10:40', '2018-01-24 16:10:40', 'Confeccionadas com malha fio 30.1 com 100% de algodão em sua composição gerando mais conforto ao cliente.', 'Camiseta Vulkanic Bordada', '<p><strong>U</strong>ma marca criada para atender clientes exigentes que procuram peças diferenciadas, com efeitos inusitados misturando bordados com estampas.</p>', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2018-01-24 14:10:40', '2018-01-24 16:10:40', '', 35, 'http://localhost/wordpress_ecommerce/35-autosave-v1/', 0, 'revision', '', 0),
(150, 1, '2018-01-24 14:20:11', '2018-01-24 16:20:11', '{\n    \"sidebars_widgets[promo-widget-2]\": {\n        \"value\": [\n            \"accesspress_store_full_promo-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:16:11\"\n    },\n    \"widget_accesspress_storemo[6]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:11:48\"\n    },\n    \"widget_text[12]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjE4MDoiPGltZyBjbGFzcz0iYWxpZ25ub25lIHNpemUtbWVkaXVtIHdwLWltYWdlLTE1MSIgc3JjPSJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvUHJvbW8tV2lkZ2V0LUZ1bGwtMzAweDYwLmpwZyIgYWx0PSIiIHdpZHRoPSIzMDAiIGhlaWdodD0iNjAiIC8+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a52c8899d0b19247d9086ac7cc869e9c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:15:09\"\n    },\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoyNjoiQ29uZmlyYSBtdWxoZXJhZGEgZXhpZ2VudGUiO3M6MTE6InByb21vX2ltYWdlIjtzOjg1OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvUHJvbW8tV2lkZ2V0LUZ1bGwuanBnIjtzOjExOiJwcm9tb19zdHlsZSI7czo5OiJzdHlsZV90d28iO3M6MTU6InByb21vX3RpdGxlX3N1YiI7czoyMzoidGVzdGUgdGVzdGUgdGVzdGUgdGVzdGUiO3M6MTA6InByb21vX2Rlc2MiO3M6Mjk6IkVzc2Egw6kgdW1hIGZyYXNlIHByb21vY2lvbmFsIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czowOiIiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0f153c457f57bc9b06e76f20d147281d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:20:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68eef95f-7784-4800-b15c-4b9ef99ab548', '', '', '2018-01-24 14:20:11', '2018-01-24 16:20:11', '', 0, 'http://localhost/wordpress_ecommerce/?p=150', 0, 'customize_changeset', '', 0),
(152, 1, '2018-01-24 14:21:08', '2018-01-24 16:21:08', '{\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoyNjoiQ29uZmlyYSBtdWxoZXJhZGEgZXhpZ2VudGUiO3M6MTE6InByb21vX2ltYWdlIjtzOjg1OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvUHJvbW8tV2lkZ2V0LUZ1bGwuanBnIjtzOjExOiJwcm9tb19zdHlsZSI7czo5OiJzdHlsZV9vbmUiO3M6MTU6InByb21vX3RpdGxlX3N1YiI7czoyMzoidGVzdGUgdGVzdGUgdGVzdGUgdGVzdGUiO3M6MTA6InByb21vX2Rlc2MiO3M6Mjk6IkVzc2Egw6kgdW1hIGZyYXNlIHByb21vY2lvbmFsIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czowOiIiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"726041ef9af1cad08e92ed979106af14\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:21:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d45ddcb-da21-4b3f-8bc5-d50dc263defb', '', '', '2018-01-24 14:21:08', '2018-01-24 16:21:08', '', 0, 'http://localhost/wordpress_ecommerce/8d45ddcb-da21-4b3f-8bc5-d50dc263defb/', 0, 'customize_changeset', '', 0),
(153, 1, '2018-01-24 14:22:20', '2018-01-24 16:22:20', '{\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxODoiTXVsaGVyYWRhIGV4aWdlbnRlIjtzOjExOiJwcm9tb19pbWFnZSI7czo4NToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC1GdWxsLmpwZyI7czoxMToicHJvbW9fc3R5bGUiO3M6OToic3R5bGVfb25lIjtzOjE1OiJwcm9tb190aXRsZV9zdWIiO3M6MjM6InRlc3RlIHRlc3RlIHRlc3RlIHRlc3RlIjtzOjEwOiJwcm9tb19kZXNjIjtzOjI5OiJFc3NhIMOpIHVtYSBmcmFzZSBwcm9tb2Npb25hbCI7czoxNDoicHJvbW9fbGlua19idG4iO3M6MDoiIjtzOjEwOiJwcm9tb19saW5rIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e44bcff3536c5c18d88dc6a223945105\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:22:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f852a43b-0670-4738-a82f-09e4e9c99608', '', '', '2018-01-24 14:22:20', '2018-01-24 16:22:20', '', 0, 'http://localhost/wordpress_ecommerce/f852a43b-0670-4738-a82f-09e4e9c99608/', 0, 'customize_changeset', '', 0),
(154, 1, '2018-01-24 14:27:17', '2018-01-24 16:27:17', '{\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxNToiTXVsaGVyIGV4aWdlbnRlIjtzOjExOiJwcm9tb19pbWFnZSI7czo4NToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC1GdWxsLmpwZyI7czoxMToicHJvbW9fc3R5bGUiO3M6OToic3R5bGVfb25lIjtzOjE1OiJwcm9tb190aXRsZV9zdWIiO3M6NzU6IkEgbG9qYSBWYXJhbCBkZSBSb3VwYXMgdHLDoXMgb3DDp8O1ZXMgw61uY3JpdmVpcyBwYXJhIGEgbXVsaGVyYWRhIGV4aWdlbnRlISI7czoxMDoicHJvbW9fZGVzYyI7czozMzoiQ29uZmlyYSBvIHF1ZSB0ZW1vcyBwYXJhIHZvY8OqLi4uIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czowOiIiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e497b1fe2e64168764e3bffb17007327\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:27:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ed6ed98-ae5a-4da5-98a7-3182d123c2f9', '', '', '2018-01-24 14:27:17', '2018-01-24 16:27:17', '', 0, 'http://localhost/wordpress_ecommerce/?p=154', 0, 'customize_changeset', '', 0),
(155, 1, '2018-01-24 14:30:06', '2018-01-24 16:30:06', '{\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxMzoiTW9kYSBGZW1pbmluYSI7czoxMToicHJvbW9faW1hZ2UiO3M6ODU6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtRnVsbC5qcGciO3M6MTE6InByb21vX3N0eWxlIjtzOjk6InN0eWxlX29uZSI7czoxNToicHJvbW9fdGl0bGVfc3ViIjtzOjc1OiJBIGxvamEgVmFyYWwgZGUgUm91cGFzIHRyw6FzIG9ww6fDtWVzIMOtbmNyaXZlaXMgcGFyYSBhIG11bGhlcmFkYSBleGlnZW50ZSEiO3M6MTA6InByb21vX2Rlc2MiO3M6MzM6IkNvbmZpcmEgbyBxdWUgdGVtb3MgcGFyYSB2b2PDqi4uLiI7czoxNDoicHJvbW9fbGlua19idG4iO3M6MDoiIjtzOjEwOiJwcm9tb19saW5rIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f5f22f4997fe7d262ab79a19f2e89528\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:29:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ae161374-0109-4f59-8ad2-a0c8a8902da4', '', '', '2018-01-24 14:30:06', '2018-01-24 16:30:06', '', 0, 'http://localhost/wordpress_ecommerce/?p=155', 0, 'customize_changeset', '', 0),
(157, 1, '2018-01-24 14:36:12', '2018-01-24 16:36:12', '{\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxMzoiTW9kYSBGZW1pbmluYSI7czoxMToicHJvbW9faW1hZ2UiO3M6ODU6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtRnVsbC5wbmciO3M6MTE6InByb21vX3N0eWxlIjtzOjk6InN0eWxlX29uZSI7czoxNToicHJvbW9fdGl0bGVfc3ViIjtzOjc1OiJBIGxvamEgVmFyYWwgZGUgUm91cGFzIHRyw6FzIG9ww6fDtWVzIMOtbmNyaXZlaXMgcGFyYSBhIG11bGhlcmFkYSBleGlnZW50ZSEiO3M6MTA6InByb21vX2Rlc2MiO3M6MzM6IkNvbmZpcmEgbyBxdWUgdGVtb3MgcGFyYSB2b2PDqi4uLiI7czoxNDoicHJvbW9fbGlua19idG4iO3M6MDoiIjtzOjEwOiJwcm9tb19saW5rIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b8ea8b4351c06d2511f2bcdbaf08b2a9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:35:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b90e5f55-c229-4606-a4b3-37c720b0db1a', '', '', '2018-01-24 14:36:12', '2018-01-24 16:36:12', '', 0, 'http://localhost/wordpress_ecommerce/?p=157', 0, 'customize_changeset', '', 0),
(158, 1, '2018-01-24 14:40:37', '2018-01-24 16:40:37', '{\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxMzoiTW9kYSBGZW1pbmluYSI7czoxMToicHJvbW9faW1hZ2UiO3M6ODU6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtRnVsbC5wbmciO3M6MTE6InByb21vX3N0eWxlIjtzOjk6InN0eWxlX29uZSI7czoxNToicHJvbW9fdGl0bGVfc3ViIjtzOjcwOiJBIFZhcmFsIGRlIFJvdXBhcyB0csOhcyBvcMOnw7VlcyDDrW5jcml2ZWlzIHBhcmEgYSBtdWxoZXJhZGEgZXhpZ2VudGUhIjtzOjEwOiJwcm9tb19kZXNjIjtzOjMzOiJDb25maXJhIG8gcXVlIHRlbW9zIHBhcmEgdm9jw6ouLi4iO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjA6IiI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f7f7cce1f985f3dc7d46ca34d3e55f06\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:40:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7dd3e295-c680-43e1-8b9f-38ed79f67380', '', '', '2018-01-24 14:40:37', '2018-01-24 16:40:37', '', 0, 'http://localhost/wordpress_ecommerce/7dd3e295-c680-43e1-8b9f-38ed79f67380/', 0, 'customize_changeset', '', 0),
(159, 1, '2018-01-24 14:44:07', '2018-01-24 16:44:07', '{\n    \"widget_accesspress_store_full_promo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxMzoiTW9kYSBGZW1pbmluYSI7czoxMToicHJvbW9faW1hZ2UiO3M6ODU6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtRnVsbC5wbmciO3M6MTE6InByb21vX3N0eWxlIjtzOjk6InN0eWxlX29uZSI7czoxNToicHJvbW9fdGl0bGVfc3ViIjtzOjM0OiJDb25maXJhIHRvZGFzIGFzIG5vc3NhcyBub3ZpZGFkZXMhIjtzOjEwOiJwcm9tb19kZXNjIjtzOjU3OiJOw6NvIMOpIGEgdG9hIHF1ZSBhIHBlw6dhIG1haXMgZm9ydGUgZG8gam9nbyDDqSB1bWEgZGFtYSEiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjA6IiI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9146e3eba6af494747225e6edcf0f319\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:44:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ec8fdf4-3502-4c24-9b21-105799fcb6f2', '', '', '2018-01-24 14:44:07', '2018-01-24 16:44:07', '', 0, 'http://localhost/wordpress_ecommerce/?p=159', 0, 'customize_changeset', '', 0),
(161, 1, '2018-01-24 14:54:22', '2018-01-24 16:54:22', '{\n    \"sidebars_widgets[product-widget-2]\": {\n        \"value\": [\n            \"text-7\",\n            \"accesspress_store_product2-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:53:14\"\n    },\n    \"widget_accesspress_store_product2[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjE3OiJwcm9kdWN0X2FsaWdubWVudCI7czoxMDoibGVmdF9hbGlnbiI7czoxNjoicHJvZHVjdF9jYXRlZ29yeSI7czoyOiIxNSI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0a3fdbdecdbc424ca30544a0c9a40783\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:54:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21d0654d-c7be-4785-8071-905dc6cd73a2', '', '', '2018-01-24 14:54:22', '2018-01-24 16:54:22', '', 0, 'http://localhost/wordpress_ecommerce/?p=161', 0, 'customize_changeset', '', 0),
(162, 1, '2018-01-24 15:00:21', '2018-01-24 17:00:21', '{\n    \"sidebars_widgets[product-widget-2]\": {\n        \"value\": [\n            \"accesspress_store_product-5\",\n            \"accesspress_store_product2-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:00:21\"\n    },\n    \"widget_accesspress_cta_simple[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE2OiJjdGFfc2ltcGxlX3RpdGxlIjtzOjE1OiJUaXR1bG8gZGUgdGVzdGUiO3M6MTU6ImN0YV9zaW1wbGVfZGVzYyI7czoyMDoiRGVzY3Jpw6fDo28gZGUgdGVzdGUiO3M6MTk6ImN0YV9zaW1wbGVfYnRuX3RleHQiO3M6MTU6IkJvdMOjbyBkZSB0ZXN0ZSI7czoyMjoiY3RhX3NpbXBsZV9mb250X2F3c29tZSI7czo2OiJib3TDo28iO3M6MTg6ImN0YV9zaW1wbGVfYnRuX3VybCI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"19d7c699e390557be382a2af9ab7f946\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 16:58:09\"\n    },\n    \"widget_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjA6IiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"830b80fa9726c8cc5c1a1ed22a9a11c6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:00:08\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:00:08\"\n    },\n    \"widget_accesspress_store_product[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjEzOiJwcm9kdWN0X3RpdGxlIjtzOjI4OiJBUDogUHJvZHVjdCBMaXN0aW5nIFdpZGdldCAyIjtzOjEyOiJwcm9kdWN0X3R5cGUiO3M6ODoiY2F0ZWdvcnkiO3M6MTY6InByb2R1Y3RfY2F0ZWdvcnkiO3M6MjoiMTUiO3M6MTQ6Im51bWJlcl9vZl9wcm9kIjtpOjg7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1f20f5943105adc5c63d33258629980c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:00:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '09080cab-a3c9-40b1-b276-60da35e33402', '', '', '2018-01-24 15:00:21', '2018-01-24 17:00:21', '', 0, 'http://localhost/wordpress_ecommerce/?p=162', 0, 'customize_changeset', '', 0),
(163, 1, '2018-01-24 15:04:18', '2018-01-24 17:04:18', '{\n    \"widget_accesspress_store_product[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjEzOiJwcm9kdWN0X3RpdGxlIjtzOjA6IiI7czoxMjoicHJvZHVjdF90eXBlIjtzOjg6ImNhdGVnb3J5IjtzOjE2OiJwcm9kdWN0X2NhdGVnb3J5IjtzOjI6IjE1IjtzOjE0OiJudW1iZXJfb2ZfcHJvZCI7aTo4O30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"83591708ffe8391e4d976584bd91cf89\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:04:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6fd01a1f-b6bc-4ec8-bdd7-f5b074289b54', '', '', '2018-01-24 15:04:18', '2018-01-24 17:04:18', '', 0, 'http://localhost/wordpress_ecommerce/6fd01a1f-b6bc-4ec8-bdd7-f5b074289b54/', 0, 'customize_changeset', '', 0),
(164, 1, '2018-01-24 15:09:12', '2018-01-24 17:09:12', 'Confeccionadas com malha fio 30.1 com 100% de algodão em sua composição gerando mais conforto ao cliente.\r\n\r\nUma marca criada para atender clientes exigentes que procuram peças diferenciadas, com efeitos inusitados misturando bordados com estampas.', '(AT) Camiseta Vulkanic Bordada copy copy', '<img class=\"alignnone size-full wp-image-290\" src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/FRETE-GRATIS.jpg\" alt=\"\" width=\"228\" height=\"74\" /><img class=\"alignnone wp-image-291\" src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/icone_setor_atacado.png\" alt=\"\" width=\"73\" height=\"75\" />\r\n\r\n<strong>MÚLTIPLO: 10 UN (Cada 1 unidade corresponde a 10)</strong>\r\n\r\nVários tamanhos disponíveis!', 'publish', 'open', 'closed', '', 'camiseta-vulkanic-bordada-copy-copy', '', '', '2018-01-29 13:44:55', '2018-01-29 15:44:55', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&#038;p=164', 3, 'product', '', 0),
(165, 1, '2018-01-24 15:14:46', '2018-01-24 17:14:46', '{\n    \"widget_accesspress_store_product[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjEzOiJwcm9kdWN0X3RpdGxlIjtzOjI4OiJBUDogUHJvZHVjdCBMaXN0aW5nIFdpZGdldCAyIjtzOjEyOiJwcm9kdWN0X3R5cGUiO3M6ODoiY2F0ZWdvcnkiO3M6MTY6InByb2R1Y3RfY2F0ZWdvcnkiO3M6MjoiMTUiO3M6MTQ6Im51bWJlcl9vZl9wcm9kIjtpOjEyO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9f58b875e0adb2b1fc905641149cc4fe\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:14:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68bc5b55-1bdd-49c6-9fae-b5a98c0a6dfb', '', '', '2018-01-24 15:14:46', '2018-01-24 17:14:46', '', 0, 'http://localhost/wordpress_ecommerce/68bc5b55-1bdd-49c6-9fae-b5a98c0a6dfb/', 0, 'customize_changeset', '', 0),
(166, 1, '2018-01-24 15:14:55', '2018-01-24 17:14:55', '{\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\",\n            \"text-7\",\n            \"accesspress_store_product2-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:14:55\"\n    },\n    \"sidebars_widgets[product-widget-2]\": {\n        \"value\": [\n            \"accesspress_store_product-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:14:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d331b3d-6ce8-44e4-95df-47fb321ca0a9', '', '', '2018-01-24 15:14:55', '2018-01-24 17:14:55', '', 0, 'http://localhost/wordpress_ecommerce/8d331b3d-6ce8-44e4-95df-47fb321ca0a9/', 0, 'customize_changeset', '', 0),
(167, 1, '2018-01-24 15:15:14', '2018-01-24 17:15:14', '{\n    \"widget_accesspress_store_product[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjEzOiJwcm9kdWN0X3RpdGxlIjtzOjI4OiJBUDogUHJvZHVjdCBMaXN0aW5nIFdpZGdldCAxIjtzOjEyOiJwcm9kdWN0X3R5cGUiO3M6ODoiY2F0ZWdvcnkiO3M6MTY6InByb2R1Y3RfY2F0ZWdvcnkiO3M6MjoiMTUiO3M6MTQ6Im51bWJlcl9vZl9wcm9kIjtpOjEyO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"94961213b26c42ab150d566dbb048896\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:15:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cccd30ad-2268-45b4-8d96-87617ea13df3', '', '', '2018-01-24 15:15:14', '2018-01-24 17:15:14', '', 0, 'http://localhost/wordpress_ecommerce/cccd30ad-2268-45b4-8d96-87617ea13df3/', 0, 'customize_changeset', '', 0),
(168, 1, '2018-01-24 15:21:20', '2018-01-24 17:21:20', '{\n    \"sidebars_widgets[product-widget-3]\": {\n        \"value\": [\n            \"text-9\",\n            \"accesspress_store_product2-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:21:20\"\n    },\n    \"widget_accesspress_store_product[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjEzOiJwcm9kdWN0X3RpdGxlIjtzOjQ6ImFzZGYiO3M6MTI6InByb2R1Y3RfdHlwZSI7czo4OiJjYXRlZ29yeSI7czoxNjoicHJvZHVjdF9jYXRlZ29yeSI7czoyOiIxNSI7czoxNDoibnVtYmVyX29mX3Byb2QiO2k6Njt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a97216fa8fc896090819c3f002d09bd8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:20:38\"\n    },\n    \"widget_accesspress_store_product[8]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:21:20\"\n    },\n    \"widget_accesspress_store_product2[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjE3OiJwcm9kdWN0X2FsaWdubWVudCI7czoxMDoibGVmdF9hbGlnbiI7czoxNjoicHJvZHVjdF9jYXRlZ29yeSI7czoyOiIxNSI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0a3fdbdecdbc424ca30544a0c9a40783\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:21:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f5d3d56-8aac-4426-acb3-dd9f6d561ca1', '', '', '2018-01-24 15:21:20', '2018-01-24 17:21:20', '', 0, 'http://localhost/wordpress_ecommerce/?p=168', 0, 'customize_changeset', '', 0),
(169, 1, '2018-01-24 15:22:09', '2018-01-24 17:22:09', '{\n    \"sidebars_widgets[promo-widget-3]\": {\n        \"value\": [\n            \"text-10\",\n            \"accesspress_store_product2-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:22:09\"\n    },\n    \"widget_accesspress_store_product2[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjE3OiJwcm9kdWN0X2FsaWdubWVudCI7czoxMToicmlnaHRfYWxpZ24iO3M6MTY6InByb2R1Y3RfY2F0ZWdvcnkiO3M6MjoiMTUiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1ae0e19a568bccec717687c97ba9af0e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:22:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '37bbee66-0d29-44c8-a8bd-7ef5ecc7021b', '', '', '2018-01-24 15:22:09', '2018-01-24 17:22:09', '', 0, 'http://localhost/wordpress_ecommerce/37bbee66-0d29-44c8-a8bd-7ef5ecc7021b/', 0, 'customize_changeset', '', 0),
(170, 1, '2018-01-24 15:23:36', '2018-01-24 17:23:36', '{\n    \"sidebars_widgets[product-widget-3]\": {\n        \"value\": [\n            \"text-9\",\n            \"accesspress_store_product2-5\",\n            \"accesspress_store_product2-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:23:17\"\n    },\n    \"widget_accesspress_store_product2[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjE3OiJwcm9kdWN0X2FsaWdubWVudCI7czoxMToicmlnaHRfYWxpZ24iO3M6MTY6InByb2R1Y3RfY2F0ZWdvcnkiO3M6MjoiMTUiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1ae0e19a568bccec717687c97ba9af0e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:23:36\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\",\n            \"text-7\",\n            \"accesspress_store_product2-3\",\n            \"accesspress_store_product2-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:23:36\"\n    },\n    \"sidebars_widgets[promo-widget-3]\": {\n        \"value\": [\n            \"text-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 17:23:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aed3f9f2-7843-49b5-8791-aeb2b1045e3c', '', '', '2018-01-24 15:23:36', '2018-01-24 17:23:36', '', 0, 'http://localhost/wordpress_ecommerce/?p=170', 0, 'customize_changeset', '', 0),
(171, 1, '2018-01-24 16:48:02', '2018-01-24 18:48:02', '{\n    \"widget_accesspress_storemo[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoyMjoiQ2Fsw6dhZG9zICYgU2FuZMOhbGlhcyI7czoxMToicHJvbW9faW1hZ2UiO3M6ODI6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtMi5qcGciO3M6MTA6InByb21vX2Rlc2MiO3M6MzY6IkEgVmFyYWwgdGFtYsOpbSBjb250YSBjb20gY2Fsw6dhZG9zLiI7czoxNDoicHJvbW9fbGlua19idG4iO3M6ODoiQ29uZmlyYSEiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"52fe0306cb3c6466fda29f13a2f8474c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:48:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bc678967-b492-453e-a025-84aa6d77f8ea', '', '', '2018-01-24 16:48:02', '2018-01-24 18:48:02', '', 0, 'http://localhost/wordpress_ecommerce/bc678967-b492-453e-a025-84aa6d77f8ea/', 0, 'customize_changeset', '', 0),
(172, 1, '2018-01-24 16:48:59', '2018-01-24 18:48:59', '{\n    \"widget_accesspress_storemo[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoyMjoiQ2Fsw6dhZG9zICYgU2FuZMOhbGlhcyI7czoxMToicHJvbW9faW1hZ2UiO3M6ODI6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtMi5qcGciO3M6MTA6InByb21vX2Rlc2MiO3M6NDY6IkEgVmFyYWwgZGUgcm91cGFzIHRhbWLDqW0gY29udGEgY29tIGNhbMOnYWRvcy4iO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjg6IkNvbmZpcmEhIjtzOjEwOiJwcm9tb19saW5rIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ab0c872d9edfac40a513b79068d4c062\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:48:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dae931ee-c47f-4d74-9b34-d4716c9ee95a', '', '', '2018-01-24 16:48:59', '2018-01-24 18:48:59', '', 0, 'http://localhost/wordpress_ecommerce/dae931ee-c47f-4d74-9b34-d4716c9ee95a/', 0, 'customize_changeset', '', 0),
(173, 1, '2018-01-24 16:50:02', '2018-01-24 18:50:02', '{\n    \"widget_accesspress_storemo[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoyMjoiQ2Fsw6dhZG9zICYgU2FuZMOhbGlhcyI7czoxMToicHJvbW9faW1hZ2UiO3M6ODI6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtMi5qcGciO3M6MTA6InByb21vX2Rlc2MiO3M6MzU6IkNvbmZvcnRlIGUgcXVhbGlkYWRlIGFvcyBzZXVzIHDDqXMhIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czo4OiJDb25maXJhISI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"10d7952d5668b4a9a1d40604cd2b706b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:50:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '265b7de7-be64-4fe6-a15f-703532b4cbf7', '', '', '2018-01-24 16:50:02', '2018-01-24 18:50:02', '', 0, 'http://localhost/wordpress_ecommerce/265b7de7-be64-4fe6-a15f-703532b4cbf7/', 0, 'customize_changeset', '', 0),
(174, 1, '2018-01-24 16:50:26', '2018-01-24 18:50:26', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-4\",\n            \"accesspress_storemo-3\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:50:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec2e856b-0970-43c7-9a88-1e166fac4faa', '', '', '2018-01-24 16:50:26', '2018-01-24 18:50:26', '', 0, 'http://localhost/wordpress_ecommerce/ec2e856b-0970-43c7-9a88-1e166fac4faa/', 0, 'customize_changeset', '', 0),
(175, 1, '2018-01-24 17:02:50', '2018-01-24 19:02:50', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-4\",\n            \"woocommerce_widget_cart-3\",\n            \"accesspress_storemo-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:53:57\"\n    },\n    \"widget_accesspress_storemo[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNToiMjAlIGRlIGRlc2NvbnRvIjtzOjExOiJwcm9tb19pbWFnZSI7czowOiIiO3M6MTA6InByb21vX2Rlc2MiO3M6NDM6IlVzZSBvIGPDs2RpZ28gSEVMTE9fV09SRCBlIGdhbmhlIGFwcm92ZWl0ZSEiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjA6IiI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"965cebb20b1e26c8a7e0eed68c6433a6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 19:02:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d12298c-fcbe-4509-84d1-fcd316b74fdf', '', '', '2018-01-24 17:02:50', '2018-01-24 19:02:50', '', 0, 'http://localhost/wordpress_ecommerce/?p=175', 0, 'customize_changeset', '', 0),
(178, 1, '2018-01-24 16:59:20', '2018-01-24 18:59:20', '{\n    \"widget_accesspress_storemo[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNToiMjAlIGRlIGRlc2NvbnRvIjtzOjExOiJwcm9tb19pbWFnZSI7czo4MjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC0xLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czowOiIiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjExOiJWZXIgbWFpcy4uLiI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"26aa1a11fc4bb2cfc1eca3bec35ffe40\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:59:20\"\n    },\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-4\",\n            \"accesspress_storemo-8\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:59:20\"\n    },\n    \"widget_accesspress_storemo[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNToiMjAlIGRlIGRlc2NvbnRvIjtzOjExOiJwcm9tb19pbWFnZSI7czo4MjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC0xLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czo4NjoiVXNlIG8gY8OzZGlnbyBIRUxMT19XT1JEIGUgZ2FuaGUgMjAlIGRlIGRlc2NvbnRvIGVtIHF1YWxxdWVyIGNvbXByYSBhcXVpIG5hIFZhcmFsISA7ICkiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjc6IkNvbmZpcmEiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0c6a496433d52434b76698feb10c9737\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 18:59:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '30e0e615-0f26-401d-8e9c-d42eb7571f94', '', '', '2018-01-24 16:59:20', '2018-01-24 18:59:20', '', 0, 'http://localhost/wordpress_ecommerce/30e0e615-0f26-401d-8e9c-d42eb7571f94/', 0, 'customize_changeset', '', 0),
(179, 1, '2018-01-24 17:00:34', '2018-01-24 19:00:34', '{\n    \"widget_accesspress_storemo[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNToiMjAlIGRlIGRlc2NvbnRvIjtzOjExOiJwcm9tb19pbWFnZSI7czo4MjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC0xLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czo4NjoiVXNlIG8gY8OzZGlnbyBIRUxMT19XT1JEIGUgZ2FuaGUgMjAlIGRlIGRlc2NvbnRvIGVtIHF1YWxxdWVyIGNvbXByYSBhcXVpIG5hIFZhcmFsISA7ICkiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjEzOiJTYWliYSBtYWlzLi4uIjtzOjEwOiJwcm9tb19saW5rIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0a841bb8534fe6687c6bd0b416722f2f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 19:00:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eab1588e-9c32-4958-becd-ccf28a855530', '', '', '2018-01-24 17:00:34', '2018-01-24 19:00:34', '', 0, 'http://localhost/wordpress_ecommerce/eab1588e-9c32-4958-becd-ccf28a855530/', 0, 'customize_changeset', '', 0),
(180, 1, '2018-01-24 17:03:49', '2018-01-24 19:03:49', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-4\",\n            \"accesspress_storemo-8\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 19:03:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '46a25e8d-481f-4b9d-a234-6d980f035748', '', '', '2018-01-24 17:03:49', '2018-01-24 19:03:49', '', 0, 'http://localhost/wordpress_ecommerce/46a25e8d-481f-4b9d-a234-6d980f035748/', 0, 'customize_changeset', '', 0),
(182, 1, '2018-01-24 17:16:20', '2018-01-24 19:16:20', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-varal-de-roupas-2-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 19:16:20\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"attachment_id\": 57,\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-varal-de-roupas-2-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-varal-de-roupas-2-1.jpg\",\n            \"alt_text\": \"\",\n            \"attachment_parent\": 54,\n            \"width\": 300,\n            \"height\": 107,\n            \"timestamp\": [\n                \"1516736999\"\n            ]\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 19:16:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '91926468-7c21-48a8-b453-fd062fe553ee', '', '', '2018-01-24 17:16:20', '2018-01-24 19:16:20', '', 0, 'http://localhost/wordpress_ecommerce/91926468-7c21-48a8-b453-fd062fe553ee/', 0, 'customize_changeset', '', 0),
(183, 1, '2018-01-24 17:17:29', '2018-01-24 19:17:29', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-teste-alterado.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 19:17:29\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"attachment_id\": 76,\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-teste-alterado.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-teste-alterado.png\",\n            \"alt_text\": \"\",\n            \"attachment_parent\": 75,\n            \"width\": 300,\n            \"height\": 79,\n            \"timestamp\": [\n                \"1516749074\"\n            ]\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 19:17:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4c967d8-3d42-4a5d-a082-bd1103a21649', '', '', '2018-01-24 17:17:29', '2018-01-24 19:17:29', '', 0, 'http://localhost/wordpress_ecommerce/c4c967d8-3d42-4a5d-a082-bd1103a21649/', 0, 'customize_changeset', '', 0),
(186, 1, '2018-01-24 18:53:54', '2018-01-24 20:53:54', '', 'Order &ndash; Janeiro 24, 2018 @ 06:53 PM', '', 'wc-completed', 'open', 'closed', 'order_5a68f26266a3f', 'order-jan-24-2018-0853-pm', '', '', '2018-01-24 19:21:28', '2018-01-24 21:21:28', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=shop_order&#038;p=186', 0, 'shop_order', '', 3),
(187, 1, '2018-01-29 13:41:29', '2018-01-29 15:41:29', 'Confeccionadas com malha fio 30.1 com 100% de algodão em sua composição gerando mais conforto ao cliente.\n\nUma marca criada para atender clientes exigentes que procuram peças diferenciadas, com efeitos inusitados misturando bordados com estampas.', '(AT) Camiseta Vulkanic Bordada copy copy', '<p><img class=\"alignnone size-full wp-image-290\" src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/FRETE-GRATIS.jpg\" alt=\"\" data-mce-src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/FRETE-GRATIS.jpg\" width=\"228\" height=\"74\"><img class=\"alignnone wp-image-291\" src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/icone_setor_atacado.png\" alt=\"\" data-mce-src=\"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/icone_setor_atacado.png\" width=\"73\" height=\"75\"></p><p><strong>MÚLTIPLO: 10 UN&nbsp;(Cada 1 unidade corresponde a 10)</strong></p><p>Vários tamanhos disponíveis!</p>', 'inherit', 'closed', 'closed', '', '164-autosave-v1', '', '', '2018-01-29 13:41:29', '2018-01-29 15:41:29', '', 164, 'http://localhost/wordpress_ecommerce/164-autosave-v1/', 0, 'revision', '', 0),
(188, 1, '2018-01-25 01:45:47', '2018-01-25 03:45:47', '', 'Order &ndash; Janeiro 25, 2018 @ 01:45 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5a6952eb138c0', 'pedido-25-de-jan-de-2018-as-034545', '', '', '2018-01-25 01:54:15', '2018-01-25 03:54:15', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=shop_order&#038;p=188', 0, 'shop_order', '', 1),
(189, 1, '2018-01-25 03:14:57', '2018-01-25 05:14:57', '', 'Order &ndash; Janeiro 25, 2018 @ 03:14 AM', '', 'wc-cancelled', 'open', 'closed', 'order_5a6967d1d0b40', 'pedido-25-de-jan-de-2018-as-051414', '', '', '2018-01-25 11:43:20', '2018-01-25 13:43:20', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=shop_order&#038;p=189', 0, 'shop_order', '', 1),
(190, 1, '2018-01-25 03:49:41', '0000-00-00 00:00:00', '{\n    \"accesspress-store::accesspress_webpage_layout\": {\n        \"value\": \"fullwidth\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 05:49:41\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '321f8f56-2e61-4e28-8840-2c920366d6b2', '', '', '2018-01-25 03:49:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?p=190', 0, 'customize_changeset', '', 0),
(191, 1, '2018-01-25 12:00:50', '2018-01-25 14:00:50', '{\n    \"accesspress-store::accesspress_widget_layout_type\": {\n        \"value\": \"title_style_one\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 13:50:35\"\n    },\n    \"accesspress-store::accesspress_header_layout_type\": {\n        \"value\": \"headerone\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 13:53:36\"\n    },\n    \"accesspress-store::custom_placeholder\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 13:59:54\"\n    },\n    \"accesspress-store::breadcrumb_page_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 14:00:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c71c4f36-b57d-4d06-a8b8-ed182e67b134', '', '', '2018-01-25 12:00:50', '2018-01-25 14:00:50', '', 0, 'http://localhost/wordpress_ecommerce/?p=191', 0, 'customize_changeset', '', 0),
(193, 1, '2018-01-25 12:27:47', '2018-01-25 14:27:47', '{\n    \"accesspress-store::breadcrumb_page_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/clothes-pins-984176_960_720.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 14:24:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d52b462-2fad-412b-adeb-871909d8ada0', '', '', '2018-01-25 12:27:47', '2018-01-25 14:27:47', '', 0, 'http://localhost/wordpress_ecommerce/?p=193', 0, 'customize_changeset', '', 0),
(194, 1, '2018-01-25 12:23:38', '2018-01-25 14:23:38', '', 'clothes-pins-984176_960_720', '', 'inherit', 'open', 'closed', '', 'clothes-pins-984176_960_720', '', '', '2018-01-25 12:23:38', '2018-01-25 14:23:38', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/clothes-pins-984176_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2018-01-25 12:31:27', '2018-01-25 14:31:27', '{\n    \"accesspress-store::breadcrumb_single_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/clothes-pins-984176_960_720.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 14:31:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4605d315-9c5a-4225-a674-64a24ad0bc14', '', '', '2018-01-25 12:31:27', '2018-01-25 14:31:27', '', 0, 'http://localhost/wordpress_ecommerce/4605d315-9c5a-4225-a674-64a24ad0bc14/', 0, 'customize_changeset', '', 0),
(197, 1, '2018-01-25 12:32:44', '2018-01-25 14:32:44', '{\n    \"accesspress-store::breadcrumb_single_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pegs-349782_960_720.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 14:32:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'be748d33-a6bf-493d-8df5-8087a8602779', '', '', '2018-01-25 12:32:44', '2018-01-25 14:32:44', '', 0, 'http://localhost/wordpress_ecommerce/be748d33-a6bf-493d-8df5-8087a8602779/', 0, 'customize_changeset', '', 0),
(198, 1, '2018-01-25 12:37:44', '2018-01-25 14:37:44', '', 'pin-1691674_960_720', '', 'inherit', 'open', 'closed', '', 'pin-1691674_960_720', '', '', '2018-01-25 12:37:44', '2018-01-25 14:37:44', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pin-1691674_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2018-01-25 12:38:04', '2018-01-25 14:38:04', '{\n    \"accesspress-store::breadcrumb_single_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pin-1691674_960_720.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 14:38:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a31bf87e-06ff-4061-9ce4-3ac9a5d37401', '', '', '2018-01-25 12:38:04', '2018-01-25 14:38:04', '', 0, 'http://localhost/wordpress_ecommerce/a31bf87e-06ff-4061-9ce4-3ac9a5d37401/', 0, 'customize_changeset', '', 0),
(200, 1, '2018-01-25 13:17:43', '2018-01-25 15:17:43', '{\n    \"accesspress-store::breadcrumb_archive_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pin-1691674_960_720.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 15:17:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ce4474d-8036-4e7b-9b56-7d59544219b9', '', '', '2018-01-25 13:17:43', '2018-01-25 15:17:43', '', 0, 'http://localhost/wordpress_ecommerce/7ce4474d-8036-4e7b-9b56-7d59544219b9/', 0, 'customize_changeset', '', 0),
(201, 1, '2018-01-25 14:30:37', '2018-01-25 16:30:37', '', 'Bermuda', '', 'publish', 'closed', 'closed', '', 'bermuda', '', '', '2018-01-29 01:04:51', '2018-01-29 03:04:51', '', 0, 'http://localhost/wordpress_ecommerce/?p=201', 3, 'nav_menu_item', '', 0),
(202, 1, '2018-01-25 14:50:14', '2018-01-25 16:50:14', '', 'Masculino', '', 'publish', 'closed', 'closed', '', 'masculino', '', '', '2018-01-29 01:04:51', '2018-01-29 03:04:51', '', 0, 'http://localhost/wordpress_ecommerce/?p=202', 1, 'nav_menu_item', '', 0),
(203, 1, '2018-01-25 23:56:28', '0000-00-00 00:00:00', '{\n    \"accesspress-store::accesspress_webpage_layout\": {\n        \"value\": \"fullwidth\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-26 01:56:28\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '84cd9d4e-7c8d-4e7c-a330-d38f9bacbb80', '', '', '2018-01-25 23:56:28', '2018-01-26 01:56:28', '', 0, 'http://localhost/wordpress_ecommerce/?p=203', 0, 'customize_changeset', '', 0),
(204, 1, '2018-01-26 00:15:47', '2018-01-26 02:15:47', '', 'Lista de desejos', '', 'trash', 'closed', 'closed', '', 'lista-de-desejos__trashed', '', '', '2018-01-26 01:05:28', '2018-01-26 03:05:28', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=204', 0, 'page', '', 0),
(205, 1, '2018-01-26 00:15:47', '2018-01-26 02:15:47', '<span class=\"tinvwl-info-desc tinvwl-cell\"><code>[ti_wishlists_addtowishlist]</code></span>', 'Lista de desejos', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2018-01-26 00:15:47', '2018-01-26 02:15:47', '', 204, 'http://localhost/wordpress_ecommerce/204-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-01-26 00:17:30', '2018-01-26 02:17:30', '[ti_wishlistsview]', 'Lista de desejos', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2018-01-26 00:17:30', '2018-01-26 02:17:30', '', 204, 'http://localhost/wordpress_ecommerce/204-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2018-01-26 00:33:10', '2018-01-26 02:33:10', '[ti_wishlists_addtowishlist]', 'Lista de desejos', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2018-01-26 00:33:10', '2018-01-26 02:33:10', '', 204, 'http://localhost/wordpress_ecommerce/204-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-01-26 00:52:19', '2018-01-26 02:52:19', '', 'Lista de desejos', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2018-01-26 00:52:19', '2018-01-26 02:52:19', '', 204, 'http://localhost/wordpress_ecommerce/204-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2018-01-26 00:52:47', '2018-01-26 02:52:47', '', 'teste', '', 'trash', 'closed', 'closed', '', 'teste__trashed', '', '', '2018-01-26 00:53:53', '2018-01-26 02:53:53', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=209', 0, 'page', '', 0),
(210, 1, '2018-01-26 00:52:47', '2018-01-26 02:52:47', '', 'teste', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2018-01-26 00:52:47', '2018-01-26 02:52:47', '', 209, 'http://localhost/wordpress_ecommerce/209-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2018-01-26 01:00:14', '2018-01-26 03:00:14', '[yith_wcwl_wishlist]', 'Lista de Desejos', '', 'publish', 'closed', 'closed', '', 'lista-de-desejos', '', '', '2018-01-26 01:06:12', '2018-01-26 03:06:12', '', 0, 'http://localhost/wordpress_ecommerce/wishlist/', 0, 'page', '', 0),
(212, 1, '2018-01-26 01:06:12', '2018-01-26 03:06:12', '[yith_wcwl_wishlist]', 'Lista de Desejos', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2018-01-26 01:06:12', '2018-01-26 03:06:12', '', 211, 'http://localhost/wordpress_ecommerce/211-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(213, 1, '2018-01-26 10:41:06', '2018-01-26 12:41:06', '{\n    \"accesspress-store::accesspress_ticker_title\": {\n        \"value\": \"Ei, psiu! :)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-26 12:41:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c815c98-0e59-41a9-88d1-9a2a057a29cf', '', '', '2018-01-26 10:41:06', '2018-01-26 12:41:06', '', 0, 'http://localhost/wordpress_ecommerce/0c815c98-0e59-41a9-88d1-9a2a057a29cf/', 0, 'customize_changeset', '', 0),
(214, 1, '2018-01-26 10:41:55', '2018-01-26 12:41:55', '{\n    \"accesspress-store::accesspress_ticker_title\": {\n        \"value\": \"Ei psiu! ;)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-26 12:41:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f3dff215-4904-4f27-b044-c2950c3fd4de', '', '', '2018-01-26 10:41:55', '2018-01-26 12:41:55', '', 0, 'http://localhost/wordpress_ecommerce/?p=214', 0, 'customize_changeset', '', 0),
(215, 1, '2018-01-27 17:17:19', '2018-01-27 19:17:19', '{\n    \"accesspress-store::accesspress_ticker_text1\": {\n        \"value\": \"Utilize o c\\u00f3digo HELLO_WORD para descontos de at\\u00e9 20% em qualquer pe\\u00e7a!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-27 19:16:45\"\n    },\n    \"accesspress-store::accesspress_ticker_text2\": {\n        \"value\": \"Parcele em at\\u00e9 2x sem juros ou 10x com juros\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-27 19:17:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '832d084d-f8ab-409c-916a-73c60ab07587', '', '', '2018-01-27 17:17:19', '2018-01-27 19:17:19', '', 0, 'http://localhost/wordpress_ecommerce/?p=215', 0, 'customize_changeset', '', 0),
(220, 1, '2018-01-28 13:57:52', '2018-01-28 15:57:52', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 15:57:52\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.png\",\n            \"timestamp\": 1517155032248,\n            \"attachment_id\": 219,\n            \"width\": 300,\n            \"height\": 70\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 15:57:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ac65c42-99c3-4dd3-a66a-5207da4b2d37', '', '', '2018-01-28 13:57:52', '2018-01-28 15:57:52', '', 0, 'http://localhost/wordpress_ecommerce/2ac65c42-99c3-4dd3-a66a-5207da4b2d37/', 0, 'customize_changeset', '', 0),
(222, 1, '2018-01-28 13:59:28', '2018-01-28 15:59:28', '', 'cropped-logo-touchic-modas-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-touchic-modas-2-png', '', '', '2018-01-28 13:59:28', '2018-01-28 15:59:28', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-2.png', 0, 'attachment', 'image/png', 0),
(223, 1, '2018-01-28 14:06:38', '2018-01-28 16:06:38', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 16:05:10\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.jpg\",\n            \"timestamp\": 1517155503457,\n            \"attachment_id\": 225,\n            \"width\": 300,\n            \"height\": 70\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 16:05:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0569616c-0359-449c-8078-5e87b38e371f', '', '', '2018-01-28 14:06:38', '2018-01-28 16:06:38', '', 0, 'http://localhost/wordpress_ecommerce/?p=223', 0, 'customize_changeset', '', 0),
(228, 1, '2018-01-28 14:12:59', '2018-01-28 16:12:59', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 16:12:59\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-1.jpg\",\n            \"timestamp\": 1517155962763,\n            \"attachment_id\": 227,\n            \"width\": 300,\n            \"height\": 70\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 16:12:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a4eaa9fd-f65f-474b-8804-5e51a58c61b0', '', '', '2018-01-28 14:12:59', '2018-01-28 16:12:59', '', 0, 'http://localhost/wordpress_ecommerce/a4eaa9fd-f65f-474b-8804-5e51a58c61b0/', 0, 'customize_changeset', '', 0),
(229, 1, '2018-01-28 14:24:09', '2018-01-28 16:24:09', '', 'zip-390862_960_720', '', 'inherit', 'open', 'closed', '', 'zip-390862_960_720', '', '', '2018-01-28 14:24:09', '2018-01-28 16:24:09', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/zip-390862_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2018-01-28 14:46:52', '2018-01-28 16:46:52', '', 'zipper-574008_960_720', '', 'inherit', 'open', 'closed', '', 'zipper-574008_960_720', '', '', '2018-01-28 14:46:52', '2018-01-28 16:46:52', '', 1, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/zipper-574008_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2018-01-28 14:49:36', '2018-01-28 16:49:36', 'Conforto, qualidade e preço justo. Confira as tendências da Hollister!', 'Camiseta Hollister P', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-28 14:49:36', '2018-01-28 16:49:36', '', 1, 'http://localhost/wordpress_ecommerce/1-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2018-01-28 14:55:32', '2018-01-28 16:55:32', '', 'time-3076138_1280', '', 'inherit', 'open', 'closed', '', 'time-3076138_1280', '', '', '2018-01-28 14:55:32', '2018-01-28 16:55:32', '', 17, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/time-3076138_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2018-01-28 15:00:06', '2018-01-28 17:00:06', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-4\",\n            \"accesspress_storemo-8\",\n            \"accesspress_storemo-10\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:00:06\"\n    },\n    \"widget_accesspress_storemo[10]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czo1OiJ0ZXNldCI7czoxMToicHJvbW9faW1hZ2UiO3M6ODI6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtMS5qcGciO3M6MTA6InByb21vX2Rlc2MiO3M6MTM6InRlc3RvIGV4ZW1wbG8iO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjE3OiJCb3TDo28gZGUgYcOnw7VlcyI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b5a602f0ccf2a0dbfe0870663bc3d02e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:00:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e448b540-8bea-4b06-82c4-135a1d058711', '', '', '2018-01-28 15:00:06', '2018-01-28 17:00:06', '', 0, 'http://localhost/wordpress_ecommerce/e448b540-8bea-4b06-82c4-135a1d058711/', 0, 'customize_changeset', '', 0),
(241, 1, '2018-01-28 15:04:51', '2018-01-28 17:04:51', '{\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\",\n            \"text-7\",\n            \"accesspress_store_product2-3\",\n            \"accesspress_store_product2-6\",\n            \"woocommerce_widget_cart-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:02:34\"\n    },\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-4\",\n            \"accesspress_storemo-8\",\n            \"accesspress_storemo-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:02:34\"\n    },\n    \"widget_accesspress_storemo[10]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czo1OiJ0ZXNldCI7czoxMToicHJvbW9faW1hZ2UiO3M6ODI6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtMS5qcGciO3M6MTA6InByb21vX2Rlc2MiO3M6MTM6InRlc3RvIGV4ZW1wbG8iO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjE3OiJCb3TDo28gZGUgYcOnw7VlcyI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b5a602f0ccf2a0dbfe0870663bc3d02e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:02:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '479b6af4-91ff-42cf-b0d0-21eb7360b1ea', '', '', '2018-01-28 15:04:51', '2018-01-28 17:04:51', '', 0, 'http://localhost/wordpress_ecommerce/?p=241', 0, 'customize_changeset', '', 0),
(242, 1, '2018-01-28 15:11:54', '2018-01-28 17:11:54', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-11\",\n            \"accesspress_storemo-8\",\n            \"accesspress_storemo-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:11:54\"\n    },\n    \"widget_accesspress_storemo[11]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoyMjoiQ2Fsw6dhZG9zICYgU2FuZMOhbGlhcyI7czoxMToicHJvbW9faW1hZ2UiO3M6ODQ6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtMi0xLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czozNToiQ29uZm9ydGUgZSBxdWFsaWRhZGUgYW9zIHNldXMgcMOpcyEiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjg6IkNvbmZpcmEhIjtzOjEwOiJwcm9tb19saW5rIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e3e5ecb9a402ae2f59498461b39216e9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:11:54\"\n    },\n    \"widget_accesspress_storemo[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czowOiIiO3M6MTE6InByb21vX2ltYWdlIjtzOjgyOiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvUHJvbW8tV2lkZ2V0LTIuanBnIjtzOjEwOiJwcm9tb19kZXNjIjtzOjA6IiI7czoxNDoicHJvbW9fbGlua19idG4iO3M6ODoiQ29uZmlyYSEiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"693915bb43a5d445c4353d1526d1c439\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:11:54\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\",\n            \"text-7\",\n            \"accesspress_store_product2-3\",\n            \"accesspress_store_product2-6\",\n            \"woocommerce_widget_cart-3\",\n            \"accesspress_storemo-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:11:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ab786c51-5a12-420e-a683-d2286b933921', '', '', '2018-01-28 15:11:54', '2018-01-28 17:11:54', '', 0, 'http://localhost/wordpress_ecommerce/?p=242', 0, 'customize_changeset', '', 0),
(243, 1, '2018-01-28 15:10:56', '2018-01-28 17:10:56', '', 'Promo Widget 2', '', 'inherit', 'open', 'closed', '', 'promo-widget-2-2', '', '', '2018-01-28 15:10:56', '2018-01-28 17:10:56', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2018-01-28 15:14:35', '2018-01-28 17:14:35', '{\n    \"widget_accesspress_storemo[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czowOiIiO3M6MTE6InByb21vX2ltYWdlIjtzOjgyOiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzc19lY29tbWVyY2Uvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDEvUHJvbW8tV2lkZ2V0LTEuanBnIjtzOjEwOiJwcm9tb19kZXNjIjtzOjA6IiI7czoxNDoicHJvbW9fbGlua19idG4iO3M6MTA6IkFwcm92ZWl0ZSEiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"621e376d1e2683135351c1de7fbb24b2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:14:35\"\n    },\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-11\",\n            \"accesspress_storemo-12\",\n            \"accesspress_storemo-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:14:35\"\n    },\n    \"widget_accesspress_storemo[12]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czoxNToiMjAlIGRlIGRlc2NvbnRvIjtzOjExOiJwcm9tb19pbWFnZSI7czo4MjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3NfZWNvbW1lcmNlL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzAxL1Byb21vLVdpZGdldC0xLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czozMDoidXNhbmRvIG8gY8OzZGlnbyBIRUxMT19XT1JEIDspIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czoxMDoiQXByb3ZlaXRlISI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"cde9c0abd3ce0b9b5e8fc7b7158bece0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:14:35\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\",\n            \"text-7\",\n            \"accesspress_store_product2-3\",\n            \"accesspress_store_product2-6\",\n            \"woocommerce_widget_cart-3\",\n            \"accesspress_storemo-4\",\n            \"accesspress_storemo-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:14:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6557758a-b0f6-4e36-a0af-f97d39aebb83', '', '', '2018-01-28 15:14:35', '2018-01-28 17:14:35', '', 0, 'http://localhost/wordpress_ecommerce/?p=245', 0, 'customize_changeset', '', 0),
(246, 1, '2018-01-28 15:13:31', '2018-01-28 17:13:31', '', 'Promo Widget 1', '', 'inherit', 'open', 'closed', '', 'promo-widget-1', '', '', '2018-01-28 15:13:31', '2018-01-28 17:13:31', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2018-01-28 15:17:28', '2018-01-28 17:17:28', '{\n    \"widget_accesspress_storemo[10]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czo1OiJ0ZXN0ZSI7czoxMToicHJvbW9faW1hZ2UiO3M6OTU6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9jbG90aGVzLXBpbnMtOTg0MTc2Xzk2MF83MjAuanBnIjtzOjEwOiJwcm9tb19kZXNjIjtzOjEzOiJ0ZXN0byBleGVtcGxvIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czoxNzoiQm90w6NvIGRlIGHDp8O1ZXMiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"be70e07a5ae0ab4b086d967817bd2386\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:17:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85319840-1c06-470d-a5b4-d8e68e93eb22', '', '', '2018-01-28 15:17:28', '2018-01-28 17:17:28', '', 0, 'http://localhost/wordpress_ecommerce/?p=247', 0, 'customize_changeset', '', 0),
(249, 1, '2018-01-28 15:22:41', '2018-01-28 17:22:41', '{\n    \"sidebars_widgets[promo-widget-1]\": {\n        \"value\": [\n            \"accesspress_storemo-11\",\n            \"accesspress_storemo-12\",\n            \"accesspress_storemo-14\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:22:41\"\n    },\n    \"widget_accesspress_storemo[14]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czo1OiJUZXN0ZSI7czoxMToicHJvbW9faW1hZ2UiO3M6MDoiIjtzOjEwOiJwcm9tb19kZXNjIjtzOjE1OiJUZXN0ZSBkZSB3aWRnZXQiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjY6IkJvdMOjbyI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2b56d5905602004b1f5cacb1c0bc37cd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:19:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '455adabc-0795-44e0-b212-fbb7e54fb182', '', '', '2018-01-28 15:22:41', '2018-01-28 17:22:41', '', 0, 'http://localhost/wordpress_ecommerce/?p=249', 0, 'customize_changeset', '', 0),
(250, 1, '2018-01-28 15:22:18', '2018-01-28 17:22:18', '', 'Promo Widget 1', '', 'inherit', 'open', 'closed', '', 'promo-widget-1-2', '', '', '2018-01-28 15:22:18', '2018-01-28 17:22:18', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/Promo-Widget-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2018-01-28 15:24:27', '2018-01-28 17:24:27', '{\n    \"widget_accesspress_storemo[14]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjExOiJwcm9tb190aXRsZSI7czo1OiJUZXN0ZSI7czoxMToicHJvbW9faW1hZ2UiO3M6ODQ6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9Qcm9tby1XaWRnZXQtMS0xLmpwZyI7czoxMDoicHJvbW9fZGVzYyI7czoxNToiVGVzdGUgZGUgd2lkZ2V0IjtzOjE0OiJwcm9tb19saW5rX2J0biI7czo2OiJCb3TDo28iO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5250b932099360d6ebbb8fa6cf3e0794\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:24:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9643227e-3c03-4550-bc14-055ad99f29d0', '', '', '2018-01-28 15:24:27', '2018-01-28 17:24:27', '', 0, 'http://localhost/wordpress_ecommerce/9643227e-3c03-4550-bc14-055ad99f29d0/', 0, 'customize_changeset', '', 0),
(253, 1, '2018-01-28 15:29:14', '2018-01-28 17:29:14', '{\n    \"sidebars_widgets[promo-widget-2]\": {\n        \"value\": [\n            \"accesspress_store_full_promo-3\",\n            \"accesspress_store_full_promo-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:28:24\"\n    },\n    \"widget_accesspress_store_full_promo[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:28:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '875ca182-e662-4536-ad74-662e3fb34e52', '', '', '2018-01-28 15:29:14', '2018-01-28 17:29:14', '', 0, 'http://localhost/wordpress_ecommerce/?p=253', 0, 'customize_changeset', '', 0),
(254, 1, '2018-01-28 15:28:49', '2018-01-28 17:28:49', '', 'dress-864107_1280', '', 'inherit', 'open', 'closed', '', 'dress-864107_1280', '', '', '2018-01-28 15:28:49', '2018-01-28 17:28:49', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/dress-864107_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2018-01-28 15:33:39', '2018-01-28 17:33:39', '{\n    \"sidebars_widgets[promo-widget-2]\": {\n        \"value\": [\n            \"accesspress_store_full_promo-5\",\n            \"accesspress_store_full_promo-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:29:24\"\n    },\n    \"widget_accesspress_store_full_promo[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxMzoiTW9kYSBmZW1pbmluYSI7czoxMToicHJvbW9faW1hZ2UiO3M6ODU6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9kcmVzcy04NjQxMDdfMTI4MC5qcGciO3M6MTE6InByb21vX3N0eWxlIjtzOjk6InN0eWxlX29uZSI7czoxNToicHJvbW9fdGl0bGVfc3ViIjtzOjM0OiJDb25maXJhIHRvZGFzIGFzIG5vc3NhcyBub3ZpZGFkZXMhIjtzOjEwOiJwcm9tb19kZXNjIjtzOjU3OiJOw6NvIMOpIGEgdG9hIHF1ZSBhIHBlw6dhIG1haXMgZm9ydGUgZG8gam9nbyDDqSB1bWEgZGFtYSEiO3M6MTQ6InByb21vX2xpbmtfYnRuIjtzOjA6IiI7czoxMDoicHJvbW9fbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c2d46a71c03bb6fd2376d24721031515\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:31:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c047967-ce69-419b-a3d2-68718adb9d43', '', '', '2018-01-28 15:33:39', '2018-01-28 17:33:39', '', 0, 'http://localhost/wordpress_ecommerce/?p=255', 0, 'customize_changeset', '', 0),
(257, 1, '2018-01-28 15:35:23', '2018-01-28 17:35:23', '{\n    \"sidebars_widgets[promo-widget-2]\": {\n        \"value\": [\n            \"accesspress_store_full_promo-7\",\n            \"accesspress_store_full_promo-5\",\n            \"accesspress_store_full_promo-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:35:23\"\n    },\n    \"widget_accesspress_store_full_promo[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjExOiJwcm9tb190aXRsZSI7czoxMzoiTW9kYSBGZW1pbmluYSI7czoxMToicHJvbW9faW1hZ2UiO3M6OTA6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzX2Vjb21tZXJjZS93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9waW5rLWhhaXItMTQ1MDA0NV8xMjgwLmpwZyI7czoxMToicHJvbW9fc3R5bGUiO3M6OToic3R5bGVfb25lIjtzOjE1OiJwcm9tb190aXRsZV9zdWIiO3M6MjQ6IkNvbmZpcmEgbm9zc2FzIG5vdmlkYWRlcyI7czoxMDoicHJvbW9fZGVzYyI7czo1NzoiTsOjbyDDqSBhIHRvYSBxdWUgYSBwZcOnYSBtYWlzIGZvcnRlIGRvIGpvZ28gw6kgdW1hIGRhbWEhIjtzOjE0OiJwcm9tb19saW5rX2J0biI7czowOiIiO3M6MTA6InByb21vX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"591318616424bbd60e890b27464d18b2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:35:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '10a1066c-877f-4ece-bda2-1750c7d7033d', '', '', '2018-01-28 15:35:23', '2018-01-28 17:35:23', '', 0, 'http://localhost/wordpress_ecommerce/10a1066c-877f-4ece-bda2-1750c7d7033d/', 0, 'customize_changeset', '', 0),
(258, 1, '2018-01-28 15:36:09', '2018-01-28 17:36:09', '{\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"text-3\",\n            \"accesspress_store_icon_text-3\",\n            \"woocommerce_recent_reviews-3\",\n            \"text-5\",\n            \"text-7\",\n            \"accesspress_store_product2-3\",\n            \"accesspress_store_product2-6\",\n            \"woocommerce_widget_cart-3\",\n            \"accesspress_storemo-4\",\n            \"accesspress_storemo-8\",\n            \"accesspress_store_full_promo-5\",\n            \"accesspress_store_full_promo-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:36:09\"\n    },\n    \"sidebars_widgets[promo-widget-2]\": {\n        \"value\": [\n            \"accesspress_store_full_promo-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 17:36:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff605126-a8e3-4572-8897-bc941307e48c', '', '', '2018-01-28 15:36:09', '2018-01-28 17:36:09', '', 0, 'http://localhost/wordpress_ecommerce/ff605126-a8e3-4572-8897-bc941307e48c/', 0, 'customize_changeset', '', 0),
(260, 1, '2018-01-28 17:54:56', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-01-28 17:54:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&p=260', 0, 'product', '', 0),
(261, 1, '2018-01-28 17:54:57', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-01-28 17:54:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&p=261', 0, 'product', '', 0),
(262, 1, '2018-01-28 19:32:19', '2018-01-28 21:32:19', '', 'black-and-white-2558273_1280', '', 'inherit', 'open', 'closed', '', 'black-and-white-2558273_1280', '', '', '2018-01-28 19:32:19', '2018-01-28 21:32:19', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/black-and-white-2558273_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(264, 1, '2018-01-28 19:40:31', '2018-01-28 21:40:31', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-logo-touchic-modas.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 21:40:31\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-logo-touchic-modas.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-cropped-logo-touchic-modas.jpg\",\n            \"timestamp\": 1517175611830,\n            \"attachment_id\": 263,\n            \"width\": 300,\n            \"height\": 70\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 21:40:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ecbea68-cf0e-4477-a5f9-444d5cf435da', '', '', '2018-01-28 19:40:31', '2018-01-28 21:40:31', '', 0, 'http://localhost/wordpress_ecommerce/7ecbea68-cf0e-4477-a5f9-444d5cf435da/', 0, 'customize_changeset', '', 0),
(265, 1, '2018-01-28 20:42:41', '2018-01-28 22:42:41', '', 'pink-hair-1450045_1280', '', 'inherit', 'open', 'closed', '', 'pink-hair-1450045_1280-3', '', '', '2018-01-28 20:42:41', '2018-01-28 22:42:41', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/pink-hair-1450045_1280-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2018-01-28 21:00:45', '2018-01-28 23:00:45', '', 'logo-touchic-modas', '', 'inherit', 'open', 'closed', '', 'logo-touchic-modas', '', '', '2018-01-28 21:00:45', '2018-01-28 23:00:45', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/logo-touchic-modas.jpg', 0, 'attachment', 'image/jpeg', 0),
(267, 1, '2018-01-28 21:06:21', '2018-01-28 23:06:21', '', 'cropped-logo-touchic-modas-2.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-logo-touchic-modas-jpg', '', '', '2018-01-28 21:06:21', '2018-01-28 23:06:21', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.jpg', 0, 'attachment', 'image/jpeg', 0),
(268, 1, '2018-01-28 21:03:34', '2018-01-28 23:03:34', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:02:16\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas.jpg\",\n            \"timestamp\": 1517180474196,\n            \"attachment_id\": 267,\n            \"width\": 300,\n            \"height\": 70\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:02:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df545788-7446-4a24-856a-f81b62c40003', '', '', '2018-01-28 21:03:34', '2018-01-28 23:03:34', '', 0, 'http://localhost/wordpress_ecommerce/?p=268', 0, 'customize_changeset', '', 0),
(269, 1, '2018-01-28 21:05:26', '2018-01-28 23:05:26', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:05:26\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-1.jpg\",\n            \"timestamp\": 1517180713575,\n            \"attachment_id\": 267,\n            \"width\": 300,\n            \"height\": 70\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:05:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b3cbdcf-4aa0-4ec8-b8fb-c29faf0b906b', '', '', '2018-01-28 21:05:26', '2018-01-28 23:05:26', '', 0, 'http://localhost/wordpress_ecommerce/3b3cbdcf-4aa0-4ec8-b8fb-c29faf0b906b/', 0, 'customize_changeset', '', 0),
(270, 1, '2018-01-28 21:07:28', '2018-01-28 23:07:28', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:07:28\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-3.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-3.jpg\",\n            \"timestamp\": 1517180825068,\n            \"attachment_id\": 271,\n            \"width\": 300,\n            \"height\": 70\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:07:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5cb59c3d-bf46-4c90-a624-48900c9feb1a', '', '', '2018-01-28 21:07:28', '2018-01-28 23:07:28', '', 0, 'http://localhost/wordpress_ecommerce/?p=270', 0, 'customize_changeset', '', 0),
(271, 1, '2018-01-28 21:07:04', '2018-01-28 23:07:04', '', 'cropped-logo-touchic-modas-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-touchic-modas-3-jpg', '', '', '2018-01-28 21:07:04', '2018-01-28 23:07:04', '', 0, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/cropped-logo-touchic-modas-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(272, 1, '2018-01-28 21:11:28', '2018-01-28 23:11:28', '{\n    \"accesspress-store::accesspress_ticker_text2\": {\n        \"value\": \"Parcele suas compras em at\\u00e9 10x sem juros\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:11:28\"\n    },\n    \"accesspress-store::accesspress_ticker_text3\": {\n        \"value\": \"Troca em at\\u00e9 15 dias. A primeira toca \\u00e9 GR\\u00c1TIS!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:10:53\"\n    },\n    \"accesspress-store::accesspress_ticker_text4\": {\n        \"value\": \"Pague com a seguran\\u00e7a do PAYPAL ou PAGSEGURO\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:11:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f20cba2e-b6ca-4c02-b412-79c0e1c044ee', '', '', '2018-01-28 21:11:28', '2018-01-28 23:11:28', '', 0, 'http://localhost/wordpress_ecommerce/?p=272', 0, 'customize_changeset', '', 0),
(273, 1, '2018-01-28 21:13:55', '2018-01-28 23:13:55', '{\n    \"accesspress-store::accesspress_ticker_text1\": {\n        \"value\": \"Frete GR\\u00c1TIS em compras acima de 150 reais.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:13:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f547281-6297-43c0-8d8d-82c438560a9a', '', '', '2018-01-28 21:13:55', '2018-01-28 23:13:55', '', 0, 'http://localhost/wordpress_ecommerce/?p=273', 0, 'customize_changeset', '', 0),
(274, 1, '2018-01-28 21:14:28', '2018-01-28 23:14:28', '{\n    \"accesspress-store::accesspress_ticker_text1\": {\n        \"value\": \"Frete GR\\u00c1TIS em compras acima de 150 reais ou em produtos selecionados\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:14:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3cf77c12-4c49-4c06-994c-7a913de7aa82', '', '', '2018-01-28 21:14:28', '2018-01-28 23:14:28', '', 0, 'http://localhost/wordpress_ecommerce/3cf77c12-4c49-4c06-994c-7a913de7aa82/', 0, 'customize_changeset', '', 0),
(275, 1, '2018-01-28 21:15:06', '2018-01-28 23:15:06', '{\n    \"accesspress-store::accesspress_ticker_text1\": {\n        \"value\": \"Frete GR\\u00c1TIS em compras acima de RS 150,00 reais ou em produtos selecionados\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:15:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f72c9d3-9d75-4937-8d36-43bc4b153913', '', '', '2018-01-28 21:15:06', '2018-01-28 23:15:06', '', 0, 'http://localhost/wordpress_ecommerce/1f72c9d3-9d75-4937-8d36-43bc4b153913/', 0, 'customize_changeset', '', 0),
(276, 1, '2018-01-28 21:15:39', '2018-01-28 23:15:39', '{\n    \"accesspress-store::accesspress_ticker_text3\": {\n        \"value\": \"Troca em at\\u00e9 15 dias. A primeira troca \\u00e9 GR\\u00c1TIS!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:15:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cad8cafc-87aa-493d-860c-257e38ec18a2', '', '', '2018-01-28 21:15:39', '2018-01-28 23:15:39', '', 0, 'http://localhost/wordpress_ecommerce/cad8cafc-87aa-493d-860c-257e38ec18a2/', 0, 'customize_changeset', '', 0),
(277, 1, '2018-01-28 21:32:24', '2018-01-28 23:32:24', '{\n    \"widget_accesspress_store_icon_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6Mjk6IlBhcmNlbGUgZW0gYXTDqSAxMHggc2VtIEp1cm9zIjtzOjE3OiJpY29uX3RleHRfY29udGVudCI7czoxMjY6IlBhZ3VlIGNvbSBWSVNBLCBNQVNURVJDQVJELCBFTE8sIEFNRVJJQ0FOIEVYUFJFU1Mgb3UgQk9MRVRPLCBjb250YW5kbyBjb20gYSBzZWd1cmFuw6dhIHF1ZSBzw7MgbyBQQVlQQUwgZSBvIFBBR1NFR1VSTyBvZmVyZWNlISI7czoxNDoiaWNvbl90ZXh0X2ljb24iO3M6MTc6ImZhIGZhLWNyZWRpdC1jYXJkIjtzOjE4OiJpY29uX3RleHRfcmVhZG1vcmUiO3M6MDoiIjtzOjIzOiJpY29uX3RleHRfcmVhZG1vcmVfbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a97742d22becf4822adb8d41db3f9488\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:32:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c1e0a4b8-6f41-4f07-a91a-9dd6a800f4d2', '', '', '2018-01-28 21:32:24', '2018-01-28 23:32:24', '', 0, 'http://localhost/wordpress_ecommerce/c1e0a4b8-6f41-4f07-a91a-9dd6a800f4d2/', 0, 'customize_changeset', '', 0),
(278, 1, '2018-01-28 21:32:56', '2018-01-28 23:32:56', '{\n    \"widget_accesspress_store_icon_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6Mjk6IlBhcmNlbGUgZW0gYXTDqSAxMHggc2VtIEp1cm9zIjtzOjE3OiJpY29uX3RleHRfY29udGVudCI7czoxMjc6IlBhZ3VlIGNvbSBWSVNBLCBNQVNURVJDQVJELCBFTE8sIEFNRVJJQ0FOIEVYUFJFU1Mgb3UgQk9MRVRPLCBjb250YW5kbyBjb20gYSBzZWd1cmFuw6dhIHF1ZSBzw7MgbyBQQVlQQUwgb3UgbyBQQUdTRUdVUk8gb2ZlcmVjZSEiO3M6MTQ6Imljb25fdGV4dF9pY29uIjtzOjE3OiJmYSBmYS1jcmVkaXQtY2FyZCI7czoxODoiaWNvbl90ZXh0X3JlYWRtb3JlIjtzOjA6IiI7czoyMzoiaWNvbl90ZXh0X3JlYWRtb3JlX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f89582cc4e110452020b15f8e74677a3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:32:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '43930a13-2448-4aaa-b726-c7320f0c0681', '', '', '2018-01-28 21:32:56', '2018-01-28 23:32:56', '', 0, 'http://localhost/wordpress_ecommerce/43930a13-2448-4aaa-b726-c7320f0c0681/', 0, 'customize_changeset', '', 0),
(279, 1, '2018-01-28 21:34:42', '2018-01-28 23:34:42', '{\n    \"widget_accesspress_store_icon_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6Mjk6IlBhcmNlbGUgZW0gYXTDqSAxMHggc2VtIEp1cm9zIjtzOjE3OiJpY29uX3RleHRfY29udGVudCI7czoxNTM6IlBhZ3VlIGNvbSBWSVNBLCBNQVNURVJDQVJELCBFTE8sIEFNRVJJQ0FOIEVYUFJFU1MsIFRSQU5TRkVSw4pOQ0lBIEJBTkPDgVJJQSBvdSBCT0xFVE8sIGNvbnRhbmRvIGNvbSBhIHNlZ3VyYW7Dp2EgcXVlIHPDsyBvIFBBWVBBTCBvdSBvIFBBR1NFR1VSTyBvZmVyZWNlISI7czoxNDoiaWNvbl90ZXh0X2ljb24iO3M6MTc6ImZhIGZhLWNyZWRpdC1jYXJkIjtzOjE4OiJpY29uX3RleHRfcmVhZG1vcmUiO3M6MDoiIjtzOjIzOiJpY29uX3RleHRfcmVhZG1vcmVfbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73d818beddf9cec9a9dcc6343bc909bd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:34:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f057e69c-7708-4c37-ac2f-a70d6183c00b', '', '', '2018-01-28 21:34:42', '2018-01-28 23:34:42', '', 0, 'http://localhost/wordpress_ecommerce/f057e69c-7708-4c37-ac2f-a70d6183c00b/', 0, 'customize_changeset', '', 0),
(280, 1, '2018-01-28 21:39:14', '2018-01-28 23:39:14', '{\n    \"widget_accesspress_store_icon_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6Mjk6IlBhcmNlbGUgZW0gYXTDqSAxMHggc2VtIEp1cm9zIjtzOjE3OiJpY29uX3RleHRfY29udGVudCI7czoxNTM6IlBhZ3VlIGNvbSBWSVNBLCBNQVNURVJDQVJELCBFTE8sIEFNRVJJQ0FOIEVYUFJFU1MsIFRSQU5TRkVSw4pOQ0lBIEJBTkPDgVJJQSBvdSBCT0xFVE8sIGNvbnRhbmRvIGNvbSBhIHNlZ3VyYW7Dp2EgcXVlIHPDsyBvIFBBWVBBTCBvdSBvIFBBR1NFR1VSTyBvZmVyZWNlISI7czoxNDoiaWNvbl90ZXh0X2ljb24iO3M6MTc6ImZhIGZhLWNyZWRpdC1jYXJkIjtzOjE4OiJpY29uX3RleHRfcmVhZG1vcmUiO3M6MDoiIjtzOjIzOiJpY29uX3RleHRfcmVhZG1vcmVfbGluayI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73d818beddf9cec9a9dcc6343bc909bd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-28 23:39:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9645e532-1be0-476b-9f5d-792f7a990070', '', '', '2018-01-28 21:39:14', '2018-01-28 23:39:14', '', 0, 'http://localhost/wordpress_ecommerce/?p=280', 0, 'customize_changeset', '', 0),
(281, 1, '2018-01-28 22:11:26', '2018-01-29 00:11:26', '{\n    \"widget_accesspress_store_icon_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjE1OiJpY29uX3RleHRfdGl0bGUiO3M6Mjk6IlBhcmNlbGUgZW0gYXTDqSAxMHggc2VtIEp1cm9zIjtzOjE3OiJpY29uX3RleHRfY29udGVudCI7czoxNTQ6IlBhZ3VlIGNvbSBWSVNBLCBNQVNURVJDQVJELCBFTE8sIEFNRVJJQ0FOIEVYUFJFU1MsIFRSQU5TRkVSw4pOQ0lBIEJBTkPDgVJJQSBvdSBCT0xFVE8sIGNvbnRhbmRvIGNvbSBhIHNlZ3VyYW7Dp2EgcXVlIHPDsyBvIFBBWVBBTCBvdSBvIFBBR1NFR1VSTyBvZmVyZWNlbSEiO3M6MTQ6Imljb25fdGV4dF9pY29uIjtzOjE3OiJmYSBmYS1jcmVkaXQtY2FyZCI7czoxODoiaWNvbl90ZXh0X3JlYWRtb3JlIjtzOjA6IiI7czoyMzoiaWNvbl90ZXh0X3JlYWRtb3JlX2xpbmsiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d6631aeaf66334cad93ad9de8d1be92\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-29 00:11:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4e0ef161-a87a-40f9-8d2c-0ee72504df66', '', '', '2018-01-28 22:11:26', '2018-01-29 00:11:26', '', 0, 'http://localhost/wordpress_ecommerce/4e0ef161-a87a-40f9-8d2c-0ee72504df66/', 0, 'customize_changeset', '', 0),
(282, 1, '2018-01-29 00:51:04', '2018-01-29 02:51:04', '', 'Fale Conosco', '', 'publish', 'closed', 'closed', '', 'fale-conosco', '', '', '2018-01-29 00:51:04', '2018-01-29 02:51:04', '', 0, 'http://localhost/wordpress_ecommerce/?page_id=282', 0, 'page', '', 0),
(283, 1, '2018-01-29 00:51:04', '2018-01-29 02:51:04', '', 'Fale Conosco', '', 'inherit', 'closed', 'closed', '', '282-revision-v1', '', '', '2018-01-29 00:51:04', '2018-01-29 02:51:04', '', 282, 'http://localhost/wordpress_ecommerce/282-revision-v1/', 0, 'revision', '', 0),
(284, 1, '2018-01-29 01:02:20', '2018-01-29 03:02:20', '{\n    \"blogname\": {\n        \"value\": \"TOUCHIC MODAS\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-29 03:02:20\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Um estilo para cada dia\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-29 03:02:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8099ea1e-1357-485f-9b72-848291a60f9d', '', '', '2018-01-29 01:02:20', '2018-01-29 03:02:20', '', 0, 'http://localhost/wordpress_ecommerce/?p=284', 0, 'customize_changeset', '', 0),
(285, 1, '2018-01-29 01:04:54', '2018-01-29 03:04:54', ' ', '', '', 'publish', 'closed', 'closed', '', '285', '', '', '2018-01-29 01:04:54', '2018-01-29 03:04:54', '', 0, 'http://localhost/wordpress_ecommerce/?p=285', 22, 'nav_menu_item', '', 0),
(286, 1, '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 'Atacado', '', 'publish', 'closed', 'closed', '', 'atacado', '', '', '2018-01-29 01:04:53', '2018-01-29 03:04:53', '', 0, 'http://localhost/wordpress_ecommerce/?p=286', 21, 'nav_menu_item', '', 0),
(287, 1, '2018-01-29 01:51:42', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-01-29 01:51:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&p=287', 0, 'product', '', 0),
(288, 1, '2018-01-29 01:53:29', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-01-29 01:53:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&p=288', 0, 'product', '', 0),
(289, 1, '2018-01-29 02:33:51', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-01-29 02:33:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecommerce/?post_type=product&p=289', 0, 'product', '', 0),
(290, 1, '2018-01-29 02:45:51', '2018-01-29 04:45:51', '', 'FRETE GRATIS', '', 'inherit', 'open', 'closed', '', 'frete-gratis', '', '', '2018-01-29 02:45:51', '2018-01-29 04:45:51', '', 164, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/FRETE-GRATIS.jpg', 0, 'attachment', 'image/jpeg', 0),
(291, 1, '2018-01-29 03:00:52', '2018-01-29 05:00:52', '', 'icone_setor_atacado', '', 'inherit', 'open', 'closed', '', 'icone_setor_atacado', '', '', '2018-01-29 03:00:52', '2018-01-29 05:00:52', '', 164, 'http://localhost/wordpress_ecommerce/wp-content/uploads/2018/01/icone_setor_atacado.png', 0, 'attachment', 'image/png', 0),
(292, 1, '2018-01-29 12:36:53', '2018-01-29 14:36:53', '', '(AT) Camiseta Vulkanic Bordada copy copy - Azul', '', 'publish', 'closed', 'closed', '', 'camiseta-vulkanic-bordada-copy-copy', '', '', '2018-01-29 12:41:15', '2018-01-29 14:41:15', '', 164, 'http://localhost/wordpress_ecommerce/produto/camiseta-vulkanic-bordada-copy-copy/', 2, 'product_variation', '', 0),
(293, 1, '2018-01-29 12:40:40', '2018-01-29 14:40:40', '', '(AT) Camiseta Vulkanic Bordada copy copy - Vermelho', '', 'publish', 'closed', 'closed', '', 'camiseta-vulkanic-bordada-copy-copy-2', '', '', '2018-01-29 13:23:03', '2018-01-29 15:23:03', '', 164, 'http://localhost/wordpress_ecommerce/produto/camiseta-vulkanic-bordada-copy-copy/', 0, 'product_variation', '', 0),
(294, 1, '2018-01-29 12:40:54', '2018-01-29 14:40:54', '', '(AT) Camiseta Vulkanic Bordada copy copy - Verde', '', 'publish', 'closed', 'closed', '', 'camiseta-vulkanic-bordada-copy-copy-3', '', '', '2018-01-29 12:41:17', '2018-01-29 14:41:17', '', 164, 'http://localhost/wordpress_ecommerce/produto/camiseta-vulkanic-bordada-copy-copy/', 3, 'product_variation', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'order', '4'),
(2, 16, 'order', '7'),
(3, 16, 'product_count_product_cat', '3'),
(4, 15, 'product_count_product_cat', '5'),
(5, 18, 'order', '6'),
(6, 18, 'product_count_product_cat', '2'),
(7, 18, 'display_type', ''),
(8, 18, 'thumbnail_id', '0'),
(9, 16, 'display_type', ''),
(10, 16, 'thumbnail_id', '0'),
(11, 19, 'order', '5'),
(12, 19, 'display_type', ''),
(13, 19, 'thumbnail_id', '0'),
(14, 20, 'order', '8'),
(15, 20, 'display_type', ''),
(16, 20, 'thumbnail_id', '0'),
(17, 21, 'order', '1'),
(18, 21, 'display_type', ''),
(19, 21, 'thumbnail_id', '0'),
(20, 22, 'order', '2'),
(21, 22, 'display_type', ''),
(22, 22, 'thumbnail_id', '0'),
(23, 23, 'order', '9'),
(24, 23, 'display_type', ''),
(25, 23, 'thumbnail_id', '254'),
(26, 24, 'order', '10'),
(27, 24, 'display_type', ''),
(28, 24, 'thumbnail_id', '0'),
(29, 25, 'order', '11'),
(30, 25, 'display_type', ''),
(31, 25, 'thumbnail_id', '0'),
(32, 26, 'order', '12'),
(33, 26, 'display_type', ''),
(34, 26, 'thumbnail_id', '0'),
(35, 27, 'order', '13'),
(36, 27, 'display_type', ''),
(37, 27, 'thumbnail_id', '0'),
(38, 15, 'display_type', ''),
(39, 15, 'thumbnail_id', '262'),
(40, 23, 'product_count_product_cat', '2'),
(41, 22, 'product_count_product_cat', '5'),
(42, 28, 'order', '3'),
(43, 28, 'display_type', 'both'),
(44, 28, 'thumbnail_id', '0'),
(45, 28, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Masculino', 'masculino', 0),
(16, 'Camiseta', 'camiseta', 0),
(17, 'Menu 1', 'menu-1', 0),
(18, 'Bermuda', 'bermuda', 0),
(19, 'Calça', 'calca', 0),
(20, 'Polo', 'polo', 0),
(21, 'Frete grátis', 'frete-gratis', 0),
(22, 'Ofertas do dia', 'ofertas-do-dia', 0),
(23, 'Feminino', 'feminino', 0),
(24, 'Calça', 'calca-feminino', 0),
(25, 'Camiseta', 'camiseta-feminino', 0),
(26, 'Polo', 'polo-feminino', 0),
(27, 'Vestido', 'vestido', 0),
(28, 'Comprar no Atacado', 'atacado', 0),
(29, 'Teste', 'teste', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 1, 0),
(35, 2, 0),
(35, 8, 0),
(35, 15, 0),
(35, 16, 0),
(35, 22, 0),
(72, 17, 0),
(73, 17, 0),
(79, 2, 0),
(79, 9, 0),
(79, 15, 0),
(79, 18, 0),
(79, 22, 0),
(110, 17, 0),
(113, 17, 0),
(114, 17, 0),
(115, 17, 0),
(116, 17, 0),
(117, 17, 0),
(118, 17, 0),
(119, 17, 0),
(120, 17, 0),
(121, 17, 0),
(122, 17, 0),
(123, 17, 0),
(124, 17, 0),
(125, 17, 0),
(126, 17, 0),
(134, 17, 0),
(147, 2, 0),
(147, 9, 0),
(147, 15, 0),
(147, 18, 0),
(147, 22, 0),
(148, 2, 0),
(148, 8, 0),
(148, 15, 0),
(148, 16, 0),
(148, 22, 0),
(148, 23, 0),
(164, 4, 0),
(164, 8, 0),
(164, 15, 0),
(164, 16, 0),
(164, 22, 0),
(164, 23, 0),
(164, 28, 0),
(201, 17, 0),
(202, 17, 0),
(285, 17, 0),
(286, 17, 0),
(293, 9, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'product_type', '', 0, 4),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 1),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 3),
(9, 9, 'product_visibility', '', 0, 3),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 5),
(16, 16, 'product_cat', '', 15, 3),
(17, 17, 'nav_menu', '', 0, 22),
(18, 18, 'product_cat', '', 15, 2),
(19, 19, 'product_cat', '', 15, 0),
(20, 20, 'product_cat', '', 15, 0),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'product_cat', '', 0, 5),
(23, 23, 'product_cat', '', 0, 2),
(24, 24, 'product_cat', '', 23, 0),
(25, 25, 'product_cat', '', 23, 0),
(26, 26, 'product_cat', '', 23, 0),
(27, 27, 'product_cat', '', 23, 0),
(28, 28, 'product_cat', '', 0, 1),
(29, 29, 'product_shipping_class', 'Teste', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Saniel'),
(3, 1, 'last_name', 'Barros Alves'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'pt_BR'),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'yith_wcwl_panel,text_widget_custom_html'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1516730944'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '17'),
(24, 1, 'closedpostboxes_product', 'a:1:{i:0;s:11:\"commentsdiv\";}'),
(25, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(26, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:17:\"dashboard_primary\";}'),
(27, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(28, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:104:\"woocommerce_dashboard_status,woocommerce_dashboard_recent_reviews,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(29, 1, 'session_tokens', 'a:5:{s:64:\"de81448e01d1923e3b1969e0e9bef7c2131947388c1f95314db6852edba2e2b1\";a:4:{s:10:\"expiration\";i:1517238090;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1517065290;}s:64:\"ce3b2a4775c2235dd87b82dfa1894140f094cb4d65ec49c0f0cd10e142d00939\";a:4:{s:10:\"expiration\";i:1517238091;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1517065291;}s:64:\"51e6d62bc98a6b4ea3af2fc199adacc853c9984143f471dfbc81299bf22cda25\";a:4:{s:10:\"expiration\";i:1517238109;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1517065309;}s:64:\"352f10cf362773917b026ec7e36acc65372387c5849766deca2abe9dea7c268d\";a:4:{s:10:\"expiration\";i:1517253886;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1517081086;}s:64:\"696902534f1aced6cf9436acbd61494243507f201ab1e3a4ce5a5bd9672d8c04\";a:4:{s:10:\"expiration\";i:1517361143;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1517188343;}}'),
(30, 1, 'last_update', '1516859575'),
(31, 1, 'billing_first_name', 'Saniel'),
(32, 1, 'billing_last_name', 'Barros Alves'),
(33, 1, 'billing_address_1', 'Rua primeiro de maio, Centro'),
(34, 1, 'billing_city', 'João Lisboa'),
(35, 1, 'billing_state', 'MA'),
(36, 1, 'billing_postcode', '65922-000'),
(37, 1, 'billing_country', 'BR'),
(38, 1, 'billing_email', 'saniel_alves@hotmail.com'),
(39, 1, 'billing_phone', '(99) 99205-5305'),
(40, 2, 'nickname', 'camon.reis'),
(41, 2, 'first_name', ''),
(42, 2, 'last_name', ''),
(43, 2, 'description', ''),
(44, 2, 'rich_editing', 'true'),
(45, 2, 'syntax_highlighting', 'true'),
(46, 2, 'comment_shortcuts', 'false'),
(47, 2, 'admin_color', 'fresh'),
(48, 2, 'use_ssl', '0'),
(49, 2, 'show_admin_bar_front', 'true'),
(50, 2, 'locale', ''),
(51, 2, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(52, 2, 'wp_user_level', '0'),
(53, 2, 'session_tokens', 'a:2:{s:64:\"429a0410c6216e20bba9f830a68d66227fd640b1a6141df046dca105182cec65\";a:4:{s:10:\"expiration\";i:1517977716;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1516768116;}s:64:\"5e9ec48e1ca6e96e46bd81565d741caa7d85db9680f350b10268c42279888649\";a:4:{s:10:\"expiration\";i:1516941317;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1516768517;}}'),
(54, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(86, 1, 'paying_customer', '1'),
(125, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"ac93d4d6841134fdf853b8a1c0c07ba9\";a:10:{s:3:\"key\";s:32:\"ac93d4d6841134fdf853b8a1c0c07ba9\";s:10:\"product_id\";i:164;s:12:\"variation_id\";i:292;s:9:\"variation\";a:2:{s:13:\"attribute_cor\";s:4:\"Azul\";s:17:\"attribute_tamanho\";s:2:\"38\";}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:13.5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:13.5;s:8:\"line_tax\";i:0;}}}'),
(132, 1, 'shipping_method', ''),
(133, 1, 'billing_persontype', '1'),
(134, 1, 'billing_cpf', '608.226.463-07'),
(135, 1, 'billing_cnpj', ''),
(136, 1, 'billing_number', '579'),
(137, 1, 'billing_neighborhood', 'Centro'),
(138, 1, 'billing_cellphone', ''),
(139, 1, 'billing_company', ''),
(140, 1, 'billing_address_2', ''),
(141, 1, 'shipping_first_name', ''),
(142, 1, 'shipping_last_name', ''),
(143, 1, 'shipping_company', ''),
(144, 1, 'shipping_address_1', ''),
(145, 1, 'shipping_number', ''),
(146, 1, 'shipping_address_2', ''),
(147, 1, 'shipping_neighborhood', ''),
(148, 1, 'shipping_city', ''),
(149, 1, 'shipping_postcode', ''),
(150, 1, 'shipping_country', ''),
(151, 1, 'shipping_state', ''),
(152, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:89:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv,fswp_product_meta_box\";s:8:\"advanced\";s:0:\"\";}'),
(153, 1, 'screen_layout_product', '2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BO0jwK6IlnUTS68raz6QkE/r2ssfk3/', 'admin', 'saniel_alves@hotmail.com', '', '2018-01-23 17:07:00', '1516907522:$P$B11zGr4dqJ04C6dvEOmyz8CF3zlhlk/', 0, 'admin'),
(2, 'camon.reis', '$P$Bk7h79Aiagn/o/JU1rTnP8JftHQIX6.', 'camon-reis', 'camon.reis@hotmail.com', '', '2018-01-24 04:28:33', '', 0, 'camon.reis');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(58, 10, '_product_id', '148'),
(59, 10, '_variation_id', '0'),
(60, 10, '_qty', '2'),
(61, 10, '_tax_class', ''),
(62, 10, '_line_subtotal', '27'),
(63, 10, '_line_subtotal_tax', '0'),
(64, 10, '_line_total', '24.3'),
(65, 10, '_line_tax', '0'),
(66, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(67, 11, 'discount_amount', '2.7'),
(68, 11, 'discount_amount_tax', '0'),
(69, 11, 'coupon_data', 'a:25:{s:2:\"id\";i:102;s:4:\"code\";s:10:\"hello_word\";s:6:\"amount\";s:2:\"10\";s:12:\"date_created\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-01-24 01:16:57.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:17:\"America/Sao_Paulo\";}s:13:\"date_modified\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-01-24 01:17:29.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:17:\"America/Sao_Paulo\";}s:12:\"date_expires\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2018-01-25 00:00:00.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:17:\"America/Sao_Paulo\";}s:13:\"discount_type\";s:7:\"percent\";s:11:\"description\";s:0:\"\";s:11:\"usage_count\";i:0;s:14:\"individual_use\";b:0;s:11:\"product_ids\";a:0:{}s:20:\"excluded_product_ids\";a:0:{}s:11:\"usage_limit\";i:0;s:20:\"usage_limit_per_user\";i:0;s:22:\"limit_usage_to_x_items\";N;s:13:\"free_shipping\";b:1;s:18:\"product_categories\";a:0:{}s:27:\"excluded_product_categories\";a:0:{}s:18:\"exclude_sale_items\";b:0;s:14:\"minimum_amount\";s:0:\"\";s:14:\"maximum_amount\";s:0:\"\";s:18:\"email_restrictions\";a:0:{}s:7:\"used_by\";a:0:{}s:7:\"virtual\";b:0;s:9:\"meta_data\";a:0:{}}'),
(178, 24, '_product_id', '148'),
(179, 24, '_variation_id', '0'),
(180, 24, '_qty', '1'),
(181, 24, '_tax_class', ''),
(182, 24, '_line_subtotal', '13.5'),
(183, 24, '_line_subtotal_tax', '0'),
(184, 24, '_line_total', '13.5'),
(185, 24, '_line_tax', '0'),
(186, 24, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(187, 25, '_product_id', '35'),
(188, 25, '_variation_id', '0'),
(189, 25, '_qty', '1'),
(190, 25, '_tax_class', ''),
(191, 25, '_line_subtotal', '13.5'),
(192, 25, '_line_subtotal_tax', '0'),
(193, 25, '_line_total', '13.5'),
(194, 25, '_line_tax', '0'),
(195, 25, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(196, 26, '_product_id', '164'),
(197, 26, '_variation_id', '0'),
(198, 26, '_qty', '1'),
(199, 26, '_tax_class', ''),
(200, 26, '_line_subtotal', '13.5'),
(201, 26, '_line_subtotal_tax', '0'),
(202, 26, '_line_total', '13.5'),
(203, 26, '_line_tax', '0'),
(204, 26, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(205, 27, '_product_id', '148'),
(206, 27, '_variation_id', '0'),
(207, 27, '_qty', '1'),
(208, 27, '_tax_class', ''),
(209, 27, '_line_subtotal', '13.5'),
(210, 27, '_line_subtotal_tax', '0'),
(211, 27, '_line_total', '13.5'),
(212, 27, '_line_tax', '0'),
(213, 27, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(10, 'Camiseta Vulkanic Bordada (Copy)', 'line_item', 186),
(11, 'hello_word', 'coupon', 186),
(24, 'Camiseta Vulkanic Bordada (Copy)', 'line_item', 188),
(25, 'Camiseta Vulkanic Bordada', 'line_item', 188),
(26, 'Camiseta Vulkanic Bordada (Copy) (Copy)', 'line_item', 188),
(27, 'Camiseta Vulkanic Bordada (Copy)', 'line_item', 189);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(227, '1', 'a:13:{s:8:\"customer\";s:873:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:9:\"65922-000\";s:4:\"city\";s:12:\"João Lisboa\";s:9:\"address_1\";s:28:\"Rua primeiro de maio, Centro\";s:7:\"address\";s:28:\"Rua primeiro de maio, Centro\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"MA\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:9:\"65922-000\";s:13:\"shipping_city\";s:12:\"João Lisboa\";s:18:\"shipping_address_1\";s:28:\"Rua primeiro de maio, Centro\";s:16:\"shipping_address\";s:28:\"Rua primeiro de maio, Centro\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"MA\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:1;s:10:\"first_name\";s:6:\"Saniel\";s:9:\"last_name\";s:12:\"Barros Alves\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:15:\"(99) 99205-5305\";s:5:\"email\";s:24:\"saniel_alves@hotmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:427:\"a:1:{s:32:\"ac93d4d6841134fdf853b8a1c0c07ba9\";a:10:{s:3:\"key\";s:32:\"ac93d4d6841134fdf853b8a1c0c07ba9\";s:10:\"product_id\";i:164;s:12:\"variation_id\";i:292;s:9:\"variation\";a:2:{s:13:\"attribute_cor\";s:4:\"Azul\";s:17:\"attribute_tamanho\";s:2:\"38\";}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:13.5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:13.5;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:406:\"a:15:{s:8:\"subtotal\";s:5:\"13.50\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"16.10\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"13.50\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"29.60\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:355:\"a:1:{s:32:\"47d1e990583c9c67424d369f3414728e\";a:10:{s:3:\"key\";s:32:\"47d1e990583c9c67424d369f3414728e\";s:10:\"product_id\";i:148;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:27;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:27;s:8:\"line_tax\";i:0;}}\";s:22:\"shipping_for_package_0\";s:650:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_edbc5bc747852cf4623f62089d02a1c3\";s:5:\"rates\";a:2:{s:13:\"correios-pac1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:13:\"correios-pac1\";s:9:\"method_id\";s:12:\"correios-pac\";s:11:\"instance_id\";i:1;s:5:\"label\";s:30:\"PAC (Entrega em 7 dias úteis)\";s:4:\"cost\";s:5:\"16.10\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:0:{}}s:15:\"correios-sedex2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"correios-sedex2\";s:9:\"method_id\";s:14:\"correios-sedex\";s:11:\"instance_id\";i:2;s:5:\"label\";s:32:\"SEDEX (Entrega em 3 dias úteis)\";s:4:\"cost\";s:5:\"16.10\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:0:{}}}}\";s:25:\"previous_shipping_methods\";s:68:\"a:1:{i:0;a:2:{i:0;s:13:\"correios-pac1\";i:1;s:15:\"correios-sedex2\";}}\";s:23:\"chosen_shipping_methods\";s:31:\"a:1:{i:0;s:13:\"correios-pac1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:6:\"paypal\";}', 1517253893);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Brasil', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'BR', 'country');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'correios-pac', 1, 1),
(1, 2, 'correios-sedex', 2, 1),
(1, 3, 'free_shipping', 3, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(1, 147, 1, 1, 1, '2018-01-29 02:23:53'),
(3, 148, 1, 1, 1, '2018-01-29 06:10:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`) VALUES
(1, 1, '', '', 'FY6ZL7E0OACE', 0, 1);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Índices de tabela `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Índices de tabela `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Índices de tabela `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Índices de tabela `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Índices de tabela `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Índices de tabela `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Índices de tabela `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Índices de tabela `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Índices de tabela `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Índices de tabela `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Índices de tabela `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Índices de tabela `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Índices de tabela `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Índices de tabela `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Índices de tabela `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1732;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
