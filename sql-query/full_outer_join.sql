SELECT *
FROM customer c 
FULL OUTER JOIN payment p 
ON c.customer_id = p.customer_id 
WHERE c.customer_id IS NULL
OR p.payment_id  IS NULL 
;

SELECT COUNT(DISTINCT p.customer_id)
FROM payment p 
;

SELECT COUNT(DISTINCT c.customer_id)
FROM customer c 
;