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
SELECT * FROM film 
LEFT JOIN exemplaire 
ON film.numFilm = exemplaire.numFilm;

# Question 2 :
SELECT * FROM individu 
LEFT JOIN film 
ON numIndividu = realisateur;

# Question 3 :
SELECT * FROM individu 
LEFT JOIN acteur 
ON individu.numIndividu = acteur.numIndividu;

# Question 4 : 
SELECT * FROM individu 
LEFT JOIN (film INNER JOIN acteur ON film.numFilm = acteur.numFilm) 
ON individu.numIndividu = acteur.numIndividu;

SELECT * FROM individu 
LEFT JOIN acteur 
ON individu.numIndividu = acteur.numIndividu 
NATURAL LEFT JOIN film;

# Question 5 :
SELECT film.titre, individu.numIndividu, nomIndividu, prenomIndividu, acteur.numFilm
FROM individu
LEFT JOIN film ON realisateur = individu.numIndividu
LEFT JOIN acteur ON individu.numIndividu = acteur.numIndividu;

# Question 6 :
SELECT film.titre as 'Titre film rea', individu.numIndividu, nomIndividu, prenomIndividu, acteur.numFilm as 'Num film acteur', f.titre as 'Titre film acteur'
FROM individu
LEFT JOIN film ON realisateur = individu.numIndividu
LEFT JOIN (film as f LEFT JOIN acteur ON f.numFilm = acteur.numFilm) 
ON individu.numIndividu = acteur.numIndividu;












