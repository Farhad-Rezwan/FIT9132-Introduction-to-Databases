SELECT
    u.unitcode,
    COUNT(p.has_prereq_of)
FROM
    uni.unit     u
    LEFT OUTER JOIN uni.prereq   p
    ON u.unitcode = p.unitcode
GROUP BY
    u.unitcode
ORDER BY
    u.unitcode;

SELECT
    *
FROM
    uni.unit;

SELECT
    * form uni.pre)req;

--2
select unitcode, unitname FROM uni.unit
minus-- can use union  data type should exactly same
select u.unitcode, u.unitname from uni.unit u join uni.prereq p on u.unitcode = p.unitcode;

--another way of ding
select unitcode, unitname from uni.unit where unitcode NOT
in

( SELECT
    unitcode
FROM
    uni.prereq
)
ORDER BY
    unitcode;

/*3*/

SELECT
    unitcode,
    TO_CHAR(ofyear, 'yyyy') AS year,
    semester,
    TO_CHAR(nvl(AVG(mark), 0), '900.99') AS average
FROM
    uni.enrolment
GROUP BY
    unitcode,
    ofyear,
    semester
ORDER BY
    unitcode;

--2
select unitcode, unitname from uni.unit
minus
select u.unitcode, unitname from uni.unit u join uni.prereq p on u.unitcode = p.unitcode;

----outer join

select u.unitcode, u.unitname 
from uni.unit u 
left outer JOIN uni.prereq p
ON u.unitcode = p.unitcode 
group BY u.unitcode,
         u.unitname
HAVING
    COUNT(has_prereq_of) = 0 
order by unitcode;

-- subquary
select unitcode, unitname from uni.unit where unitcode not in (select unitcode from uni.prereq) order by unitcode;
