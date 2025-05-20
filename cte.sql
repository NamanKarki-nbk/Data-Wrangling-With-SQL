-- ctes
-- commmon table expression
with CTE_Example as  -- hamle ya cte_example ( ya Gender, Avg_Slary yeasrai dina mailcha yo default huncha tala alias use gareko vaye pani) as
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
 join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender)
select  *
from CTE_Example
;

SELECT AVG(avg_sal)
FROM (
  SELECT gender, 
         AVG(salary) AS avg_sal, 
         MAX(salary) AS max_sal, 
         MIN(salary) AS min_sal, 
         COUNT(salary) AS count_sal
  FROM employee_demographics dem
  JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
  GROUP BY gender
) example_subquery;

with cte_example as 
(
select employee_id, gender, birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
cte_example2 as 
(
select employee_id, salary
from employee_salary
where salary > 5000
)
select *
from cte_example
join cte_example2
	on cte_example.employee_id = cte_example2.employee_id;