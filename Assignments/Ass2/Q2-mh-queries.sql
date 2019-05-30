/* FIT9132 2019 S1 Assignment 2 Q2 ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
   
*/

/* (i)*/
SELECT
    doctor_title,
    doctor_fname,
    doctor_lname,
    doctor_phone
FROM
    doctor
WHERE
    doctor_id IN (
        SELECT
            doctor_id
        FROM
            doctor_speciality   ds
            JOIN speciality          s
            ON ds.spec_code = s.spec_code
        WHERE
            upper(spec_description) = 'ORTHOPEDIC SURGERY'
    )
ORDER BY
    doctor_lname,
    doctor_fname;

/* (ii)*/

SELECT
    item_code,
    item_description,
    item_stock,
    cc_title
FROM
    item         i
    JOIN costcentre   c
    ON i.cc_code = c.cc_code
WHERE
    item_stock > 50
    AND lower(item_description) LIKE '%disposable%'
ORDER BY
    item_code;


    
/* (iii)*/

SELECT
    p.patient_id,
    p.patient_fname
    || ' '
    || p.patient_lname AS "Patient Name",
    TO_CHAR(adm_date_time, 'dd-Mon-yyyy hh24:mi') AS admdatetime,
    d.doctor_title
    || ' '
    || d.doctor_fname
    || ' '
    || d.doctor_lname AS "Doctor Name"
FROM
    patient     p
    JOIN admission   a
    ON p.patient_id = a.patient_id
    JOIN doctor      d
    ON a.doctor_id = d.doctor_id
WHERE
    TO_CHAR(a.adm_date_time, 'dd-Mon-yyyy') = '14-Mar-2019'
ORDER BY
    admdatetime;


/* (iv)*/

SELECT
    proc_code,
    proc_name,
    proc_description,
    TO_CHAR(round(proc_std_cost, 2), '$9900.99') AS "standard cost"
FROM
    procedure
WHERE
    proc_std_cost < (
        SELECT
            AVG(proc_std_cost)
        FROM
            procedure
    )
ORDER BY
    proc_std_cost DESC;

 
/* (v)*/



SELECT
    a.patient_id,
    p.patient_fname,
    p.patient_lname,
    to_char(p.patient_dob, 'dd-MON-yyyy') AS DOB,
    COUNT(a.patient_id) as numberadmissions
    from admission a join patient p on a.patient_id = p.patient_id
    group by a.patient_id, p.patient_fname, p.patient_lname,p.patient_dob;
/* (vi)*/



    
/* (vii)*/



    
/* (viii)*/

SELECT
    *
FROM
    patient     p
    JOIN admission   a
    ON p.patient_id = a.patient_id
WHERE
    adm_discharge IS NOT NULL;

SELECT
    a.adm_no,
    ( to_number((a.adm_discharge - a.adm_date_time), '99.99') ) AS daya
FROM
    patient     p
    JOIN admission   a
    ON p.patient_id = a.patient_id
WHERE
    adm_discharge IS NOT NULL;

SELECT
    a.adm_no,
    to_timestamp(a.adm_discharge - a.adm_date_time) AS days
FROM
    patient     p
    JOIN admission   a
    ON p.patient_id = a.patient_id
WHERE
    adm_discharge IS NOT NULL;

SELECT
    a.adm_no,
    TO_DATE(a.adm_discharge, 'hh24:mi') - TO_DATE(a.adm_date_time, 'hh24:mi') AS days
FROM
    patient     p
    JOIN admission   a
    ON p.patient_id = a.patient_id
WHERE
    adm_discharge IS NOT NULL;

SELECT
    TO_DATE
( 'to_char(a.adm_discharge, 'hh24:mi' )', 'hh24:mi') AS aba from patient p join admission a on p.patient_id = a.patient_id  where adm_discharge is not null;

select to_date('to_char(a.adm_discharge, 'hh:mi ' )',
'hh:mi' ) AS aba
FROM
    patient     p
    JOIN admission   a
    ON p.patient_id = a.patient_id
WHERE
    adm_discharge IS NOT NULL;

