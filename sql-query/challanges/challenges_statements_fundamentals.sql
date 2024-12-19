/*
CHALLENGES SQL STATEMENTS FUNDAMENTALS
*/



/* 
 1) How many payment transactions were greater than $5.00 ?
 */
--SELECT COUNT(p.amount)
--FROM payment p 
--WHERE p.amount > 5
--;


/* 
 2) How many actors have first name that starts with the letter P ?
 */

--SELECT COUNT(*)
--FROM actor a 
--WHERE a.first_name LIKE 'P%'
--;


/* 
 3) How many unique districts are our customers from ?
 */

--SELECT COUNT(DISTINCT(a.district))
--FROM address a 
--;


/* 
 4) Retrieve the list of names for those distinct districts from
 the previous question
 */

--SELECT DISTINCT(a.district)
--FROM address a 
--;


/* 
 5) How many films have a rating of R and a replacement
 cost between $5 and $15 ?
 */

--SELECT COUNT(*)
--FROM film f 
--WHERE f.rating='R'
--AND f.replacement_cost BETWEEN 5 AND 15
--;


/* 
 6) How many films have the word Truman somwhere in the title ?
 */

--SELECT COUNT(*)
--FROM film f
--WHERE f.title LIKE '%Truman%'
--;
