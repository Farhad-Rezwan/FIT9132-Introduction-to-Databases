/*1 */
SELECT DISTINCT
    unitcode
FROM
    uni.schedclass
WHERE
    cltype = 'L'
    AND clday = 'Mon'
ORDER BY
    unitcode ASC;
/*2*/

SELECT
    studfname || studlname AS studentname,
    TO_CHAR(studdob, 'mm-MON-yyyy')
FROM
    uni.student;

/*3*/

SELECT DISTINCT
    studfname
    || ''
    || studlname AS name,
    studdob
FROM
    uni.student     s
    JOIN uni.enrolment   e
    ON s.studid = e.studid
WHERE
    e.grade = 'HD'
    AND e.unitcode = 'FIT1004'
ORDER BY
    studdob;
    
    
/* 4.*/

SELECT DISTINCT
    e.unitcode,
    studfname,
    studlname
FROM
    ( ( uni.student     s
    JOIN uni.enrolment   e
    ON s.studid = e.studid )
    JOIN uni.unit        u
    ON e.unitcode = u.unitcode )
WHERE
    grade = 'HD'
    AND unitname LIKE '%Data%';
    
    
    
-- 5
SELECT DISTINCT
    unitname
FROM
    uni.unit         u
    JOIN uni.schedclass   s
    ON u.unitcode = s.unitcode
WHERE
    cltype = 'L'
    AND clday = 'Mon'
ORDER BY
    unitname;
    
--6
SELECT DISTINCT
    studfname,
    studlname
FROM
    ( ( uni.student      s
    JOIN uni.enrolment    e
    ON s.studid = e.studid )
    JOIN uni.schedclass   c
    ON e.unitcode = c.unitcode
       AND e.semester = c.semester
       AND e.ofyear = c.ofyear )
WHERE
    cltype = 'L'
    AND clday = 'Mon'
ORDER BY
    studlname,
    studfname;
    
    
    
    
    
    
-- practice again---1
select distinct unitcode from uni.schedclass where cltype = 'L' and clday = 'Mon';
--2
select to_char(studdob, 'dd-MON-yyyy') from uni.student;
--3
select studfname || ' ' || studlname As name , to_char(studdob, 'dd-MON-YYYY') from uni.student ;
--4
select s.studfname, s.studlname from uni.student s JOIN uni.enrolment e ON s.studid = e.studid where e.grade = 'HD' and e.unitcode = 'FIT1004';
--5
select * from ((uni.student s JOIN uni.enrolment e ON s.studid = e.studid) join uni.unit u on e.unitcode = u.unitcode) where e.grade = 'HD' and u.unitname like '%Data%';
--6
select Distinct u.unitname from uni.unit u join uni.schedclass s on u.unitcode = s.unitcode where clday = 'Mon';
--7
select distinct studfname, studlname
from ((uni.student s join uni.enrolment e on s.studid = e.studid)
   join uni.schedclass c on e.unitcode = c.unitcode and e.semester = c.semester and e.ofyear = c.ofyear)
where cltype = 'L'
and clday ='Mon'
order by studlname, studfname;



--7
select s.studfname || '' || s.studlname As "Student Name" from ((uni.student s JOIN uni.enrolment e on s.studid = e.studid)join uni.schedclass s on e.unitcode = s.unitcode and e.semester = s.semester and e.ofyear = s.ofyear);