-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 15 2016 г., 17:55
-- Версия сервера: 5.5.43-0+deb8u1
-- Версия PHP: 5.6.13-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tdc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_brands`
--

DROP TABLE IF EXISTS `tiipiik_catalog_brands`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_brands` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `published` tinyint(1) DEFAULT '0',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_categories`
--

DROP TABLE IF EXISTS `tiipiik_catalog_categories`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_categories` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `nest_left` int(11) NOT NULL,
  `nest_right` int(11) NOT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tiipiik_catalog_categories`
--

INSERT INTO `tiipiik_catalog_categories` (`id`, `parent_id`, `name`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(4, NULL, 'Мишени для пневматики и страйкбола', 'misheni-dlya-pnevmatiki-i-strajkbola', '<p>​Integer cursus dapibus lorem at gravida. Suspendisse quis est euismod, hendrerit enim at, tempus purus. Aliquam nec elit est. Nam laoreet maximus volutpat. Sed dapibus mollis enim at venenatis. Duis congue accumsan laoreet. Quisque nisi purus, scelerisque ut congue ut, ultrices quis tortor. Donec sollicitudin risus nec interdum finibus.</p>', 1, 10, 0, '2016-04-13 09:42:44', '2016-04-15 10:34:54'),
(5, NULL, 'Мишени спортивные и для сдачи норм ГТО', 'misheni-sportivnye-i-dlya-sdachi-norm-gto', '', 11, 18, 0, '2016-04-13 09:43:23', '2016-04-13 09:56:31'),
(6, NULL, 'Мишени для тира боевой стрельбы', 'misheni-dlya-tira-boevoj-strelby', '', 19, 30, 0, '2016-04-13 09:52:49', '2016-04-13 09:59:59'),
(7, NULL, 'Мишени для охотников', 'misheni-dlya-ohotnikov', '', 31, 38, 0, '2016-04-13 09:53:06', '2016-04-13 10:01:04'),
(8, 4, 'Призовые', 'prizovye', '<p>​Integer cursus dapibus lorem at gravida. Suspendisse quis est euismod, hendrerit enim at, tempus purus. Aliquam nec elit est. Nam laoreet maximus volutpat. Sed dapibus mollis enim at venenatis. Duis congue accumsan laoreet. Quisque nisi purus, scelerisque ut congue ut, ultrices quis tortor. Donec sollicitudin risus nec interdum finibus.</p>', 2, 3, 1, '2016-04-13 09:54:10', '2016-04-15 10:16:58'),
(9, 4, 'Развлекательные', 'razvlekatelnye', '', 4, 5, 1, '2016-04-13 09:54:21', '2016-04-13 09:55:04'),
(10, 4, 'Движущиеся', 'dvizhushiesya', '', 6, 7, 1, '2016-04-13 09:54:32', '2016-04-13 09:55:07'),
(11, 4, 'Мишенное поле', 'mishennoe-pole', '', 8, 9, 1, '2016-04-13 09:54:43', '2016-04-13 09:55:16'),
(12, 5, 'Движущиеся на 6-10 м.', 'dvizhushiesya-na-6-10-m', '', 12, 13, 1, '2016-04-13 09:55:53', '2016-04-13 09:56:25'),
(13, 5, 'Биатлонка на 5 мишеней', 'biatlonka-na-5-mishenej', '', 14, 15, 1, '2016-04-13 09:56:08', '2016-04-13 09:56:29'),
(14, 5, 'Биатлонка на 10 мишеней', 'biatlonka-na-10-mishenej', '', 16, 17, 1, '2016-04-13 09:56:16', '2016-04-13 09:56:31'),
(15, 6, 'Движущиеся на 6-10 м. фронт', 'dvizhushiesya-na-6-10-m-front', '', 20, 21, 1, '2016-04-13 09:58:28', '2016-04-13 09:59:51'),
(16, 6, 'Поворотные', 'povorotnye', '', 22, 23, 1, '2016-04-13 09:58:48', '2016-04-13 09:59:54'),
(17, 6, 'Появляющиеся', 'poyavlyayushiesya', '', 24, 25, 1, '2016-04-13 09:59:16', '2016-04-13 09:59:56'),
(18, 6, 'Движущиеся № 4', 'dvizhushiesya-4', '', 26, 27, 1, '2016-04-13 09:59:28', '2016-04-13 09:59:58'),
(19, 6, 'Портативные комплекты', 'portativnye-komplekty', '', 28, 29, 1, '2016-04-13 09:59:36', '2016-04-13 09:59:59'),
(20, 7, 'Движущиеся на 6-25 м.', 'dvizhushiesya-na-6-25-m', '', 32, 33, 1, '2016-04-13 10:00:35', '2016-04-13 10:01:02'),
(21, 7, 'Поворотные', 'povorotnye', '', 34, 35, 1, '2016-04-13 10:00:45', '2016-04-13 10:01:03'),
(22, 7, 'Появляющиеся', 'poyavlyayushiesya', '', 36, 37, 1, '2016-04-13 10:00:54', '2016-04-13 10:01:04'),
(23, NULL, 'Дополнительное оборудование', 'dopolnitelnoe-oborudovanie', '', 39, 52, 0, '2016-04-13 10:23:25', '2016-04-13 10:26:58'),
(24, NULL, 'Расходные материалы', 'rashodnye-materialy', '', 53, 64, 0, '2016-04-13 10:23:39', '2016-04-13 10:28:39'),
(25, NULL, 'Услуги', 'uslugi', '', 65, 78, 0, '2016-04-13 10:24:19', '2016-04-13 10:30:39'),
(26, NULL, 'Стенды и мишенные поля', 'stendy-i-mishennye-polya', '', 79, 86, 0, '2016-04-13 10:24:37', '2016-04-13 10:31:33'),
(27, 23, 'Счетчики выстрелов', 'schetchiki-vystrelov', '', 40, 41, 1, '2016-04-13 10:25:39', '2016-04-13 10:26:44'),
(28, 23, 'Счетчики попаданий', 'schetchiki-popadanij', '', 42, 43, 1, '2016-04-13 10:25:52', '2016-04-13 10:26:47'),
(29, 23, 'Подставки под оружие', 'podstavki-pod-oruzhie', '', 44, 45, 1, '2016-04-13 10:26:02', '2016-04-13 10:26:50'),
(30, 23, 'Пирамиды', 'piramidy', '', 46, 47, 1, '2016-04-13 10:26:14', '2016-04-13 10:26:53'),
(31, 23, 'Звуковые устройства', 'zvukovye-ustrojstva', '', 48, 49, 1, '2016-04-13 10:26:24', '2016-04-13 10:26:56'),
(32, 23, 'Световые устройства', 'svetovye-ustrojstva', '', 50, 51, 1, '2016-04-13 10:26:31', '2016-04-13 10:26:58'),
(33, 24, 'Пульки', 'pulki', '', 54, 55, 1, '2016-04-13 10:27:33', '2016-04-13 10:28:28'),
(34, 24, 'Шары', 'shary', '', 56, 57, 1, '2016-04-13 10:27:44', '2016-04-13 10:28:31'),
(35, 24, 'Бумажные мишени', 'bumazhnye-misheni', '', 58, 59, 1, '2016-04-13 10:27:56', '2016-04-13 10:28:34'),
(36, 24, 'Картинки для мишеней', 'kartinki-dlya-mishenej', '', 60, 61, 1, '2016-04-13 10:28:07', '2016-04-13 10:28:36'),
(37, 24, 'Запасные части', 'zapasnye-chasti', '', 62, 63, 1, '2016-04-13 10:28:14', '2016-04-13 10:28:39'),
(38, 25, 'Изготовление по заказу', 'izgotovlenie-po-zakazu', '', 66, 67, 1, '2016-04-13 10:29:03', '2016-04-13 10:30:29'),
(39, 25, 'Доставка и установка', 'dostavka-i-ustanovka', '', 68, 69, 1, '2016-04-13 10:29:14', '2016-04-13 10:30:32'),
(40, 25, 'Ремонт мишеней', 'remont-mishenej', '', 70, 71, 1, '2016-04-13 10:29:36', '2016-04-13 10:30:34'),
(41, 25, 'Оформление Б\\У тира', 'oformlenie-bu-tira', '', 72, 73, 1, '2016-04-13 10:29:48', '2016-04-13 10:30:36'),
(42, 25, 'Ремонт стрельбищ', 'remont-strelbish', '', 74, 75, 1, '2016-04-13 10:30:04', '2016-04-13 10:30:38'),
(43, 25, 'Ремонт полигонов', 'remont-poligonov', '', 76, 77, 1, '2016-04-13 10:30:18', '2016-04-13 10:30:39'),
(44, 26, 'Стенды и мишенные поля 1', 'stendy-i-mishennye-polya-1', '', 80, 81, 1, '2016-04-13 10:31:12', '2016-04-13 10:31:31'),
(45, 26, 'Стенды и мишенные поля 2', 'stendy-i-mishennye-polya-2', '', 82, 83, 1, '2016-04-13 10:31:17', '2016-04-13 10:31:32'),
(46, 26, 'Стенды и мишенные поля 3', 'stendy-i-mishennye-polya-3', '', 84, 85, 1, '2016-04-13 10:31:23', '2016-04-13 10:31:33');

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_csf_csv`
--

