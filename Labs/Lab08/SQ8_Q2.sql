SET ECHO ON;

SPOOL weeksw8.

txt;

/*- fit9132 unit 8 question A*/
/*- Farhad Ullah Rezwan*/
/*- student ID: 30270111*/

/**/
/*1. List the name of all students who have marks in the range of 60 to 70.*/

SELECT
    studfname,
    studlname,
    mark
FROM
    uni.student s
    JOIN uni.enrolment
    ON uni.student.studid = uni.enrolment.studid;

/*2. List all the unit codes, semester and name of the chief examiner for all the units that are offered in 2014.*/

SELECT
    unitcode,
    semestr,
    stafffname,
    stafflname
FROM
    uni.offering o
join uni.staff s ON o.ofyear

/*3. List the name (firstname and surname), unit names, the year and semester of enrolment of all units taken so far.*/
-- find all the attributes i need, and wbat are the tables need (belong to that attribute), if cannot join or no relation, check 
-- here we need to join four tables instead of 3 coz 

SELECT
    studfname,
    studlname,
    unitname,
    TO_CHAR(e.ofyear, 'YYYY'),
    e.semester /* there are semester in two tables so need e*/
FROM
    uni.student     s
    JOIN uni.enrolment   o
    ON s.studid = o.studid;

join uni.osffering  a on ( o.unitcode = o.unitcode AND e.semester = o.semester AND e.ofyear - o.ofyear)
join uni.unit d
ON o.unitcode = u.unitcode;



/*4. List all the unit codes and the unit names and their year and semester offerings. To display the date correctly in Oracle, you need to use to_char function. For example, to_char(ofyear,'YYYY').*/
-- home work

/*5. List the unit code, semester, class type (lecture or tutorial), day and time for all units taught by Albus Dumbledore in 2013. Sort the list according to the unit code.*/
-- home work
/*6. Create a study statement for Mary Smith. A study statement contains unit code, unit name, semester and year study was attempted, the mark and grade.*/
-- home work mm ss
/*7. List the unit code, unit name and the unit code and unit name of the prerequisite units of all units in the database.*/


SELECT
    u1.unitcode,
    u2.unitcode,
    u1.unitcode as prereq_unitcode,-- instead of unitcode we can use-- p.has_prereq_of or has_prereq_of similar
    u2.unitcode as prereq_unitcode,
    
FROM
    uni.unit u1
JOIN uni.prereq p on u1.unitcode * p.unitcode
JOIN uni.unit o2
ON p.has_prereq_of = u2.unitcode -- made dupicate for a table twice for this kind of question;

order BY u1.unitcode,
            prereq_unitcode; --instead of u1 i can use this





/*8. List the unit code and unit name of the pre-requisite units of 'Advanced Data Management' unit.*/

/*9. Find all students (list their id, firstname and surname) who have a failed unit in the year 2013.*/



SELECT distinct -- if ther any student repeating the same here 
    s.studid,
    studfname,
    studlname
FROM
    uni.student     u
    JOIN uni.enrolment   e
    ON u.studid = e.studid
WHERE
    mark < 50  and TO_CHAR ( ofyear,
              'YYYY) = '2013' order by s.sutdent
              ;
              












/*10. List the student name, unit code, semester and year for those students who do not have marks recorded.*/ 



set echo off

SPOOL
off;