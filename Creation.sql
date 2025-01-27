-- Create table for dim_stores
create TABLE dim_stores(
    Store_ID INT PRIMARY KEY,
    Store_Name VARCHAR(255),
    Location VARCHAR(255),
    Store_Size VARCHAR(50),
    Average_Weekly_Traffic INT,
    Competitor_Presence VARCHAR(255)
);

-- Create table for dim_products
CREATE TABLE dim_products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(255),
    Product_Category VARCHAR(100),
    Product_Size VARCHAR(50),
    Shelf_Life INT
);

-- Create table for dim_promotions
CREATE TABLE dim_promotions (
    Promotion_ID INT PRIMARY KEY,
    Promotion_Type VARCHAR(50),
    Start_Date DATE,
    End_Date DATE,
    Description TEXT,
    Promotion_Cost DECIMAL(10, 2)
);

-- Create table for dim_time
CREATE TABLE dim_time (
    Date DATE PRIMARY KEY,
    Year INT,
    Month INT,
    Day INT
);

-- Create table for fact_sales
create TABLE fact_sales(
    Sale_ID VARCHAR(55) PRIMARY KEY,
    Store_ID INT,
    Product_ID INT,
    Sale_Date DATE,
    Units_Sold INT,
    Total_Revenue DECIMAL(12, 2),
    Promotion_Applied INT,
    FOREIGN KEY (Store_ID) REFERENCES dim_stores(Store_ID),
    FOREIGN KEY (Product_ID) REFERENCES dim_products(Product_ID),
    FOREIGN KEY (Promotion_Applied) REFERENCES dim_promotions(Promotion_ID)
);


ALTER TABLE dim_stores
MODIFY Competitor_Presence INT ;

