USE employees;

# Question 1 :
SELECT count(*) FROM employees;

# Question 2 :
# Il n'y que PRIMARY

# Question 3 :
SELECT * FROM employees 
WHERE first_name LIKE 'Joe';

# Question 4 : 
EXPLAIN SELECT * FROM employees 
WHERE first_name LIKE 'Joe';
# 299 468 lignes parcourues
# Trop de lignes parcourues pour un resultat vide
# Aucun index utilisé

# Question 5 : 
CREATE INDEX employees_first_name_idx 
ON employees(first_name);
# Deux index maintenant

# Question 6 : 
EXPLAIN SELECT * FROM employees 
WHERE first_name LIKE 'Jo';
# Recherche sur une seule ligne 

# Question 7 :
CREATE INDEX employees_last_name_idx 
ON employees(last_name);

# Question 8 :
EXPLAIN SELECT * FROM employees 
WHERE last_name LIKE 'Halloran' AND first_name LIKE 'Aleksander';
# La requête utilise 2 index

# Question 9 : 
CREATE INDEX employees_first_last_name_idx 
ON employees(last_name, first_name);

# Question 10 :
EXPLAIN SELECT * FROM employees 
WHERE last_name LIKE 'Halloran' AND first_name LIKE 'Aleksander';
# La requête n'utilise qu'un index desormais

# Question 11 :
SELECT count(DISTINCT emp_no)/count(emp_no) FROM employees;

# Question 12 :
SELECT count(DISTINCT first_name)/count(first_name) FROM employees;

# Question 13 :
SELECT count(DISTINCT last_name)/count(last_name) FROM employees;

# Question 14 :
# C'est emp_no qui offre la plus grande variété de valeurs, puis last_name puis first_name

# Question 15 : 
ALTER TABLE employees
DROP INDEX employees_first_name_idx, DROP INDEX employees_last_name_idx, DROP INDEX employees_first_last_name_idx;