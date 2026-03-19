-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2026 at 04:12 PM
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
-- Database: `traindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist`
--

CREATE TABLE `token_blacklist` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `id` int(11) NOT NULL,
  `train_name` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `route` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`id`, `train_name`, `price`, `route`, `created_at`, `updated_at`) VALUES
(1, 'LRT Line 1', 20.00, 'Baclaran - Fernando Poe Jr. Station', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(2, 'LRT Line 2', 25.00, 'Recto - Antipolo', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(3, 'MRT Line 3', 24.00, 'North Avenue - Taft Avenue', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(4, 'PNR Metro Commuter Line', 30.00, 'Tutuban - Alabang', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(5, 'PNR Bicol Express', 450.00, 'Manila - Naga', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(6, 'PNR Mayon Limited', 500.00, 'Manila - Legazpi', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(7, 'LRT Cavite Extension', 35.00, 'Baclaran - Niog', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(8, 'MRT Line 7', 28.00, 'North Avenue - San Jose del Monte', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(9, 'North–South Commuter Railway', 60.00, 'Clark - Calamba', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(10, 'Metro Manila Subway', 35.00, 'Valenzuela - NAIA Terminal 3', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(11, 'PNR South Long Haul', 800.00, 'Manila - Matnog', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(12, 'Clark Airport Express', 120.00, 'Clark Airport - Manila', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(13, 'Mindanao Railway Phase 1', 50.00, 'Tagum - Davao - Digos', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(14, 'Panay Rail Revival', 40.00, 'Iloilo - Roxas City', '2026-03-19 15:09:13', '2026-03-19 15:09:13'),
(15, 'Cebu Monorail', 25.00, 'Cebu City - Mactan Airport', '2026-03-19 15:09:13', '2026-03-19 15:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--
-- password is: admin@1234
INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2b$10$.t/V2iY38PVjPGuHLcVLDea99RE20BCs4iM4SLc9JGMR.PxNMnFEe', '2026-03-19 15:11:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `token_blacklist`
--
ALTER TABLE `token_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `token_blacklist`
--
ALTER TABLE `token_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
