set autocommit = 0;

drop database if exists ClientSpectacle;
create database ClientSpectacle;
use ClientSpectacle;
#
# Scripts de création des tables
#
create table Client (id_client integer not null,
                 nom varchar(30) not null,
                       nb_places_reservees integer not null,
                       solde integer not null,
                        primary key (id_client))
                            ;

create table Spectacle (id_spectacle integer not null,
                        titre varchar(30) not null,
                          nb_places_offertes integer not null,
                          nb_places_libres integer not null,
                          tarif decimal(10,2) not null,
                         primary key (id_spectacle))
                           ;

#
# Etat initial de la base: 2 clients, un spectacle, 50 places libres
#

set autocommit = 0;
delete from Client;
delete from Spectacle;
insert intoClient values (1, 'Philippe', 0, 2000);
insert intoClient values (2, 'Julie', 0, 350);
insert intoSpectacle values (1, 'Ben hur', 250, 50, 50);
insert intoSpectacle values (2, 'Tartuffe', 120, 30, 30);