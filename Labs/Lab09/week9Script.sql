SET ECHO ON

SPOOL week9questionsollution.txt
/* FIT9132 week9 table quiestions*/
/* Farhad Ullah Rezwan*/
/* */
/*1. Update the unit name of FIT9999 from 'FIT Last Unit' to 'place holder unit'.*/

SELECT
    *
FROM
    unit;

UPDATE unit
SET
    unit_name = 'place holder unit'
WHERE
    unit_code = 'FIT9999';

COMMIT;

/* 2. */

SELECT
    *
FROM
    enrollment
update enrolment set enrol_mark=75, enrol_grade = 'D'
where stu_nbr = 1111

-- 3.3. The university introduced a new grade classification. The new classification are:
--1. 45-54isP1.
--2. 55-64isP2.
--3. 65-74isC.
--4. 75-84isD.
--5. 85-100isHD.
--Change the database to reflect the new grade classification.

select * from enrolment;
update enrolment set enrol_grade = 'p1' where enrol_mark >= 45 and enrol_mark <= 54;
update enrolment set enrol_grade = 'p2' where enrol_mark >= 55 and enrol_mark <= 64;
update enrolment set enrol_grade = 'C' where enrol_mark >= 65 and enrol_mark <= 74;
update enrolment set enrol_grade = 'D' where enrol_mark >= 75 and enrol_mark <= 84;
update enrolment set enrol_grade = 'HD' where enrol_mark >= 85 and enrol_mark <= 100;
commit;

-- using switch case;
update enrolment 
set enrol_grade = {
case
    when enrol_mark between 45 and 54 then 'P1'
    when enrol_mark between 55 and 64 then 'P1'
    when enrol_mark between 65 and 74 then 'P1'
    when enrol_mark between 75 and 84 then 'P1'
    when enrol_mark between 85 and 100 then 'P1'
    and}
WHERE
    enrol_mark >= 45; /* wee we do not consider N here in the case thats why */
                        /* we need that otherwise statement will give null*/
COMMIT;

/* delete 1.*/

SELECT
    *
FROM
    enrolment;

DELETE enrolment
WHERE
    stu_nbr = 11111114
    AND enrol_semester = '2'
        AND enrol_year = 2014;

COMMIT;

/* delete 2. A student with student number 11111114 has taken intermission in semester 2 2014, 
hence all the enrolment of this student for semester 2 2014 should be removed. 
Change the database to reflect this situation.*/

SELECT
    *
FROM
    student;

SELECT
    *
FROM
    enrolment;

DELETE enrolment
WHERE
    stu_nbr = 11111113; /* we need to delete this first as violated child record found*/

DELETE student
WHERE
    stu_nbr = 11111113; /* we cannot do this line only because violated child record found*/
    
/* delete 3.*/
/* one way to do this insert into student...*/
/* we will do and go to the question about wendy and paste these and also enrollment about wendy*/

INSERT INTO student VALUES (
    11111113,
    'Wheat',
    'Wendy',
    '05-May-1990'
);

INSERT INTO enrolment VALUES (
    11111113,
    'FIT5132',
    2014,
    '2',
    NULL,
    NULL
);

INSERT INTO enrolment VALUES (
    11111113,
    'FIT5111',
    2014,
    '2',
    NULL,
    NULL
); /* after we do this we use alter table to drop foraign key and alter table to add foraign key like below lines*/

COMMIT;

ALTER TABLE enrolment DROP CONSTRAINT fk_enrolment_student;  /* check the alter sql and check the foraign key */

ALTER TABLE enrolment
    ADD CONSTRAINT fk_enrolment_student FOREIGN KEY ( stu_nbr )
        REFERENCES student ( stu_nbr )
            ON DELETE CASCADE;                                   /* if no thing like this then go to enrolment table then go to constraint and serach for foreign key,,,, */
                                        /* ie primary key is also possible to delete*/
                                        /* check constrains is not null constraint, but the name is system generated as we add not null in alter .sql as column level insert, thats why auto generated;*/
                                        /* it is also possible to use alter table to add not null constraint*/

DELETE student
WHERE
    stu_nbr = 11111113;

