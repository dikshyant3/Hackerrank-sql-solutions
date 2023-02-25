SELECT h.hacker_id,h.name,COUNT(challenge_id) as no_of_challenges
FROM Hackers h
JOIN Challenges c ON h.Hacker_id=c.Hacker_id
GROUP BY h.hacker_id,h.name
HAVING no_of_challenges=(SELECT COUNT(challenge_id) AS max_count FROM Challenges GROUP BY hacker_id ORDER BY max_count DESC LIMIT 1)
OR no_of_challenges IN (SELECT t.cnt FROM (SELECT count(challenge_id) AS cnt FROM Challenges
GROUP BY hacker_id )t GROUP BY t.cnt HAVING COUNT(t.cnt)=1) ORDER BY no_of_challenges DESC,h.hacker_id;