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
)
UNION
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu 
NATURAL JOIN acteur
WHERE numFilm IN
(
SELECT film.numFilm FROM film
INNER JOIN individu ON film.realisateur = individu.numIndividu
WHERE individu.nomIndividu = 'LAMOTTE' AND individu.prenomIndividu = 'MARTIN'
);

#Question 2 :
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu
NATURAL JOIN acteur
WHERE numFilm IN
(
SELECT numFilm FROM acteur 
NATURAL JOIN individu 
WHERE nomIndividu = 'SCHNEIDER'
)
EXCEPT
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu
NATURAL JOIN acteur
WHERE numFilm IN 
(	
SELECT numFilm FROM acteur 
NATURAL JOIN individu 
WHERE nomIndividu = 'PICCOLI'
);

# Question 3 :
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu 
NATURAL JOIN acteur
WHERE numFilm IN
(
SELECT film.numFilm FROM film
INNER JOIN individu ON film.realisateur = individu.numIndividu
WHERE individu.nomIndividu = 'SAUTET' AND individu.prenomIndividu = 'CLAUDE'
)
EXCEPT
SELECT DISTINCT nomIndividu, prenomIndividu FROM individu 
NATURAL JOIN acteur
WHERE numFilm IN
(
SELECT film.numFilm FROM film
INNER JOIN individu ON film.realisateur = individu.numIndividu
WHERE individu.nomIndividu = 'JARMUSCH' AND individu.prenomIndividu = 'JIM'
);

