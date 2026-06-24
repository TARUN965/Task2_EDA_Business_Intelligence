-- Top 5 Products by Sales
SELECT Product, SUM(Total_Sales) AS TotalRevenue
FROM Sales
GROUP BY Product
ORDER BY TotalRevenue DESC
LIMIT 5;

-- Sales by Category
SELECT Category, SUM(Total_Sales) AS Sales
FROM Sales
GROUP BY Category;

-- Top City by Sales
SELECT City, SUM(Total_Sales) AS Sales
FROM Sales
GROUP BY City
ORDER BY Sales DESC;

-- Sales by Gender
SELECT Gender, SUM(Total_Sales) AS Sales
FROM Sales
GROUP BY Gender;

-- Average Sales
SELECT AVG(Total_Sales)
FROM Sales;

-- Average Unit Price by Category
SELECT Category, AVG(Unit_Price)
FROM Sales
GROUP BY Category;

-- Monthly Sales
SELECT MONTH(Order_Date) AS Month,
       SUM(Total_Sales) AS Sales
FROM Sales
GROUP BY MONTH(Order_Date);