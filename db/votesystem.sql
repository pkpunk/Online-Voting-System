-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 06:59 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'PK', '$2y$10$hIFSvhhofdxhntnG7KflU.T81IYRSjQQ6AncAdFBOHKw3DGtO0ANa', 'Pradip', 'Thagunna', 'IMG_6126.JPG', '2022-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'Pradip ', 'Thagunna', 'IMG_6126.JPG', 'BCA graduate Student\r\nSocial Worker'),
(19, 8, 'Prakash', 'Bohara', 'avatar2.png', 'Social Worker'),
(20, 9, 'Harish', 'Gupta', 'avatar.png', 'Politics'),
(21, 9, 'Sita', 'sharma', 'user3-128x128.jpg', 'Politics'),
(22, 10, 'Rameshwor ', 'Yadav', 'avatar.png', 'Congress'),
(23, 10, 'Jhilke', 'Sharma', 'avatar2.png', 'Yemale');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`, `start_date`, `end_date`) VALUES
(8, 'President', 1, 1, '2022-08-29 09:00:00', '2022-08-29 10:30:00'),
(9, 'Vice President', 1, 2, '2022-08-27 14:00:00', '2022-08-28 16:00:00'),
(10, 'Chairman', 1, 3, '2022-08-27 07:00:00', '2022-08-28 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`, `phone`) VALUES
(2, 'Ajlr2tcyfUQPoO8', '$2y$10$hdcZFNID1qAONYssXh7eGuCRORMYpfTU2GBPiBoHDC5t6hNxTHPQm', 'ram', 'Silwal', 'user2-160x160.jpg', 9878900087),
(3, 'pnmb6tZs59qFzUw', '$2y$10$Dhk/BgnkXCHqIneqaUJ5Ne3SJSU61msW4yxBTxYsyqice91YsuTEi', 'rita', 'Silwal', 'user5-128x128.jpg', 9876765433),
(4, 'bOnjSg2B8AifYRs', '$2y$10$8YGX2QucVFo7DQza0yZlj.tueEe1nDCbCLULjr9GmYHypeuOqmASy', 'Hark', 'Rai', 'user2-160x160.jpg', 9876543212),
(5, 'FNPYQU76CzyuvVM', '$2y$10$FbZEIYwVXnH.4xGUCytN.O5Zp.qnQzO6jbMyJz11QCz5JGLBHsQtO', 'Pradeep', 'Thagunna', 'IMG_6126.JPG', 9865897545),
(6, 'p8n4DaJAmwMSLkx', '$2y$10$OH4YjjAdcAJczGjD2YhXledIpIA2vUHBJOrJL9DeL7CaxBGsrLnQG', 'prakash', 'bohora', 'avatar2.png', 23456789),
(7, 'i18xh37fj4X9uwm', '$2y$10$ufQn8p7M3LcvpkJQl7mmXuLtsfsTTI2kv6l6XFUMPZ9s/Cfb0gNGi', 'Ram', 'Sen', 'user2-160x160.jpg', 9876543212),
(8, 'nRJurGVPcUmdIh9', '$2y$10$zYQFPXh3WovfMBSfQ3T0k.bcerOVf/1w1PoZN0PL7JgmnKt4xwxA2', 'ak', 'magic', 'GENJ6662.JPG', 234688777777);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 2, 18, 8),
(82, 3, 18, 8),
(83, 3, 21, 9),
(84, 4, 18, 8),
(85, 4, 21, 9),
(86, 4, 23, 10),
(87, 5, 18, 8),
(88, 5, 20, 9),
(89, 5, 22, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
