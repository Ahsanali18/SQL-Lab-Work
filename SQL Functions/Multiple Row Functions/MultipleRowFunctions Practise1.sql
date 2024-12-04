CREATE TABLE Employee1(
    employeeId NUMBER PRIMARY KEY,
    employeeName VARCHAR2(50) NOT NULL,
    department VARCHAR2(20) NOT NULL,
    employeeSalary DECIMAL(10,2) NOT NULL,
    joinDate DATE NOT NULL
);

DROP TABLE Employee1;

INSERT INTO Employee1 VALUES (1,'Ahmed','CS',5000,'10-JAN-2020');
INSERT INTO Employee1 VALUES (2,'Ali','IT',7000,'20-FEB-2023');
INSERT INTO Employee1 VALUES (3,'Sameer','IT',6500,'01-APR-2023');
INSERT INTO Employee1 VALUES (4,'Saqib','CS',4000,'12-MAY-2018');
INSERT INTO Employee1 VALUES (5,'Ahsan','SW', 8000,'03-FEB-2024');


                            -- Tasks --
--Q.1: Find the total salary paid to employees in each department.
SELECT sum(employeeSalary) AS "Total Salary" from Employee1;

--Q.2: Calculate the Average Salary for Each Department 
SELECT department, AVG(employeeSalary) AS "Average Salary" from Employee1
GROUP BY department;

--Q.3: Count the Number of Employees Who Joined in Each Year
--     Task: Count how many employees joined the company in each year based on the JoinDate.

SELECT EXTRACT(YEAR FROM JoinDate) AS "Year Joined", COUNT(*) AS "Employee Numbers" FROM Employee1
GROUP BY EXTRACT(YEAR FROM JoinDate);

SELECT employeeName AS "EmployeeName", employeeSalary  AS "Maximum Salary" from Employee1
where employeeSalary= (Select Max(employeeSalary) from Employee1);



