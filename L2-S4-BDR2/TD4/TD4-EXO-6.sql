USE rentcars;

SELECT * FROM customers;
SELECT * FROM customer_rentals;
SELECT * FROM cust_rentals;
SELECT * FROM rental_cars;
SELECT * FROM car_model;

# Question 1 :
ALTER TABLE customer_rentals ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

# Question 2 :
ALTER TABLE customer_rentals ADD FOREIGN KEY(car_id) REFERENCES rental_cars(car_id);

# Question 3 :
ALTER TABLE rental_cars ADD FOREIGN KEY(model) REFERENCES car_model(model);