DROP TABLE IF EXISTS `tiipiik_catalog_csf_csv`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_csf_csv` (
  `custom_value_id` int(10) unsigned NOT NULL,
  `custom_field_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_custom_fields`
--

DROP TABLE IF EXISTS `tiipiik_catalog_custom_fields`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_custom_fields` (
`id` int(10) unsigned NOT NULL,
  `template_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tiipiik_catalog_custom_fields`
--

INSERT INTO `tiipiik_catalog_custom_fields` (`id`, `template_code`, `display_name`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 'color', 'Color', 'Green', '2016-04-13 05:45:33', '2016-04-13 05:45:33'),
(2, 'options', 'Options', NULL, '2016-04-13 05:45:33', '2016-04-13 05:45:33');

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_custom_values`
--

DROP TABLE IF EXISTS `tiipiik_catalog_custom_values`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_custom_values` (
`id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  `custom_field_id` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_groups`
--

DROP TABLE IF EXISTS `tiipiik_catalog_groups`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_groups` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tiipiik_catalog_groups`
--

INSERT INTO `tiipiik_catalog_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Motorbikes', '2016-04-13 05:45:33', '2016-04-13 05:45:33'),
(2, 'Accessories', '2016-04-13 05:45:33', '2016-04-13 05:45:33'),
(3, 'Stores', '2016-04-13 05:45:33', '2016-04-13 05:45:33');

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_group_field`
--

DROP TABLE IF EXISTS `tiipiik_catalog_group_field`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_group_field` (
  `custom_field_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_prods_cats`
--

DROP TABLE IF EXISTS `tiipiik_catalog_prods_cats`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_prods_cats` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tiipiik_catalog_prods_cats`
--

INSERT INTO `tiipiik_catalog_prods_cats` (`product_id`, `category_id`) VALUES
(1, 4),
(1, 8),
(2, 4),
(2, 8),
(3, 4),
(3, 8),
(4, 4),
(4, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_products`
--

DROP TABLE IF EXISTS `tiipiik_catalog_products`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_products` (
`id` int(10) unsigned NOT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `group_id` int(10) unsigned DEFAULT NULL,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `items_available` int(11) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tiipiik_catalog_products`
--

INSERT INTO `tiipiik_catalog_products` (`id`, `is_published`, `group_id`, `brand_id`, `meta_title`, `meta_desc`, `title`, `slug`, `description`, `items_available`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '', '', 'Kawasaki 1400 ZZR', 'kawasaki-1400-zzr', '<p>​Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla ut arcu imperdiet blandit. Nam sem lectus, luctus eget leo vitae, euismod tincidunt tortor. Nullam porta metus eget commodo eleifend. Sed consectetur vel nulla et pulvinar. Integer et leo nisi. Pellentesque vestibulum a ipsum vel porta. Aenean suscipit maximus dui non ultrices. Curabitur elit arcu, aliquam nec imperdiet feugiat, iaculis at tortor. Ut mi tellus, ullamcorper ullamcorper ultricies eget, bibendum nec elit. Etiam ut libero eu eros mollis laoreet. Curabitur vitae nisi mi. In id ultrices ante. Duis euismod lacus eu lacinia lacinia. Praesent fringilla posuere nulla nec cursus. Praesent euismod faucibus ex, ut feugiat ante pretium ut. Mauris eget urna pulvinar, porttitor arcu sit amet, aliquet lectus.</p>', NULL, 10000.00, 0.00, '2016-04-13 05:45:33', '2016-04-15 09:54:53'),
(2, 1, 1, 0, '', '', 'Kawasaki Ninja H2', 'kawasaki-ninja-h2', '<p>​Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nulla ut arcu imperdiet blandit. Nam sem lectus, luctus eget leo vitae, euismod tincidunt tortor. Nullam porta metus eget commodo eleifend. Sed consectetur vel nulla et pulvinar. Integer et leo nisi. Pellentesque vestibulum a ipsum vel porta. Aenean suscipit maximus dui non ultrices. Curabitur elit arcu, aliquam nec imperdiet feugiat, iaculis at tortor. Ut mi tellus, ullamcorper ullamcorper ultricies eget, bibendum nec elit. Etiam ut libero eu eros mollis laoreet. Curabitur vitae nisi mi. In id ultrices ante. Duis euismod lacus eu lacinia lacinia. Praesent fringilla posuere nulla nec cursus. Praesent euismod faucibus ex, ut feugiat ante pretium ut. Mauris eget urna pulvinar, porttitor arcu sit amet, aliquet lectus.</p>', NULL, 10000.00, 0.00, '2016-04-13 05:45:33', '2016-04-15 10:35:31'),
(3, 1, 1, NULL, '', '', 'sdfsdfsdf', 'sdfsdfsdf', '<p>​sfsdfsdfsd</p>', NULL, 0.00, 0.00, '2016-04-15 11:17:00', '2016-04-15 11:17:30'),
(4, 1, 1, NULL, '', '', 'zzzzzzz', 'zzzzzzz', '<p>​zzzzzz</p>', NULL, 123.00, 0.00, '2016-04-15 11:17:22', '2016-04-15 11:17:22');

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_products_brands`
--

DROP TABLE IF EXISTS `tiipiik_catalog_products_brands`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_products_brands` (
  `product_id` int(10) unsigned NOT NULL,
  `brand_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_products_stores`
--

DROP TABLE IF EXISTS `tiipiik_catalog_products_stores`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_products_stores` (
  `product_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tiipiik_catalog_stores`
--

DROP TABLE IF EXISTS `tiipiik_catalog_stores`;
CREATE TABLE IF NOT EXISTS `tiipiik_catalog_stores` (
`id` int(10) unsigned NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tiipiik_catalog_brands`
--
ALTER TABLE `tiipiik_catalog_brands`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `tiipiik_catalog_brands_name_unique` (`name`), ADD UNIQUE KEY `tiipiik_catalog_brands_slug_unique` (`slug`);

--
-- Индексы таблицы `tiipiik_catalog_categories`
--
ALTER TABLE `tiipiik_catalog_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `tiipiik_catalog_categories_parent_id_index` (`parent_id`);

--
-- Индексы таблицы `tiipiik_catalog_csf_csv`
--
ALTER TABLE `tiipiik_catalog_csf_csv`
 ADD PRIMARY KEY (`custom_value_id`,`custom_field_id`);

--
-- Индексы таблицы `tiipiik_catalog_custom_fields`
--
ALTER TABLE `tiipiik_catalog_custom_fields`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tiipiik_catalog_custom_values`
--
ALTER TABLE `tiipiik_catalog_custom_values`
 ADD PRIMARY KEY (`id`), ADD KEY `tiipiik_catalog_custom_values_product_id_index` (`product_id`), ADD KEY `tiipiik_catalog_custom_values_custom_field_id_index` (`custom_field_id`), ADD KEY `tiipiik_catalog_custom_values_store_id_index` (`store_id`);

--
-- Индексы таблицы `tiipiik_catalog_groups`
--
ALTER TABLE `tiipiik_catalog_groups`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tiipiik_catalog_group_field`
--
ALTER TABLE `tiipiik_catalog_group_field`
 ADD PRIMARY KEY (`custom_field_id`,`group_id`);

--
-- Индексы таблицы `tiipiik_catalog_prods_cats`
--
ALTER TABLE `tiipiik_catalog_prods_cats`
 ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Индексы таблицы `tiipiik_catalog_products`
--
ALTER TABLE `tiipiik_catalog_products`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tiipiik_catalog_products_brands`
--
ALTER TABLE `tiipiik_catalog_products_brands`
 ADD PRIMARY KEY (`product_id`,`brand_id`);

--
-- Индексы таблицы `tiipiik_catalog_products_stores`
--
ALTER TABLE `tiipiik_catalog_products_stores`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `tiipiik_catalog_stores`
--
ALTER TABLE `tiipiik_catalog_stores`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tiipiik_catalog_brands`
--
ALTER TABLE `tiipiik_catalog_brands`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tiipiik_catalog_categories`
--
ALTER TABLE `tiipiik_catalog_categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT для таблицы `tiipiik_catalog_custom_fields`
--
ALTER TABLE `tiipiik_catalog_custom_fields`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tiipiik_catalog_custom_values`
--
ALTER TABLE `tiipiik_catalog_custom_values`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tiipiik_catalog_groups`
--
ALTER TABLE `tiipiik_catalog_groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `tiipiik_catalog_products`
--
ALTER TABLE `tiipiik_catalog_products`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `tiipiik_catalog_stores`
--
ALTER TABLE `tiipiik_catalog_stores`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
