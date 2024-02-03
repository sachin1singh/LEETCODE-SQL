# Write your MySQL query statement below     sum(E.experience_years / P.project_id)

SELECT P.project_id , round (avg(E.experience_years),2) as average_years from Project p left join Employee E 
on P.employee_id = E.employee_id 
group by P.project_id;
