--Which movie has the longest rental duration in ‘Family’ category?

select f.film_id, f.rental_duration, c."name"
from film as f
left join film_category as fc on (f.film_id=fc.film_id)
left join category as c on (fc.category_id= c.category_id)
where c."name"= 'Family'
order by f.rental_duration desc
limit 1;


