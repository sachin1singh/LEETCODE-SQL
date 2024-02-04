# Write your MySQL query statement below
delete p from Person p ,Person q
where p.Id>q.Id and q.email=p.email