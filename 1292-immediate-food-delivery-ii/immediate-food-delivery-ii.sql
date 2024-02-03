# Write your MySQL query statement below
select round(sum(case when d.order_date =d.customer_pref_delivery_date then 1 else 0 end)/count(distinct d.customer_id)*100,2) as immediate_percentage 
from 
 (select customer_id,
        min(order_date) as first_order_date from Delivery group by customer_id) as FO
        JOIN Delivery d ON FO.customer_id = d.customer_id  AND FO.first_order_date = d.order_date;