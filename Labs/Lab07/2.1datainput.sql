spool add_data_run.txt
set echo on


insert into student values (11111111,'Bloggs','Fred','01-Jan-1990');
insert into student values (11111112,'Nice','Nick','10-Oct-1994');
insert into student values (11111113,'Wheat','Wendy','05-May-1990');
insert into student values (11111114,'Sheen','Cindy','25-Dec-1996');
   
insert into unit values ('FIT5132','Introduction to Databases');
insert into unit values ('FIT5016','Project');
insert into unit values ('FIT5111','Student''s Life'); 
insert into unit values ('FIT9999','FIT Last Unit');

insert into enrolment values (11111111,'FIT5132',2013,'1',35,'N');
insert into enrolment values (11111111,'FIT5016',2013,'1',61,'C');
insert into enrolment values (11111111,'FIT5132',2013,'2',42,'N');
insert into enrolment values (11111111,'FIT5111',2013,'2',76,'D');
insert into enrolment values (11111111,'FIT5132',2014,'2',null,null);
insert into enrolment values (11111112,'FIT5132',2013,'2',83,'HD');
insert into enrolment values (11111112,'FIT5111',2013,'2',79,'D');
insert into enrolment values (11111113,'FIT5132',2014,'2',null,null);
insert into enrolment values (11111113,'FIT5111',2014,'2',null,null);
insert into enrolment values (11111114,'FIT5111',2014,'2',null,null); 

commit;