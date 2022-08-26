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

-- LIMIT
SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;

-- BETWEEN
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9

SELECT * FROM payment
WHERE amount NOT BETWEEN 8 AND 9

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9

SELECT COUNT(*) FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'

-- LIMIT
SELECT * FROM payment
LIMIT 2;

-- ORDER BY
SELECT DISTINCT(amount) FROM payment
ORDER BY amount

-- IN
SELECT * FROM payment
WHERE amount IN (0.99,1.98,1.99)

SELECT * FROM customer
WHERE first_name IN ('John', 'Jake', 'Julie')


