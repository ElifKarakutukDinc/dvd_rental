--Which ‘Music’ movie has the biggest length?

select f.film_id,f.length
from film as f
left join film_category as fc on (f.film_id=fc.film_id)
left join category as c on (fc.category_id= c.category_id)
where c."name"= 'Music' 
order by length desc
limit 1; 