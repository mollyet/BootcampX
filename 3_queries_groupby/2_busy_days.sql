SELECT day, count(*) as total_assignments
FROM assignments
-- WHERE total_assignments > 10
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;

