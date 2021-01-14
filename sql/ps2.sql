--------------------------------------------------------
--  File created - Wednesday-October-07-2020   
--------------------------------------------------------

--------------------------------------------------------
--  DDL for Trigger COURSE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "COURSE_TRG" BEFORE
    INSERT ON course
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.course_no := course_seq.nextval;
    END IF;
END;

/
ALTER TRIGGER "COURSE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SECTION_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SECTION_TRG" BEFORE
    INSERT ON section
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.section_id := section_seq.nextval;
    END IF;
END;

/
ALTER TRIGGER "SECTION_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STUDENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "STUDENT_TRG" BEFORE
    INSERT ON student
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.student_id := student_seq.nextval;
    END IF;
END;

/
ALTER TRIGGER "STUDENT_TRG" ENABLE;
