SELECT 
    Product_ID,
    Category,
    Inventory_Level,
    Units_Sold,
    CASE 
        WHEN Units_Sold = 0 THEN 999 
        ELSE CAST(Inventory_Level AS FLOAT) / CAST(Units_Sold AS FLOAT)
    END AS Days_of_cover
FROM retail_inventory
ORDER BY Days_of_cover ASC;