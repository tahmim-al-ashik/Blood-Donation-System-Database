-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 08:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Blood donation system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bb_manager`
--

CREATE TABLE `bb_manager` (
  `M_id` int(11) NOT NULL,
  `mName` varchar(255) NOT NULL,
  `m_phNo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bb_manager`
--

INSERT INTO `bb_manager` (`M_id`, `mName`, `m_phNo`) VALUES
(102, 'Jack', '4693959671'),
(103, 'Peter', '4693959601'),
(104, 'Mark', '4693959677'),
(105, 'Jason', '4693957671'),
(106, 'Steve', '4694959671'),
(107, 'Jason', '4695959671'),
(108, 'Stella', '4663959671'),
(109, 'Monika', '4673959671'),
(110, 'John', '4693859671'),
(111, 'Ash', '4693859684'),
(112, 'FAM', '4673959671'),
(121, 'HAM', '4673959671'),
(131, 'SAMON', '4673959671'),
(141, 'MASB', '4673959671'),
(151, 'DADB', '4673959671'),
(161, 'DADBHA', '4673959671'),
(171, 'DABD', '4673959671'),
(181, 'DADB', '4673959671'),
(191, 'DADN', '4673959671'),
(192, 'RANIKA', '4673959671');

-- --------------------------------------------------------

--
-- Table structure for table `bloodspecimen`
--

CREATE TABLE `bloodspecimen` (
  `specimen_number` int(11) NOT NULL,
  `b_group` varchar(10) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `dfind_ID` int(11) NOT NULL,
  `M_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodspecimen`
--

INSERT INTO `bloodspecimen` (`specimen_number`, `b_group`, `status`, `dfind_ID`, `M_id`) VALUES
(1001, 'B+', 1, 11, 102),
(1002, 'O+', 1, 12, 102),
(1003, 'AB+', 1, 11, 102),
(1004, 'O-', 1, 13, 103),
(1005, 'A+', 0, 14, 112),
(1006, 'A-', 1, 13, 104),
(1007, 'AB-', 1, 15, 104),
(1008, 'AB-', 0, 11, 105),
(1009, 'B+', 1, 13, 105),
(1010, 'O+', 0, 12, 105),
(1011, 'O+', 1, 13, 103),
(1012, 'O-', 1, 14, 102),
(1013, 'B-', 1, 14, 102),
(1014, 'AB+', 0, 15, 181),
(1015, 'AB+', 0, 15, 121),
(1016, 'B+', 0, 15, 131),
(1017, 'AB+', 0, 15, 141),
(1018, 'AB+', 0, 15, 151),
(1019, 'AB+', 0, 15, 161),
(1020, 'AB+', 0, 15, 104),
(1021, 'AB+', 0, 15, 104);

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `bd_ID` int(11) NOT NULL,
  `bd_name` varchar(255) NOT NULL,
  `bd_age` varchar(255) NOT NULL,
  `bd_sex` varchar(255) NOT NULL,
  `bd_Bgroup` varchar(10) DEFAULT NULL,
  `bd_reg_date` date DEFAULT NULL,
  `reco_ID` int(11) NOT NULL,
  `City_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `City_ID` int(11) NOT NULL,
  `City_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`City_ID`, `City_name`) VALUES
(1200, 'Austin'),
(1212, 'Badda'),
(1300, 'Irving'),
(1400, 'Houston'),
(1500, 'Richardson'),
(1600, 'Plano'),
(1700, 'Frisco'),
(1800, 'Arlington'),
(1900, 'San Antonio'),
(2000, 'Tyler');

-- --------------------------------------------------------

--
-- Table structure for table `diseasefinder`
--

CREATE TABLE `diseasefinder` (
  `dfind_ID` int(11) NOT NULL,
  `dfind_name` varchar(255) NOT NULL,
  `dfind_PhNo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diseasefinder`
--

INSERT INTO `diseasefinder` (`dfind_ID`, `dfind_name`, `dfind_PhNo`) VALUES
(11, 'Peter', '4693804223'),
(12, 'Park', '4693804223'),
(13, 'Jerry', '4693804223'),
(14, 'Mark', '4693804223'),
(15, 'Monika', '4693804223'),
(16, 'Ram', '4693804123'),
(17, 'Swathi', '4693804223'),
(18, 'Gautham', '4693804323'),
(19, 'Ashwin', '4693804423'),
(20, 'Yash', '4693804523');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_info`
--

