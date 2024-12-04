CREATE TABLE employees(
    employeeId NUMBER PRIMARY KEY,
    employeeName VARCHAR2(50) NOT NULL,
    employeeAddress VARCHAR2(50),
    employeesDept NUMBER,
    
    FOREIGN KEY (employeesDept) REFERENCES dept(deptId)
);

CREATE TABLE dept(
    deptId NUMBER PRIMARY KEY,
    deptName VARCHAR2(50) NOT NULL,
    deptHelp VARCHAR2(50)
);


INSERT INTO dept VALUES (1,'Software','222222');
INSERT INTO dept VALUES (2,'Electronics','33333');
INSERT INTO dept VALUES (3,'Machenical ','44444');
INSERT INTO dept VALUES (4,'Finance','55555');
INSERT INTO dept VALUES (5,'Electrical','666666');


INSERT INTO employees VALUES (1,'Ahsan','Hyderabad',3);
INSERT INTO employees VALUES (2,'Zeeshan','Karachi',4);
INSERT INTO employees VALUES (3,'Nouman','Hyderabad',4);
INSERT INTO employees VALUES (4,'Sameer','Karachi',5);
INSERT INTO employees VALUES (5,'Ahmed','Hyderabad',3);
INSERT INTO employees VALUES (6,'Junaid','Karachi',3);

SELECT * FROM employees where employeesDept IN (SELECT deptId FROM dept where deptName='Finance');

ALTER TABLE employees ADD salary NUMBER;

UPDATE employees SET salary=5000 where employeeAddress='Hyderabad';

UPDATE employees SET salary=6000 where employeeAddress='Karachi';

SELECT * FROM employees;


SELECT * FROM dept where deptId IN (SELECT employeesDept FROM employees where salary=5000);

--Display the employees name who works in finance department.
SELECT employeeName from employees where employeesDept IN (SELECT deptId FROM dept where deptName='Finance');




