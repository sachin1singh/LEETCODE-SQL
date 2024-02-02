# Write your MySQL query statement below
select unique_id , name
from employeeuni as UNI
RIGHT JOIN  employees as EMP
 ON UNI.id =EMP.id  ;

