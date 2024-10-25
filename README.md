# LITA CAPSTONE PROJECT

## Project Title: Sales and Customer Data Analysis

### Introduction
This project outlines an analysis of two datasets-Sales Data and Customer Data. The Sales Data focuses on products sold across various regions, their quantities, and prices, while Customer Data emphasizes subscription behaviour across different regions, including subscription types, cancellation rates and lifecycle (start and end dates). The analysis presented here provide insights into overall sales performance and customer engagement through subscription behaviour, helping stakeholders make informed busniess decisons.

### Sales Data: Retail Store Sales Performance Analysis
#### Objective
The objective of this project is to analyze the sales performance of a retail store, focus on uncovering key insights such as top-selling products, regional performance, and monthly sales trend. This data-driven approach will guides strategic decisions for improving sales performance across various regions and produts.

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

#### Data Collection & Preparation
1. Source of Data: CSV files, database exports, and spreadsheets containing sales data.
2. Data Preparation: Cleaning the dataset to handle missing values, outliers, and inconsistent formats.
3. Data Transformation: Creating additional columns where necessary, such as total sales by multiplying price and quantity.

#### Analysis Techniques
1. Excel: An excel formula and dash was created to provide a static and simple summary of key metrics. Pivot tables and slicers were used to visualize data such as the total sales by products, region and months figures.
2. SQL Queries: SQL was utilized to aggregate and extract meaningful insights, such as total sales for each product category, the highest-selling product by total sales value, total revenue per product etc.
3. Power BI Dashboard: A highly interactive Power BI was also developed, allowing users to filter sales data by region, product and time period. Key visuals include bar charts for top selling products and line charts for montly sales trends.

#### Key Metrics for Sales Data
- Total Sales: Aggregate revenue from all products across all regions. It is calculated by multiplying the quantity of products sold by their unit price.
- Average Sales Per Product: Shows the average revenue for each product type, providing insights into the best-selling products.
- Sales by Region: A regional breakdown of sales figure, useful for identifying high-performance regions and underperforming ones.
- Sales by Month: This metrics tracks the number of products sold in each months, highlighting the demand for specific products in each months.
- Revenue by Region: This is the revenue generated, showing the profitability of by each region.

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



```SQL
SELECT Product, SUM(Quantity * UnitPrice) AS Total_Sales
FROM SalesData
GROUP By Product
```

```SQL
SELECT Region, COUNT(*) AS Total_Sales_Value
FROM SalesData
GROUP By Region
```

```SQL
SELECT TOP 1 Product, Sum(Quantity * UnitPrice) AS Total_Sales_Value
FROM SalesData
GROUP By Product
ORDER By Total_Sales_Value DESC
```

### Customer Data: Subscription Service Analysis
#### Objective
This project involves analyzing customer data for a subscription service to identify customer segments, track subscription types, and highlight trends in cancellations and renewals. The goal is to provide actionable insights into customer behaviour to help improve customer retention and optimize subscription offerings.

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

#### Data Collection & Preparation
1. Source of Data: Spreadsheet and CSV files.
2. Data Preparation: Remove any erroneous entries, handle missing dates, and ensure that the dates are in a usable format.
3. Data Transformation: Calculate the duration of subscriptions and classify them as active or canceled based on the end date.

#### Analysis Techniques
1. Excel: An excel dash provided a more traditional view, with key metrics such as active subscriptions by region, revenue by region and subscription type by customers..
2. SQL Queries: SQL was employed to explore customer data, including identifying customers by subscription type, calculating cancellations rate within 6 months, and tracking active vs. canceled subscriptions. Queries were created to segment customers by region and average subscription duration for all customers.
3. Power BI Dashboard: An interactive Power BI was built to showcase customer behaviours patterns. Key visuals include pei charts for subscription types, bar charts showing cancellation rates per region, and line charts for monthly renewal trends.


#### Key Metrics for Customer Data
- Active Subscription: The number of currently active subscriptions which is 41251.
- Churn Rate: The percentage of customers who canceled their subscriptions which is ascertain to be 337.51%
- Average Subscription Duration: The average time customers remain subscribed before cancellation, this is also calculated to be 365.

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



