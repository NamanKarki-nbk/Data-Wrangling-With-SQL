-- Unions
select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;

select first_name, last_name, 'old man' as Label
from employee_demographics
where age > 40 and gender = "Male"
union
select first_name, last_name, 'old lady' as Label
from employee_demographics
where age > 40 and gender = "female"
union
select first_name, last_name, 'Highly Paid Employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name;
