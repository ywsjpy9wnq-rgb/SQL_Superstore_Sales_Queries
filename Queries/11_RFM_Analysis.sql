  WITH RFM AS (
      SELECT 
          `Customer ID`,
          MAX(`Order Date`) as `Last Order`,
          COUNT(DISTINCT `Order ID`) as Frequency,
          SUM(Sales) as Monetary,
          NTILE(4) OVER (ORDER BY MAX(`Order Date`)) as `Recency Score`,
          NTILE(4) OVER (ORDER BY COUNT(DISTINCT `Order ID`) DESC) as `Frequency Score`,
          NTILE(4) OVER (ORDER BY SUM(Sales) DESC) as `Monetary Score`
      FROM orders
      GROUP BY `Customer ID`
  )
  SELECT 
      `Customer ID`,
      `Recency Score` + `Frequency Score` + `Monetary Score` as `RFM Score`,
      CASE 
          WHEN `Recency Score` >= 3 AND `Frequency Score` >= 3 THEN 'Champion'
          WHEN `Recency Score` >= 3 THEN 'Loyal'
          WHEN `Monetary Score` >= 3 THEN 'Big Spender'
          ELSE 'At Risk'
      END as `Customer Segment`
  FROM RFM
  ORDER BY `RFM Score` DESC
  LIMIT 20;
                  




