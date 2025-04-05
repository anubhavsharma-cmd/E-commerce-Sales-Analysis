# E-commerce Sales Analysis Portfolio Project

Project Title:
Impact of Discounts on Sales, Profitability, and Customer Behavior in an E-commerce Store

Objective:
This project aims to analyze an e-commerce store's sales data to determine:
•	The most profitable product category.
•	The impact of discounts on sales and profitability.
•	Customer purchase trends and behavior.
•	The influence of social media, engagement with ads, and shipping preferences on purchasing decisions.

Tools Used:
•	SQL: For data extraction, transformation, and analysis.
•	Excel: For data cleaning and preprocessing.
•	Tableau: For data visualization and insights presentation.

Dataset Used:
•	Dataset Name: ecommerce_consumer

•	Columns: 

o	Customer_ID

o	Age

o	Gender

o	Income_Level

o	Marital_Status

o	Education_Level

o	Occupation

o	Location

o	Purchase_Category

o	Purchase_Amount

o	Discount_Used (Boolean: TRUE/FALSE)

o	Frequency_of_Purchase

o	Purchase_Channel

o	Brand_Loyalty

o	Product_Rating

o	Time_Spent_on_Product_Research(hours)

o	Social_Media_Influence

o	Discount_Sensitivity

o	Return_Rate

o	Customer_Satisfaction

o	Engagement_with_Ads

o	Device_Used_for_Shopping

o	Payment_Method

o	Date

o	Customer_Loyalty_Program_Member

o	Purchase_Intent

o	Shipping_Preference

o	Time_to_Decision


Data Cleaning (Excel or ):
1.	Remove duplicate entries.
2.	Handle missing values (e.g., replace NULLs with category-wise averages).
3.	Convert Date format to YYYY-MM-DD.
4.	Ensure all Discount_Used values are either TRUE or FALSE.
5.	Standardize categorical data.
   
SQL Queries for Analysis:
1. Finding the Most Profitable Product Category:
SELECT purchase_category,
       SUM(purchase_amount - cost_price) AS total_profit
FROM ecommerce_consumer
GROUP BY purchase_category
ORDER BY total_profit DESC
LIMIT 1;

2. Impact of Discounts on Sales:
SELECT purchase_category,
       SUM(CASE WHEN discount_used = TRUE THEN purchase_amount ELSE 0 END) AS total_sales_with_discount,
       SUM(CASE WHEN discount_used = FALSE THEN purchase_amount ELSE 0 END) AS total_sales_without_discount
FROM ecommerce_consumer
GROUP BY purchase_category
ORDER BY total_sales_without_discount DESC;

3. Comparing Average Purchase Amount With and Without Discounts:
SELECT discount_used, AVG(purchase_amount) AS avg_purchase_amount, COUNT(*) AS num_transactions
FROM ecommerce_consumer
GROUP BY discount_used;

4. Customer Segmentation Based on Purchase Behavior:
SELECT income_level, COUNT(DISTINCT customer_id) AS num_customers,
       AVG(purchase_amount) AS avg_purchase_per_customer
FROM ecommerce_consumer
GROUP BY income_level
ORDER BY avg_purchase_per_customer DESC;

5. Impact of Social Media and Ads on Customer Spending:
SELECT social_media_influence, engagement_with_ads, AVG(purchase_amount) AS avg_spend
FROM ecommerce_consumer
GROUP BY social_media_influence, engagement_with_ads
ORDER BY avg_spend DESC;

6. Effect of Shipping Preference on Time to Decision:
SELECT shipping_preference, AVG(time_to_decision) AS avg_decision_time
FROM ecommerce_consumer
GROUP BY shipping_preference
ORDER BY avg_decision_time ASC;

Data Visualization (Tableau):
1.	Sales Trend Over Time: Line chart showing total sales per month.
2.	Profitability by Category: Bar chart ranking categories by total profit.
3.	Impact of Discounts on Sales: Side-by-side bar chart comparing sales with/without discounts.
4.	Customer Segmentation: Pie chart showing customer distribution by income level.
5.	Geographical Sales Trends: Heatmap of sales volume by location.
6.	Social Media and Ad Influence: Scatter plot showing correlation between engagement and spending.

Key Insights & Conclusion:

•	Most profitable product category: Electronics was identified as the most profitable category, generating the highest total revenue and net profit.

•	Impact of discounts: While discounts increased the number of transactions, they reduced overall profit margins. Customers tend to buy more frequently when discounts are applied, but average purchase amounts are lower.

•	Customer behavior trends: High-income customers tend to spend more per purchase, whereas middle-income customers make more frequent purchases, especially when discounts are available.

•	Effect of social media and ads: Customers influenced by social media and ads have a higher engagement rate, leading to increased spending.

•	Shipping preferences and decision time: Customers who prefer faster shipping tend to make quicker purchase decisions, whereas those choosing economy shipping take more time to finalize purchases.

Next Steps:

•	Recommendation: Optimize discount strategies by targeting specific high-value categories rather than applying blanket discounts.

•	Future Work: Advanced machine learning models for predicting high-value customers.

•	Optimize marketing strategies: Focus on social media and ad campaigns that lead to higher spending.

•	Improve logistics strategy: Prioritize shipping options that reduce purchase decision time and increase customer satisfaction.

Project Summary:
This project provides data-driven insights into an e-commerce store’s sales, profit, discount strategies, and customer behavior. Using SQL for data analysis, Excel for cleaning, and Tableau for visualization, we make actionable recommendations for optimizing sales, marketing, and logistics strategies.

