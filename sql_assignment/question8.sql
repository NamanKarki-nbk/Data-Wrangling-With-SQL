SELECT 
  CONCAT(s.firstName, ' ', s.lastName) AS supervisorName,
  s.jobTitle,
  COUNT(e.employeeNumber) AS totalSupervisees
FROM employees e
JOIN employees s
  ON e.reportsTo = s.employeeNumber
GROUP BY s.employeeNumber;