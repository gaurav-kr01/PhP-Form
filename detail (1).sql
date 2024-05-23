-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 01:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `other` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES
(1, 'Gaurav', 22, 'male', 'gaurav136270@gmail.com', '0727513627', 'I am Good', '2024-05-23 04:45:05'),
(2, 'AJAY', 22, 'male', 'gaurav136270@gmail.com', '0727513627', 'klklkbxbxf', '2024-05-23 05:05:25'),
(3, 'AJAY', 22, 'male', 'gaurav136270@gmail.com', '0727513627', 'klklkbxbxf', '2024-05-23 05:05:35'),
(4, 'AJAY', 22, 'male', 'gaurav136270@gmail.com', '0727513627', 'klklkbxbxf', '2024-05-23 05:05:39'),
(5, 'Gaurav', 34, 'male', 'gaurav136270@gmail.com', '0727513627', 'ok', '2024-05-23 05:05:52'),
(6, 'Gaurav', 34, 'male', 'gaurav136270@gmail.com', '0727513627', 'ok', '2024-05-23 05:07:50'),
(7, 'Gaurav', 34, 'male', 'gaurav136270@gmail.com', '0727513627', 'ok', '2024-05-23 05:12:18'),
(8, 'Gaurav', 34, 'male', 'gaurav136270@gmail.com', '0727513627', 'ok', '2024-05-23 05:13:01'),
(9, 'Gaurav', 34, 'male', 'gaurav136270@gmail.com', '0727513627', 'kjdfk', '2024-05-23 05:13:48'),
(10, 'Gaurav', 34, 'male', 'gaurav136270@gmail.com', '0727513627', 'kjdfk', '2024-05-23 05:13:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;