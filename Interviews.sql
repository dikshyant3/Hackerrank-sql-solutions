SELECT C.contest_id, C.hacker_id, C.name, SUM(SS.total_submissions), SUM(SS.total_accepted_submissions), SUM(VV.total_views), SUM(VV.total_unique_views)
FROM Contests C
JOIN Colleges Cl ON C.contest_id = Cl.contest_id
JOIN Challenges Ch ON Cl.college_id = Ch.college_id 
LEFT JOIN (SELECT S.challenge_id, SUM(S.total_submissions) as total_submissions, SUM(S.total_accepted_submissions) as total_accepted_submissions FROM Submission_Stats S GROUP BY S.challenge_id) SS
ON Ch.challenge_id=SS.challenge_id
LEFT JOIN (SELECT V.challenge_id, SUM(V.total_views) as total_views, SUM(V.total_unique_views) as total_unique_views FROM View_Stats V GROUP BY V.challenge_id) VV
ON Ch.challenge_id=VV.challenge_id
GROUP BY C.contest_id, C.hacker_id, C.name
HAVING SUM(SS.total_submissions)+
SUM(SS.total_accepted_submissions)+
SUM(VV.total_views)+
SUM(VV.total_unique_views)>0
ORDER BY C.contest_id;