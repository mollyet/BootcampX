SELECT name, email, phone 
FROM students
WHERE github is NULL AND end_date is NOT NULL
ORDER BY cohort_id;