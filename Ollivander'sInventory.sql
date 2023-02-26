SELECT w.id,wp.age,w.coins_needed,w.power FROM Wands w JOIN Wands_Property wp
ON w.code=wp.code
WHERE wp.is_evil=0
AND coins_needed=(SELECT MIN(w1.coins_needed) FROM Wands w1 JOIN Wands_Property wp1 ON 
                 w1.code=wp1.code
                 WHERE wp.age=wp1.age 
                 AND w.power=w1.power) ORDER BY w.power DESC,wp.age DESC;