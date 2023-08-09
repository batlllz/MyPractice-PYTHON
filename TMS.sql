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
Tp_Desc char(30) NOT NULL,
Bk_Edition Numeric(2) ,
constraint Tp_BkIDFK foreign key (Tp_BkID )REFERENCES BOOK(Bk_ID));


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
Re_CrCode char(6)constraint Re_CrCodeFK foreign key (Re_CrCode) REFERENCES COURSE(Cr_Code) ,
Re_Semester char(6) NOT NULL );


create table ISSUING (
is_BrID Numeric(6) constraint is_BrIDFK foreign key (is_BrID)REFERENCES BORROWER(Br_ID) ,
is_BkID Numeric(6) constraint is_BkIDFK foreign key (is_BkID)REFERENCES BOOK(Bk_ID),
is_DateTaken Date NOT NULL,
is_DateReturn Date check(is_DateReturn>is_DateTaken));