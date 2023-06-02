INSERT INTO country(country)
VALUES ('united states');

INSERT INTO city(city, country_id)
VALUES ('los angeles', 1);

INSERT INTO city(city, country_id)
VALUES ('hollywood', 1);

INSERT INTO address(address, postal_code, city_id)
VALUES ('1111 s figueroa st', 90015, 1);

INSERT INTO address(address, postal_code, city_id)
VALUES ('1234 sepulva ave', 91608, 1);

INSERT INTO address(address, postal_code, city_id)
VALUES ('505 n figueroa st', 90012, 1);

INSERT INTO address(address, postal_code, city_id)
VALUES ('7894 hollywood blvd', 91606, 2);

INSERT INTO employees (first_name, last_name, hire_date, phone_number, address_id)
VALUES ('john', 'smith', '2023-05-31', '8189751234', 2);

INSERT INTO suppliers (name, phone_number, address_id) 
VALUES ('supreme concrete', '3108907102', 3);

INSERT INTO clients (name, phone_number, address_id) 
VALUES ('castle inc', '8084561973', 4);

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

SELECT MIN(cost) AS min_cost
FROM materials;

SELECT MAX(cost) AS max_cost_project
FROM projects;

SELECT AVG(cost), name
FROM projects
GROUP BY name;

SELECT COUNT(city_id)
FROM address;