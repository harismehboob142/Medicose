-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2022 at 07:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123'),
('root', 'kali'),
('root', 'kali');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(16, 15, 'Iqra', 'Asif', 'Female', 'iqraasif21@gmail.com', '2131222212', 'kashif', 1000, '2021-06-13', '12:00:00', 1, 0),
(17, 16, 'Anila', 'Asif', 'Female', 'anilaasif22@hotmail.com', '0333092805', 'kashif', 1000, '2021-06-15', '08:00:00', 1, 1),
(18, 17, 'hamza', 'masood', 'Male', 'hamza2212@yahoo.com', '0231412312', 'kashif', 1000, '2021-06-18', '10:00:00', 1, 0),
(19, 18, 'mian', 'saqlain', 'Male', 'miansaqlain21@gmail.com', '3214534253', 'kashif', 1000, '2021-06-15', '12:00:00', 1, 1),
(20, 19, 'Babu Rao', 'Apte', 'Male', 'asadmughal1785@gmail.com', '3475275400', 'kashif', 1000, '2021-06-24', '08:00:00', 1, 1),
(13, 20, 'haris', 'mehboob', 'Male', 'harismehboob2019@gmail.com', '0333092850', 'kashif', 1000, '2021-06-22', '16:00:00', 1, 1),
(21, 21, 'Muhammad Asif', 'Mehboob', 'Male', 'asif@gmail.com', '3315446883', 'kashif', 1000, '2021-06-28', '14:00:00', 1, 1),
(16, 22, 'Iqra', 'Asif', 'Female', 'iqraasif21@gmail.com', '2131222212', 'kashif', 1000, '2021-06-30', '16:00:00', 1, 1),
(23, 23, 'ruba ', 'maryam ', 'Female', 'rubamaryamly321@gmail.com', '3045695321', 'kashif', 1000, '2021-10-13', '10:00:00', 1, 1),
(26, 25, 'ruba', 'maryam', 'Female', 'ruba2223@gmail.com', '2131233321', 'kashif', 1000, '2021-10-27', '10:00:00', 1, 1),
(28, 26, 'haris', 'mehboob', 'Male', 'harismehboob2019@gmail.com', '0123123322', 'kashif', 1000, '2022-08-30', '10:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Haris', 'harismehboob0@gmail.com', '0333092850', 'Very great service.'),
('ruba maryam', 'ruba123@gmail.com', '2131231231', 'Very good hospital service'),
('haris', 'harismehboob0@gmail.com', '0333092850', 'Hospital service is good');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('kashif', 'kashif123', 'm_kashif12@gmail.com', 'Neurosurgeon', 1000),
('Muhammad Asad', 'asad123', 'asad123@gmail.com', 'Cardiologist', 1500),
('Zain ul abideen', 'zain123', 'zain1122@yahoo.com', 'Neurologist', 2000),
('Hamza', 'hamza123', 'hamza23@hotmail.com', 'Pediatrician', 2000),
('Noman Akhtar', 'noman123', 'noman2020@gmail.com', 'General', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(13, 'haris', 'mehboob', 'Male', 'harismehboob2019@gmail.com', '0333092850', 'pass123', 'pass123'),
(15, 'Muhammad', 'Anwar', 'Male', 'anwar21@gmail.com', '3330928408', 'anwar123', 'anwar123'),
(16, 'Iqra', 'Asif', 'Female', 'iqraasif21@gmail.com', '2131222212', 'iqra123', 'iqra123'),
(17, 'Anila', 'Asif', 'Female', 'anilaasif22@hotmail.com', '0333092805', 'anila123', 'anila123'),
(18, 'hamza', 'masood', 'Male', 'hamza2212@yahoo.com', '0231412312', 'hamza123', 'hamza123'),
(19, 'mian', 'saqlain', 'Male', 'miansaqlain21@gmail.com', '3214534253', 'saqlain123', 'saqlain123'),
(20, 'Babu Rao', 'Apte', 'Male', 'asadmughal1785@gmail.com', '3475275400', 'Asad123', 'Asad123'),
(21, 'Muhammad Asif', 'Mehboob', 'Male', 'asif@gmail.com', '3315446883', 'pass123', 'pass123'),
(22, 'Haris', 'Mehboob', 'Male', 'harismehboob2019@gmail.com', '0333092840', 'pass123', 'pass123'),
(23, 'ruba ', 'maryam ', 'Female', 'rubamaryamly321@gmail.com', '3045695321', 'ruba123', 'ruba123'),
(25, 'shanza', 'kanwal', 'Female', 'shanza123@gmail.com', '1231212312', 'shanza123', 'shanza123'),
(26, 'ruba', 'maryam', 'Female', 'ruba2223@gmail.com', '2131233321', 'ruba123', 'ruba123'),
(27, 'komail', 'niazi', 'Male', 'komail@gmail.com', '3242343243', '123456', '123456'),
(28, 'haris', 'mehboob', 'Male', 'harismehboob2019@gmail.com', '0123123322', 'haris123', 'haris123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('kashif', 13, 14, 'haris', 'mehboob', '2021-06-14', '08:00:00', 'Flue with ansomnia', 'Dust and pollens', 'Panadol CF \r\nAmoxil 250mg\r\nSoftin 20mg'),
('kashif', 20, 19, 'Babu Rao', 'Apte', '2021-06-24', '08:00:00', 'Fertility', 'none', 'Chalo Shaba Kato\r\n'),
('kashif', 21, 21, 'Muhammad Asif', 'Mehboob', '2021-06-28', '14:00:00', 'Flue', 'None', 'Amedol'),
('kashif', 16, 22, 'Iqra', 'Asif', '2021-06-30', '16:00:00', 'Covid', 'Dust', 'CanSino Vaccine'),
('kashif', 17, 16, 'Anila', 'Asif', '2021-06-15', '08:00:00', 'flue', 'dust', 'calpol'),
('kashif', 23, 23, 'ruba ', 'maryam ', '2021-10-13', '10:00:00', 'flue', 'dust', 'rigix \r\nazomax 20mg'),
('kashif', 26, 25, 'ruba', 'maryam', '2021-10-27', '10:00:00', 'fever , flue', 'dust, pollens', 'rigix 20mg\r\nsteam'),
('kashif', 17, 16, 'Anila', 'Asif', '2021-06-15', '08:00:00', 'lkjlkj', 'kjklj', 'kjlkj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD CONSTRAINT `appointmenttb_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `patreg` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
