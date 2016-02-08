-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2016 at 03:20 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE IF NOT EXISTS `citizen` (
  `citizen_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `house_number` int(11) NOT NULL,
  `street` varchar(45) NOT NULL,
  `barangay` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(45) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `celpphone_number` int(11) NOT NULL,
  `telephone_number` int(11) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `civil_status` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `father_first_name` varchar(45) NOT NULL,
  `father_middle_name` varchar(45) NOT NULL,
  `father_last_name` varchar(45) NOT NULL,
  `mother_first_name` varchar(45) NOT NULL,
  `mother_middle_name` varchar(45) NOT NULL,
  `mother_last_name` varchar(45) NOT NULL,
  `date_registered` date NOT NULL,
  `is_official` tinyint(1) NOT NULL,
  `proof_of_identity` int(11) NOT NULL,
  `proof_of_address` int(11) NOT NULL,
  PRIMARY KEY (`citizen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `official`
--

CREATE TABLE IF NOT EXISTS `official` (
  `official_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_registered` date NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `term_period` int(11) NOT NULL,
  `citizen_id` int(11) NOT NULL,
  PRIMARY KEY (`official_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poa&poi`
--

CREATE TABLE IF NOT EXISTS `poa&poi` (
  `poa_poi_id` int(11) NOT NULL,
  `citizen_first_name` varchar(45) NOT NULL,
  `citizen_last_name` varchar(45) NOT NULL,
  `poa` int(11) NOT NULL,
  `poi` int(11) NOT NULL,
  PRIMARY KEY (`poa_poi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_filed` date NOT NULL,
  `date_served` date NOT NULL,
  `status` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE IF NOT EXISTS `requirement` (
  `date_request` int(11) NOT NULL,
  `date_served` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_name` int(11) NOT NULL,
  `service_requirement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `service_description` varchar(45) NOT NULL,
  `date_offered` date NOT NULL,
  `is_offered` tinyint(1) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
