select * 
from offices;

select * 
from employees;

SELECT 
  o.officeCode,
  o.city,
  COUNT(e.employeeNumber) AS totalEmployees
FROM offices o
JOIN employees e ON o.officeCode = e.officeCode
GROUP BY o.officeCode, o.city;

	