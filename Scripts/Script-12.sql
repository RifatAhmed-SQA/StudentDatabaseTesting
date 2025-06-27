
SELECT
   tp.firstname AS teacher_firstname,
   tp.lastname AS teacher_lastname,
   sp.firstname AS student_firstname,
   sp.lastname AS student_lastname,
   sp.city AS student_city,
   sa.departmentCode AS student_department
FROM teacheracademic ta
JOIN teacherpersonal tp ON ta.teacherId = tp.teacherId
JOIN subjects sub ON sub.departmentCode = ta.departmentCode
JOIN courses c ON sub.subjectCode = c.subjectCode
JOIN studentpersonal sp ON c.studentId = sp.studentId
JOIN studentacademic sa ON sp.studentId = sa.studentId
WHERE ta.salary = (
   SELECT DISTINCT salary
   FROM teacheracademic
   ORDER BY salary DESC
   LIMIT 1 OFFSET 1
);