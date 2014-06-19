-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2014 at 12:34 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cv`
--
CREATE DATABASE IF NOT EXISTS `kaaycv` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cv`;

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE IF NOT EXISTS `academic` (
  `name_of_inst` varchar(150) NOT NULL,
  `course` varchar(200) NOT NULL,
  `s_field` varchar(150) NOT NULL,
  `q_type` varchar(50) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `subject_to_com` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`name_of_inst`, `course`, `s_field`, `q_type`, `duration`, `subject_to_com`) VALUES
('Name Of Institution', 'Course', 'Specialization Field', 'Qualification Type', 'Duration', 'Subject to Complete'),
('Tshwane University of Technology', 'National diploma in Information Communication And\r\nTechnology (ICT)', 'Technical Applications ', 'National Diploma', '2010 to 2013', 'INDUSTRY EXPOSURE IIIB(Internship)');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `cell_num` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `p_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`cell_num`, `email`, `r_address`, `p_address`) VALUES
('Cell Numbe', 'Email Address', 'Residential Address', 'Postal Address'),
('0604769610', 'danielmaifadi@gmail.com', '1568 Matshelapata Hebron', '1778 Pox Box 0200');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `school` varchar(100) NOT NULL,
  `last_grade` varchar(200) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`school`, `last_grade`, `year`) VALUES
('School', 'Last grade passed', 'Year'),
('Ngaka Maseko High School', 'National Senior Certificate/Matric(Grade 12)', '2009');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `L_ID` int(11) NOT NULL AUTO_INCREMENT,
  `english` varchar(255) NOT NULL,
  `zulu` varchar(255) NOT NULL,
  `tswana` varchar(255) NOT NULL,
  `sotho` varchar(255) NOT NULL,
  PRIMARY KEY (`L_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`L_ID`, `english`, `zulu`, `tswana`, `sotho`) VALUES
(1, 'English', 'Zulu ', 'Tswana', 'Sotho');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE IF NOT EXISTS `personal_details` (
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `id_numbere` varchar(13) NOT NULL,
  `h_language` varchar(50) NOT NULL,
  `m_status` varchar(10) NOT NULL,
  `h_status` varchar(10) NOT NULL,
  `region` varchar(20) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `C_offence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`surname`, `name`, `gender`, `id_numbere`, `h_language`, `m_status`, `h_status`, `region`, `nationality`, `C_offence`) VALUES
('Surname', 'Full Name(s)', 'Gende', 'I.D Number', 'Home Language', 'Marital St', 'Health Sta', 'Religion', 'Nationality', 'Criminal Offence'),
('Maiafadi', 'Kearabetswe Daniel', 'Male', '9201115539087', 'Tswana', 'Single', 'Excellent', 'Christian', 'South Africa', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `its` varchar(255) NOT NULL,
  `ssf` varchar(255) NOT NULL,
  `isy` varchar(255) NOT NULL,
  `tpg` varchar(255) NOT NULL,
  `dso` varchar(255) NOT NULL,
  `idc` varchar(255) NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`S_ID`, `its`, `ssf`, `isy`, `tpg`, `dso`, `idc`) VALUES
(1, 'INFORMATION TECHNOLOGY SKILLS IA & IB', 'SYSTEMS SOFTWARE IA & IB', 'INFORMATION SYSTEMS IA & IB', 'TECHNICAL PROGRAMMING IA & IB( java Programming)', 'DEVELOPMENT SOFTWARE IA', 'INDUSTRY EXPOSURE IIIA'),
(2, '', 'SYSTEM SOFTWARE IIA(LINUX)', 'INFORMATION SYSTEMS IIA & IIB(Systems Analysis and Design)', 'TECHNICAL PROGRAMMING IIA & IIB( java Programming)', 'DEVELOPMENT SOFTWARE IB(visual basic programming principles)', 'INDUSTRY EXPOSURE IIIB'),
(3, '', 'SYSTEM SOFTWARE IIB(Network+)', 'INFORMATION SYSTEMS IIIA(Object-Oriented Analysis and Design) ', '', 'DEVELOPMENT SOFTWARE IIA(ORACLE SQL)', ''),
(4, '', '', 'SYSTEM SOFTWARE IIIB(Operating System) ', '', 'TECHNICAL PROGRAMMING IIIA (Android )', ''),
(5, '', '', 'SYSTEM SOFTWARE IIIA(kernel)', '', 'TECHNICAL PROGRAMMING IIIB( Java Programming)', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjects2`
--

CREATE TABLE IF NOT EXISTS `subjects2` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `its` varchar(255) NOT NULL,
  `ssf` varchar(255) NOT NULL,
  `isy` varchar(255) NOT NULL,
  `tpg` varchar(255) NOT NULL,
  `dso` varchar(255) NOT NULL,
  `idc` varchar(255) NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subjects3`
--

CREATE TABLE IF NOT EXISTS `subjects3` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `its` varchar(255) NOT NULL,
  `ssf` varchar(255) NOT NULL,
  `isy` varchar(255) NOT NULL,
  `tpg` varchar(255) NOT NULL,
  `dso` varchar(255) NOT NULL,
  `idc` varchar(255) NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subjects4`
--

CREATE TABLE IF NOT EXISTS `subjects4` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `its` varchar(255) NOT NULL,
  `ssf` varchar(255) NOT NULL,
  `isy` varchar(255) NOT NULL,
  `tpg` varchar(255) NOT NULL,
  `dso` varchar(255) NOT NULL,
  `idc` varchar(255) NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subjects5`
--

CREATE TABLE IF NOT EXISTS `subjects5` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `its` varchar(255) NOT NULL,
  `ssf` varchar(255) NOT NULL,
  `isy` varchar(255) NOT NULL,
  `tpg` varchar(255) NOT NULL,
  `dso` varchar(255) NOT NULL,
  `idc` varchar(255) NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblreferences`
--

CREATE TABLE IF NOT EXISTS `tblreferences` (
  `R_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`R_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblreferences`
--

INSERT INTO `tblreferences` (`R_ID`, `name`, `occupation`, `institution`, `contact`, `email`) VALUES
(2, 'Name', 'Occupation', 'Institution', 'Contact', 'Email'),
(3, 'Mr. VAW  Memani', 'Lecturer Faculty of ICT', 'Tshwane University of Technology (TUT)', '(012) 382 9592', 'memaniv@tut.ac.za'),
(4, 'Mr ML Gadebe', 'Lecturer Faculty of ICT', 'Tshwane University of Technology (TUT)', '(012) 382 9224', 'gadebeml@tut.ac.za');

-- --------------------------------------------------------

--
-- Table structure for table `tblreferences2`
--

CREATE TABLE IF NOT EXISTS `tblreferences2` (
  `R_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`R_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
z