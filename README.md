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

### Data Analysis

![Excel Dashboard](https://github.com/user-attachments/assets/394987d1-ffb8-4ddc-aa90-5360def9df80)


Based on the image of the Excel dashboard provided above, here is a detailed analysis:

#### Overview of Sales Performance
- Current Year Sales: 5,012,500
- Previous Year Sales: 5,575,000
- Year-over-Year (YoY) Growth: -10%
There is a decline of 10% in sales compared to the previous year, indicating potential areas for improvement in the current strategy or external challenges impacting sales performance.

#### Sales by Region
#### 1. East
- 2024 Sales: 40,000
- 2023 Sales: 62,500
- Growth: -36%
- Analysis: The East region saw the largest decrease in sales, down by 36%. This significant decline suggests that East may be facing specific issues, such as reduced market demand, increased competition, or ineffective sales strategies.

#### 2. North
- 2024 Sales: 27,500
- 2023 Sales: 35,000
- Growth: -21%
- Analysis: North experienced a 21% decrease in sales. Although less severe than East, it still shows a notable drop, signaling a need for targeted improvements.

#### 3. South
- 2024 Sales: 50,000
- 2023 Sales: 67,500
- Growth: -19%
- Analysis: South’s decline of 19% indicates it’s underperforming relative to the previous year. Addressing the causes here could mitigate further losses.

#### 4. West
- 2024 Sales: 27,500
- 2023 Sales: 30,000
- Growth: -8%
- Analysis: West had the smallest decrease among all regions, down by only 8%. While it’s still a decrease, the relative stability may indicate stronger customer retention or market strategies in this area.

#### Sales by Month
#### - Highs and Lows:
- January recorded the highest sales of 1,000,000, which is a significant increase from $250,000 in the previous year (300% growth).
- February saw a strong performance as well with 1,250,000 in sales, up from 1,000,000 in 2023 (20% growth).
- Other months saw substantial drops, with several months (October to December) showing no sales at all, which heavily affects overall annual sales.

#### - Monthly Trends:
- There is an observable trend of sales peaking in the early months and gradually declining throughout the year, reaching zero in the last three months (October to December). This may indicate seasonality or possibly operational issues that prevented sales during the last quarter.

#### Top 10 Customers
#### - The top 10 customers show varying growth rates:
- Positive Growth: Only a few customers, such as Cus1151, Cus1375, Cus1488, and Cus1046, demonstrated positive growth, with Cus1046 showing the highest increase at 433%.
- Negative Growth: Most customers have shown a decline in their purchases, with significant drops from Cus1067 (-2%), Cus1023 (-43%), and Cus1171 (-3%).
- The high concentration of negative growth in key customers emphasizes the need for retention strategies and understanding the specific needs of these clients to regain their business.

#### Sales Trend (Graph Analysis)
- The trend graph illustrates a peak in sales during the initial months (January and February) with a steep decline thereafter, particularly visible in 2024.
- The comparison of 2024 to 2023 shows that despite the strong start in 2024, it fails to maintain momentum, while 2023 showed a more consistent sales pattern throughout the year.

#### Product Performance
|Product |Average Sales|
|--------|-------------|
|Shirt|326.67|
|Shoes|308.75|
|Gloves|200.00|
|Hat|158.75|
|Jacket|140.00|
|Socks|121.67|

### Key Insights
#### 1. Top Performaers:
- Shirts have the highest average sales per product at 326.67, followed closely by Shoes at 308.75.
- These products likely contribute significantly to overall sales. It may be beneficial to focus on promoting these items further, as they already have strong customer interest.

#### 2. Mid-range Performers:
- Gloves come in next with an average sale of 200. This is a significant step down from Shirts and Shoes but indicates steady demand.
- Hats at 158.75 and Jackets at $140.00 are in a similar range, suggesting they have moderate but not outstanding performance.

#### 3. Lowest Performer:
- Socks have the lowest average sales at 121.67, indicating that they may not be as popular or are priced lower, impacting their average sales figure.

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



