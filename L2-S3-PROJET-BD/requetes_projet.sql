USE BORNES_RECHARGE_AUTOLIB;

###  Interrogation de la base  ###
##  Interrogations Basiques  ##
# SANS JOINTURE #


SELECT * FROM Bornes
WHERE RefFabricant = "F3"; 
# Affiche les bornes du fabricant F3

SELECT * FROM Bornes
WHERE RefOp = "OP01"; 
# Affiche les bornes liées à l'opérateur OP01

SELECT * FROM Bornes
WHERE Type_emplacement = "mixte" AND RefConnecteur = "CON04"; 
# Affiche les bornes en emplacement mixte possédant un connecteur CON04

SELECT * FROM Stations
WHERE CP = "75012"; 
# Affiche toutes les stations du 12e arrondissement de Paris

SELECT * FROM Stations
WHERE ID_Autolib IS NULL; 
# Affiche les stations dont l'ID_autolib n'est pas renseigné

SELECT * FROM Stations
WHERE Nom_voie LIKE("%QUAI%"); 
# Affiche les stations sur un quai (dont le nom de voie possède le champ "quai")

SELECT * FROM Connecteurs
ORDER BY Puissance_PDC DESC; 
# Affiche les connecteurs triés par leur puissance de manière decroissante

SELECT * FROM Operateurs
WHERE Type_systeme_identification LIKE("%RFID"); 
# Affiche les operateur ayant un systeme d'identification de type RFID


# AVEC JOINTURE #


SELECT ID_Point, Latitude, Longitude, RefStation, RefConnecteur FROM Bornes, Connecteurs, Stations
WHERE RefStation = ID_station
AND RefConnecteur = ID_Connecteur
AND Type_de_recharge = "accélérée"
AND CP = "75015"; 
# Affiche les bornes ayant un connecteur avec recharge accélérée et dont la station se situe dans le 15e

SELECT ID_Point, Latitude, Longitude, RefStation, CP, RefOp, Tarif_general 
FROM (Bornes INNER JOIN Operateurs ON RefOp = ID_Operateur)
INNER JOIN Stations ON RefStation = ID_station
WHERE CP ="75016" OR CP="75017";
# Affiche les bornes dont la station est dans le 16e ou 17e arrondissement de Paris ainsi que leur tarifs

SELECT ID_Station, Nom_Station, Nom_Voie, CP 
FROM (Stations INNER JOIN Bornes ON ID_Station = RefStation)
INNER JOIN Connecteurs ON RefConnecteur = ID_Connecteur
WHERE Type_de_recharge = "accélérée";
# Affiche les stations qui ont des bornes possedant un connecteur avec recharge accélérée

SELECT DISTINCT ID_point, RefConnecteur, Puissance_PDC FROM Bornes 
INNER JOIN Connecteurs
ON RefConnecteur=ID_Connecteur
WHERE Puissance_PDC BETWEEN 3 AND 5;
# Affiche les bornes dont le connecteur a une puissance entre 3 et 5 ainsi que la puissance



##  Interrogations avec fonctions d'agrégations  ##


SELECT Fabricant_borne, COUNT(*) AS Nombre_bornes FROM Bornes 
INNER JOIN fabricants ON RefFabricant=ID_Fabricant 
GROUP BY Fabricant_borne;
# Affiche le nombre de bornes par fabricant

SELECT CP, COUNT(*) AS Nombre_bornes FROM Bornes
INNER JOIN Stations ON RefStation = ID_station
GROUP BY CP;
# Affiche le nombre de bornes par arrondissement de Paris

SELECT CP, COUNT(*) AS Nombre_stations FROM Stations
GROUP BY CP;
# Affiche le nombre de stations par arrondissement de Paris

SELECT CP, SUM(Nombre_PDC) AS Nombre_de_PDC 
FROM (Connecteurs INNER JOIN Bornes ON ID_Connecteur = RefConnecteur)
INNER JOIN Stations ON RefStation = ID_Station
GROUP BY CP;
# Affiche le nombre de prises de courant par arrondissement de Paris

SELECT Type_de_recharge, COUNT(ID_Point) AS Nombre_bornes FROM Bornes
INNER JOIN Connecteurs ON Refconnecteur = ID_Connecteur
GROUP BY Type_de_recharge;
# Affiche le nombre de bornes par type de recharge

