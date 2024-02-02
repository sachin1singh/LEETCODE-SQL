# Write your MySQL query statement below 

SELECT P.product_id , ifnull(ROUND(SUM(U.units*P.price)/SUM(U.Units),2),0) as average_price from prices P LEFT join UnitsSold U
on P.product_id = U.product_id
AND U.purchase_date between P.start_date and P.end_date
group by P.product_id;

