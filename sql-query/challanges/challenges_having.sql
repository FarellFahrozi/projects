/*
 CHALLENGES HAVING 
 */



/*
We are launching a platinum service for our most loyal customers.
We will assign platinum status to customers that have had 40 or more
transaction payments.

1) What customer_ids are eligible for platinum status?
 */

SELECT 
	p.customer_id,
	COUNT(p.amount)
FROM payment p 
GROUP BY p.customer_id
HAVING COUNT(p.amount) >= 40
;



/*
2) What are the customer ids of customers who have spent more than $100
in payment transactions with our staff_id member 2?
 */

SELECT 
	p.customer_id, 
	SUM(p.amount)
FROM payment p
WHERE p.staff_id != 1 --WHERE p.staff_id = 2
GROUP BY p.customer_id
HAVING SUM(p.amount) > 100
;
