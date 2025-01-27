INSERT INTO dim_stores (Store_ID, Store_Name, Location, Store_Size, Average_Weekly_Traffic, Competitor_Presence)
SELECT DISTINCT Store_ID, Store_Name, Location, Store_Size, Average_Weekly_Traffic, Competitor_Presence
FROM staging_stores;


INSERT INTO dim_products (Product_ID, Product_Name, Product_Category, Product_Size, Shelf_Life)
SELECT DISTINCT Product_ID, Product_Name, Product_Category, Product_Size, Shelf_Life
FROM staging_products;

INSERT INTO dim_promotions (Promotion_ID, Promotion_Type, Start_Date, End_Date, Description, Promotion_Cost)
SELECT DISTINCT Promotion_ID, Promotion_Type, Start_Date, End_Date, Description, Promotion_Cost
FROM staging_promotions
WHERE Promotion_ID NOT IN (SELECT Promotion_ID FROM dim_promotions);


INSERT INTO dim_time (Date, Year, Month, Day)
SELECT DISTINCT Sale_Date, YEAR(Sale_Date), MONTH(Sale_Date), DAY(Sale_Date)
FROM staging_sales;


INSERT INTO fact_sales (Sale_ID, Store_ID, Product_ID, Sale_Date, Units_Sold, Total_Revenue, Promotion_Applied)
SELECT 
    Sale_ID, 
    Store_ID, 
    Product_ID, 
    Sale_Date, 
    Units_Sold, 
    Total_Revenue, 
    Promotion_Applied
FROM 
    staging_sales
WHERE 
    (Promotion_Applied IS NULL 
     OR Promotion_Applied IN (SELECT Promotion_ID FROM dim_promotions));


