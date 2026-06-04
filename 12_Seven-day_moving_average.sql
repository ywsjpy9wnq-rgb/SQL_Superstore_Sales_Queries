  SELECT 
      `Order Date`,
      ROUND(SUM(Sales), 2) as `Daily Sales`,
      ROUND(AVG(SUM(Sales)) OVER (ORDER BY `Order Date` ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) as `7 Day Moving Average`
  FROM orders
  GROUP BY `Order Date`
  ORDER BY `Order Date`;