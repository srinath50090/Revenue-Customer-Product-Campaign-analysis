


===================================== Finding Duplicates =====================================================



with cte as (
select 
*,
row_number() over(partition by channel, objective, start_date, end_date, target_segment, expected_uplift) as rn
from campaigns
)
select *
from cte
where rn > 1


-- There are No Duplicates





with cte as (
select 
*,
row_number() over( partition by customer_id,signup_date,country,age, gender, loyalty_tier, acquisition_channel ) as rn
from customers
)
select *
from cte
where rn > 1


-- There are No Duplicates





with cte as (
select 
*,
row_number() over(partition by category, brand, base_price, launch_date, is_premium ) as rn
from products
)
select *
from cte
where rn > 1

-- There are No Duplicates




with cte as (
SELECT 
*, 
row_number() over(partition by  "timestamp", customer_id, session_id, event_type, product_id, device_type, traffic_source, campaign_id, page_category, session_duration_sec, experiment_group) as rn
FROM events
)
select *
from cte
where rn > 1


-- There are No Duplicates




with cte as (
select 
*, 
row_number() over( partition by "timestamp", customer_id, campaign_id, product_id, quantity, discount_applied, gross_revenue, refund_flag, session_id, session_duration_sec, device_type, traffic_source, page_category, experiment_group) as rn
from purchase_events_and_transactions
)
select *
from cte
where rn > 1


-- There are No Duplicates



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



create view vw_campaigns as
select 
campaign_id ,
initcap(trim(channel)) as channel,
initcap(trim(objective )) as objective,
start_date ,
end_date ,
initcap(trim(target_segment )) as target_segment,
expected_uplift 
from campaigns;



create view vw_customers as
select 
customer_id, 
signup_date, 
trim(country) as country, 
age, 
initcap(trim(gender)) as gender, 
initcap(trim(loyalty_tier)) as loyalty_tier , 
initcap(trim(acquisition_channel)) as acquisition_channel 
from customers;



create view vw_products as
select 
product_id, 
initcap(trim(category)) as category, 
trim(regexp_replace(brand,'\D', '', 'g')) as brand_id, 
base_price, 
launch_date, 
is_premium 
from products;



create view vw_events as 
select 
event_id, 
"timestamp", 
customer_id, 
session_id, 
initcap(trim(replace(event_type,'_',' '))) as event_type , 
coalesce(product_id,0) as product_id,
initcap(trim(coalesce(device_type,'Unknown'))) as device_type ,
initcap(trim(traffic_source)) as traffic_source , 
coalesce(campaign_id,0) as campaign_id , 
trim(page_category) as page_category, 
session_duration_sec, 
initcap(trim(replace(experiment_group,'_',' '))) as experiment_group , 
"date" 
from events;




-- In the real-time database, when a customer makes a purchase, it is recorded and contributes to the revenue. 
-- After the purchase, if the customer returns the product, it is also recorded with a negative revenue value, 
-- so the net effect is zero.

-- However, in this case, there are no purchase entries for these returned products. 
-- Only the return entries are being recorded with negative gross revenue, which affects the overall revenue negatively.
-- Therefore, when we calculate the correct net revenue, we must exclude these return records wherever the corresponding purchase records are missing.
-- However, I multiplied the gross revenue by a negative sign wherever the refund flag equals 1.



create  view vw_purchase_events_and_transactions as
select 
"date", 
"timestamp", 
customer_id, 
coalesce(campaign_id,0) as campaign_id , 
product_id, 
quantity, 
discount_applied, 
case 
	when refund_flag=1 then -gross_revenue
	else gross_revenue
end as gross_revenue,
refund_flag, 
session_id, 
session_duration_sec, 
initcap(trim(coalesce(device_type,'Unknown'))) as device_type ,
initcap(trim(traffic_source)) as traffic_source , 
trim(page_category) as page_category, 
initcap(trim(replace(experiment_group,'_',' '))) as experiment_group
from purchase_events_and_transactions;








