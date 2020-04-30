/*
Name: John Choi
choi.1655
*/
use FinalExam;

/*
a. Add a required column named IsClassroom to the ROOMS table to serve as a Boolean
*/
alter table ROOMS add IsClassroom boolean not null;

/*
b. List all rooms (include the building name) in which the CSE department taught classes at
any time in the 2019 academic year. Include the semester, course name and the faculty name.
*/
# semester, course name, faculty name, room number
select COURSES.Name, COURSES.RoomNumber, COURSES.Semester, COURSES.Year, FACULTY.LastName, FACULTY.FirstName 
from COURSES, FACULTY
where COURSES.Year = 2019 and COURSES.Department = 'CSE' and COURSES.FacultyID = FACULTY.FacultyID;

/*
c. List, for every section offered in the 2019 academic year, the number of unused seats. 
Include the semester, course information (department, code and name) as well as the name of the 
faculty who taught it.
*/
Select Courses.Year, Rooms.SeatingCapacity - Courses.StudentsEnrolled as Unused_Seats, Courses.Department, Courses.Name, Courses.Code, Courses.Semester, Faculty.LastName, Faculty.FirstName 
from Courses, Rooms, Faculty
where Courses.Year = 2019 and Courses.FacultyID = Faculty.FacultyID and Rooms.Number = Courses.RoomNumber;

/*
d. Create a complete transcript for all students who are majoring in MATH. 
The transcript contains the semester, course information (department, code and name) 
and grade for every section that student has taken.
*/
select STUDENTRECORD.RecordID, STUDENTRECORD.Semester, COURSES.Department, COURSES.Code, COURSES.Name, STUDENTRECORD.Grade
from STUDENTS, STUDENTRECORD, COURSES
where STUDENTS.Major = 'MATH' and STUDENTRECORD.RecordID = STUDENTS.RecordID and COURSES.CourseID = STUDENTRECORD.Course;

/*
e. Remove the Philosophy department (PHIL) from the system.
*/
delete from STUDENTS where STUDENTS.Major = 'PHIL';
delete from COURSES where COURSES.Department = 'PHIL';
delete from DEPARTMENTS where DEPARTMENTS.Abbreviation = 'PHIL';
