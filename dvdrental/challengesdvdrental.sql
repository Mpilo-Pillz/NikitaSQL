-- WHAT IS THE EMAIL FOR THE CUSTOMER WITH NANCY THOMAS
SELECT email FROM customer
WHERE first_name='Nancy' AND last_name='Thomas' 

-- A CUSTOMER WHANTS TO KNOW WHAT THE MOVIE OUTLAW HANKY IS ABOUT. 
--  GET THE DESCRIPTION FOR THE MOVIE
SELECT description FROM film
WHERE title='Outlaw Hanky'


-- A CUSTOMER IS LATE ON THEIR MOVIE RETURN. GET THE PHONE NUMBER FOR CUSTOMER LIVING IN ADDESS
SELECT phone from address
WHERE address='259 Ipoh Drive'

-- reward fiorst 10 paying customers get ids of them
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10


-- reward latest 10
SELECT customer_id FROM payment
ORDER BY payment_date DESC
LIMIT 10

-- a customer wants to rent movies to watch during lunch break. Get the 5 shortest
SELECT title from film
ORDER BY length
LIMIT 5
-- correction
SELECT title, length from film
ORDER BY length ASC
LIMIT 5

-- BONUS QUESTION
SELECT title, length from film
WHERE length <= 50
ORDER BY length

SELECT COUNT(title) from film
WHERE length <= 50
