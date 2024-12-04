CREATE TABLE singleRowFunctions(
    id NUMBER PRIMARY KEY,
    first_name VARCHAR2(30),
    last_name VARCHAR2(30),
    salary NUMBER(7,2),
    hireDate DATE,
    commission NUMBER
);

INSERT INTO singleRowFunctions VALUES (1, 'John',  'Doe', 10000,'1-JAN-2017',NULL);
INSERT INTO singleRowFunctions VALUES (2, 'Jane',  'Smith',20000,'2-FEB-2018',NULL);
INSERT INTO singleRowFunctions VALUES (3, 'Jone',  'Roe',30000,'3-MAR-2019',NULL);
INSERT INTO singleRowFunctions VALUES (4, 'Janny', 'Jas',40000,'4-APR-2020',NULL);
INSERT INTO singleRowFunctions VALUES (5, 'Jack',  'Dam',50000,'5-MAY-2021',NULL);
INSERT INTO singleRowFunctions VALUES (6, 'Jose',  'Brown',60000,'6-JUL-2022',NULL);
INSERT INTO singleRowFunctions VALUES (7, 'Jappi', 'Mario',70000,'7-AUG-2023',NULL);
INSERT INTO singleRowFunctions VALUES (8, 'Emily', 'Davis',80000,'8-SEP-2024',NULL);
INSERT INTO singleRowFunctions VALUES (9, 'David', 'Wilson',90000,'9-OCT-2025',NULL);
INSERT INTO singleRowFunctions VALUES (10,'Dack',  'Solun',20000,'10-NOV-2026',NULL);

-- Case Manipulation Functions
SELECT upper(first_name) AS "Upper Function" from singleRowFunctions;
SELECT lower(first_name) AS "Lower Function" from singleRowFunctions;
SELECT upper(first_name) AS "UPPER FUNCTION", lower(first_name) AS "lower fucnction" from singleRowFunctions;
SELECT initcap(first_name) AS "Initcap function" from singleRowFunctions;


/*Character Manipulation Functions
1- concat(string1,string2) --> concats the two strings -> string1string2
2- length(string) -> returns length of string
3- substr(string,starting position, ending Position) 
4- instr(string,'character/string') --> return position of character/string in string (start from 1)
5- lpad(string,totalLength,'character') 
6- rpad(string,totalLength,'character')
7- replace(column,'character in column','new character')
*/
SELECT concat(first_name,last_name) AS "concatfunction" from singleRowFunctions;

SELECT substr(first_name,1,4) AS "first_names upto 4 characters" from singleRowFunctions;

SELECT instr(first_name,'a') from singleRowFunctions;

SELECT lpad(first_name,10,'&') from singleRowFunctions;

SELECT rpad(first_name,10,'&') from singleRowFunctions;
--SELECT rpad(first_name,10,last_name) from singleRowFunctions;

SELECT length(first_name) from singleRowFunctions;

SELECT replace(first_name,'J','ii') from singleRowFunctions;

/*General Functions
1- NVL(expression,value) --> if expression is null then put the value on that otherwise shows the expressions value
2- NVL2(expression1,expression2,expression3) -> if exp1!=null -> return exp2 , if exp1=null then return exp3
3- NULLIF(expression1,expression2) --> if exp1=exp2 returns null otherwise -> returns exp1 : (Datatype must be same for comparison)
4- Collescep(expression1,expression2,expression3,expression4,......expressionn) -> returns not null expression from the passed expressions
                                                                                   Datatype must be same for all passed expressions.
5- DECODE(expression, search1, result1, search2, result2, ..., default_result)
*/


SELECT NVL(commission,10) AS "NVL function" FROM singleRowFunctions; -- commisison is null so show the 10 value.

SELECT NVL2(commission,first_name,salary) from singleRowFunctions; 
SELECT NVL2(first_name,commission,salary) AS "NVL2 funciton" from singleRowFunctions; -- firstName is not null but also returns second 
                                                                                      -- column no matters it's null or not.

SELECT NULLIF(commission,commission) AS "Null If Function" from singleRowFunctions; 

SELECT NULLIF(first_name,last_name) AS "Null If Funciton" from singleRowFunctions;

SELECT coalesce(first_name,last_name) from singleRowFunctions
SELECT coalesce(commission,salary) from singleRowFunctions;

SELECT DECODE(first_name, 'John', 'Hi', 'Jane', 'Hello', 'Default Greeting') AS greeting
FROM singleRowFunctions;

/*Numeric Functions
1- Round(number,places) --> round the decimal values upto the specified places -> round(1.234,2) -> 1.23
2- Trunc(number,places) --> trunc the decimal values upto the sepcified places -> trun(1.2358,2) ->1.23
3- Mod(number,divisor)  --> returns the remainder
*/


SELECT round(1.234,2) from dual;

SELECT round(1.444,2) from dual;

SELECT trunc(1.453,2) from dual;

SELECT mod(1700,3) from dual;