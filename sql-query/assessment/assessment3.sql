
/*
 ASSESSMENT TEST 3
 */

CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	homeroom_number INTEGER,
	department VARCHAR(45),
	email VARCHAR(20) UNIQUE,
	phone VARCHAR(20) UNIQUE
);

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	homeroom_number INTEGER,
	phone VARCHAR(20) UNIQUE  NOT NULL,
	email VARCHAR(115) UNIQUE,
	grad_year INTEGER
);


INSERT INTO students(first_name, last_name, homeroom_number, phone, grad_year)
VALUES
('Mark', 'Watney', 5, '777-555-1234', 2035);

INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone)
VALUES
('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '777-555-4321');


SELECT * FROM students;
SELECT * FROM teachers;