CREATE DATABASE omnifoods_dwh;
USE omnifoods_dwh;

UPDATE staging_sales
SET units_sold = 0
WHERE units_sold IS NULL;

UPDATE staging_sales
SET Sale_date = '2024-01-01'
WHERE Sale_date IS NULL;
SET SQL_SAFE_UPDATES = 0;

UPDATE staging_sales
SET Sale_date = '2024-01-01'
WHERE Sale_date IS NULL;

SET SQL_SAFE_UPDATES = 1;

UPDATE staging_sales
SET units_sold = 0
WHERE units_sold IS NULL;

UPDATE staging_sales
SET Sale_date = '2024-01-01'
WHERE Sale_date IS NULL;

UPDATE staging_sales
SET Total_Revenue = 0
WHERE Total_Revenue IS NULL;

select * from staging_sales


-- Replace NULL in numeric fields with 0
UPDATE staging_sales
SET Total_Revenue = 0
WHERE Total_Revenue IS NULL;

-- Replace NULL in text fields with "Unknown"
UPDATE staging_stores
SET Location = 'Unknown'
WHERE Location IS NULL;

-- Remove duplicate rows from staging_sales
DELETE FROM staging_sales
WHERE Sale_ID NOT IN (
    SELECT MIN(Sale_ID)
    FROM staging_sales
    GROUP BY Sale_ID
);
-- Convert text to uppercase
UPDATE staging_stores
SET Location = UPPER(Location);

-- Standardize date format
UPDATE staging_sales
SET Sale_Date = STR_TO_DATE(Sale_Date, '%Y-%m-%d');

SELECT 
    Store_ID,
    Store_Name,
    Location,
    Store_Size,
    Average_Weekly_Traffic,
    CASE 
        WHEN Competitor_Presence = 'Yes' THEN 1
        WHEN Competitor_Presence = 'No' THEN 0
        ELSE NULL -- Optional, handles unexpected values
    END AS Competitor_Presence
FROM staging_stores;

UPDATE staging_sales
SET Promotion_Applied = CASE 
    WHEN Promotion_Applied = 'Yes' THEN 1
    WHEN Promotion_Applied = 'No' THEN 0
END;

UPDATE staging_sales
SET Promotion_Applied = CASE 
    WHEN Promotion_Applied = 'Yes' THEN 1
    WHEN Promotion_Applied = 'No' THEN 0
END;

DELETE FROM staging_sales
WHERE Promotion_Applied IS NULL;





