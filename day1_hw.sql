--Q1
SELECT last_name, count(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;
--answer: 2

--Q2
SELECT count(amount)
FROM payment 
WHERE amount >= 3.99 AND amount <= 5.99;
--Answer: 5,607



--Q3
SELECT film_id, count(film_id)
FROM inventory
GROUP BY film_id
HAVING count(film_id) = 7
ORDER BY film_id;
--Answer: see chart



--Q4
SELECT first_name, count(first_name)
FROM customer
WHERE first_name = 'Willie'
GROUP BY first_name;
--answer: 2

select *
FROM rental;

--Q5
SELECT staff_id, count(staff_id)
FROM rental
GROUP BY staff_id;
--answer: Mike, 8,040 where jon has 8,004

--Q6
SELECT district, count(district)
FROM address
GROUP BY district;

--answer: 378 unique districts (i know i dont need count, just thought it looked bteer)

--Q7
SELECT film_id, count(actor_id)
FROM film_actor
GROUP BY film_id 
ORDER BY count(actor_id) DESC;
--Answer: film id 508 has 15 actors in it

--Q8
SELECT store_id, last_name
FROM customer
WHERE last_name like '%es' AND store_id = 1
GROUP BY last_name, store_id;
--Answer: 13 people from store 1 have last name ending with 'es'

--Q9
SELECT amount, count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(amount) > 250;
--Answer: 3 payment amounts; 2.99, 4.99, 0.99


--Q10
SELECT rating, count(rating)
FROM film
GROUP BY rating
ORDER BY count(rating) DESC;
--Answer: 5 rating categories, pg-13 has most movies