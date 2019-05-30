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

create or replace trigger CHK_NULL_NAME
before insert or update of patient_fname, patient_lname on patient
for each row
begin
if inserting
then 
    if :new.patient_fname is null and :new.patient_lname is null
    then raise_application_error(-20000, 'Cannot insert null value in both first name and last name');
    end if;
elsif updating
then 
    if :new.patient_fname is null and :new.patient_lname is null
    then raise_application_error(-20000, 'Cannot insert null value in both first name and last name');
    end if;
end if;
end;
/
 
-- we need for updating also



/* (iii)*/


create or replace trigger UPDATE_STK_ITM
before delete or insert or update of it_qty_used on item_treatment
for each row
begin
if inserting
then update item 
set item_stock = item_stock - :new.it_qty_used
where item_code = :new.item_code;
end if;
end;
/
 





