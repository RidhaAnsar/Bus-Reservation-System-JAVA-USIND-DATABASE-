-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 25, 2024 at 02:21 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_tb`
--

DROP TABLE IF EXISTS `bus_tb`;
CREATE TABLE IF NOT EXISTS `bus_tb` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `bus_no` int NOT NULL,
  `available_seats` int NOT NULL,
  `from` varchar(20) NOT NULL,
  `To` varchar(20) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bus_tb`
--

INSERT INTO `bus_tb` (`bid`, `bus_no`, `available_seats`, `from`, `To`) VALUES
(1, 1, 10, 'KOCHI', 'BANGALORE'),
(2, 2, 10, 'KANNUR', 'KOCHI'),
(3, 3, 10, 'TRIVANDRUM', 'KOZHIKOD'),
(4, 4, 10, 'MANGLORE', 'TRISSUR'),
(5, 5, 10, 'ERNAKULAM', 'KOZHIKOD'),
(6, 6, 10, 'KOCHI', 'MUNNAR'),
(7, 7, 10, 'COIMBATORE', 'OOTY'),
(8, 8, 10, 'DELHI', 'MANALI'),
(9, 9, 10, 'DELHI', 'DEHRADUN'),
(10, 10, 10, 'DELHI', 'MANALI');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `sid` int NOT NULL,
  `bid` int NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
CREATE TABLE IF NOT EXISTS `seats` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `bid` int NOT NULL,
  `seat_no` int NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`sid`, `bid`, `seat_no`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(1, 'ridha', 'ridha'),
(2, 'abc', 'abc');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
