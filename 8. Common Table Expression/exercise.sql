## 1. Select all Hollywood movies released after the year 2000 that made more than 500 
## million $ profit or more profit.

WITH cte AS (SELECT m.*, (f.revenue - f.budget) AS profit
FROM movies m
LEFT JOIN financials f
ON m.movie_id = f.movie_id
WHERE f.unit = 'Millions' AND m.release_year > 2000)

SELECT * 
FROM cte 
WHERE profit > 500;