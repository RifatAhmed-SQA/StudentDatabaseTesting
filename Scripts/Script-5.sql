SELECT SUM(totalSemesterFees) AS total_collected_fee
FROM studentacademic
WHERE departmentCode = 'CS101';