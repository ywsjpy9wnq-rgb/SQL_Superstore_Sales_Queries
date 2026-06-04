    SELECT 
        Region,
        ROUND(SUM(Sales), 2) AS `Total Sales`,
        ROUND(AVG(Sales), 2) AS `Avg Sale`,
        COUNT(*) AS Num_Orders
    FROM orders
    GROUP BY Region
    ORDER BY `Total Sales` DESC
