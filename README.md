# Ecommerce Consumer Behavior Analysis Report

## 📌 Introduction
This project analyzes eCommerce consumer behavior using Excel for data preparation and SQL for analysis, with insights visualized in Tableau. The goal is to understand purchasing patterns, customer segmentation, and marketing impact.

---

## 📁 Data Preparation in Excel

### 🎯 Objectives
- Import and explore raw eCommerce data
- Clean and format fields (dates, prices, booleans)
- Handle missing values and duplicates
- Export the cleaned dataset for SQL analysis

### 🧠 Methodology
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

### ✅ Results
- Dataset cleaned with consistent formatting
- Ready for SQL analysis and Tableau visualization

---

## 📊 SQL Analysis

### 🎯 Objective
To uncover key business insights regarding product profitability, discount impact, customer behavior, and marketing effectiveness.

### 🧠 Methodology
- Imported Excel file into PostgreSQL
- Used SQL queries for analysis, joining and grouping data where necessary
- Output visualized in Tableau dashboards

---

### 🔍 SQL Analysis Insights

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

## 📈 Conclusion
This analysis reveals that:
- **Electronics** are the most profitable product category
- **Discounts** drive higher sales volumes but not necessarily more profit
- **High-income** customers spend more per purchase
- **Social media and ad engagement** significantly boost spending
- **Shipping preferences** affect customer decision times

### 📌 Business Takeaways:
- Prioritize marketing on high-margin categories
- Target high-income and socially engaged customers
- Promote express shipping for faster conversions

---

## 📁 Files & Artifacts
- `ecommerce_cleaned.xlsx` – Cleaned Excel dataset
- `ecommerce_analysis.sql` – SQL scripts used for Tableau
- `Ecommerce_Dashboard.twbx` – Tableau dashboard (optional)

Let me know if you'd like:
- 📊 Visuals or charts included
- 📄 Export to PDF/DOCX
- ✏️ Edits or additions

