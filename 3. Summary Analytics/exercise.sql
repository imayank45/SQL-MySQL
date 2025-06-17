## 1. How many movies were released between 2015 and 2022

SELECT COUNT(*)
FROM movies
WHERE release_year BETWEEN 2015 AND 2022;

## 2. Print the max and min movie release year
SELECT MAX(release_year) as max_year, MIN(release_year) as max_year
FROM movies;

## 3. Print each year along with the number of movies released in that year, starting from the most recent year

SELECT release_year, COUNT(*)
FROM movies
GROUP BY release_year
ORDER BY release_year DESC;