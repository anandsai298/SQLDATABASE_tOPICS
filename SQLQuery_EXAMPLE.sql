Create Database Example;
Use Example; 

Create table Demo(
Id int identity(1,1) Primary Key, 
Name Varchar(20),
Email Varchar(30),
MobileNumber Varchar(10)
);

Insert into Demo(Name,Email,MobileNumber) values('Manish','mark@gmail.com','9876543210');
Insert into Demo(Name,Email,MobileNumber) values('Anand','anand@gmail.com','1234567898');
Insert into Demo(Name,Email,MobileNumber) values('Sai','sai@gmail.com','9876543212');
Insert into Demo(Name,Email,MobileNumber) values('kumar','kumar@gmail.com','2345678765');

Select * from Demo;
Select * from Demo where id in (1,2);
Select * from Demo where id=1 or Name='Manish'; 
Select * from Demo where id=4 and Name='kumar'; 

Update Demo set Email='mmkr7111@gmail.com',MobileNumber='7539514568' where id=5;
Update Demo set Email='anandsaikumar@gmail.com',MobileNumber='9550631687'  where id=2;

Delete from Demo where id=1;