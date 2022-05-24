-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 05:30 AM
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
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comitees`
--

CREATE TABLE `comitees` (
  `id` int(11) NOT NULL,
  `comitee_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comitees`
--

INSERT INTO `comitees` (`id`, `comitee_id`, `name`, `email`, `password`, `details`) VALUES
(1, 'EXEC', 'Executive Committee', 'executivecommittee@gmail.com', 'execcommittee', 'In exercise of the powers conferred under Section, 12(1) of the All India Council for Technical Education (AICTE) Act, 1987, the Council hereby reconstitutes the Executive Committee of AICTE for a period of three years w.e.f. 29th September, 2021.'),
(2, 'REG', 'Regional Committee', 'regcommitee@gmail.com', 'regcommittee', 'In exercise of the powers conferred under Section 14(1) of AICTE Act and in accordance with\r\ntheAICTE (Constitution and Functions of Regional Committees) Regulation, 1995 issued vide GSR 63\r\ndated 19tr\'January L995, No. 3B-10/Legall2004 dated L5.12.2004 and 31.01.2005, AICTE hereby reconstitutes Central Regional Committee with its office at Bhopal. The composition of the Regional\r\nCommittee is as given below'),
(3, 'ARCB', 'Architecture Board', 'archboard@gmail.com', 'archiboard', ''),
(4, 'AIBTE', 'AIB Technician Education', 'aibtechedu@gmail.com', 'aibtecheducation', ''),
(5, 'AIBMS', 'AIB Management Studies', 'aibmanagementstu@gmail.com', 'aibvoceducation', '');

-- --------------------------------------------------------

--
-- Table structure for table `even`
--

CREATE TABLE `even` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `even`
--

INSERT INTO `even` (`id`, `title`, `image`, `description`) VALUES
(1, 'MAD Workshop', 'p1.jpg', 'This is description'),
(2, 'College Fest', 'p2.jpg', 'This is the description'),
(3, 'DJ nights', 'p3.jpg', 'This is the description');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `eventid` varchar(255) NOT NULL,
  `eventname` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `attendees` varchar(255) NOT NULL,
  `food` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `eventype` varchar(255) NOT NULL,
  `meetcenter` varchar(255) NOT NULL,
  `comitee1` varchar(255) NOT NULL,
  `comitee2` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `eventid`, `eventname`, `date`, `attendees`, `food`, `image`, `starttime`, `endtime`, `eventype`, `meetcenter`, `comitee1`, `comitee2`, `info`, `status`) VALUES
(1, 'EVE01', 'Internal affairs conference', '2022-03-01', '20', '20 members', '', '10:00:00', '13:00:00', 'Conference', 'room03', 'ARCB', 'EXEC', '', 'Scheduled'),
(2, 'EVE02', 'Curriculum planning conference', '2022-04-03', '30', '30 members', '', '09:00:00', '11:00:00', 'Conference', 'room05', 'EXEC', 'REG', '', ''),
(3, 'EVE03', '2022 Events announcements', '2022-04-10', '60', '60 members', '', '13:00:00', '15:00:00', 'Announcements', 'aud01', 'AIBTE', 'EXEC', '', 'Completed'),
(4, 'EVE04', 'Faculty traning programme', '2022-04-15', '100', '120 members', '', '11:00:00', '14:00:00', 'Announcements', 'aud03', 'AIBMS', 'REG', '', ''),
(5, 'EVE04', 'Board members conference', '2022-04-20', '20', '30 members', '', '14:00:00', '18:00:00', 'Conference', 'room02', 'EXEC', 'ARCB', '', ''),
(6, 'EVE06', 'AI and ML Workshop', '2022-04-25', '200', '', 'images/ai.jpg', '10:00:00', '16:00:00', 'Workshops', 'Aud02', 'AIB Technician Education', 'Choose...', '', ''),
(7, 'EVE06', 'Data science workshop', '2022-04-28', '140', '', 'images/data.jpg', '11:00:00', '15:00:00', 'Workshops', 'aud04', 'AIB Technician Education', 'Choose...', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meetingreport`
--

