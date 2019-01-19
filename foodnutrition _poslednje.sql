-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2018 at 01:18 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodnutrition`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodcategory`
--

CREATE TABLE `foodcategory` (
  `id` smallint(2) NOT NULL,
  `category_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodcategory`
--

INSERT INTO `foodcategory` (`id`, `category_name`) VALUES
(1, 'Jaja'),
(2, 'Masnoce'),
(3, 'Meso'),
(4, 'Iznutrice'),
(5, 'Preradjevine od mesa'),
(6, 'Mleko'),
(7, 'Mlecni proizvodi'),
(8, 'Povrce'),
(9, 'Riba'),
(10, 'Secer i slatkisi'),
(11, 'Voce'),
(12, 'Zita');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `meal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutritiondata`
--

CREATE TABLE `nutritiondata` (
  `id` int(10) NOT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  `food_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `kj` smallint(5) DEFAULT NULL,
  `kcal` smallint(5) DEFAULT NULL,
  `protein` smallint(3) DEFAULT NULL,
  `uh` smallint(3) DEFAULT NULL,
  `masti` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nutritiondata`
--

INSERT INTO `nutritiondata` (`id`, `category_id`, `food_name`, `kj`, `kcal`, `protein`, `uh`, `masti`) VALUES
(1, 1, 'Belance kokosje', 184, 44, 11, 0, 0),
(2, 1, 'Jaje guscje', 789, 188, 14, 1, 15),
(3, 1, 'Jaje kokosje celo', 632, 151, 13, 0, 11),
(4, 1, 'Jaje kokosje u prahu celo', 2402, 570, 46, 0, 42),
(5, 1, 'Jaje pacije', 777, 186, 13, 1, 14),
(6, 1, 'Jaje prepelice', 648, 155, 13, 0, 11),
(7, 1, 'Jaje purje', 711, 170, 13, 1, 14),
(8, 1, 'Zumance kokosje sirovo', 1510, 361, 16, 0, 33),
(9, 2, 'Loj govedji', 3663, 891, 0, 0, 99),
(10, 2, 'Loj ovciji', 3732, 892, 0, 0, 99),
(11, 2, 'Maslac neslani', 3142, 751, 1, 0, 83),
(12, 2, 'Maslac slani', 3142, 751, 1, 0, 83),
(13, 2, 'Mast svinjska nesoljena', 3663, 891, 0, 0, 99),
(14, 2, 'Mast guscja', 3703, 885, 0, 0, 99),
(15, 2, 'Mast kokosja', 3703, 885, 0, 0, 99),
(16, 2, 'Mast pacja', 3703, 885, 0, 0, 99),
(17, 2, 'Mast purja', 3703, 885, 0, 0, 99),
(18, 2, 'Slanina svinjska sirova bez koze', 3280, 784, 3, 0, 85),
(19, 2, 'Ulje arasidovo-kikiriki ', 3766, 900, 0, 0, 100),
(20, 2, 'Ulje bakalara-iz jetre ', 3766, 900, 0, 0, 100),
(21, 2, 'Ulje bucino', 3766, 900, 0, 0, 100),
(22, 2, 'Ulje kokosovo', 3766, 900, 0, 0, 100),
(23, 2, 'Ulje kukuruzno', 3766, 900, 0, 0, 100),
(24, 2, 'Ulje maslinovo', 3766, 900, 0, 0, 100),
(25, 2, 'Ulje psenicnih klica', 3766, 900, 0, 0, 100),
(26, 2, 'Ulje susamovo', 3766, 900, 0, 0, 100),
(27, 2, 'Ulje sojino', 3766, 900, 0, 0, 100),
(28, 2, 'Ulje suncokretovo', 3766, 900, 0, 0, 100),
(29, 2, 'Margarin slani-biljna+ziv.mast', 3054, 730, 0, 0, 81),
(30, 2, 'Margarin soft-od biljnih ulja', 3054, 730, 0, 2, 80),
(31, 2, 'Majonez', 3063, 732, 0, 2, 80),
(32, 2, 'Tartar sos', 2238, 535, 0, 7, 57),
(33, 3, 'Govedina mrsava', 538, 129, 21, 0, 5),
(34, 3, 'Govedina srednje masna', 894, 214, 19, 0, 5),
(35, 3, 'Teletina masna	', 853, 204, 18, 0, 15),
(36, 3, 'Guska srednje masna', 828, 198, 21, 0, 12),
(37, 3, 'Guska masna ', 1481, 354, 16, 0, 31),
(38, 3, 'Kokos cijela prosjek', 777, 186, 21, 0, 11),
(39, 3, 'Patka srednje masna', 1427, 341, 20, 0, 29),
(40, 3, 'Patka samo meso', 510, 122, 20, 0, 5),
(41, 3, 'Pile celo-prosek ', 962, 230, 18, 0, 18),
(42, 3, 'Pile belo meso bez kosti', 485, 116, 21, 0, 3),
(43, 3, 'Pile crno meso-batak ', 527, 126, 19, 0, 6),
(44, 3, 'Puranceli-prosek', 598, 143, 20, 0, 7),
(45, 3, 'Puran crno meso-batak ', 778, 186, 20, 0, 11),
(46, 3, 'Puran belo meso ', 559, 134, 22, 0, 5),
(47, 4, 'Bubrezi govedji', 360, 86, 16, 0, 3),
(48, 4, 'Bubrezi janjeci', 377, 90, 17, 0, 3),
(49, 4, 'Bubrezi svinjski', 377, 90, 16, 0, 3),
(50, 4, 'Fileti govedji', 443, 106, 16, 0, 4),
(51, 4, 'Jetra govedja', 683, 163, 21, 2, 8),
(52, 4, 'Jetra pileca', 536, 128, 22, 1, 4),
(53, 4, 'Jetra svinjska', 644, 154, 21, 2, 7),
(54, 4, 'Jetra teleca', 640, 153, 20, 2, 7),
(55, 4, 'Jezik govedji sirovi', 657, 157, 19, 0, 9),
(56, 4, 'Pluca govedja', 313, 75, 14, 0, 2),
(57, 4, 'Srce govedje', 452, 108, 18, 0, 4),
(58, 4, 'Srce jagnjece', 498, 119, 17, 0, 6),
(59, 4, 'Srce svinjsko', 391, 93, 17, 0, 3),
(60, 5, 'Jetrena pasteta', 1360, 325, 14, 2, 29),
(61, 5, 'Hamburger od govedjeg mesa', 1506, 360, 14, 4, 32),
(62, 5, 'Virsle govedina-svinjetina', 1339, 320, 11, 2, 29),
(63, 5, 'Virsle od pileceg mesa', 1079, 258, 12, 7, 20),
(64, 5, 'Kobasica prosjek', 1678, 401, 14, 3, 37),
(65, 5, 'Kobasice govedjina i svinjetina', 1648, 394, 14, 0, 37),
(66, 5, 'Kobasice svinjske-pecenice', 1512, 361, 14, 0, 33),
(67, 5, 'Kobasice svinjske suve', 2146, 513, 21, 0, 47),
(68, 5, 'Kozice svinjske suve', 2533, 605, 27, 0, 55),
(69, 5, 'Krvavice', 1590, 380, 14, 1, 34),
(70, 5, 'Krvavice s kasom', 1270, 305, 12, 15, 22),
(71, 5, 'Mesni narezak svinj.+goved.', 1414, 338, 13, 4, 30),
(72, 5, 'Mesni narezak svinjsko meso', 1774, 424, 12, 40, 4),
(73, 5, 'Mortadela svinjetina+govedina', 1736, 415, 13, 0, 39),
(74, 5, 'Salama trajna milanska i sl', 1988, 475, 22, 0, 43),
(75, 5, 'Salama trajna svinj +goved.', 1902, 454, 27, 0, 38),
(76, 5, 'Salama trajna od svinjetine', 1944, 465, 34, 0, 36),
(77, 5, 'Slanina suva masna', 3268, 781, 4, 0, 85),
(78, 5, 'Slanina suva masna', 2117, 506, 14, 0, 50),
(79, 5, 'Sunka dimljena soljena susena', 1816, 434, 22, 0, 38),
(80, 5, 'Sunka dimljena kuvana', 1724, 412, 21, 0, 36),
(81, 5, 'Sunka mrsava', 642, 153, 28, 0, 4),
(82, 5, 'Sunka mrsava presana', 541, 129, 15, 1, 7),
(83, 5, 'Vratina susena', 1884, 450, 20, 2, 40),
(84, 6, 'Mleko kravlje punomasno', 268, 64, 4, 5, 4),
(85, 6, 'Mleko kravlje (33% masti)', 255, 61, 3, 5, 3),
(86, 6, 'Mleko kravlje (1.8% masti)', 205, 49, 3, 5, 2),
(87, 6, 'Mleko kravlje obrano', 138, 33, 3, 5, 1),
(88, 6, 'Mleko punom.evap.nezasec.', 561, 134, 7, 10, 7),
(89, 6, 'Mleko punom.kondenz.zasec.', 1347, 322, 8, 55, 9),
(90, 6, 'Mleko punom. u prahu', 2009, 480, 26, 39, 25),
(91, 6, 'Mleko obrano u prahu', 1408, 336, 34, 51, 1),
(92, 6, 'Mleko kozije', 297, 71, 4, 5, 4),
(93, 6, 'Mleko ovcije	', 414, 99, 6, 4, 7),
(94, 7, 'Jogurt (3.2% masti)', 255, 61, 3, 5, 3),
(95, 7, 'Jogurt vocni iz obranog mleka', 414, 99, 4, 19, 1),
(96, 7, 'Kefir', 251, 60, 3, 3, 4),
(97, 7, 'Mlacenica ( stepka )', 167, 40, 3, 5, 1),
(98, 7, 'Surutka sveza', 109, 26, 1, 5, 1),
(99, 7, 'Surutka u prahu', 1460, 349, 12, 73, 1),
(100, 7, 'Pavlaka kisela ( 10% masti )', 498, 119, 3, 4, 10),
(101, 7, 'Pavlaka kisela ( 20% masti )', 862, 206, 3, 3, 20),
(102, 7, 'Pavlaka kisela (30% masti )	', 1226, 293, 2, 3, 30),
(103, 7, 'Čokoladno mleko ( punom. )', 385, 92, 3, 10, 4),
(104, 7, 'Camembert 45% m u sm.', 1188, 284, 25, 1, 20),
(105, 7, 'Cheddar', 1678, 401, 25, 1, 33),
(106, 7, 'Edamer 40% m u sm.	', 1443, 345, 30, 0, 25),
(107, 7, 'Ementaler', 1615, 386, 30, 0, 30),
(108, 7, 'Gervais 60% m u sm.', 1766, 422, 20, 0, 38),
(109, 7, 'Gorgonzola', 1446, 346, 22, 0, 29),
(110, 7, 'Gauda punomasni	', 1640, 392, 26, 0, 32),
(111, 7, 'Mozzarella', 936, 224, 20, 0, 16),
(112, 7, 'Parmezan', 1720, 411, 40, 0, 27),
(113, 7, 'Roquefort', 1502, 359, 19, 2, 31),
(114, 7, 'Sir kravlji svezi /obrano mleko/	', 301, 72, 12, 1, 1),
(115, 7, 'Sir kravlji svezi /cottage/	', 397, 95, 14, 3, 3),
(116, 7, 'Sirni namaz 2O% m u sm.	', 728, 174, 20, 3, 10),
(117, 7, 'Sirni namaz 3O% m u sm.	', 916, 219, 20, 1, 15),
(118, 7, 'Sirni namaz 4O% m u sm.	', 1050, 251, 19, 1, 19),
(119, 8, 'Blitva', 50, 12, 1, 2, 0),
(120, 8, 'Celer list', 50, 12, 1, 2, 0),
(121, 8, 'Endivija', 44, 10, 1, 1, 0),
(122, 8, 'Kelj glavica', 109, 26, 3, 3, 0),
(123, 8, 'Kelj lisnati rastika', 172, 41, 4, 3, 0),
(124, 8, 'Kelj papucar-prokulica', 109, 26, 4, 4, 1),
(125, 8, 'Kiselica samo listovi', 117, 28, 2, 5, 0),
(126, 8, 'Komorac samo list', 113, 27, 2, 5, 0),
(127, 8, 'Kupus beli glavica', 91, 22, 2, 4, 0),
(128, 8, 'Kupus glavica-crveni', 84, 20, 2, 4, 0),
(129, 8, 'Kupus glavica zeleni-zimski', 91, 22, 3, 3, 0),
(130, 8, 'Kupus kineski', 50, 12, 1, 2, 0),
(131, 8, 'Maslacak-list', 188, 45, 3, 8, 1),
(132, 8, 'Matovilac repusac', 84, 20, 2, 3, 0),
(133, 8, 'Persun list', 84, 20, 4, 1, 0),
(134, 8, 'Rabarbara', 50, 12, 1, 2, 0),
(135, 8, 'Radic crveni', 50, 12, 1, 2, 0),
(136, 8, 'Radic savinjski', 67, 16, 1, 3, 0),
(137, 8, 'Radic zeleni', 99, 24, 2, 3, 1),
(138, 8, 'Salata glavatica', 50, 12, 1, 1, 0),
(139, 8, 'Salata zelena', 57, 14, 1, 2, 0),
(140, 8, 'Grasak zeleni u zrnu', 280, 67, 6, 10, 0),
(141, 8, 'Grasak zeleni smrznuti', 222, 53, 6, 8, 0),
(142, 8, 'Pasulj  mladi sirovi', 461, 110, 6, 20, 0),
(143, 8, 'Boranija zelena mlada', 76, 18, 2, 3, 0),
(144, 8, 'Boranija zuta zrela', 117, 28, 2, 5, 0),
(145, 8, 'Kukuruz slatki mladi na klipu', 531, 127, 4, 24, 3),
(146, 8, 'Krastavci svezi sirovi', 59, 14, 1, 2, 1),
(147, 8, 'Paprika zelena', 68, 16, 1, 3, 0),
(148, 8, 'Paprika zuta mesnata', 92, 22, 0, 5, 0),
(149, 8, 'Patlidzan', 67, 16, 1, 3, 0),
(150, 8, 'Paradajz', 60, 14, 1, 3, 0),
(151, 8, 'Tikvice zelene', 61, 15, 1, 2, 0),
(152, 8, 'Keleraba', 100, 24, 2, 4, 0),
(153, 8, 'Luk beli', 569, 136, 6, 28, 0),
(154, 8, 'Luk crni', 96, 24, 1, 5, 0),
(155, 8, 'Luk mladi', 146, 35, 1, 8, 0),
(156, 8, 'Praziluk celi', 117, 28, 2, 5, 0),
(157, 8, 'Cvekla', 151, 36, 2, 7, 0),
(158, 8, 'Ren', 247, 59, 5, 11, 0),
(159, 8, 'Sargarepa', 151, 36, 1, 8, 0),
(160, 8, 'Pastrnjak', 205, 49, 2, 11, 0),
(161, 8, 'Rotkvica crvena', 62, 15, 1, 3, 0),
(162, 8, 'Krompir mladi', 298, 71, 1, 18, 0),
(163, 8, 'Krompir zreli', 364, 87, 2, 21, 0),
(164, 8, 'Krompir slatki', 502, 120, 1, 29, 0),
(165, 8, 'Sampinjoni ', 68, 16, 2, 1, 0),
(166, 8, 'Vrganj', 105, 25, 3, 2, 1),
(167, 8, 'Krastavci kiseli', 84, 20, 2, 3, 0),
(168, 8, 'Kupus kiseli', 50, 12, 2, 1, 0),
(169, 8, 'Grasak zeleni u zrnu', 280, 67, 6, 11, 0),
(170, 8, 'Grasak zeleni smrznuti', 222, 53, 6, 7, 0),
(171, 9, 'Deverika', 432, 103, 15, 1, 4),
(172, 9, 'Grgec', 315, 75, 15, 0, 2),
(173, 9, 'Jegulja', 993, 237, 14, 1, 20),
(174, 9, 'Jesetra', 431, 103, 13, 0, 6),
(175, 9, 'Klen', 331, 79, 13, 0, 3),
(176, 9, 'Krkusa', 309, 74, 15, 1, 1),
(177, 9, 'Linjak', 298, 71, 15, 0, 1),
(178, 9, 'Losos', 908, 217, 22, 0, 13),
(179, 9, 'Mrena', 350, 84, 14, 0, 3),
(180, 9, 'Jezerski losos ', 648, 155, 19, 0, 8),
(181, 9, 'Pastrmka kalifornijska', 816, 195, 22, 0, 11),
(182, 9, 'Pastrmka potocna', 359, 86, 15, 0, 3),
(183, 9, 'Som', 728, 174, 15, 0, 11),
(184, 9, 'Saran', 531, 127, 16, 1, 7),
(185, 9, 'Stuka', 356, 85, 17, 0, 2),
(186, 9, 'Rak slatkovodni', 296, 71, 14, 3, 1),
(187, 9, 'Bakalar', 322, 76, 17, 0, 1),
(188, 9, 'Haringa', 970, 234, 17, 0, 18),
(189, 9, 'Murina', 416, 99, 18, 1, 3),
(190, 9, 'Oslic', 296, 71, 17, 0, 0),
(191, 9, 'Skusa', 770, 184, 19, 0, 12),
(192, 9, 'Tuna', 943, 226, 21, 0, 15),
(193, 9, 'Zubatac', 323, 77, 17, 0, 1),
(194, 9, 'Hobotnica ', 305, 73, 15, 1, 1),
(195, 9, 'Lignja', 322, 77, 16, 1, 1),
(196, 9, 'Jastog', 358, 86, 16, 1, 2),
(197, 9, 'Kozica velika', 380, 91, 18, 1, 1),
(198, 9, 'Skampi', 380, 91, 17, 1, 2),
(199, 9, 'Dagnja', 276, 66, 12, 2, 2),
(200, 9, 'ostriga', 205, 49, 6, 4, 1),
(201, 9, 'Bakalar suvi', 1413, 338, 80, 1, 2),
(202, 9, 'Haringa dimljena bez kosti', 883, 211, 22, 0, 13),
(203, 9, 'Sardine konzervisani u ulju', 1382, 334, 20, 0, 28),
(204, 9, 'Tuna konzervisana u ulju', 1202, 289, 23, 0, 22),
(205, 9, 'Kavijar granulirani', 1096, 262, 27, 3, 15),
(206, 10, 'Biskvit obicni-nemasni', 1469, 351, 8, 73, 3),
(207, 10, 'Biskvit-masni', 1933, 462, 5, 73, 26),
(208, 10, 'Biskvit punjen dzemom', 1264, 302, 4, 65, 5),
(209, 10, 'Piskote', 1636, 391, 12, 70, 7),
(210, 10, 'Keksi petit beurre', 1738, 415, 6, 67, 8),
(211, 10, 'Keksi s cokoladnim prelivom', 2192, 524, 6, 67, 27),
(212, 10, 'Krekeri masni', 1946, 465, 8, 70, 17),
(213, 10, 'Matzes kreker', 1360, 325, 11, 68, 1),
(214, 10, 'Vafli', 1837, 439, 7, 73, 15),
(215, 10, 'Secer kristal', 1674, 400, 0, 0, 100),
(216, 10, 'Secer smeđi ', 1590, 380, 0, 95, 0),
(217, 10, 'Secer u prahu', 1590, 380, 0, 95, 0),
(218, 10, 'Med vrcani', 1339, 320, 1, 80, 0),
(219, 10, 'Bomboni tvrdi obicni', 1615, 386, 0, 97, 0),
(220, 10, 'Bomboni vocni', 1222, 292, 0, 73, 0),
(221, 10, 'Gumeni bomboni', 1448, 346, 1, 87, 0),
(222, 10, 'Guma za zvakanje', 1172, 280, 0, 70, 0),
(223, 10, 'Manchmallow', 1372, 328, 2, 80, 0),
(224, 10, 'Pepermint bomboni', 1640, 392, 0, 98, 0),
(225, 10, 'Przeni badem u seceru', 1921, 459, 8, 65, 18),
(226, 10, 'Cokolada mlecna', 2209, 528, 9, 52, 32),
(227, 10, 'Cokolada', 2142, 512, 5, 51, 32),
(228, 10, 'Cokolada s lesnicima', 2552, 610, 12, 28, 50),
(229, 10, 'Cokoladni namaz-nutela', 2234, 534, 7, 59, 30),
(230, 10, 'Cokoladni bomboni', 2050, 490, 5, 68, 22),
(231, 10, 'Kakao instant', 1569, 375, 5, 82, 3),
(232, 10, 'Puding u prahu', 1590, 380, 0, 95, 0),
(233, 10, 'Dzem', 1091, 261, 1, 69, 0),
(234, 10, 'Marmelada mesana', 1091, 261, 0, 69, 0),
(235, 10, 'Vocni zele', 1084, 259, 6, 62, 0),
(236, 11, 'Grejpfrut', 117, 28, 0, 7, 0),
(237, 11, 'Limun', 50, 12, 0, 7, 0),
(238, 11, 'Mandarina', 142, 34, 1, 8, 0),
(239, 11, 'Pomorandza', 146, 35, 1, 8, 0),
(240, 11, 'Borovnice', 234, 56, 1, 14, 1),
(241, 11, 'Brusnice', 63, 15, 1, 4, 0),
(242, 11, 'Dud', 151, 36, 1, 8, 0),
(243, 11, 'Grozdje belo', 251, 60, 1, 15, 0),
(244, 11, 'Grozdje crno', 224, 54, 1, 13, 0),
(245, 11, 'Jagode', 109, 26, 1, 6, 0),
(246, 11, 'Kupine', 121, 29, 1, 6, 0),
(247, 11, 'Maline', 105, 25, 1, 5, 0),
(248, 11, 'Ribizla crna', 117, 28, 1, 7, 0),
(249, 11, 'Ribizla bela', 109, 26, 1, 6, 0),
(250, 11, 'Ribizla crvena', 88, 21, 1, 4, 0),
(251, 11, 'Dunja', 105, 25, 1, 6, 0),
(252, 11, 'Jabuka', 167, 40, 0, 10, 0),
(253, 11, 'Kruska', 121, 29, 0, 8, 0),
(254, 11, 'Breskva', 155, 37, 1, 9, 0),
(255, 11, 'Nektarina', 209, 50, 1, 12, 0),
(256, 11, 'Sljiva', 159, 38, 1, 10, 0),
(257, 11, 'Tresnje', 201, 48, 1, 12, 0),
(258, 11, 'Visnje', 173, 41, 1, 10, 0),
(259, 11, 'Ananas', 192, 46, 1, 11, 0),
(260, 11, 'Avokado', 527, 126, 2, 7, 10),
(261, 11, 'Banane', 331, 79, 1, 19, 0),
(262, 11, 'Kivi', 167, 40, 1, 9, 0),
(263, 11, 'Mango', 247, 59, 1, 15, 0),
(264, 11, 'Lubenica', 88, 21, 1, 5, 0),
(265, 11, 'Smokve zelene', 172, 41, 1, 9, 0),
(266, 11, 'Nar', 314, 75, 1, 17, 0),
(267, 11, 'Masline zelene', 431, 103, 1, 0, 11),
(268, 11, 'Smokve susene', 891, 213, 4, 53, 0),
(269, 11, 'Sljive suve', 674, 161, 3, 40, 0),
(270, 11, 'Kikiriki sirovi neslani', 2385, 570, 24, 9, 49),
(271, 11, 'Kikiriki prženi slani', 2385, 570, 24, 9, 49),
(272, 11, 'Badem oljusteni suvi', 2364, 565, 17, 4, 54),
(273, 11, 'Kesten', 711, 170, 2, 36, 3),
(274, 11, 'Kokosov orah', 1448, 351, 3, 4, 36),
(275, 11, 'Lesnik sirovi', 1590, 380, 8, 7, 36),
(276, 11, 'Lesnik suvi', 2933, 701, 14, 6, 69),
(277, 11, 'Orah sirovi', 2196, 529, 10, 5, 51),
(278, 11, 'Orah suvi', 2715, 649, 15, 9, 61),
(279, 11, 'Kompot od ananasa', 322, 77, 0, 20, 0),
(280, 11, 'Kompot od bresaka', 364, 87, 1, 23, 0),
(281, 11, 'Kompot od krusaka', 322, 77, 1, 20, 0),
(282, 11, 'Kompot od sljiva', 283, 70, 1, 17, 0),
(283, 11, 'Sok od borovnice', 188, 45, 0, 11, 0),
(284, 11, 'Sok od breskve', 201, 48, 0, 11, 0),
(285, 11, 'Sok od jabuke', 197, 47, 0, 12, 0),
(286, 11, 'Sok od kruske', 209, 50, 0, 12, 0),
(287, 11, 'Sok od limuna', 142, 34, 0, 8, 0),
(288, 11, 'Sok od pomorandze', 188, 45, 1, 10, 0),
(289, 12, 'Bob suvi', 1274, 304, 27, 46, 2),
(290, 12, 'Pasulj beli', 1134, 271, 21, 45, 2),
(291, 12, 'Pasulj sareni ', 1142, 273, 19, 50, 1),
(292, 12, 'Grasak suvi', 1297, 310, 22, 56, 1),
(293, 12, 'Soja u zrnu', 1787, 427, 38, 26, 19),
(294, 12, 'Sojino brašno punomasno', 1925, 460, 37, 24, 24),
(295, 12, 'Heljdino brašno', 1148, 346, 10, 72, 2),
(296, 12, 'Heljdina kasa', 1148, 346, 8, 74, 2),
(297, 12, 'Ječmena kasa', 1506, 360, 8, 83, 2),
(298, 12, 'Kukuruzno brašno ', 1539, 368, 8, 77, 3),
(299, 12, 'Kukuruzne pahuljice', 1539, 368, 9, 85, 2),
(300, 12, 'Kokice', 1573, 376, 13, 72, 4),
(301, 12, 'Pšenično brasno', 1331, 318, 13, 66, 2),
(302, 12, 'Psenica u zrnu', 1389, 332, 12, 70, 3),
(303, 12, 'Razeno brasno ', 1402, 335, 8, 76, 2),
(304, 12, 'Pirinac nepolirani', 1397, 334, 7, 72, 2),
(305, 12, 'Pirinac polirani ili brasno', 1460, 349, 7, 78, 1),
(306, 12, 'Ovas u zrnu', 1288, 308, 7, 55, 6),
(307, 12, 'Ovsene pahuljice', 1558, 372, 8, 73, 7),
(308, 12, 'Makaroni', 1464, 350, 12, 71, 2),
(309, 12, 'Spageti', 1582, 378, 13, 84, 1),
(310, 12, 'Hleb psenicni beli', 979, 234, 8, 46, 2),
(311, 12, 'Hleb mesani-psenica+raz', 962, 230, 14, 39, 2),
(312, 12, 'Hleb psenicni beli mlecni', 1000, 239, 9, 44, 3),
(313, 12, 'Hleb psenicni crni', 929, 222, 8, 43, 2),
(314, 12, 'Hleb kukuruzni zuti domaci', 920, 220, 5, 31, 9),
(315, 12, 'Tost belo brasno', 1243, 297, 10, 65, 2);

-- --------------------------------------------------------

--
-- Table structure for table `userdiary`
--

CREATE TABLE `userdiary` (
  `id` int(10) NOT NULL,
  `proteini` smallint(4) DEFAULT NULL,
  `uh` smallint(4) DEFAULT NULL,
  `masti` smallint(4) DEFAULT NULL,
  `kalorije` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usermeals`
--

CREATE TABLE `usermeals` (
  `id` int(10) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `food_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kj` double DEFAULT NULL,
  `kcal` double DEFAULT NULL,
  `protein` double DEFAULT NULL,
  `uh` double DEFAULT NULL,
  `masti` double DEFAULT NULL,
  `kolicina` double DEFAULT NULL,
  `obrok` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vremeunosa` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usermeals`
--

INSERT INTO `usermeals` (`id`, `userid`, `food_name`, `kj`, `kcal`, `protein`, `uh`, `masti`, `kolicina`, `obrok`, `vremeunosa`) VALUES
(1, 9, 'Jaje kokosje u prahu celo', 2402, 570, 46, 0, 42, 100, 'Dorucak', '2018-03-07 19:16:35'),
(2, 9, 'Guska srednje masna', 828, 198, 21, 0, 12, 100, 'Rucak', '2018-03-09 00:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imeprezime` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pol` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `godine` tinyint(4) DEFAULT NULL,
  `visina` smallint(3) DEFAULT NULL,
  `tezina` smallint(3) DEFAULT NULL,
  `aktivnost` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smanjikilazu` smallint(1) DEFAULT NULL,
  `pdu` mediumint(7) DEFAULT NULL,
  `slika` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `imeprezime`, `pol`, `godine`, `visina`, `tezina`, `aktivnost`, `smanjikilazu`, `pdu`, `slika`) VALUES
(6, 'das', 'das', 'das', 'Zensko', 1, 1, 11, NULL, NULL, 1446, NULL),
(5, 'zeljkomax', 'pw', 'Zeljko Maksimovic', 'Musko', 22, 172, 72, NULL, NULL, 3305, NULL),
(7, 'a', 'a', 'a', 'Musko', 11, 11, 11, NULL, 1, 2000, NULL),
(8, 'veljko', 'a', 'aa', 'Musko', 3, 32, 2, NULL, NULL, 652, NULL),
(9, 'e', 'e', 'Zeljko Maksimovic', 'Musko', 23, 172, 72, 'Izrazito aktivni (Trening visokim intenzitetom 6-7 puta nedeljno)', 0, 3632, '9.jpg'),
(11, 'd', 'dd', 'Marko Markovic', 'Musko', 23, 190, 85, 'Neaktivni (Vecinu dana provodite sedeci)', 0, 2953, '11.JPG'),
(12, 'dd', 'dasd', 'as', 'Zensko', 12, 0, 123, 'Neaktivni (Vecinu dana provodite sedeci)', 1, 2048, NULL),
(13, 'q', 'q', 'Veljko Maksimovic', 'Musko', 20, 180, 80, 'Umereno aktivni (Vezbanje 3-5 puta nedeljno umerenim intenzitetom)', 0, 3583, '13.png');

-- --------------------------------------------------------

--
-- Table structure for table `userweightdiary`
--

CREATE TABLE `userweightdiary` (
  `id` int(10) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `tezina` smallint(3) DEFAULT NULL,
  `vremeunosa` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userweightdiary`
--

INSERT INTO `userweightdiary` (`id`, `userid`, `tezina`, `vremeunosa`) VALUES
(1, 9, 70, '2018-03-05 17:40:12'),
(2, 9, 74, '2018-03-05 17:40:42'),
(3, 9, 75, '2018-03-05 17:40:54'),
(4, 9, 73, '2018-03-05 18:13:24'),
(5, 9, 71, '2018-03-05 18:13:33'),
(6, 9, 72, '2018-03-05 18:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

CREATE TABLE `workout` (
  `id` int(5) NOT NULL,
  `exercise_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exercise_category` int(3) DEFAULT NULL,
  `sets` int(3) DEFAULT NULL,
  `reps` int(3) DEFAULT NULL,
  `muscle_group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `workout`
--

INSERT INTO `workout` (`id`, `exercise_name`, `exercise_category`, `sets`, `reps`, `muscle_group`, `week`) VALUES
(1, 'Barbell Bench Press', 1, 4, 12, 'Grudi', 1),
(2, 'Decline Barbell Bench Press', 1, 4, 15, 'Grudi', 1),
(3, 'Incline Dumbbell Press', 1, 4, 12, 'Grudi', 1),
(4, 'Pushups', 1, 4, 30, 'Grudi', 1),
(6, 'Standing Palms-In Dumbbell Press', 1, 4, 12, 'Ramena', 1),
(7, 'One-Arm Kettlebell Push Press', 1, 4, 12, 'Ramena', 1),
(8, 'Reverse Flyes', 1, 4, 12, 'Ramena', 1),
(9, 'One-Arm Side Laterals', 1, 4, 12, 'Ramena', 1),
(10, 'Seated Cable Rows', 1, 4, 12, 'Ledja', 1),
(11, 'Bent Over Barbell Row', 1, 4, 12, 'Ledja', 1),
(12, 'One-Arm Dumbbell Row', 1, 4, 12, 'Ledja', 1),
(13, 'Pullups', 1, 4, 12, 'Ledja', 1),
(14, 'Hammer Curls', 1, 4, 10, 'Biceps', 1),
(15, 'Spider Curl', 1, 4, 12, 'Biceps', 1),
(16, 'Flexor Incline Dumbbell Curls', 1, 4, 10, 'Biceps', 1),
(17, 'Reverse Barbell Preacher Curls', 1, 4, 12, 'Biceps', 1),
(18, 'Single-Leg Press', 1, 4, 10, 'Noge', 1),
(19, 'Rope Jumping', 1, 4, 30, 'Noge', 1),
(20, 'Lying Leg Curls', 1, 4, 10, 'Noge', 1),
(21, 'Standing Calf Raises', 1, 4, 12, 'Noge', 1),
(22, 'Dips - Triceps Version', 1, 4, 15, 'Triceps', 1),
(23, 'Triceps Pushdown - V-Bar Attachment', 1, 4, 12, 'Triceps', 1),
(24, 'EZ-Bar Skullcrusher', 1, 4, 12, 'Triceps', 1),
(25, 'Standing Dumbbell Triceps Extension', 1, 4, 10, 'Triceps', 1),
(26, 'Decline Reverse Crunch', 1, 4, 30, 'Trbusnjaci', 1),
(27, 'Cross-Body Crunch', 1, 4, 20, 'Trbusnjaci', 1),
(28, 'One-Arm High-Pulley Cable Side Bends', 1, 4, 15, 'Trbusnjaci', 1),
(29, 'Elbow to Knee', 1, 4, 20, 'Trbusnjaci', 1),
(30, 'Dumbbell Bench Press', 1, 4, 10, 'Grudi', 2),
(31, 'Dumbbell Flyes', 1, 4, 10, 'Grudi', 2),
(32, 'Dumbbell Bench Press with Neutral Grip', 1, 4, 10, 'Grudi', 2),
(33, 'Dips - Chest Version', 1, 4, 15, 'Grudi', 2),
(34, 'Incline Hammer Curls', 1, 4, 10, 'Biceps', 2),
(35, 'Wide-Grip Standing Barbell Curl', 1, 4, 10, 'Biceps', 2),
(36, 'EZ-Bar Curl', 1, 4, 10, 'Biceps', 2),
(37, 'Overhead Cable Curl', 1, 4, 12, 'Biceps', 2),
(38, 'T-Bar Row with Handle', 1, 4, 10, 'Ledja', 2),
(39, 'Reverse Grip Bent-Over Rows', 1, 4, 10, 'Ledja', 2),
(40, 'Weighted Pull Ups', 1, 4, 10, 'Ledja', 2),
(41, 'Leverage Shrug', 1, 4, 12, 'Ledja', 2),
(42, 'Decline EZ Bar Triceps Extension', 1, 4, 10, 'Triceps', 2),
(43, 'Close-Grip Barbell Bench Press', 1, 4, 10, 'Triceps', 2),
(44, 'Reverse Grip Triceps Pushdown', 1, 4, 10, 'Triceps', 2),
(45, 'Reverse Grip Triceps Pushdown', 1, 4, 12, 'Triceps', 2),
(46, 'Barbell Squat', 1, 4, 10, 'Noge', 2),
(47, 'Dumbbell Lunges', 1, 4, 10, 'Noge', 2),
(48, 'Lying Leg Curls', 1, 4, 10, 'Noge', 2),
(49, 'Standing Dumbbell Calf Raise', 1, 4, 10, 'Noge', 2),
(50, 'Single-Arm Linear Jammer', 1, 4, 10, 'Ramena', 2),
(51, 'Side Laterals to Front Raise', 1, 4, 10, 'Ramena', 2),
(52, 'Seated Dumbbell Press', 1, 4, 10, 'Ramena', 2),
(53, 'Reverse Flyes', 1, 4, 10, 'Ramena', 2),
(55, 'Bottoms Up', 1, 4, 25, 'Trbusnjaci', 2),
(56, 'Dumbbell V-Sit Cross Jab', 1, 4, 25, 'Trbusnjaci', 2),
(57, 'Decline Reverse Crunch', 1, 4, 25, 'Trbusnjaci', 2),
(58, 'Cocoons', 1, 4, 25, 'Trbusnjaci', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodcategory`
--
ALTER TABLE `foodcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutritiondata`
--
ALTER TABLE `nutritiondata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdiary`
--
ALTER TABLE `userdiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermeals`
--
ALTER TABLE `usermeals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userweightdiary`
--
ALTER TABLE `userweightdiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workout`
--
ALTER TABLE `workout`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foodcategory`
--
ALTER TABLE `foodcategory`
  MODIFY `id` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nutritiondata`
--
ALTER TABLE `nutritiondata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `userdiary`
--
ALTER TABLE `userdiary`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usermeals`
--
ALTER TABLE `usermeals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userweightdiary`
--
ALTER TABLE `userweightdiary`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `workout`
--
ALTER TABLE `workout`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
