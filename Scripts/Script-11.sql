SELECT tp.firstname, tp.lastname
FROM teacheracademic ta
JOIN teacherpersonal tp ON ta.teacherId = tp.teacherId
WHERE ta.salary = (
   SELECT DISTINCT salary
   FROM teacheracademic
   ORDER BY salary DESC
   LIMIT 1 OFFSET 1
);