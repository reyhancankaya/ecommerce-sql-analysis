-- STEP 1: Raw Data Exploration
-- Previewing the first 10 rows to understand the structure
SELECT * FROM "online_retail.csv" LIMIT 10;


-- STEP 2: Data Cleaning
-- Removing records with negative quantities, zero prices, or missing Customer IDs
SELECT * FROM "online_retail.csv"
WHERE Quantity > 0 AND UnitPrice > 0 AND CustomerID IS NOT NULL;


-- STEP 3: High-Level Business Metrics
-- Calculating Total Orders and Total Revenue
SELECT 
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM "online_retail.csv"
WHERE Quantity > 0 AND UnitPrice > 0;


-- STEP 4: Market Analysis (Revenue by Country)
-- Finding the top 10 performing markets
SELECT Country, SUM(Quantity * UnitPrice) AS revenue
FROM "online_retail.csv"
WHERE Quantity > 0
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;


-- STEP 5: Top Selling Products
-- Listing the most popular items by unit sales
SELECT Description, SUM(Quantity) AS total_units_sold
FROM "online_retail.csv"
WHERE Quantity > 0
GROUP BY Description
ORDER BY total_units_sold DESC
LIMIT 10;


-- STEP 7: Identifying VIP Customers
-- Customers who spent more than 5000 units
SELECT CustomerID, SUM(Quantity * UnitPrice) AS total_spent
FROM "online_retail.csv"
GROUP BY CustomerID
HAVING total_spent > 5000
ORDER BY total_spent DESC;


-- STEP 8: Average Order Value (AOV)
-- Using a Subquery to calculate the average spend per invoice
SELECT AVG(order_total) AS average_order_value
FROM (
    SELECT InvoiceNo, SUM(Quantity * UnitPrice) AS order_total
    FROM "online_retail.csv"
    WHERE Quantity > 0
    GROUP BY InvoiceNo
);


-- STEP 9: Customer Loyalty Segmentation
-- Categorizing customers into Platinum, Gold, and Silver tiers
SELECT CustomerID, 
       SUM(Quantity * UnitPrice) AS total_spent,
       CASE 
           WHEN SUM(Quantity * UnitPrice) > 5000 THEN 'Platinum'
           WHEN SUM(Quantity * UnitPrice) BETWEEN 1000 AND 5000 THEN 'Gold'
           ELSE 'Silver' 
       END AS loyalty_segment
FROM "online_retail.csv"
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID;


-- STEP 10: Star Products Analysis (Final Insight)
-- Identifying products that perform above the average product revenue
-- Limit added for visual clarity in dashboarding
SELECT Description, SUM(Quantity * UnitPrice) AS product_revenue
FROM "online_retail.csv"
WHERE Quantity > 0
GROUP BY Description
HAVING product_revenue > (
    SELECT AVG(total_rev) 
    FROM (
        SELECT Description, SUM(Quantity * UnitPrice) AS total_rev
        FROM "online_retail.csv"
        GROUP BY Description
    )
)
ORDER BY product_revenue DESC
LIMIT 15;