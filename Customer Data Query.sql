SELECT * FROM [dbo].[CustomerData]

#Project 2

-------Retrieve the total number of customers from each region----
SELECT Region, COUNT(CustomerID) AS TotalCustomers
FROM CustomerData
GROUP By Region

-------Find the most popular subscription type by the number of customers----
SELECT SubscriptionType, COUNT(CustomerID) AS TotalCustomers
FROM CustomerData
GROUP By SubscriptionType
ORDER BY TotalCustomers DESC

-------Find customers who canceled their subscription within 6 months-----
SELECT CustomerID, CustomerName, SubscriptionStart, SubscriptionEnd
FROM CustomerData
WHERE Canceled = 'TRUE'
AND DATEDIFF(day, SubscriptionEnd, SubscriptionStart) <=180;

-----Calculate the average subscription duration for all customers-----
SELECT AVG(DATEDIFF(day, SubscriptionEnd, SubscriptionStart)) AS AvgSubscriptionDuration
From CustomerData

-----Find customers with subscriptions longer than 12 months----
SELECT CustomerID, CustomerName, SubscriptionStart, SubscriptionEnd
FROM CustomerData
WHERE DATEDIFF(day, SubscriptionEnd, SubscriptionStart) >360;

-----Calculate total revenue by subscription type-----
SELECT SubscriptionType, SUM(Revenue) AS Total_Revenue
From CustomerData
GROUP By SubscriptionType

------Find the top 3 regions by subscription cancellations----
SELECT TOP 3 Region, COUNT(CustomerID) AS CancellationCount
From CustomerData
WHERE Canceled = 'TRUE'
GROUP By Region
ORDER By CancellationCount DESC

------Find the total number of active and canceled subscriptions-----
SELECT Canceled, COUNT(CustomerID) AS TotalSubscriptions
From CustomerData
GROUP By Canceled

