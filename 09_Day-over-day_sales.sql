  SELECT 
      `Order Date`,
      ROUND(SUM(Sales), 2) as `Daily Sales`,
      LAG(ROUND(SUM(Sales), 2)) OVER (ORDER BY `Order Date`) as `Prev Day Sales`,
      ROUND(SUM(Sales) - LAG(SUM(Sales)) OVER (ORDER BY `Order Date`), 2) as `DoD change`
  FROM orders
  GROUP BY `Order Date`
  ORDER BY `Order Date`;