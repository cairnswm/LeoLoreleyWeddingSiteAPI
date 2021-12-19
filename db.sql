-- --------------------------------------------------------
-- Host:                         cairns.co.za
-- Server version:               10.2.41-MariaDB-cll-lve - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table cairnsco_general.loreley_gifts
CREATE TABLE IF NOT EXISTS `loreley_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `pledged` int(11) DEFAULT 0,
  `pledgebyid` int(11) DEFAULT 0,
  `pledgeby` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pledged` (`pledged`,`pledgebyid`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cairnsco_general.loreley_guests
CREATE TABLE IF NOT EXISTS `loreley_guests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '0',
  `attending` varchar(10) NOT NULL,
  `maxguests` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(50) DEFAULT '0',
  `phone2` varchar(50) DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '0',
  `email2` varchar(150) DEFAULT '0',
  `coming` int(11) DEFAULT 0,
  `comingkids` int(11) DEFAULT 0,
  `song` varchar(100) DEFAULT NULL,
  `special` varchar(300) DEFAULT NULL,
  `dietry` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
