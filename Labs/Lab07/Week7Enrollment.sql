set echo on

spool Week7EnrollmentOutput.txt
--student id
--student name
--week 7 tutorial practice // it will be assignment 1 part b// after i generate dbl wee need to do set echo on and spool in the beg, add drop table and drop table as well



drop table enrollment purge;
drop table student purge;
drop table unit purge;


create table unit 
(
unit_code char (7) not null;
unit_name varchar(50) not null;

);



alter table unit add constraints pk_unit primary key (unit_code);
alter table unit add constraints  unit_name unique (unit_name);

create table student;
(
stu_nbr number (8) not null;
stu_lname varchar (50) not null;
stu_fname varchar (50) not null;
stu_dob date not null;
);

altertable student add constraint pk_student primary key (stu_nmr);
alter table student add constraint ck_stu_nbr > 1000000;

create table enrollment;
(
stu_nbr number (8) not null;
unit_code char (7) not null;
enroll_year number (4) not null;
enroll_semester char (1) not null;
enroll_mark number (3);
enroll_grade char (2);

);

alter table enrollment add constraints pk_enrollment
    primary key (stu_nbr, unit_code, enroll_year, enroll_semester);






set ecgi off