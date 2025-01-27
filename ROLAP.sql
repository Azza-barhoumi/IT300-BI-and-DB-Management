-- Sales by Product Category (with Promotion Applied)


SELECT 
    p.Product_Category,
    SUM(f.Units_Sold) AS Total_Units_Sold,
    SUM(f.Total_Revenue) AS Total_Revenue,
    COUNT(DISTINCT f.Promotion_Applied) AS Total_Promotions
FROM 
    fact_sales f
JOIN 
    dim_products p ON f.Product_ID = p.Product_ID
WHERE 
    f.Promotion_Applied IS NOT NULL
GROUP BY 
    p.Product_Category
ORDER BY 
    Total_Revenue DESC;


-- Total Sales by Month and Year
SELECT 
    t.Year,
    t.Month,
    SUM(f.Total_Revenue) AS Total_Revenue
FROM 
    fact_sales f
JOIN 
    dim_time t ON f.Sale_Date = t.Date
GROUP BY 
    t.Year, t.Month
ORDER BY 
    t.Year DESC, t.Month DESC;


-- Sales by Store and Product for a Specific Promotion
SELECT 
    s.Store_Name,
    p.Product_Name,
    SUM(f.Total_Revenue) AS Total_Revenue,
    SUM(f.Units_Sold) AS Total_Units_Sold
FROM 
    fact_sales f
JOIN 
    dim_stores s ON f.Store_ID = s.Store_ID
JOIN 
    dim_products p ON f.Product_ID = p.Product_ID
WHERE 
    f.Promotion_Applied = 1  -- Assuming '1' is the Promotion_ID
GROUP BY 
    s.Store_Name, p.Product_Name
ORDER BY 
    Total_Revenue DESC;

-- Sales Data with Promotion and Product Category Breakdown
SELECT 
    p.Product_Category,
    pr.Promotion_Type,
    SUM(f.Units_Sold) AS Total_Units_Sold,
    SUM(f.Total_Revenue) AS Total_Revenue
FROM 
    fact_sales f
JOIN 
    dim_products p ON f.Product_ID = p.Product_ID
JOIN 
    dim_promotions pr ON f.Promotion_Applied = pr.Promotion_ID
GROUP BY 
    p.Product_Category, pr.Promotion_Type
ORDER BY 
    Total_Revenue DESC;
