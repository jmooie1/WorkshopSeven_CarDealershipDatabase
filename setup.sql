DROP DATABASE IF EXISTS dealership_db;

CREATE DATABASE IF NOT EXISTS dealership_db;

USE dealership_db;

CREATE TABLE dealerships (
    dealership_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(12),
     PRIMARY KEY (`dealership_id`)
);

