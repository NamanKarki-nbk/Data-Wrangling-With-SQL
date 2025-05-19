-- case statements

select first_name ,
 last_name,
 age,
 case 
	when age <= 30 then  'Young' 
    when age between 21 and 50 then 'old'
    when age >=5 then "on death's door"
end as label
from employee_demographics;

-- Pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10 % bonus


select first_name, last_name, salary,
case 
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
    
end as New_Salary,
case 
	when dept_id = 6 then salary * 0.10
end
from employee_salary;

select *
from employee_salary;
select *
from parks_departments;
