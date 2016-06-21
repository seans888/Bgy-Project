-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2016 at 07:18 AM
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
-- Table structure for table `bulletin`
--

CREATE TABLE IF NOT EXISTS `bulletin` (
  `bulletin_id` int(11) NOT NULL AUTO_INCREMENT,
  `bulletin_date` date NOT NULL,
  `bulletin_name` varchar(45) NOT NULL,
  `bulletin_description` text NOT NULL,
  `filename` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `official_id` int(11) NOT NULL,
  PRIMARY KEY (`bulletin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bulletin`
--

INSERT INTO `bulletin` (`bulletin_id`, `bulletin_date`, `bulletin_name`, `bulletin_description`, `filename`, `category`, `official_id`) VALUES
(1, '2016-02-26', 'jgjg', 'gjgj', 'gjgjg', 'Education', 1);

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
  `district` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `zip_code` int(4) NOT NULL,
  `zip code` int(4) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(45) NOT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `celphone_number` int(11) NOT NULL,
  `telephone_number` int(7) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
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
  `is_official` varchar(3) NOT NULL,
  `proof_of_identity` varchar(255) NOT NULL,
  `proof_of_address` varchar(255) NOT NULL,
  PRIMARY KEY (`citizen_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`citizen_id`, `first_name`, `middle_name`, `last_name`, `house_number`, `street`, `barangay`, `city`, `district`, `region`, `zip_code`, `zip code`, `gender`, `birth_date`, `birth_place`, `weight`, `height`, `celphone_number`, `telephone_number`, `username`, `password`, `nationality`, `civil_status`, `occupation`, `father_first_name`, `father_middle_name`, `father_last_name`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `date_registered`, `is_official`, `proof_of_identity`, `proof_of_address`) VALUES
(1, 'Kamila', 'Roperoga', 'Lagman', 8, 'Climaco', 'Bangkal', 'Makati', '1', 'National Capital Region (NCR)', 1300, 0, 'Female', '2016-02-15', 'Mandaluyong', 125, 5, 2147483647, 1234567, 'kamila@sample.com', 'Hellokitty02', 'Filipino', 'Single', 'Student', 'Danmar', 'Mangulabnan', 'Lagman', 'Luningning', 'Samson', 'Roperoga', '2016-02-15', 'No', '7ad3f406f125d864c911fa5721fa926c060013f6LagmanKamilaPOI.JPG', '84ca4895d29fc56d86247d30e0a35cb03e759ba9LagmanKamilaPOI.JPG'),
(4, 'Jhonel', 'Rivera', 'Deluna', 532, 'Franciscan St,', 'Sun Valley', 'Paranaque', '', 'National Capital Region (NCR)', 0, 0, 'Male', '1996-02-12', 'Pasay', 90, 6, 2147483647, 7654321, 'delunaJhonel123@gmail.com', 'elephanttrunk1', 'filipino', 'Single', 'Stundent', 'Crisanto', 'Garay', 'Deluna', 'Naidee', 'Rivera', 'Deluna', '2016-02-18', 'Yes', '549e6bd84ab6454d58eb7bdd0c77bbb86d2df3b3recovery.PNG', '6a26d32420d8186cc5dffe43d6dda51223232d4erecovery.PNG'),
(5, 'Daren', 'Galindo', 'Cabral', 98, 'Alligator', 'Rizal', 'Makati', '', 'National Capital Region (NCR)', 0, 0, 'Male', '1997-01-05', 'Makati City', 45, 5, 2147483647, 7589011, 'cabral.daren@gmail.com', 'qwerty', 'filipino', 'Single', 'Student', 'Dante', 'Matuba', 'Cabral', 'Marcelina', 'Galindo', 'Cabral', '2016-02-18', 'No', 'ecfc1171b65066d1dd33a3ea15ef8df00c68ef0c1.jpg', '174cf92dbcf203c4007750c5d1c32f32e37292111.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_reporter`
--

CREATE TABLE IF NOT EXISTS `cobalt_reporter` (
  `module_name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `show_field` blob NOT NULL,
  `operator` blob NOT NULL,
  `text_field` blob NOT NULL,
  `sum_field` blob NOT NULL,
  `count_field` blob NOT NULL,
  `group_field1` blob NOT NULL,
  `group_field2` blob NOT NULL,
  `group_field3` blob NOT NULL,
  PRIMARY KEY (`module_name`,`report_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_sst`
--

CREATE TABLE IF NOT EXISTS `cobalt_sst` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `config_file` varchar(255) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `official`
--

CREATE TABLE IF NOT EXISTS `official` (
  `official_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_registered` date NOT NULL,
  `official_name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `term_period_from` date NOT NULL,
  `term_period_to` date NOT NULL,
  PRIMARY KEY (`official_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `official`
--

INSERT INTO `official` (`official_id`, `date_registered`, `official_name`, `position`, `term_period_from`, `term_period_to`) VALUES
(1, '2016-02-18', '4', 'Barangay Kagawad', '2016-02-18', '2016-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_filed` date NOT NULL,
  `date_served` date NOT NULL,
  `status` varchar(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `citizen_id` int(11) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `date_filed`, `date_served`, `status`, `service_id`, `citizen_id`) VALUES
(1, '2016-02-11', '2016-02-18', 'Accepted', 1, 5),
(2, '2016-02-14', '2016-02-18', 'Wait list', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `request_has_requirement`
--

CREATE TABLE IF NOT EXISTS `request_has_requirement` (
  `request_has_requirement` int(11) NOT NULL AUTO_INCREMENT,
  `date_submitted` date NOT NULL,
  `requirement_document` varchar(255) NOT NULL,
  PRIMARY KEY (`request_has_requirement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE IF NOT EXISTS `requirement` (
  `requirement_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `service_requirement` varchar(45) NOT NULL,
  PRIMARY KEY (`requirement_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`requirement_id`, `service_name`, `service_requirement`) VALUES
(1, '1', 'DTI/SEC'),
(2, '1', 'Cedula'),
(3, '1', 'Sketch of establishments'),
(4, '2', 'Cedula'),
(5, '2', 'Must be a registered voter');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `service_description` text NOT NULL,
  `date_offered` date NOT NULL,
  `is_offered` varchar(45) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_description`, `date_offered`, `is_offered`) VALUES
(1, 'Barangay Clearance', 'It is a certification that is issued by the barangay council that you are a legitimate residence of that particular barangay. This is usually required in applying for a job to determine if you are really a residence of that particular place.', '2016-02-15', 'Yes'),
(2, 'Personal/ Local  Employment', '.', '2016-02-18', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE IF NOT EXISTS `system_log` (
  `entry_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `datetime` int(11) NOT NULL,
  `action` mediumtext NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1, '::1', 'root', 1456380423, 'Logged out', '/barangay/end.php'),
(2, '::1', 'root', 1456380438, 'Logged in', '/barangay/login.php'),
(3, '::1', 'root', 1456380439, 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$.DayPLEJTwqCI4dXf2P1eeeYKuFT72gvTD7krmp.IHTeW4dDktZk2\n    [2] => +DayPLEJTwqCI4dXf2P1eg\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/barangay/login.php'),
(4, '::1', 'root', 1456465124, 'Logged in', '/barangay/login.php'),
(5, '::1', 'root', 1456465844, 'Pressed submit button', '/barangay/modules/bulletin/add_bulletin.php'),
(6, '::1', 'root', 1456465845, 'Query Executed: INSERT INTO bulletin(bulletin_id, bulletin_date, bulletin_name, bulletin_description, filename, category, official_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => 2016-02-26\n    [3] => jgjg\n    [4] => gjgj\n    [5] => gjgjg\n    [6] => Education\n    [7] => 1\n)\n', '/barangay/modules/bulletin/add_bulletin.php'),
(7, '::1', 'root', 1456465901, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''37''', '/barangay/sysadmin/module_control.php'),
(8, '::1', 'root', 1456465924, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''37''', '/barangay/sysadmin/module_control.php'),
(9, '::1', 'root', 1456465951, 'Query executed: DELETE FROM user_passport WHERE username=''root''', '/barangay/sysadmin/set_user_passports.php'),
(10, '::1', 'root', 1456465952, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''37''),(''root'', ''41''),(''root'', ''33''),(''root'', ''45''),(''root'', ''4''),(''root'', ''49''),(''root'', ''53''),(''root'', ''57''),(''root'', ''61''),(''root'', ''16''),(''root'', ''28''),(''root'', ''8''),(''root'', ''20''),(''root'', ''24''),(''root'', ''12''),(''root'', ''65''),(''root'', ''39''),(''root'', ''43''),(''root'', ''35''),(''root'', ''44''),(''root'', ''36''),(''root'', ''48''),(''root'', ''7''),(''root'', ''52''),(''root'', ''56''),(''root'', ''60''),(''root'', ''64''),(''root'', ''19''),(''root'', ''31''),(''root'', ''11''),(''root'', ''23''),(''root'', ''27''),(''root'', ''15''),(''root'', ''68''),(''root'', ''38''),(''root'', ''42''),(''root'', ''34''),(''root'', ''46''),(''root'', ''5''),(''root'', ''50''),(''root'', ''54''),(''root'', ''58''),(''root'', ''62''),(''root'', ''17''),(''root'', ''29''),(''root'', ''9''),(''root'', ''21''),(''root'', ''25''),(''root'', ''13''),(''root'', ''66''),(''root'', ''1''),(''root'', ''47''),(''root'', ''6''),(''root'', ''51''),(''root'', ''55''),(''root'', ''59''),(''root'', ''32''),(''root'', ''3''),(''root'', ''63''),(''root'', ''2''),(''root'', ''18''),(''root'', ''30''),(''root'', ''10''),(''root'', ''22''),(''root'', ''26''),(''root'', ''14''),(''root'', ''67'')', '/barangay/sysadmin/set_user_passports.php'),
(11, '::1', 'root', 1456465952, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/barangay/sysadmin/set_user_passports.php');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Max Attachment Height', '0'),
('Max Attachment Size (MB)', '0'),
('Max Attachment Width', '0'),
('Security Level', 'HIGH');

-- --------------------------------------------------------

--
-- Table structure for table `system_skins`
--

CREATE TABLE IF NOT EXISTS `system_skins` (
  `skin_id` int(11) NOT NULL AUTO_INCREMENT,
  `skin_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `master_css` varchar(255) NOT NULL,
  `colors_css` varchar(255) NOT NULL,
  `fonts_css` varchar(255) NOT NULL,
  `override_css` varchar(255) NOT NULL,
  `icon_set` varchar(255) NOT NULL,
  PRIMARY KEY (`skin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css', 'cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css', 'cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css', 'cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css', 'cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css', 'cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css', 'cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css', 'cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css', 'cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css', 'cobalt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES
('root', '$2y$12$.DayPLEJTwqCI4dXf2P1eeeYKuFT72gvTD7krmp.IHTeW4dDktZk2', '+DayPLEJTwqCI4dXf2P1eg', 12, 'blowfish', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE IF NOT EXISTS `user_links` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `descriptive_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passport_group_id` int(11) NOT NULL,
  `show_in_tasklist` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`, `priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', 0),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', 0),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', 0),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', 0),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', 0),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', 0),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', 0),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', 0),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', 0),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', 0),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', 0),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', 0),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', 0),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', 0),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', 0),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', 0),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', 0),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', 0),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', 0),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', 0),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', 0),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', 0),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', 0),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', 0),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', 0),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', 0),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', 0),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', 0),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', 0),
(33, 'Add cobalt sst', 'sst/add_cobalt_sst.php', 'Add Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(34, 'Edit cobalt sst', 'sst/edit_cobalt_sst.php', 'Edit Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(35, 'View cobalt sst', 'sst/listview_cobalt_sst.php', 'Cobalt SST', '', 2, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete cobalt sst', 'sst/delete_cobalt_sst.php', 'Delete Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(37, 'Add bulletin', 'modules/bulletin/add_bulletin.php', 'Add Bulletin', '', 1, 'No', 'On', 'form3.png', 0),
(38, 'Edit bulletin', 'modules/bulletin/edit_bulletin.php', 'Edit Bulletin', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View bulletin', 'modules/bulletin/listview_bulletin.php', 'Bulletin', '', 1, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete bulletin', 'modules/bulletin/delete_bulletin.php', 'Delete Bulletin', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add citizen', 'modules/citizen/add_citizen.php', 'Add Citizen', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit citizen', 'modules/citizen/edit_citizen.php', 'Edit Citizen', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View citizen', 'modules/citizen/listview_citizen.php', 'Citizen', '', 1, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete citizen', 'modules/citizen/delete_citizen.php', 'Delete Citizen', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add official', 'modules/official/add_official.php', 'Add Official', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit official', 'modules/official/edit_official.php', 'Edit Official', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View official', 'modules/official/listview_official.php', 'Official', '', 1, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete official', 'modules/official/delete_official.php', 'Delete Official', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add request', 'modules/request/add_request.php', 'Add Request', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit request', 'modules/request/edit_request.php', 'Edit Request', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View request', 'modules/request/listview_request.php', 'Request', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete request', 'modules/request/delete_request.php', 'Delete Request', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add request has requirement', 'modules/request/add_request_has_requirement.php', 'Add Request Has Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit request has requirement', 'modules/request/edit_request_has_requirement.php', 'Edit Request Has Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View request has requirement', 'modules/request/listview_request_has_requirement.php', 'Request Has Requirement', '', 1, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete request has requirement', 'modules/request/delete_request_has_requirement.php', 'Delete Request Has Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(57, 'Add requirement', 'modules/service/add_requirement.php', 'Add Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(58, 'Edit requirement', 'modules/service/edit_requirement.php', 'Edit Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(59, 'View requirement', 'modules/service/listview_requirement.php', 'Requirement', '', 1, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete requirement', 'modules/service/delete_requirement.php', 'Delete Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(61, 'Add service', 'modules/service/add_service.php', 'Add Service', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit service', 'modules/service/edit_service.php', 'Edit Service', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View service', 'modules/service/listview_service.php', 'Service', '', 1, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete service', 'modules/service/delete_service.php', 'Delete Service', '', 1, 'No', 'On', 'form3.png', 0),
(65, 'Add validate', 'modules/citizen/add_validate.php', 'Add Validate', '', 1, 'No', 'On', 'form3.png', 0),
(66, 'Edit validate', 'modules/citizen/edit_validate.php', 'Edit Validate', '', 1, 'No', 'On', 'form3.png', 0),
(67, 'View validate', 'modules/citizen/listview_validate.php', 'Validate', '', 1, 'Yes', 'On', 'form3.png', 0),
(68, 'Delete validate', 'modules/citizen/delete_validate.php', 'Delete Validate', '', 1, 'No', 'On', 'form3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE IF NOT EXISTS `user_passport` (
  `username` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`username`,`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport`
--

INSERT INTO `user_passport` (`username`, `link_id`) VALUES
('root', 1),
('root', 2),
('root', 3),
('root', 4),
('root', 5),
('root', 6),
('root', 7),
('root', 8),
('root', 9),
('root', 10),
('root', 11),
('root', 12),
('root', 13),
('root', 14),
('root', 15),
('root', 16),
('root', 17),
('root', 18),
('root', 19),
('root', 20),
('root', 21),
('root', 22),
('root', 23),
('root', 24),
('root', 25),
('root', 26),
('root', 27),
('root', 28),
('root', 29),
('root', 30),
('root', 31),
('root', 32),
('root', 33),
('root', 34),
('root', 35),
('root', 36),
('root', 37),
('root', 38),
('root', 39),
('root', 41),
('root', 42),
('root', 43),
('root', 44),
('root', 45),
('root', 46),
('root', 47),
('root', 48),
('root', 49),
('root', 50),
('root', 51),
('root', 52),
('root', 53),
('root', 54),
('root', 55),
('root', 56),
('root', 57),
('root', 58),
('root', 59),
('root', 60),
('root', 61),
('root', 62),
('root', 63),
('root', 64),
('root', 65),
('root', 66),
('root', 67),
('root', 68);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport_groups`
--

CREATE TABLE IF NOT EXISTS `user_passport_groups` (
  `passport_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `passport_group` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`passport_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_passport_groups`
--

INSERT INTO `user_passport_groups` (`passport_group_id`, `passport_group`, `priority`, `icon`) VALUES
(1, 'Default', 0, 'blue_folder3.png'),
(2, 'Admin', 0, 'preferences-system.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`, `description`) VALUES
(1, 'Super Admin', 'Super admin role with 100% system privileges'),
(2, 'System Admin', 'System admin role with all sysadmin permissions');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_links`
--

CREATE TABLE IF NOT EXISTS `user_role_links` (
  `role_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_links`
--

INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36);

-- --------------------------------------------------------

--
-- Table structure for table `validate`
--

CREATE TABLE IF NOT EXISTS `validate` (
  `poa_poi_id` int(11) NOT NULL AUTO_INCREMENT,
  `proof_of_id` varchar(255) NOT NULL,
  `proof_of_address` varchar(255) NOT NULL,
  `citizen_id` int(11) NOT NULL,
  PRIMARY KEY (`poa_poi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
