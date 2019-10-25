--How many of the “Foreign” category movies name start with ‘A’?

select count(*)
from film as f
left join film_category as fc on (f.film_id=fc.film_id)
left join category as c on (fc.category_id= c.category_id)
where c."name"= 'Foreign' and f.title like 'A%';