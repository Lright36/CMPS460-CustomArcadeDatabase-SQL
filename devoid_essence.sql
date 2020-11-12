-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 10:00 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devoid essence`
--

-- --------------------------------------------------------

--
-- Table structure for table `character_info`
--

CREATE TABLE `character_info` (
  `Played_Char` varchar(256) NOT NULL,
  `WinsVSCh1` int(11) UNSIGNED NOT NULL,
  `LossVsCh1` int(11) UNSIGNED NOT NULL,
  `WinsVsCh2` int(11) UNSIGNED NOT NULL,
  `LossVsCh2` int(11) UNSIGNED NOT NULL,
  `WinsVsCh3` int(11) UNSIGNED NOT NULL,
  `LossVsCh3` int(11) UNSIGNED NOT NULL,
  `WinsVsCh4` int(11) UNSIGNED NOT NULL,
  `LossVsCh4` int(11) UNSIGNED NOT NULL,
  `WinsVsCh5` int(11) UNSIGNED NOT NULL,
  `LossVsCh5` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `character_info`
--

INSERT INTO `character_info` (`Played_Char`, `WinsVSCh1`, `LossVsCh1`, `WinsVsCh2`, `LossVsCh2`, `WinsVsCh3`, `LossVsCh3`, `WinsVsCh4`, `LossVsCh4`, `WinsVsCh5`, `LossVsCh5`) VALUES
('Character1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Character2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Character3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Character4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Character5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `character_select`
--

CREATE TABLE `character_select` (
  `Player_ID` int(11) NOT NULL,
  `Played_Char` varchar(256) NOT NULL,
  `Color` int(2) NOT NULL,
  `Wins` int(11) NOT NULL,
  `Total_Games` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `Player_ID` int(11) UNSIGNED NOT NULL,
  `Player_Name` varchar(256) NOT NULL,
  `Player_Icon` int(4) UNSIGNED NOT NULL,
  `Fav_Character` varchar(256) NOT NULL,
  `Devoid_Points` int(11) UNSIGNED NOT NULL,
  `HashPass` varchar(256) NOT NULL,
  `Email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`Player_ID`, `Player_Name`, `Player_Icon`, `Fav_Character`, `Devoid_Points`, `HashPass`, `Email`) VALUES
(1, 'PlayerOne', 1, 'Character1', 0, 'f7ff9e8b7bb2e09b70935a5d785e0cc5d9d0abf0', 'World@email.com'),
(2, 'PlayerTwo', 1, 'Character2', 0, '70c07ec18ef89c5309bbb0937f3a6342411e1fdd', 'Hello@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `character_info`
--
ALTER TABLE `character_info`
  ADD PRIMARY KEY (`Played_Char`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Player_ID`),
  ADD UNIQUE KEY `Player_Name` (`Player_Name`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Player_Name_2` (`Player_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `Player_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
