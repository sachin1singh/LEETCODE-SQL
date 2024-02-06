/*select a.employee_id,a.name,count(a.reports_to) as reports_count,round(avg(a.age)) as average_age
from Employees a inner join Employees b on a.employee_id =b.employee_id 
order by a.employee_id*/

SELECT
    m.reports_to AS employee_id,
    e.name,
    COUNT(e.employee_id) AS reports_count,
    COALESCE(CAST(AVG(m.age) AS UNSIGNED), 0) AS average_age
FROM employees m
LEFT JOIN employees e ON e.employee_id = m.reports_to
WHERE m.reports_to IS NOT NULL
GROUP BY m.reports_to, e.name
ORDER BY m.reports_to;
