/*
 CHALLENGE JOIN
 */


/*
 California sales tax laws have changed and
 we need to alert our customers to this through email.
 
1) What are the emails of the customers who live in California?
 */

SELECT *
FROM address a 
;

SELECT *
FROM customer c 
;


SELECT 
	district, 
	email
FROM address a 
INNER JOIN customer c 
ON a.address_id = c.address_id
WHERE district = 'California'
;





/*
 A customer walks in and is a huge fan of
 the actor "Nick Wahlberg" and wants to
 know which movies he is in.
 
2) Get a list of all the movies "Nick Wahlberg" 
has been in.
 */

SELECT *
FROM actor a 
;

SELECT *
FROM film f 
;


SELECT 
	title,
	first_name,
	last_name
FROM actor a 
INNER JOIN film_actor fa 
ON a.actor_id = fa.actor_id 
INNER JOIN film f 
ON fa.film_id = f.film_id 
WHERE first_name = 'Nick' 
AND last_name = 'Wahlberg'
;
