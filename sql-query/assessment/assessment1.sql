/*
Assessment Test 1
*/



/* 1) Return the customer IDs of customers 
who have spent at least $110 with the staff member who has an ID of 2.
*/

SELECT 
	p.customer_id,
	SUM(p.amount)
FROM payment p 
WHERE staff_id = 2
GROUP BY p.customer_id 
HAVING SUM(p.amount) > 110
;


/* 2) How many films begin with the letter J?
*/

SELECT COUNT(*)
FROM film f 
WHERE f.title LIKE 'J%'
;


/* 3) What customer has the highest customer ID number 
 whose name starts with an 'E' and has an address ID lower than 500?
*/

SELECT 
	c.first_name, 
	c.last_name
FROM customer c 
WHERE c.first_name LIKE 'E%' 
AND c.address_id < 500
ORDER BY customer_id DESC
LIMIT 1
;