/*
 WITH payment database
 */

SELECT *
FROM payment p 
;


SELECT 
	p.customer_id, 
	SUM(p.amount)
FROM payment p 
GROUP BY p.customer_id 
;


SELECT 
	p.customer_id, 
	SUM(p.amount)
FROM payment p 
GROUP BY p.customer_id 
HAVING SUM(p.amount) > 100
;



/*
 WITH customer database
 */
SELECT *
FROM customer c 
;


SELECT 
	c.store_id, 
	COUNT(c.customer_id)
FROM customer c 
GROUP BY c.store_id
HAVING COUNT(c.customer_id) > 300
;
