DROP TABLE payment;

CREATE TABLE payment(
    customer_Id NUMBER(3) PRIMARY KEY,
    amount NUMBER(7,2) NOT NULL,
    payment_Mode VARCHAR2(30) NOT NULL,
    payment_date DATE
);


INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(111,2000,'EasyPaisa','01-JAN-24');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(222,3000,'JazzCash','02-FEB-23');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(333,4000,'PayPal','03-MAR-22');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(444,5000,'Cash','04-APR-21');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(555,6000,'Bank','05-APR-20');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(666,5000,'EasyPaisa','02-JAN-24');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(777,7000,'JazzCash','09-FEB-23');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(888,8000,'PayPal','04-MAR-22');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(999,9000,'Cash','07-APR-21');
INSERT INTO payment(customer_Id,amount,payment_Mode,payment_date) VALUES(901,1100,'Bank','15-APR-20');
    
    
SELECT payment_Mode, sum(amount) AS "Total Amount" from payment
GROUP BY payment_Mode; 


SELECT payment_Mode, sum(amount) AS "Total Amount" FROM payment 
GROUP BY payment_Mode HAVING count(customer_Id)>2;
