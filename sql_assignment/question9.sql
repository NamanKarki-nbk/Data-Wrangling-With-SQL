select * 
from customers;

with Credit_Limit as 
(
	select avg(creditLimit) as avgCL
    from customers
   
)
select customerName, creditLimit
from customers, Credit_Limit
where creditLimit > Credit_Limit.avgCl;