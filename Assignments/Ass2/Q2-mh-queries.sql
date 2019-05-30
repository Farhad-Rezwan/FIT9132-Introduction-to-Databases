/* FIT9132 2019 S1 Assignment 2 Q2 ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
   
*/

/* (i)*/
select * from doctor where doctor_id = (select doctor_id from doctor_speciality ds join speciality s on ds.spec_code = s.spec_code where spec_description = 'Orthopedic surgery');

select doctor_id from doctor_speciality ds join speciality s on ds.spec_code = s.spec_code where spec_description = 'Orthopedic surgery';


/* (ii)*/

select item_code, item_description, item_stock, cc_title from item i join costcentre c on i.cc_code = c.cc_code where item_stock > 50
union
select item_code, 'disposible', item_stock, cc_title from item i join costcentre c on i.cc_code = c.cc_code where item_stock <= 50
order by item_code;


    
/* (iii)*/
SELECT
    p.patient_id,
    p.patient_fname || ' ' || p.patient_lname AS "Patient Name",
    to_char(adm_date_time, 'dd-Mon-yyyy hh24:mi') AS ADMDATETIME,
    d. doctor_title || ' '|| d.doctor_fname || ' ' || d.doctor_lname as "Doctor Name"
FROM
    patient     p
    JOIN admission   a
    ON p.patient_id = a.patient_id
    JOIN doctor      d
    ON a.doctor_id = d.doctor_id
WHERE
    TO_CHAR(a.adm_date_time, 'dd-Mon-yyyy') = '14-Mar-2019'
    order by ADMDATETIME;



/* (iv)*/

select * from procedure where proc_std_cost = AVG(proc_std_cost);



 
/* (v)*/





    
/* (vi)*/





    
/* (vii)*/





    
/* (viii)*/


select * from patient p join admission a on p.patient_id = a.patient_id  where adm_discharge is not null;

select a.adm_no, (to_number((a.adm_discharge - a.adm_date_time), '99.99' )) AS daya  from patient p join admission a on p.patient_id = a.patient_id  where adm_discharge is not null;


select a.adm_no, to_timestamp(a.adm_discharge - a.adm_date_time) AS days  from patient p join admission a on p.patient_id = a.patient_id  where adm_discharge is not null;





select a.adm_no, to_date(a.adm_discharge, 'hh24:mi') - to_date(a.adm_date_time, 'hh24:mi')AS days  from patient p join admission a on p.patient_id = a.patient_id  where adm_discharge is not null;


select to_date('to_char(a.adm_discharge, 'hh24:mi' )', 'hh24:mi') AS aba from patient p join admission a on p.patient_id = a.patient_id  where adm_discharge is not null;

select to_date('to_char(a.adm_discharge, 'hh:mi' )', 'hh:mi') AS aba from patient p join admission a on p.patient_id = a.patient_id  where adm_discharge is not null;

