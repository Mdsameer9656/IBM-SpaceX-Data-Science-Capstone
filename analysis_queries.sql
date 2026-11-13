-- Distinct launch sites
SELECT DISTINCT LaunchSite FROM spacex ORDER BY LaunchSite;

-- Cape launch records
SELECT FlightNumber,LaunchSite,PayloadMass,Class FROM spacex WHERE LaunchSite LIKE "CC%" LIMIT 5;

-- Total payload
SELECT ROUND(SUM(PayloadMass),1) AS TotalPayloadKg FROM spacex;

-- Mean payload
SELECT ROUND(AVG(PayloadMass),1) AS AveragePayloadKg FROM spacex;

-- First positive recovery
SELECT MIN(FlightNumber) AS FirstSuccessfulFlight FROM spacex WHERE Class=1;

-- High payload successes
SELECT FlightNumber,LaunchSite,PayloadMass FROM spacex WHERE Class=1 AND PayloadMass BETWEEN 4000 AND 6000 LIMIT 8;

-- Success / failure counts
SELECT Class,COUNT(*) AS Launches FROM spacex GROUP BY Class;

-- Maximum payload
SELECT FlightNumber,PayloadMass,Orbit FROM spacex WHERE PayloadMass=(SELECT MAX(PayloadMass) FROM spacex);

-- 2015 launches
SELECT FlightNumber,Orbit,Class FROM spacex WHERE Year=2015;

-- Annual recovery ranking
SELECT Year,COUNT(*) AS Launches,SUM(Class) AS Successes,ROUND(100.0*AVG(Class),1) AS RatePct FROM spacex GROUP BY Year ORDER BY Year;