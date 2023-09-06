USE rentcars;

SELECT * FROM rental_cars;
SELECT * FROM car_model;

DROP TABLE IF EXISTS car_model;

# Question 1 :
# Parce qu’il y a deux colonnes qui dépendent de la colonne non-clé, model

# Question 2 :
CREATE TABLE IF NOT EXISTS car_model AS SELECT DISTINCT model, manufacturer, type_car FROM rental_cars;

# Question 3 :
ALTER TABLE car_model ADD CONSTRAINT PRIMARY KEY (model);

# Question 4 : 
ALTER TABLE rental_cars DROP manufacturer, DROP type_car;