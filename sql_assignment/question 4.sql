select * 
from employees
where reportsTo In (
	select employeeNumber
    from employees
    where jobtitle like 'Sales Manager%'
)