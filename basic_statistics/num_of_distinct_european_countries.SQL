-- Num of distinct European countries

SELECT 
	 COUNT(DISTINCT Country) AS EuropeanCountries
FROM Customers
WHERE Country in ('Austria','Belgium','Denmark','Finland','France','Germany','Ireland','Italy','Norway', 'Poland','Portugal','Switzerland','UK')
ORDER BY Country