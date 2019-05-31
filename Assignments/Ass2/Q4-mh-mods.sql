/* FIT9132 2019 S1 Assignment 2 Q4 ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
   
*/
/* (i)*/
Alter table item ADD stock_reorder_level number (3,0);

update item
set stock_reorder_level = item_stock/2;

alter table item add constraint stock_reorder_level_chk check ( stock_reorder_level is not null);


/* (ii)*/







