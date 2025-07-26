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
```

## 6. 📊 Business Questions & SQL Queries

Q1. Sales made on a specific date ('2022-11-05')
```sql
SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05';
```

Q2. SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
```sql
SELECT * FROM retail_sales
WHERE category = 'Clothing' AND quantity > 10 AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11';
```

Q3. SQL query to calculate the total sales (total_sale) for each category:
```sql
SELECT 
    Category, SUM(total_sale) AS total_sales
FROM
    retail_sales
WHERE
    Category IN ('Clothing' , 'Beauty')
GROUP BY Category;

```

Q4. SQL query to find the average age of customers who purchased items from the 'Beauty' category:
```sql
SELECT 
    AVG(age) AS Avg_Age
FROM
    retail_sales
WHERE
    Category = 'Beauty';
```

Q5. SQL query to find all transactions where the total_sale is greater than 1000:
```sql
SELECT 
    *
FROM
    retail_sales
WHERE
    total_sale >= '1000';
```

Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category:
```sql
SELECT 
    category, gender, COUNT(*) AS total_sales
FROM
    retail_sales
GROUP BY category , gender
ORDER BY 1;
```

Q.7 Write a SQL query to find the top 5 customers based on the highest total sales:
```sql
SELECT 
    *
FROM
    retail_sales;
SELECT 
    customer_id, SUM(total_sale) AS total_sales
FROM
    retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

```

Q.8 Write a SQL query to find the number of unique customers who purchased items from each category:
```sql
SELECT 
    category, COUNT(DISTINCT customer_id)
FROM
    retail_sales
GROUP BY category;

```
---

## 7. 🚀 How to Run the Project
Open MySQL Workbench.

Run CREATE DATABASE sql_project_p1; and switch using USE sql_project_p1;.

Create the retail_sales table and run the queries from Project1.sql.

Explore the data using the SQL queries listed above.

---

## 8. 🧠 Conclusion & Learnings
-- Reinforced concepts of SQL aggregation, filtering, and grouping.

-- Learned how to approach real-world business problems using structured queries.

-- Practiced data cleaning and exploratory analysis using SQL.

-- Business-oriented thinking in SQL querying

