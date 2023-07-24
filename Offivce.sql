CREATE DATABASE Office;

Use Office;

-- create departments

CREATE TABLE Departments (
  department_id INTEGER PRIMARY KEY,
  department_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
  employee_id INTEGER PRIMARY KEY,
  employee_name VARCHAR(100) NOT NULL,
  department_id INTEGER,
  foreign KEY (department_id) references Departments (department_id)
);

CREATE TABLE Tasks (
  task_id INTEGER,
  task_name VARCHAR(100) NOT NULL,
  employee_id INTEGER,
);

--create task pk and add FK to employee_id
alter TABLE Tasks
add PRIMARY KEY (task_id),
add foreign KEY (employee_id) references Employees (employee_id);