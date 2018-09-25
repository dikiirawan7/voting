-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 02:17 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cie_ngoding`
--

-- --------------------------------------------------------

--
-- Table structure for table `cie_input`
--

CREATE TABLE IF NOT EXISTS `cie_input` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `hobi` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cie_input`
--

INSERT INTO `cie_input` (`no`, `nama`, `hobi`, `telepon`) VALUES
(1, 'diki', 'koding', '81231212'),
(2, 'diki', 'koding', '81231212'),
(3, 'orawa', 'koding', '+6281231'),
(4, 'haha', 'koding', '+6423131'),
(5, 'oaoa', 'tidur', '+62121313'),
(6, 'lklkl', 'males', '+7213131'),
(7, 'cie cie', 'tidur', '+62131212');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
