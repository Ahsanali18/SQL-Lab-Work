CREATE TABLE EMPLOYEE_DETAILS (
    EMPLOYEE_ID         NUMBER(10)        PRIMARY KEY,
    FIRST_NAME          VARCHAR2(50)      NOT NULL,
    LAST_NAME           VARCHAR2(50),
    EMAIL               VARCHAR2(100)     UNIQUE,
    PHONE_NUMBER        VARCHAR2(15),
    HIRE_DATE           DATE              DEFAULT SYSDATE,
    JOB_ID              VARCHAR2(10)      NOT NULL,
    SALARY              NUMBER(10, 2)     CHECK (SALARY > 0),
    COMMISSION_PCT      NUMBER(3, 2),
    MANAGER_ID          NUMBER(10),
    DEPARTMENT_ID       NUMBER(5),
    DATE_OF_BIRTH       DATE,
    GENDER              CHAR(1)           CHECK (GENDER IN ('M', 'F')),
    MARITAL_STATUS      VARCHAR2(10)      DEFAULT 'Single',
    COUNTRY             VARCHAR2(50),
    CITY                VARCHAR2(50),
    ADDRESS             VARCHAR2(100),
    ZIP_CODE            VARCHAR2(10)
);

INSERT INTO EMPLOYEE_DETAILS VALUES (1, 'John', 'Doe', 'johndoe@example.com', '1234567890', '15-JAN-2022', 'IT_PROG', 5000, 0.10, NULL, 100, '15-JUL-1990', 'M', 'Single', 'USA', 'New York', '123 Main St', '10001');

INSERT INTO EMPLOYEE_DETAILS VALUES (2, 'Jane', 'Smith', 'janesmith@example.com', '0987654321', '10-OCT-2021', 'HR_REP', 4500, NULL, 1, 101, '23-AUG-1992', 'F', 'Married', 'Canada', 'Toronto', '456 Elm St', 'M4B1B4');

INSERT INTO EMPLOYEE_DETAILS VALUES (4, 'Alice', 'White', 'alicewhite@example.com', '6677889900', '14-FEB-2023', 'SALES', 5500, NULL, 3, 103, '30-NOV-1994', 'F', 'Single', 'UK', 'London', '101 Pine St', 'EC1A1BB');

INSERT INTO EMPLOYEE_DETAILS VALUES (5, 'Charlie', 'Black', 'charlieblack@example.com', '4455667788', '05-AUG-2019', 'MARKETING', 6200, 0.12, 4, 104, '19-DEC-1987', 'M', 'Single', 'Australia', 'Sydney', '202 Maple St', '2000');


ALTER TABLE Employee_Details ADD dateOfJoining DATE; 

DESC Employee_Details;

SELECT * FROM Employee_Details;

ALTER TABLE Employee_Details ADD isActive CHAR DEFAULT 'Y';

ALTER TABLE Employee_Details MODIFY phone_number VARCHAR2(20);

ALTER TABLE Employee_Details MODIFY salary NUMBER(12,2);

ALTER TABLE Employee_Details RENAME COLUMN First_Name TO FName;

DESC Employee_Details;

ALTER TABLE Employee_Details RENAME COLUMN gender TO sex;

ALTER TABLE Employee_Details DROP COLUMN commission_pct;

ALTER TABLE Employee_Details DROP COLUMN marital_status;

ALTER TABLE Employee_Data MODIFY job_id NULL;


ALTER TABLE Employee_Details RENAME TO Employee_Data;


DESC Employee_Data;

SELECT * FROM Employee_Data;

ALTER TABLE Employee_Data ADD CONSTRAINT chk_salary CHECK (salary>0);

ALTER TABLE Employee_Data DROP CONSTRAINT chk_salary;

ALTER TABLE Employee_Data DROP CONSTRAINT email;


TRUNCATE TABLE Employee_Data;

DROP TABLE Employee_Data;


RENAME Employee_Details TO newEmployees;

SELECT * FROM Employee_Details;
SELECT * FROM newEmployees;