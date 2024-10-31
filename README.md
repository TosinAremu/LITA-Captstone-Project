# LITA CAPSTONE PROJECT

## Project Title: Sales and Customer Data Analysis

### Introduction
This project outlines an analysis of two datasets-Sales Data and Customer Data. The Sales Data focuses on products sold across various regions, their quantities, and prices, while Customer Data emphasizes subscription behaviour across different regions, including subscription types, cancellation rates and lifecycle (start and end dates). The analysis presented here provide insights into overall sales performance and customer engagement through subscription behaviour, helping stakeholders make informed busniess decisons.

### Sales Data: Retail Store Sales Performance Analysis
#### Objective
The objective of this project is to analyze the sales performance of a retail store, focus on uncovering key insights such as top-selling products, regional performance, and monthly sales trend. This data-driven approach will guides strategic decisions for improving sales performance across various regions and produts.

#### Tools Used:
The folloiwing tools were used in completing the project.
- Microsoft Excel: Used for initial dat exploration, summary statistics and simple visualisation.
- SQL: Querying the database to extract sales data and aggregate results by product, region and time.
- Power BI: Interactive visualisations and dashboards to track sales trends, product performance and regional sales patterns.

#### Sales Data Overview
The sales data consists of the following fields;
- Products: Gloves, Hat, Jacket, Shirt, Shoes, Socks.
- Region: East, North, South, and West.
- Quantity: The number of units sold for each products are:
  1. Gloves - 62500 units
  2. Hat - 80000 units
  3. Jacket - 27500 units
  4. Shirt - 62500 units
  5. Shoes - 72500 units
  6. Socks - 40000 units
- Price: The prices of each products varies according to the region they were sold.

#### Key Metrics for Sales Data:
- Total Sales: Aggregate revenue from all products across all regions. It is calculated by multiplying the quantity of products sold by their unit price.
- Average Sales Per Product: Shows the average revenue for each product type, providing insights into the best-selling products.
- Sales by Region: A regional breakdown of sales figure, useful for identifying high-performance regions and underperforming ones.
- Sales by Month: This metrics tracks the number of products sold in each months, highlighting the demand for specific products in each months.
- Revenue by Region: This is the revenue generated, showing the profitability of by each region.

#### Project Workflow:
#### 1. Data Import and Cleaning (Excel)
- Imported the sales database from Learning Management System (LMS)
- Cleaned and prepared the data by removing duplicates, handling missing values, and ensuring consistent formatting.
- Created additional columns where necessary, such as total sales by multiplying price and quantity.
- Created basic pivot tables and charts to identify initials trends.

#### 2. Data Querying (SQL)
- Imported sales data into SQL database by converting into CSV files.
- Wrote SQL queries to retrieve the relevant sales data.
- Aggregated sales data by product, region and time (monthly).
- Example SQL query for monthly sales totals for the current year:
```SQL
SELECT OrderDate As Monthly_Sales, Sum(Quantity * UnitPrice) AS Monthly_Sales_Total
FROM SalesData
WHERE OrderDate LIKE '2024%'
GROUP By OrderDate
```
- Exported the query result to Power BI for further analysis.

#### 3. Power BI Dashboard
- Imported the cleaned data and SQL query results into Power BI.
- Designed interactive visualisations.
  1. A chart showing the top-selling products.
  2. A regional heatmap illustrating the sales performance across regions.
  3. A line grapgh to showcase montly sales trends and seasonal spikes.
- Set up slicers for products categories and regions to filter data dynamically.

#### Sales Analysis Approaches

#### 1. Product Performance Analysis:
- Objective: Determine which products contribute the most total sales.
- Analysis: This analysis evaluates each product's total sales, average selling price and sales volume. It will identify high-revenue products and those with high sales volume but lower revenue due to lower prices.

#### 2. Regional Sales Breakdown:
- Objectice: Understand how sales performance varies across different regions.
- Analysis: Grouping the sales data by region. we can calculate total sales, average quantity sold, and the average price in each region. This helps identify regions that needs attention or marketing focus and those where performance is already strong.

