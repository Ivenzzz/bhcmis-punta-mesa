CREATE TABLE `residents` (
  `resident_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `personal_info_id` int(10) NOT NULL
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
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_picture` varchar(255) DEFAULT NULL,
  `isAlive` tinyint(1) NOT NULL DEFAULT 1,
  `isTransferred` tinyint(1) NOT NULL DEFAULT 0,
  `isArchived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `household` (
  `household_id` int(10) NOT NULL,
  `household_no` int(100) NOT NULL,
  `address_id` int(10) NOT NULL,
  `residency_length_years` decimal(3,1) NOT NULL,
  `housing_type` enum('Owned','Rented','Other') NOT NULL,
  `construction_materials` enum('light','strong') NOT NULL,
  `lighting_facilities` enum('electricity','kerosene') NOT NULL,
  `water_source` enum('LEVEL 1 - Point Source','LEVEL 2 - Communal Faucet','LEVEL 3 - Individual Connection','OTHERS - For doubtful sources, open dug well etc.') NOT NULL,
  `toilet_facility` enum('Pointflush type connected to septic tank','Pointflush toilet connected to septic tank and to sewerage system','Ventilated Pit','Overhung Latrine','Without toilet') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `household_members` (
  `hm_id` int(10) NOT NULL,
  `household_id` int(10) NOT NULL,
  `family_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `families` (
  `family_id` int(10) NOT NULL,
  `family_no` int(100) NOT NULL,
  `parent_family_id` int(10) DEFAULT NULL,
  `4PsMember` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `family_members` (
  `fmember_id` int(10) NOT NULL,
  `family_id` int(10) NOT NULL,
  `resident_id` int(10) NOT NULL,
  `role` enum('husband','wife','child') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;