
SELECT substr('Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ', 1 + 9*strftime('%w', date), 9) as dow ,count(strftime('%w',date))
FROM uber_trips
WHERE date >= "2009-01-01" AND date <= "2015-06-01"
GROUP BY strftime('%w',date)
ORDER BY COUNT(strftime('%w',date)) DESC
