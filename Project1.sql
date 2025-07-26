CREATE DATABASE sql_project_p1;
USE sql_project_p1;

CREATE DATABASE p1_retail_db;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(20),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sale FLOAT
);

SELECT *FROM retail_sales;

-- Data Cleaning
SET SQL_SAFE_UPDATES =0;

-- Deleting the NULL Values
DELETE FROM retail_sales
WHERE transactions_id IS NULL
OR
sale_date IS NULL
OR
sale_time IS NULL
OR
gender IS NULL
OR
age IS NULL
OR
category IS NULL
OR
quantity IS NULL
OR
price_per_unit IS NULL
OR
cogs IS NULL
OR 
total_sale IS NULL;

-- Data Exploration
-- How many Sales we have?
SELECT COUNT(*)  as total_sale FROM retail_sales;

-- How many Unique Customers we have?
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;

-- How many Unique Category we have?
SELECT COUNT(DISTINCT category) as total_sales FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;

-- Data Analysis & Business Key Prblems & There Answers

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05':
SELECT 
    *
FROM
    retail_sales
WHERE
    sale_date = '2022-11-05';


-- Q.2  Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:

SELECT *FROM retail_sales;
SELECT 
    *
FROM
    retail_sales
WHERE
    category = 'Clothing' AND quantity > 10
        AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11';
  
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.:
SELECT 
    Category, SUM(total_sale) AS total_sales
FROM
    retail_sales
WHERE
    Category IN ('Clothing' , 'Beauty')
GROUP BY Category;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category:
SELECT 
    AVG(age) AS Avg_Age
FROM
    retail_sales
WHERE
    Category = 'Beauty';

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000:
SELECT 
    *
FROM
    retail_sales
WHERE
    total_sale >= '1000';

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:
SELECT 
    category, gender, COUNT(*) AS total_sales
FROM
    retail_sales
GROUP BY category , gender
ORDER BY 1;

-- Q.7 Write a SQL query to find the top 5 customers based on the highest total sales:
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

-- Q.8 Write a SQL query to find the number of unique customers who purchased items from each category:
SELECT 
    category, COUNT(DISTINCT customer_id)
FROM
    retail_sales
GROUP BY category;





