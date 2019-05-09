--drop table account;

create table account (
id number (3),
balance number (3));

insert into account values (1, 100);
insert into account values (2, 200); -- as we dont have primary key just do run one time

commit;

grant select, update on account to nwit0002; -- authority to the User2 this is authcate name fo user two

--select * from frez0003.account; -- when we use unit account we use this? 
select * from account;


--select * from nwit0002.account1;

set autocommit off 


-- q5

update account set balance = 110 where id = 1;

select * from account;
commit;

-- q6 
update account set balance = 150 where id = 2;
                            -- same cell update

                            -- update User1.account set balance = 100 wher id = 2 -0 as user 1 has exclusive lock 
                            -- commit after user 1's commit so that he can delete,
commit;


-- q7

update account set balance = 5500 where id = 2;  -- different cell update
                                                --- works question is important for exam 
                                                -- for example -- a question when commit ?
                                                
-- q8

--- how to solve deadlock- force user 2 to stop ? 

