SELECT 
  o.officeCode,
  o.city AS officeName,
  o.country,
  s.total_sales,
  IFNULL(p.total_payments, 0) AS total_payments,
  s.total_sales - IFNULL(p.total_payments, 0) AS total_pending
FROM offices o
JOIN (
  SELECT o.officeCode, SUM(od.quantityOrdered * od.priceEach) AS total_sales
  FROM offices o
  JOIN employees e ON o.officeCode = e.officeCode
  JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
  JOIN orders ord ON c.customerNumber = ord.customerNumber
  JOIN orderdetails od ON ord.orderNumber = od.orderNumber
  GROUP BY o.officeCode
) s ON o.officeCode = s.officeCode
LEFT JOIN (
  SELECT o.officeCode, SUM(p.amount) AS total_payments
  FROM offices o
  JOIN employees e ON o.officeCode = e.officeCode
  JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
  JOIN payments p ON c.customerNumber = p.customerNumber
  GROUP BY o.officeCode
) p ON o.officeCode = p.officeCode;
