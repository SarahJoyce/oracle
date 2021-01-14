--------------------------------------------------------
--  File created - Monday-December-07-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUP7"."ID_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table PS6
--------------------------------------------------------

  CREATE TABLE "GROUP7"."PS6" 
   (	"ORACLE_USERID" NUMBER, 
	"OPERATING_SYSTEM_USERID" VARCHAR2(20 BYTE), 
	"DATE_TIME" TIMESTAMP (6), 
	"SESSION_NUMBER" NUMBER, 
	"IP_ADDRESS" VARCHAR2(50 BYTE), 
	"HOST_NAME" VARCHAR2(30 BYTE), 
	"LOGON_STATUS" NUMBER, 
	"CREATED_DATE" DATE, 
	"CREATED_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GROUP7.PS6
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Trigger LOGON_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GROUP7"."LOGON_TRG" AFTER LOGON OR SERVERERROR ON DATABASE DECLARE
    o_userid    NUMBER;
    os_userid   VARCHAR2(300);
    tstamp      TIMESTAMP;
    sessnumb    NUMBER;
    v_host      VARCHAR2(100);
    ip          VARCHAR2(100);
    status      NUMBER;
BEGIN
    v_host := sys_context('USERENV', 'HOST');
    ip := sys_context('USERENV', 'IP_ADDRESS');
    sessnumb := sys_context('USERENV', 'SID');
    os_userid := sys_context('USERENV', 'OS_USER');
    SELECT
        user#
    INTO o_userid
    FROM
        v$session
    WHERE
        sid = sys_context('userenv', 'sid');

    SELECT
        systimestamp
    INTO tstamp
    FROM
        dual;

    IF is_servererror(1017) or is_servererror(1005) or is_servererror(1004) or is_servererror(1035) or is_servererror(1045) or is_servererror(0000) THEN
        status := 0;
    ELSIF ora_sysevent = 'LOGON' THEN
        status := 1;
    END IF;

    if status is not null then
        INSERT INTO ps6 (
            oracle_userid,
            operating_system_userid,
            date_time,
            session_number,
            ip_address,
            host_name,
            logon_status
        ) VALUES (
            o_userid,
            os_userid,
            tstamp,
            sessnumb,
            ip,
            v_host,
            status
        );
    end if;
END;
/
ALTER TRIGGER "GROUP7"."LOGON_TRG" DISABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GROUP7"."TRIGGER1" 
BEFORE INSERT ON PS6 
for each row
BEGIN
  IF inserting THEN
        :new.created_date := sysdate;
        :new.created_id := ID_SEQ.nextval;
    END IF;

END;
/
ALTER TRIGGER "GROUP7"."TRIGGER1" ENABLE;
--------------------------------------------------------
--  DDL for Procedure PRC_BIRTHDAY_CARD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "GROUP7"."PRC_BIRTHDAY_CARD" (
    from_nbr_of_days   IN   NUMBER,
    to_nbr_of_days     IN   NUMBER
) AS
BEGIN
        INSERT INTO USER_CONTACT (
            USER_ID,
            CONTACT_TYPE_ID,
            CONTACT_DATE,
            CONTACT_STATUS_ID
        ) select USER_ID,
            1,
            SYSDATE,
            1
            from user_data
            where birthday_range(birthdate, from_nbr_of_days, to_nbr_of_days) = 1
            and ( (user_id not in (select user_id from user_contact))
            or (select count(*) from user_contact where user_id not in (select user_id from user_contact where contact_status_id != 1 and extract(year from contact_date) != extract(year from sysdate))) = 0 );     
END prc_birthday_card;

/
--------------------------------------------------------
--  DDL for Function FN_BIRTHDATE_CHECK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GROUP7"."FN_BIRTHDATE_CHECK" (
    birthdate_in in date,
    from_nbr_days_in in number default 5,
    to_nbr_days_in in number default 12
) return number
AS
    m varchar2(10);
    d varchar2(10);
    y varchar2(10);
    bday date;
BEGIN 
    m := to_char(extract(month from birthdate_in));
    d := to_char(extract(day from birthdate_in));
    y := to_char(extract(year from sysdate));
    bday := to_date(y||'-'||m||'-'||d, 'YYYY MM DD');
    
    dbms_output.put_line(bday);
    if sysdate > bday then
        bday := add_months(bday,12);
        dbms_output.put_line(bday);
        if bday between (sysdate + from_nbr_days_in) and (sysdate + to_nbr_days_in) then
            return 1;
        end if; 
    end if;    
    if to_char(birthdate_in, 'MM-DD') between to_char(sysdate + from_nbr_days_in, 'MM-DD') and to_char(sysdate + to_nbr_days_in, 'MM-DD') then
        return 1;
    end if;
    return 0;
end;

/
--------------------------------------------------------
--  DDL for Function FN_CONTACT_STATUS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GROUP7"."FN_CONTACT_STATUS" (
    description_in in varchar2
) return number
AS
   id number;
BEGIN
    select contact_status_id into id from contact_status
    where description_in = description;
    return id;
end;

/
--------------------------------------------------------
--  DDL for Function FN_CONTACT_TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GROUP7"."FN_CONTACT_TYPE" (
    description_in in varchar2
) return number
AS
   id number;
BEGIN
    select contact_type_id into id from contact_type
    where description_in = description;
    return id;
end; 

/
--------------------------------------------------------
--  DDL for Operator BIRTHDAY_RANGE
--------------------------------------------------------

  CREATE OR REPLACE OPERATOR "GROUP7"."BIRTHDAY_RANGE" BINDING
	(DATE, NUMBER, NUMBER) RETURN NUMBER
	   USING "FN_BIRTHDATE_CHECK";
