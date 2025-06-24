## 1. Generate a report of all Hindi movies sorted by their revenue amount in millions.
## Print movie name, revenue, currency, and unit

SELECT m.title, f.unit, f.currency,
ROUND(CASE
	WHEN f.unit = 'Billions' THEN revenue*1000
    WHEN f.unit = 'Thousands' THEN revenue/1000
    WHEN f.unit = 'Millions' THEN revenue
END, 2) revenue_in_millions
FROM movies m
LEFT JOIN languages l ON m.language_id = l.language_id
LEFT JOIN financials f ON m.movie_id = f.movie_id
WHERE l.name = 'Hindi'
ORDER BY revenue_in_millions DESC 
