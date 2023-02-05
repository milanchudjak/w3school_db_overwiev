-- TOP 5 orders with the highest price

SELECT 
	MAX(Orders.CustomerID) AS CustomerID, 
	OrderDetails.OrderID, 
	SUM(Quantity*Price) AS PriceForOrderID
FROM  OrderDetails
INNER JOIN Orders
ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Products
ON Products.ProductID = OrderDetails.ProductID
GROUP BY OrderDetails.OrderID
ORDER BY PriceForOrderID DESC
LIMIT 5