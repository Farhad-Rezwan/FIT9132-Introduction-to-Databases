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
    
-- delete 3.
-- one way to do this insert into student...
-- we will do and go to the question about wendy and paste these and also enrollment about wendy
insert into student values (11111113,'Wheat','Wendy','05-May-1990');
insert into enrolment values (11111113,'FIT5132',2014,'2',null,null);
insert into enrolment values (11111113,'FIT5111',2014,'2',null,null); -- after we do this we use alter table to drop foraign key and alter table to add foraign key like below lines
commit;
alter table enrolment drop constraint  fk_enrolment_student;  -- check the alter sql and check the foraign key 
alter table enrolment add constraint  fk_enrolment_student
                foreign key (stu_nbr)
                references student (stu_nbr)
                on delete cascade;                                   -- if no thing like this then go to enrolment table then go to constraint and serach for foreign key,,,, 
                                        -- ie primary key is also possible to delete
                                        -- check constrains is not null constraint, but the name is system generated as we add not null in alter .sql as column level insert, thats why auto generated;
                                        -- it is also possible to use alter table to add not null constraint

delete student where stu_nbr = 11111113;
commit;
select * from enrolment;


SET ECHO OFF

SPOOL OFF