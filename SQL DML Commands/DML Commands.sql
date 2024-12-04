INSERT INTO helloStudents (studentRollNo, studentName, studentAddress) VALUES (001,'Ahsan Ali','Hyderabad');
INSERT INTO helloStudents (studentRollNo, studentName, studentAddress) VALUES (002,'Zeeshan','Karachi');

SELECT * FROM helloStudents;

UPDATE hellostudents SET studentName='Sameer' where studentRollNo=1;

SELECT * FROM helloStudents;

DELETE FROM helloStudents where studentRollNo=1;

SELECT * FROM helloStudents;