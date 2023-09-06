CREATE DATABASE IF NOT EXISTS videotheque;
USE videotheque;

DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS genrefilm;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS exemplaire;
DROP TABLE IF EXISTS acteur;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS individu;

--
-- Table structure for table `individu`
--

CREATE TABLE individu (
  numIndividu INT PRIMARY KEY,
  nomIndividu VARCHAR(30) NOT NULL, 
  prenomIndividu VARCHAR(30)
) ;

--
-- Table structure for table `film`
--

CREATE TABLE film (
  numFilm int PRIMARY KEY,
  titre varchar(50) NOT NULL, 
  realisateur INT REFERENCES individu(numIndividu)
) ;

--
-- Table structure for table `acteur`
--

CREATE TABLE acteur (
  numFilm integer REFERENCES film,
  numIndividu integer REFERENCES individu,
  PRIMARY KEY (numFilm,numIndividu)
) ;

--
-- Table structure for table `exemplaire`
--

CREATE TABLE exemplaire (
  numExemplaire INT  PRIMARY KEY,
  numFilm INT  NOT NULL REFERENCES film,
  codeSupport VARCHAR(4),
  VO varchar(16),
  probleme varchar(60), 
  detailSupport varchar(8)
 
) ;


--
-- Table structure for table `genre`
--

CREATE TABLE genre (
  codeGenre char(2) PRIMARY KEY,
  libelleGenre varchar(30) 
) ;


--
-- Table structure for table `genrefilm`
--

CREATE TABLE genrefilm (
  numFilm INTEGER REFERENCES film,
  codeGenre CHAR(2) REFERENCES genre, 
  PRIMARY KEY (numFilm,codeGenre)
) ;

--
-- Table structure for table `client`
--

create table client (
login char(15) primary key,
nomclient varchar(30) not null,
prenomclient varchar(30),
motdepasse char(15) not null,
adresse varchar(120)
) ;

--
-- Table structure for table `location`
--

create table location (
login char(15) NOT NULL REFERENCES CLIENT,
numexemplaire INT NOT NULL REFERENCES exemplaire,
datelocation DATE NOT NULL,
dateenvoi DATE,
dateretour date,
check (dateenvoi >= datelocation),
check (dateretour >= dateenvoi),
primary key (numexemplaire, datelocation)

) ;

--
-- Dumping data for table `individu`
--

INSERT INTO individu VALUES (9465,'JARMUSCH','JIM');
INSERT INTO individu VALUES (1548,'SAUTET','CLAUDE');
INSERT INTO individu VALUES (551,'DEPP','JOHNNY');
INSERT INTO individu VALUES (7499,'MITCHUM','ROBERT');
INSERT INTO individu VALUES (546,'LURIE','JOHN');
INSERT INTO individu VALUES (909,'BENIGNI','ROBERTO');
INSERT INTO individu VALUES (712,'LAMOTTE','MARTIN');
INSERT INTO individu VALUES (7887,'WAITS','TOM');
INSERT INTO individu VALUES (303,'WHITAKER','FOREST');
INSERT INTO individu VALUES (5236,'FROT','CATHERINE');
INSERT INTO individu VALUES (6030,'DE BANKOLE','ISAAC');
INSERT INTO individu VALUES (8470,'TORMEY','JOHN');
INSERT INTO individu VALUES (994,'BUSCEMI','STEVE');
INSERT INTO individu VALUES (7090,'BRASCHI','NICOLETTA');
INSERT INTO individu VALUES (1090,'RYDER','WINONA');
INSERT INTO individu VALUES (5063,'DALLE','BEATRICE');
INSERT INTO individu VALUES (7444,'EDSON','RICHARD');
INSERT INTO individu VALUES (6637,'VENTURA','LINO');
INSERT INTO individu VALUES (922,'SCHNEIDER','ROMY');
INSERT INTO individu VALUES (7614,'FREY','SAMY');
INSERT INTO individu VALUES (8063,'MONTAND','YVES');
INSERT INTO individu VALUES (748,'PICCOLI','MICHEL');
INSERT INTO individu VALUES (6197,'BELMONDO','JEAN-PAUL');
INSERT INTO individu VALUES (5402,'AUTEUIL','DANIEL');
INSERT INTO individu VALUES (14,'DELON','ALAIN');
INSERT INTO individu VALUES (5161,'FOSSEY','BRIGITTE');
INSERT INTO individu VALUES (6072,'DUFILHO','JACQUES');
INSERT INTO individu VALUES (7201,'DEWAERE','PATRICK');
INSERT INTO individu VALUES (5640,'BEART','EMMANUELLE');
INSERT INTO individu VALUES (6179,'ANGLADE','JEAN-HUGUES');
INSERT INTO individu VALUES (6964,'SERRAULT','MICHEL');
INSERT INTO individu VALUES (7652,'REGGIANI','SERGE');

