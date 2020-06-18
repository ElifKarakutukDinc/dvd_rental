--Number of films according to their categories?

select c.category_id,c."name", count(*)
from category as c
left join film_category as fc on (fc.category_id= c.category_id)
left join film as f on (fc.film_id= f.film_id)
group by c.category_id,c."name";