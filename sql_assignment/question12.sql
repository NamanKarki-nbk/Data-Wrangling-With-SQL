select * 
from customers;

select * 
from offices;

select * 
from employees;

SELECT 
  o.officeCode,
  o.city,
  COUNT(DISTINCT c.customerNumber) AS totalCustomers
FROM offices o
JOIN employees e ON o.officeCode = e.officeCode
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
GROUP BY o.officeCode, o.city;
