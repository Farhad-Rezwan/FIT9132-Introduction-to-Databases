drop table customer purge;
drop table agent purge;


create table agent
  (
    agent_code     number (3) not null ,
    agent_areacode number (3) not null ,
    agent_phone    char (8) not null ,
    agent_lname    varchar2 (50) not null ,
    agent_ytd_sls  number (8,2) not null
);


alter table agent add constraint agent_pk primary key
   ( agent_code ) ;

create table customer
  (
cus_code  number (5) not null ,
cus_lname   varchar2 (50) not null ,
cus_fname   varchar2 (50) not null ,
cus_initial char (1) ,
cus_renew_date date not null ,
agent_code     number (3)






);

alter table customer add constraint customer_pk primary key( cus_code ) ;
alter table customer add constraint customer_agent_fk foreign key( agent_code ) references agent ( agent_code ) on delete set null;

insert into agent values (501,713,'228-1249','Alby',132735.75);
insert into customer values(10010,'Ramas','Alfred','A','05-Apr-2014',501);



select *from agent;