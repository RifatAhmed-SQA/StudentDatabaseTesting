UPDATE teacheracademic
SET Designation = CASE
   WHEN Designation = 'Lecturer' THEN 'Sr. Lecturer'
   WHEN Designation = 'Sr. Lecturer' THEN 'Associate Professor'
   ELSE Designation
END;