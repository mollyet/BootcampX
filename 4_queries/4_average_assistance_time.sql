SELECT avg(completed_at -  started_at) as average_assistance_duration
FROM assistance_requests
ORDER BY average_assistance_duration;