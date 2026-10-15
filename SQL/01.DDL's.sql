-- Campaigns table

CREATE TABLE campaigns(
  campaign_id INT8 PRIMARY KEY,
  channel TEXT DEFAULT NULL,
  objective TEXT DEFAULT NULL,
  start_date  DATE DEFAULT NULL,
  end_date DATE DEFAULT NULL,
  target_segment TEXT DEFAULT NULL,
  expected_uplift FLOAT8 DEFAULT NULL
  );


-- Customers table

CREATE TABLE customers(
  customer_id INT8 PRIMARY KEY,
  signup_date DATE DEFAULT NULL,
  country TEXT DEFAULT NULL,
  age INT8 DEFAULT NULL,
  gender TEXT DEFAULT NULL,
  loyalty_tier TEXT DEFAULT NULL,
  acquisition_channel TEXT DEFAULT NULL
);


-- Events table

CREATE TABLE events(
  event_id INT8 NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  customer_id INT8 NOT NULL,
  session_id INT8 DEFAULT NULL,
  event_type TEXT DEFAULT NULL,
  product_id FLOAT8 DEFAULT NULL,
  device_type TEXT DEFAULT NULL,
  traffic_source TEXT DEFAULT NULL,
  campaign_id INT8 DEFAULT NULL,
  page_category TEXT DEFAULT NULL,
  session_duration_sec FLOAT8 DEFAULT NULL,
  experiment_group TEXT DEFAULT NULL,
  PRIMARY KEY (timestamp, customer_id)
  );



-- Products table

CREATE TABLE products(
  product_id INT8 PRIMARY KEY,
  category TEXT DEFAULT NULL,
  brand TEXT DEFAULT NULL,
  base_price FLOAT8 DEFAULT NULL,
  launch_date DATE DEFAULT NULL,
  is_premium INT8 DEFAULT NULL
);
  
  
  
  -- Transactions table
  

CREATE TABLE transactions(
  transaction_id INT8 NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  customer_id INT8 NOT NULL,
  product_id FLOAT8  DEFAULT NULL,
  quantity INT8 DEFAULT NULL,
  discount_applied FLOAT8 DEFAULT NULL,
  gross_revenue FLOAT8 DEFAULT NULL,
  campaign_id INT8 DEFAULT NULL,
  refund_flag INT8 DEFAULT NULL,
  PRIMARY KEY (timestamp,customer_id)
 );


-- Calendar table

CREATE TABLE calendar AS 
SELECT GENERATE_SERIES(
    (SELECT MIN(DATE(t."timestamp" )) FROM transactions t )::TIMESTAMP, 
    (SELECT MAX(DATE(t."timestamp" )) FROM transactions t )::TIMESTAMP, 
    '1 day'::interval
)::DATE AS date


