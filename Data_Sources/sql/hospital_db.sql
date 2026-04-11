-- ============================================================
-- Hospital Management System - MySQL Schema + Data
-- ============================================================

CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

SET FOREIGN_KEY_CHECKS = 0;

-- ------------------------------------------------------------
-- 1. Department
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Department (
    department_id   VARCHAR(10)  PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    floor           VARCHAR(10),
    head_doctor_id  VARCHAR(10),
    total_staff     INT,
    phone_extension VARCHAR(10)
);
INSERT INTO Department VALUES ('DEPT001', 'Cardiology', '3', 'D001', '15', '1001');
INSERT INTO Department VALUES ('DEPT002', 'Neurology', '4', 'D002', '12', '1002');
INSERT INTO Department VALUES ('DEPT003', 'Orthopedics', '2', 'D003', '18', '1003');
INSERT INTO Department VALUES ('DEPT004', 'Gynecology', '5', 'D004', '14', '1004');
INSERT INTO Department VALUES ('DEPT005', 'Pediatrics', '1', 'D005', '16', '1005');
INSERT INTO Department VALUES ('DEPT006', 'Dermatology', '3', 'D006', '8', '1006');
INSERT INTO Department VALUES ('DEPT007', 'Gastroenterology', '4', 'D007', '10', '1007');
INSERT INTO Department VALUES ('DEPT008', 'Ophthalmology', '2', 'D008', '9', '1008');
INSERT INTO Department VALUES ('DEPT009', 'ENT', '5', 'D009', '7', '1009');
INSERT INTO Department VALUES ('DEPT010', 'Psychiatry', '6', 'D010', '6', '1010');
INSERT INTO Department VALUES ('DEPT011', 'Urology', '3', 'D011', '8', '1011');
INSERT INTO Department VALUES ('DEPT012', 'Endocrinology', '4', 'D012', '6', '1012');
INSERT INTO Department VALUES ('DEPT013', 'Nephrology', '2', 'D013', '9', '1013');
INSERT INTO Department VALUES ('DEPT014', 'Pulmonology', '5', 'D014', '10', '1014');
INSERT INTO Department VALUES ('DEPT015', 'Oncology', '6', 'D015', '14', '1015');

-- ------------------------------------------------------------
-- 2. Doctor
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Doctor (
    doctor_id         VARCHAR(10)  PRIMARY KEY,
    name              VARCHAR(100) NOT NULL,
    specialization    VARCHAR(100),
    department        VARCHAR(100),
    salary            DECIMAL(10,2),
    status            VARCHAR(20),
    availability      VARCHAR(20),
    joining_date      DATE,
    qualification     VARCHAR(50),
    experience_years  INT,
    phone             VARCHAR(15),
    email             VARCHAR(100),
    img               VARCHAR(255)
);
INSERT INTO Doctor VALUES ('D001', 'Dr. Aditya Gupta', 'Cardiologist', 'Cardiology', '150000', 'Active', 'Available', '2015-06-01', 'MD', '12', '9876543210', 'aditya.gupta@hospital.com', 'https://i.ibb.co/r2Vyh5MX/Dr-6.jpg');
INSERT INTO Doctor VALUES ('D002', 'Dr. Neha Verma', 'Neurologist', 'Neurology', '145000', 'Active', 'Available', '2016-07-15', 'MD', '10', '8765432109', 'neha.verma@hospital.com', 'https://i.ibb.co/jkYD4jsY/DR-5-1.jpg');
INSERT INTO Doctor VALUES ('D003', 'Dr. Rajesh Kumar', 'Orthopedic Surgeon', 'Orthopedics', '140000', 'Active', 'On Leave', '2015-08-20', 'MS', '11', '7654321098', 'rajesh.kumar@hospital.com', 'https://i.ibb.co/8D1NnQFm/DR-5.jpg');
INSERT INTO Doctor VALUES ('D004', 'Dr. Priya Sharma', 'Gynecologist', 'Gynecology', '135000', 'Active', 'Available', '2017-01-10', 'MBBS', '8', '6543210987', 'priya.sharma@hospital.com', 'https://i.ibb.co/bjnbLqRw/DR-4.jpg');
INSERT INTO Doctor VALUES ('D005', 'Dr. Vikram Singh', 'Pediatrician', 'Pediatrics', '130000', 'Active', 'Available', '2016-03-05', 'MD (Pediatrics)', '9', 'vikram.singh@hospital.com', NULL, 'https://i.ibb.co/gFzShn7G/DR-3.jpg');
INSERT INTO Doctor VALUES ('D006', 'Dr. Anita Patel', 'Dermatologist', 'Dermatology', '125000', 'Active', 'Available', '2018-02-15', 'MD (Dermatology)', '7', 'anita.patel@hospital.com', NULL, 'https://i.ibb.co/7NQdkhRx/DR-2.jpg');
INSERT INTO Doctor VALUES ('D007', 'Dr. Suresh Nair', 'Gastroenterologist', 'Gastroenterology', '155000', 'Active', 'On Leave', '2014-05-20', 'MD', '13', '3210987654', 'suresh.nair@hospital.com', 'https://i.ibb.co/5g6N8dwD/DR-1.jpg');
INSERT INTO Doctor VALUES ('D008', 'Dr. Kavita Menon', 'Ophthalmologist', 'Ophthalmology', '120000', 'Active', 'Available', '2019-04-10', 'MS (Ophthalmology)', '6', 'kavita.menon@hospital.com', NULL, 'https://i.ibb.co/r2Vyh5MX/Dr-6.jpg');
INSERT INTO Doctor VALUES ('D009', 'Dr. Deepak Joshi', 'ENT Specialist', 'ENT', '115000', 'Active', 'Available', '2020-06-25', 'MS (ENT)', '5', 'deepak.joshi@hospital.com', NULL, 'https://i.ibb.co/jkYD4jsY/DR-5-1.jpg');
INSERT INTO Doctor VALUES ('D010', 'Dr. Meera Reddy', 'Psychiatrist', 'Psychiatry', '130000', 'Active', 'Available', '2017-08-15', 'MD (Psychiatry)', '8', 'meera.reddy@hospital.com', NULL, 'https://i.ibb.co/8D1NnQFm/DR-5.jpg');
INSERT INTO Doctor VALUES ('D011', 'Dr. Sanjay Malhotra', 'Urologist', 'Urology', '145000', 'Active', 'Available', '2015-09-30', 'MS', '11', '8765432119', 'sanjay.malhotra@hospital.com', 'https://i.ibb.co/bjnbLqRw/DR-4.jpg');
INSERT INTO Doctor VALUES ('D012', 'Dr. Pooja Das', 'Endocrinologist', 'Endocrinology', '140000', 'Active', 'On Leave', '2016-11-20', 'MD', '10', '7654321108', 'pooja.das@hospital.com', 'https://i.ibb.co/gFzShn7G/DR-3.jpg');
INSERT INTO Doctor VALUES ('D013', 'Dr. Amit Khanna', 'Nephrologist', 'Nephrology', '150000', 'Active', 'Available', '2014-10-15', 'MD', '12', '6543210997', 'amit.khanna@hospital.com', 'https://i.ibb.co/7NQdkhRx/DR-2.jpg');
INSERT INTO Doctor VALUES ('D014', 'Dr. Sonali Bhatia', 'Pulmonologist', 'Pulmonology', '135000', 'Active', 'Available', '2017-05-05', 'MD (Pulmonology)', '8', 'sonali.bhatia@hospital.com', NULL, 'https://i.ibb.co/5g6N8dwD/DR-1.jpg');
INSERT INTO Doctor VALUES ('D015', 'Dr. Ravi Mehta', 'Oncologist', 'Oncology', '160000', 'Active', 'Available', '2013-03-10', 'MD', '14', '4321098775', 'ravi.mehta@hospital.com', 'https://i.ibb.co/5g6N8dwD/DR-1.jpg');

