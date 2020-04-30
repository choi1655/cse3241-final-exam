/*
Name: John Choi
choi.1655
*/

create database FinalExam;

  use FinalExam;
  create table STUDENTS
    (
      StudentID     varchar(10)   primary key not null,
      LastName      varchar(20)   not null,
      FirstName     varchar(20)   not null,
      Email         varchar(40)   not null,
      Phone         char(10)      not null,
      StreetAddress varchar(50)   not null,
      State         char(2)       not null,
      ZipCode       char(5)       not null
    );

  create table BUILDINGS
    (
      Abbreviation    varchar(6)      primary key not null,
      Name            varchar(20)     not null,
      StreetAddress   varchar(50)     not null
    );

  create table SCHOOLS
    (
      Abbreviation    varchar(6)      primary key not null,
      Name            varchar(50)     not null,
      Office          varchar(20)     not null
    );

  create table DEPARTMENTS
    (
      Abbreviation    varchar(10)     primary key not null,
      Name            varchar(50)     not null,
      School          varchar(20)     not null,
      Office          varchar(20)     not null
    );

  create table COURSES
    (
      Department      varchar(20)     not null,
      Code            varchar(20)     not null,
      Name            varchar(100)     not null,
      CreditHours     int             not null,
      constraint course_pk primary key (Department, Code),
      foreign key (Department) references DEPARTMENTS(Abbreviation)
    );

  create table ROOMS
    (
      Building        varchar(20)     not null,
      Number          int             not null,
      SeatingCapacity int,
      constraint room_pk primary key (Building, Number),
      foreign key (Building) references BUILDINGS(Abbreviation)
    );

  create table FACULTY
    (
      FacultyID       char(10)        not null,
      LastName        varchar(10)     not null,
      FirstName       varchar(10)     not null,
      Title           varchar(20)     not null,
      Email           varchar(50)     not null,
      Extension       varchar(20),
      Department      varchar(20)     not null,
      Office          varchar(20)     not null,
      constraint faculty_pk primary key (FacultyID),
      foreign key (Department) references DEPARTMENTS(Abbreviation)
    );
