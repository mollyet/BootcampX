-- SELECT student.name as name, student.id as student_id, duration as total_duration
-- FROM students
-- JOIN assignment_submissions ON student.id
-- WHERE student.name LIKE "%Ibrabim Schimmel"
-- ORDER BY student.name;

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = students_id
WHERE students.name = 'Ibrahim Schimmel';