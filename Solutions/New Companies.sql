SELECT 
    E.company_code,
    C.founder,
    COUNT(DISTINCT E.lead_manager_code) AS lm,
    COUNT(DISTINCT E.senior_manager_code) AS sm,
    COUNT(DISTINCT E.manager_code) AS m,
    COUNT(DISTINCT E.employee_code) AS e
FROM Employee E
JOIN Company C ON E.company_code = C.company_code
GROUP BY E.company_code, C.founder;
