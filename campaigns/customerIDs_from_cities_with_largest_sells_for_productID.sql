WITH CityWithOrders AS
(
	SELECT 
		Customers.City,
		SUM(Price*Quantity) AS PriceForProduct
	FROM w3school.OrderDetails
	INNER JOIN w3school.Orders
	ON OrderDetails.OrderID = Orders.OrderID
	INNER JOIN w3school.Customers
	ON Orders.CustomerID = Customers.CustomerID
	INNER JOIN w3school.Products
	ON OrderDetails.ProductID = Products.ProductID
	WHERE  Products.ProductID = 65 AND OrderDate BETWEEN '1996-07-01' AND '1996-12-01'
	GROUP BY City
	ORDER BY PriceForProduct DESC
    LIMIT 3
)
SELECT CustomerID FROM w3school.Customers
WHERE City IN
(
	SELECT
		City
    FROM CityWithOrders
)