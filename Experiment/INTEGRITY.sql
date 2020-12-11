#1_1
SET SQL_SAFE_UPDATES = 0;
SET AUTOCOMMIT = 0;
#1_2
BEGIN;
SELECT *  
FROM Customers c
ORDER BY c.cid ASC;
#1_3
DELETE FROM customers c
WHERE c.city = 'Kyoto';
#1_4
UPDATE customers c
SET c.discnt = 15
WHERE c.cid = 'c004';
#1_5
SELECT *  
FROM Customers c
ORDER BY c.cid ASC;
#1_6
ROLLBACK;


#2_1
SET AUTOCOMMIT = 0;
#2_2
BEGIN;
SELECT *
FROM orders o 
ORDER BY o.cid ASC;
#2_3
UPDATE customers c
SET c.cid = 'c009'
WHERE c.cid = 'c002';
#2_4
DELETE FROM customers c
WHERE c.cid = 'c004';
#2_5
SELECT *
FROM orders o
ORDER BY o.cid ASC; 
#2_6
ROLLBACK;


#3_1
SET AUTOCOMMIT = 0;
BEGIN;
CREATE TRIGGER update_orders
BEFORE INSERT ON orders FOR EACH ROW
	UPDATE products p
    SET p.quantity = p.quantity - NEW.qty
    WHERE p.pid = NEW.pid;
#3_2
INSERT INTO orders
	VALUES(1028,'2020-12-09','c001','a01','p06',10000,10000.00);
#3_3
DROP TRIGGER update_orders;    
