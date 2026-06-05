CREATE DATABASE Hospital_Management_System;
GO

USE Hospital_Management_System;
GO

CREATE TABLE Patient(
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    disease VARCHAR(100),
    city VARCHAR(100),
    phone_num VARCHAR(20)
);

INSERT INTO Patient VALUES
(1,'Ali',25,'Male','Fever','Lahore','03001'),(2,'Sara',22,'Female','Flu','Karachi','03002'),(3,'Zain',30,'Male','Cough','Islamabad','03003'),
(4,'Hina',28,'Female','Headache','Multan','03004'),(5,'Asad',35,'Male','Backpain','Faisalabad','03005'),(6,'Nida',24,'Female','Fever','Peshawar','03006'),
(7,'Umer',40,'Male','Diabetes','Quetta','03007'),(8,'Sana',27,'Female','Skin Allergy','Lahore','03008'),(9,'Bilal',33,'Male','Flu','Karachi','03009'),
(10,'Iqra',29,'Female','Migraine','Islamabad','03010'),(11,'Hamza',21,'Male','Infection','Multan','03011'),(12,'Laiba',26,'Female','Asthma','Faisalabad','03012'),
(13,'Saad',45,'Male','BP High','Lahore','03013'),(14,'Areeba',31,'Female','Anemia','Karachi','03014'),(15,'Taha',38,'Male','Fever','Islamabad','03015'),
(16,'Mahnoor',23,'Female','Flu','Multan','03016'),(17,'Daniyal',50,'Male','Diabetes','Faisalabad','03017'),(18,'Zoya',20,'Female','Cough','Lahore','03018'),
(19,'Hassan',32,'Male','BP Low','Karachi','03019'),(20,'Eman',27,'Female','Headache','Islamabad','03020'),(21,'Fahad',42,'Male','Kidney Stone','Multan','03021'),
(22,'Kiran',25,'Female','Fever','Faisalabad','03022'),(23,'Abrar',36,'Male','Arthritis','Lahore','03023'),(24,'Rabia',29,'Female','Skin Rash','Karachi','03024'),
(25,'Usman',34,'Male','Cold','Islamabad','03025'),(26,'Bushra',41,'Female','Flu','Multan','03026'),(27,'Kamran',28,'Male','Gastric','Faisalabad','03027'),
(28,'Mona',33,'Female','Backpain','Lahore','03028'),(29,'Junaid',39,'Male','Fever','Karachi','03029'),(30,'Samia',26,'Female','Cough','Islamabad','03030'),
(31,'Raza',44,'Male','Diabetes','Multan','03031'),(32,'Sadia',30,'Female','Asthma','Faisalabad','03032'),(33,'Haris',22,'Male','Infection','Lahore','03033'),
(34,'Dua',24,'Female','Flu','Karachi','03034'),(35,'Owais',37,'Male','Headache','Islamabad','03035'),(36,'Fatima',31,'Female','BP High','Multan','03036'),
(37,'Shakir',48,'Male','Heart','Faisalabad','03037'),(38,'Amna',19,'Female','Fever','Lahore','03038'),(39,'Farhan',35,'Male','Cold','Karachi','03039'),
(40,'Sidra',27,'Female','Migraine','Islamabad','03040'),(41,'Waqas',40,'Male','Eye Infection','Multan','03041'),(42,'Ayesha',28,'Female','Backpain','Faisalabad','03042'),
(43,'Adeel',33,'Male','Fever','Lahore','03043'),(44,'Haleema',22,'Female','Cough','Karachi','03044'),(45,'Tariq',55,'Male','Diabetes','Islamabad','03045'),
(46,'Nadia',30,'Female','Skin Rash','Multan','03046'),(47,'Irfan',32,'Male','Flu','Faisalabad','03047'),(48,'Malaika',25,'Female','Anemia','Lahore','03048'),
(49,'Sohail',43,'Male','Kidney Stone','Karachi','03049'),(50,'Komal',21,'Female','Fever','Islamabad','03050'),(51,'Mustafa',36,'Male','Headache','Multan','03051'),
(52,'Rida',29,'Female','Gastric','Faisalabad','03052'),(53,'Imran',38,'Male','Cold','Lahore','03053'),(54,'Beenish',24,'Female','Asthma','Karachi','03054'),
(55,'Salman',41,'Male','Backpain','Islamabad','03055'),(56,'Tahira',33,'Female','Flu','Multan','03056'),(57,'Arshad',45,'Male','BP High','Faisalabad','03057'),
(58,'Mehwish',27,'Female','Fever','Lahore','03058'),(59,'Shehzad',34,'Male','Infection','Karachi','03059'),(60,'Anum',23,'Female','Cough','Islamabad','03060'),
(61,'Babar',39,'Male','Migraine','Multan','03061'),(62,'Shaista',31,'Female','Diabetes','Faisalabad','03062'),(63,'Mudassar',26,'Male','Flu','Lahore','03063'),
(64,'Rimsha',20,'Female','Fever','Karachi','03064'),(65,'Aftab',44,'Male','Cold','Islamabad','03065'),(66,'Seema',32,'Female','Skin Rash','Multan','03066'),
(67,'Khawar',37,'Male','Headache','Faisalabad','03067'),(68,'Lubna',25,'Female','Backpain','Lahore','03068'),(69,'Qasim',40,'Male','Cough','Karachi','03069'),
(70,'Noreen',29,'Female','Fever','Islamabad','03070');

CREATE TABLE Patient_Records(
    record_id INT PRIMARY KEY,
    patient_id INT,
    blood_group VARCHAR(10),
    allergies VARCHAR(100),
    height VARCHAR(20),
    weight VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);
INSERT INTO Patient_Records VALUES
(1, 1, 'B+', 'Dust', '5.8 ft', '70kg'), (2, 2, 'A+', 'None', '5.4 ft', '55kg'), (3, 3, 'O+', 'Peanuts', '6.0 ft', '82kg'),
(4, 4, 'AB-', 'Penicillin', '5.2 ft', '50kg'), (5, 5, 'O-', 'None', '5.9 ft', '75kg'), (6, 6, 'A-', 'Shellfish', '5.6 ft', '63kg'),
(7, 7, 'B-', 'Pollen', '5.11 ft', '88kg'), (8, 8, 'AB+', 'None', '5.5 ft', '58kg'), (9, 9, 'O+', 'Dairy', '5.7 ft', '69kg'),
(10, 10, 'A+', 'Dust Mitres', '5.3 ft', '52kg'), (11, 11, 'B+', 'None', '6.1 ft', '90kg'), (12, 12, 'O-', 'Soy', '5.5 ft', '61kg'),
(13, 13, 'A-', 'None', '5.8 ft', '73kg'), (14, 14, 'AB+', 'Tree Nuts', '5.10 ft', '80kg'), (15, 15, 'B-', 'None', '5.4 ft', '57kg'),
(16, 16, 'O+', 'Latex', '5.7 ft', '71kg'), (17, 17, 'A+', 'Gluten', '6.2 ft', '85kg'), (18, 18, 'AB-', 'None', '5.1 ft', '48kg'),
(19, 19, 'O-', 'Cats', '5.9 ft', '77kg'), (20, 20, 'B+', 'Dogs', '5.6 ft', '65kg'), (21, 21, 'A-', 'None', '5.3 ft', '54kg'),
(22, 22, 'O+', 'Eggs', '5.11 ft', '83kg'), (23, 23, 'AB+', 'None', '5.7 ft', '68kg'), (24, 24, 'B-', 'Mold', '5.5 ft', '60kg'),
(25, 25, 'A+', 'None', '6.0 ft', '79kg'), (26, 26, 'O-', 'Sulfa', '5.2 ft', '51kg'), (27, 27, 'B+', 'None', '5.8 ft', '74kg'),
(28, 28, 'AB-', 'Fish', '5.10 ft', '76kg'), (29, 29, 'O+', 'None', '5.4 ft', '56kg'), (30, 30, 'A-', 'Dust', '5.6 ft', '62kg'),
(31, 31, 'B-', 'None', '6.1 ft', '92kg'), (32, 32, 'AB+', 'Peanuts', '5.3 ft', '53kg'), (33, 33, 'O-', 'None', '5.7 ft', '70kg'),
(34, 34, 'A+', 'Shellfish', '5.9 ft', '78kg'), (35, 35, 'B+', 'None', '5.5 ft', '59kg'), (36, 36, 'O+', 'Pollen', '5.11 ft', '84kg'),
(37, 37, 'AB-', 'None', '5.2 ft', '49kg'), (38, 38, 'A-', 'Dairy', '5.8 ft', '72kg'), (39, 39, 'B-', 'None', '5.6 ft', '64kg'),
(40, 40, 'O-', 'Penicillin', '6.0 ft', '81kg'), (41, 41, 'AB+', 'None', '5.4 ft', '55kg'), (42, 42, 'A+', 'Tree Nuts', '5.7 ft', '67kg'),
(43, 43, 'B+', 'None', '5.10 ft', '85kg'), (44, 44, 'O+', 'Soy', '5.1 ft', '47kg'), (45, 45, 'A-', 'None', '5.9 ft', '76kg'),
(46, 46, 'AB-', 'Latex', '5.5 ft', '61kg'), (47, 47, 'O-', 'None', '5.8 ft', '73kg'), (48, 48, 'B-', 'Gluten', '5.3 ft', '52kg'),
(49, 49, 'A+', 'None', '6.2 ft', '89kg'), (50, 50, 'AB+', 'Cats', '5.6 ft', '66kg'), (51, 51, 'O+', 'None', '5.7 ft', '69kg'),
(52, 52, 'B+', 'Dogs', '5.11 ft', '82kg'), (53, 53, 'A-', 'None', '5.4 ft', '58kg'), (54, 54, 'O-', 'Mold', '5.5 ft', '63kg'),
(55, 55, 'AB-', 'None', '6.0 ft', '80kg'), (56, 56, 'B-', 'Eggs', '5.2 ft', '50kg'), (57, 57, 'A+', 'None', '5.8 ft', '71kg'),
(58, 58, 'O+', 'Fish', '5.9 ft', '77kg'), (59, 59, 'AB+', 'None', '5.3 ft', '54kg'), (60, 60, 'B+', 'Sulfa', '5.7 ft', '68kg'),
(61, 61, 'A-', 'None', '5.10 ft', '79kg'), (62, 62, 'O-', 'Dust', '5.6 ft', '62kg'), (63, 63, 'AB-', 'None', '6.1 ft', '87kg'),
(64, 64, 'B-', 'Peanuts', '5.1 ft', '46kg'), (65, 65, 'A+', 'None', '5.5 ft', '60kg'), (66, 66, 'O+', 'Shellfish', '5.8 ft', '74kg'),
(67, 67, 'AB+', 'None', '5.4 ft', '57kg'), (68, 68, 'B+', 'Pollen', '5.9 ft', '76kg'), (69, 69, 'A-', 'None', '5.11 ft', '83kg'),
(70, 70, 'O-', 'Dairy', '5.2 ft', '51kg');

