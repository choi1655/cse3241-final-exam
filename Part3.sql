/*
Name: John Choi
choi.1655
*/
use FinalExam;

# insert data to BUILDING
insert into BUILDINGS values ('DL', 'Dreese Lab', '2015 Neil Ave');
insert into BUILDINGS values ('CL', 'Caldwell Lab', '234 W 18th Ave');
insert into BUILDINGS values ('UH', 'University Hall', '230 N Oval Mall');
insert into BUILDINGS values ('MW', 'Math Tower', '231 West 18th Ave');
insert into BUILDINGS values ('FH', 'Fisher Hall', '2100 Neil Ave');
insert into BUILDINGS values ('HC', 'Hitchcock Hall', '2060 Neil Ave');

# insert data to ROOMS
insert into ROOMS values ('DL', 237, 100);
insert into ROOMS values ('CL', 471, 50);
insert into ROOMS values ('UH', 915, 100);
insert into ROOMS values ('UH', 738, 100);
insert into ROOMS values ('FH', 003, 100);
insert into ROOMS values ('HC', 110, 30);
insert into ROOMS values ('MW', 812, 50);

#insert data to SCHOOLS
insert into SCHOOLS values ('COE', 'College of Engineering', 'HC');
insert into SCHOOLS values ('ARTSSC', 'College of Arts and Sciences', 'MW');
insert into SCHOOLS values ('FISHER', 'Fisher College of Business', 'FH');
insert into SCHOOLS values ('WEX', 'College of Medicine', 'DL');
insert into SCHOOLS values ('LAW', 'College of Law', 'UH');

# insert DEPARTMENTS
insert into DEPARTMENTS values ('CSE', 'Computer Science and Engineering', 'COE', 'DL');
insert into DEPARTMENTS values ('ECE', 'Electrical and Computer Engineering', 'COE', 'CL');
insert into DEPARTMENTS values ('PHIL', 'Philosophy', 'ARTSSC', 'UH');
insert into DEPARTMENTS values ('MATH', 'Math', 'ARTSSC', 'MW');
insert into DEPARTMENTS values ('ENGLISH', 'English', 'ARTSSC', 'UH');
insert into DEPARTMENTS values ('BA', 'Business Administration', 'FISHER', 'FH');
insert into DEPARTMENTS values ('MEA', 'Mechanical Engineering', 'COE', 'HC');
insert into DEPARTMENTS values ('AFS', 'African American Studies', 'ARTSSC', 'UH');
insert into DEPARTMENTS values ('COMM', 'Communicaton', 'ARTSSC', 'UH');

# insert FACULTY
insert into FACULTY values ('F0000001', 'Smith', 'Will', 'Professor', 'smith.123@osu.edu', null, 'CSE', 'DL');
insert into FACULTY values ('F0000002', 'Hunt', 'Al', 'Lecturer', 'al.hunt@osu.edu', null, 'ECE', 'CL');
insert into FACULTY values ('F0000003', 'Reed', 'Clifford', 'Researcher', 'c.reed@osu.edu', null, 'MATH', 'MW');
insert into FACULTY values ('F0000004', 'Wolf', 'Pack', 'Adjunct Professor', 'gopack@osu.edu', null, 'PHIL', 'UH');
insert into FACULTY values ('F0000005', 'Buckeye', 'Brutus', 'Professor', 'brutusbuckeye@osu.edu', null, 'BA', 'FH');

# insert COURSES
insert into COURSES values ('CSE', '2221', 'Software I', 4, 0001, 'F0000001', 237, 100, 'SPRING', 2019, 'C0000001');
insert into COURSES values ('CSE', '3241', 'Intro to Database Sys', 3, 0002, 'F0000002', 471, 50, 'AUTUMN', 2019, 'C0000002');
insert into COURSES values ('ECE', '2060', 'Intro to Digital Circuits', 3, 0003, 'F0000003', 915, 100, 'SPRING', 2020, 'C0000003');
insert into COURSES values ('PHIL', '1223', 'Ethics for Engineers', 3, 0004, 'F0000004', 812, 30, 'SUMMER', 2020, 'C0000004');
insert into COURSES values ('MATH', '1772', 'Engineering Math A', 5, 0005, 'F0000005', 237, 60, 'AUTUMN', 2019, 'C0000005');

# insert data to STUDENTS table
insert into STUDENTS values ('S0000001', 'Doe', 'John', 'johndoe@osu.edu', '1111111111', '123 Normal St.', 'OH', 12345, 'CSE', 'BA', 'R0000001');
insert into STUDENTS values ('S0000002', 'Appleseed', 'Johnny', 'j.appleseed@osu.edu', '2222222222', '412 Normal St.', 'OH', 12345, 'PHIL', 'MEA', 'R0000002');
insert into STUDENTS values ('S0000003', 'Martin', 'Wendy', 'w.martin@osu.edu', '3333333333', '512 Normal St.', 'OH', 12345, 'MATH', 'ENGLISH', 'R0000003');
insert into STUDENTS values ('S0000004', 'Soto', 'Alice', 'alicesoto@osu.edu', '4444444444', '612 Normal St.', 'OH', 12345, 'MATH', 'ECE', 'R0000004');
insert into STUDENTS values ('S0000005', 'Ferguson', 'Stephen', 'sferguson@ncsu.edu', '5555555555', '9478 Normal St.', 'OH', 12345, 'AFS', 'COMM', 'R0000005');

# insert data to STUDENTRECORD
insert into STUDENTRECORD values ('R0000001', 'C0000001', 'SPRING', 2019, 'A', 'CSE', 2221, 0001);
insert into STUDENTRECORD values ('R0000002', 'C0000002', 'AUTUMN', 2019, 'B', 'CSE', 3241, 0002);
insert into STUDENTRECORD values ('R0000003', 'C0000003', 'SPRING', 2020, 'C', 'ECE', 2060, 0003);
insert into STUDENTRECORD values ('R0000004', 'C0000004', 'SUMMER', 2020, 'D', 'PHIL', 1223, 0004);
insert into STUDENTRECORD values ('R0000005', 'C0000005', 'AUTUMN', 2019, 'E', 'MATH', 1772, 0005);
