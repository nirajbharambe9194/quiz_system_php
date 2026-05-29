-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 12:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(4, '5b85857d00f34', '5b85857d0ab77'),
(5, '5b85857d333f0', '5b85857d391b2'),
(6, '5b85857d59559', '5b85857d69efd'),
(7, '5b85857d917d6', '5b85857d97980'),
(8, '5b85857db810f', '5b85857dbd701'),
(14, '61f6454c46b31', '61f6454c4889b'),
(15, '61f65b5a900fb', '61f65b5aa26d0'),
(16, '61f65b5ad0a08', '61f65b5ae0d74'),
(17, '61f65b5b1ad32', '61f65b5b3345b'),
(18, '61f65b5b697cd', '61f65b5b71cc1'),
(19, '61f65b5b9a68f', '61f65b5ba2c5f'),
(21, '6203f031d67f4', '6203f0320cbc2'),
(22, '6203f0323d96b', '6203f03248544'),
(23, '6203f032712e8', '6203f03281789'),
(24, '6203f032ace44', '6203f032b796e'),
(25, '6203f032eddb1', '6203f03304945'),
(26, '6208b9f25fb12', '6208b9f27219a'),
(27, '6208d8a4f0460', '6208d8a519234'),
(28, '6208e09bdbff1', '6208e09be9cdd');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
(2, '61f6302d5fff9', 'ramesh', 'ramesh@gmail.com', 'i like the quizz', 'i like the quiz\r\n', '2022-01-30', '07:29:01am'),
(3, '61f63f7f05048', 'prnay', 'prnay@gmail.com', 'i like quiz', 'thanks', '2022-01-30', '08:34:23am'),
(4, '61f6597265e05', 'PRACHI NALWADE', 'prachi@gmail.com', 'i like the quiz', 'i like the quiz', '2022-01-30', '10:25:06am'),
(5, '6203f14644448', 'prachi ', 'prachi@gmail.com', 'easy to  learn', 'easy to  learn ', '2022-02-09', '05:52:22pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(2, 'pranay', '5b85847bbe794', -2, 4, 0, 2, '2022-01-30 07:06:57', 1643526296, 'finished', 'true'),
(3, 'PRACHI', '5b85847bbe794', 3, 5, 2, 3, '2022-01-30 09:24:04', 1643534534, 'finished', 'true'),
(4, 'prachi', '61f65a87b747b', 10, 5, 5, 0, '2022-01-30 09:38:08', 1643535409, 'finished', 'true'),
(6, 'KANCHAN', '61f65a87b747b', 10, 5, 5, 0, '2022-01-30 09:55:45', 1643536482, 'finished', 'true'),
(8, 'prachi', '6203ecc4b9226', 8, 5, 4, 1, '2022-02-09 16:50:42', 1644425369, 'finished', 'true'),
(9, 'dhano', '6208b9a4dfd24', 1, 1, 1, 0, '2022-02-13 08:00:46', 1644739215, 'finished', 'true'),
(10, 'admin', '6208e066dac0c', 1, 1, 1, 0, '2022-02-16 11:40:22', 1645011597, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(13, '5b85857d00f34', ' Hello World!Hello World!', '5b85857d0ab77'),
(14, '5b85857d00f34', ' Hello World! * 2', '5b85857d0af5f'),
(15, '5b85857d00f34', 'Hello World!', '5b85857d0b347'),
(16, '5b85857d00f34', 'None of the above.', '5b85857d0b72f'),
(17, '5b85857d333f0', '( \'abcd\', 786 , 2.23, \'john\', 70.2 )', '5b85857d389e2'),
(18, '5b85857d333f0', 'abcd', '5b85857d38dca'),
(19, '5b85857d333f0', '(786, 2.23)', '5b85857d391b2'),
(20, '5b85857d333f0', 'None of the above.', '5b85857d3959a'),
(21, '5b85857d59559', 'int(x [,base])', '5b85857d69b15'),
(22, '5b85857d59559', 'long(x [,base] )', '5b85857d69efd'),
(23, '5b85857d59559', 'float(x)', '5b85857d6a2e5'),
(24, '5b85857d59559', 'str(x)', '5b85857d6a6cd'),
(25, '5b85857d917d6', 'unichr(x)', '5b85857d97980'),
(26, '5b85857d917d6', 'ord(x)', '5b85857d97d68'),
(27, '5b85857d917d6', 'hex(x)', '5b85857d98150'),
(28, '5b85857d917d6', 'oct(x)', '5b85857d98538'),
(29, '5b85857db810f', 'choice(seq)', '5b85857dbd701'),
(30, '5b85857db810f', 'randrange ([start,] stop [,step])', '5b85857dbdae9'),
(31, '5b85857db810f', 'random()', '5b85857dbded1'),
(32, '5b85857db810f', 'seed([x])', '5b85857dbe2b9'),
(53, '61f6454c46b31', '1', '61f6454c4889b'),
(54, '61f6454c46b31', '1', '61f6454c488a3'),
(55, '61f6454c46b31', '1', '61f6454c488a6'),
(56, '61f6454c46b31', '1', '61f6454c488a9'),
(57, '61f65b5a900fb', 'hyper text markup laguage', '61f65b5aa26d0'),
(58, '61f65b5a900fb', 'high text language', '61f65b5aa26d5'),
(59, '61f65b5a900fb', 'high markup lengh', '61f65b5aa26d6'),
(60, '61f65b5a900fb', 'high programing', '61f65b5aa26d7'),
(61, '61f65b5ad0a08', 'netbeans', '61f65b5ae0d6a'),
(62, '61f65b5ad0a08', 'microsoft', '61f65b5ae0d72'),
(63, '61f65b5ad0a08', 'sunmicrosystem', '61f65b5ae0d74'),
(64, '61f65b5ad0a08', 'google', '61f65b5ae0d75'),
(65, '61f65b5b1ad32', 'cascading style sheet', '61f65b5b3345b'),
(66, '61f65b5b1ad32', 'c style sheet', '61f65b5b3346c'),
(67, '61f65b5b1ad32', 'c++', '61f65b5b3346e'),
(68, '61f65b5b1ad32', 'non of the above', '61f65b5b33470'),
(69, '61f65b5b697cd', 'google', '61f65b5b71cba'),
(70, '61f65b5b697cd', 'microsoft', '61f65b5b71cc1'),
(71, '61f65b5b697cd', 'tesla', '61f65b5b71cc3'),
(72, '61f65b5b697cd', 'ibm', '61f65b5b71cc4'),
(73, '61f65b5b9a68f', '1-1', '61f65b5ba2c56'),
(74, '61f65b5b9a68f', '11-22', '61f65b5ba2c5e'),
(75, '61f65b5b9a68f', '1-0', '61f65b5ba2c5f'),
(76, '61f65b5b9a68f', '1-100', '61f65b5ba2c61'),
(81, '6203f031d67f4', '128', '6203f0320cbc2'),
(82, '6203f031d67f4', '48', '6203f0320cbc9'),
(83, '6203f031d67f4', '22', '6203f0320cbca'),
(84, '6203f031d67f4', '16', '6203f0320cbcb'),
(85, '6203f0323d96b', 'MFA', '6203f032484d0'),
(86, '6203f0323d96b', 'SFA', '6203f03248542'),
(87, '6203f0323d96b', 'Two factor authentication', '6203f03248544'),
(88, '6203f0323d96b', 'SBF', '6203f03248545'),
(89, '6203f032712e8', ' virus attacks', '6203f0328177d'),
(90, '6203f032712e8', 'fire attacks', '6203f03281786'),
(91, '6203f032712e8', 'data driven attacks', '6203f03281788'),
(92, '6203f032712e8', 'unauthorized', '6203f03281789'),
(93, '6203f032ace44', '1980', '6203f032b7965'),
(94, '6203f032ace44', '1988', '6203f032b796c'),
(95, '6203f032ace44', '1986', '6203f032b796e'),
(96, '6203f032ace44', '1999', '6203f032b796f'),
(97, '6203f032eddb1', 'voice over internet protocol ', '6203f03304945'),
(98, '6203f032eddb1', 'voice over internal protocol', '6203f0330494d'),
(99, '6203f032eddb1', 'over internal premises', '6203f0330494e'),
(100, '6203f032eddb1', 'All  the above ', '6203f0330494f'),
(101, '6208b9f25fb12', 'routing information  protocaol', '6208b9f27219a'),
(102, '6208b9f25fb12', 'information system ', '6208b9f2721b4'),
(103, '6208b9f25fb12', 'protocol routing', '6208b9f2721b5'),
(104, '6208b9f25fb12', 'all the above', '6208b9f2721b9'),
(105, '6208d8a4f0460', 'geographical  infotmation system', '6208d8a519234'),
(106, '6208d8a4f0460', 'infomsystem', '6208d8a519243'),
(107, '6208d8a4f0460', 'a', '6208d8a519246'),
(108, '6208d8a4f0460', 'all the above', '6208d8a519247'),
(109, '6208e09bdbff1', 'geographical  infotmation system', '6208e09be9cdd'),
(110, '6208e09bdbff1', 'information system ', '6208e09be9ceb'),
(111, '6208e09bdbff1', 'system protocol', '6208e09be9ced'),
(112, '6208e09bdbff1', 'all the above', '6208e09be9cef');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(4, '5b85847bbe794', '5b85857d00f34', 'What is the output of print str * 2 if str = \'Hello World!\'?', 4, 1),
(5, '5b85847bbe794', '5b85857d333f0', 'What is the output of print tuple[1:3] if tuple = ( \'abcd\', 786 , 2.23, \'john\', 70.2 )?', 4, 2),
(6, '5b85847bbe794', '5b85857d59559', 'Which of the following function convert a string to a long in python?', 4, 3),
(7, '5b85847bbe794', '5b85857d917d6', 'Which of the following function convert an integer to an unicode character in python?', 4, 4),
(8, '5b85847bbe794', '5b85857db810f', 'Which of the following function returns a random item from a list, tuple, or string?', 4, 5),
(14, '61f644c710159', '61f6454c46b31', '11', 4, 1),
(15, '61f65a87b747b', '61f65b5a900fb', 'what is full form of html', 4, 1),
(16, '61f65a87b747b', '61f65b5ad0a08', 'who developed java?', 4, 2),
(17, '61f65a87b747b', '61f65b5b1ad32', 'full form of css', 4, 3),
(18, '61f65a87b747b', '61f65b5b697cd', 'who developed asp.net', 4, 4),
(19, '61f65a87b747b', '61f65b5b9a68f', 'what is binary number', 4, 5),
(21, '6203ecc4b9226', '6203f031d67f4', 'IPV6 address are        bit in a size', 4, 1),
(22, '6203ecc4b9226', '6203f0323d96b', '                 factor authentication involves two level.', 4, 2),
(23, '6203ecc4b9226', '6203f032712e8', 'Firewalls are to protect against', 4, 3),
(24, '6203ecc4b9226', '6203f032ace44', 'The first pc viruses was developed in', 4, 4),
(25, '6203ecc4b9226', '6203f032eddb1', 'VOIP stand for', 4, 5),
(26, '6208b9a4dfd24', '6208b9f25fb12', 'RIP full form ', 4, 1),
(27, '6208d85a5c844', '6208d8a4f0460', 'gis full form', 4, 1),
(28, '6208e066dac0c', '6208e09bdbff1', 'full form of gis', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(2, '5b85847bbe794', 'Python', 3, 1, 5, 2, '2022-02-01 15:13:43', 'enabled'),
(3, '61f65a87b747b', 'General Quiz', 2, 0, 5, 2, '2022-02-01 15:13:39', 'enabled'),
(6, '6203ecc4b9226', 'Security In Computing', 2, 0, 5, 3, '2022-02-09 16:48:52', 'enabled'),
(7, '6208b9a4dfd24', 'Computer', 1, 0, 1, 1, '2022-02-13 07:57:43', 'enabled'),
(8, '6208d85a5c844', 'Gis', 1, 0, 1, 1, '2022-02-13 10:08:40', 'enabled'),
(9, '6208e066dac0c', 'Computer1', 1, 0, 1, 1, '2022-02-13 10:42:40', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(2, 'pranay', 6, '2022-01-30 08:32:10'),
(3, 'PRACHI', 21, '2022-02-09 16:50:42'),
(4, 'KANCHAN', 12, '2022-01-30 09:55:45'),
(5, 'dhano', 1, '2022-02-13 08:00:46'),
(6, 'admin', 1, '2022-02-16 11:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(12, 'Dhano', '134', 'IT', 'F', 'dhano', 9000000000, '202cb962ac59075b964b07152d234b70'),
(11, 'Kanchan', '45', 'IT', 'F', 'KANCHAN', 9082894291, '79cc0a8df9923bf848a192eb1b1a4232'),
(13, 'Niraj', '1234', 'CSE', 'M', 'niraj', 9987889555, '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 'Prachi Nalwade', '123', 'IT', 'F', 'PRACHI', 9999999999, 'b9f2758df665a7df45a70c2bd48c612b'),
(9, 'Pranay', '123', 'CSE', 'M', 'pranay', 7000000000, 'e2ac3262e9b9d03f81032680c69aa61e');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(4, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'pravin'),
(5, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'pravin'),
(6, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pravin'),
(7, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'pravin'),
(8, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'pravin'),
(16, '61f6440927d90', '61f6440929b4f', '61f6440929b4f', '61f6432e52281', 'pranay'),
(17, '61f644092cc63', '61f644092d4f8', '61f644092d4f8', '61f6432e52281', 'pranay'),
(18, '61f644092fc8d', '61f6440930464', '61f6440930464', '61f6432e52281', 'pranay'),
(19, '61f6440933038', '61f644093386d', '61f644093386d', '61f6432e52281', 'pranay'),
(20, '61f6440936699', '61f6440936ec9', '61f6440936ec6', '61f6432e52281', 'pranay'),
(21, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'PRACHI'),
(22, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'PRACHI'),
(23, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'PRACHI'),
(24, '5b85857d917d6', '5b85857d97d68', '5b85857d97980', '5b85847bbe794', 'PRACHI'),
(25, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'PRACHI'),
(26, '61f65b5a900fb', '61f65b5aa26d0', '61f65b5aa26d0', '61f65a87b747b', 'prachi'),
(27, '61f65b5ad0a08', '61f65b5ae0d74', '61f65b5ae0d74', '61f65a87b747b', 'prachi'),
(28, '61f65b5b1ad32', '61f65b5b3345b', '61f65b5b3345b', '61f65a87b747b', 'prachi'),
(29, '61f65b5b697cd', '61f65b5b71cc1', '61f65b5b71cc1', '61f65a87b747b', 'prachi'),
(30, '61f65b5b9a68f', '61f65b5ba2c5f', '61f65b5ba2c5f', '61f65a87b747b', 'prachi'),
(31, '61f65dba15241', '61f65dba3bcf5', '61f65dba3bcf5', '61f65d8b41282', 'KANCHAN'),
(32, '61f65b5a900fb', '61f65b5aa26d0', '61f65b5aa26d0', '61f65a87b747b', 'KANCHAN'),
(33, '61f65b5b1ad32', '61f65b5b3345b', '61f65b5b3345b', '61f65a87b747b', 'KANCHAN'),
(34, '61f65b5ad0a08', '61f65b5ae0d74', '61f65b5ae0d74', '61f65a87b747b', 'KANCHAN'),
(35, '61f65b5b697cd', '61f65b5b71cc1', '61f65b5b71cc1', '61f65a87b747b', 'KANCHAN'),
(36, '61f65b5b9a68f', '61f65b5ba2c5f', '61f65b5ba2c5f', '61f65a87b747b', 'KANCHAN'),
(37, '6203f031d67f4', '6203f0320cbc2', '6203f0320cbc2', '6203ecc4b9226', 'prachi'),
(38, '6203f0323d96b', '6203f03248544', '6203f03248544', '6203ecc4b9226', 'prachi'),
(39, '6203f032712e8', '6203f03281786', '6203f03281789', '6203ecc4b9226', 'prachi'),
(40, '6203f032ace44', '6203f032b796e', '6203f032b796e', '6203ecc4b9226', 'prachi'),
(41, '6203f032eddb1', '6203f03304945', '6203f03304945', '6203ecc4b9226', 'prachi'),
(42, '6208b9f25fb12', '6208b9f27219a', '6208b9f27219a', '6208b9a4dfd24', 'dhano'),
(43, '6208e09bdbff1', '6208e09be9cdd', '6208e09be9cdd', '6208e066dac0c', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
