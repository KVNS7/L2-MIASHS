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

CREATE TABLE IF NOT EXISTS Articles(
ID_article INT AUTO_INCREMENT PRIMARY KEY,
Taille INT,
Quantite INT,
Ref_produit INT REFERENCES Produits(ID_produit),
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


SELECT * FROM produits;
SELECT * FROM Modeles;
select * from Clients;
SELECT ID_produit FROM Produits;
SELECT ID_produit FROM Produits WHERE Nom LIKE 'Nike';
SELECT Nom,Couleur,Emplacement_img,MIN(ID_modele) FROM Produits INNER JOIN Modeles ON Produits.ID_produit=Modeles.Ref_produit WHERE Nom LIKE 'Dunk Low';
SELECT Emplacement_img FROM Modeles INNER JOIN Produits ON Modeles.Ref_produit=Produits.ID_produit WHERE Nom LIKE 'Air Force 1' LIMIT 1;
SELECT Emplacement_img FROM Modeles INNER JOIN Produits ON Modeles.Ref_produit=Produits.ID_produit WHERE Nom LIKE 'Air Force 1' LIMIT 100 OFFSET 1;



--  INSERTION DES DONNEES DANS LES TABLES PRODUITS ET MODELES --

INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Air Force 1","Nike",120,"Sans aucun doute la silhouette la plus emblématique de chez Nike : la Air Force 1. Créée par Bruce Kilgore en 1982, la première paire dotée de la technologie Nike AIR ne cesse d’être rééditée dans une multitude de coloris chaque saison.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Dunk Low","Nike",120,"Conçue pour les parquets, mais adoptée par le streetwear, la légende des années 80 fait son retour pour vous offrir un look stylé tout en contribuant à l'avenir de notre planète. Confectionnée avec au moins 20 % de son poids en matières recyclées, elle conserve les détails emblématiques du modèle d'origine dans un design respectueux de l'environnement.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Air Max 90","Nike",160,"La Nike Air Max 90 reste fidèle au modèle de running d'origine, avec sa semelle à motif gaufré emblématique, ses renforts cousus et ses détails classiques en TPU. Ses couleurs offrent un look plein de fraîcheur, tandis que l'amorti Max Air assure un confort optimal pendant vos runs.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Jordan 4","Nike",300,"La Air Jordan 4 est un modèle de chaussures de la marque Jordan, présenté en 1988, doté d'un design unique, léger et avec une unité Air visible. Elle a été créé pour améliorer les performances en utilisant un matériau synthétique innovant. Elle est devenue célèbre grâce à un événement sportif en 1989.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Stan Smith","Adidas",80,"L'Adidas Stan Smith est une chaussure de tennis produite par Adidas et sortie en 1964. D'abord appelée Robert Haillet du nom de son concepteur français, elle devient dans les années 1970 la Stan Smith, à la suite de l'accord de la marque avec le joueur de tennis américain. Elle connait un important succès, vendu à plus de 70 millions d'exemplaires dans le monde, selon le Guiness Book");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Air Max Plus","Nike",180,"La Nike Air Max Plus est une sneaker fabriquée et commercialisée par Nike depuis 1998. Modèle dérivée de la « stab » créée en 1981, la « Tn » originaire de 1998 est un modèle emblématique. Elle possède différents surnoms en fonction des pays et des époques, comme « Nike TN », « Nike Tuned » ou « Requin », en français.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Jordan 1","Nike",150,"Inspirée de la AJ1 d’origine, la Air Jordan 1 permet aux fans de suivre les traces de Michael Jordan. Grâce à sa nouvelle couleur, ce modèle aux matières classiques et épurées revient dans la tendance.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Yeezy Foam Runner","Adidas",225,"La Adidas Yeezy Foam Runner a vu le jour en 2020. Dotée d'un design avant-gardiste au départ décrié, la slip-on a très vite fait figure de best-seller de la marque. Sa conception futuriste fait d'elle une sneaker insolite, dont l'originalité est comparable à celle de la Nike Air Foamposite.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Yeezy Slide","Adidas",170,"Les Yeezy Slide sont des claquettes idéalement conçues pour l'été, pour vos balades à la plage en tout confort. De plus, elles ont été fabriquées à partir d'algues et en mousse EVA, de quoi réduire considérablement son empreinte écologique.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Yeezy Boost","Adidas",380,"La YEEZY BOOST 350 V2 est dotée d'une tige composée de Primeknit retravaillé. La bande latérale en monofilament post teint est tissée sur la tige. Des fils réfléchissants sont tissés dans les lacets. La semelle intermédiaire utilise la technologie innovante BOOST™ d'adidas.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Speed Trainer","Balenciaga",760,"L'aspect soigné et élégant du Speed Trainer prouve que la beauté réside dans la simplicité. Il est incroyablement confortable grâce à sa mousse à mémoire de forme et à ses composants d'absorption des chocs qui permettent aux pieds de rester détendus pendant de longues périodes.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Triple S","Balenciaga",890,"Les Triple S de Balenciaga, c'est un vrai gâteau à étages de basket, fait de multiples saveurs, sur près de 8 cm de semelle en caoutchouc imbriqué.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Big Red Boot","MSCHF",420,"Les Big Red Boots n'ont vraiment pas la forme d'un pied, mais elles ont vraiment la forme d'une botte. Dans les vidéos virales, on a l'étrange impression que ceux qui portent les bottes jouent à les porter, ne sachant pas si leurs proportions sont cool ou ridicules.");
INSERT INTO Produits (Nom,Marque,Prix,Descrip) VALUES ("Lidl Modele Collector","Lidl",100,"Modèle collector de la marque Lidl, cette paire sortie en nombre limité est partie comme des petits pains et se revend très cher");




INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Blanc","IMG/SHOES/AirForceBlanches.jpg",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Air Force 1'));
INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Noir","IMG/SHOES/AirForceNoires.jpg",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Air Force 1'));
INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Rose","IMG/SHOES/AirForceRoses.jpg",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Air Force 1'));
INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Vert","IMG/SHOES/DunkLowVertes.jpg",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Dunk Low'));
INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Bleu","IMG/SHOES/DunkLowBleues.jpg",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Dunk Low'));
INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Violet","IMG/SHOES/DunkLowViolettes.jpg",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Dunk Low'));
INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Rouge","IMG/SHOES/DunkLowRouges.jpg",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Dunk Low'));
INSERT INTO Modeles (Couleur,Emplacement_img,Ref_produit) VALUES ("Noir","IMG/SHOES/DunkLowNoires.png",(SELECT ID_produit FROM Produits WHERE Nom LIKE 'Dunk Low'));




INSERT INTO `articles_panier` (`ID_article`, `Taille`, `Quantite`, `Ref_produit`, `Ref_modele`, `Ref_panier`) VALUES
(1, 43, 1, 2, 2, 1),
(2, 43, 1, 2, 2, 1),
(3, 40, 1, 1, 3, 2),
(4, 40, 1, 1, 3, 2),
(5, 43, 1, 2, 7, 2),
(6, 42, 1, 1, 2, 2),
(7, 42, 1, 1, 2, 2),
(8, 38, 1, 2, 7, 4),
(9, 38, 1, 2, 4, 4),
(10, 43, 1, 1, 2, 32),
(11, 43, 1, 2, 4, 1),
(12, 42, 1, 1, 3, 1),
(13, 43, 1, 1, 2, 1),
(14, 43, 1, 2, 6, 1),
(15, 42, 1, 2, 6, 1),
(16, 43, 1, 1, 23, 1),
(17, 43, 1, 3, 30, 1),
(18, 42, 1, 4, 33, 1),
(19, 43, 1, 5, 36, 1);

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`ID_clients`, `Nom`, `Prenom`, `Date_n`, `Adresse`, `Email`, `Tel`, `Mdp`, `Ref_panier`) VALUES
(1, 'Thomas', 'Romain', '2004-01-21', '20 rue des lyanes', 'rorothomas@orange.fr', 688120754, 'motdepasse', 1),
(2, 'Jean', 'Dupont', '2001-01-01', '1 rue de Paris', 'jean.dupont@exemple.com', 415224485, 'test', 2),
(3, 'Romain2', 'Thomas2', '2004-01-21', '20 rue des lyanes', 'romain.thomas@exemple.com', 415224685, 'motdepasse2', 3),
(5, 'Boulanger', 'Sevan', '2003-12-05', '23 rue Montorgueil', 'sevan.boulanger05@gmail.com', 102030405, 'Sevan2003', 4),
(7, 'client', 'cleint', '5002-01-12', 'dzdezedz', 'client@exemple.com', 655445221, 'testclient', 32),
(8, 'client2', 'client2', '2001-01-01', '20 rue du client2', 'client2@exemple.com', 255446232, 'clienttest2', 33);

