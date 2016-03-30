-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2015 at 03:54 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `indexer`
--

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE IF NOT EXISTS `Files` (
  `id_file` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Files`
--

INSERT INTO `Files` (`id_file`, `name`, `url`) VALUES
(6, 'hw3b', 'http://cs465.free.fr/files/hw3b.html'),
(7, 'fortest', '/Users/Serena/Sites/indexertest/fortest.htm'),
(8, 'index', '/Users/Serena/Sites/indexertest/index.html'),
(9, 'index', '/Users/Serena/Sites/indexertest/level1/index.html'),
(10, 'lists', '/Users/Serena/Sites/indexertest/lists.html');

-- --------------------------------------------------------

--
-- Table structure for table `File_word`
--

CREATE TABLE IF NOT EXISTS `File_word` (
  `id_file` int(10) unsigned NOT NULL,
  `id_word` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `File_word`
--

INSERT INTO `File_word` (`id_file`, `id_word`, `count`) VALUES
(6, 1, 1),
(6, 2, 8),
(6, 3, 1),
(6, 4, 7),
(6, 5, 1),
(6, 6, 1),
(6, 7, 1),
(6, 8, 6),
(6, 9, 1),
(6, 10, 3),
(6, 11, 1),
(6, 12, 1),
(6, 13, 1),
(6, 14, 1),
(6, 15, 1),
(6, 16, 1),
(6, 17, 2),
(6, 18, 1),
(6, 19, 1),
(6, 20, 1),
(6, 21, 1),
(6, 22, 2),
(6, 23, 1),
(6, 24, 5),
(6, 25, 1),
(6, 26, 1),
(6, 27, 1),
(6, 28, 1),
(6, 29, 1),
(6, 30, 1),
(6, 31, 1),
(6, 32, 1),
(6, 33, 1),
(6, 34, 1),
(6, 35, 1),
(6, 36, 1),
(6, 37, 1),
(6, 38, 1),
(6, 39, 1),
(6, 40, 1),
(6, 41, 1),
(6, 42, 1),
(6, 43, 1),
(6, 44, 1),
(6, 45, 1),
(6, 46, 1),
(6, 47, 1),
(6, 48, 1),
(6, 49, 1),
(6, 50, 1),
(6, 51, 1),
(6, 52, 1),
(6, 53, 1),
(6, 54, 2),
(6, 55, 2),
(6, 56, 2),
(6, 57, 4),
(6, 58, 1),
(6, 59, 3),
(6, 60, 1),
(6, 61, 1),
(6, 62, 1),
(6, 63, 1),
(6, 64, 1),
(6, 65, 1),
(6, 66, 2),
(6, 67, 1),
(6, 68, 1),
(6, 69, 1),
(6, 70, 2),
(6, 71, 1),
(6, 72, 1),
(6, 73, 1),
(6, 74, 1),
(6, 75, 1),
(6, 76, 1),
(6, 77, 1),
(6, 78, 1),
(6, 79, 8),
(6, 80, 1),
(6, 81, 1),
(6, 82, 3),
(6, 83, 1),
(6, 84, 1),
(6, 85, 1),
(6, 86, 1),
(6, 87, 1),
(6, 88, 1),
(6, 89, 1),
(6, 90, 1),
(6, 91, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 95, 1),
(6, 96, 1),
(6, 97, 2),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 15),
(6, 111, 1),
(6, 112, 2),
(6, 113, 2),
(6, 114, 7),
(6, 115, 1),
(6, 116, 1),
(6, 117, 2),
(6, 118, 1),
(6, 119, 1),
(6, 120, 1),
(6, 121, 1),
(6, 122, 1),
(6, 123, 1),
(6, 124, 1),
(6, 125, 1),
(6, 126, 1),
(6, 127, 1),
(6, 128, 1),
(6, 129, 1),
(6, 130, 3),
(6, 131, 1),
(6, 132, 1),
(6, 133, 1),
(6, 134, 1),
(6, 135, 1),
(6, 136, 3),
(6, 137, 1),
(6, 138, 1),
(7, 42, 1),
(7, 108, 1),
(8, 2, 3),
(8, 8, 1),
(8, 41, 1),
(8, 42, 2),
(8, 57, 4),
(8, 76, 3),
(8, 106, 1),
(8, 112, 1),
(8, 114, 3),
(8, 125, 3),
(8, 136, 1),
(8, 139, 1),
(8, 140, 1),
(8, 141, 1),
(8, 142, 1),
(8, 143, 1),
(8, 144, 1),
(8, 145, 1),
(8, 146, 1),
(8, 147, 1),
(8, 148, 1),
(8, 149, 6),
(8, 150, 1),
(8, 151, 1),
(8, 152, 1),
(8, 153, 1),
(8, 154, 1),
(8, 155, 1),
(8, 156, 1),
(8, 157, 1),
(8, 158, 1),
(8, 159, 1),
(8, 160, 1),
(8, 161, 1),
(8, 162, 1),
(8, 163, 1),
(8, 164, 1),
(8, 165, 1),
(8, 166, 1),
(8, 167, 1),
(8, 168, 1),
(8, 169, 1),
(8, 170, 1),
(8, 171, 1),
(8, 172, 1),
(8, 173, 1),
(8, 174, 1),
(8, 175, 1),
(8, 176, 1),
(8, 177, 1),
(8, 178, 1),
(8, 179, 1),
(8, 180, 2),
(8, 181, 1),
(8, 182, 1),
(8, 183, 1),
(8, 184, 1),
(8, 185, 1),
(9, 2, 3),
(9, 8, 1),
(9, 41, 1),
(9, 42, 2),
(9, 57, 4),
(9, 76, 3),
(9, 106, 1),
(9, 112, 1),
(9, 114, 3),
(9, 125, 3),
(9, 136, 1),
(9, 139, 1),
(9, 140, 1),
(9, 141, 1),
(9, 142, 1),
(9, 143, 1),
(9, 144, 1),
(9, 145, 1),
(9, 146, 1),
(9, 147, 1),
(9, 148, 1),
(9, 149, 6),
(9, 150, 1),
(9, 151, 1),
(9, 152, 1),
(9, 153, 1),
(9, 154, 1),
(9, 155, 1),
(9, 156, 1),
(9, 157, 1),
(9, 158, 1),
(9, 159, 1),
(9, 160, 1),
(9, 161, 1),
(9, 162, 1),
(9, 163, 1),
(9, 164, 1),
(9, 165, 1),
(9, 166, 1),
(9, 167, 1),
(9, 168, 1),
(9, 169, 1),
(9, 170, 1),
(9, 171, 1),
(9, 172, 1),
(9, 173, 1),
(9, 174, 1),
(9, 175, 1),
(9, 176, 1),
(9, 177, 1),
(9, 178, 1),
(9, 179, 1),
(9, 180, 2),
(9, 181, 1),
(9, 182, 1),
(9, 183, 1),
(9, 184, 1),
(9, 185, 1),
(10, 2, 1),
(10, 8, 1),
(10, 41, 1),
(10, 49, 1),
(10, 79, 1),
(10, 81, 1),
(10, 84, 1),
(10, 110, 1),
(10, 112, 1),
(10, 114, 4),
(10, 131, 1),
(10, 151, 1),
(10, 154, 3),
(10, 177, 1),
(10, 186, 1),
(10, 187, 1),
(10, 188, 2),
(10, 189, 1),
(10, 190, 1),
(10, 191, 1),
(10, 192, 1),
(10, 193, 1),
(10, 194, 1),
(10, 195, 1),
(10, 196, 1),
(10, 197, 1),
(10, 198, 1),
(10, 199, 1),
(10, 200, 1),
(10, 201, 2),
(10, 202, 1),
(10, 203, 1),
(10, 204, 1),
(10, 205, 1),
(10, 206, 1),
(10, 207, 1),
(10, 208, 1),
(10, 209, 1),
(10, 210, 1),
(10, 211, 1),
(10, 212, 1),
(10, 213, 1),
(10, 214, 1),
(10, 215, 1),
(10, 216, 1),
(10, 217, 1),
(10, 218, 1),
(10, 219, 1),
(10, 220, 1),
(10, 221, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Meta_info`
--

CREATE TABLE IF NOT EXISTS `Meta_info` (
  `id_file` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Meta_info`
--

INSERT INTO `Meta_info` (`id_file`, `type`, `content`) VALUES
(6, 'author', 'SGabarro'),
(6, 'description', 'This is a stupid page, but who cares'),
(6, 'generator', 'NOTEPAD'),
(6, 'keywords', 'test page, homework 3b, stupid, silly, PHP');

-- --------------------------------------------------------

--
-- Table structure for table `Words`
--

CREATE TABLE IF NOT EXISTS `Words` (
  `id_word` int(10) unsigned NOT NULL,
  `word` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Words`
--

INSERT INTO `Words` (`id_word`, `word`) VALUES
(138, '18'),
(1, '186k'),
(137, '3'),
(221, '33'),
(2, 'a'),
(139, 'about'),
(3, 'affection'),
(4, 'alicante'),
(5, 'all'),
(6, 'always'),
(7, 'an'),
(8, 'and'),
(9, 'another'),
(186, 'art'),
(10, 'as'),
(11, 'aspects'),
(140, 'assignment'),
(187, 'assignment-list'),
(12, 'author'),
(188, 'auto'),
(13, 'average'),
(189, 'back'),
(14, 'beaches'),
(15, 'beauty'),
(190, 'beef'),
(141, 'best'),
(16, 'between'),
(191, 'boiled'),
(192, 'book'),
(142, 'but'),
(17, 'by'),
(18, 'c'),
(19, 'can'),
(20, 'care'),
(193, 'center'),
(21, 'centre'),
(194, 'chicken'),
(195, 'chinese'),
(22, 'choose'),
(23, 'cities'),
(24, 'city'),
(25, 'climate'),
(26, 'communication'),
(27, 'congress'),
(196, 'cooking'),
(28, 'cuisine'),
(29, 'culture'),
(30, 'deeply-felt'),
(197, 'details'),
(31, 'do'),
(32, 'done'),
(33, 'doubt'),
(143, 'else'),
(34, 'enjoy'),
(35, 'enrapturing'),
(144, 'equipments'),
(36, 'exceptional'),
(37, 'exchange'),
(145, 'expressing'),
(38, 'fair'),
(39, 'festivities'),
(40, 'find'),
(41, 'first'),
(198, 'food'),
(42, 'for'),
(146, 'friend'),
(43, 'friendliest'),
(44, 'from'),
(45, 'fuster'),
(46, 'gabriel'),
(47, 'gardens'),
(48, 'gil-albert'),
(49, 'go'),
(199, 'harry'),
(50, 'has'),
(51, 'help'),
(147, 'hi'),
(148, 'high'),
(52, 'history'),
(200, 'hobby'),
(53, 'homework'),
(201, 'how'),
(149, 'i'),
(54, 'if'),
(150, 'important'),
(55, 'in'),
(202, 'index'),
(56, 'information'),
(151, 'introduction'),
(152, 'iphone'),
(57, 'is'),
(58, 'it'),
(59, 'its'),
(60, 'joan'),
(61, 'juan'),
(62, 'just'),
(63, 'kind'),
(203, 'kung'),
(204, 'left'),
(153, 'like'),
(64, 'links'),
(154, 'list'),
(155, 'liu'),
(65, 'live'),
(66, 'location'),
(67, 'looks'),
(68, 'love'),
(69, 'map'),
(205, 'margin-left'),
(206, 'margin-right'),
(156, 'may'),
(157, 'maybe'),
(70, 'mediterranean'),
(71, 'mildness'),
(72, 'mir&oacute'),
(73, 'monuments'),
(158, 'more'),
(74, 'mountains'),
(207, 'much'),
(75, 'museums'),
(76, 'my'),
(159, 'myself'),
(160, 'name'),
(77, 'native'),
(161, 'need'),
(78, 'nights'),
(162, 'not'),
(79, 'of'),
(80, 'offices'),
(81, 'on'),
(82, 'one'),
(83, 'or'),
(84, 'page'),
(208, 'pao'),
(163, 'paragraph'),
(85, 'parks'),
(164, 'people'),
(86, 'pervaded'),
(165, 'photo'),
(166, 'photograph'),
(209, 'physics'),
(167, 'picture'),
(168, 'pictures'),
(87, 'pierced'),
(88, 'playing'),
(210, 'potter'),
(89, 'premises'),
(90, 'privileged'),
(91, 'provides'),
(169, 'pursue'),
(170, 'quilty'),
(211, 'read'),
(212, 'reading'),
(171, 'record'),
(92, 'roams'),
(93, 'role'),
(94, 'round'),
(213, 'running'),
(95, 'said'),
(96, 'savour'),
(97, 'sea'),
(98, 'seaport'),
(99, 'second'),
(172, 'see'),
(214, 'set'),
(100, 'shopping'),
(173, 'show'),
(101, 'shown'),
(174, 'so'),
(175, 'some'),
(176, 'something'),
(102, 'special'),
(215, 'spicy'),
(103, 'sports'),
(104, 'stems'),
(105, 'streets'),
(216, 'swimming'),
(177, 'table'),
(106, 'take'),
(178, 'tell'),
(107, 'temperature'),
(108, 'test'),
(217, 'text-align'),
(109, 'that'),
(110, 'the'),
(111, 'these'),
(179, 'they'),
(180, 'think'),
(112, 'this'),
(113, 'through'),
(114, 'to'),
(218, 'too'),
(115, 'tourist'),
(116, 'trade'),
(117, 'trip'),
(118, 'two'),
(219, 'ul'),
(119, 'uninterruptedly'),
(181, 'use'),
(120, 'valencian'),
(182, 'via'),
(121, 'village'),
(122, 'virtual'),
(123, 'walk'),
(124, 'were'),
(125, 'what'),
(126, 'where'),
(127, 'wherever'),
(128, 'which'),
(220, 'width'),
(129, 'will'),
(130, 'with'),
(131, 'without'),
(132, 'words'),
(183, 'world'),
(133, 'would'),
(134, 'wrote'),
(184, 'xuanyu'),
(135, 'year'),
(136, 'you'),
(185, 'yourself');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`id_file`),
  ADD UNIQUE KEY `index_url` (`url`);

--
-- Indexes for table `File_word`
--
ALTER TABLE `File_word`
  ADD PRIMARY KEY (`id_file`,`id_word`),
  ADD KEY `fk_file_word_id_word` (`id_word`);

--
-- Indexes for table `Meta_info`
--
ALTER TABLE `Meta_info`
  ADD PRIMARY KEY (`id_file`,`type`);

--
-- Indexes for table `Words`
--
ALTER TABLE `Words`
  ADD PRIMARY KEY (`id_word`),
  ADD UNIQUE KEY `index_word` (`word`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
  MODIFY `id_file` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Words`
--
ALTER TABLE `Words`
  MODIFY `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `File_word`
--
ALTER TABLE `File_word`
  ADD CONSTRAINT `fk_file_word_id_file` FOREIGN KEY (`id_file`) REFERENCES `Files` (`id_file`),
  ADD CONSTRAINT `fk_file_word_id_word` FOREIGN KEY (`id_word`) REFERENCES `Words` (`id_word`);

--
-- Constraints for table `Meta_info`
--
ALTER TABLE `Meta_info`
  ADD CONSTRAINT `fk_meta_info_id_file` FOREIGN KEY (`id_file`) REFERENCES `Files` (`id_file`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
