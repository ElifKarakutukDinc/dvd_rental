--What is the average length of ‘Documentary’ category movies?

select avg(f.length)
from film as f
left join film_category as fc on (fc.film_id= f.film_id)
left join category as c  on ( fc.category_id= c.category_id)
where c."name" = 'Documentary';