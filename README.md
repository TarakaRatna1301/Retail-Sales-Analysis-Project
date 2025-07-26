# 🛒 Retail Sales Data Analysis using SQL

## 1. 📌 Project Overview

This project explores a retail transaction dataset using SQL. It involves cleaning raw data, performing exploratory data analysis, and solving key business questions to understand customer behavior, sales patterns, and category-wise performance.

---

## 2. 🎯 Objectives & Goals

- **Understand** the structure of sales data including customer demographics, product categories, and sales performance.
- **Clean** and prepare the dataset for analysis.
- **Answer** common business queries using SQL (e.g., top customers, sales by category, customer segmentation).
- **Derive** insights for business decisions using query results.

---

## 3. 🗃️ Dataset Description

- **Source**: Sample data generated for analysis purposes (manually or via Excel).
- **Table Name**: `retail_sales`
- **Columns**:
  - `transactions_id`: Unique transaction identifier
  - `sale_date`: Date of transaction
  - `sale_time`: Time of transaction
  - `customer_id`: Unique customer ID
  - `gender`: Gender of the customer
  - `age`: Age of the customer
  - `category`: Product category (e.g., Clothing, Beauty)
  - `quantity`: Number of items sold
  - `price_per_unit`: Price per unit of the item
  - `cogs`: Cost of goods sold
  - `total_sale`: Total sale value per transaction
- **Preprocessing Done**: Removed all rows with NULL values from key fields.

---

## 4. ⚙️ Technologies Used

- MySQL Workbench
- SQL (MySQL dialect)
- Excel (for sample data input)

---

## 5. 🧹 Data Exploration & Cleaning

- **Record Count**: Determine the total number of records in the dataset.
- **Customer Count**: Find out how many unique customers are in the dataset.
- **Category Count**: Identify all unique product categories in the dataset.
- **Null Value Check**: Check for any null values in the dataset and delete records with missing data.

```sql
SELECT COUNT(*) FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;

-- Check for nulls
SELECT * FROM retail_sales
WHERE sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR
      gender IS NULL OR age IS NULL OR category IS NULL OR
      quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;

-- Delete nulls
DELETE FROM retail_sales
WHERE sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR
      gender IS NULL OR age IS NULL OR category IS NULL OR
      quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;
