-- Part 1
SELECT first_name, last_name FROM actor;

SELECT concat(first_name, ' ', last_name)
AS 'Actor Name' FROM actor;

-- Part 2
SELECT actor_id, first_name, last_name FROM actor
WHERE first_name LIKE 'JOE';

SELECT last_name FROM actor
WHERE last_name like '%GEN%';

SELECT first_name, last_name FROM actor
WHERE last_name like '%LI%'
ORDER BY last_name, first_name;

SELECT country_id, country FROM country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

-- Part 3


-- Part 4
SELECT last_name, COUNT(*) as count FROM actor
GROUP BY last_name;

SELECT last_name, COUNT(*) as count FROM actor
GROUP BY last_name HAVING COUNT(*) > 1;

-- Part 5
DESCRIBE sakila.address;

-- Part 6
SELECT first_name, last_name, address FROM staff 
INNER JOIN address
USING (address_id);

SELECT staff_id, SUM(amount) AS total FROM staff
INNER JOIN payment
USING (staff_id)
WHERE payment_date LIKE '2005-08%';

SELECT title, COUNT(actor_id) AS actor_count FROM film
INNER JOIN film_actor
USING (film_id) GROUP BY title;

SELECT title, COUNT(film_id) FROM inventory
INNER JOIN film
USING (film_id);

-- Part 7
SELECT * FROM film 
WHERE (title LIKE 'Q%' OR title LIKE 'K%') 
AND language_id IN (SELECT language_id FROM language WHERE name = "english");