-- average price of the Nth most expensive item within customers orders

WITH OrderedOrders AS (
	SELECT 
		OrderDetails.OrderID,
		OrderDetails.ProductID,
		Quantity * Products.Price AS ItemPrice,
		ROW_NUMBER() OVER (
		  PARTITION BY OrderDetails.OrderID
		  ORDER BY Quantity * Products.Price DESC
	   ) NMostExpensive
	FROM w3school.orderDetails
	INNER JOIN w3school.Products ON Products.ProductID = OrderDetails.ProductID
	) 
SELECT
	NMostExpensive, ROUND(AVG(ItemPrice), 2) AS AvgItemPrice
FROM     
	OrderedOrders
GROUP BY NMostExpensive
   