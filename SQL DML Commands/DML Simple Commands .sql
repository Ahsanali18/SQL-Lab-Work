CREATE TABLE newTABLE(
    myId NUMBER,
    myName VARCHAR2(50),
    myAddress VARCHAR2(200),
    myAge NUMBER NOT NULL
);

INSERT INTO newTABLE (myId,myName,myAddress,myAge) VALUES (1,'Ahsan','Hyderabad',18);
INSERT INTO newTABLE (myId,myName,myAddress,myAge) VALUES (2,'Zeeshan','Karachi',20);
INSERT INTO newTABLE (myId,myName,myAddress,myAge) VALUES (3,'Sameer','Lahore',30);

SELECT * FROM newTABLE;

UPDATE newTABLE SET myName='Sanjay' where myId=3;
UPDATE newTABLE SET myAddress='Islamabad' where myName='Sanjay';


TRUNCATE TABLE newTABLE;

ALTER TABLE newTABLE Modify myId VARCHAR2(50);

DELETE from newTABLE where myId=1;

SELECT * FROM newTABLE;
