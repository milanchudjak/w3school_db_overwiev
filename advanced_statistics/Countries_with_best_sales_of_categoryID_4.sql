-- Countries with best sales of categoryID = 4

SELECT 
	Customers.Country, 
	SUM(Quantity*Price) AS SumPrice
FROM OrderDetails
INNER JOIN Orders
ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Products
ON OrderDetails.ProductID = Products.ProductID
INNER JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
WHERE Products.CategoryID = 4
GROUP BY Customers.Country
ORDER BY SumPrice DESC