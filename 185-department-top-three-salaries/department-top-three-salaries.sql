SELECT d.name AS Department, 
e.name AS Employee, 
e.salary AS Salary 
FROM Employee e
INNER JOIN Department d 
ON e.departmentId = d.id 
WHERE 3 > (
    SELECT COUNT(DISTINCT(b.Salary)) 
    FROM Employee b 
    WHERE b.Salary > e.Salary AND 
    e.departmentId = b.departmentId
);