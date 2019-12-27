--What is the difference between average rental_duration between ‘Documentary’ and ‘Horror’ movies?

with horror_stat as (

select avg(rental_duration) as avg_1, 1 as id
from category as c
left join film_category as fc on (fc.category_id= c.category_id)
left join film as f on (f.film_id=fc.film_id)
where c."name"= 'Horror' 
group by c."name"

),

documentary_stat as (

select avg(rental_duration) avg_2, 1 as id
from category as c
left join film_category as fc on (fc.category_id= c.category_id)
left join film as f on (f.film_id=fc.film_id)
where c."name"= 'Documentary' 
group by c."name"

)

select abs(avg_1 - avg_2) as difference
from documentary_stat as ab inner join
horror_stat as cd on (ab.id = cd.id);