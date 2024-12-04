CREATE TABLE emp(
    empId NUMBER PRIMARY KEY,
    empName VARCHAR2(50) NOT NULL,
    department VARCHAR2(50),
    salary NUMBER(6,2),
    age NUMBER NOT NULL,
    city VARCHAR2(80)
);

DROP TABLE emp;


INSERT INTO emp(empId,empName,department,salary,age,city) VALUES (101,'Alice Johson','IT',7000,28,'San Francisco');
INSERT INTO emp(empId,empName,department,salary,age,city) VALUES (102,'Bob Williams','HR',5000,35,'Chicago');
INSERT INTO emp(empId,empName,department,salary,age,city) VALUES (103,'Charlie Brown','IT',8000,30,'New York');
INSERT INTO emp(empId,empName,department,salary,age,city) VALUES (104,'Diane Green','Marketing',6000,25,'Miami');
INSERT INTO emp(empId,empName,department,salary,age,city) VALUES (105,'Edward Lee','HR',5500,40,'Los Angeles');
INSERT INTO emp(empId,empName,department,salary,age,city) VALUES (106,'Fiona White','IT',7500,32,'New York');

SELECT * FROM emp where department='IT';

SELECT * FROM emp where salary > 6000 AND age < 32;

SELECT * FROM emp where city='New York' OR city='San Francisco'; -- (Alternative) SELECT * FROM emp where city IN ('New York','San Francisco');