-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 07:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amiphoria`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Aditya Harsh', 'adityaharsh@gmail.com', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2021-05-04 08:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(100) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Prabhu Deva', '2021-04-19 20:01:46', NULL),
(2, 'Karan Johar', '2021-04-19 20:05:49', NULL),
(3, 'Dabboo Ratnani', '2021-05-03 08:28:46', NULL),
(4, 'A.R. Rahman', '2021-05-03 09:02:10', NULL),
(5, 'Swati Pasari', '2021-05-03 09:13:51', NULL),
(6, 'Derek O\' Brien', '2021-05-03 09:19:44', NULL),
(7, 'Remo D\'Souza', '2021-05-03 09:24:29', NULL),
(8, 'Michelle Montes', '2021-05-03 09:26:39', NULL),
(9, 'Zakir Khan', '2021-05-03 09:32:53', NULL),
(10, 'Sunil Chetri', '2021-05-03 09:38:05', NULL),
(11, 'Virat Kohli', '2021-05-03 09:39:41', NULL),
(12, 'Jimmy George', '2021-05-03 09:41:20', NULL),
(13, 'Lebron James', '2021-05-03 09:42:30', NULL),
(14, 'Falguni Pathak', '2021-05-04 16:57:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(100) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(4) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'Classical Dance', 1, 1, 1001, 100, '2021-04-19 20:02:21', '2021-05-03 08:58:43'),
(3, 'Theme Photography', 2, 3, 1101, 100, '2021-05-03 08:57:05', '2021-05-03 09:31:13'),
(4, 'Rock Mania', 3, 4, 1201, 500, '2021-05-03 09:02:45', '2021-05-03 09:30:45'),
(5, 'Group Dance', 4, 1, 1301, 100, '2021-05-03 09:03:45', '2021-05-03 09:17:58'),
(6, 'Live Painting', 2, 5, 1102, 100, '2021-05-03 09:15:14', '2021-05-03 09:31:07'),
(7, 'Scenery Painting', 2, 5, 1103, 100, '2021-05-03 09:15:53', '2021-05-03 09:31:01'),
(8, 'Model United Nations - MUN 2021', 5, 6, 1401, 100, '2021-05-03 09:20:43', NULL),
(9, 'The Ramp Walk', 1, 2, 1002, 100, '2021-05-03 09:22:44', NULL),
(10, 'Flash Mob', 4, 7, 1302, 800, '2021-05-03 09:25:21', NULL),
(11, 'Make-Up your Face', 2, 8, 1104, 100, '2021-05-03 09:27:16', '2021-05-03 09:32:02'),
(12, 'Standup to Rise', 1, 9, 1003, 100, '2021-05-03 09:36:52', NULL),
(13, 'Kick-Soul', 7, 10, 1501, 1100, '2021-05-03 09:39:02', NULL),
(14, 'Cricket Triumph', 7, 11, 1502, 1100, '2021-05-03 09:40:28', NULL),
(15, 'VolleyBall', 7, 12, 1503, 500, '2021-05-03 09:42:05', NULL),
(16, 'Basket-Busters', 7, 13, 1504, 500, '2021-05-03 09:44:30', NULL),
(17, 'Solo Musical', 3, 4, 1202, 100, '2021-05-03 09:51:28', NULL),
(18, 'Antakshari', 1, 14, 1004, 100, '2021-05-04 17:04:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(100) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Cultural (10XX)', 1, '2021-04-19 20:01:13', '2021-05-04 15:36:01'),
(2, 'Art (11XX)', 1, '2021-05-03 08:03:08', '2021-05-03 09:28:56'),
(3, 'Music (12XX)', 1, '2021-05-03 08:25:36', '2021-05-03 09:29:43'),
(4, 'Dance (13XX)', 1, '2021-05-03 08:25:49', '2021-05-03 09:29:54'),
(5, 'Business (14XX)', 1, '2021-05-03 08:26:20', '2021-05-03 09:30:04'),
(7, 'Sports (15XX)', 1, '2021-05-03 08:54:55', '2021-05-03 09:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(100) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ReturnStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `ReturnStatus`, `fine`) VALUES
(1, 1, 'SID001', '2021-04-20 06:09:47', '2021-05-03 09:52:08', 1, NULL),
(2, 3, 'SID003', '2021-05-03 09:48:58', NULL, NULL, NULL),
(3, 13, 'SID002', '2021-05-03 09:50:42', NULL, NULL, NULL),
(4, 17, 'SID001', '2021-05-03 09:51:52', NULL, NULL, NULL),
(5, 10, 'SID004', '2021-05-03 09:55:40', NULL, NULL, NULL),
(6, 8, 'SID005', '2021-05-03 09:59:39', NULL, NULL, NULL),
(7, 9, 'SID006', '2021-05-03 10:07:25', NULL, NULL, NULL),
(8, 8, 'SID009', '2021-05-03 10:08:04', NULL, NULL, NULL),
(9, 8, 'SID003', '2021-05-03 10:08:20', NULL, NULL, NULL),
(10, 8, 'SID002', '2021-05-03 10:08:37', NULL, NULL, NULL),
(11, 10, 'SID010', '2021-05-03 10:09:15', NULL, NULL, NULL),
(12, NULL, 'SID012', '2021-05-03 10:13:22', NULL, NULL, NULL),
(13, 6, 'SID012', '2021-05-03 10:13:48', NULL, NULL, NULL),
(14, 11, 'SID013', '2021-05-03 10:14:59', NULL, NULL, NULL),
(15, 5, 'SID001', '2021-05-03 10:15:39', NULL, NULL, NULL),
(16, 5, 'SID002', '2021-05-03 10:15:52', NULL, NULL, NULL),
(17, 5, 'SID003', '2021-05-03 10:16:09', NULL, NULL, NULL),
(18, 5, 'SID004', '2021-05-03 10:16:26', NULL, NULL, NULL),
(19, 15, 'SID015', '2021-05-03 10:16:58', NULL, NULL, NULL),
(20, 15, 'SID004', '2021-05-03 10:17:46', NULL, NULL, NULL),
(21, 16, 'SID007', '2021-05-03 10:33:09', NULL, NULL, NULL),
(22, 1, 'SID008', '2021-05-03 10:33:44', NULL, NULL, NULL),
(23, 7, 'SID012', '2021-05-03 10:34:28', NULL, NULL, NULL),
(24, 12, 'SID010', '2021-05-03 10:35:07', NULL, NULL, NULL),
(25, 14, 'SID005', '2021-05-03 10:35:44', NULL, NULL, NULL),
(26, 14, 'SID006', '2021-05-03 10:37:27', NULL, NULL, NULL),
(27, 13, 'SID007', '2021-05-03 10:39:16', NULL, NULL, NULL),
(28, 12, 'SID008', '2021-05-03 10:41:15', NULL, NULL, NULL),
(29, 7, 'SID009', '2021-05-03 10:42:32', NULL, NULL, NULL),
(30, 4, 'SID011', '2021-05-03 10:44:35', NULL, NULL, NULL),
(31, 1, 'SID011', '2021-05-03 10:45:03', NULL, NULL, NULL),
(32, 9, 'SID013', '2021-05-03 10:46:36', NULL, NULL, NULL),
(33, 6, 'SID015', '2021-05-03 11:01:12', NULL, NULL, NULL),
(34, 4, 'SID014', '2021-05-03 11:02:07', NULL, NULL, NULL),
(35, 17, 'SID014', '2021-05-03 11:02:32', NULL, NULL, NULL),
(36, 8, 'SID016', '2021-05-04 08:43:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(200) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'Aditya Harsh', 'adityaharsh@gmail.com', '1234567890', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2021-04-19 12:11:42', '2021-05-04 08:18:21'),
(2, 'SID002', 'Osama Shabbir', 'osama@gmail.com', '8989586802', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:14:37', '2021-05-03 08:07:38'),
(3, 'SID003', 'Aritra De', 'aritra@gmail.com', '6985806678', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:23:41', '2021-05-03 16:18:18'),
(4, 'SID004', 'Akshat Tiwari', 'akshat@gmail.com', '8666000860', '25f9e794323b453885f5181f1b624d0b', 0, '2021-04-19 17:41:14', '2021-05-04 08:37:50'),
(5, 'SID005', 'Chetan Mehra', 'chetan@gmail.com', '8003714909', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:45:13', '2021-05-03 10:00:36'),
(6, 'SID006', 'Manish Malhotra', 'manish@gmail.com', '8889973799', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:46:54', NULL),
(7, 'SID007', 'Tarun Chowdhury', 'tarun@hotmail.com', '8448911946', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:48:13', '2021-05-03 10:38:54'),
(8, 'SID008', 'Deepak Khanna', 'deepak@live.com', '8972193052', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:52:09', '2021-05-03 10:41:01'),
(9, 'SID009', 'Edward Smith', 'ed@gmail.com', '9153617400', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 18:04:27', NULL),
(10, 'SID010', 'Tim Sterling', 'tim@yahoo.in', '8896585632', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 20:04:02', NULL),
(11, 'SID011', 'Diksha Pathak', 'dp@gmail.com', '5659864782', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 20:05:03', '2021-05-03 10:31:20'),
(12, 'SID012', 'Akhilesh Singh', 'asingh@yahoo.in', '6285958612', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 04:29:40', NULL),
(13, 'SID013', 'Neeti Kumar', 'neetik@gmail.com', '7825649136', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 04:31:45', NULL),
(14, 'SID014', 'Richa Agarwal', 'richagaarwal@gmail.com', '9788561432', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 04:34:08', '2021-05-03 10:31:24'),
(15, 'SID015', 'Shalini Maiti', 'smaiti@gmail.com', '8695214753', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 09:12:11', NULL),
(16, 'SID016', 'Akshay Chatterjee', 'akshay@gmail.com', '5894675912', '25f9e794323b453885f5181f1b624d0b', 1, '2021-05-04 08:06:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
