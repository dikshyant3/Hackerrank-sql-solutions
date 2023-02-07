SELECT A.company_code,A.founder,
COUNT(DISTINCT B.lead_manager_code)
,COUNT(DISTINCT C.senior_manager_code) ,
COUNT(DISTINCT D.manager_code),COUNT(DISTINCT E.employee_code) FROM Company A 
INNER JOIN Lead_Manager B ON 
A.company_code=B.company_code
INNER JOIN Senior_Manager C ON 
A.company_code=C.company_code
INNER JOIN Manager D ON 
A.company_code = D.company_code
INNER JOIN Employee E ON
A.company_code=E.company_code
GROUP BY A.company_code,A.founder
ORDER BY company_code;