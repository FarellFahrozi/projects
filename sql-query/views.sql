-- Views

--SELECT first_name, last_name, address 
--FROM customer
--INNER JOIN address
--ON customer.address_id = address.address_id 

/*
 Membuat table view 
 */
--CREATE VIEW customer_info AS
--SELECT first_name, last_name, address 
--FROM customer
--INNER JOIN address
--ON customer.address_id = address.address_id 

--SELECT * FROM customer_info;

/*
 Menambahkan column district
 */
--CREATE OR REPLACE VIEW customer_info AS
--SELECT first_name, last_name, address,district
--FROM customer
--INNER JOIN address
--ON customer.address_id = address.address_id 

/* 
 Menghapus table view customer_info
 */
--DROP VIEW IF EXISTS customer_info 

/*
 Merubah nama column
 */
--ALTER TABLE customer_info
--RENAME TO c_info;

--SELECT * FROM c_info;


--DROP VIEW c_info;