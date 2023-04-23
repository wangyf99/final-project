
CREATE TABLE IF NOT EXISTS uber_data
(
    id INTEGER PRIMARY KEY,
    fare_amount FLOAT64,
    passenger_count INTEGER,
    pickup_datetime DATETIME,
    pickup_latitude FLOAT64,
    pickup_longitude FLOAT64,
    dropoff_latitude FLOAT64,
    dropoff_longitude FLOAT64,
    distance FLOAT64
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
    dropoff_longitude FLOAT64,
    distance FLOAT64
);

CREATE TABLE IF NOT EXISTS hourly_data
(
    id INTEGER PRIMARY KEY,
    DATE DATE,
    year INTEGER,
    month INTEGER,
    day INTEGER,
    hour INTEGER,
    HourlyWindSpeed FLOAT64,
    HourlyPrecipitation FLOAT64
);

CREATE TABLE IF NOT EXISTS daily_data
(
    id INTEGER PRIMARY KEY,
    DATE DATE,
    year INTEGER,
    month INTEGER,
    day INTEGER,
    DailyPrecipitation FLOAT64,
    DailyWindSpeed FLOAT64,
    DailySustainedWindSpeed REAL
    
);
