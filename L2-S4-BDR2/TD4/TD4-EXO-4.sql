USE rentcars;

SELECT * FROM customer_rentals;
SELECT * FROM rental_cars;

# Question 1 :
# Parce qu’il existe des attributs non clés décrivant la voiture qui ne dépendent que d’une clé principale, car_id.

#Question 2 :
# Les champs à inclure sont : car_id, model, manufacturer, type_car, condition_, color

#Question 3 : 
CREATE TABLE IF NOT EXISTS rental_cars
(
car_id VARCHAR(128) PRIMARY KEY,
model VARCHAR(128),
manufacturer VARCHAR(128),
type_car VARCHAR(128),
condition_ VARCHAR(128),
color VARCHAR(128)
);

#Question 4 : 
INSERT INTO rental_cars(car_id, model, manufacturer, type_car, condition_, color)
SELECT DISTINCT car_id, model, manufacturer, type_car, condition_, color
FROM customer_rentals;

#Question 5 :
ALTER TABLE customer_rentals DROP model, DROP manufacturer, DROP type_car, DROP condition_, DROP color;
