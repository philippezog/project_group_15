
SELECT DATE(date), count(strftime('%Y',date)), AVG(distance)
FROM 
(SELECT * from taxi_trips
UNION ALL
SELECT * from uber_trips)
WHERE strftime('%Y',date) = "2009"
GROUP BY DATE(date)
ORDER BY count(strftime('%Y',date)) DESC
LIMIT 10
