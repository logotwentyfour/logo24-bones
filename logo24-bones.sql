-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2013 at 09:23 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ncd`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_trash_meta_status', '1'),
(2, 2, '_wp_trash_meta_time', '1356509234');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2012-12-22 16:37:15', '2012-12-22 16:37:15', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 1, 'admin', 'hello@logo24.com', '', '127.0.0.1', '2012-12-26 08:05:15', '2012-12-26 08:05:15', 'This is another test comment.', 0, 'trash', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', '', 1, 1),
(3, 1, 'admin', 'hello@logo24.com', '', '127.0.0.1', '2012-12-26 08:07:33', '2012-12-26 08:07:33', 'Wannanuder', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_fields`
--

DROP TABLE IF EXISTS `wp_mf_custom_fields`;
CREATE TABLE `wp_mf_custom_fields` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `label` varchar(150) NOT NULL,
  `description` text,
  `post_type` varchar(120) NOT NULL,
  `custom_group_id` int(19) NOT NULL,
  `type` varchar(100) NOT NULL,
  `required_field` tinyint(1) DEFAULT NULL,
  `display_order` mediumint(9) DEFAULT '0',
  `duplicated` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `options` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_mf_custom_fields`
--

INSERT INTO `wp_mf_custom_fields` (`id`, `name`, `label`, `description`, `post_type`, `custom_group_id`, `type`, `required_field`, `display_order`, `duplicated`, `active`, `options`) VALUES
(3, 'classes_text', 'text', '', 'magic_content', 2, 'multiline', 0, 0, 0, 1, 'a:3:{s:6:"height";s:1:"3";s:5:"width";s:2:"23";s:11:"hide_visual";s:1:"0";}'),
(4, 'classes_image', 'Image', '', 'magic_content', 2, 'image_media', 0, 0, 0, 1, 'a:4:{s:9:"css_class";s:12:"magic_fields";s:10:"max_height";s:0:"";s:9:"max_width";s:0:"";s:6:"custom";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_field_options`
--

