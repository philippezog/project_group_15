
SELECT wind.date, wind.HR, count(*), AVG(windspeed), AVG(precipitation)
FROM
    (SELECT DATE(date) as date, strftime('%H',date) as HR, precipitation, windspeed
        FROM hourly_weather
    WHERE DATE(date) >= "2012-10-23" AND DATE(date) <= "2012-10-30") AS wind
    INNER JOIN
    (SELECT DATE(date) as date, strftime('%H',date) AS HR, distance
    FROM 
        (SELECT *
            FROM taxi_trips
        WHERE DATE(date) >= "2012-10-23" AND DATE(date) <= "2012-10-30"
        UNION ALL
        SELECT *
            FROM uber_trips
        WHERE DATE(date) >= "2012-10-23" AND DATE(date) <= "2012-10-30")) AS taxi
    ON taxi.date = wind.date AND taxi.HR = wind.HR
GROUP BY wind.date, wind.HR
