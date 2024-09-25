-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 11:50 PM
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
(1, 'admin', '$2y$10$wSO7df3nhx9QF06QISRIT.1YNjfANjoIqR3q4X8GWKXT897uTeVly', 'admin', '/bhcmis/storage/uploads/avatar-admin.png', 0),
(2, 'BHW1', '$2y$10$Fp06K.3nimzVrtsC.VQMs.mkYrm0vpq5rYhDvktMiIY7SZbWbkozW', 'bhw', '/bhcmis/storage/uploads/avatar-girl1.png', 0),
(5, 'BHW99', '$2y$10$WGbMOlDHPCI298D8iPgDp.n7Vglk3Gu.Xj2Sdg21BVE8Z.aPRS7wS', 'bhw', '/bhcmis/storage/uploads/avatar-panda.png', 0),
(6, 'BHW2', '$2y$10$jo2g7gXKJXysuLCE.WEMo.ZdWhAjO6/ORu4kcGZ75HlMkyfWau4OS', 'bhw', '/bhcmis/storage/uploads/avatar-woman1.png', 0),
(7, 'BHW3', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', '/bhcmis/storage/uploads/avatar-woman2.png', 0),
(8, 'BHW4', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', '/bhcmis/storage/uploads/avatar-woman3.png', 0),
(9, 'BHW5', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', '/bhcmis/storage/uploads/avatar-woman4.png', 0),
(10, 'BHW6', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', '/bhcmis/storage/uploads/avatar-woman2.png', 0),
(11, 'BHW7', '$2y$10$R4JsPDggEqrbXeMxjdwFNOQOM2t.AhDm4mkX8auBE2jnHrI8z0B9a', 'bhw', '/bhcmis/storage/uploads/avatar-woman1.png', 0),
(12, 'Midwife1', '$2y$10$mHv3MxPW3CnlJ0m0Fp//LeShjQqYgttV40fklrqpW.3MEBweZChqi', 'midwife', '/bhcmis/storage/uploads/midwife-1.jpg', 0),
(13, 'Resident1', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 1),
(14, 'Resident2', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(15, 'Resident3', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(16, 'Resident4', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(17, 'Resident5', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(18, 'Resident6', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(19, 'Resident7', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(20, 'Resident8', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(21, 'Resident9', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(22, 'Resident10', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', NULL, 0),
(36, 'JohnRey', '$2y$10$T9fBKwZraBxSwDc6eK1SvO49mvW3.2W7Fju1wWA4Q72iB/Ag9.KO.', 'residents', NULL, 0),
(37, 'resident1', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident1.jpg', 0),
(38, 'resident2', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident2.jpg', 0),
(39, 'resident3', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident3.jpg', 0),
(40, 'resident4', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident4.jpg', 0),
(41, 'resident5', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident5.jpg', 0),
(42, 'resident6', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident6.jpg', 0),
(43, 'resident7', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident7.jpg', 0),
(44, 'resident8', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident8.jpg', 0),
(45, 'resident9', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident9.jpg', 0),
(46, 'resident10', '$2y$10$PhtFVyI7r3nW3J3KRIaxLuwPT5GDuqKt1lahofGd0VeCEOk8tMDIW', 'residents', 'resident10.jpg', 0);

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
  `assigned_area` int(10) NOT NULL,
  `date_started` date NOT NULL DEFAULT current_timestamp(),
  `employment_status` enum('active','inactive','on_leave') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bhw`
--

INSERT INTO `bhw` (`bhw_id`, `account_id`, `personal_info_id`, `assigned_area`, `date_started`, `employment_status`) VALUES
(1, 2, 4, 9, '2024-09-16', 'active'),
(2, 6, 6, 1, '2024-09-16', 'active'),
(3, 7, 8, 3, '2024-09-16', 'active'),
(4, 8, 10, 4, '2024-09-16', 'active'),
(5, 9, 12, 5, '2024-09-16', 'active'),
(6, 10, 11, 6, '2024-09-16', 'active'),
(7, 11, 19, 12, '2024-09-16', 'active'),
(8, 5, 15, 8, '2024-09-16', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `consultation_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `appointment_id` int(10) DEFAULT NULL,
  `consultation_date` datetime(6) NOT NULL,
  `reason_for_visit` varchar(255) DEFAULT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
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

INSERT INTO `consultations` (`consultation_id`, `resident_id`, `appointment_id`, `consultation_date`, `reason_for_visit`, `symptoms`, `bhw_id`, `height_cm`, `weight_kg`, `blood_pressure`, `cholesterol_level`, `findings_notes`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2024-08-05 08:00:00.000000', 'fever', 'diarrhea', 8, 170.50, 70.00, '120/80', 'Normal', 'Patient exhibits normal vital signs and overall health is satisfactory; no immediate concerns.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(2, 5, NULL, '2024-08-02 10:30:00.000000', 'fever', 'Chills, Fatigue / Weakness, sore throat', 2, 160.00, 65.00, '110/70', 'Normal', 'Patient shows signs of mild hypertension; recommend lifestyle modifications and follow-up visit in 3 months', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(3, 6, 2, '2024-08-03 14:00:00.000000', 'fever', 'Chills, Fatigue / Weakness, sore throat', 3, 175.00, 80.00, '130/85', 'High', 'Patient is underweight; suggest nutritional counseling and a balanced diet to gain weight.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(4, 7, NULL, '2024-08-04 11:15:00.000000', 'fever', 'Chills, Fatigue / Weakness, sore throat', 1, 168.00, 72.00, '125/80', 'Normal', 'Patient is obese with elevated blood pressure; recommend weight management program and regular exercise.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(5, 5, 4, '2024-08-05 13:00:00.000000', 'fever', 'Chills, Fatigue / Weakness, sore throat', 4, 172.00, 75.00, '135/90', 'High', 'Patient shows signs of anemia; advise iron supplements and a follow-up blood test in 6 weeks.', '2024-07-24 19:54:36', '2024-07-24 19:54:36'),
(21, 4, NULL, '2024-07-31 16:37:55.000000', 'fever', 'Chills, Fatigue / Weakness, sore throat', 3, 175.00, 55.00, '120/70', 'Normal', 'Patient has a fever; initiate dietary adjustments.', '2024-07-25 08:39:43', '2024-07-25 08:39:43'),
(22, 4, NULL, '2024-08-02 16:41:04.000000', 'fever', 'Chills, Fatigue / Weakness, sore throat', 3, 176.00, 58.00, '120/80', 'Normal', 'Patient\'s vital signs are normal; continue with current health regimen and routine check-ups.', '2024-07-25 08:42:04', '2024-07-25 08:42:04'),
(23, 4, NULL, '2024-08-07 16:42:51.000000', 'fever', 'Chills, Fatigue / Weakness, sore throat', 2, 175.00, 55.00, '120/70', 'Normal', 'Patient\'s health is stable with no new concerns; maintain current health plan and schedule next routine visit.', '2024-07-25 08:43:19', '2024-07-25 08:43:19');

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
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `family_id` int(10) NOT NULL,
  `family_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`family_id`, `family_no`) VALUES
(1, 10001),
(2, 10002),
(3, 10003),
(4, 10004),
(5, 10005),
(6, 10006),
(7, 10007),
(8, 10008),
(9, 10009),
(10, 10010),
(11, 10011),
(12, 10012),
(13, 10013),
(14, 10014),
(15, 10015),
(16, 10016),
(17, 10017),
(18, 10018),
(19, 10019),
(20, 10020),
(21, 10021),
(22, 10022),
(23, 10023),
(24, 10024),
(25, 10025),
(26, 10026),
(27, 10027),
(28, 10028),
(29, 10029),
(30, 10030),
(31, 10031),
(32, 10032),
(33, 10033),
(34, 10034),
(35, 10035),
(36, 10036),
(37, 10037),
(38, 10038),
(39, 10039),
(40, 10040),
(41, 10041),
(42, 10042),
(43, 10043),
(44, 10044),
(45, 10045),
(46, 10046),
(47, 10047),
(48, 10048),
(49, 10049),
(50, 10050),
(51, 10051),
(52, 10052),
(53, 10053),
(54, 10054),
(55, 10055),
(56, 10056),
(57, 10057),
(58, 10058),
(59, 10059),
(60, 10060),
(61, 10061),
(62, 10062),
(63, 10063),
(64, 10064),
(65, 10065),
(66, 10066),
(67, 10067),
(68, 10068),
(69, 10069),
(70, 10070),
(71, 10071),
(72, 10072),
(73, 10073),
(74, 10074),
(75, 10075),
(76, 10076),
(77, 10077),
(78, 10078),
(79, 10079),
(80, 10080),
(81, 10081),
(82, 10082),
(83, 10083),
(84, 10084),
(85, 10085),
(86, 10086),
(87, 10087),
(88, 10088),
(89, 10089),
(90, 10090),
(91, 10091),
(92, 10092),
(93, 10093),
(94, 10094),
(95, 10095),
(96, 10096),
(97, 10097),
(98, 10098),
(99, 10099),
(100, 10100),
(101, 10101),
(102, 10102),
(103, 10103),
(104, 10104),
(105, 10105),
(106, 10106),
(107, 10107),
(108, 10108),
(109, 10109),
(110, 10110),
(111, 10111),
(112, 10112),
(113, 10113),
(114, 10114),
(115, 10115),
(116, 10116),
(117, 10117),
(118, 10118),
(119, 10119),
(120, 10120),
(121, 10121),
(122, 10122),
(123, 10123),
(124, 10124),
(125, 10125),
(126, 10126),
(127, 10127),
(128, 10128),
(129, 10129),
(130, 10130);

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `fmember_id` int(10) NOT NULL,
  `family_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `role` enum('husband','wife','child') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `water_source` enum('LEVEL 1 - Point Source','LEVEL 2 - Communal Faucet','LEVEL 3 - Individual Connection','OTHERS - For doubtful sources, open dug well etc.') NOT NULL,
  `toilet_facility` enum('Pointflush type connected to septic tank','Pointflush toilet connected to septic tank and to sewerage system','Ventilated Pit','Overhung Latrine','Without toilet') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `household`
--

INSERT INTO `household` (`household_id`, `household_no`, `residency_length_years`, `assigned_bhw`, `housing_type`, `construction_materials`, `lighting_facilities`, `water_source`, `toilet_facility`) VALUES
(1, 101, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(2, 102, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(3, 103, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(4, 104, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(5, 105, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(6, 106, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(7, 107, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(8, 108, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(9, 109, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(10, 110, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(11, 111, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(12, 112, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(13, 113, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(14, 114, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(15, 115, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(16, 116, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(17, 117, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(18, 118, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(19, 119, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(20, 120, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(21, 121, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(22, 122, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(23, 123, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(24, 124, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(25, 125, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(26, 126, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(27, 127, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(28, 128, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(29, 129, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(30, 130, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(31, 131, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(32, 132, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(33, 133, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(34, 134, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(35, 135, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(36, 136, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(37, 137, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(38, 138, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(39, 139, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(40, 140, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(41, 141, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(42, 142, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(43, 143, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(44, 144, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(45, 145, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(46, 146, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(47, 147, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(48, 148, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(49, 149, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(50, 150, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(51, 151, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(52, 152, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(53, 153, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(54, 154, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(55, 155, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(56, 156, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(57, 157, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(58, 158, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(59, 159, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(60, 160, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(61, 161, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(62, 162, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(63, 163, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(64, 164, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(65, 165, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(66, 166, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(67, 167, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(68, 168, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(69, 169, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(70, 170, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(71, 171, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(72, 172, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(73, 173, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(74, 174, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(75, 175, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(76, 176, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(77, 177, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(78, 178, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(79, 179, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(80, 180, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(81, 181, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(82, 182, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(83, 183, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(84, 184, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(85, 185, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(86, 186, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(87, 187, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(88, 188, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(89, 189, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(90, 190, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(91, 191, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(92, 192, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(93, 193, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(94, 194, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(95, 195, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(96, 196, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(97, 197, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(98, 198, 2.0, 3, 'Owned', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(99, 199, 2.0, 3, 'Other', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank'),
(100, 200, 2.0, 3, 'Rented', 'strong', 'electricity', 'LEVEL 1 - Point Source', 'Pointflush type connected to septic tank');

-- --------------------------------------------------------

--
-- Table structure for table `household_members`
--

CREATE TABLE `household_members` (
  `household_members_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `household_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `household_members`
--

INSERT INTO `household_members` (`household_members_id`, `resident_id`, `household_id`) VALUES
(1, 4, 1),
(2, 5, 1);

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
  `batch_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `generic_name` varchar(255) DEFAULT NULL,
  `dosage` varchar(50) NOT NULL,
  `form` varchar(50) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `quantity_in_stock` int(10) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`medicine_id`, `batch_number`, `name`, `generic_name`, `dosage`, `form`, `expiry_date`, `quantity_in_stock`, `description`, `created_at`, `updated_at`) VALUES
(21, 'A1B2C3', 'Paracetamol', 'Paracetamol', '500 mg', 'Tablet', '2025-12-31', 200, 'Pain reliever and fever reducer', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(22, 'D4E5F6', 'Ibuprofen', 'Ibuprofen', '400 mg', 'Tablet', '2024-11-30', 150, 'Anti-inflammatory and pain relief', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(23, 'G7H8I9', 'Amoxicillin', 'Amoxicillin', '500 mg', 'Capsule', '2024-08-31', 100, 'Antibiotic used to treat infections', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(24, 'J1K2L3', 'Aspirin', 'Acetylsalicylic Acid', '100 mg', 'Tablet', '2025-03-15', 250, 'Pain relief and anti-inflammatory', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(25, 'M4N5O6', 'Loperamide', 'Loperamide', '2 mg', 'Capsule', '2024-10-01', 80, 'Anti-diarrheal', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(26, 'P7Q8R9', 'Cetirizine', 'Cetirizine', '10 mg', 'Tablet', '2025-05-20', 180, 'Antihistamine for allergies', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(27, 'S1T2U3', 'Metformin', 'Metformin', '500 mg', 'Tablet', '2024-12-31', 120, 'Medication for type 2 diabetes', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(28, 'V4W5X6', 'Cough Syrup', 'Dextromethorphan', '100 ml', 'Syrup', '2024-07-15', 90, 'Relieves cough and throat irritation', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(29, 'Y7Z8A9', 'Salbutamol', 'Salbutamol', '100 mcg', 'Inhaler', '2025-09-30', 70, 'Bronchodilator for asthma', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(30, 'B1C2D3', 'Omeprazole', 'Omeprazole', '20 mg', 'Capsule', '2025-01-10', 110, 'Reduces stomach acid production', '2024-07-25 01:23:05', '2024-07-25 01:23:05'),
(31, 'E4F5G6', 'Biogesic', 'Paracetamol', '500mg', 'Tablet', '2025-12-31', 100, 'For fever and mild to moderate pain relief.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(32, 'H7I8J9', 'Alaxan FR', 'Ibuprofen + Paracetamol', '200mg + 325mg', 'Tablet', '2026-06-30', 80, 'For pain and inflammation relief.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(33, 'K1L2M3', 'Amoxicillin', 'Amoxicillin', '500mg', 'Capsule', '2024-11-15', 50, 'Antibiotic for bacterial infections.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(34, 'N4O5P6', 'Ascof Lagundi', 'Vitex Negundo', '300mg', 'Syrup', '2025-03-20', 30, 'Herbal cough remedy.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(35, 'Q7R8S9', 'Bioflu', 'Phenylephrine HCl, Chlorphenamine Maleate, Paracetamol', '10mg/2mg/500mg', 'Tablet', '2025-07-12', 120, 'For flu and common cold symptoms.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(36, 'T1U2V3', 'Neozep Forte', 'Phenylephrine HCl, Chlorphenamine Maleate, Paracetamol', '10mg/2mg/500mg', 'Tablet', '2024-09-15', 90, 'For colds, allergies, and headache relief.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(37, 'W4X5Y6', 'Kremil-S', 'Aluminum Hydroxide + Magnesium Hydroxide + Simethicone', '178mg/233mg/30mg', 'Tablet', '2025-01-30', 60, 'For hyperacidity and indigestion.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(38, 'Z7A8B9', 'Mefenamic Acid', 'Mefenamic Acid', '500mg', 'Tablet', '2026-08-10', 70, 'For pain relief such as headaches and dysmenorrhea.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(39, 'C1D2E3', 'Cefalexin', 'Cefalexin', '500mg', 'Capsule', '2025-05-25', 40, 'Antibiotic for bacterial infections.', '2024-09-22 12:15:55', '2024-09-22 12:15:55'),
(40, 'F4G5H6', 'Salbutamol', 'Salbutamol', '2mg/5ml', 'Syrup', '2024-12-20', 45, 'For asthma and bronchospasm relief.', '2024-09-22 12:15:55', '2024-09-22 12:15:55');

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
(3, 'Gonzales', 'Peter', 'Ramos', '1978-11-15', 'Widowed', 'Elementary Graduate', 'Farmer', 'Roman Catholic', 'Filipino', 3, 'male', '09331234567', 'pedro.gonzales@example.com', NULL, '2024-07-25 11:07:25', '2024-09-16 12:56:54'),
(4, 'Garcia', 'Ana', 'Santos', '1985-07-16', 'Married', 'College Undergraduate', 'Nurse', 'Roman Catholic', 'Filipino', 4, 'female', '09441234566', 'ana.garcia@gmail.com', NULL, '2024-07-25 11:07:25', '2024-09-16 14:08:19'),
(5, 'Mendoza', 'Carlos', 'Alvarez', '1996-12-04', 'Single', 'Highschool Graduate', 'Mechanic', 'Roman Catholic', 'Filipino', 5, 'male', '09551234567', 'carlos.mendoza@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(6, 'Aquino', 'Laura', 'Gonzalez', '1992-09-18', 'Married', 'College Graduate', 'Accountant', 'Roman Catholic', 'Filipino', 6, 'female', '09661234567', 'laura.aquino@example.com', NULL, '2024-07-25 11:07:25', '2024-09-10 10:49:09'),
(7, 'Santos', 'Isabel', 'Navarro', '1983-06-25', 'Legally Separated', 'College Graduate', 'Engineer', 'Roman Catholic', 'Filipino', 7, 'female', '09771234567', 'isabel.santos@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(8, 'Cruz', 'Annie', 'Castro', '1973-01-10', 'Married', 'Elementary Graduate', 'BHW', 'Roman Catholic', 'Filipino', 8, 'male', '09881234567', 'annie.cruz@gmail.com', NULL, '2024-07-25 11:07:25', '2024-09-16 14:07:55'),
(9, 'Morales', 'Elena', 'Garcia', '1999-04-20', 'Single', 'Highschool Graduate', 'Student', 'Roman Catholic', 'Filipino', 9, 'male', '09991234567', 'elena.morales@example.com', NULL, '2024-07-25 11:07:25', '2024-09-07 08:42:29'),
(10, 'Reyes', 'Gabriela', 'Santos', '1981-08-14', 'Married', 'College Graduate', 'Businessman', 'Roman Catholic', 'Filipino', 10, 'male', '09182345678', 'gabriel.delosreyes@example.com', NULL, '2024-07-25 11:07:25', '2024-09-10 10:44:05'),
(11, 'Luna', 'Olivia', 'Mendoza', '1997-05-05', 'Single', 'College Graduate', 'Teacher', 'Roman Catholic', 'Filipino', 1, 'female', '09293456789', 'olivia.luna@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(12, 'Diaz', 'Ricardo', 'Jimenez', '1988-10-30', 'Married', 'Highschool Graduate', 'Driver', 'Roman Catholic', 'Filipino', 2, 'male', '09384567890', 'ricardo.diaz@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(13, 'Marjohn', 'Roy Marjohn', 'Araneta', '2001-08-28', 'Single', 'College Graduate', 'Businessman', 'Roman Catholic', 'Filipino', 1, 'male', '09308309624', 'roymarjohnaraneta@gmail.com', NULL, '2024-07-25 11:07:25', '2024-09-06 09:32:11'),
(14, 'Chavez', 'Mary', 'Macias', '1995-11-20', 'Married', 'College Undergraduate', 'Hotel Manager', 'Roman Catholic', 'Filipino', 4, 'male', '09586789012', 'ruvyangcona@gmail.com', NULL, '2024-07-25 11:07:25', '2024-09-10 03:31:46'),
(15, 'Villar', 'Carmen', 'Rodriguez', '1986-06-10', 'Married', 'College Graduate', 'Nurse', 'Roman Catholic', 'Filipino', 5, 'female', '09697890123', 'carmen.villar@example.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(16, 'Santiago', 'Marc John', 'Torres', '1991-06-12', 'Single', 'College Graduate', 'Security Guard', 'Roman Catholic', 'Filipino', 1, 'male', '09708901234', 'marcojohnsantiago@example.com', NULL, '2024-07-25 11:07:25', '2024-09-06 09:30:29'),
(17, 'Gonzalez', 'Sophia', 'Bautista', '1993-12-30', 'Single', 'College Graduate', 'Engineer', 'Roman Catholic', 'Filipino', 7, 'male', '09819012345', 'sophia.gonzalez@example.com', NULL, '2024-07-25 11:07:25', '2024-09-07 08:27:34'),
(18, 'Lopez', 'Andres', 'Gonzales', '1982-07-22', 'Married', 'Elementary Graduate', 'Farmer', 'Roman Catholic', 'Filipino', 8, 'male', '09920123456', 'andres.lopez@example.com', NULL, '2024-07-25 11:07:25', '2024-09-06 09:30:38'),
(19, 'Rivera', 'Beatriz', 'Morales', '1998-11-11', 'Single', 'Highschool Graduate', 'Cashier', 'Roman Catholic', 'Filipino', 9, 'female', '09123456789', 'beatriz.rivera@example.com', NULL, '2024-07-25 11:07:25', '2024-09-10 10:44:40'),
(20, 'Victorino', 'Amiel Jose', 'Araneta', '1975-04-12', 'Married', 'College Graduate', 'Brgy. Secretary', 'Roman Catholic', 'Filipino', 10, 'male', '09234567890', 'amielvictorino@gmail.com', NULL, '2024-07-25 11:07:25', '2024-07-25 11:07:25'),
(21, 'Singua', 'Reyna Jane', 'Bingua', '1996-06-05', 'Single', 'College Graduate', 'Brgy. Midwife', 'Roman Catholic', 'Filipino', 3, 'female', '09851354569', 'reynasingua@gmail.com', NULL, '2024-07-25 17:45:21', '2024-07-25 17:45:21'),
(35, 'Gasparillo', 'John Rey', 'Lobaton', '1999-03-03', 'Single', 'College Graduate', 'Teacher', 'Roman Catholic', 'Filipino', 1, 'male', '639308309627', 'johnreygasparillo@gmail.com', NULL, '2024-09-09 14:04:46', '2024-09-16 12:56:49'),
(50, 'Smith', 'John', 'A', '1985-01-01', 'Single', 'College Graduate', 'Software Engineer', 'Christian', 'American', 1, 'male', '09171234567', 'john.smith@example.com', 'john.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(51, 'Johnson', 'Mary', 'B', '1990-05-12', 'Married', 'Highschool Graduate', 'Teacher', 'Catholic', 'Canadian', 2, 'female', '09181234567', 'mary.johnson@example.com', 'mary.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(52, 'Williams', 'Robert', 'C', '1983-03-15', 'Widowed', 'College Undergraduate', 'Accountant', 'Protestant', 'British', 3, 'male', '09191234567', 'robert.williams@example.com', 'robert.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(53, 'Brown', 'Jennifer', 'D', '1975-07-21', 'Legally Separated', 'Highschool Undergraduate', 'Nurse', 'Jewish', 'Australian', 4, 'female', '09201234567', 'jennifer.brown@example.com', 'jennifer.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(54, 'Jones', 'Michael', 'E', '1988-12-11', 'Single', 'Elementary Graduate', 'Engineer', 'Hindu', 'Indian', 5, 'male', '09211234567', 'michael.jones@example.com', 'michael.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(55, 'Garcia', 'David', 'F', '1995-06-20', 'Married', 'College Graduate', 'Architect', 'Catholic', 'Filipino', 6, 'male', '09221234567', 'david.garcia@example.com', 'david.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(56, 'Martinez', 'Emily', 'G', '1982-09-09', 'Widowed', 'Highschool Graduate', 'Doctor', 'Muslim', 'Spanish', 7, 'female', '09231234567', 'emily.martinez@example.com', 'emily.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(57, 'Rodriguez', 'James', 'H', '1978-02-17', 'Single', 'College Undergraduate', 'Businessman', 'Christian', 'American', 8, 'male', '09241234567', 'james.rodriguez@example.com', 'james.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(58, 'Davis', 'Patricia', 'Insldfj', '1980-04-23', 'Legally Separated', 'Elementary Undergraduate', 'Chef', 'Buddhist', 'Japanese', 9, 'male', '09251234567', 'patricia.davis@example.com', 'patricia.jpg', '2024-09-18 12:59:36', '2024-09-18 13:53:13'),
(59, 'Miller', 'Chris', 'Jibble', '1992-08-18', 'Married', 'Highschool Undergraduate', 'Pilot', 'Catholic', 'German', 10, 'male', '09261234567', 'chris.miller@example.com', 'chris.jpg', '2024-09-18 12:59:36', '2024-09-18 13:52:58'),
(60, 'Watson', 'Sophia', 'Z', '1996-11-22', 'Single', 'College Graduate', 'Scientist', 'Atheist', 'British', 11, 'female', '09301234567', 'sophia.watson@example.com', 'sophia.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(61, 'King', 'Lucas', 'K', '1989-01-09', 'Single', 'Highschool Graduate', 'Journalist', 'Christian', 'American', 12, 'male', '09311234567', 'lucas.king@example.com', 'lucas.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(62, 'Young', 'Olivia', 'L', '1994-03-19', 'Married', 'College Graduate', 'Lawyer', 'Catholic', 'British', 1, 'female', '09321234567', 'olivia.young@example.com', 'olivia.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(63, 'Harris', 'Ethan', 'M', '1986-02-28', 'Single', 'Elementary Graduate', 'Plumber', 'Christian', 'Canadian', 2, 'male', '09331234567', 'ethan.harris@example.com', 'ethan.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(64, 'Walker', 'Isabella', 'N', '1991-05-11', 'Widowed', 'Highschool Graduate', 'Nurse', 'Muslim', 'Spanish', 3, 'female', '09341234567', 'isabella.walker@example.com', 'isabella.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36'),
(65, 'Brown', 'Sophia', 'Y', '1996-11-22', 'Single', 'College Graduate', 'Data Scientist', 'Atheist', 'British', 12, 'female', '09351234567', 'sophia.brown@example.com', 'sophia.jpg', '2024-09-18 12:59:36', '2024-09-18 12:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `pregnancy`
--

CREATE TABLE `pregnancy` (
  `pregnancy_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `expected_due_date` date NOT NULL,
  `pregnancy_status` enum('Ongoing','Completed','Terminated') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pregnancy`
--

INSERT INTO `pregnancy` (`pregnancy_id`, `resident_id`, `expected_due_date`, `pregnancy_status`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-12-15', 'Ongoing', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(2, 8, '2025-03-22', 'Ongoing', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(3, 10, '2024-09-30', 'Completed', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(4, 12, '2024-11-05', 'Terminated', '2024-07-25 09:49:51', '2024-07-25 09:49:51'),
(5, 6, '2025-06-18', 'Ongoing', '2024-07-25 09:49:51', '2024-07-25 09:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `prenatals`
--

CREATE TABLE `prenatals` (
  `prenatal_id` int(10) NOT NULL,
  `tracking_code` varchar(255) NOT NULL,
  `pregnancy_id` int(10) NOT NULL,
  `sched_id` int(10) NOT NULL,
  `bhw_id` int(10) NOT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `blood_pressure` varchar(255) DEFAULT NULL,
  `heart_lungs_condition` varchar(255) DEFAULT NULL,
  `abdominal_exam` varchar(255) DEFAULT NULL,
  `fetal_heart_rate` varchar(255) DEFAULT NULL,
  `fundal_height` varchar(255) DEFAULT NULL,
  `fetal_movement` varchar(255) DEFAULT NULL,
  `checkup_notes` text DEFAULT NULL,
  `refer_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prenatals`
--

INSERT INTO `prenatals` (`prenatal_id`, `tracking_code`, `pregnancy_id`, `sched_id`, `bhw_id`, `weight`, `blood_pressure`, `heart_lungs_condition`, `abdominal_exam`, `fetal_heart_rate`, `fundal_height`, `fetal_movement`, `checkup_notes`, `refer_to`, `created_at`, `updated_at`) VALUES
(6, 'A1B2C3D4E5F6G7H8', 1, 1, 1, 65.50, '120/80', 'Normal', 'No abnormalities', 'Strong', '20 cm', 'Felt regularly', 'First visit checkup', NULL, '2024-09-23 02:12:40', '2024-09-23 06:25:01'),
(7, 'I9J0K1L2M3N4O5P6', 2, 1, 2, 68.00, '118/76', 'Normal', 'No abnormalities', 'Normal', '22 cm', 'Felt regularly', 'Follow-up checkup', 'Manapla Health Center', '2024-09-23 02:12:40', '2024-09-23 06:25:01'),
(8, 'Q7R8S9T0U1V2W3X4', 3, 1, 3, 70.00, '115/75', 'Normal', 'No abnormalities', 'Normal', '24 cm', 'Felt occasionally', 'Second visit checkup', NULL, '2024-09-23 02:12:40', '2024-09-23 06:25:01'),
(9, 'Y5Z6A7B8C9D0E1F2', 4, 1, 4, 72.00, '125/80', 'Normal', 'No abnormalities', 'Normal', '26 cm', 'Felt frequently', 'Routine checkup', NULL, '2024-09-23 02:12:40', '2024-09-23 06:25:01'),
(10, 'G3H4I5J6K7L8M9N0', 5, 1, 5, 74.50, '122/78', 'Normal', 'No abnormalities', 'Normal', '28 cm', 'Felt regularly', 'Monthly checkup', 'Ramon B. Gustillo Hospital', '2024-09-23 02:12:40', '2024-09-23 06:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `prenatal_schedules`
--

CREATE TABLE `prenatal_schedules` (
  `sched_id` int(10) NOT NULL,
  `sched_date` datetime(6) NOT NULL,
  `sched_note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prenatal_schedules`
--

INSERT INTO `prenatal_schedules` (`sched_id`, `sched_date`, `sched_note`) VALUES
(1, '2024-11-03 10:00:00.000000', 'First prenatal checkup'),
(2, '2024-11-10 14:00:00.000000', 'Second trimester follow-up'),
(3, '2024-11-17 09:30:00.000000', 'Ultrasound appointment'),
(4, '2024-11-20 11:00:00.000000', 'Blood test and weight check'),
(5, '2024-11-28 13:00:00.000000', 'Final prenatal evaluation');

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
(27, 36, 35, 1),
(28, 37, 50, 1),
(29, 38, 51, 1),
(30, 39, 52, 1),
(31, 40, 53, 1),
(32, 41, 54, 1),
(33, 42, 55, 1),
(34, 43, 56, 1),
(35, 44, 57, 1),
(36, 45, 58, 1),
(37, 46, 59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `residents_medical_condition`
--

CREATE TABLE `residents_medical_condition` (
  `rmc_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `medical_conditions_id` int(10) NOT NULL,
  `diagnosed_date` date NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `residents_medical_condition`
--

INSERT INTO `residents_medical_condition` (`rmc_id`, `resident_id`, `medical_conditions_id`, `diagnosed_date`, `created_at`) VALUES
(1, 5, 2, '2024-09-16', '2024-07-25 17:54:59.000000'),
(2, 4, 5, '2024-09-16', '2024-07-25 17:54:59.000000'),
(3, 8, 7, '2024-09-16', '2024-07-25 17:54:59.000000'),
(4, 4, 8, '2024-09-16', '0000-00-00 00:00:00.000000'),
(5, 4, 11, '2024-09-16', '0000-00-00 00:00:00.000000');

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
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`family_id`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`fmember_id`);

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
  ADD KEY `fk_prenatalBhwId` (`bhw_id`),
  ADD KEY `fk_prenatalsSchedId` (`sched_id`);

--
-- Indexes for table `prenatal_schedules`
--
ALTER TABLE `prenatal_schedules`
  ADD PRIMARY KEY (`sched_id`);

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
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `bhw_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `consultation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `family_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `fmember_id` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `medicine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `midwife`
--
ALTER TABLE `midwife`
  MODIFY `midwife_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `personal_info_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `pregnancy`
--
ALTER TABLE `pregnancy`
  MODIFY `pregnancy_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prenatals`
--
ALTER TABLE `prenatals`
  MODIFY `prenatal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prenatal_schedules`
--
ALTER TABLE `prenatal_schedules`
  MODIFY `sched_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `resident_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  ADD CONSTRAINT `fk_prenatalsPregnancyId` FOREIGN KEY (`pregnancy_id`) REFERENCES `pregnancy` (`pregnancy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prenatalsSchedId` FOREIGN KEY (`sched_id`) REFERENCES `prenatal_schedules` (`sched_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
