  SELECT 
      Category,
      SUM(CASE WHEN Region = 'East' THEN Sales ELSE 0 END) as `East Sales`,
      SUM(CASE WHEN Region = 'West' THEN Sales ELSE 0 END) as `West Sales`,
      SUM(CASE WHEN Region = 'Central' THEN Sales ELSE 0 END) as `Central Sales`,
      SUM(CASE WHEN Region = 'South' THEN Sales ELSE 0 END) as `South_Sales`
  FROM orders
  GROUP BY Category;
