SELECT *FROM rupalidb.college_student;

SELECT *
FROM rupalidb.college_student
WHERE StudentEnrollmentDate > '2022-12-31';

SELECT *
FROM rupalidb.college_student
WHERE DepartmentName = 'Mathematics'
LIMIT 5;

SELECT CourseName, COUNT(DISTINCT StudentID) AS StudentCount
FROM rupalidb.college_student
GROUP BY CourseName
HAVING COUNT(DISTINCT StudentID) > 5;

SELECT StudentID, StudentFirstName, StudentLastName
FROM rupalidb.college_student
WHERE CourseName IN ('Introduction to SQL', 'Data Structures')
GROUP BY StudentID, StudentFirstName, StudentLastName
HAVING COUNT(DISTINCT CourseName) = 2;

SELECT DISTINCT StudentID, StudentFirstName, StudentLastName, CourseName
FROM rupalidb.college_student
WHERE CourseName IN ('Introduction to SQL', 'Data Structures');


SELECT AVG(Credits) AS AverageCredits
FROM rupalidb.college_student;

SELECT MAX(Salary) AS MaximumSalary
FROM rupalidb.college_student
WHERE DepartmentName = 'Computer Science';

SELECT DepartmentName, COUNT(DISTINCT StudentID) AS StudentCount
FROM rupalidb.college_student
GROUP BY DepartmentName;

#INNER JOIN 
SELECT StudentID, StudentFirstName, StudentLastName,
       CourseID, CourseName
FROM rupalidb.college_student
WHERE CourseID IS NOT NULL;

#LEFT JOIN

SELECT StudentID, StudentFirstName, StudentLastName,
       CourseID, CourseName
FROM rupalidb.college_student;


#SUBQURIES
SELECT StudentID, StudentFirstName, StudentLastName
FROM rupalidb.college_student
WHERE CourseID IN (
    SELECT CourseID
    FROM rupalidb.college_student
    GROUP BY CourseID
    HAVING COUNT(DISTINCT StudentID) > 10
);


SELECT StudentID, StudentFirstName, StudentLastName,
       YEAR(StudentEnrollmentDate) AS EnrollmentYear
FROM rupalidb.college_student;

SELECT InstructorID,
       CONCAT(InstructorFirstName, ' ', InstructorLastName) AS InstructorName
FROM rupalidb.college_student;

SELECT EnrollmentID,
       StudentID,
       CourseID,
       COUNT(*) OVER (
           ORDER BY EnrollmentID
       ) AS RunningTotal
FROM rupalidb.college_student;



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

SELECT * FROM rupalidb.college_student;