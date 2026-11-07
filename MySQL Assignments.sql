//DDL COMMANDS
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments(Department_ID int primary key,Department_name varchar(100));
CREATE TABLE Location(Location_ID int primary key,Location varchar(30));
CREATE TABLE Employees(Employee_ID int primary key,Employee_name varchar(50),Gender ENUM('M','F'),Age int,Hire_date date,Designation varchar(100),Department_ID int,Location_ID int,Salary decimal(10,2),FOREIGN KEY (Department_ID)REFERENCES Departments(Department_ID),FOREIGN KEY(Location_ID)REFERENCES Location(Location_ID));
SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;
ALTER TABLE Employees ADD email varchar(100);
ALTER TABLE Employees modify Designation varchar(255);
ALTER TABLE Employees DROP column Age;
ALTER TABLE Employees RENAME column Hire_date TO Date_Of_Joining;
RENAME TABLE Departments TO Department_Info;
SELECT * FROM Department_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;

//CONSTRAINTS

DROP DATABASE IF exists employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments(department_id int primary key,department_name varchar(100) not null unique);
CREATE TABLE Location(location_id int auto_increment PRIMARY KEY,Location VARCHAR(30) NOT NULL UNIQUE);
CREATE TABLE Employees(employee_ID int primary key,employee_name varchar(50) not null ,gender ENUM('M','F'),age int check(age>=18),hire_date date default (current_date),Designation varchar(100),Department_ID int,Location_ID int,Salary decimal(10,2),FOREIGN KEY (department_id)REFERENCES Departments(department_id),FOREIGN KEY(location_id)REFERENCES Location(location_id));








