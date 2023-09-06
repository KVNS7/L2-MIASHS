USE comptoircommandes;

# Question 1 :
CREATE VIEW Synthèse_nb_commandes AS 
SELECT Codeclient, société, count(refclient) AS 'Total nb commandes' FROM Clients
INNER JOIN commandes ON Codeclient = refclient
GROUP BY Codeclient;

SELECT * FROM Synthèse_nb_commandes 
WHERE codeclient = 
(
SELECT Codeclient FROM Synthèse_clients 
WHERE Total_commandes = 
(SELECT MAX(Total_commandes) FROM Synthèse_clients)
);

# Question 2 :
CREATE VIEW Synthèse_nb_commandes_remise AS
SELECT Codeclient, société, count(DISTINCT réfcommande) as 'Total nbc avec remise' FROM Clients
INNER JOIN commandes ON Codeclient = refclient
INNER JOIN détails_commandes ON n°commande = réfcommande
WHERE remise > 0
GROUP BY Codeclient;

SELECT * FROM Synthèse_nb_commandes
NATURAL JOIN Synthèse_nb_commandes_remise
WHERE `Total nbc avec remise` >= `Total nb commandes` * 0.75;



