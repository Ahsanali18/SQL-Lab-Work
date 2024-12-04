SELECT * FROM Employee;

CREATE TABLE Departments(
    departmentId NUMBER(3) PRIMARY KEY,
    departmentName VARCHAR2(50) NOT NULL,
    managerId NUMBER(5),
    locationId NUMBER(2)
);
    
DESCRIBE Departments;

CREATE TABLE Locations(
    locationId NUMBER(2) PRIMARY KEY,
    streetAddress VARCHAR2(30) NOT NULL,
    postalCode NUMBER(15),
    city VARCHAR2(30),
    province VARCHAR2(20),
    countryId NUMBER(5)
);

CREATE TABLE Countries(
    countryId NUMBER(5) PRIMARY KEY,
    countryName VARCHAR2(50) NOT NULL,
    regionId NUMBER(5)
);

CREATE TABLE Regions(
    regionId NUMBER(5) PRIMARY KEY,
    regionName VARCHAR2(30) NOT NULL
);

CREATE TABLE Employees(
    employeeId NUMBER(5) PRIMARY KEY,
    firstName VARCHAR2(15) NOT NULL,
    lastName VARCHAR2(15) NOT NULL,
    emailAddress VARCHAR2(30),
    phoneNumber CHAR(11),
    hireDate DATE,
    jobId NUMBER(5),
    salary NUMBER(8,3) NOT NULL,
    commission NUMBER(10),
    managerId NUMBER(5),
    departmentId Number(3)
);

CREATE TABLE JobHistory(
    employeeId NUMBER(5),
    startDate DATE,
    endDate Date,
    jobId NUMBER(5),
    departmentId NUMBER(3)
);

CREATE TABLE Jobs(
    jobId NUMBER(5) PRIMARY KEY,
    jobTitle VARCHAR2(20),
    minSalary NUMBER(8,3),
    maxSalary NUMBER(8,3)
);
    
--DROP TABLE Departments;
--DROP TABLE Locations;
--DROP TABLE Countries;
--DROP TABLE Regions;
--DROP TABLE Employees;
--DROP TABLE JobHistory;
--DROP TABLE Jobs;


