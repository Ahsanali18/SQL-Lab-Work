CREATE TABLE orders(
    orderId NUMBER,
    customerName VARCHAR2(50), 
    orderDate DATE,
    orderAmount NUMBER,
    paymentMode VARCHAR2(30),
    city VARCHAR2(40),
    PRIMARY KEY(orderId)
);

INSERT INTO orders (orderId,customerName,orderDate,orderAmount,paymentMode,city) VALUES (101,'Rizwan','12-MAR-18',2000,'Credit Card','New Saeedabad');
INSERT INTO orders (orderId,customerName,orderDate,orderAmount,paymentMode,city) VALUES (102,'Shahzeem','12-JAN-20',2300,'Net Banking','Hyderabad');
INSERT INTO orders (orderId,customerName,orderDate,orderAmount,paymentMode,city) VALUES (103,'Akbar','12-MAY-22',5000,'Debit Card','Badin');
INSERT INTO orders (orderId,customerName,orderDate,orderAmount,paymentMode,city) VALUES (104,'Sameer','10-AUG-18',9000,'Paypal','Larkana');
INSERT INTO orders (orderId,customerName,orderDate,orderAmount,paymentMode,city) VALUES (105,'Majid','14-JUN-18',8000,'Credit Card','Karachi');

DROP TABLE orders;

SELECT * FROM orders WHERE paymentMode='Credit Card';

SELECT * FROM orders WHERE orderAmount > 100 AND city='New Saeedabad';

SELECT * FROM orders WHERE orderDate='12-MAR-18';






INSERT ALL
    INTO orders (orderId, customerName, orderDate, orderAmount, paymentMode, city) 
    VALUES (101, 'Rizwan', '12-MAR-18', 2000, 'Jazz Cash', 'New Saeedabad')
    INTO orders (orderId, customerName, orderDate, orderAmount, paymentMode, city) 
    VALUES (102, 'Shahzeem', '12-JAN-20', 2300, 'Net Banking', 'Hyderabad')
    INTO orders (orderId, customerName, orderDate, orderAmount, paymentMode, city) 
    VALUES (103, 'Akbar', '12-MAY-22', 5000, 'Debit Card', 'Badin')
    INTO orders (orderId, customerName, orderDate, orderAmount, paymentMode, city) 
    VALUES (104, 'Sameer', '10-AUG-18', 9000, 'Paypal', 'Larkana')
    INTO orders (orderId, customerName, orderDate, orderAmount, paymentMode, city) 
    VALUES (105, 'Majid', '14-JUN-18', 8000, 'Credit Card', 'Karachi')
SELECT * FROM dual;



SELECT object_name, object_type
FROM user_objects WHERE object_name = 'employees';

