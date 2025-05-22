select country, avg(creditLimit) as Average_Credit_Limit
from customers
group by country