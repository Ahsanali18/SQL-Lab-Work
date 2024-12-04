CREATE TABLE helloStudents(
    studentRollNo NUMBER ,
    studentName VARCHAR2(50),
    studentAddress VARCHAR2(200)
);

ALTER TABLE helloStudents ADD studentAge NUMBER;

RENAME helloStudents TO myStudents;

TRUNCATE TABLE myStudents; 

DROP TABLE helloStudents;


SELECT * FROM myStudents;

DROP TABLE myStudents;

