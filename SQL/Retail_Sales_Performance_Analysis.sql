/*==============================================================================
                            RETAIL SALES PERFORMANCE ANALYSIS
==============================================================================

Project Description:
This project analyzes four years of retail sales data to evaluate sales
performance, profitability, customer behavior, and product performance.
The analysis was performed using MySQL, and the insights were visualized
using Power BI dashboards.

Dataset          : Sample Superstore
Database         : MySQL 8.0
Visualization    : Power BI

Author           : G.Immaniyel

==============================================================================*/

/*==============================================================================
SECTION 1 : EXECUTIVE KPIs

Purpose:
Provide high-level business metrics that summarize the company's overall
performance. These KPIs help management quickly assess revenue,
profitability, order volume, and customer spending.

==============================================================================*/

/*------------------------------------------------------------------------------
KPI 1 : Total Sales

Business Question:
How much total revenue did the company generate during the analysis period?

------------------------------------------------------------------------------*/

SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM
    sales_data;
    
/*------------------------------------------------------------------------------
KPI 2 : Total Profit

Business Question:
How much total profit did the company earn during the analysis period?

------------------------------------------------------------------------------*/

SELECT
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM
    sales_data;
    
/*------------------------------------------------------------------------------
KPI 3 : Profit Margin

Business Question:
What percentage of total sales was converted into profit?

------------------------------------------------------------------------------*/

SELECT
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin
FROM
    sales_data;
    
/*------------------------------------------------------------------------------
KPI 4 : Total Orders

Business Question:
How many unique customer orders were placed during the analysis period?

------------------------------------------------------------------------------*/

SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM
    sales_data;
    
/*------------------------------------------------------------------------------
KPI 5 : Average Order Value

Business Question:
What is the average revenue generated per customer order?

Formula:
Average Order Value = Total Sales / Total Orders

------------------------------------------------------------------------------*/

SELECT
    ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID), 2) AS Average_Order_Value
FROM
    sales_data;


