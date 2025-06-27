
SELECT d.departmentName, d.departmentCode, s.subjectTitle
FROM subjects s
JOIN departments d ON s.departmentCode = d.departmentCode
WHERE s.subjectCode = 'EE201';