select e.employeeNumber, e.firstName, e.lastName, e.jobTitle
from employees e
where e.reportsTo = (
	select employeeNumber
    from employees
    where jobTitle = 'VP Sales'
);

