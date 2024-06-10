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

CREATE TABLE vehicles (
	VIN VARCHAR(17),
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20),
    price DECIMAL(10,2),
    sold BOOLEAN, 
    PRIMARY KEY(`VIN`)
    );
    
    CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    PRIMARY KEY(dealership_id, VIN)
    );
    
    CREATE TABLE sales_contracts (
    contract_id INT auto_increment,
    VIN VARCHAR(17),
    sale_date Date,
    sale_price DECIMAL(10,2),
    customer_name VARCHAR(50),
    PRIMARY KEY (`contract_id`)
    );
    
    INSERT INTO dealerships (name, address, phone) 
    VALUES
    ('Apex Motors', '123 5th Ave, New York, NY 10010', '555-0101'),
    ('Quantum Drive', '1011 Park Ave, New York, NY 10028', '555-0131'),
    ('Ascend Autos', '3031 Central Park West, New York, NY 10023', '555-0202');
    
    INSERT INTO vehicles (VIN, make, model, year, color, price, sold)
    VALUES
    ('1HGCM82633A004352', 'Honda', 'Accord', 2020, 'Red', 22000.00, FALSE),
	('1FAFP404X1F123456', 'Ford', 'Mustang', 2018, 'Blue', 26000.00, FALSE),
	('1G1JC1244T7254930', 'Chevrolet', 'Cavalier', 2019, 'Black', 18000.00, TRUE),
	('3HGCM56497G123456', 'Honda', 'Civic', 2021, 'White', 25000.00, FALSE),
	('1HGCM82633A004353', 'Honda', 'Accord', 2020, 'Red', 22000.00, TRUE);
    
    INSERT INTO inventory (dealership_id, VIN) 
    VALUES
	(1, '1HGCM82633A004352'),
	(1, '1FAFP404X1F123456'),
	(2, '1G1JC1244T7254930'),
	(2, '3HGCM56497G123456'),
	(3, '1HGCM82633A004353');
    
    INSERT INTO sales_contracts (VIN, sale_date, sale_price, customer_name) VALUES
	('1HGCM82633A004353', '2024-06-05', 22000.00, 'Jason M.');
    
    