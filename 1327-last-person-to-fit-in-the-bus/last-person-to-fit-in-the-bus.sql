# Write your MySQL query statement below
select a.person_name from Queue a left join Queue b
on a.turn >= b.turn
group by a.person_name
having sum(b.weight)<= 1000
order by sum(b.weight)desc
limit 1
