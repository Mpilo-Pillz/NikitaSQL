SELECT * FROM film;

SELECT first_name, last_name, email FROM customer;

-- We use Distinct for when the column has duplicate values
-- Can work with or without parenthesis eg Distinct(column) or DISTINCT column
SELECT DISTINCT(rating) FROM film;
SELECT DISTINCT rating FROM film;

-- We can count the records with COUNT
SELECT COUNT(rating) FROM film;
SELECT COUNT(amount) FROM payment;
SELECT COUNT(DISTINCT amount) FROM payment;

SELECT COUNT(title) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating='R';

-- select where 
SELECT * FROM customer
WHERE first_name='Jared';

SELECT * FROM film
WHERE rental_rate > 4;

-- AND
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;

SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating='R';

-- OR
SELECT COUNT(*) FROM film
WHERE rating='R' OR rating='PG-13';

-- NOT EQUAL
SELECT * FROM film
WHERE rating !='R';

-- order_by
SELECT * FROM customer
ORDER BY first_name DESC

SELECT * FROM customer
ORDER BY last_name ASC

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id ASC

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id, first_name DESC

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id ASC, first_name DESC

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id DESC, first_name ASC

