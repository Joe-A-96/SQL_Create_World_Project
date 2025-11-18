use world;

select *
from city;

select *
from country;

select *
from countrylanguage;

select count(c.name) as "US cities"
from city as c
where countrycode = "usa";

select count(c.name), c.name, c.countrycode
from city as c
where countrycode = "usa"
group by c.name, c.countrycode;

select name, lifeexpectancy
from country 
order by lifeexpectancy desc;

select name
from city
where name like "%new%";

select name, population 
from city
order by population desc
limit 10;

select name, population
from city
where population > 2000000
order by population desc;

select name
from city
where name like "be%";

select name,population 
from city
where population between 50000 and 1000000
order by population desc;

select name
from city
order by name;

select name, population
from city
order by population desc;

select count(name),name
from city
group by name;

select count( distinct name) as "Unique City Names", name
from city
group by name
order by name;

select name, population 
from city
order by population;

select name, population 
from city
order by population desc;

select name, capital
from country
where name = "spain";

select c.name, co.continent 
from city as c
join country as co
on c.countrycode = co.code
where continent = "europe"
group by name, co.continent;

select co.name, avg(c.population) as "AVG population"
from country as co
join city as c
on co.code = c.countrycode
group by co.name;

select name, population, sum(population/surfacearea) as "Pop Density"
from country
group by name, population
order by population;

select avg(gnp*1000000/population) as GDP
from country;

select c.name, (co.gnp*1000000/co.population) as GDP
from country as co
join city as c
on co.code = c.countrycode
where (co.gnp*1000000/co.population) > (select avg(gnp*1000000/population) as GDP
from country)
order by gdp;


select id,name,population
from city
order by population desc
limit 10
offset 30;

select *
from city;

select *
from country;

select co.capital, c.name,c.population
from city as c
join country as co
on c.countrycode = co.code
group by c.name,co.capital,c.population;






								 



