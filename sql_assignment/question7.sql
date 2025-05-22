select * 
from employees;

SELECT 
  CONCAT(firstName, ' ', lastName) AS supervisorName,
  jobTitle,
  (
    SELECT COUNT(*)
    FROM employees AS e2
    WHERE e2.reportsTo = e1.employeeNumber
  ) AS totalSupervisees
FROM employees AS e1
WHERE employeeNumber IN (
  SELECT reportsTo FROM employees WHERE reportsTo IS NOT NULL
);

