-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 08:53 AM
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
-- Database: `bhcmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','midwife','bhw','residents') NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `isArchived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `username`, `password`, `role`, `profile_picture`, `isArchived`) VALUES
(1, 'admin', '$2y$10$wSO7df3nhx9QF06QISRIT.1YNjfANjoIqR3q4X8GWKXT897uTeVly', 'admin', NULL, 0),
(2, 'BHW1', '$2y$10$Fp06K.3nimzVrtsC.VQMs.mkYrm0vpq5rYhDvktMiIY7SZbWbkozW', 'bhw', NULL, 0),
(5, 'BHW99', '$2y$10$WGbMOlDHPCI298D8iPgDp.n7Vglk3Gu.Xj2Sdg21BVE8Z.aPRS7wS', 'bhw', NULL, 0),
(6, 'BHW2', '$2y$10$jo2g7gXKJXysuLCE.WEMo.ZdWhAjO6/ORu4kcGZ75HlMkyfWau4OS', 'bhw', NULL, 0),
(7, 'BHW3', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', NULL, 0),
(8, 'BHW4', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', NULL, 0),
(9, 'BHW5', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', NULL, 0),
(10, 'BHW6', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', NULL, 0),
(11, 'BHW7', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', NULL, 0),
(12, 'Midwife1', '$2y$10$mHv3MxPW3CnlJ0m0Fp//LeShjQqYgttV40fklrqpW.3MEBweZChqi', 'midwife', '/bhcmis/storage/uploads/midwife-1.jpg', 0),
(13, 'Resident1', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(14, 'Resident2', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(15, 'Resident3', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(16, 'Resident4', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(17, 'Resident5', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(18, 'Resident6', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(19, 'Resident7', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(20, 'Resident8', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(21, 'Resident9', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(22, 'Resident10', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(36, 'JohnRey', '$2y$10$T9fBKwZraBxSwDc6eK1SvO49mvW3.2W7Fju1wWA4Q72iB/Ag9.KO.', 'residents', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(10) NOT NULL,
  `address_name` varchar(255) NOT NULL,
  `address_type` enum('hda','sitio') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_name`, `address_type`) VALUES
(1, 'Hda. Sta. Rosalia', 'hda'),
(2, 'Sto. Juancho', 'sitio'),
(3, 'Sto. Cogon', 'sitio'),
(4, 'GK Village', 'hda'),
(5, 'Sto. Gutusan', 'sitio'),
(6, 'Punta Mesa Proper', 'hda'),
(7, 'Sitio Banquerohan', 'sitio'),
(8, 'Hda. Busay', 'hda'),
(9, 'Hda. Bilbao', 'hda'),
(10, 'Hda. Lumayagan', 'hda'),
(11, 'Hda. Lourdes', 'hda'),
(12, 'Hda. Cuaycong', 'hda');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `personal_information_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `account_id`, `personal_information_id`) VALUES
(4, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `consultation_date` datetime NOT NULL,
  `bhw_id` int(10) NOT NULL,
  `status` enum('Scheduled','Cancelled','Completed') NOT NULL DEFAULT 'Scheduled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `resident_id`, `consultation_date`, `bhw_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-08-05 08:00:00', 8, 'Completed', '2024-07-25 03:51:10', '2024-07-25 03:51:10'),
(2, 5, '2024-08-02 00:00:00', 2, 'Completed', '2024-07-25 03:51:10', '2024-07-25 03:51:10'),
(3, 6, '2024-08-03 00:00:00', 3, 'Scheduled', '2024-07-25 03:51:10', '2024-07-25 03:51:10'),
(4, 7, '2024-08-04 00:00:00', 1, 'Completed', '2024-07-25 03:51:10', '2024-07-25 03:51:10'),
(5, 8, '2024-08-05 00:00:00', 4, 'Scheduled', '2024-07-25 03:51:10', '2024-07-25 03:51:10');

--
-- Triggers `appointments`
--
DELIMITER $$
CREATE TRIGGER `update_consultation_details` AFTER UPDATE ON `appointments` FOR EACH ROW BEGIN
    IF NEW.consultation_date <> OLD.consultation_date OR NEW.bhw_id <> OLD.bhw_id THEN
        UPDATE consultations
        SET consultation_date = NEW.consultation_date,
            bhw_id = NEW.bhw_id
        WHERE appointment_id = NEW.appointment_id;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bhw`
--

CREATE TABLE `bhw` (
  `bhw_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `personal_info_id` int(10) NOT NULL,
  `assigned_area` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bhw`
--

INSERT INTO `bhw` (`bhw_id`, `account_id`, `personal_info_id`, `assigned_area`) VALUES
(1, 2, 4, 2),
(2, 6, 6, 1),
(3, 7, 8, 3),
(4, 8, 10, 4),
(5, 9, 12, 5),
(6, 10, 11, 6),
(7, 11, 19, 7),
(8, 5, 15, 8);

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `consultation_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `appointment_id` int(10) DEFAULT NULL,
  `consultation_date` datetime(6) NOT NULL,
  `bhw_id` int(10) NOT NULL,
  `height_cm` decimal(5,2) DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `blood_pressure` varchar(100) DEFAULT NULL,
  `cholesterol_level` varchar(100) DEFAULT NULL,
  `findings_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`consultation_id`, `resident_id`, `appointment_id`, `consultation_date`, `bhw_id`, `height_cm`, `weight_kg`, `blood_pressure`, `cholesterol_level`, `findings_notes`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2024-08-05 08:00:00.000000', 8, 170.50, 70.00, '120/80', 'Normal', 'Patient exhibits normal vital signs and overall health is satisfactory; no immediate concerns.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(2, 5, NULL, '2024-08-02 10:30:00.000000', 2, 160.00, 65.00, '110/70', 'Normal', 'Patient shows signs of mild hypertension; recommend lifestyle modifications and follow-up visit in 3 months', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(3, 6, 2, '2024-08-03 14:00:00.000000', 3, 175.00, 80.00, '130/85', 'High', 'Patient is underweight; suggest nutritional counseling and a balanced diet to gain weight.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(4, 7, NULL, '2024-08-04 11:15:00.000000', 1, 168.00, 72.00, '125/80', 'Normal', 'Patient is obese with elevated blood pressure; recommend weight management program and regular exercise.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(5, 5, 4, '2024-08-05 13:00:00.000000', 4, 172.00, 75.00, '135/90', 'High', 'Patient shows signs of anemia; advise iron supplements and a follow-up blood test in 6 weeks.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(21, 4, NULL, '2024-07-31 16:37:55.000000', 3, 175.00, 55.00, '120/70', 'Normal', 'Patient has a fever; initiate dietary adjustments.', '2024-07-25 08:39:43', '2024-07-25 08:39:43'),
(22, 4, NULL, '2024-08-02 16:41:04.000000', 3, 176.00, 58.00, '120/80', 'Normal', 'Patient\'s vital signs are normal; continue with current health regimen and routine check-ups.', '2024-07-25 08:42:04', '2024-07-25 08:42:04'),
(23, 4, NULL, '2024-08-07 16:42:51.000000', 2, 175.00, 55.00, '120/70', 'Normal', 'Patient\'s health is stable with no new concerns; maintain current health plan and schedule next routine visit.', '2024-07-25 08:43:19', '2024-07-25 08:43:19');

--
-- Triggers `consultations`
--
DELIMITER $$
CREATE TRIGGER `after_consultation_insert` AFTER INSERT ON `consultations` FOR EACH ROW BEGIN
    DECLARE latest_blood_type ENUM('A', 'B', 'AB', 'O');
    
    -- Attempt to retrieve the latest blood_type, if exists
    SELECT blood_type 
    INTO latest_blood_type 
    FROM health_information
    WHERE resident_id = NEW.resident_id
    ORDER BY created_at DESC 
    LIMIT 1;

    -- Insert the new health information
    INSERT INTO health_information (
        resident_id, height_cm, weight_kg, blood_type, blood_pressure, cholesterol_level, created_at
    )
    VALUES (
        NEW.resident_id, NEW.height_cm, NEW.weight_kg, 
        latest_blood_type, -- Use the latest blood type, which could be NULL
        NEW.blood_pressure, NEW.cholesterol_level, NOW()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `health_information`
--

CREATE TABLE `health_information` (
  `health_information_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `height_cm` decimal(5,2) NOT NULL,
  `weight_kg` decimal(5,2) NOT NULL,
  `blood_type` enum('A','B','AB','O') DEFAULT NULL,
  `blood_pressure` varchar(100) NOT NULL,
  `cholesterol_level` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `health_information`
--

INSERT INTO `health_information` (`health_information_id`, `resident_id`, `height_cm`, `weight_kg`, `blood_type`, `blood_pressure`, `cholesterol_level`, `created_at`) VALUES
(1, 4, 170.50, 70.00, 'B', '120/80', 'Normal', '2024-07-25 08:37:06'),
(2, 5, 160.00, 65.00, 'B', '110/70', 'Normal', '2024-07-25 08:37:06'),
(3, 6, 175.00, 80.00, 'AB', '130/85', 'High', '2024-07-25 08:37:06'),
(4, 7, 168.00, 72.00, 'A', '125/80', 'Normal', '2024-07-25 08:37:06'),
(5, 5, 172.00, 75.00, 'B', '135/90', 'High', '2024-07-25 08:37:06'),
(8, 4, 175.00, 55.00, 'B', '120/70', 'Normal', '2024-07-25 08:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `household`
--

CREATE TABLE `household` (
  `household_id` int(10) NOT NULL,
  `household_no` int(100) NOT NULL,
  `residency_length_years` decimal(3,1) NOT NULL,
  `assigned_bhw` int(10) NOT NULL,
  `housing_type` enum('Owned','Rented','Other') NOT NULL,
  `construction_materials` enum('light','strong') NOT NULL,
  `lighting_facilities` enum('electricity','kerosene') NOT NULL,
  `nhts_status` enum('NHTS 4P''s','NHTS Non-4P''s','Non-NHTS') DEFAULT NULL,
  `water_source` enum('LEVEL 1 - Point Source','LEVEL 2 - Communal Faucet','LEVEL 3 - Individual Connection','OTHERS - For doubtful sources, open dug well etc.') NOT NULL,
  `toilet_facility` enum('Pointflush type connected to septic tank','Pointflush toilet connected to septic tank and to sewerage system','Ventilated Pit','Overhung Latrine','Without toilet') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `household`
--

INSERT INTO `household` (`household_id`, `household_no`, `residency_length_years`, `assigned_bhw`, `housing_type`, `construction_materials`, `lighting_facilities`, `nhts_status`, `water_source`, `toilet_facility`) VALUES
(1, 101, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(2, 102, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(3, 103, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(4, 104, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(5, 105, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(6, 106, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(7, 107, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(8, 108, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(9, 109, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(10, 110, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(11, 111, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(12, 112, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(13, 113, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(14, 114, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(15, 115, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(16, 116, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(17, 117, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(18, 118, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(19, 119, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(20, 120, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(21, 121, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(22, 122, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(23, 123, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(24, 124, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(25, 125, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(26, 126, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(27, 127, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(28, 128, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(29, 129, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(30, 130, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(31, 131, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(32, 132, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(33, 133, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(34, 134, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(35, 135, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(36, 136, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(37, 137, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(38, 138, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(39, 139, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(40, 140, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(41, 141, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(42, 142, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(43, 143, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(44, 144, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(45, 145, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(46, 146, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(47, 147, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(48, 148, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(49, 149, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(50, 150, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(51, 151, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(52, 152, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(53, 153, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(54, 154, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(55, 155, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(56, 156, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(57, 157, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(58, 158, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(59, 159, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(60, 160, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(61, 161, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(62, 162, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(63, 163, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(64, 164, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(65, 165, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(66, 166, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(67, 167, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(68, 168, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(69, 169, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(70, 170, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(71, 171, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(72, 172, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(73, 173, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(74, 174, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(75, 175, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(76, 176, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(77, 177, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(78, 178, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(79, 179, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(80, 180, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(81, 181, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(82, 182, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(83, 183, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(84, 184, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(85, 185, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(86, 186, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(87, 187, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(88, 188, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(89, 189, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(90, 190, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(91, 191, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(92, 192, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(93, 193, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(94, 194, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(95, 195, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(96, 196, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(97, 197, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(98, 198, 2.0, 3, 'Owned', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(99, 199, 2.0, 3, 'Other', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(100, 200, 2.0, 3, 'Rented', 'strong', 'electricity', NULL, 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank');

-- --------------------------------------------------------

--
-- Table structure for table `household_members`
--

CREATE TABLE `household_members` (
  `household_members_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `household_id` int(10) NOT NULL,
  `role` enum('husband','wife','children','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `household_members`
--

INSERT INTO `household_members` (`household_members_id`, `resident_id`, `household_id`, `role`) VALUES
(1, 4, 1, 'husband'),
(2, 5, 1, 'husband');

-- --------------------------------------------------------

--
-- Table structure for table `medical_conditions`
--

CREATE TABLE `medical_conditions` (
  `medical_conditions_id` int(10) NOT NULL,
  `condition_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medical_conditions`
--

INSERT INTO `medical_conditions` (`medical_conditions_id`, `condition_name`) VALUES
(1, 'Arthritis'),
(2, 'Asthma'),
(3, 'Cancer'),
(4, 'Heart Disease'),
(5, 'Colds and Flu'),
(6, 'Diarrhea'),
(7, 'Headaches'),
(8, 'Stomach Aches'),
(9, 'Alzheimer\'s Disease'),
(10, 'Anxiety'),
(11, 'Appendicitis'),
(12, 'Bipolar Disorder'),
(13, 'Bone Cancer'),
(14, 'Breast Cancer'),
(15, 'Brain Tumor'),
(16, 'Bronchitis'),
(17, 'Cerebral Palsy');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `medicine_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `generic_name` varchar(255) DEFAULT NULL,
  `dosage` varchar(50) NOT NULL,
  `form` varchar(50) NOT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `quantity_in_stock` int(10) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`medicine_id`, `name`, `generic_name`, `dosage`, `form`, `manufacturer`, `expiry_date`, `quantity_in_stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol', 'Paracetamol', '500 mg', 'Tablet', 'Unilab', '2025-12-31', 200, 'Pain reliever and fever reducer', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(2, 'Ibuprofen', 'Ibuprofen', '400 mg', 'Tablet', 'Pfizer', '2024-11-30', 150, 'Anti-inflammatory and pain relief', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(3, 'Amoxicillin', 'Amoxicillin', '500 mg', 'Capsule', 'United Laboratories', '2024-08-31', 100, 'Antibiotic used to treat infections', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(4, 'Aspirin', 'Acetylsalicylic Acid', '100 mg', 'Tablet', 'Aspirin Inc.', '2025-03-15', 250, 'Pain relief and anti-inflammatory', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(5, 'Loperamide', 'Loperamide', '2 mg', 'Capsule', 'GlaxoSmithKline', '2024-10-01', 80, 'Anti-diarrheal', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(6, 'Cetirizine', 'Cetirizine', '10 mg', 'Tablet', 'Sanofi', '2025-05-20', 180, 'Antihistamine for allergies', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(7, 'Metformin', 'Metformin', '500 mg', 'Tablet', 'Boehringer Ingelheim', '2024-12-31', 120, 'Medication for type 2 diabetes', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(8, 'Cough Syrup', 'Dextromethorphan', '100 ml', 'Syrup', 'Pfizer', '2024-07-15', 90, 'Relieves cough and throat irritation', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(9, 'Salbutamol', 'Salbutamol', '100 mcg', 'Inhaler', 'GlaxoSmithKline', '2025-09-30', 70, 'Bronchodilator for asthma', '2024-07-25 09:23:05', '2024-07-25 09:23:05'),
(10, 'Omeprazole', 'Omeprazole', '20 mg', 'Capsule', 'AstraZeneca', '2025-01-10', 110, 'Reduces stomach acid production', '2024-07-25 09:23:05', '2024-07-25 09:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `midwife`
--

CREATE TABLE `midwife` (
  `midwife_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `personal_info_id` int(10) NOT NULL,
  `employment_status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `employment_date` date NOT NULL DEFAULT current_timestamp(),
  `license_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `midwife`
--

INSERT INTO `midwife` (`midwife_id`, `account_id`, `personal_info_id`, `employment_status`, `employment_date`, `license_number`) VALUES
(1, 12, 21, 'active', '2024-09-08', '003104');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `personal_info_id` int(10) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `civil_status` enum('Single','Married','Widowed','Legally Separated') DEFAULT NULL,
  `educational_attainment` enum('Elementary Graduate','Elementary Undergraduate','Highschool Graduate','Highschool Undergraduate','College Graduate','College Undergraduate') DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `citizenship` varchar(100) DEFAULT NULL,
  `address_id` int(10) NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`personal_info_id`, `lastname`, `firstname`, `middlename`, `date_of_birth`, `civil_status`, `educational_attainment`, `occupation`, `religion`, `citizenship`, `address_id`, `sex`, `phone_number`, `email`, `id_picture`, `created_at`, `updated_at`) VALUES
(1, 'Santos', 'Juan', 'Dela Cruz', '1989-05-10', 'Married', 'College Graduate', 'Teacher', 'Roman Catholic', 'Filipino', 1, 'male', '09171234567', 'juan.santos@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(2, 'Reyes', 'Maria', 'Lopez', '1994-03-22', 'Single', 'Highschool Graduate', 'Sales Clerk', 'Roman Catholic', 'Filipino', 2, 'female', '09281234567', 'maria.reyes@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(3, 'Gonzales', 'Peter', 'Ramos', '1978-11-15', 'Widowed', 'Elementary Graduate', 'Farmer', 'Roman Catholic', 'Filipino', 3, 'male', '09331234567', 'pedro.gonzales@example.com', NULL, '2024-07-25 11:07:25', '2024-09-07 08:42:17'),
(4, 'Garcia', 'Ana', 'Santos', '1985-07-30', 'Married', 'College Undergraduate', 'Nurse', 'Roman Catholic', 'Filipino', 4, 'female', '09441234567', 'ana.garcia@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(5, 'Mendoza', 'Carlos', 'Alvarez', '1996-12-04', 'Single', 'Highschool Graduate', 'Mechanic', 'Roman Catholic', 'Filipino', 5, 'male', '09551234567', 'carlos.mendoza@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(6, 'Aquino', 'Laura', 'Gomez', '1992-09-18', 'Married', 'College Graduate', 'Accountant', 'Roman Catholic', 'Filipino', 6, 'female', '09661234567', 'laura.aquino@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(7, 'Santos', 'Isabel', 'Navarro', '1983-06-25', 'Legally Separated', 'College Graduate', 'Engineer', 'Roman Catholic', 'Filipino', 7, 'female', '09771234567', 'isabel.santos@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(8, 'Cruz', 'Antonio', 'Castro', '1973-01-10', 'Married', 'Elementary Graduate', 'Construction Worker', 'Roman Catholic', 'Filipino', 8, 'male', '09881234567', 'antonio.cruz@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(9, 'Morales', 'Elena', 'Garcia', '1999-04-20', 'Single', 'Highschool Graduate', 'Student', 'Roman Catholic', 'Filipino', 9, 'male', '09991234567', 'elena.morales@example.com', NULL, '2024-07-25 11:07:25', '2024-09-07 08:42:29'),
(10, 'Delos Reyes', 'Gabriel', 'Santos', '1981-08-14', 'Married', 'College Graduate', 'Businessman', 'Roman Catholic', 'Filipino', 10, 'male', '09182345678', 'gabriel.delosreyes@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(11, 'Luna', 'Olivia', 'Mendoza', '1997-05-05', 'Single', 'College Graduate', 'Teacher', 'Roman Catholic', 'Filipino', 1, 'female', '09293456789', 'olivia.luna@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(12, 'Diaz', 'Ricardo', 'Jimenez', '1988-10-30', 'Married', 'Highschool Graduate', 'Driver', 'Roman Catholic', 'Filipino', 2, 'male', '09384567890', 'ricardo.diaz@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(13, 'Marjohn', 'Roy Marjohn', 'Araneta', '2001-08-28', 'Single', 'College Graduate', 'Businessman', 'Roman Catholic', 'Filipino', 1, 'male', '09308309624', 'roymarjohnaraneta@gmail.com', NULL, '2024-07-25 11:07:25', '2024-09-06 09:32:11'),
(14, 'Chavez', 'Mary', 'Macias', '1995-11-20', 'Married', 'College Undergraduate', 'Hotel Manager', 'Roman Catholic', 'Filipino', 4, 'male', '09586789012', 'ruvyangcona@gmail.com', NULL, '2024-07-25 11:07:25', '2024-09-09 14:03:12'),
(15, 'Villar', 'Carmen', 'Rodriguez', '1986-06-10', 'Married', 'College Graduate', 'Nurse', 'Roman Catholic', 'Filipino', 5, 'female', '09697890123', 'carmen.villar@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(16, 'Santiago', 'Marc John', 'Torres', '1991-06-12', 'Single', 'College Graduate', 'Security Guard', 'Roman Catholic', 'Filipino', 1, 'male', '09708901234', 'marcojohnsantiago@example.com', NULL, '2024-07-25 11:07:25', '2024-09-06 09:30:29'),
(17, 'Gonzalez', 'Sophia', 'Bautista', '1993-12-30', 'Single', 'College Graduate', 'Engineer', 'Roman Catholic', 'Filipino', 7, 'male', '09819012345', 'sophia.gonzalez@example.com', NULL, '2024-07-25 11:07:25', '2024-09-07 08:27:34'),
(18, 'Lopez', 'Andres', 'Gonzales', '1982-07-22', 'Married', 'Elementary Graduate', 'Farmer', 'Roman Catholic', 'Filipino', 8, 'male', '09920123456', 'andres.lopez@example.com', NULL, '2024-07-25 11:07:25', '2024-09-06 09:30:38'),
(19, 'Rivera', 'Beatriz', 'Morales', '1998-11-11', 'Single', 'Highschool Graduate', 'Cashier', 'Roman Catholic', 'Filipino', 9, 'female', '09123456789', 'beatriz.rivera@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(20, 'Victorino', 'Amiel Jose', 'Araneta', '1975-04-12', 'Married', 'College Graduate', 'Brgy. Secretary', 'Roman Catholic', 'Filipino', 10, 'male', '09234567890', 'amielvictorino@gmail.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(21, 'Singua', 'Reyna Jane', 'Bingua', '1996-06-05', 'Single', 'College Graduate', 'Barangay Midwife', 'Roman Catholic', 'Filipino', 3, 'female', '09851354569', 'reynasingua@gmail.com', NULL, '2024-07-25 17:45:21', '2024-07-25 17:45:21'),
(35, 'Gasparillo', 'John Rey', 'Lobaton', '1999-03-03', 'Single', 'College Graduate', 'Teacher', 'Roman Catholic', 'Filipino', 1, 'male', '639308309627', 'johnreygasparillo@gmail.com', NULL, '2024-09-09 14:04:46', '2024-09-09 14:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `pregnancy`
--

CREATE TABLE `pregnancy` (
  `pregnancy_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `expected_due_date` date NOT NULL,
  `pregnancy_status` enum('Ongoing','Completed','Terminated') NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pregnancy`
--

INSERT INTO `pregnancy` (`pregnancy_id`, `resident_id`, `expected_due_date`, `pregnancy_status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-12-15', 'Ongoing', 'First trimester, regular check-ups required.', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(2, 8, '2025-03-22', 'Ongoing', 'Patient experiencing mild nausea, advised rest.', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(3, 10, '2024-09-30', 'Completed', 'Healthy delivery, baby girl.', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(4, 12, '2024-11-05', 'Terminated', 'Pregnancy terminated due to medical complications.', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(5, 6, '2025-06-18', 'Ongoing', 'Routine follow-ups scheduled, no current issues.', '2024-07-25 09:49:51', '2024-07-25 09:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `prenatals`
--

CREATE TABLE `prenatals` (
  `prenatal_id` int(10) NOT NULL,
  `pregnancy_id` int(10) NOT NULL,
  `visit_date` date NOT NULL,
  `bhw_id` int(10) NOT NULL,
  `checkup_details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prenatals`
--

INSERT INTO `prenatals` (`prenatal_id`, `pregnancy_id`, `visit_date`, `bhw_id`, `checkup_details`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-04-15', 1, 'Routine check-up, blood tests normal.', '2024-07-25 09:51:07', '2024-07-25 09:51:07'),
(2, 1, '2024-06-15', 2, 'Ultrasound performed, fetal development on track.', '2024-07-25 09:51:07', '2024-07-25 09:51:07'),
(3, 2, '2024-08-22', 3, 'Monitor nausea, advised dietary adjustments.', '2024-07-25 09:51:07', '2024-07-25 09:51:07'),
(4, 3, '2024-05-10', 4, 'Post-delivery check-up, mother and baby doing well.', '2024-07-25 09:51:07', '2024-07-25 09:51:07'),
(5, 5, '2024-10-12', 1, 'Regular check-up, no concerns, fetus is growing well.', '2024-07-25 09:51:07', '2024-07-25 09:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `resident_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `personal_info_id` int(10) NOT NULL,
  `isValidResident` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`resident_id`, `account_id`, `personal_info_id`, `isValidResident`) VALUES
(4, 13, 13, 1),
(5, 14, 14, 1),
(6, 15, 1, 1),
(7, 16, 16, 1),
(8, 17, 18, 1),
(9, 18, 9, 1),
(10, 19, 2, 1),
(11, 20, 3, 1),
(12, 21, 5, 1),
(13, 22, 17, 1),
(27, 36, 35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `residents_medical_condition`
--

CREATE TABLE `residents_medical_condition` (
  `rmc_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `medical_conditions_id` int(10) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `residents_medical_condition`
--

INSERT INTO `residents_medical_condition` (`rmc_id`, `resident_id`, `medical_conditions_id`, `created_at`) VALUES
(1, 5, 2, '2024-07-25 17:54:59.000000'),
(2, 4, 5, '2024-07-25 17:54:59.000000'),
(3, 8, 7, '2024-07-25 17:54:59.000000'),
(4, 4, 8, '0000-00-00 00:00:00.000000'),
(5, 4, 11, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `residents_medication`
--

CREATE TABLE `residents_medication` (
  `medication_id` int(10) NOT NULL,
  `consultation_id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `instructions` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `residents_medication`
--

INSERT INTO `residents_medication` (`medication_id`, `consultation_id`, `medicine_id`, `quantity`, `instructions`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, 'Take one tablet twice daily with meals.', '2024-07-25 09:37:54', '2024-07-25 09:37:54'),
(2, 2, 2, 20, 'Take one tablet daily before breakfast.', '2024-07-25 09:37:54', '2024-07-25 09:37:54'),
(3, 3, 3, 30, 'Take one tablet every evening before bed.', '2024-07-25 09:37:54', '2024-07-25 09:37:54'),
(4, 4, 4, 15, 'Take one tablet in the morning and one in the evening.', '2024-07-25 09:37:54', '2024-07-25 09:37:54'),
(5, 5, 5, 25, 'Take one capsule twice daily, one hour before meals.', '2024-07-25 09:37:54', '2024-07-25 09:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinations`
--

CREATE TABLE `vaccinations` (
  `vaccination_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `vaccine_id` int(10) NOT NULL,
  `vaccination_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vaccinations`
--

INSERT INTO `vaccinations` (`vaccination_id`, `resident_id`, `vaccine_id`, `vaccination_date`) VALUES
(1, 4, 16, '2024-01-15'),
(2, 5, 16, '2024-02-20'),
(3, 6, 17, '2024-03-25'),
(4, 7, 17, '2024-04-30'),
(5, 8, 18, '2024-05-10'),
(6, 9, 19, '2024-06-15'),
(7, 10, 20, '2024-07-20'),
(8, 11, 20, '2024-08-25'),
(9, 12, 17, '2024-09-30'),
(10, 13, 17, '2024-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE `vaccines` (
  `vaccine_id` int(10) NOT NULL,
  `vaccine_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vaccines`
--

INSERT INTO `vaccines` (`vaccine_id`, `vaccine_name`) VALUES
(1, 'Bacillus Calmette-Guérin (BCG) Vaccine'),
(2, 'Hepatitis B Vaccine'),
(3, 'Diphtheria, Tetanus, and Pertussis (DTaP) Vaccine'),
(4, 'Polio Vaccine (IPV)'),
(5, 'Measles, Mumps, and Rubella (MMR) Vaccine'),
(6, 'Hepatitis A Vaccine'),
(7, 'Influenza Vaccine (Flu Shot)'),
(8, 'Typhoid Vaccine'),
(9, 'Japanese Encephalitis Vaccine'),
(10, 'Rabies Vaccine'),
(11, 'Human Papillomavirus (HPV) Vaccine'),
(12, 'Pneumococcal Conjugate Vaccine (PCV)'),
(13, 'Varicella (Chickenpox) Vaccine'),
(14, 'Tetanus, Diphtheria, and Pertussis (Tdap) Booster'),
(15, 'Meningococcal Vaccine'),
(16, 'Pfizer-BioNTech COVID-19 Vaccine'),
(17, 'Moderna COVID-19 Vaccine'),
(18, 'AstraZeneca COVID-19 Vaccine'),
(19, 'Sinovac-CoronaVac COVID-19 Vaccine'),
(20, 'Johnson & Johnson COVID-19 Vaccine');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `fk_adminAccountId` (`account_id`),
  ADD KEY `fk_adminPersonalInfoId` (`personal_information_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `fk_appointmentBhwId` (`bhw_id`),
  ADD KEY `fk_appointmentResidentId` (`resident_id`);

--
-- Indexes for table `bhw`
--
ALTER TABLE `bhw`
  ADD PRIMARY KEY (`bhw_id`),
  ADD KEY `fk_bhwAccountId` (`account_id`),
  ADD KEY `fk_bhwPersonalInfoId` (`personal_info_id`),
  ADD KEY `fk_bhwAssignedAreaId` (`assigned_area`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`consultation_id`),
  ADD KEY `fk_consultationBhwId` (`bhw_id`),
  ADD KEY `fk_consultationAppointmentId` (`appointment_id`),
  ADD KEY `fk_consultationResidentId` (`resident_id`);

--
-- Indexes for table `health_information`
--
ALTER TABLE `health_information`
  ADD PRIMARY KEY (`health_information_id`),
  ADD KEY `fk_HealthInfoResidentId` (`resident_id`);

--
-- Indexes for table `household`
--
ALTER TABLE `household`
  ADD PRIMARY KEY (`household_id`);

--
-- Indexes for table `household_members`
--
ALTER TABLE `household_members`
  ADD PRIMARY KEY (`household_members_id`),
  ADD KEY `fk_hmResidentId` (`resident_id`),
  ADD KEY `fk_hmHouseholdId` (`household_id`);

--
-- Indexes for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  ADD PRIMARY KEY (`medical_conditions_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `midwife`
--
ALTER TABLE `midwife`
  ADD PRIMARY KEY (`midwife_id`),
  ADD KEY `fk_midwifeAccountId` (`account_id`),
  ADD KEY `fk_midwifePersonalInfoId` (`personal_info_id`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`personal_info_id`),
  ADD KEY `fk_personalInfoAddressId` (`address_id`);

--
-- Indexes for table `pregnancy`
--
ALTER TABLE `pregnancy`
  ADD PRIMARY KEY (`pregnancy_id`),
  ADD KEY `fk_pregnancyResidentId` (`resident_id`);

--
-- Indexes for table `prenatals`
--
ALTER TABLE `prenatals`
  ADD PRIMARY KEY (`prenatal_id`),
  ADD KEY `fk_prenatalsPregnancyId` (`pregnancy_id`),
  ADD KEY `fk_prenatalBhwId` (`bhw_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`resident_id`),
  ADD KEY `fk_residentsAccountId` (`account_id`),
  ADD KEY `fk_residentsPersonaInfoId` (`personal_info_id`);

--
-- Indexes for table `residents_medical_condition`
--
ALTER TABLE `residents_medical_condition`
  ADD PRIMARY KEY (`rmc_id`),
  ADD KEY `fk_rmcResidentId` (`resident_id`),
  ADD KEY `fk_rmcConditionsId` (`medical_conditions_id`);

--
-- Indexes for table `residents_medication`
--
ALTER TABLE `residents_medication`
  ADD PRIMARY KEY (`medication_id`),
  ADD KEY `fk_rmConsultationId` (`consultation_id`),
  ADD KEY `fk_rmMedicineId` (`medicine_id`);

--
-- Indexes for table `vaccinations`
--
ALTER TABLE `vaccinations`
  ADD PRIMARY KEY (`vaccination_id`),
  ADD KEY `fk_vaccinationResidentId` (`resident_id`),
  ADD KEY `fk_vaccinationVaccineId` (`vaccine_id`);

--
-- Indexes for table `vaccines`
--
ALTER TABLE `vaccines`
  ADD PRIMARY KEY (`vaccine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bhw`
--
ALTER TABLE `bhw`
  MODIFY `bhw_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `consultation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `health_information`
--
ALTER TABLE `health_information`
  MODIFY `health_information_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `household`
--
ALTER TABLE `household`
  MODIFY `household_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `household_members`
--
ALTER TABLE `household_members`
  MODIFY `household_members_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  MODIFY `medical_conditions_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `medicine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `midwife`
--
ALTER TABLE `midwife`
  MODIFY `midwife_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `personal_info_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pregnancy`
--
ALTER TABLE `pregnancy`
  MODIFY `pregnancy_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prenatals`
--
ALTER TABLE `prenatals`
  MODIFY `prenatal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `resident_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `residents_medical_condition`
--
ALTER TABLE `residents_medical_condition`
  MODIFY `rmc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `residents_medication`
--
ALTER TABLE `residents_medication`
  MODIFY `medication_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccinations`
--
ALTER TABLE `vaccinations`
  MODIFY `vaccination_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `vaccine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_adminAccountId` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_adminPersonalInfoId` FOREIGN KEY (`personal_information_id`) REFERENCES `personal_information` (`personal_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `fk_appointmentBhwId` FOREIGN KEY (`bhw_id`) REFERENCES `bhw` (`bhw_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_appointmentResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bhw`
--
ALTER TABLE `bhw`
  ADD CONSTRAINT `fk_bhwAccountId` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bhwAssignedAreaId` FOREIGN KEY (`assigned_area`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bhwPersonalInfoId` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_information` (`personal_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `fk_consultationAppointmentId` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_consultationBhwId` FOREIGN KEY (`bhw_id`) REFERENCES `bhw` (`bhw_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_consultationResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `health_information`
--
ALTER TABLE `health_information`
  ADD CONSTRAINT `fk_HealthInfoResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `household_members`
--
ALTER TABLE `household_members`
  ADD CONSTRAINT `fk_hmHouseholdId` FOREIGN KEY (`household_id`) REFERENCES `household` (`household_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hmResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `midwife`
--
ALTER TABLE `midwife`
  ADD CONSTRAINT `fk_midwifeAccountId` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_midwifePersonalInfoId` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_information` (`personal_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD CONSTRAINT `fk_personalInfoAddressId` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pregnancy`
--
ALTER TABLE `pregnancy`
  ADD CONSTRAINT `fk_pregnancyResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prenatals`
--
ALTER TABLE `prenatals`
  ADD CONSTRAINT `fk_prenatalBhwId` FOREIGN KEY (`bhw_id`) REFERENCES `bhw` (`bhw_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prenatalsPregnancyId` FOREIGN KEY (`pregnancy_id`) REFERENCES `pregnancy` (`pregnancy_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `fk_residentsAccountId` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_residentsPersonaInfoId` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_information` (`personal_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `residents_medical_condition`
--
ALTER TABLE `residents_medical_condition`
  ADD CONSTRAINT `fk_rmcConditionsId` FOREIGN KEY (`medical_conditions_id`) REFERENCES `medical_conditions` (`medical_conditions_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rmcResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `residents_medication`
--
ALTER TABLE `residents_medication`
  ADD CONSTRAINT `fk_rmConsultationId` FOREIGN KEY (`consultation_id`) REFERENCES `consultations` (`consultation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rmMedicineId` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`medicine_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinations`
--
ALTER TABLE `vaccinations`
  ADD CONSTRAINT `fk_vaccinationResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vaccinationVaccineId` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccines` (`vaccine_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
