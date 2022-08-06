SELECT * FROM film;

SELECT first_name, last_name, email FROM customer;

-- We use Distinct for when the column has duplicate values
-- Can work with or without parenthesis eg Distinct(column) or DISTINCT column
SELECT DISTINCT(rating) FROM film;
SELECT DISTINCT rating FROM film;

-- We can count the records with COUNT
SELECT COUNT(rating) FROM film;