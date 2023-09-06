CREATE DATABASE IF NOT EXISTS rentcars;
USE rentcars;

#Créer la base customer_rentals
DROP TABLE IF EXISTS customer_rentals;
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers
(
customer_id INT NOT NULL PRIMARY key,
customer_name VARCHAR( 128 ),
cars_rented  VARCHAR( 128 ),
invoice_id VARCHAR( 128 ), 
premium_member VARCHAR( 128 ), 
salutation VARCHAR( 128 )
);

CREATE TABLE IF NOT EXISTS customer_rentals
(
customer_id INT NOT NULL, 
car_id VARCHAR( 128 ) NOT NULL, 
start_date DATE, 
end_date DATE,
model VARCHAR( 128 ),
manufacturer VARCHAR( 128 ),
type_car VARCHAR( 128 ),
condition_ VARCHAR( 128 ),
color VARCHAR( 128 ),
CONSTRAINT pk PRIMARY KEY (customer_id, car_id, start_date)
);

#Peupler la table customers 
INSERT INTO customers VALUES (1453,"Kelly Brennan","4KL298","4534","FALSE", "Dr");
INSERT INTO customers VALUES (1454,"Tom Nguyen", "5PL4YY" , "9832", "FALSE", "Mr");
INSERT INTO customers VALUES (1455,"Georgia Kim","5H9OP5, 9PH8GF, 499ERW", "2903, 3490, 1021","TRUE", "Ms");
INSERT INTO customers VALUES (1456,"Jean Ford","4KL298, 9PH8GF", "7890, 4494","TRUE", "Mrs");

#Peupler la table customer_rentals
INSERT INTO customer_rentals VALUES(1453, "4KL298", '2019-01-08', '2019-01-10', "Golf 2017", "Volkswagen", "hatchback", "fair", "blue");
INSERT INTO customer_rentals VALUES(1454, "5PL4YY", '2019-03-18', '2019-03-21', "Camaro 2019", "Chevrolet", "convertible", "excellent", "red");
INSERT INTO customer_rentals VALUES(1455, "5H9OP5", '2019-05-02', '2019-05-16', "CRV 2018", "Honda", "SUV", "good", "grey");
INSERT INTO customer_rentals VALUES (1455, "499ERW", '2019-01-12', '2019-01-13', "CRV 2018", "Honda", "SUV", "excellent", "black");
INSERT INTO customer_rentals VALUES (1456, "4KL298", '2019-02-17', '2019-02-22', "Golf 2017", "Volkswagen", "hatchback", "fair",  "blue");

