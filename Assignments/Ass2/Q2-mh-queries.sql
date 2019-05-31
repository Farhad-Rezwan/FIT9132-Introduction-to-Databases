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
    TO_CHAR(round(proc_std_cost, 2), '$9900.99') AS standard_cost
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
    p.patient_lname,
    p.patient_fname,
    TO_CHAR(p.patient_dob, 'dd-MON-yyyy') AS dob,
    COUNT(a.patient_id) AS numberadmissions
FROM
    admission   a
    JOIN patient     p
    ON a.patient_id = p.patient_id
GROUP BY
    a.patient_id,
    p.patient_lname,
    p.patient_fname,
    p.patient_dob,
    TO_CHAR(p.patient_dob, 'dd-MON-yyyy')
HAVING
    COUNT(a.adm_no) > 2
ORDER BY
    numberadmissions DESC,
    dob;
 
    
/* (vi)*/

SELECT
    a.adm_no,
    p.patient_id,
    p.patient_fname,
    TO_CHAR((a.adm_discharge - a.adm_date_time), '99')
    || ' '
    || 'days'
    || ' '
    || TO_CHAR(round(mod((a.adm_discharge - a.adm_date_time), 1) * 24, 1), '99.9'
    )
    || ' '
    || ' hrs' AS staylength
FROM
    admission   a
    JOIN patient     p
    ON a.patient_id = p.patient_id
GROUP BY
    a.adm_no,
    p.patient_id,
    p.patient_fname,
    p.patient_lname,
    ( a.adm_discharge - a.adm_date_time )
HAVING
    ( a.adm_discharge - a.adm_date_time ) > (
        SELECT
            AVG(adm_discharge - adm_date_time)
        FROM
            admission
    )
ORDER BY
    a.adm_no; 
    
   
/* (vii)*/

SELECT
    p.proc_code,
    p.proc_name,
    p.proc_description,
    p.proc_time,
    TO_CHAR(proc_std_cost -(
        SELECT
            AVG(adprc_pat_cost)
        FROM
            adm_prc a
        WHERE
            ap.proc_code = a.proc_code
    ), '9990.00') AS "price differential"
FROM
    procedure   p
    JOIN adm_prc     ap
    ON p.proc_code = ap.proc_code
ORDER BY
    p.proc_code;

/* (viii)*/

SELECT
    p.proc_code,
    p.proc_name,
    nvl(it.item_code, '---') AS item_code,
    nvl(i.item_description, '---') AS item_description,
    nvl(TO_CHAR(MAX(it.it_qty_used)), '---') AS max_qty_used
FROM
    adm_prc          a
    JOIN item_treatment   it
    ON a.adprc_no = it.adprc_no
    JOIN item             i
    ON it.item_code = i.item_code
    RIGHT JOIN procedure        p
    ON p.proc_code = a.proc_code
GROUP BY
    p.proc_code,
    p.proc_name,
    it.item_code,
    i.item_description
ORDER BY
    p.proc_name;