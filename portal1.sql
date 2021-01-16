-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 06:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal1`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderplace1`
--

CREATE TABLE `orderplace1` (
  `orderid` int(20) NOT NULL,
  `fullname` varchar(20) DEFAULT NULL,
  `orderdate` varchar(20) DEFAULT NULL,
  `cusid` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderplace1`
--

INSERT INTO `orderplace1` (`orderid`, `fullname`, `orderdate`, `cusid`) VALUES
(1, 'maria', '24nov2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shippment`
--

CREATE TABLE `shippment` (
  `userid` int(30) NOT NULL,
  `ordershipped` varchar(10) DEFAULT NULL,
  `cusid` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shippment`
--

INSERT INTO `shippment` (`userid`, `ordershipped`, `cusid`) VALUES
(1, 'yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `cusid` int(10) NOT NULL,
  `fullname` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `addr` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`cusid`, `fullname`, `city`, `addr`) VALUES
(1, 'maria', 'karachi', 'r-6873');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderplace1`
--
ALTER TABLE `orderplace1`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `cusid` (`cusid`);

--
-- Indexes for table `shippment`
--
ALTER TABLE `shippment`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `cusid` (`cusid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`cusid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shippment`
--
ALTER TABLE `shippment`
  MODIFY `userid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderplace1`
--
ALTER TABLE `orderplace1`
  ADD CONSTRAINT `orderplace1_ibfk_1` FOREIGN KEY (`cusid`) REFERENCES `users` (`cusid`);

--
-- Constraints for table `shippment`
--
ALTER TABLE `shippment`
  ADD CONSTRAINT `shippment_ibfk_1` FOREIGN KEY (`cusid`) REFERENCES `users` (`cusid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
