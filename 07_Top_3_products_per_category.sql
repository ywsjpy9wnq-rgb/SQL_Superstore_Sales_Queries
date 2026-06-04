WITH Ranked_Products AS (
    SELECT 
        Category,
        `Product Name`,
        SUM(Sales) as Total_Sales,
        ROW_NUMBER() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) as Rank
    FROM orders
    GROUP BY Category, `Product Name`
)
SELECT * FROM Ranked_Products WHERE Rank <= 3;