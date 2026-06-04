    WITH `Customer Spend` AS (
        SELECT 
            `Customer ID`,
            `Customer Name`,
            ROUND(SUM(Sales), 2) as `Total Spend`,
            COUNT(*) as `Order Count`
        FROM orders
        GROUP BY `Customer ID`
    )
    SELECT *
    FROM `Customer Spend`
    WHERE `Total Spend` > 5000
    ORDER BY `Total Spend` DESC
    LIMIT 30
