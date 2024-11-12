# LITA CAPSTONE PROJECT

## Project Title: Sales and Customer Data Analysis

### Introduction
This project outlines an analysis of two datasets-Sales Data and Customer Data. The Sales Data focuses on products sold across various regions, their quantities, and prices, while Customer Data emphasizes subscription behaviour across different regions, including subscription types, cancellation rates and lifecycle (start and end dates). The analysis presented here provide insights into overall sales performance and customer engagement through subscription behaviour, helping stakeholders make informed busniess decisons.

### Sales Data: Retail Store Sales Performance Analysis
#### Objective
The objective of this project is to analyze the sales performance of a retail store, focus on uncovering key insights such as top-selling products, regional performance, and monthly sales trend. This data-driven approach will guides strategic decisions for improving sales performance across various regions and produts.

#### Tools Used:
The folloiwing tools were used in completing the project.
- Microsoft Excel: Used for initial data exploration, summary statistics and simple visualisation. [Download Here](https://1drv.ms/x/c/2bde39261423f390/EXPKsSY3b4FNn4BQSWowEYwBgUGrEvWotWw6JasaeSd0pA?e=YV7fWV)
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
  2. A regional map illustrating the sales performance across regions.
  3. A line chart to showcase montly sales trends and seasonal spikes.
  4. A pie chart showing the sales by product and product by quantity.
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
This is where basic functions in excel and DAX expressions were been used to do some calculations.
Functions like;
- Averageif
- Average
- Sum
- Sumif
- Sumproduct and
- Pivot Tables to generate the dashboard below.
  
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
- January recorded the highest sales of 1,000,000, which is a significant increase from 250,000 in the previous year (300% growth).
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

### Recommendations
1. Focus on Regional Recovery: Concentrate efforts on the East and North regions to identify issues and develop targeted recovery plans. This might include customer outreach, promotional strategies, or revisiting pricing models in these areas.

2. Address Monthly Declines: Examine the cause of sharp declines in sales from March onward, especially the absence of sales in Q4. Consider exploring whether this is due to seasonal factors, supply chain issues, or other operational challenges.

3. Customer Retention Strategy: With most top customers showing reduced spending, it may be worthwhile to initiate customer retention programs. These could involve loyalty rewards, personalized offers, or better after-sales support.

4. Monthly Performance Consistency: Analyze why January and February had strong performances and apply insights from those months across the rest of the year. Understanding what drove early success can help replicate this in other months.

This analysis suggests a need for strategic adjustments across regions, enhanced customer engagement, and operational consistency to regain the growth and mitigate the losses observed in 2024.

### Product Performance
|Product |Average Sales|
|--------|-------------|
|Shirt|326.67|
|Shoes|308.75|
|Gloves|200.00|
|Hat|158.75|
|Jacket|140.00|
|Socks|121.67|

### Key Insights
#### 1. Top Performers:
- Shirts have the highest average sales per product at 326.67, followed closely by Shoes at 308.75.
- These products likely contribute significantly to overall sales. It may be beneficial to focus on promoting these items further, as they already have strong customer interest.

#### 2. Mid-range Performers:
- Gloves come in next with an average sale of 200. This is a significant step down from Shirts and Shoes but indicates steady demand.
- Hats at 158.75 and Jackets at 140.00 are in a similar range, suggesting they have moderate but not outstanding performance.

#### 3. Lowest Performer:
- Socks have the lowest average sales at 121.67, indicating that they may not be as popular or are priced lower, impacting their average sales figure.

### Recommendations
1. Targeted Promotions for Top Sellers: Given their high average sales, consider cross-selling Shirts and Shoes with other products to maximize their profitability and encourage larger purchases.

2. Sales Strategies for Mid-Range Products: To boost average sales for Gloves, Hats, and Jackets, you could consider bundling these items with more popular products or offering limited-time discounts. Since they’re in the mid-range, small improvements in sales could significantly impact overall revenue.

3. Re-evaluate Strategy for Socks: The low average sales for Socks may indicate they are either not appealing enough or are priced in a way that limits revenue. A potential strategy could be to promote them as an add-on purchase with higher-performing products or to adjust pricing.

4. Further Analysis on Profit Margins: While average sales provide a revenue perspective, examining profit margins for each product will help determine their true value. If products like Shirts and Shoes also have high margins, they should be prioritized in marketing efforts.

3. Inventory Management: Based on demand trends suggested by average sales, adjusting inventory levels for each product can help optimize stock availability and reduce excess inventory for slower-moving items like Socks.

In summary, Shirts and Shoes are the strongest products in terms of average sales, while Socks may require a revised strategy to improve performance.

### Data Visualisation
- The visuals used to generate the data below are;
    1. Stacked column chart
    2. Pie chart
    3. Line chart
    4. Map
    5. Matrix
    6. Slicer to filter
    

![Sales Data Dashboard](https://github.com/user-attachments/assets/680c6345-998f-450d-a60d-eb86a844bc17)


#### Key Performance Indicators (KPIs)
  1. Average Sales: The average sales value is displayed as 211.75, indicating the typical sale value per transaction or unit sold.
  2. Total Sales: The total sales amount reaches 10,587,500, providing an overall measure of revenue generated.
  3. Total Quantity: The total quantity sold is 345,000, showing the number of units sold across all products.

#### Visualizations and Insights
  1. Top Selling Product:
  - The bar chart reveals that hats are the top selling item with approximately 80K units sold, followed by shoes (73K), gloves (63K), and shirts (63K). Jackets are the least selling item with only 28K units.
  - This information helps identify popular products, which can guide stock replenishment and marketing efforts.
  2. Sales by Product and Region (Map Visualization):
  - The map displays sales distribution by region for each product, color-coded by product type. This shows geographic patterns in product demand, though the specific numbers aren’t visible on the map.
  - This insight allows the business to focus on regions with higher demand for certain products.
  4. Sales by Month (Line Chart):
  - The line chart depicts monthly sales trends, with notable peaks in March and May, while sales dip in later months, particularly around October to December.
  - This seasonality insight can help in planning promotions, inventory, and marketing campaigns during high-demand months.
  5. Product by Quantity (Pie Chart):
  - This pie chart visualizes the distribution of quantities sold by product. Hats (orange) make up the largest segment, aligning with the bar chart in “Top Selling Product.”
  - It provides a quick, at-a-glance understanding of how each product contributes to total quantity sold.
  6. Sales by Region (Table):
  - The table breaks down sales revenue by region. The South region leads with 4,675,000 in sales, followed by East at 2,450,000, North at 1,950,000 and West at 1,512,500.
  - This data highlights regional performance, which could help in allocating resources or tailoring regional marketing strategies.
  7. Sales by Product (Pie Chart):
  - The pie chart represents sales distribution by product category. Shoes appear to generate the highest sales value, followed by hats and gloves.
  - This breakdown helps in understanding which products drive the most revenue, useful for prioritizing high-revenue items.

### Filters
The dashboard includes filters for Region, Product, Year, and Month at the top, allowing for flexible and detailed analysis. Users can drill down into specific regions, products, or time periods to gain more targeted insights.

### Overall Analysis
This dashboard provides a well rounded view of sales performance, covering key metrics like total sales, quantity, and average sale value. It allows the user to identify top-selling products, understand regional sales distribution, and observe monthly sales trends. This data can guide strategic decisions related to inventory management, regional targeting, and promotional planning.



### Customer Data: Subscription Service Analysis
#### Objective
This project involves analyzing customer data for a subscription service to identify customer segments, track subscription types, and highlight trends in cancellations and renewals. The goal is to provide actionable insights into customer behaviour to help improve customer retention and optimize subscription offerings.

#### Tools Used
The folloiwing tools were used in completing the project. [Download Here](https://1drv.ms/x/c/2bde39261423f390/EXPKsSY3b4FNn4BQSWowEYwBgUGrEvWotWw6JasaeSd0pA?e=YV7fWV)
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
  1. A pie chart displaying the distribution of subscription by region.
  2. A line chart showing seasonal subscription trends over time.
  3. A bar chart illustrating top subscriptions for the period.
  4. A donut showcasing subscription by their status (Active or Cancelled)
  5. A matrix showing total cancellation by customers
  6. A line displaying subscription type by the profit they've generated over time.
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
- Analysis: Grouping customers by region and analyzing subscription types, cancellation rates, and average subscription duration helps identify geographic trends. This analysis can guide regional marketing efforts and
  localized retention campaingns.

### Data Analysis

![Excel Customer Dash](https://github.com/user-attachments/assets/fdcd0e96-fa4b-4568-a700-67f09af43500)

Here's a detailed analysis of the above dashboard;

#### Key Metrics:
1. Average Subscription Days: Shows 365days, indicating that average customer remains subscribed for a year.
2. Total Revenue (in millions): The total revenue is displayed as 150million approximately.
3. Number of Customers: There are 20 customers in total.
4. Top Subscription Type: The most popular type is "Basic"

#### Detailed Metrics:
- Total Revenue Breakdown: Regional revenue is divided almost equally among East, North, South and West, with each contributing approximately 37-38 million, summing to a total revenue of 149,819,686.
- Top Customers by Revenue: Nine top customers are listed, each contributing around 7.5 million in revenue, with names like Alex, Anna, Dan, etc.
- Revenue by Subscription:
    1. Basic: Generates the highest revenue, around 74.75 million.
    2. Premium: Contributes 37.58 million.
    3. Standard: Also contributes 37.48 million, showing that Premium and Standard are almost equal in revenue but significantly lower than Basic.
- Subscription Trend: The line graph displays revenue across months with a steady trend around 14-15 million from January to August, after which there is a significant drop to approximately 7.5 million. This could indicate cancellations or changes in subscription pricing.

### Data Visualisation
- The visuals used to generate the data below are;
    1. Clustered bar chart
    2. Pie chart
    3. Line chart
    4. donut
    5. Matrix
    6. Card
    7. Slicer to filter

![Power BI Customer Dashboard](https://github.com/user-attachments/assets/01a4cdb9-4ff8-4b27-8e66-94a64f43277f)

#### Key Metrics:
1. Number of Customers: 20 customers.
2. Total Revenue: Also shows 150 million.
3. Average Subscription Duration: Shows 365 days.
4. Total Subscriptions: Highlights a new metric of 75,000 total subscriptions.
5. Cancellation Rate: Reports 1,998, which likely reflects the total number of cancellations metric.

#### Detailed Metrics:
- Top Subscriptions by Type: Displayed as a bar chart where Basic leads with 37,500 subscriptions, while Premium and Standard have 18,750 each.
- Revenue by Subscription Type: Shows a similar breakdown as the first image: Basic generates the most revenue at 75 million, followed by Premium and Standard, each contributing about 37 million.
- Subscriptions by Region: A pie chart indicates an even distribution of subscriptions across East, North, South, and West regions, each having 18,750 subscriptions.
- Total Cancellations by Customer: A table listing cancellations among customers. Each customer (e.g., Chris, Ella, Eva) has 3,750 cancellations, totaling 33,750.
- Subscriptions by Status: A pie chart shows the split between Active and Cancelled subscriptions. 45% (33,750) are active, while 55% (41,250) are cancelled.
- Subscription Trend: A line graph of revenue from January to September shows a similar trend to Image 1, with steady revenue from January to August (~15 million monthly) and a drop to around 7.5 million in September. 
  This likely indicates a loss in revenue due to cancellations.

### Comparative Summary and Insights
1. Revenue and Customer Consistency: Both dashboards show the same total revenue (150 million) and customer count (20), indicating consistent data across both images.
2. Subscription Type Popularity: Both images highlight “Basic” as the top subscription type by revenue and subscription count, while Premium and Standard follow with almost identical numbers. This suggests that the Basic plan is either more affordable or offers popular features.
3. Regional Analysis: Revenue and subscription counts are evenly distributed across East, North, South, and West, suggesting a balanced market reach across regions.
4. Subscription Trend Analysis: Both dashboards display a steady revenue trend from January to August, followed by a sharp decline from September onward. This trend might point to a seasonal drop, an increased cancellation rate, or a major event affecting subscriptions.
5. Cancellation Insights: The cancellation rate metric (1,998) and cancellation breakdown by customer show a high rate of churn, as over half of the subscriptions (55%) are cancelled.
- The cancellation table provides a detailed view of cancellations per customer, all listed at 3,750, which likely reflects individual or batch cancellation processes impacting revenue.
6. Subscription Status: The pie chart on subscription status reveals a significant number of cancellations, with 55% of subscriptions marked as cancelled. This could be a critical insight for strategizing customer retention efforts.

### Key Observations and Potential Recommendations
- Retention Strategies: The high cancellation rate and the sudden revenue drop in September indicate a need for a customer retention strategy. Offering incentives for long-term commitments or loyalty rewards could help mitigate churn.
- Analyzing Customer Preferences: The popularity of the Basic subscription suggests customers may prefer lower-cost or entry-level plans. An analysis of customer feedback on Premium and Standard plans could reveal ways to make these higher-tier plans more attractive.
- Revenue Stabilization: The sharp revenue drop might indicate a cyclical trend or a unique event (such as a mass cancellation or downgrade in subscriptions). Proactive steps, like offering flexible downgrades or temporary discounts, could help maintain revenue stability.
- Enhanced Cancellation Insights: The detailed cancellation data could be leveraged for targeted customer outreach. If specific patterns or customer groups show higher cancellations, targeted campaigns can address those groups’ needs.

### Conclusion
Both projects demonstrate a strong ability to explore, analyze, and visualize data using a combination of SQL for querying, Power BI for creating dynamic dashboards, and Excel for additional reporting and analysis. The insights gained from these analyses provide valuable recommendations for improving sales performance and optimizing subscription services.



