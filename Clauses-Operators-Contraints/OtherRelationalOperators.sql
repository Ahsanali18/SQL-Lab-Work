-- Create the table only once
CREATE TABLE employeess (
    employeeId NUMBER PRIMARY KEY,
    employeeName VARCHAR2(50),
    department VARCHAR2(50),
    position VARCHAR2(50),
    salary NUMBER(6),
    hireDate DATE
);

-- Insert data
INSERT INTO employeess VALUES (1,'Ahsan'  ,'Software'        ,'Developer'      ,300000, '3-FEB-2024');
INSERT INTO employeess VALUES (2,'Zeeshan','Computer System' ,'Engineer'       ,400000, '2-JAN-2023');
INSERT INTO employeess VALUES (3,'Nouman' ,'Electrical'      ,'Engineer'       ,500000, '1-MAR-2022');
INSERT INTO employeess VALUES (4,'Sameer' ,'Finance'         ,'Specialist'     ,600000, '5-JUN-2021');
INSERT INTO employeess VALUES (5,'Jhazaib','Marketing'       ,'Specialist'     ,900000, '7-APR-2020');
INSERT INTO employeess VALUES (6,'Akbar'  ,'IT'              ,'Lead Developer' ,200000, '2-MAY-2019');
INSERT INTO employeess VALUES (7,'Mehtab' ,'Mechanical'      ,'Engineer'       ,100000, '9-JUL-2018');
INSERT INTO employeess VALUES (8,'Ajay'   ,'Marketing'       ,'Specialist'     ,400000, '7-APR-2020');

-- Run your SELECT query after inserting data
SELECT * FROM employeess 
WHERE salary > ALL (SELECT salary FROM employeess WHERE department = 'Marketing');

-- Drop the table if needed after all operations
DROP TABLE employeess;

SELECT * FROM employeess where department IN ('IT','Marketing');

SELECT * FROM employeess where position NOT IN ('Engineer','Specialist');

SELECT * FROM employeess where hireDate BETWEEN '5-JUN-2021' AND '2-JAN-2023';

SELECT * FROM employeess where employeeName LIKE 'A%';

SELECT * FROM employeess where department NOT LIKE '%IT%';

