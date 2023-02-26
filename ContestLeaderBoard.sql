SELECT h.hacker_id,h.name,SUM(max_score.t1) as total_score FROM 
Hackers h INNER JOIN (SELECT MAX(s.score) as t1,s.hacker_id FROM Submissions s
GROUP BY s.hacker_id,s.challenge_id HAVING t1>0) AS max_score ON
h.hacker_id=max_score.hacker_id
GROUP BY h.hacker_id,h.name
ORDER BY total_score DESC,hacker_id;