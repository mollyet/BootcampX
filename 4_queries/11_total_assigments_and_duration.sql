SELECT day, count(*) as number_of_assignments, sum(duration) as total_duration
FROM assignments
GROUP BY day
ORDER BY day;
