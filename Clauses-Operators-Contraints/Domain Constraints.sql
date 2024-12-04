CREATE TABLE persons(
    personId NUMBER PRIMARY KEY,
    personName VARCHAR2(50) NOT NULL,
    address VARCHAR2(50) CHECK (address IN('Hyderabad','Lahore','New Saeedabad')),
    bloodGroup CHAR(2) CHECK (bloodGroup IN('O+','A+','B+','O-','B-','O-')),
    salary NUMBER DEFAULT 40000
);
    
INSERT INTO persons (personId, personName,address,bloodGroup) VALUES (1,'Ahsan Ali','Hyderabad','O+');
INSERT INTO persons (personId, personName,address,bloodGroup) VALUES (2,'Zeeshan','Saeedabad','A+'); --Check constraint violated
INSERT INTO persons (personId,address,bloodGroup) VALUES (3,'Hyderabad','O-'); -- Not Null constraint violated.