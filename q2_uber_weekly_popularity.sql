
SELECT strftime("%w", pickup_datetime) as week, count(*) as count
FROM uber_data
GROUP BY week
ORDER BY count desc
