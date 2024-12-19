--SELECT *
--FROM payment p 
--WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'
--;

--SELECT DISTINCT(p.amount)
--FROM payment p 
--ORDER BY p.amount 
--;

--SELECT COUNT(*)
--FROM payment p 
--WHERE p.amount IN (0.99, 1.98, 1.99)
--;

--SELECT COUNT(*)
--FROM payment p 
--WHERE p.amount NOT IN (0.99, 1.98, 1.99)
--;


--SELECT *
--FROM customer c 
--WHERE c.first_name IN ('John', 'Jones', 'Julie') 
--;

--SELECT *
--FROM customer c 
--WHERE c.first_name NOT IN ('John', 'Jones', 'Julie') 
--;

--SELECT *
--FROM customer c 
--WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'S%'
--;

--SELECT *
--FROM customer c 
--WHERE c.first_name ILIKE 'j%' AND c.last_name ILIKE 's%'
--;

--SELECT *
--FROM customer c 
--WHERE c.first_name LIKE '_her%'
--;

--SELECT *
--FROM customer c 
--WHERE c.first_name NOT LIKE '_her%'
--;

--SELECT *
--FROM customer c 
--WHERE c.first_name LIKE 'A%'
--ORDER BY c.last_name 
--;

--SELECT *
--FROM customer c 
--WHERE c.first_name LIKE 'A%' AND c.last_name NOT LIKE 'B%'
--ORDER BY c.last_name 
--;