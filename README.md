
# Nursing Training Institution Database

This project sets up a relational database schema for a nursing training institution associated with hospitals in Pune, India. It includes data modeling, SQL schema creation, and data population using a real-world dataset.

---

## 📦 Contents

- `nursing_training_schema.sql` - SQL script to create the entire schema
- `hospital_inserts.sql` - SQL script to populate the `Hospitals` table from the PMC dataset
- `ERD_Tables.xlsx` - List of all tables, columns, datatypes, and constraints
- `nursing_training_schema.pdf` - PDF version of the SQL schema
- `A_Entity-Relationship_(ER)_diagram_in_a_digital_im.png` - ER diagram image

---

## 🗃️ Database Schema Overview

The schema supports:

- Doctors working in multiple hospitals
- A structured training program for students
- Classroom sessions and internships
- Colleges and student affiliations
- Certification issuance and validation logging

---

## 🏗️ Tables

Key tables include:

- `Hospitals`
- `Doctors`
- `Doctor_Hospital`
- `Students`
- `Colleges`
- `TrainingProgram`
- `Student_Program`
- `ClassroomSessions`
- `Exams`
- `Internships`
- `Certificates`
- `ValidationLogs`

---

## 🚀 How to Use

### 1. Import the Schema

Run this script in MySQL Workbench, CLI, or phpMyAdmin:
```
nursing_training_schema.sql
```

### 2. Populate Hospital Data

Run the following script to insert hospital data:
```
hospital_inserts.sql
```

### 3. View ER Diagram

Use the included PNG file or reverse engineer it using MySQL Workbench.

---

## 🛠 Requirements

- MySQL 5.7 or later
- MySQL Workbench or any other MySQL client
- Optional: Excel to view the `ERD_Tables.xlsx`

---

## 📊 Data Source

[Pune Municipal Corporation Hospital Dataset](https://www.kaggle.com/datasets/prasad22/pmc-hospital-infrastructure/data)

---

## 📝 License

This project is for educational purposes only. Data is publicly available under Kaggle's dataset usage terms.
