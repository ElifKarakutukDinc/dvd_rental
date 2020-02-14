--Total rating amount

select film.rating, Sum(p.amount)
from film
inner join inventory as i on (i.film_id=film.film_id)
inner join rental as r on (r.inventory_id=i.inventory_id)
inner join payment as p on (p.rental_id=r.rental_id)
group by 1
order by 2 desc;