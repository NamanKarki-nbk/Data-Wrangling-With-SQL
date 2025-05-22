INSERT INTO payments (customerNumber, checkNumber, paymentDate, amount)
VALUES (103, 'CHK6969', '2025-05-23', 696969.00);

SELECT * FROM payments
WHERE customerNumber = 103
ORDER BY paymentDate DESC;
