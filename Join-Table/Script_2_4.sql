--How many ‘Horror’ category movies have rental_rate greater than 2?

select count(*)
from film as f
left join film_category as fc on (f.film_id=fc.film_id)
left join category as c on (fc.category_id= c.category_id)
where c."name"= 'Horror' and rental_rate > 2;