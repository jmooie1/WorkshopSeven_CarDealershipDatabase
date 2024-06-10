SELECT * FROM dealerships; 

SELECT v.* FROM vehicles v
JOIN inventory i ON v.VIN = i.vin
WHERE i.dealership_id = 1;

SELECT * FROM vehicles WHERE VIN = '1HGCM82633A004352';

SELECT d.* FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '1HGCM82633A004352';

SELECT Distinct d.* FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.Vin = v.VIN
WHERE v.make = 'FORD' and v.model = 'Mustang' and v.color = 'REd';

SELECT s.* FROM sales_contracts s
JOIN inventory i ON s.VIN = i.VIN
WHERE i.dealership_id = 1 and s.sale_date between '2023-01-01' and '2024-12-31';