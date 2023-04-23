
SELECT strftime("%Y-%m-%d", pickup_datetime), count(*) as count, AVG(distance)
FROM 
    (SELECT pickup_datetime, distance FROM uber_data WHERE strftime("%Y", pickup_datetime) = "2009"
    UNION ALL
    SELECT pickup_datetime, distance FROM taxi_data WHERE strftime("%Y", pickup_datetime) = "2009")
GROUP BY strftime("%d", pickup_datetime)
ORDER BY count DESC
LIMIT 10
