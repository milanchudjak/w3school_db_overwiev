-- Orders prices agragated by city, restricted to a time range

SELECT 
    Customers.City,     
    OrderDetails.ProductID,
    Products.ProductName,
    OrderDetails.Quantity,    
    Products.Price,
    SUM(Price*Quantity) AS PriceForProduct
    FROM OrderDetails
INNER JOIN Orders
ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Products
ON OrderDetails.ProductID = Products.ProductID
WHERE Products.ProductID = 65 AND OrderDate BETWEEN '1996-07-04' AND '1996-12-03'
GROUP BY City
ORDER BY PriceForProduct DESC