SELECT CP, COUNT(*) AS Nombre_Bornes_fabricant_F2 FROM Bornes
INNER JOIN Stations ON RefStation = ID_Station
WHERE RefFabricant = "F2"
GROUP BY CP;
# Affiche le nombre de bornes du fabricant F2 selon chaque arrondissement de Paris

SELECT CP, MIN(Puissance_PDC) AS Min_puissance, MAX(Puissance_PDC) AS Max_puissance, AVG(Puissance_PDC) AS Moyenne_puissance
FROM (Bornes INNER JOIN Stations ON RefStation = ID_Station)
INNER JOIN Connecteurs ON RefConnecteur = ID_Connecteur
GROUP BY CP;
# Affiche la puissance minimum et maximum disponible ainsi que la moyenne pour les bornes de chaque arrondissement de Paris

SELECT Fabricant_borne, Type_emplacement, COUNT(Type_emplacement) AS Nb_Bornes FROM BORNES
INNER JOIN Fabricants ON RefFabricant = ID_Fabricant
GROUP BY Fabricant_borne, Type_emplacement;
# Affiche le nombre de bornes par type d'emplacement pour chaque fabricant

SELECT ID_Point, Latitude FROM Bornes 
WHERE Latitude = (SELECT MAX(Latitude) FROM Bornes) OR Latitude = (SELECT MIN(Latitude) FROM Bornes);
# Affiche les stations ayant la latitude la plus élévée ainsi que celles ayant la moins élévée

SELECT RefConnecteur, Type_emplacement, COUNT(*) AS Nombre_Bornes FROM Bornes
GROUP BY RefConnecteur, Type_emplacement;
# Affiche le nombre de bornes par connecteur et par type d'emplacement 



###  Mise a jour de la base  ###
## Ajout de lignes ##


INSERT INTO Connecteurs VALUES 
("CON06","prise T3","1.8","2","AC mono","oui","normale");
# Ajoute un nouveau connecteur de puissance 1.8 en recharge normale

INSERT INTO Fabricants VALUES
("F4","Orange","UrbanEnergy","01 23 45 67","7/7 - 6 a 00h");
# Ajoute un nouveau fabricant nommé Orange



## Mises a jour de données ##


UPDATE Connecteurs
SET Puissance_PDC = "7"
WHERE ID_Connecteur = "CON02";
# Modifie la puissance des connecteurs de type CON02 et leur affecte la valeur 7

UPDATE Connecteurs
SET Nombre_PDC = Nombre_PDC + 1
WHERE Puissance_PDC > 5;
# Ajoute une prise à tout les connecteurs dont la puissance est supérieure à 5

UPDATE Connecteurs
SET Type_courant_PDC = "AC Duo"
WHERE Nombre_PDC = "2";
# Modifie le type de courant des prises de courant en AC DUO pour les Connecteurs ayant 2 prises de courant

UPDATE Bornes 
SET RefConnecteur = "CON06", RefFabricant = "F4"
WHERE RefStation IN (SELECT ID_Station FROM Stations WHERE CP = "75020");
# Modifie le type de connecteur et le fabricant de toutes les bornes du 20e arrondissement de Paris par CON06 et F4

UPDATE Bornes
SET Type_emplacement = "trottoir"
WHERE RefStation IN (SELECT ID_Station FROM Stations WHERE CP = "75009");
# Modifie l'emplacement des bornes dans le 9e arrondissement de Paris par trottoir

UPDATE Bornes
SET NB_places = "2"
WHERE RefConnecteur IN (SELECT ID_Connecteur FROM Connecteurs WHERE Nombre_PDC = "2");
# Modifie le nombre de place a 2 pour les bornes qui ont un connecteur avec 2 places

UPDATE Operateurs
SET Type_communication_supervision = "4G"
WHERE Operateur = "Mairie de Paris";
# Modifie le type_communication_supervision en 4G pour l'operateur Mairie de Paris

UPDATE Bornes
SET RefConnecteur = "CON02"
WHERE RefOp IN (SELECT ID_Operateur FROM Operateurs WHERE Operateur = "Mairie de Paris")
AND RefStation IN (SELECT ID_Station FROM Stations WHERE CP = "75004");
# Modifie les connecteurs en CON02 pour les bornes dont l'operateur est la Mairie de Paris et se situant dans le 4e arrondissement de Paris