COMMIT;

SELECT
    *
FROM
    enrolment;

/*TASKS*/
/*1. Update the unit name of FIT9999 from 'FIT Last Unit' to 'place holder unit'.*/

UPDATE unit
SET
    unit_name = 'place holder unit'
WHERE
    unit_code = 'FIT9999';

COMMIT;

SELECT
    *
FROM
    unit;

/*2. Enter the mark and grade for the student with the student number of 11111113 */
/*for the unit code FIT5132 that the student enrolled in semester 2 of 2014.*/
/*The mark is 75 and the grade is D.*/

SELECT
    *
FROM
    enrolment;

UPDATE enrolment
SET
    enrol_mark = 75,
    enrol_grade = 'D'
WHERE
    stu_nbr = 11111113
    AND unit_code = 'FIT5132'
        AND enrol_semester = 2
            AND enrol_year = 2014;

COMMIT;

/*3. The university introduced a new grade classification. The new classification are:*/
/*1. 45-54isP1.*/
/*2. 55-64isP2.*/
/*3. 65-74isC.*/
/*4. 75-84isD.*/
/*5. 85-100isHD.*/
/*Change the database to reflect the new grade classification.*/



SELECT
    *
FROM
    enrolment;

UPDATE enrolment
SET
    enrol_grade = 'P1'
WHERE
    enrol_mark >= 45
    AND enrol_mark <= 54;

UPDATE enrolment
SET
    enrol_grade = 'P2'
WHERE
    enrol_mark >= 55
    AND enrol_mark <= 64;

UPDATE enrolment
SET
    enrol_grade = 'C'
WHERE
    enrol_mark >= 65
    AND enrol_mark <= 74;

UPDATE enrolment
SET
    enrol_grade = 'D'
WHERE
    enrol_mark >= 75
    AND enrol_mark <= 84;

UPDATE enrolment
SET
    enrol_grade = 'HD'
WHERE
    enrol_mark >= 85;

COMMIT;


/*TASKS*/
/*1. A student with student number 11111114 has taken intermission in semester 2 2014, 
--hence all the enrolment of this student for semester 2 2014 should be removed. 
Change the database to reflect this situation.*/


select * from enrolment;

delete from enrolment where stu_nbr = 11111114 and enrol_year = 2014 and enrol_semester = '2';
commit;

select * from enrolment;


/*2. Assume that Wendy Wheat (student number 11111113) has withdrawn from the university. 
Remove her details from the database.*/


select * from student;

delete from student where stu_nbr = 11111113;

delete from enrolment where stu_nbr = 11111113;
delete from student where stu_nbr = 11111113;

commit;

/*3. Add Wendy Wheat back to the database (use the INSERT statements you have created when completing module Tutorial 6 SQL Data Definition Language DDL).*/
/*Change the FOREIGN KEY constraints definition for table STUDENT so it will now include the references_clause ON DELETE CASCADE. Hint: You need to use the ALTER TABLE statement to drop the FOREIGN KEY constraint first and then put it back using ALTER TABLE with ADD CONSTRAINT clause. A brief description of using ALTER to drop a constraint is available ​here​, the ADD CONSTRAINT was covered in tutorial 6. For more details, you can check the SQL Reference Manual (available from Moodle) for the full syntax and a range of examples.*/
/*Once you have changed the table, now, perform the deletion of the Wendy Wheat (student number 11111113) row in the STUDENT table. Examine the ENROLMENT table. What happens to the enrolment records of Wendy Wheat?*/
insert into student values (11111113,'Wheat','Wendy','05-May-1990');
insert into enrolment values (11111113,'FIT5132',2014,'2',null,null);
insert into enrolment values (11111113,'FIT5111',2014,'2',null,null);
commit;

select * from student;
select * from enrolment;

alter table enrolment drop constraint FK_ENROLMENT_STUDENT;

alter table enrolment add constraint FK_ENROLMENT_STUDENT 
  foreign key (stu_nbr) references student (stu_nbr) on delete cascade; 
  
delete from student where stu_nbr = 11111113;

commit;

select * from student;
select * from enrolment;





SET ECHO OFF

SPOOL OFF