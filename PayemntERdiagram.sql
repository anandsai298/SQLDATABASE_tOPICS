create database ERdiagram;
use ERdiagram;
--uc1-paymentmethod
create PaymentMethod(
MethodID INT Primary Key,
MethodName varchar(25)
);
--UC2-Payment
create Payment(
PaymentID INT Primary Key,
PaymentMethodID INT,
Paid varchar(10)
);
--UC3-Booking
create Booking(
BookingID INT Primary Key,
PaymentID INT,
CustomerID INT
);
--UC4-BookingGrooming
create BookingGrooming(
BookingID INT Primary Key,
BookingStartDate DateTime,
BookingEndDate DateTime,
AnimalID INT
);
--UC5-BookingKernel
create BookingKernel(
BookingID INT Primary Key,
BookingStartDate DateTime,
BookingEndDate DateTime,
AnimalID INT
);
--UC6-Customer
create Customer(
CustomerID INT Primary Key,
FirstName varchar(25),
LastName varchar(25),
Phone varchar(10),
Address varchar(50),
Email varchar(50),
EmergencyContact varchar(50)
);
--UC7-Owner
create Owner(
CustomerID INT Primary Key,
AnimalID INT
);
--UC8-Animal
create Animal(
AnimalID INT Primary Key,
Name varchar(50),
Age INT,
BreedID INT,
MedicalID INT,
AgeTypeID INT
);
--UC9-AnimalAgeTypes
create AnimalAgeTypes(
AgeTypeID INT Primary Key,
TypeName varchar(50)
);
--UC10-Medical
create Medical(
RecordID INT Primary Key,
Log varchar,
TimeStamp DateTime
);
--UC11-Breed
create Breed(
BreedID INT Primary Key,
BreedType varchar(50)
);