-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2022 at 03:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(4) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `document_link` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `Name`, `Email`, `document_link`) VALUES
(1, 'john', 'john@yahoo.com', 'acbd'),
(2, 'bee', 'bee@gmail.com', 'bdce'),
(3, 'mino', 'mino@yahoo', ''),
(4, 'Sriyani Ku', 'sriyanikulawanse@gmail.com', ''),
(15, 'sasani', 'sasanijayathilake@gmail.com', ''),
(18, 'jpg', 'jpg@gmail.com', ''),
(19, 'png', 'png@gmail.com', ''),
(20, 'sasani9', 'sasani9@gmail.com', 'images\\sola 35 - Ishan anjana.pdf'),
(22, 'mitra', 'mitra@gmail.com', 'images\\Details requested by Tangakelle.xlsx'),
(23, 'nita', 'nita@yahoo.com', 'images\\Address Book HPL new.CSV'),
(24, 'g', 'g@gmail.com', 'images\\X\'mas 2020.xlsx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