--
-- Dumping data for table `film`
--

INSERT INTO film VALUES (4129,'DEAD MAN',9465);
INSERT INTO film VALUES (4701,'DOWN BY LAW',9465);
INSERT INTO film VALUES (6385,'GHOST DOG',9465);
INSERT INTO film VALUES (10092,'MYSTERY TRAIN',9465);
INSERT INTO film VALUES (10238,'NIGHT ON EARTH',9465);
INSERT INTO film VALUES (11094,'PERMANENT VACATION',9465);
INSERT INTO film VALUES (13715,'STRANGER THAN PARADISE',9465);
INSERT INTO film VALUES (15545,'YEAR OF THE HORSE',9465);
INSERT INTO film VALUES (1098,'ARME A GAUCHE',1548);
INSERT INTO film VALUES (2838,'CESAR ET ROSALIE',1548);
INSERT INTO film VALUES (3148,'CHOSES DE LA VIE',1548);
INSERT INTO film VALUES (3294,'CLASSE TOUT RISQUE',1548);
INSERT INTO film VALUES (3369,'COEUR EN HIVER',1548);
INSERT INTO film VALUES (7063,'HISTOIRE SIMPLE',1548);
INSERT INTO film VALUES (8916,'MADO',1548);
INSERT INTO film VALUES (9304,'MAUVAIS FILS',1548);
INSERT INTO film VALUES (9318,'MAX ET LES FERRAILLEURS',1548);
INSERT INTO film VALUES (10172,'NELLY ET MR. ARNAUD',1548);
INSERT INTO film VALUES (11959,'QUELQUES JOURS AVEC MOI',1548);
INSERT INTO film VALUES (15105,'VINCENT FRANCOIS PAUL ET LES AUTRES',1548);
INSERT INTO film VALUES (2477,'CA RESTE ENTRE NOUS',712);


--
-- Dumping data for table `acteur`
--

INSERT INTO acteur VALUES (13715,7444);
INSERT INTO acteur VALUES ( 9304,5161);
INSERT INTO acteur VALUES ( 2838,7614);
INSERT INTO acteur VALUES (10172,6179);
INSERT INTO acteur VALUES (13715, 546);
INSERT INTO acteur VALUES ( 4701, 546);
INSERT INTO acteur VALUES (11094, 546);
INSERT INTO acteur VALUES ( 4129,7499);
INSERT INTO acteur VALUES ( 2838,8063);
INSERT INTO acteur VALUES (15105,8063);
INSERT INTO acteur VALUES ( 3294,6197);
INSERT INTO acteur VALUES ( 9318, 748);
INSERT INTO acteur VALUES ( 8916, 748);
INSERT INTO acteur VALUES (15105, 748);
INSERT INTO acteur VALUES ( 3148, 748);
INSERT INTO acteur VALUES (15105,7652);
INSERT INTO acteur VALUES (10238,1090);
INSERT INTO acteur VALUES ( 2838, 922);
INSERT INTO acteur VALUES ( 3148, 922);
INSERT INTO acteur VALUES ( 8916, 922);
INSERT INTO acteur VALUES ( 9318, 922);
INSERT INTO acteur VALUES ( 7063, 922);
INSERT INTO acteur VALUES (10172,6964);
INSERT INTO acteur VALUES ( 6385,8470);
INSERT INTO acteur VALUES ( 3294,6637);
INSERT INTO acteur VALUES ( 1098,6637);
INSERT INTO acteur VALUES ( 4701,7887);
INSERT INTO acteur VALUES ( 6385, 303);
INSERT INTO acteur VALUES ( 2477, 712);
INSERT INTO acteur VALUES ( 2477,5236); 

