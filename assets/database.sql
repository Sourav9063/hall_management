-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 09:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hall management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_student`
--

CREATE TABLE `accepted_student` (
  `Name` varchar(20) DEFAULT NULL,
  `RegNo` int(10) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Allocated_room` int(6) DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accepted_student`
--

INSERT INTO `accepted_student` (`Name`, `RegNo`, `Department`, `Allocated_room`, `authority_id`) VALUES
(' Rakib ', 2017831010, ' FET ', NULL, NULL),
('Autul', 2017831040, 'MAT', NULL, NULL),
('Durjoy', 2017831009, 'CHE', NULL, NULL),
('Arif Shuvo', 2017334067, 'GEB', NULL, NULL),
('Avishek', 2017831021, 'PHY', NULL, NULL),
('Rahat', 2018831044, 'SWE', NULL, NULL),
('Iftekhar Fuad', 2018337067, 'OCG', NULL, NULL),
('Nishat Tafannum', 2018831029, 'SWE', NULL, NULL),
('Navid Hasan', 2018831026, 'SWE', NULL, NULL),
('Fariha Tasnim', 2018337005, 'FET', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `Name` varchar(20) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `PhoneNo` varchar(15) NOT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`Name`, `Designation`, `PhoneNo`, `ID`) VALUES
('Dr. Mohammad Mizanur', 'Provost', '01712185663', 1),
('Mr.Kawshik Saha', 'Assistant Provost', '01712852564', 2),
('Mr.Asish Kumar Banik', 'Assistant Provost', '01739060516', 3),
('Mr. Mohammad Abul Ha', 'Assstant Provost', '01710525919', 4),
('Mr.Md.Masum Talukdar', 'Assistant Provost', '01716310110', 5),
('Mr. A.S.M. Sayem', 'Assistant Provist', '01717342010', 6),
('Mr. Asif Mohammad Sa', 'Assistant Provost', '01718168496', 7),
('Mr. Md. Amirul Haque', 'Administrative Offic', '01716253577', 8),
('Mr. Md. Anwarul Haqu', 'Imam', '01738768628', 9);

-- --------------------------------------------------------

--
-- Table structure for table `canteen_staff`
--

CREATE TABLE `canteen_staff` (
  `Name` varchar(20) DEFAULT NULL,
  `Designation` varchar(15) DEFAULT NULL,
  `Salary` int(6) DEFAULT NULL,
  `Salary_date` date DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `canteen_staff`
--

INSERT INTO `canteen_staff` (`Name`, `Designation`, `Salary`, `Salary_date`, `authority_id`) VALUES
('Abdul Bachith', 'Main Chef', 3300, '2022-04-01', 1),
('Siddik Mia', 'Main Chef', 3300, '2022-04-01', 1),
('MD. Rekan Ahmed', 'Table Boy', 1400, '2022-04-01', 1),
('MD. Anwarul', 'Table Boy', 1400, '2022-04-01', 2),
('MD. Badrul', 'Table Boy', 1400, '2022-04-01', 2),
('Rehana Begum', 'Khala', 1200, '2022-04-01', 2),
('Hayatun Nessa', 'Khala', 1200, '2022-04-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `VoucherNo` varchar(10) DEFAULT NULL,
  `Note_image_link` varchar(70) DEFAULT NULL,
  `Voucher_image_link` varchar(70) DEFAULT NULL,
  `Amount` int(10) DEFAULT NULL,
  `Reteurn_amount` int(10) DEFAULT NULL,
  `Bank_receipt_no` varchar(15) DEFAULT NULL,
  `The_date` date DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`VoucherNo`, `Note_image_link`, `Voucher_image_link`, `Amount`, `Reteurn_amount`, `Bank_receipt_no`, `The_date`, `authority_id`) VALUES
('01', NULL, NULL, 1000, 200, '432556', '2022-04-12', 2),
('02', NULL, NULL, 500, 100, '432786', '2022-04-12', 2),
('03', NULL, NULL, 500, 100, '402786', '2022-04-20', 2),
('04', NULL, NULL, 200, 0, '430086', '2022-04-20', 3),
('05', NULL, NULL, 1000, 200, '432856', '2022-04-12', 3);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `IssueNo` int(10) NOT NULL,
  `RoomNo` int(3) DEFAULT NULL,
  `RegNo` int(10) DEFAULT NULL,
  `Issue_date` date DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`IssueNo`, `RoomNo`, `RegNo`, `Issue_date`, `Description`, `status`) VALUES
(1, 101, 2017331067, '2022-04-01', 'Broken bed', 'solved'),
(2, 102, 2017332067, '2022-04-02', 'Broken chair', 'solved'),
(3, 103, 2018335067, '2022-04-16', 'Broken table', 'solved'),
(4, 201, 2017333069, '2022-04-04', 'Damaged light', 'solved'),
(5, 202, 2018335067, '2022-04-18', 'Broken bed', 'solved'),
(6, 205, 2018337005, '2022-04-12', 'Damaged Door Lock', 'unsolved'),
(7, 301, 2018337067, '2022-04-11', 'Broken bed', 'unsolved'),
(8, 302, 2018831026, '2022-03-16', 'Broken window glass', 'unsolved'),
(9, 303, 2018831029, '2022-04-06', 'Water filter needed', 'unsolved'),
(10, 401, 2018831090, '2022-04-07', 'Broken Water tap', 'unsolved'),
(11, 403, 2019333069, '2022-04-25', 'Broken chair', 'unsolved');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `IssueNo` int(10) DEFAULT NULL,
  `Withdraw_amount` int(10) DEFAULT NULL,
  `Bank_receipt_no` varchar(15) NOT NULL,
  `Note_date` date DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`IssueNo`, `Withdraw_amount`, `Bank_receipt_no`, `Note_date`, `Description`, `authority_id`) VALUES
(3, 500, '402786', '2022-04-20', 'Bought a Table', 2),
(4, 200, '430086', '2022-04-20', 'Bought a Light Bulb', 3),
(1, 1000, '432556', '2022-04-12', 'Bought a Bed', 2),
(2, 500, '432786', '2022-04-12', 'Bought a Chair', 2),
(5, 1000, '432856', '2022-04-12', 'Bought a Bed', 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment_record`
--

