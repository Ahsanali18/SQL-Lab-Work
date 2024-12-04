CREATE TABLE DummyTable(
    id NUMBER(3) PRIMARY KEY,
    name VARCHAR2(50),
    address VARCHAR2(150)
);

ALTER TABLE DummyTable ADD (age NUMBER(8));

DESC DummyTable;

ALTER TABLE DummyTable MODIFY (age NUMBER(10));

DESC DummyTable;

RENAME DummyTable To MyTable;

RENAME MyTable To DumyTable;

DESC DummyTable;

TRUNCATE Table DummyTable;

DESC DummyTable;

INSERT INTO DummyTable(id,name,address) VALUES (1,'Ahsan','Hyderabad');

SELECT * from DummyTable;

TRUNCATE Table DummyTable;

SELECT * from DummyTable;

DROP TABLE DummyTable;