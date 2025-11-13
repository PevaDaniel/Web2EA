-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Nov 12. 22:51
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `web2_project`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gep`
--

CREATE TABLE `gep` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hely` varchar(255) NOT NULL,
  `tipus` varchar(255) NOT NULL,
  `ipcim` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `gep`
--

INSERT INTO `gep` (`id`, `hely`, `tipus`, `ipcim`, `created_at`, `updated_at`) VALUES
(1, 'T403', 'asztali', '192.168.2.1', NULL, NULL),
(2, 'T212', 'asztali', '192.168.2.2', NULL, NULL),
(3, 'T302', 'asztali', '192.168.2.3', NULL, NULL),
(4, 'T108', 'notebook', '192.168.1.1', NULL, NULL),
(5, 'T301', 'asztali', '192.168.2.4', NULL, NULL),
(6, 'T306', 'asztali', '192.168.2.5', NULL, NULL),
(7, 'T209', 'notebook', '192.168.4.1', NULL, NULL),
(8, 'T208', 'notebook', '192.168.4.2', NULL, NULL),
(9, 'T110', 'notebook', '192.168.1.2', NULL, NULL),
(10, 'T310', 'asztali', '192.168.2.6', NULL, NULL),
(11, 'T207', 'asztali', '192.168.2.7', NULL, NULL),
(12, 'T109', 'notebook', '192.168.1.3', NULL, NULL),
(13, 'T104', 'asztali', '192.168.2.8', NULL, NULL),
(14, 'T208', 'notebook', '192.168.4.3', NULL, NULL),
(15, 'T106', 'notebook', '192.168.1.4', NULL, NULL),
(16, 'T201', 'asztali', '192.168.2.9', NULL, NULL),
(17, 'T309', 'asztali', '192.168.2.10', NULL, NULL),
(18, 'T402', 'asztali', '192.168.2.11', NULL, NULL),
(19, 'T404', 'asztali', '192.168.2.12', NULL, NULL),
(20, 'T110', 'notebook', '192.168.1.5', NULL, NULL),
(21, 'T107', 'asztali', '192.168.2.13', NULL, NULL),
(22, 'T205', 'notebook', '192.168.1.6', NULL, NULL),
(23, 'T010', 'asztali', '192.168.2.14', NULL, NULL),
(24, 'T009', 'asztali', '192.168.2.15', NULL, NULL),
(25, 'T001', 'notebook', '192.168.1.7', NULL, NULL),
(26, 'T401', 'notebook', '192.168.1.8', NULL, NULL),
(27, 'T305', 'asztali', '192.168.3.1', NULL, NULL),
(28, 'T102', 'notebook', '192.168.1.9', NULL, NULL),
(29, 'T208', 'notebook', '192.168.4.4', NULL, NULL),
(30, 'T408', 'asztali', '192.168.2.16', NULL, NULL),
(31, 'T007', 'asztali', '192.168.3.2', NULL, NULL),
(32, 'T011', 'notebook', '192.168.1.10', NULL, NULL),
(33, 'T004', 'asztali', '192.168.2.17', NULL, NULL),
(34, 'T202', 'asztali', '192.168.2.18', NULL, NULL),
(35, 'T006', 'asztali', '192.168.3.3', NULL, NULL),
(36, 'T407', 'asztali', '192.168.2.19', NULL, NULL),
(37, 'T304', 'notebook', '192.168.1.11', NULL, NULL),
(38, 'T203', 'notebook', '192.168.1.12', NULL, NULL),
(39, 'T105', 'asztali', '192.168.2.20', NULL, NULL),
(40, 'T103', 'asztali', '192.168.2.21', NULL, NULL),
(41, 'T003', 'notebook', '192.168.1.13', NULL, NULL),
(42, 'T311', 'asztali', '192.168.2.22', NULL, NULL),
(43, 'T007', 'asztali', '192.168.3.4', NULL, NULL),
(44, 'T008', 'asztali', '192.168.2.23', NULL, NULL),
(45, 'T206', 'asztali', '192.168.2.24', NULL, NULL),
(46, 'T307', 'asztali', '192.168.2.25', NULL, NULL),
(47, 'T106', 'notebook', '192.168.1.14', NULL, NULL),
(48, 'T312', 'asztali', '192.168.2.26', NULL, NULL),
(49, 'T308', 'notebook', '192.168.1.15', NULL, NULL),
(50, 'T211', 'notebook', '192.168.1.16', NULL, NULL),
(51, 'T406', 'asztali', '192.168.2.27', NULL, NULL),
(52, 'T002', 'asztali', '192.168.2.28', NULL, NULL),
(53, 'T012', 'asztali', '192.168.2.29', NULL, NULL),
(54, 'T110', 'notebook', '192.168.1.17', NULL, NULL),
(55, 'T102', 'notebook', '192.168.1.18', NULL, NULL),
(56, 'T108', 'notebook', '192.168.1.19', NULL, NULL),
(57, 'T303', 'asztali', '192.168.2.30', NULL, NULL),
(58, 'T005', 'notebook', '192.168.1.20', NULL, NULL),
(59, 'T006', 'asztali', '192.168.3.5', NULL, NULL),
(60, 'T203', 'notebook', '192.168.1.21', NULL, NULL),
(61, 'T111', 'asztali', '192.168.2.31', NULL, NULL),
(62, 'T208', 'notebook', '192.168.4.5', NULL, NULL),
(63, 'T106', 'notebook', '192.168.1.22', NULL, NULL),
(64, 'T409', 'notebook', '192.168.1.23', NULL, NULL),
(65, 'T005', 'notebook', '192.168.1.24', NULL, NULL),
(66, 'T101', 'asztali', '192.168.2.32', NULL, NULL),
(67, 'T005', 'notebook', '192.168.1.25', NULL, NULL),
(68, 'T405', 'asztali', '192.168.2.33', NULL, NULL),
(69, 'T305', 'asztali', '192.168.3.6', NULL, NULL),
(70, 'T204', 'asztali', '192.168.2.34', NULL, NULL),
(71, 'T112', 'notebook', '192.168.1.26', NULL, NULL),
(72, 'T305', 'asztali', '192.168.3.7', NULL, NULL),
(73, 'T003', 'notebook', '192.168.1.27', NULL, NULL),
(74, 'T305', 'asztali', '192.168.3.8', NULL, NULL),
(75, 'T210', 'asztali', '192.168.2.35', NULL, NULL),
(76, 'T208', 'notebook', '192.168.4.6', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_11_11_213105_create_users_table', 1),
(2, '2025_11_11_213205_create_cache_table', 1),
(3, '2025_11_12_082423_create_messages_table', 1),
(4, '2025_11_12_112416_computer', 1),
(5, '2025_11_12_200926_softver', 1),
(6, '2025_11_12_201604_telepites', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szoftver`
--

CREATE TABLE `szoftver` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nev` varchar(255) NOT NULL,
  `kategoria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `szoftver`
--

INSERT INTO `szoftver` (`id`, `nev`, `kategoria`, `created_at`, `updated_at`) VALUES
(1, 'AIR', 'plug-in', NULL, NULL),
(2, 'FastStone Image Viewer', 'képkezelés', NULL, NULL),
(5, 'InfraRecorder', 'DVD-írás', NULL, NULL),
(7, 'PDF Split And Merge Basic', 'pdf-manipulálás', NULL, NULL),
(9, 'CCleaner', 'gépkarbantartás', NULL, NULL),
(11, 'Tracker', 'fizika oktatás', NULL, NULL),
(12, 'Acrobat Reader', 'pdf-olvasás', NULL, NULL),
(13, 'Multivox 4 Magyar szövegfelolvasó', 'szövegfelolvasó', NULL, NULL),
(14, 'WinMerge', 'fájlösszehasonlítás', NULL, NULL),
(15, 'Free Pascal', 'fejlesztő környezet', NULL, NULL),
(17, 'Geany', 'editor', NULL, NULL),
(18, 'Euler3D', 'matematika oktatás', NULL, NULL),
(19, 'IrfanView', 'képkezelés', NULL, NULL),
(20, 'Blender', 'modellezés', NULL, NULL),
(21, 'Flash Player ActiveX', 'plug-in', NULL, NULL),
(22, 'CDBurnerXP', 'DVD-írás', NULL, NULL),
(23, 'Java SE Development Kit', 'fejlesztő környezet', NULL, NULL),
(24, 'Flash Player PPAPI', 'plug-in', NULL, NULL),
(25, 'SharePoint Designer 2007', 'webszerkesztés', NULL, NULL),
(27, 'K-Lite Mega Codec Pack', 'médialejátszás', NULL, NULL),
(28, 'Notepad++', 'editor', NULL, NULL),
(29, 'PatchCleaner', 'gépkarbantartás', NULL, NULL),
(30, 'Audacity', 'hangszerkesztés', NULL, NULL),
(34, 'Java', 'plug-in', NULL, NULL),
(35, 'Visual Studio 2013', 'fejlesztő környezet', NULL, NULL),
(36, 'Greenshot', 'képernyőkép-készítés', NULL, NULL),
(38, 'Lynx 4', 'interaktív tábla', NULL, NULL),
(39, 'PuTTY', 'távoli terminál', NULL, NULL),
(40, 'Google Föld', 'virtuális földgömb', NULL, NULL),
(42, 'PDFCreator', 'pdf-generálás', NULL, NULL),
(44, 'MuseScore', 'kottaírás', NULL, NULL),
(45, 'Disk Drill', 'adathelyreállítás', NULL, NULL),
(46, 'Flash Player NPAPI', 'plug-in', NULL, NULL),
(48, 'Google Drive', 'online fájltárolás', NULL, NULL),
(49, 'Google Earth', 'virtuális földgömb', NULL, NULL),
(50, 'Filzip', 'tömörítés', NULL, NULL),
(51, 'FreeCommander XE', 'fájlkezelés', NULL, NULL),
(53, 'Reader', 'pdf-olvasás', NULL, NULL),
(54, 'Wings 3D', 'modellezés', NULL, NULL),
(55, 'Windows Live Essentials', 'alkalmazás gyűjtemény', NULL, NULL),
(56, 'Imagine', 'fejlesztő környezet', NULL, NULL),
(57, 'LibreOffice', 'irodai programcsomag', NULL, NULL),
(58, 'Windows Live Messenger', 'azonnali üzenetküldés', NULL, NULL),
(59, 'Scratch 2 Offline Editor', 'fejlesztő környezet', NULL, NULL),
(60, 'Inkscape', 'vektorgarfikus szerkesztés', NULL, NULL),
(61, 'Adafor', 'adminisztráció', NULL, NULL),
(62, 'Skype', 'azonnali üzenetküldés', NULL, NULL),
(63, 'Mozilla Firefox', 'böngészés', NULL, NULL),
(64, 'Opera', 'böngészés', NULL, NULL),
(65, 'Dev-C++', 'fejlesztő környezet', NULL, NULL),
(66, 'NetBeans IDE', 'fejlesztő környezet', NULL, NULL),
(67, 'Shockwave Player', 'plug-in', NULL, NULL),
(68, 'Foxit Reader', 'pdf-olvasás', NULL, NULL),
(69, 'Movie Maker', 'videószerkesztés', NULL, NULL),
(70, 'Silverlight', 'plug-in', NULL, NULL),
(71, 'KompoZer', 'webszerkesztés', NULL, NULL),
(72, 'SMART Notebook Interactive Viewer', 'interaktív tábla', NULL, NULL),
(73, 'Euklides', 'matematika oktatás', NULL, NULL),
(74, 'paint.net', 'képszerkesztés', NULL, NULL),
(75, 'WinSCP', 'távoli fájlhozzáférés', NULL, NULL),
(76, 'SVG Viewer', 'plug-in', NULL, NULL),
(78, 'VUE', 'gondolattérkép készítés', NULL, NULL),
(79, 'mimio Studio', 'interaktív tábla', NULL, NULL),
(80, 'Real Alternative', 'médialejátszás', NULL, NULL),
(81, 'XnView', 'képkezelés', NULL, NULL),
(82, 'Windows Live Movie Maker', 'videószerkesztés', NULL, NULL),
(83, 'Picasa', 'képszerkesztés', NULL, NULL),
(84, 'SMART Notebook', 'interaktív tábla', NULL, NULL),
(85, 'Double Commander', 'fájlkezelés', NULL, NULL),
(86, 'ImgBurn', 'DVD-írás', NULL, NULL),
(87, 'Google Chrome', 'böngészés', NULL, NULL),
(88, 'VLC media player', 'médialejátszás', NULL, NULL),
(89, 'FileZilla Client', 'távoli fájlhozzáférés', NULL, NULL),
(90, 'GeoGebra', 'matematika oktatás', NULL, NULL),
(91, 'FFmpeg for Audacity', 'hangszerkesztés', NULL, NULL),
(92, 'BS.Player FREE', 'médialejátszás', NULL, NULL),
(94, 'Dia', 'diagramkészítés', NULL, NULL),
(95, 'Visual Studio 2015', 'fejlesztő környezet', NULL, NULL),
(96, 'Open-Sankoré', 'interaktív tábla', NULL, NULL),
(97, 'GIMP', 'képszerkesztés', NULL, NULL),
(99, 'Freeplane', 'gondolattérkép készítés', NULL, NULL),
(101, 'Dropbox', 'online fájltárolás', NULL, NULL),
(102, '7-Zip', 'tömörítés', NULL, NULL),
(103, 'K-Lite Codec Pack', 'médialejátszás', NULL, NULL),
(104, 'EclipseCrossword', 'keresztrejtvény készítés', NULL, NULL),
(105, 'FreeMind', 'gondolattérkép készítés', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepites`
--

CREATE TABLE `telepites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gepid` bigint(20) UNSIGNED NOT NULL,
  `szoftverid` bigint(20) UNSIGNED NOT NULL,
  `verzio` varchar(255) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `telepites`
--

INSERT INTO `telepites` (`id`, `gepid`, `szoftverid`, `verzio`, `datum`, `created_at`, `updated_at`) VALUES
(1, 12, 85, 'ver0.5.4', '2012-11-02', NULL, NULL),
(2, 69, 102, 'ver9.10', NULL, NULL, NULL),
(3, 76, 49, 'ver7.1.7.2606', '2016-11-06', NULL, NULL),
(4, 33, 86, 'ver2.5.8.0', '2014-08-28', NULL, NULL),
(5, 47, 9, 'ver5.21', NULL, NULL, NULL),
(6, 11, 75, 'ver5.9.3', '2016-12-09', NULL, NULL),
(7, 32, 63, 'ver50.0.2', NULL, NULL, NULL),
(8, 38, 46, 'ver24.0.0.186', NULL, NULL, NULL),
(9, 42, 55, 'ver15.4.3508.1109', NULL, NULL, NULL),
(10, 62, 94, NULL, NULL, NULL, NULL),
(11, 57, 57, 'ver5.1.6.2', '2016-11-09', NULL, NULL),
(12, 28, 12, 'ver15.020.20042', '2016-11-05', NULL, NULL),
(13, 62, 14, 'ver2.14.0', '2013-05-16', NULL, NULL),
(14, 1, 12, 'ver15.020.20042', '2016-11-22', NULL, NULL),
(15, 38, 12, 'ver15.020.20042', '2016-11-24', NULL, NULL),
(16, 61, 90, 'ver5.0.286.0', '2016-11-05', NULL, NULL),
(17, 61, 102, 'ver16.02', NULL, NULL, NULL),
(18, 31, 64, 'ver12.16.1860', NULL, NULL, NULL),
(19, 15, 1, 'ver24.0.0.180', '2016-12-14', NULL, NULL),
(20, 55, 96, NULL, '2014-08-23', NULL, NULL),
(21, 43, 29, 'ver1.4.20', '2016-04-25', NULL, NULL),
(22, 35, 70, 'ver5.1.50901.0', '2016-10-12', NULL, NULL),
(23, 31, 34, 'ver8.0.1120.15', '2016-11-07', NULL, NULL),
(24, 53, 42, 'ver2.3.0', '2016-04-03', NULL, NULL),
(25, 32, 67, 'ver12.2.5.195', NULL, NULL, NULL),
(26, 28, 67, 'ver12.2.5.195', NULL, NULL, NULL),
(27, 19, 70, 'ver5.1.50901.0', '2016-10-12', NULL, NULL),
(28, 76, 42, 'ver2.4.1', '2016-12-04', NULL, NULL),
(29, 48, 89, 'ver3.22.1', NULL, NULL, NULL),
(30, 55, 63, 'ver50.0', NULL, NULL, NULL),
(31, 29, 60, 'ver0.91', '2016-06-13', NULL, NULL),
(32, 30, 63, 'ver50.1.0', NULL, NULL, NULL),
(33, 29, 14, 'ver2.14.0', '2013-05-20', NULL, NULL),
(34, 12, 97, 'ver2.8.18', '2016-08-19', NULL, NULL),
(35, 21, 87, 'ver54.0.2840.87', '2016-11-05', NULL, NULL),
(36, 22, 64, 'ver12.16.1860', NULL, NULL, NULL),
(37, 6, 21, 'ver24.0.0.186', NULL, NULL, NULL),
(38, 16, 22, 'ver4.5.7.6452', '2016-11-30', NULL, NULL),
(39, 65, 64, 'ver41.0.2353.69', NULL, NULL, NULL),
(40, 8, 12, 'ver15.020.20042', '2016-11-07', NULL, NULL),
(41, 62, 23, 'ver8.0.250.18', '2014-11-19', NULL, NULL),
(42, 58, 68, 'ver8.0.2.805', '2016-09-02', NULL, NULL),
(43, 40, 9, 'ver5.16', NULL, NULL, NULL),
(44, 44, 103, 'ver12.5.5', '2016-11-12', NULL, NULL),
(45, 37, 9, 'ver5.24', NULL, NULL, NULL),
(46, 29, 78, 'ver3.2.2', NULL, NULL, NULL),
(47, 54, 20, 'ver2.77.0', '2016-03-25', NULL, NULL),
(48, 21, 12, 'ver15.020.20042', '2016-11-05', NULL, NULL),
(49, 43, 67, 'ver12.2.5.195', NULL, NULL, NULL),
(50, 69, 102, 'ver16.04.00.0', '2016-10-28', NULL, NULL),
(51, 12, 30, 'ver2.1.2', '2016-04-07', NULL, NULL),
(52, 14, 1, 'ver23.0.0.257', '2016-09-21', NULL, NULL),
(53, 7, 30, 'ver2.1.0', '2015-04-01', NULL, NULL),
(54, 31, 39, 'ver0.67', '2016-03-07', NULL, NULL),
(55, 60, 81, 'ver2.39', '2016-11-23', NULL, NULL),
(56, 59, 60, 'ver0.91', '2015-09-12', NULL, NULL),
(57, 56, 96, NULL, '2016-11-23', NULL, NULL),
(58, 15, 46, 'ver24.0.0.186', NULL, NULL, NULL),
(59, 20, 97, 'ver2.8.18', '2016-08-19', NULL, NULL),
(60, 25, 9, 'ver5.24', NULL, NULL, NULL),
(61, 51, 27, 'ver6.7.0', '2011-08-09', NULL, NULL),
(62, 54, 23, 'ver8.0.600.27', '2015-08-25', NULL, NULL),
(63, 35, 90, 'ver5.0.214.0', '2016-04-06', NULL, NULL),
(64, 65, 42, 'ver2.3.2', '2016-09-08', NULL, NULL),
(65, 9, 103, 'ver12.0.5', '2016-04-08', NULL, NULL),
(66, 21, 68, 'ver8.1.0.1013', '2016-11-05', NULL, NULL),
(67, 35, 102, 'ver16.04.00.0', '2016-11-07', NULL, NULL),
(68, 35, 96, NULL, '2016-04-06', NULL, NULL),
(69, 62, 9, 'ver5.22', NULL, NULL, NULL),
(70, 15, 68, 'ver8.0.2.805', '2016-08-19', NULL, NULL),
(71, 57, 63, 'ver49.0.2', NULL, NULL, NULL),
(72, 7, 68, 'ver6.1.4.217', '2014-04-04', NULL, NULL),
(73, 15, 83, 'ver3.9.141.259', NULL, NULL, NULL),
(74, 34, 75, 'ver5.9.3', '2016-12-05', NULL, NULL),
(75, 57, 21, 'ver24.0.0.186', NULL, NULL, NULL),
(76, 60, 97, 'ver2.8.18', '2016-11-23', NULL, NULL),
(77, 57, 90, 'ver4.4.19.0', '2014-03-12', NULL, NULL),
(78, 11, 85, 'ver0.7.6', '2016-11-04', NULL, NULL),
(79, 7, 34, 'ver8.0.1110.14', '2016-10-20', NULL, NULL),
(80, 31, 46, 'ver23.0.0.207', NULL, NULL, NULL),
(81, 53, 75, 'ver5.7.7', '2016-04-03', NULL, NULL),
(82, 15, 49, 'ver7.1.7.2606', '2016-11-05', NULL, NULL),
(83, 40, 90, 'ver5.0.271.0', '2016-08-30', NULL, NULL),
(84, 29, 81, 'ver2.36', '2016-09-10', NULL, NULL),
(85, 42, 48, 'ver1.32.3889.0961', '2016-12-02', NULL, NULL),
(86, 33, 74, 'ver4.0.10', '2016-08-30', NULL, NULL),
(87, 5, 34, 'ver8.0.1010.13', '2016-09-21', NULL, NULL),
(88, 70, 89, 'ver3.23.0.2', NULL, NULL, NULL),
(89, 39, 1, 'ver24.0.0.180', '2016-12-14', NULL, NULL),
(90, 54, 74, 'ver4.0.12', '2016-11-05', NULL, NULL),
(91, 67, 60, 'ver0.91', '2015-02-14', NULL, NULL),
(92, 23, 64, 'ver12.16.1860', NULL, NULL, NULL),
(93, 40, 48, 'ver1.32.3592.6117', '2016-11-11', NULL, NULL),
(94, 28, 63, 'ver50.0.2', NULL, NULL, NULL),
(95, 53, 67, 'ver12.2.4.194', NULL, NULL, NULL),
(96, 8, 19, 'ver4.42', NULL, NULL, NULL),
(97, 38, 74, 'ver4.0.12', '2016-11-23', NULL, NULL),
(98, 39, 103, 'ver12.7.0', '2016-12-13', NULL, NULL),
(99, 14, 94, NULL, NULL, NULL, NULL),
(100, 66, 63, 'ver50.0.2', NULL, NULL, NULL),
(101, 20, 67, 'ver12.2.5.195', NULL, NULL, NULL),
(102, 15, 63, 'ver50.1.0', NULL, NULL, NULL),
(103, 70, 57, 'ver5.2.3.3', '2016-11-05', NULL, NULL),
(104, 23, 9, 'ver5.18', NULL, NULL, NULL),
(105, 29, 22, 'ver4.5.7.6389', '2016-11-21', NULL, NULL),
(106, 29, 88, 'ver2.2.4', NULL, NULL, NULL),
(107, 58, 5, NULL, NULL, NULL, NULL),
(108, 30, 21, 'ver23.0.0.205', NULL, NULL, NULL),
(109, 61, 103, 'ver12.5.0', '2016-11-05', NULL, NULL),
(110, 21, 102, 'ver16.04.00.0', '2016-11-05', NULL, NULL),
(111, 70, 49, 'ver7.1.7.2606', '2016-10-31', NULL, NULL),
(112, 59, 14, 'ver2.14.0', '2015-09-12', NULL, NULL),
(113, 36, 57, 'ver5.1.6.2', '2016-11-16', NULL, NULL),
(114, 9, 14, 'ver2.14.0', '2014-10-28', NULL, NULL),
(115, 39, 29, 'ver1.4.20', '2016-04-25', NULL, NULL),
(116, 21, 90, 'ver5.0.271.0', '2016-08-30', NULL, NULL),
(117, 56, 29, 'ver1.4.20', '2016-11-24', NULL, NULL),
(118, 29, 57, 'ver5.2.1.2', '2016-09-10', NULL, NULL),
(119, 54, 63, 'ver50.0.2', NULL, NULL, NULL),
(120, 25, 28, 'ver7.2.1', NULL, NULL, NULL),
(121, 9, 23, 'ver8.0.250.18', '2014-10-28', NULL, NULL),
(122, 29, 39, 'ver0.67', '2016-03-08', NULL, NULL),
(123, 31, 63, 'ver50.0.2', NULL, NULL, NULL),
(124, 22, 65, 'ver4.9.9.2', NULL, NULL, NULL),
(125, 47, 70, 'ver5.1.50901.0', '2016-10-14', NULL, NULL),
(126, 32, 49, 'ver7.1.7.2606', '2016-11-04', NULL, NULL),
(127, 4, 29, 'ver1.4.20', '2016-11-24', NULL, NULL),
(128, 73, 103, 'ver12.3.5', '2016-08-20', NULL, NULL),
(129, 11, 11, 'ver4.94', NULL, NULL, NULL),
(130, 71, 19, 'ver4.42', NULL, NULL, NULL),
(131, 12, 102, 'ver15.14', NULL, NULL, NULL),
(132, 28, 97, 'ver2.8.18', '2016-08-19', NULL, NULL),
(133, 41, 12, 'ver15.020.20042', '2016-11-07', NULL, NULL),
(134, 63, 75, 'ver5.9.2', '2016-11-23', NULL, NULL),
(135, 16, 28, 'ver7.2.2', NULL, NULL, NULL),
(136, 32, 59, 'ver255', '2016-11-04', NULL, NULL),
(137, 33, 75, 'ver5.9.3', '2016-12-05', NULL, NULL),
(138, 69, 63, 'ver50.1.0', NULL, NULL, NULL),
(139, 25, 30, 'ver2.1.2', '2016-11-23', NULL, NULL),
(140, 40, 49, 'ver7.1.7.2606', '2016-11-24', NULL, NULL),
(141, 41, 22, 'ver4.5.7.6452', '2016-12-05', NULL, NULL),
(142, 33, 49, 'ver7.1.7.2606', '2016-11-28', NULL, NULL),
(143, 67, 19, 'ver4.42', NULL, NULL, NULL),
(144, 13, 19, 'ver4.42', NULL, NULL, NULL),
(145, 8, 76, 'ver3.0', NULL, NULL, NULL),
(146, 62, 7, 'ver2.2.2', '2013-05-16', NULL, NULL),
(147, 15, 57, 'ver5.2.2.2', '2016-11-05', NULL, NULL),
(148, 58, 86, 'ver2.5.8.0', '2014-06-21', NULL, NULL),
(149, 12, 64, 'ver41.0.2353.69', NULL, NULL, NULL),
(150, 11, 14, 'ver2.14.0', '2016-11-04', NULL, NULL),
(151, 8, 81, 'ver2.35', '2016-03-21', NULL, NULL),
(152, 35, 64, 'ver41.0.2353.69', NULL, NULL, NULL),
(153, 57, 90, 'ver5.0.57.0', '2015-01-26', NULL, NULL),
(154, 72, 46, 'ver24.0.0.186', NULL, NULL, NULL),
(155, 60, 87, 'ver54.0.2840.99', '2016-11-23', NULL, NULL),
(156, 70, 9, 'ver5.24', NULL, NULL, NULL),
(157, 10, 2, 'ver5.9', NULL, NULL, NULL),
(158, 62, 36, 'ver1.2.8.12', '2015-12-14', NULL, NULL),
(159, 41, 89, 'ver3.23.0.2', NULL, NULL, NULL),
(160, 34, 81, 'ver2.38', '2016-11-05', NULL, NULL),
(161, 9, 96, NULL, '2014-10-28', NULL, NULL),
(162, 52, 68, 'ver8.1.0.1013', '2016-11-06', NULL, NULL),
(163, 13, 34, 'ver8.0.1120.15', '2016-11-05', NULL, NULL),
(164, 41, 46, 'ver23.0.0.207', NULL, NULL, NULL),
(165, 22, 102, 'ver16.02', NULL, NULL, NULL),
(166, 22, 81, 'ver2.36', '2016-08-19', NULL, NULL),
(167, 43, 74, 'ver4.0.9', '2016-04-11', NULL, NULL),
(168, 34, 30, 'ver2.1.2', '2016-04-10', NULL, NULL),
(169, 4, 87, 'ver66.208.49239', '2016-12-14', NULL, NULL),
(170, 32, 95, 'ver14.0.23107', '2016-11-03', NULL, NULL),
(171, 58, 64, 'ver41.0.2353.69', NULL, NULL, NULL),
(172, 44, 60, 'ver0.91', '2015-06-24', NULL, NULL),
(173, 32, 102, 'ver16.04', NULL, NULL, NULL),
(174, 45, 70, 'ver5.1.50901.0', '2016-10-12', NULL, NULL),
(175, 68, 62, 'ver7.27.101', '2016-09-05', NULL, NULL),
(176, 12, 42, 'ver2.4.1', '2016-12-05', NULL, NULL),
(177, 53, 57, 'ver5.1.1.3', '2016-04-03', NULL, NULL),
(178, 70, 5, NULL, NULL, NULL, NULL),
(179, 9, 12, 'ver15.020.20042', '2016-11-07', NULL, NULL),
(180, 69, 12, 'ver15.020.20042', '2016-11-07', NULL, NULL),
(181, 18, 22, 'ver4.2.7.1893', '2010-02-26', NULL, NULL),
(182, 43, 75, 'ver5.9.2', '2016-09-15', NULL, NULL),
(183, 13, 87, 'ver54.0.2840.99', '2016-11-11', NULL, NULL),
(184, 39, 20, 'ver2.68a', NULL, NULL, NULL),
(185, 49, 55, 'ver15.4.3508.1109', NULL, NULL, NULL),
(186, 12, 25, 'ver12.0.6612.1000', '2016-12-05', NULL, NULL),
(187, 21, 86, 'ver2.5.8.0', '2014-08-30', NULL, NULL),
(188, 76, 90, 'ver5.0.229.0', '2016-04-25', NULL, NULL),
(189, 62, 49, 'ver7.1.7.2606', '2016-11-06', NULL, NULL),
(190, 33, 12, 'ver15.020.20042', '2016-11-07', NULL, NULL),
(191, 66, 87, 'ver66.208.49227', '2016-12-08', NULL, NULL),
(192, 73, 9, 'ver5.22', NULL, NULL, NULL),
(193, 13, 103, 'ver12.3.5', '2016-08-30', NULL, NULL),
(194, 31, 19, 'ver4.42', NULL, NULL, NULL),
(195, 40, 5, NULL, NULL, NULL, NULL),
(196, 6, 102, 'ver9.22', NULL, NULL, NULL),
(197, 61, 88, 'ver2.2.4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('guest','registered','admin') NOT NULL DEFAULT 'registered',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', NULL, '$2y$12$WwtUft0eo2LoH027yOlgqOv57QwIxVGOSpo0hRLFqu5TFV.jkv3y6', 'admin', NULL, '2025-11-12 20:36:09', '2025-11-12 20:36:09'),
(2, 'Regular User', 'user@example.com', NULL, '$2y$12$UNnIfgbrbLNZU7UBNdUAN.ITJi0xnLPUpC/PddcVipvjHG1GwLEw.', 'registered', NULL, '2025-11-12 20:36:10', '2025-11-12 20:36:10');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `gep`
--
ALTER TABLE `gep`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gep_ipcim_unique` (`ipcim`);

--
-- A tábla indexei `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szoftver`
--
ALTER TABLE `szoftver`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `telepites`
--
ALTER TABLE `telepites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `telepites_gepid_foreign` (`gepid`),
  ADD KEY `telepites_szoftverid_foreign` (`szoftverid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `gep`
--
ALTER TABLE `gep`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT a táblához `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `szoftver`
--
ALTER TABLE `szoftver`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT a táblához `telepites`
--
ALTER TABLE `telepites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `telepites`
--
ALTER TABLE `telepites`
  ADD CONSTRAINT `telepites_gepid_foreign` FOREIGN KEY (`gepid`) REFERENCES `gep` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `telepites_szoftverid_foreign` FOREIGN KEY (`szoftverid`) REFERENCES `szoftver` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
