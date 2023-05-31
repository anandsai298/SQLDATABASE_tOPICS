create database CommandsDoubtSession;
use CommandsDoubtSession;
--CreateTable
create Table Employee(
ID INT identity(1,1) Primary Key,
Name varchar(30),
PhoneNumber INT,
City varchar(15),
EmailID varchar(20) unique
);

select * from Employee;

--Adding
Alter Table Employee Add Salary INT;
Alter Table Employee Add Age INT;
Alter Table Employee Add PHNO BIGINT;

--Drop
Alter Table Employee Drop column Age;
Alter Table Employee Drop column PhoneNumber;
--Insertion
Insert into Employee(Name,City,EmailID) values('Sai','KKD','sai@gmail.com');
Insert into Employee(Name,City,EmailID) values('anand','RJY','anand@gmail.com');
Insert into Employee(Name,City,EmailID) values('kumar','VZ','kumar@gmail.com');
Insert into Employee(Name,City,EmailID) values('ajay','HYD','ajay@gmail.com');
Insert into Employee(Name,City,EmailID) values('nani','YANAM','nani@gmail.com');
Insert into Employee(Name,City,EmailID) values('balu','KASI','balu@gmail.com');
Insert into Employee(Name,City,EmailID) values('kodi','KHM','kodi@gmail.com');
--modifies
update Employee set Salary=10000,Age=20,PHNO=7539514568 where Name='sai';
update Employee set Salary=20000,Age=25,PHNO=7418529635 where Name='anand';
update Employee set Salary=30000,Age=29,PHNO=9517418525 where Name='kumar';
update Employee set Salary=40000,Age=30,PHNO=7894561236 where Name='ajay';
update Employee set Salary=50000,Age=18,PHNO=3214569875 where Name='nani';
update Employee set Salary=60000,Age=19,PHNO=7541236988 where Name='balu';
update Employee set Salary=70000,Age=26,PHNO=9526321458 where Name='kodi';
--Delete
Delete from Employee where Name='Kodi';

Drop Table Employee;

Truncate Table Employee;