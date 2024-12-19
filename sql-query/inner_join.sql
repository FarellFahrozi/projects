SELECT *
FROM payment p 
INNER JOIN  customer c 
ON p.customer_id = c.customer_id 
;


SELECT 
	payment_id, 
	p.customer_id,
	first_name 
FROM payment p -- TABLE A
INNER JOIN  customer c -- TABLE B
ON p.customer_id = c.customer_id 
;