DROP TABLE IF EXISTS `wp_mf_custom_field_options`;
CREATE TABLE `wp_mf_custom_field_options` (
  `custom_field_id` int(11) NOT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `default_option` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_field_properties`
--

DROP TABLE IF EXISTS `wp_mf_custom_field_properties`;
CREATE TABLE `wp_mf_custom_field_properties` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `properties` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_mf_custom_field_properties`
--

INSERT INTO `wp_mf_custom_field_properties` (`custom_field_id`, `properties`) VALUES
(1, 'a:2:{s:6:"height";s:1:"5";s:5:"width";s:2:"23";}'),
(2, 'a:2:{s:6:"height";s:1:"6";s:5:"width";s:2:"23";}'),
(3, 'a:0:{}'),
(4, 'a:2:{s:6:"height";s:1:"6";s:5:"width";s:2:"23";}'),
(5, 'a:1:{s:4:"size";N;}'),
(6, 'a:1:{s:4:"size";s:2:"25";}'),
(7, 'a:1:{s:4:"size";s:2:"25";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_groups`
--

DROP TABLE IF EXISTS `wp_mf_custom_groups`;
CREATE TABLE `wp_mf_custom_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `duplicated` tinyint(1) DEFAULT '0',
  `expanded` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_mf_custom_groups`
--

INSERT INTO `wp_mf_custom_groups` (`id`, `name`, `label`, `post_type`, `duplicated`, `expanded`) VALUES
(2, 'classes', 'Classes', 'magic_content', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_taxonomy`
--

DROP TABLE IF EXISTS `wp_mf_custom_taxonomy`;
CREATE TABLE `wp_mf_custom_taxonomy` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `arguments` text,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_module_groups`
--

DROP TABLE IF EXISTS `wp_mf_module_groups`;
CREATE TABLE `wp_mf_module_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panel_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duplicate` tinyint(1) NOT NULL,
  `expanded` tinyint(4) DEFAULT NULL,
  `at_right` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_mf_module_groups`
--

INSERT INTO `wp_mf_module_groups` (`id`, `panel_id`, `name`, `duplicate`, `expanded`, `at_right`) VALUES
(1, 1, '__default', 0, 0, 0),
(2, 2, '__default', 0, 0, 0),
(4, 2, 'Testimonials', 1, 0, 0),
(5, 3, '__default', 0, 0, 0),
(6, 3, 'Class', 1, 1, 0),
(7, 4, '__default', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_panel_category`
--

DROP TABLE IF EXISTS `wp_mf_panel_category`;
CREATE TABLE `wp_mf_panel_category` (
  `panel_id` int(11) NOT NULL,
  `cat_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`panel_id`,`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_panel_custom_field`
--

DROP TABLE IF EXISTS `wp_mf_panel_custom_field`;
CREATE TABLE `wp_mf_panel_custom_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `display_name` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `display_description` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `CSS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_field` tinyint(4) DEFAULT NULL,
  `duplicate` tinyint(1) NOT NULL,
  `help_text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_mf_panel_custom_field`
--

INSERT INTO `wp_mf_panel_custom_field` (`id`, `group_id`, `name`, `description`, `display_order`, `display_name`, `display_description`, `type`, `CSS`, `required_field`, `duplicate`, `help_text`) VALUES
(4, 4, 'testimonials_text', 'text', 0, 'true', 'true', 2, 'magicfields', 0, 0, NULL),
(5, 6, 'class_test', 'test', 0, 'true', 'true', 1, '', 0, 1, NULL),
(6, 7, 'test', 'test', 0, 'true', 'true', 1, 'magicfields', 0, 0, NULL),
(7, 7, 'price', 'price', 0, 'true', 'true', 1, 'magicfields', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_panel_standard_field`
--

DROP TABLE IF EXISTS `wp_mf_panel_standard_field`;
CREATE TABLE `wp_mf_panel_standard_field` (
  `panel_id` int(11) NOT NULL,
  `standard_field_id` int(11) NOT NULL,
  PRIMARY KEY (`panel_id`,`standard_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_mf_panel_standard_field`
--

INSERT INTO `wp_mf_panel_standard_field` (`panel_id`, `standard_field_id`) VALUES
(1, 11),
(1, 12),
(1, 15),
(1, 16),
(4, 3),
(4, 4),
(4, 5),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 14),
(4, 15),
(4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_posttypes`
--

DROP TABLE IF EXISTS `wp_mf_posttypes`;
CREATE TABLE `wp_mf_posttypes` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `arguments` text,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_mf_posttypes`
--

INSERT INTO `wp_mf_posttypes` (`id`, `type`, `name`, `description`, `arguments`, `active`) VALUES
(4, 'magic_content', 'Magic Content', '', 'a:4:{s:4:"core";a:6:{s:2:"id";s:1:"4";s:5:"label";s:13:"Magic Content";s:6:"labels";s:0:"";s:4:"type";s:13:"magic_content";s:11:"description";s:0:"";s:8:"quantity";s:1:"0";}s:7:"support";a:3:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:15:"page-attributes";s:1:"1";}s:6:"option";a:16:{s:6:"public";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:19:"exclude_from_search";s:1:"0";s:7:"show_ui";s:1:"1";s:12:"show_in_menu";s:1:"1";s:13:"menu_position";s:0:"";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:1:"1";s:11:"has_archive";s:1:"0";s:16:"has_archive_slug";s:0:"";s:7:"rewrite";s:1:"0";s:12:"rewrite_slug";s:0:"";s:10:"with_front";s:1:"1";s:9:"query_var";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";}s:5:"label";a:13:{s:4:"name";s:13:"Magic Content";s:13:"singular_name";s:13:"Magic Content";s:7:"add_new";s:17:"Add Magic Content";s:9:"all_items";s:17:"All Magic Content";s:12:"add_new_item";s:21:"Add New Magic Content";s:9:"edit_item";s:18:"Edit Magic Content";s:8:"new_item";s:17:"New Magic Content";s:9:"view_item";s:18:"View Magic Content";s:12:"search_items";s:20:"Search Magic Content";s:9:"not_found";s:22:"No Magic Content found";s:18:"not_found_in_trash";s:31:"No Magic Content found in Trash";s:17:"parent_item_colon";s:21:"Parent Magic Content:";s:9:"menu_name";s:13:"Magic Content";}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_posttypes_taxonomies`
--

DROP TABLE IF EXISTS `wp_mf_posttypes_taxonomies`;
CREATE TABLE `wp_mf_posttypes_taxonomies` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT 'posttype',
  `name` tinytext NOT NULL,
  `description` text NOT NULL,
  `settings` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_post_meta`
--

DROP TABLE IF EXISTS `wp_mf_post_meta`;
CREATE TABLE `wp_mf_post_meta` (
  `meta_id` int(11) NOT NULL,
  `field_name` text NOT NULL,
  `field_count` int(11) NOT NULL,
  `group_count` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `idx_post_field` (`post_id`,`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_mf_post_meta`
--

INSERT INTO `wp_mf_post_meta` (`meta_id`, `field_name`, `field_count`, `group_count`, `post_id`, `id`, `order_id`) VALUES
(117, 'copyright', 1, 1, 44, 0, 0),
(350, 'classes_text', 1, 1, 124, 0, 0),
(351, 'classes_image', 1, 1, 124, 0, 0),
(389, 'classes_text', 1, 1, 170, 0, 0),
(390, 'classes_text', 1, 2, 170, 0, 0),
(391, 'classes_image', 1, 1, 170, 0, 0),
(392, 'classes_image', 1, 2, 170, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_write_panels`
--

DROP TABLE IF EXISTS `wp_mf_write_panels`;
CREATE TABLE `wp_mf_write_panels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `capability_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expanded` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_mf_write_panels`
--

INSERT INTO `wp_mf_write_panels` (`id`, `name`, `single`, `description`, `display_order`, `capability_name`, `type`, `expanded`) VALUES
(1, 'Footer', 1, NULL, 0, 'footer', 'post', 1),
(4, 'test', 0, NULL, 0, 'test', 'page', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=515 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ncd.localhost:8888', 'yes'),
(2, 'blogname', 'Site title: Update me from settings &gt; general!', 'yes'),
(3, 'blogdescription', 'Tagline, if required. Edit from Settings &gt; General', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'add@the-real-address.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '5', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '5', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:15:{i:0;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:57:"custom-admin-dashboard-widget/custom_dashboard_widget.php";i:3;s:39:"disable-admin-bar/disable-admin-bar.php";i:4;s:36:"google-sitemap-generator/sitemap.php";i:5;s:45:"limit-login-attempts/limit-login-attempts.php";i:6;s:23:"magic-fields-2/main.php";i:7;s:36:"paddy-picturefill/wp-picturefill.php";i:8;s:25:"read-time/ja-readtime.php";i:9;s:23:"respondjs/respondjs.php";i:10;s:27:"selectivizr/selectivizr.php";i:11;s:41:"shortcode-exec-php/shortcode-exec-php.php";i:12;s:27:"wp-hashcash/wp-hashcash.php";i:13;s:25:"wp-smushit/wp-smushit.php";i:14;s:39:"youtube-shortcode/youtube-shortcode.php";}', 'yes'),
(36, 'home', 'http://ncd.localhost:8888', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'logo24-bones', 'yes'),
(45, 'stylesheet', 'logo24-bones', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:103:"<small><p>&copy Copyright (output current year). (Output client name). All rights reserved.</p></small>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '11', 'yes'),
(88, 'page_on_front', '5', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:67:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:13:"content_block";b:1;s:6:"footer";b:1;s:12:"testimonials";b:1;s:7:"classes";b:1;s:4:"test";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:8:"sidebar1";a:2:{i:0;s:14:"recent-posts-2";i:1;s:12:"categories-2";}s:19:"wp_inactive_widgets";a:0:{}s:4:"blog";a:0:{}s:6:"footer";a:1:{i:0;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1357835871;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1357835882;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1357836904;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:38:"http://wordpress.org/wordpress-3.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:38:"http://wordpress.org/wordpress-3.5.zip";s:10:"no_content";s:49:"http://wordpress.org/wordpress-3.5-no-content.zip";s:11:"new_bundled";s:50:"http://wordpress.org/wordpress-3.5-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:3:"3.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.5";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1357802107;s:15:"version_checked";s:3:"3.5";}', 'yes'),
(103, '_transient_random_seed', 'e23cae3db7aabd6b80dddf1592a1383d', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1357766453;s:7:"checked";a:1:{s:12:"logo24-bones";s:3:"1.0";}s:8:"response";a:0:{}}', 'yes'),
(107, 'auth_key', '-<:$G4)d4]OMBBLd5f4j2X9E*GR(@j>Bg{+YY)G7/$R)cBw%#k7Q/Q~z2(k9Fi3R', 'yes'),
(108, 'auth_salt', 'XAq)wZR+wB5:<nt@AO6ZQbQ1IkeG@OC$S )fBJBF7Uj_4Vq2`HBWHng!!N9sU6wr', 'yes'),
(109, 'logged_in_key', 'U$n>RZU?.q%{{8{6S!B(jAJI:<JhFxXXBk/^Ek)%a=l4ix=bLVpo=[0jc,mAc[ju', 'yes'),
(110, 'logged_in_salt', '~r4tFtHp#VYQKnEK~Edx9|Mtp##J$47N.+Glrj0u5HsvEK8K?%_DeGV}`?1C^_DJ', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:25:"http://ncd.localhost:8888";s:4:"link";s:101:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://ncd.localhost:8888/";s:3:"url";s:134:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://ncd.localhost:8888/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'aoF_dJWE+lxb(v.cf=vl-JS9Z7=3C~#|ZjpTB`6A8>l6QEyeEh_yv=VJs5BlwX4#', 'yes'),
(113, 'nonce_salt', 'Qp%uWz4ZU#q2MAw4z}X.19h={T[uN8^k$,#<dH[]ZAxNbK/`==h0.L5Y)P.15Kd?', 'yes'),
(118, '_transient_timeout_plugin_slugs', '1357852932', 'no'),
(119, '_transient_plugin_slugs', 'a:18:{i:0;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:57:"custom-admin-dashboard-widget/custom_dashboard_widget.php";i:3;s:39:"disable-admin-bar/disable-admin-bar.php";i:4;s:36:"google-sitemap-generator/sitemap.php";i:5;s:45:"limit-login-attempts/limit-login-attempts.php";i:6;s:23:"magic-fields-2/main.php";i:7;s:25:"read-time/ja-readtime.php";i:8;s:23:"respondjs/respondjs.php";i:9;s:27:"selectivizr/selectivizr.php";i:10;s:41:"shortcode-exec-php/shortcode-exec-php.php";i:11;s:33:"w3-total-cache/w3-total-cache.php";i:12;s:23:"wooslider/wooslider.php";i:13;s:52:"wordpress-backup-to-dropbox/wp-backup-to-dropbox.php";i:14;s:27:"wp-hashcash/wp-hashcash.php";i:15;s:36:"paddy-picturefill/wp-picturefill.php";i:16;s:25:"wp-smushit/wp-smushit.php";i:17;s:39:"youtube-shortcode/youtube-shortcode.php";}', 'no'),
(128, 'can_compress_scripts', '1', 'yes'),
(129, 'recently_activated', 'a:1:{s:21:"magic-fields/Main.php";i:1357766393;}', 'yes'),
(130, 'plugin_wp-hashcash', 'a:14:{s:13:"comments-spam";b:0;s:12:"comments-ham";i:2;s:12:"signups-spam";b:0;s:11:"signups-ham";b:0;s:3:"key";a:3:{i:0;i:67732378;i:1;i:1283234004;i:2;i:1046393736;}s:8:"key-date";i:1357757727;s:7:"refresh";i:604800;s:13:"signup_active";i:1;s:15:"comments_active";i:1;s:11:"attribution";i:1;s:10:"moderation";s:8:"moderate";s:11:"validate-ip";b:1;s:12:"validate-url";b:1;s:7:"logging";b:1;}', 'yes'),
(131, 'aioseop_options', 'a:41:{s:9:"aiosp_can";s:2:"on";s:12:"aiosp_donate";s:0:"";s:16:"aiosp_home_title";s:42:"Update me! (I only appear on the homepage)";s:22:"aiosp_home_description";s:18:"Add a description!";s:19:"aiosp_home_keywords";s:0:"";s:23:"aiosp_max_words_excerpt";s:0:"";s:20:"aiosp_rewrite_titles";s:2:"on";s:23:"aiosp_post_title_format";s:27:"%post_title% | %blog_title%";s:23:"aiosp_page_title_format";s:27:"%page_title% | %blog_title%";s:27:"aiosp_category_title_format";s:31:"%category_title% | %blog_title%";s:26:"aiosp_archive_title_format";s:21:"%date% | %blog_title%";s:22:"aiosp_tag_title_format";s:20:"%tag% | %blog_title%";s:25:"aiosp_search_title_format";s:23:"%search% | %blog_title%";s:24:"aiosp_description_format";s:13:"%description%";s:22:"aiosp_404_title_format";s:33:"Nothing found for %request_words%";s:18:"aiosp_paged_format";s:14:" - Part %page%";s:25:"aiosp_google_analytics_id";s:0:"";s:29:"aiosp_ga_track_outbound_links";s:0:"";s:20:"aiosp_use_categories";s:0:"";s:32:"aiosp_dynamic_postspage_keywords";s:2:"on";s:22:"aiosp_category_noindex";s:0:"";s:21:"aiosp_archive_noindex";s:0:"";s:18:"aiosp_tags_noindex";s:0:"";s:14:"aiosp_cap_cats";s:2:"on";s:27:"aiosp_generate_descriptions";s:0:"";s:16:"aiosp_debug_info";s:0:"";s:20:"aiosp_post_meta_tags";s:0:"";s:20:"aiosp_page_meta_tags";s:0:"";s:20:"aiosp_home_meta_tags";s:0:"";s:13:"aiosp_enabled";s:1:"1";s:17:"aiosp_enablecpost";s:0:"";s:26:"aiosp_use_tags_as_keywords";s:2:"on";s:16:"aiosp_seopostcol";s:0:"";s:18:"aiosp_seocustptcol";s:0:"";s:21:"aiosp_posttypecolumns";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:12:"aiosp_do_log";s:0:"";s:22:"aiosp_google_publisher";s:0:"";s:15:"aiosp_ga_domain";s:0:"";s:21:"aiosp_ga_multi_domain";s:0:"";s:21:"aiosp_front_meta_tags";s:0:"";s:14:"aiosp_ex_pages";s:0:"";}', 'yes'),
(132, '_site_transient_timeout_wporg_theme_feature_list', '1356205658', 'yes'),
(133, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(134, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1356194864;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(135, 'current_theme', 'LOGO24 Bones Starter theme', 'yes'),
(136, 'theme_mods_logo24-bones', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"main-nav";i:3;s:12:"footer-links";i:2;}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(158, 'wpcf7', 'a:1:{s:7:"version";s:5:"3.3.2";}', 'yes'),
(166, '_transient_plugins_delete_result_1', '1', 'yes'),
(172, 'mf_db_version', '3', 'yes'),
(184, 'mf_custom_write_panel', 's:250:"a:8:{s:13:"condense-menu";i:0;s:25:"hide-non-standart-content";i:1;s:15:"hide-write-post";i:0;s:15:"hide-write-page";i:0;s:18:"hide-visual-editor";i:0;s:19:"prompt-editing-post";i:0;s:14:"assign-to-role";i:0;s:26:"default-custom-write-panel";s:0:"";}";', 'yes'),
(185, 'RC_CWP_BLOG_DB_VERSION', '8', 'yes'),
(186, 'RC_CWP_DB_VERSION', '8', 'yes'),
(187, 'MAGIC_FIELDS_fist_time', '1', 'yes'),
(192, 'scep_codewidth', '600', 'yes'),
(193, 'scep_codeheight', '200', 'yes'),
(194, 'scep_names', 'a:10:{i:0;s:12:"current_year";i:1;s:10:"site_title";i:2;s:30:"site_title_for_contact_details";i:3;s:10:"email_link";i:4;s:25:"phone_for_contact_details";i:5;s:26:"street_for_contact_details";i:6;s:24:"town_for_contact_details";i:7;s:26:"county_for_contact_details";i:8;s:27:"country_for_contact_details";i:9;s:31:"postal_code_for_contact_details";}', 'yes'),
(199, 'scep_tinymce_cap', 'edit_posts', 'yes'),
(200, 'scep_author_cap', 'edit_posts', 'yes'),
(201, 'scep_deleted', '0', 'yes'),
(203, 'scep_enabled_current_year', '1', 'yes'),
(204, 'scep_buffer_current_year', '1', 'yes'),
(205, 'scep_description_current_year', 'Example', 'yes'),
(206, 'scep_phpcode_current_year', 'echo date(''Y'') . PHP_EOL;', 'yes'),
(217, 'scep_enabled_site_title', '1', 'yes'),
(218, 'scep_buffer_site_title', '1', 'yes'),
(219, 'scep_description_site_title', '', 'yes'),
(220, 'scep_phpcode_site_title', 'echo bloginfo(''name'') . ''.'' . PHP_EOL;', 'yes'),
(226, 'custom_dashboard_widget_title', 'Documentation', 'yes'),
(227, 'custom_dashboard_widget_content', '<h2>Home page</h2>\r\n<ul style=\\"list-style:disc; margin-left:14px;\\">\r\n<li><a href=\\"/wp-admin/options-general.php?page=all-in-one-seo-pack/aioseop.class.php\\">Edit the home page meta title and description here</a>.<br> (The title is seen along the top of the browser and in search results, along with the meta description.)</li>\r\n</ul>\r\n<h2>Contact Details</h2>\r\n<ul style=\\"list-style:disc; margin-left:14px;\\">\r\n<li>Update the Company name (or website title), tagline, email address, phone and postal address from <a href=\\"/wp-admin/options-general.php\\">here</a>.</li>\r\n<li>To add contact details anywhere around the site use the following, instead of re-typing, them to make sure details are consistent and up to date. These shortcodes will fill in the correct information from the <a href=\\"/wp-admin/options-general.php\\">contact settings</a>:</li>\r\n<li>[site_title_for_contact_details]</li>\r\n<li>[email_link]</li>\r\n<li>[phone_for_contact_details]</li>\r\n<li>[street_for_contact_details]</li>\r\n<li>[town_for_contact_details] [postal_code_for_contact_details]</li>\r\n<li>[county_for_contact_details]</li>\r\n<li>[country_for_contact_details]</li>\r\n</ul>\r\n<h2>Footer</h2>\r\n<ul style=\\"list-style:disc; margin-left:14px;\\">\r\n<li><a href=\\"/wp-admin/post.php?action=edit&post=45\\">Edit the footer here</a>.</li>\r\n</ul>', 'yes'),
(234, 'contact', 'a:4:{s:5:"phone";s:15:"+353 1 000 1234";s:3:"fax";s:0:"";s:6:"mobile";s:0:"";s:7:"address";s:51:"1 Lexington Avenue,\r\nMarley Park,\r\nDublin,\r\nIreland";}', 'yes'),
(269, 'scep_enabled_site_title_for_contact_details', '1', 'yes'),
(270, 'scep_buffer_site_title_for_contact_details', '1', 'yes'),
(271, 'scep_description_site_title_for_contact_details', '', 'yes'),
(272, 'scep_phpcode_site_title_for_contact_details', 'echo ''<span class="fn org">'';\necho bloginfo(''name'');\necho ''</span>'';', 'yes'),
(289, 'scep_enabled_email_link', '1', 'yes'),
(290, 'scep_buffer_email_link', '1', 'yes'),
(291, 'scep_description_email_link', '', 'yes'),
(292, 'scep_phpcode_email_link', 'echo ''<a href="mailto:''; \necho bloginfo(''admin_email'');\necho ''">'';\necho bloginfo(''admin_email'');\necho ''</a>'';', 'yes'),
(347, 'phone', '01 Add the real number', 'yes'),
(366, 'scep_enabled_phone_for_contact_details', '1', 'yes'),
(367, 'scep_buffer_phone_for_contact_details', '1', 'yes'),
(368, 'scep_description_phone_for_contact_details', '', 'yes'),
(369, 'scep_phpcode_phone_for_contact_details', 'echo ''<span class="tel">'';\necho get_option(''phone'');\necho ''</span>'';', 'yes'),
(372, 'postal_address', '25 Beverly Hills,\r\nHollywood,\r\n90210,\r\nCA,\r\nUSA', 'yes'),
(383, 'street', 'Suite 9', 'yes'),
(384, 'street2', '1 Lower Leeson Street', 'yes'),
(385, 'town', 'Dublin', 'yes'),
(386, 'county', 'Co. Dublin', 'yes'),
(387, 'country', 'Ireland', 'yes'),
(390, 'scep_enabled_street_for_contact_details', '1', 'yes'),
(391, 'scep_buffer_street_for_contact_details', '1', 'yes'),
(392, 'scep_description_street_for_contact_details', 'If the second street address isn''t set, don''t show it.', 'yes'),
(393, 'scep_phpcode_street_for_contact_details', 'if (!get_option(''street2'') == "") {\necho ''<span class="street-address">'';\necho ''<span>'';\necho get_option(''street'');\necho ''</span><br>'';\necho ''<span>'';\necho get_option(''street2'');\necho ''</span></span>'';\n} else {\necho ''<span class="street-address">'';\necho get_option(''street'');\necho ''</span>'';\n}', 'yes'),
(398, 'scep_enabled_town_for_contact_details', '1', 'yes'),
(399, 'scep_buffer_town_for_contact_details', '1', 'yes'),
(400, 'scep_description_town_for_contact_details', '', 'yes'),
(401, 'scep_phpcode_town_for_contact_details', 'echo ''<span class="locality">'';\necho get_option(''town'');\necho ''</span>'';', 'yes'),
(406, 'scep_enabled_county_for_contact_details', '1', 'yes'),
(407, 'scep_buffer_county_for_contact_details', '1', 'yes'),
(408, 'scep_description_county_for_contact_details', '', 'yes'),
(409, 'scep_phpcode_county_for_contact_details', 'echo ''<span class="region">'';\necho get_option(''county'');\necho ''</span>'';', 'yes'),
(418, 'scep_enabled_country_for_contact_details', '1', 'yes'),
(419, 'scep_buffer_country_for_contact_details', '1', 'yes'),
(420, 'scep_description_country_for_contact_details', '', 'yes'),
(421, 'scep_phpcode_country_for_contact_details', 'echo ''<span class="country-name">'';\necho get_option(''country'');\necho ''</span>'';', 'yes'),
(422, 'postal-code', '2', 'yes'),
(425, 'scep_enabled_postal_code_for_contact_details', '1', 'yes'),
(426, 'scep_buffer_postal_code_for_contact_details', '1', 'yes'),
(427, 'scep_description_postal_code_for_contact_details', '', 'yes'),
(428, 'scep_phpcode_postal_code_for_contact_details', 'echo ''<span class="postal-code">'';\necho get_option(''postal-code'');\necho ''</span>'';', 'yes'),
(433, 'category_children', 'a:0:{}', 'yes'),
(438, 'ja_rt_wpm', '250', 'yes'),
(439, 'ja_rt_prefix', 'The estimated time to read this article is', 'yes'),
(440, 'ja_rt_suffix', '', 'yes'),
(444, 'limit_login_retries', 'a:1:{s:9:"127.0.0.1";i:1;}', 'no'),
(445, 'limit_login_retries_valid', 'a:1:{s:9:"127.0.0.1";i:1356720112;}', 'no'),
(457, '_site_transient_timeout_browser_6d2fc10430ea42e941de36bb0fe226a8', '1358362818', 'yes'),
(458, '_site_transient_browser_6d2fc10430ea42e941de36bb0fe226a8', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"23.0.1271.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(459, 'sm_options', 'a:56:{s:18:"sm_b_prio_provider";s:41:"GoogleSitemapGeneratorPrioByCountProvider";s:13:"sm_b_filename";s:11:"sitemap.xml";s:10:"sm_b_debug";b:1;s:8:"sm_b_xml";b:1;s:9:"sm_b_gzip";b:1;s:9:"sm_b_ping";b:1;s:12:"sm_b_pingmsn";b:1;s:19:"sm_b_manual_enabled";b:0;s:17:"sm_b_auto_enabled";b:1;s:15:"sm_b_auto_delay";b:1;s:15:"sm_b_manual_key";s:32:"75f3da1e59dbc00c0f0214673a099086";s:11:"sm_b_memory";s:0:"";s:9:"sm_b_time";i:-1;s:14:"sm_b_max_posts";i:-1;s:13:"sm_b_safemode";b:0;s:18:"sm_b_style_default";b:1;s:10:"sm_b_style";s:0:"";s:11:"sm_b_robots";b:1;s:12:"sm_b_exclude";a:0:{}s:17:"sm_b_exclude_cats";a:0:{}s:18:"sm_b_location_mode";s:4:"auto";s:20:"sm_b_filename_manual";s:0:"";s:19:"sm_b_fileurl_manual";s:0:"";s:10:"sm_in_home";b:1;s:11:"sm_in_posts";b:1;s:15:"sm_in_posts_sub";b:0;s:11:"sm_in_pages";b:1;s:10:"sm_in_cats";b:0;s:10:"sm_in_arch";b:0;s:10:"sm_in_auth";b:0;s:10:"sm_in_tags";b:0;s:9:"sm_in_tax";a:0:{}s:17:"sm_in_customtypes";a:0:{}s:13:"sm_in_lastmod";b:1;s:10:"sm_cf_home";s:5:"daily";s:11:"sm_cf_posts";s:7:"monthly";s:11:"sm_cf_pages";s:6:"weekly";s:10:"sm_cf_cats";s:6:"weekly";s:10:"sm_cf_auth";s:6:"weekly";s:15:"sm_cf_arch_curr";s:5:"daily";s:14:"sm_cf_arch_old";s:6:"yearly";s:10:"sm_cf_tags";s:6:"weekly";s:10:"sm_pr_home";d:1;s:11:"sm_pr_posts";d:0.59999999999999997779553950749686919152736663818359375;s:15:"sm_pr_posts_min";d:0.200000000000000011102230246251565404236316680908203125;s:11:"sm_pr_pages";d:0.59999999999999997779553950749686919152736663818359375;s:10:"sm_pr_cats";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_arch";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_auth";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_tags";d:0.299999999999999988897769753748434595763683319091796875;s:12:"sm_i_donated";b:0;s:17:"sm_i_hide_donated";b:0;s:17:"sm_i_install_date";i:1357758112;s:14:"sm_i_hide_note";b:0;s:15:"sm_i_hide_works";b:0;s:16:"sm_i_hide_donors";b:0;}', 'yes'),
(461, 'sm_status', 'O:28:"GoogleSitemapGeneratorStatus":24:{s:10:"_startTime";d:1357803300.743032932281494140625;s:8:"_endTime";d:1357803301.1550960540771484375;s:11:"_hasChanged";b:1;s:12:"_memoryUsage";i:15466496;s:9:"_lastPost";i:16;s:9:"_lastTime";d:1357803300.77909088134765625;s:8:"_usedXml";b:1;s:11:"_xmlSuccess";b:1;s:8:"_xmlPath";s:47:"/Users/paddy/Sites/newcastle-design/sitemap.xml";s:7:"_xmlUrl";s:37:"http://ncd.localhost:8888/sitemap.xml";s:8:"_usedZip";b:1;s:11:"_zipSuccess";b:1;s:8:"_zipPath";s:50:"/Users/paddy/Sites/newcastle-design/sitemap.xml.gz";s:7:"_zipUrl";s:40:"http://ncd.localhost:8888/sitemap.xml.gz";s:11:"_usedGoogle";b:1;s:10:"_googleUrl";s:105:"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Fncd.localhost%3A8888%2Fsitemap.xml.gz";s:15:"_gooogleSuccess";b:1;s:16:"_googleStartTime";d:1357803300.78322505950927734375;s:14:"_googleEndTime";d:1357803300.8962249755859375;s:8:"_usedMsn";b:1;s:7:"_msnUrl";s:98:"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Fncd.localhost%3A8888%2Fsitemap.xml.gz";s:11:"_msnSuccess";b:1;s:13:"_msnStartTime";d:1357803300.8982670307159423828125;s:11:"_msnEndTime";d:1357803301.14043903350830078125;}', 'no'),
(496, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1357777235', 'yes'),
(497, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3406";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2207";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2091";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1732";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1645";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1450";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1165";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1161";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1153";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1119";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1066";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:3:"983";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"892";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"836";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"826";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:3:"767";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"724";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"719";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"665";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"664";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"617";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"613";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"593";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"573";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"524";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"503";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"498";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"496";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"490";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"471";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"466";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"444";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"441";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"432";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"404";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"401";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"399";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"383";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"382";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"378";}}', 'yes'),
(500, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1357802108;}', 'yes'),
(505, '_site_transient_timeout_theme_roots', '1357803938', 'yes'),
(506, '_site_transient_theme_roots', 'a:2:{s:12:"logo24-bones";s:7:"/themes";s:16:"newcastle-design";s:7:"/themes";}', 'yes'),
(512, 'rewrite_rules', 'a:84:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:39:"magic_content/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"magic_content/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"magic_content/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"magic_content/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"magic_content/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"magic_content/(.+?)/trackback/?$";s:40:"index.php?magic_content=$matches[1]&tb=1";s:52:"magic_content/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?magic_content=$matches[1]&feed=$matches[2]";s:47:"magic_content/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?magic_content=$matches[1]&feed=$matches[2]";s:40:"magic_content/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?magic_content=$matches[1]&paged=$matches[2]";s:47:"magic_content/(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?magic_content=$matches[1]&cpage=$matches[2]";s:32:"magic_content/(.+?)(/[0-9]+)?/?$";s:52:"index.php?magic_content=$matches[1]&page=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:29:"comments/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=404 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1357758209:1'),
(6, 5, '_wp_page_template', 'default'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1356251699:1'),
(9, 7, '_wp_page_template', 'default'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1356805201:1'),
(12, 9, '_wp_page_template', 'template-contact.php'),
(13, 11, '_edit_last', '1'),
(14, 11, '_wp_page_template', 'default'),
(15, 11, '_edit_lock', '1356196929:1'),
(16, 15, '_menu_item_type', 'post_type'),
(17, 15, '_menu_item_menu_item_parent', '0'),
(18, 15, '_menu_item_object_id', '11'),
(19, 15, '_menu_item_object', 'page'),
(20, 15, '_menu_item_target', ''),
(21, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 15, '_menu_item_xfn', ''),
(23, 15, '_menu_item_url', ''),
(25, 16, '_menu_item_type', 'post_type'),
(26, 16, '_menu_item_menu_item_parent', '0'),
(27, 16, '_menu_item_object_id', '9'),
(28, 16, '_menu_item_object', 'page'),
(29, 16, '_menu_item_target', ''),
(30, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 16, '_menu_item_xfn', ''),
(32, 16, '_menu_item_url', ''),
(34, 17, '_menu_item_type', 'post_type'),
(35, 17, '_menu_item_menu_item_parent', '0'),
(36, 17, '_menu_item_object_id', '7'),
(37, 17, '_menu_item_object', 'page'),
(38, 17, '_menu_item_target', ''),
(39, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 17, '_menu_item_xfn', ''),
(41, 17, '_menu_item_url', ''),
(43, 18, '_menu_item_type', 'post_type'),
(44, 18, '_menu_item_menu_item_parent', '0'),
(45, 18, '_menu_item_object_id', '5'),
(46, 18, '_menu_item_object', 'page'),
(47, 18, '_menu_item_target', ''),
(48, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 18, '_menu_item_xfn', ''),
(50, 18, '_menu_item_url', ''),
(52, 31, '_form', '<label>Name</label>[text* your-name]\n\n<label>Email</label>[email* your-email]\n\n<label>Phone</label>[text* your-phone]\n\n<label>Address</label>[textarea* your-address]\n\n<label>Best time to call</label>[select call-time "Morning" "Afternoon" "Evening"]\n\n<label>Enquiry</label>[textarea your-message]\n\n[submit "Send"]'),
(53, 31, '_mail', 'a:7:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:203:"From: [your-name]\nEmail: <[your-email]>\nPhone: <[your-phone]>\nAddress: <[your-address]> \n\nBest time to call:\n[call-time]\n\nMessage Body:\n[your-message]\n\n--\nThis mail is sent via your website contact form.";s:9:"recipient";s:16:"hello@logo24.com";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;}'),
(54, 31, '_mail_2', 'a:8:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:121:"Message body:\n[your-message]\n\n--\nThis mail is sent via contact form on Make sure to update this http://ncd.localhost:8888";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;}'),
(55, 31, '_messages', 'a:13:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks!";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:16:"invalid_required";s:31:"Please fill the required field.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";}'),
(56, 31, '_additional_settings', ''),
(57, 35, '_menu_item_type', 'custom'),
(58, 35, '_menu_item_menu_item_parent', '0'),
(59, 35, '_menu_item_object_id', '35'),
(60, 35, '_menu_item_object', 'custom'),
(61, 35, '_menu_item_target', ''),
(62, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 35, '_menu_item_xfn', ''),
(64, 35, '_menu_item_url', '#'),
(66, 36, '_menu_item_type', 'post_type'),
(67, 36, '_menu_item_menu_item_parent', '0'),
(68, 36, '_menu_item_object_id', '11'),
(69, 36, '_menu_item_object', 'page'),
(70, 36, '_menu_item_target', ''),
(71, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 36, '_menu_item_xfn', ''),
(73, 36, '_menu_item_url', ''),
(75, 37, '_menu_item_type', 'post_type'),
(76, 37, '_menu_item_menu_item_parent', '0'),
(77, 37, '_menu_item_object_id', '9'),
(78, 37, '_menu_item_object', 'page'),
(79, 37, '_menu_item_target', ''),
(80, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 37, '_menu_item_xfn', ''),
(82, 37, '_menu_item_url', ''),
(84, 38, '_menu_item_type', 'post_type'),
(85, 38, '_menu_item_menu_item_parent', '0'),
(86, 38, '_menu_item_object_id', '7'),
(87, 38, '_menu_item_object', 'page'),
(88, 38, '_menu_item_target', ''),
(89, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 38, '_menu_item_xfn', ''),
(91, 38, '_menu_item_url', ''),
(93, 39, '_menu_item_type', 'post_type'),
(94, 39, '_menu_item_menu_item_parent', '0'),
(95, 39, '_menu_item_object_id', '5'),
(96, 39, '_menu_item_object', 'page'),
(97, 39, '_menu_item_target', ''),
(98, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 39, '_menu_item_xfn', ''),
(100, 39, '_menu_item_url', ''),
(113, 42, '_edit_last', '1'),
(114, 42, '_edit_lock', '1357766726:1'),
(115, 44, '_edit_last', '1'),
(117, 44, 'copyright', 'This is the copyright statement.'),
(118, 44, '_edit_lock', '1356292039:1'),
(123, 1, '_edit_lock', '1356515486:1'),
(124, 67, '_wp_attached_file', '2012/12/mountain.jpg'),
(125, 67, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1440;s:4:"file";s:20:"2012/12/mountain.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:4:"file";s:20:"mountain-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:268:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-150x150.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2012/12/mountain-150x150.jpg</span>)";}s:6:"medium";a:5:{s:4:"file";s:20:"mountain-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:268:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-300x225.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2012/12/mountain-300x225.jpg</span>)";}s:5:"large";a:5:{s:4:"file";s:21:"mountain-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:270:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-1024x768.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2012/12/mountain-1024x768.jpg</span>)";}s:15:"bones-thumb-600";a:5:{s:4:"file";s:20:"mountain-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:268:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-600x150.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2012/12/mountain-600x150.jpg</span>)";}s:15:"bones-thumb-300";a:5:{s:4:"file";s:20:"mountain-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:268:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-300x100.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2012/12/mountain-300x100.jpg</span>)";}s:14:"post-thumbnail";a:5:{s:4:"file";s:20:"mountain-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:268:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-125x125.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2012/12/mountain-125x125.jpg</span>)";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}s:10:"wp_smushit";s:252:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2012/12/mountain.jpg</span>)";}'),
(126, 67, '_wp_attachment_image_alt', 'Mountain at the foot of lakes'),
(127, 1, '_thumbnail_id', '67'),
(128, 1, '_edit_last', '1'),
(132, 71, '_edit_last', '1'),
(134, 71, '_edit_lock', '1356506611:1'),
(135, 73, '_edit_last', '1'),
(137, 73, '_edit_lock', '1356506698:1'),
(140, 76, '_edit_last', '1'),
(142, 76, '_edit_lock', '1356506718:1'),
(143, 77, '_edit_last', '1'),
(144, 77, '_edit_lock', '1356506741:1'),
(146, 79, '_edit_last', '1'),
(148, 79, '_edit_lock', '1356507134:1'),
(172, 92, '_edit_last', '1'),
(173, 92, '_edit_lock', '1357758263:1'),
(174, 92, '_wp_page_template', 'default'),
(175, 97, '_menu_item_type', 'custom'),
(176, 97, '_menu_item_menu_item_parent', '0'),
(177, 97, '_menu_item_object_id', '97'),
(178, 97, '_menu_item_object', 'custom'),
(179, 97, '_menu_item_target', ''),
(180, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(181, 97, '_menu_item_xfn', ''),
(182, 97, '_menu_item_url', '#'),
(183, 97, '_menu_item_orphaned', '1357758366'),
(188, 100, '_menu_item_type', 'custom'),
(189, 100, '_menu_item_menu_item_parent', '0'),
(190, 100, '_menu_item_object_id', '100'),
(191, 100, '_menu_item_object', 'custom'),
(192, 100, '_menu_item_target', ''),
(193, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 100, '_menu_item_xfn', ''),
(195, 100, '_menu_item_url', '#'),
(197, 101, '_edit_last', '1'),
(198, 101, '_edit_lock', '1357758765:1'),
(199, 101, '_wp_page_template', 'default'),
(200, 104, '_edit_last', '1'),
(201, 104, '_edit_lock', '1357758785:1'),
(202, 104, '_wp_page_template', 'default'),
(203, 106, '_edit_last', '1'),
(204, 106, '_edit_lock', '1357759851:1'),
(205, 106, '_wp_page_template', 'default'),
(206, 108, '_menu_item_type', 'post_type'),
(207, 108, '_menu_item_menu_item_parent', '38'),
(208, 108, '_menu_item_object_id', '101'),
(209, 108, '_menu_item_object', 'page'),
(210, 108, '_menu_item_target', ''),
(211, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 108, '_menu_item_xfn', ''),
(213, 108, '_menu_item_url', ''),
(215, 109, '_menu_item_type', 'post_type'),
(216, 109, '_menu_item_menu_item_parent', '38'),
(217, 109, '_menu_item_object_id', '104'),
(218, 109, '_menu_item_object', 'page'),
(219, 109, '_menu_item_target', ''),
(220, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(221, 109, '_menu_item_xfn', ''),
(222, 109, '_menu_item_url', ''),
(224, 110, '_menu_item_type', 'post_type'),
(225, 110, '_menu_item_menu_item_parent', '109'),
(226, 110, '_menu_item_object_id', '106'),
(227, 110, '_menu_item_object', 'page'),
(228, 110, '_menu_item_target', ''),
(229, 110, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 110, '_menu_item_xfn', ''),
(231, 110, '_menu_item_url', ''),
(233, 111, '_edit_last', '1'),
(234, 111, '_wp_page_template', 'template-custom.php'),
(235, 111, '_edit_lock', '1357803526:1'),
(236, 113, '_edit_last', '1'),
(237, 113, '_edit_lock', '1357760881:1'),
(238, 113, '_wp_page_template', 'template-single-column.php'),
(239, 115, '_menu_item_type', 'post_type'),
(240, 115, '_menu_item_menu_item_parent', '0'),
(241, 115, '_menu_item_object_id', '113'),
(242, 115, '_menu_item_object', 'page'),
(243, 115, '_menu_item_target', ''),
(244, 115, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 115, '_menu_item_xfn', ''),
(246, 115, '_menu_item_url', ''),
(248, 116, '_menu_item_type', 'post_type'),
(249, 116, '_menu_item_menu_item_parent', '0'),
(250, 116, '_menu_item_object_id', '111'),
(251, 116, '_menu_item_object', 'page'),
(252, 116, '_menu_item_target', ''),
(253, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 116, '_menu_item_xfn', ''),
(255, 116, '_menu_item_url', ''),
(269, 0, 't_Testimonials', 'template-magic-fields.php'),
(296, 0, 't_Classes', 'default'),
(320, 0, 't_test', 'template-magic-fields.php'),
(352, 171, '_wp_attached_file', '2013/01/oscar_statuette1.jpg'),
(353, 171, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:565;s:6:"height";i:318;s:4:"file";s:28:"2013/01/oscar_statuette1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:28:"oscar_statuette1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:284:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2013/01/oscar_statuette1-150x150.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2013/01/oscar_statuette1-150x150.jpg</span>)";}s:6:"medium";a:5:{s:4:"file";s:28:"oscar_statuette1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:284:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2013/01/oscar_statuette1-300x168.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2013/01/oscar_statuette1-300x168.jpg</span>)";}s:15:"bones-thumb-600";a:5:{s:4:"file";s:28:"oscar_statuette1-565x150.jpg";s:5:"width";i:565;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:284:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2013/01/oscar_statuette1-565x150.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2013/01/oscar_statuette1-565x150.jpg</span>)";}s:15:"bones-thumb-300";a:5:{s:4:"file";s:28:"oscar_statuette1-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:284:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2013/01/oscar_statuette1-300x100.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2013/01/oscar_statuette1-300x100.jpg</span>)";}s:14:"post-thumbnail";a:5:{s:4:"file";s:28:"oscar_statuette1-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";s:10:"wp_smushit";s:284:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2013/01/oscar_statuette1-125x125.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2013/01/oscar_statuette1-125x125.jpg</span>)";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}s:10:"wp_smushit";s:268:"Smush.it error: Could not get the image while processing <span class=''code''>http://ncd.localhost:8888/wp-content/uploads/2013/01/oscar_statuette1.jpg</span> (<span class=''code''>/Users/paddy/Sites/newcastle-design/wp-content/uploads/2013/01/oscar_statuette1.jpg</span>)";}'),
(354, 170, '_edit_last', '1'),
(355, 170, '_edit_lock', '1357803502:1'),
(368, 170, '_wp_mf_page_template', 'template-magic-fields.php'),
(389, 170, 'classes_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.'),
(390, 170, 'classes_text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.'),
(391, 170, 'classes_image', '171'),
(392, 170, 'classes_image', '67'),
(395, 174, '_menu_item_type', 'post_type'),
(396, 174, '_menu_item_menu_item_parent', '0'),
(397, 174, '_menu_item_object_id', '170'),
(398, 174, '_menu_item_object', 'magic_content'),
(399, 174, '_menu_item_target', ''),
(400, 174, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(401, 174, '_menu_item_xfn', ''),
(402, 174, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-12-26 07:33:15', '2012-12-26 07:33:15', 'If your native approach comes from editorial or marketing work, prop your eyelids open, because this matters for you. Here’s why: information science gave us much of what has turned into the modern practice of <a href="#">information architecture</a>, which is what saves our slaved-over and expensive content from dissolving into a formless puddle of goo.\r\n\r\n<img class="size-large wp-image-67" alt="Mountain at the foot of lakes" src="http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-1024x768.jpg" width="1024" height="768" />\r\n<h3>Information architecture</h3>\r\n\r\nInformation architecture is the design of structures for infor- mation, including navigational structures and content taxono- mies. The people who do this work strive to bring order to chaos and build structures that help users find what they’re looking for and accomplish the tasks they set out to do. They create marvelous items like wireframes, site maps, page dia- grams, and user flows, and often also do enormous amounts of user research beforehand.', 'Information Scientists', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2012-12-26 07:52:27', '2012-12-26 07:52:27', '', 0, 'http://ncd.localhost:8888/?p=1', 0, 'post', '', 2),
(5, 1, '2012-12-22 16:55:27', '2012-12-22 16:55:27', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">(You can delete all of this and still find a copy at <a title="Style Guide" href="http://ncd.localhost:8888/style-guide/">Style Guide</a>, for reference.) This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nA normal paragraph. Marketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along.\r\n\r\nWhat about a table.\r\n<table>\r\n<tbody>\r\n<tr>\r\n<th>ID</th>\r\n<th>Name</th>\r\n<th>Color</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>Paddy</td>\r\n<td>Blue</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Shane</td>\r\n<td>Pink</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nNone of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n\r\n<dl><dt>Understand existing resources</dt><dd>Are there people available to work on content? Are they good at it?</dd><dt>Make the business case for content strategy</dt><dd>How will the recommended content changes meet overarching organiza- tional goals?</dd></dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n\r\nAnd then there was an unordered list:\r\n<ul>\r\n	<li>The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n\r\nAnd now an ordered list:\r\n<ol>\r\n	<li>Project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\r\n\r\nSome preformatted code, which probably won’t be need to often.\r\n<pre><code>&lt;div class="footer"&gt;\r\n    &amp;copy; 2004 Foo Corporation\r\n&lt;/div&gt;\r\n</code></pre>', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2013-01-09 19:04:33', '2013-01-09 19:04:33', '', 0, 'http://ncd.localhost:8888/?page_id=5', 100, 'page', '', 0),
(6, 1, '2012-12-22 16:55:10', '2012-12-22 16:55:10', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision', '', '', '2012-12-22 16:55:10', '2012-12-22 16:55:10', '', 5, 'http://ncd.localhost:8888/2012/12/22/5-revision/', 0, 'revision', '', 0),
(7, 1, '2012-12-22 16:55:42', '2012-12-22 16:55:42', 'The about page.', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2012-12-22 16:55:42', '2012-12-22 16:55:42', '', 0, 'http://ncd.localhost:8888/?page_id=7', 200, 'page', '', 0),
(8, 1, '2012-12-22 16:55:33', '2012-12-22 16:55:33', '', 'About', '', 'inherit', 'open', 'open', '', '7-revision', '', '', '2012-12-22 16:55:33', '2012-12-22 16:55:33', '', 7, 'http://ncd.localhost:8888/2012/12/22/7-revision/', 0, 'revision', '', 0),
(9, 1, '2012-12-22 16:55:59', '2012-12-22 16:55:59', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [street_for_contact_details]\r\n[town_for_contact_details] [postal_code_for_contact_details]\r\n[county_for_contact_details]\r\n[country_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'publish', 'open', 'closed', '', 'contact', '', '', '2012-12-29 18:21:46', '2012-12-29 18:21:46', '', 0, 'http://ncd.localhost:8888/?page_id=9', 500, 'page', '', 0),
(10, 1, '2012-12-22 16:55:51', '2012-12-22 16:55:51', '', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision', '', '', '2012-12-22 16:55:51', '2012-12-22 16:55:51', '', 9, 'http://ncd.localhost:8888/2012/12/22/9-revision/', 0, 'revision', '', 0),
(11, 1, '2012-12-22 16:56:12', '2012-12-22 16:56:12', '', 'Blog', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2012-12-22 17:22:09', '2012-12-22 17:22:09', '', 0, 'http://ncd.localhost:8888/?page_id=11', 150, 'page', '', 0),
(12, 1, '2012-12-22 16:56:12', '2012-12-22 16:56:12', '', 'Blog', '', 'inherit', 'open', 'open', '', '11-revision', '', '', '2012-12-22 16:56:12', '2012-12-22 16:56:12', '', 11, 'http://ncd.localhost:8888/2012/12/22/11-revision/', 0, 'revision', '', 0),
(13, 1, '2012-12-22 16:55:59', '2012-12-22 16:55:59', 'The contact page.', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-2', '', '', '2012-12-22 16:55:59', '2012-12-22 16:55:59', '', 9, 'http://ncd.localhost:8888/2012/12/22/9-revision-2/', 0, 'revision', '', 0),
(14, 1, '2012-12-22 16:56:50', '2012-12-22 16:56:50', '', 'Blog', '', 'inherit', 'open', 'open', '', '11-revision-2', '', '', '2012-12-22 16:56:50', '2012-12-22 16:56:50', '', 11, 'http://ncd.localhost:8888/2012/12/22/11-revision-2/', 0, 'revision', '', 0),
(15, 1, '2012-12-22 17:34:57', '2012-12-22 17:34:57', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2013-01-10 07:41:18', '2013-01-10 07:41:18', '', 0, 'http://ncd.localhost:8888/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2012-12-22 17:34:57', '2012-12-22 17:34:57', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2013-01-10 07:41:18', '2013-01-10 07:41:18', '', 0, 'http://ncd.localhost:8888/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2012-12-22 17:34:57', '2012-12-22 17:34:57', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2013-01-10 07:41:18', '2013-01-10 07:41:18', '', 0, 'http://ncd.localhost:8888/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2012-12-22 17:34:57', '2012-12-22 17:34:57', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2013-01-10 07:41:18', '2013-01-10 07:41:18', '', 0, 'http://ncd.localhost:8888/?p=18', 1, 'nav_menu_item', '', 0),
(20, 1, '2013-01-09 19:04:30', '2013-01-09 19:04:30', '<h1>The Craft of Content Strategy (h1)</h1>\n<p class="lead">(You can delete all of this and still find a copy at Style Guide, for reference.) This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\n\n<h2>A tangled family tree (h2)</h2>\nA normal paragraph. Marketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along.\n\nWhat about a table.\n<table>\n<tbody>\n<tr>\n<th>ID</th>\n<th>Name</th>\n<th>Color</th>\n</tr>\n<tr>\n<td>1</td>\n<td>Paddy</td>\n<td>Blue</td>\n</tr>\n<tr>\n<td>2</td>\n<td>Shane</td>\n<td>Pink</td>\n</tr>\n</tbody>\n</table>\nNone of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\n\nSometimes we need definition lists.\n\n<dl><dt>Understand existing resources</dt><dd>Are there people available to work on content? Are they good at it?</dd><dt>Make the business case for content strategy</dt><dd>How will the recommended content changes meet overarching organiza- tional goals?</dd></dl>\n<h3>The origin of the species (h3)</h3>\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\n\nAnd then there was an unordered list:\n<ul>\n	<li>The inverted pyramid</li>\n	<li>5 Ws and a H</li>\n	<li>Show don’t tell</li>\n</ul>\n<h4>Influence #1: The Editor (h4)</h4>\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\n\nAnd now an ordered list:\n<ol>\n	<li>Project delays produced by the inability to get the right content ready for launch, and</li>\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\n</ol>\n<h5>Content people work for the user</h5>\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\n<h6>Stories matter</h6>\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\n\nSome preformatted code, which probably won’t be need to often.\n<pre><code>&lt;div class="footer"&gt;\n    &amp;copy; 2004 Foo Corporation\n&lt;/div&gt;\n</code></pre>', 'Home', '', 'inherit', 'open', 'open', '', '5-autosave', '', '', '2013-01-09 19:04:30', '2013-01-09 19:04:30', '', 5, 'http://ncd.localhost:8888/2012/12/22/5-autosave/', 0, 'revision', '', 0),
(21, 1, '2012-12-22 16:55:27', '2012-12-22 16:55:27', 'This is the homepage', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-2', '', '', '2012-12-22 16:55:27', '2012-12-22 16:55:27', '', 5, 'http://ncd.localhost:8888/2012/12/22/5-revision-2/', 0, 'revision', '', 0),
(22, 1, '2012-12-22 19:06:50', '2012-12-22 19:06:50', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. Throughout each project, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nMarketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. None of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those fields are much louder and more public than others.\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n<ul>\r\n	<li>The inverted pyramid (ul—unordered list)</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n<ol>\r\n	<li>project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-3', '', '', '2012-12-22 19:06:50', '2012-12-22 19:06:50', '', 5, 'http://ncd.localhost:8888/2012/12/22/5-revision-3/', 0, 'revision', '', 0),
(23, 1, '2012-12-22 19:08:01', '2012-12-22 19:08:01', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. Throughout each project, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nMarketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. None of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those fields are much louder and more public than others.\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n<ul>\r\n	<li>(ul—unordered list) The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n<ol>\r\n	<li>(ul—unordered list) project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-4', '', '', '2012-12-22 19:08:01', '2012-12-22 19:08:01', '', 5, 'http://ncd.localhost:8888/2012/12/22/5-revision-4/', 0, 'revision', '', 0),
(24, 1, '2012-12-22 19:08:54', '2012-12-22 19:08:54', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nMarketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. None of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n<ul>\r\n	<li>(ul—unordered list) The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n<ol>\r\n	<li>(ul—unordered list) project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-5', '', '', '2012-12-22 19:08:54', '2012-12-22 19:08:54', '', 5, 'http://ncd.localhost:8888/2012/12/22/5-revision-5/', 0, 'revision', '', 0),
(25, 1, '2012-12-23 07:07:59', '2012-12-23 07:07:59', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nMarketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. None of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n<dl>\r\n<dt>Understand existing resources</dt>\r\n<dd>Are there people available to work on content? Are they good at it?</dd>\r\n<dt>Make the business case for content strategy</dt>\r\n<dd>How will the recommended content changes meet overarching organiza- tional goals?</dd>\r\n</dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n<ul>\r\n	<li>(ul—unordered list) The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n<ol>\r\n	<li>(ul—unordered list) project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-6', '', '', '2012-12-23 07:07:59', '2012-12-23 07:07:59', '', 5, 'http://ncd.localhost:8888/2012/12/23/5-revision-6/', 0, 'revision', '', 0),
(26, 1, '2012-12-23 07:12:23', '2012-12-23 07:12:23', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nMarketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. None of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n<dl>\r\n<dt>Understand existing resources</dt>\r\n<dd>Are there people available to work on content? Are they good at it?</dd>\r\n<dt>Make the business case for content strategy</dt>\r\n<dd>How will the recommended content changes meet overarching organiza- tional goals?</dd>\r\n</dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n<ul>\r\n	<li>(ul—unordered list) The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n<ol>\r\n	<li>(ul—unordered list) project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\r\n\r\nSome preformatted code, which probably won’t be need to often.\r\n\r\n<pre><code>&lt;div class="footer"&gt;\r\n    &amp;copy; 2004 Foo Corporation\r\n&lt;/div&gt;\r\n</code></pre>', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-7', '', '', '2012-12-23 07:12:23', '2012-12-23 07:12:23', '', 5, 'http://ncd.localhost:8888/2012/12/23/5-revision-7/', 0, 'revision', '', 0),
(27, 1, '2012-12-23 07:15:01', '2012-12-23 07:15:01', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nMarketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. \r\n\r\nWhat about a table.\r\n\r\n<table>\r\n<tbody><tr>\r\n<th>ID</th>\r\n<th>Name</th>\r\n<th>Rank</th>\r\n  </tr>\r\n<tr>\r\n<td>1</td>\r\n<td>Tom Preston-Werner</td>\r\n<td>Awesome</td>\r\n  </tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Albert Einstein</td>\r\n<td>Nearly as awesome</td>\r\n  </tr>\r\n</tbody></table>\r\n\r\nNone of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n<dl>\r\n<dt>Understand existing resources</dt>\r\n<dd>Are there people available to work on content? Are they good at it?</dd>\r\n<dt>Make the business case for content strategy</dt>\r\n<dd>How will the recommended content changes meet overarching organiza- tional goals?</dd>\r\n</dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n<ul>\r\n	<li>(ul—unordered list) The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n<ol>\r\n	<li>(ul—unordered list) project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\r\n\r\nSome preformatted code, which probably won’t be need to often.\r\n\r\n<pre><code>&lt;div class="footer"&gt;\r\n    &amp;copy; 2004 Foo Corporation\r\n&lt;/div&gt;\r\n</code></pre>', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-8', '', '', '2012-12-23 07:15:01', '2012-12-23 07:15:01', '', 5, 'http://ncd.localhost:8888/2012/12/23/5-revision-8/', 0, 'revision', '', 0),
(28, 1, '2012-12-23 07:20:40', '2012-12-23 07:20:40', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nMarketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. \r\n\r\nWhat about a table.\r\n\r\n<table>\r\n<tbody><tr>\r\n<th>ID</th>\r\n<th>Name</th>\r\n<th>Color</th>\r\n  </tr>\r\n<tr>\r\n<td>1</td>\r\n<td>Paddy</td>\r\n<td>Blue</td>\r\n  </tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Shane</td>\r\n<td>Pink</td>\r\n  </tr>\r\n</tbody></table>\r\n\r\nNone of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n<dl>\r\n<dt>Understand existing resources</dt>\r\n<dd>Are there people available to work on content? Are they good at it?</dd>\r\n<dt>Make the business case for content strategy</dt>\r\n<dd>How will the recommended content changes meet overarching organiza- tional goals?</dd>\r\n</dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n<ul>\r\n	<li>(ul—unordered list) The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n<ol>\r\n	<li>(ul—unordered list) project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\r\n\r\nSome preformatted code, which probably won’t be need to often.\r\n\r\n<pre><code>&lt;div class="footer"&gt;\r\n    &amp;copy; 2004 Foo Corporation\r\n&lt;/div&gt;\r\n</code></pre>', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-9', '', '', '2012-12-23 07:20:40', '2012-12-23 07:20:40', '', 5, 'http://ncd.localhost:8888/2012/12/23/5-revision-9/', 0, 'revision', '', 0),
(29, 1, '2012-12-22 17:21:58', '2012-12-22 17:21:58', 'The contact page.', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-3', '', '', '2012-12-22 17:21:58', '2012-12-22 17:21:58', '', 9, 'http://ncd.localhost:8888/2012/12/22/9-revision-3/', 0, 'revision', '', 0),
(30, 1, '2012-12-23 07:29:28', '2012-12-23 07:29:28', '<h3 class="widget-title">Contact details</h3>\r\n    <ul>\r\n      <li>Email: <a href="mailto:info@domain.com">info@domain.com</a></li>\r\n      <li>Phone: <span rel="tel">01 123 5432</span></li>\r\n      <li>  \r\n        Address:<br>\r\n        <span class="fn org">Company name</span>,\r\n        <span class="adr">\r\n          <span class="street-address">Street, <br> \r\n      Address,</span><br>\r\n          <span class="postal-code">Post Code,</span>\r\n          <span class="country-name">Country</span>\r\n        </span>\r\n      </li>\r\n      </ul>\r\n', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-4', '', '', '2012-12-23 07:29:28', '2012-12-23 07:29:28', '', 9, 'http://ncd.localhost:8888/2012/12/23/9-revision-4/', 0, 'revision', '', 0),
(31, 1, '2012-12-23 07:30:30', '2012-12-23 07:30:30', '<label>Name</label>[text* your-name]\r\n\r\n<label>Email</label>[email* your-email]\r\n\r\n<label>Phone</label>[text* your-phone]\r\n\r\n<label>Address</label>[textarea* your-address]\r\n\r\n<label>Best time to call</label>[select call-time "Morning" "Afternoon" "Evening"]\r\n\r\n<label>Enquiry</label>[textarea your-message]\r\n\r\n[submit "Send"]\n[your-subject]\n[your-name] <[your-email]>\nFrom: [your-name]\r\nEmail: <[your-email]>\r\nPhone: <[your-phone]>\r\nAddress: <[your-address]> \r\n\r\nBest time to call:\r\n[call-time]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis mail is sent via your website contact form.\nhello@logo24.com\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nMessage body:\r\n[your-message]\r\n\r\n--\r\nThis mail is sent via contact form on Make sure to update this http://ncd.localhost:8888\n[your-email]\n\n\n\nYour message was sent successfully. Thanks!\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nEmail address seems invalid.\nPlease fill the required field.\nYour entered code is incorrect.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nYour answer is not correct.', 'Contact form', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2012-12-23 07:41:50', '2012-12-23 07:41:50', '', 0, 'http://ncd.localhost:8888/?post_type=wpcf7_contact_form&#038;p=31', 0, 'wpcf7_contact_form', '', 0),
(32, 1, '2012-12-23 07:29:49', '2012-12-23 07:29:49', '    <ul>\r\n      <li>Email: <a href="mailto:info@domain.com">info@domain.com</a></li>\r\n      <li>Phone: <span rel="tel">01 123 5432</span></li>\r\n      <li>  \r\n        Address:<br>\r\n        <span class="fn org">Company name</span>,\r\n        <span class="adr">\r\n          <span class="street-address">Street, <br> \r\n      Address,</span><br>\r\n          <span class="postal-code">Post Code,</span>\r\n          <span class="country-name">Country</span>\r\n        </span>\r\n      </li>\r\n      </ul>\r\n', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-5', '', '', '2012-12-23 07:29:49', '2012-12-23 07:29:49', '', 9, 'http://ncd.localhost:8888/2012/12/23/9-revision-5/', 0, 'revision', '', 0),
(33, 1, '2012-12-23 07:34:20', '2012-12-23 07:34:20', '[contact-form-7 id="31" title="Contact form"] \r\n\r\n   <ul>\r\n      <li>Email: <a href="mailto:info@domain.com">info@domain.com</a></li>\r\n      <li>Phone: <span rel="tel">01 123 5432</span></li>\r\n      <li>  \r\n        Address:<br>\r\n        <span class="fn org">Company name</span>,\r\n        <span class="adr">\r\n          <span class="street-address">Street, <br> \r\n      Address,</span><br>\r\n          <span class="postal-code">Post Code,</span>\r\n          <span class="country-name">Country</span>\r\n        </span>\r\n      </li>\r\n      </ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-6', '', '', '2012-12-23 07:34:20', '2012-12-23 07:34:20', '', 9, 'http://ncd.localhost:8888/2012/12/23/9-revision-6/', 0, 'revision', '', 0),
(34, 1, '2012-12-24 10:20:19', '2012-12-24 10:20:19', '[contact-form-7 id="31" title="Contact form"]\n<ul>\n	<li>[site_title_for_contact_details]</li>\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\n</a></li>\n	<li>Phone: [phone_for_contact_details]</li>\n	<li>Address: [street_for_contact_details]\n[town_for_contact_details] [postal_code_for_contact_details]\n[county_for_contact_details]\n[country_for_contact_details]</li>\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-autosave', '', '', '2012-12-24 10:20:19', '2012-12-24 10:20:19', '', 9, 'http://ncd.localhost:8888/2012/12/23/9-autosave/', 0, 'revision', '', 0),
(35, 1, '2012-12-23 08:04:28', '2012-12-23 08:04:28', '', 'Footer menu (Appearance > Menu)', '', 'publish', 'open', 'open', '', 'main-menu-edit-from-appearance-menus', '', '', '2013-01-10 07:41:18', '2013-01-10 07:41:18', '', 0, 'http://ncd.localhost:8888/?p=35', 5, 'nav_menu_item', '', 0),
(36, 1, '2012-12-23 08:05:03', '2012-12-23 08:05:03', ' ', '', '', 'publish', 'open', 'open', '', '36', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2012-12-23 08:05:03', '2012-12-23 08:05:03', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=37', 7, 'nav_menu_item', '', 0),
(38, 1, '2012-12-23 08:05:03', '2012-12-23 08:05:03', ' ', '', '', 'publish', 'open', 'open', '', '38', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2012-12-23 08:05:03', '2012-12-23 08:05:03', ' ', '', '', 'publish', 'open', 'open', '', '39', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=39', 1, 'nav_menu_item', '', 0),
(42, 1, '2012-12-23 14:44:46', '2012-12-23 14:44:46', 'Balls', 'Footer (title won''t appear)', '', 'publish', 'closed', 'closed', '', '42', '', '', '2013-01-09 21:27:15', '2013-01-09 21:27:15', '', 0, 'http://ncd.localhost:8888/?post_type=footer&#038;p=42', 0, 'footer', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(43, 1, '2013-01-09 21:25:45', '2013-01-09 21:25:45', 'Copyrighting awesomenewss!!! :)', '', '', 'inherit', 'open', 'open', '', '42-autosave', '', '', '2013-01-09 21:25:45', '2013-01-09 21:25:45', '', 42, 'http://ncd.localhost:8888/2012/12/23/42-autosave/', 0, 'revision', '', 0),
(44, 1, '2012-12-23 15:22:24', '2012-12-23 15:22:24', '', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2012-12-23 15:22:24', '2012-12-23 15:22:24', '', 0, 'http://ncd.localhost:8888/?post_type=content_block&#038;p=44', 0, 'content_block', '', 0),
(54, 1, '2012-12-23 07:34:24', '2012-12-23 07:34:24', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>Email: <a href="mailto:info@domain.com">info@domain.com</a></li>\r\n	<li>Phone: <span>01 123 5432</span></li>\r\n	<li>Address:\r\n\r\n<span class="fn org">Company name</span>,\r\n<span class="adr">\r\n<span class="street-address">Street,\r\n\r\nAddress,</span>\r\n\r\n<span class="postal-code">Post Code,</span>\r\n<span class="country-name">Country</span>\r\n</span></li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-7', '', '', '2012-12-23 07:34:24', '2012-12-23 07:34:24', '', 9, 'http://ncd.localhost:8888/2012/12/23/9-revision-7/', 0, 'revision', '', 0),
(55, 1, '2012-12-24 08:52:02', '2012-12-24 08:52:02', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>Email: <a href="mailto:info@domain.com">info@domain.com</a></li>\r\n	<li>Phone: [contact type="phone"]</li>\r\n	<li>Address: [contact type="phone"]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-8', '', '', '2012-12-24 08:52:02', '2012-12-24 08:52:02', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-8/', 0, 'revision', '', 0),
(56, 1, '2012-12-24 08:56:46', '2012-12-24 08:56:46', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: <a href="mailto:info@domain.com">info@domain.com</a></li>\r\n	<li>Phone: [contact type="phone"]</li>\r\n	<li>Address: [contact type="phone"]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-9', '', '', '2012-12-24 08:56:46', '2012-12-24 08:56:46', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-9/', 0, 'revision', '', 0),
(57, 1, '2012-12-24 09:03:46', '2012-12-24 09:03:46', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [contact type="phone"]</li>\r\n	<li>Address: [contact type="address"]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-10', '', '', '2012-12-24 09:03:46', '2012-12-24 09:03:46', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-10/', 0, 'revision', '', 0),
(58, 1, '2012-12-24 09:22:50', '2012-12-24 09:22:50', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [contact type="address"]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-11', '', '', '2012-12-24 09:22:50', '2012-12-24 09:22:50', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-11/', 0, 'revision', '', 0),
(59, 1, '2012-12-24 09:48:45', '2012-12-24 09:48:45', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [address_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-12', '', '', '2012-12-24 09:48:45', '2012-12-24 09:48:45', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-12/', 0, 'revision', '', 0),
(60, 1, '2012-12-24 10:01:55', '2012-12-24 10:01:55', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [street_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-13', '', '', '2012-12-24 10:01:55', '2012-12-24 10:01:55', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-13/', 0, 'revision', '', 0),
(61, 1, '2012-12-24 10:10:39', '2012-12-24 10:10:39', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [street_for_contact_details]\r\n[town_for_contact_details]\r\n[locality_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-14', '', '', '2012-12-24 10:10:39', '2012-12-24 10:10:39', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-14/', 0, 'revision', '', 0),
(62, 1, '2012-12-24 10:11:44', '2012-12-24 10:11:44', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [street_for_contact_details]\r\n[town_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-15', '', '', '2012-12-24 10:11:44', '2012-12-24 10:11:44', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-15/', 0, 'revision', '', 0),
(63, 1, '2012-12-24 10:15:11', '2012-12-24 10:15:11', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [street_for_contact_details]\r\n[town_for_contact_details]\r\n[county_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-16', '', '', '2012-12-24 10:15:11', '2012-12-24 10:15:11', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-16/', 0, 'revision', '', 0),
(64, 1, '2012-12-24 10:15:41', '2012-12-24 10:15:41', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [street_for_contact_details]\r\n[town_for_contact_details]\r\n[county_for_contact_details]\r\n[country_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-17', '', '', '2012-12-24 10:15:41', '2012-12-24 10:15:41', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-17/', 0, 'revision', '', 0),
(66, 1, '2012-12-26 07:22:39', '2012-12-26 07:22:39', 'If your native approach comes from editorial or marketing work, prop your eyelids open, because this matters for you. Here’s why: information science gave us much of what has turned into the modern practice of <a href="#">information architecture</a>, which is what saves our slaved-over and expensive content from dissolving into a formless puddle of goo.\n\n&nbsp;\n<h3>Information architecture</h3>\n<div>\n\nInformation architecture is the design of structures for infor- mation, including navigational structures and content taxono- mies. The people who do this work strive to bring order to chaos and build structures that help users find what they’re looking for and accomplish the tasks they set out to do. They create marvelous items like wireframes, site maps, page dia- grams, and user flows, and often also do enormous amounts of user research beforehand.\n\n</div>', 'Information Scientists', '', 'inherit', 'open', 'open', '', '1-autosave', '', '', '2012-12-26 07:22:39', '2012-12-26 07:22:39', '', 1, 'http://ncd.localhost:8888/2012/12/26/1-autosave/', 0, 'revision', '', 0),
(67, 1, '2012-12-26 06:30:42', '2012-12-26 06:30:42', '', 'mountain', 'This is a sample caption', 'inherit', 'open', 'open', '', 'mountain', '', '', '2012-12-26 06:30:42', '2012-12-26 06:30:42', '', 1, 'http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2012-12-22 16:37:15', '2012-12-22 16:37:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2012-12-22 16:37:15', '2012-12-22 16:37:15', '', 1, 'http://ncd.localhost:8888/2012/12/22/1-revision/', 0, 'revision', '', 0),
(69, 1, '2012-12-26 06:31:22', '2012-12-26 06:31:22', 'Here we only show in excerpt by default, and a featured image if one has been used! Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet <a href="#">dolore magna aliquam era</a>t volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-2', '', '', '2012-12-26 06:31:22', '2012-12-26 06:31:22', '', 1, 'http://ncd.localhost:8888/2012/12/26/1-revision-2/', 0, 'revision', '', 0),
(70, 1, '2012-12-26 07:20:38', '2012-12-26 07:20:38', 'If your native approach comes from editorial or marketing work, prop your eyelids open, because this matters for you. Here’s why: information science gave us much of what has turned into the modern practice of <a href="#">information architecture</a>, which is what saves our slaved-over and expensive content from dissolving into a formless puddle of goo.\r\n<h3>Information architecture</h3>\r\n<div>\r\n\r\nInformation architecture is the design of structures for infor- mation, including navigational structures and content taxono- mies. The people who do this work strive to bring order to chaos and build structures that help users find what they’re looking for and accomplish the tasks they set out to do. They create marvelous items like wireframes, site maps, page dia- grams, and user flows, and often also do enormous amounts of user research beforehand.\r\n\r\n</div>', 'Information Scientists', '', 'inherit', 'open', 'open', '', '1-revision-3', '', '', '2012-12-26 07:20:38', '2012-12-26 07:20:38', '', 1, 'http://ncd.localhost:8888/2012/12/26/1-revision-3/', 0, 'revision', '', 0),
(71, 1, '2012-12-26 07:23:44', '2012-12-26 07:23:44', '<div>\r\n\r\nYou know how websites all used to be made of individual, hard-coded HTML pages? That sucked.\r\n\r\nIf you weren’t around for that part of the web, think of it as the scribes-in-monasteries period of web history during which all written human knowledge was hand-copied by very pale guys with poor eyesight. The invention of the web has been compared to Gutenberg’s introduction of movable type, and for good reason—but on the web content side, our com- munication revolution really took place when software devel- opers brought the database-and-display-template systems of the old offline computing world onto the web in the form of content management systems.\r\n\r\nThe first major content management systems were the lum- bering and expensive descendents of old-school document- management systems. So corporate and institutional content managers (mostly known as “webmasters” at that point) were the first ones to break out into the daylight of content manage- ment. All the content that had been tortured into blocks of HTML was suddenly given a home in a database, which meant that “revising the boilerplate” suddenly meant making copy changes in one or two places, instead of five or ten. Site rede- signs began to seem just hard instead of utterly impossible.\r\n\r\n</div>', 'Content Management', '', 'publish', 'open', 'open', '', 'content-management', '', '', '2012-12-26 07:23:44', '2012-12-26 07:23:44', '', 0, 'http://ncd.localhost:8888/?p=71', 0, 'post', '', 0),
(72, 1, '2012-12-26 07:24:45', '2012-12-26 07:24:45', '<div>\n\nYou know how websites all used to be made of individual, hard-coded HTML pages? That sucked.\n\nIf you weren’t around for that part of the web, think of it as the scribes-in-monasteries period of web history during which all written human knowledge was hand-copied by very pale guys with poor eyesight. The invention of the web has been compared to Gutenberg’s introduction of movable type, and for good reason—but on the web content side, our com- munication revolution really took place when software devel- opers brought the database-and-display-template systems of the old offline computing world onto the web in the form of content management systems.\n\nThe first major content management systems were the lum- bering and expensive descendents of old-school document- management systems. So corporate and institutional content managers (mostly known as “webmasters” at that point) were the first ones to break out into the daylight of content manage- ment. All the content that had been tortured into blocks of HTML was suddenly given a home in a database, which meant that “revising the boilerplate” suddenly meant making copy changes in one or two places, instead of five or ten. Site rede- signs began to seem just hard instead of utterly impossible.\n\n</div>', 'Content Management', '', 'inherit', 'open', 'open', '', '71-autosave', '', '', '2012-12-26 07:24:45', '2012-12-26 07:24:45', '', 71, 'http://ncd.localhost:8888/2012/12/26/71-autosave/', 0, 'revision', '', 0),
(73, 1, '2012-12-26 07:25:44', '2012-12-26 07:25:44', 'Because our discipline is new, and because we often work with user experience and web development teams with their own methodologies, the last few years have produced a host of discussions about the best way to do content strategy. Content strategy is sufficiently diverse that nearly all content workers must specialize to some extent, and our methodolo- gies tend to reflect that specialization.', 'Methodologies', '', 'publish', 'open', 'open', '', 'cross-training', '', '', '2012-12-26 07:26:38', '2012-12-26 07:26:38', '', 0, 'http://ncd.localhost:8888/?p=73', 0, 'post', '', 0),
(74, 1, '2012-12-26 07:25:44', '2012-12-26 07:25:44', 'Finally, there is the question of content development. In its purest form, content strategy does not produce content. It produces plans, guidelines, schedules, and goals for content, but not the substance itself, except inasmuch as examples are required to illustrate strategic recommendations. But if you have the ability to create good content, you’ll have a real ad- vantage over content strategists who do not.', 'Cross Training', '', 'inherit', 'open', 'open', '', '73-revision', '', '', '2012-12-26 07:25:44', '2012-12-26 07:25:44', '', 73, 'http://ncd.localhost:8888/2012/12/26/73-revision/', 0, 'revision', '', 0),
(75, 1, '2012-12-26 07:26:14', '2012-12-26 07:26:14', '<div>\r\n\r\nThe things we do change from project to project and run the gamut from the purely analytical to the highly creative. In an industry in which the efforts of visual designers, information architects, front-end developers, and content creators can be seen center-stage when a new web- site launches, content strategy is a fundamentally backstage discipline.\r\n\r\nYou can’t see it or click it. It’s unusual for a website visi- tor to be able to point to a feature and say “that’s the result of smart content strategy!”\r\n\r\nPerhaps because of this opacity, I’m tempted to define the practice of content strategy primarily in terms of what it pro- duces. But although lists of deliverables and methods can be useful, they’re not enough on their own to explain how the practice works in real life.\r\n\r\nThroughout this section, I will introduce a series of tools and techniques that I and others have used on content strategy projects, but I will also try to dig deeper and talk about...\r\n\r\n</div>', 'Tools and Techniques', '', 'inherit', 'open', 'open', '', '73-revision-2', '', '', '2012-12-26 07:26:14', '2012-12-26 07:26:14', '', 73, 'http://ncd.localhost:8888/2012/12/26/73-revision-2/', 0, 'revision', '', 0),
(76, 1, '2012-12-26 07:26:59', '2012-12-26 07:26:59', '<div>\r\n\r\nBefore we dive in, a note about “deliverables”—those things we give or “deliver” to clients. It’s a ridiculous, clumsy word. Unfortunately, the circumlocutions required to get around it are awful, too, so I’m going to keep using it. And hey, it could be worse—at least our industry mostly avoids “work product.”\r\n\r\nHere’s a completely non-comprehensive list of deliverables you might use while doing content strategy:\r\n\r\n</div>', 'Things we make', '', 'publish', 'open', 'open', '', 'things-we-make', '', '', '2012-12-26 07:26:59', '2012-12-26 07:26:59', '', 0, 'http://ncd.localhost:8888/?p=76', 0, 'post', '', 0),
(77, 1, '2012-12-26 07:27:29', '2012-12-26 07:27:29', 'Content strategy incorporates a wider range of processes and deliverables than do most of its sibling fields, and one thing we rarely discuss is how to choose the best approach for each project. As a result, we often stick to the same few easily re- peated techniques, even when they’re not the ones best suited to a particular project. When we do that, we miss the chance to do better and more interesting work.\r\n\r\nEvery deliverable you create and every meeting you lead deals with two kinds of strategy: the one you’re developing for the project, and the one you’re using to guide your own communication with your colleagues, employers, and clients. These people usually won’t be your target audience for the project, but they are the audience for your deliverables. I’m not suggesting that we do full-scale user research and strategy for each client or document—if we did, we’d never get anything else done—but we can think strategically about our work.', 'The content strategist’s children go...shoeless?', '', 'publish', 'open', 'open', '', 'the-content-strategists-children-go-shoeless', '', '', '2012-12-26 07:27:29', '2012-12-26 07:27:29', '', 0, 'http://ncd.localhost:8888/?p=77', 0, 'post', '', 0),
(78, 1, '2012-12-26 07:27:22', '2012-12-26 07:27:22', '<div>\n<ol start="0">\n	<li>Content strategy incorporates a wider range of processes and deliverables than do most of its sibling fields, and one thing we rarely discuss is how to choose the best approach for each project. As a result, we often stick to the same few easily re- peated techniques, even when they’re not the ones best suited to a particular project. When we do that, we miss the chance to do better and more interesting work.\n\nEvery deliverable you create and every meeting you lead deals with two kinds of strategy: the one you’re developing for the project, and the one you’re using to guide your own communication with your colleagues, employers, and clients. These people usually won’t be your target audience for the project, but they are the audience for your deliverables. I’m not suggesting that we do full-scale user research and strategy for each client or document—if we did, we’d never get anything else done—but we can think strategically about our work.</li>\n</ol>\n</div>', 'The content strategist’s children go...shoeless?', '', 'inherit', 'open', 'open', '', '77-revision', '', '', '2012-12-26 07:27:22', '2012-12-26 07:27:22', '', 77, 'http://ncd.localhost:8888/2012/12/26/77-revision/', 0, 'revision', '', 0),
(79, 1, '2012-12-26 07:28:12', '2012-12-26 07:28:12', 'A second way to look at our work is to consider what each tool or process is meant to accomplish. Think of this as a de- tailed, project-specific version of developing a methodology. On a very high level, you need to know what you intend to accomplish, either with a content strategy project or over the long term in a content strategy role. Once you understand the highest-level goal, you can work backward to figure out what you need to produce.', 'By function: what does it do?', '', 'publish', 'open', 'open', '', 'by-function-what-does-it-do', '', '', '2012-12-26 07:28:12', '2012-12-26 07:28:12', '', 0, 'http://ncd.localhost:8888/?p=79', 0, 'post', '', 0),
(80, 1, '2012-12-26 07:22:49', '2012-12-26 07:22:49', 'If your native approach comes from editorial or marketing work, prop your eyelids open, because this matters for you. Here’s why: information science gave us much of what has turned into the modern practice of <a href="#">information architecture</a>, which is what saves our slaved-over and expensive content from dissolving into a formless puddle of goo.\r\n\r\n[caption id="attachment_67" align="alignnone" width="1024"]<img class="size-large wp-image-67" alt="Mountain at the foot of lakes" src="http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-1024x768.jpg" width="1024" height="768" /> This is a sample caption[/caption]\r\n<h3>Information architecture</h3>\r\n<div>\r\n\r\nInformation architecture is the design of structures for infor- mation, including navigational structures and content taxono- mies. The people who do this work strive to bring order to chaos and build structures that help users find what they’re looking for and accomplish the tasks they set out to do. They create marvelous items like wireframes, site maps, page dia- grams, and user flows, and often also do enormous amounts of user research beforehand.\r\n\r\n</div>', 'Information Scientists', '', 'inherit', 'open', 'open', '', '1-revision-4', '', '', '2012-12-26 07:22:49', '2012-12-26 07:22:49', '', 1, 'http://ncd.localhost:8888/2012/12/26/1-revision-4/', 0, 'revision', '', 0),
(81, 1, '2012-12-26 07:34:45', '2012-12-26 07:34:45', 'If your native approach comes from editorial or marketing work, prop your eyelids open, because this matters for you. Here’s why: information science gave us much of what has turned into the modern practice of <a href="#">information architecture</a>, which is what saves our slaved-over and expensive content from dissolving into a formless puddle of goo.\r\n\r\n[caption id="attachment_67" align="alignnone" width="1024"]<img class="size-large wp-image-67" alt="Mountain at the foot of lakes" src="http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-1024x768.jpg" width="1024" height="768" /> This is a sample caption[/caption]\r\n<h3>Information architecture</h3>\r\n<div>\r\n\r\nInformation architecture is the design of structures for infor- mation, including navigational structures and content taxono- mies. The people who do this work strive to bring order to chaos and build structures that help users find what they’re looking for and accomplish the tasks they set out to do. They create marvelous items like wireframes, site maps, page dia- grams, and user flows, and often also do enormous amounts of user research beforehand.\r\n\r\n</div>', 'Information Scientists', '', 'inherit', 'open', 'open', '', '1-revision-5', '', '', '2012-12-26 07:34:45', '2012-12-26 07:34:45', '', 1, 'http://ncd.localhost:8888/2012/12/26/1-revision-5/', 0, 'revision', '', 0),
(82, 1, '2012-12-26 07:52:16', '2012-12-26 07:52:16', 'If your native approach comes from editorial or marketing work, prop your eyelids open, because this matters for you. Here’s why: information science gave us much of what has turned into the modern practice of <a href="#">information architecture</a>, which is what saves our slaved-over and expensive content from dissolving into a formless puddle of goo.\r\n\r\n<img class="size-large wp-image-67" alt="Mountain at the foot of lakes" src="http://ncd.localhost:8888/wp-content/uploads/2012/12/mountain-1024x768.jpg" width="1024" height="768" />\r\n<h3>Information architecture</h3>\r\n<div>\r\n\r\nInformation architecture is the design of structures for infor- mation, including navigational structures and content taxono- mies. The people who do this work strive to bring order to chaos and build structures that help users find what they’re looking for and accomplish the tasks they set out to do. They create marvelous items like wireframes, site maps, page dia- grams, and user flows, and often also do enormous amounts of user research beforehand.\r\n\r\n</div>', 'Information Scientists', '', 'inherit', 'open', 'open', '', '1-revision-6', '', '', '2012-12-26 07:52:16', '2012-12-26 07:52:16', '', 1, 'http://ncd.localhost:8888/2012/12/26/1-revision-6/', 0, 'revision', '', 0),
(88, 1, '2012-12-24 10:19:18', '2012-12-24 10:19:18', '[contact-form-7 id="31" title="Contact form"]\r\n<ul>\r\n	<li>[site_title_for_contact_details]</li>\r\n	<li>Email: [email_link]<a href="mailto:info@domain.com">\r\n</a></li>\r\n	<li>Phone: [phone_for_contact_details]</li>\r\n	<li>Address: [street_for_contact_details]\r\n[town_for_contact_details] [postal_code_for_contact_details]\r\n[county_for_contact_details]\r\n[country_for_contact_details]</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-18', '', '', '2012-12-24 10:19:18', '2012-12-24 10:19:18', '', 9, 'http://ncd.localhost:8888/2012/12/24/9-revision-18/', 0, 'revision', '', 0),
(91, 1, '2013-01-09 19:00:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-09 19:00:18', '0000-00-00 00:00:00', '', 0, 'http://ncd.localhost:8888/?p=91', 0, 'post', '', 0),
(92, 1, '2013-01-09 19:01:00', '2013-01-09 19:01:00', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nA normal paragraph. Marketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. \r\n\r\nWhat about a table.\r\n\r\n<table>\r\n<tbody><tr>\r\n<th>ID</th>\r\n<th>Name</th>\r\n<th>Color</th>\r\n  </tr>\r\n<tr>\r\n<td>1</td>\r\n<td>Paddy</td>\r\n<td>Blue</td>\r\n  </tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Shane</td>\r\n<td>Pink</td>\r\n  </tr>\r\n</tbody></table>\r\n\r\nNone of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n<dl>\r\n<dt>Understand existing resources</dt>\r\n<dd>Are there people available to work on content? Are they good at it?</dd>\r\n<dt>Make the business case for content strategy</dt>\r\n<dd>How will the recommended content changes meet overarching organiza- tional goals?</dd>\r\n</dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n\r\nAnd then there was an unordered list:\r\n<ul>\r\n	<li>The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n\r\nAnd now an ordered list:\r\n<ol>\r\n	<li>Project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\r\n\r\nSome preformatted code, which probably won’t be need to often.\r\n\r\n<pre><code>&lt;div class="footer"&gt;\r\n    &amp;copy; 2004 Foo Corporation\r\n&lt;/div&gt;\r\n</code></pre>', 'Style Guide', '', 'publish', 'open', 'open', '', 'style-guide', '', '', '2013-01-09 19:03:55', '2013-01-09 19:03:55', '', 0, 'http://ncd.localhost:8888/?page_id=92', 9999, 'page', '', 0),
(93, 1, '2013-01-09 19:00:57', '2013-01-09 19:00:57', '', 'Style Guide', '', 'inherit', 'open', 'open', '', '92-revision', '', '', '2013-01-09 19:00:57', '2013-01-09 19:00:57', '', 92, 'http://ncd.localhost:8888/2013/01/09/92-revision/', 0, 'revision', '', 0),
(94, 1, '2012-12-23 07:23:44', '2012-12-23 07:23:44', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nA normal paragraph. Marketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. \r\n\r\nWhat about a table.\r\n\r\n<table>\r\n<tbody><tr>\r\n<th>ID</th>\r\n<th>Name</th>\r\n<th>Color</th>\r\n  </tr>\r\n<tr>\r\n<td>1</td>\r\n<td>Paddy</td>\r\n<td>Blue</td>\r\n  </tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Shane</td>\r\n<td>Pink</td>\r\n  </tr>\r\n</tbody></table>\r\n\r\nNone of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n<dl>\r\n<dt>Understand existing resources</dt>\r\n<dd>Are there people available to work on content? Are they good at it?</dd>\r\n<dt>Make the business case for content strategy</dt>\r\n<dd>How will the recommended content changes meet overarching organiza- tional goals?</dd>\r\n</dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n\r\nAnd then there was an unordered list:\r\n<ul>\r\n	<li>The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n\r\nAnd now an ordered list:\r\n<ol>\r\n	<li>Project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\r\n\r\nSome preformatted code, which probably won’t be need to often.\r\n\r\n<pre><code>&lt;div class="footer"&gt;\r\n    &amp;copy; 2004 Foo Corporation\r\n&lt;/div&gt;\r\n</code></pre>', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-10', '', '', '2012-12-23 07:23:44', '2012-12-23 07:23:44', '', 5, 'http://ncd.localhost:8888/2012/12/23/5-revision-10/', 0, 'revision', '', 0),
(95, 1, '2013-01-09 19:01:00', '2013-01-09 19:01:00', '', 'Style Guide', '', 'inherit', 'open', 'open', '', '92-revision-2', '', '', '2013-01-09 19:01:00', '2013-01-09 19:01:00', '', 92, 'http://ncd.localhost:8888/2013/01/09/92-revision-2/', 0, 'revision', '', 0),
(96, 1, '2013-01-09 19:03:29', '2013-01-09 19:03:29', '<h1>The Craft of Content Strategy (h1)</h1>\r\n<p class="lead">(You can delete all of this and still find a copy at Style Guide, for reference.) This is a lead paragraph with class .lead. Because content has so frequently demonstrated its po- tential to derail web projects, and because it is uniquely en- tangled with business strategy, it requires special attention. <a href="#">Throughout each project</a>, a content strategist compares evolv- ing content-related expectations with available resources, and warns the team of shortfalls that may require that the content work be scaled back or the resources stepped up. She navi- gates the politically fraught territory of distributed publish- ing, and long after information architecture and visual design work is approved, she keeps an eye on the ways in which or- ganizational strategy changes affect ongoing content work.</p>\r\n\r\n<h2>A tangled family tree (h2)</h2>\r\nA normal paragraph. Marketers tend to characterize content strategy as a form of marketing—as do some technical communicators, though the latter group means it as an insult. Knowledge management people often say it’s a way of improving processes and setting standards. Longtime web editors and writers tend to assume that it’s what they’ve been doing all along. \r\n\r\nWhat about a table.\r\n\r\n<table>\r\n<tbody><tr>\r\n<th>ID</th>\r\n<th>Name</th>\r\n<th>Color</th>\r\n  </tr>\r\n<tr>\r\n<td>1</td>\r\n<td>Paddy</td>\r\n<td>Blue</td>\r\n  </tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Shane</td>\r\n<td>Pink</td>\r\n  </tr>\r\n</tbody></table>\r\n\r\nNone of them are dead wrong, but neither are they completely right. And as the definitional debates rage on, it’s increasingly clear that our dis- cipline is vulnerable to being co-opted by nearby fields, or to being distorted by the fact that online, some of those <a href="#">fields are much louder</a> and more public than others.\r\n\r\nSometimes we need definition lists.\r\n<dl>\r\n<dt>Understand existing resources</dt>\r\n<dd>Are there people available to work on content? Are they good at it?</dd>\r\n<dt>Make the business case for content strategy</dt>\r\n<dd>How will the recommended content changes meet overarching organiza- tional goals?</dd>\r\n</dl>\r\n<h3>The origin of the species (h3)</h3>\r\nIt’s nice to think of our field as a vigorous hybrid, but it often feels more like a Frankenstein’s monster assembled from spare parts and animated by deadline-inspired panic.\r\n\r\nAnd then there was an unordered list:\r\n<ul>\r\n	<li>The inverted pyramid</li>\r\n	<li>5 Ws and a H</li>\r\n	<li>Show don’t tell</li>\r\n</ul>\r\n<h4>Influence #1: The Editor (h4)</h4>\r\nEditorial work is so closely related to content strategy that questions about the difference between the two often arise. From the outside, content strategy can look quite a lot like the sort of editing found in magazines and newspapers.\r\n\r\nAnd now an ordered list:\r\n<ol>\r\n	<li>Project delays produced by the inability to get the right content ready for launch, and</li>\r\n	<li>project derailments caused by a lack of planning for ongo- ing content oversight, production, revision, and distribu- tion—what Jeffrey MacIntyre of Predicate, LLC, aptly calls “The Day Two Problem” (http://bkaprt.com/cs/3/)4.</li>\r\n</ol>\r\n<h5>Content people work for the user</h5>\r\nIn publishing, if you don’t win, hold, and reward the attention of your readers—whether they’re fans of tabloid journalism or wistful MFA-program novels—you’re out of a job. Editors worth their salt work not for writers or publishers, but for readers.\r\n<blockquote>(blockquote) An editor’s only permanent alliance is with the audience, the readership. It is the editor’s responsibility to hook that reader- ship; to edify it, entertain it, stroke it, shake it up...Authors know their subject. Editors specialize in knowing the audience.</blockquote>\r\n<h6>Stories matter</h6>\r\nHumans are compulsive storytellers. We think and teach and connect by creating stories. And the thinkers who change opinions, the teachers who inspire students, the politicians who win elections, and of course, the publishers who sell books and magazines all tend to have something in common: they can tell a great story.\r\n\r\nSome preformatted code, which probably won’t be need to often.\r\n\r\n<pre><code>&lt;div class="footer"&gt;\r\n    &amp;copy; 2004 Foo Corporation\r\n&lt;/div&gt;\r\n</code></pre>', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-11', '', '', '2013-01-09 19:03:29', '2013-01-09 19:03:29', '', 5, 'http://ncd.localhost:8888/2013/01/09/5-revision-11/', 0, 'revision', '', 0),
(97, 1, '2013-01-09 19:06:06', '0000-00-00 00:00:00', '', 'Main menu: edit from Appearance > Menus', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-09 19:06:06', '0000-00-00 00:00:00', '', 0, 'http://ncd.localhost:8888/?p=97', 1, 'nav_menu_item', '', 0),
(100, 1, '2013-01-09 19:12:06', '2013-01-09 19:12:06', '', 'Main (Appearance > Menus)', '', 'publish', 'open', 'open', '', 'main-menu-edit-from-appearance-menus-2', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=100', 11, 'nav_menu_item', '', 0),
(101, 1, '2013-01-09 19:14:31', '2013-01-09 19:14:31', '', 'About Sarah Bird', '', 'publish', 'open', 'open', '', 'about-sarah-bird', '', '', '2013-01-09 19:14:37', '2013-01-09 19:14:37', '', 7, 'http://ncd.localhost:8888/?page_id=101', 0, 'page', '', 0),
(102, 1, '2013-01-09 19:14:28', '2013-01-09 19:14:28', '', 'About Sarah Bird', '', 'inherit', 'open', 'open', '', '101-revision', '', '', '2013-01-09 19:14:28', '2013-01-09 19:14:28', '', 101, 'http://ncd.localhost:8888/2013/01/09/101-revision/', 0, 'revision', '', 0),
(103, 1, '2013-01-09 19:14:31', '2013-01-09 19:14:31', '', 'About Sarah Bird', '', 'inherit', 'open', 'open', '', '101-revision-2', '', '', '2013-01-09 19:14:31', '2013-01-09 19:14:31', '', 101, 'http://ncd.localhost:8888/2013/01/09/101-revision-2/', 0, 'revision', '', 0),
(104, 1, '2013-01-09 19:14:57', '2013-01-09 19:14:57', '', 'About The Organisation', '', 'publish', 'open', 'open', '', 'about-the-organisation', '', '', '2013-01-09 19:14:57', '2013-01-09 19:14:57', '', 7, 'http://ncd.localhost:8888/?page_id=104', 100, 'page', '', 0),
(105, 1, '2013-01-09 19:14:49', '2013-01-09 19:14:49', '', 'About The Organisation', '', 'inherit', 'open', 'open', '', '104-revision', '', '', '2013-01-09 19:14:49', '2013-01-09 19:14:49', '', 104, 'http://ncd.localhost:8888/2013/01/09/104-revision/', 0, 'revision', '', 0),
(106, 1, '2013-01-09 19:15:19', '2013-01-09 19:15:19', '', 'A Sub Sub Page ', '', 'publish', 'open', 'open', '', 'a-sub-sub-page', '', '', '2013-01-09 19:15:19', '2013-01-09 19:15:19', '', 104, 'http://ncd.localhost:8888/?page_id=106', 0, 'page', '', 0),
(107, 1, '2013-01-09 19:15:16', '2013-01-09 19:15:16', '', 'A Sub Sub Page ', '', 'inherit', 'open', 'open', '', '106-revision', '', '', '2013-01-09 19:15:16', '2013-01-09 19:15:16', '', 106, 'http://ncd.localhost:8888/2013/01/09/106-revision/', 0, 'revision', '', 0),
(108, 1, '2013-01-09 19:16:04', '2013-01-09 19:16:04', ' ', '', '', 'publish', 'open', 'open', '', '108', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 7, 'http://ncd.localhost:8888/?p=108', 4, 'nav_menu_item', '', 0),
(109, 1, '2013-01-09 19:16:04', '2013-01-09 19:16:04', ' ', '', '', 'publish', 'open', 'open', '', '109', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 7, 'http://ncd.localhost:8888/?p=109', 5, 'nav_menu_item', '', 0),
(110, 1, '2013-01-09 19:16:04', '2013-01-09 19:16:04', ' ', '', '', 'publish', 'open', 'open', '', '110', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 104, 'http://ncd.localhost:8888/?p=110', 6, 'nav_menu_item', '', 0),
(111, 1, '2013-01-09 19:40:09', '2013-01-09 19:40:09', '(template-custom.php) This is just a standard blank page template you can duplicate to create a new custom template from.', 'Custom template', '', 'publish', 'open', 'closed', '', 'custom-layout-demo', '', '', '2013-01-09 19:48:45', '2013-01-09 19:48:45', '', 0, 'http://ncd.localhost:8888/?page_id=111', 1000, 'page', '', 0),
(112, 1, '2013-01-09 19:40:09', '2013-01-09 19:40:09', '', 'Custom layout demo', '', 'inherit', 'open', 'open', '', '111-revision', '', '', '2013-01-09 19:40:09', '2013-01-09 19:40:09', '', 111, 'http://ncd.localhost:8888/2013/01/09/111-revision/', 0, 'revision', '', 0),
(113, 1, '2013-01-09 19:45:09', '2013-01-09 19:45:09', '(template-single-column.php) This is what the single column template does.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'Single column', '', 'publish', 'open', 'closed', '', 'single-column', '', '', '2013-01-09 19:49:15', '2013-01-09 19:49:15', '', 0, 'http://ncd.localhost:8888/?page_id=113', 900, 'page', '', 0),
(114, 1, '2013-01-09 19:44:42', '2013-01-09 19:44:42', '', 'Single column', '', 'inherit', 'open', 'open', '', '113-revision', '', '', '2013-01-09 19:44:42', '2013-01-09 19:44:42', '', 113, 'http://ncd.localhost:8888/2013/01/09/113-revision/', 0, 'revision', '', 0),
(115, 1, '2013-01-09 19:46:07', '2013-01-09 19:46:07', ' ', '', '', 'publish', 'open', 'open', '', '115', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=115', 9, 'nav_menu_item', '', 0),
(116, 1, '2013-01-09 19:46:07', '2013-01-09 19:46:07', ' ', '', '', 'publish', 'open', 'open', '', '116', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=116', 10, 'nav_menu_item', '', 0),
(117, 1, '2013-01-09 19:46:10', '2013-01-09 19:46:10', 'This is what the single column template does.\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'Single column', '', 'inherit', 'open', 'open', '', '113-autosave', '', '', '2013-01-09 19:46:10', '2013-01-09 19:46:10', '', 113, 'http://ncd.localhost:8888/2013/01/09/113-autosave/', 0, 'revision', '', 0),
(118, 1, '2013-01-09 19:40:22', '2013-01-09 19:40:22', '', 'Custom layout demo', '', 'inherit', 'open', 'open', '', '111-revision-2', '', '', '2013-01-09 19:40:22', '2013-01-09 19:40:22', '', 111, 'http://ncd.localhost:8888/2013/01/09/111-revision-2/', 0, 'revision', '', 0),
(119, 1, '2013-01-09 19:46:28', '2013-01-09 19:46:28', '', 'Custom CMS', '', 'inherit', 'open', 'open', '', '111-revision-3', '', '', '2013-01-09 19:46:28', '2013-01-09 19:46:28', '', 111, 'http://ncd.localhost:8888/2013/01/09/111-revision-3/', 0, 'revision', '', 0),
(120, 1, '2013-01-09 19:46:49', '2013-01-09 19:46:49', '', 'Custom CMS', '', 'inherit', 'open', 'open', '', '111-revision-4', '', '', '2013-01-09 19:46:49', '2013-01-09 19:46:49', '', 111, 'http://ncd.localhost:8888/2013/01/09/111-revision-4/', 0, 'revision', '', 0),
(121, 1, '2013-01-09 19:47:46', '2013-01-09 19:47:46', 'This is just a standard blank page template you can duplicate to create a new custom template from.', 'Custom template', '', 'inherit', 'open', 'open', '', '111-revision-5', '', '', '2013-01-09 19:47:46', '2013-01-09 19:47:46', '', 111, 'http://ncd.localhost:8888/2013/01/09/111-revision-5/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(122, 1, '2013-01-09 19:45:09', '2013-01-09 19:45:09', 'This is what the single column template does.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'Single column', '', 'inherit', 'open', 'open', '', '113-revision-2', '', '', '2013-01-09 19:45:09', '2013-01-09 19:45:09', '', 113, 'http://ncd.localhost:8888/2013/01/09/113-revision-2/', 0, 'revision', '', 0),
(123, 1, '2013-01-09 19:48:56', '2013-01-09 19:48:56', 'This is what the single column template does.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'Single column', '', 'inherit', 'open', 'open', '', '113-revision-3', '', '', '2013-01-09 19:48:56', '2013-01-09 19:48:56', '', 113, 'http://ncd.localhost:8888/2013/01/09/113-revision-3/', 0, 'revision', '', 0),
(168, 1, '2013-01-10 07:27:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-10 07:27:51', '0000-00-00 00:00:00', '', 0, 'http://ncd.localhost:8888/?post_type=magic_content&p=168', 0, 'magic_content', '', 0),
(169, 1, '2013-01-10 07:29:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-10 07:29:22', '0000-00-00 00:00:00', '', 0, 'http://ncd.localhost:8888/?post_type=magic_content&p=169', 0, 'magic_content', '', 0),
(170, 1, '2013-01-10 07:30:53', '2013-01-10 07:30:53', '(template-magic-fields.php) Edit this page from ''Testimonials'' in the WP admin navigation, under ''Posts'', it doesn''t appear in ''Pages''.\r\n\r\nA taste of what Magic Fields can do by way of creating a better, customised CMS in some situations. The content below is the output of the custom fields. This sample page has a group which can be duplicated. Each group has two fields, for text and image:', 'Magic Fields', '', 'publish', 'closed', 'closed', '', 'magik', '', '', '2013-01-10 07:34:28', '2013-01-10 07:34:28', '', 0, 'http://ncd.localhost:8888/?post_type=magic_content&#038;p=170', 0, 'magic_content', '', 0),
(171, 1, '2013-01-10 07:30:05', '2013-01-10 07:30:05', '', 'oscar_statuette', '', 'inherit', 'open', 'open', '', 'oscar_statuette-2', '', '', '2013-01-10 07:30:05', '2013-01-10 07:30:05', '', 0, 'http://ncd.localhost:8888/wp-content/uploads/2013/01/oscar_statuette1.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2013-01-10 07:35:29', '2013-01-10 07:35:29', '(template-magic-fields.php) Edit this page from ''Testimonials'' in the WP admin navigation, under ''Posts'', it doesn''t appear in ''Pages''.\n\nA taste of what Magic Fields can do by way of creating a better, customised CMS in some situations. The content below is the output of the custom fields. This sample page has a group which can be duplicated. Each group has two fields, for text and image:', 'Magic Fields', '', 'inherit', 'open', 'open', '', '170-autosave', '', '', '2013-01-10 07:35:29', '2013-01-10 07:35:29', '', 170, 'http://ncd.localhost:8888/2013/01/10/170-autosave/', 0, 'revision', '', 0),
(174, 1, '2013-01-10 07:35:07', '2013-01-10 07:35:07', ' ', '', '', 'publish', 'open', 'open', '', '174', '', '', '2013-01-10 07:40:53', '2013-01-10 07:40:53', '', 0, 'http://ncd.localhost:8888/?p=174', 8, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'General', 'general', 0),
(2, 'footer', 'footer', 0),
(3, 'main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(35, 2, 0),
(36, 3, 0),
(37, 3, 0),
(38, 3, 0),
(39, 3, 0),
(71, 1, 0),
(73, 1, 0),
(76, 1, 0),
(77, 1, 0),
(79, 1, 0),
(100, 3, 0),
(108, 3, 0),
(109, 3, 0),
(110, 3, 0),
(115, 3, 0),
(116, 3, 0),
(174, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '91'),
(15, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(16, 1, 'metaboxhidden_dashboard', 'a:8:{i:0;s:19:"dashboard_right_now";i:1;s:25:"dashboard_recent_comments";i:2;s:24:"dashboard_incoming_links";i:3;s:17:"dashboard_plugins";i:4;s:21:"dashboard_quick_press";i:5;s:23:"dashboard_recent_drafts";i:6;s:17:"dashboard_primary";i:7;s:19:"dashboard_secondary";}'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'wp_user-settings', 'hidetb=1&editor=tinymce&libraryContent=browse&imgsize=large&urlbutton=none&align=none&wplink=1'),
(20, 1, 'wp_user-settings-time', '1357758268'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:9:{i:0;s:9:"formatdiv";i:1;s:16:"tagsdiv-post_tag";i:2;s:11:"postexcerpt";i:3;s:13:"trackbacksdiv";i:4;s:10:"postcustom";i:5;s:16:"commentstatusdiv";i:6;s:11:"commentsdiv";i:7;s:7:"slugdiv";i:8;s:9:"authordiv";}'),
(24, 1, 'closedpostboxes_magic_content', 'a:1:{i:0;s:10:"postcustom";}'),
(25, 1, 'metaboxhidden_magic_content', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BNWpoXuifqObCu2JWfzclnVWK7sRS01', 'admin', 'hello@logo24.com', '', '2012-12-22 16:37:14', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