--
-- Déchargement des données de la table `modeles`
--

INSERT INTO `modeles` (`ID_modele`, `Couleur`, `Emplacement_img`, `Ref_produit`) VALUES
(21, 'Blanc', 'IMG/SHOES/AirForceBlanches.jpg', 1),
(22, 'Noir', 'IMG/SHOES/AirForceNoires.jpg', 1),
(23, 'Rose', 'IMG/SHOES/AirForceRoses.jpg', 1),
(24, 'Vert', 'IMG/SHOES/DunkLowVertes.jpg', 2),
(25, 'Bleu', 'IMG/SHOES/DunkLowBleues.jpg', 2),
(26, 'Violet', 'IMG/SHOES/DunkLowViolettes.jpg', 2),
(27, 'Rouge', 'IMG/SHOES/DunkLowRouges.jpg', 2),
(28, 'Noir', 'IMG/SHOES/DunkLowNoires.png', 2),
(29, 'Beige', 'IMG/SHOES/AirMax90Beiges.jpg', 3),
(30, 'Vert', 'IMG/SHOES/AirMax90Vertes.jpg', 3),
(31, 'Bleu', 'IMG/SHOES/AirMax90bleues.jpg', 3),
(32, 'Jaune', 'IMG/SHOES/Jordan4Jaunes.jpg', 4),
(33, 'Noir', 'IMG/SHOES/Jordan4Noires.jpg', 4),
(34, 'Blanc', 'IMG/SHOES/Jordan4Blanc.jpg', 4),
(35, 'Blanc', 'IMG/SHOES/StanSmithBlanches.jpg', 5),
(36, 'Vertes', 'IMG/SHOES/StanSmithVertes.jpg', 5),
(37, 'Bleu', 'IMG/SHOES/TNbleues.jpg', 6),
(39, 'Blanc', 'IMG/SHOES/TNblanches.jpg', 6),
(40, 'Orange', 'IMG/SHOES/TNoranges.jpg', 6),
(41, 'Noir', 'IMG/SHOES/TNnoires.png', 6),
(42, 'Grises', 'IMG/SHOES/AirMax97Grises.jpg', 15),
(43, 'Marrons', 'IMG/SHOES/AirMax97Marrons.jpg', 15),
(44, 'Noires', 'IMG/SHOES/AirMax97Noires.jpg', 15);

--
-- Déchargement des données de la table `paniers`
--