CREATE TABLE `payment_record` (
  `Name` varchar(20) DEFAULT NULL,
  `RegNo` int(10) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL,
  `Bank_recipt_no` varchar(20) NOT NULL,
  `Payment_date` date DEFAULT NULL,
  `Expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reciept`
--

CREATE TABLE `reciept` (
  `VoucherNo` varchar(10) NOT NULL,
  `Amount` int(10) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `IssueNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reciept`
--

INSERT INTO `reciept` (`VoucherNo`, `Amount`, `Address`, `Description`, `IssueNo`) VALUES
('01', 1000, 'Ma Bedding', 'Bought a bed', 1),
('02', 500, 'Ma Furniture', 'Bought a chair', 2),
('03', 500, 'Ma Furniture', 'Bought a table', 3),
('04', 200, 'Ma Electronics', 'Bought a light bulb', 4),
('05', 1000, 'Ma Bedding', 'Bought a bed', 5);

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

CREATE TABLE `resident` (
  `Name` varchar(20) DEFAULT NULL,
  `RegNo` int(10) DEFAULT NULL,
  `RoomNo` int(3) DEFAULT NULL,
  `Admission_date` date DEFAULT NULL,
  `Expire_date` date DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Studentship_expiration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resident`
--

INSERT INTO `resident` (`Name`, `RegNo`, `RoomNo`, `Admission_date`, `Expire_date`, `Department`, `Studentship_expiration`) VALUES
('Emon', 2017451044, 105, '2018-01-01', '2019-01-01', 'GEB', '2022-01-01'),
('Akib Laam', 2017831048, 202, '2018-01-01', '2019-01-01', 'FET', '2022-01-01'),
('Arnab Saha', 2017831044, 206, '2018-01-01', '2019-01-01', 'MEE', '2022-01-01'),
('Autul', 2017831040, 201, '2018-01-01', '2019-01-01', 'MAT', '2022-01-01'),
('Rahat', 2018831044, 105, '2019-01-01', '2020-01-01', 'SWE', '2023-01-01'),
('Avishek', 2017831009, 301, '2018-01-01', '2019-01-01', 'PHY', '2022-01-01'),
('Fahim', 2017831008, 302, '2018-01-01', '2019-01-01', 'SWE', '2022-01-01'),
('Durjoy', 2017831009, 303, '2018-01-01', '2019-01-01', 'CHE', '2022-01-01'),
(' Rakib ', 2017831010, 304, '2018-01-01', '2019-01-01', 'FET', '2022-01-01'),
(' Gourav ', 2017831011, 305, '2018-01-01', '2019-01-01', 'GEB', '2022-01-01'),
(' Rafid ', 2017831013, 102, '2019-01-01', '2020-01-01', 'ENG', '2023-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` int(3) NOT NULL,
  `Block` varchar(3) DEFAULT NULL,
  `Floor` int(3) DEFAULT NULL,
  `Capacity` int(3) DEFAULT NULL,
  `Resident_number` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `Block`, `Floor`, `Capacity`, `Resident_number`) VALUES
(101, 'A', 1, 4, 0),
(102, 'A', 1, 4, 1),
(103, 'B', 1, 4, 0),
(104, 'A', 1, 4, 0),
(105, 'B', 1, 4, 2),
(106, 'B', 1, 4, 0),
(201, 'A', 2, 4, 1),
(202, 'A', 2, 4, 1),
(203, 'B', 2, 3, 0),
(204, 'A', 2, 3, 0),
(205, 'B', 2, 4, 0),
(206, 'B', 2, 4, 1),
(301, 'A', 3, 4, 1),
(302, 'A', 3, 4, 1),
(303, 'B', 3, 3, 1),
(304, 'A', 3, 3, 1),
(305, 'B', 3, 4, 1),
(306, 'B', 3, 4, 0),
(401, 'A', 4, 3, 0),
(402, 'A', 4, 4, 0),
(403, 'B', 4, 4, 0),
(404, 'A', 4, 4, 0),
(405, 'B', 4, 4, 0),
(406, 'B', 4, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_application`
--

CREATE TABLE `student_application` (
  `Name` varchar(255) DEFAULT NULL,
  `RegNo` int(10) NOT NULL,
  `PhoneNo` varchar(14) DEFAULT NULL,
  `Father_name` varchar(255) DEFAULT NULL,
  `Mother_name` varchar(255) DEFAULT NULL,
  `Permanent_address` varchar(255) DEFAULT NULL,
  `Present_address` varchar(255) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Semester` int(2) DEFAULT NULL,
  `Last_result` float DEFAULT NULL,
  `Merit_position` int(10) DEFAULT NULL,
  `Approval_status` varchar(20) DEFAULT NULL,
  `Addmission_year` int(5) DEFAULT NULL,
  `Session` varchar(10) DEFAULT NULL,
  `Application_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_application`
--

INSERT INTO `student_application` (`Name`, `RegNo`, `PhoneNo`, `Father_name`, `Mother_name`, `Permanent_address`, `Present_address`, `Department`, `Semester`, `Last_result`, `Merit_position`, `Approval_status`, `Addmission_year`, `Session`, `Application_date`) VALUES
('Farhan Mahi', 2017330045, '01760727456', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'CSE', 7, 3.31, 1235, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Fahim Efto', 2017331067, '01760727123', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'EEE', 7, 3.35, 213, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Zubayer Hossain', 2017332067, '01760727234', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'CEE', 7, 3.43, 124, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Prapty Roy', 2017333067, '01760727345', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'CEP', 7, 3.53, 235, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Ahnaf Shariar', 2017333069, '01760727554', 'A.K.M Azizul Islam', 'Lata Yasmin', 'Mymensingh', 'Sylhet', 'FES', 7, 3.55, 2920, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Arif Shuvo', 2017334067, '01760727567', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'GEB', 7, 3.63, 2352, 'Pending', 2017, '2017-18', '2022-05-24 06:47:27'),
('Bipul Karmokar', 2017433069, '01760727554', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'FES', 7, 3.15, 120, 'submitted', 2016, '2016-17', '2022-05-24 06:46:55'),
('Emon', 2017451044, '01762891245', 'Abbas Shikder', 'Kulsuma Begum', 'Khulna', 'Sylhet', 'GEB', 7, 3.38, 2011, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
('Riddhiman Debnath', 2017533055, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 7, 3.45, 172, 'submitted', 2016, '2016-17', '2022-05-24 06:46:55'),
('Ariful Islam', 2017533057, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 7, 3.45, 1720, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Mahin Abid', 2017533069, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 7, 3.55, 1020, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Rafid Noor', 2017733069, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 7, 3.25, 1020, 'submitted', 2017, '2017-18', '2022-05-24 06:46:55'),
('Fahim', 2017831008, '01992356718', 'Abu karim', 'Abu Hasnat', 'Barishal', 'Sylhet', 'SWE', 7, 2.98, 883, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
('Durjoy', 2017831009, '01723167834', 'Abdur Rahman', 'ZIna Begum', 'Cumilla', 'Sylhet', 'CHE', 7, 3.66, 5099, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
(' Rakib ', 2017831010, '01317893310', 'Sayem Haque', 'Rina HAque', 'Bandarban', 'Sylhet', ' FET ', 7, 3.76, 1084, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
(' Gourav ', 2017831011, '01824536719', 'Biman Saha', 'Bithi Saha', 'Barishal', 'Sylhet', ' GEB ', 7, 3.1, 2145, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
(' Rafid ', 2017831013, '01561234178', 'Khaled Mahmud', 'Anju Akter', 'Khulna', 'Sylhet', ' ENG ', 7, 3.16, 5231, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
('Avishek', 2017831021, '01764231456', 'Sumon Dey', 'Kirti Dey', 'Chattogram', 'Sylhet', 'PHY', 7, 3.57, 3456, 'Pending', 2017, '2017-18', '2022-05-24 06:47:27'),
('Autul', 2017831040, '01893124567', 'Md.Shakil ', 'Fatema Karim', 'Noakhali', 'Sylhet', 'MAT', 7, 3.69, 3421, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
('Arnab Saha', 2017831044, '01516782910', 'Pritom Saha', 'Tithi Shaha', 'Dhaka', 'Sylhet', 'MEE', 7, 3.03, 1985, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
('Akib Laam', 2017831048, '0198123433', 'Rakib Laam', 'Mina Akter', 'Khulna', 'Sylhet', 'FET', 7, 2.97, 2122, 'Approved', 2017, '2017-18', '2022-05-24 07:16:45'),
('kishowar Sadaf', 2018335067, '01760727456', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'BMB', 5, 3.38, 346, 'submitted', 2018, '2018-19', '2022-05-24 06:46:55'),
('Fariha Tasnim', 2018337005, '01760727534', 'MD. Akhtar Hossain', 'Rowshan Ara', 'Manikganj', 'Sylhet', 'FET', 5, 3.53, 1357, 'Pending', 2018, '2018-19', '2022-05-24 06:49:46'),
('Iftekhar Fuad', 2018337067, '01760727897', 'Karim Mahmud', 'Radia Khatun', 'Dhaka', 'Sylhet', 'OCG', 5, 3.73, 3463, 'Pending', 2018, '2018-19', '2022-05-24 06:49:46'),
('Navid Hasan', 2018831026, '01760725456', 'Kamruzzaman', 'Nargis Sultana', 'Jashore', 'Sylhet', 'SWE', 5, 3.53, 810, 'Pending', 2018, '2018-19', '2022-05-24 06:49:46'),
('Nishat Tafannum', 2018831029, '01456725654', 'Rahim Ali', 'Sadia Akhter', 'Chattogram', 'Sylhet', 'SWE', 5, 3.63, 810, 'Pending', 2018, '2018-19', '2022-05-24 06:49:46'),
('Rahat', 2018831044, '01883125678', 'Rahim Ali', 'Kulsuma Akter', 'Dhaka', 'Sylhet', 'SWE', 5, 3.76, 910, 'Approved', 2018, '2018-19', '2022-05-24 07:16:45'),
('Sourav Ahmed', 2018831068, '01760725654', 'Moslem Uddin Ahmed', 'Mashuara Ahmed', 'Manikganj', 'Sylhet', 'SWE', 5, 3.5, 920, 'submitted', 2018, '2018-19', '2022-05-24 06:46:55'),
('Sourav Rahman', 2018831090, '01760755654', 'Moslem Uddin Ahmed', 'Mashuara Ahmed', 'Manikganj', 'Sylhet', 'SWE', 5, 3.5, 920, 'submitted', 2018, '2018-19', '2022-05-24 06:46:55'),
('Mahanur Rahman', 2019331043, '01560727554', 'Kashem Ali', 'Sabana Akhter', 'Potuakhali', 'Sylhet', 'CSE', 3, 3.75, 220, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Raef Al Hasan', 2019333069, '01760727554', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'FES', 3, 3.15, 1210, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Tamjid Rahman', 2019338067, '01760743727', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'PME', 3, 3.93, 2372, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Jamshed Chowdhury', 2019339067, '01760678727', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'CEE', 3, 3.83, 2345, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Geroge Lincoln', 2019444067, '01760727567', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'FET', 3, 3.3, 2455, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Maruf Ahmed', 2019446067, '01760456727', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'ECO', 3, 3.12, 1234, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Prottoy Ahmed', 2019533057, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 3, 3.45, 1072, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Akash Ahmed', 2019533068, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 3, 3.25, 127, 'submitted', 2019, '2019-20', '2022-05-24 06:46:55'),
('Anindo Sarkar', 2020333069, '01760727554', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'FES', 1, 0, 3456, 'submitted', 2020, '2020-21', '2022-05-24 06:46:55'),
('Suhaib Ahmed', 2020445067, '01769670727', 'Karim Ali', 'Radia Akhter', 'Chattogram', 'Sylhet', 'PHY', 1, 0, 2354, 'submitted', 2020, '2020-21', '2022-05-24 06:46:55'),
('Emon Chowdhury', 2020447067, '01760486727', 'Karim Ali', 'Radia Akhter', 'Chattogram', 'Sylhet', 'CHE', 1, 0, 865, 'submitted', 2020, '2020-21', '2022-05-24 06:46:55'),
('Masud Arsalan', 2020449067, '01760679727', 'Karim Ali', 'Radia Akhter', 'Chattogram', 'Sylhet', 'EEE', 1, 0, 967, 'submitted', 2020, '2020-21', '2022-05-24 06:46:55'),
('Mahadi Mahi', 2020533057, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 1, 0, 4, 'submitted', 2020, '2020-21', '2022-05-24 06:46:55'),
('Shawon haque', 2020533068, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 1, 0, 1002, 'submitted', 2020, '2020-21', '2022-05-24 06:46:55'),
('Prottoy Roy', 2020831001, '01760727754', 'Ali Seikh', 'halima Khatun', 'Manikgang', 'Sylhet', 'SWE', 1, 0, 520, 'submitted', 2020, '2020-21', '2022-05-24 06:46:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_student`
--
ALTER TABLE `accepted_student`
  ADD KEY `RegNo` (`RegNo`),
  ADD KEY `Allocated_room` (`Allocated_room`),
  ADD KEY `authority_id` (`authority_id`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD KEY `authority_id` (`authority_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD KEY `VoucherNo` (`VoucherNo`),
  ADD KEY `Bank_receipt_no` (`Bank_receipt_no`),
  ADD KEY `authority_id` (`authority_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`IssueNo`),
  ADD KEY `RoomNo` (`RoomNo`),
  ADD KEY `RegNo` (`RegNo`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`Bank_receipt_no`),
  ADD KEY `IssueNo` (`IssueNo`),
  ADD KEY `authority_id` (`authority_id`);

--
-- Indexes for table `payment_record`
--
ALTER TABLE `payment_record`
  ADD PRIMARY KEY (`Bank_recipt_no`),
  ADD KEY `RegNo` (`RegNo`);

--
-- Indexes for table `reciept`
--
ALTER TABLE `reciept`
  ADD PRIMARY KEY (`VoucherNo`),
  ADD KEY `IssueNo` (`IssueNo`);

--
-- Indexes for table `resident`
--
ALTER TABLE `resident`
  ADD KEY `RegNo` (`RegNo`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `student_application`
--
ALTER TABLE `student_application`
  ADD PRIMARY KEY (`RegNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accepted_student`
--
ALTER TABLE `accepted_student`
  ADD CONSTRAINT `accepted_student_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`),
  ADD CONSTRAINT `accepted_student_ibfk_2` FOREIGN KEY (`Allocated_room`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `accepted_student_ibfk_3` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD CONSTRAINT `canteen_staff_ibfk_1` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`VoucherNo`) REFERENCES `reciept` (`VoucherNo`),
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`Bank_receipt_no`) REFERENCES `note` (`Bank_receipt_no`),
  ADD CONSTRAINT `expenses_ibfk_3` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`IssueNo`) REFERENCES `issues` (`IssueNo`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `payment_record`
--
ALTER TABLE `payment_record`
  ADD CONSTRAINT `payment_record_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`);

--
-- Constraints for table `reciept`
--
ALTER TABLE `reciept`
  ADD CONSTRAINT `reciept_ibfk_1` FOREIGN KEY (`IssueNo`) REFERENCES `issues` (`IssueNo`);

--
-- Constraints for table `resident`
--
ALTER TABLE `resident`
  ADD CONSTRAINT `resident_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`),
  ADD CONSTRAINT `resident_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
