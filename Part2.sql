/*
Name: John Choi
choi.1655
*/

use FinalExam;

/* 
a) Change the Office column in the SCHOOLS, DEPARTMENTS, 
and FACULTY tables so that they are foreign keys to the ROOMS table. 
*/
alter table SCHOOLS add constraint school_office_fk foreign key(Office) references ROOMS(Building);
alter table DEPARTMENTS add constraint dept_office_fk foreign key (Office) references ROOMS(Building);
alter table FACULTY add constraint faculty_office_fk foreign key (Office) references ROOMS(Building);

/*
b) Change the structure to allow the system to track major(s) and minor(s) for each student. 
Each major and minor will match to a department.
*/
alter table STUDENTS add Major varchar(10) not null;
alter table STUDENTS add Minor varchar(10);
alter table STUDENTS add constraint student_major_fk foreign key(Major) references DEPARTMENTS(Abbreviation);
alter table STUDENTS add constraint student_minor_fk foreign key(Minor) references DEPARTMENTS(Abbreviation);

/*
c) Change the structure to allow the system to track which sections of a course were offered 
for each semester, in which room it took place, number of students enrolled, and who taught it. 
A section is a particular instance of a course. Do not worry about meeting times and days and assume 
one faculty per section.
*/
# add SectionNumber column to COURSES table as varchar
alter table COURSES add SectionNumber varchar(10) not null;
# add faculty for the course
alter table COURSES add FacultyID char(10) not null;
# add room number for the course
alter table COURSES add RoomNumber int not null;
# add number of students enrolled for the course
alter table COURSES add StudentsEnrolled int not null;
# add semester information
alter table COURSES add Semester varchar(10) not null;
# add year information
alter table COURSES add Year int not null;
# add unique course number
alter table COURSES add CourseID varchar(10) not null;
alter table COURSES add constraint unique_course unique (CourseID);
# make code in COURSES unique
alter table COURSES add constraint unique_code unique (Code);
alter table ROOMS add constraint unique_room_number unique (Number);

# add constraints
alter table COURSES add constraint faculty_fk foreign key(FacultyID) references FACULTY(FacultyID);
alter table COURSES add constraint room_fk foreign key(RoomNumber) references ROOMS(Number);

/*
d) Change the structure to allow the system to track the student’s academic history. 
Which sections were taken, and which grade was received.
*/
# make record ID column for students table
alter table STUDENTS add RecordID varchar(10) not null;
alter table STUDENTS add constraint unique (RecordID);
# create table for student record
create table STUDENTRECORD
(
    RecordID		varchar(10)			not null,
    Course			varchar(10)			not null,
    Semester		varchar(10)			not null,
    Year			int					not null,
    Grade			varchar(2)			not null,
    Department 		varchar(10)			not null, #CSE
    Code			varchar(20)			not null, #3241
    SectionNumber	varchar(10)			not null
);
# apply constraints
alter table STUDENTRECORD add constraint primary key student_record_pk (RecordID);
alter table STUDENTRECORD add constraint foreign key course_id_fk (Course) references COURSES(CourseID);
alter table STUDENTRECORD add constraint foreign key dept_fk (Department) references DEPARTMENTS(Abbreviation);
alter table STUDENTRECORD add constraint foreign key code_fk (Code) references COURSES(Code);
