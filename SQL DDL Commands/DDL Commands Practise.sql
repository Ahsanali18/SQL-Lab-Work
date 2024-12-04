CREATE TABLE dummyTable(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    address VARCHAR2(200),
    bloodGroup CHAR(2)
);

ALTER TABLE dummyTable ADD typeee VARCHAR(50);

--DESC dummyTable;

INSERT INTO dummyTable VALUES (1,'Dummy Table','Hyd','O+','G');

ALTER TABLE dummyTable RENAME COLUMN name TO myName;

ALTER TABLE dummyTable Modify myName VARCHAR(80);

ALTER TABLE dummyTable DROP COLUMN myName;

ALTER TABLE dummyTable RENAME TO newTable;

DESC newTable;

--SELECT*FROM newTable;

ALTER TABLE newTable RENAME TO dummyTable;


ALTER TABLE dummyTable ADD email NUMBER;
ALTER TABLE dummyTable MODIFY email VARCHAR2(50);
ALTER TABLE dummyTable RENAME COLUMN email TO myEmail;
ALTER TABLE dummyTable DROP COLUMN myEmail;

DESC dummyTable;


