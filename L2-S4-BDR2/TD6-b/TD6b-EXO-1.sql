USE comptoircommandes;

# Question 1 - 1 :
CREATE VIEW Synthèse_produits AS 
SELECT codeproduit, Nom_produit, YEAR(Date_commande) as Année, SUM(détails_commandes.quantité) as Quantité_commandée
FROM produits
INNER JOIN détails_commandes ON codeproduit = Réfproduit
INNER JOIN commandes ON Réfcommande = N°commande
GROUP BY codeproduit, Nom_produit, Année;

SELECT * FROM Synthèse_produits;

# Question 1 - 2a :
SELECT codeproduit, Nom_produit, Quantité_commandée FROM Synthèse_produits
WHERE Quantité_commandée = (SELECT MAX(Quantité_commandée) FROM Synthèse_produits WHERE Année = '2019');

#Question 1 - 2b : 
SELECT Année, codeproduit, Nom_produit, Quantité_commandée FROM Synthèse_produits
WHERE Quantité_commandée = (SELECT MAX(Quantité_commandée) FROM Synthèse_produits WHERE Année = '2017')
UNION
SELECT Année, codeproduit, Nom_produit, Quantité_commandée FROM Synthèse_produits
WHERE Quantité_commandée = (SELECT MAX(Quantité_commandée) FROM Synthèse_produits WHERE Année = '2018')
UNION
SELECT Année, codeproduit, Nom_produit, Quantité_commandée FROM Synthèse_produits
WHERE Quantité_commandée = (SELECT MAX(Quantité_commandée) FROM Synthèse_produits WHERE Année = '2019');

# Question 1 - 2c :  PAS BON
SELECT DISTINCT Codeclient, Société FROM clients
INNER JOIN commandes ON Codeclient = Refclient
INNER JOIN détails_commandes ON N°Commande = Réfcommande
WHERE Réfproduit = 
(
SELECT codeproduit FROM Synthèse_produits
WHERE Quantité_commandée = (SELECT MAX(Quantité_commandée) FROM Synthèse_produits WHERE Année = '2019')
);

# Question 2 - 1 :
CREATE VIEW Synthèse_clients AS
SELECT Codeclient, Société, YEAR(date_commande) AS Année, SUM(PU*quantité) AS Total_commandes
FROM clients
INNER JOIN commandes ON codeclient = refclient
INNER JOIN détails_commandes ON N°commande = Réfcommande
GROUP BY Codeclient, Société, Année;

SELECT * FROM Synthèse_clients;

# Question 2 - 1a :
SELECT * FROM Synthèse_clients
WHERE Total_commandes = (SELECT max(Total_commandes) FROM Synthèse_clients);

# Question 2 - 1b :
SELECT * FROM Synthèse_clients
WHERE Total_commandes > (SELECT AVG(Total_commandes) FROM Synthèse_clients);

# Question 2 - 1c :
SELECT Codeclient, Société, count(refclient) AS 'Total nb commandes' FROM Clients
INNER JOIN commandes ON Codeclient = refclient
WHERE Codeclient = (SELECT Codeclient FROM Synthèse_clients WHERE Total_commandes = (SELECT MAX(Total_commandes) FROM Synthèse_clients))
GROUP BY Codeclient;








