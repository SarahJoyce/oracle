--------------------------------------------------------
--  File created - Monday-December-07-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CONTACT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUP7"."CONTACT_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 541 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CONTACT_STATUS
--------------------------------------------------------

  CREATE TABLE "GROUP7"."CONTACT_STATUS" 
   (	"CONTACT_STATUS_ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CONTACT_TYPE
--------------------------------------------------------

  CREATE TABLE "GROUP7"."CONTACT_TYPE" 
   (	"CONTACT_TYPE_ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_CONTACT
--------------------------------------------------------

  CREATE TABLE "GROUP7"."USER_CONTACT" 
   (	"USER_CONTACT_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"CONTACT_TYPE_ID" NUMBER, 
	"CONTACT_DATE" DATE, 
	"CONTACT_STATUS_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_DATA
--------------------------------------------------------

  CREATE TABLE "GROUP7"."USER_DATA" 
   (	"USER_ID" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"BIRTHDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GROUP7.CONTACT_STATUS
SET DEFINE OFF;
Insert into GROUP7.CONTACT_STATUS (CONTACT_STATUS_ID,DESCRIPTION) values (1,'Not Sent');
Insert into GROUP7.CONTACT_STATUS (CONTACT_STATUS_ID,DESCRIPTION) values (2,'Sent');
REM INSERTING into GROUP7.CONTACT_TYPE
SET DEFINE OFF;
Insert into GROUP7.CONTACT_TYPE (CONTACT_TYPE_ID,DESCRIPTION) values (1,'Birthday Card');
REM INSERTING into GROUP7.USER_CONTACT
SET DEFINE OFF;
Insert into GROUP7.USER_CONTACT (USER_CONTACT_ID,USER_ID,CONTACT_TYPE_ID,CONTACT_DATE,CONTACT_STATUS_ID) values (536,31,1,to_date('07-DEC-20','DD-MON-RR'),2);
Insert into GROUP7.USER_CONTACT (USER_CONTACT_ID,USER_ID,CONTACT_TYPE_ID,CONTACT_DATE,CONTACT_STATUS_ID) values (535,20,1,to_date('07-DEC-20','DD-MON-RR'),2);
REM INSERTING into GROUP7.USER_DATA
SET DEFINE OFF;
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (1,'Quentin Wong','1-603-813-3934','velit@metusfacilisislorem.com',to_date('04-APR-92','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (2,'Jescie Matthews','1-625-838-3224','enim@aliquetlibero.edu',to_date('21-OCT-92','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (3,'Cade Sheppard','1-877-270-0026','pede.Cum.sociis@diamloremauctor.ca',to_date('06-NOV-83','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (4,'Brett Porter','1-134-804-1481','vehicula.aliquet@rutrum.com',to_date('17-JUL-92','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (5,'Emma Castro','1-613-414-4751','Aenean@Donecfringilla.ca',to_date('26-OCT-72','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (6,'Jasmine Gallagher','1-666-401-3581','feugiat.placerat.velit@Namligula.ca',to_date('14-JAN-76','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (7,'Odette Floyd','1-220-540-9314','ullamcorper.nisl.arcu@sitamet.co.uk',to_date('29-APR-96','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (8,'Walter Hardin','1-445-686-7029','non.massa@ullamcorper.net',to_date('01-AUG-87','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (9,'Alexander Savage','1-311-143-5294','nibh@ligulaNullam.com',to_date('17-MAR-74','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (10,'Anne Fernandez','1-399-884-6989','sem@blandit.co.uk',to_date('14-MAY-85','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (11,'Hayes Garrison','1-654-899-6706','et.rutrum@IncondimentumDonec.edu',to_date('17-MAR-84','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (12,'Carter Austin','1-324-254-3750','tempor.erat.neque@nuncnulla.net',to_date('18-MAR-74','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (13,'Carolyn Case','1-647-894-6664','fames@vestibulumnequesed.org',to_date('06-OCT-64','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (14,'Nolan Reeves','1-928-228-7324','dolor@enimmi.co.uk',to_date('11-NOV-85','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (15,'Joelle Sims','1-572-770-5805','vel@iaculis.edu',to_date('12-AUG-95','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (16,'Halla Weiss','1-716-366-4811','enim@liberoMorbiaccumsan.edu',to_date('20-APR-78','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (17,'Eliana Barker','1-413-481-8030','id@dapibusrutrumjusto.edu',to_date('10-AUG-88','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (18,'August Logan','1-867-675-7653','lobortis@nequevitae.net',to_date('09-SEP-68','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (19,'Kelly Snider','1-210-178-0651','orci.luctus.et@libero.edu',to_date('10-JAN-70','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (20,'Noel Hayden','1-930-679-9338','magna@aceleifendvitae.org',to_date('12-DEC-99','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (21,'Tamekah Franks','1-232-415-3121','dolor.Donec.fringilla@sociisnatoque.co.uk',to_date('08-MAY-64','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (22,'Omar Brooks','1-400-741-5084','Aliquam.adipiscing@nectellusNunc.edu',to_date('18-JUL-85','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (23,'Philip Meadows','1-952-577-0483','condimentum.eget@laoreet.net',to_date('28-DEC-95','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (24,'Kirk Carr','1-852-969-6903','in.sodales@accumsanlaoreetipsum.ca',to_date('19-MAR-78','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (25,'Marshall Moody','1-204-487-5472','ultrices.iaculis.odio@magnanecquam.org',to_date('15-FEB-97','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (26,'Murphy Mccall','1-174-250-5688','pede.nec.ante@massa.edu',to_date('26-NOV-76','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (27,'Rose Kirby','1-327-984-9742','libero.Donec.consectetuer@mitemporlorem.ca',to_date('18-AUG-95','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (28,'Reuben Randolph','1-763-630-2949','ac.tellus.Suspendisse@nequetellus.org',to_date('20-DEC-84','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (29,'Yoshio Espinoza','1-805-290-4914','augue.malesuada.malesuada@laciniamattis.co.uk',to_date('22-FEB-80','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (30,'Berk Myers','1-276-637-7526','elit.pretium.et@egetipsumSuspendisse.co.uk',to_date('28-MAY-61','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (31,'Cailin Oneil','1-506-897-2295','odio@nequevitae.org',to_date('19-DEC-87','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (32,'Amaya Clark','1-525-200-8294','dui.semper@velnislQuisque.edu',to_date('14-NOV-99','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (33,'Nathan Doyle','1-961-806-4417','dignissim@mattis.net',to_date('01-JUL-00','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (34,'Keegan Horn','1-958-560-4840','justo.faucibus@augueeutellus.co.uk',to_date('04-JUL-64','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (35,'Arsenio Barrera','1-225-905-3543','sit.amet@nonenim.edu',to_date('19-MAR-75','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (36,'Thane Myers','1-221-434-3980','ornare.libero.at@interdumfeugiatSed.net',to_date('02-JAN-86','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (37,'Jarrod Norton','1-107-329-2840','sem@nectellus.edu',to_date('28-JAN-62','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (38,'Graham James','1-444-914-7158','porta@dictumeleifend.org',to_date('27-AUG-80','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (39,'Quinlan Pittman','1-780-823-1106','Suspendisse.sagittis.Nullam@arcuMorbisit.net',to_date('21-MAR-81','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (40,'Keely Olsen','1-606-449-8764','enim@pede.com',to_date('23-JAN-00','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (41,'Charde Herrera','1-899-369-2314','Duis.elementum@habitant.ca',to_date('13-NOV-62','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (42,'Rhiannon Beach','1-706-453-8856','facilisis.Suspendisse@SuspendisseeleifendCras.edu',to_date('14-JAN-74','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (43,'Riley Ewing','1-946-543-2239','lacus.Quisque.imperdiet@posuerevulputatelacus.com',to_date('05-DEC-75','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (44,'Clarke Cantu','1-601-729-7894','sapien.imperdiet.ornare@vitaeodio.com',to_date('26-JAN-96','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (45,'May Berg','1-165-559-6826','ridiculus.mus.Aenean@sollicitudinorcisem.com',to_date('09-JUL-90','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (46,'Carissa Lynn','1-782-534-1322','neque.Morbi@vitae.net',to_date('07-AUG-77','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (47,'Logan Stephens','1-310-939-4564','ornare.lectus@sem.ca',to_date('30-JAN-60','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (48,'Jason Galloway','1-558-799-6329','Sed@ultrices.edu',to_date('26-AUG-72','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (49,'Danielle Phelps','1-581-348-5068','quis.pede@arcu.org',to_date('16-JAN-62','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (50,'Silas Nunez','1-234-990-4747','non.quam.Pellentesque@nonhendrerit.ca',to_date('25-MAR-62','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (51,'Sade Gregory','1-746-131-9983','turpis.non.enim@augue.org',to_date('26-MAY-73','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (52,'Hamilton Farley','1-794-865-3212','Integer.sem.elit@hendrerit.edu',to_date('11-SEP-87','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (53,'Paloma Roach','1-513-760-7240','Nulla@Nam.org',to_date('30-OCT-95','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (54,'Palmer Ratliff','1-467-569-9641','lorem.vehicula@purusaccumsaninterdum.ca',to_date('29-SEP-99','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (55,'Mariam Stout','1-928-168-8480','arcu@estNunclaoreet.edu',to_date('04-MAY-63','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (56,'Cally Wallace','1-776-248-0511','a.aliquet@auctor.ca',to_date('05-JUL-70','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (57,'Erich Carey','1-257-497-0639','est.Mauris.eu@dolor.edu',to_date('13-APR-64','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (58,'Warren Whitehead','1-834-853-9780','malesuada.malesuada.Integer@Nullamsuscipitest.org',to_date('27-APR-85','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (59,'Barclay Levy','1-314-273-8745','mauris.ut.mi@erat.edu',to_date('09-JAN-96','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (60,'Shannon Goodman','1-475-571-7567','Donec.est@massaMaurisvestibulum.edu',to_date('26-APR-00','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (61,'Garrett Baird','1-884-385-1195','metus@CraspellentesqueSed.co.uk',to_date('19-MAR-85','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (62,'Taylor Gonzalez','1-582-453-3632','mauris.ut.mi@nuncac.edu',to_date('06-FEB-95','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (63,'Kerry Duke','1-425-668-9728','hendrerit.id.ante@senectusetnetus.ca',to_date('20-FEB-78','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (64,'Candice Richardson','1-680-134-6174','varius.Nam.porttitor@aliquet.edu',to_date('11-JUN-91','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (65,'Yasir Puckett','1-794-902-1708','vestibulum@et.edu',to_date('31-OCT-64','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (66,'Hammett Glass','1-344-721-5994','vitae.orci@acfacilisisfacilisis.co.uk',to_date('02-MAY-72','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (67,'Celeste Simon','1-635-126-2015','diam@orci.co.uk',to_date('03-MAY-93','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (68,'Mara Bridges','1-311-990-9774','dapibus.ligula@nequenon.co.uk',to_date('18-JUL-90','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (69,'Hayley Moss','1-469-835-9372','Sed.nulla@dolorsitamet.net',to_date('14-MAY-90','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (70,'Susan Walter','1-460-459-5510','egestas@ullamcorper.com',to_date('07-AUG-97','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (71,'Moana Turner','1-936-942-2597','Praesent.eu.nulla@tinciduntadipiscing.com',to_date('01-JUL-82','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (72,'Honorato Cox','1-310-818-9159','euismod.in.dolor@accumsaninterdumlibero.co.uk',to_date('31-DEC-64','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (73,'Carissa Holt','1-949-779-2593','ultrices.iaculis.odio@tempusrisus.com',to_date('24-SEP-80','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (74,'Martina Burt','1-308-752-7569','penatibus.et.magnis@vel.net',to_date('03-APR-81','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (75,'Susan Hogan','1-869-610-1119','convallis@nonluctussit.edu',to_date('28-MAR-95','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (76,'Garth Nolan','1-731-997-0364','fermentum.arcu.Vestibulum@rutrum.org',to_date('16-JUN-66','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (77,'Haviva Knapp','1-226-135-1315','porttitor@Vestibulumanteipsum.org',to_date('14-SEP-84','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (78,'Rooney Alvarez','1-787-526-1918','eu.elit@lorem.co.uk',to_date('28-NOV-67','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (79,'Joel Hood','1-639-393-3193','Aenean@enimMaurisquis.net',to_date('01-MAY-67','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (80,'Bell Norton','1-216-798-6246','turpis@pellentesquetellussem.com',to_date('12-JUL-90','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (81,'Celeste Maldonado','1-220-267-5749','est.arcu@metus.net',to_date('02-JUL-61','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (82,'Barrett Randall','1-662-929-7876','nonummy.ultricies@CrasinterdumNunc.edu',to_date('05-MAY-79','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (83,'Hu Cleveland','1-322-603-1609','lacinia.at.iaculis@feugiat.com',to_date('01-JUN-80','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (84,'Avye Booker','1-959-456-6896','velit.eu.sem@aliquamadipiscing.co.uk',to_date('29-DEC-64','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (85,'Nevada Gentry','1-163-894-2986','enim@at.co.uk',to_date('12-MAR-61','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (86,'Stephanie Lyons','1-376-382-5786','risus.at@Cras.net',to_date('23-JUL-66','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (87,'Graham Hines','1-426-975-6019','amet@tinciduntpedeac.edu',to_date('08-MAY-86','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (88,'Jonah Rasmussen','1-771-975-0874','ornare@aaliquet.edu',to_date('12-NOV-85','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (89,'Francis Stokes','1-471-342-9041','justo.faucibus@hendrerit.net',to_date('09-MAR-00','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (90,'Hector Patterson','1-141-235-0341','sem.molestie@erosturpis.net',to_date('03-JAN-87','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (91,'Lyle Morris','1-528-483-5357','eget@Aenean.ca',to_date('13-AUG-92','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (92,'Danielle Malone','1-593-978-2281','quis.urna.Nunc@dolordapibus.ca',to_date('29-JUN-86','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (93,'Vera Foster','1-734-455-6795','sit.amet.massa@Inat.co.uk',to_date('08-FEB-93','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (94,'Cameron Harper','1-856-889-1341','cursus.vestibulum@cursusvestibulum.co.uk',to_date('09-SEP-61','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (95,'Erin Buchanan','1-939-686-6692','ipsum.ac.mi@malesuada.co.uk',to_date('24-JUL-68','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (96,'Owen Snow','1-905-504-0851','neque@tinciduntadipiscing.com',to_date('09-JUN-66','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (97,'Ferdinand Fisher','1-999-286-8285','Fusce.mi@ut.ca',to_date('16-JUL-62','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (98,'Lane Riddle','1-658-576-0815','augue.eu@nuncnullavulputate.edu',to_date('12-JUN-80','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (99,'Rana Cox','1-179-496-5511','aliquam.arcu@eteuismod.org',to_date('10-MAY-72','DD-MON-RR'));
Insert into GROUP7.USER_DATA (USER_ID,NAME,PHONE,EMAIL,BIRTHDATE) values (100,'Cherokee Hicks','1-488-154-9698','dui@enimSuspendisse.co.uk',to_date('25-JAN-76','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index CONTACT_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUP7"."CONTACT_STATUS_PK" ON "GROUP7"."CONTACT_STATUS" ("CONTACT_STATUS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CONTACT_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUP7"."CONTACT_TYPE_PK" ON "GROUP7"."CONTACT_TYPE" ("CONTACT_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USER_CONTACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUP7"."USER_CONTACT_PK" ON "GROUP7"."USER_CONTACT" ("USER_CONTACT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USER_DATA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUP7"."USER_DATA_PK" ON "GROUP7"."USER_DATA" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger USER_CONTACT_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GROUP7"."USER_CONTACT_TRG" 
BEFORE INSERT ON USER_CONTACT 
for each row
BEGIN
  :new.user_contact_id := contact_seq.nextval;
END;
/
ALTER TRIGGER "GROUP7"."USER_CONTACT_TRG" ENABLE;
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
--------------------------------------------------------
--  Constraints for Table CONTACT_STATUS
--------------------------------------------------------

  ALTER TABLE "GROUP7"."CONTACT_STATUS" MODIFY ("CONTACT_STATUS_ID" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."CONTACT_STATUS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."CONTACT_STATUS" ADD CONSTRAINT "CONTACT_STATUS_PK" PRIMARY KEY ("CONTACT_STATUS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CONTACT_TYPE
--------------------------------------------------------

  ALTER TABLE "GROUP7"."CONTACT_TYPE" MODIFY ("CONTACT_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."CONTACT_TYPE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."CONTACT_TYPE" ADD CONSTRAINT "CONTACT_TYPE_PK" PRIMARY KEY ("CONTACT_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_CONTACT
--------------------------------------------------------

  ALTER TABLE "GROUP7"."USER_CONTACT" MODIFY ("USER_CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."USER_CONTACT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."USER_CONTACT" MODIFY ("CONTACT_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."USER_CONTACT" MODIFY ("CONTACT_DATE" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."USER_CONTACT" MODIFY ("CONTACT_STATUS_ID" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."USER_CONTACT" ADD CONSTRAINT "USER_CONTACT_PK" PRIMARY KEY ("USER_CONTACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_DATA
--------------------------------------------------------

  ALTER TABLE "GROUP7"."USER_DATA" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "GROUP7"."USER_DATA" ADD CONSTRAINT "USER_DATA_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_CONTACT
--------------------------------------------------------

  ALTER TABLE "GROUP7"."USER_CONTACT" ADD CONSTRAINT "USER_CONTACT_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "GROUP7"."USER_DATA" ("USER_ID") ENABLE;
  ALTER TABLE "GROUP7"."USER_CONTACT" ADD CONSTRAINT "USER_CONTACT_FK2" FOREIGN KEY ("CONTACT_TYPE_ID")
	  REFERENCES "GROUP7"."CONTACT_TYPE" ("CONTACT_TYPE_ID") ENABLE;
  ALTER TABLE "GROUP7"."USER_CONTACT" ADD CONSTRAINT "USER_CONTACT_FK3" FOREIGN KEY ("CONTACT_STATUS_ID")
	  REFERENCES "GROUP7"."CONTACT_STATUS" ("CONTACT_STATUS_ID") ENABLE;
