-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2014 at 01:16 PM
-- Server version: 5.5.40-0ubuntu1
-- PHP Version: 5.5.12-2ubuntu4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trackingbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `maintable`
--

CREATE TABLE IF NOT EXISTS `maintable` (
  `x` varchar(50) NOT NULL,
  `y` varchar(50) NOT NULL,
`row_number` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rawdata`
--

CREATE TABLE IF NOT EXISTS `rawdata` (
  `crd` varchar(50) NOT NULL,
`n` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_storage`
--

CREATE TABLE IF NOT EXISTS `tmp_storage` (
  `active_row_number_from_bs` varchar(50) NOT NULL,
`order_number` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_storage`
--

INSERT INTO `tmp_storage` (`active_row_number_from_bs`, `order_number`) VALUES
('1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `maintable`
--
ALTER TABLE `maintable`
 ADD PRIMARY KEY (`row_number`), ADD UNIQUE KEY `row_number` (`row_number`);

--
-- Indexes for table `rawdata`
--
ALTER TABLE `rawdata`
 ADD PRIMARY KEY (`n`), ADD UNIQUE KEY `n` (`n`);

--
-- Indexes for table `tmp_storage`
--
ALTER TABLE `tmp_storage`
 ADD PRIMARY KEY (`order_number`), ADD UNIQUE KEY `order_number` (`order_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maintable`
--
ALTER TABLE `maintable`
MODIFY `row_number` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rawdata`
--
ALTER TABLE `rawdata`
MODIFY `n` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tmp_storage`
--
ALTER TABLE `tmp_storage`
MODIFY `order_number` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
