USE videotheque;

# Question 1  :
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu
NATURAL JOIN acteur
WHERE numFilm IN 
(	
SELECT numFilm FROM acteur 
NATURAL JOIN individu 
WHERE nomIndividu = 'SCHNEIDER'
AND prenomIndividu = 'ROMY'
);

#Question 2 :
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu 
NATURAL JOIN acteur
WHERE numFilm IN
(
SELECT film.numFilm FROM film
INNER JOIN individu ON film.realisateur = individu.numIndividu
WHERE individu.nomIndividu = 'SAUTET' AND individu.prenomIndividu = 'CLAUDE'
);

# Question 3 :
SELECT nomClient, prenomClient FROM Client C
NATURAL JOIN location l1
NATURAL JOIN exemplaire
NATURAL JOIN genreFilm
NATURAL JOIN genre WHERE genre.libelleGenre = 'POLICIER'
AND NOT EXISTS
(
SELECT * FROM location l2
NATURAL JOIN exemplaire
NATURAL JOIN genreFilm
NATURAL JOIN genre G
WHERE C.login = l2.login
AND G.libelleGenre != 'POLICIER'
);



