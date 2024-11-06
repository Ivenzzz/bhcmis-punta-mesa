<?php

session_start();
require '../../../config/db_config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        mysqli_autocommit($conn, false);

        // Insert Household
        $householdNo = $_POST['household_no'];
        $addressId = $_POST['address'];
        $residencyLengthYears = $_POST['residency_length_years'];
        $housingType = $_POST['housing_type'];
        $constructionMaterials = $_POST['construction_materials'];
        $lightingFacilities = $_POST['lighting_facilities'];
        $waterSource = $_POST['water_source'];
        $toiletFacility = $_POST['toilet_facility'];

        $stmt = mysqli_prepare($conn, "
            INSERT INTO household (household_no, address_id, residency_length_years, housing_type, construction_materials, lighting_facilities, water_source, toilet_facility) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        ");
        mysqli_stmt_bind_param($stmt, "iissssss", $householdNo, $addressId, $residencyLengthYears, $housingType, $constructionMaterials, $lightingFacilities, $waterSource, $toiletFacility);
        mysqli_stmt_execute($stmt);
        $householdId = mysqli_insert_id($conn);

        // Process Families and Family Members
        $numFamilies = $_POST['num_families'];
        for ($i = 1; $i <= $numFamilies; $i++) {
            $familyNo = $_POST["family_no_$i"];
            $is4PsMember = isset($_POST["4PsMember_$i"]) ? 1 : 0;

            // Insert the main family
            $stmt = mysqli_prepare($conn, "INSERT INTO families (family_no, 4PsMember) VALUES (?, ?)");
            mysqli_stmt_bind_param($stmt, "ii", $familyNo, $is4PsMember);
            mysqli_stmt_execute($stmt);
            $familyId = mysqli_insert_id($conn);

            $stmt = mysqli_prepare($conn, "INSERT INTO household_members (household_id, family_id) VALUES (?, ?)");
            mysqli_stmt_bind_param($stmt, "ii", $householdId, $familyId);
            mysqli_stmt_execute($stmt);

            // Main family member loop
            $memberData = [];
            foreach ($_POST as $key => $value) {
                if (preg_match("/^(role|lastname|firstname|middlename|date_of_birth|civil_status|educational_attainment|occupation|religion|citizenship|sex|phone_number|email)_{$i}_(\d+)$/", $key, $matches)) {
                    $memberIndex = $matches[2];
                    $memberData[$memberIndex][$matches[1]] = $value;
                }
            }

            foreach ($memberData as $memberIndex => $member) {
                // Insert personal information for each family member
                $stmt = mysqli_prepare($conn, "
                    INSERT INTO personal_information (lastname, firstname, middlename, date_of_birth, civil_status, educational_attainment, occupation, religion, citizenship, address_id, sex, phone_number, email)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                ");
                mysqli_stmt_bind_param($stmt, "ssssssssissss", 
                    $member['lastname'], 
                    $member['firstname'], 
                    $member['middlename'], 
                    $member['date_of_birth'], 
                    $member['civil_status'], 
                    $member['educational_attainment'], 
                    $member['occupation'], 
                    $member['religion'], 
                    $member['citizenship'], 
                    $addressId, 
                    $member['sex'], 
                    $member['phone_number'], 
                    $member['email']
                );
                mysqli_stmt_execute($stmt);
                $personalInfoId = mysqli_insert_id($conn);

                $stmt = mysqli_prepare($conn, "INSERT INTO residents (account_id, personal_info_id) VALUES (NULL, ?)");
                mysqli_stmt_bind_param($stmt, "i", $personalInfoId);
                mysqli_stmt_execute($stmt);
                $residentId = mysqli_insert_id($conn);

                $stmt = mysqli_prepare($conn, "INSERT INTO family_members (family_id, resident_id, role) VALUES (?, ?, ?)");
                mysqli_stmt_bind_param($stmt, "iis", $familyId, $residentId, $member['role']);
                mysqli_stmt_execute($stmt);

                // Process sub-families for the current family member
                $subFamilyData = [];
                foreach ($_POST as $subKey => $subValue) {
                    if (preg_match("/^(sub_role|sub_lastname|sub_firstname|sub_middlename|sub_date_of_birth|sub_civil_status|sub_educational_attainment|sub_occupation|sub_religion|sub_citizenship|sub_sex|sub_phone_number|sub_email)_{$i}_{$memberIndex}_(\d+)$/", $subKey, $subMatches)) {
                        $subFamilyIndex = $subMatches[3];
                        $subFamilyData[$subFamilyIndex][$subMatches[1]] = $subValue;
                    }
                }

                // Insert each sub-family member as a separate family
                foreach ($subFamilyData as $subFamilyIndex => $subMember) {
                    // Retrieve the parent family number
                    $parentFamilyNo = $_POST["family_no_{$i}"]; // Assuming family_no_{$i} exists in your form

                    // Generate sub-family number by incrementing the parent family number
                    $subFamilyNo = $parentFamilyNo + 1;  // Increment the parent family number by 1 for the sub-family

                    // Insert the sub-family as a new family
                    $stmt = mysqli_prepare($conn, "
                        INSERT INTO families (family_no, 4PsMember) VALUES (?, ?)
                    ");

                    // Check if the sub-family is a 4Ps member
                    $isSubFamily4PsMember = isset($_POST["4PsMember_{$i}_{$memberIndex}_{$subFamilyIndex}"]) ? 1 : 0;

                    // Insert the sub-family into the families table
                    mysqli_stmt_bind_param($stmt, "ii", $subFamilyNo, $isSubFamily4PsMember);
                    mysqli_stmt_execute($stmt);
                    $subFamilyId = mysqli_insert_id($conn);

                    // Insert sub-family member details
                    $stmt = mysqli_prepare($conn, "
                        INSERT INTO personal_information (lastname, firstname, middlename, date_of_birth, civil_status, educational_attainment, occupation, religion, citizenship, address_id, sex, phone_number, email)
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                    ");
                    mysqli_stmt_bind_param($stmt, "ssssssssissss", 
                        $subMember['sub_lastname'], 
                        $subMember['sub_firstname'], 
                        $subMember['sub_middlename'], 
                        $subMember['sub_date_of_birth'], 
                        $subMember['sub_civil_status'], 
                        $subMember['sub_educational_attainment'], 
                        $subMember['sub_occupation'], 
                        $subMember['sub_religion'], 
                        $subMember['sub_citizenship'], 
                        $addressId, 
                        $subMember['sub_sex'], 
                        $subMember['sub_phone_number'], 
                        $subMember['sub_email']
                    );
                    mysqli_stmt_execute($stmt);
                    $subPersonalInfoId = mysqli_insert_id($conn);

                    $stmt = mysqli_prepare($conn, "INSERT INTO residents (account_id, personal_info_id) VALUES (NULL, ?)");
                    mysqli_stmt_bind_param($stmt, "i", $subPersonalInfoId);
                    mysqli_stmt_execute($stmt);
                    $subResidentId = mysqli_insert_id($conn);

                    $stmt = mysqli_prepare($conn, "INSERT INTO family_members (family_id, resident_id, role) VALUES (?, ?, ?)");
                    mysqli_stmt_bind_param($stmt, "iis", $subFamilyId, $subResidentId, $subMember['sub_role']);
                    mysqli_stmt_execute($stmt);
                }
            }
        }

        // Commit transaction
        mysqli_commit($conn);
        $_SESSION['message'] = "Household registered successfully!";
        header("Location: /bhcmis/bhw-household-profiling?status=success&action=register_household");

    } catch (Exception $e) {
        mysqli_rollback($conn);
        $_SESSION['error'] = "Error registering household: " . $e->getMessage();
        header("Location: /bhcmis/bhw-household-profiling?status=error&action=register_household");
    } finally {
        mysqli_autocommit($conn, true);
    }
}
?>
