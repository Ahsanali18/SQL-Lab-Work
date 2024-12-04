DROP TABLE Sample1;
CREATE TABLE Sample1(
    employeeId NUMBER PRIMARY KEY,
    employeeName VARCHAR2(20) NOT NULL,
    employeeAddress VARCHAR2(50) NOT NULL,
    employeeAge NUMBER NOT NULL,
    department VARCHAR2(30),
    salary DECIMAL(10,2) NOT NULL,
    commission DECIMAL(10,2),
    job VARCHAR2(30)
);

INSERT INTO Sample1 VALUES (1, 'Majid',  'Hyderabad', 18,'IT',500,NULL, 'SALEES');
INSERT INTO Sample1 VALUES (2, 'Ali',    'Karachi',   18,'SW',6000,500,  'clerk');
INSERT INTO Sample1 VALUES (3, 'Sameer', 'Hyderabad', 18,'CS',7000,500,  'clerk');
INSERT INTO Sample1 VALUES (4, 'Amjad',  'Lahore',    18,'CE',5500,1000, 'SALEES');
INSERT INTO Sample1 VALUES (5, 'Akbar',  'Islamabad', 18,'EL',800,2000, 'mANAGER');
INSERT INTO Sample1 VALUES (6, 'Musawir','Queeta',    18,'TE',6800,NULL, 'mANAGER');
INSERT INTO Sample1 VALUES (7, 'Zeeshan','Mirpurkhas',18,'ME',7000,NULL, 'Developer');
INSERT INTO Sample1 VALUES (8, 'Shahjan','Saeedabad', 18,'SW',9000,NULL, 'Developer');
INSERT INTO Sample1 VALUES (9, 'Akbar',  'Saeedabad', 18,'CS',8500,500,  'Salees');
INSERT INTO Sample1 VALUES (10,'Raza',   'Karachi',   18,'AI',900,100,  'Developer');


SELECT concat(concat(employeeName,' Earns  '),salary) AS "EmployeeName      Salary" from Sample1;

SELECT employeeName, lpad(salary,4,'0') AS "SAL" from Sample1;

SELECT* from Sample1;


