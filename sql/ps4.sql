--------------------------------------------------------
--  File created - Wednesday-November-11-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence COURSE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COURSE_NO_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 471 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INST_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INST_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 111 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECTION_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SECTION_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 157 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 400 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "COURSE" 
   (	"COURSE_NO" NUMBER(8,0), 
	"DESCRIPTION" VARCHAR2(50 BYTE), 
	"COST" NUMBER(9,2), 
	"PREREQUISITE" NUMBER(8,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;

   COMMENT ON COLUMN "COURSE"."COURSE_NO" IS 'The unique ID for a course.';
   COMMENT ON COLUMN "COURSE"."DESCRIPTION" IS 'The full name for this course.';
   COMMENT ON COLUMN "COURSE"."COST" IS 'The dollar amount charged for enrollment in this course.';
   COMMENT ON COLUMN "COURSE"."PREREQUISITE" IS 'The ID number of the course which must be taken as a prerequisite to this course.';
   COMMENT ON COLUMN "COURSE"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "COURSE"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "COURSE"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "COURSE"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "COURSE"  IS 'Information for a course.';
--------------------------------------------------------
--  DDL for Table ENROLLMENT
--------------------------------------------------------

  CREATE TABLE "ENROLLMENT" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SECTION_ID" NUMBER(8,0), 
	"ENROLL_DATE" DATE, 
	"FINAL_GRADE" NUMBER(3,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;

   COMMENT ON COLUMN "ENROLLMENT"."STUDENT_ID" IS 'The unique ID for a student.';
   COMMENT ON COLUMN "ENROLLMENT"."SECTION_ID" IS 'The unique ID for a section.';
   COMMENT ON COLUMN "ENROLLMENT"."ENROLL_DATE" IS 'The date this student registered for this section.';
   COMMENT ON COLUMN "ENROLLMENT"."FINAL_GRADE" IS 'The final grade given to this student for all work in this section (class).';
   COMMENT ON COLUMN "ENROLLMENT"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "ENROLLMENT"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "ENROLLMENT"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "ENROLLMENT"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "ENROLLMENT"  IS 'Information for a student registered for a particular section (class).';
--------------------------------------------------------
--  DDL for Table GRADE
--------------------------------------------------------

  CREATE TABLE "GRADE" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SECTION_ID" NUMBER(8,0), 
	"GRADE_TYPE_CODE" CHAR(2 BYTE), 
	"GRADE_CODE_OCCURENCE" NUMBER(38,0), 
	"NUMERIC_GRADE" NUMBER(3,0), 
	"COMMENTS" VARCHAR2(2000 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table GRADE_TYPE
--------------------------------------------------------

  CREATE TABLE "GRADE_TYPE" 
   (	"GRADE_TYPE_CODE" CHAR(2 BYTE), 
	"DESCRIPTION" VARCHAR2(50 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table GRADE_TYPE_WEIGHT
--------------------------------------------------------

  CREATE TABLE "GRADE_TYPE_WEIGHT" 
   (	"SECTION_ID" NUMBER(8,0), 
	"GRADE_TYPE_CODE" CHAR(2 BYTE), 
	"NUMBER_PER_SECTION" NUMBER(3,0), 
	"PERCENT_OF_FINAL_GRADE" NUMBER(3,0), 
	"DROP_LOWEST" CHAR(1 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table INSTRUCTOR
--------------------------------------------------------

  CREATE TABLE "INSTRUCTOR" 
   (	"INSTRUCTOR_ID" NUMBER(8,0), 
	"SALUTATION" VARCHAR2(5 BYTE), 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"STREET_ADDRESS" VARCHAR2(50 BYTE), 
	"ZIP" VARCHAR2(5 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SECTION
--------------------------------------------------------

  CREATE TABLE "SECTION" 
   (	"SECTION_ID" NUMBER(8,0), 
	"COURSE_NO" NUMBER(8,0), 
	"SECTION_NO" NUMBER(3,0), 
	"START_DATE_TIME" DATE, 
	"LOCATION" VARCHAR2(50 BYTE), 
	"INSTRUCTOR_ID" NUMBER(8,0), 
	"CAPACITY" NUMBER(3,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;

   COMMENT ON COLUMN "SECTION"."SECTION_ID" IS 'The unique ID for a section.';
   COMMENT ON COLUMN "SECTION"."COURSE_NO" IS 'The course number for which this is a section.';
   COMMENT ON COLUMN "SECTION"."SECTION_NO" IS 'The individual section number within this course.';
   COMMENT ON COLUMN "SECTION"."START_DATE_TIME" IS 'The date and time on which this section meets.';
   COMMENT ON COLUMN "SECTION"."LOCATION" IS 'The meeting room for the section.';
   COMMENT ON COLUMN "SECTION"."INSTRUCTOR_ID" IS 'The ID number of the instructor who teaches this section.';
   COMMENT ON COLUMN "SECTION"."CAPACITY" IS 'The maximum number of students allowed in this section.';
   COMMENT ON COLUMN "SECTION"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "SECTION"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "SECTION"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "SECTION"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "SECTION"  IS 'Information for an individual section (class) of a particular course.';
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SALUTATION" VARCHAR2(5 BYTE), 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"STREET_ADDRESS" VARCHAR2(50 BYTE), 
	"ZIP" VARCHAR2(5 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"EMPLOYER" VARCHAR2(50 BYTE), 
	"REGISTRATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;

   COMMENT ON COLUMN "STUDENT"."STUDENT_ID" IS 'The unique ID for a student.';
   COMMENT ON COLUMN "STUDENT"."SALUTATION" IS 'The student''s title (Ms., Mr., Dr., etc.).';
   COMMENT ON COLUMN "STUDENT"."FIRST_NAME" IS 'This student''s first name.';
   COMMENT ON COLUMN "STUDENT"."LAST_NAME" IS 'This student''s last name.';
   COMMENT ON COLUMN "STUDENT"."STREET_ADDRESS" IS 'The student''s street address.';
   COMMENT ON COLUMN "STUDENT"."ZIP" IS 'The postal zip code for this student.';
   COMMENT ON COLUMN "STUDENT"."PHONE" IS 'The phone number for this student including area code.';
   COMMENT ON COLUMN "STUDENT"."EMPLOYER" IS 'The name of the company where this student is employed.';
   COMMENT ON COLUMN "STUDENT"."REGISTRATION_DATE" IS 'The date this student registered in the program.';
   COMMENT ON COLUMN "STUDENT"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"  IS 'Profile information for a student.';
--------------------------------------------------------
--  DDL for Table ZIPCODE
--------------------------------------------------------

  CREATE TABLE "ZIPCODE" 
   (	"ZIP" VARCHAR2(5 BYTE), 
	"CITY" VARCHAR2(25 BYTE), 
	"STATE" VARCHAR2(2 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;

--------------------------------------------------------
--  DDL for Index CRSE_CRSE_FK_I
--------------------------------------------------------

  CREATE INDEX "CRSE_CRSE_FK_I" ON "COURSE" ("PREREQUISITE") 
  ;
--------------------------------------------------------
--  DDL for Index CRSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CRSE_PK" ON "COURSE" ("COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ENR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENR_PK" ON "ENROLLMENT" ("STUDENT_ID", "SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ENR_SECT_FK_I
--------------------------------------------------------

  CREATE INDEX "ENR_SECT_FK_I" ON "ENROLLMENT" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GRADE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRADE_PK" ON "GRADE" ("STUDENT_ID", "SECTION_ID", "GRADE_TYPE_CODE", "GRADE_CODE_OCCURENCE") 
  ;
--------------------------------------------------------
--  DDL for Index GRADE_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRADE_TYPE_PK" ON "GRADE_TYPE" ("GRADE_TYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index GRADE_TYPE_WEIGHT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRADE_TYPE_WEIGHT_PK" ON "GRADE_TYPE_WEIGHT" ("SECTION_ID", "GRADE_TYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index INSTRUCTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INSTRUCTOR_PK" ON "INSTRUCTOR" ("INSTRUCTOR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_CRSE_FK_I
--------------------------------------------------------

  CREATE INDEX "SECT_CRSE_FK_I" ON "SECTION" ("COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_INST_FK_I
--------------------------------------------------------

  CREATE INDEX "SECT_INST_FK_I" ON "SECTION" ("INSTRUCTOR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECT_PK" ON "SECTION" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_SECT2_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECT_SECT2_UK" ON "SECTION" ("SECTION_NO", "COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index STU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STU_PK" ON "STUDENT" ("STUDENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index STU_ZIP_FK_I
--------------------------------------------------------

  CREATE INDEX "STU_ZIP_FK_I" ON "STUDENT" ("ZIP") 
  ;
--------------------------------------------------------
--  DDL for Index ZIPCODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ZIPCODE_PK" ON "ZIPCODE" ("ZIP") 
  ;
--------------------------------------------------------
--  DDL for Index CRSE_CRSE_FK_I
--------------------------------------------------------

  CREATE INDEX "CRSE_CRSE_FK_I" ON "COURSE" ("PREREQUISITE") 
  ;
--------------------------------------------------------
--  DDL for Index CRSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CRSE_PK" ON "COURSE" ("COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ENR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENR_PK" ON "ENROLLMENT" ("STUDENT_ID", "SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ENR_SECT_FK_I
--------------------------------------------------------

  CREATE INDEX "ENR_SECT_FK_I" ON "ENROLLMENT" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GRADE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRADE_PK" ON "GRADE" ("STUDENT_ID", "SECTION_ID", "GRADE_TYPE_CODE", "GRADE_CODE_OCCURENCE") 
  ;
--------------------------------------------------------
--  DDL for Index GRADE_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRADE_TYPE_PK" ON "GRADE_TYPE" ("GRADE_TYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index GRADE_TYPE_WEIGHT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRADE_TYPE_WEIGHT_PK" ON "GRADE_TYPE_WEIGHT" ("SECTION_ID", "GRADE_TYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index INSTRUCTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INSTRUCTOR_PK" ON "INSTRUCTOR" ("INSTRUCTOR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_CRSE_FK_I
--------------------------------------------------------

  CREATE INDEX "SECT_CRSE_FK_I" ON "SECTION" ("COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_INST_FK_I
--------------------------------------------------------

  CREATE INDEX "SECT_INST_FK_I" ON "SECTION" ("INSTRUCTOR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECT_PK" ON "SECTION" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SECT_SECT2_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SECT_SECT2_UK" ON "SECTION" ("SECTION_NO", "COURSE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index STU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STU_PK" ON "STUDENT" ("STUDENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index STU_ZIP_FK_I
--------------------------------------------------------

  CREATE INDEX "STU_ZIP_FK_I" ON "STUDENT" ("ZIP") 
  ;
--------------------------------------------------------
--  DDL for Index ZIPCODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ZIPCODE_PK" ON "ZIPCODE" ("ZIP") 
  ;
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
--  DDL for Trigger GR_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GR_FP_TRG" 
BEFORE INSERT OR UPDATE ON GRADE
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
ALTER TRIGGER "GR_FP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GR_TYP_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GR_TYP_FP_TRG" 
BEFORE INSERT OR UPDATE ON GRADE_TYPE
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
ALTER TRIGGER "GR_TYP_FP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GRTW_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GRTW_FP_TRG" 
BEFORE INSERT OR UPDATE ON GRADE_TYPE_WEIGHT
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
ALTER TRIGGER "GRTW_FP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INST_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "INST_FP_TRG" 
BEFORE INSERT OR UPDATE ON INSTRUCTOR
FOR EACH ROW
BEGIN
IF inserting THEN
:new.instructor_id := inst_id_seq.nextval;
:new.created_by := user;
:new.created_date := sysdate;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
IF updating THEN
:new.instructor_id := :old.instructor_id;
:new.modified_by := user;
:new.modified_date := sysdate;
END IF;
END;

/
ALTER TRIGGER "INST_FP_TRG" ENABLE;
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
--------------------------------------------------------
--  DDL for Trigger ZIP_FP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ZIP_FP_TRG" 
BEFORE INSERT OR UPDATE ON ZIPCODE
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
ALTER TRIGGER "ZIP_FP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ENROLLMENT_CHECK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ENROLLMENT_CHECK" 
(
    CountOfEnrollment IN NUMBER
)AS
BEGIN
SELECT
    c.course_no,
    c.description,
    s.section_no,
    COUNT(e.section_id) AS countofenrollment
FROM
         course c
    INNER JOIN section     s ON c.course_no = s.course_no
    INNER JOIN enrollment  e ON s.section_id = e.section_id
GROUP BY
    c.course_no,
    c.description,
    s.section_no
HAVING COUNT(e.section_id) < 6
END ENROLLMENT_CHECK

/
--------------------------------------------------------
--  DDL for Procedure ENROLLMENT_CHECK_PRC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ENROLLMENT_CHECK_PRC" AS 

v_sql varchar2(4000);

CURSOR e_course IS
SELECT
    c.course_no,
    c.description,
    s.section_no,
    COUNT(e.section_id) AS countofenrollment
    FROM course c
    INNER JOIN section s ON c.course_no = s.course_no
    INNER JOIN enrollment e ON s.section_id = e.section_id
    GROUP BY
    c.course_no,
    c.description,
    s.section_no
    HAVING COUNT(e.section_id) < 6;

BEGIN
  FOR r_row in e_course loop
        dbms_output.put_line('Course: ' || r_row.course_no || ', Section: ' || r_row.section_no);
  END LOOP;
END ENROLLMENT_CHECK_PRC;

/
--------------------------------------------------------
--  DDL for Procedure PRC_FIX_SEQUENCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "PRC_FIX_SEQUENCE" 
(
    OWNER_IN VARCHAR2,
  SEQUENCE_NAME_IN IN VARCHAR2 
, TABLE_NAME_IN IN VARCHAR2 
, KEY_COLUMN_NAME_IN IN VARCHAR2 
) AS 

V_SQL VARCHAR(2000);
V_VALUE NUMBER(9);



BEGIN
    V_SQL := 'SELECT MAX(' || KEY_COLUMN_NAME_IN || ' + 1)    FROM ' || OWNER_IN || '.' || TABLE_NAME_IN;
    EXECUTE IMMEDIATE V_SQL INTO V_VALUE;

    V_SQL := 'DROP SEQUENCE ' || SEQUENCE_NAME_IN;
    dbms_utility.exec_ddl_statement(V_SQL);

    V_SQL := 'CREATE SEQUENCE ' || SEQUENCE_NAME_IN || ' INCREMENT BY 1 START WITH ' || V_VALUE || '  MAXVALUE 999999999 MINVALUE 1';
    dbms_utility.exec_ddl_statement(V_SQL);




END PRC_FIX_SEQUENCE;


/
--------------------------------------------------------
--  DDL for Procedure PRC_HANDLE_FKS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "PRC_HANDLE_FKS" 
(
  INITIAL_STATE_IN IN VARCHAR2 
, TARGET_STATE_IN IN VARCHAR2 
) AS 
 
BEGIN
    FOR c IN
    (SELECT c.owner,c.table_name,c.constraint_name
    FROM user_constraints c,user_tables t
    WHERE c.table_name=t.table_name
    AND c.status=INITIAL_STATE_IN
    ORDER BY c.constraint_type DESC,c.last_change DESC
    )
    LOOP
        FOR D IN
        (SELECT P.Table_Name Parent_Table,C1.Table_Name Child_Table,C1.Owner,P.Constraint_Name Parent_Constraint,
            c1.constraint_name Child_Constraint
        FROM user_constraints p
        JOIN user_constraints c1 ON(p.constraint_name=c1.r_constraint_name)
        WHERE(p.constraint_type='P'
        OR p.constraint_type='U')
        AND c1.constraint_type='R'
        AND p.table_name=UPPER(c.table_name)
        )
        LOOP
            dbms_output.put_line('. ' || TARGET_STATE_IN || ' the constraint ' || d.Child_Constraint ||' (on table '||d.owner || '.' ||
            d.Child_Table || ')') ;

            dbms_output.put_line('alter table ' || d.owner || '.' ||d.Child_Table || ' ' || TARGET_STATE_IN || ' constraint ' ||
            d.Child_Constraint);

            dbms_utility.exec_ddl_statement('alter table ' || d.owner || '.' ||d.Child_Table || ' ' || TARGET_STATE_IN || ' constraint ' ||
            d.Child_Constraint) ;
        END LOOP;
    END LOOP;

END PRC_HANDLE_FKS;


/
--------------------------------------------------------
--  DDL for Package COURSE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "COURSE_TAPI" 
IS
type COURSE_tapi_rec
IS
  record
  (
    CREATED_BY COURSE.CREATED_BY%type ,
    COURSE_NO COURSE.COURSE_NO%type ,
    COST COURSE.COST%type ,
    MODIFIED_BY COURSE.MODIFIED_BY%type ,
    DESCRIPTION COURSE.DESCRIPTION%type ,
    CREATED_DATE COURSE.CREATED_DATE%type ,
    PREREQUISITE COURSE.PREREQUISITE%type ,
    MODIFIED_DATE COURSE.MODIFIED_DATE%type );
type COURSE_tapi_tab
IS
  TABLE OF COURSE_tapi_rec;
  -- insert
  PROCEDURE ins(
      p_CREATED_BY    IN COURSE.CREATED_BY%type ,
      p_COURSE_NO     IN COURSE.COURSE_NO%type ,
      p_COST          IN COURSE.COST%type DEFAULT NULL ,
      p_MODIFIED_BY   IN COURSE.MODIFIED_BY%type ,
      p_DESCRIPTION   IN COURSE.DESCRIPTION%type ,
      p_CREATED_DATE  IN COURSE.CREATED_DATE%type ,
      p_PREREQUISITE  IN COURSE.PREREQUISITE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN COURSE.MODIFIED_DATE%type );
  -- update
  PROCEDURE upd(
      p_CREATED_BY    IN COURSE.CREATED_BY%type ,
      p_COURSE_NO     IN COURSE.COURSE_NO%type ,
      p_COST          IN COURSE.COST%type DEFAULT NULL ,
      p_MODIFIED_BY   IN COURSE.MODIFIED_BY%type ,
      p_DESCRIPTION   IN COURSE.DESCRIPTION%type ,
      p_CREATED_DATE  IN COURSE.CREATED_DATE%type ,
      p_PREREQUISITE  IN COURSE.PREREQUISITE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN COURSE.MODIFIED_DATE%type );
  -- delete
  PROCEDURE del(
      p_COURSE_NO IN COURSE.COURSE_NO%type );
END COURSE_tapi;


/
--------------------------------------------------------
--  DDL for Package ENROLLMENT_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "ENROLLMENT_TAPI" 
IS
type ENROLLMENT_tapi_rec
IS
  record
  (
    CREATED_BY ENROLLMENT.CREATED_BY%type ,
    MODIFIED_BY ENROLLMENT.MODIFIED_BY%type ,
    CREATED_DATE ENROLLMENT.CREATED_DATE%type ,
    ENROLL_DATE ENROLLMENT.ENROLL_DATE%type ,
    FINAL_GRADE ENROLLMENT.FINAL_GRADE%type ,
    MODIFIED_DATE ENROLLMENT.MODIFIED_DATE%type ,
    SECTION_ID ENROLLMENT.SECTION_ID%type ,
    STUDENT_ID ENROLLMENT.STUDENT_ID%type );
type ENROLLMENT_tapi_tab
IS
  TABLE OF ENROLLMENT_tapi_rec;
  -- insert
  PROCEDURE ins(
      p_CREATED_BY    IN ENROLLMENT.CREATED_BY%type ,
      p_MODIFIED_BY   IN ENROLLMENT.MODIFIED_BY%type ,
      p_CREATED_DATE  IN ENROLLMENT.CREATED_DATE%type ,
      p_ENROLL_DATE   IN ENROLLMENT.ENROLL_DATE%type ,
      p_FINAL_GRADE   IN ENROLLMENT.FINAL_GRADE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN ENROLLMENT.MODIFIED_DATE%type ,
      p_SECTION_ID    IN ENROLLMENT.SECTION_ID%type ,
      p_STUDENT_ID    IN ENROLLMENT.STUDENT_ID%type );
  -- update
  PROCEDURE upd(
      p_CREATED_BY    IN ENROLLMENT.CREATED_BY%type ,
      p_MODIFIED_BY   IN ENROLLMENT.MODIFIED_BY%type ,
      p_CREATED_DATE  IN ENROLLMENT.CREATED_DATE%type ,
      p_ENROLL_DATE   IN ENROLLMENT.ENROLL_DATE%type ,
      p_FINAL_GRADE   IN ENROLLMENT.FINAL_GRADE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN ENROLLMENT.MODIFIED_DATE%type ,
      p_SECTION_ID    IN ENROLLMENT.SECTION_ID%type ,
      p_STUDENT_ID    IN ENROLLMENT.STUDENT_ID%type );
  -- delete
  PROCEDURE del(
      p_STUDENT_ID IN ENROLLMENT.STUDENT_ID%type ,
      p_SECTION_ID IN ENROLLMENT.SECTION_ID%type );
END ENROLLMENT_tapi;


/
--------------------------------------------------------
--  DDL for Package GRADE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "GRADE_TAPI" 
is

type GRADE_tapi_rec is record (
CREATED_BY  GRADE.CREATED_BY%type
,MODIFIED_BY  GRADE.MODIFIED_BY%type
,CREATED_DATE  GRADE.CREATED_DATE%type
,GRADE_CODE_OCCURENCE  GRADE.GRADE_CODE_OCCURENCE%type
,COMMENTS  GRADE.COMMENTS%type
,GRADE_TYPE_CODE  GRADE.GRADE_TYPE_CODE%type
,SECTION_ID  GRADE.SECTION_ID%type
,NUMERIC_GRADE  GRADE.NUMERIC_GRADE%type
,MODIFIED_DATE  GRADE.MODIFIED_DATE%type
,STUDENT_ID  GRADE.STUDENT_ID%type
);
type GRADE_tapi_tab is table of GRADE_tapi_rec;

-- insert
procedure ins (
p_CREATED_BY in GRADE.CREATED_BY%type
,p_MODIFIED_BY in GRADE.MODIFIED_BY%type
,p_CREATED_DATE in GRADE.CREATED_DATE%type
,p_GRADE_CODE_OCCURENCE in GRADE.GRADE_CODE_OCCURENCE%type
,p_COMMENTS in GRADE.COMMENTS%type default null 
,p_GRADE_TYPE_CODE in GRADE.GRADE_TYPE_CODE%type
,p_SECTION_ID in GRADE.SECTION_ID%type
,p_NUMERIC_GRADE in GRADE.NUMERIC_GRADE%type
,p_MODIFIED_DATE in GRADE.MODIFIED_DATE%type
,p_STUDENT_ID in GRADE.STUDENT_ID%type
);
-- update
procedure upd (
p_CREATED_BY in GRADE.CREATED_BY%type
,p_MODIFIED_BY in GRADE.MODIFIED_BY%type
,p_CREATED_DATE in GRADE.CREATED_DATE%type
,p_GRADE_CODE_OCCURENCE in GRADE.GRADE_CODE_OCCURENCE%type
,p_COMMENTS in GRADE.COMMENTS%type default null 
,p_GRADE_TYPE_CODE in GRADE.GRADE_TYPE_CODE%type
,p_SECTION_ID in GRADE.SECTION_ID%type
,p_NUMERIC_GRADE in GRADE.NUMERIC_GRADE%type
,p_MODIFIED_DATE in GRADE.MODIFIED_DATE%type
,p_STUDENT_ID in GRADE.STUDENT_ID%type
);
-- delete
procedure del (
p_STUDENT_ID in GRADE.STUDENT_ID%type
,p_SECTION_ID in GRADE.SECTION_ID%type
,p_GRADE_TYPE_CODE in GRADE.GRADE_TYPE_CODE%type
,p_GRADE_CODE_OCCURENCE in GRADE.GRADE_CODE_OCCURENCE%type
);
end GRADE_tapi;


/
--------------------------------------------------------
--  DDL for Package GRADE_TYPE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "GRADE_TYPE_TAPI" 
is

type GRADE_TYPE_tapi_rec is record (
CREATED_BY  GRADE_TYPE.CREATED_BY%type
,MODIFIED_BY  GRADE_TYPE.MODIFIED_BY%type
,DESCRIPTION  GRADE_TYPE.DESCRIPTION%type
,CREATED_DATE  GRADE_TYPE.CREATED_DATE%type
,GRADE_TYPE_CODE  GRADE_TYPE.GRADE_TYPE_CODE%type
,MODIFIED_DATE  GRADE_TYPE.MODIFIED_DATE%type
);
type GRADE_TYPE_tapi_tab is table of GRADE_TYPE_tapi_rec;

-- insert
procedure ins (
p_CREATED_BY in GRADE_TYPE.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE.MODIFIED_BY%type
,p_DESCRIPTION in GRADE_TYPE.DESCRIPTION%type
,p_CREATED_DATE in GRADE_TYPE.CREATED_DATE%type
,p_GRADE_TYPE_CODE in GRADE_TYPE.GRADE_TYPE_CODE%type
,p_MODIFIED_DATE in GRADE_TYPE.MODIFIED_DATE%type
);
-- update
procedure upd (
p_CREATED_BY in GRADE_TYPE.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE.MODIFIED_BY%type
,p_DESCRIPTION in GRADE_TYPE.DESCRIPTION%type
,p_CREATED_DATE in GRADE_TYPE.CREATED_DATE%type
,p_GRADE_TYPE_CODE in GRADE_TYPE.GRADE_TYPE_CODE%type
,p_MODIFIED_DATE in GRADE_TYPE.MODIFIED_DATE%type
);
-- delete
procedure del (
p_GRADE_TYPE_CODE in GRADE_TYPE.GRADE_TYPE_CODE%type
);
end GRADE_TYPE_tapi;


/
--------------------------------------------------------
--  DDL for Package GRADE_TYPE_WEIGHT_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "GRADE_TYPE_WEIGHT_TAPI" 
is

type GRADE_TYPE_WEIGHT_tapi_rec is record (
CREATED_BY  GRADE_TYPE_WEIGHT.CREATED_BY%type
,MODIFIED_BY  GRADE_TYPE_WEIGHT.MODIFIED_BY%type
,CREATED_DATE  GRADE_TYPE_WEIGHT.CREATED_DATE%type
,PERCENT_OF_FINAL_GRADE  GRADE_TYPE_WEIGHT.PERCENT_OF_FINAL_GRADE%type
,DROP_LOWEST  GRADE_TYPE_WEIGHT.DROP_LOWEST%type
,GRADE_TYPE_CODE  GRADE_TYPE_WEIGHT.GRADE_TYPE_CODE%type
,NUMBER_PER_SECTION  GRADE_TYPE_WEIGHT.NUMBER_PER_SECTION%type
,SECTION_ID  GRADE_TYPE_WEIGHT.SECTION_ID%type
,MODIFIED_DATE  GRADE_TYPE_WEIGHT.MODIFIED_DATE%type
);
type GRADE_TYPE_WEIGHT_tapi_tab is table of GRADE_TYPE_WEIGHT_tapi_rec;

-- insert
procedure ins (
p_CREATED_BY in GRADE_TYPE_WEIGHT.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE_WEIGHT.MODIFIED_BY%type
,p_CREATED_DATE in GRADE_TYPE_WEIGHT.CREATED_DATE%type
,p_PERCENT_OF_FINAL_GRADE in GRADE_TYPE_WEIGHT.PERCENT_OF_FINAL_GRADE%type
,p_DROP_LOWEST in GRADE_TYPE_WEIGHT.DROP_LOWEST%type
,p_GRADE_TYPE_CODE in GRADE_TYPE_WEIGHT.GRADE_TYPE_CODE%type
,p_NUMBER_PER_SECTION in GRADE_TYPE_WEIGHT.NUMBER_PER_SECTION%type
,p_SECTION_ID in GRADE_TYPE_WEIGHT.SECTION_ID%type
,p_MODIFIED_DATE in GRADE_TYPE_WEIGHT.MODIFIED_DATE%type
);
-- update
procedure upd (
p_CREATED_BY in GRADE_TYPE_WEIGHT.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE_WEIGHT.MODIFIED_BY%type
,p_CREATED_DATE in GRADE_TYPE_WEIGHT.CREATED_DATE%type
,p_PERCENT_OF_FINAL_GRADE in GRADE_TYPE_WEIGHT.PERCENT_OF_FINAL_GRADE%type
,p_DROP_LOWEST in GRADE_TYPE_WEIGHT.DROP_LOWEST%type
,p_GRADE_TYPE_CODE in GRADE_TYPE_WEIGHT.GRADE_TYPE_CODE%type
,p_NUMBER_PER_SECTION in GRADE_TYPE_WEIGHT.NUMBER_PER_SECTION%type
,p_SECTION_ID in GRADE_TYPE_WEIGHT.SECTION_ID%type
,p_MODIFIED_DATE in GRADE_TYPE_WEIGHT.MODIFIED_DATE%type
);
-- delete
procedure del (
p_SECTION_ID in GRADE_TYPE_WEIGHT.SECTION_ID%type
,p_GRADE_TYPE_CODE in GRADE_TYPE_WEIGHT.GRADE_TYPE_CODE%type
);
end GRADE_TYPE_WEIGHT_tapi;


/
--------------------------------------------------------
--  DDL for Package INSTRUCTOR_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "INSTRUCTOR_TAPI" 
is

type INSTRUCTOR_tapi_rec is record (
ZIP  INSTRUCTOR.ZIP%type
,CREATED_BY  INSTRUCTOR.CREATED_BY%type
,MODIFIED_BY  INSTRUCTOR.MODIFIED_BY%type
,SALUTATION  INSTRUCTOR.SALUTATION%type
,CREATED_DATE  INSTRUCTOR.CREATED_DATE%type
,PHONE  INSTRUCTOR.PHONE%type
,INSTRUCTOR_ID  INSTRUCTOR.INSTRUCTOR_ID%type
,LAST_NAME  INSTRUCTOR.LAST_NAME%type
,STREET_ADDRESS  INSTRUCTOR.STREET_ADDRESS%type
,FIRST_NAME  INSTRUCTOR.FIRST_NAME%type
,MODIFIED_DATE  INSTRUCTOR.MODIFIED_DATE%type
);
type INSTRUCTOR_tapi_tab is table of INSTRUCTOR_tapi_rec;

-- insert
procedure ins (
p_ZIP in INSTRUCTOR.ZIP%type default null 
,p_CREATED_BY in INSTRUCTOR.CREATED_BY%type
,p_MODIFIED_BY in INSTRUCTOR.MODIFIED_BY%type
,p_SALUTATION in INSTRUCTOR.SALUTATION%type default null 
,p_CREATED_DATE in INSTRUCTOR.CREATED_DATE%type
,p_PHONE in INSTRUCTOR.PHONE%type default null 
,p_INSTRUCTOR_ID in INSTRUCTOR.INSTRUCTOR_ID%type
,p_LAST_NAME in INSTRUCTOR.LAST_NAME%type default null 
,p_STREET_ADDRESS in INSTRUCTOR.STREET_ADDRESS%type default null 
,p_FIRST_NAME in INSTRUCTOR.FIRST_NAME%type default null 
,p_MODIFIED_DATE in INSTRUCTOR.MODIFIED_DATE%type
);
-- update
procedure upd (
p_ZIP in INSTRUCTOR.ZIP%type default null 
,p_CREATED_BY in INSTRUCTOR.CREATED_BY%type
,p_MODIFIED_BY in INSTRUCTOR.MODIFIED_BY%type
,p_SALUTATION in INSTRUCTOR.SALUTATION%type default null 
,p_CREATED_DATE in INSTRUCTOR.CREATED_DATE%type
,p_PHONE in INSTRUCTOR.PHONE%type default null 
,p_INSTRUCTOR_ID in INSTRUCTOR.INSTRUCTOR_ID%type
,p_LAST_NAME in INSTRUCTOR.LAST_NAME%type default null 
,p_STREET_ADDRESS in INSTRUCTOR.STREET_ADDRESS%type default null 
,p_FIRST_NAME in INSTRUCTOR.FIRST_NAME%type default null 
,p_MODIFIED_DATE in INSTRUCTOR.MODIFIED_DATE%type
);
-- delete
procedure del (
p_INSTRUCTOR_ID in INSTRUCTOR.INSTRUCTOR_ID%type
);
end INSTRUCTOR_tapi;


/
--------------------------------------------------------
--  DDL for Package SECTION_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "SECTION_TAPI" 
IS
type SECTION_tapi_rec
IS
  record
  (
    CREATED_BY SECTION.CREATED_BY%type ,
    LOCATION SECTION.LOCATION%type ,
    SECTION_NO SECTION.SECTION_NO%type ,
    CAPACITY SECTION.CAPACITY%type ,
    COURSE_NO SECTION.COURSE_NO%type ,
    MODIFIED_BY SECTION.MODIFIED_BY%type ,
    CREATED_DATE SECTION.CREATED_DATE%type ,
    START_DATE_TIME SECTION.START_DATE_TIME%type ,
    INSTRUCTOR_ID SECTION.INSTRUCTOR_ID%type ,
    MODIFIED_DATE SECTION.MODIFIED_DATE%type ,
    SECTION_ID SECTION.SECTION_ID%type );
type SECTION_tapi_tab
IS
  TABLE OF SECTION_tapi_rec;
  -- insert
  PROCEDURE ins(
      p_CREATED_BY      IN SECTION.CREATED_BY%type ,
      p_LOCATION        IN SECTION.LOCATION%type DEFAULT NULL ,
      p_SECTION_NO      IN SECTION.SECTION_NO%type ,
      p_CAPACITY        IN SECTION.CAPACITY%type DEFAULT NULL ,
      p_COURSE_NO       IN SECTION.COURSE_NO%type ,
      p_MODIFIED_BY     IN SECTION.MODIFIED_BY%type ,
      p_CREATED_DATE    IN SECTION.CREATED_DATE%type ,
      p_START_DATE_TIME IN SECTION.START_DATE_TIME%type DEFAULT NULL ,
      p_INSTRUCTOR_ID   IN SECTION.INSTRUCTOR_ID%type ,
      p_MODIFIED_DATE   IN SECTION.MODIFIED_DATE%type ,
      p_SECTION_ID      IN SECTION.SECTION_ID%type );
  -- update
  PROCEDURE upd(
      p_CREATED_BY      IN SECTION.CREATED_BY%type ,
      p_LOCATION        IN SECTION.LOCATION%type DEFAULT NULL ,
      p_SECTION_NO      IN SECTION.SECTION_NO%type ,
      p_CAPACITY        IN SECTION.CAPACITY%type DEFAULT NULL ,
      p_COURSE_NO       IN SECTION.COURSE_NO%type ,
      p_MODIFIED_BY     IN SECTION.MODIFIED_BY%type ,
      p_CREATED_DATE    IN SECTION.CREATED_DATE%type ,
      p_START_DATE_TIME IN SECTION.START_DATE_TIME%type DEFAULT NULL ,
      p_INSTRUCTOR_ID   IN SECTION.INSTRUCTOR_ID%type ,
      p_MODIFIED_DATE   IN SECTION.MODIFIED_DATE%type ,
      p_SECTION_ID      IN SECTION.SECTION_ID%type );
  -- delete
  PROCEDURE del(
      p_SECTION_NO IN SECTION.SECTION_NO%type ,
      p_COURSE_NO  IN SECTION.COURSE_NO%type );
END SECTION_tapi;


/
--------------------------------------------------------
--  DDL for Package STUDENT_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "STUDENT_TAPI" 
IS
type STUDENT_tapi_rec
IS
  record
  (
    CREATED_BY STUDENT.CREATED_BY%type ,
    ZIP STUDENT.ZIP%type ,
    MODIFIED_BY STUDENT.MODIFIED_BY%type ,
    CREATED_DATE STUDENT.CREATED_DATE%type ,
    PHONE STUDENT.PHONE%type ,
    LAST_NAME STUDENT.LAST_NAME%type ,
    MODIFIED_DATE STUDENT.MODIFIED_DATE%type ,
    FIRST_NAME STUDENT.FIRST_NAME%type ,
    EMPLOYER STUDENT.EMPLOYER%type ,
    SALUTATION STUDENT.SALUTATION%type ,
    STREET_ADDRESS STUDENT.STREET_ADDRESS%type ,
    REGISTRATION_DATE STUDENT.REGISTRATION_DATE%type ,
    STUDENT_ID STUDENT.STUDENT_ID%type );
type STUDENT_tapi_tab
IS
  TABLE OF STUDENT_tapi_rec;
  -- insert
  PROCEDURE ins(
      p_CREATED_BY        IN STUDENT.CREATED_BY%type ,
      p_ZIP               IN STUDENT.ZIP%type ,
      p_MODIFIED_BY       IN STUDENT.MODIFIED_BY%type ,
      p_CREATED_DATE      IN STUDENT.CREATED_DATE%type ,
      p_PHONE             IN STUDENT.PHONE%type DEFAULT NULL ,
      p_LAST_NAME         IN STUDENT.LAST_NAME%type ,
      p_MODIFIED_DATE     IN STUDENT.MODIFIED_DATE%type ,
      p_FIRST_NAME        IN STUDENT.FIRST_NAME%type DEFAULT NULL ,
      p_EMPLOYER          IN STUDENT.EMPLOYER%type DEFAULT NULL ,
      p_SALUTATION        IN STUDENT.SALUTATION%type DEFAULT NULL ,
      p_STREET_ADDRESS    IN STUDENT.STREET_ADDRESS%type DEFAULT NULL ,
      p_REGISTRATION_DATE IN STUDENT.REGISTRATION_DATE%type ,
      p_STUDENT_ID        IN STUDENT.STUDENT_ID%type );
  -- update
  PROCEDURE upd(
      p_CREATED_BY        IN STUDENT.CREATED_BY%type ,
      p_ZIP               IN STUDENT.ZIP%type ,
      p_MODIFIED_BY       IN STUDENT.MODIFIED_BY%type ,
      p_CREATED_DATE      IN STUDENT.CREATED_DATE%type ,
      p_PHONE             IN STUDENT.PHONE%type DEFAULT NULL ,
      p_LAST_NAME         IN STUDENT.LAST_NAME%type ,
      p_MODIFIED_DATE     IN STUDENT.MODIFIED_DATE%type ,
      p_FIRST_NAME        IN STUDENT.FIRST_NAME%type DEFAULT NULL ,
      p_EMPLOYER          IN STUDENT.EMPLOYER%type DEFAULT NULL ,
      p_SALUTATION        IN STUDENT.SALUTATION%type DEFAULT NULL ,
      p_STREET_ADDRESS    IN STUDENT.STREET_ADDRESS%type DEFAULT NULL ,
      p_REGISTRATION_DATE IN STUDENT.REGISTRATION_DATE%type ,
      p_STUDENT_ID        IN STUDENT.STUDENT_ID%type );
  -- delete
  PROCEDURE del(
      p_STUDENT_ID IN STUDENT.STUDENT_ID%type );
END STUDENT_tapi;


/
--------------------------------------------------------
--  DDL for Package ZIPCODE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "ZIPCODE_TAPI" 
is

type ZIPCODE_tapi_rec is record (
ZIP  ZIPCODE.ZIP%type
,CREATED_BY  ZIPCODE.CREATED_BY%type
,CITY  ZIPCODE.CITY%type
,MODIFIED_BY  ZIPCODE.MODIFIED_BY%type
,CREATED_DATE  ZIPCODE.CREATED_DATE%type
,STATE  ZIPCODE.STATE%type
,MODIFIED_DATE  ZIPCODE.MODIFIED_DATE%type
);
type ZIPCODE_tapi_tab is table of ZIPCODE_tapi_rec;

-- insert
procedure ins (
p_ZIP in ZIPCODE.ZIP%type
,p_CREATED_BY in ZIPCODE.CREATED_BY%type
,p_CITY in ZIPCODE.CITY%type default null 
,p_MODIFIED_BY in ZIPCODE.MODIFIED_BY%type
,p_CREATED_DATE in ZIPCODE.CREATED_DATE%type
,p_STATE in ZIPCODE.STATE%type default null 
,p_MODIFIED_DATE in ZIPCODE.MODIFIED_DATE%type
);
-- update
procedure upd (
p_ZIP in ZIPCODE.ZIP%type
,p_CREATED_BY in ZIPCODE.CREATED_BY%type
,p_CITY in ZIPCODE.CITY%type default null 
,p_MODIFIED_BY in ZIPCODE.MODIFIED_BY%type
,p_CREATED_DATE in ZIPCODE.CREATED_DATE%type
,p_STATE in ZIPCODE.STATE%type default null 
,p_MODIFIED_DATE in ZIPCODE.MODIFIED_DATE%type
);
-- delete
procedure del (
p_ZIP in ZIPCODE.ZIP%type
);
end ZIPCODE_tapi;


/
--------------------------------------------------------
--  DDL for Package Body COURSE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "COURSE_TAPI" 
IS
  -- insert
  PROCEDURE ins(
      p_CREATED_BY    IN COURSE.CREATED_BY%type ,
      p_COURSE_NO     IN COURSE.COURSE_NO%type ,
      p_COST          IN COURSE.COST%type DEFAULT NULL ,
      p_MODIFIED_BY   IN COURSE.MODIFIED_BY%type ,
      p_DESCRIPTION   IN COURSE.DESCRIPTION%type ,
      p_CREATED_DATE  IN COURSE.CREATED_DATE%type ,
      p_PREREQUISITE  IN COURSE.PREREQUISITE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN COURSE.MODIFIED_DATE%type )
  IS
  BEGIN
    INSERT
    INTO COURSE
      (
        CREATED_BY ,
        COURSE_NO ,
        COST ,
        MODIFIED_BY ,
        DESCRIPTION ,
        CREATED_DATE ,
        PREREQUISITE ,
        MODIFIED_DATE
      )
      VALUES
      (
        p_CREATED_BY ,
        p_COURSE_NO ,
        p_COST ,
        p_MODIFIED_BY ,
        p_DESCRIPTION ,
        p_CREATED_DATE ,
        p_PREREQUISITE ,
        p_MODIFIED_DATE
      );
  END;
-- update
  PROCEDURE upd
    (
      p_CREATED_BY    IN COURSE.CREATED_BY%type ,
      p_COURSE_NO     IN COURSE.COURSE_NO%type ,
      p_COST          IN COURSE.COST%type DEFAULT NULL ,
      p_MODIFIED_BY   IN COURSE.MODIFIED_BY%type ,
      p_DESCRIPTION   IN COURSE.DESCRIPTION%type ,
      p_CREATED_DATE  IN COURSE.CREATED_DATE%type ,
      p_PREREQUISITE  IN COURSE.PREREQUISITE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN COURSE.MODIFIED_DATE%type
    )
  IS
  BEGIN
    UPDATE COURSE
    SET CREATED_BY  = p_CREATED_BY ,
      COST          = p_COST ,
      MODIFIED_BY   = p_MODIFIED_BY ,
      DESCRIPTION   = p_DESCRIPTION ,
      CREATED_DATE  = p_CREATED_DATE ,
      PREREQUISITE  = p_PREREQUISITE ,
      MODIFIED_DATE = p_MODIFIED_DATE
    WHERE COURSE_NO = p_COURSE_NO;
  END;
-- del
  PROCEDURE del(
      p_COURSE_NO IN COURSE.COURSE_NO%type )
  IS
  BEGIN
    DELETE FROM COURSE WHERE COURSE_NO = p_COURSE_NO;
  END;
END COURSE_tapi;


/
--------------------------------------------------------
--  DDL for Package Body ENROLLMENT_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "ENROLLMENT_TAPI" 
IS
  -- insert
  PROCEDURE ins(
      p_CREATED_BY    IN ENROLLMENT.CREATED_BY%type ,
      p_MODIFIED_BY   IN ENROLLMENT.MODIFIED_BY%type ,
      p_CREATED_DATE  IN ENROLLMENT.CREATED_DATE%type ,
      p_ENROLL_DATE   IN ENROLLMENT.ENROLL_DATE%type ,
      p_FINAL_GRADE   IN ENROLLMENT.FINAL_GRADE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN ENROLLMENT.MODIFIED_DATE%type ,
      p_SECTION_ID    IN ENROLLMENT.SECTION_ID%type ,
      p_STUDENT_ID    IN ENROLLMENT.STUDENT_ID%type )
  IS
  BEGIN
    INSERT
    INTO ENROLLMENT
      (
        CREATED_BY ,
        MODIFIED_BY ,
        CREATED_DATE ,
        ENROLL_DATE ,
        FINAL_GRADE ,
        MODIFIED_DATE ,
        SECTION_ID ,
        STUDENT_ID
      )
      VALUES
      (
        p_CREATED_BY ,
        p_MODIFIED_BY ,
        p_CREATED_DATE ,
        p_ENROLL_DATE ,
        p_FINAL_GRADE ,
        p_MODIFIED_DATE ,
        p_SECTION_ID ,
        p_STUDENT_ID
      );
  END;
-- update
  PROCEDURE upd
    (
      p_CREATED_BY    IN ENROLLMENT.CREATED_BY%type ,
      p_MODIFIED_BY   IN ENROLLMENT.MODIFIED_BY%type ,
      p_CREATED_DATE  IN ENROLLMENT.CREATED_DATE%type ,
      p_ENROLL_DATE   IN ENROLLMENT.ENROLL_DATE%type ,
      p_FINAL_GRADE   IN ENROLLMENT.FINAL_GRADE%type DEFAULT NULL ,
      p_MODIFIED_DATE IN ENROLLMENT.MODIFIED_DATE%type ,
      p_SECTION_ID    IN ENROLLMENT.SECTION_ID%type ,
      p_STUDENT_ID    IN ENROLLMENT.STUDENT_ID%type
    )
  IS
  BEGIN
    UPDATE ENROLLMENT
    SET CREATED_BY   = p_CREATED_BY ,
      MODIFIED_BY    = p_MODIFIED_BY ,
      CREATED_DATE   = p_CREATED_DATE ,
      ENROLL_DATE    = p_ENROLL_DATE ,
      FINAL_GRADE    = p_FINAL_GRADE ,
      MODIFIED_DATE  = p_MODIFIED_DATE
    WHERE STUDENT_ID = p_STUDENT_ID
    AND SECTION_ID   = p_SECTION_ID;
  END;
-- del
  PROCEDURE del(
      p_STUDENT_ID IN ENROLLMENT.STUDENT_ID%type ,
      p_SECTION_ID IN ENROLLMENT.SECTION_ID%type )
  IS
  BEGIN
    DELETE
    FROM ENROLLMENT
    WHERE STUDENT_ID = p_STUDENT_ID
    AND SECTION_ID   = p_SECTION_ID;
  END;
END ENROLLMENT_tapi;


/
--------------------------------------------------------
--  DDL for Package Body GRADE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "GRADE_TAPI" 
is
-- insert
procedure ins (
p_CREATED_BY in GRADE.CREATED_BY%type
,p_MODIFIED_BY in GRADE.MODIFIED_BY%type
,p_CREATED_DATE in GRADE.CREATED_DATE%type
,p_GRADE_CODE_OCCURENCE in GRADE.GRADE_CODE_OCCURENCE%type
,p_COMMENTS in GRADE.COMMENTS%type default null 
,p_GRADE_TYPE_CODE in GRADE.GRADE_TYPE_CODE%type
,p_SECTION_ID in GRADE.SECTION_ID%type
,p_NUMERIC_GRADE in GRADE.NUMERIC_GRADE%type
,p_MODIFIED_DATE in GRADE.MODIFIED_DATE%type
,p_STUDENT_ID in GRADE.STUDENT_ID%type
) is
begin
insert into GRADE(
CREATED_BY
,MODIFIED_BY
,CREATED_DATE
,GRADE_CODE_OCCURENCE
,COMMENTS
,GRADE_TYPE_CODE
,SECTION_ID
,NUMERIC_GRADE
,MODIFIED_DATE
,STUDENT_ID
) values (
p_CREATED_BY
,p_MODIFIED_BY
,p_CREATED_DATE
,p_GRADE_CODE_OCCURENCE
,p_COMMENTS
,p_GRADE_TYPE_CODE
,p_SECTION_ID
,p_NUMERIC_GRADE
,p_MODIFIED_DATE
,p_STUDENT_ID
);end;
-- update
procedure upd (
p_CREATED_BY in GRADE.CREATED_BY%type
,p_MODIFIED_BY in GRADE.MODIFIED_BY%type
,p_CREATED_DATE in GRADE.CREATED_DATE%type
,p_GRADE_CODE_OCCURENCE in GRADE.GRADE_CODE_OCCURENCE%type
,p_COMMENTS in GRADE.COMMENTS%type default null 
,p_GRADE_TYPE_CODE in GRADE.GRADE_TYPE_CODE%type
,p_SECTION_ID in GRADE.SECTION_ID%type
,p_NUMERIC_GRADE in GRADE.NUMERIC_GRADE%type
,p_MODIFIED_DATE in GRADE.MODIFIED_DATE%type
,p_STUDENT_ID in GRADE.STUDENT_ID%type
) is
begin
update GRADE set
CREATED_BY = p_CREATED_BY
,MODIFIED_BY = p_MODIFIED_BY
,CREATED_DATE = p_CREATED_DATE
,COMMENTS = p_COMMENTS
,NUMERIC_GRADE = p_NUMERIC_GRADE
,MODIFIED_DATE = p_MODIFIED_DATE
where STUDENT_ID = p_STUDENT_ID and SECTION_ID = p_SECTION_ID and GRADE_TYPE_CODE = p_GRADE_TYPE_CODE and GRADE_CODE_OCCURENCE = p_GRADE_CODE_OCCURENCE;
end;
-- del
procedure del (
p_STUDENT_ID in GRADE.STUDENT_ID%type
,p_SECTION_ID in GRADE.SECTION_ID%type
,p_GRADE_TYPE_CODE in GRADE.GRADE_TYPE_CODE%type
,p_GRADE_CODE_OCCURENCE in GRADE.GRADE_CODE_OCCURENCE%type
) is
begin
delete from GRADE
where STUDENT_ID = p_STUDENT_ID and SECTION_ID = p_SECTION_ID and GRADE_TYPE_CODE = p_GRADE_TYPE_CODE and GRADE_CODE_OCCURENCE = p_GRADE_CODE_OCCURENCE;
end;
end GRADE_tapi;

/
--------------------------------------------------------
--  DDL for Package Body GRADE_TYPE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "GRADE_TYPE_TAPI" 
is
-- insert
procedure ins (
p_CREATED_BY in GRADE_TYPE.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE.MODIFIED_BY%type
,p_DESCRIPTION in GRADE_TYPE.DESCRIPTION%type
,p_CREATED_DATE in GRADE_TYPE.CREATED_DATE%type
,p_GRADE_TYPE_CODE in GRADE_TYPE.GRADE_TYPE_CODE%type
,p_MODIFIED_DATE in GRADE_TYPE.MODIFIED_DATE%type
) is
begin
insert into GRADE_TYPE(
CREATED_BY
,MODIFIED_BY
,DESCRIPTION
,CREATED_DATE
,GRADE_TYPE_CODE
,MODIFIED_DATE
) values (
p_CREATED_BY
,p_MODIFIED_BY
,p_DESCRIPTION
,p_CREATED_DATE
,p_GRADE_TYPE_CODE
,p_MODIFIED_DATE
);end;
-- update
procedure upd (
p_CREATED_BY in GRADE_TYPE.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE.MODIFIED_BY%type
,p_DESCRIPTION in GRADE_TYPE.DESCRIPTION%type
,p_CREATED_DATE in GRADE_TYPE.CREATED_DATE%type
,p_GRADE_TYPE_CODE in GRADE_TYPE.GRADE_TYPE_CODE%type
,p_MODIFIED_DATE in GRADE_TYPE.MODIFIED_DATE%type
) is
begin
update GRADE_TYPE set
CREATED_BY = p_CREATED_BY
,MODIFIED_BY = p_MODIFIED_BY
,DESCRIPTION = p_DESCRIPTION
,CREATED_DATE = p_CREATED_DATE
,MODIFIED_DATE = p_MODIFIED_DATE
where GRADE_TYPE_CODE = p_GRADE_TYPE_CODE;
end;
-- del
procedure del (
p_GRADE_TYPE_CODE in GRADE_TYPE.GRADE_TYPE_CODE%type
) is
begin
delete from GRADE_TYPE
where GRADE_TYPE_CODE = p_GRADE_TYPE_CODE;
end;
end GRADE_TYPE_tapi;

/
--------------------------------------------------------
--  DDL for Package Body GRADE_TYPE_WEIGHT_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "GRADE_TYPE_WEIGHT_TAPI" 
is
-- insert
procedure ins (
p_CREATED_BY in GRADE_TYPE_WEIGHT.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE_WEIGHT.MODIFIED_BY%type
,p_CREATED_DATE in GRADE_TYPE_WEIGHT.CREATED_DATE%type
,p_PERCENT_OF_FINAL_GRADE in GRADE_TYPE_WEIGHT.PERCENT_OF_FINAL_GRADE%type
,p_DROP_LOWEST in GRADE_TYPE_WEIGHT.DROP_LOWEST%type
,p_GRADE_TYPE_CODE in GRADE_TYPE_WEIGHT.GRADE_TYPE_CODE%type
,p_NUMBER_PER_SECTION in GRADE_TYPE_WEIGHT.NUMBER_PER_SECTION%type
,p_SECTION_ID in GRADE_TYPE_WEIGHT.SECTION_ID%type
,p_MODIFIED_DATE in GRADE_TYPE_WEIGHT.MODIFIED_DATE%type
) is
begin
insert into GRADE_TYPE_WEIGHT(
CREATED_BY
,MODIFIED_BY
,CREATED_DATE
,PERCENT_OF_FINAL_GRADE
,DROP_LOWEST
,GRADE_TYPE_CODE
,NUMBER_PER_SECTION
,SECTION_ID
,MODIFIED_DATE
) values (
p_CREATED_BY
,p_MODIFIED_BY
,p_CREATED_DATE
,p_PERCENT_OF_FINAL_GRADE
,p_DROP_LOWEST
,p_GRADE_TYPE_CODE
,p_NUMBER_PER_SECTION
,p_SECTION_ID
,p_MODIFIED_DATE
);end;
-- update
procedure upd (
p_CREATED_BY in GRADE_TYPE_WEIGHT.CREATED_BY%type
,p_MODIFIED_BY in GRADE_TYPE_WEIGHT.MODIFIED_BY%type
,p_CREATED_DATE in GRADE_TYPE_WEIGHT.CREATED_DATE%type
,p_PERCENT_OF_FINAL_GRADE in GRADE_TYPE_WEIGHT.PERCENT_OF_FINAL_GRADE%type
,p_DROP_LOWEST in GRADE_TYPE_WEIGHT.DROP_LOWEST%type
,p_GRADE_TYPE_CODE in GRADE_TYPE_WEIGHT.GRADE_TYPE_CODE%type
,p_NUMBER_PER_SECTION in GRADE_TYPE_WEIGHT.NUMBER_PER_SECTION%type
,p_SECTION_ID in GRADE_TYPE_WEIGHT.SECTION_ID%type
,p_MODIFIED_DATE in GRADE_TYPE_WEIGHT.MODIFIED_DATE%type
) is
begin
update GRADE_TYPE_WEIGHT set
CREATED_BY = p_CREATED_BY
,MODIFIED_BY = p_MODIFIED_BY
,CREATED_DATE = p_CREATED_DATE
,PERCENT_OF_FINAL_GRADE = p_PERCENT_OF_FINAL_GRADE
,DROP_LOWEST = p_DROP_LOWEST
,NUMBER_PER_SECTION = p_NUMBER_PER_SECTION
,MODIFIED_DATE = p_MODIFIED_DATE
where SECTION_ID = p_SECTION_ID and GRADE_TYPE_CODE = p_GRADE_TYPE_CODE;
end;
-- del
procedure del (
p_SECTION_ID in GRADE_TYPE_WEIGHT.SECTION_ID%type
,p_GRADE_TYPE_CODE in GRADE_TYPE_WEIGHT.GRADE_TYPE_CODE%type
) is
begin
delete from GRADE_TYPE_WEIGHT
where SECTION_ID = p_SECTION_ID and GRADE_TYPE_CODE = p_GRADE_TYPE_CODE;
end;
end GRADE_TYPE_WEIGHT_tapi;

/
--------------------------------------------------------
--  DDL for Package Body INSTRUCTOR_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "INSTRUCTOR_TAPI" 
is
-- insert
procedure ins (
p_ZIP in INSTRUCTOR.ZIP%type default null 
,p_CREATED_BY in INSTRUCTOR.CREATED_BY%type
,p_MODIFIED_BY in INSTRUCTOR.MODIFIED_BY%type
,p_SALUTATION in INSTRUCTOR.SALUTATION%type default null 
,p_CREATED_DATE in INSTRUCTOR.CREATED_DATE%type
,p_PHONE in INSTRUCTOR.PHONE%type default null 
,p_INSTRUCTOR_ID in INSTRUCTOR.INSTRUCTOR_ID%type
,p_LAST_NAME in INSTRUCTOR.LAST_NAME%type default null 
,p_STREET_ADDRESS in INSTRUCTOR.STREET_ADDRESS%type default null 
,p_FIRST_NAME in INSTRUCTOR.FIRST_NAME%type default null 
,p_MODIFIED_DATE in INSTRUCTOR.MODIFIED_DATE%type
) is
begin
insert into INSTRUCTOR(
ZIP
,CREATED_BY
,MODIFIED_BY
,SALUTATION
,CREATED_DATE
,PHONE
,INSTRUCTOR_ID
,LAST_NAME
,STREET_ADDRESS
,FIRST_NAME
,MODIFIED_DATE
) values (
p_ZIP
,p_CREATED_BY
,p_MODIFIED_BY
,p_SALUTATION
,p_CREATED_DATE
,p_PHONE
,p_INSTRUCTOR_ID
,p_LAST_NAME
,p_STREET_ADDRESS
,p_FIRST_NAME
,p_MODIFIED_DATE
);end;
-- update
procedure upd (
p_ZIP in INSTRUCTOR.ZIP%type default null 
,p_CREATED_BY in INSTRUCTOR.CREATED_BY%type
,p_MODIFIED_BY in INSTRUCTOR.MODIFIED_BY%type
,p_SALUTATION in INSTRUCTOR.SALUTATION%type default null 
,p_CREATED_DATE in INSTRUCTOR.CREATED_DATE%type
,p_PHONE in INSTRUCTOR.PHONE%type default null 
,p_INSTRUCTOR_ID in INSTRUCTOR.INSTRUCTOR_ID%type
,p_LAST_NAME in INSTRUCTOR.LAST_NAME%type default null 
,p_STREET_ADDRESS in INSTRUCTOR.STREET_ADDRESS%type default null 
,p_FIRST_NAME in INSTRUCTOR.FIRST_NAME%type default null 
,p_MODIFIED_DATE in INSTRUCTOR.MODIFIED_DATE%type
) is
begin
update INSTRUCTOR set
ZIP = p_ZIP
,CREATED_BY = p_CREATED_BY
,MODIFIED_BY = p_MODIFIED_BY
,SALUTATION = p_SALUTATION
,CREATED_DATE = p_CREATED_DATE
,PHONE = p_PHONE
,LAST_NAME = p_LAST_NAME
,STREET_ADDRESS = p_STREET_ADDRESS
,FIRST_NAME = p_FIRST_NAME
,MODIFIED_DATE = p_MODIFIED_DATE
where INSTRUCTOR_ID = p_INSTRUCTOR_ID;
end;
-- del
procedure del (
p_INSTRUCTOR_ID in INSTRUCTOR.INSTRUCTOR_ID%type
) is
begin
delete from INSTRUCTOR
where INSTRUCTOR_ID = p_INSTRUCTOR_ID;
end;
end INSTRUCTOR_tapi;

/
--------------------------------------------------------
--  DDL for Package Body SECTION_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "SECTION_TAPI" 
IS
  -- insert
  PROCEDURE ins(
      p_CREATED_BY      IN SECTION.CREATED_BY%type ,
      p_LOCATION        IN SECTION.LOCATION%type DEFAULT NULL ,
      p_SECTION_NO      IN SECTION.SECTION_NO%type ,
      p_CAPACITY        IN SECTION.CAPACITY%type DEFAULT NULL ,
      p_COURSE_NO       IN SECTION.COURSE_NO%type ,
      p_MODIFIED_BY     IN SECTION.MODIFIED_BY%type ,
      p_CREATED_DATE    IN SECTION.CREATED_DATE%type ,
      p_START_DATE_TIME IN SECTION.START_DATE_TIME%type DEFAULT NULL ,
      p_INSTRUCTOR_ID   IN SECTION.INSTRUCTOR_ID%type ,
      p_MODIFIED_DATE   IN SECTION.MODIFIED_DATE%type ,
      p_SECTION_ID      IN SECTION.SECTION_ID%type )
  IS
  BEGIN
    INSERT
    INTO SECTION
      (
        CREATED_BY ,
        LOCATION ,
        SECTION_NO ,
        CAPACITY ,
        COURSE_NO ,
        MODIFIED_BY ,
        CREATED_DATE ,
        START_DATE_TIME ,
        INSTRUCTOR_ID ,
        MODIFIED_DATE ,
        SECTION_ID
      )
      VALUES
      (
        p_CREATED_BY ,
        p_LOCATION ,
        p_SECTION_NO ,
        p_CAPACITY ,
        p_COURSE_NO ,
        p_MODIFIED_BY ,
        p_CREATED_DATE ,
        p_START_DATE_TIME ,
        p_INSTRUCTOR_ID ,
        p_MODIFIED_DATE ,
        p_SECTION_ID
      );
  END;
-- update
  PROCEDURE upd
    (
      p_CREATED_BY      IN SECTION.CREATED_BY%type ,
      p_LOCATION        IN SECTION.LOCATION%type DEFAULT NULL ,
      p_SECTION_NO      IN SECTION.SECTION_NO%type ,
      p_CAPACITY        IN SECTION.CAPACITY%type DEFAULT NULL ,
      p_COURSE_NO       IN SECTION.COURSE_NO%type ,
      p_MODIFIED_BY     IN SECTION.MODIFIED_BY%type ,
      p_CREATED_DATE    IN SECTION.CREATED_DATE%type ,
      p_START_DATE_TIME IN SECTION.START_DATE_TIME%type DEFAULT NULL ,
      p_INSTRUCTOR_ID   IN SECTION.INSTRUCTOR_ID%type ,
      p_MODIFIED_DATE   IN SECTION.MODIFIED_DATE%type ,
      p_SECTION_ID      IN SECTION.SECTION_ID%type
    )
  IS
  BEGIN
    UPDATE SECTION
    SET CREATED_BY    = p_CREATED_BY ,
      LOCATION        = p_LOCATION ,
      CAPACITY        = p_CAPACITY ,
      MODIFIED_BY     = p_MODIFIED_BY ,
      CREATED_DATE    = p_CREATED_DATE ,
      START_DATE_TIME = p_START_DATE_TIME ,
      INSTRUCTOR_ID   = p_INSTRUCTOR_ID ,
      MODIFIED_DATE   = p_MODIFIED_DATE ,
      SECTION_ID      = p_SECTION_ID
    WHERE SECTION_NO  = p_SECTION_NO
    AND COURSE_NO     = p_COURSE_NO;
  END;
-- del
  PROCEDURE del(
      p_SECTION_NO IN SECTION.SECTION_NO%type ,
      p_COURSE_NO  IN SECTION.COURSE_NO%type )
  IS
  BEGIN
    DELETE
    FROM SECTION
    WHERE SECTION_NO = p_SECTION_NO
    AND COURSE_NO    = p_COURSE_NO;
  END;
END SECTION_tapi;


/
--------------------------------------------------------
--  DDL for Package Body STUDENT_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "STUDENT_TAPI" 
IS
  -- insert
  PROCEDURE ins(
      p_CREATED_BY        IN STUDENT.CREATED_BY%type ,
      p_ZIP               IN STUDENT.ZIP%type ,
      p_MODIFIED_BY       IN STUDENT.MODIFIED_BY%type ,
      p_CREATED_DATE      IN STUDENT.CREATED_DATE%type ,
      p_PHONE             IN STUDENT.PHONE%type DEFAULT NULL ,
      p_LAST_NAME         IN STUDENT.LAST_NAME%type ,
      p_MODIFIED_DATE     IN STUDENT.MODIFIED_DATE%type ,
      p_FIRST_NAME        IN STUDENT.FIRST_NAME%type DEFAULT NULL ,
      p_EMPLOYER          IN STUDENT.EMPLOYER%type DEFAULT NULL ,
      p_SALUTATION        IN STUDENT.SALUTATION%type DEFAULT NULL ,
      p_STREET_ADDRESS    IN STUDENT.STREET_ADDRESS%type DEFAULT NULL ,
      p_REGISTRATION_DATE IN STUDENT.REGISTRATION_DATE%type ,
      p_STUDENT_ID        IN STUDENT.STUDENT_ID%type )
  IS
  BEGIN
    INSERT
    INTO STUDENT
      (
        CREATED_BY ,
        ZIP ,
        MODIFIED_BY ,
        CREATED_DATE ,
        PHONE ,
        LAST_NAME ,
        MODIFIED_DATE ,
        FIRST_NAME ,
        EMPLOYER ,
        SALUTATION ,
        STREET_ADDRESS ,
        REGISTRATION_DATE ,
        STUDENT_ID
      )
      VALUES
      (
        p_CREATED_BY ,
        p_ZIP ,
        p_MODIFIED_BY ,
        p_CREATED_DATE ,
        p_PHONE ,
        p_LAST_NAME ,
        p_MODIFIED_DATE ,
        p_FIRST_NAME ,
        p_EMPLOYER ,
        p_SALUTATION ,
        p_STREET_ADDRESS ,
        p_REGISTRATION_DATE ,
        p_STUDENT_ID
      );
  END;
-- update
  PROCEDURE upd
    (
      p_CREATED_BY        IN STUDENT.CREATED_BY%type ,
      p_ZIP               IN STUDENT.ZIP%type ,
      p_MODIFIED_BY       IN STUDENT.MODIFIED_BY%type ,
      p_CREATED_DATE      IN STUDENT.CREATED_DATE%type ,
      p_PHONE             IN STUDENT.PHONE%type DEFAULT NULL ,
      p_LAST_NAME         IN STUDENT.LAST_NAME%type ,
      p_MODIFIED_DATE     IN STUDENT.MODIFIED_DATE%type ,
      p_FIRST_NAME        IN STUDENT.FIRST_NAME%type DEFAULT NULL ,
      p_EMPLOYER          IN STUDENT.EMPLOYER%type DEFAULT NULL ,
      p_SALUTATION        IN STUDENT.SALUTATION%type DEFAULT NULL ,
      p_STREET_ADDRESS    IN STUDENT.STREET_ADDRESS%type DEFAULT NULL ,
      p_REGISTRATION_DATE IN STUDENT.REGISTRATION_DATE%type ,
      p_STUDENT_ID        IN STUDENT.STUDENT_ID%type
    )
  IS
  BEGIN
    UPDATE STUDENT
    SET CREATED_BY      = p_CREATED_BY ,
      ZIP               = p_ZIP ,
      MODIFIED_BY       = p_MODIFIED_BY ,
      CREATED_DATE      = p_CREATED_DATE ,
      PHONE             = p_PHONE ,
      LAST_NAME         = p_LAST_NAME ,
      MODIFIED_DATE     = p_MODIFIED_DATE ,
      FIRST_NAME        = p_FIRST_NAME ,
      EMPLOYER          = p_EMPLOYER ,
      SALUTATION        = p_SALUTATION ,
      STREET_ADDRESS    = p_STREET_ADDRESS ,
      REGISTRATION_DATE = p_REGISTRATION_DATE
    WHERE STUDENT_ID    = p_STUDENT_ID;
  END;
-- del
  PROCEDURE del(
      p_STUDENT_ID IN STUDENT.STUDENT_ID%type )
  IS
  BEGIN
    DELETE FROM STUDENT WHERE STUDENT_ID = p_STUDENT_ID;
  END;
END STUDENT_tapi;


/
--------------------------------------------------------
--  DDL for Package Body ZIPCODE_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "ZIPCODE_TAPI" 
is
-- insert
procedure ins (
p_ZIP in ZIPCODE.ZIP%type
,p_CREATED_BY in ZIPCODE.CREATED_BY%type
,p_CITY in ZIPCODE.CITY%type default null 
,p_MODIFIED_BY in ZIPCODE.MODIFIED_BY%type
,p_CREATED_DATE in ZIPCODE.CREATED_DATE%type
,p_STATE in ZIPCODE.STATE%type default null 
,p_MODIFIED_DATE in ZIPCODE.MODIFIED_DATE%type
) is
begin
insert into ZIPCODE(
ZIP
,CREATED_BY
,CITY
,MODIFIED_BY
,CREATED_DATE
,STATE
,MODIFIED_DATE
) values (
p_ZIP
,p_CREATED_BY
,p_CITY
,p_MODIFIED_BY
,p_CREATED_DATE
,p_STATE
,p_MODIFIED_DATE
);end;
-- update
procedure upd (
p_ZIP in ZIPCODE.ZIP%type
,p_CREATED_BY in ZIPCODE.CREATED_BY%type
,p_CITY in ZIPCODE.CITY%type default null 
,p_MODIFIED_BY in ZIPCODE.MODIFIED_BY%type
,p_CREATED_DATE in ZIPCODE.CREATED_DATE%type
,p_STATE in ZIPCODE.STATE%type default null 
,p_MODIFIED_DATE in ZIPCODE.MODIFIED_DATE%type
) is
begin
update ZIPCODE set
CREATED_BY = p_CREATED_BY
,CITY = p_CITY
,MODIFIED_BY = p_MODIFIED_BY
,CREATED_DATE = p_CREATED_DATE
,STATE = p_STATE
,MODIFIED_DATE = p_MODIFIED_DATE
where ZIP = p_ZIP;
end;
-- del
procedure del (
p_ZIP in ZIPCODE.ZIP%type
) is
begin
delete from ZIPCODE
where ZIP = p_ZIP;
end;
end ZIPCODE_tapi;

/
--------------------------------------------------------
--  Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" MODIFY ("CREATED_DATE" CONSTRAINT "CRSE_CREATED_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("MODIFIED_BY" CONSTRAINT "CRSE_MODIFIED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("MODIFIED_DATE" CONSTRAINT "CRSE_MODIFIED_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("DESCRIPTION" CONSTRAINT "CRSE_DESCRIPTION_NNULL" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("COURSE_NO" CONSTRAINT "CRSE_COURSE_NO_NNULL" NOT NULL ENABLE);
  ALTER TABLE "COURSE" MODIFY ("CREATED_BY" CONSTRAINT "CRSE_CREATED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "COURSE" ADD CONSTRAINT "CRSE_PK" PRIMARY KEY ("COURSE_NO")
  USING INDEX "CRSE_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("STUDENT_ID" CONSTRAINT "ENR_STUDENT_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("ENROLL_DATE" CONSTRAINT "ENR_ENROLL_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("MODIFIED_BY" CONSTRAINT "ENR_MODIFIED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("SECTION_ID" CONSTRAINT "ENR_SECTION_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("CREATED_BY" CONSTRAINT "ENR_CREATED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" MODIFY ("CREATED_DATE" CONSTRAINT "ENR_CREATED_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENR_PK" PRIMARY KEY ("STUDENT_ID", "SECTION_ID")
  USING INDEX "ENR_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE
--------------------------------------------------------

  ALTER TABLE "GRADE" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("SECTION_ID" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("GRADE_TYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("GRADE_CODE_OCCURENCE" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("NUMERIC_GRADE" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "GRADE" ADD CONSTRAINT "GR_PK" PRIMARY KEY ("STUDENT_ID", "SECTION_ID", "GRADE_TYPE_CODE", "GRADE_CODE_OCCURENCE")
  USING INDEX (CREATE UNIQUE INDEX "GRADE_PK" ON "GRADE" ("STUDENT_ID", "SECTION_ID", "GRADE_TYPE_CODE", "GRADE_CODE_OCCURENCE") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE_TYPE
--------------------------------------------------------

  ALTER TABLE "GRADE_TYPE" MODIFY ("GRADE_TYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE" ADD CONSTRAINT "GRADE_TYPE_PK" PRIMARY KEY ("GRADE_TYPE_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE_TYPE_WEIGHT
--------------------------------------------------------

  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("SECTION_ID" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("GRADE_TYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("NUMBER_PER_SECTION" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("PERCENT_OF_FINAL_GRADE" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("DROP_LOWEST" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_PK" PRIMARY KEY ("SECTION_ID", "GRADE_TYPE_CODE")
  USING INDEX (CREATE UNIQUE INDEX "GRADE_TYPE_WEIGHT_PK" ON "GRADE_TYPE_WEIGHT" ("SECTION_ID", "GRADE_TYPE_CODE") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSTRUCTOR
--------------------------------------------------------

  ALTER TABLE "INSTRUCTOR" MODIFY ("INSTRUCTOR_ID" NOT NULL ENABLE);
  ALTER TABLE "INSTRUCTOR" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "INSTRUCTOR" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "INSTRUCTOR" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "INSTRUCTOR" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "INSTRUCTOR" ADD CONSTRAINT "INST_PK" PRIMARY KEY ("INSTRUCTOR_ID")
  USING INDEX (CREATE UNIQUE INDEX "INSTRUCTOR_PK" ON "INSTRUCTOR" ("INSTRUCTOR_ID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table SECTION
--------------------------------------------------------

  ALTER TABLE "SECTION" MODIFY ("CREATED_DATE" CONSTRAINT "SECT_CREATED_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("MODIFIED_BY" CONSTRAINT "SECT_MODIFIED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("SECTION_ID" CONSTRAINT "SECT_SECTION_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("SECTION_NO" CONSTRAINT "SECT_SECTION_NO_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("CREATED_BY" CONSTRAINT "SECT_CREATED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("INSTRUCTOR_ID" CONSTRAINT "SECT_INSTRUCTOR_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("MODIFIED_DATE" CONSTRAINT "SECT_MODIFIED_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" MODIFY ("COURSE_NO" CONSTRAINT "SECT_COURSE_NO_NNULL" NOT NULL ENABLE);
  ALTER TABLE "SECTION" ADD CONSTRAINT "SECT_PK" PRIMARY KEY ("SECTION_ID")
  USING INDEX "SECT_PK"  ENABLE;
  ALTER TABLE "SECTION" ADD CONSTRAINT "SECT_SECT2_UK" UNIQUE ("SECTION_NO", "COURSE_NO")
  USING INDEX "SECT_SECT2_UK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" MODIFY ("MODIFIED_BY" CONSTRAINT "STU_MODIFIED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("CREATED_DATE" CONSTRAINT "STU_CREATED_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" ADD CONSTRAINT "STU_PK" PRIMARY KEY ("STUDENT_ID")
  USING INDEX "STU_PK"  ENABLE;
  ALTER TABLE "STUDENT" MODIFY ("REGISTRATION_DATE" CONSTRAINT "STU_REGISTRATION_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("CREATED_BY" CONSTRAINT "STU_CREATED_BY_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("ZIP" CONSTRAINT "STU_ZIP_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("LAST_NAME" CONSTRAINT "STU_LAST_NAME_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("MODIFIED_DATE" CONSTRAINT "STU_MODIFIED_DATE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT" MODIFY ("STUDENT_ID" CONSTRAINT "STU_STUDENT_ID_NNULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZIPCODE
--------------------------------------------------------

  ALTER TABLE "ZIPCODE" MODIFY ("ZIP" NOT NULL ENABLE);
  ALTER TABLE "ZIPCODE" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "ZIPCODE" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
  ALTER TABLE "ZIPCODE" MODIFY ("MODIFIED_BY" NOT NULL ENABLE);
  ALTER TABLE "ZIPCODE" MODIFY ("MODIFIED_DATE" NOT NULL ENABLE);
  ALTER TABLE "ZIPCODE" ADD CONSTRAINT "ZIPCODE_PK" PRIMARY KEY ("ZIP")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" ADD CONSTRAINT "CRSE_CRSE_FK" FOREIGN KEY ("PREREQUISITE")
	  REFERENCES "COURSE" ("COURSE_NO") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENR_SECT_FK" FOREIGN KEY ("SECTION_ID")
	  REFERENCES "SECTION" ("SECTION_ID") ENABLE;
  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENR_STU_FK" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GRADE
--------------------------------------------------------

  ALTER TABLE "GRADE" ADD CONSTRAINT "GR_GRTW_FK" FOREIGN KEY ("SECTION_ID", "GRADE_TYPE_CODE")
	  REFERENCES "GRADE_TYPE_WEIGHT" ("SECTION_ID", "GRADE_TYPE_CODE") ENABLE;
  ALTER TABLE "GRADE" ADD CONSTRAINT "GR_ENR_FK" FOREIGN KEY ("STUDENT_ID", "SECTION_ID")
	  REFERENCES "ENROLLMENT" ("STUDENT_ID", "SECTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GRADE_TYPE_WEIGHT
--------------------------------------------------------

  ALTER TABLE "GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_GRTYP_FK" FOREIGN KEY ("GRADE_TYPE_CODE")
	  REFERENCES "GRADE_TYPE" ("GRADE_TYPE_CODE") ENABLE;
  ALTER TABLE "GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_SECT_FK" FOREIGN KEY ("SECTION_ID")
	  REFERENCES "SECTION" ("SECTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSTRUCTOR
--------------------------------------------------------

  ALTER TABLE "INSTRUCTOR" ADD CONSTRAINT "INST_ZIP_FK" FOREIGN KEY ("ZIP")
	  REFERENCES "ZIPCODE" ("ZIP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SECTION
--------------------------------------------------------

  ALTER TABLE "SECTION" ADD CONSTRAINT "SECT_INST_FK" FOREIGN KEY ("INSTRUCTOR_ID")
	  REFERENCES "INSTRUCTOR" ("INSTRUCTOR_ID") ENABLE;
  ALTER TABLE "SECTION" ADD CONSTRAINT "SECT_CRSE_FK" FOREIGN KEY ("COURSE_NO")
	  REFERENCES "COURSE" ("COURSE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" ADD CONSTRAINT "STU_ZIP_FK" FOREIGN KEY ("ZIP")
	  REFERENCES "ZIPCODE" ("ZIP") ENABLE;
