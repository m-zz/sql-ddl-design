CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    months_worked INT NOT NULL,
    department TEXT NOT NULL,
    status TEXT NOT NULL
)

CREATE TABLE manager (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    employee_id REFERENCES employees
)

SELECT employees.name, employees.id, manager.name
FROM employees
LEFT JOIN manager ON employees.id = employee_id

SELECT DISTINCT manager.name 
FROM manager