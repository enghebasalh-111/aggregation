create database aggregation ;
use aggregation;
select count(*) from student_grades_assignment;
--------------------------
select avg(grade) from student_grades_assignment;
----------------------------
select max(grade) from student_grades_assignment;
----------------------------
select min(Grade) from student_grades_assignment;
---------------------------
select count(distinct(StudentID)) from student_grades_assignment;
-----------------------
select CourseID, avg(Grade) from student_grades_assignment group by CourseID;
--------------------------
select Department, count(StudentID) from student_grades_assignment group by Department;
------------------------------
select CourseID, max(Grade) from student_grades_assignment group by CourseID;
-----------------------------------------
select Department, min(Grade) from student_grades_assignment group by Department;
-------------------------------
select StudentID, count(CourseID) from student_grades_assignment group by StudentID;
---------------------------
SELECT CourseID, AVG(Grade) AS avg_grade
FROM student_grades_assignment
GROUP BY CourseID
HAVING AVG(Grade) > 75;
------------------------------
select StudentID, count(CourseID) from student_grades_assignment
group by StudentID
having count(CourseID) >3;
----------------------------------
select Department, avg(Grade) from student_grades_assignment
group by Department
having avg(Grade)<65;
-------------------------------
select StudentID, max(Grade) from student_grades_assignment
group by StudentID
having max(Grade)=100;
----------------------------------
select CourseID , count(StudentID) from student_grades_assignment
group by CourseID
having count(StudentID)>= 20;
-------------------------------------------
select StudentID, count(CourseID), avg(Grade) from student_grades_assignment
group by StudentID
having count(CourseID)>=4
and avg(Grade)>80;
----------------------------
select Department, max(Grade), avg(Grade) from student_grades_assignment
group by Department
having max(Grade)>= 2*avg(Grade);
---------------------------------
select CourseID, avg(Grade)  from student_grades_assignment
group by CourseID
having avg(Grade) >= max(avg(Grade));
---------------------------
select StudentID, min(Grade) from student_grades_assignment
group by StudentID
having min(Grade)<70;
-------------------------------
select StudentID, min(Grade) from student_grades_assignment
group by StudentID
having min(Grade)>70;