create database SqlCommands;
use SqlCommands;
--DataDefenitionLanguage
create Table Student(
RollNo INT identity(1,100) Primary Key,
Name varchar(30),
CountryCode varchar(3) default '+91',
PhoneNumber BIGINT,
Address varchar(50)  Not Null,
EmailID varchar(25) unique,
);
Alter Table Student Add Age INT;
Alter Table Student Drop Column Age;
Alter Table Student Add check (Age>=18);
Alter Table Student Drop CONSTRAINT PK__Student__7886D5A078DE6CA1;
Alter TAble Student Add  Primary Key(RollNo);
Alter Table Student Add Grade BIGINT;
--Alter Table Student CHANGE column Address to City;
--DataQueryLanguage
select * from Student;
--DataManipulationLanguage
Insert into Student(Name,PhoneNumber,Address,EmailID) values('Ask',9550631687,'Kakinada','ask@gmail.com');
Insert into Student(Name,PhoneNumber,Address,EmailID) values('Ask',9550631687,'Kakinada','aska@gmail.com');
Insert into Student(Name,PhoneNumber,Address,EmailID) values('Ask1',8529637412,'Vizag','ask1@gmail.com');
Insert into Student(Name,PhoneNumber,Address,EmailID) values('Ask2',7896541235,'Hyderabad','ask2@gmail.com');
Insert into Student(Name,PhoneNumber,Address,EmailID) values('Ask3',9517536548,'Yanam','ask3@gmail.com');
Insert into Student(Name,PhoneNumber,Address,EmailID) values('Ask4',8526547852,'Tuni','ask@gmail.com');
Insert into Student(Name,PhoneNumber,Address,EmailID) values('Ask5',8526847852,'Ghati','ask5@gmail.com');

--Update
update Student set Age=20 where Name='Ask';
update Student set Age=25 where Name='Ask1';
update Student set Age=29 where Name='Ask2';
update Student set Age=18 where Name='Ask3';
update Student set Age=18 where Name='Ask4';
update Student set Age=16 where Name='Ask5';
update Student set Grade=80 where Name='Ask';
update Student set Grade=90 where Name='Ask1';
update Student set Grade=70 where Name='Ask2';
update Student set Grade=65 where Name='Ask3';
update Student set Grade=60 where Name='Ask4';
update Student set Grade=50 where Name='Ask5';

--Delete
Delete from Student where Name='Ask3';

--Distinct
select DISTINCT EmailID from Student ;
--top
select top 3 * from Student ;
select top 3 * from Student where RollNo<=3;
--Offset and Fetch
select * from Student order by Name offset 2 rows fetch next 5 rows only;
--Select INTO copy table into new table
select * into Customer from Student;
Insert into Customer(Name,PhoneNumber,Address,EmailID) values('Ask',9550631687,'Kakinada','aska@gmail.com');
select * from Customer;
--copy only one row
select * into Name from Student where Name='Ask';
select * from Name;
--copy data from more tables to one table
select Customer.Age,Name.CountryCode into new from Customer left join Name on Customer.RollNo=Name.RollNo;
select * from new;
--union
select  Name from Student union 
select Name from Customer order by Name;
--union all
select  Name from Student union all
select Name from Customer order by Name;
--grouping
select Count(RollNo),Age from Student group by Age order by count(RollNo);
--operations
select Name,Age,Grade from student where Grade>=65 and Age>=18;
select Name,Age,Grade from student where Grade>85 or Age>=18;
select * from Student where not Grade>65;



