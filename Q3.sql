
SELECT distance
FROM
(SELECT distance
FROM taxi_trips
UNION ALL
SELECT distance
FROM uber_trips) AS T
ORDER BY distance ASC
LIMIT 1
OFFSET (SELECT COUNT(*)
        FROM (SELECT distance
        FROM taxi_trips
        UNION ALL
        SELECT distance
        FROM uber_trips)) * 19 / 20 - 1;
