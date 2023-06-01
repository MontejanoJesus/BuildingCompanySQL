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