# Write your MySQL query statement below
SELECT S.user_id, IFNULL(ROUND(SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END ) / COUNT(C.action),2),0) AS confirmation_rate 
FROM Signups S
LEFT JOIN Confirmations C ON C.user_id = S.user_id
GROUP BY S.user_id ;
