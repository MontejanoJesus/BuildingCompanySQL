UPDATE address
SET city_id = 2
WHERE id = 2;

UPDATE employees
SET first_name = 'jason'
WHERE id = 1;

UPDATE clients
SET name = 'nutrishop'
WHERE id = 1;

DELETE FROM clients
WHERE id = 1;

INSERT INTO clients (name, phone_number, address_id)
VALUES ('target', '8004561379', 1);

ALTER TABLE employees
ADD title varchar(45);

ALTER TABLE employees
RENAME COLUMN title to position;

ALTER TABLE employees
DROP COLUMN position;

SELECT *
FROM employees
INNER JOIN address
WHERE employees.address_id = address.id;

SELECT *
FROM clients 
UNION
SELECT * 
FROM suppliers;

SELECT SUM(quantity), name
FROM materials
GROUP BY name
HAVING name = 'concrete';

SELECT COUNT(city_id)
FROM address;