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
SELECT titre FROM film
NATURAL JOIN exemplaire NATURAL JOIN Location NATURAL JOIN client
WHERE nomClient = 'Brousse' AND prenomClient = 'Anne';

# Question 2 :
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu 
NATURAL JOIN acteur
NATURAL JOIN genreFilm
NATURAL JOIN genre
WHERE libelleGenre = 'POLICIER';

# Question 3 :
SELECT DISTINCT nomClient, prenomClient FROM Client
NATURAL JOIN location
NATURAL JOIN exemplaire
NATURAL JOIN genreFilm
NATURAL JOIN genre
WHERE libelleGenre = 'DRAME';

# Question 4 : 
SELECT nomIndividu, prenomIndividu FROM individu
NATURAL JOIN acteur 
INNER JOIN film 
ON acteur.numIndividu = film.realisateur;












