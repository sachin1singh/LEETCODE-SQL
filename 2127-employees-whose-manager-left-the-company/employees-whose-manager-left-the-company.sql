# Write your MySQL query statement below
select e.employee_id from Employees e
where (e.manager_id)not in (select b.employee_id from Employees b) and e.salary <30000
order by e. employee_id