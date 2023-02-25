SELECT f1.X,f1.Y FROM Functions f1, Functions f2 
WHERE f1.X=f2.Y AND f1.Y=f2.X 
GROUP BY f1.X,f1.Y
HAVING f1.X < f1.Y OR COUNT(f1.X)>1
ORDER BY f1.X;