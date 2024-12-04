DROP TABLE Employee_New;

CREATE TABLE Employee_New(
    employeeId INT,
    employeeName VARCHAR(50),
    employeeAddress VARCHAR(50));
    
ALTER TABLE Employee_New ADD age INT;

INSERT INTO Employee_New(employeeId, employeeName, employeeAddress) VALUES (1,'Ahmed','Hyderabad');

SELECT * FROM Employee_New;

TRUNCATE TABLE Employee_New;

RENAME Employee_New TO Employee_N;

INSERT INTO Employee_N(employeeId, employeeName, employeeAddress) VALUES (1,'Ahmed','Hyderabad');

SELECT * FROM Employee_N;

UPDATE Employee_N SET employeeName='Ali' WHERE employeeId=1;

SELECT * FROM Employee_N;

DELETE FROM Employee_N where employeeId=1;

SELECT * FROM Employee_N;

COMMIT;

ROLLBACK;

SAVEPOINT sp1;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

--GRANT SELECT ON Employee_N TO user;

--REVOKE SELECT ON Employee_N From user;

SELECT* FROM Employee_N;





