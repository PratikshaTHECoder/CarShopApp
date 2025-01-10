-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2025 at 12:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `showroom_name` varchar(255) DEFAULT NULL,
  `showroom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`id`, `service`, `date`, `location`, `vehicle`, `showroom_name`, `showroom_id`) VALUES
(8, 'Car Wash', '2025-01-10 15:59:33', 'Deira, Dubai, UAE', 'Nissan Patrol', NULL, NULL),
(9, 'Car Wash', '2025-01-10 16:11:23', 'Deira, Dubai, UAE', 'Lamborghini Aventador', NULL, NULL),
(10, 'Car Wash', '2025-01-10 16:21:09', 'Nasa Bldg, Deira, Dubai, UAE', 'Lamborghini Aventador', NULL, NULL),
(11, 'Car Wash', '2025-01-10 16:27:50', 'Deira, Dubai, UAE', 'Lamborghini Aventador', NULL, NULL),
(12, 'Car Wash', '2025-01-10 16:49:46', 'Deira, Dubai, UAE', 'Lamborghini Aventador', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `Category`, `createdAt`, `updatedAt`) VALUES
(1, 'Motors', '2025-01-09 16:48:47', '2025-01-09 16:48:47'),
(2, 'Motorbikes', '2025-01-09 16:48:47', '2025-01-09 16:48:47'),
(3, 'Showrooms', '2025-01-09 16:49:17', '2025-01-09 16:49:17'),
(4, 'Parts & Accessories', '2025-01-09 16:49:17', '2025-01-09 16:49:17'),
(5, 'Number Plates', '2025-01-09 16:49:50', '2025-01-09 16:49:50'),
(6, 'Car Service', '2025-01-09 16:49:50', '2025-01-09 16:49:50'),
(7, 'Car Wash', '2025-01-09 16:50:25', '2025-01-09 16:50:25'),
(8, 'Car Recovery', '2025-01-09 16:50:25', '2025-01-09 16:50:25'),
(9, 'Boats', '2025-01-09 16:50:59', '2025-01-09 16:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `CategoryLocation`
--

CREATE TABLE `CategoryLocation` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CategoryLocation`
--

INSERT INTO `CategoryLocation` (`id`, `category_id`, `location_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 1, 2),
(11, 2, 2),
(12, 4, 2),
(13, 7, 2),
(14, 8, 2),
(15, 1, 3),
(16, 3, 3),
(17, 4, 3),
(18, 5, 3),
(19, 6, 3),
(20, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`id`, `location`) VALUES
(1, 'Dubai'),
(2, 'Sharjah'),
(3, 'Abu Dhabi');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `payment_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`id`, `booking_id`, `payment_amount`) VALUES
(8, 8, 150),
(9, 9, 150),
(10, 10, 150),
(11, 11, 150),
(12, 12, 150);

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('create-categories.js');

-- --------------------------------------------------------

--
-- Table structure for table `Services`
--

CREATE TABLE `Services` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Services`
--

INSERT INTO `Services` (`id`, `label`, `title`, `description`, `price`) VALUES
(1, 'Premium', 'Car Wash', 'Special Discounted Offer For Ceramic Coating At & Interior Detailing With Steam At Home.', 200),
(2, 'Featured', 'Car Polishing', 'Special Discounted Offer For Ceramic Coating At & Interior Detailing With Steam At Home.', 150),
(3, 'Premium', 'Car Detailing', 'Special Discounted Offer For Ceramic Coating At & Interior Detailing With Steam At Home.', 500),
(4, 'Featured', 'AC Servicing', 'Special Discounted Offer For Ceramic Coating At & Interior Detailing With Steam At Home.', 400),
(5, 'Featured', 'Glass Repair', 'Special Discounted Offer For Ceramic Coating At & Interior Detailing With Steam At Home.', 600),
(6, 'Featured', 'Wheel Alignment', 'Special Discounted Offer For Ceramic Coating At & Interior Detailing With Steam At Home.', 250);

-- --------------------------------------------------------

--
-- Table structure for table `Showroom`
--

CREATE TABLE `Showroom` (
  `id` int(11) NOT NULL,
  `showroom` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `distance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Showroom`
--

INSERT INTO `Showroom` (`id`, `showroom`, `location_id`, `distance`) VALUES
(1, 'Showroom_1', 1, 1.3),
(2, 'Showroom_2', 2, 2),
(3, 'Showroom_3', 3, 1.3),
(4, 'Showroom_4', 1, 1.2),
(5, 'Showroom_5', 2, 4),
(6, 'Showroom_6', 3, 4.1),
(7, 'Showroom_7', 1, 1.1),
(8, 'Showroom_8', 2, 1.6),
(9, 'Showroom_9', 3, 1.7);

-- --------------------------------------------------------

--
-- Table structure for table `ShowroomServices`
--

CREATE TABLE `ShowroomServices` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `showroom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ShowroomServices`
--

INSERT INTO `ShowroomServices` (`id`, `service_id`, `showroom_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 4),
(8, 2, 4),
(9, 4, 4),
(10, 5, 4),
(11, 1, 7),
(12, 4, 7),
(13, 6, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_id` (`showroom_id`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CategoryLocation`
--
ALTER TABLE `CategoryLocation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Showroom`
--
ALTER TABLE `Showroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ShowroomServices`
--
ALTER TABLE `ShowroomServices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `showroom_id` (`showroom_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `CategoryLocation`
--
ALTER TABLE `CategoryLocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Services`
--
ALTER TABLE `Services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Showroom`
--
ALTER TABLE `Showroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ShowroomServices`
--
ALTER TABLE `ShowroomServices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`showroom_id`) REFERENCES `Showroom` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `CategoryLocation`
--
ALTER TABLE `CategoryLocation`
  ADD CONSTRAINT `categorylocation_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `categorylocation_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `Location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Showroom`
--
ALTER TABLE `Showroom`
  ADD CONSTRAINT `showroom_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ShowroomServices`
--
ALTER TABLE `ShowroomServices`
  ADD CONSTRAINT `showroomservices_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `Services` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `showroomservices_ibfk_2` FOREIGN KEY (`showroom_id`) REFERENCES `Showroom` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
