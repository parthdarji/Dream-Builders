-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2016 at 06:54 PM
-- Server version: 5.1.71-community
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dream_builders`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_categoty_dtl`
--

CREATE TABLE IF NOT EXISTS `ad_categoty_dtl` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(225) NOT NULL,
  `categoryDescription` varchar(225) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `category_Name` varchar(255) DEFAULT NULL,
  `category_Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ad_city_dtl`
--

CREATE TABLE IF NOT EXISTS `ad_city_dtl` (
  `CityId` int(11) NOT NULL AUTO_INCREMENT,
  `cityName` varchar(225) NOT NULL,
  `cityDescription` varchar(225) NOT NULL,
  `countryId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `City_ID` int(11) NOT NULL,
  `City_Name` varchar(255) DEFAULT NULL,
  `City_Description` varchar(255) DEFAULT NULL,
  `Country_Id` int(11) DEFAULT NULL,
  `State_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`CityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ad_country_dtl`
--

CREATE TABLE IF NOT EXISTS `ad_country_dtl` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(225) NOT NULL,
  `countryDescription` varchar(225) NOT NULL,
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(255) DEFAULT NULL,
  `Country_Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ad_property_dtl`
--

CREATE TABLE IF NOT EXISTS `ad_property_dtl` (
  `propertyId` int(11) NOT NULL AUTO_INCREMENT,
  `propertyName` varchar(225) NOT NULL,
  `propertyDesc` varchar(225) NOT NULL,
  `area` varchar(225) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(225) NOT NULL,
  `longitude` varchar(225) NOT NULL,
  `lattitude` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `bid` varchar(225) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `property_Description` varchar(255) DEFAULT NULL,
  `Category_Id` int(11) DEFAULT NULL,
  `SubCategory_Id` int(11) DEFAULT NULL,
  `Country_Id` int(11) DEFAULT NULL,
  `State_Id` int(11) DEFAULT NULL,
  `City_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`propertyId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ad_property_dtl`
--

INSERT INTO `ad_property_dtl` (`propertyId`, `propertyName`, `propertyDesc`, `area`, `price`, `type`, `longitude`, `lattitude`, `status`, `bid`, `Property_ID`, `property_name`, `property_Description`, `Category_Id`, `SubCategory_Id`, `Country_Id`, `State_Id`, `City_Id`) VALUES
(1, 'sc', 'cfd', 'zd', 12, 'ad', 'sf', 'sf', 'sf', '13', 1, '1sf', 'sdf', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ad_state_dtl`
--

CREATE TABLE IF NOT EXISTS `ad_state_dtl` (
  `stateId` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(225) NOT NULL,
  `stateDescription` varchar(225) NOT NULL,
  `State_ID` int(11) NOT NULL,
  `State_Name` varchar(255) DEFAULT NULL,
  `Country_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ad_subcategory_dtl`
--

CREATE TABLE IF NOT EXISTS `ad_subcategory_dtl` (
  `subcategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `subcategoryName` varchar(225) NOT NULL,
  `subcategoryDescription` varchar(225) NOT NULL,
  `Subcategory_ID` int(11) NOT NULL,
  `Subcategory_Name` varchar(255) DEFAULT NULL,
  `Subcategory_Description` varchar(255) DEFAULT NULL,
  `Category_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subcategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bid_dtl`
--

CREATE TABLE IF NOT EXISTS `bid_dtl` (
  `bidId` int(11) NOT NULL AUTO_INCREMENT,
  `bidprice` varchar(225) NOT NULL,
  `baseprice` varchar(225) NOT NULL,
  `bid_Id` int(11) NOT NULL,
  `PropertyId` int(11) DEFAULT NULL,
  `loginId` int(11) DEFAULT NULL,
  PRIMARY KEY (`bidId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complain_dtl`
--

CREATE TABLE IF NOT EXISTS `complain_dtl` (
  `complainid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `loginId` int(11) DEFAULT NULL,
  PRIMARY KEY (`complainid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_dtl`
--

CREATE TABLE IF NOT EXISTS `feedback_dtl` (
  `feedbackid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `loginId` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_mst`
--

CREATE TABLE IF NOT EXISTS `login_mst` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `emailId` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `logintype` int(11) NOT NULL,
  `date` date NOT NULL,
  `Login_Id` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `RegistrationId` int(11) DEFAULT NULL,
  PRIMARY KEY (`loginId`),
  KEY `FK_tr072o5nemt38vn7u5cr9gief` (`RegistrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `property_attachment_mpg`
--

CREATE TABLE IF NOT EXISTS `property_attachment_mpg` (
  `attachmentMappingID` int(11) NOT NULL AUTO_INCREMENT,
  `attachmentName` varchar(225) NOT NULL,
  `path` varchar(220) NOT NULL,
  `status` varchar(225) NOT NULL,
  `attachment_Mapping_ID` int(11) NOT NULL,
  `attachment_name` varchar(255) DEFAULT NULL,
  `Property_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`attachmentMappingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `slider_dtl`
--

CREATE TABLE IF NOT EXISTS `slider_dtl` (
  `sliderId` int(11) NOT NULL AUTO_INCREMENT,
  `sliderDescription` varchar(225) NOT NULL,
  `price` int(11) NOT NULL,
  `sliderImgName` varchar(225) NOT NULL,
  `propertyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`sliderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration_mst`
--

CREATE TABLE IF NOT EXISTS `user_registration_mst` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `country` varchar(225) NOT NULL,
  `state` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `area` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `contact` int(200) NOT NULL,
  `BirthDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_mst`
--

CREATE TABLE IF NOT EXISTS `visitor_mst` (
  `visitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `state` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `contact` int(11) NOT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_mst`
--
ALTER TABLE `login_mst`
  ADD CONSTRAINT `FK_tr072o5nemt38vn7u5cr9gief` FOREIGN KEY (`RegistrationId`) REFERENCES `user_registration_mst` (`register_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
