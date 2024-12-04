SELECT * FROM employees;


CREATE VIEW v11 AS SELECT * FROM employees;


SELECT view_name from user_views;

SELECT view_name from all_views;

CREATE OR REPLACE VIEW v11 AS SELECT employeeNo, employeeName,job from employees where job='manager' with read only;

SELECT * FROM v11;

CREATE INDEX helpingIndex ON employees(employeeName);

SELECT index_name, table_name,uniqueness from user_indexes where table_name='EMPLOYEES';

SELECT index_name, table_name, column_name, column_position
FROM user_ind_columns 
WHERE table_name = 'EMPLOYEES';

DESC employees;


CREATE SEQUENCE seq
INCREMENT BY 10
START WITH 10
MAXVALUE 50
MINVALUE 10
CACHE 3
CYCLE;

SELECT seq.NEXTVAL FROM dual;
SELECT seq.CURRVAL FROM dual;

DROP INDEX helpingIndex;
