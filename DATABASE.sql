DROP DATABASE IF EXISTS AirportSim;
CREATE DATABASE AirportSim;
USE AirportSim;

CREATE TABLE Jugador (
	ID INTEGER PRIMARY KEY NOT NULL,
	Usuario TEXT NOT NULL,
	Password TEXT NOT NULL,
	Mail TEXT NOT NULL,
	Genero TEXT NOT NULL
	 );

CREATE TABLE Logros (
	ID INTEGER PRIMARY KEY NOT NULL, 
	descripcion VARCHAR(50) NOT NULL,
	recompensa INTEGER NOT NULL
	);

CREATE TABLE Jug_Log (
	ID_Jugadores INTEGER, 
	ID_Logro INTEGER, 
	logro_obtenido VARCHAR(3), 
	recompensa_obtenida VARCHAR(3), 
	FOREIGN KEY (ID_Jugadores) REFERENCES Jugador(ID),
  	FOREIGN KEY (ID_Logro) REFERENCES Logros(ID)
 	);


INSERT INTO Logros VALUES (0, '+50k', 10000);
INSERT INTO Logros VALUES (1, '+500 aviones puntuales', 20000);
INSERT INTO Logros VALUES (2, 'Todas las terminales desbloqueadas', 10000);


INSERT INTO Jugador VALUES(0,'PauSerrano','pauserrano','pau.serrano@gmail.com','M');
INSERT INTO Jugador VALUES(1,'CarlosMunoz','carlosmunoz','carlos.munoz@gmail.com','M');
INSERT INTO Jugador VALUES(2,'JanVinas','janvinas','jan.vinas@gmail.com','M');

INSERT INTO Jug_Log VALUES (0, 0, 'yes', 'yes');
INSERT INTO Jug_Log VALUES (0, 1, 'yes', 'no');
INSERT INTO Jug_Log VALUES (0, 2, 'no', 'no');

INSERT INTO Jug_Log VALUES (1, 0, 'yes', 'no');
INSERT INTO Jug_Log VALUES (1, 1, 'yes', 'no');
INSERT INTO Jug_Log VALUES (1, 2, 'no', 'no');

INSERT INTO Jug_Log VALUES (2, 0, 'no', 'no');
INSERT INTO Jug_Log VALUES (2, 1, 'yes', 'no');
INSERT INTO Jug_Log VALUES (2, 2, 'yes', 'yes');