--
-- Dumping data for table `exemplaire`
--

INSERT INTO exemplaire VALUES (21206,3148,'DVD',NULL,NULL,'Z2');
INSERT INTO exemplaire VALUES (50346,3148,'DVD',NULL,NULL,'Z2');
INSERT INTO exemplaire VALUES (3772,3148,'VHS',NULL,NULL,'SECAM');
INSERT INTO exemplaire VALUES (2398,9318,'VHS',NULL,NULL,'SECAM');
INSERT INTO exemplaire VALUES (21422,9318,'DVD',NULL,NULL,'Z2');
INSERT INTO exemplaire VALUES (50348,2838,'DVD',NULL,NULL,'Z2');
INSERT INTO exemplaire VALUES (21423,2838,'DVD',NULL,NULL,'Z2');
INSERT INTO exemplaire VALUES (20771,4701,'DVD','VO',NULL,'Z2');
INSERT INTO exemplaire VALUES (50528,4701,'DVD','VO',NULL,'Z2');
INSERT INTO exemplaire VALUES (1429,3369,'VHS',NULL,NULL,'SECAM');

--
-- Dumping data for table `genre`
--

INSERT INTO genre VALUES ('AV','AVENTURE');
INSERT INTO genre VALUES ('CD','COMEDIE DRAMATIQUE');
INSERT INTO genre VALUES ('CO','COMEDIE');
INSERT INTO genre VALUES ('DO','DOCUMENTAIRE');
INSERT INTO genre VALUES ('DR','DRAME');
INSERT INTO genre VALUES ('PO','POLICIER');

--
-- Dumping data for table `genrefilm`
--

INSERT INTO genrefilm VALUES (4129,'AV');
INSERT INTO genrefilm VALUES (2838,'CD');
INSERT INTO genrefilm VALUES (4701,'CD');
INSERT INTO genrefilm VALUES (10092,'CD');
INSERT INTO genrefilm VALUES (10238,'CD');
INSERT INTO genrefilm VALUES (11959,'CD');
INSERT INTO genrefilm VALUES (13715,'CD');
INSERT INTO genrefilm VALUES (15105,'CD');
INSERT INTO genrefilm VALUES (2477,'CO');
INSERT INTO genrefilm VALUES (15545,'DO');
INSERT INTO genrefilm VALUES (3148,'DR');
INSERT INTO genrefilm VALUES (3369,'DR');
INSERT INTO genrefilm VALUES (4129,'DR');
INSERT INTO genrefilm VALUES (6385,'DR');
INSERT INTO genrefilm VALUES (7063,'DR');
INSERT INTO genrefilm VALUES (8916,'DR');
INSERT INTO genrefilm VALUES (9304,'DR');
INSERT INTO genrefilm VALUES (9318,'DR');
INSERT INTO genrefilm VALUES (10172,'DR');
INSERT INTO genrefilm VALUES (11094,'DR');
INSERT INTO genrefilm VALUES (1098,'PO');
INSERT INTO genrefilm VALUES (3294,'PO');
INSERT INTO genrefilm VALUES (6385,'PO');
INSERT INTO genrefilm VALUES (9318,'PO');

--
-- Dumping data for table `client`
--

