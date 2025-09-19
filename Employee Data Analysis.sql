#(1) Write a query to create an employee table with the fields employee id, first name, last name, job id, salary, manager id, and department id. -- create database, then use it, followed by creating the table adding in the columns with int or char/vhar functions
Create database employee_data;
Use employee_data;
Create table employee(
employee_id int,
first_name char(12),
last_name char(12),
job_id varchar(10),
salary int, 
manager_id int,
department_id int
);

#(2) Write a query to insert values into the employee table ---start with insert into table name (followed by column name) values and then list them all from the spreadsheet
Insert into employee(employee_id, first_name, last_name, job_id, salary, manager_id, department_id)
values
(101, 'ankit', 'jain', 'HP124', 200000, 2, 24),
(102, 'sarvesh', 'patel', 'HP123', 150000, 2, 24),
(103, 'krishna', 'gee', 'HP125', 500000, 5, 44),
(104, 'rana', 'gee', 'HP122', 250000, 3, 54),
(105, 'soniya', 'jain', 'HP121', 400000, 1, 22),
(106, 'nithin', 'kumar', 'HP120', 300000, 4, 34),
(107, 'karan', 'patel', 'HP126', 300001, 2, 34),
(108, 'shilpa', 'jain', 'HP127', 300001, 5, 24),
(109, 'mukesh', 'singh', 'HP128', 300001, 4, 44);

Select * from employee; 

#(3) Write a query to find the first name and salary of the employee whose salary is higher than the employee with the last name Kumar from the employee table -- start with the mentioned column names, from table name then where clause limited 1 result
Select first_name, salary
From employee
Where salary > (Select salary From employee where last_name = 'kumar' Limit 1); 

#(4) Write a query to display the employee id and last name of the employee whose salary is greater than the average salary from the employee table start with the mentioned column names, from table name then where clause 
Select employee_id, last_name
from employee
where salary > ( select avg(salary) from employee);

#(5) Write a query to display the employee id, first name, and salary of the employees who earn a salary that is higher than the salary of all the shipping clerks (JOB_ID = HP122). Sort the results of the salary in ascending order. start with the mentioned column names, from table name then where clause followed by the order by asc command
select employee_id, first_name, salary
from employee
where salary > all (select salary from employee where job_id = 'JOB_ID = HP122')
Order by salary ASC;

#(6) Write a query to display the first name, employee id, and salary of the first three employees with highest salaries -- start with the mentioned column names, from table name then order by desc command limit 3 results
Select first_name, employee_id, salary
from employee
order by salary DESC 
limit 3;