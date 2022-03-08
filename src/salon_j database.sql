-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 10:47 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salon_j`
--

-- --------------------------------------------------------

--
-- Table structure for table `beautician_data`
--

CREATE TABLE `beautician_data` (
  `BID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beautician_data`
--

INSERT INTO `beautician_data` (`BID`, `name`, `age`, `email`, `contact`, `address`) VALUES
(1, 'Jenny Fernando', 25, 'jenny.salonj@gmail.com', 712548710, 'No:07,School Lane,Kaluthara'),
(2, 'Ann Perera', 23, 'ann.salonj@gmail.com', 784567891, 'No:05, Waliwita road, Malabe');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `Services` varchar(150) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `Services`, `date`) VALUES
(11, 'haricutting,.hairdressing,facial,massage,tattoo,shaving,', '2021-05-18'),
(12, 'shaving,', '2021-05-27'),
(13, 'haricutting,.hairdressing,', '2021-05-14'),
(14, 'haricutting,.hairdressing,', '2021-05-28'),
(16, 'haricutting,.hairdressing,', '2021-05-11'),
(17, 'haricutting,.hairdressing,facial,', '2021-05-04'),
(18, '.hairdressing,massage,tattoo,shaving,', '2021-05-04'),
(19, 'tattoo,shaving,', '2021-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `PhoneNo` varchar(12) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `DOB` varchar(12) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `PhoneNo` varchar(12) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `CareerPath` enum('Hair Cutter','Massage Therapist','Beautician') NOT NULL,
  `experience` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `method` enum('paypal','credit') NOT NULL,
  `cardholder` varchar(40) NOT NULL,
  `validthru` varchar(10) NOT NULL,
  `cvv` int(11) NOT NULL,
  `cardno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`method`, `cardholder`, `validthru`, `cvv`, `cardno`) VALUES
('', 'kakaka', '12/14', 3333, '666666666666');

-- --------------------------------------------------------

--
-- Table structure for table `propic`
--

CREATE TABLE `propic` (
  `id` int(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `propic`
--

INSERT INTO `propic` (`id`, `img`) VALUES
(1, 'uploads/'),
(2, 'uploads/'),
(3, 'uploads/image1.jpeg'),
(4, 'src/uploads/image1.jpeg'),
(5, 'uploads/image1.jpeg'),
(6, 'uploads/image1.jpeg'),
(7, 'uploads/hair-salon-price-list-example-462x1024.jpg'),
(8, 'uploads/hair-salon-price-list-example-462x1024.jpg'),
(9, 'uploads/image1.jpeg'),
(10, 'uploads/image1.jpeg'),
(11, 'uploads/image1.jpeg'),
(12, 'uploads/image1.jpeg'),
(13, 'uploads/image1.jpeg'),
(14, 'uploads/image1.jpeg'),
(15, 'uploads/image1.jpeg'),
(16, 'uploads/image1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(40) NOT NULL,
  `Year` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `gender`, `email`, `Year`, `phone`, `Address`) VALUES
(6, 'sadish', 'abcd', 'm', 'it20605902@my.sliit.lk', 2015, 94702449678, '89/1,Makandana,madapatha'),
(7, 'kamal', 'asdasd', 'm', 'it20605902@my.sliit.lk', 2015, 94702449678, '89/1,Makandana,madapatha');

-- --------------------------------------------------------

--
-- Table structure for table `salonproduct`
--

CREATE TABLE `salonproduct` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salonproduct`
--

INSERT INTO `salonproduct` (`id`, `description`, `image`, `price`) VALUES
(1, 'Tea Tree Essential Oil', '1.png', 910),
(2, 'Lavender Essential Oil', '2.png', 1000),
(3, 'Peppermint Essential Oil', '3.png', 1300),
(4, 'Roushun Essential Oils - 30ml Bottle', '4.png', 700),
(5, 'Milk & Honey Gold nourishing Hand & Body Cream', '5.png', 910),
(6, 'NOVAGE Ecollagen Wrinkle Power Night Cream', '6.png', 1600),
(7, 'Diamond Cellular Anti-Ageing Cream 13659', '7.png', 1300),
(8, 'OPTIMALS Age Revive Anti-Ageing Night Cream', '8.png', 700),
(9, 'Even Out Preventing Day Cream SPF 20', '9.png', 1500),
(10, 'NOVAGE Men Intense Anti-Ageing Face Gel Lotion 33201', '10.png', 700),
(11, 'ORIFLAME_Tender Care Protecting Balm_1276 (Face ,Lips,Baby Rashes)', '11.png', 910),
(12, 'Hair Coconut Oil', '12.png', 1900),
(13, 'OnColuor Cream Lipstick - Oriflame', '13.png', 1000),
(14, 'Giordani Gold Original Eau de Parfum', '14.png', 700);

-- --------------------------------------------------------

--
-- Table structure for table `userregis`
--

CREATE TABLE `userregis` (
  `regid` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregis`
--

INSERT INTO `userregis` (`regid`, `fname`, `lname`, `dob`, `email`, `phone`, `gender`, `address`, `password`) VALUES
(1, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(2, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(3, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(4, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(5, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(6, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(7, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(8, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(9, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', 'NALLASUHAM'),
(10, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(11, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(12, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(13, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(14, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(15, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(16, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(17, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(18, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(19, 'Sadisha Samarasinghe - SLIIT -', 'Try', '2021-05-12', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678DF'),
(20, 'Sadisha Samarasinghe - SLIIT -', 'Try', '', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678uu'),
(21, 'Sadisha Samarasinghe - SLIIT -', 'Try', '', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '12345678uu'),
(22, 'Sadisha', 'samarasinghe', '2021-05-11', 'sadish', '0702449678', 'male', '89/1,Makandana,madapatha', '1234567888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beautician_data`
--
ALTER TABLE `beautician_data`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`NIC`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`cardno`);

--
-- Indexes for table `propic`
--
ALTER TABLE `propic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salonproduct`
--
ALTER TABLE `salonproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregis`
--
ALTER TABLE `userregis`
  ADD PRIMARY KEY (`regid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beautician_data`
--
ALTER TABLE `beautician_data`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `propic`
--
ALTER TABLE `propic`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `salonproduct`
--
ALTER TABLE `salonproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userregis`
--
ALTER TABLE `userregis`
  MODIFY `regid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
