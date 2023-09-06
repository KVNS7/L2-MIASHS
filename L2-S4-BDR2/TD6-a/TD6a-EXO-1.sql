USE videotheque;

# Question 1 :
SELECT realisateur, nomIndividu, count(titre) as nb_films FROM individu
INNER JOIN film ON numIndividu = realisateur
GROUP BY realisateur
HAVING nb_films >
(
SELECT count(titre) as nb_films 
FROM individu
INNER JOIN film 
ON numIndividu = realisateur 
WHERE nomIndividu = 'JARMUSCH'
);

# Question 2 :

SELECT nomClient, count(location.login) as nb_locations FROM client
NATURAL LEFT JOIN location
GROUP BY nomClient
HAVING nb_locations <
(
SELECT count(numexemplaire) as nb_locations FROM client
NATURAL JOIN location
WHERE nomClient = 'BEKIOUI'
);








