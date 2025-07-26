🛒 Retail Sales Data Analysis using SQL
📌 Project Overview
This project involves analyzing a retail sales dataset using SQL to derive valuable business insights. It includes data cleaning, exploratory analysis, and answering key business questions using SQL queries.

🎯 Objectives
Clean raw retail transaction data.

Understand customer demographics and purchasing behavior.

Analyze sales performance across categories and customers.

Answer real-world business queries using SQL.

🗃️ Dataset Details
The dataset includes the following attributes:

Column	Description
transactions_id	Unique ID of the transaction
sale_date	Date of the transaction
sale_time	Time of the transaction
customer_id	Unique ID of the customer
gender	Gender of the customer
age	Age of the customer
category	Category of the product sold
quantity	Quantity of products bought
price_per_unit	Price of one unit
cogs	Cost of goods sold
total_sale	Total sale value

🧹 Data Cleaning
The following steps were performed:

Removed entries with NULL values in any critical field.

Enabled safe update mode off using SET SQL_SAFE_UPDATES = 0.

🔍 Exploratory Data Analysis (EDA)
Key queries included:

Total number of sales:
SELECT COUNT(*) FROM retail_sales;

Unique customers:
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;

Unique product categories:
SELECT DISTINCT category FROM retail_sales;

