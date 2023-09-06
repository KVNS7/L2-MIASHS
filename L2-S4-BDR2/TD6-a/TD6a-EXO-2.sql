USE videotheque;

# Question 1 :
SELECT numFilm, titre, count(numExemplaire) as nb_exemplaires FROM film
NATURAL JOIN exemplaire
GROUP BY numFilm
HAVING nb_exemplaires >= ALL
(
SELECT count(numExemplaire) as nb_exemplaires FROM film
NATURAL LEFT JOIN exemplaire
);

# Question 2 :
SELECT libelleGenre, count(numFilm) AS nb_films FROM genre
NATURAL JOIN genreFilm
GROUP BY libelleGenre
HAVING nb_films <= ALL
(
SELECT count(numFilm) AS nb_films FROM genre
NATURAL JOIN genreFilm
GROUP BY libelleGenre
);