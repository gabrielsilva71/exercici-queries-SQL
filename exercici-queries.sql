SELECT COUNT(*) FROM Flights;

SELECT Origin,
AVG(ArrDelay) as 'prom_arribades', AVG(DepDelay) as 'prom_sortides'
FROM Flights
Group by Origin;

SELECT Origin, colYear, colMonth,
AVG(ArrDelay) as 'prom_arribades'
From Flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin;

SELECT USAirports.City, Flights.colYear, Flights.colMonth,
AVG(ArrDelay) as 'prom_arribades'
From Flights
INNER JOIN USAirports ON Flights.Origin=USAirports.IATA
GROUP BY City, colYear, colMonth
ORDER BY City, ColYear;

SELECT UniqueCarrier, colYear, colMonth,
AVG(ArrDelay),
SUM(Cancelled) as 'total_cancelled'
From Flights
GROUP BY UniqueCarrier, colYear, ColMonth
ORDER BY total_cancelled DESC;

SELECT TailNum,
SUM(Distance) as 'totalDistance'
From Flights
WHERE TailNum != ''
GROUP BY Distance, TailNum
ORDER BY Distance DESC
LIMIT 10;

SELECT UniqueCarrier,
AVG(ArrDelay) as 'avgDelay'
From Flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10
ORDER BY avgDelay DESC;