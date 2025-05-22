SELECT 
  customerName,
  c.country,
  creditLimit,
  ROUND(creditLimit / country_total.totalCreditLimit, 4) AS credit_proportion
FROM customers c
JOIN (
    SELECT country, SUM(creditLimit) AS totalCreditLimit
    FROM customers
    GROUP BY country
) AS country_total
ON c.country = country_total.country;
