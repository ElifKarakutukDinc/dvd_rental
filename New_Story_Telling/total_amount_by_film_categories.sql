--total amount by film categories 

with film_category_1 as (

select c.category_id, film.film_id 
from film 
inner join film_category as fc on (film.film_id=fc.film_id)
inner join category as c on (c.category_id=fc.category_id)
group by 1,2),

film_rent_table as (select film.film_id, r.rental_id, p.payment_id, p.amount
from film
inner join inventory as i on (i.film_id=film.film_id)
inner join rental as r on (r.inventory_id=i.inventory_id)
inner join payment as p on (p.rental_id=r.rental_id)),

film_category_total as (select category_id,  count(1) as film_count_by_category
from film_category_1
group by 1),

movie_rent_total as (select category_id,  sum(table_2.amount) as total_amount
from film_category_1 as table_1
inner join film_rent_table as table_2 on (table_1.film_id = table_2.film_id)
group by 1)

select category."name", fct.*,  movie_rent_total.total_amount 
from film_category_total as fct  
left join
movie_rent_total on (fct.category_id = movie_rent_total.category_id)
inner join category on (fct.category_id= category.category_id);