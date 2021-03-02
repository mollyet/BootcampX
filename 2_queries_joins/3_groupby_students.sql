SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = students_id
WHERE students.end_date is NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;