-- ------------------------------------------------------------
-- 3. Patient
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Patient (
    patient_id      VARCHAR(10)  PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    age             INT,
    gender          VARCHAR(10),
    weight          DECIMAL(5,2),
    blood_group     VARCHAR(5),
    address         VARCHAR(200),
    state           VARCHAR(50),
    phone           VARCHAR(15),
    email           VARCHAR(100),
    admission_date  DATE,
    discharge_date  DATE,
    status          VARCHAR(20),
    img             VARCHAR(255)
);
INSERT INTO Patient VALUES ('P001', 'Rahul Sharma', '45', 'Male', '78', 'B+', 'Park Street', 'Delhi', '9876543210', 'rahul.sharma@email.com', '2023-05-15', '2023-05-20', 'Discharged', 'https://i.ibb.co/4ZXXPz6S/P4.jpg');
INSERT INTO Patient VALUES ('P002', 'Priya Singh', '32', 'Female', '65', 'O+', 'Lake Road', 'Mumbai', '8765432109', 'priya.singh@email.com', '2023-05-18', '2023-05-25', 'Discharged', 'https://i.ibb.co/DPS8djNk/p-m-5.jpg');
INSERT INTO Patient VALUES ('P003', 'Amit Kumar', '58', 'Male', '82', 'AB+', 'Hill View', 'Bangalore', '7654321098', 'amit.kumar@email.com', '2023-05-20', '2023-05-30', 'Discharged', 'https://i.ibb.co/spTJqyKK/P3-1.jpg');
INSERT INTO Patient VALUES ('P004', 'Sneha Patel', '28', 'Female', '59', 'A-', 'River Side', 'Chennai', '6543210987', 'sneha.patel@email.com', '2023-06-02', '2023-06-10', 'Discharged', 'https://i.ibb.co/S15ts9X/p-m3.jpg');
INSERT INTO Patient VALUES ('P005', 'Vikram Malhotra', '52', 'Male', '88', 'O-', 'Mountain View', 'Kolkata', '5432109876', 'vikram.malhotra@email.com', '2023-06-05', '2023-06-15', 'Discharged', 'https://i.ibb.co/6RN9f482/P2.jpg');
INSERT INTO Patient VALUES ('P006', 'Nisha Joshi', '37', 'Female', '62', 'B-', 'Valley Road', 'Hyderabad', '4321098765', 'nisha.joshi@email.com', '2023-06-10', '2023-06-14', 'Discharged', 'https://i.ibb.co/DPS8djNk/p-m-5.jpg');
INSERT INTO Patient VALUES ('P007', 'Suresh Reddy', '63', 'Male', '75', 'A+', 'Cloud Street', 'Pune', '3210987654', 'suresh.reddy@email.com', '2023-06-15', NULL, 'Admitted', 'https://i.ibb.co/gL9c0QTx/P1-1.jpg');
INSERT INTO Patient VALUES ('P008', 'Meera Gupta', '41', 'Female', '70', 'AB-', 'Star Avenue', 'Ahmedabad', '2109876543', 'meera.gupta@email.com', '2023-06-18', '2023-06-25', 'Discharged', 'https://i.ibb.co/S15ts9X/p-m3.jpg');
INSERT INTO Patient VALUES ('P009', 'Rajiv Verma', '49', 'Male', '85', 'B+', 'Moon Road', 'Jaipur', '1098765432', 'rajiv.verma@email.com', '2023-06-20', '2023-06-30', 'Discharged', 'https://i.ibb.co/4ZXXPz6S/P4.jpg');
INSERT INTO Patient VALUES ('P010', 'Kavita Rao', '35', 'Female', '61', 'O+', 'Sun Lane', 'Lucknow', '9876543220', 'kavita.rao@email.com', '2023-07-01', NULL, 'Admitted', 'https://i.ibb.co/DPS8djNk/p-m-5.jpg');
INSERT INTO Patient VALUES ('P011', 'Deepak Menon', '55', 'Male', '79', 'AB+', 'Galaxy Avenue', 'Chandigarh', '8765432119', 'deepak.menon@email.com', '2023-07-05', '2023-07-12', 'Discharged', 'https://i.ibb.co/6RN9f482/P2.jpg');
INSERT INTO Patient VALUES ('P012', 'Anita Saxena', '30', 'Female', '58', 'A-', 'Neptune Road', 'Bhopal', '7654321108', 'anita.saxena@email.com', '2023-07-10', '2023-07-15', 'Discharged', 'https://i.ibb.co/PGLMhWdT/p-m-4.png');
INSERT INTO Patient VALUES ('P013', 'Sanjay Bhatia', '60', 'Male', '77', 'O-', 'Jupiter Street', 'Indore', '6543210997', 'sanjay.bhatia@email.com', '2023-07-15', NULL, 'Admitted', 'https://i.ibb.co/4ZXXPz6S/P4.jpg');
INSERT INTO Patient VALUES ('P014', 'Pooja Mehta', '34', 'Female', '63', 'B-', 'Mars Lane', 'Nagpur', '5432109886', 'pooja.mehta@email.com', '2023-07-18', '2023-07-25', 'Discharged', 'https://i.ibb.co/S15ts9X/p-m3.jpg');
INSERT INTO Patient VALUES ('P015', 'Ravi Khanna', '50', 'Male', '81', 'A+', 'Venus Road', 'Kanpur', '4321098775', 'ravi.khanna@email.com', '2023-07-20', '2023-07-28', 'Discharged', 'https://i.ibb.co/6RN9f482/P2.jpg');
INSERT INTO Patient VALUES ('P016', 'Sonali Das', '39', 'Female', '66', 'AB-', 'Earth Avenue', 'Kochi', '3210987664', 'sonali.das@email.com', '2023-08-01', '2023-08-10', 'Discharged', 'https://i.ibb.co/PGLMhWdT/p-m-4.png');
INSERT INTO Patient VALUES ('P017', 'Ajay Nair', '61', 'Male', '76', 'B+', 'Mercury Street', 'Guwahati', '2109876553', 'ajay.nair@email.com', '2023-08-05', NULL, 'Admitted', 'https://i.ibb.co/4ZXXPz6S/P4.jpg');
INSERT INTO Patient VALUES ('P018', 'Neha Sharma', '33', 'Female', '60', 'O+', 'Saturn Road', 'Patna', '1098765442', 'neha.sharma@email.com', '2023-08-10', '2023-08-15', 'Discharged', 'https://i.ibb.co/PGLMhWdT/p-m-4.png');
INSERT INTO Patient VALUES ('P019', 'Vinod Kapoor', '57', 'Male', '80', 'AB+', 'Pluto Avenue', 'Vadodara', '9876543230', 'vinod.kapoor@email.com', '2023-08-15', '2023-08-25', 'Discharged', 'https://i.ibb.co/6RN9f482/P2.jpg');
INSERT INTO Patient VALUES ('P020', 'Anjali Mathur', '36', 'Female', '64', 'A-', 'Comet Lane', 'Vishakhapatnam', '8765432129', 'anjali.mathur@email.com', '2023-08-20', NULL, 'Admitted', 'https://i.ibb.co/PGLMhWdT/p-m-4.png');
INSERT INTO Patient VALUES ('P021', 'Dinesh Agarwal', '53', 'Male', '83', 'O-', 'Meteor Road', 'Surat', '7654321118', 'dinesh.agarwal@email.com', '2023-09-01', '2023-09-10', 'Discharged', 'https://i.ibb.co/4ZXXPz6S/P4.jpg');
INSERT INTO Patient VALUES ('P022', 'Sunita Verma', '38', 'Female', '65', 'B-', 'Galaxy Street', 'Ranchi', '6543210987', 'sunita.verma@email.com', '2023-09-05', '2023-09-12', 'Discharged', 'https://i.ibb.co/4Csnhg1/p-m2.jpg');
INSERT INTO Patient VALUES ('P023', 'Kishore Kumar', '64', 'Male', '74', 'A+', 'Universe Lane', 'Trivandrum', '5432109876', 'kishore.kumar@email.com', '2023-09-10', NULL, 'Admitted', 'https://i.ibb.co/6RN9f482/P2.jpg');
INSERT INTO Patient VALUES ('P024', 'Maya Pillai', '40', 'Female', '67', 'AB-', 'Solar Road', 'Bhubaneswar', '4321098765', 'maya.pillai@email.com', '2023-09-15', '2023-09-25', 'Discharged', 'https://i.ibb.co/gL9c0QTx/P1-1.jpg');
INSERT INTO Patient VALUES ('P025', 'Prakash Jha', '59', 'Male', '82', 'B+', 'Lunar Avenue', 'Agra', '3210987654', 'prakash.jha@email.com', '2023-09-20', '2023-09-30', 'Discharged', 'https://i.ibb.co/4ZXXPz6S/P4.jpg');
INSERT INTO Patient VALUES ('P026', 'Geeta Singh', '31', 'Female', '59', 'O+', 'Star Street', 'Mysore', '2109876543', 'geeta.singh@email.com', '2023-10-01', NULL, 'Admitted', 'https://i.ibb.co/spTJqyKK/P3-1.jpg');
INSERT INTO Patient VALUES ('P027', 'Nitin Mehra', '54', 'Male', '78', 'AB+', 'Planet Road', 'Dehradun', '1098765432', 'nitin.mehra@email.com', '2023-10-05', '2023-10-15', 'Discharged', 'https://i.ibb.co/6RN9f482/P2.jpg');
INSERT INTO Patient VALUES ('P028', 'Lata Iyer', '29', 'Female', '62', 'A-', 'Cosmic Lane', 'Jammu', '9876543210', 'lata.iyer@email.com', '2023-10-10', '2023-10-18', 'Discharged', 'https://i.ibb.co/S15ts9X/p-m3.jpg');
INSERT INTO Patient VALUES ('P029', 'Santosh Nair', '62', 'Male', '76', 'O-', 'Astral Avenue', 'Shimla', '8765432109', 'santosh.nair@email.com', '2023-10-15', NULL, 'Admitted', 'https://i.ibb.co/6RN9f482/P2.jpg');
INSERT INTO Patient VALUES ('P030', 'Divya Menon', '42', 'Female', '68', 'B-', 'Celestial Road', 'Pondicherry', '7654321098', 'divya.menon@email.com', '2023-10-20', '2023-10-28', 'Discharged', 'https://i.ibb.co/S15ts9X/p-m3.jpg');

