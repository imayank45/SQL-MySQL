## 1. Show all the movies with their language names

SELECT m.title, l.name 
FROM movies m
LEFT JOIN languages l 
ON m.language_id = l.language_id;

## 2. Show all Telugu movie names (assuming you don't know the language id for Telugu)
SELECT m.title
FROM movies m
LEFT JOIN languages l
ON m.language_id = l.language_id
WHERE l.name = 'Telugu';

## 3. Show the language and number of movies released in that language

SELECT l.name, COUNT(*) AS movies_released
FROM languages l
LEFT JOIN movies m
ON l.language_id = m.language_id
GROUP BY l.name
ORDER BY movies_released DESC;