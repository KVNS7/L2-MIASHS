USE videotheque;

SELECT * FROM location;
SELECT * FROM client;
SELECT * FROM genrefilm;
SELECT * FROM genre;
SELECT * FROM exemplaire;
SELECT * FROM acteur;
SELECT * FROM film;
SELECT * FROM individu;

# Question 1 :
SELECT DISTINCT individu.nomIndividu, individu.prenomIndividu FROM individu
INNER JOIN film ON individu.numIndividu = realisateur
INNER JOIN (individu as I INNER JOIN acteur ON I.numIndividu = acteur.numIndividu)
ON acteur.numFilm = film.numFilm
WHERE I.nomIndividu = 'VENTURA' AND I.prenomIndividu = 'LINO';

# Question 2 :
SELECT DISTINCT c.nomClient, f.titre FROM client c
NATURAL JOIN location l1
INNER JOIN location l2 ON l1.numExemplaire = l2.numExemplaire AND l1.login = l2.login AND l1.dateLocation <> l2.dateLocation
INNER JOIN (film f NATURAL JOIN exemplaire e) ON e.numExemplaire = l1.numExemplaire;

# Pour tester si Q2 fonctionne
SELECT location.login, location.numexemplaire, titre FROM location
NATURAL JOIN exemplaire
NATURAL JOIN film;



