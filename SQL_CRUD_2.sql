// Find the movie titles, taglines, and directors for the top 5 popular movies.

Return the columns 'original_title', 'tagline', and 'director'.

SELECT original_title, tagline, director
FROM movies
ORDER by popularity DESC
LIMIT 5;
--------------------------------------------------------------------------------
// Write a query to find the ids of products that are both low-fat and recyclable.

Return the result table ordered by product_id in ascending order.

SELECT product_id FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y'
ORDER by product_id ASC;
--------------------------------------------------------------------------------
// Write a query to fetch customer details like customerName, phone, addressLine1, city, state, and postalCode who are not from Germany.

Return the result ordered by customerName in ascending order.

SELECT customerName, phone, addressline1, city, state, postalcode
FROM customers
WHERE country != 'Germany'
ORDER BY customerName ASC;
--------------------------------------------------------------------------------
// Write an SQL query to report the patient_id who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.

Return the results ordered by patient_id in ascending order.
  
SELECT patient_id FROM patients
WHERE conditions LIKE "DIAB1%" OR conditions LIKE "% DIAB1%";
--------------------------------------------------------------------------------
// Find the details of the movies that are released between the years 2012-2015 i.e., (Including 2012 and 2015).

Return the columns 'original_title', 'genres', 'vote_average', and 'revenue'.
Return the result ordered by original_title in ascending order.

SELECT original_title, genres, vote_average, revenue
FROM movies
WHERE release_year BETWEEN 2012 AND 2015 
ORDER by original_title;
--------------------------------------------------------------------------------
// Write a SQL query to sort the olympic table according to the following rules:

The country with more gold medals should come first.
If there is a tie in the no. of gold medals, the country with more silver medals should come first.
If there is a tie in the no. of silver medals, the country with more bronze medals should come first.
If there is a tie in the no. of bronze medals as well, then the countries with the tie are sorted in ascending order lexicographically.

SELECT * FROM olympic
ORDER by gold_medals DESC, silver_medals DESC, bronze_medals DESC, country;
--------------------------------------------------------------------------------
// Write a query to list down all the movies along with their details that have keywords like 'sport' or 'sequel' or 'suspense'.

Note:

Return the columns 'original_title', 'director', 'genres', 'cast', 'budget', 'revenue', 'runtime', and 'vote_average'.
Return the columns ordered by original_title in ascending order.

SELECT original_title, director, genres, cast, budget, revenue, runtime, vote_average
FROM movies
WHERE keywords LIKE "%sport%" OR keywords LIKE "%sequel%" OR keywords LIKE "%suspense%"
ORDER by original_title;
--------------------------------------------------------------------------------
// Write a query to get the list of city names starting with vowels (i.e., a, e, i, o, or u) from station table.

The result should not contain duplicate values.

Return the result table ordered by city in ascending order.

SELECT DISTINCT city FROM station
WHERE city LIKE "A%" OR city LIKE "E%" OR city LIKE "I%" OR city LIKE "O%" OR city LIKE "U%"
ORDER by city;
--------------------------------------------------------------------------------
// Write a query to report the IDs of the low-quality problems.

A problem is low-quality if the like percentage of the problem (the number of likes divided by the total number of votes) is strictly less than 60%.

Return the result table ordered by problem_id in ascending order.

SELECT problem_id FROM problems
WHERE (likes/(likes+dislikes)) * 100 < 60
ORDER by problem_id;
--------------------------------------------------------------------------------
