
SELECT count(*)
FROM 
(SELECT *
FROM taxi_trips
UNION ALL
SELECT *
FROM uber_trips)
WHERE DATE(date) IN
        (SELECT DATE(date)
        FROM daily_weather
        WHERE strftime('%Y',date) = "2014"
        ORDER BY windspeed DESC
        LIMIT 10)
