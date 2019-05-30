SELECT
    u.unitcode,
    unitname,
    COUNT(has_prere_of)
FROM
    u.unitcode   u
    LEFT OUTER JOIN uni.prereq   p on u.unitcode group by by unitcode, unitname ;

select * from uni.unit;
select * form uni.pre)req;

--2
select unitcode, unitname FROM uni.unit
minus-- can use union  data type should exactly same
select u.unitcode, u.unitname from uni.unit u join uni.prereq p on u.unitcode = p.unitcode;

--another way of ding
select unitcode, unitname from uni.unit where unitcode not in (
select unitcode from uni.prereq)

order by unitcode;

--3
select unitcode, to_char(ofyear, 'yyyy') as year , semester, to_char(nvl(avg(mark),0),'$900.99')
as average from uni.enrolment
group by unitcode, ofyear, semester
order by unitcode;

