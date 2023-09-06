USE videotheque;

# Question 1 - a :
SELECT nomIndividu, prenomIndividu FROM individu
NATURAL JOIN acteur 
INNER JOIN film 
ON acteur.numIndividu = film.realisateur;

# Question 1 - b :
SELECT nomIndividu, prenomIndividu FROM individu
NATURAL JOIN acteur 
WHERE acteur.numIndividu IN (SELECT realisateur FROM film);

# Question 1 - c :
(SELECT numIndividu FROM acteur)
INTERSECT
(SELECT realisateur FROM film);

# Question 2 - a :
SELECT titre FROM film
NATURAL JOIN genrefilm
NATURAL JOIN genre
WHERE libelleGenre != 'DRAME' AND libelleGenre != 'COMEDIE DRAMATIQUE';

# Question 2 - b :
SELECT titre FROM film
NATURAL JOIN genrefilm
WHERE genrefilm.codeGenre NOT IN (SELECT codeGenre FROM genre WHERE libelleGenre = 'DRAME' OR libelleGenre = 'COMEDIE DRAMATIQUE');

# Question 2 - c :
SELECT numFilm FROM genrefilm
WHERE numfilm 
EXCEPT
(SELECT numfilm FROM genrefilm
NATURAL JOIN genre
WHERE libelleGenre = 'DRAME' 
OR libelleGenre = 'COMEDIE DRAMATIQUE');