CREATE TABLE Doctor(
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    specialization VARCHAR(100),
    license_id VARCHAR(50),
    experience INT,
    hospital_name VARCHAR(100),
    consultation_fee VARCHAR(20)
);
INSERT INTO Doctor VALUES
(1, 'Dr. Ahmed Ali', 'Cardiology', 'MD-99102', 14, 'City General Hospital', '$150'),
(2, 'Dr. Sara Khan', 'Pediatrics', 'MD-34821', 8, 'Grace Childrens Clinic', '$100'),
(3, 'Dr. Zain Malik', 'Dermatology', 'MD-88219', 11, 'Skin & Laser Institute', '$120'),
(4, 'Dr. Hina Pervez', 'Neurology', 'MD-10492', 20, 'Metro Neuro Center', '$200'),
(5, 'Dr. Asad Umar', 'Orthopedics', 'MD-55410', 6, 'Sports Medicine Health', '$110'),
(6, 'Dr. Nida Fatima', 'General Medicine', 'MD-22319', 15, 'St. Jude Medical Center', '$80'),
(7, 'Dr. Umer Farooq', 'Psychiatry', 'MD-77104', 12, 'Mind Care Hospital', '$140'),
(8, 'Dr. Sana Walid', 'Ophthalmology', 'MD-44912', 9, 'Clear Vision Eye Clinic', '$95'),
(9, 'Dr. Bilal Shafi', 'Gastroenterology', 'MD-66321', 17, 'Digestive Health Care', '$160'),
(10, 'Dr. Iqra Rasheed', 'Oncology', 'MD-11204', 22, 'Cancer Research Hospital', '$250'),
(11, 'Dr. Hamza Shah', 'Endocrinology', 'MD-55891', 13, 'Metabolic Care Center', '$135'),
(12, 'Dr. Laiba Butt', 'Gynecology', 'MD-33452', 10, 'Womens Wellness Clinic', '$115'),
(13, 'Dr. Saad Naeem', 'ENT Specialist', 'MD-99214', 7, 'Ear, Nose & Throat Inst.', '$90'),
(14, 'Dr. Areeba Asif', 'Urology', 'MD-77481', 16, 'City Urology Center', '$155'),
(15, 'Dr. Taha Siddiqui', 'Pulmonology', 'MD-11520', 11, 'Chest & Lung Hospital', '$130'),
(16, 'Dr. Mahnoor Javed', 'Nephrology', 'MD-88421', 14, 'Kidney Care Institute', '$145'),
(17, 'Dr. Daniyal Aziz', 'Cardiology', 'MD-22981', 18, 'Heart & Vascular Center', '$180'),
(18, 'Dr. Zoya Rehman', 'Pediatrics', 'MD-66412', 5, 'St. Jude Medical Center', '$90'),
(19, 'Dr. Hassan Jamil', 'Dermatology', 'MD-44109', 12, 'City General Hospital', '$130'),
(20, 'Dr. Eman Arif', 'General Medicine', 'MD-33951', 25, 'Community Health Clinic', '$75'),
(21, 'Dr. Fahad Mustafa', 'Neurology', 'MD-55201', 9, 'Metro Neuro Center', '$160'),
(22, 'Dr. Kiran Shahzadi', 'Orthopedics', 'MD-11842', 15, 'Bone & Joint Clinic', '$140'),
(23, 'Dr. Abrar Ul Haq', 'Psychiatry', 'MD-99632', 8, 'Mind Care Hospital', '$125'),
(24, 'Dr. Rabia Basri', 'Ophthalmology', 'MD-77210', 14, 'Eye Specialists Group', '$110'),
(25, 'Dr. Usman Dar', 'Gastroenterology', 'MD-44582', 10, 'City General Hospital', '$140'),
(26, 'Dr. Bushra Ansari', 'Oncology', 'MD-33104', 19, 'Cancer Research Hospital', '$230'),
(27, 'Dr. Kamran Akmal', 'Endocrinology', 'MD-88952', 6, 'Grace Childrens Clinic', '$110'),
(28, 'Dr. Mona Lisa', 'Gynecology', 'MD-22410', 13, 'St. Jude Medical Center', '$125'),
(29, 'Dr. Junaid Khan', 'ENT Specialist', 'MD-66741', 21, 'Metro Specialist Clinic', '$120'),
(30, 'Dr. Samia Mumtaz', 'Urology', 'MD-11049', 12, 'City Urology Center', '$150'),
(31, 'Dr. Raza Ali', 'Pulmonology', 'MD-55362', 17, 'Chest & Lung Hospital', '$165'),
(32, 'Dr. Sadia Imam', 'Nephrology', 'MD-99410', 8, 'Kidney Care Institute', '$130'),
(33, 'Dr. Haris Rauf', 'Cardiology', 'MD-77891', 11, 'City General Hospital', '$160'),
(34, 'Dr. Dua Malik', 'Pediatrics', 'MD-44215', 16, 'Grace Childrens Clinic', '$115'),
(35, 'Dr. Owais Zia', 'Dermatology', 'MD-33621', 4, 'Skin & Laser Institute', '$95'),
(36, 'Dr. Fatima Sana', 'General Medicine', 'MD-88510', 22, 'St. Jude Medical Center', '$85'),
(37, 'Dr. Shakir Shuja', 'Neurology', 'MD-22104', 13, 'Metro Neuro Center', '$175'),
(38, 'Dr. Amna Ilyas', 'Orthopedics', 'MD-66981', 10, 'Sports Medicine Health', '$130'),
(39, 'Dr. Farhan Ali', 'Psychiatry', 'MD-11452', 15, 'Mind Care Hospital', '$150'),
(40, 'Dr. Sidra Niazi', 'Ophthalmology', 'MD-55741', 7, 'Clear Vision Eye Clinic', '$100'),
(41, 'Dr. Waqas Khan', 'Gastroenterology', 'MD-99321', 12, 'Digestive Health Care', '$145'),
(42, 'Dr. Ayesha Omar', 'Oncology', 'MD-77510', 24, 'Cancer Research Hospital', '$260'),
(43, 'Dr. Adeel Chaudhry', 'Endocrinology', 'MD-44821', 9, 'Metabolic Care Center', '$125'),
(44, 'Dr. Haleema Sadia', 'Gynecology', 'MD-33204', 18, 'Womens Wellness Clinic', '$140'),
(45, 'Dr. Tariq Jamil', 'ENT Specialist', 'MD-88109', 14, 'Ear, Nose & Throat Inst.', '$105'),
(46, 'Dr. Nadia Khan', 'Urology', 'MD-22632', 11, 'City Urology Center', '$140'),
(47, 'Dr. Irfan Khoosat', 'Pulmonology', 'MD-66520', 8, 'Metro Specialist Clinic', '$120'),
(48, 'Dr. Malaika Arora', 'Nephrology', 'MD-11951', 16, 'Kidney Care Institute', '$155'),
(49, 'Dr. Sohail Ahmed', 'Cardiology', 'MD-55104', 20, 'Heart & Vascular Center', '$195'),
(50, 'Dr. Komal Rizvi', 'Pediatrics', 'MD-99842', 13, 'St. Jude Medical Center', '$110'),
(51, 'Dr. Mustafa Qureshi', 'Dermatology', 'MD-77410', 7, 'Skin & Laser Institute', '$110'),
(52, 'Dr. Rida Isfahani', 'General Medicine', 'MD-44362', 12, 'Community Health Clinic', '$80'),
(53, 'Dr. Imran Abbas', 'Neurology', 'MD-33741', 18, 'Metro Neuro Center', '$190'),
(54, 'Dr. Beenish Chohan', 'Orthopedics', 'MD-88201', 11, 'Bone & Joint Clinic', '$135'),
(55, 'Dr. Salman Shahid', 'Psychiatry', 'MD-22582', 16, 'Mind Care Hospital', '$160'),
(56, 'Dr. Tahira Syed', 'Ophthalmology', 'MD-66104', 5, 'Eye Specialists Group', '$90'),
(57, 'Dr. Arshad Mehmood', 'Gastroenterology', 'MD-11321', 14, 'City General Hospital', '$150'),
(58, 'Dr. Mehwish Hayat', 'Oncology', 'MD-55952', 15, 'Cancer Research Hospital', '$220'),
(59, 'Dr. Shehzad Roy', 'Endocrinology', 'MD-99210', 21, 'Metabolic Care Center', '$150'),
(60, 'Dr. Anum Fayyaz', 'Gynecology', 'MD-77632', 10, 'Womens Wellness Clinic', '$120'),
(61, 'Dr. Babar Ali', 'ENT Specialist', 'MD-44410', 12, 'Ear, Nose & Throat Inst.', '$100'),
(62, 'Dr. Shaista Lodhi', 'Urology', 'MD-33891', 9, 'City Urology Center', '$135'),
(63, 'Dr. Mudassar Nazar', 'Pulmonology', 'MD-88741', 13, 'Chest & Lung Hospital', '$140'),
(64, 'Dr. Rimsha Khan', 'Nephrology', 'MD-22215', 19, 'Kidney Care Institute', '$170'),
(65, 'Dr. Aftab Iqbal', 'Cardiology', 'MD-66621', 12, 'City General Hospital', '$165'),
(66, 'Dr. Seema Rizvi', 'Pediatrics', 'MD-11014', 6, 'Grace Childrens Clinic', '$95'),
(67, 'Dr. Khawar Manzoor', 'Dermatology', 'MD-55510', 14, 'Skin & Laser Institute', '$135'),
(68, 'Dr. Lubna Aslam', 'General Medicine', 'MD-99981', 17, 'St. Jude Medical Center', '$85'),
(69, 'Dr. Qasim Ali', 'Neurology', 'MD-77452', 11, 'Metro Neuro Center', '$170'),
(70, 'Dr. Noreen Khan', 'Orthopedics', 'MD-44741', 23, 'Sports Medicine Health', '$160');

