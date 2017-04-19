CREATE DATABASE soccer_manager;

USE soccer_manager;

CREATE TABLE `account` (
  `id_account` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `balance` decimal(5,2) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL
);



CREATE TABLE `client` (
  `id_client` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cpf` varchar(13) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
);



CREATE TABLE `court` (
  `id_court` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
);


CREATE TABLE `employee` (
  `id_employee` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cpf` varchar(13) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
);



CREATE TABLE `phone` (
  `id_client` int(11) DEFAULT NULL,
  `number` decimal(10,0) DEFAULT NULL
);



CREATE TABLE `rental` (
  `id_rental` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `rental_date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `fee` decimal(5,2) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_court` int(11) DEFAULT NULL
);


