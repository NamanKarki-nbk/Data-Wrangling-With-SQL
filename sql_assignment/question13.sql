select * 
from offices;

select * 
from payments;

select *
from customers;

select * 
from  employees;


select 
	o.officeCode,
    o.city as office_name,
    o.state,
    o.country,
    sum(p.amount) as total_payments
from offices o 
join employees e On o.officeCode = e.officeCode
join customers c On e.employeeNumber = c.salesRepEmployeeNumber
join payments p On c.customerNumber = p.customerNumber 
group by o.officeCode,o.state,o.country
    