INSERT INTO `paniers` (`ID_panier`) VALUES
(1),
(2),
(3),
(4),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46);

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`ID_produit`, `Nom`, `Marque`, `Prix`, `Descrip`) VALUES
(1, 'Air Force 1', 'Nike', 120, 'Sans aucun doute la silhouette la plus emblématique de chez Nike : la Air Force 1. Créée par Bruce Kilgore en 1982, la première paire dotée de la technologie Nike AIR ne cesse d’être rééditée dans une multitude de coloris chaque saison.'),
(2, 'Dunk Low', 'Nike', 120, 'Conçue pour les parquets, mais adoptée par le streetwear, la légende des années 80 fait son retour pour vous offrir un look stylé tout en contribuant à l\'avenir de notre planète. Confectionnée avec au moins 20 % de son poids en matières recyclées, elle conserve les détails emblématiques du modèle d\'origine dans un design respectueux de l\'environnement.'),
(3, 'Air Max 90', 'Nike', 160, 'La Nike Air Max 90 reste fidèle au modèle de running d\'origine, avec sa semelle à motif gaufré emblématique, ses renforts cousus et ses détails classiques en TPU. Ses couleurs offrent un look plein de fraîcheur, tandis que l\'amorti Max Air assure un confort optimal pendant vos runs.'),
(4, 'Jordan 4', 'Nike', 300, 'La Air Jordan 4 est un modèle de chaussures de la marque Jordan, présenté en 1988, doté d\'un design unique, léger et avec une unité Air visible. Elle a été créé pour améliorer les performances en utilisant un matériau synthétique innovant. Elle est devenue célèbre grâce à un événement sportif en 1989.'),
(5, 'Stan Smith', 'Adidas', 80, 'L\'Adidas Stan Smith est une chaussure de tennis produite par Adidas et sortie en 1964. D\'abord appelée Robert Haillet du nom de son concepteur français, elle devient dans les années 1970 la Stan Smith, à la suite de l\'accord de la marque avec le joueur de tennis américain. Elle connait un important succès, vendu à plus de 70 millions d\'exemplaires dans le monde, selon le Guiness Book'),
(6, 'Air Max Plus', 'Nike', 180, 'La Nike Air Max Plus est une sneaker fabriquée et commercialisée par Nike depuis 1998. Modèle dérivée de la « stab » créée en 1981, la « Tn » originaire de 1998 est un modèle emblématique. Elle possède différents surnoms en fonction des pays et des époques, comme « Nike TN », « Nike Tuned » ou « Requin », en français.'),
(7, 'Jordan 1', 'Nike', 150, 'Inspirée de la AJ1 d’origine, la Air Jordan 1 permet aux fans de suivre les traces de Michael Jordan. Grâce à sa nouvelle couleur, ce modèle aux matières classiques et épurées revient dans la tendance.'),
(8, 'Yeezy Foam Runner', 'Adidas', 225, 'La Adidas Yeezy Foam Runner a vu le jour en 2020. Dotée d\'un design avant-gardiste au départ décrié, la slip-on a très vite fait figure de best-seller de la marque. Sa conception futuriste fait d\'elle une sneaker insolite, dont l\'originalité est comparable à celle de la Nike Air Foamposite.'),
(9, 'Yeezy Slide', 'Adidas', 170, 'Les Yeezy Slide sont des claquettes idéalement conçues pour l\'été, pour vos balades à la plage en tout confort. De plus, elles ont été fabriquées à partir d\'algues et en mousse EVA, de quoi réduire considérablement son empreinte écologique.'),
(10, 'Yeezy Boost', 'Adidas', 380, 'La YEEZY BOOST 350 V2 est dotée d\'une tige composée de Primeknit retravaillé. La bande latérale en monofilament post teint est tissée sur la tige. Des fils réfléchissants sont tissés dans les lacets. La semelle intermédiaire utilise la technologie innovante BOOST™ d\'adidas.'),
(11, 'Speed Trainer', 'Balenciaga', 760, 'L\'aspect soigné et élégant du Speed Trainer prouve que la beauté réside dans la simplicité. Il est incroyablement confortable grâce à sa mousse à mémoire de forme et à ses composants d\'absorption des chocs qui permettent aux pieds de rester détendus pendant de longues périodes.'),
(12, 'Triple S', 'Balenciaga', 890, 'Les Triple S de Balenciaga, c\'est un vrai gâteau à étages de basket, fait de multiples saveurs, sur près de 8 cm de semelle en caoutchouc imbriqué.'),
(13, 'Big Red Boot', 'MSCHF', 420, 'Les Big Red Boots n\'ont vraiment pas la forme d\'un pied, mais elles ont vraiment la forme d\'une botte. Dans les vidéos virales, on a l\'étrange impression que ceux qui portent les bottes jouent à les porter, ne sachant pas si leurs proportions sont cool ou ridicules.'),
(14, 'Lidl Modele Collector', 'Lidl', 100, 'Modèle collector de la marque Lidl, cette paire sortie en nombre limité est partie comme des petits pains et se revend très cher'),
(15, 'Air Max 97', 'Nike', 190, 'La Air Max 97 est une chaussure de sport emblématique créée par Nike en 1997. Elle est dotée d\'une tige en mesh et en cuir, avec une semelle en caoutchouc intégrant la technologie Max Air pour un amorti optimal. Son design futuriste avec des lignes ondulantes est devenu un classique de la mode urbaine.');
