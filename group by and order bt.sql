-- Group By

select *
from employee_demographics;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
Group By gender
;

select occupation, salary
from employee_salary
Group By  occupation, salary
;

-- order by 
select *
from employee_demographics
order by gender, age desc;