-- E-commerce Consumer Behavior SQL Report
-- =======================================
-- This SQL report analyzes customer behavior, product performance, discount effects, and marketing impact.
-- Steps include creating a temporary table, analyzing key metrics, and exporting results for business use.

-- STEP 1: Create a temporary table (if needed, based on cleaned CSV data)
CREATE TEMP TABLE ecommerce_consumer AS
SELECT 
    Customer_ID,
    Age,
    Gender,
    Income_Level,
    Marital_Status,
    Education_Level,
    Occupation,
    Location,
    Purchase_Category,
    CAST(REPLACE(Purchase_Amount, '$', '') AS FLOAT) AS purchase_amount,
    Frequency_of_Purchase,
    Purchase_Channel,
    Brand_Loyalty,
    Product_Rating,
    Time_Spent_on_Research,
    Social_Media_Influence,
    Discount_Sensitivity,
    Return_Rate,
    Customer_Satisfaction,
    Engagement_with_Ads,
    Device_Used,
    Payment_Method,
    Time_of_Purchase,
    CAST(Discount_Used AS BOOLEAN) AS discount_used,
    Loyalty_Program_Member,
    Purchase_Intent,
    Shipping_Preference,
    Time_to_Decision,
    -- Assuming a fixed cost for demonstration purpose (e.g., 70% of price)
    CAST(REPLACE(Purchase_Amount, '$', '') AS FLOAT) * 0.7 AS cost_price
FROM Ecommerce_Consumer_Behavior;

-- STEP 2: Finding the Most Profitable Product Category
SELECT purchase_category,
       SUM(purchase_amount - cost_price) AS total_profit
FROM ecommerce_consumer
GROUP BY purchase_category
ORDER BY total_profit DESC
LIMIT 1;
-- Result: Jewelry & Accessories generated the highest profit: ₹4,541.81

-- STEP 3: Impact of Discounts on Sales
SELECT purchase_category,
       SUM(CASE WHEN discount_used = TRUE THEN purchase_amount ELSE 0 END) AS total_sales_with_discount,
       SUM(CASE WHEN discount_used = FALSE THEN purchase_amount ELSE 0 END) AS total_sales_without_discount
FROM ecommerce_consumer
GROUP BY purchase_category
ORDER BY total_sales_without_discount DESC;
-- Result: Software & Apps, Electronics, and Packages had high sales without discounts. Jewelry & Accessories performed well with discounts.

-- STEP 4: Comparing Average Purchase Amount With and Without Discounts
SELECT discount_used, 
       AVG(purchase_amount) AS avg_purchase_amount,
       COUNT(*) AS num_transactions
FROM ecommerce_consumer
GROUP BY discount_used;
-- Result:
-- Discount Used = False → ₹276.23 (479 transactions)
-- Discount Used = True → ₹273.99 (521 transactions)
-- Insight: Discounts slightly reduce average purchase value but increase transaction volume.

-- STEP 5: Customer Segmentation Based on Purchase Behavior
SELECT income_level, 
       COUNT(DISTINCT customer_id) AS num_customers,
       AVG(purchase_amount) AS avg_purchase_per_customer
FROM ecommerce_consumer
GROUP BY income_level
ORDER BY avg_purchase_per_customer DESC;
-- Result:
-- High Income: ₹275.51 (515 customers)
-- Middle Income: ₹274.59 (485 customers)
-- Insight: High-income customers spend marginally more per transaction.

-- STEP 6: Impact of Social Media and Ads on Customer Spending
SELECT social_media_influence, 
       engagement_with_ads, 
       AVG(purchase_amount) AS avg_spend
FROM ecommerce_consumer
GROUP BY social_media_influence, engagement_with_ads
ORDER BY avg_spend DESC;
-- Top 3 Avg Spenders:
-- High SM Influence, Medium Ad Engagement → ₹290.98
-- No SM Influence, High Ad Engagement → ₹287.68
-- Medium SM Influence, Medium Ad Engagement → ₹286.81

-- STEP 7: Effect of Shipping Preference on Time to Decision
SELECT shipping_preference, 
       AVG(time_to_decision) AS avg_decision_time
FROM ecommerce_consumer
GROUP BY shipping_preference
ORDER BY avg_decision_time ASC;
-- Result:
-- Standard: 7.29 days
-- No Preference: 7.57 days
-- Express: 7.82 days
-- Insight: Standard shipping users make faster decisions.

-- STEP 8: Export table to CSV (if supported by environment)
-- PostgreSQL example:
-- \COPY (SELECT * FROM ecommerce_consumer) TO 'exported_consumer_data.csv' WITH CSV HEADER;

-- SQLite example:
-- .headers on
-- .mode csv
-- .output exported_consumer_data.csv
-- SELECT * FROM ecommerce_consumer;
-- .output stdout