CREATE TABLE `hospital_info` (
  `hosp_ID` int(11) NOT NULL,
  `hosp_name` varchar(255) NOT NULL,
  `hosp_needed_Bgrp` varchar(10) NOT NULL,
  `hosp_needed_qnty` int(11) DEFAULT NULL,
  `City_ID` int(11) NOT NULL,
  `M_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_info`
--

INSERT INTO `hospital_info` (`hosp_ID`, `hosp_name`, `hosp_needed_Bgrp`, `hosp_needed_qnty`, `City_ID`, `M_id`) VALUES
(51111, 'Square', 'O-', 2, 1200, 191),
(51112, 'Apollo', 'b-', 1, 1200, 191),
(51113, 'Medinova', 'a-', 2, 1300, 181),
(51114, 'Square', 'b+', 2, 1400, 171),
(51115, 'Square', 'O-', 2, 1500, 161),
(51116, 'Square', 'O-', 2, 1600, 151),
(51117, 'Square', 'O-', 2, 1700, 141),
(51118, 'Square', 'O-', 2, 1800, 191),
(51119, 'Square', 'O-', 2, 1200, 191),
(51121, 'Square', 'O-', 2, 1200, 191),
(51122, 'Square', 'O-', 2, 1200, 191);

-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE `recipient` (
  `reci_ID` int(11) NOT NULL,
  `reci_name` varchar(255) NOT NULL,
  `reci_age` varchar(255) NOT NULL,
  `reci_Brgp` varchar(255) NOT NULL,
  `reci_Bqnty` float DEFAULT NULL,
  `reco_ID` int(11) NOT NULL,
  `City_ID` int(11) NOT NULL,
  `M_id` int(11) NOT NULL,
  `reci_sex` varchar(255) NOT NULL,
  `reci_reg_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`reci_ID`, `reci_name`, `reci_age`, `reci_Brgp`, `reci_Bqnty`, `reco_ID`, `City_ID`, `M_id`, `reci_sex`, `reci_reg_date`) VALUES
(1000001, 'fahim', '25', 'B+', 2, 101212, 1700, 192, 'Male', '2021-04-12'),
(1000002, 'fahimma', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000004, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000005, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000006, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000007, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000008, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000009, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000013, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000023, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000033, 'mahin', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13'),
(1000042, 'fahimma', '24', 'A+', 1, 101212, 1700, 192, 'Male', '2021-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `recording_staff`
--

CREATE TABLE `recording_staff` (
  `reco_ID` int(11) NOT NULL,
  `reco_Name` varchar(255) NOT NULL,
  `reco_phNo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recording_staff`
--

INSERT INTO `recording_staff` (`reco_ID`, `reco_Name`, `reco_phNo`) VALUES
(101012, 'Lekha', '4044846553'),
(101112, 'Mark', '4045856553'),
(101212, 'Walcot', '4045806553'),
(101312, 'Henry', '4045806553'),
(101412, 'Silva', '4045806553'),
(101512, 'Adrian', '4045806553'),
(101612, 'Mark', '4045806553'),
(101712, 'Abdul', '4045816553'),
(101722, 'Jamal', '4045816573'),
(101732, 'Kashem', '4045816583'),
(101812, 'Jerry', '4045826553'),
(101912, 'Tim', '4045836553');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bb_manager`
--
ALTER TABLE `bb_manager`
  ADD PRIMARY KEY (`M_id`),
  ADD UNIQUE KEY `M_id` (`M_id`);

--
-- Indexes for table `bloodspecimen`
--
ALTER TABLE `bloodspecimen`
  ADD PRIMARY KEY (`specimen_number`,`b_group`),
  ADD UNIQUE KEY `specimen_number` (`specimen_number`,`dfind_ID`),
  ADD UNIQUE KEY `specimen_number_2` (`specimen_number`,`dfind_ID`,`M_id`),
  ADD KEY `dfind_ID` (`dfind_ID`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`bd_ID`),
  ADD UNIQUE KEY `bd_ID` (`bd_ID`),
  ADD UNIQUE KEY `bd_ID_2` (`bd_ID`,`reco_ID`,`City_ID`),
  ADD KEY `reco_ID` (`reco_ID`),
  ADD KEY `City_ID` (`City_ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`City_ID`),
  ADD UNIQUE KEY `City_ID` (`City_ID`);

--
-- Indexes for table `diseasefinder`
--
ALTER TABLE `diseasefinder`
  ADD PRIMARY KEY (`dfind_ID`),
  ADD UNIQUE KEY `dfind_ID` (`dfind_ID`);

--
-- Indexes for table `hospital_info`
--
ALTER TABLE `hospital_info`
  ADD PRIMARY KEY (`hosp_ID`,`hosp_needed_Bgrp`),
  ADD UNIQUE KEY `hosp_ID` (`hosp_ID`,`City_ID`,`M_id`),
  ADD KEY `M_id` (`M_id`),
  ADD KEY `City_ID` (`City_ID`);

--
-- Indexes for table `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`reci_ID`),
  ADD UNIQUE KEY `reci_ID` (`reci_ID`,`reco_ID`),
  ADD UNIQUE KEY `reci_ID_2` (`reci_ID`,`reco_ID`,`City_ID`),
  ADD UNIQUE KEY `reci_ID_3` (`reci_ID`,`reco_ID`,`City_ID`,`M_id`),
  ADD KEY `reco_ID` (`reco_ID`),
  ADD KEY `City_ID` (`City_ID`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `recording_staff`
--
ALTER TABLE `recording_staff`
  ADD PRIMARY KEY (`reco_ID`),
  ADD UNIQUE KEY `reco_ID` (`reco_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bloodspecimen`
--
ALTER TABLE `bloodspecimen`
  ADD CONSTRAINT `bloodspecimen_ibfk_1` FOREIGN KEY (`dfind_ID`) REFERENCES `diseasefinder` (`dfind_ID`),
  ADD CONSTRAINT `bloodspecimen_ibfk_2` FOREIGN KEY (`M_id`) REFERENCES `bb_manager` (`M_id`);

--
-- Constraints for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD CONSTRAINT `blood_donor_ibfk_1` FOREIGN KEY (`reco_ID`) REFERENCES `recording_staff` (`reco_ID`),
  ADD CONSTRAINT `blood_donor_ibfk_2` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`);

--
-- Constraints for table `hospital_info`
--
ALTER TABLE `hospital_info`
  ADD CONSTRAINT `hospital_info_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `bb_manager` (`M_id`),
  ADD CONSTRAINT `hospital_info_ibfk_2` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`);

--
-- Constraints for table `recipient`
--
ALTER TABLE `recipient`
  ADD CONSTRAINT `recipient_ibfk_1` FOREIGN KEY (`reco_ID`) REFERENCES `recording_staff` (`reco_ID`),
  ADD CONSTRAINT `recipient_ibfk_2` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`),
  ADD CONSTRAINT `recipient_ibfk_3` FOREIGN KEY (`M_id`) REFERENCES `bb_manager` (`M_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
