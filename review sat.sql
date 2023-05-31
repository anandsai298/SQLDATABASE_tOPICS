create database Employees;
use Employees;
--table creation
create table EmployeeDetails(
EmployeeID INT,
EmployeeName varchar(20),
EmployeeAge INT,
Department varchar(20)
);
--Add salary column 
alter table EmployeeDetails Add Salary varchar(15); 
select * from EmployeeDetails;
--rename the department to dept
alter table EmployeeDetails  column  Department Dept;
--Add data
Insert Into EmployeeDetails (EmployeeID,EmployeeName,EmployeeAge,Department) values(1,'Ask',20,'EEE');
update EmployeeDetails set Salary='5500.00' Where EmployeeID=1;
