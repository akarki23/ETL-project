select s.country_name, s.year, s.sex, s.age, s.suicide_number, s.population, s.suicides_per_100k, s.generation, c.capital_name, c.capital_latitude, c.capital_longitude, c.continent_name 
from suicides s
join capitals c
on c.country_name = s.country_name
where s.suicides_per_100k > 15
order by s.suicides_per_100k DESC;


select s.country_name, s.year, s.sex, s.age, s.suicide_number, s.population, s.suicides_per_100k, s.generation, c.capital_name, c.capital_latitude, c.capital_longitude, c.continent_name 
from suicides s
join capitals c
on c.country_name = s.country_name
where s.suicides_per_100k > 15 and s.generation = 'Boomers'
order by s.suicides_per_100k DESC;