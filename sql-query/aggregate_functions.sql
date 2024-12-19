SELECT 
	MIN(replacement_cost)
FROM film
;


SELECT 
	MAX(replacement_cost)
FROM film
;


SELECT 
	MIN(replacement_cost), 
	MAX(replacement_cost)
FROM film
;


SELECT 
	COUNT(f.film_id)
FROM film f
;


SELECT 
	ROUND(AVG(f.replacement_cost),2) avg
FROM film f 
;

SELECT 
	SUM(f.replacement_cost)	
FROM film f 
;

