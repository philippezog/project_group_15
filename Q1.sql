
SELECT strftime('%H',date),COUNT(strftime('%H',date))
FROM taxi_trips
WHERE date >= "2009-01-01" AND date <= "2015-06-01"
GROUP BY strftime('%H',date)
ORDER BY COUNT(strftime('%H',date)) DESC
