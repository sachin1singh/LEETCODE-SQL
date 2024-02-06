/*select a.employee_id,a.name,count(a.reports_to) as reports_count,round(avg(a.age)) as average_age
from Employees a inner join Employees b on a.employee_id =b.employee_id 
order by a.employee_id*/

select m.reports_to as employee_id, 
       e.name, count(e.employee_id) as reports_count, 
       round(avg(m.age* 1.0), 0) as average_age 
from employees m
left join employees e on e.employee_id = m.reports_to
where m.reports_to is not null
group by m.reports_to, e.name
order by m.reports_to