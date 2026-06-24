SELECT 
    Product_ID,
    Category,
    Inventory_Level,
    Units_Sold,
    Date AS Last_Date_Checked
FROM retail_inventory
WHERE Units_Sold = 0 
  AND Date <= DATEADD(day, -60, (SELECT MAX(Date) FROM retail_inventory));