-- ------------------------------------------------------------
-- 4. Staff
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Staff (
    staff_id      VARCHAR(10)  PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    department_id VARCHAR(10),
    role          VARCHAR(50),
    salary        DECIMAL(10,2),
    joining_date  DATE,
    shift         VARCHAR(20),
    phone         VARCHAR(15),
    email         VARCHAR(100),
    address       VARCHAR(200)
);
INSERT INTO Staff VALUES ('S001', 'Anand Kumar', 'DEPT001', 'Nurse', '45000', '2018-01-10', 'Morning', '9876543210', 'anand.kumar@hospital.com', '123 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S002', 'Sunita Verma', 'DEPT001', 'Nurse', '42000', '2019-03-15', 'Evening', '8765432109', 'sunita.verma@hospital.com', '124 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S003', 'Rajiv Singh', 'DEPT001', 'Ward Boy', '25000', '2020-06-20', 'Night', '7654321098', 'rajiv.singh@hospital.com', '125 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S004', 'Meena Patel', 'DEPT002', 'Nurse', '44000', '2018-05-12', 'Morning', '6543210987', 'meena.patel@hospital.com', '126 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S005', 'Suresh Nair', 'DEPT002', 'Nurse', '43000', '2019-07-18', 'Evening', '5432109876', 'suresh.nair@hospital.com', '127 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S006', 'Kavita Menon', 'DEPT002', 'Ward Boy', '26000', '2020-09-25', 'Night', '4321098765', 'kavita.menon@hospital.com', '128 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S007', 'Rahul Sharma', 'DEPT003', 'Nurse', '46000', '2017-08-15', 'Morning', '3210987654', 'rahul.sharma@hospital.com', '129 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S008', 'Priya Singh', 'DEPT003', 'Nurse', '44000', '2018-10-20', 'Evening', '2109876543', 'priya.singh@hospital.com', '130 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S009', 'Amit Kumar', 'DEPT003', 'Ward Boy', '27000', '2019-12-10', 'Night', '1098765432', 'amit.kumar@hospital.com', '131 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S010', 'Neha Joshi', 'DEPT004', 'Nurse', '45000', '2018-02-05', 'Morning', '9876543220', 'neha.joshi@hospital.com', '132 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S011', 'Vikram Malhotra', 'DEPT004', 'Nurse', '43000', '2019-04-15', 'Evening', '8765432119', 'vikram.m@hospital.com', '133 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S012', 'Nisha Reddy', 'DEPT004', 'Ward Boy', '26000', '2020-07-25', 'Night', '7654321108', 'nisha.r@hospital.com', '134 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S013', 'Deepak Gupta', 'DEPT005', 'Nurse', '47000', '2017-03-10', 'Morning', '6543210997', 'deepak.g@hospital.com', '135 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S014', 'Anita Saxena', 'DEPT005', 'Nurse', '45000', '2018-05-20', 'Evening', '5432109886', 'anita.s@hospital.com', '136 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S015', 'Sanjay Bhatia', 'DEPT005', 'Ward Boy', '28000', '2019-08-15', 'Night', '4321098775', 'sanjay.b@hospital.com', '137 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S016', 'Divya Mehta', 'DEPT006', 'Nurse', '44000', '2018-06-25', 'Morning', '3210987664', 'divya.m@hospital.com', '138 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S017', 'Rakesh Das', 'DEPT007', 'Nurse', '45000', '2018-09-10', 'Morning', '2109876553', 'rakesh.d@hospital.com', '139 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S018', 'Anjali Khanna', 'DEPT008', 'Nurse', '43000', '2019-01-15', 'Morning', '1098765442', 'anjali.k@hospital.com', '140 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S019', 'Vivek Iyer', 'DEPT009', 'Nurse', '44000', '2018-11-05', 'Morning', '9876543230', 'vivek.i@hospital.com', '141 Staff Quarters Hospital Campus');
INSERT INTO Staff VALUES ('S020', 'Geeta Nair', 'DEPT010', 'Nurse', '42000', '2019-12-20', 'Morning', '8765432129', 'geeta.n@hospital.com', '142 Staff Quarters Hospital Campus');

-- ------------------------------------------------------------
-- 5. Supplier
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Supplier (
    supplier_id          VARCHAR(10)  PRIMARY KEY,
    name                 VARCHAR(100) NOT NULL,
    contact_person       VARCHAR(100),
    phone                VARCHAR(15),
    email                VARCHAR(100),
    address              VARCHAR(200),
    city                 VARCHAR(50),
    state                VARCHAR(50),
    pincode              VARCHAR(10),
    contract_start_date  DATE,
    contract_end_date    DATE
);
INSERT INTO Supplier VALUES ('SUP001', 'MediPharm Distributors', 'Rajesh Gupta', '9876543210', 'rajesh@medipharm.com', 'Phase 1" Industrial Area', 'Industrial Area', 'Delhi', '110001', '2023-01-01', '2024-12-31');
INSERT INTO Supplier VALUES ('SUP002', 'HealthCare Supplies', 'Priya Sharma', '8765432109', 'priya@healthcaresupplies.com', 'Sector 5" Business Park', 'Business Park', 'Maharashtra', '400001', '2023-01-15', '2024-12-31');
INSERT INTO Supplier VALUES ('SUP003', 'MediCore Enterprises', 'Amit Kumar', '7654321098', 'amit@medicore.com', 'Zone 3" Corporate Hub', 'Corporate Hub', 'Karnataka', '560001', '2023-02-01', '2024-12-31');
INSERT INTO Supplier VALUES ('SUP004', 'LifeLine Pharmaceuticals', 'Sneha Patel', '6543210987', 'sneha@lifeline.com', 'Block B" Pharma Valley', 'Pharma Valley', 'Tamil Nadu', '600001', '2023-02-15', '2024-12-31');
INSERT INTO Supplier VALUES ('SUP005', 'MediTech Solutions', 'Vikram Singh', '5432109876', 'vikram@meditech.com', 'Area 7" Tech Park', 'Tech Park', 'Telangana', '500001', '2023-03-01', '2024-12-31');

-- ------------------------------------------------------------
-- 6. Medical_Stock
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Medical_Stock (
    medicine_id      VARCHAR(10)  PRIMARY KEY,
    name             VARCHAR(100) NOT NULL,
    category         VARCHAR(50),
    supplier_id      VARCHAR(10),
    cost_price       DECIMAL(10,2),
    unit_price       DECIMAL(10,2),
    stock_qty        INT,
    expiry_date      DATE,
    manufacture_date DATE,
    batch_number     VARCHAR(20),
    reorder_level    INT
);
INSERT INTO Medical_Stock VALUES ('MED001', 'Paracetamol', 'Pain Relief', 'SUP001', '2.5', '5', '500', '2024-12-31', '2023-01-15', 'BT12345', '100');
INSERT INTO Medical_Stock VALUES ('MED002', 'Amoxicillin', 'Antibiotic', 'SUP002', '5', '10', '300', '2024-06-30', '2023-02-20', 'BT23456', '50');
INSERT INTO Medical_Stock VALUES ('MED003', 'Omeprazole', 'Antacid', 'SUP003', '4', '8', '400', '2025-03-31', '2023-03-10', 'BT34567', '75');
INSERT INTO Medical_Stock VALUES ('MED004', 'Loratadine', 'Antihistamine', 'SUP001', '3', '6', '350', '2024-09-30', '2023-01-25', 'BT45678', '60');
INSERT INTO Medical_Stock VALUES ('MED005', 'Metformin', 'Antidiabetic', 'SUP002', '3.5', '7', '250', '2024-08-31', '2023-02-15', 'BT56789', '40');
INSERT INTO Medical_Stock VALUES ('MED006', 'Atorvastatin', 'Cholesterol', 'SUP003', '6', '12', '200', '2024-07-31', '2023-03-05', 'BT67890', '35');
INSERT INTO Medical_Stock VALUES ('MED007', 'Salbutamol', 'Bronchodilator', 'SUP001', '4.5', '9', '180', '2024-11-30', '2023-01-30', 'BT78901', '30');
INSERT INTO Medical_Stock VALUES ('MED008', 'Amlodipine', 'Antihypertensive', 'SUP002', '5.5', '11', '220', '2024-10-31', '2023-02-25', 'BT89012', '40');
INSERT INTO Medical_Stock VALUES ('MED009', 'Diazepam', 'Sedative', 'SUP003', '7', '14', '150', '2024-05-31', '2023-03-15', 'BT90123', '25');
INSERT INTO Medical_Stock VALUES ('MED010', 'Insulin', 'Antidiabetic', 'SUP001', '15', '30', '100', '2024-04-30', '2023-01-20', 'BT01234', '20');
INSERT INTO Medical_Stock VALUES ('MED011', 'Ibuprofen', 'Pain Relief', 'SUP002', '3', '6', '450', '2025-01-31', '2023-02-10', 'BT12345', '90');
INSERT INTO Medical_Stock VALUES ('MED012', 'Cetirizine', 'Antihistamine', 'SUP003', '2.5', '5', '380', '2024-08-31', '2023-03-20', 'BT23456', '70');
INSERT INTO Medical_Stock VALUES ('MED013', 'Ceftriaxone', 'Antibiotic', 'SUP001', '8', '16', '120', '2024-03-31', '2023-01-10', 'BT34567', '20');
INSERT INTO Medical_Stock VALUES ('MED014', 'Simvastatin', 'Cholesterol', 'SUP002', '5.5', '11', '180', '2025-02-28', '2023-02-05', 'BT45678', '30');
INSERT INTO Medical_Stock VALUES ('MED015', 'Ranitidine', 'Antacid', 'SUP003', '4', '8', '250', '2024-06-30', '2023-03-25', 'BT56789', '45');

-- ------------------------------------------------------------
-- 7. Medical_Tests
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Medical_Tests (
    test_id           VARCHAR(10)  PRIMARY KEY,
    test_name         VARCHAR(100) NOT NULL,
    category          VARCHAR(50),
    department_id     VARCHAR(10),
    cost              DECIMAL(10,2),
    duration_minutes  INT,
    fasting_required  VARCHAR(5)
);
INSERT INTO Medical_Tests VALUES ('TEST001', 'Complete Blood Count', 'Hematology', 'DEPT015', '500', '30', 'Yes');
INSERT INTO Medical_Tests VALUES ('TEST002', 'Blood Glucose', 'Biochemistry', 'DEPT012', '300', '15', 'Yes');
INSERT INTO Medical_Tests VALUES ('TEST003', 'Lipid Profile', 'Biochemistry', 'DEPT012', '800', '30', 'Yes');
INSERT INTO Medical_Tests VALUES ('TEST004', 'Liver Function Test', 'Biochemistry', 'DEPT007', '1000', '45', 'Yes');
INSERT INTO Medical_Tests VALUES ('TEST005', 'Kidney Function Test', 'Biochemistry', 'DEPT013', '1000', '45', 'Yes');
INSERT INTO Medical_Tests VALUES ('TEST006', 'Thyroid Profile', 'Endocrinology', 'DEPT012', '1200', '30', 'Yes');
INSERT INTO Medical_Tests VALUES ('TEST007', 'Electrocardiogram (ECG)', 'Cardiology', 'DEPT001', '1500', '20', 'No');
INSERT INTO Medical_Tests VALUES ('TEST008', 'X-Ray Chest', 'Radiology', 'DEPT014', '800', '15', 'No');
INSERT INTO Medical_Tests VALUES ('TEST009', 'CT Scan', 'Radiology', 'DEPT014', '4500', '45', 'No');
INSERT INTO Medical_Tests VALUES ('TEST010', 'MRI Scan', 'Radiology', 'DEPT014', '7500', '60', 'No');
INSERT INTO Medical_Tests VALUES ('TEST011', 'Ultrasound', 'Radiology', 'DEPT014', '1800', '30', 'Depends');
INSERT INTO Medical_Tests VALUES ('TEST012', 'Urine Analysis', 'Pathology', 'DEPT013', '400', '60', 'No');
INSERT INTO Medical_Tests VALUES ('TEST013', 'Stool Analysis', 'Pathology', 'DEPT007', '500', '60', 'No');
INSERT INTO Medical_Tests VALUES ('TEST014', 'Pap Smear', 'Gynecology', 'DEPT004', '1200', '30', 'No');
INSERT INTO Medical_Tests VALUES ('TEST015', 'Mammogram', 'Radiology', 'DEPT004', '2000', '30', 'No');

