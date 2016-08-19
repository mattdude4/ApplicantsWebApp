-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 19, 2016 at 04:01 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applicants`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE IF NOT EXISTS `applicant` (
  `name` varchar(100) NOT NULL,
  `candidateNumber` int(11) NOT NULL,
  `firstPassScore` decimal(10,0) NOT NULL,
  `emailAddress` varchar(100) NOT NULL,
  `experience` varchar(1000) NOT NULL,
  `qualifications` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`name`, `candidateNumber`, `firstPassScore`, `emailAddress`, `experience`, `qualifications`) VALUES
('Java Script', 10101, 9, 'j@va.script', '5 years front end development', 'Computer Science BSc'),
('Aaron Aaronson', 11111, 8, 'aaronaar@gmail.com', '2 years Java development experience.\r\n1 year front end development experience.', '1st Class Honours Physics BSc'),
('Ruby Ahhhh', 12341, 5, 'kaiserfan@gmail.com', '15 years extensive Google and Facebook Use', '2:2 Honours Philisophy BA'),
('Bob Williams', 21957, 6, 'bobw@gmail.com', '3 years Clerical work at WebApps4U', '2:1 class honours English Literature BA'),
('Charlotte Khan', 87588, 6, 'chkh88@gmail.com', '2 years lazing about on IT Support', 'Business Management BA'),
('Matt Jenkins', 99999, 10, 'jenkinsmr4@gmail.com', '2 years software technical writing\r\n1 year Java development in spare time', '2:1 Class honours Mathematics BSc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`candidateNumber`),
  ADD UNIQUE KEY `candidateNumber` (`candidateNumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
