SELECT COUNT(*) num_transactions
FROM payment p 
;


SELECT 
	p.customer_id, 
	SUM(p.amount) total_spent
FROM payment p 
GROUP BY p.customer_id 
;


SELECT 
	p.customer_id, 
	SUM(p.amount) total_spent
FROM payment p 
GROUP BY p.customer_id 
HAVING SUM(p.amount) > 100
;


/*
 FALSE or ERROR
 */
SELECT 
	p.customer_id, 
	SUM(p.amount) total_spent
FROM payment p 
GROUP BY p.customer_id 
HAVING total_spent > 100 
;