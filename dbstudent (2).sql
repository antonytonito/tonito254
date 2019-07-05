-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 06:19 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbstudent`
--

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `academic_id` int(10) UNSIGNED NOT NULL,
  `academic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`academic_id`, `academic`) VALUES
(1, '2011-2012'),
(2, '2012-2013'),
(3, '2013-2014'),
(4, '2014-2015'),
(6, '2015-2016'),
(7, '2016-2017'),
(8, '2017-2018'),
(13, '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(10) UNSIGNED NOT NULL,
  `batch` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `batch`) VALUES
(1, 'GRADE 4-6'),
(2, 'GRADE 1-3'),
(3, 'PRE 1-2');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(10) UNSIGNED NOT NULL,
  `academic_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `academic_id`, `level_id`, `shift_id`, `time_id`, `group_id`, `batch_id`, `start_date`, `end_date`, `active`) VALUES
(4, 3, 7, 4, 4, 4, 4, '2011-11-05', '2013-11-01', 4),
(30, 8, 3, 2, 1, 4, 2, '2017-11-07', '2017-12-06', 1),
(32, 8, 2, 2, 3, 3, 1, '2018-01-02', '2018-04-12', 1),
(39, 8, 6, 1, 2, 2, 1, '2017-11-05', '2017-11-18', 1),
(40, 6, 4, 1, 3, 2, 1, '2017-11-05', '2017-11-30', 1),
(41, 6, 8, 1, 3, 2, 1, '2017-11-05', '2017-11-30', 1),
(43, 13, 1, 2, 1, 1, 1, '2018-01-02', '2018-04-12', 1),
(44, 13, 1, 2, 1, 3, 1, '2018-01-02', '2018-04-12', 1),
(47, 13, 1, 2, 1, 2, 1, '2018-01-02', '2018-04-12', 1),
(48, 13, 2, 2, 1, 1, 1, '2018-01-02', '2018-04-12', 1),
(50, 13, 2, 2, 1, 2, 1, '2018-01-02', '2018-04-12', 1),
(53, 13, 3, 2, 1, 1, 1, '2018-01-02', '2018-04-12', 1),
(54, 13, 3, 2, 1, 2, 1, '2017-01-02', '2018-04-05', 1),
(55, 13, 3, 2, 1, 3, 1, '2018-01-02', '2018-04-12', 1),
(56, 13, 4, 1, 1, 1, 2, '2018-01-02', '2018-04-12', 1),
(57, 13, 4, 1, 2, 1, 2, '2017-01-02', '2018-04-12', 1),
(75, 13, 4, 1, 2, 3, 2, '2018-01-02', '2018-04-12', 1),
(81, 27, 1, 1, 3, 2, 1, '2017-11-01', '2017-11-30', 1),
(82, 27, 1, 1, 3, 2, 1, '2017-11-01', '2012-07-25', 1),
(83, 13, 4, 1, 2, 2, 2, '2018-01-02', '2018-04-12', 1),
(84, 13, 5, 1, 1, 3, 2, '2018-01-02', '2018-04-12', 1),
(85, 13, 5, 1, 1, 1, 2, '2018-01-02', '2018-04-12', 1),
(86, 30, 1, 2, 1, 1, 2, '2017-11-01', '2017-11-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`) VALUES
(1, 'Maths'),
(2, 'Eng');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(10) UNSIGNED NOT NULL,
  `level_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `fee_heading` varchar(100) NOT NULL,
  `fee_type_id` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `level_id`, `academic_id`, `fee_heading`, `fee_type_id`, `amount`) VALUES
(1, 1, 7, 'Fees', 1, 8000),
(2, 2, 13, 'Fees', 1, 9500),
(3, 3, 3, 'Fees', 1, 8500),
(4, 4, 4, 'Fees', 1, 8000),
(5, 5, 6, 'Fees', 1, 6500),
(6, 6, 8, 'Fees', 1, 7180),
(7, 7, 14, 'Fees', 1, 9500);

-- --------------------------------------------------------

--
-- Table structure for table `feetypes`
--

CREATE TABLE `feetypes` (
  `fee_type_id` int(11) UNSIGNED NOT NULL,
  `fee_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feetypes`
--

INSERT INTO `feetypes` (`fee_type_id`, `fee_type`) VALUES
(1, 'school fee');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `groups` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `groups`) VALUES
(1, 'Blue'),
(2, 'Yellow'),
(3, 'Green');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `level_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`level_id`, `program_id`, `level`, `description`) VALUES
(1, 1, 'Middle School Education - Upper Primary', ''),
(2, 2, 'Middle School Education - Upper Primary', ''),
(3, 3, 'Middle School Education - Upper Primary', ''),
(4, 4, 'Early Years Education - Lower Primary', ''),
(5, 5, 'Early Years Education - Lower Primary', ''),
(6, 6, 'Early Years Education - Lower Primary', ''),
(7, 7, 'Early Years Education - Pre Primary', ''),
(8, 8, 'Early Years Education - Pre Primary', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2017_11_03_122136_create_roles_table', 1),
(9, '2017_11_03_122529_create_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `program` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program`, `description`) VALUES
(1, 'Grade 6', 'Graduates of primary school Grade 6 shall join lower secondary at Grade 7.'),
(2, 'Grade 5', 'Graduates of primary school Grade 4 shall join lower secondary at Grade 5.'),
(3, 'Grade 4', 'Middle School Education - Upper Primary'),
(4, 'Grade 3', 'Early Years Education - Lower Primary'),
(5, 'Grade 2', 'Early Years Education - Lower Primary'),
(6, 'Grade 1', 'Early Years Education - Lower Primary'),
(7, 'Pre-Primary 2', 'Early Years Education - Pre Primary'),
(8, 'Pre-Primary 1', 'Early Years Education - Pre Primary ');

-- --------------------------------------------------------

--
-- Table structure for table `receiptdetails`
--

CREATE TABLE `receiptdetails` (
  `receipt_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receiptdetails`
--

INSERT INTO `receiptdetails` (`receipt_id`, `transact_id`, `student_id`) VALUES
(1, 33, 32),
(2, 34, 32),
(3, 35, 34),
(4, 36, 34),
(5, 37, 37),
(6, 38, 37),
(7, 39, 37),
(8, 40, 37),
(9, 41, 37),
(10, 42, 37),
(11, 43, 37),
(12, 44, 37),
(13, 45, 37),
(14, 46, 37),
(15, 47, 37),
(16, 48, 39),
(17, 49, 39),
(18, 50, 39),
(19, 51, 41),
(20, 52, 41),
(21, 53, 41),
(22, 54, 42),
(23, 55, 42),
(24, 56, 44),
(25, 57, 45),
(26, 58, 45),
(27, 59, 47),
(28, 60, 47),
(29, 61, 48),
(30, 62, 48),
(31, 63, 50),
(32, 64, 50),
(33, 65, 50),
(34, 66, 50),
(35, 67, 51),
(36, 68, 51),
(37, 69, 62),
(38, 70, 61),
(39, 71, 61),
(40, 72, 65),
(41, 73, 65),
(42, 74, 65);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`receipt_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Receptionist', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'CEO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `shift_id` int(10) UNSIGNED NOT NULL,
  `shift` varchar(10) NOT NULL,
  `level_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`shift_id`, `shift`, `level_id`) VALUES
(1, 'Half-day', 3),
(2, 'Full-day', 1);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `status_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`status_id`, `student_id`, `class_id`) VALUES
(2, 4, 2),
(4, 6, 0),
(5, 7, 0),
(6, 8, 0),
(7, 9, 0),
(8, 10, 0),
(10, 12, 3),
(11, 13, 1),
(12, 14, 1),
(13, 17, 2),
(14, 19, 2),
(15, 20, 2),
(16, 21, 5),
(17, 22, 5),
(18, 23, 3),
(19, 25, 6),
(20, 27, 1),
(21, 28, 1),
(22, 29, 5),
(23, 30, 5),
(24, 31, 33),
(25, 32, 42),
(26, 34, 47),
(27, 35, 39),
(28, 36, 55),
(29, 37, 47),
(30, 39, 50),
(31, 41, 47),
(32, 42, 47),
(33, 44, 47),
(34, 45, 47),
(35, 47, 47),
(36, 48, 47),
(37, 49, 75),
(38, 50, 54),
(39, 51, 77),
(40, 52, 77),
(41, 53, 77),
(42, 54, 77),
(43, 55, 77),
(44, 56, 77),
(45, 58, 47),
(46, 59, 77),
(47, 60, 47),
(48, 61, 47),
(49, 62, 47),
(50, 63, 47),
(51, 64, 83),
(52, 65, 85);

-- --------------------------------------------------------

--
-- Table structure for table `studentfees`
--

CREATE TABLE `studentfees` (
  `s_fee_id` int(10) UNSIGNED NOT NULL,
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentfees`
--

INSERT INTO `studentfees` (`s_fee_id`, `fee_id`, `student_id`, `level_id`, `amount`, `discount`) VALUES
(15, 2, 32, 2, 0, 100),
(16, 1, 34, 1, 8000, 0),
(17, 1, 37, 1, 8000, 0),
(18, 2, 39, 2, 9500, 0),
(19, 1, 41, 1, 8000, 0),
(20, 1, 42, 1, 6400, 20),
(21, 1, 44, 1, 8000, 0),
(22, 1, 45, 1, 7200, 10),
(23, 1, 47, 1, 6400, 20),
(24, 1, 48, 1, 8000, 0),
(25, 3, 50, 3, 8500, 0),
(26, 3, 50, 3, 8500, 0),
(27, 4, 51, 4, 6800, 15),
(28, 1, 62, 1, 8000, 0),
(29, 1, 61, 1, 8000, 0),
(30, 5, 65, 5, 6500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `dob` date NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `email` int(50) DEFAULT NULL,
  `upi` varchar(50) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `admission_no` varchar(50) NOT NULL,
  `passport` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `village` varchar(50) DEFAULT NULL,
  `commune` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `current_address` int(200) DEFAULT NULL,
  `dateregistered` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `photo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `sex`, `dob`, `description`, `email`, `upi`, `status`, `nationality`, `admission_no`, `passport`, `phone`, `village`, `commune`, `district`, `province`, `current_address`, `dateregistered`, `user_id`, `photo`) VALUES
(9, 'Hassan', 'Samia', 1, '2017-11-07', '234234', NULL, '1434', 'SOS Student', NULL, '783241', '2342', '234', NULL, NULL, NULL, NULL, NULL, '2017-05-13', 4, NULL),
(11, 'Matiangi', 'Fred', 0, '2017-11-07', '12093487', NULL, '1434', 'Private Student', NULL, '783241', '8104', '07345678987', NULL, NULL, NULL, NULL, NULL, '2017-05-13', 4, NULL),
(12, 'Ben', 'Mugaka', 0, '1996-11-12', 'he is well disciplined and has good behaviour', NULL, '784567', 'SOS Student', 'Kenya', '785645', NULL, '0723445654', NULL, NULL, NULL, NULL, NULL, '2017-06-13', 4, NULL),
(13, 'Wafula', 'Adams', 0, '2002-11-03', 'He is an average student', NULL, '23454', 'SOS Student', 'Kenyan', '45678', NULL, '0734567765', NULL, NULL, NULL, NULL, NULL, '2017-11-13', 4, ''),
(14, 'Adhiambo', 'Molly', 0, '2012-04-03', 'She is well behvaed and sisciplined a staunch christian who never misses church services on sundays.', NULL, '90009', 'Private Student', 'Luopean', '5609', '07812344', '0718900967', NULL, NULL, NULL, NULL, NULL, '2017-01-16', 4, ''),
(21, 'Miguna', 'Miguna', 0, '2008-11-06', 'He is fluent in English', NULL, '452553', 'SOS Student', 'Kenyan', '2323', '3456533', '0722332413', NULL, NULL, NULL, NULL, NULL, '2017-02-18', 4, ''),
(22, 'Wenger', 'Arsene', 1, '2008-11-06', 'He is fluent in English', NULL, '452553', 'Private Student', 'Kenyan', '2323', '3456533', '0722332413', NULL, NULL, NULL, NULL, NULL, '2017-02-18', 4, ''),
(23, 'George', 'Thuo', 0, '1997-05-19', 'He is very bright', NULL, '67hygyur', 'SOS Student', 'Kenyan', '3523543', '87686453', '0777890986', 'Rongai', 'Nakuru', 'Nakuru', 'Nakuru', 456563, '2017-04-18', 4, ''),
(24, 'Ngunyi', 'Mutahi', 0, '2008-11-30', 'He is an average student', NULL, '764564', 'SOS Student', 'Ethiopian', '123542', '45642455446', '0712345543', NULL, NULL, NULL, NULL, NULL, '2017-09-18', 4, ''),
(25, 'Dr', 'Bernard', 0, '2010-11-02', 'He is very bright', NULL, '12454632', 'SOS Student', 'Kenyan', '234', '121212', '0723452254', NULL, NULL, NULL, NULL, NULL, '2017-05-21', 4, ''),
(27, 'Georgina', 'Akinyi', 1, '1997-11-10', 'She is academically gifted', NULL, '654345', 'SOS Student', 'Kenyan', '2432', '436543', '4333345', NULL, NULL, NULL, NULL, NULL, '2017-05-21', 4, ''),
(28, 'Sylvia', 'Wendo', 1, '2007-11-12', 'She is academically gifted', NULL, '4332324', 'SOS Student', 'Kenyan', '83481', 'PPqwer12', '0752342', NULL, NULL, NULL, NULL, NULL, '2017-11-21', 4, ''),
(29, 'nzul', 'pk', 0, '2017-11-06', 'He is very bright', NULL, '454', 'SOS Student', 'Kenyan', '123', '355', '54546', NULL, NULL, NULL, NULL, NULL, '2017-05-21', 4, ''),
(30, 'sdg', 'dsgd', 0, '2017-11-07', 'sg', NULL, 'dfs', 'Private Student', 'sas', 'd', NULL, 'sdfgds', NULL, NULL, NULL, NULL, NULL, '2017-08-21', 4, '45767.2017-11-21.1511294870.jpg'),
(31, 'Too', 'Pascal', 0, '2008-07-13', 'he is well disciplined and has good behaviour', NULL, '23546554', 'SOS Student', 'Kenyan', '234543', NULL, '0712345543', NULL, NULL, NULL, NULL, NULL, '2017-07-22', 4, '82232.2017-11-22.1511347331.jpg'),
(32, 'Tomno', 'Leornard', 0, '2007-11-25', 'He is very bright', NULL, '1245432', 'SOS Student', 'Kenyan', '2242234', NULL, '072332123', NULL, NULL, NULL, NULL, NULL, '2017-11-22', 4, ''),
(33, 'Aukot', 'Ekuru', 0, '2008-01-23', 'He is fluent in English', NULL, '55433423', 'SOS Student', 'Kenyan', '543254', NULL, '07231123143', NULL, NULL, NULL, NULL, NULL, '2017-07-22', 4, '81116.2017-11-22.1511354193.jpg'),
(34, 'Aukot', 'Ekuru', 0, '2008-01-23', 'He is fluent in English', NULL, '55433423', 'SOS Student', 'Kenyan', '543254', NULL, '07231123143', NULL, NULL, NULL, NULL, NULL, '2017-11-22', 4, '33697.2017-11-22.1511354249.jpg'),
(35, 'Peter', 'Ngesa', 0, '2007-01-03', 'He is very bright', NULL, '2042345', 'SOS Student', 'Kenyan', '83481', NULL, '124352423', NULL, NULL, NULL, NULL, NULL, '2017-11-22', 4, '30283.2017-11-22.1511359306.jpg'),
(36, 'Wanigi', 'Jimmy', 0, '2007-01-16', 'He was promoted to the next class', NULL, '45323542', 'SOS Student', 'Kenyan', '3453445', NULL, '0723432234', NULL, NULL, NULL, NULL, NULL, '2017-11-22', 4, '56241.2017-11-22.1511360008.jpg'),
(37, 'Mailu', 'Cleopus', 0, '2002-01-23', 'He is very bright', NULL, '222111', 'SOS Student', 'Kenyan', '1234234', NULL, '0732445245', NULL, NULL, NULL, NULL, NULL, '2017-11-22', 4, '67589.2017-11-22.1511383951.jpg'),
(38, 'Tobiko', 'Kiriako', 0, '1998-01-07', 'He is a smart guy', NULL, '453354', 'SOS Student', 'Kenyan', '23423234', NULL, '0723423542', NULL, NULL, NULL, NULL, NULL, '2017-11-23', 4, '28593.2017-11-23.1511440448.jpg'),
(39, 'Tobiko', 'Kiriako', 0, '2007-01-16', 'He is an average student', NULL, '12435', 'SOS Student', 'Kenyan', '34535323', NULL, '0734981124', NULL, NULL, NULL, NULL, NULL, '2017-11-23', 4, '26614.2017-11-23.1511448677.jpg'),
(40, 'Kanjama', 'Charles', 0, '2001-05-02', 'he is well disciplined and has good behaviour', NULL, '32443', '2', 'Kenyan', '450912', NULL, '071233523423', NULL, NULL, NULL, NULL, NULL, '2017-11-23', 4, '17888.2017-11-23.1511462495.jpg'),
(41, 'Kanjama', 'Charles', 0, '2001-05-02', 'he is well disciplined and has good behaviour', NULL, '32443', '2', 'Kenyan', '450912', NULL, '071233523423', NULL, NULL, NULL, NULL, NULL, '2017-11-23', 4, '30478.2017-11-23.1511462513.jpg'),
(42, 'Ethuro', 'Ekwe', 0, '2002-01-17', 'he is well disciplined and has good behaviour', NULL, '322233412', '2', 'Kenyan', '323212', NULL, '0723345543', NULL, NULL, NULL, NULL, NULL, '2017-11-24', 4, '33712.2017-11-24.1511528494.jpg'),
(43, 'Mike', 'Sonko', 0, '2009-01-21', 'he is well disciplined and has good behaviour', NULL, '8734509', '3', 'Kenyan', '233209', NULL, '0783421342', NULL, NULL, NULL, NULL, NULL, '2017-11-24', 4, '73870.2017-11-24.1511533788.jpg'),
(44, 'Mike', 'Sonko', 0, '2009-01-21', 'he is well disciplined and has good behaviour', NULL, '8734509', '3', 'Kenyan', '233209', NULL, '0783421342', NULL, NULL, NULL, NULL, NULL, '2017-11-24', 4, '33579.2017-11-24.1511533803.jpg'),
(45, 'Magdalene', 'Margaret Thatcher', 1, '2004-02-05', 'She was promoted to the next grade.', NULL, '8900003', '3', 'Kenyan', '234432', NULL, '0723435675', NULL, NULL, NULL, NULL, NULL, '2017-11-24', 4, '69080.2017-11-24.1511536617.jpg'),
(46, 'karuga', 'peter', 0, '2017-11-06', 'he is smart', NULL, '21342', '2', 'Kenyan', '123123', NULL, 'q34234', NULL, NULL, NULL, NULL, NULL, '2017-11-25', 4, '44889.2017-11-25.1511603392.jpg'),
(47, 'karuga', 'peter', 0, '2017-11-06', 'he is smart', NULL, '21342', '2', 'Kenyan', '123123', NULL, 'q34234', NULL, NULL, NULL, NULL, NULL, '2017-11-25', 4, '11151.2017-11-25.1511603411.jpg'),
(48, 'Nyongo', 'Anyang', 0, '2007-01-10', 'he is smart', NULL, '098898', '2', 'Kenyan', '342424', NULL, '0723435675', NULL, NULL, NULL, NULL, NULL, '2017-11-25', 4, '64651.2017-11-25.1511612945.jpg'),
(49, 'Muthoni', 'Doras', 1, '2005-10-13', 'She is academically gifted', NULL, '12344421', '3', 'Kenyan', '454576', NULL, '0734543345', NULL, NULL, NULL, NULL, NULL, '2017-11-26', 4, '73363.2017-11-26.1511647088.jpg'),
(50, 'Rutto', 'William Samoei', 0, '1999-01-26', 'He is academically gifted', NULL, '23341231', '3', 'Kenyan', '345678', NULL, '0734543122', NULL, NULL, NULL, NULL, NULL, '2017-11-26', 4, '60170.2017-11-26.1511673451.jpg'),
(51, 'Lesley', 'Burugu', 0, '2008-01-01', 'He is a brilliant boy. Was promoted to the next class', NULL, '090231343', '2', 'Kenyan', '123421', NULL, '0723423542', NULL, NULL, NULL, NULL, NULL, '2017-11-27', 4, '87971.2017-11-27.1511762395.jpg'),
(57, 'Silva', 'Phil Lahm', 0, '2008-03-18', 'He is an outstanding perfomer', NULL, '56657543', '2', 'Kenyan', '1234312', NULL, '097874634', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-27', 4, ''),
(58, 'Silva', 'Phil Lahm', 0, '2008-03-18', 'He is an outstanding perfomer', NULL, '56657543', '2', 'Kenyan', '1234312', NULL, '097874634', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-27', 4, ''),
(59, '342321', '2312', 0, '2009-11-23', '23423', NULL, '2342', '2', '2342', '32423', NULL, '234', '123', NULL, '1231', NULL, NULL, '2017-11-27', 4, '20222.2017-11-27.1511789145.jpg'),
(60, 'Njenga', 'Allan Mitch', 0, '2011-11-15', 'He is a brilliant boy. Was promoted to the next class', NULL, '3423124234', '2', 'Kenyan', '345434', NULL, '08354234', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-27', 4, '32129.2017-11-27.1511790386.jpg'),
(61, 'Kimani', 'Isaac', 0, '2014-11-04', 'She is academically gifted', NULL, '1231230981', '2', 'Kenyan', '323212', NULL, '07124317980', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-27', 4, ''),
(62, 'Amollo', 'Henry', 0, '2009-06-10', 'he is smart', NULL, '1234567890', '2', 'Kenyan', '678756', NULL, '0789856456', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-28', 4, '78214.2017-11-28.1511857261.jpg'),
(63, 'Ngeno', 'Mercy', 1, '2001-06-18', 'She is academically gifted', NULL, '9898983456', '3', 'Kenyan', '3423445', NULL, '0728975456', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-28', 15, '45087.2017-11-28.1511860990.jpg'),
(64, 'Ngeno', 'Mercy', 1, '2001-06-18', 'She is academically gifted', NULL, '6723451230', '3', 'Kenyan', '3423445', NULL, '0728975456', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-28', 15, '34763.2017-11-28.1511861078.jpg'),
(65, 'Nekesa', 'Mary', 1, '2008-02-13', 'She is academically gifted', NULL, '1234336789', '3', 'Kenyan', '3244332', NULL, '012462434', 'Nairobi', NULL, 'Nairobi', NULL, NULL, '2017-11-28', 4, '20005.2017-11-28.1511862368.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `time_id` int(10) UNSIGNED NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`time_id`, `time`) VALUES
(1, 'Term1'),
(2, 'Term2'),
(3, 'Term3');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transact_id` int(10) UNSIGNED NOT NULL,
  `transact_date` datetime NOT NULL,
  `fee_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `s_fee_id` int(10) UNSIGNED NOT NULL,
  `paid` float NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transact_id`, `transact_date`, `fee_id`, `user_id`, `student_id`, `s_fee_id`, `paid`, `remark`, `description`) VALUES
(5, '2017-01-18 08:48:59', 1, 4, 13, 12, 250, 'Completed', 'Ksh'),
(6, '2017-01-20 16:22:26', 1, 4, 13, 13, 250, NULL, NULL),
(7, '2017-01-21 10:37:19', 1, 4, 27, 13, 100, 'Incomplete', 'KCB Branch_Thika'),
(8, '2017-02-21 10:50:48', 1, 4, 27, 13, 50, NULL, NULL),
(9, '2017-02-21 11:06:18', 1, 4, 27, 13, 50, NULL, NULL),
(10, '2017-02-21 11:06:18', 1, 4, 27, 13, 50, NULL, NULL),
(11, '2017-02-21 11:12:21', 1, 4, 27, 13, 50, NULL, NULL),
(12, '2017-03-21 11:12:21', 1, 4, 27, 13, 50, 'Complete', 'KCB Branch_UpperHill'),
(13, '2017-03-21 11:41:43', 1, 4, 13, 12, 100, 'Incomplete', 'Paid by cash KCB Thika_Road'),
(14, '2017-04-21 11:43:45', 1, 4, 13, 12, 100, 'Incomplete', 'Paid by cash KCB Thika_Road'),
(15, '2017-04-21 11:44:32', 1, 4, 13, 12, 100, 'Incomplete', 'Paid by cash KCB Thika_Road'),
(16, '2017-04-21 11:49:21', 1, 4, 28, 14, 100, 'Incomplete', 'Cash Deposited'),
(17, '2017-04-21 11:50:01', 1, 4, 28, 14, 100, NULL, NULL),
(18, '2017-07-21 11:54:34', 1, 4, 28, 14, 150, 'Complete', 'Paid by Cheque'),
(19, '2017-07-21 11:54:34', 1, 4, 28, 14, 150, 'Complete', 'Paid by Cheque'),
(20, '2017-08-21 12:15:53', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(21, '2017-09-21 12:17:54', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(22, '2017-11-21 12:17:54', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(23, '2017-11-21 12:17:54', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(24, '2017-11-21 12:22:04', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(25, '2017-11-21 12:22:31', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(26, '2017-11-21 12:23:13', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(27, '2017-11-21 12:24:34', 1, 4, 28, 14, 150, NULL, NULL),
(28, '2017-11-21 12:26:05', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(29, '2017-11-21 12:26:05', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(30, '2017-11-21 12:34:57', 1, 4, 13, 12, 0, NULL, NULL),
(31, '2017-11-21 12:37:56', 1, 4, 28, 14, 150, 'Completed', 'Paid by Cheque'),
(32, '2017-11-22 01:07:59', 1, 4, 13, 12, 100, 'Ksh', 'Incomplete'),
(33, '2017-11-22 15:05:22', 2, 4, 32, 15, 0, 'Incomplete', 'not paid'),
(34, '2017-11-22 15:06:43', 2, 4, 32, 15, 10000, 'Incomplete', 'Paid by Cheque'),
(35, '2017-11-22 15:39:06', 1, 4, 34, 16, 2000, 'Incomplete', 'paid by cash'),
(36, '2017-11-22 15:47:01', 1, 4, 34, 16, 6000, 'Complete', 'cheque deposited'),
(47, '2017-11-23 15:11:22', 1, 4, 37, 17, 8000, 'Complete', 'deposited cash at KCB Thika Road'),
(51, '2017-11-23 21:41:53', 1, 4, 41, 19, 6960, 'Incomplete', 'deposited cash at KCB Thika Road'),
(52, '2017-11-23 21:44:11', 1, 4, 41, 19, 400, 'Incomplete', 'paid by cash from Mr Kimutai'),
(53, '2017-11-23 21:45:18', 1, 4, 41, 19, 1000, 'Overpaid', 'Paid via Mpesa sent by Mrs Teressa'),
(56, '2017-11-24 17:30:04', 1, 4, 44, 21, 8000, 'Com', NULL),
(57, '2017-11-24 18:16:57', 1, 4, 45, 22, 5000, 'Incomplete', 'She had a fee discount of 10%, and deposited 5000'),
(58, '2017-11-24 18:20:30', 1, 4, 45, 22, 3000, 'Overpaid', 'paid by cheque'),
(59, '2017-11-25 12:50:11', 1, 4, 47, 23, 5000, 'Incomplete', 'paid by cheque'),
(60, '2017-11-25 14:30:39', 1, 4, 47, 23, 100, NULL, NULL),
(61, '2017-11-25 15:29:28', 1, 4, 48, 24, 5000, 'Incomplete', 'Cash deposited at Cashier\'s office'),
(62, '2017-11-25 15:30:21', 1, 4, 48, 24, 5000, 'Overpaid', 'Bank statement given at cashier\'s office'),
(64, '2017-11-26 08:20:46', 3, 4, 50, 25, 5000, 'Incomplete', 'paid by cheque'),
(66, '2017-11-26 08:27:55', 3, 4, 50, 25, 10000, 'Overpaid', 'Cash deposited at KCB Branch'),
(67, '2017-11-27 09:01:56', 4, 4, 51, 27, 4000, 'Incomplete', 'Cash deposited at KCB Thika Road'),
(68, '2017-11-27 09:13:10', 4, 4, 51, 27, 4000, 'Overpaid', 'Cash deposited at Cashier\'s office'),
(69, '2017-11-28 11:21:02', 1, 4, 62, 28, 8000, 'complete', 'Cash deposited at KCB Thika Road'),
(70, '2017-11-28 11:58:26', 1, 14, 61, 29, 8000, NULL, NULL),
(74, '2017-11-28 12:55:00', 5, 4, 65, 30, 4000, 'Incomplete', 'Cash deposited at KCB Branch');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `password`, `email`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 'user', 'user', '$2y$10$KRQq.8jWohETqbwM9wFru.zfLa6FXW9s25LS2ibzbTV3PIjWL5fdy', 'user@gmail.com', 'H77DUjY3HjXRSoRdVmJqtfzzzN1ScS9s0ranOgQKJ96CJNZTpjh1tsVgKTa3', 1, '2017-11-04 05:33:14', '2017-11-04 05:33:14'),
(3, 1, 'seth', 'seth', '$2y$10$7c4Gh4ol9Qfh4vayJ.w.n.PAll23jYZVIWF6zfY7R0s/LF8d7EPRm', 'seth@gmail.com', 'qhkApIzQi43WBbzjY0fd6X2rXrYPLBJEVMMnhytPBZ04TyvSRDvqrKGu8GYC', 1, '2017-11-04 06:05:17', '2017-11-04 06:05:17'),
(4, 1, 'tonito', 'tonito', '$2y$10$TnU2wvMjRKGdhDH4kwtH1.RLnWAqFl0S88JClS1/plpEw/H3LC176', 'tonito@live.com', '5wBaHYB4bgbPVK8QebHZG6txaTOvIcVWo4lreenoJwXMCqeDfLoQc03ICggs', 1, '2017-11-07 04:06:02', '2017-11-07 04:06:02'),
(5, 2, 'Georgethuo', 'gt', '$2y$10$CMhNxNE8U0Cu90kwtM/vX.Xb8xhF4c6T4WH6iR4iZl0I4Zxy5/RJq', 'gt@gmail.com', 'Q3FNnBtdS6KyJiiTfX2A99fucmNMLsIrcFmoSOMTjRLoBKlOk1rI46tKO3kF', 1, '2017-11-26 11:34:51', '2017-11-26 11:34:51'),
(6, 4, 'sam', 'onyinsi', '$2y$10$NwA1IaHaIb65cHXwY0jOcOunUDHvSkyHoavviMHuUqY8TSv.Jk2QS', 'sam@live.com', 'wGlbUBGiNEkF6QL7tyj40lxgXwGMaNZTTGriO644dGLyF3iNdM8CZkRrGpgP', 1, '2017-11-27 06:47:45', '2017-11-27 06:47:45'),
(7, 1, 'mike', 'mike', '$2y$10$ezGM9xKgXJkhQUyN/aywzuLJQe5L.ZtegyiNWdGxxAy9hGZKugMZ6', 'mike@live.com', 'kHNQn5yOCr24SjFBYqgXAihvyiroxWVnPyn7bRvhrzDWERKKaAzdQX9GRjib', 1, '2017-11-27 07:11:30', '2017-11-27 07:11:30'),
(8, 4, 'john', 'john', '$2y$10$uQLqP.0Ek.CVvi3LGeayc.WfYw53GAZghJtH9A4fEDIpG0CR0olwy', 'john@live.com', 'YZjQS4qWnf9qFXGrtDILgGhDY1MfcfgrsjDdD6mesGGxesfmbJLDOJpKnZKl', 1, '2017-11-27 09:35:58', '2017-11-27 09:35:58'),
(11, 1, 'Phil Lahm', 'phil', '$2y$10$ev.gyZGXgpGrFOPS4hAsZetzybwnbiQ9qNXqgGjvTgdDNRcua7ZuK', 'phil@live.com', NULL, 1, '2017-11-27 12:29:43', '2017-11-27 12:29:43'),
(12, 2, 'Allan Omondi', 'Opiyo', '$2y$10$VJPUBtQ3QLBKoIZFlLqrQeLoRn0bErDuj2LtAEk7IXEH5mPSA/M0y', 'omondi@live.com', NULL, 2, '2017-11-27 20:02:36', '2017-11-27 20:02:36'),
(13, 2, 'Beatrice Nice', 'Beatrice', '$2y$10$v7suJs00.HQONEUuoXH6WOq68vX9OSuxv4ng3v.wDxZArd7vD/EZa', 'beatrice@live.com', 'EtizjBXnQUvsmJguPR40PNWzdmH0fLcYyMBxMWfTD4l05AP1eRggLem78QhS', 1, '2017-11-27 20:06:16', '2017-11-27 20:06:16'),
(14, 2, 'shadrack Meshack Abednego', 'shadrack', '$2y$10$tHSpsFiAnT9lOC24G.VHH.Xt2n8VJ/3fdIxmvQKbEDqlbxdk.2eQa', 'shadrack@sos.org', 'SqCnoBtklyrcqWsMzHnnuFWS7obUKzTVZYvl4Udl7tjC50vjYvC3mhHCs31b', 1, '2017-11-28 07:13:41', '2017-11-28 07:13:41'),
(15, 3, 'David', 'david', '$2y$10$duvdcX9nHIe2mgCBdWaRHeHLZ3gfBIr9ky7/XcDp2pecvdLIB2rZu', 'david@sos.org', 'tY6K6mq7RWVLBKpsVWfjnMQgBSRz0DMtonJFyGrtJUic37JdUgzBhBFlG77R', 1, '2017-11-28 09:08:30', '2017-11-28 09:08:30'),
(16, 4, 'Magufuli John', 'magufuli', '$2y$10$zamUAE942J9lhnTkU0dNw.RWOZ/AMWh1jdnUcKje4FWdeqTsCB9S6', 'magufuli@sos.org', 'yZdPQaV2bhVHRuPZgf8zFn996LOZCn2B1LHWzoRJzEZB5rrTGXORTS1zFEQR', 1, '2017-11-28 11:51:16', '2017-11-28 11:51:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`academic_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `feetypes`
--
ALTER TABLE `feetypes`
  ADD PRIMARY KEY (`fee_type_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `studentfees`
--
ALTER TABLE `studentfees`
  ADD PRIMARY KEY (`s_fee_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transact_id`),
  ADD KEY `s_fee_id` (`s_fee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `academic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feetypes`
--
ALTER TABLE `feetypes`
  MODIFY `fee_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `shift_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `status_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `studentfees`
--
ALTER TABLE `studentfees`
  MODIFY `s_fee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `time_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
