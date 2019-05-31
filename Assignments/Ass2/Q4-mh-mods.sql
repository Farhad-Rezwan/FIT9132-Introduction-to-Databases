/* FIT9132 2019 S1 Assignment 2 Q4 ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
   
*/
/* (i)*/
ALTER TABLE item ADD stock_reorder_level NUMBER(3, 0);

UPDATE item
SET
    stock_reorder_level = item_stock / 2;

ALTER TABLE item ADD CONSTRAINT stock_reorder_level_chk CHECK ( stock_reorder_level

IS NOT NULL );

/* (ii)*/

SET ECHO ON

DROP TABLE proc_performers CASCADE CONSTRAINTS;

CREATE TABLE proc_performers (
    adprc_no    NUMBER(10, 0) NOT NULL,
    doctor_id   NUMBER(7, 0) NOT NULL,
    dr_type     VARCHAR(50)
);

ALTER TABLE proc_performers ADD CONSTRAINT pk_proc_per PRIMARY KEY ( adprc_no,
                                                                     doctor_id );

ALTER TABLE proc_performers
    ADD CONSTRAINT fk_admission_doc FOREIGN KEY ( adprc_no )
        REFERENCES adm_prc ( adprc_no );

ALTER TABLE proc_performers
    ADD CONSTRAINT fk_pr_doctor FOREIGN KEY ( doctor_id )
        REFERENCES doctor ( doctor_id );

INSERT INTO proc_performers VALUES (
    0002389,
    1033,
    ' Ancillary  Doctor'
);

INSERT INTO proc_performers (
    adprc_no,
    doctor_id,
    dr_type
)
    SELECT
        adprc_no,
        perform_dr_id,
        'Lead doctor'
    FROM
        adm_prc;

ALTER TABLE adm_prc DROP COLUMN perform_dr_id;

SELECT
    *
FROM
    proc_performers;

SELECT
    *
FROM
    adm_prc;

SET ECHO OFF