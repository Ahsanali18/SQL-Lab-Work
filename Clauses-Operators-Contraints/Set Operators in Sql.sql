CREATE TABLE table1(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    address VARCHAR2(50)
);

CREATE TABLE table2(
    id NUMBER,
    name VARCHAR2(50) NOT NULL,
    address VARCHAR2(50)
);

INSERT INTO table1 VALUES (1,'Ahsan Ali','Hyderabad');
INSERT INTO table1 VALUES (2,'Ahmed Ali','Karachi');
INSERT INTO table1 VALUES (3,'Zeeshan Ahmed','Islamabad');

INSERT INTO table2 VALUES (1,'Ahsan Ali','Hyderabad');
INSERT INTO table2 VALUES (3,'Zeeshan Ahmed','Islamabad');
INSERT INTO table2 VALUES (4,'Nouman Ali','Lahore');

SELECT * FROM table1 UNION SELECT * FROM table2;

SELECT * FROM table1 UNION ALL SELECT * FROM table2;

SELECT * FROM table1 INTERSECT SELECT * FROM table2;

SELECT * FROM table1 MINUS SELECT * FROM table2;

ALTER TABLE table1 ADD dummyColumn VARCHAR(50);

UPDATE table1 SET dummyColumn='dummy' where id=1;

ALTER TABLE table1 RENAME COLUMN dummyColumn TO newColumn;

SELECT id,name,address, null AS "Dummy" FROM table2 UNION SELECT * FROM table1;

DESC table1;

SELECT * FROM table1;


SELECT id,name,address,newColumn AS "DummyColumn" FROM table1;

ALTER TABLE table2 ADD dummy VARCHAR2(50);

SELECT newColumn, dummy FROM table1 t1,table2 t2 where t1.id=t2.id;
