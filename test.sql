-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 27, 2024 at 11:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE `adress` (
  `Adress_id` int(11) NOT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Apt_nbr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`Adress_id`, `Country`, `City`, `Street`, `User_id`, `Apt_nbr`) VALUES
(3, 'jkk', 'jk', 'jk', 13, 8);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cart_id` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Prod_id` int(50) DEFAULT NULL,
  `Total_price` int(11) DEFAULT NULL,
  `Option_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cart_id`, `Quantity`, `User_id`, `Prod_id`, `Total_price`, `Option_name`) VALUES
(28, 1, 18, 1, 1499, '8GB/128GB'),
(33, 1, 18, 1, 1499, '8GB/128GB'),
(39, 3, 20, 3, 3447, '8GB/128GB'),
(41, 1, 19, 2, 799, '8GB/128GB'),
(42, 1, 19, 2, 799, '8GB/128GB');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `Color_ID` int(11) NOT NULL,
  `Color_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`Color_ID`, `Color_Name`) VALUES
(1, 'White'),
(2, 'Black'),
(3, 'Grey');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Img_id` int(11) NOT NULL,
  `Img_name` varchar(255) DEFAULT NULL,
  `Prod_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Img_id`, `Img_name`, `Prod_id`) VALUES
(4, '../images/15pro1.jpg', 1),
(5, '../images/15pro2.jpg', 1),
(6, '../images/15pro.jpg', 1),
(8, '../images/AppleiPhone15Plus.jpg.jpg', 12),
(9, '../images/.jpg', 12),
(10, '../images/.jpg', 12),
(11, '../images/Img name.jpg', 13),
(12, '../images/Img name.jpg', 13),
(13, '../images/Img name.jpg', 13);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `Option_id` int(11) DEFAULT NULL,
  `Option_name` varchar(255) DEFAULT NULL,
  `Option_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`Option_id`, `Option_name`, `Option_price`) VALUES
(2, '12GB/256GB', 100),
(3, '12GB/512GB', 175),
(1, '8GB/128GB', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Date` text NOT NULL DEFAULT current_timestamp(),
  `Adress_ID` int(11) NOT NULL,
  `Payment_ID` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Date`, `Adress_ID`, `Payment_ID`, `price`, `user_id`) VALUES
(15, '27/06/24 11:20', 3, 4, 1519, 13),
(16, '27/06/24 11:21:25', 3, 4, 1619, 13);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(11) NOT NULL,
  `Card_type` varchar(255) DEFAULT NULL,
  `Card_number` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Card_CVV` int(11) DEFAULT NULL,
  `Card_Expiration` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `Card_type`, `Card_number`, `User_id`, `Card_CVV`, `Card_Expiration`, `name`) VALUES
(4, 'MC', 2147483647, 13, 0, '1323454', 'ji');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Prod_id` int(11) NOT NULL,
  `Prod_name` varchar(255) DEFAULT NULL,
  `Prod_price` int(11) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL,
  `Prod_Quantity` int(11) DEFAULT NULL,
  `ProfitPerUnit` int(11) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Prod_id`, `Prod_name`, `Prod_price`, `Category`, `Img`, `Color`, `Prod_Quantity`, `ProfitPerUnit`, `Description`) VALUES
