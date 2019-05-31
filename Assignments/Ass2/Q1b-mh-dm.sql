/* FIT9132 2019 S1 Assignment 2 Q1-Part B ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
   
*/

/* (i)*/
CREATE SEQUENCE patient_seq START WITH 200000 INCREMENT BY 10;

CREATE SEQUENCE admission_seq START WITH 200000 INCREMENT BY 10;

CREATE SEQUENCE adm_prc_seq START WITH 200000 INCREMENT BY 10;



/* (ii)*/

INSERT INTO patient VALUES (
    patient_seq.NEXTVAL,
    'Peter',
    'Xiue',
    '14 Narrow Lane Caulfield',
    TO_DATE('01-Oct-1981', 'dd-Mon-yyyy'),
    '0123456789'
);

INSERT INTO admission VALUES (
    admission_seq.NEXTVAL,
    TO_DATE('16-May-2019 10:00 AM', 'dd-Mon-yyyy hh:mi AM'),
    NULL,
    patient_seq.CURRVAL,
    (
        SELECT
            doctor_id
        FROM
            doctor
        WHERE
            doctor_title = 'Dr'
            AND doctor_fname = 'Sawyer'
            AND upper(doctor_lname) = 'HAISELL'
    )
);

COMMIT;

/* (iii)*/

UPDATE doctor_speciality
SET
    spec_code = (
        SELECT
            spec_code
        FROM
            speciality
        WHERE
            spec_description = 'Vascular surgery'
    )
WHERE
    doctor_id = (
        SELECT
            doctor_id
        FROM
            doctor
        WHERE
            doctor_title = 'Dr'
            AND doctor_fname = 'Decca'
            AND upper(doctor_lname) = 'BLANKHORN'
    )
    AND spec_code = (
        SELECT
            spec_code
        FROM
            speciality
        WHERE
            spec_description = 'Thoracic surgery'
    );

COMMIT;  

/* (iv)*/

DELETE FROM doctor_speciality
WHERE
    spec_code = (
        SELECT
            spec_code
        FROM
            speciality
        WHERE
            spec_description = 'Medical genetics'
    );

DELETE FROM speciality
WHERE
    spec_description = 'Medical genetics';

COMMIT;