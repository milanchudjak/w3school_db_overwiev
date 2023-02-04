-- Num of employees who procesed at least one order (for whole history)

SELECT 
	COUNT(DISTINCT EmployeeID) AS ActiveEmployee
FROM Orders