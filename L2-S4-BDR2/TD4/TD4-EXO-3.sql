USE rentcars;

SELECT * FROM customers;
SELECT * FROM customer_rentals;
SELECT * FROM cust_rentals;

DROP TABLE IF EXISTS cust_rentals;

# Non, parce qu’il y a plusieurs valeurs dans cars_rented et invoice_id

# Question 1 :
CREATE TABLE IF NOT EXISTS cust_rentals
(
invoice_id VARCHAR(128) PRIMARY KEY,
car_id VARCHAR(128) NOT NULL,
customer_id INT NOT NULL
);

# Question 2 :
INSERT INTO cust_rentals VALUES (2903, "5H9OP5", 1455);
INSERT INTO cust_rentals VALUES (3490, "9PH8GF", 1455);
INSERT INTO cust_rentals VALUES (1021, "499ERW", 1455);
INSERT INTO cust_rentals VALUES (7890, "4KL298", 1456);
INSERT INTO cust_rentals VALUES (4494, "9PH9GF", 1456);
INSERT INTO cust_rentals VALUES (4534, "4KL298", 1453);
INSERT INTO cust_rentals VALUES (9832, "5PL4YY", 1454);

# Question 3 :
ALTER TABLE customers DROP COLUMN cars_rented, DROP COLUMN invoice_id; 
