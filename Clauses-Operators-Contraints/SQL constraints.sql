CREATE TABLE empp(
    empId NUMBER PRIMARY KEY,
    empName VARCHAR2(50),
    empAddress VARCHAR2(50),
    empSalary NUMBER DEFAULT 50000
); 

INSERT INTO empp (empId, empName,empAddress) VALUES (1,'A','HYD');
INSERT INTO empp (empId, empName,empAddress) VALUES (2,'B','HYD');
INSERT INTO empp VALUES (3,'C','KAR',7000);

SELECT * FROM empp;


INSERT INTO empp (empId,empName,empAddress) VALUES (4,'D','KAR');

SELECT * FROM empp;

INSERT INTO empp (empId,empAddress) VALUES (5,'ISL');

ALTER TABLE empp MODIFY empAddress DEFAULT '---';

--ALTER TABLE empp MODIFY empName CHECK (empName IN('H','B'));
