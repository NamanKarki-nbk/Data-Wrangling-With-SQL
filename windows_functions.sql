-- window functions

select dem.first_name, dem.last_name, gender,gender, avg(salary) as avg_salary
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by dem.first_name, dem.last_name,gender;


select dem.first_name, dem.last_name, gender, salary, avg(salary) over(PARTITION BY gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;


select dem.first_name, dem.last_name, gender, salary,sum(salary) over(PARTITION BY gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.employee_id,dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by  gender order by salary desc) as row_num,
rank() over(partition by  gender order by salary desc) rank_num,
dense_rank() over(partition by  gender order by salary desc) dense_rank_num
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;