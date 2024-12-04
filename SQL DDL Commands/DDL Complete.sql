CREATE TABLE A(
    empNo NUMBER PRIMARY KEY,
    enname VARCHAR2(50),
    emAddress VARCHAR2(200),
    sal NUMBER(10,2)
);
--Adding new column job to the TABLE A
ALTER TABLE A ADD job VARCHAR2(50);
--Inserting values into TABLE A
INSERT INTO A VALUES (1,'Ali','Hyderabad',1200.55);
INSERT INTO A VALUES (2,'Ahmed','Karachi',1300.55);
INSERT INTO A VALUES (3,'Sameer','Lahore',1200.55);
INSERT INTO A VALUES (4,'Ali','Hyderabad',1200.55);
INSERT INTO A VALUES (5, 'Sara', 'Islamabad', 1500.75, 'HR');
INSERT INTO A VALUES (6, 'Zara', 'Quetta', 1400.80, 'Designer');
INSERT INTO A VALUES (7, 'Omar', 'Peshawar', 1250.90, 'Engineer');

--Updating the rows and inserting the values in job columns
UPDATE A SET job = 'Engineer' WHERE empNo = 1;
UPDATE A SET job = 'Manager' WHERE empNo = 2;
UPDATE A SET job = 'Technician' WHERE empNo = 3;
UPDATE A SET job = 'Engineer' WHERE empNo = 4;


--Displaying the unique records from table A
SELECT DISTINCT enname,emAddress ,sal FROM A;
--Displaying the unique records from table A
SELECT UNIQUE enname, emAddress, sal FROM A;
--Displaying all types of jobs available in table A
SELECT DISTINCT count(job) "Hello" from A;
--Diplaying just five rows from table A
SELECT * FROM A where ROWNUM<=5;

--Creating Another Table B using Subquery syntax with same structure and data as Table A
CREATE TABLE B AS SELECT * FROM A;
--Describing the structure of the table B
DESC B;

SELECT * FROM B;
--Creating Another Table C using subquery syntax with some columns from table A
CREATE TABLE C AS SELECT empNo, enname FROM A;

DESC C;

SELECT * FROM C;
--Creating Another Table D using subquery syntax having just structure as A not values/data from table A (where 1=0)
CREATE TABLE D AS SELECT * FROM A where 1=0;

SELECT * FROM D; --Prints 0 rows

DESC D;


ALTER TABLE A ADD (newColumn VARCHAR2(50));

ALTER TABLE A ADD (col1 NUMBER, col2 DATE);

DESC A;

ALTER TABLE A ADD (column1 VARCHAR2(50) DEFAULT 'HI');


SELECT * FROM A;

ALTER TABLE A ADD column2 VARCHAR2(50) FIRST;


ALTER TABLE A MODIFY (emAddress VARCHAR2(250));

DESC A;

