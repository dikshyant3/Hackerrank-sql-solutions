SELECT Name FROM Students S 
JOIN Friends F ON S.ID=F.ID
JOIN Packages P1 ON P1.ID=S.ID
JOIN Packages P2 ON P2.ID=F.Friend_ID
WHERE P1.Salary<P2.Salary
ORDER BY P2.Salary;