-- ------------------------------------------------------------
-- 8. Rooms
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Rooms (
    room_id                    VARCHAR(10)  PRIMARY KEY,
    department_id              VARCHAR(10),
    room_type                  VARCHAR(30),
    floor                      VARCHAR(10),
    capacity                   INT,
    status                     VARCHAR(20),
    daily_charge               DECIMAL(10,2),
    avg_monthly_maintenance    DECIMAL(10,2)
);
INSERT INTO Rooms VALUES ('R001', 'DEPT001', 'General', '3', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R002', 'DEPT001', 'Private', '3', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R003', 'DEPT001', 'ICU', '3', '1', 'Available', '5000', '5000');
INSERT INTO Rooms VALUES ('R004', 'DEPT002', 'General', '4', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R005', 'DEPT002', 'Private', '4', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R006', 'DEPT002', 'ICU', '4', '1', 'Available', '5000', '5000');
INSERT INTO Rooms VALUES ('R007', 'DEPT003', 'General', '2', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R008', 'DEPT003', 'Private', '2', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R009', 'DEPT003', 'ICU', '2', '1', 'Available', '5000', '5000');
INSERT INTO Rooms VALUES ('R010', 'DEPT004', 'General', '5', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R011', 'DEPT004', 'Private', '5', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R012', 'DEPT004', 'ICU', '5', '1', 'Available', '5000', '5000');
INSERT INTO Rooms VALUES ('R013', 'DEPT005', 'General', '1', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R014', 'DEPT005', 'Private', '1', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R015', 'DEPT005', 'ICU', '1', '1', 'Available', '5000', '5000');
INSERT INTO Rooms VALUES ('R016', 'DEPT006', 'General', '3', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R017', 'DEPT006', 'Private', '3', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R018', 'DEPT007', 'General', '4', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R019', 'DEPT007', 'Private', '4', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R020', 'DEPT007', 'ICU', '4', '1', 'Available', '5000', '5000');
INSERT INTO Rooms VALUES ('R021', 'DEPT008', 'General', '2', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R022', 'DEPT008', 'Private', '2', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R023', 'DEPT009', 'General', '5', '4', 'Available', '1000', '1000');
INSERT INTO Rooms VALUES ('R024', 'DEPT009', 'Private', '5', '1', 'Occupied', '3000', '3000');
INSERT INTO Rooms VALUES ('R025', 'DEPT010', 'General', '6', '4', 'Available', '1000', '1000');

