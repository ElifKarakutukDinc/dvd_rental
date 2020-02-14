--film categories preferred by rental customers

with film_and_category as (
select c.category_id, c."name", r.rental_id
from film 
inner join film_category as fc on (film.film_id=fc.film_id)
inner join category as c on (c.category_id=fc.category_id)
inner join inventory as i on (i.film_id=film.film_id)
inner join rental as r on (r.inventory_id=i.inventory_id)
group by 1,2,3),

customer_rental_table as (
select c.customer_id, r.rental_id
from customer as c 
inner join rental as r on (r.customer_id=c.customer_id)
inner join payment as p on (p.rental_id=r.rental_id)
group by 1,2) ,

customer_count_rental_table as (
select cr.customer_id, count(cr.rental_id) as count_rental_per_customer
from customer_rental_table as cr
group by 1
order by 2 desc) 

select fc.*, ccr.*
from film_and_category as fc
left join customer_rental_table as cr on (fc.rental_id=cr.rental_id)
inner join customer_count_rental_table as ccr on (cr.customer_id=ccr.customer_id);



