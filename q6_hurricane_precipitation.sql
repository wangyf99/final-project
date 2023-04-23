
SELECT date || " " || hour, count(*), HourlyPrecipitation, HourlyWindSpeed
FROM hourly_data
JOIN (SELECT strftime("%Y-%m-%d", pickup_datetime) as DATE, strftime("%H", pickup_datetime) as hour, distance FROM uber_data
    UNION ALL
    SELECT strftime("%Y-%m-%d", pickup_datetime) as DATE, strftime("%H", pickup_datetime) as hour, distance FROM taxi_data) as hired_trip
    USING(date, hour)
WHERE date BETWEEN '2012-10-22' AND '2012-11-06'
GROUP BY date, hour
ORDER BY date, hour
