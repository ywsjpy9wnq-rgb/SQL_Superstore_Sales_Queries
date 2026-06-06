    SELECT 
        Year_Month,
        ROUND(SUM(Sales), 2) as `Total Sales`,
        ROUND(SUM(Profit), 2) as `Total Profit`
    FROM orders
    GROUP BY Year_Month
    ORDER BY Year_Month