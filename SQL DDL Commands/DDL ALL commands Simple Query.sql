CREATE TABLE hiTable(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    address VARCHAR2(200),
    age NUMBER NOT NULL
);

ALTER TABLE hiTable ADD newColumn NUMBER;

RENAME hiTable TO newTable;

TRUNCATE TABLE newTable;

DROP TABLE newTable;

