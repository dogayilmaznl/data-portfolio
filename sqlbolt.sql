-- SQLBolt Lesson 1: SELECT queries 101
-- Exercise 1 - Tasks

-- 1. Find the title of each film
SELECT Title FROM Movies;

-- 2. Find the director of each film
SELECT Director FROM Movies;

-- 3. Find the title and director of each film
SELECT Title, Director FROM Movies;

-- 4. Find the title and year of each film
SELECT Title, Year FROM Movies;

-- 5. Find all the information about each film
SELECT * FROM Movies;

-- Exercise 2 - Tasks
-- Find the movie with a row id of 6
SELECT Title FROM Movies
WHERE Id = 6;
-- Find the movies released in the years between 2000 and 2010
SELECT Title, Year FROM Movies 
WHERE Year BETWEEN 2000 AND 2010;
-- Find the movies not released in the years between 2000 and 2010
SELECT Title FROM Movies
WHERE Year NOT BETWEEN 2000 AND 2010;
-- Find the first 5 Pixar movies and their release year
SELECT title, year FROM Movies
WHERE year <= 2003;
-- BETTER VERSION: SELECT Title, Year FROM Movies ORDER BY Year ASC LIMIT 5;

-- Exercise 3 — Tasks
-- Find all the Toy Story movies
SELECT Title FROM Moives WHERE Title LIKE "%Toy Story%"
-- Find all the movies directed by John Lasseter
SELECT Title FROM Movies WHERE Director = "John Lasseter"
-- Find all the movies (and director) not directed by John Lasseter
SELECT Title, Director FROM Movies WHERE Dırector != "John Lasseter" 
-- Find all the WALL-* movies
SELECT Title FROM Movies WHERE Title LIKE "WALL-_"

--Exercise 4 -Tasks
-- List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT Director FROM Movies ORDER BY Director ASC;
-- List the last four Pixar movies released (ordered from most recent to least)
SELECT Title, Year FROM Movies ORDER BY Year DESC LIMIT 4;
-- List the first five Pixar movies sorted alphabetically
SELECT Title FROM Movies ORDER BY Title ASC LIMIT 5;
-- List the next five Pixar movies sorted alphabetically
SELECT Title FROM Movies ORDER BY Title ASC LIMIT 5 OFFSET 5;

-- Review 1 — Tasks
-- List all the Canadian cities and their populations
SELECT city, population FROM North_american_cities WHERE country = "Canada";
-- Order all the cities in the United States by their latitude from north to south
SELECT city, latitude FROM North_american_cities WHERE country = "United States" ORDER BY Latitude DESC;
-- List all the cities west of Chicago, ordered from west to east
SELECT city, longitude FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude ASC;
-- List the two largest cities in Mexico (by population)
SELECT city, population FROM North_american_cities WHERE country = "Mexico" ORDER BY population DESC LIMIT 2;
-- List the third and fourth largest cities (by population) in the United States and their population
SELECT city, population FROM North_american_cities WHERE country = "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;


-- Exercise 6 — Tasks
-- Find the domestic and international sales for each movie
SELECT title, domestic_sales, international_sales 
FROM movies 
INNER JOIN boxoffice 
	ON movies.id = boxoffice.movie_id
-- Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, domestic_sales, international_sales
FROM movies 
INNER JOIN boxoffice 
	ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales
-- List all the movies by their ratings in descending order
SELECT title, rating
FROM movies 
INNER JOIN boxoffice 
	ON movies.id = boxoffice.movie_id
ORDER BY rating DESC
