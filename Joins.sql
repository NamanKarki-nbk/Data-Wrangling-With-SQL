-- Joins
-- inner joins returns the rows that are the same in both coloumns ftom bothe tables
select * 
from employee_demographics;

select * 
from empoloyee_salary;

select dem.employee_id, age, occupation
from employee_demographics as dem
Inner JOIN  employee_salary	as sal
	ON dem.employee_id = sal.employee_id
;

-- outer joins

select *
from employee_demographics as dem
LEFT OUTER JOIN  employee_salary	as sal
	ON dem.employee_id = sal.employee_id
;

select *
from employee_demographics as dem
RIGHT OUTER JOIN  employee_salary	as sal
	ON dem.employee_id = sal.employee_id
;


-- self join

select emp1.employee_id as emp_santa, emp1.first_name as first_name_santa, emp1.last_name as last_name_santa,
emp2.employee_id as emp_santa, emp2.first_name as first_name_santa, emp2.last_name as last_name_santa
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id
;

-- joining multiple tables together
select *
from employee_demographics as dem
Inner JOIN  employee_salary	as sal
	ON dem.employee_id = sal.employee_id
Inner join parks_departments pd
	on sal.dept_id = pd . department_id
;

select * 
from parks_departments;