INSERT INTO client VALUES ('bakti','Bakti','Hafeda','bh','22 Rue Louis Blériot, 91070 Bondoufle') ;    
INSERT INTO client VALUES ('bekioui','Bekioui','Mehdi','mehdi','16 Rue de la Brie, 91940 Les Ulis') ;      
INSERT INTO client VALUES ('bekioui2','Bekioui','Laure','laure','3 Residence du Jardin des Lys, 91940 Les Ulis') ;
INSERT INTO client VALUES ('bekioui3','Bekioui','Simone','simone','22 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('bekioui4','Bekioui','Elsa','elsa','12 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('berry','Berry','Jean','jean','20 Rue Jean Marc Salinier, 91940 Les Ulis') ;
INSERT INTO client VALUES ('multon','Multon','Jean','jean','5 Rue de Paris, 43210 BAS en BASSET') ;
INSERT INTO client VALUES ('tseng','Tseng','Jean','jean','21 Avenue du Bois Persan, 91400 Orsay');         
INSERT INTO client VALUES ('martin','Martin','Linda','linda','19 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('bakti2','Bakti','Hafeda','bh','8 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('brousse','Brousse','Francois','francois','10 Square du Degel, 91080 Lisses');
INSERT INTO client VALUES ('brousse2','Brousse','Aude','aude','15 rue de Broglie, 91400 Orsay');
INSERT INTO client VALUES ('brousse3','Brousse','Anne','anne','25 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('brousse4','Brousse','Marc','marc','24 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('brousse5','Brousse','Samson','samson','18 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('brousse6','Brousse','Gilles','gilles','13 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('brousse7','Brousse','Elsa','elsa','11 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('balakrishnan','Balakrishnan','Sarah','sarah','14 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('cayrols','cayrols','Sebastien','sebastien','7 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('govindassamy','govindassamy','Devy','devy','20 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('maugendre','Maugendre','Henri','henri','22 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('niggel','Niggel','Jessica','jessica','12 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('papillon','Papillon','Jessica','jessica','10 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('sens','Sens','Marion','marion','9 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('perroteau','Perroteau','Sarah','sarah','13 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('roy','Roy','Elise','elise','15 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('silvera','Silvera','Alain','alain','21 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('silvera2','Silvera','Antoine','antoine','14 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('zenati','Zenati','Aube','aube','18 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('maury','Maury','Louise','loulou','23 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('novak','Novak','Guy','guy','16 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('petit','Petit','Guy','guypetit','19 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('devergne','Devergne','Jean','jean','15 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('puech','Puech','Hugues','hugues','17 Rue de la Brie, 91940 Les Ulis') ;
INSERT INTO client VALUES ('soret','Soret','Aime','aime','17 Avenue du Bois Persan, 91400 Orsay');
INSERT INTO client VALUES ('clavel','Clavel','Luc','luc','20 Rue de la Brie, 91940 Les Ulis') ;

--
-- Dumping data for table `location`
--

INSERT INTO location VALUES ('bakti',21206,'09-01-01','09-01-03','09-01-08'); 
INSERT INTO location VALUES ('bakti',21422,'09-01-01','09-01-03','09-02-16'); 
INSERT INTO location VALUES ('bakti',21206,'09-02-14','09-02-14','09-03-03'); 
INSERT INTO location VALUES ('bakti',3772,'09-02-02','09-02-03','09-03-03'); 
INSERT INTO location VALUES ('bekioui',1429,'09-09-12','09-09-15','09-09-21'); 
INSERT INTO location VALUES ('bekioui2',50346,'09-09-13',NULL,NULL);                     
INSERT INTO location VALUES ('bakti',3772,'09-09-15',NULL,NULL);                     
INSERT INTO location VALUES ('bakti2',21422,'09-08-03',NULL,NULL);                     
INSERT INTO location VALUES ('martin',50348,'09-08-03','09-08-14',NULL);           
INSERT INTO location VALUES ('brousse',20771,'09-09-16','09-09-18','09-09-25'); 
INSERT INTO location VALUES ('brousse2',20771,'09-01-01','09-01-03','09-01-05'); 
INSERT INTO location VALUES ('brousse3',20771,'09-05-06','09-05-07','09-05-20'); 
INSERT INTO location VALUES ('brousse4',20771,'09-07-07','09-07-07','09-07-27'); 
INSERT INTO location VALUES ('brousse5',20771,'09-08-07','09-08-08','09-08-27'); 
INSERT INTO location VALUES ('brousse6',20771,'09-08-27','09-08-28','09-08-30'); 
INSERT INTO location VALUES ('brousse7',20771,'09-02-02','09-02-03','09-02-14'); 
INSERT INTO location VALUES ('brousse3',2398,'08-01-02','08-03-01','08-10-07'); 


commit;