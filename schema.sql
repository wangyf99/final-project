
CREATE TABLE IF NOT EXISTS uber_data
(
    id INTEGER PRIMARY KEY,
    fare_amount FLOAT64,
    passenger_count INTEGER,
    pickup_datetime DATETIME,
    pickup_latitude FLOAT64,
    pickup_longitude FLOAT64,
    dropoff_latitude FLOAT64,
    dropoff_longitude FLOAT64
);

CREATE TABLE IF NOT EXISTS taxi_data
(
    id INTEGER PRIMARY KEY,
    fare_amount FLOAT64,
    passenger_count INTEGER,
    pickup_datetime DATETIME,
    pickup_latitude FLOAT64,
    pickup_longitude FLOAT64,
    dropoff_latitude FLOAT64,
    dropoff_longitude FLOAT64
);