CREATE TABLE Staff(
    staff_id INT PRIMARY KEY,
    staff_numeric_code INT,
    role VARCHAR(100),
    department VARCHAR(100),
    shift_time VARCHAR(50),
    employment_type VARCHAR(50),
    salary VARCHAR(20)
);

INSERT INTO Staff VALUES
(1, 1, 'Registered Nurse', 'Emergency Room', 'Night', 'Full-time', '$5,200'),
(2, 2, 'Medical Assistant', 'Pediatrics', 'Day', 'Full-time', '$3,400'),
(3, 3, 'Lab Technician', 'Pathology', 'Day', 'Full-time', '$4,100'),
(4, 4, 'Radiology Tech', 'Imaging', 'Rotating', 'Full-time', '$4,800'),
(5, 5, 'Pharmacist', 'Pharmacy', 'Day', 'Full-time', '$7,500'),
(6, 6, 'Receptionist', 'Front Desk', 'Day', 'Full-time', '$2,800'),
(7, 7, 'Medical Scribe', 'Cardiology', 'Day', 'Part-time', '$1,900'),
(8, 8, 'Physical Therapist', 'Rehabilitation', 'Day', 'Full-time', '$6,100'),
(9, 9, 'ICU Nurse', 'Intensive Care', 'Night', 'Full-time', '$5,800'),
(10, 10, 'Surgical Tech', 'Operating Room', 'Rotating', 'Full-time', '$4,600'),
(11, 11, 'Registered Nurse', 'ICU', 'Day', 'Full-time', '$5,400'),
(12, 12, 'Lab Technician', 'Hematology', 'Night', 'Full-time', '$4,300'),
(13, 13, 'Medical Assistant', 'Dermatology', 'Day', 'Part-time', '$1,800'),
(14, 14, 'Security Officer', 'Operations', 'Night', 'Full-time', '$3,100'),
(15, 15, 'Billing Specialist', 'Finance', 'Day', 'Full-time', '$3,900'),
(16, 16, 'Dietitian', 'Nutrition', 'Day', 'Part-time', '$2,500'),
(17, 17, 'Registered Nurse', 'Outpatient', 'Day', 'Full-time', '$5,100'),
(18, 18, 'Paramedic', 'Ambulance Corp', 'Rotating', 'Full-time', '$4,400'),
(19, 19, 'Medical Scribe', 'Neurology', 'Day', 'Full-time', '$3,200'),
(20, 20, 'Janitorial Staff', 'Facilities', 'Night', 'Full-time', '$2,600'),
(21, 21, 'Radiology Tech', 'Imaging', 'Day', 'Full-time', '$4,700'),
(22, 22, 'Pharmacist', 'Pharmacy', 'Night', 'Full-time', '$7,800'),
(23, 23, 'Receptionist', 'Emergency Room', 'Rotating', 'Full-time', '$2,900'),
(24, 24, 'Registered Nurse', 'Pediatrics', 'Night', 'Full-time', '$5,300'),
(25, 25, 'Lab Technician', 'Microbiology', 'Day', 'Full-time', '$4,200'),
(26, 26, 'Surgical Tech', 'Operating Room', 'Day', 'Full-time', '$4,500'),
(27, 27, 'Medical Assistant', 'Orthopedics', 'Day', 'Full-time', '$3,500'),
(28, 28, 'Registered Nurse', 'Maternity', 'Night', 'Full-time', '$5,600'),
(29, 29, 'IT Support Tech', 'IT Department', 'Day', 'Full-time', '$4,300'),
(30, 30, 'Medical Records Clerk', 'Administration', 'Day', 'Full-time', '$3,000'),
(31, 31, 'ICU Nurse', 'Intensive Care', 'Rotating', 'Full-time', '$5,900'),
(32, 32, 'Physical Therapist', 'Rehabilitation', 'Day', 'Part-time', '$3,100'),
(33, 33, 'Registered Nurse', 'General Ward', 'Day', 'Full-time', '$5,000'),
(34, 34, 'Lab Technician', 'Pathology', 'Night', 'Full-time', '$4,250'),
(35, 35, 'Medical Assistant', 'ONG', 'Day', 'Full-time', '$3,450'),
(36, 36, 'Security Officer', 'Operations', 'Day', 'Full-time', '$3,000'),
(37, 37, 'Radiology Tech', 'Imaging', 'Night', 'Full-time', '$4,900'),
(38, 38, 'Billing Specialist', 'Finance', 'Day', 'Full-time', '$4,000'),
(39, 39, 'Registered Nurse', 'Emergency Room', 'Day', 'Full-time', '$5,250'),
(40, 40, 'Pharmacist', 'Outpatient Pharmacy', 'Day', 'Full-time', '$7,400'),
(41, 41, 'Receptionist', 'Main Lobby', 'Day', 'Part-time', '$1,500'),
(42, 42, 'Medical Scribe', 'Gastroenterology', 'Day', 'Full-time', '$3,300'),
(43, 43, 'Surgical Tech', 'Operating Room', 'Night', 'Full-time', '$4,700'),
(44, 44, 'Registered Nurse', 'ICU', 'Night', 'Full-time', '$5,700'),
(45, 45, 'Janitorial Staff', 'Facilities', 'Day', 'Full-time', '$2,500'),
(46, 46, 'Lab Technician', 'Blood Bank', 'Rotating', 'Full-time', '$4,400'),
(47, 47, 'Dietitian', 'Nutrition', 'Day', 'Full-time', '$5,000'),
(48, 48, 'Medical Assistant', 'Cardiology', 'Day', 'Full-time', '$3,600'),
(49, 49, 'Registered Nurse', 'Pediatrics', 'Day', 'Full-time', '$5,150'),
(50, 50, 'Paramedic', 'Ambulance Corp', 'Night', 'Full-time', '$4,600'),
(51, 51, 'Radiology Tech', 'Imaging', 'Rotating', 'Full-time', '$4,750'),
(52, 52, 'Medical Records Clerk', 'Administration', 'Day', 'Part-time', '$1,600'),
(53, 53, 'Pharmacist', 'Pharmacy', 'Rotating', 'Full-time', '$7,600'),
(54, 54, 'Registered Nurse', 'General Ward', 'Night', 'Full-time', '$5,350'),
(55, 55, 'Lab Technician', 'Pathology', 'Day', 'Part-time', '$2,100'),
(56, 56, 'Surgical Tech', 'Operating Room', 'Rotating', 'Full-time', '$4,550'),
(57, 57, 'Receptionist', 'Outpatient Clinic', 'Day', 'Full-time', '$2,850'),
(58, 58, 'ICU Nurse', 'Intensive Care', 'Day', 'Full-time', '$5,500'),
(59, 59, 'Medical Assistant', 'Neurology', 'Day', 'Full-time', '$3,400'),
(60, 60, 'Security Officer', 'Operations', 'Rotating', 'Full-time', '$3,200'),
(61, 61, 'Registered Nurse', 'Maternity', 'Day', 'Full-time', '$5,200'),
(62, 62, 'IT Support Tech', 'IT Department', 'Night', 'Full-time', '$4,500'),
(63, 63, 'Billing Specialist', 'Finance', 'Day', 'Part-time', '$2,000'),
(64, 64, 'Physical Therapist', 'Rehabilitation', 'Day', 'Full-time', '$6,200'),
(65, 65, 'Registered Nurse', 'Emergency Room', 'Rotating', 'Full-time', '$5,400'),
(66, 66, 'Lab Technician', 'Biochemistry', 'Night', 'Full-time', '$4,350'),
(67, 67, 'Medical Scribe', 'Urology', 'Day', 'Part-time', '$1,850'),
(68, 68, 'Janitorial Staff', 'Facilities', 'Rotating', 'Full-time', '$2,650'),
(69, 69, 'Medical Assistant', 'ENT Specialist', 'Day', 'Full-time', '$3,500'),
(70, 70, 'Registered Nurse', 'ICU', 'Rotating', 'Full-time', '$5,650');

