
SELECT strftime("%H", pickup_datetime) as hour, count(*) as count
FROM taxi_data
GROUP BY hour
ORDER BY count desc

