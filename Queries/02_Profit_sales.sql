    SELECT 
        `Sub-Category`,
        ROUND(SUM(Profit), 2) AS `Total Profit`,
        ROUND(AVG(Profit), 2) AS `Avg Profit`,
        SUM(Profit) / SUM(Sales) * 100 AS `Profit Margin %`
    FROM orders
    GROUP BY `Sub-Category`
    ORDER BY `Total Profit` DESC