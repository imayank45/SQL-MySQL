## 1. Select all the movies with minimum and maximum release_year. 

SELECT *
FROM movies
WHERE release_year IN (
	SELECT MAX(release_year) FROM movies
    UNION
    SELECT MIN(release_year) FROM movies
);

## 2. Select all the rows from the movies table whose imdb_rating is higher than the average rating
SELECT * 
FROM movies
WHERE imdb_rating > (
	SELECT AVG(imbd_rating)
    FROM movies
)