CREATE TABLE `meetingreport` (
  `id` int(11) NOT NULL,
  `eventname` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `report` text NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meetingreport`
--

INSERT INTO `meetingreport` (`id`, `eventname`, `subject`, `report`, `name`) VALUES
(1, 'Internal affairs conference', 'the heading goes here', 'the body', 'Jyothi K G');

-- --------------------------------------------------------

--
-- Table structure for table `meet_centers`
--

CREATE TABLE `meet_centers` (
  `id` int(11) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `seat_no` varchar(255) NOT NULL,
  `center_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meet_centers`
--

INSERT INTO `meet_centers` (`id`, `room_no`, `image`, `seat_no`, `center_type`, `name`) VALUES
(1, 'Room01', 'images/meet1.jpg', '20', 'Meeting Room', ''),
(2, 'room02', 'images/meet3.jpg', '20', 'Meeting Room', ''),
(3, 'room03', 'images/meet2.jpg', '15', 'Meeting Room', ''),
(4, 'aud01', 'images/aud1.jpg', '200', 'Auditorium', ''),
(5, 'room04', 'images/meet4.jpg', '30', 'Meeting Room', ''),
(6, 'Aud02', 'images/aud2.jpg', '400', 'Auditorium', ''),
(7, 'aud03', 'images/aud3.jpg', '300', 'Auditorium', ''),
(8, 'room05', 'images/meet5.jpg', '30', 'Meeting Room', ''),
(9, 'aud04', 'images/aud4.jpg', '450', 'Auditorium', '');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `mem_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `comm` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `mem_id`, `email`, `name`, `password`, `comm`, `role`, `code`) VALUES
(1, 'EXECO01', 'jyothi@gmail.com', 'Jyothi K G', 'jyothi', 'Executive Committee', 'Chairman', 'EXEC'),
(3, 'EXECO02', 'sanvith@gmail.com', 'Sanvi S', 'sanvi', 'Executive Committee', 'Secretary', 'EXEC'),
(4, 'EXECO03', 'satish@gmail.com', 'Satish H K', 'sathish', 'Executive Committee', 'Director', 'EXEC'),
(5, 'REGCO01', 'ashra24@gmail.com', 'Ashra k', 'ashra', 'Regional Committee', 'Chairman', ''),
(6, 'REGCO02', 'sandhya@gmail.com', 'Sandhya R', 'sandya', 'Regional Committee', 'Vice Chairman', 'REG'),
(7, 'REGCO03', 'sanjith@gmail.com', 'Sanjith K', 'sanjit', 'Regional Committee', 'Secretary', 'REG'),
(8, 'REGCO03', 'sanketh@gmail.com', 'Sanketh', 'sanketh', 'Regional Committee', 'Secretary', ''),
(9, 'REGCO04', 'vandan@gmail.com', 'Vandan S', 'vandan', 'Regional Committee', 'Member', ''),
(10, 'EXECO04', 'manvith@gmail.com', 'Manvith', 'manvith', 'Executive Committee', 'Secretary', 'EXEC'),
(11, 'EXECO05', 'satish@gmail.com', 'Satish', 'satish', 'Executive Committee', 'Member', 'EXEC');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `name`, `email`, `phone`, `title`) VALUES
(1, 'Monalisa', 'monalisa@gmail.com', '9873498999', 'MAD Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Jyothi K G', 'jyothi@gmail.com', 'Meeting regarding fund collection', 'To discuss the distribution funds recieved in the year 2021 for events');

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE `stu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`id`, `name`, `email`, `password`) VALUES
(1, 'Monalisa M Gowda', 'monalisa@gmail.com', 'monalisa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comitees`
--
ALTER TABLE `comitees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `even`
--
ALTER TABLE `even`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetingreport`
--
ALTER TABLE `meetingreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meet_centers`
--
ALTER TABLE `meet_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comitees`
--
ALTER TABLE `comitees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `even`
--
ALTER TABLE `even`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meetingreport`
--
ALTER TABLE `meetingreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meet_centers`
--
ALTER TABLE `meet_centers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stu`
--
ALTER TABLE `stu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
