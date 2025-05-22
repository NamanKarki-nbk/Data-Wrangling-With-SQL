CREATE VIEW customer_order_summary AS
SELECT 
  c.customerName,
  CONCAT_WS(', ',
    c.addressLine1,
    c.addressLine2,
    c.city,
    c.state,
    c.postalCode,
    c.country
  ) AS completeAddress,
  COUNT(o.orderNumber) AS totalOrders
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY c.customerNumber;

SELECT * FROM customer_order_summary;
