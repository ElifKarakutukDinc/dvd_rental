--Total rental duration by film categories
 
select c."name", sum(rental_duration) as total_rental_duration
from film 
inner join film_category as fc on (film.film_id=fc.film_id)
inner join category as c on (c.category_id=fc.category_id)
group by 1
order by 2 desc;
