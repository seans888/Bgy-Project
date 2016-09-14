-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2016 at 07:00 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `award_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `database_connection`
--

CREATE TABLE `database_connection` (
  `DB_Connection_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_Name` varchar(255) NOT NULL,
  `Hostname` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Database` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `database_connection`
--

INSERT INTO `database_connection` (`DB_Connection_ID`, `Project_ID`, `DB_Connection_Name`, `Hostname`, `Username`, `Password`, `Database`) VALUES
('Bcw9hMa4XjQYgU9DvR0Z4A', 'niWzp0HMbTdOVzO1puUgXQ', 'con1', 'localhost', 'root', '', 'itels'),
('5AIrBOdlJBk6YDuUbtztHg', 'GgSaxyl0ukMDguHArJAwRg', 'con1', 'localhost', 'root', '', 'itels'),
('J4DWiApQoR98sxVzvkQSpw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'con1', 'localhost', 'root', '', 'barangay');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_short_name` varchar(255) NOT NULL,
  `dept_official_name` varchar(255) NOT NULL,
  `dept_head` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `hiring_date` date NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `salary_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_awards`
--

CREATE TABLE `employee_awards` (
  `emp_id` varchar(255) NOT NULL,
  `auto_id` int(11) NOT NULL,
  `award_id` int(11) NOT NULL,
  `date_received` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_hobbies`
--

CREATE TABLE `employee_hobbies` (
  `emp_id` varchar(255) NOT NULL,
  `auto_id` int(11) NOT NULL,
  `hobby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `experiments`
--

CREATE TABLE `experiments` (
  `experiment_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `preliminary_result` varchar(255) NOT NULL,
  `intermediate_result` varchar(255) NOT NULL,
  `final_result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `office_docs`
--

CREATE TABLE `office_docs` (
  `code_1` char(4) NOT NULL,
  `code_2` char(2) NOT NULL,
  `code_3` char(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file_upload` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `Page_ID` char(44) NOT NULL,
  `Page_Name` varchar(255) NOT NULL,
  `Generator` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`Page_ID`, `Page_Name`, `Generator`, `Description`) VALUES
('+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Add1', 'Add1.php', 'Standard input form'),
('alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Edit1', 'Edit1.php', 'Standard edit form'),
('AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'DetailView1', 'DetailView1.php', 'Detail View of a record'),
('Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'ListView', 'ListView1.php', 'List View of a table'),
('qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Delete1', 'Delete1.php', 'Standard record deletion page'),
('DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'CSVExport1', 'CSVExport1.php', 'Standard export data to CSV module'),
('X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'ReporterInterface1', 'ReporterInterface1.php', 'Default "custom reporting tool" interface'),
('/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'ReporterResult1', 'ReporterResult1.php', 'Default "custom reporting tool" result page'),
('EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'ReporterResultPDF1', 'ReporterResultPDF1.php', 'Default "custom reporting tool" PDF result');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Project_ID` char(44) NOT NULL,
  `Project_Name` varchar(255) NOT NULL,
  `Client_Name` varchar(255) NOT NULL,
  `Project_Description` text NOT NULL,
  `Base_Directory` varchar(255) NOT NULL,
  `Database_Connection_ID` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_ID`, `Project_Name`, `Client_Name`, `Project_Description`, `Base_Directory`, `Database_Connection_ID`) VALUES
('niWzp0HMbTdOVzO1puUgXQ', 'itels', '.', '.', 'C:\\xampp\\htdocs\\cobalt\\Generator\\Projects', 'Bcw9hMa4XjQYgU9DvR0Z4A'),
('tl05Ti9Zu+yEKfnKwsEg6g', 'Barangay System', 'Abner Arrieta', '.', 'barangay', 'J4DWiApQoR98sxVzvkQSpw'),
('GgSaxyl0ukMDguHArJAwRg', 'itels1', '.', '.', 'itels', '5AIrBOdlJBk6YDuUbtztHg'),
('C8ZyCPo5DxSohFlRUKNSiA', 'Plate Mate', 'None', 'You can browse the collection of food photos and reviews in your food library.', 'platemate', '');

-- --------------------------------------------------------

--
-- Table structure for table `salary_grade`
--

CREATE TABLE `salary_grade` (
  `salary_grade_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `Table_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_ID` varchar(255) NOT NULL,
  `Table_Name` varchar(255) NOT NULL,
  `Remarks` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`Table_ID`, `Project_ID`, `DB_Connection_ID`, `Table_Name`, `Remarks`) VALUES
('h/3uII4EiMg1P0KY6Wgd6Q', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'department', ''),
('G3MVI200wv/CzEwgyQNCCg', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'employee', ''),
('gElvU6hWE0jypHA1z/F+XA', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'employee_certifications', ''),
('SGTpjNa1U0+pEkZ5UKK81A', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'item', ''),
('aDaRx2ctonKdTCS6LV4Z6g', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'item_type', ''),
('Z07dDK1JPgrzGx+4NFbz7A', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'lending', ''),
('BQRN52d9aoT8q+8z0o4LlQ', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'lending_items', ''),
('D9bgTjAuuUKd48TXB2y2xA', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'position', ''),
('PJLuqV2HSUWR+ikNdUXPGg', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'department', ''),
('H73ud0QWLx2Se7p9eUkasg', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'employee', ''),
('Doe+KB5zM7tWgsZhpqAp5w', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'employee_certifications', ''),
('vv1exa8MbX4K7IXMl/FEJQ', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'item', ''),
('T2hM+p3raP+HFxiFlxDlKg', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'item_type', ''),
('Cy2c9Vee7ISma5phtovGKA', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'lending', ''),
('ghh9dSVsnOf4D68tIWSMWA', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'lending_items', ''),
('HO34F+jhddQkxXVUtHcm5Q', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'position', ''),
('kch1paJBspKqHl6fM21LIA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'barangay', ''),
('M7NKzXX4dDhEoTBVWxfT1w', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'bulletin', ''),
('BYf9jiy4n/VsHSmtJap8gQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'citizen', ''),
('pcl44WGaRerapbAbZaPRDw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'city', ''),
('UGoYijf1uPZygkK4aKL3BA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'notification', ''),
('xkysH6HvJxGLLSd2T3REVA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'official', ''),
('x3AlSCd+MSQBJWgb+ieaEA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'province', ''),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'region', ''),
('xj2EEIg1w2q6hXyc2sJuww', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'request', ''),
('N99ekyEt+lL2JZkY2i5MWA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'skill', ''),
('NIKti62zWfgIf3quzy0+jQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'requirement', ''),
('fWWWOpaZCVXE+q5P4kM0Hg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'validate', ''),
('sizcBfeFeCAAPWLgk0pwag', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'zone', ''),
('uRXq/lsO8bXc7MVjrxTXJg', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'hellow', ''),
('IOxAI1KslB3PSHjSFYP+Lg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'document', ''),
('AQZb2jvRNHOOUeEGHxr2+g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'sub_doc', ''),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'business_permit', ''),
('d9VT2w+MAs6AGsfI+cnQqg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'cedula', ''),
('Y8wWOkjQzasdSg1tFVqqsw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'concern', ''),
('P7h6/8h+YKBo0AMQP3HQQA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'day_care', ''),
('Y8SYhruygtkvgWLowIVL0Q', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'health', ''),
('cYeJd2Gih/korlRqidcRvw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'barangay_clearance', ''),
('McYnj/51pNi0+Y7TEKPvGQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'nationality', ''),
('ZtanAWehbsOkLB8rKif6/w', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'skill_set', ''),
('0XgEduSPAtkmfseLrOzW0g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'fee', ''),
('buKUNoX99+fyZnwPF73aew', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'health_center', ''),
('SpdSGIl6RYPwbusNUu03hA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'school', ''),
('XSJnQ2ux+pF0nAFyePZKzQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'business_permit_fee', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields`
--

CREATE TABLE `table_fields` (
  `Field_ID` char(44) NOT NULL,
  `Table_ID` char(44) NOT NULL,
  `Field_Name` varchar(255) NOT NULL,
  `Data_Type` varchar(255) NOT NULL,
  `Nullable` varchar(255) NOT NULL,
  `Length` int(11) NOT NULL,
  `Attribute` varchar(255) NOT NULL,
  `Auto_Increment` char(1) NOT NULL,
  `Control_Type` varchar(255) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `In_Listview` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields`
--

INSERT INTO `table_fields` (`Field_ID`, `Table_ID`, `Field_Name`, `Data_Type`, `Nullable`, `Length`, `Attribute`, `Auto_Increment`, `Control_Type`, `Label`, `In_Listview`) VALUES
('jdAuvhr0SJDRfZYhs+iClg', 'h/3uII4EiMg1P0KY6Wgd6Q', 'department_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Department ID', 'no'),
('Wf2u1ejUZ2ebzuGwu1AgsA', 'h/3uII4EiMg1P0KY6Wgd6Q', 'department_name', 'text', 'NO', 0, '', 'N', 'textarea', 'Department Name', 'yes'),
('ea+RGCyUOJH/PCoVZ+VuwA', 'G3MVI200wv/CzEwgyQNCCg', 'employee_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee ID', 'no'),
('ICA6jdpqVQ0XD9mCWC0O1Q', 'G3MVI200wv/CzEwgyQNCCg', 'department_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Department ID', 'yes'),
('5YPyUGrRjOzUW7vHkUnMLA', 'G3MVI200wv/CzEwgyQNCCg', 'position_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Position ID', 'yes'),
('1KDNfXopNQiRrTfvOYGDlw', 'G3MVI200wv/CzEwgyQNCCg', 'first_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'First Name', 'yes'),
('z7cNEzcSe/XjASrIEz5sjg', 'G3MVI200wv/CzEwgyQNCCg', 'middle_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Middle Name', 'yes'),
('+nr9KKfo4wRi4ddJ2PVTCQ', 'G3MVI200wv/CzEwgyQNCCg', 'last_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Last Name', 'yes'),
('4IGNDcv8TwrBeG4ek+WtbQ', 'G3MVI200wv/CzEwgyQNCCg', 'address', 'varchar', 'YES', 255, '', 'N', 'textarea', 'Address', 'yes'),
('fYbV7O/vFwEp45QlmDhLyA', 'G3MVI200wv/CzEwgyQNCCg', 'contact_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Contact Number', 'yes'),
('KLGc/emfqwdCLlOJ/ISkzA', 'G3MVI200wv/CzEwgyQNCCg', 'email_address', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Email Address', 'yes'),
('ZXKzP/O48ggCTEIaZY6Abg', 'G3MVI200wv/CzEwgyQNCCg', 'gender', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Gender', 'yes'),
('/eoeqevYjkAt/mSvOullpg', 'G3MVI200wv/CzEwgyQNCCg', 'civil_status', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Civil Status', 'yes'),
('QWiBubZUU89WLWC8nBQbzQ', 'G3MVI200wv/CzEwgyQNCCg', 'birthday', 'date', 'YES', 0, '', 'N', 'date controls', 'Birthday', 'yes'),
('hmX8gumKZDowPzYNs4l+og', 'G3MVI200wv/CzEwgyQNCCg', 'sss_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Sss Number', 'yes'),
('6EOovEzzrW3IpzP9JblosA', 'G3MVI200wv/CzEwgyQNCCg', 'tax_identification_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Tax Identification Number', 'yes'),
('poKOdW3+kbNTB+lpnj4PpA', 'G3MVI200wv/CzEwgyQNCCg', 'philhealth_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Philhealth Number', 'yes'),
('/m1LX1lJpgU8ruZI1h5yPQ', 'G3MVI200wv/CzEwgyQNCCg', 'pagibig_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Pagibig Number', 'yes'),
('08j2pWXH9bu2IE4BPeubdw', 'G3MVI200wv/CzEwgyQNCCg', 'hiring_date', 'date', 'YES', 0, '', 'N', 'date controls', 'Hiring Date', 'yes'),
('CAvTsl3rttTewMCkhlOIDw', 'gElvU6hWE0jypHA1z/F+XA', 'employee_certification_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee Certification ID', 'no'),
('ytlZfScNcPi4KA469pf3kQ', 'gElvU6hWE0jypHA1z/F+XA', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('qwhEpItrICS2skRsO2foVQ', 'gElvU6hWE0jypHA1z/F+XA', 'certification_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Certification Name', 'yes'),
('wb3W47a8MKGYo+fp0sfdCg', 'gElvU6hWE0jypHA1z/F+XA', 'date_acquired', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Date Acquired', 'yes'),
('lBoVy8fAsG9eiFShnpAZhA', 'SGTpjNa1U0+pEkZ5UKK81A', 'item_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item ID', 'no'),
('1wXz2EIVOmRradGj+ZPBWw', 'SGTpjNa1U0+pEkZ5UKK81A', 'item_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Item Tag', 'yes'),
('lQ+dkPUBHOpXR/DcX3u/cw', 'SGTpjNa1U0+pEkZ5UKK81A', 'name', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Name', 'yes'),
('Gk3p8/6Rhx+x25PF+qF98g', 'SGTpjNa1U0+pEkZ5UKK81A', 'item_type_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Type ID', 'yes'),
('797P1TPaYfyo0YfCdQaCeA', 'SGTpjNa1U0+pEkZ5UKK81A', 'photo', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Photo', 'yes'),
('FWGO9z7HXNRYDy+UHKyBHg', 'SGTpjNa1U0+pEkZ5UKK81A', 'acquisition_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Acquisition Date', 'yes'),
('/sqtC1sitxmOExYwEab5ig', 'SGTpjNa1U0+pEkZ5UKK81A', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('DGXeQARkUbFIn4sAz6kokQ', 'SGTpjNa1U0+pEkZ5UKK81A', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('5xpaqtpa5Wcs4k3NJIVgXg', 'SGTpjNa1U0+pEkZ5UKK81A', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('NeBSkwkwLzKytRPgdnSFBw', 'aDaRx2ctonKdTCS6LV4Z6g', 'item_type_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item Type ID', 'no'),
('qNYBJ47OWInGHQkXXvRVEw', 'aDaRx2ctonKdTCS6LV4Z6g', 'title', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Title', 'yes'),
('Fnr/Wz5AlaywxPMXMQN/qQ', 'aDaRx2ctonKdTCS6LV4Z6g', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('ORgQX/IBw4IZJjehpYX1Jw', 'aDaRx2ctonKdTCS6LV4Z6g', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('t7Poi60rW27aGhyUt/yZEw', 'Z07dDK1JPgrzGx+4NFbz7A', 'lending_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending ID', 'no'),
('o6p+4M9y2pWpeFaOdMdOKg', 'Z07dDK1JPgrzGx+4NFbz7A', 'lending_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Lending Tag', 'yes'),
('Cbl3npPayd1WcYhGE03vdw', 'Z07dDK1JPgrzGx+4NFbz7A', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('w/MxerZ4XWNzI6gY86QE4A', 'Z07dDK1JPgrzGx+4NFbz7A', 'request_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Request Date', 'yes'),
('2GUZWj8eZsKavVtxUseICg', 'Z07dDK1JPgrzGx+4NFbz7A', 'remarks', 'varchar', 'NO', 255, '', 'N', 'textarea', 'Remarks', 'yes'),
('KvIIA1OB39oaXPcKa5H/xQ', 'Z07dDK1JPgrzGx+4NFbz7A', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('uAsJaXrCdKFwgw0P4jLpFw', 'BQRN52d9aoT8q+8z0o4LlQ', 'lending_items_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending Items ID', 'no'),
('XpAy4Z2dFoE0mRwTaI4zaw', 'BQRN52d9aoT8q+8z0o4LlQ', 'lending_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Lending ID', 'yes'),
('WfoDpR+mFn50WkI9ru+LHQ', 'BQRN52d9aoT8q+8z0o4LlQ', 'item_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item ID', 'yes'),
('JV8XrQwwFPvLpAOcztYhsA', 'BQRN52d9aoT8q+8z0o4LlQ', 'item_custodian', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Custodian', 'yes'),
('LXNrP3KXKY+WnkQvn0LAYA', 'BQRN52d9aoT8q+8z0o4LlQ', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('e1awnhouhBculKN14I9/1g', 'BQRN52d9aoT8q+8z0o4LlQ', 'movement_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Movement Date', 'yes'),
('Q2vmdFBX0hioAL2KfO+qiQ', 'BQRN52d9aoT8q+8z0o4LlQ', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('3UVu0jFCJBl4pLGHaUt1xA', 'D9bgTjAuuUKd48TXB2y2xA', 'position_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Position ID', 'no'),
('2csOQb6CgBWukArwKGVqFg', 'D9bgTjAuuUKd48TXB2y2xA', 'parent_position_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Parent Position ID', 'yes'),
('SK5MpheYC07CuUNHvE5XcQ', 'D9bgTjAuuUKd48TXB2y2xA', 'position_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Position Name', 'yes'),
('ojMZUCDG0pJxSqLfAJ1mvw', 'D9bgTjAuuUKd48TXB2y2xA', 'base_salary', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Base Salary', 'yes'),
('7nMzknfNaqrQ7RQI4Edk7A', 'PJLuqV2HSUWR+ikNdUXPGg', 'department_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Department ID', 'no'),
('uF34iCe03S5hxcUBlOmPew', 'PJLuqV2HSUWR+ikNdUXPGg', 'department_name', 'text', 'NO', 0, '', 'N', 'textarea', 'Department Name', 'yes'),
('uiO6Lt2WGmhTz3rudJ3Ciw', 'H73ud0QWLx2Se7p9eUkasg', 'employee_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee ID', 'no'),
('lDM4gDuXQFrwVf0y3Zr2oQ', 'H73ud0QWLx2Se7p9eUkasg', 'department_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Department', 'yes'),
('kgzD552p7CbDhL1w4aC/bw', 'H73ud0QWLx2Se7p9eUkasg', 'position_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Position', 'yes'),
('APi4f9E5/YzX51wa7MC+1Q', 'H73ud0QWLx2Se7p9eUkasg', 'first_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'First Name', 'yes'),
('einVNxo74P6dHjTpi2Vc9w', 'H73ud0QWLx2Se7p9eUkasg', 'middle_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Middle Name', 'yes'),
('HfkTzVJSvBxu19hHkh+SNA', 'H73ud0QWLx2Se7p9eUkasg', 'last_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Last Name', 'yes'),
('heD9xaiYmE1kAcch+3EE0Q', 'H73ud0QWLx2Se7p9eUkasg', 'address', 'varchar', 'YES', 255, '', 'N', 'textarea', 'Address', 'yes'),
('4UI7Pol+noOirDYvxMxPHQ', 'H73ud0QWLx2Se7p9eUkasg', 'contact_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Contact Number', 'yes'),
('Bj48cbUME+6BxLnisV/QQQ', 'H73ud0QWLx2Se7p9eUkasg', 'email_address', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Email Address', 'yes'),
('tOxuFHuhQn7CzT3yGmTtRA', 'H73ud0QWLx2Se7p9eUkasg', 'gender', 'varchar', 'YES', 255, 'none', 'N', 'radio buttons', 'Gender', 'yes'),
('vbTTDiTjdDNlCltj5Ag5gA', 'H73ud0QWLx2Se7p9eUkasg', 'civil_status', 'varchar', 'YES', 255, 'none', 'N', 'drop-down list', 'Civil Status', 'yes'),
('j7PiLzJJh/2CYaMJceLI1g', 'H73ud0QWLx2Se7p9eUkasg', 'birthday', 'date', 'YES', 0, '', 'N', 'date controls', 'Birthday', 'yes'),
('dGMPVPwwXDHc8mwEy5BKaw', 'H73ud0QWLx2Se7p9eUkasg', 'sss_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Sss Number', 'yes'),
('uAoDtwRaHkOXYYMyGPfKuA', 'H73ud0QWLx2Se7p9eUkasg', 'tax_identification_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Tax Identification Number', 'yes'),
('gtaTuyy16uI3VV3pr0K1vA', 'H73ud0QWLx2Se7p9eUkasg', 'philhealth_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Philhealth Number', 'yes'),
('Ne+mqhxPjIVpYPXEHddEcw', 'H73ud0QWLx2Se7p9eUkasg', 'pagibig_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Pagibig Number', 'yes'),
('HpvJUhP5cs70U5wYCDxlaQ', 'H73ud0QWLx2Se7p9eUkasg', 'hiring_date', 'date', 'YES', 0, '', 'N', 'date controls', 'Hiring Date', 'yes'),
('Xe1aMDiv1o6Sjmg1x4T3hQ', 'Doe+KB5zM7tWgsZhpqAp5w', 'employee_certification_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee Certification ID', 'no'),
('UadWzbYu1nGy36wiuUl8Fg', 'Doe+KB5zM7tWgsZhpqAp5w', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('ctH0wWxvBjqbil7uZofDWw', 'Doe+KB5zM7tWgsZhpqAp5w', 'certification_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Certification Name', 'yes'),
('bEXEyXaOskCxeenlz2cIyQ', 'Doe+KB5zM7tWgsZhpqAp5w', 'date_acquired', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Date Acquired', 'yes'),
('sm+nihar1zB1cMgfTkuqeA', 'vv1exa8MbX4K7IXMl/FEJQ', 'item_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item ID', 'no'),
('YI/h9m4rgKP2i2LHb4TWYA', 'vv1exa8MbX4K7IXMl/FEJQ', 'item_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Item Tag', 'yes'),
('RqUpt6iWb/z4agTftXyJ2g', 'vv1exa8MbX4K7IXMl/FEJQ', 'name', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Name', 'yes'),
('97LYg6IIIgEZTnN5lYsezQ', 'vv1exa8MbX4K7IXMl/FEJQ', 'item_type_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Type ID', 'yes'),
('MtXnu0/ch7Z3BUm46vPnPA', 'vv1exa8MbX4K7IXMl/FEJQ', 'photo', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Photo', 'yes'),
('eDlkfv0XTqKuPy8YpqRijQ', 'vv1exa8MbX4K7IXMl/FEJQ', 'acquisition_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Acquisition Date', 'yes'),
('kQQESS2DqOjMZYo3/rdjLA', 'vv1exa8MbX4K7IXMl/FEJQ', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('XAd1Vcxc8w+kf6TFNsdFZQ', 'vv1exa8MbX4K7IXMl/FEJQ', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('NhClphAVC6xroPQi4qCibg', 'vv1exa8MbX4K7IXMl/FEJQ', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('68/8TPBGxq823yyZKL1RrQ', 'T2hM+p3raP+HFxiFlxDlKg', 'item_type_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item Type ID', 'no'),
('gUfW0lvwTMW4MJY3P00JIQ', 'T2hM+p3raP+HFxiFlxDlKg', 'title', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Title', 'yes'),
('q3wQ0XkYoNYQJaDHI23UVA', 'T2hM+p3raP+HFxiFlxDlKg', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('UgRAVCy+Qo8v62xYKiFtPw', 'T2hM+p3raP+HFxiFlxDlKg', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('9tfD9DBntHrOq/gJ8O4pfA', 'Cy2c9Vee7ISma5phtovGKA', 'lending_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending ID', 'no'),
('mh0SS+na+zhXnZmwwjcRVw', 'Cy2c9Vee7ISma5phtovGKA', 'lending_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Lending Tag', 'yes'),
('WFKvzWdK27N0gKP5zJBWgQ', 'Cy2c9Vee7ISma5phtovGKA', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('plqEqLcD0WU12rCfTKg/FA', 'Cy2c9Vee7ISma5phtovGKA', 'request_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Request Date', 'yes'),
('8J+PivXLSdXP8C6HIdIKMQ', 'Cy2c9Vee7ISma5phtovGKA', 'remarks', 'varchar', 'NO', 255, '', 'N', 'textarea', 'Remarks', 'yes'),
('td0E4SfRwnGBgFy7xrGQzQ', 'Cy2c9Vee7ISma5phtovGKA', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('fkqOYi4N8Y8T9uU4QNvwMg', 'ghh9dSVsnOf4D68tIWSMWA', 'lending_items_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending Items ID', 'no'),
('8iT3vp/kJvKB3lsK1tublQ', 'ghh9dSVsnOf4D68tIWSMWA', 'lending_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Lending ID', 'yes'),
('cJWUGOCik99nV1gzn0csFw', 'ghh9dSVsnOf4D68tIWSMWA', 'item_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item ID', 'yes'),
('gwxnW2SdZM9OguuUQ/sEPw', 'ghh9dSVsnOf4D68tIWSMWA', 'item_custodian', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Custodian', 'yes'),
('AqIUvDrhK/jqc868p0zFXQ', 'ghh9dSVsnOf4D68tIWSMWA', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('Sbr173bt0JL3g7Feo9aGcw', 'ghh9dSVsnOf4D68tIWSMWA', 'movement_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Movement Date', 'yes'),
('pd6Owq9aQaMMmRl/HB4e+g', 'ghh9dSVsnOf4D68tIWSMWA', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('u9wkogwQglAzp6gfbrBMsA', 'HO34F+jhddQkxXVUtHcm5Q', 'position_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Position ID', 'no'),
('xsIenPzLxv+1xKfxR5NTsQ', 'HO34F+jhddQkxXVUtHcm5Q', 'parent_position_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Parent Position ID', 'yes'),
('/JeXItd3F+SJ4rb/swbFSQ', 'HO34F+jhddQkxXVUtHcm5Q', 'position_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Position Name', 'yes'),
('NdlQ6xuhkfRXA/nBqFiIPQ', 'HO34F+jhddQkxXVUtHcm5Q', 'base_salary', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Base Salary', 'yes'),
('tMmCaiH8ZhrA6wOtndds5w', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Bulletin ID', 'no'),
('eJMZ0MJZhKyOFHHuLuHNsQ', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Bulletin Name', 'yes'),
('3g/8jZkVurSQOP8RrT4hIw', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_description', 'text', 'NO', 0, '', 'N', 'textarea', 'Bulletin Description', 'yes'),
('ZnZ+F/IkFmnsFMl8ifujag', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Bulletin Date', 'yes'),
('DgaQ0Ri0lYD6CivO6ymdiQ', 'M7NKzXX4dDhEoTBVWxfT1w', 'file_document', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'File Document', 'yes'),
('Vmn8cLkblrNWShARYqs27Q', 'M7NKzXX4dDhEoTBVWxfT1w', 'category', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Category', 'yes'),
('i+rCyOlTgqdBuiUgDlgAkQ', 'M7NKzXX4dDhEoTBVWxfT1w', 'is_show', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Show', 'yes'),
('cHo/nvf3Q/khtTuE9ZTcmw', 'BYf9jiy4n/VsHSmtJap8gQ', 'citizen_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Citizen ID', 'no'),
('pbEU5yfIMuRmkTDNjDEvlg', 'BYf9jiy4n/VsHSmtJap8gQ', 'first_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'First Name', 'yes'),
('tvE5xS1PO5RXS6lctYccdA', 'BYf9jiy4n/VsHSmtJap8gQ', 'middle_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Middle Name', 'yes'),
('fn2gUYY3djgiEuCfDYk+eQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'last_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Last Name', 'yes'),
('EYe/KuLeYmDvjcCC6C821Q', 'BYf9jiy4n/VsHSmtJap8gQ', 'gender', 'varchar', 'NO', 6, 'none', 'N', 'radio buttons', 'Gender', 'yes'),
('tI8+tIWhXf9/8P27XTD8ew', 'BYf9jiy4n/VsHSmtJap8gQ', 'birth_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Birth Date', 'yes'),
('MftqTyezCbDApKNPzoKhxw', 'BYf9jiy4n/VsHSmtJap8gQ', 'birth_place', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Birth Place', 'yes'),
('RFyJsZu62EmGO0J0gl0xzA', 'BYf9jiy4n/VsHSmtJap8gQ', 'weight', 'decimal', 'NO', 6, '', 'N', 'textbox', 'Weight', 'yes'),
('KE0YiqdyN3xSj6AltLtRbQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'height', 'integer', 'NO', 3, '', 'N', 'textbox', 'Height', 'yes'),
('1VFxpTj1eVriDZwsjNpqzQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'civil_status', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Civil Status', 'yes'),
('+3Fr+V1w66aXXH3GWrFvuA', 'BYf9jiy4n/VsHSmtJap8gQ', 'occupation', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Occupation', 'yes'),
('/QsTjPgWLNgJikzqJt5LYg', 'BYf9jiy4n/VsHSmtJap8gQ', 'cellphone_number', 'integer', 'YES', 11, '', 'N', 'textbox', 'Cellphone Number', 'yes'),
('wjth8ogcYkW50d7wAo11LA', 'BYf9jiy4n/VsHSmtJap8gQ', 'telephone_number', 'integer', 'YES', 7, '', 'N', 'textbox', 'Telephone Number', 'yes'),
('UK6aBxDF1ZUCunHHWF8Ypw', 'BYf9jiy4n/VsHSmtJap8gQ', 'region', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Region', 'yes'),
('Ip2EeaXbcIbQuzsZ8BAXcQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'province', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Province', 'yes'),
('V/Ci7v2oPGROR0+GJjv2bQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'city', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'City', 'yes'),
('outvMZSuP5S6OUljIEW/LQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'district', 'varchar', 'NO', 45, '', 'N', 'textbox', 'District', 'yes'),
('H84dM/cy+Ep+Z6COB5Mw9w', 'BYf9jiy4n/VsHSmtJap8gQ', 'barangay', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Barangay', 'yes'),
('hVKI0jU73Fqk7z5zibyHRQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'zip_code', 'integer', 'NO', 5, 'foreign key', 'N', 'drop-down list', 'Zip', 'yes'),
('x6R+m5DNXqYJLhAECENJhg', 'BYf9jiy4n/VsHSmtJap8gQ', 'street', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Street', 'yes'),
('Y2++c7+ERz2Upz727Ja7tA', 'BYf9jiy4n/VsHSmtJap8gQ', 'house_number', 'varchar', 'NO', 45, '', 'N', 'textbox', 'House Number', 'yes'),
('217rUeP4FPYuECz6Mi4gmg', 'BYf9jiy4n/VsHSmtJap8gQ', 'nationality', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Nationality', 'yes'),
('Kzqpat5HZHq/XrwiylRAHQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'username', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Username', 'yes'),
('i5t1VIjySolnXuREuD1pww', 'BYf9jiy4n/VsHSmtJap8gQ', 'password', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Password', 'yes'),
('1LdzGQwffoi8I8+rmyuiiw', 'BYf9jiy4n/VsHSmtJap8gQ', 'email_address', 'varchar', 'YES', 45, '', 'N', 'textbox', 'Email Address', 'yes'),
('3tMqLq9UBxfYpaP0RCF1IQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_first_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Father First Name', 'yes'),
('gUeLsUr0BzpDlp4CePNa7w', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_middle_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Father Middle Name', 'yes'),
('Rq2anVSvtt4xDnL2u1B+EQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_last_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Father Last Name', 'yes'),
('2I10jC/hCxOoo+TJOabZmA', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_first_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Mother First Name', 'yes'),
('EoKs0Kg2YKUL1xJVPwKo6w', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_middle_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Mother Middle Name', 'yes'),
('kBbxMrpaymC/fj96lEbAIg', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_last_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Mother Last Name', 'yes'),
('3JrbqGZJBwQj3pu2nUbWXg', 'BYf9jiy4n/VsHSmtJap8gQ', 'is_citizen', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Citizen', 'yes'),
('lZ2MDOhlbgY/13+AZOpbIg', 'BYf9jiy4n/VsHSmtJap8gQ', 'date_registered', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Registered', 'yes'),
('13ntnFmAGrb9CozeM3vG/w', 'BYf9jiy4n/VsHSmtJap8gQ', 'is_official', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Official', 'yes'),
('kksp9jS2h5jmYH1pKg8BYQ', 'pcl44WGaRerapbAbZaPRDw', 'city_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'City ID', 'no'),
('9mpj8yxUzBck1BujO/4WDA', 'pcl44WGaRerapbAbZaPRDw', 'city_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'City Name', 'yes'),
('Rsl/AH1hKCpjKrb+3Omh7g', 'pcl44WGaRerapbAbZaPRDw', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('5//5txbJyXTTfLfirfpaHg', 'pcl44WGaRerapbAbZaPRDw', 'province_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Province', 'yes'),
('SrlZNhkm02iM5nXtWC5nSw', 'UGoYijf1uPZygkK4aKL3BA', 'notification_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Notification ID', 'no'),
('cR9mUSr1wrKonrPVUBnB+w', 'UGoYijf1uPZygkK4aKL3BA', 'request_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Request ID', 'yes'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 'UGoYijf1uPZygkK4aKL3BA', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('szo216Gf0eHlMwkFJI9MHA', 'UGoYijf1uPZygkK4aKL3BA', 'notification_letter', 'text', 'NO', 0, '', 'N', 'textarea', 'Notification Letter', 'yes'),
('cN/RxmE2AnxTwwmg0d6wqQ', 'xkysH6HvJxGLLSd2T3REVA', 'official_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Official ID', 'no'),
('Q9+HlJold/JFXijpZa01KQ', 'xkysH6HvJxGLLSd2T3REVA', 'official_name', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Official Name', 'yes'),
('wUjSjA/CK5aJnrapBe4FYg', 'xkysH6HvJxGLLSd2T3REVA', 'position', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Position', 'yes'),
('smQV5lnWjlj7DFisN0aabg', 'xkysH6HvJxGLLSd2T3REVA', 'term_period_from', 'date', 'NO', 0, '', 'N', 'date controls', 'Term Period From', 'yes'),
('1Tl7YAoMQgZbPjq/qKbJOw', 'xkysH6HvJxGLLSd2T3REVA', 'term_period_to', 'date', 'NO', 0, '', 'N', 'date controls', 'Term Period To', 'yes'),
('DaCaF/LNAD+NrntWVERRAA', 'x3AlSCd+MSQBJWgb+ieaEA', 'province_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Province ID', 'no'),
('Oendr3sedvqoU4ofpsq9gQ', 'x3AlSCd+MSQBJWgb+ieaEA', 'province_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Province Name', 'yes'),
('K+SZOWgg4tRYHmShytJ2sw', 'x3AlSCd+MSQBJWgb+ieaEA', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('iAKNZw1+MJiWreQbewFQkw', 'x3AlSCd+MSQBJWgb+ieaEA', 'region_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Region', 'yes'),
('TgmwlovJin+MKDkuHeY75w', 'GB0Q7RZu5fE49cK0i9Q+7Q', 'region_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Region ID', 'no'),
('y4OqjZ65Vr+QzMmhCb7Vlg', 'GB0Q7RZu5fE49cK0i9Q+7Q', 'region_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Region Name', 'yes'),
('ePOVthS+xbW9V392hSo71A', 'GB0Q7RZu5fE49cK0i9Q+7Q', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('PlHFli9y+hyIZ8NQGNBcJw', 'xj2EEIg1w2q6hXyc2sJuww', 'date_served', 'date', 'NO', 0, 'none', '', 'date controls', 'Date Served', 'yes'),
('81lIsWfApW8vri73zH+FqQ', 'AQZb2jvRNHOOUeEGHxr2+g', 'request_id', 'integer', 'NO', 11, 'foreign key', '', 'drop-down list', 'Request', 'no'),
('jL8gI1Tak5XxvApOOQKUrg', 'xj2EEIg1w2q6hXyc2sJuww', 'date_filed', 'varchar', 'NO', 0, 'none', '', 'date controls', 'Date Filled', 'yes'),
('Jlqi6NVsrCe5h9Yld/xz8w', 'kch1paJBspKqHl6fM21LIA', 'barangay_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Barangay ID', 'no'),
('VpCinIZRLbJ5AQBNvWy8tg', 'kch1paJBspKqHl6fM21LIA', 'barangay_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Barangay Name', 'yes'),
('dHyRyrQyCu9LnpNpxtxXMA', 'kch1paJBspKqHl6fM21LIA', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('WYWPYEFN8tErOSiWAxrP7Q', 'kch1paJBspKqHl6fM21LIA', 'district_number', 'varchar', 'NO', 45, '', 'N', 'textbox', 'District Number', 'yes'),
('zUI65Og69DOpMZt4h7iQzg', 'kch1paJBspKqHl6fM21LIA', 'city_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'City', 'yes'),
('GrGlxb0d8rYDiLrB/tCqCA', 'fWWWOpaZCVXE+q5P4kM0Hg', 'validate_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Validate ID', 'no'),
('Ja9NvH8U35gFWyWZYY3uFg', 'fWWWOpaZCVXE+q5P4kM0Hg', 'proof_of_id', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'Proof Of ID', 'yes'),
('yffhEniB6LJzdPBDtecrWQ', 'fWWWOpaZCVXE+q5P4kM0Hg', 'proof_of_address', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'Proof Of Address', 'yes'),
('uG2OgNC0dTQelamNTpyjoQ', 'fWWWOpaZCVXE+q5P4kM0Hg', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('CT/VApQ35fIiPb4y9epJ2g', 'fWWWOpaZCVXE+q5P4kM0Hg', 'status', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Status', 'yes'),
('GVCcLN6JPPASnFRnRowPBQ', 'sizcBfeFeCAAPWLgk0pwag', 'zone_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Zone ID', 'no'),
('NbIzIv6fuoN6ggae4Wqp4A', 'sizcBfeFeCAAPWLgk0pwag', 'zone_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Zone Name', 'yes'),
('kRLgIToWPLsp4+pfackdYQ', 'sizcBfeFeCAAPWLgk0pwag', 'zone_leader_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Zone Leader Name', 'yes'),
('whhJ2IzCZDHy6idMgRuI5w', 'sizcBfeFeCAAPWLgk0pwag', 'barangay_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Barangay', 'yes'),
('1Yem4aViy7QfNbIBQrbU9A', 'uRXq/lsO8bXc7MVjrxTXJg', 'hellow', 'integer', 'NO', 11, '', 'N', 'textbox', 'Hellow', 'yes'),
('JljtxItP955kSua+Qe7inw', 'uRXq/lsO8bXc7MVjrxTXJg', 'hi', 'integer', 'NO', 11, '', 'N', 'textbox', 'Hi', 'yes'),
('a8C/w4cMWiOZeWEIyLEMyg', 'uRXq/lsO8bXc7MVjrxTXJg', 'eow', 'integer', 'NO', 11, '', 'N', 'textbox', 'Eow', 'yes'),
('Ha42MVEVCw8Hgo8j4sJl9g', 'IOxAI1KslB3PSHjSFYP+Lg', 'document_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Document ID', 'no'),
('t5EUxayqIS2wGTSCCz482w', 'IOxAI1KslB3PSHjSFYP+Lg', 'document_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Document Name', 'yes'),
('xGGSM0jX3XBOkkTJ8jipsw', 'IOxAI1KslB3PSHjSFYP+Lg', 'document_description', 'text', 'NO', 0, '', 'N', 'textarea', 'Document Description', 'yes'),
('ISn284zv4CZC+x8yjXqyxQ', 'IOxAI1KslB3PSHjSFYP+Lg', 'date_offered', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Offered', 'yes'),
('vtvHbPHOofQ5S2zrAzz3Ag', 'IOxAI1KslB3PSHjSFYP+Lg', 'is_offered', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Offered', 'yes'),
('kSKB095f0vBJBWHlfol/7Q', 'xj2EEIg1w2q6hXyc2sJuww', 'request_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Request ID', 'no'),
('Z8CQfGzE2l4Bd7X+XZsGjA', 'xj2EEIg1w2q6hXyc2sJuww', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('nlLV07Rf6jThBWGUf4/kiw', 'NIKti62zWfgIf3quzy0+jQ', 'requirement_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Requirement ID', 'no'),
('rfTZgMGmNwH0437pz+l5+Q', 'NIKti62zWfgIf3quzy0+jQ', 'requirement_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Requirement Name', 'yes'),
('WuRWLEqX5dYpDuplDgaH/g', 'NIKti62zWfgIf3quzy0+jQ', 'document_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Document', 'yes'),
('39wNnu3+fh4lwaNfAcOOvQ', 'AQZb2jvRNHOOUeEGHxr2+g', 'sub_doc_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Sub Doc ID', 'no'),
('4QXpSyUDNvs++aCpNRC+Sg', 'AQZb2jvRNHOOUeEGHxr2+g', 'document_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Document', 'yes'),
('/lV0d2qAXNP1QscWobkodA', 'AQZb2jvRNHOOUeEGHxr2+g', 'requirement_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Requirement', 'yes'),
('Rq6HGwB3TiHnwApZu+KKew', 'AQZb2jvRNHOOUeEGHxr2+g', 'requirement_doc', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'Requirement Doc', 'yes'),
('lALOg4SrvbOTto+N5cXe+A', 'AQZb2jvRNHOOUeEGHxr2+g', 'status', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Status', 'yes'),
('NQc1ji3idF8Z2ECDs5hQ2g', 'P7h6/8h+YKBo0AMQP3HQQA', 'day_care_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Day Care ID', 'no'),
('qjJLhoNW+GRojMoJomP8iQ', 'P7h6/8h+YKBo0AMQP3HQQA', 'guardian_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Guardian Name', 'yes'),
('DSUdF0MyQbpGQKjK/eA6OQ', 'P7h6/8h+YKBo0AMQP3HQQA', 'child_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Child Name', 'yes'),
('Qkk4I7i774IwhQPcHckQSA', 'P7h6/8h+YKBo0AMQP3HQQA', 'time_in', 'date', 'NO', 255, 'none', 'N', 'date controls', 'Time In', 'yes'),
('ZRlM3rUoO8C+kZiF7lkU0Q', 'P7h6/8h+YKBo0AMQP3HQQA', 'time_out', 'date', 'NO', 255, 'none', 'N', 'date controls', 'Time Out', 'yes'),
('pGNnIHfYxqRYx8b/Gg7jEA', 'cYeJd2Gih/korlRqidcRvw', 'barangay_clearance_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Barangay Clearance ID', 'no'),
('7wZI5+LihN0BwoVYMWYW6w', 'cYeJd2Gih/korlRqidcRvw', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('W8IadwNS92O6ZbjZ7IvK8A', 'cYeJd2Gih/korlRqidcRvw', 'purpose', 'text', 'NO', 0, '', 'N', 'textarea', 'Purpose', 'yes'),
('WXSqW8VXcyA/oGjb1zjGSA', 'd9VT2w+MAs6AGsfI+cnQqg', 'cedula_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Cedula ID', 'no'),
('NZdhacJvD6mfcdOEpRUgqw', 'd9VT2w+MAs6AGsfI+cnQqg', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('91IlG9KYCyI7Kn43GismXQ', 'd9VT2w+MAs6AGsfI+cnQqg', 'business', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Business', 'yes'),
('fmCkC6c2/nSLR7k90f/wQw', 'd9VT2w+MAs6AGsfI+cnQqg', 'income', 'decimal', 'NO', 6, '', 'N', 'textbox', 'Income', 'yes'),
('msi6b7Smrb8gO0LPD+usow', 'd9VT2w+MAs6AGsfI+cnQqg', 'real_property', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Real Property', 'yes'),
('mdiq/p5xM+r4hw8QXNwBnw', 'd9VT2w+MAs6AGsfI+cnQqg', 'total', 'decimal', 'NO', 6, '', 'N', 'textbox', 'Total', 'yes'),
('FDTk9wJI6qWY9ibCmYa08A', 'Y8SYhruygtkvgWLowIVL0Q', 'health_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Health ID', 'no'),
('G08wJRdDhF9XTL0ud5gZuQ', 'Y8SYhruygtkvgWLowIVL0Q', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('GtjLaHenwT+ce2HPCarxiw', 'Y8SYhruygtkvgWLowIVL0Q', 'asthma', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Asthma', 'yes'),
('bIL2BNGzbNowXEoS3iC2bQ', 'Y8SYhruygtkvgWLowIVL0Q', 'allergies', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Allergies', 'yes'),
('hTCUn6UVzURSsd/h/XIxCA', 'Y8SYhruygtkvgWLowIVL0Q', 'congenital_heart', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Congenital Heart', 'yes'),
('kwyL0rX7/o/xX2HILsBpdA', 'Y8SYhruygtkvgWLowIVL0Q', 'seizure', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Seizure', 'yes'),
('GbOi49e0SRbasgbvVkp21w', 'Y8SYhruygtkvgWLowIVL0Q', 'diabetes', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Diabetes', 'yes'),
('1d1nv9Zi/AwbFiBzXMsgbg', 'Y8SYhruygtkvgWLowIVL0Q', 'cancer', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Cancer', 'yes'),
('G0Ebr4UTOJFDzCgsUyqHUg', 'Y8SYhruygtkvgWLowIVL0Q', 'ortophedic_prob', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Ortophedic Prob', 'yes'),
('j4VgqC7xkkW+jXlLQ+nQ+Q', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_prob', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Vission Prob', 'yes'),
('m3xpwM9MOeKsmNF8wad/wA', 'Y8SYhruygtkvgWLowIVL0Q', 'hearing_prob', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Hearing Prob', 'yes'),
('u5t3JN+K2w73sHoQPpTueA', 'Y8SYhruygtkvgWLowIVL0Q', 'speech_prob', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Speech Prob', 'yes'),
('DVi4n+yHUElBLk8SHUzp+g', 'Y8SYhruygtkvgWLowIVL0Q', 'hospitalization', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Hospitalization', 'yes'),
('gUZoKJwEoLuh3MQWkmNpAw', 'Y8SYhruygtkvgWLowIVL0Q', 'surgery', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Surgery', 'yes'),
('oJJ+mi+cy5O8pTbATBKWfQ', 'Y8SYhruygtkvgWLowIVL0Q', 'serious_illness', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Serious Illness', 'yes'),
('VTnpvesj93zr2ghkaElzrQ', 'Y8SYhruygtkvgWLowIVL0Q', 'serious_accidents', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Serious Accidents', 'yes'),
('3ypKybKKeg8yKg83by1YbA', 'Y8SYhruygtkvgWLowIVL0Q', 'bmi', 'integer', 'NO', 3, '', 'N', 'textbox', 'Bmi', 'yes'),
('tg97Xl9B8hszqsEc+4Jz1w', 'Y8SYhruygtkvgWLowIVL0Q', 'blood_pressure', 'varchar', 'NO', 7, '', 'N', 'textbox', 'Blood Pressure', 'yes'),
('bIxPkxf1RqWzmFxwJJhS3Q', 'Y8SYhruygtkvgWLowIVL0Q', 'heent', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Heent', 'yes'),
('3k4OEJOEqeQpt5sY2dq+Cg', 'Y8SYhruygtkvgWLowIVL0Q', 'dental_status', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Dental Status', 'yes'),
('b/Hqv7ma7pasqM17kcHnUA', 'Y8SYhruygtkvgWLowIVL0Q', 'neck', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Neck', 'yes'),
('8fvKlv6LLTUKjvs3BXTs4Q', 'Y8SYhruygtkvgWLowIVL0Q', 'lymph_nodes', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Lymph Nodes', 'yes'),
('gbHDQ2l1LAYqQ99/f2qZow', 'Y8SYhruygtkvgWLowIVL0Q', 'lungs', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Lungs', 'yes'),
('UMcTxjAWI1crPa2TAgGASQ', 'Y8SYhruygtkvgWLowIVL0Q', 'cardiovascular', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Cardiovascular', 'yes'),
('hSDNDX9m2dZ4W4UtskA2ew', 'Y8SYhruygtkvgWLowIVL0Q', 'abdomen', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Abdomen', 'yes'),
('oYYBYbLxT/GZ7mVPn3MVZQ', 'Y8SYhruygtkvgWLowIVL0Q', 'genito_urinary', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Genito Urinary', 'yes'),
('nidNoiBdcDaGiXoDWM12oA', 'Y8SYhruygtkvgWLowIVL0Q', 'extremites', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Extremites', 'yes'),
('HySgkJcgixcmB+l6uGlEjA', 'Y8SYhruygtkvgWLowIVL0Q', 'back', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Back', 'yes'),
('CweLBWihfT/SBw7iCRdnlg', 'Y8SYhruygtkvgWLowIVL0Q', 'skin', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Skin', 'yes'),
('CKCjvplja3SEk81z1boYeA', 'Y8SYhruygtkvgWLowIVL0Q', 'neuro', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Neuro', 'yes'),
('tgnGbqeipDwnbqfC3WFhfg', 'Y8SYhruygtkvgWLowIVL0Q', 'gross_motor', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Gross Motor', 'yes'),
('ioYChOY0HyFXk/cs2j+23Q', 'Y8SYhruygtkvgWLowIVL0Q', 'psycho_social_dv', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Psycho Social Dv', 'yes'),
('dsSYhB6o9ctYSesZPzYp1g', 'Y8SYhruygtkvgWLowIVL0Q', 'language', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Language', 'yes'),
('p8v20qLfC9YyAEWLag3FMg', 'Y8SYhruygtkvgWLowIVL0Q', 'behavioral', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Behavioral', 'yes'),
('tB20NADW+iMzZmisvG8eJw', 'Y8SYhruygtkvgWLowIVL0Q', 'fine_motor', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Fine Motor', 'yes'),
('GnTt1QG6ZYVqAwraQCsOPw', 'Y8SYhruygtkvgWLowIVL0Q', 'hearing_audio', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Hearing Audio', 'yes'),
('sgPNgtQ3k8Wl3MpjgS+5sA', 'Y8SYhruygtkvgWLowIVL0Q', 'hearing_threshold', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Hearing Threshold', 'yes'),
('Ax31Dy/faXWOruG4oU2/xQ', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_right_far', 'integer', 'NO', 2, '', 'N', 'textbox', 'Vission Right Far', 'yes'),
('BzpyyMaSuaYm7S7qi49pHw', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_right_near', 'integer', 'NO', 2, '', 'N', 'textbox', 'Vission Right Near', 'yes'),
('tU4lGVwyVlRrrXb1cstADg', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_left_far', 'integer', 'NO', 2, '', 'N', 'textbox', 'Vission Left Far', 'yes'),
('0iRiiP+hWN6wo9dcNRtV5g', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_left_near', 'integer', 'NO', 2, '', 'N', 'textbox', 'Vission Left Near', 'yes'),
('6MutYlrFjAZzyhFf93pE5w', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_both_far', 'integer', 'NO', 2, '', 'N', 'textbox', 'Vission Both Far', 'yes'),
('K6QOexu4pzpHANl1BGN+mA', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_both_near', 'integer', 'NO', 2, '', 'N', 'textbox', 'Vission Both Near', 'yes'),
('6AXXMyFvixwKmFw0Dd7csg', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_fusion', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Vission Fusion', 'yes'),
('TvDw6uGDQEoDDCoTYd7D5Q', 'Y8SYhruygtkvgWLowIVL0Q', 'vission_color', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Vission Color', 'yes'),
('dbwaEQ86wZ9oQ6NPdwGfgw', 'Y8SYhruygtkvgWLowIVL0Q', 'blood_based', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Blood Based', 'yes'),
('GnVBAdyqM/fyivfUQDvMEA', 'Y8SYhruygtkvgWLowIVL0Q', 'chest_x_ray', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Chest X Ray', 'yes'),
('RAFjnNLSBZcJaRE5fDjjrQ', 'Y8SYhruygtkvgWLowIVL0Q', 'bcg', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'BCG', 'yes'),
('m+fGHj7VM2NVbjJvvA97ng', 'Y8SYhruygtkvgWLowIVL0Q', 'on_inh', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'On Inh', 'yes'),
('NKTHfe8D0xwJ41iOyAJ2jA', 'Y8SYhruygtkvgWLowIVL0Q', 'diagnosis', 'text', 'NO', 0, '', 'N', 'textarea', 'Diagnosis', 'yes'),
('nuZlyn6GjCACJnFtA8m6HQ', 'Y8SYhruygtkvgWLowIVL0Q', 'recomendations', 'text', 'NO', 0, '', 'N', 'textarea', 'Recomendations', 'yes'),
('ckAa53lOEr6gZjnVvNatxw', 'pcl44WGaRerapbAbZaPRDw', 'zip_code', 'integer', 'NO', 5, 'foreign key', '', 'drop-down list', 'Zip', 'yes'),
('8VuSJGaUQ+kwoUiDcZ9isg', 'McYnj/51pNi0+Y7TEKPvGQ', 'nationality_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Nationality ID', 'no'),
('0E1iPl6D0QRjDCBz5siE1A', 'McYnj/51pNi0+Y7TEKPvGQ', 'nationality', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Nationality', 'yes'),
('puOWv7wVDhKWTDfyigDDlQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'citizenship', 'varchar', 'NO', 45, 'foreign key', '', 'drop-down list', 'Citizenship', 'yes'),
('1GE5m/Sti+u0UCdLu/O6kQ', 'N99ekyEt+lL2JZkY2i5MWA', 'skill_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Skill ID', 'no'),
('7A2XpoAxnacI72PvMg2BGA', 'N99ekyEt+lL2JZkY2i5MWA', 'skill_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Skill Name', 'yes'),
('I62YvEkSUy6aqEry3h/6QA', 'N99ekyEt+lL2JZkY2i5MWA', 'skill_set_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Category Of Skill', 'yes'),
('ao71inbJNHWiy1LF/TQdJA', 'ZtanAWehbsOkLB8rKif6/w', 'skill_set_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Skill Set ID', 'no'),
('fX4ub1HlrJFlz0U+7A/hAA', 'ZtanAWehbsOkLB8rKif6/w', 'skill_category', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Skill Category', 'yes'),
('KrXYRBd2xHRjIbB+8Jyw+g', 'BYf9jiy4n/VsHSmtJap8gQ', 'skill_id', 'integer', 'NO', 11, 'foreign key', '', 'drop-down list', 'Skill', 'yes'),
('xmUvFIZJ8pkEy4vTfxXaZg', 'BYf9jiy4n/VsHSmtJap8gQ', 'skill_set_id', 'integer', 'NO', 11, 'foreign key', '', 'drop-down list', 'Skill set', 'yes'),
('fhRL4uJcbvLw/mLx6i8S2g', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'business_permit_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Business Permit ID', 'no'),
('r+PYrQvhgKH4ZtRcBI3gyQ', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'company_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Company Name', 'yes'),
('s0mnDMufHnSsJnKL+e9oYg', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'office_tel_num', 'integer', 'NO', 11, '', 'N', 'textbox', 'Office Tel Num', 'yes'),
('RLx2aZ1pkSA7GvKAB4W62w', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'region', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Region', 'yes'),
('kedWF00F4Jnuh1oGOw2Lmg', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'province', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Province', 'yes'),
('f0GpW5dMDmuKAMZ+E5eXKw', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'city', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'City', 'yes'),
('cTnDv9n/Wky4bb1zVcqbTg', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'barangay', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Barangay', 'yes'),
('BpPVzc26JTIHW9kov8Pdwg', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'district', 'integer', 'NO', 11, '', 'N', 'textbox', 'District', 'yes'),
('IWkhYOYqdNcJ4TxiQAjl6A', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'zip_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Zip Code', 'yes'),
('Uw6BQ650gYypHRtDPvkVmg', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'street', 'varchar', 'NO', 45, 'none', 'N', 'textbox', 'Street', 'yes'),
('McOxE8PZ0kn8Y9Y3MCNSMg', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'office_number', 'integer', 'NO', 11, '', 'N', 'textbox', 'Office Number', 'yes'),
('NQdfsU3K1k2pNUttIc+C5g', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'email', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Email', 'yes'),
('MFr+mr1uLaes453hofzr3g', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'website', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Website', 'yes'),
('7FPNvmD7RSzUQIY2v35o+A', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'fax_num', 'integer', 'NO', 10, '', 'N', 'textbox', 'Fax Num', 'yes'),
('98rk6f/HrZtpwc1jKUxVQQ', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'name_of_owner', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Name Of Owner', 'yes'),
('s7PxBnJzUcq0/tz7db/p8g', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'contact_of_owner', 'integer', 'NO', 11, '', 'N', 'textbox', 'Contact Of Owner', 'yes'),
('tcVPXyU5fxTcnprIfDjTJQ', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'name_of_mngr', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Name Of Mngr', 'yes'),
('9FsLOA8iRGD6eCeayFxQXQ', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'contact_of_mngr', 'integer', 'NO', 11, '', 'N', 'textbox', 'Contact Of Mngr', 'yes'),
('9NJTi4/juSr5rKvEwM1laQ', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'type_of_business', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Type Of Business', 'yes'),
('n6VpDSOCcjdY5lJlTh5GRA', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'line_of_business', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Line Of Business', 'yes'),
('+olPocd0q6jSXStMCnltDA', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'capital_investment', 'integer', 'NO', 11, 'none', '', 'textbox', 'Capital Investment', 'yes'),
('0OV+q6txnN4gBDUkKumPBg', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_contact_number', 'integer', 'NO', 11, 'none', '', 'textbox', 'Father contact number', 'yes'),
('GAvGlKQWIaOYM8er2/62mA', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_occupation', 'varchar', 'NO', 45, 'none', '', 'textbox', 'Father occupation', 'yes'),
('C8iw0rEpQM0bPQaH469b4w', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_contact_number', 'integer', 'NO', 11, 'none', '', 'textbox', 'Mother contact_number', 'yes'),
('MudgBV/VJxjAlVA86mH8fA', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_occupation', 'varchar', 'NO', 45, 'none', '', 'textbox', 'Mother occupation', 'yes'),
('xsQC5ItLjWgBlM7tMZMZsw', 'BYf9jiy4n/VsHSmtJap8gQ', 'pwd', 'varchar', 'NO', 45, 'none', '', 'radio buttons', 'PWD', 'yes'),
('IL0ivHyXzvvHspnTwCSOhw', 'sizcBfeFeCAAPWLgk0pwag', 'city_id', 'integer', 'NO', 11, 'foreign key', '', 'drop-down list', 'City', 'yes'),
('qChmorHVWqARS1D2KsKUiQ', '0XgEduSPAtkmfseLrOzW0g', 'fee_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Fee ID', 'no'),
('CnOTA6Jem6gW3QQoiv/Dog', '0XgEduSPAtkmfseLrOzW0g', 'document_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Document', 'yes'),
('m2jcTrSfEv/vZmHQFMmMbQ', '0XgEduSPAtkmfseLrOzW0g', 'fee', 'decimal', 'NO', 6, '', 'N', 'textbox', 'Fee', 'yes'),
('OZUPkae8fF5PChGfc/TtqQ', 'SpdSGIl6RYPwbusNUu03hA', 'school_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'School ID', 'no'),
('8trZ9Vau53vKY9GEkkyzbw', 'SpdSGIl6RYPwbusNUu03hA', 'school_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'School Name', 'yes'),
('OIR0OxqOt53rfP0110P+rA', 'SpdSGIl6RYPwbusNUu03hA', 'address', 'varchar', 'NO', 45, '', 'N', 'textarea', 'Address', 'yes'),
('v1rGZUfdlI3E1heTyp6uwA', 'SpdSGIl6RYPwbusNUu03hA', 'is_evacuation', 'varchar', 'NO', 45, 'none', 'N', 'radio buttons', 'Is Evacuation', 'yes'),
('dxa65NnNc5Q3xN6ojm463g', 'SpdSGIl6RYPwbusNUu03hA', 'city', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'City', 'yes'),
('XNwC2ttlyjTxRQx9u+BOSQ', 'buKUNoX99+fyZnwPF73aew', 'heath_center_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Heath Center ID', 'no'),
('Ym6Fe7XvSXqzmijDPW6F1w', 'buKUNoX99+fyZnwPF73aew', 'health_center_name', 'varchar', 'NO', 35, '', 'N', 'textbox', 'Health Center Name', 'yes'),
('RIIk/NCgxF9T+NmD/qUDrQ', 'buKUNoX99+fyZnwPF73aew', 'health_center_code', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Health Center Code', 'yes'),
('/RPgehQezddIkFNWZKrVpA', 'buKUNoX99+fyZnwPF73aew', 'address', 'text', 'NO', 0, '', 'N', 'textarea', 'Address', 'yes'),
('5m2JzH3mgjPzD6Sn2N7LVQ', 'buKUNoX99+fyZnwPF73aew', 'city', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'City', 'yes'),
('kqEZTuDmXb4mjSBjwiRN0A', 'Y8wWOkjQzasdSg1tFVqqsw', 'concern_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Concern ID', 'no'),
('J0KGAt/JA14VQhJiyq3HjQ', 'Y8wWOkjQzasdSg1tFVqqsw', 'type_of_case', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Type Of Case', 'yes'),
('3z0gAMVSSwDz/sBe7ecdqg', 'Y8wWOkjQzasdSg1tFVqqsw', 'respondent_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Respondent Name', 'yes'),
('mSkcUw1a70c2YkncRRpRcA', 'Y8wWOkjQzasdSg1tFVqqsw', 'compliant_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Compliant Name', 'yes'),
('fC8G+YSo4ljDXnlCMN8bOQ', 'Y8wWOkjQzasdSg1tFVqqsw', 'scenario', 'text', 'NO', 0, '', 'N', 'textarea', 'Scenario', 'yes'),
('aorZSSBkx6mByqrknISSaw', 'Y8wWOkjQzasdSg1tFVqqsw', 'date_filed', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Filed', 'yes'),
('t/YLqGSWIb3BuGixkJGfLw', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'fee_new', 'integer', 'NO', 11, 'foreign key', '', 'drop-down list', 'Fee New', 'yes'),
('p6uKwFOB+wc1sKACWW/Ahg', 'XSJnQ2ux+pF0nAFyePZKzQ', 'business_permit_fee_id', 'integer', 'NO', 11, 'primary key', 'N', 'textbox', 'Business Permit Fee ID', 'yes'),
('CMOzYOQABIzoe0p2JB0EVw', 'XSJnQ2ux+pF0nAFyePZKzQ', 'capital_investment', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Capital Investment', 'yes'),
('gF63kgOPz3tEI1DSezBAdw', 'XSJnQ2ux+pF0nAFyePZKzQ', 'fee_new', 'integer', 'NO', 11, '', 'N', 'textbox', 'Fee New', 'yes'),
('a1Y5CUQ2S+7xVZL2MM5ivA', 'XSJnQ2ux+pF0nAFyePZKzQ', 'fee_renew', 'integer', 'NO', 11, '', 'N', 'textbox', 'Fee Renew', 'yes'),
('sbW7wJ7l1/ZYXj0Y1z4GWg', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'fee_renew', 'integer', 'NO', 11, 'foreign key', '', 'drop-down list', 'Fee Renew', 'yes'),
('9Z5eV3knaAhHtC2zQDOXPQ', 'pvVKhu0Wa5lXLnIOt7wsYQ', 'type', 'varchar', 'NO', 45, 'none', '', 'drop-down list', 'Type', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_book_list`
--

CREATE TABLE `table_fields_book_list` (
  `Field_ID` char(44) NOT NULL,
  `Book_List_Generator` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list`
--

CREATE TABLE `table_fields_list` (
  `Field_ID` char(44) NOT NULL,
  `List_ID` char(44) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_list`
--

INSERT INTO `table_fields_list` (`Field_ID`, `List_ID`) VALUES
('13ntnFmAGrb9CozeM3vG/w', 'BtHsaDrhY32mojB4JSJpGg'),
('1d1nv9Zi/AwbFiBzXMsgbg', 'QYYjD3+KUiPvAVHRhtCyDg'),
('1VFxpTj1eVriDZwsjNpqzQ', 'OXApXCXrQ0o29Tim2Ab/AA'),
('3JrbqGZJBwQj3pu2nUbWXg', 'BtHsaDrhY32mojB4JSJpGg'),
('3k4OEJOEqeQpt5sY2dq+Cg', '052LAcxvGFXtyni3ME+0vw'),
('6AXXMyFvixwKmFw0Dd7csg', 'mWlzaKG6Xf+eTp1cG4nWbA'),
('8fvKlv6LLTUKjvs3BXTs4Q', '052LAcxvGFXtyni3ME+0vw'),
('9NJTi4/juSr5rKvEwM1laQ', 'EQfMQquh8qs+ppyEfoT4Ng'),
('9Z5eV3knaAhHtC2zQDOXPQ', 'Pbfs6sXJgzmKP59fCGsmAA'),
('b/Hqv7ma7pasqM17kcHnUA', '052LAcxvGFXtyni3ME+0vw'),
('bIL2BNGzbNowXEoS3iC2bQ', 'QYYjD3+KUiPvAVHRhtCyDg'),
('bIxPkxf1RqWzmFxwJJhS3Q', '052LAcxvGFXtyni3ME+0vw'),
('CKCjvplja3SEk81z1boYeA', '052LAcxvGFXtyni3ME+0vw'),
('CT/VApQ35fIiPb4y9epJ2g', 'cTXvZ82is1Q3KJrEgQLZ8g'),
('CweLBWihfT/SBw7iCRdnlg', '052LAcxvGFXtyni3ME+0vw'),
('dbwaEQ86wZ9oQ6NPdwGfgw', 'wwuSUIw02Ub2EK7uAPaM3g'),
('dsSYhB6o9ctYSesZPzYp1g', '052LAcxvGFXtyni3ME+0vw'),
('DVi4n+yHUElBLk8SHUzp+g', 'QYYjD3+KUiPvAVHRhtCyDg'),
('EYe/KuLeYmDvjcCC6C821Q', 'xU2EOzkpO45LTbiuI+pMtg'),
('G0Ebr4UTOJFDzCgsUyqHUg', 'QYYjD3+KUiPvAVHRhtCyDg'),
('gbHDQ2l1LAYqQ99/f2qZow', '052LAcxvGFXtyni3ME+0vw'),
('GbOi49e0SRbasgbvVkp21w', 'QYYjD3+KUiPvAVHRhtCyDg'),
('GnTt1QG6ZYVqAwraQCsOPw', 'mWlzaKG6Xf+eTp1cG4nWbA'),
('GnVBAdyqM/fyivfUQDvMEA', 'YWtDJDTwErtqlzzFRrZhzg'),
('GtjLaHenwT+ce2HPCarxiw', 'QYYjD3+KUiPvAVHRhtCyDg'),
('gUZoKJwEoLuh3MQWkmNpAw', 'QYYjD3+KUiPvAVHRhtCyDg'),
('hSDNDX9m2dZ4W4UtskA2ew', '052LAcxvGFXtyni3ME+0vw'),
('hTCUn6UVzURSsd/h/XIxCA', 'QYYjD3+KUiPvAVHRhtCyDg'),
('HySgkJcgixcmB+l6uGlEjA', '052LAcxvGFXtyni3ME+0vw'),
('i+rCyOlTgqdBuiUgDlgAkQ', 'BtHsaDrhY32mojB4JSJpGg'),
('ioYChOY0HyFXk/cs2j+23Q', '052LAcxvGFXtyni3ME+0vw'),
('J0KGAt/JA14VQhJiyq3HjQ', '7t1C1vt7s7Bxk5bfPysftw'),
('j4VgqC7xkkW+jXlLQ+nQ+Q', 'QYYjD3+KUiPvAVHRhtCyDg'),
('kwyL0rX7/o/xX2HILsBpdA', 'QYYjD3+KUiPvAVHRhtCyDg'),
('lALOg4SrvbOTto+N5cXe+A', 'cTXvZ82is1Q3KJrEgQLZ8g'),
('m+fGHj7VM2NVbjJvvA97ng', 'BtHsaDrhY32mojB4JSJpGg'),
('m3xpwM9MOeKsmNF8wad/wA', 'QYYjD3+KUiPvAVHRhtCyDg'),
('n6VpDSOCcjdY5lJlTh5GRA', '1t+uWFmNBuu3f6mnpM83nQ'),
('nidNoiBdcDaGiXoDWM12oA', '052LAcxvGFXtyni3ME+0vw'),
('oJJ+mi+cy5O8pTbATBKWfQ', 'QYYjD3+KUiPvAVHRhtCyDg'),
('oYYBYbLxT/GZ7mVPn3MVZQ', '052LAcxvGFXtyni3ME+0vw'),
('p8v20qLfC9YyAEWLag3FMg', '052LAcxvGFXtyni3ME+0vw'),
('RAFjnNLSBZcJaRE5fDjjrQ', 'BtHsaDrhY32mojB4JSJpGg'),
('sgPNgtQ3k8Wl3MpjgS+5sA', 'mWlzaKG6Xf+eTp1cG4nWbA'),
('tB20NADW+iMzZmisvG8eJw', '052LAcxvGFXtyni3ME+0vw'),
('tgnGbqeipDwnbqfC3WFhfg', '052LAcxvGFXtyni3ME+0vw'),
('tOxuFHuhQn7CzT3yGmTtRA', 'XQAsiwKFaecnsPMlXNfrlA'),
('TvDw6uGDQEoDDCoTYd7D5Q', 'mWlzaKG6Xf+eTp1cG4nWbA'),
('u5t3JN+K2w73sHoQPpTueA', 'QYYjD3+KUiPvAVHRhtCyDg'),
('UMcTxjAWI1crPa2TAgGASQ', '052LAcxvGFXtyni3ME+0vw'),
('v1rGZUfdlI3E1heTyp6uwA', 'BtHsaDrhY32mojB4JSJpGg'),
('vbTTDiTjdDNlCltj5Ag5gA', '2YY+ife0WSgLXENCMLQnCg'),
('Vmn8cLkblrNWShARYqs27Q', 'XC1i0GotE5lwgiQJB/gGuQ'),
('VTnpvesj93zr2ghkaElzrQ', 'QYYjD3+KUiPvAVHRhtCyDg'),
('vtvHbPHOofQ5S2zrAzz3Ag', 'BtHsaDrhY32mojB4JSJpGg'),
('wUjSjA/CK5aJnrapBe4FYg', 'kN5/C+bWX4OKBFbQg76/sg'),
('xsQC5ItLjWgBlM7tMZMZsw', 'BtHsaDrhY32mojB4JSJpGg');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_select`
--

CREATE TABLE `table_fields_list_source_select` (
  `Field_ID` char(44) NOT NULL,
  `Auto_ID` int(11) NOT NULL,
  `Select_Field_ID` char(44) NOT NULL,
  `Display` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_list_source_select`
--

INSERT INTO `table_fields_list_source_select` (`Field_ID`, `Auto_ID`, `Select_Field_ID`, `Display`) VALUES
('kgzD552p7CbDhL1w4aC/bw', 1, 'u9wkogwQglAzp6gfbrBMsA', 'No'),
('kgzD552p7CbDhL1w4aC/bw', 2, '/JeXItd3F+SJ4rb/swbFSQ', 'Yes'),
('lDM4gDuXQFrwVf0y3Zr2oQ', 1, '7nMzknfNaqrQ7RQI4Edk7A', 'No'),
('lDM4gDuXQFrwVf0y3Zr2oQ', 2, 'uF34iCe03S5hxcUBlOmPew', 'Yes'),
('UK6aBxDF1ZUCunHHWF8Ypw', 2, 'y4OqjZ65Vr+QzMmhCb7Vlg', 'Yes'),
('iAKNZw1+MJiWreQbewFQkw', 1, 'TgmwlovJin+MKDkuHeY75w', 'No'),
('iAKNZw1+MJiWreQbewFQkw', 2, 'y4OqjZ65Vr+QzMmhCb7Vlg', 'Yes'),
('WuRWLEqX5dYpDuplDgaH/g', 1, 'Ha42MVEVCw8Hgo8j4sJl9g', 'No'),
('WuRWLEqX5dYpDuplDgaH/g', 2, 't5EUxayqIS2wGTSCCz482w', 'Yes'),
('Z8CQfGzE2l4Bd7X+XZsGjA', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('Z8CQfGzE2l4Bd7X+XZsGjA', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('Z8CQfGzE2l4Bd7X+XZsGjA', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('Z8CQfGzE2l4Bd7X+XZsGjA', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('4QXpSyUDNvs++aCpNRC+Sg', 1, 'Ha42MVEVCw8Hgo8j4sJl9g', 'No'),
('4QXpSyUDNvs++aCpNRC+Sg', 2, 't5EUxayqIS2wGTSCCz482w', 'Yes'),
('uG2OgNC0dTQelamNTpyjoQ', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('uG2OgNC0dTQelamNTpyjoQ', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('uG2OgNC0dTQelamNTpyjoQ', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('uG2OgNC0dTQelamNTpyjoQ', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('UK6aBxDF1ZUCunHHWF8Ypw', 1, 'TgmwlovJin+MKDkuHeY75w', 'No'),
('Q9+HlJold/JFXijpZa01KQ', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('Q9+HlJold/JFXijpZa01KQ', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('Q9+HlJold/JFXijpZa01KQ', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('Q9+HlJold/JFXijpZa01KQ', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('zUI65Og69DOpMZt4h7iQzg', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('zUI65Og69DOpMZt4h7iQzg', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('H84dM/cy+Ep+Z6COB5Mw9w', 2, 'VpCinIZRLbJ5AQBNvWy8tg', 'Yes'),
('H84dM/cy+Ep+Z6COB5Mw9w', 1, 'Jlqi6NVsrCe5h9Yld/xz8w', 'No'),
('V/Ci7v2oPGROR0+GJjv2bQ', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('V/Ci7v2oPGROR0+GJjv2bQ', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('5//5txbJyXTTfLfirfpaHg', 1, 'DaCaF/LNAD+NrntWVERRAA', 'No'),
('5//5txbJyXTTfLfirfpaHg', 2, 'Oendr3sedvqoU4ofpsq9gQ', 'Yes'),
('Ip2EeaXbcIbQuzsZ8BAXcQ', 1, 'DaCaF/LNAD+NrntWVERRAA', 'No'),
('Ip2EeaXbcIbQuzsZ8BAXcQ', 2, 'Oendr3sedvqoU4ofpsq9gQ', 'Yes'),
('whhJ2IzCZDHy6idMgRuI5w', 1, 'Jlqi6NVsrCe5h9Yld/xz8w', 'No'),
('whhJ2IzCZDHy6idMgRuI5w', 2, 'VpCinIZRLbJ5AQBNvWy8tg', 'Yes'),
('/lV0d2qAXNP1QscWobkodA', 1, 'nlLV07Rf6jThBWGUf4/kiw', 'No'),
('/lV0d2qAXNP1QscWobkodA', 2, 'rfTZgMGmNwH0437pz+l5+Q', 'Yes'),
('81lIsWfApW8vri73zH+FqQ', 2, 'Z8CQfGzE2l4Bd7X+XZsGjA', 'Yes'),
('81lIsWfApW8vri73zH+FqQ', 1, 'kSKB095f0vBJBWHlfol/7Q', 'No'),
('KrXYRBd2xHRjIbB+8Jyw+g', 2, '7A2XpoAxnacI72PvMg2BGA', 'Yes'),
('7wZI5+LihN0BwoVYMWYW6w', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('7wZI5+LihN0BwoVYMWYW6w', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('7wZI5+LihN0BwoVYMWYW6w', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('7wZI5+LihN0BwoVYMWYW6w', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('NZdhacJvD6mfcdOEpRUgqw', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('NZdhacJvD6mfcdOEpRUgqw', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('NZdhacJvD6mfcdOEpRUgqw', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('NZdhacJvD6mfcdOEpRUgqw', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('G08wJRdDhF9XTL0ud5gZuQ', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('G08wJRdDhF9XTL0ud5gZuQ', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('G08wJRdDhF9XTL0ud5gZuQ', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('G08wJRdDhF9XTL0ud5gZuQ', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('KrXYRBd2xHRjIbB+8Jyw+g', 1, '1GE5m/Sti+u0UCdLu/O6kQ', 'No'),
('I62YvEkSUy6aqEry3h/6QA', 1, 'ao71inbJNHWiy1LF/TQdJA', 'No'),
('I62YvEkSUy6aqEry3h/6QA', 2, 'fX4ub1HlrJFlz0U+7A/hAA', 'Yes'),
('217rUeP4FPYuECz6Mi4gmg', 1, '8VuSJGaUQ+kwoUiDcZ9isg', 'No'),
('217rUeP4FPYuECz6Mi4gmg', 2, '0E1iPl6D0QRjDCBz5siE1A', 'Yes'),
('puOWv7wVDhKWTDfyigDDlQ', 1, '8VuSJGaUQ+kwoUiDcZ9isg', 'No'),
('puOWv7wVDhKWTDfyigDDlQ', 2, '0E1iPl6D0QRjDCBz5siE1A', 'Yes'),
('xmUvFIZJ8pkEy4vTfxXaZg', 1, 'ao71inbJNHWiy1LF/TQdJA', 'No'),
('xmUvFIZJ8pkEy4vTfxXaZg', 2, 'fX4ub1HlrJFlz0U+7A/hAA', 'Yes'),
('RLx2aZ1pkSA7GvKAB4W62w', 1, 'TgmwlovJin+MKDkuHeY75w', 'No'),
('RLx2aZ1pkSA7GvKAB4W62w', 2, 'y4OqjZ65Vr+QzMmhCb7Vlg', 'Yes'),
('kedWF00F4Jnuh1oGOw2Lmg', 1, 'DaCaF/LNAD+NrntWVERRAA', 'No'),
('kedWF00F4Jnuh1oGOw2Lmg', 2, 'Oendr3sedvqoU4ofpsq9gQ', 'Yes'),
('f0GpW5dMDmuKAMZ+E5eXKw', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('f0GpW5dMDmuKAMZ+E5eXKw', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('cTnDv9n/Wky4bb1zVcqbTg', 1, 'Jlqi6NVsrCe5h9Yld/xz8w', 'No'),
('cTnDv9n/Wky4bb1zVcqbTg', 2, 'VpCinIZRLbJ5AQBNvWy8tg', 'Yes'),
('IL0ivHyXzvvHspnTwCSOhw', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('IL0ivHyXzvvHspnTwCSOhw', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('CnOTA6Jem6gW3QQoiv/Dog', 1, 'Ha42MVEVCw8Hgo8j4sJl9g', 'No'),
('CnOTA6Jem6gW3QQoiv/Dog', 2, 't5EUxayqIS2wGTSCCz482w', 'Yes'),
('hVKI0jU73Fqk7z5zibyHRQ', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('hVKI0jU73Fqk7z5zibyHRQ', 2, 'ckAa53lOEr6gZjnVvNatxw', 'Yes'),
('ckAa53lOEr6gZjnVvNatxw', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('ckAa53lOEr6gZjnVvNatxw', 2, 'ckAa53lOEr6gZjnVvNatxw', 'Yes'),
('5m2JzH3mgjPzD6Sn2N7LVQ', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('5m2JzH3mgjPzD6Sn2N7LVQ', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('dxa65NnNc5Q3xN6ojm463g', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('dxa65NnNc5Q3xN6ojm463g', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('CMOzYOQABIzoe0p2JB0EVw', 1, 'p6uKwFOB+wc1sKACWW/Ahg', 'No'),
('CMOzYOQABIzoe0p2JB0EVw', 2, 'CMOzYOQABIzoe0p2JB0EVw', 'Yes'),
('t/YLqGSWIb3BuGixkJGfLw', 1, 'p6uKwFOB+wc1sKACWW/Ahg', 'No'),
('t/YLqGSWIb3BuGixkJGfLw', 2, 'gF63kgOPz3tEI1DSezBAdw', 'Yes'),
('sbW7wJ7l1/ZYXj0Y1z4GWg', 1, 'p6uKwFOB+wc1sKACWW/Ahg', 'No'),
('sbW7wJ7l1/ZYXj0Y1z4GWg', 2, 'a1Y5CUQ2S+7xVZL2MM5ivA', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_where`
--

CREATE TABLE `table_fields_list_source_where` (
  `Field_ID` char(44) NOT NULL,
  `Where_Field_ID` char(44) NOT NULL,
  `Where_Field_Operand` varchar(20) NOT NULL,
  `Where_Field_Value` varchar(200) NOT NULL,
  `Where_Field_Connector` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_list_source_where`
--

INSERT INTO `table_fields_list_source_where` (`Field_ID`, `Where_Field_ID`, `Where_Field_Operand`, `Where_Field_Value`, `Where_Field_Connector`) VALUES
('kgzD552p7CbDhL1w4aC/bw', '0', '', '', ''),
('lDM4gDuXQFrwVf0y3Zr2oQ', '0', '', '', ''),
('iAKNZw1+MJiWreQbewFQkw', '0', '', '', ''),
('WuRWLEqX5dYpDuplDgaH/g', '0', '', '', ''),
('uG2OgNC0dTQelamNTpyjoQ', '0', '', '', ''),
('4QXpSyUDNvs++aCpNRC+Sg', '0', '', '', ''),
('Z8CQfGzE2l4Bd7X+XZsGjA', '0', '', '', ''),
('Q9+HlJold/JFXijpZa01KQ', '0', '', '', ''),
('zUI65Og69DOpMZt4h7iQzg', '0', '', '', ''),
('G0Z0U3WeQKPRU8e8wdOzWQ', '0', '', '', ''),
('H84dM/cy+Ep+Z6COB5Mw9w', '0', '', '', ''),
('V/Ci7v2oPGROR0+GJjv2bQ', '0', '', '', ''),
('5//5txbJyXTTfLfirfpaHg', '0', '', '', ''),
('Ip2EeaXbcIbQuzsZ8BAXcQ', '0', '', '', ''),
('UK6aBxDF1ZUCunHHWF8Ypw', '0', '', '', ''),
('whhJ2IzCZDHy6idMgRuI5w', '0', '', '', ''),
('/lV0d2qAXNP1QscWobkodA', '0', '', '', ''),
('81lIsWfApW8vri73zH+FqQ', '0', '', '', ''),
('217rUeP4FPYuECz6Mi4gmg', '0', '', '', ''),
('RLx2aZ1pkSA7GvKAB4W62w', '0', '', '', ''),
('7wZI5+LihN0BwoVYMWYW6w', '0', '', '', ''),
('G08wJRdDhF9XTL0ud5gZuQ', '0', '', '', ''),
('NZdhacJvD6mfcdOEpRUgqw', '0', '', '', ''),
('puOWv7wVDhKWTDfyigDDlQ', '0', '', '', ''),
('KrXYRBd2xHRjIbB+8Jyw+g', '0', '', '', ''),
('xmUvFIZJ8pkEy4vTfxXaZg', '0', '', '', ''),
('kedWF00F4Jnuh1oGOw2Lmg', '0', '', '', ''),
('f0GpW5dMDmuKAMZ+E5eXKw', '0', '', '', ''),
('cTnDv9n/Wky4bb1zVcqbTg', '0', '', '', ''),
('IL0ivHyXzvvHspnTwCSOhw', '0', '', '', ''),
('CnOTA6Jem6gW3QQoiv/Dog', '0', '', '', ''),
('hVKI0jU73Fqk7z5zibyHRQ', '0', '', '', ''),
('ckAa53lOEr6gZjnVvNatxw', '0', '', '', ''),
('5m2JzH3mgjPzD6Sn2N7LVQ', '0', '', '', ''),
('dxa65NnNc5Q3xN6ojm463g', '0', '', '', ''),
('CMOzYOQABIzoe0p2JB0EVw', '0', '', '', ''),
('t/YLqGSWIb3BuGixkJGfLw', '0', '', '', ''),
('sbW7wJ7l1/ZYXj0Y1z4GWg', '0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list`
--

CREATE TABLE `table_fields_predefined_list` (
  `List_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `List_Name` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list`
--

INSERT INTO `table_fields_predefined_list` (`List_ID`, `Project_ID`, `List_Name`, `Remarks`) VALUES
('weeWNvA/esJyw0t6pEjhXQ', 'niWzp0HMbTdOVzO1puUgXQ', 'Male/Female', 'Male/Female gender list'),
('uDoLALxZbwu8aOtbtW6mhw', 'niWzp0HMbTdOVzO1puUgXQ', 'On/Off', 'On/Off status list'),
('UBGVL4E+2J8RMa6FGHlHEA', 'niWzp0HMbTdOVzO1puUgXQ', 'TRUE/FALSE', 'TRUE/FALSE list'),
('7tK/WugYOc4ZUAjObSqF1A', 'niWzp0HMbTdOVzO1puUgXQ', 'M/F', 'Single character male/female gender list'),
('e6BVIvz2FyZNOKAWxd6q4g', 'niWzp0HMbTdOVzO1puUgXQ', 'Yes/No', 'Yes/No list'),
('wV6tLILqqTgb3q54WwCxEg', 'niWzp0HMbTdOVzO1puUgXQ', 'Y/N', 'Single character yes/no list'),
('xU2EOzkpO45LTbiuI+pMtg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Male/Female', 'Male/Female gender list'),
('4to6m4+hY9QX2ngP0+6Szg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'On/Off', 'On/Off status list'),
('WwZwuqCXEA2F+tP4PqIj4A', 'tl05Ti9Zu+yEKfnKwsEg6g', 'TRUE/FALSE', 'TRUE/FALSE list'),
('iOG2mArXQBvw5vz5W6QuYg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'M/F', 'Single character male/female gender list'),
('BtHsaDrhY32mojB4JSJpGg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Yes/No', 'Yes/No list'),
('Yy7KrS3GL14d3P1rLM7EaA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Y/N', 'Single character yes/no list'),
('XQAsiwKFaecnsPMlXNfrlA', 'GgSaxyl0ukMDguHArJAwRg', 'Male/Female', 'Male/Female gender list'),
('EyucR9PN1xdR/ylAZTb4Pw', 'GgSaxyl0ukMDguHArJAwRg', 'On/Off', 'On/Off status list'),
('Rcb2nsaiUEkPoKsYIAvI0Q', 'GgSaxyl0ukMDguHArJAwRg', 'TRUE/FALSE', 'TRUE/FALSE list'),
('gUHAHVWX1snhzySN0NuzIw', 'GgSaxyl0ukMDguHArJAwRg', 'M/F', 'Single character male/female gender list'),
('G3dUxYHr9WhlGkKVlcKeyg', 'GgSaxyl0ukMDguHArJAwRg', 'Yes/No', 'Yes/No list'),
('M44GQsyCZkX543GGlhFO1Q', 'GgSaxyl0ukMDguHArJAwRg', 'Y/N', 'Single character yes/no list'),
('2YY+ife0WSgLXENCMLQnCg', 'GgSaxyl0ukMDguHArJAwRg', 'Civil status', '.'),
('OXApXCXrQ0o29Tim2Ab/AA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'civil status', 'civil status'),
('LSyaOqtoqXV6l3Ikzulpew', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Region', '.'),
('kN5/C+bWX4OKBFbQg76/sg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Position', 'Officials position'),
('cTXvZ82is1Q3KJrEgQLZ8g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'status', 'status of request'),
('XC1i0GotE5lwgiQJB/gGuQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'category', 'category of the bulletin'),
('EQfMQquh8qs+ppyEfoT4Ng', 'tl05Ti9Zu+yEKfnKwsEg6g', 'type_of_business', 'The type of business'),
('1t+uWFmNBuu3f6mnpM83nQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Nature/Line of Business', 'The nature of the business'),
('QYYjD3+KUiPvAVHRhtCyDg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Medical History', 'Medical History'),
('052LAcxvGFXtyni3ME+0vw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Physical Examination', 'Physical Examination'),
('YWtDJDTwErtqlzzFRrZhzg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'CHEST/XRAY', 'CHEST/XRAY'),
('wwuSUIw02Ub2EK7uAPaM3g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'BLOOD TEST', 'BLOOD-BASED TEST'),
('mWlzaKG6Xf+eTp1cG4nWbA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Result', 'Result P for perfect F for fail'),
('5O3NVPWCInFlnmI7+F01Pw', 'C8ZyCPo5DxSohFlRUKNSiA', 'Male/Female', 'Male/Female gender list'),
('a3smRs5piYR6A67MJlTJJg', 'C8ZyCPo5DxSohFlRUKNSiA', 'On/Off', 'On/Off status list'),
('SmuVPEkdTdKj8h22OGC0Lg', 'C8ZyCPo5DxSohFlRUKNSiA', 'TRUE/FALSE', 'TRUE/FALSE list'),
('tbBxcg8aTDPSLAohUt2Y2A', 'C8ZyCPo5DxSohFlRUKNSiA', 'M/F', 'Single character male/female gender list'),
('8DfXCPEKYQg5BU90PNgmLw', 'C8ZyCPo5DxSohFlRUKNSiA', 'Yes/No', 'Yes/No list'),
('Ul/9z4MqdUP67BJwrPTmtQ', 'C8ZyCPo5DxSohFlRUKNSiA', 'Y/N', 'Single character yes/no list'),
('7t1C1vt7s7Bxk5bfPysftw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'type of case', '/'),
('Pbfs6sXJgzmKP59fCGsmAA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'type', 'type of business permit');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list_items`
--

CREATE TABLE `table_fields_predefined_list_items` (
  `List_ID` char(44) NOT NULL,
  `Number` int(11) NOT NULL,
  `List_Item` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list_items`
--

INSERT INTO `table_fields_predefined_list_items` (`List_ID`, `Number`, `List_Item`) VALUES
('weeWNvA/esJyw0t6pEjhXQ', 1, 'Male'),
('weeWNvA/esJyw0t6pEjhXQ', 2, 'Female'),
('uDoLALxZbwu8aOtbtW6mhw', 1, 'On'),
('uDoLALxZbwu8aOtbtW6mhw', 2, 'Off'),
('UBGVL4E+2J8RMa6FGHlHEA', 1, 'TRUE'),
('UBGVL4E+2J8RMa6FGHlHEA', 2, 'FALSE'),
('7tK/WugYOc4ZUAjObSqF1A', 1, 'M'),
('7tK/WugYOc4ZUAjObSqF1A', 2, 'F'),
('e6BVIvz2FyZNOKAWxd6q4g', 1, 'Yes'),
('e6BVIvz2FyZNOKAWxd6q4g', 2, 'No'),
('wV6tLILqqTgb3q54WwCxEg', 1, 'Y'),
('wV6tLILqqTgb3q54WwCxEg', 2, 'N'),
('xU2EOzkpO45LTbiuI+pMtg', 1, 'Male'),
('xU2EOzkpO45LTbiuI+pMtg', 2, 'Female'),
('4to6m4+hY9QX2ngP0+6Szg', 1, 'On'),
('4to6m4+hY9QX2ngP0+6Szg', 2, 'Off'),
('WwZwuqCXEA2F+tP4PqIj4A', 1, 'TRUE'),
('WwZwuqCXEA2F+tP4PqIj4A', 2, 'FALSE'),
('iOG2mArXQBvw5vz5W6QuYg', 1, 'M'),
('iOG2mArXQBvw5vz5W6QuYg', 2, 'F'),
('BtHsaDrhY32mojB4JSJpGg', 1, 'Yes'),
('BtHsaDrhY32mojB4JSJpGg', 2, 'No'),
('Yy7KrS3GL14d3P1rLM7EaA', 1, 'Y'),
('Yy7KrS3GL14d3P1rLM7EaA', 2, 'N'),
('EyucR9PN1xdR/ylAZTb4Pw', 1, 'On'),
('EyucR9PN1xdR/ylAZTb4Pw', 2, 'Off'),
('Rcb2nsaiUEkPoKsYIAvI0Q', 1, 'TRUE'),
('Rcb2nsaiUEkPoKsYIAvI0Q', 2, 'FALSE'),
('gUHAHVWX1snhzySN0NuzIw', 1, 'M'),
('gUHAHVWX1snhzySN0NuzIw', 2, 'F'),
('G3dUxYHr9WhlGkKVlcKeyg', 1, 'Yes'),
('G3dUxYHr9WhlGkKVlcKeyg', 2, 'No'),
('M44GQsyCZkX543GGlhFO1Q', 1, 'Y'),
('M44GQsyCZkX543GGlhFO1Q', 2, 'N'),
('XQAsiwKFaecnsPMlXNfrlA', 1, 'Male'),
('XQAsiwKFaecnsPMlXNfrlA', 2, 'Female'),
('2YY+ife0WSgLXENCMLQnCg', 1, 'single'),
('2YY+ife0WSgLXENCMLQnCg', 2, 'married'),
('LSyaOqtoqXV6l3Ikzulpew', 1, 'National Capital Region (NCR)'),
('LSyaOqtoqXV6l3Ikzulpew', 2, 'Ilocos Region(Region I)'),
('LSyaOqtoqXV6l3Ikzulpew', 3, 'Cordillera Administrative Region(CAR)'),
('LSyaOqtoqXV6l3Ikzulpew', 4, 'Cagayan Valley(Region II)'),
('LSyaOqtoqXV6l3Ikzulpew', 5, 'Central Luzon(Region III)'),
('LSyaOqtoqXV6l3Ikzulpew', 6, 'CALABARZON(Region IV-A)'),
('LSyaOqtoqXV6l3Ikzulpew', 7, 'MIMAROPA(Region IV-B)'),
('LSyaOqtoqXV6l3Ikzulpew', 8, 'Bicol Region(Region V)'),
('LSyaOqtoqXV6l3Ikzulpew', 9, 'Western Visayas(Region VI)'),
('LSyaOqtoqXV6l3Ikzulpew', 10, 'Negros IslandRegion(NIR or Region XVIII)'),
('LSyaOqtoqXV6l3Ikzulpew', 11, 'Central Visayas(Region VII)'),
('LSyaOqtoqXV6l3Ikzulpew', 12, 'Eastern Visayas(Region VIII)'),
('LSyaOqtoqXV6l3Ikzulpew', 13, 'ZamboangaPeninsula(Region IX)'),
('LSyaOqtoqXV6l3Ikzulpew', 14, 'Northern Mindanao(Region X)'),
('LSyaOqtoqXV6l3Ikzulpew', 15, 'Caraga(Region XIII)'),
('LSyaOqtoqXV6l3Ikzulpew', 16, 'Davao Region(Region XI)'),
('LSyaOqtoqXV6l3Ikzulpew', 17, 'SOCCSKSARGEN(Region XII)'),
('LSyaOqtoqXV6l3Ikzulpew', 18, 'Autonomous Regionin Muslim Mindanao(ARMM)'),
('cTXvZ82is1Q3KJrEgQLZ8g', 1, 'Accepted'),
('cTXvZ82is1Q3KJrEgQLZ8g', 2, 'Not Accepted'),
('cTXvZ82is1Q3KJrEgQLZ8g', 3, 'Wait list'),
('kN5/C+bWX4OKBFbQg76/sg', 1, 'Barangay Chairman'),
('kN5/C+bWX4OKBFbQg76/sg', 2, 'Barangay Secretary'),
('kN5/C+bWX4OKBFbQg76/sg', 3, 'Barangay Treasurer'),
('kN5/C+bWX4OKBFbQg76/sg', 4, 'SK Chairman'),
('kN5/C+bWX4OKBFbQg76/sg', 5, 'SK Scretary'),
('kN5/C+bWX4OKBFbQg76/sg', 6, 'SK Treasurer'),
('OXApXCXrQ0o29Tim2Ab/AA', 1, 'Single'),
('OXApXCXrQ0o29Tim2Ab/AA', 2, 'Married'),
('OXApXCXrQ0o29Tim2Ab/AA', 3, 'Widowed'),
('OXApXCXrQ0o29Tim2Ab/AA', 4, 'Divorced'),
('OXApXCXrQ0o29Tim2Ab/AA', 5, 'Living common law'),
('OXApXCXrQ0o29Tim2Ab/AA', 6, 'Separated'),
('EQfMQquh8qs+ppyEfoT4Ng', 1, 'Sole Proprietorship'),
('EQfMQquh8qs+ppyEfoT4Ng', 2, 'Partnership'),
('EQfMQquh8qs+ppyEfoT4Ng', 3, 'Corporation'),
('1t+uWFmNBuu3f6mnpM83nQ', 1, 'ADVERTISING'),
('1t+uWFmNBuu3f6mnpM83nQ', 2, 'AGRICULTURAL'),
('1t+uWFmNBuu3f6mnpM83nQ', 3, 'AIRLINES'),
('1t+uWFmNBuu3f6mnpM83nQ', 4, 'BANKING'),
('1t+uWFmNBuu3f6mnpM83nQ', 5, 'BROKERAGE'),
('1t+uWFmNBuu3f6mnpM83nQ', 6, 'CALL CENTER'),
('1t+uWFmNBuu3f6mnpM83nQ', 7, 'CONSTRUCTION'),
('1t+uWFmNBuu3f6mnpM83nQ', 8, 'CONSULTANCY'),
('1t+uWFmNBuu3f6mnpM83nQ', 9, 'CONVENIENCE STORE'),
('1t+uWFmNBuu3f6mnpM83nQ', 10, 'COOPERATIVE'),
('1t+uWFmNBuu3f6mnpM83nQ', 11, 'PRODUCTS/SERVICES'),
('1t+uWFmNBuu3f6mnpM83nQ', 12, 'DISTRIBUTOR'),
('1t+uWFmNBuu3f6mnpM83nQ', 13, 'EDUCATIONAL INSTITUTION'),
('1t+uWFmNBuu3f6mnpM83nQ', 14, 'EXPORTER'),
('1t+uWFmNBuu3f6mnpM83nQ', 15, 'FINANCING INSTITUTION'),
('1t+uWFmNBuu3f6mnpM83nQ', 16, 'FOOD CHAIN'),
('1t+uWFmNBuu3f6mnpM83nQ', 17, 'FOREIGN EXCHANGE'),
('1t+uWFmNBuu3f6mnpM83nQ', 18, 'FORWARDING'),
('1t+uWFmNBuu3f6mnpM83nQ', 19, 'FOUNDATION'),
('1t+uWFmNBuu3f6mnpM83nQ', 20, 'HLDINGS'),
('1t+uWFmNBuu3f6mnpM83nQ', 21, 'HOTELS/APARTELLE'),
('1t+uWFmNBuu3f6mnpM83nQ', 22, 'IMPORTER'),
('1t+uWFmNBuu3f6mnpM83nQ', 23, 'INSURANCE BROKER'),
('1t+uWFmNBuu3f6mnpM83nQ', 24, 'METRO STORE'),
('1t+uWFmNBuu3f6mnpM83nQ', 25, 'MANUFACTURER'),
('1t+uWFmNBuu3f6mnpM83nQ', 26, 'MANPOWER/RECRUITMENT RESTAURANT'),
('1t+uWFmNBuu3f6mnpM83nQ', 27, 'GENERAL MERCHANDISE'),
('1t+uWFmNBuu3f6mnpM83nQ', 28, 'MINING'),
('1t+uWFmNBuu3f6mnpM83nQ', 29, 'MUSIC LOUNGE/ BAR'),
('1t+uWFmNBuu3f6mnpM83nQ', 30, 'NON STOCK/NON PROFIT'),
('1t+uWFmNBuu3f6mnpM83nQ', 31, 'PAWN SHOP'),
('1t+uWFmNBuu3f6mnpM83nQ', 32, 'PRE-NEED COMPANY'),
('1t+uWFmNBuu3f6mnpM83nQ', 33, 'REAL ESTATE DEALER'),
('1t+uWFmNBuu3f6mnpM83nQ', 34, 'BRAND NAMES'),
('1t+uWFmNBuu3f6mnpM83nQ', 35, 'REAL ESTATE DEVELOPER'),
('1t+uWFmNBuu3f6mnpM83nQ', 36, 'REAL ESTATE LESSOR(R.E.L.)'),
('1t+uWFmNBuu3f6mnpM83nQ', 37, 'REP/REGIONAL OFFICE'),
('1t+uWFmNBuu3f6mnpM83nQ', 38, 'RETAILER'),
('1t+uWFmNBuu3f6mnpM83nQ', 39, 'SECURITY AGENCY'),
('1t+uWFmNBuu3f6mnpM83nQ', 40, 'SERVICES'),
('1t+uWFmNBuu3f6mnpM83nQ', 41, 'STOCK BROKER'),
('1t+uWFmNBuu3f6mnpM83nQ', 42, 'TRADING'),
('1t+uWFmNBuu3f6mnpM83nQ', 43, 'WHOLESALER'),
('QYYjD3+KUiPvAVHRhtCyDg', 1, 'PRESENT'),
('QYYjD3+KUiPvAVHRhtCyDg', 2, 'PAST'),
('QYYjD3+KUiPvAVHRhtCyDg', 3, 'NO'),
('052LAcxvGFXtyni3ME+0vw', 1, 'NORMAL'),
('052LAcxvGFXtyni3ME+0vw', 2, 'ABNORMAL'),
('YWtDJDTwErtqlzzFRrZhzg', 1, 'NORMAL'),
('YWtDJDTwErtqlzzFRrZhzg', 2, 'ABNORMAL'),
('YWtDJDTwErtqlzzFRrZhzg', 3, 'NOT INDICATED'),
('wwuSUIw02Ub2EK7uAPaM3g', 1, 'POSITIVE'),
('wwuSUIw02Ub2EK7uAPaM3g', 2, 'NEGATIVE'),
('mWlzaKG6Xf+eTp1cG4nWbA', 1, 'P'),
('mWlzaKG6Xf+eTp1cG4nWbA', 2, 'F'),
('XC1i0GotE5lwgiQJB/gGuQ', 1, 'Main Event'),
('XC1i0GotE5lwgiQJB/gGuQ', 2, 'News'),
('XC1i0GotE5lwgiQJB/gGuQ', 3, 'Tourism'),
('XC1i0GotE5lwgiQJB/gGuQ', 4, 'Information'),
('XC1i0GotE5lwgiQJB/gGuQ', 5, 'Education'),
('XC1i0GotE5lwgiQJB/gGuQ', 6, 'Health'),
('5O3NVPWCInFlnmI7+F01Pw', 1, 'Male'),
('5O3NVPWCInFlnmI7+F01Pw', 2, 'Female'),
('a3smRs5piYR6A67MJlTJJg', 1, 'On'),
('a3smRs5piYR6A67MJlTJJg', 2, 'Off'),
('SmuVPEkdTdKj8h22OGC0Lg', 1, 'TRUE'),
('SmuVPEkdTdKj8h22OGC0Lg', 2, 'FALSE'),
('tbBxcg8aTDPSLAohUt2Y2A', 1, 'M'),
('tbBxcg8aTDPSLAohUt2Y2A', 2, 'F'),
('8DfXCPEKYQg5BU90PNgmLw', 1, 'Yes'),
('8DfXCPEKYQg5BU90PNgmLw', 2, 'No'),
('Ul/9z4MqdUP67BJwrPTmtQ', 1, 'Y'),
('Ul/9z4MqdUP67BJwrPTmtQ', 2, 'N'),
('7t1C1vt7s7Bxk5bfPysftw', 1, 'Accident'),
('7t1C1vt7s7Bxk5bfPysftw', 2, 'Incident'),
('7t1C1vt7s7Bxk5bfPysftw', 3, 'Complain'),
('Pbfs6sXJgzmKP59fCGsmAA', 1, 'New'),
('Pbfs6sXJgzmKP59fCGsmAA', 2, 'Renew');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_secondary_validation`
--

CREATE TABLE `table_fields_secondary_validation` (
  `Field_ID` char(44) NOT NULL,
  `Validation_Routine` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_pages`
--

CREATE TABLE `table_pages` (
  `Table_ID` char(44) NOT NULL,
  `Page_ID` char(44) NOT NULL,
  `Path_Filename` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_pages`
--

INSERT INTO `table_pages` (`Table_ID`, `Page_ID`, `Path_Filename`) VALUES
('h/3uII4EiMg1P0KY6Wgd6Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_department.php'),
('G3MVI200wv/CzEwgyQNCCg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee.php'),
('gElvU6hWE0jypHA1z/F+XA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee_certifications.php'),
('SGTpjNa1U0+pEkZ5UKK81A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item.php'),
('aDaRx2ctonKdTCS6LV4Z6g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item_type.php'),
('Z07dDK1JPgrzGx+4NFbz7A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending.php'),
('BQRN52d9aoT8q+8z0o4LlQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending_items.php'),
('D9bgTjAuuUKd48TXB2y2xA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_position.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_department.php'),
('G3MVI200wv/CzEwgyQNCCg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee.php'),
('gElvU6hWE0jypHA1z/F+XA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee_certifications.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item_type.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending_items.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_position.php'),
('PJLuqV2HSUWR+ikNdUXPGg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_department.php'),
('H73ud0QWLx2Se7p9eUkasg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee.php'),
('Doe+KB5zM7tWgsZhpqAp5w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee_certifications.php'),
('vv1exa8MbX4K7IXMl/FEJQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item.php'),
('T2hM+p3raP+HFxiFlxDlKg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item_type.php'),
('Cy2c9Vee7ISma5phtovGKA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending.php'),
('ghh9dSVsnOf4D68tIWSMWA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending_items.php'),
('HO34F+jhddQkxXVUtHcm5Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_position.php'),
('kch1paJBspKqHl6fM21LIA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'barangay/reporter_pdfresult_barangay.php'),
('kch1paJBspKqHl6fM21LIA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'barangay/reporter_result_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'barangay/reporter_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'barangay/csv_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'barangay/listview_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'barangay/delete_barangay.php'),
('kch1paJBspKqHl6fM21LIA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'barangay/add_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'barangay/edit_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'barangay/detailview_barangay.php'),
('M7NKzXX4dDhEoTBVWxfT1w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'bulletin/add_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'bulletin/edit_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'bulletin/detailview_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'bulletin/listview_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'bulletin/delete_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'bulletin/csv_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'bulletin/reporter_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'bulletin/reporter_result_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'bulletin/reporter_pdfresult_bulletin.php'),
('BYf9jiy4n/VsHSmtJap8gQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'citizen/add_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'citizen/edit_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'citizen/detailview_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'citizen/listview_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'citizen/delete_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'citizen/csv_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'citizen/reporter_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'citizen/reporter_result_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'citizen/reporter_pdfresult_citizen.php'),
('pcl44WGaRerapbAbZaPRDw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'city/add_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'city/edit_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'city/detailview_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'city/listview_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'city/delete_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'city/csv_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'city/reporter_city.php'),
('pcl44WGaRerapbAbZaPRDw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'city/reporter_result_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'city/reporter_pdfresult_city.php'),
('UGoYijf1uPZygkK4aKL3BA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'notification/add_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'notification/edit_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'notification/detailview_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'notification/listview_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'notification/delete_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'notification/csv_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'notification/reporter_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'notification/reporter_result_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'notification/reporter_pdfresult_notification.php'),
('xkysH6HvJxGLLSd2T3REVA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'official/add_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'official/edit_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'official/detailview_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'official/listview_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'official/delete_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'official/csv_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'official/reporter_official.php'),
('xkysH6HvJxGLLSd2T3REVA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'official/reporter_result_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'official/reporter_pdfresult_official.php'),
('x3AlSCd+MSQBJWgb+ieaEA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'province/add_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'province/edit_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'province/detailview_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'province/listview_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'province/delete_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'province/csv_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'province/reporter_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'province/reporter_result_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'province/reporter_pdfresult_province.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'region/add_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'region/edit_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'region/detailview_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'region/listview_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'region/delete_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'region/csv_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'region/reporter_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'region/reporter_result_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'region/reporter_pdfresult_region.php'),
('xj2EEIg1w2q6hXyc2sJuww', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'request/reporter_request.php'),
('xj2EEIg1w2q6hXyc2sJuww', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'request/reporter_result_request.php'),
('xj2EEIg1w2q6hXyc2sJuww', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'request/add_request.php'),
('xj2EEIg1w2q6hXyc2sJuww', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'request/edit_request.php'),
('xj2EEIg1w2q6hXyc2sJuww', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'request/detailview_request.php'),
('xj2EEIg1w2q6hXyc2sJuww', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'request/listview_request.php'),
('xj2EEIg1w2q6hXyc2sJuww', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'request/delete_request.php'),
('xj2EEIg1w2q6hXyc2sJuww', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'request/csv_request.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'citizen/reporter_result_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'citizen/reporter_pdfresult_validate.php'),
('N99ekyEt+lL2JZkY2i5MWA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'skill/add_skill.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'citizen/add_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'citizen/edit_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'citizen/detailview_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'citizen/csv_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'citizen/reporter_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'citizen/listview_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'citizen/delete_validate.php'),
('NIKti62zWfgIf3quzy0+jQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'request/reporter_result_requirement.php'),
('NIKti62zWfgIf3quzy0+jQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'request/reporter_requirement.php'),
('NIKti62zWfgIf3quzy0+jQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'request/csv_requirement.php'),
('NIKti62zWfgIf3quzy0+jQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'request/listview_requirement.php'),
('NIKti62zWfgIf3quzy0+jQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'request/delete_requirement.php'),
('NIKti62zWfgIf3quzy0+jQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'request/add_requirement.php'),
('NIKti62zWfgIf3quzy0+jQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'request/edit_requirement.php'),
('NIKti62zWfgIf3quzy0+jQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'request/detailview_requirement.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'document/listview_business_permit.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'document/delete_business_permit.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'document/csv_business_permit.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'document/reporter_business_permit.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'document/reporter_result_business_permit.php'),
('N99ekyEt+lL2JZkY2i5MWA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'skill/delete_skill.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'document/reporter_pdfresult_business_permit.php'),
('N99ekyEt+lL2JZkY2i5MWA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'skill/listview_skill.php'),
('Y8SYhruygtkvgWLowIVL0Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'service/csv_health.php'),
('Y8SYhruygtkvgWLowIVL0Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'service/reporter_health.php'),
('Y8SYhruygtkvgWLowIVL0Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'service/reporter_result_health.php'),
('Y8SYhruygtkvgWLowIVL0Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'service/reporter_pdfresult_health.php'),
('N99ekyEt+lL2JZkY2i5MWA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'skill/csv_skill.php'),
('N99ekyEt+lL2JZkY2i5MWA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'skill/detailview_skill.php'),
('N99ekyEt+lL2JZkY2i5MWA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'skill/edit_skill.php'),
('sizcBfeFeCAAPWLgk0pwag', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'zone/add_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'zone/edit_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'zone/detailview_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'zone/listview_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'zone/delete_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'zone/csv_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'zone/reporter_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'zone/reporter_result_zone.php'),
('sizcBfeFeCAAPWLgk0pwag', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'zone/reporter_pdfresult_zone.php'),
('uRXq/lsO8bXc7MVjrxTXJg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hi/add_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hi/edit_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hi/detailview_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hi/listview_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hi/delete_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hi/csv_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hi/reporter_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hi/reporter_result_hellow.php'),
('uRXq/lsO8bXc7MVjrxTXJg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hi/reporter_pdfresult_hellow.php'),
('IOxAI1KslB3PSHjSFYP+Lg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'document/add_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'document/edit_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'document/detailview_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'document/listview_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'document/delete_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'document/csv_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'document/reporter_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'document/reporter_result_document.php'),
('IOxAI1KslB3PSHjSFYP+Lg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'document/reporter_pdfresult_document.php'),
('xj2EEIg1w2q6hXyc2sJuww', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'request/reporter_pdfresult_request.php'),
('NIKti62zWfgIf3quzy0+jQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'request/reporter_pdfresult_requirement.php'),
('AQZb2jvRNHOOUeEGHxr2+g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'request/add_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'request/edit_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'request/detailview_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'request/listview_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'request/delete_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'request/csv_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'request/reporter_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'request/reporter_result_sub_doc.php'),
('AQZb2jvRNHOOUeEGHxr2+g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'request/reporter_pdfresult_sub_doc.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'document/add_business_permit.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'document/edit_business_permit.php'),
('pvVKhu0Wa5lXLnIOt7wsYQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'document/detailview_business_permit.php'),
('cYeJd2Gih/korlRqidcRvw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'document/reporter_barangay_clearance.php'),
('cYeJd2Gih/korlRqidcRvw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'document/csv_barangay_clearance.php'),
('cYeJd2Gih/korlRqidcRvw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'document/listview_barangay_clearance.php'),
('cYeJd2Gih/korlRqidcRvw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'document/delete_barangay_clearance.php'),
('cYeJd2Gih/korlRqidcRvw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'document/add_barangay_clearance.php'),
('cYeJd2Gih/korlRqidcRvw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'document/edit_barangay_clearance.php'),
('cYeJd2Gih/korlRqidcRvw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'document/detailview_barangay_clearance.php'),
('Y8wWOkjQzasdSg1tFVqqsw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'service/listview_concern.php'),
('Y8wWOkjQzasdSg1tFVqqsw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'service/delete_concern.php'),
('Y8wWOkjQzasdSg1tFVqqsw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'service/add_concern.php'),
('Y8wWOkjQzasdSg1tFVqqsw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'service/edit_concern.php'),
('Y8wWOkjQzasdSg1tFVqqsw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'service/detailview_concern.php'),
('P7h6/8h+YKBo0AMQP3HQQA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'service/add_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'service/edit_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'service/detailview_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'service/listview_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'service/delete_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'service/csv_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'service/reporter_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'service/reporter_result_day_care.php'),
('P7h6/8h+YKBo0AMQP3HQQA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'service/reporter_pdfresult_day_care.php'),
('d9VT2w+MAs6AGsfI+cnQqg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'document/csv_cedula.php'),
('d9VT2w+MAs6AGsfI+cnQqg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'document/reporter_pdfresult_cedula.php'),
('Y8SYhruygtkvgWLowIVL0Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'service/add_health.php'),
('Y8SYhruygtkvgWLowIVL0Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'service/edit_health.php'),
('Y8SYhruygtkvgWLowIVL0Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'service/detailview_health.php'),
('Y8SYhruygtkvgWLowIVL0Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'service/listview_health.php'),
('Y8SYhruygtkvgWLowIVL0Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'service/delete_health.php'),
('Y8wWOkjQzasdSg1tFVqqsw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'service/reporter_result_concern.php'),
('Y8wWOkjQzasdSg1tFVqqsw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'service/reporter_concern.php'),
('cYeJd2Gih/korlRqidcRvw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'document/reporter_result_barangay_clearance.php'),
('Y8wWOkjQzasdSg1tFVqqsw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'service/csv_concern.php'),
('d9VT2w+MAs6AGsfI+cnQqg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'document/reporter_cedula.php'),
('d9VT2w+MAs6AGsfI+cnQqg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'document/reporter_result_cedula.php'),
('d9VT2w+MAs6AGsfI+cnQqg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'document/delete_cedula.php'),
('d9VT2w+MAs6AGsfI+cnQqg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'document/listview_cedula.php'),
('d9VT2w+MAs6AGsfI+cnQqg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'document/edit_cedula.php'),
('d9VT2w+MAs6AGsfI+cnQqg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'document/detailview_cedula.php'),
('cYeJd2Gih/korlRqidcRvw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'document/reporter_pdfresult_barangay_clearance.php'),
('d9VT2w+MAs6AGsfI+cnQqg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'document/add_cedula.php'),
('N99ekyEt+lL2JZkY2i5MWA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'skill/reporter_pdfresult_skill.php'),
('N99ekyEt+lL2JZkY2i5MWA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'skill/reporter_result_skill.php'),
('N99ekyEt+lL2JZkY2i5MWA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'skill/reporter_skill.php'),
('McYnj/51pNi0+Y7TEKPvGQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'citizen/add_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'citizen/edit_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'citizen/detailview_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'citizen/listview_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'citizen/delete_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'citizen/csv_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'citizen/reporter_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'citizen/reporter_result_nationality.php'),
('McYnj/51pNi0+Y7TEKPvGQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'citizen/reporter_pdfresult_nationality.php'),
('ZtanAWehbsOkLB8rKif6/w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'skill/reporter_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'skill/csv_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'skill/delete_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'skill/listview_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'skill/add_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'skill/edit_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'skill/detailview_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'skill/reporter_result_skill_set.php'),
('ZtanAWehbsOkLB8rKif6/w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'skill/reporter_pdfresult_skill_set.php'),
('0XgEduSPAtkmfseLrOzW0g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'payment/add_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'payment/edit_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'payment/detailview_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'payment/listview_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'payment/delete_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'payment/csv_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'payment/reporter_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'payment/reporter_result_fee.php'),
('0XgEduSPAtkmfseLrOzW0g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'payment/reporter_pdfresult_fee.php'),
('buKUNoX99+fyZnwPF73aew', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'service/reporter_result_health_center.php'),
('buKUNoX99+fyZnwPF73aew', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'service/reporter_health_center.php'),
('buKUNoX99+fyZnwPF73aew', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'service/csv_health_center.php'),
('buKUNoX99+fyZnwPF73aew', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'service/listview_health_center.php'),
('buKUNoX99+fyZnwPF73aew', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'service/delete_health_center.php'),
('buKUNoX99+fyZnwPF73aew', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'service/add_health_center.php'),
('buKUNoX99+fyZnwPF73aew', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'service/edit_health_center.php'),
('buKUNoX99+fyZnwPF73aew', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'service/detailview_health_center.php'),
('SpdSGIl6RYPwbusNUu03hA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'service/reporter_school.php'),
('SpdSGIl6RYPwbusNUu03hA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'service/csv_school.php'),
('SpdSGIl6RYPwbusNUu03hA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'service/delete_school.php'),
('SpdSGIl6RYPwbusNUu03hA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'service/listview_school.php'),
('SpdSGIl6RYPwbusNUu03hA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'service/add_school.php'),
('SpdSGIl6RYPwbusNUu03hA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'service/edit_school.php'),
('SpdSGIl6RYPwbusNUu03hA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'service/detailview_school.php'),
('SpdSGIl6RYPwbusNUu03hA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'service/reporter_result_school.php'),
('SpdSGIl6RYPwbusNUu03hA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'service/reporter_pdfresult_school.php'),
('buKUNoX99+fyZnwPF73aew', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'service/reporter_pdfresult_health_center.php'),
('Y8wWOkjQzasdSg1tFVqqsw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'service/reporter_pdfresult_concern.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'document/add_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'document/edit_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'document/detailview_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'document/listview_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'document/delete_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'document/csv_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'document/reporter_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'document/reporter_result_business_permit_fee.php'),
('XSJnQ2ux+pF0nAFyePZKzQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'document/reporter_pdfresult_business_permit_fee.php');

-- --------------------------------------------------------

--
-- Table structure for table `table_relations`
--

CREATE TABLE `table_relations` (
  `Relation_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `Relation` varchar(255) NOT NULL,
  `Parent_Field_ID` char(44) NOT NULL,
  `Child_Field_ID` char(44) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `Child_Field_Subtext` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_relations`
--

INSERT INTO `table_relations` (`Relation_ID`, `Project_ID`, `Relation`, `Parent_Field_ID`, `Child_Field_ID`, `Label`, `Child_Field_Subtext`) VALUES
('fGgFMLGcradrUhVEg6+CnA', 'GgSaxyl0ukMDguHArJAwRg', 'ONE-to-ONE', 'u9wkogwQglAzp6gfbrBMsA', 'kgzD552p7CbDhL1w4aC/bw', 'position=>employee', 'position_name'),
('nN4du7KzpuudZlC30s/9hg', 'GgSaxyl0ukMDguHArJAwRg', 'ONE-to-ONE', '7nMzknfNaqrQ7RQI4Edk7A', 'lDM4gDuXQFrwVf0y3Zr2oQ', 'department=>employee', 'department_name'),
('klHrEnx+VPYhwxK7DhQq5A', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'Q9+HlJold/JFXijpZa01KQ', 'citizen=>official', 'first_name,middle_name,last_name'),
('zO6Ep7qnNkJ+WrIYQTpFNA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'zUI65Og69DOpMZt4h7iQzg', 'city=>barangay', 'city_name'),
('X34GejHts5n3RGPZeGUA1g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'G0Z0U3WeQKPRU8e8wdOzWQ', 'citizen=>notification', 'first_name,middle_name,last_name'),
('nKsBOlTqxT0+loqsuVzmSA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'Jlqi6NVsrCe5h9Yld/xz8w', 'H84dM/cy+Ep+Z6COB5Mw9w', 'barangay=>citizen', 'barangay_name'),
('D+8blWQyUEemzutIKum4qg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'V/Ci7v2oPGROR0+GJjv2bQ', 'city=>citizen', 'city_name'),
('zERZyCg0tAU37JLchOqawA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'DaCaF/LNAD+NrntWVERRAA', '5//5txbJyXTTfLfirfpaHg', 'province=>city', 'province_name'),
('ZX8Rf42Lh3cY/X4YV9VfTg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'DaCaF/LNAD+NrntWVERRAA', 'Ip2EeaXbcIbQuzsZ8BAXcQ', 'province=>citizen', 'province_name'),
('Ts03wnSkBkJH2Scq/FGTig', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'TgmwlovJin+MKDkuHeY75w', 'UK6aBxDF1ZUCunHHWF8Ypw', 'region=>citizen', 'region_name'),
('oV9LqODGwyL9cowjDFnmkg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'TgmwlovJin+MKDkuHeY75w', 'iAKNZw1+MJiWreQbewFQkw', 'region=>province', 'region_name'),
('T9C3ci0aeCNJixCXcHheWA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-MANY', 'kSKB095f0vBJBWHlfol/7Q', '81lIsWfApW8vri73zH+FqQ', 'request=>sub_doc', ''),
('x/T6Bt6TBdMPrYf9DzdPzQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'Ha42MVEVCw8Hgo8j4sJl9g', 'WuRWLEqX5dYpDuplDgaH/g', 'document=>requirement', 'document_name'),
('OJkZkxxBKz501yvg3XiWiA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'uG2OgNC0dTQelamNTpyjoQ', 'citizen=>validate', 'first_name,middle_name,last_name'),
('YsjCw9lQOqxea+dgrzWxGw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'nlLV07Rf6jThBWGUf4/kiw', '/lV0d2qAXNP1QscWobkodA', 'requirement=>sub_doc', 'requirement_name'),
('o6mXM9OZiTI31u9ER6EyqQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'Ha42MVEVCw8Hgo8j4sJl9g', '4QXpSyUDNvs++aCpNRC+Sg', 'document=>sub_doc', 'document_name'),
('H/XcFffNk7S/qQxqeTt4Uw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'Z8CQfGzE2l4Bd7X+XZsGjA', 'citizen=>request', 'first_name,middle_name,last_name'),
('ASBhPFnmaMJM2jQFq2UPWw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-MANY', 'cHo/nvf3Q/khtTuE9ZTcmw', 'uG2OgNC0dTQelamNTpyjoQ', 'citizen=>validate', ''),
('0UvPndujI33Vwg3iXBLgSQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'Jlqi6NVsrCe5h9Yld/xz8w', 'whhJ2IzCZDHy6idMgRuI5w', 'barangay=>zone', 'barangay_name'),
('f1zBOW7Gqt2/TIRjDJpaDw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kSKB095f0vBJBWHlfol/7Q', '81lIsWfApW8vri73zH+FqQ', 'request=>sub_doc', 'citizen_id'),
('ntFIeacbK3VpJHZUr/bk7w', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'ao71inbJNHWiy1LF/TQdJA', 'I62YvEkSUy6aqEry3h/6QA', 'skill_set=>skill', 'skill_category'),
('sNjCYBT7VUMqDtHxWjuKrg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', '8VuSJGaUQ+kwoUiDcZ9isg', '217rUeP4FPYuECz6Mi4gmg', 'nationality=>citizen', 'nationality'),
('4t4lLGLFEo/W5gcgRF/pHQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'G08wJRdDhF9XTL0ud5gZuQ', 'citizen=>health', 'first_name,middle_name,last_name'),
('z/PgP/DmRwd/Tt9xePtKiA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'NZdhacJvD6mfcdOEpRUgqw', 'citizen=>cedula', 'first_name,middle_name,last_name'),
('x0gL81VmHuO2iP2Mr7vMIw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', '7wZI5+LihN0BwoVYMWYW6w', 'citizen=>barangay_clearance', 'first_name,middle_name,last_name'),
('KmYEJf7GDjSJS0xE47mwxA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', '8VuSJGaUQ+kwoUiDcZ9isg', 'puOWv7wVDhKWTDfyigDDlQ', 'nationality=>citizen', 'nationality'),
('nxRgiIc7ShvnoBgjGnWIaQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', '1GE5m/Sti+u0UCdLu/O6kQ', 'KrXYRBd2xHRjIbB+8Jyw+g', 'skill=>citizen', 'skill_name'),
('EfpH0lIMzj2r0DsfsRN01A', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'ao71inbJNHWiy1LF/TQdJA', 'xmUvFIZJ8pkEy4vTfxXaZg', 'skill_set=>citizen', 'skill_category'),
('UR4XsfUnIh8eId8ZSpFMcA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'TgmwlovJin+MKDkuHeY75w', 'RLx2aZ1pkSA7GvKAB4W62w', 'region=>business_permit', 'region_name'),
('Wl9uRk6mowuAQ4JNrcG41A', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'DaCaF/LNAD+NrntWVERRAA', 'kedWF00F4Jnuh1oGOw2Lmg', 'province=>business_permit', 'province_name'),
('YXP82swrjAnEFiIo5qglVA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'f0GpW5dMDmuKAMZ+E5eXKw', 'city=>business_permit', 'city_name'),
('o+Fe4mmfjxq1NXQi6OXE+Q', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'Jlqi6NVsrCe5h9Yld/xz8w', 'cTnDv9n/Wky4bb1zVcqbTg', 'barangay=>business_permit', 'barangay_name'),
('2vj2pzgoRiVEJ/Of7hgatQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'IL0ivHyXzvvHspnTwCSOhw', 'city=>zone', 'city_name'),
('HqWbZLh/A/IGe5IRrWCuBA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'Ha42MVEVCw8Hgo8j4sJl9g', 'CnOTA6Jem6gW3QQoiv/Dog', 'document=>fee', 'document_name'),
('NybHLGqudI/aTb20/XA2sw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'hVKI0jU73Fqk7z5zibyHRQ', 'city=>citizen', 'zip_code'),
('bG4zrQHnQxPXURT6Ue/cVw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'ckAa53lOEr6gZjnVvNatxw', 'city=>city', 'zip_code'),
('wJIqbZXfotUteYmnCz00kg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', '5m2JzH3mgjPzD6Sn2N7LVQ', 'city=>health_center', 'city_name'),
('DwEJRX/tNAQSE3uFBqtntg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'dxa65NnNc5Q3xN6ojm463g', 'city=>school', 'city_name'),
('HoZLGJfk09JsLC/+58JPpQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'p6uKwFOB+wc1sKACWW/Ahg', 'CMOzYOQABIzoe0p2JB0EVw', 'business_permit_fee=>business_permit_fee', 'capital_investment'),
('pCXlzUoskudGdLbMrt4rnA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'p6uKwFOB+wc1sKACWW/Ahg', 't/YLqGSWIb3BuGixkJGfLw', 'business_permit_fee=>business_permit', 'fee_new'),
('4wRVpBBVkGpR1au3g/i69g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'p6uKwFOB+wc1sKACWW/Ahg', 'sbW7wJ7l1/ZYXj0Y1z4GWg', 'business_permit_fee=>business_permit', 'fee_renew');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `database_connection`
--
ALTER TABLE `database_connection`
  ADD PRIMARY KEY (`DB_Connection_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee_awards`
--
ALTER TABLE `employee_awards`
  ADD PRIMARY KEY (`emp_id`,`auto_id`),
  ADD KEY `auto_id` (`auto_id`);

--
-- Indexes for table `employee_hobbies`
--
ALTER TABLE `employee_hobbies`
  ADD PRIMARY KEY (`emp_id`,`auto_id`),
  ADD KEY `auto_id` (`auto_id`);

--
-- Indexes for table `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`experiment_id`);

--
-- Indexes for table `office_docs`
--
ALTER TABLE `office_docs`
  ADD PRIMARY KEY (`code_1`,`code_2`,`code_3`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`Page_ID`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_ID`);

--
-- Indexes for table `salary_grade`
--
ALTER TABLE `salary_grade`
  ADD PRIMARY KEY (`salary_grade_id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`Table_ID`),
  ADD KEY `DB_Connection_ID` (`DB_Connection_ID`),
  ADD KEY `Project_ID` (`Project_ID`);

--
-- Indexes for table `table_fields`
--
ALTER TABLE `table_fields`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_book_list`
--
ALTER TABLE `table_fields_book_list`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_list`
--
ALTER TABLE `table_fields_list`
  ADD PRIMARY KEY (`Field_ID`,`List_ID`);

--
-- Indexes for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  ADD PRIMARY KEY (`Field_ID`,`Auto_ID`);

--
-- Indexes for table `table_fields_list_source_where`
--
ALTER TABLE `table_fields_list_source_where`
  ADD PRIMARY KEY (`Field_ID`,`Where_Field_ID`,`Where_Field_Operand`,`Where_Field_Value`);

--
-- Indexes for table `table_fields_predefined_list`
--
ALTER TABLE `table_fields_predefined_list`
  ADD PRIMARY KEY (`List_ID`);

--
-- Indexes for table `table_fields_predefined_list_items`
--
ALTER TABLE `table_fields_predefined_list_items`
  ADD PRIMARY KEY (`List_ID`,`Number`);

--
-- Indexes for table `table_fields_secondary_validation`
--
ALTER TABLE `table_fields_secondary_validation`
  ADD PRIMARY KEY (`Field_ID`,`Validation_Routine`);

--
-- Indexes for table `table_pages`
--
ALTER TABLE `table_pages`
  ADD PRIMARY KEY (`Table_ID`,`Page_ID`);

--
-- Indexes for table `table_relations`
--
ALTER TABLE `table_relations`
  ADD PRIMARY KEY (`Relation_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_awards`
--
ALTER TABLE `employee_awards`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_hobbies`
--
ALTER TABLE `employee_hobbies`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `experiments`
--
ALTER TABLE `experiments`
  MODIFY `experiment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary_grade`
--
ALTER TABLE `salary_grade`
  MODIFY `salary_grade_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  MODIFY `Auto_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
