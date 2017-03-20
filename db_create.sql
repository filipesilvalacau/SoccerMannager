CREATE DATABASE soccer_manager;

USE soccer_manager;

CREATE TABLE account (
	id_account INTEGER PRIMARY KEY AUTO_INCREMENT,
	balance	   DECIMAL(5,2)
);

CREATE TABLE client (
	id_client 	INTEGER PRIMARY KEY AUTO_INCREMENT,
	name		VARCHAR(150),
	address		VARCHAR(255),
	cpf			VARCHAR(13),
	login		VARCHAR(45),
	password	VARCHAR(10),
	privilage	CHAR(1),
	id_account  INTEGER,
	FOREIGN KEY (id_account) REFERENCES account(id_account)
);

CREATE TABLE phone (
	id_client INTEGER,
	number	NUMERIC,
	FOREIGN KEY (id_client) REFERENCES client(id_client)
);

CREATE TABLE court (
	id_court	INTEGER PRIMARY KEY AUTO_INCREMENT,
	type		VARCHAR(45),
	price		DECIMAL(5,2),
	name		VARCHAR(45)
);

CREATE TABLE rental (
	id_rental	INTEGER PRIMARY KEY AUTO_INCREMENT,
	rental_date DATE,
	hour	TIME,
	fee		DECIMAL(5,2),
	id_client	INTEGER,
	id_court	INTEGER,
	FOREIGN KEY (id_client) REFERENCES client(id_client),
	FOREIGN KEY (id_court) REFERENCES court(id_court)
);