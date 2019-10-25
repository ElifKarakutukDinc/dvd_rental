--Is there any movie with ‘PG’ rating and ‘Horror’ category?

select f.film_id, f.rating, c.name
from film as f
left join film_category as fc on (f.film_id=fc.film_id)
left join category as c on (fc.category_id= c.category_id)
where c."name"= 'Horror' and rating ='PG';

