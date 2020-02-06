--Total Payment Distrubution of Customers by Countries

select country, count(c.customer_id), sum(amount)
from customer as c
inner join address as a on (c.address_id=a.address_id)
inner join city on (city.city_id=a.city_id)
inner join country on (country.country_id=city.country_id)
inner join rental as r on (c.customer_id=r.customer_id)
inner join payment as p on (r.rental_id=p.rental_id)
group by country
order by sum(amount) desc;
