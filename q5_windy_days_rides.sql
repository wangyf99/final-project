
SELECT DATE, DailyWindSpeed, count(*) as count
FROM
    (SELECT DATE, DailyWindSpeed
    FROM daily_data
    WHERE strftime("%Y", DATE) = "2014"
    ORDER BY DailyWindSpeed DESC
    LIMIT 10) as wind
JOIN (SELECT strftime("%Y-%m-%d", pickup_datetime) as DATE, distance FROM uber_data WHERE strftime("%Y", pickup_datetime) = "2014"
    UNION ALL
    SELECT strftime("%Y-%m-%d", pickup_datetime) as DATE, distance FROM taxi_data WHERE strftime("%Y", pickup_datetime) = "2014") as hired_trip
USING(DATE)
GROUP BY DATE
ORDER BY DailyWindSpeed DESC
