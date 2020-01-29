-- ---------------------------------------------------------
--
-- SIMPLE SQL Dump
-- 
-- nawa (at) yahoo (dot) com
--
-- Host Connection Info: localhost via TCP/IP
-- Generation Time: January 29, 2020 at 03:08 AM ( Europe/Berlin )
-- Server version: 5.5.5-10.3.16-MariaDB
-- PHP Version: 7.3.7
--
-- ---------------------------------------------------------



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


-- ---------------------------------------------------------
--
-- Table structure for table : `login`
--
-- ---------------------------------------------------------

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Admin', 'admin', 'admin'),
(6, 'Samsul Bahri', 'Jakarta', 82128182),
(7, 'Diki Alfarabi Hadi', 'Medan', 81932323),
(8, 'Malas Ngoding', 'Jakarta', 12323123),
(9, 'Sumandini', 'Jakarta', 34231123),
(10, 'Fatimah', 'Medan', 34234234),
(11, 'Aisyah', 'Medan', 23423234),
(12, 'Muhammad ramdan', 'Bogor', 23423423),
(13, 'Zulkifli Ali', 'Medan', 23423421),
(14, 'Samsul Bahri', 'Jakarta', 82128182),
(15, 'Diki Alfarabi Hadi', 'Medan', 81932323),
(16, 'Malas Ngoding', 'Jakarta', 12323123),
(17, 'Sumandini', 'Jakarta', 34231123),
(18, 'Fatimah', 'Medan', 34234234),
(19, 'Aisyah', 'Medan', 23423234),
(20, 'Muhammad ramdan', 'Bogor', 23423423),
(21, 'Zulkifli Ali', 'Medan', 23423421),
(22, 'Samsul Bahri', 'Jakarta', 'ca929e92eb61a3bf43d395d4f'),
(23, 'Diki Alfarabi Hadi', 'Medan', '08c6f2a5cb0fe91f1d68f0235'),
(24, 'Malas Ngoding', 'Jakarta', '3eaa99f60e1290cd86d6cbb62'),
(25, 'Sumandini', 'Jakarta', 'ffe429575de85a4164320c3e6'),
(26, 'Fatimah', 'Medan', 'abf14ffd60451bc74be025d0a'),
(27, 'Aisyah', 'Medan', '9a2f28dea1b8a31eff32af731'),
(28, 'Muhammad ramdan', 'Bogor', 'ffa61acbd53470895d6952e54'),
(29, 'Zulkifli Ali', 'Medan', '60a7e954fde05b08d26269b6c');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;