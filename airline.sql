-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2024 at 03:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `nic`, `passport`, `address`, `dob`, `gender`, `contact`) VALUES
('CS001', 'Austin', 'Albrechtsen', '12345', '98765', '1436 Congress Ave, Indianapolis, IN 46208', 'January 25, 2002', 'Male', '3179189147'),
('CS002', 'testFName', 'testLName', 'testNicNo', 'testPassportID', 'testAddress', 'testDOB', 'Male', 'testContact'),
('CS003', 'test2', 'test2', '12345', '12345', 'testaddress2', 'testdob', 'Female', 'testcontact');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` varchar(255) NOT NULL,
  `flightname` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `depart` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `deptime` varchar(255) NOT NULL,
  `arrtime` varchar(255) NOT NULL,
  `flightcharge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `flightname`, `source`, `depart`, `date`, `deptime`, `arrtime`, `flightcharge`) VALUES
('FO001', 'Indianapolis from Chicago', 'USA ', 'USA ', 'April 20, 2024', '10:00 am', '12:00 pm', '$150'),
('FO002', 'Chicago', 'Illinois', 'Indiana', 'April 20, 2024', '8:00 am', '10:00 am', '$150 '),
('FO003', 'Toronto from Indianapolis', 'Canada', 'Indiana', 'April 20, 2024', '10:00 am', '6:00 pm', '$300'),
('FO004', 'Sacremento from Indianapolis', 'Illinois', 'Illinois', 'April 20, 2024', '9:00 am', '8:00 pm', '$350');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` varchar(255) NOT NULL,
  `flightid` varchar(255) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `seats` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `flightid`, `custid`, `class`, `price`, `seats`, `date`) VALUES
('TO001', 'FO001', 'CS001', 'Economy', '$150', '1', ''),
('TO002', 'FO001', 'CS001', 'Economy', '$150', '2', 'jLabel9'),
('TO003', 'FO003', 'CS001', 'Economy', '$300', '1', 'jLabel9');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
('UO001', 'Austin', 'Albrechtsen', 'aalbrechtsen', '123456'),
('UO002', 'test', 'test', 'testuser', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
