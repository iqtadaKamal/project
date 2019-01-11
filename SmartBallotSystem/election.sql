-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 07:05 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `ballot_paper`
--

CREATE TABLE `ballot_paper` (
  `CANDIDATE_NAME` int(11) NOT NULL,
  `CANDIDATE_SIGN` int(11) NOT NULL,
  `CANDIDATE_PARTY` int(11) NOT NULL,
  `NA_SEAT` int(11) NOT NULL,
  `PS_SEAT` int(11) NOT NULL,
  `CANDIDATE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `constituent`
--

CREATE TABLE `constituent` (
  `Const_ID` int(10) NOT NULL,
  `Const_Name` varchar(10) NOT NULL,
  `Votes_Casted` bigint(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituent`
--

INSERT INTO `constituent` (`Const_ID`, `Const_Name`, `Votes_Casted`) VALUES
(250, 'NA250', 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `RESULT_ID` int(11) NOT NULL,
  `Const_Name` int(11) NOT NULL,
  `Const_Votes_casted` int(11) NOT NULL,
  `Const_Winner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `NIC` varchar(13) NOT NULL,
  `Constituent` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`FName`, `LName`, `Address`, `Age`, `Gender`, `NIC`, `Constituent`) VALUES
('Shahzaib', 'Butt', 'E-112 Zubairy Colony Manghopir Road Karachi', 21, 'Male', '4240128018175', 'NA-250');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
