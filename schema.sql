
CREATE TABLE IF NOT EXISTS hourly_weather (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   date DATETIME,
   precipitation FLOAT(2),
   windspeed FLOAT(2)
);

CREATE TABLE IF NOT EXISTS daily_weather (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   date DATETIME,
   precipitation FLOAT(2),
   windspeed FLOAT(2)
);

CREATE TABLE IF NOT EXISTS taxi_trips (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   date DATETIME,
   distance FLOAT(2)
);

CREATE TABLE IF NOT EXISTS uber_trips (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   date DATETIME,
   distance FLOAT(2)
);
