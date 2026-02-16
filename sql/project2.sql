
USE sakila;

-- 1) Row counts for five tables
SELECT COUNT(*) AS actor_count FROM actor;
SELECT COUNT(*) AS film_count FROM film;
SELECT COUNT(*) AS customer_count FROM customer;
SELECT COUNT(*) AS payment_count FROM payment;
SELECT COUNT(*) AS rental_count FROM rental;

-- 2) Sample rows from five tables using LIMIT (few columns)
SELECT actor_id, first_name, last_name FROM actor LIMIT 5;
SELECT film_id, title, release_year FROM film LIMIT 5;
SELECT customer_id, first_name, last_name, email FROM customer LIMIT 5;
SELECT payment_id, customer_id, amount, payment_date FROM payment LIMIT 5;
SELECT rental_id, rental_date, inventory_id, customer_id FROM rental LIMIT 5;

-- 3) WHERE + ORDER BY query
-- List customers with active status, ordered by last name then first name.
SELECT customer_id, first_name, last_name, active
FROM customer
WHERE active = 1
ORDER BY last_name ASC, first_name ASC;

-- 4) INSERT statement
-- Insert a new actor row with explicit values.
INSERT INTO actor (first_name, last_name, last_update)
VALUES ('ELLA', 'SHERIDAN', NOW());

-- 5) UPDATE statement
-- Update the last name for the actor row just inserted.
UPDATE actor
SET last_name = 'SHERIDAN_UPDATED', last_update = NOW()
WHERE first_name = 'ELLA' AND last_name = 'SHERIDAN';

-- 6) DELETE statement
-- Delete the inserted/updated actor row so test data is cleaned up.
DELETE FROM actor
WHERE first_name = 'ELLA' AND last_name = 'SHERIDAN_UPDATED';
