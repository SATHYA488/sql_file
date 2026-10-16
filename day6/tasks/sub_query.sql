create database sub_query;
use sub_query;


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    unique (emp_id,department_id)
);

INSERT INTO employees (emp_id, emp_name, department_id, salary) VALUES
(101, 'Alice', 1, 60000),   
(102, 'Bob', 1, 75000),     
(103, 'Charlie', 2, 50000), 
(104, 'David', 2, 55000),   
(105, 'Eva', 3, 80000),    
(106, 'Frank', 3, 90000),   
(107, 'Grace', 4, 65000),   
(108, 'Hank', 4, 70000),    
(109, 'Ivy', 1, 95000),     
(110, 'Jack', 3, 40000);    


select * from employees where salary> (select avg(salary) from employees);

select * from employees where salary >= (select max(salary) from employees);

select * from employees where salary <= (select min(salary) from employees);

select * from employees where salary>=(select avg(salary) from employees where department_id=(select department_id from departments where department_name="It"));

select * from  departments where department_name in ("it","hr");
