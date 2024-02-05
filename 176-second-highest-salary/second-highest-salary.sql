# Write your MySQL query statement below
/*select (salary) as SecondHighestSalary from Employee
if (salary isnull)then 1 else 0
order by salary
limit 1 offset 1 */

select
(select distinct Salary 
from Employee order by salary desc 
limit 1 offset 1) 
as SecondHighestSalary;
