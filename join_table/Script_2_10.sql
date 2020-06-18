--Sort first name counts of movie titles according to their counts in ‘Sport’ category?

select f.film_id,length(f.title)
from film as f
left join film_category as fc on (f.film_id=fc.film_id)
left join category as c on (fc.category_id= c.category_id)
where c."name"='Sports'
group by f.film_id
order by length(f.title) asc;