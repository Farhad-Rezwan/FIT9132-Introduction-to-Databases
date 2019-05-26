SET ECHO ON;

SPOOL weeksw8.

txt;

/*- fit9132 unit 8 question A*/
/*- Farhad Ullah Rezwan*/
/*- student ID: 30270111*/

SELECT
    *
FROM
    uni.student;

/*2.  List all units and their details.*/

SELECT
    *
FROM
    uni.unit
ORDER BY
    unitcode;

/* 3. List all students who have the surname 'Smith'.*/

SELECT
    *
FROM
    uni.student
WHERE
    studlname = 'Smith';

/*4. List the student's details for those students who have surname starts with */
/*the letter "S". In the display, rename the columns studfname and studlname to*/
/*firstname and lastname.*/

SELECT
    studid,
    studfname   AS firstname,
    studlname   AS lastname,
    TO_CHAR(studdob, 'YYYY/Mon/DD') studemail
FROM
    uni.student
WHERE
    studlname LIKE 'S%';

/*-5. List the student's surname, firstname and address for those students who have*/
/*surname starts with the letter "S" and firstname contains the letter "i".*/
/* we can check it in student table then data.*/

SELECT
    *
FROM
    uni.student
WHERE
    studlname LIKE 'S%'
    AND studfname LIKE '%i'
ORDER BY
    studid;

/*List the unit code and semester of all units that are offered in the year 2014.*/
/*To complete this question you need to use the Oracle function to_char to */
/*convert the data type for the year component of the offering date into text. */
/*For example, to_char(ofyear,'yyyy') - here we are only using the year part of the date.*/

SELECT
    *
FROM
    uni.offering
WHERE
    TO_CHAR(ofyear, 'YYYY') = '2014';/* cannot use greter or less then */

/* alternative way instead of extract - extract (year from ofyear) = 2014;-- here we can use greater and less then*/

/* 7. List the unit code of all units that are offered in semester 1 of 2014.*/

SELECT
    *
FROM
    uni.offering
WHERE
    semester = 1
    AND TO_CHAR(ofyear, 'YYYY') = '2014'
ORDER BY
    unitcode; /* need order by because need one row coz so need order by*/

/* 8. */

SELECT
    *
FROM
    uni.unit
WHERE
    unitcode LIKE 'FIT1%'
ORDER BY
    unitcode; /* % */

/*9. List the unit code and semester of all units that were offered in either */
/*semester 1 or summer of 2013. Note: summer semester is recorded as semester 3.*/

SELECT
    unitcode,
    semester
FROM
    uni.offering
WHERE
    ( semester = 1
      OR semester = 3 )
    AND TO_CHAR(ofyear, 'YYYY') = '2013'
ORDER BY
    unitcode,
    semester; /* accending decending order by nia quetion ashbe*/

/* also can use where semster in (1,3)*/

/*10. List the student number, mark, unit code and semester for those students */
/* who have passed any unit in semester 1 of 2013.*/

SELECT
    *
FROM
    uni.enrolment
WHERE
    semester = 1
    AND TO_CHAR(ofyear, 'YYYY') = '2013'
    AND mark >= 50;
/* alternative we can use grade grade <> 'N'*/

/*Part A: Retrieving data from a single table*/
/*1. List all students and their details.*/

SELECT
    *
FROM
    uni.student;

/*2. List all units and their details.*/

SELECT
    *
FROM
    uni.unit;

/*3. List all students who have the surname 'Smith'.*/

SELECT
    *
FROM
    uni.student
WHERE
    studlname = 'Smith';

/*4. List the student's details for those students who have surname starts with the letter "S". */
/*In the display, rename the columns studfname and studlname to firstname and lastname.*/

SELECT
    studfname   AS firstname,
    studlname   AS lastname
FROM
    uni.student
WHERE
    studlname LIKE 'S%';

/*5. List the student's surname, firstname and address for those students who have */
/*surname starts with the letter "S" and firstname contains the letter "i".*/

SELECT
    studlname     AS surname,
    studfname     AS firstname,
    studaddress   AS address
FROM
    uni.student
WHERE
    studlname LIKE 'S%'
    AND studfname LIKE '%i%';

/*6. List the unit code and semester of all units that are offered in the year 2014.*/
/*To complete this question you need to use the Oracle function to_char to convert 
--the data type for the year component of the offering date into text. For example, 
--to_char(ofyear,'yyyy') - here we are only using the year part of the date.*/

SELECT
    *
FROM
    uni.offering
WHERE
    TO_CHAR(ofyear, 'YYYY') = '2014';

/*7. List the unit code of all units that are offered in semester 1 of 2014.*/

SELECT DISTINCT
    unitcode
FROM
    uni.offering
WHERE
    semester = 1;

/*8. Assuming that a unit code is created based on the following rules:*/
/*○ The first three letters represent faculty abbreviation, eg FIT for the 
--Faculty of Information Technology.*/
/*○ The first digit of the number following the letter represents the year level.
--List the unit details of all first year units in the Faculty of Information Technology.*/

SELECT
    unitdesc AS "unit details"
FROM
    uni.unit
WHERE
    unitcode LIKE 'FIT1%';