-- ------------------------------------------------------------
-- 9. Beds
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Beds (
    bed_id        VARCHAR(10)  PRIMARY KEY,
    room_id       VARCHAR(10),
    status        VARCHAR(20),
    patient_id    VARCHAR(10),
    occupied_from DATE,
    occupied_till DATE
);
INSERT INTO Beds VALUES ('B001', 'R001', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B002', 'R001', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B003', 'R001', 'Occupied', 'P007', '2023-06-15', NULL);
INSERT INTO Beds VALUES ('B004', 'R001', 'Occupied', 'P010', '2023-07-01', NULL);
INSERT INTO Beds VALUES ('B005', 'R002', 'Occupied', 'P013', '2023-07-15', NULL);
INSERT INTO Beds VALUES ('B006', 'R003', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B007', 'R004', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B008', 'R004', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B009', 'R004', 'Occupied', 'P017', '2023-08-05', NULL);
INSERT INTO Beds VALUES ('B010', 'R004', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B011', 'R005', 'Occupied', 'P020', '2023-08-20', NULL);
INSERT INTO Beds VALUES ('B012', 'R006', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B013', 'R007', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B014', 'R007', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B015', 'R007', 'Occupied', 'P023', '2023-09-10', NULL);
INSERT INTO Beds VALUES ('B016', 'R007', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B017', 'R008', 'Occupied', 'P026', '2023-10-01', NULL);
INSERT INTO Beds VALUES ('B018', 'R009', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B019', 'R010', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B020', 'R010', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B021', 'R010', 'Occupied', 'P029', '2023-10-15', NULL);
INSERT INTO Beds VALUES ('B022', 'R010', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B023', 'R011', 'Occupied', 'P001', '2023-05-15', '2023-05-20');
INSERT INTO Beds VALUES ('B024', 'R012', 'Available', NULL, NULL, NULL);
INSERT INTO Beds VALUES ('B025', 'R013', 'Available', NULL, NULL, NULL);

-- ------------------------------------------------------------
-- 10. Appointment
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Appointment (
    appointment_id    VARCHAR(10)  PRIMARY KEY,
    patient_id        VARCHAR(10),
    doctor_id         VARCHAR(10),
    appointment_date  DATE,
    appointment_time  TIME,
    status            VARCHAR(20),
    reason            VARCHAR(200),
    notes             TEXT,
    suggest           TEXT,
    fees              DECIMAL(10,2),
    payment_method    VARCHAR(30),
    discount          DECIMAL(10,2),
    diagnosis         VARCHAR(200)
);
INSERT INTO Appointment VALUES ('APP001', 'P001', 'D001', '2023-05-14', '10:00:00', 'Completed', 'Chest Pain', 'Patient complained of chest pain', 'prescribed medication', '800', 'Cash', '0', 'Heart attack');
INSERT INTO Appointment VALUES ('APP002', 'P002', 'D004', '2023-05-17', '11:30:00', 'Completed', 'Regular Checkup', 'Regular gynecological checkup', 'all normal', '700', 'Credit Card', '0', 'menstrual disorders');
INSERT INTO Appointment VALUES ('APP003', 'P003', 'D007', '2023-05-19', '14:00:00', 'Completed', 'Stomach Pain', 'Patient has chronic gastritis', 'advised diet change', '850', 'Insurance', '0', 'Acid reflux');
INSERT INTO Appointment VALUES ('APP004', 'P004', 'D006', '2023-06-01', '09:30:00', 'Completed', 'Skin Rash', 'Allergic reaction', 'prescribed antihistamines', '650', 'Cash', '50', 'Acne');
INSERT INTO Appointment VALUES ('APP005', 'P005', 'D003', '2023-06-04', '13:00:00', 'Completed', 'Back Pain', 'Lumbar strain', 'physiotherapy recommended', '800', 'Insurance', '0', 'joint replacement');
INSERT INTO Appointment VALUES ('APP006', 'P006', 'D009', '2023-06-09', '16:30:00', 'Completed', 'Ear Infection', 'Ear infection diagnosed', 'prescribed antibiotics', '700', 'Credit Card', '0', 'Sinusitis');
INSERT INTO Appointment VALUES ('APP007', 'P007', 'D002', '2023-06-14', '10:00:00', 'Completed', 'Severe Headache', 'Possible migraine', 'further tests needed', '850', 'Insurance', '0', 'Stroke');
INSERT INTO Appointment VALUES ('APP008', 'P008', 'D010', '2023-06-17', '11:30:00', 'Completed', 'Anxiety Issues', 'Patient suffering from anxiety', 'therapy recommended', '900', 'Cash', '100', 'Depression');
INSERT INTO Appointment VALUES ('APP009', 'P009', 'D011', '2023-06-19', '14:00:00', 'Completed', 'Urinary Issues', 'UTI diagnosed', 'prescribed antibiotics', '750', 'Credit Card', '0', 'Kidney stones,');
INSERT INTO Appointment VALUES ('APP010', 'P010', 'D005', '2023-06-30', '09:30:00', 'Completed', 'Child Fever', 'Child has viral fever', 'prescribed medication', '600', 'Insurance', '0', 'Growth issues');
INSERT INTO Appointment VALUES ('APP011', 'P011', 'D013', '2023-07-04', '13:00:00', 'Completed', 'Kidney Pain', 'Kidney stones suspected', 'tests ordered', '900', 'Cash', '0', 'Chronic kidney disease');
INSERT INTO Appointment VALUES ('APP012', 'P012', 'D006', '2023-07-09', '16:30:00', 'Completed', 'Acne Treatment', 'Severe acne', 'prescribed medication', '650', 'Credit Card', '50', 'skin infections');
INSERT INTO Appointment VALUES ('APP013', 'P013', 'D015', '2023-07-14', '10:00:00', 'Completed', 'Cancer Screening', 'Routine cancer screening', 'tests ordered', '1200', 'Insurance', '200', 'Kidney stones');
INSERT INTO Appointment VALUES ('APP014', 'P014', 'D008', '2023-07-17', '11:30:00', 'Completed', 'Vision Problem', 'Vision deterioration', 'new glasses prescribed', '700', 'Cash', '0', 'Cataracts');
INSERT INTO Appointment VALUES ('APP015', 'P015', 'D001', '2023-07-19', '14:00:00', 'Completed', 'Heart Palpitations', 'Heart arrhythmia suspected', 'ECG performed', '850', 'Insurance', '0', 'high blood pressure');
INSERT INTO Appointment VALUES ('APP016', 'P016', 'D012', '2023-07-31', '09:30:00', 'Completed', 'Diabetes Check', 'Routine diabetes checkup', 'medication adjusted', '800', 'Credit Card', '0', 'Diabetes');
INSERT INTO Appointment VALUES ('APP017', 'P017', 'D014', '2023-08-04', '13:00:00', 'Completed', 'Breathing Difficulty', 'COPD exacerbation', 'treatment intensified', '900', 'Cash', '100', 'lung infections');
INSERT INTO Appointment VALUES ('APP018', 'P018', 'D004', '2023-08-09', '16:30:00', 'Completed', 'Pregnancy Confirmation', 'Pregnancy confirmed', 'scheduled followup', '700', 'Insurance', '0', 'uterine fibroids');
INSERT INTO Appointment VALUES ('APP019', 'P019', 'D007', '2023-08-14', '10:00:00', 'Completed', 'Liver Function', 'Abnormal liver function', 'diet change advised', '850', 'Credit Card', '0', 'hepatitis');
INSERT INTO Appointment VALUES ('APP020', 'P020', 'D003', '2023-08-19', '11:30:00', 'Completed', 'Joint Pain', 'Arthritis diagnosed', 'medication prescribed', '800', 'Cash', '0', 'spinal disorders');
INSERT INTO Appointment VALUES ('APP021', 'P021', 'D002', '2023-08-31', '09:30:00', 'Completed', 'Stroke Symptoms', 'TIA suspected', 'hospitalization recommended', '950', 'Insurance', '0', 'Parkinson’s disease');
INSERT INTO Appointment VALUES ('APP022', 'P022', 'D005', '2023-09-04', '13:00:00', 'Completed', 'Child Vaccination', 'Routine vaccination', 'next appointment scheduled', '500', 'Credit Card', '0', 'infections');
INSERT INTO Appointment VALUES ('APP023', 'P023', 'D013', '2023-09-09', '16:30:00', 'Completed', 'Renal Checkup', 'Renal function deteriorating', 'admission advised', '900', 'Cash', '0', 'dialysis management');
INSERT INTO Appointment VALUES ('APP024', 'P024', 'D009', '2023-09-14', '10:00:00', 'Completed', 'Hearing Loss', 'Mild hearing loss', 'hearing aid recommended', '750', 'Insurance', '50', 'ear infections');
INSERT INTO Appointment VALUES ('APP025', 'P025', 'D011', '2023-09-19', '11:30:00', 'Completed', 'Prostate Examination', 'Enlarged prostate', 'medication prescribed', '800', 'Credit Card', '0', 'Kidney stones,');
INSERT INTO Appointment VALUES ('APP026', 'P026', 'D010', '2023-09-30', '09:30:00', 'Completed', 'Depression', 'Clinical depression diagnosed', 'therapy started', '900', 'Cash', '0', 'anxiety');
INSERT INTO Appointment VALUES ('APP027', 'P027', 'D015', '2023-10-04', '13:00:00', 'Completed', 'Cancer Followup', 'Cancer in remission', 'monitoring continued', '1200', 'Insurance', '200', 'prostate issues');
INSERT INTO Appointment VALUES ('APP028', 'P028', 'D006', '2023-10-09', '16:30:00', 'Completed', 'Eczema', 'Eczema flare-up', 'topical steroids prescribed', '650', 'Credit Card', '0', 'psoriasis');
INSERT INTO Appointment VALUES ('APP029', 'P029', 'D014', '2023-10-14', '10:00:00', 'Completed', 'Pneumonia Symptoms', 'Pneumonia confirmed', 'hospitalization recommended', '900', 'Cash', '0', 'lung infections');
INSERT INTO Appointment VALUES ('APP030', 'P030', 'D008', '2023-10-19', '11:30:00', 'Completed', 'Cataract Examination', 'Cataract diagnosed', 'surgery recommended', '800', 'Insurance', '0', 'eye infections');
INSERT INTO Appointment VALUES ('APP031', 'P001', 'D001', '2023-10-25', '14:00:00', 'Scheduled', 'Followup Check', 'Followup for previous condition', '800', 'Pending', '0', NULL, 'arrhythmia');
INSERT INTO Appointment VALUES ('APP032', 'P005', 'D003', '2023-10-26', '09:30:00', 'Scheduled', 'Pain Management', 'Followup for back pain', '800', 'Pending', '0', NULL, 'arthritis');
INSERT INTO Appointment VALUES ('APP033', 'P010', 'D005', '2023-10-26', '13:00:00', 'Scheduled', 'Fever Followup', 'Followup for child\'s fever', '600', 'Pending', '0', NULL, 'infections');
INSERT INTO Appointment VALUES ('APP034', 'P015', 'D001', '2023-10-27', '10:00:00', 'Scheduled', 'Heart Checkup', 'Followup for heart condition', '850', 'Pending', '0', NULL, 'heart failure');
INSERT INTO Appointment VALUES ('APP035', 'P020', 'D003', '2023-10-27', '11:30:00', 'Scheduled', 'Joint Pain Followup', 'Followup for arthritis', '800', 'Pending', '0', NULL, 'Fractures');

-- ------------------------------------------------------------
-- 11. Surgery
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Surgery (
    surgery_id        VARCHAR(10)  PRIMARY KEY,
    patient_id        VARCHAR(10),
    doctor_id         VARCHAR(10),
    surgery_date      DATE,
    surgery_time      TIME,
    status            VARCHAR(20),
    reason            VARCHAR(200),
    notes             TEXT,
    fees              DECIMAL(10,2),
    payment_method    VARCHAR(30),
    discount          DECIMAL(10,2)
);
INSERT INTO Surgery VALUES ('APP001', 'P001', 'D001', '2023-05-14', '10:00:00', 'Completed', 'Chest Pain', 'Patient complained of chest pain', 'prescribed medication', '800', 'Cash');
INSERT INTO Surgery VALUES ('APP002', 'P002', 'D004', '2023-05-17', '11:30:00', 'Completed', 'Regular Checkup', 'Regular gynecological checkup', 'all normal', '700', 'Credit Card');
INSERT INTO Surgery VALUES ('APP003', 'P003', 'D007', '2023-05-19', '14:00:00', 'Completed', 'Stomach Pain', 'Patient has chronic gastritis', 'advised diet change', '850', 'Insurance');
INSERT INTO Surgery VALUES ('APP004', 'P004', 'D006', '2023-06-01', '09:30:00', 'Completed', 'Skin Rash', 'Allergic reaction', 'prescribed antihistamines', '650', 'Cash');
INSERT INTO Surgery VALUES ('APP005', 'P005', 'D003', '2023-06-04', '13:00:00', 'Completed', 'Back Pain', 'Lumbar strain', 'physiotherapy recommended', '800', 'Insurance');
INSERT INTO Surgery VALUES ('APP006', 'P006', 'D009', '2023-06-09', '16:30:00', 'Completed', 'Ear Infection', 'Ear infection diagnosed', 'prescribed antibiotics', '700', 'Credit Card');
INSERT INTO Surgery VALUES ('APP007', 'P007', 'D002', '2023-06-14', '10:00:00', 'Completed', 'Severe Headache', 'Possible migraine', 'further tests needed', '850', 'Insurance');
INSERT INTO Surgery VALUES ('APP008', 'P008', 'D010', '2023-06-17', '11:30:00', 'Completed', 'Anxiety Issues', 'Patient suffering from anxiety', 'therapy recommended', '900', 'Cash');
INSERT INTO Surgery VALUES ('APP009', 'P009', 'D011', '2023-06-19', '14:00:00', 'Completed', 'Urinary Issues', 'UTI diagnosed', 'prescribed antibiotics', '750', 'Credit Card');
INSERT INTO Surgery VALUES ('APP010', 'P010', 'D005', '2023-06-30', '09:30:00', 'Completed', 'Child Fever', 'Child has viral fever', 'prescribed medication', '600', 'Insurance');
INSERT INTO Surgery VALUES ('APP011', 'P011', 'D013', '2023-07-04', '13:00:00', 'Completed', 'Kidney Pain', 'Kidney stones suspected', 'tests ordered', '900', 'Cash');
INSERT INTO Surgery VALUES ('APP012', 'P012', 'D006', '2023-07-09', '16:30:00', 'Completed', 'Acne Treatment', 'Severe acne', 'prescribed medication', '650', 'Credit Card');
INSERT INTO Surgery VALUES ('APP013', 'P013', 'D015', '2023-07-14', '10:00:00', 'Completed', 'Cancer Screening', 'Routine cancer screening', 'tests ordered', '1200', 'Insurance');
INSERT INTO Surgery VALUES ('APP014', 'P014', 'D008', '2023-07-17', '11:30:00', 'Completed', 'Vision Problem', 'Vision deterioration', 'new glasses prescribed', '700', 'Cash');
INSERT INTO Surgery VALUES ('APP015', 'P015', 'D001', '2023-07-19', '14:00:00', 'Completed', 'Heart Palpitations', 'Heart arrhythmia suspected', 'ECG performed', '850', 'Insurance');
INSERT INTO Surgery VALUES ('APP016', 'P016', 'D012', '2023-07-31', '09:30:00', 'Completed', 'Diabetes Check', 'Routine diabetes checkup', 'medication adjusted', '800', 'Credit Card');
INSERT INTO Surgery VALUES ('APP017', 'P017', 'D014', '2023-08-04', '13:00:00', 'Completed', 'Breathing Difficulty', 'COPD exacerbation', 'treatment intensified', '900', 'Cash');
INSERT INTO Surgery VALUES ('APP018', 'P018', 'D004', '2023-08-09', '16:30:00', 'Completed', 'Pregnancy Confirmation', 'Pregnancy confirmed', 'scheduled followup', '700', 'Insurance');
INSERT INTO Surgery VALUES ('APP019', 'P019', 'D007', '2023-08-14', '10:00:00', 'Completed', 'Liver Function', 'Abnormal liver function', 'diet change advised', '850', 'Credit Card');
INSERT INTO Surgery VALUES ('APP020', 'P020', 'D003', '2023-08-19', '11:30:00', 'Completed', 'Joint Pain', 'Arthritis diagnosed', 'medication prescribed', '800', 'Cash');
INSERT INTO Surgery VALUES ('APP021', 'P021', 'D002', '2023-08-31', '09:30:00', 'Completed', 'Stroke Symptoms', 'TIA suspected', 'hospitalization recommended', '950', 'Insurance');
INSERT INTO Surgery VALUES ('APP022', 'P022', 'D005', '2023-09-04', '13:00:00', 'Completed', 'Child Vaccination', 'Routine vaccination', 'next appointment scheduled', '500', 'Credit Card');
INSERT INTO Surgery VALUES ('APP023', 'P023', 'D013', '2023-09-09', '16:30:00', 'Completed', 'Renal Checkup', 'Renal function deteriorating', 'admission advised', '900', 'Cash');
INSERT INTO Surgery VALUES ('APP024', 'P024', 'D009', '2023-09-14', '10:00:00', 'Completed', 'Hearing Loss', 'Mild hearing loss', 'hearing aid recommended', '750', 'Insurance');
INSERT INTO Surgery VALUES ('APP025', 'P025', 'D011', '2023-09-19', '11:30:00', 'Completed', 'Prostate Examination', 'Enlarged prostate', 'medication prescribed', '800', 'Credit Card');
INSERT INTO Surgery VALUES ('APP026', 'P026', 'D010', '2023-09-30', '09:30:00', 'Completed', 'Depression', 'Clinical depression diagnosed', 'therapy started', '900', 'Cash');
INSERT INTO Surgery VALUES ('APP027', 'P027', 'D015', '2023-10-04', '13:00:00', 'Completed', 'Cancer Followup', 'Cancer in remission', 'monitoring continued', '1200', 'Insurance');
INSERT INTO Surgery VALUES ('APP028', 'P028', 'D006', '2023-10-09', '16:30:00', 'Completed', 'Eczema', 'Eczema flare-up', 'topical steroids prescribed', '650', 'Credit Card');
INSERT INTO Surgery VALUES ('APP029', 'P029', 'D014', '2023-10-14', '10:00:00', 'Completed', 'Pneumonia Symptoms', 'Pneumonia confirmed', 'hospitalization recommended', '900', 'Cash');
INSERT INTO Surgery VALUES ('APP030', 'P030', 'D008', '2023-10-19', '11:30:00', 'Completed', 'Cataract Examination', 'Cataract diagnosed', 'surgery recommended', '800', 'Insurance');

-- ------------------------------------------------------------
-- 12. Hospital_Bills
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Hospital_Bills (
    bill_id          VARCHAR(10)  PRIMARY KEY,
    patient_id       VARCHAR(10),
    admission_date   DATE,
    discharge_date   DATE,
    room_charges     DECIMAL(10,2),
    surgery_charges  DECIMAL(10,2),
    medicine_charges DECIMAL(10,2),
    test_charges     DECIMAL(10,2),
    doctor_fees      DECIMAL(10,2),
    other_charges    DECIMAL(10,2),
    total_amount     DECIMAL(10,2),
    discount         DECIMAL(10,2),
    paid_amount      DECIMAL(10,2),
    payment_status   VARCHAR(20),
    payment_method   VARCHAR(30)
);
INSERT INTO Hospital_Bills VALUES ('BILL001', 'P001', '2023-05-15', '2023-05-20', '5000', '0', '410', '2800', '800', '1000', '10010', '0', '10010', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL002', 'P002', '2023-05-18', '2023-05-25', '7000', '0', '160', '0', '700', '500', '8360', '0', '8360', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL003', 'P003', '2023-05-20', '2023-05-30', '10000', '25000', '260', '5000', '850', '2000', '43110', '0', '43110', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL004', 'P004', '2023-06-02', '2023-06-10', '8000', '0', '55', '0', '650', '500', '9205', '0', '9205', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL005', 'P005', '2023-06-05', '2023-06-15', '10000', '75000', '180', '2500', '800', '3000', '91480', '5000', '86480', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL006', 'P006', '2023-06-10', '2023-06-14', '4000', '0', '70', '0', '700', '500', '5270', '0', '5270', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL007', 'P007', '2023-06-15', NULL, '0', '0', '405', '5000', '850', '0', '6255', '0', '6255', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL008', 'P008', '2023-06-18', '2023-06-25', '7000', '0', '130', '0', '900', '500', '8530', '100', '8430', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL009', 'P009', '2023-06-20', '2023-06-30', '10000', '50000', '140', '3300', '750', '2000', '66190', '0', '66190', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL010', 'P010', '2023-07-01', NULL, '0', '0', '160', '0', '600', '0', '760', '0', '760', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL011', 'P011', '2023-07-05', '2023-07-12', '7000', '35000', '160', '2800', '900', '1500', '47360', '2000', '45360', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL012', 'P012', '2023-07-10', '2023-07-15', '5000', '0', '140', '0', '650', '500', '6290', '50', '6240', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL013', 'P013', '2023-07-15', NULL, '0', '0', '70', '5000', '1200', '0', '6270', '0', '6270', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL014', 'P014', '2023-07-18', '2023-07-25', '7000', '0', '60', '0', '700', '500', '8260', '0', '8260', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL015', 'P015', '2023-07-20', '2023-07-28', '8000', '60000', '360', '2300', '850', '2500', '74010', '0', '74010', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL016', 'P016', '2023-08-01', '2023-08-10', '9000', '0', '570', '0', '800', '1000', '11370', '0', '11370', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL017', 'P017', '2023-08-05', NULL, '0', '0', '170', '2600', '900', '0', '3670', '100', '3570', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL018', 'P018', '2023-08-10', '2023-08-15', '5000', '0', '120', '0', '700', '500', '6320', '0', '6320', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL019', 'P019', '2023-08-15', '2023-08-25', '10000', '20000', '160', '2800', '850', '1500', '35310', '1000', '34310', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL020', 'P020', '2023-08-20', NULL, '0', '0', '180', '0', '800', '0', '980', '0', '980', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL021', 'P021', '2023-09-01', '2023-09-10', '9000', '55000', '330', '6500', '950', '2000', '73780', '0', '73780', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL022', 'P022', '2023-09-05', '2023-09-12', '7000', '0', '40', '0', '500', '500', '8040', '0', '8040', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL023', 'P023', '2023-09-10', NULL, '0', '0', '90', '1000', '900', '0', '1990', '0', '1990', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL024', 'P024', '2023-09-15', '2023-09-25', '10000', '0', '65', '0', '750', '1000', '11815', '50', '11765', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL025', 'P025', '2023-09-20', '2023-09-30', '10000', '40000', '360', '3300', '800', '2000', '56460', '0', '56460', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL026', 'P026', '2023-10-01', NULL, '0', '0', '140', '0', '900', '0', '1040', '0', '1040', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL027', 'P027', '2023-10-05', '2023-10-15', '10000', '70000', '160', '4500', '1200', '3000', '88860', '5000', '83860', 'Paid', 'Insurance');
INSERT INTO Hospital_Bills VALUES ('BILL028', 'P028', '2023-10-10', '2023-10-18', '8000', '0', '75', '0', '650', '500', '9225', '0', '9225', 'Paid', 'Credit Card');
INSERT INTO Hospital_Bills VALUES ('BILL029', 'P029', '2023-10-15', NULL, '0', '0', '225', '2600', '900', '0', '3725', '0', '3725', 'Paid', 'Cash');
INSERT INTO Hospital_Bills VALUES ('BILL030', 'P030', '2023-10-20', '2023-10-28', '8000', '0', '60', '0', '800', '1000', '9860', '0', '9860', 'Paid', 'Insurance');

-- ------------------------------------------------------------
-- 13. Patient_Tests
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Patient_Tests (
    patient_test_id  VARCHAR(10)  PRIMARY KEY,
    patient_id       VARCHAR(10),
    test_id          VARCHAR(10),
    doctor_id        VARCHAR(10),
    test_date        DATE,
    result_date      DATE,
    status           VARCHAR(20),
    result           VARCHAR(50),
    notes            TEXT,
    amount           DECIMAL(10,2),
    payment_method   VARCHAR(30),
    discount         DECIMAL(10,2)
);
INSERT INTO Patient_Tests VALUES ('PT001', 'P001', 'TEST001', 'D001', '2023-05-15', '2023-05-16', 'Completed', 'Normal', 'WBC', '500', 'Cash', '0');
INSERT INTO Patient_Tests VALUES ('PT002', 'P001', 'TEST003', 'D001', '2023-05-15', '2023-05-16', 'Completed', 'Abnormal', 'Cholesterol elevated', '800', 'Cash', '0');
INSERT INTO Patient_Tests VALUES ('PT003', 'P001', 'TEST007', 'D001', '2023-05-15', '2023-05-15', 'Completed', 'Abnormal', 'Minor arrhythmia detected', '1500', 'Cash', NULL);
INSERT INTO Patient_Tests VALUES ('PT004', 'P003', 'TEST004', 'D007', '2023-05-20', '2023-05-21', 'Completed', 'Abnormal', 'Elevated liver enzymes', '1000', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT005', 'P003', 'TEST013', 'D007', '2023-05-20', '2023-05-21', 'Completed', 'Normal', 'No parasites detected', '500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT006', 'P003', 'TEST019', 'D007', '2023-05-22', '2023-05-22', 'Completed', 'Abnormal', 'Gastric ulcers detected', '3500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT007', 'P005', 'TEST017', 'D003', '2023-06-05', '2023-06-06', 'Completed', 'Abnormal', 'Low bone density', '2500', 'Cash', '0');
INSERT INTO Patient_Tests VALUES ('PT008', 'P007', 'TEST001', 'D002', '2023-06-15', '2023-06-16', 'Completed', 'Normal', 'All parameters within range', '500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT009', 'P007', 'TEST009', 'D002', '2023-06-16', '2023-06-16', 'Completed', 'Abnormal', 'Brain lesion detected', '4500', 'Cash', '0');
INSERT INTO Patient_Tests VALUES ('PT010', 'P009', 'TEST016', 'D011', '2023-06-20', '2023-06-21', 'Completed', 'Abnormal', 'Elevated PSA levels', '1500', 'Credit Card', NULL);
INSERT INTO Patient_Tests VALUES ('PT011', 'P009', 'TEST011', 'D011', '2023-06-21', '2023-06-21', 'Completed', 'Abnormal', 'Enlarged prostate confirmed', '1800', 'Credit Card', NULL);
INSERT INTO Patient_Tests VALUES ('PT012', 'P011', 'TEST005', 'D013', '2023-07-05', '2023-07-06', 'Completed', 'Abnormal', 'Reduced kidney function', '1000', 'Cash', NULL);
INSERT INTO Patient_Tests VALUES ('PT013', 'P011', 'TEST011', 'D013', '2023-07-06', '2023-07-06', 'Completed', 'Abnormal', 'Kidney stones visualized', '1800', 'Cash', NULL);
INSERT INTO Patient_Tests VALUES ('PT014', 'P013', 'TEST001', 'D015', '2023-07-15', '2023-07-16', 'Completed', 'Abnormal', 'Reduced RBC count', '500', 'Cash', '0');
INSERT INTO Patient_Tests VALUES ('PT015', 'P013', 'TEST009', 'D015', '2023-07-16', '2023-07-16', 'Completed', 'Abnormal', 'Tumor detected in left lung', '4500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT016', 'P015', 'TEST003', 'D001', '2023-07-20', '2023-07-21', 'Completed', 'Abnormal', 'High cholesterol and triglycerides', '800', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT017', 'P015', 'TEST007', 'D001', '2023-07-20', '2023-07-20', 'Completed', 'Abnormal', 'Irregular heartbeat detected', '1500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT018', 'P017', 'TEST018', 'D014', '2023-08-05', '2023-08-06', 'Completed', 'Abnormal', 'Reduced lung capacity', '1800', 'Cash', '0');
INSERT INTO Patient_Tests VALUES ('PT019', 'P017', 'TEST008', 'D014', '2023-08-05', '2023-08-05', 'Completed', 'Abnormal', 'Pulmonary fibrosis evident', '800', 'Cash', NULL);
INSERT INTO Patient_Tests VALUES ('PT020', 'P019', 'TEST004', 'D007', '2023-08-15', '2023-08-16', 'Completed', 'Abnormal', 'Liver function significantly impaired', '1000', 'Credit Card', NULL);
INSERT INTO Patient_Tests VALUES ('PT021', 'P019', 'TEST011', 'D007', '2023-08-16', '2023-08-16', 'Completed', 'Abnormal', 'Liver cirrhosis confirmed', '1800', 'Credit Card', NULL);
INSERT INTO Patient_Tests VALUES ('PT022', 'P021', 'TEST001', 'D002', '2023-09-01', '2023-09-02', 'Completed', 'Normal', 'Blood counts normal', '500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT023', 'P021', 'TEST009', 'D002', '2023-09-02', '2023-09-02', 'Completed', 'Abnormal', 'Evidence of recent stroke', '4500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT024', 'P021', 'TEST007', 'D002', '2023-09-01', '2023-09-01', 'Completed', 'Abnormal', 'Cardiac irregularities noted', '1500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT025', 'P023', 'TEST005', 'D013', '2023-09-10', '2023-09-11', 'Completed', 'Abnormal', 'Severe kidney dysfunction', '1000', 'Cash', NULL);
INSERT INTO Patient_Tests VALUES ('PT026', 'P025', 'TEST016', 'D011', '2023-09-20', '2023-09-21', 'Completed', 'Abnormal', 'Highly elevated PSA', '1500', 'Credit Card', NULL);
INSERT INTO Patient_Tests VALUES ('PT027', 'P025', 'TEST011', 'D011', '2023-09-21', '2023-09-21', 'Completed', 'Abnormal', 'Prostate enlargement with irregular borders', '1800', 'Credit Card', NULL);
INSERT INTO Patient_Tests VALUES ('PT028', 'P027', 'TEST009', 'D015', '2023-10-05', '2023-10-05', 'Completed', 'Abnormal', 'Tumor size reduced after treatment', '4500', 'Insurance', NULL);
INSERT INTO Patient_Tests VALUES ('PT029', 'P029', 'TEST018', 'D014', '2023-10-15', '2023-10-16', 'Completed', 'Abnormal', 'Severe respiratory compromise', '1800', 'Cash', NULL);
INSERT INTO Patient_Tests VALUES ('PT030', 'P029', 'TEST008', 'D014', '2023-10-15', '2023-10-15', 'Completed', 'Abnormal', 'Pneumonia with consolidation', '800', 'Cash', NULL);

-- ------------------------------------------------------------
-- 14. Medicine_Patient
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Medicine_Patient (
    patient_id   VARCHAR(10),
    medicine_id  VARCHAR(10),
    qty          INT,
    date         DATE,
    PRIMARY KEY (patient_id, medicine_id, date)
);
INSERT INTO Medicine_Patient VALUES ('P001', 'MED013', '10', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED001', '11', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED012', '5', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED009', '11', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED009', '9', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED015', '8', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED010', '6', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED004', '5', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED012', '5', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED014', '3', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED013', '4', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED010', '10', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED008', '9', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED003', '6', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED002', '6', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED006', '4', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED009', '11', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED010', '6', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED007', '8', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED003', '8', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED009', '3', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED002', '12', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED005', '9', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED004', '8', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED001', '6', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED002', '8', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED013', '5', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED006', '7', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED014', '6', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED014', '9', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED013', '6', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED011', '6', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED010', '5', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED002', '10', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED006', '10', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED004', '7', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED007', '6', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED009', '11', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED002', '3', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED009', '5', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED012', '11', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED003', '9', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED012', '3', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED013', '7', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED005', '12', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED005', '8', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED001', '9', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED008', '3', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED012', '7', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED014', '4', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED007', '8', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED001', '4', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED008', '4', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED012', '4', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED004', '3', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED015', '6', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED015', '3', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED009', '6', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED014', '8', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED006', '12', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED005', '8', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED004', '11', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED006', '6', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED005', '7', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED003', '5', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED014', '12', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED008', '9', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED011', '8', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED007', '4', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED003', '10', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED015', '4', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED010', '7', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED007', '11', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED013', '6', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED003', '11', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED008', '6', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED010', '11', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED002', '12', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED004', '5', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED011', '7', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED006', '10', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED007', '6', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED011', '6', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED009', '6', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED011', '5', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED002', '4', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED012', '5', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED005', '5', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED015', '10', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED001', '3', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED012', '11', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED014', '7', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED001', '8', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED015', '5', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED004', '7', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED008', '6', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED003', '12', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED009', '10', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED011', '5', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED015', '11', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED004', '7', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED003', '5', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED004', '12', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED002', '3', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED003', '9', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED015', '9', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED002', '3', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED007', '12', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED008', '11', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED004', '11', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED005', '6', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED009', '12', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED001', '3', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED007', '9', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED006', '5', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED003', '4', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED007', '7', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED014', '6', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED012', '7', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED014', '3', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED014', '10', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED010', '12', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED008', '7', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED003', '6', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED012', '12', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED002', '6', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED012', '10', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED006', '3', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED012', '3', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED015', '6', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED006', '5', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED001', '5', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED012', '7', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED002', '12', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED005', '6', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED009', '12', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED012', '5', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED004', '9', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED005', '11', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED009', '6', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED008', '6', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED001', '11', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED002', '3', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED015', '10', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED013', '12', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED012', '5', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED004', '5', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED002', '10', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED004', '9', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED002', '12', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED014', '5', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED014', '3', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED003', '6', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED003', '9', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED006', '12', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED009', '7', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED010', '3', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED006', '10', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED009', '8', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED006', '7', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED007', '8', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED014', '11', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED011', '8', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED007', '6', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED015', '11', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED011', '12', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED004', '8', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED007', '4', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED011', '11', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED010', '6', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED008', '9', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED001', '11', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED011', '11', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED011', '10', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED007', '3', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED006', '10', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED015', '9', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED015', '3', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED012', '12', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED012', '10', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED015', '12', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED006', '4', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED010', '4', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED003', '3', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED015', '10', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED006', '12', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED011', '6', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED001', '7', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED012', '12', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED012', '3', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED004', '10', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED003', '10', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED005', '12', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED011', '10', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED009', '9', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED014', '5', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED001', '7', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED001', '12', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED009', '6', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED008', '3', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED007', '6', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED002', '10', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED010', '10', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED005', '9', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED007', '12', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED015', '10', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED006', '11', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED013', '4', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED013', '5', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED009', '9', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED002', '4', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED014', '4', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED007', '12', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED009', '8', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED002', '11', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED008', '12', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED009', '10', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED002', '6', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED004', '10', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED014', '6', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED009', '7', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED006', '10', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED008', '7', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED008', '5', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED007', '7', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED008', '9', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED005', '3', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED002', '12', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED015', '8', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED012', '12', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED005', '9', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED005', '7', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED010', '3', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED009', '5', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED010', '3', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED004', '9', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED014', '3', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED005', '11', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED013', '10', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED004', '4', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED001', '9', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED003', '10', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED011', '11', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED007', '6', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED015', '8', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED001', '8', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED013', '8', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED015', '11', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED009', '12', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED011', '8', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED009', '7', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED001', '11', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED007', '9', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED008', '12', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED007', '9', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED005', '6', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED008', '11', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED009', '6', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED003', '6', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED003', '10', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED014', '8', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED013', '4', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED006', '11', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED002', '12', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED003', '6', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED013', '6', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED015', '3', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED004', '12', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED010', '5', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED013', '5', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED013', '6', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED014', '7', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED007', '9', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED008', '8', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED009', '5', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED002', '9', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED011', '11', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED014', '12', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED002', '12', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED008', '3', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED015', '5', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED012', '4', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED002', '3', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED007', '7', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED007', '4', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED015', '8', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED010', '6', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED006', '5', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED015', '8', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED015', '11', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED005', '6', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED004', '7', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED002', '11', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED001', '6', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED009', '9', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED006', '7', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED014', '7', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED012', '7', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED005', '3', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED008', '7', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED009', '9', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED008', '9', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED012', '4', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED009', '3', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED011', '8', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED014', '6', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED003', '3', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED002', '4', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED006', '5', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED014', '5', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED003', '6', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED006', '11', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED007', '8', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED010', '10', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED003', '11', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED015', '5', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED014', '3', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED013', '10', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED011', '5', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED002', '11', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED013', '12', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED007', '11', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED009', '8', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED015', '10', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED013', '3', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED010', '12', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED010', '3', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED014', '4', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED010', '9', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED001', '5', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED003', '4', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED009', '10', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED007', '4', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED010', '12', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED005', '5', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED011', '11', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED002', '9', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED012', '10', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED012', '3', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED013', '3', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED009', '10', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED001', '7', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED014', '4', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED002', '10', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED013', '9', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED008', '11', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED002', '7', '2023-06-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED005', '8', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED007', '4', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED004', '3', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED003', '11', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED006', '12', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED015', '12', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED004', '8', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED011', '3', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED007', '8', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED014', '3', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED009', '9', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED015', '7', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED005', '11', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED011', '4', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED008', '5', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED008', '7', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED015', '3', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED007', '10', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED003', '8', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED015', '11', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED010', '11', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED011', '6', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED009', '5', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED006', '6', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED008', '11', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED012', '10', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED006', '10', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED006', '9', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED010', '6', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED010', '6', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED010', '9', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED010', '4', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED009', '7', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED005', '10', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED001', '9', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED012', '12', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED001', '11', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED006', '6', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED001', '9', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED003', '11', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED002', '4', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED008', '8', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED001', '3', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED004', '10', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED007', '10', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED012', '10', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED014', '6', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED015', '8', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED008', '3', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED006', '11', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED012', '4', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED012', '4', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED011', '10', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED011', '10', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED013', '6', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED001', '5', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED002', '12', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED006', '4', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED014', '12', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED010', '11', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED010', '8', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED002', '3', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED015', '4', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED008', '11', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED001', '4', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED007', '10', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED011', '11', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED001', '12', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED010', '3', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED005', '9', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED006', '3', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED014', '6', '2023-08-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED006', '4', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED012', '10', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED001', '8', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED011', '4', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED003', '12', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED013', '6', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED014', '4', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED005', '11', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED015', '11', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED001', '9', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED002', '3', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED003', '12', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED004', '12', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED005', '5', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED006', '9', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED007', '5', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED008', '8', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED009', '3', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED010', '8', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED011', '3', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED012', '10', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED013', '6', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED014', '9', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED015', '9', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED001', '8', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED002', '3', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED003', '11', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED004', '12', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED005', '10', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED006', '3', '2023-08-03 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED007', '10', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED008', '3', '2023-06-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED009', '7', '2023-08-30 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED010', '11', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED011', '12', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED012', '10', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED013', '10', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED014', '6', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED015', '6', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED001', '8', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED002', '9', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED003', '6', '2023-09-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED004', '10', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED005', '9', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED006', '6', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED007', '9', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED008', '10', '2023-05-22 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED009', '4', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED010', '8', '2023-10-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED011', '9', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED012', '5', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED013', '4', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED014', '4', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED015', '11', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED001', '6', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED002', '9', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED003', '8', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED004', '4', '2023-07-13 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED006', '12', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED007', '12', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED008', '11', '2023-10-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED009', '3', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED010', '12', '2023-06-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED011', '4', '2023-09-14 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED012', '4', '2023-07-01 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED013', '12', '2023-06-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED014', '6', '2023-09-07 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED015', '12', '2023-10-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P001', 'MED001', '11', '2023-08-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P002', 'MED002', '4', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P003', 'MED003', '3', '2023-07-26 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P004', 'MED004', '8', '2023-06-28 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P005', 'MED005', '10', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P006', 'MED006', '7', '2023-07-24 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P007', 'MED007', '8', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P008', 'MED008', '11', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P009', 'MED009', '5', '2023-08-19 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P010', 'MED010', '8', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P011', 'MED011', '5', '2023-07-10 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P012', 'MED012', '11', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P013', 'MED013', '12', '2023-10-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P014', 'MED014', '10', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P015', 'MED015', '8', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P016', 'MED001', '11', '2023-05-15 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P017', 'MED002', '7', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P018', 'MED003', '7', '2023-07-21 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P019', 'MED004', '6', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P020', 'MED005', '10', '2023-06-08 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P021', 'MED006', '8', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P022', 'MED007', '9', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P023', 'MED008', '3', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P024', 'MED009', '7', '2023-05-31 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P025', 'MED010', '5', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P026', 'MED011', '12', '2023-10-12 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P027', 'MED012', '4', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P028', 'MED013', '9', '2023-08-20 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P029', 'MED014', '5', '2023-09-17 00:00:00');
INSERT INTO Medicine_Patient VALUES ('P030', 'MED015', '6', '2023-05-15 00:00:00');

-- ------------------------------------------------------------
-- 15. Satisfaction_Score
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Satisfaction_Score (
    satisfaction_id  VARCHAR(10)  PRIMARY KEY,
    patient_id       VARCHAR(10),
    doctor_id        VARCHAR(10),
    rating           INT,
    feedback         TEXT,
    date             DATE,
    department       VARCHAR(100)
);
INSERT INTO Satisfaction_Score VALUES ('SAT001', 'P001', 'D001', '4', 'The doctor was very attentive and explained everything well.', '2023-05-20', 'Cardiology');
INSERT INTO Satisfaction_Score VALUES ('SAT002', 'P002', 'D004', '5', 'Excellent care and treatment. Very satisfied.', '2023-05-25', 'Gynecology');
INSERT INTO Satisfaction_Score VALUES ('SAT003', 'P003', 'D007', '3', 'Treatment was good but had to wait too long.', '2023-05-30', 'Gastroenterology');
INSERT INTO Satisfaction_Score VALUES ('SAT004', 'P004', 'D006', '4', 'Good diagnosis and treatment for my skin condition.', '2023-06-10', 'Dermatology');
INSERT INTO Satisfaction_Score VALUES ('SAT005', 'P005', 'D003', '5', 'Very professional and the surgery was successful.', '2023-06-15', 'Orthopedics');
INSERT INTO Satisfaction_Score VALUES ('SAT006', 'P006', 'D009', '4', 'Quick diagnosis and effective medication.', '2023-06-14', 'ENT');
INSERT INTO Satisfaction_Score VALUES ('SAT007', 'P008', 'D010', '5', 'The doctor really understood my mental health concerns.', '2023-06-25', 'Psychiatry');
INSERT INTO Satisfaction_Score VALUES ('SAT008', 'P009', 'D011', '4', 'Professional care and successful surgery.', '2023-06-30', 'Urology');
INSERT INTO Satisfaction_Score VALUES ('SAT009', 'P011', 'D013', '3', 'Good treatment but communication could be better.', '2023-07-12', 'Nephrology');
INSERT INTO Satisfaction_Score VALUES ('SAT010', 'P012', 'D006', '5', 'The skin treatment was very effective.', '2023-07-15', 'Dermatology');
INSERT INTO Satisfaction_Score VALUES ('SAT011', 'P014', 'D008', '4', 'Vision has improved after treatment.', '2023-07-25', 'Ophthalmology');
INSERT INTO Satisfaction_Score VALUES ('SAT012', 'P015', 'D001', '5', 'Excellent cardiac care and successful procedure.', '2023-07-28', 'Cardiology');
INSERT INTO Satisfaction_Score VALUES ('SAT013', 'P016', 'D012', '4', 'Diabetes management advice was helpful.', '2023-08-10', 'Endocrinology');
INSERT INTO Satisfaction_Score VALUES ('SAT014', 'P018', 'D004', '5', 'Very satisfied with the prenatal care.', '2023-08-15', 'Gynecology');
INSERT INTO Satisfaction_Score VALUES ('SAT015', 'P019', 'D007', '3', 'Treatment was okay but needed more explanation.', '2023-08-25', 'Gastroenterology');
INSERT INTO Satisfaction_Score VALUES ('SAT016', 'P021', 'D002', '4', 'Good care after my stroke.', '2023-09-10', 'Neurology');
INSERT INTO Satisfaction_Score VALUES ('SAT017', 'P022', 'D005', '5', 'Excellent pediatric care for my child.', '2023-09-12', 'Pediatrics');
INSERT INTO Satisfaction_Score VALUES ('SAT018', 'P024', 'D009', '4', 'My hearing has improved after treatment.', '2023-09-25', 'ENT');
INSERT INTO Satisfaction_Score VALUES ('SAT019', 'P025', 'D011', '3', 'Surgery went well but recovery information was lacking.', '2023', NULL);

SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- All tables created and data inserted successfully!
-- ============================================================