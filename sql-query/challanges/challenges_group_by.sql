/* 
 CHALLENGES GROUP BY
 */


/*
1) How many payments did each staff member handle and
who gets the bonus?
 */

SELECT *
FROM payment p 
;


SELECT 
	p.staff_id, 
	COUNT(p.amount)
FROM payment p
GROUP BY p.staff_id 
;



/*
2) What is the average replacement cost per MPAA rating?
NOTE: You may need to expand the AVG column to view correct results
 */


SELECT 
	f.rating,
	ROUND(AVG(f.replacement_cost),2)
FROM film f 
GROUP BY f.rating
;



/*
3) What are the customer ids of the top 5 customers 
by total spend?
 */


SELECT 
	p.customer_id,
	SUM(p.amount)
FROM payment p 
GROUP BY p.customer_id 
ORDER BY SUM(p.amount) DESC 
LIMIT 5
;