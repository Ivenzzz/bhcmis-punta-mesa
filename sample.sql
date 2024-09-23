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
  `complete_blood_count` varchar(255) DEFAULT NULL,
  `fetal_heart_rate` varchar(255) DEFAULT NULL,
  `fundal_height` varchar(255) DEFAULT NULL,
  `fetal_movement` varchar(255) DEFAULT NULL,
  `checkup_notes` text DEFAULT NULL,
  `refer_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `prenatal_schedules` (
  `sched_id` int(10) NOT NULL,
  `sched_date` datetime(6) NOT NULL,
  `sched_note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `pregnancy` (
  `pregnancy_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `expected_due_date` date NOT NULL,
  `pregnancy_status` enum('Ongoing','Completed','Terminated') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `residents` (
  `resident_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `personal_info_id` int(10) NOT NULL,
  `isValidResident` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

ALTER TABLE `pregnancy`
  ADD CONSTRAINT `fk_pregnancyResidentId` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `prenatals`
  ADD CONSTRAINT `fk_prenatalBhwId` FOREIGN KEY (`bhw_id`) REFERENCES `bhw` (`bhw_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prenatalsPregnancyId` FOREIGN KEY (`pregnancy_id`) REFERENCES `pregnancy` (`pregnancy_id`) ON DELETE CASCADE ON UPDATE CASCADE;
    ADD CONSTRAINT `fk_prenatalsSchedId` FOREIGN KEY (`sched_id`) REFERENCES `prenatal_schedules` (`sched_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `residents`
  ADD CONSTRAINT `fk_residentsAccountId` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_residentsPersonaInfoId` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_information` (`personal_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;
