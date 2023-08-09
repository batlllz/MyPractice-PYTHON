create table STUDENT (
St_ID Numeric(6) NOT NULL PRIMARY KEY,--PRIMERY KEY COLUMN 
St_Major char(30) NOT NULL,
St_Cohort Numeric(4) NOT NULL,
constraint Positive check (St_ID > 0));

create table EMPLOYEEandINSTUCTOR (
Em_ID Numeric(6)  PRIMARY KEY constraint PositiveEMID check (Em_ID > 0),
Em_Office# char(4) NOT NULL,
Em_Ext# Numeric(4) constraint above1000 check (Em_Ext# > 1000));

create table COLLEGE (
Cl_Code char(3) PRIMARY KEY,--PRIMERY KEY COLUMN 
Cl_Name char(40) NOT NULL,
Cl_Dean char(30) );

create table DEPARTMENT (
Dp_Code char(4) PRIMARY KEY,--PRIMERY KEY COLUMN 
Dp_Name char(40) NOT NULL,
Dp_HoD char(30),
Dp_Col char(3) constraint DEPARTMENTFK foreign key (Dp_Col ) REFERENCES COLLEGE(Cl_Code));

create table BORROWER (
Br_ID Numeric(6) PRIMARY KEY constraint PositiveBRID check (Br_ID > 0),
Br_Name char(30) NOT NULL,
Br_Dept char(4) constraint BORROWERFK foreign key (Br_Dept )REFERENCES DEPARTMENT(Dp_Code),
Br_Mobile char(8) constraint Br_MobileRange check (Br_Mobile>= 90000000),
Br_City char(20),
Br_House# char(4),
Br_Type char(1) constraint Br_TypeSorE check (Br_Type= 'S' OR Br_Type='E' ));


create table BOOK (
Bk_ID Numeric(6) PRIMARY KEY constraint PositiveBkID check (Bk_ID > 0),
Bk_Title char(50) NOT NULL,
Bk_Edition Numeric(2) ,
Bk_#ofPages Numeric(4) constraint bkInteger check (Bk_#ofPages >0),
Bk_TotalCopies Numeric(5),
Bk_RemCopies Numeric(5));



create table BOOKTOPIC (
Tp_BkID Numeric(6) ,
Tp_Desc varchar(30) NOT NULL,
Bk_Edition Numeric(2) ,
constraint Tp_BkIDFK foreign key (Tp_BkID )REFERENCES BOOK(Bk_ID));

SELECT* FROM BOOKTOPIC
ALTER TABLE BOOKTOPIC 
DROP Column Bk_Edition ;

create table COURSE (
Cr_Code char(8) PRIMARY KEY,--PRIMERY KEY COLUMN 
Cr_Title char(40) NOT NULL,
Cr_CH Numeric(2) constraint AboveZero check (Cr_CH > 0),
Cr_#ofSec Numeric(2) constraint crInteger check (Cr_#ofSec >0),
Cr_Dept char(4) constraint Cr_DeptFK REFERENCES DEPARTMENT(Dp_Code));

create table LINK (
Li_CrCode char(8) constraint Li_CrCodeFK REFERENCES COURSE(Cr_Code),
Li_BkID Numeric(6) constraint Li_BkIDFK REFERENCES BOOK(Bk_ID),
Li_usage char(1) constraint Li_usageTorR check (Li_usage= 'T' OR Li_usage='R' ));

create table REGISTRATION (
Re_BrID Numeric(6) constraint Re_BrIDFK foreign key (Re_BrID )REFERENCES BORROWER(Br_ID) ,
Re_CrCode char(8)constraint Re_CrCodeFK foreign key (Re_CrCode) REFERENCES COURSE(Cr_Code) ,
Re_Semester char(6) NOT NULL );


create table ISSUING (
is_BrID Numeric(6) constraint is_BrIDFK foreign key (is_BrID)REFERENCES BORROWER(Br_ID) ,
is_BkID Numeric(6) constraint is_BkIDFK foreign key (is_BkID)REFERENCES BOOK(Bk_ID),
is_DateTaken Date NOT NULL,
is_DateReturn Date, constraint issuning_ch_isDataReturn check(is_DateReturn >= is_DateTaken));




INSERT INTO college VALUES('COM', 'Economy', 'Prof. Fahim');

INSERT INTO college VALUES('SCI', 'Science', 'Prof. Salma');

INSERT INTO college VALUES('EDU', 'Education', 'Dr. Hamad');

INSERT INTO college VALUES('ART', 'Arts', 'Dr. Abdullah');



INSERT INTO department VALUES('INFS','Information Systems','Dr. Kamla','COM');

INSERT INTO department VALUES('FINA','Finance','Dr. Salim','COM');

INSERT INTO department VALUES('COMP','Computer Science','Dr. Zuhoor','SCI');

INSERT INTO department VALUES('BIOL','Biology','Dr. Othman','SCI');

INSERT INTO department VALUES('HIST','History','Dr. Said','EDU');

INSERT INTO department VALUES('CHEM', 'Chemistry', 'Dr. Alaa', 'SCI');



INSERT INTO borrower VALUES (92120,'Ali','INFS',99221133,'Seeb','231','S');

INSERT INTO borrower VALUES (10021,'Said','INFS',91212129,'Seeb','100','S');

INSERT INTO borrower VALUES (10023,'Muna','FINA', NULL, 'Barka','12','S');

INSERT INTO borrower VALUES (3000,'Mohammed','COMP',90000009,'Seeb','777','E');

INSERT INTO borrower VALUES (4000,'Nasser','INFS',99100199,'Sur','11','E');



INSERT INTO student VALUES(92120,'INFS',2012);

INSERT INTO student VALUES(10021,'INFS',2015);

INSERT INTO student VALUES(10023,'FINA',2015);



INSERT INTO EMPLOYEEandINSTUCTOR VALUES(3000,'12',2221);

INSERT INTO EMPLOYEEandINSTUCTOR VALUES(4000,'15',1401);



INSERT INTO book VALUES(1001,'Database1',2,450,150,65);

INSERT INTO book VALUES(1002,'Database2',3,300,100,100);

INSERT INTO book VALUES(2001,'Intro. to Finanace',1,300,75,40);

INSERT INTO book VALUES(3001,'Basic Op Mgmt',1,320,100,77);

INSERT INTO book VALUES(3002,'Chemistry Book',2,500,100,80);

INSERT INTO book VALUES(4001,'Biology',1,345,100,100);

INSERT INTO book VALUES(3003,'Management I',2,560,44,34);

INSERT INTO book VALUES(1003,'Java Prog.',3,555,50,50);



INSERT INTO bookTopic VALUES (1001,'Basic DB Skills');

INSERT INTO bookTopic VALUES (1001,'ERD');

INSERT INTO bookTopic VALUES (1001,'EERD');

INSERT INTO bookTopic VALUES (1002,'SQL');

INSERT INTO bookTopic VALUES (1002,'Pl/SQL');

INSERT INTO bookTopic VALUES (3001,'Management Skills');



INSERT INTO course VALUES('COMP4201', 'Database1', 3, 1,'COMP');

INSERT INTO course VALUES('COMP4202', 'Database2', 3, 2,'COMP');

INSERT INTO course VALUES('BIOL1000', 'Intro. To Biology', 3, 5,'BIOL');

INSERT INTO course VALUES('CHEM2000', 'Advanced Chemistry', 2, 2,'CHEM');



INSERT INTO LINK VALUES('COMP4201',1001,'T');

INSERT INTO LINK VALUES('COMP4201',1002,'R');

INSERT INTO LINK VALUES('COMP4202',1002,'T');

INSERT INTO LINK VALUES('BIOL1000',4001,'T');

INSERT INTO LINK VALUES('CHEM2000',3002,'R');



INSERT INTO REGISTRATION VALUES(92120,'COMP4201','FL2015');

INSERT INTO REGISTRATION VALUES(10021,'COMP4202','FL2015');

INSERT INTO REGISTRATION VALUES(92120,'BIOL1000','FL2015');

INSERT INTO REGISTRATION VALUES(92120,'COMP4202','FL2016');

INSERT INTO REGISTRATION VALUES(10021,'CHEM2000','FL2016');



INSERT INTO issuing VALUES(92120, 1001, '01-Sep-2015', '30-Oct-2015');

INSERT INTO issuing VALUES(10021, 1002, '30-Oct-2016', NULL);

INSERT INTO issuing VALUES(92120, 1002, '21-Feb-2015', '01-Jan-2016');

INSERT INTO issuing VALUES(92120, 3002, '30-Mar-2016', NULL);

INSERT INTO issuing VALUES(10021, 3002, '01-Dec-2014', NULL);
