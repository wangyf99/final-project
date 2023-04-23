
SELECT
  distance
FROM 
    (SELECT pickup_datetime, distance FROM uber_data WHERE strftime("%Y-%m", pickup_datetime) = "2013-07"
    UNION ALL
    SELECT pickup_datetime, distance FROM taxi_data WHERE strftime("%Y-%m", pickup_datetime) = "2013-07")
ORDER BY distance ASC
LIMIT 1
OFFSET CAST((SELECT
        COUNT(*)
        FROM (
        SELECT distance, pickup_datetime FROM uber_data WHERE strftime("%Y-%m", pickup_datetime) = "2013-07"
        UNION ALL
        SELECT distance, pickup_datetime FROM taxi_data WHERE strftime("%Y-%m", pickup_datetime) = "2013-07")
        ) * 9.5 / 10 - 1 AS INTEGER)
        ;
