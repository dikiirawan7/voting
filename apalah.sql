-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 11:20 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apalah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tambah`
--

CREATE TABLE IF NOT EXISTS `tambah` (
  `no` int(30) NOT NULL AUTO_INCREMENT,
  `ktp` int(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `plihan` varchar(30) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `ktp` (`ktp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tambah`
--

INSERT INTO `tambah` (`no`, `ktp`, `nama`, `plihan`) VALUES
(3, 12345678, 'aku', 'ddddd'),
(4, 23456789, 'siapa', 'jokowi');

-- --------------------------------------------------------

--
-- Table structure for table `terserah`
--

CREATE TABLE IF NOT EXISTS `terserah` (
  `no` int(30) NOT NULL AUTO_INCREMENT,
  `ktp` int(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `ktp` (`ktp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `terserah`
--

INSERT INTO `terserah` (`no`, `ktp`, `nama`) VALUES
(1, 12345678, 'aku'),
(2, 23456789, 'siapa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
