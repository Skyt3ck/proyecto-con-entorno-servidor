-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2018 a las 05:01:01
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add envio post', 7, 'add_enviopost'),
(20, 'Can change envio post', 7, 'change_enviopost'),
(21, 'Can delete envio post', 7, 'delete_enviopost'),
(22, 'Can add gusto cliente', 8, 'add_gustocliente'),
(23, 'Can change gusto cliente', 8, 'change_gustocliente'),
(24, 'Can delete gusto cliente', 8, 'delete_gustocliente'),
(25, 'Can add gustos', 9, 'add_gustos'),
(26, 'Can change gustos', 9, 'change_gustos'),
(27, 'Can delete gustos', 9, 'delete_gustos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf32_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf32_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf32_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf32_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$A0IIPcE6zoH4$OO5ClmwR91Pg/abqnc0w2geiVh4UQa3TDryho4oUQuc=', '2018-06-08 21:50:32.427394', 1, 'berske', '', '', 'carlos.laspalmasgc@gmail.com', 1, 1, '2018-06-08 21:49:38.582909');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf32_spanish_ci,
  `object_repr` varchar(200) COLLATE utf32_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf32_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-06-09 11:43:10.992522', '1', '1', 1, '[{\"added\": {}}]', 7, 1),
(2, '2018-06-09 18:09:05.866576', '2', '2', 1, '[{\"added\": {}}]', 7, 1),
(3, '2018-06-10 02:02:25.517770', '1', 'Gustos object (1)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2018-06-10 02:02:46.798441', '2', 'Gustos object (2)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2018-06-10 02:02:58.615761', '3', 'Gustos object (3)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2018-06-10 02:03:05.266681', '4', 'Gustos object (4)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2018-06-10 02:03:20.802604', '5', 'Gustos object (5)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2018-06-10 02:03:36.781066', '6', 'Gustos object (6)', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf32_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'EnvioPost', 'enviopost'),
(8, 'EnvioPost', 'gustocliente'),
(9, 'EnvioPost', 'gustos'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf32_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf32_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'EnvioPost', '0001_initial', '2018-06-08 21:46:56.628059'),
(2, 'EnvioPost', '0002_auto_20180608_1727', '2018-06-08 21:46:56.673962'),
(3, 'EnvioPost', '0003_remove_enviopost_fecharespueta', '2018-06-08 21:46:56.721932'),
(4, 'contenttypes', '0001_initial', '2018-06-08 21:46:56.766760'),
(5, 'auth', '0001_initial', '2018-06-08 21:46:57.421729'),
(6, 'admin', '0001_initial', '2018-06-08 21:46:57.574270'),
(7, 'admin', '0002_logentry_remove_auto_add', '2018-06-08 21:46:57.584000'),
(8, 'contenttypes', '0002_remove_content_type_name', '2018-06-08 21:46:57.675214'),
(9, 'auth', '0002_alter_permission_name_max_length', '2018-06-08 21:46:57.737507'),
(10, 'auth', '0003_alter_user_email_max_length', '2018-06-08 21:46:57.802585'),
(11, 'auth', '0004_alter_user_username_opts', '2018-06-08 21:46:57.812555'),
(12, 'auth', '0005_alter_user_last_login_null', '2018-06-08 21:46:57.855094'),
(13, 'auth', '0006_require_contenttypes_0002', '2018-06-08 21:46:57.859490'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2018-06-08 21:46:57.868993'),
(15, 'auth', '0008_alter_user_username_max_length', '2018-06-08 21:46:57.931722'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2018-06-08 21:46:57.993805'),
(17, 'sessions', '0001_initial', '2018-06-08 21:46:58.033376'),
(18, 'EnvioPost', '0004_auto_20180609_1809', '2018-06-09 17:09:27.955973'),
(19, 'EnvioPost', '0005_auto_20180609_1834', '2018-06-09 17:34:27.074163'),
(20, 'EnvioPost', '0006_auto_20180609_1858', '2018-06-09 17:58:40.345538'),
(21, 'EnvioPost', '0007_auto_20180609_1908', '2018-06-09 18:08:46.466094'),
(22, 'EnvioPost', '0008_auto_20180609_2005', '2018-06-09 19:07:51.280938'),
(23, 'EnvioPost', '0009_auto_20180609_2021', '2018-06-09 19:21:38.753351'),
(24, 'EnvioPost', '0010_enviopost_fecharespuesta', '2018-06-09 22:43:18.357882'),
(25, 'EnvioPost', '0011_auto_20180610_0242', '2018-06-10 01:43:07.325441'),
(26, 'EnvioPost', '0012_auto_20180610_0253', '2018-06-10 01:53:41.290233'),
(27, 'EnvioPost', '0013_auto_20180610_0302', '2018-06-10 02:02:09.600803'),
(28, 'EnvioPost', '0014_auto_20180610_0304', '2018-06-10 02:04:31.387729'),
(29, 'EnvioPost', '0015_auto_20180610_0332', '2018-06-10 02:32:36.068206'),
(30, 'EnvioPost', '0016_auto_20180610_0333', '2018-06-10 02:33:11.052600'),
(31, 'EnvioPost', '0017_auto_20180610_0405', '2018-06-10 03:05:42.431926'),
(32, 'EnvioPost', '0018_auto_20180610_0414', '2018-06-10 03:14:27.464097'),
(33, 'EnvioPost', '0019_auto_20180610_0414', '2018-06-11 02:42:36.745050'),
(34, 'EnvioPost', '0020_auto_20180611_0342', '2018-06-11 02:42:36.823573');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf32_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf32_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3iulo1k8cp3nwldsxijmycnzywdi2qtj', 'YWYxOTVlODMxNjAzZGVkNmUyZjJjNDJjNDFjNDkyMjczNDVkODI5YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YzU4YTUzYWM2ZjU1YTYzZjYxOGIyOTNiYTY1ZmNkMWNhMzdhZDVkIn0=', '2018-06-22 21:50:32.432390');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enviopost_enviopost`
--

CREATE TABLE `enviopost_enviopost` (
  `id` int(11) NOT NULL,
  `MRZ` varchar(100) COLLATE utf32_spanish_ci NOT NULL,
  `hotel` varchar(60) COLLATE utf32_spanish_ci NOT NULL,
  `app` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `respuesta` longtext COLLATE utf32_spanish_ci,
  `fechaRespuesta` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `enviopost_enviopost`
--

INSERT INTO `enviopost_enviopost` (`id`, `MRZ`, `hotel`, `app`, `respuesta`, `fechaRespuesta`) VALUES
(1, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(2, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(8, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(9, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(10, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(11, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(12, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(13, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', '{\'issuing_country\': ‘UKR\', \'nationality\': ‘UKR\', \'last_name\': \'TKACHENKO\', \'number\': \'XX000000\', \'type\': ‘P\', \'issuing_date\': \'25/09/2013\', \'status\': 1, \'gender\': \'F\', \'name\': \'MARIANA\', \'birth_date\': \'24/08/1991\', \'expiration_date\': \'25/09/2023\'}', '2018-06-09 22:43:08.727472'),
(14, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(15, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(16, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(17, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(18, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(19, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(20, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(21, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(22, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(23, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(24, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(25, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(26, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(27, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(28, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(29, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(30, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(31, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(32, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(33, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(34, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', NULL, '2018-06-09 22:43:08.727472'),
(35, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-09 22:43:08.727472'),
(36, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-09 22:43:08.727472'),
(37, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-09 22:43:08.727472'),
(38, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-09 22:43:08.727472'),
(39, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-09 22:43:08.727472'),
(40, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-09 22:43:08.727472'),
(41, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-09 22:51:41.686862'),
(42, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-09 23:22:00.776268'),
(43, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-10 12:40:14.877127'),
(44, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-10 12:54:16.264828'),
(45, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-10 13:21:02.189786'),
(46, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-10 15:58:36.362134'),
(47, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-10 20:58:08.529132'),
(48, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-10 20:58:08.529132'),
(49, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-10 20:58:08.529132'),
(50, 'PºUKRTKACHENKOººMARIANAºººººººººººººººººººººXX000000º0UKR9108242F23092571234567890ºººº70', 'test', 'TEST', 'b\'{\"error\": {\"code\": 1, \"message\": \"MRZ not valid\"}, \"status\": 0}\'', '2018-06-10 20:58:08.529132'),
(51, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-10 20:58:08.529132'),
(52, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-10 22:46:50.284951'),
(53, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-10 22:46:50.284951'),
(54, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-10 22:46:50.284951'),
(55, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-11 00:24:27.084710'),
(56, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-11 00:34:06.785145'),
(57, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-11 00:34:06.785145'),
(58, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"expiration_date\": \"25/09/2023\", \"issuing_country\": \"UKR\", \"status\": 1, \"last_name\": \"TKACHENKO\", \"nationality\": \"UKR\", \"birth_date\": \"24/08/1991\", \"gender\": \"F\", \"number\": \"XX000000\", \"name\": \"MARIANA\", \"type\": \"Passport\", \"issuing_date\": \"25/09/2013\"}\'', '2018-06-11 02:38:37.921099'),
(59, 'P<UKRTKACHENKO<<MARIANA<<<<<<<<<<<<<<<<<<<<<XX000000<0UKR9108242F23092571234567890<<<<70', 'test', 'TEST', 'b\'{\"name\": \"MARIANA\", \"issuing_country\": \"UKR\", \"type\": \"Passport\", \"birth_date\": \"24/08/1991\", \"nationality\": \"UKR\", \"number\": \"XX000000\", \"status\": 1, \"issuing_date\": \"25/09/2013\", \"gender\": \"F\", \"last_name\": \"TKACHENKO\", \"expiration_date\": \"25/09/2023\"}\'', '2018-06-11 02:42:40.364786');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enviopost_gustocliente`
--

CREATE TABLE `enviopost_gustocliente` (
  `id` int(11) NOT NULL,
  `interes1` tinyint(1) NOT NULL,
  `interes2` tinyint(1) NOT NULL,
  `interes3` tinyint(1) NOT NULL,
  `interes4` tinyint(1) NOT NULL,
  `interes5` tinyint(1) NOT NULL,
  `interes6` tinyint(1) NOT NULL,
  `idCliente_id` int(11) NOT NULL,
  `empresa` varchar(100) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `enviopost_gustocliente`
--

INSERT INTO `enviopost_gustocliente` (`id`, `interes1`, `interes2`, `interes3`, `interes4`, `interes5`, `interes6`, `idCliente_id`, `empresa`) VALUES
(1, 0, 1, 0, 0, 0, 0, 42, ''),
(2, 0, 1, 0, 0, 0, 0, 42, ''),
(3, 0, 1, 0, 0, 0, 0, 42, ''),
(4, 0, 1, 0, 0, 0, 0, 42, ''),
(5, 0, 1, 0, 0, 0, 0, 42, ''),
(6, 0, 1, 0, 0, 0, 0, 42, ''),
(7, 0, 1, 0, 0, 0, 0, 42, ''),
(8, 1, 1, 1, 1, 0, 1, 42, ''),
(9, 1, 1, 1, 1, 0, 1, 42, ''),
(10, 0, 0, 0, 0, 0, 1, 42, ''),
(11, 0, 0, 0, 0, 0, 1, 42, ''),
(12, 0, 0, 0, 0, 0, 1, 42, ''),
(13, 0, 0, 0, 0, 0, 1, 42, ''),
(14, 0, 0, 0, 1, 0, 1, 44, ''),
(15, 0, 0, 0, 1, 0, 1, 44, ''),
(16, 0, 0, 0, 1, 0, 1, 44, ''),
(17, 1, 1, 1, 1, 0, 1, 42, ''),
(18, 0, 1, 1, 0, 0, 1, 45, ''),
(19, 0, 1, 1, 0, 0, 1, 46, 'hd hotels'),
(20, 0, 0, 1, 0, 0, 1, 47, 'hd hotels'),
(21, 0, 0, 0, 1, 0, 1, 47, ''),
(22, 0, 0, 0, 1, 0, 1, 47, ''),
(23, 0, 1, 0, 0, 0, 1, 52, 'hd hotels'),
(24, 0, 0, 0, 0, 0, 1, 53, 'hd hotels'),
(25, 0, 0, 1, 0, 0, 1, 54, 'hd hotels'),
(26, 0, 1, 1, 0, 0, 1, 55, ''),
(27, 0, 0, 1, 0, 0, 1, 57, ''),
(28, 0, 0, 0, 0, 0, 1, 57, ''),
(29, 0, 0, 0, 0, 0, 1, 57, ''),
(30, 0, 0, 0, 0, 0, 1, 57, ''),
(31, 0, 0, 0, 0, 0, 1, 57, ''),
(32, 0, 0, 0, 0, 0, 1, 57, ''),
(33, 0, 0, 0, 0, 0, 1, 57, ''),
(34, 0, 0, 0, 0, 0, 1, 57, ''),
(35, 0, 0, 0, 0, 0, 1, 54, ''),
(36, 0, 0, 1, 0, 0, 1, 58, ''),
(37, 0, 0, 1, 0, 0, 1, 58, 'hd hotels'),
(38, 0, 0, 0, 0, 1, 0, 59, ''),
(39, 0, 0, 0, 0, 0, 1, 59, ''),
(40, 0, 0, 0, 0, 0, 1, 59, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enviopost_gustos`
--

CREATE TABLE `enviopost_gustos` (
  `idGusto` int(11) NOT NULL,
  `nombreGusto` varchar(100) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `enviopost_gustos`
--

INSERT INTO `enviopost_gustos` (`idGusto`, `nombreGusto`) VALUES
(1, 'POK Rent a car'),
(2, 'POK Hotel'),
(3, 'LEAN PMS'),
(4, 'LEAN RMS'),
(5, 'Housekeeping'),
(6, 'Logisticapp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `enviopost_enviopost`
--
ALTER TABLE `enviopost_enviopost`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enviopost_gustocliente`
--
ALTER TABLE `enviopost_gustocliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EnvioPost_gustoclien_idCliente_id_beffc44e_fk_EnvioPost` (`idCliente_id`);

--
-- Indices de la tabla `enviopost_gustos`
--
ALTER TABLE `enviopost_gustos`
  ADD PRIMARY KEY (`idGusto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `enviopost_enviopost`
--
ALTER TABLE `enviopost_enviopost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `enviopost_gustocliente`
--
ALTER TABLE `enviopost_gustocliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `enviopost_gustos`
--
ALTER TABLE `enviopost_gustos`
  MODIFY `idGusto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `enviopost_gustocliente`
--
ALTER TABLE `enviopost_gustocliente`
  ADD CONSTRAINT `EnvioPost_gustoclien_idCliente_id_beffc44e_fk_EnvioPost` FOREIGN KEY (`idCliente_id`) REFERENCES `enviopost_enviopost` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
