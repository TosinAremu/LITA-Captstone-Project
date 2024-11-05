Select * from [dbo].[SalesData]

#Project 1

1. ------Retrieve the total sales for each product category-----
SELECT Product, SUM(Quantity * UnitPrice) AS Total_Sales
FROM SalesData
GROUP By Product

2. -----Find the number of sales transactions in each region-----
SELECT Region, COUNT(*) AS Total_Sales_Value
FROM SalesData
GROUP By Region

3. ------Find the highest-selling product by total sales value----
SELECT TOP 1 Product, Sum(Quantity * UnitPrice) AS Total_Sales_Value
FROM SalesData
GROUP By Product
ORDER By Total_Sales_Value DESC

4. -------Calculate total revenue per product-----
SELECT Product, Sum(Quantity * UnitPrice) as Total_Revenue
FROM SalesData
GROUP By Product
ORDER By 2 DESC

5. ------Calculate monthly sales totals for the current year----
SELECT OrderDate As Monthly_Sales, Sum(Quantity * UnitPrice) AS Monthly_Sales_Total
FROM SalesData
WHERE OrderDate LIKE '2024%'
GROUP By OrderDate

6. -----Find the top 5 customers by total purchase amount-----
SELECT TOP 5 Customer_Id, Sum(Quantity * UnitPrice) AS Total_Purchase_Amount
FROM SalesData
GROUP By Customer_Id
ORDER By 2 DESC

7. ------Calculate the percentage of total sales contributed by each region----
SELECT Region,
	Round((Sum(Quantity * UnitPrice) / (SELECT SUM(CAST(Quantity * UnitPrice AS FLOAT)) FROM SalesData) * 100), 1) AS Percentage_Of_Total_Sales
FROM SalesData
GROUP By Region

8. ------Identify products with no sales in the last quarter------
SELECT DISTINCT Product
FROM SalesData
WHERE Product NOT IN (
	SELECT DISTINCT Product
	FROM SalesData
	WHERE OrderDate >= DATEADD(QUARTER, -1, GETDATE())
)

