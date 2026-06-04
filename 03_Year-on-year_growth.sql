  WITH Yearly_Sales AS (
      SELECT 
          strftime('%Y', `Order Date`) as Year,
          ROUND(SUM(Sales), 2) as `Total Sales`
      FROM orders
      GROUP BY Year
  )
  SELECT 
      Year,
      `Total Sales`,
      LAG(`Total Sales`) OVER (ORDER BY Year) as `Previous Year Sales`,
      ROUND((`Total Sales` - LAG(`Total Sales`) OVER (ORDER BY Year)) / LAG(`Total Sales`) OVER (ORDER BY Year) * 100, 2) as `YoY Growth %`
  FROM Yearly_Sales;


