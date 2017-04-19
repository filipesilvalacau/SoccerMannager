CREATE DATABASE soccer_manager;

USE soccer_manager;

CREATE TABLE `account` (
  `id_account` int(11) NOT NULL,
  `balance` decimal(5,2) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL
);



CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cpf` varchar(13) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
);



CREATE TABLE `court` (
  `id_court` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
);


CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
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
  `id_rental` int(11) NOT NULL,
  `rental_date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `fee` decimal(5,2) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_court` int(11) DEFAULT NULL
);


