-- Num of customers who did at least one order (for whole history)

SELECT  
	COUNT(DISTINCT CustomerID) AS NumActiveCustomerID
FROM Orders