(1, 'Apple iPhone 15 Pro', 1499, 'phone', '../images/AppleiPhone15Plus.jpg', 'black', 20, 150, '6.1inch Super Retina XDR display. Aluminum A16 Bionic chip with 5-core GPUAdvanced dual-camera system. 48MP Main | Ultra Wide. Super-high-resolution photos (24MP and 48MP).4X optical zoom rangeEmergency SOS via satellite. Crash Detection. Roadside Assistance via satelliteUp to 26 hours video playback. USB C, Supports USB 2. Face ID'),
(2, 'Nothing Phone (2)', 799, 'phone', '../images/NothingPhone2.jpg', 'black', 20, 90, 'Display: 6.7” LTPO OLED display with 1600 nit peak pixel brightness and Gorilla Glass 5. With LTPO, Phone (2) can intuitively adapt its 120 Hz refresh rate to preserve power when you\'re not on your phone.\r\nBattery: At 4,700 mAh, Phone (2) houses our longest lasting battery yet. Lasts up to 22.5 hours.'),
(3, 'SAMSUNG 14\" Galaxy Book4 Pro Laptop', 1149, 'laptop', '../images/GalaxyBook4.jpg', 'Black', 20, 100, 'Intel Core Ultra 7 processor 155H;\r\nPOWERFUL. Slim laptop; 14\" Thickness: 11.6mm, Weight: 2.71 lbs\r\nTackle what you need to do on a spacious 14\" Dynamic AMOLED 2X touchscreen.\r\nA PACKED BATTERY FOR YOUR STACKED DAYS: Long-lasting battery that goes the distance; 16”: 76Wh'),
(7, 'Thermaltake Glacier 360 Liquid-Cooled PC (AMD Ryzen 5 5600X, RTX 3060)', 849, 'pc', '../images/pc1.jpg', 'White', 20, 50, 'AMD Ryzen 5 5600X, RTX 3060, 16GB 3600Mhz DDR4 ToughRAM RGB Memory, 1TB NVMe M.2, WiFi, Win 10 Home Closed Loop Liquid Cooling with 240mm Radiator and 3 ARGB Fan 1x USB 3.0, 2x USB 2.0, 1x Headphone, 1x Mic Ports'),
(10, 'Echo Buds (2023 Release) | True Wireless Bluetooth 5.2 Earbuds with Alexa', 74, 'accessory', '../images/echoBuds.jpg', 'Black', 30, 10, 'RUE WIRELESS EARBUDS WITH RICH, BALANCED SOUND — Hear it loud and clear with 12mm drivers delivering crisp audio, balanced bass, and full sound. Be heard with 2 microphones and a voice detection accelerometer for crystal clear communication.');

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `Prod_ID` int(11) NOT NULL,
  `QTY_SOLD` int(11) DEFAULT NULL,
  `ProfitPU` int(11) DEFAULT NULL,
  `Date` datetime NOT NULL,
  `Prod_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profit`
--

INSERT INTO `profit` (`Prod_ID`, `QTY_SOLD`, `ProfitPU`, `Date`, `Prod_name`) VALUES
(1, 1, 150, '2027-06-24 11:20:00', 'Apple iPhone 15 Pro'),
(1, 1, 150, '2027-06-24 11:21:25', 'Apple iPhone 15 Pro');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `First_name` varchar(255) DEFAULT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone_number` int(11) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `Username`, `First_name`, `Last_name`, `Email`, `Phone_number`, `Password`, `Role`) VALUES
(13, 'Admin', 'Admin', 'Admin', NULL, 12344566, '$2y$10$9r46VArNz5WQhKOsNRhg4u0ZsqnZ5G3/bmb4ulVZcvX7cBnjt/ZyW', 1),
(14, 'Test', 'Test', 'Test', NULL, 12345678, '$2y$10$PY9LzxGwEch0oRdb39Ugr.xekL5ovO2bkRXJPZIjktqXNYtUL9L.6', 0),
(15, 'test2', 'test2', 'test2', NULL, 5678, 'test2', 0),
(16, 't3', 't3', 't3', NULL, 456, '$2y$10$DsIb4t63ksLAkIi2nJCNHOYxd5DcT29Eh9VhCoon/vSRhuZ7/iHee', 0),
(17, 't', 't', 't', NULL, 12, 't', 0),
(18, 'a', 'a', 'a', NULL, 123, 'a', 1),
(19, 'Oliver123', 'Oliver', 'El Hindy', NULL, 71658027, '$2y$10$NhTQtdGD/DCIJEOmhG8h4O5vHBpwR74PGg57s3T1T5J9v/y3hLMPi', 1),
(20, 'test1', 'test1', 'test1', NULL, 73656278, '$2y$10$uSg3XpR45s/JLBzZxVbMEu6DHATuJlukMR4yRNC2wg4Hz4CSMCkSa', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`Adress_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`Color_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Img_id`),
  ADD KEY `Prod_id` (`Prod_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Prod_id`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`Prod_ID`,`Date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adress`
--
ALTER TABLE `adress`
  MODIFY `Adress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
