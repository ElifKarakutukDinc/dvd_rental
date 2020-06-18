--total revenue of per film which are showed as categorically  

with film_and_category as (

select c.category_id, film.film_id, film.title
from film 
inner join film_category as fc on (film.film_id=fc.film_id)
inner join category as c on (c.category_id=fc.category_id)
group by 1,2),

film_rent_table as (
select film.film_id, sum(amount) as total_amount_per_film
from film
inner join inventory as i on (i.film_id=film.film_id)
inner join rental as r on (r.inventory_id=i.inventory_id)
inner join payment as p on (p.rental_id=r.rental_id)
group by 1),

film_category_total as (
select category_id, film_id, title
from film_and_category
group by 1,2,3)

select category."name", fct.*,  frt.*
from film_category_total as fct 
left join film_rent_table as frt on(fct.film_id=frt.film_id) 
inner join category on (fct.category_id= category.category_id);


