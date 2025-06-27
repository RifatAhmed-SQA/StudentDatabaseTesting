   sp.firstname,
   sp.lastname,
   sp.email,
   sub.subjectCode,
   sub.subjectTitle
FROM studentpersonal sp
JOIN courses c ON sp.studentId = c.studentId
JOIN subjects sub ON c.subjectCode = sub.subjectCode
WHERE sub.subjectTitle = 'Algorithms';