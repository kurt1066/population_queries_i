-- 1 & 2 - were prerequisites and project requirements
-- 3. What years are covered by the dataset?
SELECT DISTINCT year
FROM population_years;

-- 4. What is the largest population size for Gabon in this dataset?
SELECT *
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;

-- 5. What were the 10 lowest population countries in 2005?
SELECT *
FROM population_years
WHERE year = 2005
ORDER BY population
LIMIT 10;


-- 6. What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country
FROM population_years
WHERE year = 2010
  AND population > 100
ORDER BY population DESC;

-- 7. How many countries in this dataset have the word “Islands” in their name?
SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%Island%'
ORDER BY country;

-- 8. What is the difference in population between 2000 and 2010 in Indonesia?
SELECT population, year, country
FROM population_years
WHERE country = 'Indonesia'
  AND year = 2000
  OR country = 'Indonesia'
  AND year = 2010;
