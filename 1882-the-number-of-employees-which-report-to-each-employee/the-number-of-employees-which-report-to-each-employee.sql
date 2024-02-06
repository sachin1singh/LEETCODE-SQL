select a.reports_to as employee_id,b.name,count(b.employee_id) as reports_count,coalesce(cast(avg(a.age) as unsigned), 0) as average_age
from Employees a left join Employees b on b.employee_id =a.reports_to
where a.reports_to is not null
group by a.reports_to,b.name
order by a.reports_to

