select * 
from offices;

select * 
from employees;

SELECT * 
from customers;

select * 
from orders;

select * 
from orderdetails;

select * 
from payments;


select 
o.officeCode,
o.country,
sum(od.quantityOrdered * od.priceEach) as total_sales
from offices o
join employees e on e.officeCode = o.officeCode
join customers c on e.employeeNumber = c.salesRepEmployeeNumber
join orders ord on c.customerNumber = ord.customerNumber
join orderdetails od on ord.orderNumber = od.orderNumber
group by o.officeCode, o.country