CREATE TABLE Room(
    room_id INT PRIMARY KEY,
    room_number VARCHAR(10),
    room_type VARCHAR(100),
    floor_num INT,
    capacity INT,
    room_status VARCHAR(50)
);
INSERT INTO Room VALUES
(1, '101', 'Private', 1, 1, 'Occupied'), (2, '102', 'Semi-Private', 1, 2, 'Available'), (3, '103', 'General Ward', 1, 4, 'Occupied'),
(4, '104', 'ICU', 1, 1, 'Occupied'), (5, '105', 'Private', 1, 1, 'Available'), (6, '106', 'Semi-Private', 1, 2, 'Occupied'),
(7, '107', 'General Ward', 1, 4, 'Available'), (8, '108', 'ICU', 1, 1, 'Available'), (9, '201', 'Private', 2, 1, 'Occupied'),
(10, '202', 'Semi-Private', 2, 2, 'Occupied'), (11, '203', 'General Ward', 2, 6, 'Occupied'), (12, '204', 'ICU', 2, 2, 'Available'),
(13, '205', 'Private', 2, 1, 'Available'), (14, '206', 'Semi-Private', 2, 2, 'Available'), (15, '207', 'General Ward', 2, 6, 'Available'),
(16, '208', 'ICU', 2, 2, 'Occupied'), (17, '301', 'Private', 3, 1, 'Occupied'), (18, '302', 'Semi-Private', 3, 2, 'Occupied'),
(19, '303', 'General Ward', 3, 4, 'Occupied'), (20, '304', 'ICU', 3, 1, 'Occupied'), (21, '305', 'Private', 3, 1, 'Available'),
(22, '306', 'Semi-Private', 3, 2, 'Available'), (23, '307', 'General Ward', 3, 4, 'Available'), (24, '308', 'ICU', 3, 1, 'Available'),
(25, '401', 'Private', 4, 1, 'Occupied'), (26, '402', 'Semi-Private', 4, 2, 'Available'), (27, '403', 'General Ward', 4, 6, 'Occupied'),
(28, '404', 'ICU', 4, 2, 'Occupied'), (29, '405', 'Private', 4, 1, 'Available'), (30, '406', 'Semi-Private', 4, 2, 'Occupied'),
(31, '407', 'General Ward', 4, 6, 'Available'), (32, '408', 'ICU', 4, 2, 'Available'), (33, '110', 'Private', 1, 1, 'Occupied'),
(34, '111', 'Semi-Private', 1, 2, 'Occupied'), (35, '112', 'General Ward', 1, 4, 'Available'), (36, '113', 'ICU', 1, 1, 'Occupied'),
(37, '210', 'Private', 2, 1, 'Available'), (38, '211', 'Semi-Private', 2, 2, 'Available'), (39, '212', 'General Ward', 2, 6, 'Occupied'),
(40, '213', 'ICU', 2, 2, 'Available'), (41, '310', 'Private', 3, 1, 'Occupied'), (42, '311', 'Semi-Private', 3, 2, 'Occupied'),
(43, '312', 'General Ward', 3, 4, 'Occupied'), (44, '313', 'ICU', 3, 1, 'Available'), (45, '410', 'Private', 4, 1, 'Available'),
(46, '411', 'Semi-Private', 4, 2, 'Available'), (47, '412', 'General Ward', 4, 6, 'Available'), (48, '413', 'ICU', 4, 2, 'Occupied'),
(49, '120', 'Private', 1, 1, 'Occupied'), (50, '121', 'Semi-Private', 1, 2, 'Available'), (51, '122', 'General Ward', 1, 4, 'Occupied'),
(52, '123', 'ICU', 1, 1, 'Available'), (53, '220', 'Private', 2, 1, 'Available'), (54, '221', 'Semi-Private', 2, 2, 'Occupied'),
(55, '222', 'General Ward', 2, 6, 'Available'), (56, '223', 'ICU', 2, 2, 'Occupied'), (57, '320', 'Private', 3, 1, 'Occupied'),
(58, '321', 'Semi-Private', 3, 2, 'Available'), (59, '322', 'General Ward', 3, 4, 'Occupied'), (60, '323', 'ICU', 3, 1, 'Occupied'),
(61, '420', 'Private', 4, 1, 'Available'), (62, '421', 'Semi-Private', 4, 2, 'Occupied'), (63, '422', 'General Ward', 4, 6, 'Available'),
(64, '423', 'ICU', 4, 2, 'Available'), (65, '501', 'Private', 5, 1, 'Occupied'), (66, '502', 'Semi-Private', 5, 2, 'Occupied'),
(67, '503', 'General Ward', 5, 4, 'Available'), (68, '504', 'ICU', 5, 1, 'Occupied'), (69, '505', 'Private', 5, 1, 'Available'),
(70, '506', 'Semi-Private', 5, 2, 'Available');

CREATE TABLE Assign_Doctor(
    assign_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    assign_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);
INSERT INTO Assign_Doctor VALUES
(1, 1, 1, '2026-05-10'),
(2, 2, 2, '2026-05-11');

CREATE TABLE Appointment(
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);
INSERT INTO Appointment VALUES
(1, 1, 1, '2026-05-10'), (2, 2, 2, '2026-05-11'), (3, 3, 3, '2026-05-11'), (4, 4, 4, '2026-05-12'),
(5, 5, 5, '2026-05-12'), (6, 6, 6, '2026-05-12'), (7, 7, 7, '2026-05-13'), (8, 8, 8, '2026-05-13'),
(9, 9, 9, '2026-05-13'), (10, 10, 10, '2026-05-14'), (11, 11, 11, '2026-05-14'), (12, 12, 12, '2026-05-14'),
(13, 13, 13, '2026-05-15'), (14, 14, 14, '2026-05-15'), (15, 15, 15, '2026-05-15'), (16, 16, 16, '2026-05-16'),
(17, 17, 17, '2026-05-16'), (18, 18, 18, '2026-05-16'), (19, 19, 19, '2026-05-17'), (20, 20, 20, '2026-05-17'),
(21, 21, 21, '2026-05-17'), (22, 22, 22, '2026-05-18'), (23, 23, 23, '2026-05-18'), (24, 24, 24, '2026-05-18'),
(25, 25, 25, '2026-05-19'), (26, 26, 26, '2026-05-19'), (27, 27, 27, '2026-05-19'), (28, 28, 28, '2026-05-20'),
(29, 29, 29, '2026-05-20'), (30, 30, 30, '2026-05-20'), (31, 31, 31, '2026-05-21'), (32, 32, 32, '2026-05-21'),
(33, 33, 33, '2026-05-21'), (34, 34, 34, '2026-05-22'), (35, 35, 35, '2026-05-22'), (36, 36, 36, '2026-05-22'),
(37, 37, 37, '2026-05-23'), (38, 38, 38, '2026-05-23'), (39, 39, 39, '2026-05-23'), (40, 40, 40, '2026-05-24'),
(41, 41, 41, '2026-05-24'), (42, 42, 42, '2026-05-24'), (43, 43, 43, '2026-05-25'), (44, 44, 44, '2026-05-25'),
(45, 45, 45, '2026-05-25'), (46, 46, 46, '2026-05-26'), (47, 47, 47, '2026-05-26'), (48, 48, 48, '2026-05-26'),
(49, 49, 49, '2026-05-27'), (50, 50, 50, '2026-05-27'), (51, 51, 51, '2026-05-27'), (52, 52, 52, '2026-05-28'),
(53, 53, 53, '2026-05-28'), (54, 54, 54, '2026-05-28'), (55, 55, 55, '2026-05-29'), (56, 56, 56, '2026-05-29'),
(57, 57, 57, '2026-05-29'), (58, 58, 58, '2026-05-30'), (59, 59, 59, '2026-05-30'), (60, 60, 60, '2026-05-30'),
(61, 61, 61, '2026-05-31'), (62, 62, 62, '2026-05-31'), (63, 63, 63, '2026-05-31'), (64, 64, 64, '2026-06-01'),
(65, 65, 65, '2026-06-01'), (66, 66, 66, '2026-06-01'), (67, 67, 67, '2026-06-02'), (68, 68, 68, '2026-06-02'),
(69, 69, 69, '2026-06-02'), (70, 70, 70, '2026-06-03');

CREATE TABLE Book_Appointment(
    booking_id INT PRIMARY KEY,
    patient_id INT,
    booking_date DATE,
    booking_status VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);
INSERT INTO Book_Appointment VALUES
(1, 1, '2026-05-15', 'Booked'), (2, 2, '2026-05-16', 'Booked'), (3, 3, '2026-05-16', 'Cancelled'),
(4, 4, '2026-05-17', 'Booked'), (5, 5, '2026-05-17', 'Completed'), (6, 6, '2026-05-17', 'Booked'),
(7, 7, '2026-05-18', 'Booked'), (8, 8, '2026-05-18', 'No Show'), (9, 9, '2026-05-19', 'Booked'),
(10, 10, '2026-05-19', 'Booked'), (11, 11, '2026-05-19', 'Completed'), (12, 12, '2026-05-20', 'Booked'),
(13, 13, '2026-05-20', 'Booked'), (14, 14, '2026-05-21', 'Cancelled'), (15, 15, '2026-05-21', 'Booked'),
(16, 16, '2026-05-21', 'Booked'), (17, 17, '2026-05-22', 'Completed'), (18, 18, '2026-05-22', 'Booked'),
(19, 19, '2026-05-23', 'Booked'), (20, 20, '2026-05-23', 'Booked'), (21, 21, '2026-05-24', 'No Show'),
(22, 22, '2026-05-24', 'Booked'), (23, 23, '2026-05-24', 'Booked'), (24, 24, '2026-05-25', 'Completed'),
(25, 25, '2026-05-25', 'Booked'), (26, 26, '2026-05-26', 'Booked'), (27, 27, '2026-05-26', 'Cancelled'),
(28, 28, '2026-05-26', 'Booked'), (29, 29, '2026-05-27', 'Booked'), (30, 30, '2026-05-27', 'Completed'),
(31, 31, '2026-05-28', 'Booked'), (32, 32, '2026-05-28', 'Booked'), (33, 33, '2026-05-29', 'Booked'),
(34, 34, '2026-05-29', 'No Show'), (35, 35, '2026-05-29', 'Booked'), (36, 36, '2026-05-30', 'Completed'),
(37, 37, '2026-05-30', 'Booked'), (38, 38, '2026-05-31', 'Booked'), (39, 39, '2026-05-31', 'Cancelled'),
(40, 40, '2026-06-01', 'Booked'), (41, 41, '2026-06-01', 'Booked'), (42, 42, '2026-06-01', 'Completed'),
(43, 43, '2026-06-02', 'Booked'), (44, 44, '2026-06-02', 'Booked'), (45, 45, '2026-06-03', 'Booked'),
(46, 46, '2026-06-03', 'No Show'), (47, 47, '2026-06-04', 'Booked'), (48, 48, '2026-06-04', 'Completed'),
(49, 49, '2026-06-04', 'Booked'), (50, 50, '2026-06-05', 'Booked'), (51, 51, '2026-06-05', 'Cancelled'),
(52, 52, '2026-06-06', 'Booked'), (53, 53, '2026-06-06', 'Booked'), (54, 54, '2026-06-06', 'Completed'),
(55, 55, '2026-06-07', 'Booked'), (56, 56, '2026-06-07', 'Booked'), (57, 57, '2026-06-08', 'No Show'),
(58, 58, '2026-06-08', 'Booked'), (59, 59, '2026-06-09', 'Booked'), (60, 60, '2026-06-09', 'Completed'),
(61, 61, '2026-06-10', 'Booked'), (62, 62, '2026-06-10', 'Cancelled'), (63, 63, '2026-06-11', 'Booked'),
(64, 64, '2026-06-11', 'Booked'), (65, 65, '2026-06-11', 'Completed'), (66, 66, '2026-06-12', 'Booked'),
(67, 67, '2026-06-12', 'Booked'), (68, 68, '2026-06-13', 'No Show'), (69, 69, '2026-06-13', 'Booked'),
(70, 70, '2026-06-14', 'Booked');

