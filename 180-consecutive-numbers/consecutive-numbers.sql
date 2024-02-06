# Write your MySQL query statement below
select distinct(num)as ConsecutiveNums
  from (
        select id,num ,
                LEAD(num) over (order by id) as next_num ,
                LAG(num) over (order by id) as prev_num from Logs
                     ) A
where A.num=A.next_num and A.num=A.prev_num 