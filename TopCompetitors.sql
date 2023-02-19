SELECT H.hacker_id,H.name FROM Submissions S
JOIN Challenges C ON S.challenge_id=C.challenge_id
JOIN Difficulty D ON C.difficulty_level=D.difficulty_level
JOIN Hackers H ON S.hacker_id=H.hacker_id AND 
S.score=D.score GROUP BY 
H.hacker_id,H.name
HAVING COUNT(S.hacker_id) > 1
ORDER BY COUNT(S.hacker_id) DESC,S.hacker_id ASC;