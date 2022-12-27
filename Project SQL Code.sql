-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2022 at 07:08 AM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price_byday` double NOT NULL,
  `duration` int(11) NOT NULL,
  `deposit` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `c_id` (`c_id`),
  KEY `room_id` (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `start_date`, `end_date`, `price_byday`, `duration`, `deposit`, `c_id`, `room_id`) VALUES
(1, '2022-12-13', '2022-12-15', 200, 2, 150, 10, 301),
(2, '2022-12-14', '2022-12-16', 200, 2, 150, 9, 210),
(3, '2022-12-20', '2022-12-25', 110, 5, 150, 8, 108),
(4, '2022-12-20', '2022-12-22', 110, 2, 150, 7, 104),
(5, '2022-12-06', '2022-12-07', 140, 1, 150, 6, 205),
(6, '2022-12-28', '2022-12-31', 140, 3, 150, 5, 209),
(7, '2022-12-01', '2022-12-06', 240, 6, 150, 4, 405),
(8, '2022-12-29', '2022-12-30', 240, 1, 150, 3, 406),
(9, '2022-12-18', '2022-12-20', 140, 2, 150, 2, 207),
(10, '2022-12-10', '2022-12-15', 110, 4, 150, 1, 107);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_fname` varchar(50) DEFAULT NULL,
  `c_lname` varchar(50) DEFAULT NULL,
  `c_email` varchar(50) DEFAULT NULL,
  `c_username` varchar(50) DEFAULT NULL,
  `c_pswd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `c_fname`, `c_lname`, `c_email`, `c_username`, `c_pswd`) VALUES
(1, 'Margaret', 'Soriano', 'mmvsoriano17@yahoo.com', 'mmvsoriano', 'margaretv'),
(2, 'John', 'Smith', 'johnsmith777@gmail.com', 'johnsmith', 'iamjohnsmith'),
(3, 'Mark', 'Collins', 'mark_collins876@yahoo.com', 'collinsmark69', '123456hj'),
(4, 'David', 'Everett', 'davideverett798@hotmail.com', 'dave566', 'thisismypassword'),
(5, 'James', 'Taylor', 'muchkin19@yahoo.com', 'jamestaylor', 'taylorjames'),
(6, 'John', 'Hesketh', 'h.john2022@gmail.com', 'hjohnyy', 'iamjohnh'),
(7, 'Nick', 'Martin', 'martin.nick1997@gmail.com', 'nickmartin23', '23232323hehe'),
(8, 'Matthew', 'Lancaster', 'm.lanca456@yahoo.com', 'mlanca', 'lncaster78'),
(9, 'Mark', 'Berry', 'markstrawberry@outlook.com', 'iamdeliciousberry', 'berry78'),
(10, 'Russel', 'Proctor', 'Russelproctor789@gmail.com', 'iamyourproctor', 'proctor1234');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `e_fname` varchar(50) NOT NULL,
  `e_lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `username`, `password`, `e_fname`, `e_lastname`) VALUES
(1, 'ianpedeglorio', 'hahaha23', 'Ian', 'Pedeglorio'),
(2, 'iamjay', 'jay696969', 'Jay', 'Zhua');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `Inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `Payment_id` int(11) DEFAULT NULL,
  `c_lname` varchar(255) DEFAULT NULL,
  `c_fname` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `FINAL_pay` int(11) DEFAULT NULL,
  PRIMARY KEY (`Inv_id`),
  KEY `Payment_id` (`Payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Inv_id`, `Payment_id`, `c_lname`, `c_fname`, `duration`, `FINAL_pay`) VALUES
(1, 1, 'Soriano', 'Margaret', 4, 440),
(2, 2, 'Proctor', 'Russel', 2, 400),
(3, 3, 'Lancaster', 'Matthew', 5, 550),
(4, 4, 'Berry', 'Mark', 2, 400),
(5, 5, 'Hesketh', 'John', 1, 140),
(6, 6, 'Taylor', 'James', 3, 420),
(7, 7, 'Everett', 'David', 6, 1440),
(8, 8, 'Smith', 'John', 2, 280),
(9, 9, 'Collins', 'Mark', 1, 240),
(10, 10, 'Martin', 'Nick', 2, 220);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `Card_details` varchar(255) DEFAULT NULL,
  `Booking_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Payment_id`),
  KEY `Booking_id` (`Booking_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `Card_details`, `Booking_id`) VALUES
(1, '123456789111', 10),
(2, '374867888908', 1),
(3, '098376478959', 3),
(4, '000987456783', 2),
(5, '254678920498', 5),
(6, '243678905467', 6),
(7, '984674876529', 7),
(8, '983654789234', 9),
(9, '123456789111', 8),
(10, '354678999098', 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `room_price` int(11) DEFAULT NULL,
  `room_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `room_price`, `room_description`) VALUES
(101, 'Standard', 110, 'One bed'),
(102, 'Standard', 110, 'One bed'),
(103, 'Standard', 110, 'One bed'),
(104, 'Standard', 110, 'One bed'),
(105, 'Standard', 110, 'One bed'),
(106, 'Standard', 110, 'One bed'),
(107, 'Standard', 110, 'One bed'),
(108, 'Standard', 110, 'One bed'),
(109, 'Standard', 110, 'One bed'),
(110, 'Standard', 110, 'One bed'),
(201, 'Double', 140, 'Double bed'),
(202, 'Double', 140, 'Double bed'),
(203, 'Double', 140, 'Double bed'),
(204, 'Double', 140, 'Double bed'),
(205, 'Double', 140, 'Double bed'),
(206, 'Double', 140, 'Double bed'),
(207, 'Double', 140, 'Double bed'),
(208, 'Double', 140, 'Double bed'),
(209, 'Double', 140, 'Double bed'),
(210, 'Double', 140, 'Double bed'),
(301, 'Suite', 200, 'King size bed, pull out couch'),
(302, 'Suite', 200, 'king size bed, pull out couch'),
(303, 'Suite', 200, 'king size bed, pull out couch'),
(304, 'Suite', 200, 'king size bed, pull out couch'),
(305, 'Suite', 200, 'king size bed, pull out couch'),
(306, 'Suite', 200, 'king size bed, pull out couch'),
(307, 'Suite', 200, 'king size bed, pull out couch'),
(308, 'Suite', 200, 'king size bed, pull out couch'),
(309, 'Suite', 200, 'king size bed, pull out couch'),
(310, 'Suite', 200, 'king size bed, pull out couch'),
(401, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(402, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(403, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(404, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(405, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(406, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(407, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(408, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(409, 'Family', 240, 'One queen size bed, two single bed, one pull out couch'),
(410, 'Family', 240, 'One queen size bed, two single bed, one pull out couch');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `state` tinyint(1) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  KEY `room_id` (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state`, `room_id`) VALUES
(0, 101),
(0, 102),
(0, 103),
(1, 104),
(0, 105),
(0, 106),
(1, 107),
(1, 108),
(0, 109),
(0, 110),
(0, 201),
(0, 202),
(0, 203),
(0, 204),
(1, 205),
(0, 206),
(1, 207),
(0, 208),
(1, 209),
(1, 210),
(1, 301),
(0, 302),
(0, 303),
(0, 304),
(0, 305),
(0, 306),
(0, 307),
(0, 308),
(0, 309),
(0, 310),
(0, 401),
(0, 402),
(0, 403),
(0, 404),
(1, 405),
(1, 406),
(0, 407),
(0, 408),
(0, 409),
(0, 410);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
