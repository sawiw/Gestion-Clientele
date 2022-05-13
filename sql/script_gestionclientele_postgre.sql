Client (NumClient, NomClient, PrenomClient, TelClient)
Commande (#NumClient, #RefProd, DateCommande, Qtite)
Produit (RefProd, Désignation, QtiteDispo, #NumFour)
Fournisseur (NumFour, NomFour)

CREATE TABLE Client (
    NumClient int PRIMARY KEY NOT NULL,
    NomClient text, PrenomClient text,
    TelClient varchar(10)
);

CREATE TABLE Commande(
    NumClient int NOT NULL,
    RefProd int NOT NULL ,
    DateCommande  DATE NOT NULL DEFAULT CURRENT_DATE,
    Qtite int,
    PRIMARY KEY (NumClient, RefProd, DateCommande),
    FOREIGN KEY (NumClient) REFERENCES Client(NumClient),
    FOREIGN KEY (RefProd) REFERENCES Produit(RefProd)
);

CREATE TABLE Produit (
    RefProd int PRIMARY KEY NOT NULL,
    Designation text,
    QtiteDispo int,
    NumFour int,
    FOREIGN KEY (NumFour) REFERENCES Fournisseur(NumFour)
);




CREATE TABLE Fournisseur (
    NumFour int PRIMARY KEY NOT NULL, 
    NomFour text DEFAULT 'Non renseigne'
);

ALTER TABLE Produit add NumFour int;
ALTER TABLE Commande DROP CONSTRAINT commande_ibfk_1 ADD CONSTRAINT

ALTER TABLE Commande add CONSTRAINT FOREIGN KEY (NumFour) REFERENCES Fournisseur(NumFour);

ALTER TABLE Commande DROP CONSTRAINT commande_ibfk_1;

ALTER TABLE Commande add CONSTRAINT commande_ibfk_1 FOREIGN KEY (NumClient) REFERENCES Client(NumClient) ON DELETE CASCADE ON UPDATE CASCADE;

SELECT CONSTRAINT_NAME, TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME from INFORMATION_SCHEMA.KEY_COLUMN_USAGE where TABLE_NAME=’produit’

ALTER TABLE Produit DROP Designation;

ALTER TABLE Produit add Designation text UNIQUE;


INSERT INTO Fournisseur(NumFour,NomFour) 
VALUES 
(1,'La bonne pomme'),
(2,'Bio et Cie'),
(4,'Chez Paulette');

INSERT INTO Client (NumClient,NomClient,PrenomClient,TelClient)
VALUES
(1,'Dupont','Jean','0643532312'),
(2,'Martin','Pierre','0559654321');

INSERT INTO Produit (RefProd,QtiteDispo,NumFour,Designation)
VALUES
(3254, 100, 2,'Pomme Golden'),
(172,50,2,'Mangue'),
(542,50,4,'Avocat');

INSERT INTO Commande (DateCommande,Qtite,NumClient,RefProd) 
VALUES
('2022-01-29', 3, 1, 3254),
('2022-01-30', 5, 2, 542),
('2022-01-25', 4, 3, 3254);

UPDATE produit SET numfour = 1 WHERE designation = 'Pomme Golden';

UPDATE produit SET qtitedispo = 30 WHERE designation = 'Avocat';

ALTER TABLE Fournisseur ADD COLUMN Bio boolean;

UPDATE Fournisseur SET Bio = true WHERE NomFour = 'Bio et Cie';

UPDATE Fournisseur SET Bio = false WHERE NomFour != 'Bio et Cie';

-- SCRIPT D'INSERTION DE DONNÉES DE PROF

 INSERT INTO Fournisseur (numFour, nomFour, Bio) VALUES 
	(3, 'La bonne graine', true), 
	(5, 'Aux bons légumes', false),
	(6, 'Tout est bio', true), 
	(7, 'Fruits du monde', false);

INSERT INTO Client(numClient, nomClient, prenomClient, telClient) VALUES
	(20, 'Labiche','Paul', '0653526312'),
	(36, 'Bernard', 'Samuel', '0134875436'),
	(138, 'Dubois', 'René', '0487342756'),
	(15, 'Dupont', 'Eric', '0125786543'),
	(35, 'Dubois','Charles', '0638754326');


INSERT INTO Produit(refProd, designation, qtiteDispo, numFour) VALUES
	(3253, 'Pomme Granny', 200, 6),
	(3255, 'Pomme Gala', 35, 5),
	(541, 'Avocat Hass', 20, 6),
	(725, 'Graines Salade Feuille de chene', 25, 3),
	(726, 'Graines Salade Laitue', 25, 3);

INSERT INTO Commande(dateCommande, qtite, numClient, refProd) VALUES
	('2019-01-20', 5, 36,3255),
	('2019-01-20', 2, 35,725),
	('2019-01-25', 2, 138,3255),
	('2019-01-30', 1, 138,726);
