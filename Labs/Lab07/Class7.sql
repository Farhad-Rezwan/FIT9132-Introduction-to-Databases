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