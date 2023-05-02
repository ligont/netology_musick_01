CREATE TABLE IF NOT EXISTS Departments (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) unique NOT null,
	Department_id INTEGER references Departments(id)
);

ALTER TABLE Employees ADD Boss_id INTEGER references employees(id);
