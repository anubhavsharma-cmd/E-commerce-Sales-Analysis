# Ecommerce Consumer Behavior Analysis Report

##  Introduction
This project analyzes eCommerce consumer behavior using Excel for data preparation and SQL for analysis, with insights visualized in Tableau. The goal is to understand purchasing patterns, customer segmentation, and marketing impact.

---

##  Data Preparation in Excel

###  Objectives
- Import and explore raw eCommerce data
- Clean and format fields (dates, prices, booleans)
- Handle missing values and duplicates
- Export the cleaned dataset for SQL analysis

### Methodology
- **File Used:** `Ecommerce_Consumer_Behavior_Analysis_Data.csv`
- **Tools:** Microsoft Excel and Power Query
- **Steps Taken:**
  - Removed duplicate rows
  - Filled missing values:
    - Text fields → “Not Specified”
    - Numeric fields → 0 or placeholder
  - Converted columns like `discount_used` to TRUE/FALSE
  - Standardized column names
  - Exported clean data to `ecommerce_cleaned.xlsx`

###  Results
- Dataset cleaned with consistent formatting
- Ready for SQL analysis and Tableau visualization

---

##  SQL Analysis

###  Objective
To uncover key business insights regarding product profitability, discount impact, customer behavior, and marketing effectiveness.

###  Methodology
- Imported Excel file into PostgreSQL
- Used SQL queries for analysis, joining and grouping data where necessary
- Output visualized in Tableau dashboards

---

###  SQL Analysis Insights

#### 1. **Most Profitable Product Category**
**Result:**
- Most profitable category: **Electronics**
- Total profit: ₹5,38,000

#### 2. **Impact of Discounts on Sales**
**Result:**
- Categories like **Apparel** showed higher purchases without discount
- **Electronics** had the highest discounted sales

#### 3. **Avg Purchase Amount With vs Without Discount**
**Result:**
- With Discount: ₹2,352 (1,210 transactions)
- Without Discount: ₹1,873 (890 transactions)

#### 4. **Customer Segmentation by Income Level**
**Result:**
- High-income customers: ₹3,100 avg spend
- Mid-income: ₹2,300
- Low-income: ₹1,700

#### 5. **Impact of Social Media & Ads**
**Result:**
- Customers influenced by social media **and** engaged with ads spent the most (₹3,500 avg)
- Least spending: Non-engaged customers (₹1,200 avg)

#### 6. **Effect of Shipping Preference on Decision Time**
**Result:**
- Fastest decision time: **Express Shipping** (2.3 days)
- Slowest: **Standard Shipping** (4.1 days)

---

##  Tableau Dashboards & Visual Insights

###  Dashboard Overview
The Tableau dashboard was created to visualize the core SQL insights interactively for business users.

🔗 **Live Dashboard:** [View on Tableau Public](https://public.tableau.com/app/profile/anubhav.sharma6631/viz/EcommerceConsumerBehaviorAnalysis_17438669670040/Dashboard1?publish=yes)

###  Charts Included:

1. **Revenue by Product Category**
   - **Chart Type:** Horizontal Bar Chart
   - **Insight:** Electronics lead in revenue generation.

2. **Sales With vs Without Discount by Category**
   - **Chart Type:** Side-by-side Bars
   - **Insight:** Discounts boost volume but not always profitability.

3. **Avg Purchase by Discount Usage**
   - **Chart Type:** Bar Chart
   - **Insight:** Higher average purchase amount when discounts are applied.

4. **Customer Count & Spend by Income Level**
   - **Chart Types:** Dual Bar Charts
   - **Insight:** High-income customers contribute the most to revenue.

5. **Marketing Influence (Text Table)**
   - **Chart Type:** Heat Map
   - **Insight:** Customers influenced by **both social media and ads** spend the most (₹3,500 avg). Least spenders are non-engaged users (₹1,200 avg).

6. **Decision Time by Shipping Preference**
   - **Chart Type:** Bar Chart
   - **Insight:** Express shipping reduces decision time significantly.

### Features:
- Summary KPIs (Total Revenue, Transactions, Avg Purchase, etc.)
- Clean, minimal layout for easy insights

---

## 📈 Conclusion
This analysis reveals that:
- **Electronics** are the most profitable product category
- **Discounts** drive higher sales volumes but not necessarily more profit
- **High-income** customers spend more per purchase
- **Social media and ad engagement** significantly boost spending
- **Shipping preferences** affect customer decision times

###  Business Takeaways:
- Prioritize marketing on high-margin categories
- Target high-income and socially engaged customers
- Promote express shipping for faster conversions

---


- 🔗 **Live Dashboard Link:** [Ecommerce Dashboard on Tableau Public](https://public.tableau.com/app/profile/anubhav.sharma6631/viz/EcommerceConsumerBehaviorAnalysis_17438669670040/Dashboard1?publish=yes)



