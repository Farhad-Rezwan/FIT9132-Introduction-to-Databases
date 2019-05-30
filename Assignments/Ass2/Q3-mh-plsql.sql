/* FIT9132 2019 S1 Assignment 2 Q3 ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
   
*/

/* (i)*/

Create or replace trigger CHNG_ITM_CODE
before update of item_code on item
for each row
begin
    update item_treatment
    set item_code = :new.item_code
    where item_code =:old.item_code;
end;
/


update item set item_code = 'KNR56' where item_code = 'KN056' and item_description = 'Right Knee Brace';
commit;

/* (ii)*/


select * from patient;

create or replace trigger chk_null_fname
before insert or update on patient
for each row
begin
if inserting
then 
if : new       is null and :new         id null
then rause_appplicaiton _error(-20000, 'Cannot')
end if 
end;





/* (iii)*/


create 




