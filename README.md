**DATA-ANALYSIS-USING-SQL**
Data Analysis & Cleaning of raw 'orders.csv' dataset using python and SQL.
**Title: Sales Performance Analysis: SQL Queries**
**Description:** A collection of MySQL queries for in-depth sales and orders data analysis. This project focuses on identifying top-performing products, analyzing regional sales trends, and comparing year-over-year growth to extract key business insights.
🚀Title: Sales Performance Analysis: SQL Queries
Description: A collection of MySQL queries for in-depth sales and orders data analysis. This project focuses on identifying top-performing products, analyzing regional sales trends, and comparing year-over-year growth to extract key business insights.
📊 Sales Performance Analysis: Advanced SQL
This repository contains a set of advanced MySQL queries (orders_analysis_mysql.sql) designed to perform a comprehensive analysis of sales order data. The queries utilize concepts like Common Table Expressions (CTEs), Window Functions (ROW_NUMBER()), and Conditional Aggregation (CASE statements) to derive meaningful business intelligence.
**Key Analyses Performed:**
Top Revenue Generators: Identified the top 10 products by total sales revenue.
Regional Best Sellers: Determined the top 5 highest-selling products within each distinct sales region.
Year-over-Year Growth: Calculated and compared month-over-month sales growth for the years 2022 and 2023.
Seasonal Analysis: Found the highest sales month for each product category.
Sub-Category Performance: Analyzed the growth in profit (or revenue, based on the last query's intent) for each sub-category between 2022 and 2023.
**Technical Details:**
**Database**: MySQL
**Techniques Used**: Aggregation, Subqueries, CTEs, Window Functions (ROW_NUMBER()), Date/Time Functions (YEAR(), MONTH(), FORMAT()), Conditional Aggregation.
**Highlights of SQL Techniques:**
**Ranking**: Effectively using the ROW_NUMBER() window function for intra-group ranking (e.g., finding top sellers per region).
**Pivot/Transformation**: Employing CASE statements within aggregate functions to pivot annual sales data side-by-side for easy comparison (e.g., Sales 2022 vs. Sales 2023).
**Temporal Analysis**: Mastering the extraction and manipulation of date parts to calculate year-over-year and month-over-month growth metrics.
