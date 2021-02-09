-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 05:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `zipcode` int(11) NOT NULL,
  `cityname` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`zipcode`, `cityname`, `state`) VALUES
(11096, 'Noida', ' Uttar Pradesh '),
(136118, 'Kurukshetra', 'Haryana'),
(403001, 'Panji', ' Goa '),
(422003, 'Nashik', 'Maharashtra'),
(425412, 'Nandurbar', 'Maharashtra'),
(530068, 'Bangalore', 'Karnataka'),
(556644, 'Lucknow', 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `description` varchar(800) NOT NULL,
  `duration` time DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `description`, `duration`, `language`, `rating`, `title`, `type`) VALUES
(1, 'This is Super hero Movie', '02:34:56', 'English', 8.9, 'Batman', 'Action'),
(2, 'The Devil Made Me Do It reveals a chilling story of terror, murder and unknown evil that shocked even experienced real-life paranormal investigators Ed and Lorraine Warren.', '01:46:56', 'English', 8.8, 'The Conjuring: The Devil Made Me Do It', 'Horror'),
(3, 'Set in 1984 during the Cold War, the film follows Diana and her past love Steve Trevor as they face off against Max Lord and Cheetah. Discussion of a sequel began shortly after the release of the first film in June 2017 and the decision to proceed was confirmed the following month.', '01:46:56', 'Hindi', 9.3, 'Wonder Woman 1984', 'Action'),
(4, 'This is based on Magical School', '02:34:56', 'English', 9.2, 'Harry Potter', 'Fiction , Magic'),
(5, 'This is based on a Gangster', '02:18:56', 'Hindi', 9.3, 'KGF', 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `movieshow`
--

CREATE TABLE `movieshow` (
  `showid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `starttime` time DEFAULT NULL,
  `movieid` int(11) DEFAULT NULL,
  `screenid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movieshow`
--

INSERT INTO `movieshow` (`showid`, `date`, `price`, `starttime`, `movieid`, `screenid`) VALUES
(11, '2021-02-25', 99.5, '02:34:56', 1, 1),
(12, '2021-02-01', NULL, '02:34:56', 1, 1),
(13, '2021-02-23', NULL, '12:00:00', 1, 2),
(14, '2021-02-23', NULL, '06:00:00', 1, 3),
(15, '2021-02-23', NULL, '05:00:00', 2, 5),
(16, '2021-02-23', 120.6, '04:54:00', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `screenid` int(11) NOT NULL,
  `screenname` varchar(255) DEFAULT NULL,
  `totalnoofseats` int(11) DEFAULT NULL,
  `theatreid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen`
--

INSERT INTO `screen` (`screenid`, `screenname`, `totalnoofseats`, `theatreid`) VALUES
(1, 's1', 50, 1),
(2, 'Screen1', 50, 6),
(3, 'Screen2', 50, 6),
(4, 'Screen3', 70, 6),
(5, 'Screen4', 60, 6),
(6, 'Screen5', 50, 6),
(7, 'Screen6', 80, 6),
(8, 'Screen7', 50, 6),
(9, 'Screen8', 80, 6);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatid` int(11) NOT NULL,
  `isbooked` bit(1) DEFAULT NULL,
  `seatnumber` int(11) DEFAULT NULL,
  `showid` int(11) DEFAULT NULL,
  `screenid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seatid`, `isbooked`, `seatnumber`, `showid`, `screenid`) VALUES
(1, b'1', 11, 11, 1),
(2, b'0', 1, 12, 1),
(3, b'0', 2, 12, 1),
(4, b'0', 3, 12, 1),
(5, b'0', 4, 12, 1),
(6, b'0', 5, 12, 1),
(7, b'0', 6, 12, 1),
(8, b'0', 7, 12, 1),
(9, b'0', 8, 12, 1),
(10, b'0', 9, 12, 1),
(11, b'0', 10, 12, 1),
(12, b'0', 11, 12, 1),
(13, b'0', 12, 12, 1),
(14, b'0', 13, 12, 1),
(15, b'0', 14, 12, 1),
(16, b'0', 15, 12, 1),
(17, b'0', 16, 12, 1),
(18, b'0', 17, 12, 1),
(19, b'0', 18, 12, 1),
(20, b'0', 19, 12, 1),
(21, b'0', 20, 12, 1),
(22, b'0', 21, 12, 1),
(23, b'0', 22, 12, 1),
(24, b'0', 23, 12, 1),
(25, b'0', 24, 12, 1),
(26, b'0', 25, 12, 1),
(27, b'0', 26, 12, 1),
(28, b'0', 27, 12, 1),
(29, b'0', 28, 12, 1),
(30, b'0', 29, 12, 1),
(31, b'0', 30, 12, 1),
(32, b'0', 31, 12, 1),
(33, b'0', 32, 12, 1),
(34, b'0', 33, 12, 1),
(35, b'0', 34, 12, 1),
(36, b'0', 35, 12, 1),
(37, b'0', 36, 12, 1),
(38, b'0', 37, 12, 1),
(39, b'0', 38, 12, 1),
(40, b'0', 39, 12, 1),
(41, b'0', 40, 12, 1),
(42, b'0', 41, 12, 1),
(43, b'0', 42, 12, 1),
(44, b'0', 43, 12, 1),
(45, b'0', 44, 12, 1),
(46, b'0', 45, 12, 1),
(47, b'0', 46, 12, 1),
(48, b'0', 47, 12, 1),
(49, b'0', 48, 12, 1),
(50, b'0', 49, 12, 1),
(51, b'0', 50, 12, 1),
(52, b'0', 1, 13, 2),
(53, b'0', 2, 13, 2),
(54, b'0', 3, 13, 2),
(55, b'0', 4, 13, 2),
(56, b'0', 5, 13, 2),
(57, b'0', 6, 13, 2),
(58, b'0', 7, 13, 2),
(59, b'0', 8, 13, 2),
(60, b'0', 9, 13, 2),
(61, b'0', 10, 13, 2),
(62, b'0', 11, 13, 2),
(63, b'0', 12, 13, 2),
(64, b'0', 13, 13, 2),
(65, b'0', 14, 13, 2),
(66, b'1', 15, 13, 2),
(67, b'0', 16, 13, 2),
(68, b'0', 17, 13, 2),
(69, b'0', 18, 13, 2),
(70, b'0', 19, 13, 2),
(71, b'0', 20, 13, 2),
(72, b'0', 21, 13, 2),
(73, b'0', 22, 13, 2),
(74, b'0', 23, 13, 2),
(75, b'0', 24, 13, 2),
(76, b'0', 25, 13, 2),
(77, b'0', 26, 13, 2),
(78, b'0', 27, 13, 2),
(79, b'0', 28, 13, 2),
(80, b'0', 29, 13, 2),
(81, b'0', 30, 13, 2),
(82, b'0', 31, 13, 2),
(83, b'1', 32, 13, 2),
(84, b'0', 33, 13, 2),
(85, b'0', 34, 13, 2),
(86, b'1', 35, 13, 2),
(87, b'1', 36, 13, 2),
(88, b'1', 37, 13, 2),
(89, b'0', 38, 13, 2),
(90, b'0', 39, 13, 2),
(91, b'0', 40, 13, 2),
(92, b'0', 41, 13, 2),
(93, b'0', 42, 13, 2),
(94, b'0', 43, 13, 2),
(95, b'0', 44, 13, 2),
(96, b'0', 45, 13, 2),
(97, b'0', 46, 13, 2),
(98, b'0', 47, 13, 2),
(99, b'0', 48, 13, 2),
(100, b'0', 49, 13, 2),
(101, b'0', 50, 13, 2),
(102, b'0', 1, 14, 3),
(103, b'0', 2, 14, 3),
(104, b'0', 3, 14, 3),
(105, b'0', 4, 14, 3),
(106, b'0', 5, 14, 3),
(107, b'0', 6, 14, 3),
(108, b'0', 7, 14, 3),
(109, b'0', 8, 14, 3),
(110, b'0', 9, 14, 3),
(111, b'0', 10, 14, 3),
(112, b'0', 11, 14, 3),
(113, b'0', 12, 14, 3),
(114, b'0', 13, 14, 3),
(115, b'0', 14, 14, 3),
(116, b'0', 15, 14, 3),
(117, b'0', 16, 14, 3),
(118, b'0', 17, 14, 3),
(119, b'0', 18, 14, 3),
(120, b'0', 19, 14, 3),
(121, b'0', 20, 14, 3),
(122, b'0', 21, 14, 3),
(123, b'0', 22, 14, 3),
(124, b'0', 23, 14, 3),
(125, b'0', 24, 14, 3),
(126, b'0', 25, 14, 3),
(127, b'0', 26, 14, 3),
(128, b'0', 27, 14, 3),
(129, b'0', 28, 14, 3),
(130, b'0', 29, 14, 3),
(131, b'0', 30, 14, 3),
(132, b'0', 31, 14, 3),
(133, b'0', 32, 14, 3),
(134, b'0', 33, 14, 3),
(135, b'0', 34, 14, 3),
(136, b'0', 35, 14, 3),
(137, b'0', 36, 14, 3),
(138, b'0', 37, 14, 3),
(139, b'0', 38, 14, 3),
(140, b'0', 39, 14, 3),
(141, b'0', 40, 14, 3),
(142, b'0', 41, 14, 3),
(143, b'0', 42, 14, 3),
(144, b'0', 43, 14, 3),
(145, b'0', 44, 14, 3),
(146, b'0', 45, 14, 3),
(147, b'0', 46, 14, 3),
(148, b'0', 47, 14, 3),
(149, b'0', 48, 14, 3),
(150, b'0', 49, 14, 3),
(151, b'0', 50, 14, 3),
(152, b'0', 1, 15, 5),
(153, b'0', 2, 15, 5),
(154, b'0', 3, 15, 5),
(155, b'0', 4, 15, 5),
(156, b'0', 5, 15, 5),
(157, b'0', 6, 15, 5),
(158, b'0', 7, 15, 5),
(159, b'0', 8, 15, 5),
(160, b'0', 9, 15, 5),
(161, b'0', 10, 15, 5),
(162, b'0', 11, 15, 5),
(163, b'0', 12, 15, 5),
(164, b'0', 13, 15, 5),
(165, b'0', 14, 15, 5),
(166, b'0', 15, 15, 5),
(167, b'0', 16, 15, 5),
(168, b'0', 17, 15, 5),
(169, b'0', 18, 15, 5),
(170, b'0', 19, 15, 5),
(171, b'0', 20, 15, 5),
(172, b'0', 21, 15, 5),
(173, b'0', 22, 15, 5),
(174, b'0', 23, 15, 5),
(175, b'0', 24, 15, 5),
(176, b'0', 25, 15, 5),
(177, b'0', 26, 15, 5),
(178, b'0', 27, 15, 5),
(179, b'0', 28, 15, 5),
(180, b'0', 29, 15, 5),
(181, b'0', 30, 15, 5),
(182, b'0', 31, 15, 5),
(183, b'0', 32, 15, 5),
(184, b'0', 33, 15, 5),
(185, b'0', 34, 15, 5),
(186, b'0', 35, 15, 5),
(187, b'0', 36, 15, 5),
(188, b'0', 37, 15, 5),
(189, b'0', 38, 15, 5),
(190, b'0', 39, 15, 5),
(191, b'0', 40, 15, 5),
(192, b'0', 41, 15, 5),
(193, b'0', 42, 15, 5),
(194, b'0', 43, 15, 5),
(195, b'0', 44, 15, 5),
(196, b'0', 45, 15, 5),
(197, b'0', 46, 15, 5),
(198, b'0', 47, 15, 5),
(199, b'0', 48, 15, 5),
(200, b'0', 49, 15, 5),
(201, b'0', 50, 15, 5),
(202, b'0', 51, 15, 5),
(203, b'0', 52, 15, 5),
(204, b'0', 53, 15, 5),
(205, b'0', 54, 15, 5),
(206, b'0', 55, 15, 5),
(207, b'0', 56, 15, 5),
(208, b'0', 57, 15, 5),
(209, b'0', 58, 15, 5),
(210, b'0', 59, 15, 5),
(211, b'0', 60, 15, 5),
(212, b'0', 1, 16, 5),
(213, b'0', 2, 16, 5),
(214, b'0', 3, 16, 5),
(215, b'0', 4, 16, 5),
(216, b'0', 5, 16, 5),
(217, b'0', 6, 16, 5),
(218, b'0', 7, 16, 5),
(219, b'0', 8, 16, 5),
(220, b'0', 9, 16, 5),
(221, b'0', 10, 16, 5),
(222, b'0', 11, 16, 5),
(223, b'0', 12, 16, 5),
(224, b'0', 13, 16, 5),
(225, b'0', 14, 16, 5),
(226, b'0', 15, 16, 5),
(227, b'0', 16, 16, 5),
(228, b'0', 17, 16, 5),
(229, b'0', 18, 16, 5),
(230, b'0', 19, 16, 5),
(231, b'0', 20, 16, 5),
(232, b'0', 21, 16, 5),
(233, b'0', 22, 16, 5),
(234, b'0', 23, 16, 5),
(235, b'1', 24, 16, 5),
(236, b'0', 25, 16, 5),
(237, b'0', 26, 16, 5),
(238, b'0', 27, 16, 5),
(239, b'0', 28, 16, 5),
(240, b'0', 29, 16, 5),
(241, b'0', 30, 16, 5),
(242, b'0', 31, 16, 5),
(243, b'0', 32, 16, 5),
(244, b'0', 33, 16, 5),
(245, b'1', 34, 16, 5),
(246, b'0', 35, 16, 5),
(247, b'0', 36, 16, 5),
(248, b'0', 37, 16, 5),
(249, b'0', 38, 16, 5),
(250, b'0', 39, 16, 5),
(251, b'0', 40, 16, 5),
(252, b'0', 41, 16, 5),
(253, b'0', 42, 16, 5),
(254, b'0', 43, 16, 5),
(255, b'1', 44, 16, 5),
(256, b'0', 45, 16, 5),
(257, b'0', 46, 16, 5),
(258, b'0', 47, 16, 5),
(259, b'0', 48, 16, 5),
(260, b'0', 49, 16, 5),
(261, b'0', 50, 16, 5),
(262, b'0', 51, 16, 5),
(263, b'0', 52, 16, 5),
(264, b'0', 53, 16, 5),
(265, b'1', 54, 16, 5),
(266, b'0', 55, 16, 5),
(267, b'0', 56, 16, 5),
(268, b'0', 57, 16, 5),
(269, b'0', 58, 16, 5),
(270, b'0', 59, 16, 5),
(271, b'0', 60, 16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `theatreid` int(11) NOT NULL,
  `theatrename` varchar(255) DEFAULT NULL,
  `totalscreens` int(11) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`theatreid`, `theatrename`, `totalscreens`, `zipcode`) VALUES
(1, 'Inox', 3, 422003),
(2, 'Cinemax', 2, 422003),
(3, 'Inox', 4, 556644),
(4, 'Miraj', 2, 425412),
(5, 'VijayMamta', 5, 422003),
(6, 'CinePlex', 8, 422003),
(7, 'CinePlex', 8, 422003),
(8, 'CinePlex', 8, 422003);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `email`, `phone`, `username`, `password`) VALUES
(100, 'a@b.c', '9988776655', 'user1', 'user123'),
(200, 'b@b.c', '9988776655', 'user2', 'user123'),
(300, 'c@b.c', '9988776655', 'user3', 'user123'),
(301, 's@gmail.com', '6798787989', 'swap77', '75880');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`zipcode`),
  ADD UNIQUE KEY `UK_bcw53ef4lj0a72h76uo9opq40` (`cityname`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `movieshow`
--
ALTER TABLE `movieshow`
  ADD PRIMARY KEY (`showid`),
  ADD KEY `FK6egiuvh90a7ayg62ickqm8b2p` (`movieid`),
  ADD KEY `FKcxvv8e6lpwq49y5e7nm9n71dn` (`screenid`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`screenid`),
  ADD KEY `FKrm9rwdnvjc1tti5sqdkp3wg9d` (`theatreid`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatid`),
  ADD KEY `FKc9t3tj182gbea7raruvxmoky7` (`showid`),
  ADD KEY `FKp4edtobp2b04ok9i0kjuut67b` (`screenid`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`theatreid`),
  ADD KEY `FKey2kehjy3no75uu5ummckcxuu` (`zipcode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movieshow`
--
ALTER TABLE `movieshow`
  MODIFY `showid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `screen`
--
ALTER TABLE `screen`
  MODIFY `screenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `theatreid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movieshow`
--
ALTER TABLE `movieshow`
  ADD CONSTRAINT `FK6egiuvh90a7ayg62ickqm8b2p` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `FKcxvv8e6lpwq49y5e7nm9n71dn` FOREIGN KEY (`screenid`) REFERENCES `screen` (`screenid`);

--
-- Constraints for table `screen`
--
ALTER TABLE `screen`
  ADD CONSTRAINT `FKrm9rwdnvjc1tti5sqdkp3wg9d` FOREIGN KEY (`theatreid`) REFERENCES `theatre` (`theatreid`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `FKc9t3tj182gbea7raruvxmoky7` FOREIGN KEY (`showid`) REFERENCES `movieshow` (`showid`),
  ADD CONSTRAINT `FKp4edtobp2b04ok9i0kjuut67b` FOREIGN KEY (`screenid`) REFERENCES `screen` (`screenid`);

--
-- Constraints for table `theatre`
--
ALTER TABLE `theatre`
  ADD CONSTRAINT `FKey2kehjy3no75uu5ummckcxuu` FOREIGN KEY (`zipcode`) REFERENCES `city` (`zipcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
