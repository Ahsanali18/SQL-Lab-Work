CREATE TABLE employees(
    employeeId NUMBER PRIMARY KEY,
    employeeName VARCHAR2(50) NOT NULL,
    deptId NUMBER,
    FOREIGN KEY (deptId) REFERENCES departments(departmentId)
);

CREATE TABLE departments(
    departmentId NUMBER PRIMARY KEY,
    departmentName VARCHAR2(50)
);

INSERT INTO employees VALUES (111,'Ahsan Ali',101);
INSERT INTO employees VALUES (222,'Ahmed Ali',102);
INSERT INTO employees VALUES (333,'Levi Mario',NULL);
INSERT INTO employees VALUES (444,'David',103);
INSERT INTO employees VALUES (555,'Eva',104);

INSERT INTO departments VALUES (101,'HR');
INSERT INTO departments VALUES (102,'Marketing');
INSERT INTO departments VALUES (103,'Sales');
INSERT INTO departments VALUES (104,'Finance');
INSERT INTO departments VALUES (105,'It');

--Retrieve a list of all employees along with their department names. Include employees who do not belong to any department.

SELECT e.employeeId, e.employeeName, d.departmentName FROM employees e LEFT JOIN departments d
ON e.deptId=d.departmentID;



