CREATE DATABASE Vente_chaussures;
USE Vente_chaussures;


CREATE TABLE IF NOT EXISTS Clients(
ID_clients INT AUTO_INCREMENT PRIMARY KEY,
Nom VARCHAR(50),
Prenom VARCHAR(50),
Date_n date,
Adresse VARCHAR(300),
Email VARCHAR(300),
Tel INT,
Mdp VARCHAR(50),
Ref_panier INT REFERENCES Paniers(ID_panier)
);

CREATE TABLE IF NOT EXISTS Paniers(
ID_panier INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Articles_panier(
ID_article INT AUTO_INCREMENT PRIMARY KEY,
Taille INT,
Quantite INT,
Ref_produit INT REFERENCES Produits(ID_produit),
Ref_modele INT REFERENCES Modeles(ID_modele),
Ref_panier INT REFERENCES Paniers(ID_panier)
);

CREATE TABLE IF NOT EXISTS Produits(
ID_produit INT AUTO_INCREMENT PRIMARY KEY,
Nom VARCHAR(300),
Marque VARCHAR(300),
Prix INT,
Descrip VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS Modeles(
ID_modele INT AUTO_INCREMENT PRIMARY KEY,
Couleur VARCHAR(300),
Emplacement_img VARCHAR(300),
Ref_produit INT REFERENCES Produit(ID_produit)
);