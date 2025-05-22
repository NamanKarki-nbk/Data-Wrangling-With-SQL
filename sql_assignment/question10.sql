SELECT 
  customerName, 
  creditLimit,
  RANK() OVER (ORDER BY creditLimit DESC) AS rankPosition
FROM customers;

WITH ranked_customers AS (
  SELECT 
    customerName, 
    creditLimit,
    RANK() OVER (ORDER BY creditLimit DESC) AS rankPosition
  FROM customers
)
SELECT *
FROM ranked_customers
WHERE rankPosition = 3;