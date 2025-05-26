CREATE DATABASE IF NOT EXISTS nursing_training;
USE nursing_training;

CREATE TABLE Hospitals (
    hospital_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address TEXT
);

CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_senior BOOLEAN DEFAULT FALSE
);

CREATE TABLE Doctor_Hospital (
    doctor_id INT,
    hospital_id INT,
    PRIMARY KEY (doctor_id, hospital_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (hospital_id) REFERENCES Hospitals(hospital_id)
);

CREATE TABLE Colleges (
    college_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    college_id INT,
    FOREIGN KEY (college_id) REFERENCES Colleges(college_id)
);

CREATE TABLE TrainingProgram (
    program_id INT AUTO_INCREMENT PRIMARY KEY,
    start_date DATE,
    end_date DATE
);

CREATE TABLE Student_Program (
    student_id INT,
    program_id INT,
    passed_exam BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (student_id, program_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (program_id) REFERENCES TrainingProgram(program_id)
);

CREATE TABLE ClassroomSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    program_id INT,
    doctor_id INT,
    topic VARCHAR(255),
    date DATE,
    is_guest BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (program_id) REFERENCES TrainingProgram(program_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Exams (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    program_id INT,
    date DATE NOT NULL,
    FOREIGN KEY (program_id) REFERENCES TrainingProgram(program_id)
);

CREATE TABLE Internships (
    internship_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    doctor_id INT,
    hospital_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (hospital_id) REFERENCES Hospitals(hospital_id)
);

CREATE TABLE Certificates (
    certificate_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT UNIQUE,
    certificate_code VARCHAR(255) UNIQUE NOT NULL,
    issue_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

CREATE TABLE ValidationLogs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    certificate_id INT,
    checked_by VARCHAR(255),
    checked_at DATETIME NOT NULL,
    FOREIGN KEY (certificate_id) REFERENCES Certificates(certificate_id)
);
