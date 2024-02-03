# Write your MySQL query statement below
select round(sum(case when DATEDIFF(A.event_date, PO.players) = 1  then 1 else 0 end)/ count(distinct PO.player_id),2) as fraction from
(SELECT min(event_date) as players ,player_id from activity 
group by player_id) as PO join Activity A on PO.player_id = A.player_id