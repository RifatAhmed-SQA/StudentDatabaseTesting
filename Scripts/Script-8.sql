   sp.firstname AS student_firstname,
   tp.lastname AS teacher_lastname
FROM studentpersonal sp
JOIN teacherpersonal tp ON sp.city = tp.city;