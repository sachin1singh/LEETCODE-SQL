# Write your MySQL query statement below
SELECT * FROM Cinema
where id % 2 AND  not(description="boring")
order by rating DESC ;