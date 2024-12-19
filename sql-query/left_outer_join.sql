SELECT *
FROM film f
;


SELECT *
FROM inventory i 
;


SELECT 
	f.film_id,
	title,
	inventory_id,
	store_id
FROM film f 
LEFT JOIN inventory i 
ON i.film_id = f.film_id 
;


SELECT 
	f.film_id,
	title,
	inventory_id,
	store_id
FROM film f 
LEFT JOIN inventory i 
ON i.film_id = f.film_id 
WHERE i.film_id IS NULL
;