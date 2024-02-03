# Write your MySQL query statement below
select distinct
                CONCAT(YEAR(trans_date), '-', LPAD(MONTH(trans_date), 2, '0')) as month ,country ,
 count(amount)as trans_count ,
 SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END)as approved_count , 
 sum(amount ) as trans_total_amount ,
 SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount from Transactions 
group by month ,country;