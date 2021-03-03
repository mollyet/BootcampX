-- SELECT cohorts.name as cohort, avg(completed_at - started_at) as average_total_duration
-- FROM assistance_requests
-- JOIN students on students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY average_total_duration; 
SELECT avg(total_duration) as average_total_duration
FROM (
SELECT cohorts.name as cohort, sum(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students on students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration
) as total_durations;