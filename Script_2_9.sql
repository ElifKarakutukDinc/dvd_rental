--Which categories have more than average rental_rate > 2 and total movies count > 5?

select c."name", avg(f.rental_rate), count(f.film_id)
from category as c
left join film_category as fc on (fc.category_id= c.category_id)
left join film as f on (f.film_id=fc.film_id)
group by c."name"
having avg(f.rental_rate)>2 and count(f.film_id)>5;