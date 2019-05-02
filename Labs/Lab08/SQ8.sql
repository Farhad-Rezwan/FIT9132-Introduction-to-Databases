set echo on;
spool weekSW8.txt;

--- fit9132 unit 8 question A
--- Farhad Ullah Rezwan
--- student ID: 30270111

select * from UNI.student;


--2.  List all units and their details.

select * from uni.unit order by unitcode;

-- 3. List all students who have the surname 'Smith'.
select * from uni.student where studlname = 'Smith';

--4. List the student's details for those students who have surname starts with 
--the letter "S". In the display, rename the columns studfname and studlname to
--firstname and lastname.

select studid, studfname as firstname, studlname as lastname, to_char(studdob, 'YYYY/Mon/DD') studemail from uni.student where studlname like 'S%';

---5. List the student's surname, firstname and address for those students who have
--surname starts with the letter "S" and firstname contains the letter "i".
-- we can check it in student table then data.

select * from uni.student where studlname like 'S%' and studfname like '%i' order by studid;

--List the unit code and semester of all units that are offered in the year 2014.
--To complete this question you need to use the Oracle function to_char to 
--convert the data type for the year component of the offering date into text. 
--For example, to_char(ofyear,'yyyy') - here we are only using the year part of the date.

select * from uni.offering where to_char(ofyear, 'YYYY') = '2014';-- cannot use greter or less then 


-- alternative way instead of extract - extract (year from ofyear) = 2014;-- here we can use greater and less then

-- 7. List the unit code of all units that are offered in semester 1 of 2014.

select * from uni.offering where semester = 1 and to_char(ofyear, 'YYYY') = '2014' order by unitcode; -- need order by because need one row coz so need order by

-- 8. 

select * from uni.unit where unitcode like 'FIT1%' order by unitcode; -- % 

--9. List the unit code and semester of all units that were offered in either 
--semester 1 or summer of 2013. Note: summer semester is recorded as semester 3.

select unitcode, semester from uni.offering where (semester = 1 or semester = 3) and to_char(ofyear, 'YYYY') ='2013' order by unitcode, semester; -- accending decending order by nia quetion ashbe

-- also can use where semster in (1,3)

--10. List the student number, mark, unit code and semester for those students 
-- who have passed any unit in semester 1 of 2013.

select * from uni.enrolment where semester = 1 and to_char(ofyear, 'YYYY') = '2013' and mark >= 50;
-- alternative we can use grade grade <> 'N'



set echo off
spool off;