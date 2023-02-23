-- Order counts by size

SELECT 
	OrderSizes.OrderSizeLabel,
	COUNT(*) AS OrderCounts
FROM
	(SELECT 
	OrderDetails.OrderID, 
	SUM(Quantity*Price) AS OrderSizeAmount,
	CASE WHEN SUM(Quantity*Price) < 500 THEN 'Small'
		WHEN SUM(Quantity*Price) BETWEEN 500 AND 5000 THEN 'Medium'
		WHEN SUM(Quantity*Price) >= 5000 THEN 'Larger'
		ELSE 'unknown order'
		END As OrderSizeLabel
	FROM OrderDetails
	INNER JOIN Products
	ON OrderDetails.ProductID = Products.ProductID
	GROUP BY OrderDetails.OrderID
	ORDER BY OrderSizeAmount) AS OrderSizes 
GROUP BY OrderSizeLabel