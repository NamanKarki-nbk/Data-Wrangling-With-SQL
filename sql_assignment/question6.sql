select * 
from customers;

select * 
from orders;



SELECT o.orderDate, c.customerName, COUNT(*) AS totalOrders
FROM customers AS c
JOIN orders AS o ON c.customerNumber = o.customerNumber
GROUP BY o.orderDate, c.customerName
HAVING COUNT(*) > 10;

	