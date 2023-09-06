USE videotheque;

# Question 1 :
SELECT 	login, count(codeGenre) AS nb_categories FROM location
NATURAL JOIN exemplaire
NATURAL JOIN genreFilm
NATURAL JOIN genre
GROUP BY login
HAVING nb_categories = (SELECT count(*) FROM genre) ;

# Question 2 :
SELECT 	login, count(codeGenre) AS nb_categories FROM location
NATURAL JOIN exemplaire
NATURAL JOIN genreFilm
NATURAL JOIN genre
WHERE libelleGenre = 'AVENTURE'
GROUP BY login
HAVING nb_categories = 
(
SELECT count(numFilm) FROM genreFilm
NATURAL JOIN GENRE
WHERE libelleGenre = 'AVENTURE'
GROUP BY codeGenre
);





