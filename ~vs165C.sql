create table student (
studentId INT NOT NULL PRIMARY KEY,--PRIMERY KEY COLUMN 
NAME [NVARCHAR](50) NOT NULL,
LOCATION[NVARCHAR](50) NOT NULL,
Email [NVARCHAR](50) NOT NULL);

EXEC sp_help'student';

insert into student (studentId,name,location, Email)values(2,'ali','oman', 'batoo@gmail.com');
select*from student;
Exec sp_rename studentt , student;
Exec sp_renamedb makeenDB , makeenBB;
alter table teacher add age numeric (2);
exec sp_help 'teacher';
alter table teacher alter column age numeric (8,4);
alter table teacher alter column age numeric NOT NULL ;
alter table teacher add constraint a_pk primary key (age);

create table courses(
c_id char(8) constraint c_courseid primary key ,
c_name varchar(20));
EXEC sp_help'courses';

alter table student add c_id char(8);
alter table student add constraint student_course_fk foreign key (c_id)references courses(c_id) ;

select table_name,constraint_type,constraint_name
from INFORMATION_SCHEMA.table_constraints
where table_name='student';
alter table student drop constraint student_course_fk;
select*from courses;
insert into courses values('DS00002','') ;
select convert(date, SYSUTCDATETIME());


create table stud1 (
studentId INT NOT NULL PRIMARY KEY,--PRIMERY KEY COLUMN 
NAME [NVARCHAR](50) NOT NULL);
insert into stud1 values(3445,'ali') ;
insert into stud1 values(3485,'alya') ;

create table stud2 (
studentId INT NOT NULL PRIMARY KEY,--PRIMERY KEY COLUMN 
NAME [NVARCHAR](50) NOT NULL);

insert into stud2(studentId,NAME)
select studentId,NAME from stud1;
select * from stud1;
select * from stud2;


update stud1 set NAME='batoul'where studentId =3445 ;
select * from stud1  ;


create table product (
PId INT NOT NULL PRIMARY KEY,--PRIMERY KEY COLUMN 
NAME [NVARCHAR](50) NOT NULL,
countity int  NOT NULL,
price int NOT NULL );
insert into product values(3485,'water', 3 , 5) ;
insert into product values(3415,'salt', 7 , 8) ;
select * from product;

select countity*price as totalPrice from product where NAME='water';
select * from product;

update product set price =( select price from product where  NAME='salt') where NAME ='water';
select * from product;

begin transaction;

update product set NAME='orange'where PId =3415 ;
commit;
update product set NAME='floweer'where PId =3485 ;
RollBack;
select * from product;

select sum(countity) as totalProduct from product;
select * from product;

