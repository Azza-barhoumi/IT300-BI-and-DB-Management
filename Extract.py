import pandas as pd
from sqlalchemy import create_engine

# Database connection
db_connection = "mysql+pymysql://username:pswd@localhost/omnifoods_dwh"
engine = create_engine(db_connection)

# Load CSV files
sales = pd.read_csv('sales.csv')
stores = pd.read_csv('stores.csv')
products = pd.read_csv('products.csv')
promotions = pd.read_csv('promotions.csv')
customer_demographics = pd.read_csv('customers.csv')

# Load data into staging tables in MySQL
sales.to_sql('staging_sales', con=engine, if_exists='replace', index=False)
stores.to_sql('staging_stores', con=engine, if_exists='replace', index=False)
products.to_sql('staging_products', con=engine, if_exists='replace', index=False)
promotions.to_sql('staging_promotions', con=engine, if_exists='replace', index=False)
customer_demographics.to_sql('staging_customer_demographics', con=engine, if_exists='replace', index=False)

print("Data loaded into staging tables.")
