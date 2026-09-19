

# 🎓 SQL FINAL PROJECT

# University Course Management System — SQL Project

## 📌 Project Introduction

The **University Course Management System** is a MySQL-based project created to manage and analyze university student and course information.

This project includes information about:

- 👨‍🎓 Students
- 📚 Courses
- 🏫 Departments
- 👨‍🏫 Instructors
- 📝 Course Enrollments

### 🗄️ Main Table

**rupalidb.college_student**

---

# 🔍 Project Queries Explained

### 1️⃣ View Student Data 👀

Displays all student records available in the database.

### 2️⃣ Students Enrolled After 2022 📅

Finds students whose enrollment date is after the year 2022.

### 3️⃣ Mathematics Department ➗

Displays up to 5 students belonging to the Mathematics department.

### 4️⃣ Course-wise Student Count 👥

Counts the number of students enrolled in each course.

### 5️⃣ Students in Both Courses 📚📚

Finds students enrolled in both **Introduction to SQL** and **Data Structures**.

**Result:** The current data gives a blank result because no student is enrolled in both courses.

### 6️⃣ Students in Either Course 🔎

Finds students enrolled in either **Introduction to SQL** or **Data Structures**.

### 7️⃣ Average Course Credits 📊

Calculates the average number of credits for the courses.

**Result:** 3.4667

### 8️⃣ Maximum Computer Science Instructor Salary 💰

Finds the highest instructor salary in the Computer Science department.

**Result:** 82000

### 9️⃣ Students in Each Department 🏫

Counts the number of students in each department.

| Department | Students |
|---|---:|
| Computer Science | 9 |
| Mathematics | 6 |

### 🔟 Student & Course Information 🔗

Displays student information along with their corresponding course information.

### 1️⃣1️⃣ Student & Course Information ↔️

Displays available student and course information from the main table.

### 1️⃣2️⃣ Subquery 🔄

Finds students belonging to courses having more than 10 students.

**Result:** The current data gives a blank result because no course has more than 10 students.

### 1️⃣3️⃣ Extract Enrollment Year 📅

Extracts the year from the student enrollment date.

**Example:**  
2023-08-01 → 2023

### 1️⃣4️⃣ Combine Instructor Name 👨‍🏫

Combines the instructor's first name and last name into one name.

**Example:**  
Alice + Johnson → Alice Johnson

### 1️⃣5️⃣ Running Total 📈

Calculates the running total of student enrollments.

**Output:**  
1 → 2 → 3 → ... → 15

### 1️⃣6️⃣ Senior / Junior Classification 🎓

Classifies students as **Senior** or **Junior** based on their enrollment date.

---

# 🎯 SQL Concepts Used

This project demonstrates:

- 🗄️ Database and table operations
- 🔎 Filtering
- 📊 Aggregate functions
- 🧩 Grouping
- 🔍 Having clause
- 🔄 Subqueries
- 🔗 Join concepts
- 📅 Date functions
- ✏️ String functions
- 📈 Window functions
- 🔀 Case statements
- 👨‍🎓 Student and course data analysis

---

# 🏆 Project Conclusion

The **University Course Management System** demonstrates how SQL can be used to store, retrieve, filter, group, and analyze university student and course data.

This project provides practical understanding of **MySQL, data analysis, aggregate functions, subqueries, date functions, string functions, and window functions**.

