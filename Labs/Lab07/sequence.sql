set echo on
create sequence stud_sequence start with 11111115 increment by 5;

select * from cat;

insert into student values (student_seq.nextval, 'Mouse', 'Mickey', '01-Feb-1980');
select * from student;

insert into student values (student_seq.nextval, 'fname', 'lastname', '01-Feb-1991');
insert into enrollment values (student_seq.currval, (select unit_code from unit where unit_name = 'Introduction to Databases'), 2011, 2, null, null);

create table FIT5111_students
as select * from enrolment where unit_code = 'FIT5111';

create table Fit5111 AS select * from enrolment where unit_code = 'FIT5111';
select * from Fit5111;


alter table unit add (credit_point number(2,0) default 6);
insert into unit values ('FIT7712', 'Intorduction to jani', 4);

commit;

set echo off