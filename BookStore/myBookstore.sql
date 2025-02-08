-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 13, 2022 at 02:07 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `AdminId` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`AdminId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`fname`, `lname`, `username`, `password`, `AdminId`) VALUES
('Tshepiso', 'Mashaba', 'Tmashaba', 'Mashaba38', 1),
('Sipho', 'Dlamini', 'Sjay', 'Dlamzozo98', 2),
('ephraim', 'Nobela', 'Nobelabebe', 'Mistic46', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblaorder`
--

DROP TABLE IF EXISTS `tblaorder`;
CREATE TABLE IF NOT EXISTS `tblaorder` (
  `OrderNum` int(50) NOT NULL,
  `item` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `storeId` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`storeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE IF NOT EXISTS `tblbooks` (
  `name` varchar(50) NOT NULL,
  `StoreId` int(50) NOT NULL AUTO_INCREMENT,
  `price` int(50) NOT NULL,
  `edition` varchar(50) NOT NULL,
  PRIMARY KEY (`StoreId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`name`, `StoreId`, `price`, `edition`) VALUES
('Encyclopedia', 1, 15000, 'vol1'),
('Oxford Dictionary', 2, 69, 'vol1'),
('Distro(reading)', 3, 500, 'vol3');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `StudentNo` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`StudentNo`, `fname`, `lname`, `email`, `username`, `password`, `id`) VALUES
(177456, 'Koketso', 'Megalo', 'Megalok@gmail.com', 'Kmmmod', 'Maponya18', 1),
(156763, 'Tshepo', 'Mayga', 'MayagaT@gmail.com', 'Tmmgood', 'Mistabo17', 2),
(298767, 'Thabang', 'Thabong', 'ThabongT@gmail.com', 'Tttkade', 'Kvbash45', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
