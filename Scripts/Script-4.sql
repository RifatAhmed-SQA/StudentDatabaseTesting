SELECT sp.firstname, sp.lastname, sub.subjectTitle
FROM studentpersonal sp
JOIN studentacademic sa ON sp.studentId = sa.studentId
JOIN courses c ON sp.studentId = c.studentId
JOIN subjects sub ON c.subjectCode = sub.subjectCode
WHERE sa.departmentCode = 'CS101';