#### 3. Price vs Quantity Analysis:
- Objective: Assess the impact of pricing on sales volume.
- Analysis: By comparing the price per unit to the number of units sold, this analysis examines price elasticity and its influence on customer purchasing decisions. Products with high demand but low unit prices can indicate potential for price adjustments.

### Key Insights:

### Customer Data: Subscription Service Analysis
#### Objective
This project involves analyzing customer data for a subscription service to identify customer segments, track subscription types, and highlight trends in cancellations and renewals. The goal is to provide actionable insights into customer behaviour to help improve customer retention and optimize subscription offerings.

#### Tools Used
The folloiwing tools were used in completing the project.
- Microsoft Excel: Used for initial dat exploration, summary statistics and simple visualisation.
- SQL: Querying the customer database to extract information on subscriptions and cancellations.
- Power BI: Create interactive dashboards to visualize customer behaviour, segments subscriptions and track trends in renewals and cancellation.

#### Customer Data Overview
The customer data includes fields related to customer subscription behavior;
- Region: Geographic areas where the customer resides (North, East, West and South)
- Subscription Type: categories of subscriptions (Basic, Premium and Standard)
- Subscription Start: This is the date the customer began their subscription which was 31st January 2022.
- Subscription End: The is date the subscription ended which was 31st August 2024.
- Cancellation Status: The table below shows the the number of active and cancellation status using the count formula.
  
|Table |True|False|
|-------|-------|-------|
|Cancellation|33751|NIL|
|Active|NIL|41251|

#### Key Metrics for Customer Data
- Active Subscription: The number of currently active subscriptions which is 41251.
- Churn Rate: The percentage of customers who canceled their subscriptions which is ascertain to be 337.51%
- Average Subscription Duration: The average time customers remain subscribed before cancellation, this is also calculated to be 365.

#### Project Workflow:
#### 1. Data Import and Cleaning (Excel)
- Imported the sales database from Learning Management System (LMS)
- Cleaned and transformed the data to ensure correct date formats and remove inconsistencies.
- Created additional columns where necessary, such as duration.
- Created pivot tables to calculate cancellation rates, subscription duration and customer retention metrics.

#### 2. Data Querying (SQL)
- Imported sales data into SQL database by converting into CSV files.
- Developed SQL queries to extract relevant customer data, focusing on subscription start and end dates, cancellation statues, and regional data.
- Example SQL query for identtifying active subscriptions and cancellations:
```SQL
SELECT Canceled, COUNT(CustomerID) AS TotalSubscriptions
From CustomerData
GROUP By Canceled
```
- Exported the query result to Power BI for further analysis.

#### 3. Power BI Dashboard
- Imported the cleaned data and SQL query results into Power BI.
- Designed an interactive  dashboard with the follwing visualisations.
  1. A pie chart displaying the distribution of subscription types.
  2. A line chart showing trends in cancellation over time.
  3. A heatmap comparing regional subscription trends.
  4. A bar chart illustrating customer retention rates segmented by subscription type.
- Set up slicers for products categories and regions to filter data dynamically.

#### Customer Data Analysis Approaches

#### Churn Analysis
- Objective: Identify trends in customer cancellation to help improve retention strategies.
- Analysis: The churn rate is calculated by dividing the number of cancellations by the total number of subscriptions over a period. Additionally, analyzing the subscription type and customer region in relation to churn provides insights into specific segments with high cancellation rates.

#### Subscription Duration Analysis:
- Objective: Understand how long customers stay subscribed on average.
- Analysis: By calculating the time between subscription start and end dates, we can identify the average subscription lifecycle. This analysis can reveal whether certain subscription types or regions have longer or shorter subscription durations.

#### Regional Subscription Behaviour:
- Objective: Compare subscription behaviour across region.
- Analysis: Grouping customers by region and analyzing subscription types, cancellation rates, and average subscription duration helps identify geographic trends. This analysis can guide regional marketing efforts and localized retention campaingns.

### Key Insights:



