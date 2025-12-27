# E-Commerce Sales & Customer Insights: An Advanced SQL Analysis

## Project Overview
This project focuses on analyzing an e-commerce dataset to extract actionable business insights using **SQL**. The analysis covers the entire data pipeline from cleaning raw data to performing advanced customer segmentation and strategic product performance tracking.

## Tech Stack
* **Language:** SQL (DuckDB)
* **Tool:** DataCamp DataLab (Workspace)
* **Dataset:** Online Retail Records (CSV)

## Key Analysis Steps
I implemented a structured 10-step approach to move from basic exploration to advanced analytics:

1.  **Data Exploration:** Initial look at the raw transactional data structure.
2.  **Data Cleaning:** Filtering out invalid records (negative quantities/prices).
3.  **Key Business Metrics:** Calculating Total Revenue and Total Orders.
4.  **Market Analysis:** Identifying the Top 10 countries by total revenue.
5.  **Product Performance:** Listing best-selling products by quantity.
6.  **Customer Metrics:** Tracking unique customer reach.
7.  **VIP Identification:** Using `HAVING` to filter high-spending loyal customers.
8.  **Average Order Value (AOV):** Calculating spend per transaction using **Subqueries**.
9.  **Customer Loyalty Segmentation:** Categorizing users into 'Platinum', 'Gold', and 'Silver' tiers using `CASE WHEN`.
10. **Star Products Analysis:** Identifying products that significantly exceed average revenue using **Advanced Subqueries**.

## Strategic Insights & Visualizations
The analysis identified "Star Products" that drive business growth. Below is the visualization of the top-performing items:

<img width="1212" height="1000" alt="Top 15 High-Value Products" src="https://github.com/user-attachments/assets/6b6536e5-a27b-4a59-8cc4-e32ee1c051f7" />


*Note: The chart displays the top 15 products that exceed the average revenue, ensuring clear visibility for decision-makers.*

## Conclusion
By completing this project, I demonstrated proficiency in:
* **Handling Raw Data:** Using `read_csv_auto` to process CSV files efficiently.
* **Complex Logic:** Writing advanced SQL queries including **Subqueries**, **Aggregations**, and **Conditional Logic**.
* **Data-Driven Strategy:** Translating raw numbers into visual insights.

## Live Project Link
You can view the interactive version of this project on DataCamp DataLab here:
[View Interactive Report](https://www.datacamp.com/datalab/w/5da0cfa2-d14a-40b9-a637-1d044848ae05/edit)
