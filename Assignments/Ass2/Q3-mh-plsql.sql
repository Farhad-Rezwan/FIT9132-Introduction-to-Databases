/* FIT9132 2019 S1 Assignment 2 Q3 ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
   
*/

/* (i)*/
CREATE OR REPLACE TRIGGER CHANGE_ITEM_CODE BEFORE
    UPDATE OF item_code ON item
    FOR EACH ROW
BEGIN
    UPDATE item_treatment
    SET
        item_code = :new.item_code
    WHERE
        item_code = :old.item_code;

END;
/

UPDATE item
SET
    item_code = 'KNR56'
WHERE
    item_code = 'KN056'
    AND item_description = 'Right Knee Brace';

COMMIT;

/* (ii)*/

SELECT
    *
FROM
    patient;

CREATE OR REPLACE TRIGGER CHK_NULL_NAMES BEFORE
    INSERT OR UPDATE OF patient_fname, patient_lname ON patient
    FOR EACH ROW
BEGIN
    IF inserting THEN
        IF :new.patient_fname IS NULL AND :new.patient_lname IS NULL THEN
            raise_application_error(-20000, 'Cannot insert null value in both first name and last name'
            );
        END IF;

    ELSIF updating THEN
        IF :new.patient_fname IS NULL AND :new.patient_lname IS NULL THEN
            raise_application_error(-20000, 'Cannot insert null value in both first name and last name'
            );
        END IF;
    END IF;
END;
/
 
/* (iii)*/

CREATE OR REPLACE TRIGGER UPDATE_STOCK_ITEM BEFORE
    DELETE OR INSERT OR UPDATE OF it_qty_used ON item_treatment
    FOR EACH ROW
BEGIN
    IF inserting THEN
        UPDATE item
        SET
            item_stock = item_stock - :new.it_qty_used
        WHERE
            item_code = :new.item_code;

    END IF;
END;
/
 