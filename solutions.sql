-- Table - person

-- Question 1
CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INT,
  height INT,
  city VARCHAR(250),
  favorite_color VARCHAR(250) 
);

-- Question 2
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Bob', 17, 170, 'San Diego', 'Blue'),
('Heather', 40, 164, 'Detroit', 'Pink'),
('Zack', 26 , 186 , 'Nashville', 'Red'),
('Henry', 63, 190, 'Santa Barbara', 'Green'),
('Nicole', 31, 157, 'Atlanta', 'Black');

-- Question 3
SELECT * 
FROM person
ORDER BY height DESC;

-- Question 4
SELECT * 
FROM person
ORDER BY height;

-- Question 5
SELECT * 
FROM person
ORDER BY age DESC;

-- Question 6
SELECT * 
FROM person
WHERE age > 20;

-- Question 7
SELECT * 
FROM person
WHERE age = 18;

-- Question 8
SELECT * 
FROM person
WHERE age < 20 or age > 30;

-- Question 9
SELECT * 
FROM person
WHERE age != 27;

-- Question 10
SELECT * 
FROM person
WHERE favorite_color != 'Red';

-- Question 11
SELECT * 
FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- Question 12
SELECT * 
FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- Question 13
SELECT * 
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- Question 14
SELECT * 
FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

-- Table - orders

-- Question 1
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(250),
  product_price NUMERIC,
  quantity INT
);

-- Question 2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES 
(1, 'Subway Club', 7.99, 2),
(2, 'Meatball Marinara', 5.99, 1),
(2, 'Cold Cut Combo', 5.19, 3),
(2, 'Spicy Italian', 5.99, 1),
(3, 'Veggie Delite', 4.99, 4);

-- Question 3
SELECT *
FROM ORDERS;

-- Question 4
SELECT SUM(quantity)
FROM ORDERS;

-- Question 5
SELECT SUM(product_price * quantity)
FROM ORDERS;

-- Question 6
SELECT SUM(product_price * quantity)
FROM ORDERS
WHERE person_id = 2;


-- Table - artist

-- Question 1
INSERT INTO artist
(name)
VALUES
('REO Speedwagon'),
('Metallica'),
('Aerosmith');

-- Question 2
SELECT * 
FROM artist
ORDER BY name DESC
LIMIT 10;

-- Question 3
SELECT * 
FROM artist
ORDER BY name
LIMIT 5;

-- Question 4
SELECT * 
FROM artist
WHERE name LIKE 'Black%';

-- Question 5
SELECT * 
FROM artist
WHERE name LIKE '%Black%';


-- Table - employee

-- Question 1
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

-- Question 2
SELECT birth_date
FROM employee
ORDER BY birth_date DESC
LIMIT 1;

-- SELECT MAX(birth_date)
-- FROM employee;

--  This also works by similar logic. They both work since year comes first and no two people are born in the same year.

-- Question 3
SELECT MIN(birth_date)
FROM employee;

-- Question 4
SELECT *
FROM employee
WHERE reports_to = 2;

-- The employee_id of Nancy Edwards had to be found separately to know what to set reports_to equal to. 

-- Question 5
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';


-- Table - invoice

-- Question 1
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA'

-- Question 2
SELECT MAX(total)
FROM invoice;

-- Question 3
SELECT MIN(total)
FROM invoice;

-- Question 4
SELECT COUNT(*)
FROM invoice
WHERE total > 5;

-- Question 5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

-- Question 6
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Question 7
SELECT AVG(total)
FROM invoice;

-- Question 8
SELECT SUM(total)
FROM invoice;
