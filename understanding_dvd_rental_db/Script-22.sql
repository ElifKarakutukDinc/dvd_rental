--Country_id with more than 1 city?

select country_id, count(city) 
from city
group by country_id
having count(city) > 1
order by country_id;