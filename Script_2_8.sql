--What is the difference between average rental_duration between ‘Documentary’ and ‘Horror’ movies?

select c."name", avg(rental_duration)
from category as c
left join film_category as fc on (fc.category_id= c.category_id)
left join film as f on (f.film_id=fc.film_id)
where c."name"= 'Horror' or c."name"= 'Documentary'
group by c."name";