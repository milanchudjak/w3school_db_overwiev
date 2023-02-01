-- Select category from Products

SELECT 
	COUNT(DISTINCT CategoryID) AS NumCategories
FROM Products
ORDER BY CategoryID