# Write your MySQL query statement below
SELECT P.product_name , sum(O.unit) as unit from Products P left join Orders O on P.product_id = O.product_id
where month(O.order_date)=2 and year(O.order_date)=2020
group by P.product_name
having unit>=100

