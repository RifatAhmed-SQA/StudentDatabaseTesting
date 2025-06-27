SELECT bloodgroup, COUNT(*) AS studentcount
FROM studentpersonal
GROUP BY bloodgroup
HAVING COUNT(*) >= 2;