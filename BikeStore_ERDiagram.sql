create database StoreSales;
use StoreSales;
--schema
CREATE SCHEMA Sales;
CREATE SCHEMA Production;
--CustomersTable
create Table Sales.Customers(
CustomerID INT identity(1,1) Primary Key,
CustomerFirstName varchar(20) NOT NULL,
CustomerLastName varchar(20) NOT NULL,
CustomerPhone BIGINT ,
CustomerEmail varchar(25) NOT NULL unique,
CustomerStreet varchar(20) NOT NULL,
CustomerCity varchar(20) NOT NULL,
CustomerState varchar(20) NOT NULL,
CustomerZipCode BIGINT NOT NULL
);
Alter Table Customers Drop CONSTRAINT CK__Customers__Custo__37A5467C;

select * from Sales.Customers;
select * from Customers;
Insert into Sales.Customers values('anand','kumar',7418529635,'anand@gmail.com','ghati','kakinada','A.P',533002);
Insert into Sales.Customers values('sai','kumar',7418529638,'sai@gmail.com','market','kakinada','A.P',533001);
Insert into Sales.Customers values('anand','sai',7418529639,'kumar@gmail.com','musib','kakinada','A.P',533001);
Insert into Sales.Customers values('kumar','sai',7418529631,'ask@gmail.com','turangi','kakinada','A.P',533002);


--StoreTable
create Table Sales.Stores(
StoreID INT identity(1,1) Primary Key,
StoreName varchar(25) NOT NULL,
Phone BIGINT ,
StoreEmail varchar(20)  NOT NULL unique,
Street varchar(20)  NOT NULL,
City varchar(20)  NOT NULL,
State varchar(20)  NOT NULL,
ZipCode BIGINT  NOT NULL
);
select * from Sales.Stores;
select * from Stores;
Insert into Sales.Stores values('amazon',7854125689,'amazon@gmail.com','temple','kkd','ap',533000);
Insert into Sales.Stores values('amazon1',7854125688,'amazon1@gmail.com','temple1','kkd','ap',533001);
Insert into Sales.Stores values('amazon2',7854125687,'amazon2@gmail.com','temple2','kkd','ap',533002);
Insert into Sales.Stores values('amazon3',7854125686,'amazon3@gmail.com','temple3','kkd','ap',533000);


--staffsTable
create Table Sales.Staffs(
StaffID INT identity(1,1) Primary Key,
FirstName varchar(20) NOT NULL,
LastName varchar(20) NOT NULL,
StaffEmail varchar(20) NOT NULL unique,
StaffPhone BIGINT ,
StoreID INt,
ManagerID INT,
Foreign Key (StoreID) REFERENCES Stores (StoreID),
);
Drop Table Sales.Staffs;
Alter Table Sales.Staffs Drop CONSTRAINT FK__Staffs__ManagerI__6FE99F9F;
Alter Table Sales.Staffs Add Foreign Key (ManagerID) REFERENCES Sales.Staffs (StaffID);
--ManagerTable
create Table Sales.Manager(
ManagerID INT identity(200,100) Primary Key,
ManagerName varchar(20)
);
Alter Table Sales.Manager Add Foreign Key (ManagerID) REFERENCES Sales.Staffs (StaffID)

select * from Sales.Staffs;
select * from Sales.Manager;
Insert into Sales.Staffs values('ask','ar','askar@gmail.com',9513578524,1,200);
Insert into Sales.Staffs  values('ask1','ar1','askar1@gmail.com',9513578527,2,200);
Insert into Sales.Staffs  values('ask2','ar2','askar2@gmail.com',9513578525,3,300);
Insert into Sales.Staffs  values('ask3','ar3','askar3@gmail.com',9513578523,4,300);
--
Insert into Sales.Manager values('kullay');
Insert into Sales.Manager values('nallay');



--OrdersTable
create Table Sales.Orders(
OrderID INT identity(1,1) Primary Key,
CustomerID INT,
OrderStatus varchar(20) NOT NULL,
OrderDate Date NOT NULL,
RequiredDate Date NOT NULL,
ShippedDate Date NOT NULL,
StoreID INT,
StaffID INT,
Foreign Key (StoreID) REFERENCES Stores (StoreID),
Foreign Key (StaffID) REFERENCES Staffs (StaffID),
Foreign Key (CustomerID) REFERENCES Customers(CustomerID)
);
select * from Orders;
Insert into Orders values(7,'Shipping','2023-05-21','2023-05-26','2023-05-24',1,5);
Insert into Orders values(8,'Shipping','2023-05-23','2023-05-25','2023-05-24',2,6);
Insert into Orders values(9,'delivered','2023-05-22','2023-05-24','2023-05-23',3,7);
Insert into Orders values(10,'ready to deliver','2023-05-22','2023-05-25','2023-05-24',4,8);

--OrderItemsTable
create Table Sales.OrderItems(
OrderID INT ,
ItemID INT identity(100,1) Primary Key,
ProductID BIGINT,
Quantity BIGINT,
ListPrice Decimal(10,2),
Discount Decimal(10,2) default 0,
Foreign Key (OrderID) REFERENCES Orders (OrderID)
--ProductID
);
select * from OrderItems;
--distinct
select DISTINCT ProductID from OrderItems;

Insert into OrderItems values(3,111,2,1499.99,10.00);
Insert into OrderItems values(4,222,1,2999.99,8.00);
Insert into OrderItems values(5,333,3,5999.99,50.00);
Insert into OrderItems values(6,444,1,2499.99,25.00);

--top
select Top 10 * from OrderItems Order by OrderID;
--OFFSETandFETCH
select  * from Customers Order by CustomerID OFFSET 1 Row FETCH next 3 rows only;

