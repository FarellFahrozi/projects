/*
 QUERY CREATE TABLE
 */

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	pass VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP 
);


CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);



CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);





/*
 QUERY INSERT TABLE
 */

INSERT INTO account(username, pass, email, created_on)
VALUES
('Jose','password','jose@gmail.com',CURRENT_TIMESTAMP);

SELECT * FROM account;



INSERT INTO job(job_name)
VALUES
('Astronaut'),
('President');

SELECT * FROM job;



INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(1, 1, CURRENT_TIMESTAMP);

SELECT * FROM account_job;




/*
 QUERY UPDATE TABLE
 */
SELECT * FROM account;

UPDATE account 
SET last_login = CURRENT_TIMESTAMP;

UPDATE account 
SET last_login = created_on ;


SELECT * FROM account_job;

UPDATE account_job 
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;


UPDATE account 
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login;




/*
 QUERY DELETE TABLE
 */

SELECT * FROM job ;

INSERT INTO job(job_name)
VALUES
('Cowboy');


DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;





/*
 QUERY ALTER clause
 */

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(500) NOT NULL UNIQUE
);


SELECT * FROM information;


ALTER TABLE information 
RENAME TO new_info;

ALTER TABLE new_info
RENAME COLUMN person TO people;


INSERT INTO new_info(title)
VALUES
('some new title');

ALTER TABLE new_info 
ALTER COLUMN people DROP NOT NULL;

INSERT INTO new_info(title)
VALUES
('some new title');

SELECT * FROM new_info;




/*
 QUERY DROP
 */

ALTER TABLE new_info
DROP COLUMN people;

SELECT * FROM new_info;

ALTER TABLE new_info
DROP COLUMN people;

ALTER TABLE new_info
DROP COLUMN IF EXISTS people;





/*
 QUERY CHECK
 */

CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1990-01-01'),
	hire_date DATE CHECK (hire_Date > birthdate),
	salary INTEGER CHECK (salary > 0)
);

/* query erro */
--INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
--VALUES
--('Jose', 'Portilla', '1899-11-03', '2010-01-01', 100);

INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
VALUES
('Jose', 'Portilla', '1990-11-03', '2010-01-01', 100);

/* query erro */
--INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
--VALUES
--('Sammy', 'Smith', '1990-11-03', '2010-01-01', -100);

INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
VALUES
('Sammy', 'Smith', '1990-11-03', '2010-01-01', 100);


SELECT * FROM employees;
