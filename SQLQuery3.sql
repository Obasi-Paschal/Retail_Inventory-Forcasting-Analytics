SELECT 
    Category,
    AVG(CAST(Units_Sold AS FLOAT) / NULLIF(Inventory_Level, 0)) AS Avg_Turnover_Ratio,
    COUNT(CASE WHEN Units_Sold > 0 AND (CAST(Inventory_Level AS FLOAT) / CAST(Units_Sold AS FLOAT)) < 7 THEN 1 END) AS Stockout_Frequency
FROM retail_inventory
GROUP BY Category;