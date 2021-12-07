-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 01:01 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarthealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `DiseaseID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Definition` varchar(500) NOT NULL,
  `mainSymptom` varchar(255) NOT NULL,
  `Symptom1` varchar(255) NOT NULL,
  `Symptom2` varchar(255) NOT NULL,
  `Symptom3` varchar(255) NOT NULL,
  `Symptom4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`DiseaseID`, `Title`, `Definition`, `mainSymptom`, `Symptom1`, `Symptom2`, `Symptom3`, `Symptom4`) VALUES
(1, 'depression', 'Depression is a kind of depressive disorder, is a chronic recurrent disease.', 'upset', 'slow thinking', 'anxiety', 'not breathing smoothly', 'head pressure'),
(2, 'hypertension', 'Hypertension is a cardiovascular syndrome with elevated systemic arterial pressure as the main clinical manifestation. Hypertension is the most common chronic disease and the main risk of cardiovascular and cerebrovascular diseases.', 'dizziness', 'visual impairment', 'cardiac decompensation', 'severe headache', 'azotemia'),
(3, 'prostatitis', 'Prostatitis is a pathological change related to inflammation, immunity and neuroendocrine caused by a variety of complex reasons and incentives.', 'burning when I pee', 'asymptomatic bacteriuria', 'pelycalgia', 'dribble urination', 'acute urinary retention');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` char(45) NOT NULL,
  `password` char(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`DiseaseID`),
  ADD UNIQUE KEY `mainSymptom` (`mainSymptom`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `DiseaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
