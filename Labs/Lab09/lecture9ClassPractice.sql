/*1*/
SELECT
    COUNT(mark) AS enrolwithmark,
    TO_CHAR(AVG(mark), '$999.99') AS averagemark
FROM
    uni.enrolment;
/*2*/

SELECT
    MAX(mark)
FROM
    uni.enrolment;
/*3*/

SELECT
    studid,
    MAX(mark)
FROM
    uni.enrolment
GROUP BY
    studid
ORDER BY
    studid;
/*5*/

SELECT
    u.unitcode,
    u.unitname,
    MAX(e.mark)
FROM
    uni.unit        u
    JOIN uni.enrolment   e
    ON u.unitcode = e.unitcode
GROUP BY
    u.unitcode,
    u.unitname
ORDER BY
    MAX(mark) DESC;
    
    
    /*6*/

SELECT
    u.unitcode,
    u.unitname,
    e.semester,
    ofyear,
    TO_CHAR(AVG(mark), '99.99')
FROM
    uni.unit        u
    JOIN uni.enrolment   e
    ON u.unitcode = e.unitcode
GROUP BY
    u.unitcode,
    u.unitname,
    e.semester,
    ofyear;
/*7*/

SELECT
    s.studid,
    studfname,
    studlname,
    COUNT(DISTINCT unitcode) AS num_units,
    round(AVG(mark), 2) AS average_marks
FROM
    uni.student     s
    JOIN uni.enrolment   e
    ON s.studid = e.studid
GROUP BY
    s.studid,
    studfname,
    studlname
HAVING
    COUNT(DISTINCT unitcode) >= 3
ORDER BY
    s.studid;

/*8*/

SELECT
    unitcode,
    COUNT(grade)
FROM
    uni.enrolment
WHERE
    grade = 'HD'
GROUP BY
    unitcode
ORDER BY
    unitcode;


/*9*/

SELECT
    unitcode,
    grade,
    count (*) as num
FROM
    uni.enrolment
WHERE
    grade = 'HD'
    OR grade = 'C'
    OR grade = 'D'
GROUP BY
    unitcode,
    grade
    order by 
    unitcode,
    grade;
    
    
--10
select unitcode, studid from uni.enrolment where (unitcode, mark) in (SELECT
            unitcode,
            MAX(mark)
        FROM
            uni.enrolment
        GROUP BY
            unitcode) group by unitcode, studid;


        
S