# Write your MySQL query statement below
(SELECT name AS results
FROM MovieRating JOIN Users USING(user_id)
GROUP BY name
ORDER BY COUNT(*) DESC, name
LIMIT 1)

UNION ALL

(SELECT title AS results
FROM MovieRating JOIN Movies USING(movie_id)
WHERE MONTH(created_at) = 2 AND YEAR(created_at) = 2020
GROUP BY title
ORDER BY AVG(rating) DESC, title
LIMIT 1);