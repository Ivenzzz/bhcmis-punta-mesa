CREATE TABLE `accounts` (
  `account_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','midwife','bhw','residents') NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `isArchieved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `address` (
  `address_id` int(10) NOT NULL,
  `address_name` varchar(255) NOT NULL,
  `address_type` enum('hda','sitio') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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


CREATE TABLE `personal_information` (
  `personal_info_id` int(10) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `civil_status` enum('Single','Married','Widowed','Legally Separated') DEFAULT NULL,
  `educational_attainment` enum('Elementary Graduate','Elementary Undergraduate','Highschool Graduate','Highschool Undergraduate','College Graduate','College Undergraduate') DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `citizenship` varchar(100) DEFAULT NULL,
  `household_id` int(10) DEFAULT NULL,
  `address_id` int(10) NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `residents` (
  `resident_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `personal_info_id` int(10) NOT NULL,
  `isValidResident` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `residents_medical_condition` (
  `rmc_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `medical_conditions_id` int(10) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

ALTER TABLE `health_information`
  ADD CONSTRAINT `fk_HealthInfoResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `personal_information`
  ADD CONSTRAINT `fk_personalInfoAddressId` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_personalInfoHouseholdId` FOREIGN KEY (`household_id`) REFERENCES `household` (`household_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `residents`
  ADD CONSTRAINT `fk_residentsAccountId` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_residentsPersonaInfoId` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_information` (`personal_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `residents_medical_condition`
  ADD CONSTRAINT `fk_rmcConditionsId` FOREIGN KEY (`medical_conditions_id`) REFERENCES `medical_conditions` (`medical_conditions_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rmcResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;


