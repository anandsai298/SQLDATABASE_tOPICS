Create Database StudentDetails2;
Use StudentDetails2;
--UC2
Create Table Student(
Name varchar(15),
Age INT,
Grade float
);
select * from Student;
--UC3
 INSERT INTO Student (Name, Age, Grade) VALUES ('Alice', 18, 85.5);
 INSERT INTO Student(Name, Age, Grade) VALUES ('Bob', 17, 92.3);
 INSERT INTO Student (Name, Age, Grade) VALUES ('Charlie', 19, 78.9);
 INSERT INTO Student (Name, Age, Grade) VALUES ('David', 18, 81.2);
 INSERT INTO Student (Name, Age, Grade) VALUES ('Emma', 17, 95.0);
 INSERT INTO Student (Name, Age, Grade) VALUES ('Frank', 19, 79.5);
 INSERT INTO Student (Name, Age, Grade) VALUES ('Grace', 18, 89.1);
 INSERT INTO Student (Name, Age, Grade) VALUES ('Henry', 17, 91.8);
 INSERT INTO Student (Name, Age, Grade) VALUES ('Isabella', 19, 86.4);
 INSERT INTO Student (Name, Age, Grade) VALUES ('John', 18, 88.7);
 --UC4
 ALTER TABLE Student ALTER COLUMN Grade float;
 delete from Student where Name BETWEEN 'Alice' AND 'John';
