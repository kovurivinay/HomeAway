-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 07:12 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeaway`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookinghisory`
--

CREATE TABLE `bookinghisory` (
  `PId` int(11) NOT NULL,
  `Booked_dates` varchar(1000) NOT NULL,
  `Customer_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookinghisory`
--

INSERT INTO `bookinghisory` (`PId`, `Booked_dates`, `Customer_name`) VALUES
(4, '2018-10-13T00:00:00.000Z 2018-10-14T00:00:00.000Z 2018-10-15T00:00:00.000Z ', 'vinay'),
(4, '2018-10-13T00:00:00.000Z 2018-10-14T00:00:00.000Z 2018-10-15T00:00:00.000Z ', 'vinay'),
(4, '2018-10-12T00:00:00.000Z 2018-10-13T00:00:00.000Z 2018-10-14T00:00:00.000Z 2018-10-15T00:00:00.000Z ', 'vinay'),
(4, '', 'vinay'),
(4, '2018-10-20T00:00:00.000Z 2018-10-21T00:00:00.000Z 2018-10-22T00:00:00.000Z ', 'vinay'),
(4, '2018-10-26T00:00:00.000Z 2018-10-27T00:00:00.000Z 2018-10-28T00:00:00.000Z ', 'vinay'),
(7, '2018-10-24T00:00:00.000Z 2018-10-25T00:00:00.000Z 2018-10-26T00:00:00.000Z 2018-10-27T00:00:00.000Z 2018-10-28T00:00:00.000Z 2018-10-29T00:00:00.000Z ', 'kovurivinay29@gmail.com'),
(8, '2018-10-26T00:00:00.000Z 2018-10-27T00:00:00.000Z ', 'kovurivinay29@gmail.com'),
(14, '2018-10-19T00:00:00.000Z 2018-10-20T00:00:00.000Z 2018-10-21T00:00:00.000Z ', 'kovurivinay100@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `clogin_table`
--

CREATE TABLE `clogin_table` (
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `aboutme` varchar(1000) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `homtown` varchar(50) NOT NULL,
  `languages` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clogin_table`
--

INSERT INTO `clogin_table` (`first`, `last`, `email`, `password`, `aboutme`, `city`, `country`, `company`, `school`, `homtown`, `languages`, `gender`) VALUES
('Vinay', 'Kovuri', 'kovurivinay100@gmail.com', '$2a$10$th/HMFfc2ays.e3z.EBw4.5dFQ3kwt1LLJZXF0/HIVvoBURXwd8HS', '', '', '', '', '', '', '', ''),
('Vinay', 'Kovuri', 'kovurivinay29@gmail.com', '$2a$10$pySBX.FA0MVJ6r0iH6rxhud0umhF4uX8VqHralGECcICwRnMNgV1y', '', 'Hyderabad', 'India', '', 'Sri Krishnaveni', 'Hyderabad', '', 'Male'),
('Madhu', 'Sudhan', 's.madhu441@gmail.com', '$2a$10$skSItScWVt54o', '', '', '', '', '', '', '', ''),
('Uday', 'Kovuri', 'udaykon007@gmail.com', '$2a$10$XNwDg/AiHZlouHVswkaNgONJVaWBagvT8GvhKtgcobBU449PnKr1S', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ologin_table`
--

CREATE TABLE `ologin_table` (
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `aboutme` varchar(1000) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `homtown` varchar(50) NOT NULL,
  `languages` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ologin_table`
--

INSERT INTO `ologin_table` (`first`, `last`, `email`, `password`, `aboutme`, `city`, `country`, `company`, `school`, `homtown`, `languages`, `gender`) VALUES
('Vinay', 'Kovuri', 'kovurivinay1999@gmail.com', '$2a$10$bzxZIwHhaUpC4Fe/u9vksOPEIRRtZz7yWvmmd/m.slyhzJROhWKXC', '', '', '', '', '', '', '', ''),
('Vinay', 'Kovuri', 'kovurivinay199@gmail.com', '$2a$10$.bgpPo92I2C32OvqLquBBez3QhT01/i5cpKxRwTv1ZF1Sck3esR9a', '', '', '', '', '', '', '', ''),
('Vinay', 'Kovuri', 'kovurivinay19@gmail.com', '$2a$10$Cv8D2zaACicVmt4gK/xfw.2maduvni0nCT/ivQNd/nNZe6wvfK6/u', '', 'San jose', 'California', '', '', '', '', ''),
('Vinay', 'Kovuri', 'vinay.kovuri@gmail.com', '$2a$10$QDCq0axe/Uran4arYsbBkeNQ/XfRG//4CF3XKUnWF9hph46uqLMeO', '', 'Hyderabad', 'India', '', 'Sri ', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `ID` int(250) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `street` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `zipcode` varchar(40) NOT NULL,
  `headline` varchar(40) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `property-type` varchar(40) NOT NULL,
  `bedrooms` varchar(40) NOT NULL,
  `accomodations` varchar(40) NOT NULL,
  `bathrooms` varchar(40) NOT NULL,
  `photos` mediumtext NOT NULL,
  `price` varchar(40) NOT NULL,
  `amenities` varchar(40) NOT NULL,
  `startdate` varchar(40) NOT NULL,
  `enddate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`ID`, `owner`, `country`, `street`, `city`, `state`, `zipcode`, `headline`, `description`, `property-type`, `bedrooms`, `accomodations`, `bathrooms`, `photos`, `price`, `amenities`, `startdate`, `enddate`) VALUES
(7, 'vinay', 'United states', '351 Liana way', 'San Jose', 'California', '95126', 'Private and Tranquil', 'Large Bed Room W/attached Bath Ground Floor In Double Storey luxury home', 'Housing', '1', '4', '1', 'Owner1eda0c24-eb65-4c9b-a32f-0656de3309b31.jpg Owner0cbd45c2-a19b-415d-923a-b97899e602d12.jpg Owner665674f6-fcc8-43b1-aa54-228e6146c9fe3.jpg ', '240', '', '2018-09-14', '2018-09-28'),
(12, 'kovurivinay19@gmail.com', 'United states', 'Cupertino', 'San jose', 'California', '95124', 'Private Large 1 Bedroom In Cupertino C', 'Large private room with attached full bathroom in a very quiet residential neighborhood in Cupertino California. House is located within walking distance to multiple Apple buildings including Apple HQ at Infinite Loop, De Anza College, Target Store, Whole Food market , BJ restaurant , Starbucks, Philz Coffee, Panera Bread, SF Boudin Bakery, etc. Several other restaurants and shops are all walking distance. The house is located right in the center of the town. Easy access to Highway 85 , Highway 280 and 101. 24 hour any time in/out private entry without any disturbance.', 'Bungalow', '1', '2', '1', 'Owner5b2ddcce-aa11-49f4-8216-50cf8ee93cb41.jpg Owner17ee519b-3cda-45a2-9464-9ed56889d9b12.jpg Ownerc595f071-a58c-4503-ae1d-0c03371250d63.jpg ', '121', '', '2018-10-01', '2018-10-31'),
(13, 'kovurivinay19@gmail.com', 'United states', 'Santa Clara', 'San jose', 'California', '95124', 'Beautiful Santa Clara Cottage', 'Features & Amenities Include:\r\n\r\n- 1 Bedroom - Queen Size Bed\r\n\r\n- 1 Bathroom - Classic Decor with Marble Counter\r\n\r\n- Living Room - Sleeper Sofa with Queen Size Bed\r\n\r\n- Dining area', 'Cottage', '1', '4', '1', 'Ownerbcf379a0-deac-422a-b6e7-cfe93a7b8f941.jpg Owner94848dd4-791f-4de5-b639-96d60fc8bb782.jpg Owner01a85188-f212-47cf-8523-5aa7c73c7a323.jpg Owner7e07604b-3bfa-4fe1-b010-b0a80b36bc9a4.jpg ', '157', '', '2018-10-04', '2018-11-30'),
(14, 'vinay.kovuri@gmail.com', 'United states', 'West Valley', 'San jose', 'California', '95148', 'Santana Row Executive Luxury - Silicon V', 'Experience luxury and solitude in this loft right on Santana Row, with easy access to shops and restaurants right below you. The Row has become a magnet for both locals and out-of-towners. It\'s the place to stay in SJ with it\'s chic European charm.', 'Bungalow', '2', '4', '1', 'Ownere81501a3-6dc3-4bf7-bd05-65a7b1920e3e1.jpg Ownerc0188577-3788-40b1-b30c-1f33d01b59582.jpg Owner9adbda8f-db47-41e6-b4a4-fb41fc02df083.jpg Ownerecd0cba4-af0b-4545-bfc8-8359d2f99b3f4.jpg ', '220', '', '2018-10-05', '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--
-- Error reading structure for table homeaway.user_profiles: #1932 - Table 'homeaway.user_profiles' doesn't exist in engine
-- Error reading data for table homeaway.user_profiles: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `homeaway`.`user_profiles`' at line 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clogin_table`
--
ALTER TABLE `clogin_table`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `ologin_table`
--
ALTER TABLE `ologin_table`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
