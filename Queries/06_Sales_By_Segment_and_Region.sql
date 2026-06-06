    SELECT 
        Segment,
        Region,
        ROUND(SUM(Sales), 2) as Total_Sales,
        ROUND(AVG(Profit), 2) as Avg_Profit
    FROM orders
    GROUP BY Segment, Region
    ORDER BY Segment, Total_Sales DESC
