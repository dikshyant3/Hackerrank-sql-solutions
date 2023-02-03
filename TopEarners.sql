SELECT MAX(salary*months),COUNT(*) FROM EMPLOYEE
WHERE (salary*months)=(SELECT max(salary*months) FROM EMPLOYEE);