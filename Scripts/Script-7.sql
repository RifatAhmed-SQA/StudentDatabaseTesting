  sp.firstname AS student_firstname,
   sp.lastname AS student_lastname,
   tp.firstname AS teacher_firstname,
   ta.Designation AS teacher_designation
FROM studentpersonal sp
JOIN studentacademic sa ON sp.studentId = sa.studentId
JOIN teacheracademic ta ON sa.departmentCode = ta.departmentCode
JOIN teacherpersonal tp ON ta.teacherId = tp.teacherId
WHERE sa.departmentCode = 'CS101'