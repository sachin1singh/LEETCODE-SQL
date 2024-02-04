# Write your MySQL query statement below
SELECT user_id, name, mail
FROM Users
WHERE mail LIKE '%@leetcode.com%'
  AND mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@[a-zA-Z0-9.-]*leetcode\\.com$'AND (mail LIKE '%_%' OR mail LIKE '%-%' or mail like '%-@leetcode.com%' )
  AND mail NOT LIKE '%#%'
  AND mail NOT LIKE '.%'
  AND mail NOT LIKE '-%@leetcode.com'
  AND mail NOT LIKE '%.@leetcode.com%';  -- Exclude emails starting with a period
