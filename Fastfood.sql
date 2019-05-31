-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for fastfood
CREATE DATABASE IF NOT EXISTS `fastfood` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fastfood`;

-- Dumping structure for table fastfood.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `itemname` char(10) DEFAULT NULL,
  `price` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `Mobileno` bigint(20) NOT NULL,
  `Fname` char(10) NOT NULL,
  `L_Name` char(10) NOT NULL,
  `creditpt` int(10) NOT NULL,
  PRIMARY KEY (`Mobileno`,`Fname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.discount
CREATE TABLE IF NOT EXISTS `discount` (
  `credit_pt` int(10) NOT NULL,
  `Discount` int(10) NOT NULL,
  KEY `Index 1` (`credit_pt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.fastfood
CREATE TABLE IF NOT EXISTS `fastfood` (
  `ID` int(5) NOT NULL,
  `Itemname` char(15) NOT NULL,
  `Price` int(5) NOT NULL,
  `Category` char(10) NOT NULL,
  PRIMARY KEY (`ID`,`Itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.feedupdate
CREATE TABLE IF NOT EXISTS `feedupdate` (
  `feedID` char(50) DEFAULT NULL,
  `Identity` bigint(20) DEFAULT NULL,
  `feed` char(50) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.login
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT 'NOT NULL',
  `password` varchar(255) NOT NULL DEFAULT 'NOT NULL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `ID` int(10) NOT NULL,
  `Itemname` char(10) NOT NULL,
  `Price` int(5) NOT NULL,
  `Category` char(10) NOT NULL,
  PRIMARY KEY (`ID`,`Itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.monsales
CREATE TABLE IF NOT EXISTS `monsales` (
  `Billno` int(10) NOT NULL,
  `Mobileno` bigint(20) NOT NULL,
  `Fname` char(10) NOT NULL,
  `Billamt` int(10) DEFAULT NULL,
  PRIMARY KEY (`Billno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `Staff_ID` int(10) NOT NULL,
  `Name` char(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table fastfood.stock
CREATE TABLE IF NOT EXISTS `stock` (
  `ID` int(10) NOT NULL,
  `Itemname` char(10) NOT NULL,
  `qty` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
