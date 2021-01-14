--------------------------------------------------------
--  DDL for Trigger COURSE_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "COURSE_FP_TRG" 
BEFORE INSERT OR UPDATE ON COURSE
FOR EACH ROW
BEGIN
IF inserting THEN
:new.course_no := course_no_seq.nextval;
:new.created_by := user;
:new.created_date := sysdate;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
IF updating THEN
:new.course_no := :old.course_no;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
END;
/
ALTER TRIGGER "COURSE_FP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ENR_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ENR_FP_TRG" 
BEFORE INSERT OR UPDATE ON ENROLLMENT
FOR EACH ROW
BEGIN
IF inserting THEN
:new.created_by := user;
:new.created_date := sysdate;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
IF updating THEN
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
END;
/
ALTER TRIGGER "ENR_FP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SECT_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SECT_FP_TRG" 
BEFORE INSERT OR UPDATE ON SECTION
FOR EACH ROW
BEGIN
IF inserting THEN
:new.section_id := section_id_seq.nextval;
:new.created_by := user;
:new.created_date := sysdate;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
IF updating THEN
:new.section_id := :old.section_id;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
END;
/
ALTER TRIGGER "SECT_FP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STU_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "STU_FP_TRG" 
BEFORE INSERT OR UPDATE ON STUDENT
FOR EACH ROW
BEGIN
IF inserting THEN
:new.student_id := student_id_seq.nextval;
:new.created_by := user;
:new.created_date := sysdate;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
IF updating THEN
:new.student_id := :old.student_id;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
END;
/
ALTER TRIGGER "STU_FP_TRG" ENABLE;