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