CREATE TABLE Cancel_Appointment(
    cancel_id INT PRIMARY KEY,
    appointment_id INT,
    reason VARCHAR(100),
    cancel_date DATE,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);
INSERT INTO Cancel_Appointment VALUES
(1, 1, 'Doctor not available', '2026-05-18'), (2, 2, 'Patient emergency', '2026-05-19'), (3, 3, 'Rescheduled by patient', '2026-05-19'),
(4, 4, 'Incorrect department booked', '2026-05-20'), (5, 5, 'Doctor on sudden leave', '2026-05-20'), (6, 6, 'Patient recovered', '2026-05-20'),
(7, 7, 'Insurance issue', '2026-05-21'), (8, 8, 'Weather conditions', '2026-05-21'), (9, 9, 'Patient scheduling conflict', '2026-05-22'),
(10, 10, 'Doctor emergency', '2026-05-22'), (11, 11, 'Patient no-show warning issued', '2026-05-22'), (12, 12, 'Duplicate booking', '2026-05-23'),
(13, 13, 'Patient emergency', '2026-05-23'), (14, 14, 'Doctor not available', '2026-05-24'), (15, 15, 'Transportation issue', '2026-05-24'),
(16, 16, 'Rescheduled by patient', '2026-05-24'), (17, 17, 'Clinic equipment malfunction', '2026-05-25'), (18, 18, 'Patient sick with flu', '2026-05-25'),
(19, 19, 'Doctor on sudden leave', '2026-05-26'), (20, 20, 'Insurance confirmation delay', '2026-05-26'), (21, 21, 'Patient scheduling conflict', '2026-05-26'),
(22, 22, 'Incorrect department booked', '2026-05-27'), (23, 23, 'Doctor emergency', '2026-05-27'), (24, 24, 'Patient emergency', '2026-05-28'),
(25, 25, 'Patient recovered', '2026-05-28'), (26, 26, 'Doctor not available', '2026-05-28'), (27, 27, 'Duplicate booking', '2026-05-29'),
(28, 28, 'Transportation issue', '2026-05-29'), (29, 29, 'Rescheduled by patient', '2026-05-30'), (30, 30, 'Doctor on sudden leave', '2026-05-30'),
(31, 31, 'Patient sick with flu', '2026-05-31'), (32, 32, 'Weather conditions', '2026-05-31'), (33, 33, 'Patient scheduling conflict', '2026-05-31'),
(34, 34, 'Clinic renovation delay', '2026-06-01'), (35, 35, 'Doctor emergency', '2026-06-01'), (36, 36, 'Patient emergency', '2026-06-02'),
(37, 37, 'Insurance issue', '2026-06-02'), (38, 38, 'Doctor not available', '2026-06-02'), (39, 39, 'Duplicate booking', '2026-06-03'),
(40, 40, 'Patient recovered', '2026-06-03'), (41, 41, 'Rescheduled by patient', '2026-06-04'), (42, 42, 'Doctor on sudden leave', '2026-06-04'),
(43, 43, 'Transportation issue', '2026-06-04'), (44, 44, 'Incorrect department booked', '2026-06-05'), (45, 45, 'Patient scheduling conflict', '2026-06-05'),
(46, 46, 'Doctor emergency', '2026-06-06'), (47, 47, 'Patient emergency', '2026-06-06'), (48, 48, 'Doctor not available', '2026-06-06'),
(49, 49, 'Insurance confirmation delay', '2026-06-07'), (50, 50, 'Duplicate booking', '2026-06-07'), (51, 51, 'Patient sick with flu', '2026-06-08'),
(52, 52, 'Rescheduled by patient', '2026-06-08'), (53, 53, 'Doctor on sudden leave', '2026-06-08'), (54, 54, 'Weather conditions', '2026-06-09'),
(55, 55, 'Patient scheduling conflict', '2026-06-09'), (56, 56, 'Doctor emergency', '2026-06-10'), (57, 57, 'Patient emergency', '2026-06-10'),
(58, 58, 'Clinic equipment malfunction', '2026-06-10'), (59, 59, 'Doctor not available', '2026-06-11'), (60, 60, 'Patient recovered', '2026-06-11'),
(61, 61, 'Duplicate booking', '2026-06-12'), (62, 62, 'Transportation issue', '2026-06-12'), (63, 63, 'Rescheduled by patient', '2026-06-12'),
(64, 64, 'Doctor on sudden leave', '2026-06-13'), (65, 65, 'Patient scheduling conflict', '2026-06-13'), (66, 66, 'Incorrect department booked', '2026-06-14'),
(67, 67, 'Doctor emergency', '2026-06-14'), (68, 68, 'Patient emergency', '2026-06-14'), (69, 69, 'Doctor not available', '2026-06-15'),
(70, 70, 'Insurance issue', '2026-06-15');