/*9. List the unit code and semester of all units that were offered in either semester 1 or summer of 2013. Note: summer semester is recorded as semester 3.*/

SELECT
    *
FROM
    uni.offering
WHERE
    TO_CHAR(ofyear, 'yyyy') = 2013
    AND ( semester = 1
          OR semester = 3 );

/*10. List the student number, mark, unit code and semester for those students who have passed any unit in semester 1 of 2013.*/

SELECT
    studid,
    mark,
    unitcode,
    semester
FROM
    uni.enrolment
WHERE
    semester = 1
    AND TO_CHAR(ofyear, 'yyyy') = 2013
    AND grade <> 'N';

/*Part B: Retrieving data from multiple tables*/
/*Note: remember to use the foreign key and the primary key when joining two or more tables.*/
/*1. List the name of all students who have marks in the range of 60 to 70.*/

SELECT
    s.studfname
FROM
    uni.student     s
    JOIN uni.enrolment   e
    ON s.studid = e.studid
WHERE
    mark BETWEEN 60 AND 70;

/*2. List all the unit codes, semester and name of the chief examiner for all the units that are offered in 2014.*/

SELECT
    o.unitcode,
    o.semester,
    s.stafffname
    || ' '
    || s.stafflname AS "Staff Name"
FROM
    uni.offering   o
    JOIN uni.staff      s
    ON o.chiefexam = s.staffid;

/*3. List the name (firstname and surname), unit names, the year and semester of enrolment of all units taken so far.*/

SELECT
    studfname
    || ' '
    || studlname AS name,
    unitname,
    TO_CHAR(ofyear, 'YYYY') AS year,
    semester
FROM
    uni.student     s
    JOIN uni.enrolment   e
    ON s.studid = e.studid
    JOIN uni.unit        u
    ON e.unitcode = u.unitcode;

/*4. List all the unit codes and the unit names and their year and semester offerings. 
--To display the date correctly in Oracle, you need to use to_char function. For example, to_char(ofyear,'YYYY').*/

SELECT
    u.unitname,
    TO_CHAR(o.ofyear, 'YYYY') AS year,
    o.semester
FROM
    uni.unit       u
    JOIN uni.offering   o
    ON u.unitcode = o.unitcode;

/*5. List the unit code, semester, class type (lecture or tutorial), day and time 
--for all units taught by Albus Dumbledore in 2013. 
--Sort the list according to the unit code.*/

SELECT
    s.unitcode,
    s.semester,
    s.cltype,
    s.clday,
    s.cltime
FROM
    uni.offering     o
    JOIN uni.schedclass   s
    ON ( o.unitcode = s.unitcode
         AND o.semester = s.semester
         AND o.ofyear = s.ofyear )
    JOIN uni.staff        st
    ON o.chiefexam = st.staffid
WHERE
    stafffname = 'Albus'
    AND stafflname = 'Dumbledore'
    AND TO_CHAR(s.ofyear, 'YYYY') = '2013'
ORDER BY
    s.unitcode;

/*6. Create a study statement for Mary Smith. 
A study statement contains unit code, unit name, semester and year study was attempted, 
the mark and grade.*/

SELECT
    e.unitcode,
    u.unitname,
    e.semester,
    TO_CHAR(e.ofyear, 'YYYY')
FROM
    uni.student     s
    JOIN uni.enrolment   e
    ON s.studid = e.studid
    JOIN uni.unit        u
    ON e.unitcode = u.unitcode
WHERE
    studfname = 'Mary'
    AND studlname = 'Smith';

/*7. List the unit code, unit name and the unit code and unit name of the prerequisite 
units of all units in the database.*/

SELECT
    u1.unitcode,
    u1.unitname,
    p.has_prereq_of   AS prereq_unitcode,
    u2.unitname       AS pe
FROM
    uni.unit     u1
    JOIN uni.prereq   p
    ON u1.unitcode = p.unitcode
    JOIN uni.unit     u2
    ON u2.unitcode = p.has_prereq_of
ORDER BY
    unitcode,
    pe;

/*8. List the unit code and unit name of the pre-requisite units of 'Advanced Data Management' unit.*/

SELECT
    has_prereq_of   AS prereq_unit,
    u2.unitname     AS prereq_unitname
FROM
    uni.unit     u1
    JOIN uni.prereq   p
    ON u1.unitcode = p.unitcode
    JOIN uni.unit     u2
    ON u2.unitcode = p.has_prereq_of
WHERE
    u1.unitname = 'Advanced Data Management'
ORDER BY
    prereq_unit;


/*9. Find all students (list their id, firstname and surname) who have a failed unit in the year 2013.*/

SELECT DISTINCT
    e.studid,
    s.studfname,
    s.studlname
FROM
    uni.student     s
    JOIN uni.enrolment   e
    ON s.studid = e.studid
WHERE
    TO_CHAR(ofyear, 'YYYY') = '2013'
    AND e.mark < 50;


/*10. List the student name, unit code, semester and year for those students who do not have marks recorded.*/

SELECT
    studlname,
    studfname,
    semester,
    to_char(ofyear, 'YYYY')
FROM uni.student s join uni.enrolment e on s.studid = e.studid where e.mark is null;


SET ECHO OFF

SPOOL

off;