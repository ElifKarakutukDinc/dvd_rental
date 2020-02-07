--Top 25 countries which rental the most

select country, count(r.rental_id) 
from customer as c
inner join address as a on (c.address_id=a.address_id)
inner join city on (city.city_id=a.city_id)
inner join country on (country.country_id=city.country_id)
inner join rental as r on (c.customer_id=r.customer_id)
inner join payment as p on (r.rental_id=p.rental_id)
group by 1
order by 2 desc
limit 25;