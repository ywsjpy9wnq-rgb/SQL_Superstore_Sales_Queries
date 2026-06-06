    SELECT 
        `Order Date`,
        Sales,
        SUM(Sales) OVER (ORDER BY `Order Date`) as `Running Total Sales`
    FROM orders
    LIMIT 20
