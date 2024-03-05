SELECT MAX(months * salary) AS max_earnings, COUNT(*) AS employee_count FROM Employee
WHERE months * salary = (SELECT MAX(months * salary) FROM Employee);
