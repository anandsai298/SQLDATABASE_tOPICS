Create Database EmployeeManagementService;
use EmployeeManagementService;
--UC1
Create Table EmployeeRecord(
EmployeeId int identity(1,1) Primary Key, 
Name varchar(15),
Age INT,
Salary INT
);
--UC2
select * from EmployeeRecord;
--UC3
INSERT INTO EmployeeRecord(Name, Age, Salary) VALUES ('Ask', 18, 85000);
INSERT INTO EmployeeRecord(Name, Age, Salary) VALUES ('Sai', 20, 80000);
INSERT INTO EmployeeRecord(Name, Age, Salary) VALUES ('Kumar', 22, 95000);
INSERT INTO EmployeeRecord(Name, Age, Salary) VALUES ('Anand', 24, 100000);

--UC4
Create Procedure AddEmployee(
@Name varchar(15),
@Age INT,
@Salary INT
)
As
Begin 
Insert into EmployeeRecord values(@Name,@Age,@Salary);
End
--UC5
Create Procedure DeleteEmployee(
@EmployeeId int
)
As
Begin
Delete from EmployeeRecord where EmployeeID=@EmployeeId;
End
--UC6
Create Procedure UpdateEmployee(
@EmployeeId int,
@Name varchar(15)
)
As
Begin
Update EmployeeRecord set Name=@Name where EmployeeId=@EmployeeId;
End