CREATE TABLE Medical_History(
    history_id INT PRIMARY KEY,
    patient_id INT,
    previous_disease VARCHAR(100),
    treatment_taken VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

INSERT INTO Medical_History VALUES
(1, 1, 'Blood Pressure', 'Medicine'), (2, 2, 'Asthma', 'Inhaler'), (3, 3, 'Type 2 Diabetes', 'Metformin'),
(4, 4, 'Migraine', 'Pain Relievers'), (5, 5, 'Anxiety', 'Therapy & SSRIs'), (6, 6, 'Hyperthyroidism', 'Anti-thyroid Meds'),
(7, 7, 'Seasonal Allergies', 'Antihistamines'), (8, 8, 'GERD', 'Antacids'), (9, 9, 'Arthritis', 'Physical Therapy'),
(10, 10, 'Anemia', 'Iron Supplements'), (11, 11, 'Depression', 'Counseling'), (12, 12, 'High Cholesterol', 'Statins'),
(13, 13, 'Insomnia', 'Melatonin'), (14, 14, 'Eczema', 'Topical Steroids'), (15, 15, 'Sleep Apnea', 'CPAP Therapy'),
(16, 16, 'Chronic Fatigue', 'Lifestyle Changes'), (17, 17, 'Kidney Stones', 'Hydration Therapy'), (18, 18, 'Bronchitis', 'Antibiotics'),
(19, 19, 'Ulcerative Colitis', 'Immunosuppressants'), (20, 20, 'Gout', 'Allopurinol'), (21, 21, 'Blood Pressure', 'Beta Blockers'),
(22, 22, 'Asthma', 'Corticosteroids'), (23, 23, 'Type 1 Diabetes', 'Insulin Pump'), (24, 24, 'Migraine', 'Triptans'),
(25, 25, 'Anxiety', 'CBT Therapy'), (26, 26, 'Hypothyroidism', 'Levothyroxine'), (27, 27, 'Food Allergies', 'EpiPen'),
(28, 28, 'GERD', 'PPI Medication'), (29, 29, 'Osteoarthritis', 'Joint Injections'), (30, 30, 'Vitamin D Deficiency', 'Supplements'),
(31, 31, 'Depression', 'Antidepressants'), (32, 32, 'High Cholesterol', 'Diet Control'), (33, 33, 'Sleep Apnea', 'BiPAP Machine'),
(34, 34, 'Psoriasis', 'UV Light Therapy'), (35, 35, 'Sinusitis', 'Nasal Corticosteroid'), (36, 36, 'Anemia', 'B12 Injections'),
(37, 37, 'Kidney Stones', 'Lithotripsy'), (38, 38, 'Pneumonia', 'Antivirals'), (39, 39, 'Crohns Disease', 'Biologic Therapy'),
(40, 40, 'Fibromyalgia', 'Nerve Pain Meds'), (41, 41, 'Blood Pressure', 'ACE Inhibitors'), (42, 42, 'Asthma', 'Nebulizer Treatment'),
(43, 43, 'Type 2 Diabetes', 'Diet & Exercise'), (44, 44, 'Chronic Back Pain', 'Chiropractic Care'), (45, 45, 'Panic Disorder', 'Benzodiazepines'),
(46, 46, 'Hyperthyroidism', 'Radioactive Iodine'), (47, 47, 'Skin Allergies', 'Hydrocortisone'), (48, 48, 'Acid Reflux', 'H2 Blockers'),
(49, 49, 'Rheumatoid Arthritis', 'DMARDs'), (50, 50, 'Iron Deficiency', 'Dietary Adjustments'), (51, 51, 'PTSD', 'EMDR Therapy'),
(52, 52, 'High Cholesterol', 'Lipitor'), (53, 53, 'Insomnia', 'Cognitive Therapy'), (54, 54, 'Eczema', 'Moisturizing Therapy'),
(55, 55, 'Vertigo', 'Vestibular Rehab'), (56, 56, 'Chronic Fatigue', 'Vitamin Therapy'), (57, 57, 'Gallstones', 'Surgical Monitoring'),
(58, 58, 'Acute Bronchitis', 'Cough Suppressants'), (59, 59, 'IBS', 'Probiotics & Diet'), (60, 60, 'Gout', 'NSAIDs'),
(61, 61, 'Blood Pressure', 'Diuretics'), (62, 62, 'Asthma', 'Long-acting Inhaler'), (63, 63, 'Type 2 Diabetes', 'Insulin Therapy'),
(64, 64, 'Migraine', 'Botox Injections'), (65, 65, 'Anxiety', 'Mindfulness Training'), (66, 66, 'Hypothyroidism', 'Thyroid Hormone'),
(67, 67, 'Allergic Rhinitis', 'Immunotherapy'), (68, 68, 'GERD', 'Lifestyle Changes'), (69, 69, 'Arthritis', 'Acupuncture'),
(70, 70, 'Anemia', 'Folic Acid');

CREATE TABLE Treatment(
    treatment_id INT PRIMARY KEY,
    patient_id INT,
    treatment_name VARCHAR(100),
    treatment_cost DECIMAL(10,2),
    status VARCHAR(20),
    treatment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);
INSERT INTO Treatment VALUES
(1, 1, 'Checkup', 500.00, 'Done', '2026-05-26'), (2, 2, 'Testing', 1500.00, 'Pending', '2026-05-27'), (3, 3, 'X-Ray Scanning', 2500.00, 'Done', '2026-05-27'),
(4, 4, 'MRI Brain Scan', 8500.00, 'Pending', '2026-05-28'), (5, 5, 'Blood Panel Test', 1200.00, 'Done', '2026-05-28'), (6, 6, 'Physiotherapy', 1800.00, 'Done', '2026-05-28'),
(7, 7, 'Dental Cleaning', 2000.00, 'Pending', '2026-05-29'), (8, 8, 'Eye Examination', 800.00, 'Done', '2026-05-29'), (9, 9, 'Ultrasound Scan', 3000.00, 'Pending', '2026-05-29'),
(10, 10, 'Chemotherapy Session', 25000.00, 'Done', '2026-05-30'), (11, 11, 'Thyroid Screening', 1400.00, 'Done', '2026-05-30'), (12, 12, 'Pap Smear Test', 1600.00, 'Pending', '2026-05-31'),
(13, 13, 'Endoscopy Procedure', 7500.00, 'Pending', '2026-05-31'), (14, 14, 'Urinalysis', 450.00, 'Done', '2026-05-31'), (15, 15, 'CT Chest Scan', 9000.00, 'Done', '2026-06-01'),
(16, 16, 'Kidney Function Test', 1300.00, 'Pending', '2026-06-01'), (17, 17, 'ECG Monitoring', 1100.00, 'Done', '2026-06-01'), (18, 18, 'Vaccination', 600.00, 'Done', '2026-06-02'),
(19, 19, 'Skin Allergy Test', 2200.00, 'Pending', '2026-06-02'), (20, 20, 'General Consultation', 500.00, 'Done', '2026-06-02'), (21, 21, 'EEG Neuro Test', 4500.00, 'Pending', '2026-06-03'),
(22, 22, 'Plaster Cast Application', 3500.00, 'Done', '2026-06-03'), (23, 23, 'Psychiatric Evaluation', 3000.00, 'Done', '2026-06-03'), (24, 24, 'Laser Eye Therapy', 15000.00, 'Pending', '2026-06-04'),
(25, 25, 'Stomach Biopsy', 6800.00, 'Done', '2026-06-04'), (26, 26, 'Radiation Therapy', 18000.00, 'Pending', '2026-06-04'), (27, 27, 'Glucose Tolerance Test', 950.00, 'Done', '2026-06-05'),
(28, 28, 'Ultrasound Pelvis', 2800.00, 'Done', '2026-06-05'), (29, 29, 'Ear Wax Removal', 700.00, 'Pending', '2026-06-05'), (30, 30, 'Prostate Screening', 1900.00, 'Done', '2026-06-06'),
(31, 31, 'Nebulizer Therapy', 650.00, 'Done', '2026-06-06'), (32, 32, 'Dialysis Session', 12000.00, 'Pending', '2026-06-06'), (33, 33, 'Echocardiogram', 5500.00, 'Done', '2026-06-07'),
(34, 34, 'Pediatric Checkup', 600.00, 'Done', '2026-06-07'), (35, 35, 'Skin Biopsy', 4000.00, 'Pending', '2026-06-07'), (36, 36, 'Stitch Removal', 400.00, 'Done', '2026-06-08'),
(37, 37, 'Spinal MRI', 9500.00, 'Pending', '2026-06-08'), (38, 38, 'Cortisone Injection', 3200.00, 'Done', '2026-06-08'), (39, 39, 'Therapy Consultation', 2500.00, 'Pending', '2026-06-09'),
(40, 40, 'Cataract Screening', 1200.00, 'Done', '2026-06-09'), (41, 41, 'Liver Function Test', 1500.00, 'Done', '2026-06-09'), (42, 42, 'Tumor Marker Test', 4800.00, 'Pending', '2026-06-10'),
(43, 43, 'Insulin Regulation', 1100.00, 'Done', '2026-06-10'), (44, 44, 'Colposcopy Procedure', 5000.00, 'Pending', '2026-06-10'), (45, 45, 'Audiometry Hearing Test', 1500.00, 'Done', '2026-06-11'),
(46, 46, 'Cystoscopy Exam', 7000.00, 'Pending', '2026-06-11'), (47, 47, 'Pulmonary Function Test', 2400.00, 'Done', '2026-06-11'), (48, 48, 'Renal Ultrasound', 3200.00, 'Done', '2026-06-12'),
(49, 49, 'Cardiac Stress Test', 4200.00, 'Pending', '2026-06-12'), (50, 50, 'Allergy Injections', 900.00, 'Done', '2026-06-12'), (51, 51, 'Checkup', 500.00, 'Done', '2026-05-26'),
(52, 52, 'Testing', 1500.00, 'Pending', '2026-05-27'), (53, 53, 'Neurological Exam', 2200.00, 'Done', '2026-06-13'), (54, 54, 'Joint Aspiration', 4500.00, 'Pending', '2026-06-13'),
(55, 55, 'CBT Session', 3000.00, 'Done', '2026-06-14'), (56, 56, 'Visual Field Test', 1300.00, 'Done', '2026-06-14'), (57, 57, 'Endoscopy Followup', 3500.00, 'Pending', '2026-06-14'),
(58, 58, 'Bone Marrow Biopsy', 14000.00, 'Done', '2026-06-15'), (59, 59, 'Hormone Level Panel', 2600.00, 'Pending', '2026-06-15'), (60, 60, 'Antenatal Checkup', 1200.00, 'Done', '2026-06-15'),
(61, 61, 'Sinus X-Ray Scan', 1800.00, 'Done', '2026-06-16'), (62, 62, 'Vasectomy Procedure', 11000.00, 'Pending', '2026-06-16'), (63, 63, 'Sleep Study Monitoring', 8000.00, 'Done', '2026-06-16'),
(64, 64, 'Lithotripsy Followup', 4000.00, 'Pending', '2026-06-17'), (65, 65, 'Angiography', 19500.00, 'Done', '2026-06-17'), (66, 66, 'Growth Assessment', 800.00, 'Done', '2026-06-17'),
(67, 67, 'Cryotherapy Session', 3100.00, 'Pending', '2026-06-18'), (68, 68, 'Wound Dressing', 350.00, 'Done', '2026-06-18'), (69, 69, 'Nerve Conduction Test', 5200.00, 'Pending', '2026-06-18'),
(70, 70, 'Orthopedic Traction', 6000.00, 'Done', '2026-06-19');

CREATE TABLE Billing(
    bill_id INT PRIMARY KEY,
    patient_id INT,
    total_amount DECIMAL(10,2),
    bill_date DATE,
    bill_status VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);
INSERT INTO Billing VALUES
(1, 1, 2500.00, '2026-05-26', 'Paid'), (2, 2, 4500.00, '2026-05-27', 'Unpaid'), (3, 3, 3200.00, '2026-05-27', 'Paid'),
(4, 4, 9100.00, '2026-05-28', 'Unpaid'), (5, 5, 1500.00, '2026-05-28', 'Paid'), (6, 6, 2100.00, '2026-05-28', 'Paid'),
(7, 7, 2400.00, '2026-05-29', 'Unpaid'), (8, 8, 950.00, '2026-05-29', 'Paid'), (9, 9, 3500.00, '2026-05-29', 'Unpaid'),
(10, 10, 26500.00, '2026-05-30', 'Paid'), (11, 11, 1750.00, '2026-05-30', 'Paid'), (12, 12, 1950.00, '2026-05-31', 'Unpaid'),
(13, 13, 8200.00, '2026-05-31', 'Unpaid'), (14, 14, 600.00, '2026-05-31', 'Paid'), (15, 15, 9800.00, '2026-06-01', 'Paid'),
(16, 16, 1600.00, '2026-06-01', 'Unpaid'), (17, 17, 1450.00, '2026-06-01', 'Paid'), (18, 18, 750.00, '2026-06-02', 'Paid'),
(19, 19, 2600.00, '2026-06-02', 'Unpaid'), (20, 20, 580.00, '2026-06-02', 'Paid'), (21, 21, 5100.00, '2026-06-03', 'Unpaid'),
(22, 22, 3900.00, '2026-06-03', 'Paid'), (23, 23, 3400.00, '2026-06-03', 'Paid'), (24, 24, 16200.00, '2026-06-04', 'Unpaid'),
(25, 25, 7400.00, '2026-06-04', 'Paid'), (26, 26, 19500.00, '2026-06-04', 'Unpaid'), (27, 27, 1100.00, '2026-06-05', 'Paid'),
(28, 28, 3100.00, '2026-06-05', 'Paid'), (29, 29, 850.00, '2026-06-05', 'Unpaid'), (30, 30, 2150.00, '2026-06-06', 'Paid'),
(31, 31, 780.00, '2026-06-06', 'Paid'), (32, 32, 13100.00, '2026-06-06', 'Unpaid'), (33, 33, 6100.00, '2026-06-07', 'Paid'),
(34, 34, 720.00, '2026-06-07', 'Paid'), (35, 35, 4400.00, '2026-06-07', 'Unpaid'), (36, 36, 450.00, '2026-06-08', 'Paid'),
(37, 37, 10500.00, '2026-06-08', 'Unpaid'), (38, 38, 3600.00, '2026-06-08', 'Paid'), (39, 39, 2800.00, '2026-06-09', 'Unpaid'),
(40, 40, 1350.00, '2026-06-09', 'Paid'), (41, 41, 1700.00, '2026-06-09', 'Paid'), (42, 42, 5300.00, '2026-06-10', 'Unpaid'),
(43, 43, 1250.00, '2026-06-10', 'Paid'), (44, 44, 5600.00, '2026-06-10', 'Unpaid'), (45, 45, 1650.00, '2026-06-11', 'Paid'),
(46, 46, 7600.00, '2026-06-11', 'Unpaid'), (47, 47, 2700.00, '2026-06-11', 'Paid'), (48, 48, 3650.00, '2026-06-12', 'Paid'),
(49, 49, 4700.00, '2026-06-12', 'Unpaid'), (50, 50, 1050.00, '2026-06-12', 'Paid'), (51, 51, 500.00, '2026-05-26', 'Paid'),
(52, 52, 1500.00, '2026-05-27', 'Unpaid'), (53, 53, 2500.00, '2026-06-13', 'Paid'), (54, 54, 4900.00, '2026-06-13', 'Unpaid'),
(55, 55, 3350.00, '2026-06-14', 'Paid'), (56, 56, 1450.00, '2026-06-14', 'Paid'), (57, 57, 3900.00, '2026-06-14', 'Unpaid'),
(58, 58, 15200.00, '2026-06-15', 'Paid'), (59, 59, 2900.00, '2026-06-15', 'Unpaid'), (60, 60, 1350.00, '2026-06-15', 'Paid'),
(61, 61, 2000.00, '2026-06-16', 'Paid'), (62, 62, 11800.00, '2026-06-16', 'Unpaid'), (63, 63, 8700.00, '2026-06-16', 'Paid'),
(64, 64, 4400.00, '2026-06-17', 'Unpaid'), (65, 65, 21000.00, '2026-06-17', 'Paid'), (66, 66, 900.00, '2026-06-17', 'Paid'),
(67, 67, 3450.00, '2026-06-18', 'Unpaid'), (68, 68, 400.00, '2026-06-18', 'Paid'), (69, 69, 5700.00, '2026-06-18', 'Unpaid'),
(70, 70, 6500.00, '2026-06-19', 'Paid');

CREATE TABLE Payment_Records(
    payment_id INT PRIMARY KEY,
    bill_id INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    FOREIGN KEY (bill_id) REFERENCES Billing(bill_id)
);
INSERT INTO Payment_Records VALUES
(1, 1, 'Cash', 'Completed'), (2, 2, 'Card', 'Pending'), (3, 3, 'Online Transfer', 'Completed'),
(4, 4, 'Insurance Claim', 'Pending'), (5, 5, 'Card', 'Completed'), (6, 6, 'Cash', 'Completed'),
(7, 7, 'Cheque', 'Pending'), (8, 8, 'Mobile Wallet', 'Completed'), (9, 9, 'Insurance Claim', 'Pending'),
(10, 10, 'Card', 'Completed'), (11, 11, 'Online Transfer', 'Completed'), (12, 12, 'Card', 'Pending'),
(13, 13, 'Insurance Claim', 'Pending'), (14, 14, 'Cash', 'Completed'), (15, 15, 'Card', 'Completed'),
(16, 16, 'Cheque', 'Failed'), (17, 17, 'Mobile Wallet', 'Completed'), (18, 18, 'Cash', 'Completed'),
(19, 19, 'Card', 'Pending'), (20, 20, 'Online Transfer', 'Completed'), (21, 21, 'Insurance Claim', 'Pending'),
(22, 22, 'Card', 'Completed'), (23, 23, 'Cash', 'Completed'), (24, 24, 'Insurance Claim', 'Failed'),
(25, 25, 'Online Transfer', 'Completed'), (26, 26, 'Card', 'Pending'), (27, 27, 'Mobile Wallet', 'Completed'),
(28, 28, 'Cash', 'Completed'), (29, 29, 'Card', 'Failed'), (30, 30, 'Online Transfer', 'Completed'),
(31, 31, 'Cash', 'Completed'), (32, 32, 'Insurance Claim', 'Pending'), (33, 33, 'Card', 'Completed'),
(34, 34, 'Mobile Wallet', 'Completed'), (35, 35, 'Cheque', 'Pending'), (36, 36, 'Cash', 'Completed'),
(37, 37, 'Insurance Claim', 'Pending'), (38, 38, 'Card', 'Completed'), (39, 39, 'Online Transfer', 'Failed'),
(40, 40, 'Mobile Wallet', 'Completed'), (41, 41, 'Cash', 'Completed'), (42, 42, 'Card', 'Pending'),
(43, 43, 'Online Transfer', 'Completed'), (44, 44, 'Insurance Claim', 'Pending'), (45, 45, 'Card', 'Completed'),
(46, 46, 'Cheque', 'Failed'), (47, 47, 'Cash', 'Completed'), (48, 48, 'Mobile Wallet', 'Completed'),
(49, 49, 'Card', 'Pending'), (50, 50, 'Online Transfer', 'Completed'), (51, 51, 'Cash', 'Completed'),
(52, 52, 'Card', 'Pending'), (53, 53, 'Online Transfer', 'Completed'), (54, 54, 'Insurance Claim', 'Pending'),
(55, 55, 'Card', 'Completed'), (56, 56, 'Cash', 'Completed'), (57, 57, 'Cheque', 'Failed'),
(58, 58, 'Mobile Wallet', 'Completed'), (59, 59, 'Insurance Claim', 'Pending'), (60, 60, 'Card', 'Completed'),
(61, 61, 'Online Transfer', 'Completed'), (62, 62, 'Card', 'Pending'), (63, 63, 'Insurance Claim', 'Completed'),
(64, 64, 'Cash', 'Failed'), (65, 65, 'Card', 'Completed'), (66, 66, 'Mobile Wallet', 'Completed'),
(67, 67, 'Cheque', 'Pending'), (68, 68, 'Cash', 'Completed'), (69, 69, 'Card', 'Pending'),
(70, 70, 'Online Transfer', 'Completed');
CREATE TABLE Pharmacy(
    medicine_id INT PRIMARY KEY,
    medicine_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);
INSERT INTO Pharmacy VALUES
(1, 'Panadol', 100, 50.00), (2, 'Insulin', 50, 500.00), (3, 'Amoxicillin', 120, 120.00),
(4, 'Metformin', 200, 35.00), (5, 'Lipitor', 80, 240.00), (6, 'Ibuprofen', 150, 45.00),
(7, 'Augmentin', 65, 310.00), (8, 'Albuterol Inhaler', 40, 450.00), (9, 'Omeprazole', 180, 60.00),
(10, 'Losartan', 110, 85.00), (11, 'Levothyroxine', 250, 25.00), (12, 'Zantac', 90, 75.00),
(13, 'Gabapentin', 70, 190.00), (14, 'Metoprolol', 130, 55.00), (15, 'Prednisone', 140, 40.00),
(16, 'Amlodipine', 160, 30.00), (17, 'Azithromycin', 85, 180.00), (18, 'Crestor', 75, 290.00),
(19, 'Sinthrome', 60, 115.00), (20, 'Hydrochlorothiazide', 210, 20.00), (21, 'Flonase Nasal Spray', 45, 380.00),
(22, 'Xanax', 100, 150.00), (23, 'Atorvastatin', 170, 95.00), (24, 'Metronidazole', 95, 80.00),
(25, 'Ciprofloxacin', 115, 110.00), (26, 'Tramadol', 80, 130.00), (27, 'Clopidogrel', 130, 140.00),
(28, 'Montelukast', 140, 90.00), (29, 'Lexapro', 90, 210.00), (30, 'Zoloft', 85, 220.00),
(31, 'Wellbutrin', 70, 320.00), (32, 'Prozac', 95, 195.00), (33, 'Singulair', 120, 105.00),
(34, 'Doxycycline', 110, 70.00), (35, 'Meloxicam', 150, 50.00), (36, 'Furosemide', 180, 25.00),
(37, 'Gabapentin_Dup', 100, 115.00), -- Unique name key protection fix
(38, 'Carvedilol', 125, 65.00), (39, 'Sotalol', 60, 140.00), (40, 'Warfarin', 200, 30.00),
(41, 'Eliquis', 40, 950.00), (42, 'Xarelto', 35, 980.00), (43, 'Jardiance', 55, 620.00),
(44, 'Synjardy', 50, 580.00), (45, 'Januvia', 65, 490.00), (46, 'Victoza Pen', 20, 1500.00),
(47, 'Humalog Insulin', 30, 850.00), (48, 'Lantus Solostar', 25, 1200.00), (49, 'Ventolin HFA', 75, 270.00),
(50, 'Symbicort', 35, 890.00), (51, 'Advair Diskus', 30, 920.00), (52, 'Flovent HFA', 40, 410.00),
(53, 'Spiriva Respimat', 28, 1100.00), (54, 'Voltaren Gel', 90, 160.00), (55, 'Celebrex', 70, 280.00),
(56, 'Lyrica', 65, 340.00), (57, 'Nexium', 140, 125.00), (58, 'Dexilant', 50, 450.00),
(59, 'Pepcid', 160, 45.00), (60, 'Carafate', 80, 210.00), (61, 'Linzess', 45, 760.00),
(62, 'Creon', 35, 880.00), (63, 'Imodium', 200, 15.00), (64, 'Zofran', 120, 90.00),
(65, 'Phenergan', 100, 55.00), (66, 'Meclizine', 150, 25.00), (67, 'Entresto', 30, 1350.00),
(68, 'Amiodarone', 75, 110.00), (69, 'Digoxin', 130, 40.00), (70, 'Nitroglycerin sublingual', 85, 175.00);

CREATE TABLE Lab_Test_Management(
    test_id INT PRIMARY KEY,
    patient_id INT,
    test_name VARCHAR(100),
    result_status VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);
INSERT INTO Lab_Test_Management VALUES
(1, 1, 'Blood Test', 'Completed'), (2, 2, 'X-Ray', 'Pending'), (3, 3, 'Urinalysis', 'Completed'),
(4, 4, 'MRI Brain Scan', 'Pending'), (5, 5, 'Lipid Profile', 'Completed'), (6, 6, 'CT Abdomen Scan', 'Completed'),
(7, 7, 'Thyroid Panel', 'Pending'), (8, 8, 'Liver Function Test', 'Completed'), (9, 9, 'Ultrasound Pelvis', 'Pending'),
(10, 10, 'Biopsy Analysis', 'Completed'), (11, 11, 'Blood Culture', 'Completed'), (12, 12, 'Pap Smear', 'Pending'),
(13, 13, 'Kidney Function Test', 'Pending'), (14, 14, 'ECG Report', 'Completed'), (15, 15, 'Echocardiogram', 'Completed'),
(16, 16, 'CBC Count', 'Pending'), (17, 17, 'Blood Sugar Fasting', 'Completed'), (18, 18, 'HbA1c Test', 'Completed'),
(19, 19, 'Allergy Skin Panel', 'Pending'), (20, 20, 'Stool Culture', 'Completed'), (21, 21, 'Chest X-Ray', 'Pending'),
(22, 22, 'Bone Density Scan', 'Completed'), (23, 23, 'Uric Acid Test', 'Completed'), (24, 24, 'PSA Screening', 'Pending'),
(25, 25, 'Amylase Test', 'Completed'), (26, 26, 'Electrolyte Panel', 'Pending'), (27, 27, 'Vitamin D Screening', 'Completed'),
(28, 28, 'Vitamin B12 Level', 'Completed'), (29, 29, 'Rheumatoid Factor', 'Pending'), (30, 30, 'CRP Inflammatory Test', 'Completed'),
(31, 31, 'Coagulation Profile', 'Completed'), (32, 32, 'Endoscopy Culture', 'Pending'), (33, 33, 'Cardiac Enzymes', 'Completed'),
(34, 34, 'Arterial Blood Gas', 'Completed'), (35, 35, 'Skin Scraping Test', 'Pending'), (36, 36, 'Spinal Fluid Analysis', 'Completed'),
(37, 37, 'EEG Neuro Test', 'Pending'), (38, 38, 'Mammography', 'Completed'), (39, 39, 'CT Chest Scan', 'Pending'),
(40, 40, 'Iron Studies Panel', 'Completed'), (41, 41, 'Renal Panel', 'Completed'), (42, 42, 'Tumor Marker Assay', 'Pending'),
(43, 43, 'Hepatitis Panel', 'Completed'), (44, 44, 'HIV Screening', 'Pending'), (45, 45, 'Thyroglobulin Test', 'Completed'),
(46, 46, 'PCR Swab Test', 'Completed'), (47, 47, 'Sputum Microscopic', 'Pending'), (48, 48, 'MRI Spine Scan', 'Completed'),
(49, 49, 'Troponin Check', 'Pending'), (50, 50, 'Folic Acid Level', 'Completed'), (51, 51, 'Blood Test', 'Completed'),
(52, 52, 'X-Ray', 'Pending'), (53, 53, 'Cortisol Level Test', 'Completed'), (54, 54, 'ANA Screen', 'Pending'),
(55, 55, 'ABO Blood Typing', 'Completed'), (56, 56, 'D-Dimer Test', 'Completed'), (57, 57, 'Sedimentation Rate', 'Pending'),
(58, 58, 'Heavy Metal Panel', 'Completed'), (59, 59, 'Magnesium Serum Check', 'Pending'), (60, 60, 'Progesterone Level', 'Completed'),
(61, 61, 'Testosterone Screening', 'Completed'), (62, 62, 'CT Angiography', 'Pending'), (63, 63, 'Genomic Sequencing', 'Completed'),
(64, 64, 'Stomach Acid Test', 'Pending'), (65, 65, 'Cardiac Stress Report', 'Completed'), (66, 66, 'Hearing Audiogram', 'Completed'),
(67, 67, 'Ophthalmic Imaging', 'Pending'), (68, 68, 'Urine Protein Estimate', 'Completed'), (69, 69, 'Lyme Disease Antibody', 'Pending'),
(70, 70, 'Synovial Fluid Culture', 'Completed');

CREATE TABLE Cafeteria(
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    item_price DECIMAL(10,2),
    availability VARCHAR(50)
);
INSERT INTO Cafeteria VALUES
(1, 'Burger', 350.00, 'Available'), (2, 'Tea', 120.00, 'Available'), (3, 'Chicken Sandwich', 280.00, 'Available'),
(4, 'Fries', 150.00, 'Available'), (5, 'Coffee', 200.00, 'Available'), (6, 'Green Tea', 130.00, 'Available'),
(7, 'Pizza Slice', 250.00, 'Out of Stock'), (8, 'Fresh Juice', 180.00, 'Available'), (9, 'Club Sandwich', 320.00, 'Available'),
(10, 'Samosa Platter', 100.00, 'Available'), (11, 'Water Bottle Small', 60.00, 'Available'), (12, 'Water Bottle Large', 100.00, 'Available'),
(13, 'Soft Drink Can', 120.00, 'Available'), (14, 'Diet Soda Can', 130.00, 'Available'), (15, 'Chicken Shawarma', 240.00, 'Available'),
(16, 'Vegetable Roll', 110.00, 'Available'), (17, 'Chicken Patty', 90.00, 'Out of Stock'), (18, 'Chocolate Muffin', 160.00, 'Available'),
(19, 'Chocolate Chip Cookie', 80.00, 'Available'), (20, 'Brownie', 150.00, 'Available'), (21, 'Chicken Salad', 300.00, 'Available'),
(22, 'Fruit Salad', 220.00, 'Available'), (23, 'Garlic Bread', 140.00, 'Available'), (24, 'Pasta Bowl', 380.00, 'Available'),
(25, 'Fried Chicken Strip', 290.00, 'Available'), (26, 'Fish and Chips', 450.00, 'Out of Stock'), (27, 'Cappuccino', 250.00, 'Available'),
(28, 'Cafe Latte', 240.00, 'Available'), (29, 'Hot Chocolate', 220.00, 'Available'), (30, 'Iced Coffee', 260.00, 'Available'),
(31, 'Milkshake Strawberry', 240.00, 'Available'), (32, 'Milkshake Chocolate', 250.00, 'Available'), (33, 'Chicken Biryani Rice', 350.00, 'Available'),
(34, 'Egg Fried Rice', 280.00, 'Available'), (35, 'Chicken Manchurian Bowl', 390.00, 'Available'), (36, 'Vegetable Soup', 160.00, 'Available'),
(37, 'Chicken Corn Soup', 190.00, 'Available'), (38, 'Mashed Potatoes', 120.00, 'Available'), (39, 'Coleslaw Side', 70.00, 'Available'),
(40, 'Boiled Egg', 40.00, 'Available'), (41, 'Omelette Toast', 150.00, 'Available'), (42, 'Pancakes Syrup', 220.00, 'Available'),
(43, 'Croissant Plain', 140.00, 'Out of Stock'), (44, 'Cheese Croissant', 180.00, 'Available'), (45, 'Greek Yogurt Pot', 160.00, 'Available'),
(46, 'Granola Bar', 90.00, 'Available'), (47, 'Mixed Nuts Pack', 200.00, 'Available'), (48, 'Apple Fruit', 50.00, 'Available'),
(49, 'Banana Fruit', 30.00, 'Available'), (50, 'Potato Chips Pack', 80.00, 'Available'), (51, 'Noodles Cup', 110.00, 'Available'),
(52, 'Macaroni Cheese', 340.00, 'Available'), (53, 'Beef Burger XL', 420.00, 'Available'), (54, 'Zinger Burger', 390.00, 'Available'),
(55, 'Cheese Slice Extra', 40.00, 'Available'), (56, 'Lemonade Ice', 150.00, 'Available'), (57, 'Mint Margherita', 180.00, 'Available'),
(58, 'Peach Iced Tea', 170.00, 'Available'), (59, 'Vanilla Ice Cream Cup', 120.00, 'Available'), (60, 'Strawberry Ice Cream Cup', 120.00, 'Available'),
(61, 'Waffles Cream', 260.00, 'Available'), (62, 'Donut Glazed', 110.00, 'Available'), (63, 'Donut Chocolate', 130.00, 'Out of Stock'),
(64, 'Club Sandwich Whole Wheat', 340.00, 'Available'), (65, 'Tuna Sandwich', 310.00, 'Available'), (66, 'Beef Steak Sub', 460.00, 'Available'),
(67, 'Chicken Wrap', 270.00, 'Available'), (68, 'Popcorn Bucket', 130.00, 'Available'), (69, 'Pretzel Hot', 160.00, 'Available'),
(70, 'Energy Drink Can', 250.00, 'Available');
SELECT * FROM Patient;
SELECT * FROM Patient_Records;
SELECT * FROM Doctor;
SELECT * FROM Staff;
SELECT * FROM Room;
SELECT * FROM Assign_Doctor;
SELECT * FROM Appointment;
SELECT * FROM Book_Appointment;
SELECT * FROM Cancel_Appointment;
SELECT * FROM Medical_History;
SELECT * FROM Treatment;
SELECT * FROM Billing;
SELECT * FROM Payment_Records;
SELECT * FROM Pharmacy;
SELECT * FROM Lab_Test_Management;
SELECT * FROM Cafeteria;

SELECT * FROM Patient
WHERE city = 'Lahore';

SELECT * FROM Room
WHERE room_status = 'Available';

SELECT * FROM Billing
WHERE bill_status = 'Paid';

SELECT * FROM Doctor
WHERE experience > 10;

SELECT 
    P.patient_name,
    D.doctor_name,
    D.specialization,
    A.appointment_date
FROM Appointment A
INNER JOIN Patient P
ON A.patient_id = P.patient_id
INNER JOIN Doctor D
ON A.doctor_id = D.doctor_id;

SELECT COUNT(*) AS Total_Patients
FROM Patient;

SELECT MAX(treatment_cost) AS Highest_Treatment_Cost
FROM Treatment;

SELECT AVG(total_amount) AS Average_Bill
FROM Billing;

SELECT * FROM Pharmacy
WHERE quantity < 100;

SELECT * FROM Lab_Test_Management
WHERE result_status = 'Pending';