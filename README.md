# SQL-FINAL-PROJET

🎓 University Course Management System — SQL Project

📌 Project Introduction

This project is a University Course Management System created using MySQL. The main purpose is to manage and analyze information about students, courses, departments, instructors, and course enrollments.

Main table used:

rupalidb.college_student

🔍 Project Queries Explained

1️⃣ View Student Data 👀

SELECT * FROM rupalidb.college_student;

Displays all records from the student table.

2️⃣ Students Enrolled After 2022 📅

SELECT *

FROM rupalidb.college_student

WHERE StudentEnrollmentDate > '2022-12-31';


Finds students whose enrollment date is after 2022.




3️⃣ Mathematics Department ➗

SELECT *

FROM rupalidb.college_student

WHERE DepartmentName = 'Mathematics'

LIMIT 5;

Displays a maximum of 5 records from the Mathematics department.




4️⃣ Course-wise Student Count 👥

SELECT CourseName, COUNT(DISTINCT StudentID) AS StudentCount

FROM rupalidb.college_student

GROUP BY CourseName



5️⃣ Students in Both Courses 📚📚

SELECT StudentID, StudentFirstName, StudentLastName

FROM rupalidb.college_student

WHERE CourseName IN ('Introduction to SQL', 'Data Structures')

GROUP BY StudentID, StudentFirstName, StudentLastName

HAVING COUNT(DISTINCT CourseName) = 2;


Checks students enrolled in both Introduction to SQL and Data Structures. Current data gives a blank result because no student is enrolled in both courses.



6️⃣ Students in Either Course 🔎

SELECT DISTINCT StudentID, StudentFirstName, StudentLastName, CourseName

FROM rupalidb.college_student

WHERE CourseName IN ('Introduction to SQL', 'Data Structures');


Finds students enrolled in either of the two specified courses.



7️⃣ Average Course Credits 📊


SELECT AVG(Credits) AS AverageCredits

FROM rupalidb.college_student;

Calculates the average number of course credits.

Result: 3.4667


8️⃣ Maximum Computer Science Instructor Salary 💰


SELECT MAX(Salary) AS MaximumSalary

FROM rupalidb.college_student

WHERE DepartmentName = 'Computer Science';


Finds the highest salary among Computer Science instructors.

Result: 82000




9️⃣ Students in Each Department 🏫



SELECT DepartmentName, COUNT(DISTINCT StudentID) AS StudentCount

FROM rupalidb.college_student

GROUP BY DepartmentName;

Counts students department-wise.

Computer Science → 9 students

Mathematics → 6 students



🔟 Student & Course Information 🔗


SELECT StudentID, StudentFirstName, StudentLastName,

       CourseID, CourseName
       
FROM rupalidb.college_student

WHERE CourseID IS NOT NULL;

Displays student information with corresponding course information.



1️⃣1️⃣ LEFT JOIN Section ↔️

SELECT StudentID, StudentFirstName, StudentLastName,

       CourseID, CourseName
       
FROM rupalidb.college_student;


Displays student information along with available course information.



1️⃣2️⃣ Subquery 🔄

SELECT StudentID, StudentFirstName, StudentLastName

FROM rupalidb.college_student

WHERE CourseID IN (

    SELECT CourseID
    
    FROM rupalidb.college_student
    
    GROUP BY CourseID
    
    HAVING COUNT(DISTINCT StudentID) > 10
    
);

Searches for students belonging to courses having more than 10 students. Current data gives a blank result because no course has more than 10 students.




1️⃣3️⃣ Extract Enrollment Year 📅


SELECT StudentID, StudentFirstName, StudentLastName,

       YEAR(StudentEnrollmentDate) AS EnrollmentYear
       
FROM rupalidb.college_student;

Extracts only the year from the enrollment date.

Example: 2023-08-01 → 2023



1️⃣4️⃣ Combine Instructor Name 👨‍🏫

SELECT InstructorID,

       CONCAT(InstructorFirstName, ' ', InstructorLastName) AS InstructorName
       
FROM rupalidb.college_student;

Combines instructor first name and last name.

Example: Alice + Johnson → Alice Johnson




1️⃣5️⃣ Running Total 📈

SELECT EnrollmentID,

       StudentID,
       
       CourseID,
       
       COUNT(*) OVER (
       
           ORDER BY EnrollmentID
           
       ) AS RunningTotal
       
FROM rupalidb.college_student;


Calculates the running total of enrollments.

Output: 1 → 2 → 3 → ... → 15




1️⃣6️⃣ Senior / Junior Classification 🎓

SELECT StudentID,

       StudentFirstName,
       
       StudentLastName,
       
       StudentEnrollmentDate,
       
       CASE
       
           WHEN StudentEnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
           
           THEN 'Senior'
           
           ELSE 'Junior'
           
       END AS StudentLevel
       
FROM rupalidb.college_student;

Students enrolled more than 4 years before the current date are classified as Senior; otherwise they are Junior.

🎯 Project Conclusion

This SQL project demonstrates important MySQL concepts:

🗄️ Database and Table Operations

🔎 Filtering with WHERE

📊 Aggregate Functions — COUNT, AVG, MAX

🧩 GROUP BY and HAVING

🔗 JOIN concepts

🔄 Subqueries

📅 Date Functions

✏️ CONCAT

📈 Window Functions

🔀 CASE Statements

🏆 Final Result

The University Course Management System demonstrates how SQL can be used to store, retrieve, filter, group, and analyze university student and course data.

