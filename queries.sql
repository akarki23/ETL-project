SELECT *
FROM suicides;

SELECT *
FROM capitals;

SELECT s.country_name, c.capital_name, s.year, s.sex, s.age, s.suicide_number, s.population, s.suicides_per_100k, s.generation, c.capital_latitude, c.capital_longitude, c.continent_name 
FROM suicides s
JOIN capitals c
ON c.country_name = s.country_name
ORDER BY s.country_name;

SELECT s.country_name, c.capital_name, s.year, s.sex, s.age, s.suicide_number, s.population, s.suicides_per_100k, s.generation, c.capital_latitude, c.capital_longitude, c.continent_name 
FROM suicides s
JOIN capitals c
ON c.country_name = s.country_name
WHERE s.suicides_per_100k > 15
ORDER BY s.suicides_per_100k DESC;

SELECT s.country_name, c.capital_name, s.year, s.sex, s.age, s.suicide_number, s.population, s.suicides_per_100k, s.generation, c.capital_latitude, c.capital_longitude, c.continent_name 
FROM suicides s
JOIN capitals c
ON c.country_name = s.country_name
WHERE s.suicides_per_100k > 15 AND s.generation = 'Boomers'
ORDER BY s.suicides_per_100k DESC;