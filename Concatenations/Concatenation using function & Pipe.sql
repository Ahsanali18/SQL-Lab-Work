SELECT concat(NULL,'Hello') AS greetings from dual;
SELECT 'Hello'||' '||'World' AS "greetings" from dual;

SELECT NULL||'Hello'||NULL||'World' AS "greetings" from dual;

SELECT 'Hello'||'World' "Greetings" from dual;

--Theory Tasks
SELECT (sal*12)+100 AS "Annual Salary with bonus of 100: " from A;

SELECT '20% of salary of '||enname||' is: '|| sal*(20/100) AS "20% of salary of employees" from A; 

SELECT concat(concat('20% of salary of ',enname),concat(' is: ',sal*20/100)) AS "20% of salary of employees" from A;


SELECT * FROM A where NOT job='Engineer' AND empNo=2;

SELECT * FROM A where job!='Engineer' AND empNo=2;

SELECT * FROM A where job<>'Engineer' AND empNo=2;

SELECT * FROM A where job^='Engineer' AND empNo=2;



INSERT INTO B (SELECT DISTINCT * FROM A);

DROP TABLE B;

CREATE TABLE B AS SELECT * FROM A where 1=0;


SELECT * FROM B;
